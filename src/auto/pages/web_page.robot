*** Settings ***
Documentation        Aqui estarão presentes todos os elementos usados nos testes de automação WEB.

Resource             ../../config/package.robot

*** Variables ***
&{CADASTRO_PAGE}
...            INPUT_USERNAME=user_name    
...            INPUT_LASTNAME=user_lastname
...            INPUT_EMAIL=user_email   
...            INPUT_ADDRESS=user_address 
...            INPUT_UNIVERSITY=user_university
...            INPUT_PROFILE=user_profile
...            INPUT_GENDER=user_gender
...            INPUT_AGE=user_age
...            BTN_CRIAR=//input[@value='Criar']