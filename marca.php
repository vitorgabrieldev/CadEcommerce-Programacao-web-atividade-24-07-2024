<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Define o conjunto de caracteres para o documento -->
    <meta charset="UTF-8">
    
    <!-- Define a compatibilidade com versões antigas do Internet Explorer -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Define a viewport para uma experiência de visualização responsiva -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Título da página -->
    <title>Cadastrar Marca | Shopee</title>
    
    <!-- Favicon da página -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    
    <!-- Link para o arquivo CSS -->
    <link rel="stylesheet" href="../cadEcommerce/css/style.css">
</head>

<body>

    <header>
        <div class="center">
            <!-- Título principal da página -->
            <h1>Cadastro de Marcas</h1>
            
            <!-- Link para retornar à página inicial -->
            <a href="index.php" target="_self">Voltar</a>
        </div>
    </header>

    <section id="produtos">
        <!-- Formulário para cadastro de marca -->
        <form action="insere-marca.php" method="POST">
            <!-- Campo para descrição da marca -->
            <label for="">Descrição</label>
            <input type="text" name="descricao">
            
            <!-- Botão para enviar o formulário -->
            <input type="submit" value="Cadastrar">
        </form>
    </section>

</body>
</html>
