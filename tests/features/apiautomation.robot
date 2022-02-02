*** Settings ***
Documentation            Aqui estarão presentes os testes de API automatizados.

Resource             ../../src/config/package.robot

*** Test Cases ***
Cenario: Realizar a consulta de livros
    Create Session        booksAPI            https://fakerestapi.azurewebsites.net/api/v1        disable_warnings=${True}
    ${HEADERS}            Create Dictionary        content-type=application/json
    Set Test Variable     ${HEADERS}

    ${RESPOSTA}           GET On Session      booksAPI        Books            expected_status=any
    Log                   ${RESPOSTA.text}
    Set Test Variable     ${RESPOSTA}

    Should Be Equal As Strings    ${RESPOSTA.status_code}        200
    Should Be Equal As Strings    ${RESPOSTA.reason}             OK