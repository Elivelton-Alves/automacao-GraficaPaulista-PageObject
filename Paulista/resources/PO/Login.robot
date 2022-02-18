*** Settings ***
Library             SeleniumLibrary
Resource              ../resources.robot


*** Variables ***
${LOGIN_BTN_LOGIN}            xpath=/html/body/div[2]/header/section/div[3]/div/ul/li[4]/a
${LOGIN_MODAL}                xpath=//*[@id="modal-login"]/div/div
${LOGIN_FIELD_USER}           xpath=//*[@id="modal-login"]//input[@class="field js-login"]
${LOGIN_USER}                 xxxxxxxxxxx
${LOGIN_FIELD_PASSWORD}       xpath=//*[@id="modal-login"]//input[@class="field js-password"]
${LOGIN_PASSWORD}             123456
${LOGIN_BTN_ENTRAR}           xpath=//*[@id="modal-login"]//button[contains(text(),"Entrar")]

*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Abrir modal de login
    Wait Until Element Is Visible    ${LOGIN_BTN_LOGIN}
    Click Element    ${LOGIN_BTN_LOGIN}

Inserir dados e realizar login
    Wait Until Element Is Visible    ${LOGIN_MODAL}
    Input Text    ${LOGIN_FIELD_USER}       ${LOGIN_USER}
    Input Text    ${LOGIN_FIELD_PASSWORD}    ${LOGIN_PASSWORD}
    Sleep    1s
    Click Element    ${LOGIN_BTN_ENTRAR}
