*** Settings ***
Library         SeleniumLibrary
Resource              ../resources.robot



*** Variables ***
${CREDITOS_BTN_MEUS_CREDITOS}             //a[@title="Meus Créditos"]
${CREDITOS_TITLE}                         Meus Créditos
${CREDITOS_BTN_COMPRAR_CREDITOS}          //a[@class="btn btn--secondary btn--block"]
${CREDITOS_VALOR_CREDITOS}                //option[@data-bonus="5"]
${CREDITOS_FINALIZAR_COMPRA}              //button[@class="btn btn--danger btn--block js-comprar-credito"]
${CREDITOS_SELECIONAR_PGTO}               //button[@class="btn btn--danger js-to-step "]
${CREDITIOS_FORMA_PGTO}                   (//span[@class="radio__content"])[3]
${CREDITOS_FINALIZAR_PEDIDO}              //button[@class="btn btn--danger js-buy-items"]
${CREDITOS_MODAL_SUCESSO}                 //div[@class="box-message box-message--alert"]
${CREDITOS_DADOS_PGTO}                    Dados de Pagamento
${CREDITOS_BTN_CANCELAR_PEDIDO}           //button[@class="btn btn--link text-warning js-open-modal-cancel"]
${CREDITOS_MODAL_CANCELAR_PEDIDO}         (//form[@class="form"])[3]
${CREDITOS_TEXTAREA_REASON}               //*[@id="modal-cancel-order"]/div/div/form/div/div/textarea
${CREDITOS_MSG_CANCELAMENTO}              Pedido de teste
${CREDITOS_BTN_CANCELAR_PEDIDO_MODAL}     //button[@class="btn btn--primary js-cancel-order"]
${CREDITOS_STATUS_PEDIDO_CANCELADO}       Pedido Cancelado


*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a página Meus Créditos
    Wait Until Element Is Visible    ${CREDITOS_BTN_MEUS_CREDITOS}    10
    Click Element    ${CREDITOS_BTN_MEUS_CREDITOS}

Conferir se está na página Meus Créditos
    Wait Until Page Contains    ${CREDITOS_TITLE}    10
    Page Should Contain    ${CREDITOS_TITLE}

Realizar pedido de Créditos
    Wait Until Element Is Visible    ${CREDITOS_BTN_COMPRAR_CREDITOS}    10
    Click Element    ${CREDITOS_BTN_COMPRAR_CREDITOS}
    Wait Until Element Is Visible    ${CREDITOS_FINALIZAR_COMPRA}    10
    Click Element    ${CREDITOS_VALOR_CREDITOS}
    Click Element    ${CREDITOS_FINALIZAR_COMPRA}
    Wait Until Element Is Visible    ${CREDITOS_SELECIONAR_PGTO}    10
    Click Element    ${CREDITOS_SELECIONAR_PGTO}
    Wait Until Element Is Visible    ${CREDITIOS_FORMA_PGTO}    10
    Click Element    ${CREDITIOS_FORMA_PGTO}
    Sleep    1s
    Click Element    ${CREDITOS_FINALIZAR_PEDIDO}

Conferir se pedido foi realizado com sucesso
    Wait Until Page Contains Element    ${CREDITOS_MODAL_SUCESSO}    10
    Reload Page
    Page Should Contain    ${CREDITOS_DADOS_PGTO}


Cancelar Pedido de Créditos
    Wait Until Element Is Visible    ${CREDITOS_BTN_CANCELAR_PEDIDO}  10
    Click Element    ${CREDITOS_BTN_CANCELAR_PEDIDO}
    Sleep    2s
    Input Text    ${CREDITOS_TEXTAREA_REASON}    ${CREDITOS_MSG_CANCELAMENTO}
    Sleep    1S
    Click Element    ${CREDITOS_BTN_CANCELAR_PEDIDO_MODAL}


Conferir se pedido foi cancelado
    Wait Until Page Contains    ${CREDITOS_DADOS_PGTO}    10
    Sleep    1s
    Page Should Contain    ${CREDITOS_STATUS_PEDIDO_CANCELADO}
