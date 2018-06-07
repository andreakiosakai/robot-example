*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}  firefox
${URL}  http://automationpractice.com

*** Keywords ***
# Setup
Start browser
    Open Browser  about:blank  ${BROWSER}

#Teardown
Stop browser
    Close Browser 

#Step Definitions
Access homepage
    Go To  ${URL}

Check if homepage is displayed
    Title Should Be  My Store

Search for "${var}"
    Input Text  name=search_query  ${var}

Click on button Search
    Click Button   name=submit_search

Check "${var}" is displayed
    wait until Element is Visible  class=product-container
    Page Should Contain Image      xpath=//div[@id='center_column']//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Page Should Contain Link       xpath=//div[@id='center_column']//a[@class='product-name'][contains(text(),${var})]

Check error message "${text}"
    wait until Element is Visible  xpath=//div[@id='center_column']/p
    Element Text Should Be       xpath=//div[@id='center_column']/p  ${text}