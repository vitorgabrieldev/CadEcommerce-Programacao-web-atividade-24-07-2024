<?php
  // Inclui o arquivo que contém a definição da classe Carrinho.
  // Este arquivo deve estar localizado no diretório 'model/'.
  require_once('model/Carrinho.class.php');

  // Cria uma nova instância da classe Carrinho.
  // A classe Carrinho deve ter métodos para manipular o carrinho de compras.
  $carrinho = new Carrinho();

  // Chama o método 'buscar' da instância do carrinho.
  // Este método deve ser responsável por exibir os itens atualmente presentes no carrinho.
  $carrinho->buscar();
?>
