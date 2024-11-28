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

#>

## Requirement: Use Windows PowerShell 7
## Connecting to Exchange & Places
#Connect-ExchangeOnline
#Connect-MicrosoftPlaces

# Define the building name to export
$buildingName = "Contoso HQ"


<#
# Modify below this line at your own risk. 
********************************************************************************************************************
#>

#region for functions
function Export-BuildingData {
  param (
    [string]$buildingName
  )

  $building = Get-PlaceV3 -Type Building | Where-Object { $_.DisplayName -eq $buildingName }
  if (-not $building) {
    Write-Error "Building '$buildingName' not found."
    exit
  }
  $buildingId = $building.PlaceId

  Get-PlaceV3 -AncestorId $buildingId | Export-Csv -Path "exported_building.csv" -NoTypeInformation
}

#
#endregion for functions

# Call the function
Export-BuildingData -buildingName $buildingName



