*** Settings ***
Documentation        Este será o nosso gerenciador de dependências.

Library              SeleniumLibrary


###########################
#         Keywords        #
###########################

Resource        ../auto/keywords/kws_web.robot


###########################
#          Config         #
###########################

Resource        hooks.robot
Resource        hooks.yaml