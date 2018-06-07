*** Settings ***
Library  Selenium

*** Variables ***
${URL}  http://automationpractice.com
${BROWSER}  firefox

*** Test Case ***
Scenario 1: Search existent product
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na páguna de resultado da busca

Scenario 2: Search non existent product
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "produtoNaoExistente"
    Então a mensagem "No results were found for your search "produtoNãoExistente"" deve ser exibida

*** Keywords ***