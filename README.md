# PlacesDeployment

This script will help admin to deploy Places in their environment.<br>
<!--
This document focuses on a single building and all objects associated with it.
-->

The script is based on the input files correctly populated for a single building. To deploy multiple building, create multiple set of input files.<br>
Pay attention to the SectionName columns in Sections, Workspaces and Desks CSV files. This column in the linking object between the files.<br>
<br>
Use SetupPlaces.ps1 to create the building and associated objects.<br>
The script expect that the folder it is run in contains all the CSV files.<br>
The script will do the following checks before it runs:<br>

1, Modules installed for ExchangeOnline<br>
2, Check if there is a connection to ExchangeOnline already<br>
3, Check for MicrosoftPlaces module to be installed<br>
4, Check if thre is a connection to MicrosoftPlaces already<br>
5, Test for SectionNames for workspaces and desks file.<br>
<br>
ExportBuilding.PS! will create an export for a single building. You will need to change the $Buildingname variable in the file before running the export function.<br>
The script will create exported_building.csv file with all object associated with the building.<br>