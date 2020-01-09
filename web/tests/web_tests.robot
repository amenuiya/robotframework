*** Settings ***
Resource   ./../resource/kw_web_tests.robot
Resource   ./../resource/common.robot
Suite setup  Abrir navegador
Suite teardown  Fechar navegador
Force Tags  Batman

*** Test Case ***
Cenário: Pesquisar por batman no google
  [Tags]  pamonha
  Dado que o usuário esteja no site google
  Quando inserir o texto batman
  E clicar no botão pesquisar
  Então o google retorna os resultados para batman
