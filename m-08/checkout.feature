#language: pt-BR

Funcionalidade: Checkout
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Contexto:
    Dado que o usuário está na página de Checkout
    E tem diante de si os dados obrigatórios: Nome
    E Sobrenome
    E País
    E Endereço
    E Cidade
    E CEP
    E telefone
    E endereço de e-mail

  Cenário: Usuário finaliza compra com email inválido
    Quando o usuário finalizar a compra preenchendo os campos obrigatórios de maneira válida
    E o campo de email inválido(ex: "!!!!!")
    Então o usuário permanece na mesma página, a compra falha e lhe aparece a mensagem "email inválido"

  Cenário: Usuário envia dados obrigatórios de maneira válida
    Quando usuário envia uma requisição com todos os campos obrigatórios válidos
    Então a compra é finalizada e ele é direcionado a página que mostra todos os pedidos

  Esquema do Cenário: Usuário deseja finalizar compra com campo obrigatório vazio
    Quando usuário envia uma requisição com <nome>
    E <sobrenome>
    E <país>
    E <endereço>
    E <cidade>
    E <cep>
    E <telefone>
    E <endereço de e-mail>
    Então é exibida uma mensagem de erro destacando o campo obrigatório deixado vazio

    Exemplos:
      | nome     | sobrenome | país   | endereço              | cidade     | cep       | telefone | endereço de e-mail |
      |          | moreira   | Brasil | avenida dos Coqueiros | Uruguaiana | 01310-200 | 21 9 0807 8546 | moreira@hotmail.com |
      | roberta  |           | Brasil | avenida dos Coqueiros | Uruguaiana | 01310-200 | 21 9 0807 8546 | moreira@hotmail.com |
      | roberta  | moreira   |        | avenida dos Coqueiros | Uruguaiana | 01310-200 | 21 9 0807 8546 | moreira@hotmail.com |
      | roberta  | moreira   | Brasil |                       |            | 01310-200 | 21 9 0807 8546 | moreira@hotmail.com |
      | roberta  | moreira   | Brasil | avenida dos Coqueiros | Uruguaiana |           | 21 9 0807 8546 | moreira@hotmail.com |
      | roberta  | moreira   | Brasil | avenida dos Coqueiros | Uruguaiana | 01310-200 |                | moreira@hotmail.com |
      | roberta  | moreira   | Brasil | avenida dos Coqueiros | Uruguaiana | 01310-200 | 21 9 0807 8546 |                     |
