*** Settings ***
Resource  ./../resource/kw_web.robot
Test Setup  Abrir Navegador
Test Teardown  Fechar Navegador


*** Test Case ***
Cenário: Pesquisar pela Blusa Blouse no site de roupas
  Dado que o usuário acesse o site de roupas
  Quando inserir o nome da Blusa Blouse
  E clicar em pesquisar
  Então o site irá retornar a pesquisa com a blusa blouse
