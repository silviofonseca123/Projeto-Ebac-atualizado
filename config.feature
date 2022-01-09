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