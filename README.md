# Sistema de Cadastro de Produtos 📦

**Descrição:**

Este projeto é um sistema de cadastro de produtos, desenvolvido para gerenciar informações de produtos em um banco de dados relacional. O sistema permite a inclusão, visualização e gerenciamento de categorias e marcas, além de armazenar detalhes dos produtos, como nome, descrição, estoque, preço, categoria e marca.

**Tecnologias Utilizadas:**

| Uso | Tecnologia |
| --- | ---------- |
| Banco de Dados | MySQL |
| Linguagem de Programação | PHP 8.2 |
| Linguagem de Formatação | Html 5 |
| Linguagem de Estilização | Css3 |
| Biblioteca | Jquery 2.1.4 |
| Servidor | Apache (XAMPP, Wampp, Eetc...) |

#

## **Estrutura do Banco de Dados:**

**Categoria**

``` sql
  CREATE TABLE `categoria` (
    `IDCATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
    `DESCRICAO` varchar(255) NOT NULL,
    PRIMARY KEY (`IDCATEGORIA`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
```

**Marca**
``` sql
  CREATE TABLE `marca` (
    `IDMARCA` int(11) NOT NULL AUTO_INCREMENT,
    `DESCRICAO` varchar(255) NOT NULL,
    PRIMARY KEY (`IDMARCA`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
```

**Produtos**
``` sql
  CREATE TABLE `produtos` (
    `IDPRODUTO` int(11) NOT NULL AUTO_INCREMENT,
    `NOME` varchar(255) NOT NULL,
    `DESCRICAO` text NOT NULL,
    `ESTOQUE` int(11) NOT NULL,
    `PRECO` decimal(10,2) NOT NULL,
    `IDCATEGORIA` int(11) NOT NULL,
    `IDMARCA` int(11) NOT NULL,
    PRIMARY KEY (`IDPRODUTO`),
    FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria`(`IDCATEGORIA`),
    FOREIGN KEY (`IDMARCA`) REFERENCES `marca`(`IDMARCA`)
  ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
```



### Setup e Instalação

**Clone o Repositório**

``` bash
  git clone https://github.com/vitorgabrieldev/CadEcommerce-Programacao-web-atividade-24-07-2024
  cd CadEcommerce-Programacao-web-atividade-24-07-2024
```


**Configuração do Ambiente**

Configure o servidor MySQL e crie um banco de dados para o projeto com o nome "compra".

``` sql
  CREATA DATABASE `compra`;
```

**Importar Estrutura do Banco de Dados**
Dump do Banco Disponivel em:

## USO:

Acessar o Sistema

Abra o navegador e acesse a URL do projeto, como http://localhost/nomedoprojeto.

Cadastro de Produtos

Navegue até a seção de cadastro de produtos e preencha os detalhes do produto, incluindo nome, descrição, estoque, preço, categoria e marca.

Visualização e Gerenciamento

Utilize as interfaces de usuário para visualizar, editar e remover produtos, categorias e marcas.

Funcionalidades
Cadastro e gerenciamento de categorias e marcas.
Cadastro de produtos com informações detalhadas.
Visualização de produtos com filtros por categoria e marca.
Atualização e exclusão de produtos.
Contribuição
Fork o Repositório

Faça um fork do repositório para seu próprio perfil.

Crie uma Branch

Crie uma nova branch para suas modificações:

bash
Copiar código
git checkout -b minha-nova-feature
Faça Commit das Suas Mudanças

Adicione e commit suas mudanças:

bash
Copiar código
git add .
git commit -m "Descrição das minhas mudanças"
Push para o Repositório Remoto

Envie suas alterações para o repositório remoto:

bash
Copiar código
git push origin minha-nova-feature
Abra um Pull Request

Abra um pull request no repositório original para revisar e integrar suas mudanças.

Licença
Este projeto está licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais detalhes.
