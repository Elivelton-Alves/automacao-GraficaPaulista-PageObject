*** Settings ***
Library             SeleniumLibrary
Library             String
Resource              ../resources.robot

*** Variables ***
${BALCAO_BTN_BALCAO}            //a[@title="Ver pontos de retirada"]
${BALCAO_TTILE_PAGE}            Lista de Balcões
${BALCAO_BTN_STATE}             xpath=/html/body/div[2]/div/div/main/div/section/div/div[2]/div/ul/li[1]/a
${BALCAO_BTN_24HRS}             xpath=/html/body/div[2]/div/div/main/div[2]/div/div[1]/div[2]/form/div[3]/label/span

*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a página de balcão de retirada
    Wait Until Element Is Visible    ${BALCAO_BTN_BALCAO}
    Click Element    ${BALCAO_BTN_BALCAO}

Verificar se está na página de balcões de retirada
    Page Should Contain    ${BALCAO_TTILE_PAGE}

Selecionar estado
    Sleep    2s
    Click Element    ${BALCAO_BTN_STATE}

Filtrar balcões 24 horas
    Sleep    2s
    Click Element    ${BALCAO_BTN_24HRS}
