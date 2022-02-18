*** Settings ***
Library    SeleniumLibrary

Resource              ../resources/PO/Home.robot
Resource              ../resources/PO/Balcao.robot
Resource              ../resources/PO/Login.robot
resource              ../resources/PO/Pedidos.robot
resource              ../resources/PO/MinhasMensagens.robot
resource              ../resources/PO/MeusCreditos.robot
resource              ../resources/PO/MeusDados.robot
resource              ../resources/PO/MeusEndereços.robot
resource              ../resources/PO/CentraldePrivacidade.robot
resource              ../resources/PO/PedidoPreflight.robot


*** Variables ***
${BROWSER}        chrome


*** Keywords ***
###Setup e teardown
Abrir navegador
    Open Browser        about:blank   ${BROWSER}

Fechar navegador
    Close Browser
