*** Settings ***
Resource  ./../resource/kw_api.robot
Force Tags  Batman

*** Test Case ***
Cenário: Inserir um post na pagina jsonplaceholder
  Dado que o usuário esteja conectado na jsonplaceholder
  Quando enviar um post com os dados
  Então o endpoint irá retornar o status 201

Cenário: Pegar dados de um post
  Dado que o usuário esteja conectado na jsonplaceholder
  Quando solicitar um GET
  Então o endpoint irá retornar os dados do post
