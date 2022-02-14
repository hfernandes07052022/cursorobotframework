*** Settings ***
Documentation        Aqui estarão presentes todos os testes automatizados do módulo de automação WEB.

Resource             ../../src/config/package.robot

Suite Setup            Abrir navegador
Suite Teardown         Fechar navegador


*** Test Cases ***
Cenario: Criar usuário com sucesso usando BDD
    [Tags]            BDD
    Dado que o cliente esteja na tela de cadastro
    E preencher todos os campos
    Quando clicar em Criar
    Então deve ser apresentada a mensagem de sucesso     ${DATA.MESSAGES.MESSAGE_SUCCESS}

Cenario: Criar usuario sem informar o nome
    [Tags]        NOME
    Dado que o cliente esteja na tela de cadastro
    E preencher todos os campos exceto o campo nome
    Quando clicar em Criar
    Então deve ser apresentada a mensagem     Name translation missing: pt-BR.activerecord.errors.models.user.attributes.name.blank

Cenario: Criar usuario sem informar o email
    [Tags]        NOME
    Dado que o cliente esteja na tela de cadastro
    E preencher todos os campos exceto o campo email
    Quando clicar em Criar
    Então deve ser apresentada a mensagem     Email translation missing: pt-BR.activerecord.errors.models.user.attributes.email.invalid

