*** Settings ***
Documentation        Este será o nosso gerenciador de dependências.

Library              SeleniumLibrary
Library              RequestsLibrary
Library              Collections

###########################
#         Keywords        #
###########################

Resource        ../auto/keywords/kws_web.robot
Resource        ../auto/keywords/kws_api.robot

###########################
#         Pages        #
###########################

Resource       ../auto/pages/web_page.robot
Resource       ../auto/pages/api_data.robot

###########################
#          Config         #
###########################

Resource        hooks.robot
Variables       ../auto/data/web/datamass_register.yml
Variables       ../auto/data/api/datamass_api.yml
Variables       hooks.yml