#language: pt

Funcionalidade: Configurar o produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Para depois inserir no carrinho

Contexto: 
Dado que estou na tela inicial da loja ebac

        Cenário: configuração válida
        E ao clicar no menu configuração abrirar uma janela onde poderei escolher os meus produtos
        E quero mudar as Seleções de cor, tamanho e quantidade 
        E na quantidade deve permitir apenas 10 produtos por venda
        Quando optar por comprar o mesmo seja inserido
        Então devo ter o produto inserido no carrinho

        Cenário: limpar a tela
        Quando Quando eu clicar no botão “limpar” 
        Então a pagina voltará ao estado original

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

        Cenário: Validação do login válido
        Quando informar um <Usuario> válido
        E inserir uma <Senha> válida
        Então o sistema deve permitir a autenticação do usuário
        E o tipo de <Permissao> do usuário deve ser exibido

        Cenário: Usuário invalida
        Quando inserir o usuário silviomfonsecaebac.com.br
        E entro com a senha "1234"
        Então  deve inserir um dos campos inválidos deve exibir uma mensagem de alerta Usuário ou senha inválidos


Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro  
Para finalizar minha compra

Contexto: 
Dado que estou na tela inicial da loja ebac

        Cenário: Cadastro válido de usuário
        Quando eu acesso o menu Cadastrar usuário
        Então o sistema exibe a tela de Cadastrar usuário
        E eu preencho o campo Nome com o valor <usuário>
        E eu seleciono o perfil de usuário 
        E eu preencho o campo E-mail com o valor <usuário>
        E eu clico no botão Salvar
        Então o sistema exibe a mensagem “Usuário cadastrado com sucesso”

        Esquema do Cenário: Preenchimento inválido
        Quando eu digitar o <usuário>
        E a <senha>
        E Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
        Então deve inserir um dos campos inválidos deve exibir uma <mensagem> de alerta Usuário ou senha inválidos

        Esquema do Cenário: Cadastrar Usuário de <usuário>
        Dado que eu esteja logado como um Administrador
        Quando cadastro um usuário com o perfil de <usuário>
        Então o sistema deve exibir a mensagem de confirmação de cadastro

        Exemplos:

        | usuário             | Senha | Permissão |
        | Silvio              | 0001  | Cliente   |
        | Márcio|             | 2345  | Cliente   |
        | Fábio               | 7777  | Cliente   |




