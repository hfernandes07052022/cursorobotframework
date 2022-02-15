*** Settings ***
Documentation        Aqui estarão presentes todas as Keywords responsáveis pelo testes de API.

Resource             ../../../config/package.robot

*** Keywords ***
Dado que o cliente esteja na tela de cadastro do site
    Title Should Be                   ${CADASTRO.MESSAGES.TITLEPAGE}
    Wait Until Page Contains          ${CADASTRO.MESSAGES.CREATE_ACCOUNT_MSG}         

E preencher com todos os dados
    ${EMAIL_FAKE}                     FakerLibrary.Email
    ${NOME_FAKE}                      FakerLibrary.Name
    ${SOBRENOME_FAKE}                 FakerLibrary.Last Name
    ${PASS_FAKER}                     FakerLibrary.Password
    ${ADDRESS_FAKER}                  FakerLibrary.Address
    ${CITY_FAKER}                     FakerLibrary.City
    ${PHONE_FAKER}                    FakerLibrary.Phone Number
    ${POSTCODE_FAKER}                 FakerLibrary.Postalcode
    ${ALIAS_FAKER}                    FakerLibrary.User Name
    Input Text                        ${LOGIN_PAGE.INPUT_EMAIL_CREATE}           ${EMAIL_FAKE}
    Click Element                     ${LOGIN_PAGE.BTN_CREATE}

    #Preenchendo todo o formulario de cadastro
    Wait Until Element Is Visible     ${ACCOUNT_PAGE.CHECK_MR}
    Click Element                     ${ACCOUNT_PAGE.CHECK_MR}

    Input Text                        ${ACCOUNT_PAGE.INPUT_FIRSTNAME}            ${NOME_FAKE}      
    Input Text                        ${ACCOUNT_PAGE.INPUT_LASTNAME}             ${SOBRENOME_FAKE} 

    Wait Until Element Is Visible     ${ACCOUNT_PAGE.INPUT_PASSWORD}         
    Input Text                        ${ACCOUNT_PAGE.INPUT_PASSWORD}             ${PASS_FAKER}

    Select From List By Value         ${ACCOUNT_PAGE.LIST_DAYS}                  12           
    Select From List By Value         ${ACCOUNT_PAGE.LIST_MONTH}                 4          
    Select From List By Value         ${ACCOUNT_PAGE.LIST_YEARS}                 1994  

    Input Text                        ${ACCOUNT_PAGE.INPUT_COMPANY}              PrimeControl           
    Input Text                        ${ACCOUNT_PAGE.INPUT_ADDRESS1}             ${ADDRESS_FAKER}           
    Input Text                        ${ACCOUNT_PAGE.INPUT_CITYNAME}             ${CITY_FAKER} 

    Select From List By Label         ${ACCOUNT_PAGE.LIST_STATE}                 California

    Wait Until Element Is Visible     ${ACCOUNT_PAGE.INPUT_MOBILEPHONE} 
    Input Text                        ${ACCOUNT_PAGE.INPUT_MOBILEPHONE}          +5511959966654  

    Wait Until Element Is Visible     ${ACCOUNT_PAGE.INPUT_POSTCODE}          
    Input Text                        ${ACCOUNT_PAGE.INPUT_POSTCODE}             ${POSTCODE_FAKER}           
    Input Text                        ${ACCOUNT_PAGE.INPUT_ALIAS}                ${ALIAS_FAKER}      

Quando clicar em salvar
    Click Element                     ${ACCOUNT_PAGE.BTN_SUBMIT}     
    ${RESULTADO}                      Run Keyword And Return Status              Wait Until Page Contains             There is 1 error
    IF    ${RESULTADO} == True
        Input Text                    ${ACCOUNT_PAGE.INPUT_PASSWORD}             123456789
        Scroll Element Into View      ${ACCOUNT_PAGE.BTN_SUBMIT} 
        Click Element                 ${ACCOUNT_PAGE.BTN_SUBMIT}
    ELSE
        Wait Until Page Contains      Welcome to your account. Here you can manage all of your personal information and orders.
    END    

Então cadastro deve ser concluído com sucesso
    [Arguments]                        ${MENSAGEM}
    Wait Until Page Contains           ${MENSAGEM}
    
    