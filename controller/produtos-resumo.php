<?php
  // Inclui o arquivo que contém a definição da classe Produtos.
  // Isso permite que o código utilize a classe Produtos e seus métodos definidos no arquivo incluído.
  require_once('model/Produtos.class.php');

  // Cria uma nova instância da classe Produtos.
  // Essa instância será usada para chamar os métodos da classe e interagir com as funcionalidades relacionadas aos produtos.
  $produtos = new Produtos();

  // Chama o método 'resumo' da instância criada da classe Produtos.
  // O método 'resumo' é responsável por exibir o resumo detalhado do pedido,
  // incluindo informações sobre os produtos no pedido, suas quantidades, preços e outras descrições relevantes.
  $produtos->resumo();
?>
