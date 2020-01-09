*** Settings ***
Library  RequestsLibrary
Library  Collections

*** Variables ***
${json_post}  {"title":"keiko","body":"teste","userId":"11"}

*** Keywords ***
Dado que o usuário esteja conectado na jsonplaceholder
  Create Session    jsonplace    https://jsonplaceholder.typicode.com

Quando enviar um post com os dados
  ${RESPOSTA}=  Post Request    jsonplace    /posts   data=${json_post}
  Set Test Variable   ${RESPOSTA}

Então o endpoint irá retornar o status 201
  Should Be Equal As Strings   ${RESPOSTA.status_code}  201
  Log  "O Status Retornado ${RESPOSTA.status_code}"


Quando solicitar um GET
  ${RESPOSTA}=  Get Request    jsonplace    /posts/11
  Set Test Variable    ${RESPOSTA}

Então o endpoint irá retornar os dados do post
  Should Be Equal As Strings   ${RESPOSTA.status_code}  200
  Log  ${RESPOSTA.json()}
