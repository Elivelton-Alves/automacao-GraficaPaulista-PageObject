*** Settings ***
Library           SeleniumLibrary
Resource              ../resources.robot




*** Variables ***
${DADOS_BTN_MEUS_DADOS}               //a[@title="Meus Dados"]
${DADOS_MODAL_MEUS_DADOS}             //*[@id="modal-register"]/div[2]/div
${DADOS_BTN_CLOSE_MODAL}              (//button[@data-modal="close"])[3]





*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a modal Meus Dados
    Wait Until Element Is Visible    ${DADOS_BTN_MEUS_DADOS}    10
    Click Element    ${DADOS_BTN_MEUS_DADOS}


Conferir se modal Meus Dados foi aberta
    Page Should Contain Element    ${DADOS_MODAL_MEUS_DADOS}

Fechar modal Meus Dados
    Sleep    1s
    Click Element    ${DADOS_BTN_CLOSE_MODAL}
