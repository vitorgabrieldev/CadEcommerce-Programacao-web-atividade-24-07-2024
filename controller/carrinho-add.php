<?php
  // Inclui o arquivo que contém a definição da classe Carrinho.
  // O arquivo está localizado no diretório 'model/', que é um nível acima do diretório atual.
  require_once('../model/Carrinho.class.php');

  // Cria uma nova instância da classe Carrinho.
  // A classe Carrinho deve gerenciar a adição de produtos ao carrinho de compras.
  $carrinho = new Carrinho();

  // Chama o método 'add' da instância do carrinho.
  // Este método deve adicionar um produto ao carrinho com base nas informações fornecidas via GET.
  $carrinho->add();
?>
