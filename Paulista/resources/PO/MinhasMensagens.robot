*** Settings ***
Library           SeleniumLibrary
Resource          ../resources.robot


*** Variables ***
${MENSAGENS_BTN_MINHAS_MENSAGENS}           //a[@title=" Minhas Mensagens"]
${MENSAGENS_TITLE}                          Minhas Mensagens
${MENSAGENS_BTN_NOVA_MENSAGEM}              //button[@class="btn btn--secondary js-open-modal-open-called"]
${MENSAGENS_TEXT_FIELD_ASSUNTO}             //input[@class="field js-modal-assunto"]
${MENSAGENS_TEXTAREA_MENSAGEM}              //textarea[@class="field js-modal-mensagem"]
${MENSAGENS_BTN_CANCELAR}                   //button[@class="btn btn--link js-modal-close"]
${MENSAGENS_RESPONDIDAS}                    //a[@class="nav-tabs__item js-tab-trigger"][1]
${MENSAGENS_PRIMEIRA_MSG}                   //tr[@class="js-show-called-resolved js-reference-target tr-link has-read"][1]
${MENSAGENS_BTN_REABRIR_MSG}                xpath=/html/body/div[2]/div/div/main/div[2]/div/section/div/aside/button
${MENSAGENS_TEXT_FIELD_MSG_REABERTA}        //textarea[@class="field js-modal-mensagem"]
${MENSAGENS_BTN_CANCELAR_MSG_REABERTA}      //button[@class="btn btn--link js-modal-close"]


*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a página Minhas Mensagens
    Wait Until Element Is Visible    ${MENSAGENS_BTN_MINHAS_MENSAGENS}    10
    Click Element    ${MENSAGENS_BTN_MINHAS_MENSAGENS}

Conferir se está na página Minhas Mensagens
    Wait Until Page Contains     ${MENSAGENS_TITLE}   10
    Page Should Contain    ${MENSAGENS_TITLE}

Abrir modal de mensagens e escrever textos
    Wait Until Element Is Visible    ${MENSAGENS_BTN_NOVA_MENSAGEM}    10
    Click Element    ${MENSAGENS_BTN_NOVA_MENSAGEM}
    Wait Until Element Is Visible    ${MENSAGENS_TEXT_FIELD_ASSUNTO}     10
    Input Text    ${MENSAGENS_TEXT_FIELD_ASSUNTO}    Mensagem de Teste
    Input Text    ${MENSAGENS_TEXTAREA_MENSAGEM}    Nova mensagem de teste!
    Click Element    ${MENSAGENS_BTN_CANCELAR}

Abrir mensagens respondidas
    Wait Until Element Is Visible    ${MENSAGENS_RESPONDIDAS}    10
    Click Element    ${MENSAGENS_RESPONDIDAS}
    Click Element    ${MENSAGENS_PRIMEIRA_MSG}
    Wait Until Element Is Visible    ${MENSAGENS_BTN_REABRIR_MSG}   20
    Click Element      ${MENSAGENS_BTN_REABRIR_MSG}
    Wait Until Element Is Visible    ${MENSAGENS_TEXT_FIELD_MSG_REABERTA}    10
    Input Text    ${MENSAGENS_TEXT_FIELD_MSG_REABERTA}    Mensagem de TESTE
    Sleep    1s
    Click Element    ${MENSAGENS_BTN_CANCELAR_MSG_REABERTA}
