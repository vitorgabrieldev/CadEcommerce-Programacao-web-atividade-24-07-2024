<?php
  // Configura as credenciais e parâmetros de conexão com o banco de dados.
  // Define o nome do usuário do banco de dados, a senha, o servidor e o nome do banco de dados.
  $user = 'root';       // Nome de usuário para conexão com o banco de dados.
  $pass = '';           // Senha para o usuário do banco de dados (vazia para o usuário root local).
  $server = 'localhost'; // Endereço do servidor do banco de dados (localhost para um servidor local).
  $db = 'compra';      // Nome do banco de dados ao qual se deseja conectar.

  // Cria uma conexão com o banco de dados usando as credenciais fornecidas.
  // A função mysqli_connect é utilizada para estabelecer a conexão com o banco de dados MySQL.
  $mysqli = mysqli_connect($server, $user, $pass, $db);

  // Define o conjunto de caracteres para a conexão com o banco de dados como UTF-8.
  // Isso garante que caracteres especiais e acentuação sejam corretamente interpretados e armazenados.
  $mysqli->set_charset('utf8');

  // Verifica se houve um erro na conexão com o banco de dados.
  // Se houver um erro, exibe uma mensagem de erro e encerra a execução do script.
  if ($mysqli->connect_error){
    die ('Connect Error'); // Mensagem de erro genérica para falha na conexão.
  }
?>
