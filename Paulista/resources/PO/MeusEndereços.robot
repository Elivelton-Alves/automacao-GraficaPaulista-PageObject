*** Settings ***
Library           SeleniumLibrary
Resource              ../resources.robot


*** Variables ***
${ENDEREÇOS_BTN_MEUS_ENDEREÇOS}         //a[@title="Meus Endereços"]
${ENDEREÇOS_MODAL_MEUS_ENDEREÇOS}       //div[@class="modal__content--general"]
${ENDEREÇOS_SELECIONADO}                (//span[@class="list-radio__label radio__content"])[3]
${ENDEREÇOS_BTN_EDITAR}                 //button[@class="btn btn--secondary js-btn-edit"]
${ENDEREÇOS_TEXT_FIELD_COMPLEM}         (//input[@class="field"])[8]
${ENDEREÇOS_TEXTO_COMPLEM}              Endereço de Teste
${ENDEREÇOS_BTN_SALVAR}                 //button[@class="btn btn--primary js-btn-register-address"]
${ENDEREÇOS_FILTRO_ENDEREÇO}            //input[@class="field js-filter-address"]
${ENDEREÇOS_TEXTO_FILTRO}               83085160
${ENDEREÇOS_BTN_BUSCAR}                 (//button[@class="btn btn--danger js-filter"])[2]
${ENDEREÇOS_BTN_LIMPAR}                 //button[@class="btn btn--default u-margin-left-1 js-clear-form u-padding-1"]
${ENDEREÇOS_BTN_CLOSE_MODAL}            (//a[@class="modal__close"])[12]

*** Keywords ****
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a modal Meus Endereços
    Wait Until Element Is Visible    ${ENDEREÇOS_BTN_MEUS_ENDEREÇOS}    10
    Click Element    ${ENDEREÇOS_BTN_MEUS_ENDEREÇOS}

Selecionar um endereço e edita-lo
    Wait Until Element Is Visible    ${ENDEREÇOS_MODAL_MEUS_ENDEREÇOS}    10
    Wait Until Element Is Visible    ${ENDEREÇOS_SELECIONADO}    10
    Click Element    ${ENDEREÇOS_SELECIONADO}
    Wait Until Element Is Visible    ${ENDEREÇOS_BTN_EDITAR}    10
    Click Element    ${ENDEREÇOS_BTN_EDITAR}
    Wait Until Element Is Visible    ${ENDEREÇOS_TEXT_FIELD_COMPLEM}    10
    Input Text    ${ENDEREÇOS_TEXT_FIELD_COMPLEM}     ${ENDEREÇOS_TEXTO_COMPLEM}
    Sleep    1s
    Click Element    ${ENDEREÇOS_BTN_SALVAR}

Filtrar endereço
    Wait Until Element Is Visible    ${ENDEREÇOS_MODAL_MEUS_ENDEREÇOS}    10
    Input Text    ${ENDEREÇOS_FILTRO_ENDEREÇO}    ${ENDEREÇOS_TEXTO_FILTRO}
    Click Element    ${ENDEREÇOS_BTN_BUSCAR}
    Sleep    1s
    Click Element    ${ENDEREÇOS_BTN_LIMPAR}

Fechar modal de endereço
    Click Element    ${ENDEREÇOS_BTN_CLOSE_MODAL}
