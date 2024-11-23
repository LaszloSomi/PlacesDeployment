<#
  .SYNOPSIS
  Create places based on a single building with multiple floors, sections, workspaces, rooms, and desks.

  .DESCRIPTION

This script will create places based on a single building with multiple floors, sections, workspaces, rooms, and desks. 
The script will import the data from CSV files and create the places in Exchange Online and Microsoft Places. 
The script will also validate the data before creating the places.

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
## Testing if modules are installed and user connected to Exchange & Places

function Test-Connections {
    $exchangeConnection = Get-Module -Name ExchangeOnlineManagement -ListAvailable
    $placesConnection = Get-Module -Name MicrosoftPlaces -ListAvailable

    if (-not $exchangeConnection) {
        Write-Error "The ExchangeOnlineManagement module is not installed. Please install it using Install-Module -Name ExchangeOnlineManagement."
        exit
    } else {
        Write-Output "ExchangeOnline module found"
    }

    if (-not $placesConnection) {
        Write-Error "The MicrosoftPlaces module is not installed. Please install it using Install-Module -Name MicrosoftPlaces."
        exit
    } else {
        Write-Output "MicrosoftPlaces module found"
    }

    try {
        Get-EXORecipient -ResultSize 1 -WarningAction SilentlyContinue | Out-Null
        Write-Output "Connected to ExchangeOnline, we are good to go"
    } catch {
        Write-Error "You are not connected to Exchange Online. Please connect using Connect-ExchangeOnline."
        exit
    }

    try {
        Get-PlaceV3 -ResultSize 1 -WarningAction SilentlyContinue | Out-Null
        Write-Output "Connected to MicrosoftPlaces, we are good to go"
    } catch {
        Write-Error "You are not connected to Microsoft Places. Please connect using Connect-MicrosoftPlaces."
        exit
    }
}

Test-Connections

# Import CSV files
$buildings = Import-Csv -Path "buildings.csv"
$floors = Import-Csv -Path "floors.csv"
$sections = Import-Csv -Path "sections.csv"
$workspaces = Import-Csv -Path "workspaces.csv"
$rooms = Import-Csv -Path "rooms.csv"
$desks = Import-Csv -Path "desks.csv"


# Validatation function for SectionNamessv
$sectionNames = $sections.SectionName

function Test-SectionNames {
    param (
        [Parameter(Mandatory = $true)]
        [array]$items,
        [Parameter(Mandatory = $true)]
        [array]$sectionNames,
        [Parameter(Mandatory = $true)]
        [string]$itemType
    )

    foreach ($item in $items) {
        if (-not ($sectionNames -contains $item.SectionName)) {
            Write-Warning "Section name '$($item.SectionName)' in $itemType does not match any section in sections.csv."
        }
    }
}

# Validate section names in workspaces.csv
Test-SectionNames -items $workspaces -sectionNames $sectionNames -itemType "workspaces.csv"

# Validate section names in desks.csv
Test-SectionNames -items $desks -sectionNames $sectionNames -itemType "desks.csv"


# Create Workspaces
function Add-WorkSpaces {
    param (
        [Parameter(Mandatory = $true)]
        [array]$workspaces
    )

    foreach ($workspace in $workspaces) {
        New-Mailbox -Room -Alias $workspace.Alias -Name $workspace.Name | Set-Mailbox -Type Workspace
        Set-MailboxCalendarConfiguration -Identity $workspace.Alias -WorkingHoursTimeZone $workspace.TimeZone -WorkingHoursStartTime $workspace.WorkingHoursStartTime
        Set-CalendarProcessing -Identity $workspace.Alias -EnforceCapacity $True -AllowConflicts $true
        #$workspaceId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $workspace.SectionName).PlaceId    
        #Set-PlaceV3 -Identity $workspace.Alias -Capacity $workspace.Capacity -Label $workspace.Name -FloorLabel $workspace.FloorLabel -IsWheelChairAccessible $True -Tags $workspace.Tags -ParentId $workspaceId
    }
}

Add-WorkSpaces -workspaces $workspaces


# Create Rooms
function Add-Rooms {
    param (
        [Parameter(Mandatory = $true)]
        [array]$rooms
    )
## Create Rooms
    foreach ($room in $rooms) {
    New-Mailbox -Room -Alias $room.Alias -Name $room.Name
        Set-CalendarProcessing -Identity $room.Alias `
            -AutomateProcessing AutoAccept `
            -AddOrganizerToSubject $false `
            -AllowRecurringMeetings $true `
            -DeleteAttachments $true `
            -DeleteComments $false `
            -DeleteSubject $false `
            -ProcessExternalMeetingMessages $true `
            -RemovePrivateProperty $false `
            -AddAdditionalResponse $true `
            -AdditionalResponse $room.AdditionalResponse
        #$roomId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $room.Name).PlaceId
        #Set-PlaceV3 -Identity $room.Alias -Capacity $room.Capacity -Label $room.Name -FloorLabel $room.FloorLabel -IsWheelChairAccessible $True -Tags $room.Tags -ParentId $roomId
    }
}

Add-Rooms -rooms $rooms


# Create Buildings and Floors
function Add-Buildings {
    param (
        [Parameter(Mandatory = $true)]
        [array]$buildings,
        [Parameter(Mandatory = $true)]
        [array]$floors
    )

    foreach ($building in $buildings) {
        New-Place -Type Building -Name $building.Name -Street $building.Street -City $building.City -State $building.State -PostalCode $building.PostalCode -CountryorRegion $building.CountryorRegion
        $buildingId = (Get-PlaceV3 -Type Building | Where-Object -Property DisplayName -eq $building.Name).PlaceId
        Set-PlaceV3 -Identity $buildingId -ResourceLinks @{name = $building.ResourceLinks }
        
        foreach ($floor in $floors | Where-Object { $_.BuildingName -eq $building.Name }) {
            New-Place -Type Floor -Name $floor.FloorName -SortOrder $floor.SortOrder -ParentId $buildingId
        }
    }
}

Add-Buildings -buildings $buildings -floors $floors

# Get building ID
$buildingId = (Get-PlaceV3 -Type Building | Where-Object -Property DisplayName -eq $buildings.name).PlaceId
#$contosol1 = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq '1').PlaceId
#$contosol2 = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq '2').PlaceId

# Create Sections on each floor
function Add-Sections {
    param (
        [Parameter(Mandatory = $true)]
        [array]$sections,
        [Parameter(Mandatory = $true)]
        [string]$buildingId
    )

    foreach ($section in $sections) {
        $floorId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $section.FloorName).PlaceId
        New-Place -Type Section -Name $section.SectionName -ParentId $floorId
    }
}

Add-Sections -sections $sections -buildingId $buildingId


# Create Desks
function Add-Desks {
    param (
        [Parameter(Mandatory = $true)]
        [array]$desks,
        [Parameter(Mandatory = $true)]
        [string]$buildingId
    )

    foreach ($desk in $desks) {
        $sectionId = (Get-PlaceV3 -AncestorId $buildingId | Where-Object -Property DisplayName -eq $desk.SectionName).PlaceId
        New-Place -Type Desk -Name $desk.Name -ParentId $sectionId
        
        $mailbox = New-Mailbox -Room -Alias $desk.Alias -Name $desk.Name
        Set-Mailbox $mailbox.Identity -Type Desk -HiddenFromAddressListsEnabled $true
        
        $place = (Get-PlaceV3 -Type Desk | Where-Object -Property DisplayName -eq $desk.Name).PlaceId
        Set-PlaceV3 -Identity $place -Mailbox $mailbox.Identity -IsWheelChairAccessible $true -Tags $desk.Tags
    }
}

Add-Desks -desks $desks -buildingId $buildingId


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

