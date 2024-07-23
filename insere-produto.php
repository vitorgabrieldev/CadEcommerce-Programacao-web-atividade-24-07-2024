<?php
    include_once("controller/conexao.php");

    $nome = $_POST['nome'];
    $descricao = $_POST['descricao'];
    $estoque = $_POST['estoque'];
    $preco = $_POST['preco'];
    $categoria = $_POST['seleciona_categoria'];
    $marca = $_POST['seleciona_marca'];

    $grava_produtos = "INSERT INTO `produtos`(`IDCATEGORIA`, `IDMARCA`, `NOME`, `DESCRICAO`, `ESTOQUE`, `PRECO`) VALUES ('$categoria','$marca','$nome','$descricao','$estoque','$preco')";

    $result_garavacao = mysqli_query($mysqli, $grava_produtos);

    if (mysqli_affected_rows($mysqli) != 0) {
        echo "
            <META HTTP-EQUIV=REFRESH CONTENT = 'O;URL=produtos.php'>
            
            <script type=\"text/javascript\">
                alert('Produto cadastrado com sucesso!');
            </script>
        ";
    } else {
        echo "
            <META HTTP-EQUIV=REFRESH CONTENT = 'O;URL=produtos.php'>
            
            <script type=\"text/javascript\">
                alert('Produto não cadastrado, tenta novamente!');
            </script>
        ";
    }
?>