*** Settings ***
Library           SeleniumLibrary
Resource          ../resources.robot


*** Variables ***
${PREFLIGHT_PRODUTO_MENU}                 (//button[@class="btn btn--primary btn--block"])[1]
${PREFLIGHT_MATERIAL}                     (//select[@class="js-select-filter"])[1]
${PREFLIGHT_TIPO_MATERIAL}                //option[@value="151"]
${PREFLIGHT_CONF_PRODUTO}                 Envio dos Arquivos
${PREFLIGHT_BTN_ENVIAR_ARQUIVO}           //button[@class="btn btn--small btn--upload js-show-modal-upload js-next-page is-send"]
${PREFLIGHT_BTN_COMPRAR}                  //button[@class="btn btn--danger btn--block js-buy-product"]
${PREFLIGHT_TITLE}                        Carrinho
${PREFLIGHT_INPUT_ARQUIVO}                //input[@class="file__input"]
${PREFLIGHT_ARQUIVO}                      C:/Users/elivelton.alves/Desktop/Elivelton/Teste.jpg
${PREFLIGHT_BTN_UPLOAD}                   //button[@class="btn btn--primary js-upload-files"]
${PREFLIGHT_ORIENTACAO_ARQUIVO}           //a[@class="orientation__option landscape js-pf-orientation"]
${PREFLIGHT_ALERTA_ARQUIVO}               //p[@class="subtitle subtitle--attention"]
${PREFLIGHT_BTN_ALERTA_ARQUIVO}           //button[@class="btn btn--primary js-hide-errors-overlay"]
${PREFLIGHT_BTN_AVANCAR}                  //button[@class="btn btn--primary js-pf-next"]
${PREFLIGHT_BTN_ENVIAR_ASSIM_MESMO}       //button[contains(text(),"Enviar assim mesmo")]
${PREFLIGHT_MODAL_PREVIA_IMPRESSAO}       //div[@class="preflight"]
${PREFLIGHT_CHECKBOX_CIENTE}              (//span[@class="checkbox__content"])[7]
${PREFLICHT_CHECKBOX_CONCORDO}            (//span[@class="checkbox__content"])[8]
${PREFLIGHT_BTN_CONFIRMO_ENVIO}           //button[@class="btn btn--primary js-pf-finish"]
${PREFLIGHT_BTN_ARQUIVOS_ENVIADOS}        //button[@class="btn btn--small btn--upload js-show-modal-upload js-next-page is-sent"]
${PREFLIGHT_CONF_ARQ_ENVIADO}             Arquivos Enviados
${PREFLIGHT_CHECKBOX_TERMO_GARANTIA}      (//span[@class="checkbox__content"])[3]
${PREFLIGHT_BTN_SELECIONAR_ENTREGA}       //button[@class="btn btn--danger js-to-step "]
${PREFLIGHT_OPCAO_TOTAL_EXPRESS}          (//span[@class="radio__content "])[3]
${PREFLIGHT_BTN_BOLETO}                   //label[@data-type="boleto-bkn"]
${PREFLIGHT_BTN_FINALIZAR_PEDIDO}         //button[@class="btn btn--danger js-buy-items"]
${PREFLIGHT_TEXT_FIELD_CONTATO}           (//input[@placeholder="Nome Contato"])[2]
${PREFLIGHT_TEXT_FIELD_FONE}              (//input[@placeholder="(99) 99999-9999"])[2]
${PREFLIGHT_CONTATO}                      Teste do Teste
${PREFLIGHT_FONE}                         41999998888
${PREFLIGHT_BTN_CONFIRMAR}                (//button[@class="btn btn--primary js-btn-confirm"])[3]
${PREFLIGHT_CONF_PEDIDO}                  Resumo do Pedido
${PREFLIGHT_CONF_PEDIDO_SUCESSO}          //div[@class="box-message box-message--alert"]
${PREFLIGHT_BTN_MUDAR_PAGAMENTO}          //button[@class="btn btn--primary btn--block js-open-modal-payment"]
${PREFLIGHT_BTN_DEPOSITO}                 //label[@data-type="deposito"]
${PREFLIGHT_BTN_MUDAR_PAG_CONFIRMAR}      (//button[@class="btn btn--primary js-submit"])[2]
${PREFLIGHT_BTN_CANCELAR_PEDIDO}          //button[@class="btn btn--link text-warning js-open-modal-cancel"]
${PREFLIGHT_TEXTAREA_MOTIVO_CANC}         (//textarea[@class="field js-reason"])[2]
${PREFLIGHT_MOTIVO_CANCELAMENTO}          Pedido de Teste
${PREFLIGHT_BTN_CONFIRMAR_CANC}           //button[@class="btn btn--primary js-cancel-order"]


*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Selecionar produto
    Sleep    1s
    Click Element    ${PREFLIGHT_PRODUTO_MENU}

Conferir se selecionou o produto
    Page Should Contain    ${PREFLIGHT_CONF_PRODUTO}

Enviar ao carrinho de compras
    Wait Until Element Is Visible    ${PREFLIGHT_MATERIAL}    10s
    Click Element    ${PREFLIGHT_TIPO_MATERIAL}
    Wait Until Page Contains Element    ${PREFLIGHT_BTN_COMPRAR}  10s
    Click Element    ${PREFLIGHT_BTN_COMPRAR}

Conferir se produto foi enviado ao carrinho
    Wait Until Page Contains Element    ${PREFLIGHT_BTN_ENVIAR_ARQUIVO}  10s
    Title Should Be    ${PREFLIGHT_TITLE}
    Page Should Contain Element    ${PREFLIGHT_BTN_ENVIAR_ARQUIVO}

Enviar arquivos
    Wait Until Page Contains Element    ${PREFLIGHT_BTN_ENVIAR_ARQUIVO}  10s
    Click Element    ${PREFLIGHT_BTN_ENVIAR_ARQUIVO}
    Wait Until Page Contains Element    ${PREFLIGHT_INPUT_ARQUIVO}  10s
    Choose File    ${PREFLIGHT_INPUT_ARQUIVO}    ${PREFLIGHT_ARQUIVO}
    Sleep    1s
    Click Element    ${PREFLIGHT_BTN_UPLOAD}
    Wait Until Element Is Visible    ${PREFLIGHT_ORIENTACAO_ARQUIVO}  10s
    Click Element    ${PREFLIGHT_ORIENTACAO_ARQUIVO}
    Wait Until Element Is Visible    ${PREFLIGHT_ALERTA_ARQUIVO}  10s
    Click Element    ${PREFLIGHT_BTN_ALERTA_ARQUIVO}
    Wait Until Element Is Visible    ${PREFLIGHT_BTN_AVANCAR}
    Click Element    ${PREFLIGHT_BTN_AVANCAR}
    Wait Until Page Contains Element    ${PREFLIGHT_BTN_ENVIAR_ASSIM_MESMO}  10s
    Click Element   ${PREFLIGHT_BTN_ENVIAR_ASSIM_MESMO}
    Wait Until Element Is Visible    ${PREFLIGHT_MODAL_PREVIA_IMPRESSAO}  10s
    Click Element    ${PREFLIGHT_CHECKBOX_CIENTE}
    Click Element    ${PREFLICHT_CHECKBOX_CONCORDO}
    Sleep    1s
    Click Element    ${PREFLIGHT_BTN_CONFIRMO_ENVIO}

Conferir se arquivos foram enviados
    Wait Until Page Contains Element    ${PREFLIGHT_BTN_ARQUIVOS_ENVIADOS}  10s
    Page Should Contain    ${PREFLIGHT_CONF_ARQ_ENVIADO}

Finalizar Pedido
    Execute Javascript    document.querySelector(".js-terms").checked = true;
    Click Element    ${PREFLIGHT_BTN_SELECIONAR_ENTREGA}
    Wait Until Page Contains Element    ${PREFLIGHT_OPCAO_TOTAL_EXPRESS}  10s
    Click Element    ${PREFLIGHT_OPCAO_TOTAL_EXPRESS}
    Sleep    2s
    Click Element    ${PREFLIGHT_BTN_BOLETO}
    Click Element    ${PREFLIGHT_BTN_FINALIZAR_PEDIDO}
    Wait Until Element Is Visible    ${PREFLIGHT_TEXT_FIELD_CONTATO}  10s
    Input Text    ${PREFLIGHT_TEXT_FIELD_CONTATO}    ${PREFLIGHT_CONTATO}
    Input Text    ${PREFLIGHT_TEXT_FIELD_FONE}    ${PREFLIGHT_FONE}
    Click Element    ${PREFLIGHT_BTN_CONFIRMAR}

Conferir se pedido foi realizado
    Wait Until Page Contains Element    ${PREFLIGHT_CONF_PEDIDO_SUCESSO}
    Page Should Contain    ${PREFLIGHT_CONF_PEDIDO}
    Page Should Contain Element    ${PREFLIGHT_CONF_PEDIDO_SUCESSO}

Mudar forma de pagamento
    Wait Until Page Contains Element    ${PREFLIGHT_BTN_MUDAR_PAGAMENTO}  10s
    Click Element    ${PREFLIGHT_BTN_MUDAR_PAGAMENTO}
    Wait Until Element Is Visible    ${PREFLIGHT_BTN_DEPOSITO}  10s
    Click Element    ${PREFLIGHT_BTN_DEPOSITO}
    Sleep    1s
    Click Element    ${PREFLIGHT_BTN_MUDAR_PAG_CONFIRMAR}

Cancelar pedido
    Wait Until Element Is Visible    ${PREFLIGHT_BTN_CANCELAR_PEDIDO}  10s
    Sleep    2s
    Click Element    ${PREFLIGHT_BTN_CANCELAR_PEDIDO}
    Wait Until Page Contains Element    ${PREFLIGHT_TEXTAREA_MOTIVO_CANC}
    Sleep    2s
    Input Text    ${PREFLIGHT_TEXTAREA_MOTIVO_CANC}    ${PREFLIGHT_MOTIVO_CANCELAMENTO}
    Click Element    ${PREFLIGHT_BTN_CONFIRMAR_CANC}
