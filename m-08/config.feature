#language: pt-BR

Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero personalizar o produto
  E escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
    Dado que o usuário está na página de um produto
    Que possui os campos obrigatórios <tamanho>
    E <cor>
    E <quantidade>

  Esquema de Cenário:
    Quando usuário enviar os dados <tamanho>
    E <cor>
    E <quantidade>
    Então o sistema deve impossibilitar a inserção no carrinho
    E trazer uma mensagem de erro que oriente o usuário a preencher o campo vazio

    Exemplos:
      | tamanho | cor      | quantidade |
      |         | azul     | 3          |
      | M       |          | 2          |
      | L       | vermelho |            |

  Cenário:
    Quando o usuário tiver todos os campos preenchidos
    E a quantidade for maior que 10 itens
    Então o sistema deve impossibilitar a inserção no carrinho
    E trazer uma mensagem de erro que oriente o usuário

  Cenário:
    Quando o usuário tiver todos os campos preenchidos
    E clicar o botão "limpar"
    Então todos os campos devem retornar ao estado original
