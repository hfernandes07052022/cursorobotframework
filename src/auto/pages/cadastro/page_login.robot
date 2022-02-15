*** Settings ***
Documentation        Aqui estarão presentes todos os elementos da página de login do site http://automationpractice.com/index.php?controller=authentication&back=my-account

Resource             ../../../config/package.robot

*** Variables ***
&{LOGIN_PAGE}
...        INPUT_EMAIL_CREATE=email_create
...        BTN_CREATE=SubmitCreate
...        INPUT_EMAIL_LOGIN=email
...        INPUT_PASSWORD=passwd
...        BTN_REC_PASSWORD=//*[@title='Recover your forgotten password']
...        BTN_SIGNIN=SubmitLogin