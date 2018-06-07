*** Settings ***
Resource        ../resource/resource.robot
Test Setup      Start browser
Test Teardown   Stop browser

*** Variables ***

*** Test Case ***
Test Case 1: Search existent product
    # [Setup]  Start browser
    Access homepage
    Check if homepage is displayed
    Search for "Blouse"
    Click on button Search
    Check "Blouse" is displayed
    # [Teardown]  Stop browser

Test Case 2: Search non existent product
    Access homepage 
    Check if homepage is displayed
    Search for "ItemNotFound"
    Click on button Search
    Check error message "No results were found for your search "ItemNotFound""

*** Keywords ***