*** Settings ***
Resource     ./../resource/kw_api.robot


*** Test Case ***
Cenario: Verificar todos os planetas da história Star Wars
  Dado que o usuário conecte com o end-point
  Quando solicitar os dados dos planetas
  Então o end-point irá retornar todos os planetas
