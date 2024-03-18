def cadastrar_produto
  mensagem("Iniciando cadastro de produto ...",true, true, 1.5)
  mensagem_azul("Digite o nome do produto", false, false)
  nome = gets.chomp
  limpar_tela

  mensagem_azul("Digite a descrição do produto (#{verde(nome)})", false, false)
  descricao = gets.chomp
  limpar_tela

  mensagem_azul("Digite o preço do produto (#{verde(nome)})", false, false)
  preco = gets.to_f
  limpar_tela

  mensagem_azul("Digite a quantidade em estoque do produto (#{verde(nome)})", false, false)
  quantidade = gets.to_i
  limpar_tela

  produto = Produto.new({
    "id" => Time.now.to_i,
    "nome" => nome,
    "descricao" => descricao,
    "preco" => preco,
    "quantidade" => quantidade
  })

  # ProdutoServico.new(JsonRepositorio, "db/produtos.json").adicionar(p)
  ProdutoServico.new(CsvRepositorio, "db/produtos.csv").adicionar(p)

  mensagem("O #{amarelo(nome)} foi cadastrado com sucesso !", true,true, 3)
end
