<#
  .SYNOPSIS
  Create places based on a single building with multiple floors, sections, workspaces, rooms, and desks.

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
Connect-ExchangeOnline
Connect-MicrosoftPlaces

# Import CSV files
$buildings = Import-Csv -Path "buildings.csv"
$floors = Import-Csv -Path "floors.csv"
$sections = Import-Csv -Path "sections.csv"
$workspaces = Import-Csv -Path "workspaces.csv"
$rooms = Import-Csv -Path "rooms.csv"
$desks = Import-Csv -Path "desks.csv"


# Validate section names in workspaces.csv
foreach ($workspace in $workspaces) {
    if (-not ($sectionNames -contains $workspace.SectionName)) {
        Write-Warning "Section name '$($workspace.SectionName)' in workspaces.csv does not match any section in sections.csv."
    }
}
# Extract section names from sections.csv
$sectionNames = $sections.SectionName

# Validate section names in desks.csv
foreach ($desk in $desks) {
    if (-not ($sectionNames -contains $desk.SectionName)) {
        Write-Warning "Section name '$($desk.SectionName)' in desks.csv does not match any section in sections.csv."
    }
}


# Create Workspaces
foreach ($workspace in $workspaces) {
    $mailbox = New-Mailbox -Room -Alias $workspace.Alias -Name $workspace.Name | Set-Mailbox -Type Workspace
    Set-MailboxCalendarConfiguration -Identity $workspace.Alias -WorkingHoursTimeZone $workspace.TimeZone -WorkingHoursStartTime $workspace.WorkingHoursStartTime
    Set-CalendarProcessing -Identity $workspace.Alias -EnforceCapacity $True -AllowConflicts $true
    #    Set-PlaceV3 -Identity $workspace.Alias -Capacity $workspace.Capacity -Label $workspace.Name -FloorLabel $workspace.FloorLabel -IsWheelChairAccessible $True -Tags $workspace.Tags -ParentId $workspace.ParentId
}

# Create Rooms
foreach ($room in $rooms) {
    $mailbox = New-Mailbox -Room -Alias $room.Alias -Name $room.Name
    Set-CalendarProcessing -Identity $room.Alias -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse $room.AdditionalResponse
    #    Set-PlaceV3 -Identity $room.Alias -Capacity $room.Capacity -Label $room.Name -FloorLabel $room.FloorLabel -IsWheelChairAccessible $True -Tags $room.Tags -ParentId $room.ParentId
}

# Create Buildings and Floors
foreach ($building in $buildings) {
    New-Place -Type Building -Name $building.Name -Street $building.Street -City $building.City -State $building.State -PostalCode $building.PostalCode -CountryorRegion $building.CountryorRegion
    $buildingId = (Get-PlaceV3 -Type Building | Where-Object -Property DisplayName -eq $building.Name).PlaceId
    #    Set-PlaceV3 -Identity $buildingId -ResourceLinks @{name=$building.ResourceLinks.Split(";")[0].Split("=")[1]; Value=$building.ResourceLinks.Split(";")[1].Split("=")[1]; type=$building.ResourceLinks.Split(";")[2].Split("=")[1]}
    Set-PlaceV3 -Identity $buildingId -ResourceLinks @{name = $building.ResourceLinks }
    
    foreach ($floor in $floors | Where-Object { $_.BuildingName -eq $building.Name }) {
        New-Place -Type Floor -Name $floor.FloorName -SortOrder $floor.SortOrder -ParentId $buildingId
    }
}

# Get building ID
$buildingId = (Get-PlaceV3 -Type Building | Where-Object -Property DisplayName -eq $buildings.name).PlaceId
#$contosol1 = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq '1').PlaceId
#$contosol2 = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq '2').PlaceId

# Create Sections on each floor
foreach ($section in $sections) {
    $floorId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $section.FloorName).PlaceId
    New-Place -Type Section -Name $section.SectionName -ParentId $floorId
}

# Create Desks
foreach ($desk in $desks) {
    $sectionId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $desk.SectionName).PlaceId
    New-Place -Type Desk -Name $desk.Name -ParentId $sectionId
    
    #$place = New-Place -type Desk -Name $desk.Name -ParentId $sectionId
    #$place = New-Place -type Desk -Name $desk.Name -ParentId $desk.ParentId
    $mailbox = New-Mailbox -Room -Alias $desk.Alias -Name $desk.Name
    Set-Mailbox $mailbox.Identity -Type Desk -HiddenFromAddressListsEnabled $true
    #Set-PlaceV3 $place.PlaceId -Mailbox $mailbox.Identity -IsWheelChairAccessible $true -Tags $desk.Tags
    $place = (Get-PlaceV3 -Type Desk | Where-Object -Property DisplayName -eq $desk.Name).PlaceId
    Set-PlaceV3 $place -Mailbox $mailbox.Identity -IsWheelChairAccessible $true -Tags $desk.Tags
    
}

#Places - Workspaces
foreach ($workspace in $workspaces) {
    #    $mailbox = New-Mailbox -Room -Alias $workspace.Alias -Name $workspace.Name | Set-Mailbox -Type Workspace
    #    Set-MailboxCalendarConfiguration -Identity $workspace.Alias -WorkingHoursTimeZone $workspace.TimeZone -WorkingHoursStartTime $workspace.WorkingHoursStartTime
    #    Set-CalendarProcessing -Identity $workspace.Alias -EnforceCapacity $True -AllowConflicts $true
    $workspaceId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $workspace.SectionName).PlaceId    
    Set-PlaceV3 -Identity $workspace.Alias -Capacity $workspace.Capacity -Label $workspace.Name -FloorLabel $workspace.FloorLabel -IsWheelChairAccessible $True -Tags $workspace.Tags -ParentId $workspaceId
}

# Places - Conference Rooms
foreach ($room in $rooms) {
    #    $mailbox = New-Mailbox -Room -Alias $room.Alias -Name $room.Name
    #    Set-CalendarProcessing -Identity $room.Alias -AutomateProcessing AutoAccept -AddOrganizerToSubject $false -AllowRecurringMeetings $true -DeleteAttachments $true -DeleteComments $false -DeleteSubject $false -ProcessExternalMeetingMessages $true -RemovePrivateProperty $false -AddAdditionalResponse $true -AdditionalResponse $room.AdditionalResponse
    $roomId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $room.name).PlaceId    
    Set-PlaceV3 -Identity $room.Alias -Capacity $room.Capacity -Label $room.Name -FloorLabel $room.FloorLabel -IsWheelChairAccessible $True -Tags $room.Tags -ParentId $roomId
}

