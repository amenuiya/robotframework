*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Dado que o usuário acesse o site de roupas
  Go To    http://automationpractice.com/index.php

Quando inserir o nome da Blusa Blouse
  Input Text    id=search_query_top    Blouse

E clicar em pesquisar
  Click Button    name=submit_search

Então o site irá retornar a pesquisa com a blusa blouse
  Wait Until Keyword Succeeds    2s    2s    Page Should Contain Element    xpath=//*[@class='product-container']//*[contains(text(),'Blouse')]

Abrir Navegador
  Open Browser    about:blank    Chrome

Fechar Navegador
  Close Browser
