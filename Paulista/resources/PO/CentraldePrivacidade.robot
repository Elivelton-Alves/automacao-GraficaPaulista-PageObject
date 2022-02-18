*** Settings ***
Library           SeleniumLibrary
Resource              ../resources.robot



*** Variables ***
${PRIVACIDADE_BTN_PRIVACIDADE}                //a[@title="Central de Privacidade"]
${PRIVACIDADE_MODAL_PRIVACIDADE}              (//div[@class="modal__dialog"])[18]
${PRIVACIDADE_OPÇÕES_PRIVACIDADE}             (//span[@class="checkbox__content"])[4]
${PRIVACIDADE_BTN_CLOSE_MODAL}                (//button[@class="btn btn--link"])[7]

*** Keywords ****
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar modal de Central de Privacidade
    Wait Until Element Is Visible    ${PRIVACIDADE_BTN_PRIVACIDADE}    10
    Click Element    ${PRIVACIDADE_BTN_PRIVACIDADE}

Selecionar opções
    Wait Until Element Is Visible    ${PRIVACIDADE_MODAL_PRIVACIDADE}    10
    Click Element    ${PRIVACIDADE_OPÇÕES_PRIVACIDADE}
    Sleep    1s

Fechar modal
    Click Element    ${PRIVACIDADE_BTN_CLOSE_MODAL}
