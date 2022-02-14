*** Settings ***
Documentation        Aqui estarão presentes todas as Keywords responsáveis pelo testes WEB.

Resource             ../../config/package.robot

*** Keywords ***
Dado que o cliente esteja na tela de cadastro    
    Title Should Be                  Automação com Batista
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'Novo Usuário!!')]
    Capture Page Screenshot

E preencher todos os campos
    Input Text        id=user_name            ${DATA.REGISTER.NOME}
    Input Text        id=user_lastname        ${DATA.REGISTER.ULT_NOME}
    Input Text        id=user_email           ${DATA.REGISTER.EMAIL}
    Input Text        id=user_address         ${DATA.REGISTER.ENDERECO}
    Capture Page Screenshot    
    Input Text        id=user_university      ${DATA.REGISTER.UNIVERSIDADE}
    Input Text        id=user_profile         ${DATA.REGISTER.PROFISSAO}
    Input Text        id=user_gender          ${DATA.REGISTER.GENERO}
    Input Text        id=user_age             ${DATA.REGISTER.IDADE}
    Capture Page Screenshot

Quando clicar em Criar
    Click Element     xpath=//input[@value='Criar']

Então deve ser apresentada a mensagem de sucesso
    [Arguments]            ${MENSAGEM}
    Capture Page Screenshot
    Wait Until Element Is Visible    xpath=//*[contains(text(), '${MENSAGEM}')]
    
    Wait Until Page Contains                  ${DATA.REGISTER.NOME}
    Wait Until Page Contains                  ${DATA.REGISTER.ULT_NOME}
    Wait Until Page Contains                  ${DATA.REGISTER.EMAIL}
    Wait Until Page Contains                  ${DATA.REGISTER.ENDERECO}
    Wait Until Page Contains                  ${DATA.REGISTER.UNIVERSIDADE}
    Wait Until Page Contains                  ${DATA.REGISTER.PROFISSAO}
    Wait Until Page Contains                  ${DATA.REGISTER.GENERO}
    Wait Until Page Contains                  ${DATA.REGISTER.IDADE}    

E preencher todos os campos exceto o campo nome
    Input Text            id=user_lastname    ${DATA.REGISTER.ULT_NOME}
    Input Text            id=user_email       ${DATA.REGISTER.EMAIL}
    Input Text            id=user_address     ${DATA.REGISTER.ENDERECO}
    Input Text            id=user_university  ${DATA.REGISTER.UNIVERSIDADE}
    Input Text            id=user_profile     ${DATA.REGISTER.PROFISSAO}
    Input Text            id=user_gender      ${DATA.REGISTER.GENERO}
    Input Text            id=user_age         ${DATA.REGISTER.IDADE}
    Capture Page Screenshot
    
E preencher todos os campos exceto o campo email
    Input Text        id=user_name            ${DATA.REGISTER.NOME}
    Input Text        id=user_lastname        ${DATA.REGISTER.ULT_NOME}
    Input Text        id=user_address         ${DATA.REGISTER.ENDERECO}
    Input Text        id=user_university      ${DATA.REGISTER.UNIVERSIDADE}
    Input Text        id=user_profile         ${DATA.REGISTER.PROFISSAO}
    Input Text        id=user_gender          ${DATA.REGISTER.GENERO}
    Input Text        id=user_age             ${DATA.REGISTER.IDADE}
    Capture Page Screenshot


Então deve ser apresentada a mensagem
    [Arguments]                               ${ERRO}
    Wait Until Page Contains                  ${ERRO}
    IF     '${ERRO}'=='Name translation missing: pt-BR.activerecord.errors.models.user.attributes.name.blank'
            Clear Element Text    id=user_email
    END
    