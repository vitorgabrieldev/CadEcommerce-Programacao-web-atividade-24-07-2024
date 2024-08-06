<?php
  class Carrinho {
    // Construtor da classe
    function __construct() {
      // Inicia a sessão para acessar os dados do carrinho
      session_start();
    }

    // Adiciona um produto ao carrinho
    function add() {
      require_once("../controller/conexao.php"); // Inclui o arquivo de conexão com o banco de dados

      // Verifica se o ID do produto foi passado na URL
      if ($id = @$_GET['id']) {
        // Busca o produto pelo ID
        $produtos = $mysqli->query("SELECT * FROM produtos WHERE IDPROD = $id");

        // Verifica se a quantidade foi passada na URL
        if ($quantidade = @$_GET['qnt']) {
          // Obtém os detalhes do produto
          if ($prod = mysqli_fetch_object($produtos)) {
            // Verifica se o carrinho já contém produtos
            if (@$_SESSION['produtos']) {
              // Se o produto já está no carrinho, atualiza a quantidade
              if (@$_SESSION['produtos'][$id]) {
                $qnt = $_SESSION['produtos'][$id] + $quantidade;
                // Verifica se a quantidade é válida
                if ($qnt > 0 && $qnt <= $prod->ESTOQUE) {
                  $_SESSION['produtos'][$id] += $quantidade;
                } else {
                  // Exibe mensagem de erro se a quantidade for inválida
                  echo 'Erro, a quantidade deve ser compatível ao estoque </br><a href="../index.php">Voltar</a>';
                  exit;
                }
              } else {
                // Se o produto não está no carrinho, adiciona-o
                if ($quantidade > 0 && $quantidade <= $prod->ESTOQUE) {
                  $_SESSION['produtos'][$id] = $quantidade;
                } else {
                  // Exibe mensagem de erro se a quantidade for inválida
                  echo 'Erro, a quantidade deve ser compatível ao estoque </br><a href="../index.php">Voltar</a>';
                  exit;
                }
              }
            } else {
              // Se o carrinho estiver vazio, inicializa e adiciona o produto
              if ($quantidade > 0 && $quantidade <= $prod->ESTOQUE) {
                $_SESSION['produtos'] = array();
                $_SESSION['produtos'][$id] = $quantidade;
              } else {
                // Exibe mensagem de erro se a quantidade for inválida
                echo 'Erro, a quantidade deve ser compatível ao estoque </br><a href="../index.php">Voltar</a>';
                exit;
              }
            }
          }
        } else {
          // Exibe mensagem de erro se a quantidade não for definida
          echo 'Erro, nenhuma quantidade foi definida </br><a href="../index.php">Voltar</a>';
          exit;
        }
      } else {
        // Exibe mensagem de erro se o produto não for selecionado
        echo 'Erro, nenhum produto foi selecionado </br><a href="../index.php">Voltar</a>';
        exit;
      }
      // Redireciona para a página inicial
      header('location: ../index.php');
    }

    // Exibe os produtos no carrinho
    function buscar() {
      require_once('controller/conexao.php'); // Inclui o arquivo de conexão com o banco de dados

      if (@$_SESSION['produtos']) {
        echo '<ul>';
        // Itera sobre os produtos no carrinho
        for ($i = 0; $i < max(array_keys($_SESSION['produtos'])); $i++) {
          if (@$_SESSION['produtos'][$i + 1]) {
            $quantidade = $_SESSION['produtos'][$i + 1];
            // Busca os detalhes do produto
            $produto = $mysqli->query("SELECT p.*, c.DESCRICAO as CATEGORIA, m.DESCRICAO as MARCA 
                                       FROM produtos p 
                                       INNER JOIN categoria c ON c.IDCATEGORIA = p.IDCATEGORIA 
                                       INNER JOIN marca m ON m.IDMARCA = p.IDMARCA 
                                       WHERE IDPROD = ($i + 1)");

            if ($prod = mysqli_fetch_object($produto)) {
              $preco = str_replace('.', ',', $prod->PRECO);
              $valortotal = str_replace('.', ',', ($quantidade * $prod->PRECO));
              // Exibe os detalhes do produto no carrinho
              echo '<li>
                      <h2>'.$prod->NOME.'</h2><p>'.$prod->DESCRICAO.'</p>
                      <p><b>Categoria: </b>'.$prod->CATEGORIA.'</p>
                      <p><b>Marca: </b>'.$prod->MARCA.'</p>
                      <p><b>Estoque: </b>'.$prod->ESTOQUE.'</p>
                      <p><b>Preço: </b>R$'.$preco.'</p>
                      <p><b>Quantidade: </b>'.$quantidade.'</p>
                      <p><b>Valor total: </b>R$'.$valortotal.'</p>
                      <a href="controller/carrinho-remover.php?id='.$prod->IDPROD.'">Remover do carrinho</a>
                    </li>';
            }
          }
        }
        echo '</ul><a href="controller/produtos-pedido.php">Finalizar pedido</a>';
      }
    }

    // Remove um produto do carrinho
    function remover() {
      // Verifica se o ID do produto foi passado na URL
      if ($id = @$_GET['id']) {
        // Remove o produto da sessão
        unset($_SESSION['produtos'][$id]);
      } else {
        // Exibe mensagem de erro se o produto não for selecionado
        echo '<p>Erro! Nenhum produto selecionado';
      }
      // Redireciona para a página do carrinho
      header('location: ../carrinho.php');
    }
  }
?>
