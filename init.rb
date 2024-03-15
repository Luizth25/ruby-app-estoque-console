require_relative "display/menu"
require_relative "display/operacoes_de_tela"
require_relative "core/cadastrar_produto"
require_relative "core/lista_produtos"
require_relative "core/retirar_estoque"

produtos = [
  {
    id: 1,
    nome: "Maça",
    descricao: "Maça da turma da monica",
    preco: 2.50,
    quantidade: 20
  },
  {
    id: 2,
    nome: "Banana",
    descricao: "Banana nanica",
    preco: 1.50,
    quantidade: 30
  },
  {
    id: 3,
    nome: "Melão",
    descricao: "Melão delicia",
    preco: 5.50,
    quantidade: 5
  }
]
iniciar_menu(produtos)
