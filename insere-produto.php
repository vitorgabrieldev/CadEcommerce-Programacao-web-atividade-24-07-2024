<?php
    // Inclui o arquivo de conexão com o banco de dados
    include_once("controller/conexao.php");

    // Recupera os dados enviados pelo formulário via POST
    $nome = $_POST['nome'];
    $descricao = $_POST['descricao'];
    $estoque = $_POST['estoque'];
    $preco = $_POST['preco'];
    $categoria = $_POST['seleciona_categoria'];
    $marca = $_POST['seleciona_marca'];

    // Comando SQL para inserir um novo produto na tabela 'produtos'
    $grava_produtos = "INSERT INTO `produtos`(`IDCATEGORIA`, `IDMARCA`, `NOME`, `DESCRICAO`, `ESTOQUE`, `PRECO`) VALUES ('$categoria','$marca','$nome','$descricao','$estoque','$preco')";

    // Executa o comando SQL
    $result_garavacao = mysqli_query($mysqli, $grava_produtos);

    // Verifica se o comando afetou alguma linha (indica sucesso)
    if (mysqli_affected_rows($mysqli) != 0) {
        // Redireciona para a página de produtos e exibe uma mensagem de sucesso
        echo "
            <META HTTP-EQUIV=REFRESH CONTENT = 'O;URL=produtos.php'>
            
            <script type=\"text/javascript\">
                alert('Produto cadastrado com sucesso!');
            </script>
        ";
    } else {
        // Redireciona para a página de produtos e exibe uma mensagem de erro
        echo "
            <META HTTP-EQUIV=REFRESH CONTENT = 'O;URL=produtos.php'>
            
            <script type=\"text/javascript\">
                alert('Produto não cadastrado, tenta novamente!');
            </script>
        ";
    }
?>
