*** Settings ***
Documentation        Aqui estarão presentes todos os elementos do formulário de cadastro do site http://automationpractice.com

Resource             ../../../config/package.robot

*** Variables ***
&{ACCOUNT_PAGE}
...        CHECK_MR=uniform-id_gender1
...        CHECK_MRS=uniform-id_gender2
...        INPUT_FIRSTNAME=//input[@onkeyup="$('#firstname').val(this.value);"]
...        INPUT_LASTNAME=//input[@onkeyup="$('#lastname').val(this.value);"]
...        INPUT_EMAIL=//input[@id='email']
...        INPUT_PASSWORD=//input[@id='passwd']
...        LIST_DAYS=//select[@id='days']
...        LIST_MONTH=//select[@id='months']
...        LIST_YEARS=//select[@id='years']
...        INPUT_ADDRESS_NAME=//input[@id='firstname']
...        INPUT_ADDRESS_LASTNAME=//input[@id='lastname']
...        INPUT_COMPANY=//input[@id='company']
...        INPUT_ADDRESS1=//input[@id='address1']
...        INPUT_ADDRESS2=//input[@id='address2']
...        INPUT_CITYNAME=//input[@id='city']
...        LIST_STATE=//select[@id='id_state']
...        INPUT_POSTCODE=//input[@id='postcode']
...        INPUT_PHONE=//input[@id='phone']
...        INPUT_MOBILEPHONE=//input[@id='phone_mobile']
...        INPUT_ALIAS=//input[@id='alias']
...        BTN_SUBMIT=submitAccount
