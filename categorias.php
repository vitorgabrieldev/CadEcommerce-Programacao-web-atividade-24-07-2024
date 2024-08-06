<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Define o conjunto de caracteres do documento como UTF-8 -->
    <meta charset="UTF-8">
    <!-- Configura a compatibilidade do navegador com versões anteriores do Internet Explorer -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Define a largura da visualização para se ajustar à largura do dispositivo -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Título da página exibido na aba do navegador -->
    <title>Cadastrar Categorias</title>
    <!-- Ícone da página -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <!-- Link para o arquivo de estilo CSS -->
    <link rel="stylesheet" href="../cadEcommerce/css/style.css">
</head>
<body>

    <header>
        <div class="center">
            <!-- Título principal da página -->
            <h1>Cadastro de Categorias</h1>
            <!-- Link para retornar à página anterior -->
            <a href="index.php" target="_self">Voltar</a>
        </div>
    </header>

    <section id="produtos">
        <form action="insere-categoria.php" method="POST">
            <!-- Campo para inserir a descrição da categoria -->
            <label for="">Descrição</label>
            <input type="text" name="descricao" required>
            <!-- Botão para submeter o formulário -->
            <input type="submit" value="Cadastrar">
        </form>
    </section>
</body>
</html>
