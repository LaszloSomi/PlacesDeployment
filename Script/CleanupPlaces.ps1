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

#region for functions

# Prompt user for confirmation
function Confirm-Deletion {
    param (
        [string]$buildingName
    )

    $confirmation = Read-Host "This action is destructive and will delete all objects in the tenant associated with '$buildingName'. This action is also not reversible. Type 'Yes' to continue"

    if ($confirmation -ne "Yes") {
        Write-Host "Operation cancelled by user." -ForegroundColor Red
        exit
    }
}

#Remove Sections anf floors
function Remove-SectionsAndFloors {
  param (
    [string]$csvPath
  )

  $data = Import-Csv -Path $csvPath

  # Remove sections
  $sections = $data | Where-Object { $_.Type -eq "Section" }
  foreach ($section in $sections) {
    Remove-Place -Identity $section.PlaceId
  }
  Write-Output "Sections removed."

  # Remove floors
  $floors = $data | Where-Object { $_.Type -eq "Floor" }
  foreach ($floor in $floors) {
    Remove-Place -Identity $floor.PlaceId
  }
  Write-Output "Floors removed."
}

# Remove desks, rooms, and spaces
function Remove-DesksRoomsSpaces {
  param (
    [string]$csvPath
  )

  $data = Import-Csv -Path $csvPath

  # Remove desks
  $desks = $data | Where-Object { $_.Type -eq "Desk" }
  foreach ($desk in $desks) {
    Remove-Place -Identity $desk.PlaceId
  }
  Write-Output "Desks removed."
 
  # Remove spaces
  $spaces = $data | Where-Object { $_.Type -eq "space" }
  foreach ($space in $spaces) {
    Remove-Place -Identity $space.PlaceId
  }
  Write-Output "Spaces removed."
  
  # Remove rooms
  $rooms = $data | Where-Object { $_.Type -eq "Room" }
  foreach ($room in $rooms) {
    Remove-Place -Identity $room.PlaceId
  }
  Write-Output "Rooms removed."

}

# Remove mailboxes associated with desks, rooms, and spaces
function Remove-Mailboxes {
  param (
    [string]$csvPath
  )

  $data = Import-Csv -Path $csvPath

  # Get mailboxes associated with desks, rooms, and spaces
  $mailboxIds = $data | Where-Object { $_.Type -in @("Desk", "Room", "space") } | Select-Object -ExpandProperty MailboxOID

  foreach ($mailboxId in $mailboxIds) {
    Remove-Mailbox -Identity $mailboxId -Confirm:$false
  }
  Write-Output "Mailboxes removed."
}

# Check if exported files exist
function Test-ExportedFiles {
    param (
        [string]$scriptDir,
        [string[]]$requiredFiles
    )

    $missingFiles = @()

    foreach ($file in $requiredFiles) {
        if (-not (Test-Path -Path (Join-Path -Path $scriptDir -ChildPath $file))) {
            $missingFiles += $file
        }
    }

    if ($missingFiles.Count -gt 0) {
        Write-Host "The following required files are missing: $($missingFiles -join ', ')" -ForegroundColor Red
        Write-Host "Please run the ExportBuilding.ps1 script to generate the required files." -ForegroundColor Red
        exit
    }
}



#endregion




# Confirm deletion
Confirm-Deletion -buildingName $buildingName

# Check if exported files exist
$scriptDir = get-location
$requiredFiles = @("exported_building.csv")

Test-ExportedFiles -scriptDir $scriptDir -requiredFiles $requiredFiles
$missingFiles = @()


# Remove sections and floors
Remove-SectionsAndFloors -csvPath "exported_building.csv"

# Remove desks, rooms, and spaces
Remove-DesksRoomsSpaces -csvPath "exported_building.csv"

# Remove mailboxes
Remove-Mailboxes -csvPath "exported_building.csv"





$allspace = get-placev3 -Type space
foreach ($space in $allspace) {
    Remove-Place -Identity $space.Identity
}