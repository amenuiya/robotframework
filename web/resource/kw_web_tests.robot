*** Settings ***
Library  SeleniumLibrary
Library  DebugLibrary

*** Keywords ***
Dado que o usuário esteja no site google
  Go To  http://www.google.com

Quando inserir o texto batman
  Input Text    name=q    batman

E clicar no botão pesquisar
  Wait Until Keyword Succeeds    2s    2s    Click Element    name=btnK

Então o google retorna os resultados para batman
  Debug
  Page Should Contain    Batman – Wikipédia, a enciclopédia livre
