<?php
  // Inclui o arquivo que contém a definição da classe Produtos.
  // Isso permite que o código utilize a classe Produtos e seus métodos definidos no arquivo incluído.
  require_once('../model/Produtos.class.php');

  // Cria uma nova instância da classe Produtos.
  // Esta instância é necessária para chamar os métodos da classe Produtos.
  $produtos = new Produtos();

  // Chama o método 'pedido' da instância criada da classe Produtos.
  // O método 'pedido' é responsável por processar a criação de um novo pedido com base nos produtos
  // que estão no carrinho de compras e atualiza o estoque de acordo.
  // Isso inclui inserir o pedido na base de dados e ajustar a quantidade de produtos em estoque.
  $produtos->pedido();
?>
