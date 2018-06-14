*** Settings ***
Resource        ../../resource/Web/resourceBDD.robot
Test Setup      Start browser
Test Teardown   Stop browser

*** Variables ***

*** Test Case ***
Scenario 1: Search existent product
    Given I am on homepage
    When I search for "Blouse"
    And I click on Search Button
    Then the product "Blouse" should be listed on results field

Scenario 2: Search non existent product
    Given I am on homepage
    When I search for "ItemNotFound"
    And I click on Search Button
    Then the message "No results were found for your search "ItemNotFound"" should be displayed

*** Keywords ***
//TODO Keyword driven