*** Settings ***
Library         SeleniumLibrary
Resource              ../resources.robot


*** Variables ***
${PEDIDOS_BTN_MEUS_PEDIDOS}              xpath=//a[@title="Meus Pedidos"]
${PEDIDOS_TITLE}                         Meus Pedidos
${PEDIDOS_BTN_FILTRAR}                   //button[@class="btn btn--primary btn--block"]
${PEDIDOS_FORMA_PGTO_SELECT}             //option[contains(text()," Depósito Bancário")]
${PEDIDOS_STATUS_PEDIDO_SELECT}          //option[contains(text()," Arquivo C/ Problemas")]
${PEDIDOS_BTN_LIMPAR}                    //button[@class="btn btn--link btn--block js-clear-form"]
${PEDIDOS_PRIMEIRO_PEDIDO}               //tr[@class="tr-link"][1]
${PEDIDOS_CONF_PEDIDO}                   Dados de Pagamento




*** Keywords ***
### AQUI REALIZA AS AÇÕES DO TESTE
Acessar a página Meus Pedidos
    Wait Until Element Is Visible    ${PEDIDOS_BTN_MEUS_PEDIDOS}    10
    Click Element    ${PEDIDOS_BTN_MEUS_PEDIDOS}

Verificar se está na tela de Meus Pedidos
    Title Should Be    ${PEDIDOS_TITLE}

Filtrar pedido
    Wait Until Element Is Visible    ${PEDIDOS_BTN_FILTRAR}    10
    Click Element    ${PEDIDOS_FORMA_PGTO_SELECT}
    Click Element    ${PEDIDOS_STATUS_PEDIDO_SELECT}
    Click Element    ${PEDIDOS_BTN_FILTRAR}
    Click Element    ${PEDIDOS_BTN_LIMPAR}

Entrar em um pedido
    Wait Until Element Is Visible    ${PEDIDOS_PRIMEIRO_PEDIDO}     10
    Click Element    ${PEDIDOS_PRIMEIRO_PEDIDO}

Verificar se está na tela de detalhe do pedido
    Wait Until Page Contains    ${PEDIDOS_CONF_PEDIDO}    10
    Page Should Contain    ${PEDIDOS_CONF_PEDIDO}
