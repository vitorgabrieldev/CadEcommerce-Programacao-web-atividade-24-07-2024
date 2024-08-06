<!DOCTYPE html>
<html>
  <head>
    <!-- Define o conjunto de caracteres para o documento -->
    <meta charset="utf-8">
    
    <!-- Título da página -->
    <title>Resumo de Pedido | Shopee</title>
    
    <!-- Link para o arquivo CSS -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    
    <!-- Link para o arquivo jQuery -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    
    <!-- Link para o arquivo de script -->
    <script type="text/javascript" src="js/script.js"></script>
    
    <!-- Favicon da página -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  </head>
  
  <body>
    <header>
      <div class="center">
        <!-- Título principal da página -->
        <h1>Programação Web II - Resumo do Pedido</h1>
        
        <!-- Link para a página inicial -->
        <a href="index.php">Inicial</a>
      </div>
    </header>
    
    <section id="produtos">
        <div class="center">
          <div>
            <!-- Inclui o arquivo PHP que contém o resumo dos produtos -->
            <?php require_once('controller/produtos-resumo.php'); ?>
          </div>
        </div>
    </section>

  </body>
</html>
