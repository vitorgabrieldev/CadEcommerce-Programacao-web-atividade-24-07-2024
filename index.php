<!DOCTYPE html>
<html>
  <head>
    <!-- Material disponibilizado pelo professor Anderson Macedo -->
    <meta charset="utf-8">
    <title>Produtos</title>
    <!-- Link para o arquivo de estilo CSS -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <!-- Inclusão do jQuery e do script JavaScript personalizado -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <!-- Ícone do site -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  </head>
  <body>
    <header>
      <div class="center">
        <!-- Título principal da página -->
        <h1 style="text-align: center">Shopee Brasileira</h1>
        <div class="d-flex">
          <!-- Links para navegação entre as páginas do site -->
          <a href="carrinho.php">Carrinho</a>
          <a href="categorias.php">Categorias</a>
          <a href="marca.php">Marcas</a>
          <a href="produtos.php">Produtos</a>
        </div>
      </div>
    </header>
    <section id="produtos">
        <div class="center">
          <!-- Inclusão do conteúdo gerado dinamicamente pela busca de produtos -->
          <?php require_once('controller/produtos-busca.php'); ?>
        </div>
    </section>
  </body>
</html>
