<!DOCTYPE html>
<html>
<head>
    <!-- Define o conjunto de caracteres do documento como UTF-8 -->
    <meta charset="utf-8">
    <!-- Título da página exibido na aba do navegador -->
    <title>Carrinho | Shopee</title>
    <!-- Link para o arquivo de estilo CSS -->
    <link rel="stylesheet" href="css/style.css" media="screen" title="no title" charset="utf-8">
    <!-- Inclusão do jQuery para manipulação de DOM e eventos -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- Inclusão do script JavaScript personalizado -->
    <script type="text/javascript" src="js/script.js"></script>
    <!-- Ícone da página -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
    <header>
        <div class="center">
            <!-- Título principal da página -->
            <h1>Programação Web II - Carrinho</h1>
            <!-- Link para retornar à página inicial -->
            <a href="index.php">Inicial</a>
        </div>
    </header>
    <section id="produtos">
        <div class="center">
            <!-- Inclusão do script PHP que busca e exibe os produtos no carrinho -->
            <?php require_once('controller/carrinho-busca.php'); ?>
        </div>
    </section>
</body>
</html>
