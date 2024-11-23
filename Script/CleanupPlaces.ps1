<#
  .SYNOPSIS
  
  The CleanupPlace.ps1 script uses the exported files to remove a single building and all associated floors, sections, workspaces, rooms, desks, and mailboxes.
  It is a non-reversible action! Make sure you understand the ramifications of running this script before proceeding.

  .DESCRIPTION

Coming....

  .EXAMPLE

  Modify the $buildingname variable to the name of the building you want to delete. Run the script in a PowerShell 7 environment.

  .NOTES
  Version:        1.0
  Author:         LSomi@Microsoft.com
  Creation Date:  November 2024

## Disclaimer
# (c)2024 Microsoft Corporation. All rights reserved. This document is provided "as-is." Information and views expressed in this document,
# including URL and other Internet Web site references, may change without notice. You bear the risk of using it.
# This document does not provide you with any legal rights to any intellectual property in any Microsoft product.
# You may copy and use this document for your internal, reference purposes. You may modify this document for your internal purposes.
#>

# Define the building name to delete
$buildingName = "Contoso HQ"


<#
# Modify below this line at your own risk. 
********************************************************************************************************************
#>


## Requirement: Use Windows PowerShell 7
## Connecting to Exchange & Places
Connect-ExchangeOnline
Connect-MicrosoftPlaces


# Get the building ID
$building = Get-PlaceV3 -Type Building | Where-Object { $_.DisplayName -eq $buildingName }
if (-not $building) {
    Write-Error "Building '$buildingName' not found."
    exit
}
$buildingId = $building.PlaceId

# Remove Desks
$desks = Get-PlaceV3 -AncestorId $buildingId -Type Desk
foreach ($desk in $desks) {
    Remove-Place -Identity $desk.PlaceId -Confirm:$false
    $mailbox = Get-Mailbox -RecipientTypeDetails RoomMailbox | Where-Object { $_.DisplayName -eq $desk.DisplayName }
    if ($mailbox) {
        Remove-Mailbox -Identity $mailbox.Alias -Confirm:$false
    }
}

# Remove Rooms
$rooms = Get-PlaceV3 -AncestorId $buildingId -Type Room
foreach ($room in $rooms) {
    Remove-Place -Identity $room.PlaceId -Confirm:$false
    $mailbox = Get-Mailbox -RecipientTypeDetails RoomMailbox | Where-Object { $_.DisplayName -eq $room.DisplayName }
    if ($mailbox) {
        Remove-Mailbox -Identity $mailbox.Alias -Confirm:$false
    }
}

# Remove Workspaces
$workspaces = Get-PlaceV3 -ParentId $buildingId -Type space
foreach ($workspace in $workspaces) {
    Remove-Place -Identity $workspace.PlaceId -Confirm:$false
    $mailbox = Get-Mailbox -RecipientTypeDetails RoomMailbox | Where-Object { $_.DisplayName -eq $workspace.DisplayName }
    if ($mailbox) {
        Remove-Mailbox -Identity $mailbox.Alias -Confirm:$false
    }
}

# Remove Sections
$sections = Get-PlaceV3 -AncestorId $buildingId -Type Section
foreach ($section in $sections) {
    Remove-PlaceV3 -Identity $section.PlaceId -Confirm:$false
}

# Remove Floors
$floors = Get-PlaceV3 -AncestorId $buildingId -Type Floor
foreach ($floor in $floors) {
    Remove-Place -Identity $floor.PlaceId -Confirm:$false
}

# Remove Building
Remove-Place -Identity $buildingId -Confirm:$false

Write-Output "Deletion completed. All objects associated with the building '$buildingName' have been removed."