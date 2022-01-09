#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

        Cenário: Validação do login válido
        Quando informar um <Usuario> válido
        E inserir uma <Senha> válida
        Então o sistema deve permitir a autenticação do usuário
        E o tipo de <Permissao> do usuário deve ser exibido


        Cenário: Usuário do login invalida
        Quando inserir o usuário silviomfonsecaebac.com.br
        E entro com a senha "1234"
        Então  deve inserir um dos campos inválidos deve exibir uma mensagem de alerta Usuário ou senha inválidos
