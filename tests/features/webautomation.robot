*** Settings ***
Documentation        Aqui estarão presentes todos os testes automatizados do módulo de automação WEB.

Resource             ../../src/config/package.robot

Suite Setup            Abrir navegador
Suite Teardown         Fechar navegador

*** Variables ***
&{NOVO_USUARIO}
...        nome=Helder
...        ult_nome=Fernandes
...        email=helder.teste@robot.com
...        endereco=Rua aprendendo automação
...        universidade=FATEC
...        profissao=Tech Lead
...        genero=Masculino
...        idade=27

*** Test Cases ***
Cenario: Criar usuário com sucesso usando BDD
    [Tags]            BDD
    Dado que o cliente esteja na tela de cadastro
    E preencher todos os campos
    Quando clicar em Criar
    Então deve ser apresentada a mensagem de sucesso     ${DATA.MESSAGES.MESSAGE_SUCCESS}

Cenario: Criando um usuario com sucesso no site automationpractice
    [Tags]            CADASTRO
    Dado que o cliente esteja na tela de cadastro do site
    E preencher com todos os dados
    Quando clicar em salvar
    Então cadastro deve ser concluído com sucesso        ${CADASTRO.MESSAGES.SUCESSO}

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
