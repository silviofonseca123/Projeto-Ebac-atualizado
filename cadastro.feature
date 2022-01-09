#language: pt

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