*** Settings ***
Resource              ../resources/resources.robot
Test Setup            Abrir navegador
Test Teardown         Fechar navegador


*** Test Case ***
Caso de Teste com PO 01: Acessar a página home do site
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site

Caso de Teste com PO 02: Acessar a página de balcão de retirada e realizar ações
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Balcao.Acessar a página de balcão de retirada
    Balcao.Verificar se está na página de balcões de retirada
    Balcao.Selecionar estado
    Balcao.Filtrar balcões 24 horas

Caso de Teste com PO 03: Realizar login no site
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login

Caso de Teste com PO 04: Acessar a página Meus Pedidos e realizar ações
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    Home.Acessar Minha Conta
    Pedidos.Acessar a página Meus Pedidos
    Pedidos.Verificar se está na tela de Meus Pedidos
    Pedidos.Filtrar pedido
    Pedidos.Entrar em um pedido
    Pedidos.Verificar se está na tela de detalhe do pedido

Caso de Teste com PO 05: Acessar a página Minhas Mensagens e realizar ações
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    Home.Acessar Minha Conta
    MinhasMensagens.Acessar a página Minhas Mensagens
    MinhasMensagens.Conferir se está na página Minhas Mensagens
    MinhasMensagens.Abrir modal de mensagens e escrever textos
    MinhasMensagens.Abrir mensagens respondidas

Caso de Teste com PO 06: Acessar a página Meus Créditos e fazer pedido
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    Home.Acessar Minha Conta
    MeusCreditos.Acessar a página Meus Créditos
    MeusCreditos.Conferir se está na página Meus Créditos
    MeusCreditos.Realizar pedido de Créditos
    MeusCreditos.Conferir se pedido foi realizado com sucesso
    MeusCreditos.Cancelar Pedido de Créditos
    MeusCreditos.Conferir se pedido foi cancelado


Caso de Teste com PO 07: Acessar a modal de Meus Dados
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    Home.Acessar Minha Conta
    MeusDados.Acessar a modal Meus Dados
    MeusDados.Conferir se modal Meus Dados foi aberta
    MeusDados.Fechar modal Meus Dados

Caso de Teste com PO 08: Acessar a modal Meus Endereços e realizar ações
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    Home.Acessar Minha Conta
    MeusEndereços.Acessar a modal Meus Endereços
    MeusEndereços.Selecionar um endereço e edita-lo
    MeusEndereços.Filtrar endereço
    MeusEndereços.Fechar modal de endereço

Caso de Teste com PO 09: Acessar modal de Central de Privacidade
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    Home.Acessar Minha Conta
    CentraldePrivacidade.Acessar modal de Central de Privacidade
    CentraldePrivacidade.Selecionar opções
    CentraldePrivacidade.Fechar modal

Caso de Teste com PO 10: Criar pedido abrindo Preflight e realizar ações no pedido
    Home.Acessar a página home do site
    Home.Fechar as modais da home
    Home.Verificar se está na página home do site
    Login.Abrir modal de login
    Login.Inserir dados e realizar login
    PedidoPreflight.Selecionar produto
    PedidoPreflight.Conferir se selecionou o produto
    PedidoPreflight.Enviar ao carrinho de compras
    PedidoPreflight.Conferir se produto foi enviado ao carrinho
    PedidoPreflight.Enviar arquivos
    PedidoPreflight.Conferir se arquivos foram enviados
    PedidoPreflight.Finalizar Pedido
    PedidoPreflight.Conferir se pedido foi realizado
    PedidoPreflight.Mudar forma de pagamento
    PedidoPreflight.Cancelar pedido
