*** Settings ***
Resource        ../resouce/Resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Variables ***

*** Test Case ***
Test Case 1: Search existent product
    [Setup]  Abrir navegador
    Acessar a página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "Blouse" no campo de busca
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site
    [Teardown]  Fechar navegador

Test Case 2: Search non existent product
    Acessar a página home do site
    Conferir se a página home foi exibida
    Digitar o nome do produto "produtoNaoExistente" no campo de busca
    Clicar no botão pesquisar
    Conferir mensagem de erro "No results were found for your search "produtoNãoExistente""

*** Keywords ***