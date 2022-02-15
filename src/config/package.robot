*** Settings ***
Documentation        Este será o nosso gerenciador de dependências.

Library              SeleniumLibrary
Library              RequestsLibrary
Library              Collections
Library              FakerLibrary
Library              DebugLibrary

###########################
#         Keywords        #
###########################

Resource        ../auto/keywords/kws_web.robot
Resource        ../auto/keywords/kws_api.robot
Resource        ../auto/keywords/cadastro/kws_cadastro.robot

###########################
#         Pages        #
###########################

Resource       ../auto/pages/web_page.robot
Resource       ../auto/pages/api_data.robot
Resource       ../auto/pages/cadastro/page_create_account.robot
Resource       ../auto/pages/cadastro/page_login.robot

###########################
#          Config         #
###########################

Resource        hooks.robot
Variables       ../auto/data/web/datamass_register.yml
Variables       ../auto/data/api/datamass_api.yml
Variables       ../auto/data/web/cadastro_datamass.yml
Variables       hooks.yml
Variables       hooks.yml
