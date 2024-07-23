<?php 
    include_once("controller/conexao.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Produtos</title>

    <link rel="stylesheet" href="../cadEcommerce/css/style.css">
</head>
<body>

    <header>
        <div class="center">
            <h1>Cadastro de Produtos</h1>
            <a href="index.php" target="_self">Voltar</a>
        </div>
    </header>

    <section id="pordutos">
        <form action="insere-produto.php" method="POST">
            <label for="">Nome: </label><br>
            <input type="text" name="nome"><br>

            <label for="">Descrição: </label><br>
            <input type="text" name="descricao"><br>

            <label for="">Estoque: </label><br>
            <input type="text" name="estoque"><br>

            <label for="">Preço: </label><br>
            <input type="text" name="preco" min="0.00" max="100000.00" step="0.01"><br>

            <label for="">Categoria</label>
            <select name="seleciona_categoria" id="">
                <option value="">Selecione</option>

                <?php
                    $resultado_categoria = "SELECT * FROM `categoria`;";
                    $ressultcategoria = mysqli_query($mysqli, $resultado_categoria);

                    while($row_categorias = mysqli_fetch_assoc($ressultcategoria)) {?>
                        <option value="<?php echo $row_categorias['IDCATEGORIA'] ?>">
                            <?php
                                # Impressão do resultado da categoria no select
                                echo $row_categorias['DESCRICAO'];
                            ?>
                        </option>
                    <?php } ?>

            </select>

            <br>

            <label for="">Marca</label>
            <select name="seleciona_marca" id="">
                <option value="">Selecione</option>

                <?php
                    $resultado_marca = "SELECT * FROM `marca`;";
                    $ressultmarca = mysqli_query($mysqli, $resultado_marca);

                    while($row_marca = mysqli_fetch_assoc($ressultmarca)) {?>
                        <option value="<?php echo $row_marca['IDMARCA'] ?>">
                            <?php
                                # Impressão do resultado da categoria no select
                                echo $row_marca['DESCRICAO'];
                            ?>
                        </option>
                    <?php } ?>

            </select>
            <br><br>

            <input type="submit" value="cadastrar">
        </form>
    </section>
</body>
</html>