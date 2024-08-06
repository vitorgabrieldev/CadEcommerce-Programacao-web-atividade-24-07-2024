<?php
    // Inclui o arquivo de conexão com o banco de dados.
    include("controller/conexao.php");

    // Recupera o valor da descrição da categoria enviado pelo formulário via POST.
    $descricao = $_POST['descricao'];

    // Exibe a descrição da categoria para confirmação.
    echo "<h3> Descrição: $descricao </h3> </br>";

    // Comando SQL para inserir uma nova categoria na tabela 'categoria'.
    $cad_categoria = "INSERT INTO categoria(DESCRICAO) VALUES ('$descricao')";

    // Executa o comando SQL para inserir a categoria.
    if (mysqli_query($mysqli, $cad_categoria)) {
        // Se a inserção for bem-sucedida, exibe uma mensagem de sucesso.
        echo "<h1> Categoria cadastrada com sucesso </h1> </br>";
    } else { 
        // Se ocorrer um erro durante a inserção, exibe o erro SQL e a mensagem de erro.
        echo " Erro: " . $cad_categoria . " </br> " . mysqli_error($mysqli);
    }

    // Fecha a conexão com o banco de dados.
    mysqli_close($mysqli);
?>
