*** Settings ***
Library   Selenium

*** Variables ***
${BROWSER}  firefox
${URL}  http://automationpractice.com

*** Keywords ***
# Setup
Abrir navegador A
    Open Browser  about:blank  ${BROWSER}

#Teardown
Fechar navegador A
    Close Browser 

#Step Definitions
Acessar a página home do site
    Go To  ${URL}
    Title Should Be   My Store