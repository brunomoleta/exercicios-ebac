#language: pt-BR

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero personalizar o produto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o usuário está na página de um produto
    Que possui campos obrigatórios, um deles é a quantidade

  Cenário:
    Quando usuário enviar os dados com algum campo obrigatório vazio
    Então o sistema deve impossibilitar a inserção do produto no carrinho
    E trazer uma mensagem de erro que oriente o usuário a preencher o campo vazio

  Cenário:
    Quando o usuário tiver todos os campos preenchidos porém a quantidade for maior que 10 itens
    Então o sistema deve negar a inserção no carrinho e mostrar mensagem de erro que oriente o usuário

  Cenário:
    Quando o usuário tiver todos os campos preenchidos e clicar o botão "limpar"
    Então todos os campos devem retornar ao estado original
