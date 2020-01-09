*** Settings ***
Library      RequestsLibrary
Library      Collections

*** Keywords ***
Dado que o usuário conecte com o end-point
  Create Session  starwars  https://swapi.co/api

Quando solicitar os dados dos planetas
  ${RESPOSTA}=        Get Request  starwars  /planets/
  Set Test Variable   ${RESPOSTA}
  Run Keyword If    ${RESPOSTA.status_code} == 200    Log To Console    "OLAR"
  ...  ELSE
  ...  Log To Console    "deu ruim "

Então o end-point irá retornar todos os planetas
  Wait Until Keyword Succeeds    2s    2s    Should Be Equal As Strings   ${RESPOSTA.status_code}  200
  Dictionary Should Contain Item    ${RESPOSTA.json()}    count    61
  Log  ${RESPOSTA.json()}
