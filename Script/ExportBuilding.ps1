<#
  .SYNOPSIS
  Helps to export a single building all associated floors, sections, workspaces, rooms, desks, and mailboxes. 
  The CleanupPlace.ps1 script uses the exported files to remove a single building and all associated floors, sections, workspaces, rooms, desks, and mailboxes.
  

  .DESCRIPTION

Coming....

  .EXAMPLE
Coming.....

  .NOTES
  Version:        1.0
  Author:         LSomi@Microsoft.com
  Creation Date:  November 2024

## Disclaimer
# (c)2024 Microsoft Corporation. All rights reserved. This document is provided "as-is." Information and views expressed in this document,
# including URL and other Internet Web site references, may change without notice. You bear the risk of using it.
# This document does not provide you with any legal rights to any intellectual property in any Microsoft product.
# You may copy and use this document for your internal, reference purposes. You may modify this document for your internal purposes.

<#
# Modify below this line at your own risk. 
********************************************************************************************************************
#>


## Requirement: Use Windows PowerShell 7
## Connecting to Exchange & Places
#Connect-ExchangeOnline
#Connect-MicrosoftPlaces

# Define the building name to export
$buildingName = "Contoso HQ"

# Get the building ID
$building = Get-PlaceV3 -Type Building | Where-Object { $_.DisplayName -eq $buildingName }
if (-not $building) {
    Write-Error "Building '$buildingName' not found."
    exit
}
$buildingId = $building.PlaceId

# Export Building
$building | Select-Object PlaceId, DisplayName, Type, Street, City, State, PostalCode, CountryOrRegion, ResourceLinks | Export-Csv -Path "exported_building.csv" -NoTypeInformation

# Export Floors
$floors = Get-PlaceV3 -AncestorId $buildingId -Type Floor
$floors | Select-Object PlaceId, DisplayName, Type, SortOrder, ParentId | Export-Csv -Path "exported_floors.csv" -NoTypeInformation

# Export Sections
$sections = Get-PlaceV3 -AncestorId $buildingId -Type Section
$sections | Select-Object PlaceId, DisplayName, Type, Identity, ParentId | Export-Csv -Path "exported_sections.csv" -NoTypeInformation

# Export Workspaces
$workspaces = Get-PlaceV3 -AncestorId $buildingId -Type space
$workspaces | Select-Object PlaceId, DisplayName, Type, Identity, ParentId, Label, Capacity, FloorLabel, MailboxOID | Export-Csv -Path "exported_workspaces.csv" -NoTypeInformation

# Export Rooms
$rooms = Get-PlaceV3 -AncestorId $buildingId -Type Room
$rooms | Select-Object PlaceId, DisplayName, Type, Identity, Label, ParentId, MailboxOID | Export-Csv -Path "exported_rooms.csv" -NoTypeInformation

# Export Desks
$desks = Get-PlaceV3 -AncestorId $buildingId -Type Desk
$desks | Select-Object PlaceId, DisplayName, Type, Identity, ParentId, MailboxOID | Export-Csv -Path "exported_desks.csv" -NoTypeInformation

# Export Mailboxes associated with the building's workspaces, rooms, and desks
# Read the exported CSV files
$exportedWorkspaces = Import-Csv -Path "exported_workspaces.csv"
$exportedRooms = Import-Csv -Path "exported_rooms.csv"
$exportedDesks = Import-Csv -Path "exported_desks.csv"

# Get the aliases from the exported files
$workspaceAliases = $exportedWorkspaces | Select-Object -ExpandProperty DisplayName
$roomAliases = $exportedRooms | Select-Object -ExpandProperty DisplayName
$deskAliases = $exportedDesks | Select-Object -ExpandProperty DisplayName

# Combine all aliases
$allAliases = $workspaceAliases + $roomAliases + $deskAliases

# Filter mailboxes based on the aliases
$mailboxes = Get-Mailbox -RecipientTypeDetails RoomMailbox | Where-Object { $_.name -eq $allAliases }
$mailboxes = @()
foreach ($alias in $allAliases) {
    $mailbox = Get-Mailbox -RecipientTypeDetails RoomMailbox | Where-Object { $_.Name -eq $alias }
    $mailbox | Select-Object DisplayName, Alias, Identity, Name, UserPrincipalName, PrimarySmtpAddress, ExchangeGuid, GUID | Export-Csv -Path "exported_mailboxes.csv" -NoTypeInformation -Append
}

Write-Output "Export completed. Files saved in the current directory."

