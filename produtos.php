<?php 
    // Inclui o arquivo de conexão com o banco de dados, garantindo que ele só será incluído uma vez.
    include_once("controller/conexao.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Produtos | Shopee</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../cadEcommerce/css/style.css">
</head>
<body>

    <!-- 
    |-----------------------------------------------------------------------------------------------------------------|
    | Cabeçalho da página                                                                                            |
    |-----------------------------------------------------------------------------------------------------------------|
    | Contém o título da página e um link para retornar à página inicial.                                             |
    |-----------------------------------------------------------------------------------------------------------------|
    -->
    <header>
        <div class="center">
            <h1>Cadastro de Produtos</h1>
            <!-- Link para voltar à página inicial -->
            <a href="index.php" target="_self">Voltar</a>
        </div>
    </header>

    <!-- 
    |-----------------------------------------------------------------------------------------------------------------|
    | Seção de cadastro de produtos                                                                                  |
    |-----------------------------------------------------------------------------------------------------------------|
    | Contém o formulário onde serão inseridos os dados dos novos produtos.                                           |
    |-----------------------------------------------------------------------------------------------------------------|
    -->
    <section id="produtos">
        <!-- 
        |-------------------------------------------------------------------------------------------------------------|
        | Formulário de Cadastro                                                                                      |
        |-------------------------------------------------------------------------------------------------------------|
        | Através deste formulário, o usuário pode cadastrar novos produtos no sistema.                                |
        | O formulário é enviado para o script "insere-produto.php" utilizando o método POST.                          |
        |-------------------------------------------------------------------------------------------------------------|
        -->
        <form action="insere-produto.php" method="POST">
            
            <!-- Campo para inserir o nome do produto -->
            <label for="">Nome: </label><br>
            <input type="text" name="nome"><br>

            <!-- Campo para inserir a descrição do produto -->
            <label for="">Descrição: </label><br>
            <input type="text" name="descricao"><br>

            <!-- Campo para inserir a quantidade de estoque do produto -->
            <label for="">Estoque: </label><br>
            <input type="text" name="estoque"><br>

            <!-- Campo para inserir o preço do produto -->
            <label for="">Preço: </label><br>
            <input type="text" name="preco" min="0.00" max="100000.00" step="0.01"><br>

            <!-- 
            |---------------------------------------------------------------------------------------------------------|
            | Seção de Seleção de Categoria                                                                            |
            |---------------------------------------------------------------------------------------------------------|
            | Esta seção permite ao usuário selecionar a categoria do produto a partir de uma lista de opções.         |
            |---------------------------------------------------------------------------------------------------------|
            -->
            <div class="flex">
                <label class="large" for="">Categoria</label>
                <select name="seleciona_categoria" id="">
                    <option value="">Selecione</option>

                    <?php
                        // Executa uma consulta para buscar todas as categorias no banco de dados.
                        $resultado_categoria = "SELECT * FROM `categoria`;";
                        $ressultcategoria = mysqli_query($mysqli, $resultado_categoria);

                        // Laço para preencher o dropdown com as categorias disponíveis.
                        while($row_categorias = mysqli_fetch_assoc($ressultcategoria)) {?>
                            <option value="<?php echo $row_categorias['IDCATEGORIA'] ?>">
                                <?php
                                    // Exibe a descrição da categoria no dropdown.
                                    echo $row_categorias['DESCRICAO'];
                                ?>
                            </option>
                        <?php } ?>

                </select>
            </div>

            <br>

            <!-- 
            |---------------------------------------------------------------------------------------------------------|
            | Seção de Seleção de Marca                                                                                |
            |---------------------------------------------------------------------------------------------------------|
            | Esta seção permite ao usuário selecionar a marca do produto a partir de uma lista de opções.             |
            |---------------------------------------------------------------------------------------------------------|
            -->
            <div class="flex">
                <label class="large" for="">Marca</label>
                <select name="seleciona_marca" id="">
                    <option value="">Selecione</option>

                    <?php
                        // Executa uma consulta para buscar todas as marcas no banco de dados.
                        $resultado_marca = "SELECT * FROM `marca`;";
                        $ressultmarca = mysqli_query($mysqli, $resultado_marca);

                        // Laço para preencher o dropdown com as marcas disponíveis.
                        while($row_marca = mysqli_fetch_assoc($ressultmarca)) {?>
                            <option value="<?php echo $row_marca['IDMARCA'] ?>">
                                <?php
                                    // Exibe a descrição da marca no dropdown.
                                    echo $row_marca['DESCRICAO'];
                                ?>
                            </option>
                        <?php } ?>

                </select>
            </div>
            
            <br><br>

            <!-- Botão para enviar o formulário -->
            <input class="btn" type="submit" value="Cadastrar">
        </form>
    </section>
</body>
</html>
