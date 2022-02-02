*** Settings ***
Documentation        Este será o nosso gerenciador de dependências.

Library              SeleniumLibrary
Library              RequestsLibrary


###########################
#         Keywords        #
###########################

Resource        ../auto/keywords/kws_web.robot


###########################
#          Config         #
###########################

Resource        hooks.robot