#language: pt-BR

Funcionalidade: Login
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que o usuário está na página de Login

  Esquema do Cenário: Login feito com dados válidos efetuado com sucesso
    Quando usuário enviar o <email> e <senha_valida>
    Então usuário é direcionado a página de checkout  e lhe aparece uma mensagem de sucesso

    Exemplos:
      | email              | senha_valida     |
      | jose@gmail.com     | senha_boa        |
      | roberta@gmail.com  | senha_correta    |
      | moreira@gmail.com  | valida_senha     |

  Cenário: Login não permitido pois foi enviado email invalido
    Quando usuário enviar uma requisição com email que não existe no banco de dados
    Então usuário permanece na página de Login e lhe aparece uma mensagem de erro

  Esquema do Cenário: Login não permitido pois foi enviado senha incorreta
    Quando usuário enviar <email> e <senha_invalida>
    Então usuário permanece na página de Login e lhe aparece uma mensagem de erro

    Exemplos:
      | email              | senha_invalida     |
      | jose@gmail.com     | senha_errada       |
      | roberta@gmail.com  | senha_equivodada   |
      | moreira@gmail.com  | invalida_senha     |