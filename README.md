# PlacesDeployment

This script will help admin to deploy Places in their environment.
<!--
This document focuses on a single building and all objects associated with it.
-->

The script is based on the input files correctly populated for a single building. To deploy multiple building, create multiple set of input files.
Pay attention to the SectionName columns in Sections, Workspaces and Desks CSV files. This column in the linking object between the files.

Use SetupPlaces.ps1 to create the building and associated objects.
The script expect that the folder it is run in contains all the CSV files.
The script will do the following checks before it runs:

1, Modules installed for ExchangeOnline
2, Check if there is a connection to ExchangeOnline already
3, Check for MicrosoftPlaces module to be installed
4, Check if thre is a connection to MicrosoftPlaces already
5, Test for SectionNames for workspaces and desks file.