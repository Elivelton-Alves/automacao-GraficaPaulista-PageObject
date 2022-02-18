*** Settings ***
Library             SeleniumLibrary
Library             String
Resource            ../resources.robot


*** Variables ***
${HOME_URL}                   https://www.paulistacartoes.com.br/
${HOME_MODAL}                 //*[@id="modal-promo"]/div/div/video
${HOME_CLOSE_TERMOS_USO}      //button[@class="btn btn--primary btn--small btn--inline"]
${HOME_CLOSE_MODAL}           //*[@id="modal-promo"]//a[@class="modal__close"]
${HOME_TITLE}                 Gráfica Paulista Cartões | Sua Gráfica Online em São Paulo
${HOME_BTN_INTRO}             //a[@class="introjs-button introjs-skipbutton introjs-donebutton"]
${HOME_BTN_MINHA_CONTA}       xpath=/html/body/div[2]/header/section/div[3]/div/ul/li[4]/a/div



*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a página home do site
    Go To               ${HOME_URL}
    Maximize Browser Window
    Wait Until Element Is Visible    ${HOME_MODAL}
    Sleep    1

Fechar as modais da home
    Wait Until Element Is Visible    ${HOME_CLOSE_TERMOS_USO}
    Click Element    ${HOME_CLOSE_TERMOS_USO}
    Wait Until Element Is Visible    ${HOME_MODAL}
    Click Element    ${HOME_CLOSE_MODAL}
    Wait Until Element Is Visible    ${HOME_BTN_INTRO}
    Click Element    ${HOME_BTN_INTRO}

Verificar se está na página home do site
    Title Should Be    ${HOME_TITLE}
    Sleep    1s

Acessar Minha Conta
    Sleep    1s
    Click Element    ${HOME_BTN_MINHA_CONTA}
