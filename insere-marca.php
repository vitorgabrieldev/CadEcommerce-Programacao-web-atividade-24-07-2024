<?php
    // Inclui o arquivo de conexão com o banco de dados.
    include("controller/conexao.php");

    // Recupera o valor da descrição da marca enviado pelo formulário via POST.
    $marca = $_POST['descricao'];

    // Exibe o nome da marca para confirmação.
    echo "<h3> Marca: $marca </h3> </br>";

    // Comando SQL para inserir uma nova marca na tabela 'marca'.
    $cad_marca = "INSERT INTO marca(DESCRICAO) VALUES ('$marca')";

    // Executa o comando SQL para inserir a marca.
    if (mysqli_query($mysqli, $cad_marca)) {
        // Se a inserção for bem-sucedida, exibe uma mensagem de sucesso.
        echo "<h1> Marca cadastrada com sucesso </h1> </br>";
    } else { 
        // Se ocorrer um erro durante a inserção, exibe o erro SQL e a mensagem de erro.
        echo " Erro: " . $cad_marca . " </br> " . mysqli_error($mysqli);
    }

    // Fecha a conexão com o banco de dados.
    mysqli_close($mysqli);
?>
