#language: pt-BR

Funcionalidade: Checkout
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o usuário está na página de Checkout
    E tem diante de si campos com dados obrigatórios e não obrigatórios

  Cenário: Usuário finaliza compra com email inválido
    Quando o usuário finalizar a compra preenchendo os campos obrigatórios de maneira válida porém com email inválido(ex: "!!!!!")
    Então o usuário permanece na mesma página, a compra falha e lhe aparece a mensagem "email inválido"

  Cenário: Usuário envia dados obrigatórios de maneira válida
    Quando usuário envia uma requisição com todos os campos obrigatórios válidos
    Então a compra é finalizada e ele é direcionado a página que mostra todos os pedidos

  Cenário: Usuário deseja finalizar compra com campo obrigatório vazio
    Quando usuário envia uma requisição com campo obrigatório vazio
    Então é exibida uma mensagem de erro destacando o campo obrigatório deixado vazio