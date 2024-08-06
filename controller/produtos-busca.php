<?php
  // Inclui o arquivo que define a classe Produtos.
  // Este arquivo deve conter a implementação da classe Produtos,
  // que é utilizada para manipular e exibir informações sobre produtos.
  require_once('model/Produtos.class.php');

  // Cria uma nova instância da classe Produtos.
  // Essa instância será usada para chamar métodos que permitem buscar e exibir produtos.
  $produtos = new Produtos();

  // Chama o método 'buscar' da instância de Produtos.
  // O método 'buscar' é responsável por recuperar e exibir a lista de produtos disponíveis,
  // incluindo informações como nome, descrição, categoria, marca, estoque e preço.
  // Os produtos são exibidos em uma lista no formato HTML.
  $produtos->buscar();
?>
