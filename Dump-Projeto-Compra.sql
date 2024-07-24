-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: compra
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `IDCATEGORIA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(255) NOT NULL,
  PRIMARY KEY (`IDCATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (7,'Eletrônicos'),(8,'Roupas'),(9,'Alimentos'),(10,'Móveis'),(11,'Livros'),(12,'Esporte'),(13,'Beleza'),(14,'Ferramentas'),(15,'Brinquedos'),(16,'Bebidas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `IDCLI` int(10) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `DTNASC` date NOT NULL,
  `ENDERECO` varchar(255) NOT NULL,
  `SEXO` int(1) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `TELEFONE` varchar(20) NOT NULL,
  `CELULAR` varchar(20) NOT NULL,
  PRIMARY KEY (`IDCLI`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Leonardo Rocha','leonardo','123456','1983-07-02','Rua Lorem ipsum dolor sit amet',1,'000.000.000-00','00000000','(43)3333-3333','(43)3344-3344');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `IDFOR` int(10) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(255) NOT NULL,
  `TELEFONE` varchar(255) NOT NULL,
  PRIMARY KEY (`IDFOR`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Unopar','(43)3333-3333');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempedido`
--

DROP TABLE IF EXISTS `itempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itempedido` (
  `IDITEM` int(11) NOT NULL AUTO_INCREMENT,
  `IDPED` int(11) NOT NULL,
  `IDPROD` int(11) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL,
  PRIMARY KEY (`IDITEM`,`IDPED`),
  KEY `IDPED` (`IDPED`),
  KEY `IDPROD` (`IDPROD`),
  CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`IDPED`) REFERENCES `pedido` (`IDPED`),
  CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`IDPROD`) REFERENCES `produtos` (`IDPROD`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempedido`
--

LOCK TABLES `itempedido` WRITE;
/*!40000 ALTER TABLE `itempedido` DISABLE KEYS */;
INSERT INTO `itempedido` VALUES (37,50,1,1,2),(38,50,2,2,1),(39,51,1,1,3),(40,51,2,2,3),(41,52,1,1,2),(42,53,3,1,50),(43,54,1,1,2),(44,54,2,2,17),(45,55,39,1,12);
/*!40000 ALTER TABLE `itempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `IDMARCA` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(255) NOT NULL,
  PRIMARY KEY (`IDMARCA`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (4,'Samsung'),(5,'Nike'),(6,'Nestlé'),(7,'IKEA'),(8,'Penguin Books'),(9,'Adidas'),(10,'L\'Oréal'),(11,'Bosch'),(12,'Lego'),(13,'Coca-Cola');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `IDPED` int(11) NOT NULL AUTO_INCREMENT,
  `IDCLI` int(11) NOT NULL,
  `IDFOR` int(11) NOT NULL,
  `DATA` datetime NOT NULL DEFAULT current_timestamp(),
  `STATUS` char(1) NOT NULL,
  PRIMARY KEY (`IDPED`),
  KEY `IDCLI` (`IDCLI`),
  KEY `IDFOR` (`IDFOR`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`IDCLI`) REFERENCES `cliente` (`IDCLI`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`IDFOR`) REFERENCES `fornecedor` (`IDFOR`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (50,1,1,'2021-09-29 08:34:20','E'),(51,1,1,'2021-09-30 12:05:28','E'),(52,1,1,'2021-09-30 12:06:47','E'),(53,1,1,'2024-06-19 09:22:58','E'),(54,1,1,'2024-06-19 09:23:40','E'),(55,1,1,'2024-07-23 08:08:15','E');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `IDPROD` int(10) NOT NULL AUTO_INCREMENT,
  `IDCATEGORIA` int(10) NOT NULL,
  `IDMARCA` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `ESTOQUE` int(10) NOT NULL,
  `PRECO` double NOT NULL,
  PRIMARY KEY (`IDPROD`,`IDCATEGORIA`,`IDMARCA`),
  KEY `IDCATEGORIA` (`IDCATEGORIA`),
  KEY `IDMARCA` (`IDMARCA`),
  CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria` (`IDCATEGORIA`),
  CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`IDMARCA`) REFERENCES `marca` (`IDMARCA`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (43,7,4,'Televisor 4K','Televisor 4K de 55 polegadas com tecnologia HDR e smart TV.',15,3.499),(44,8,5,'Tênis de Corrida','Tênis leve e confortável, ideal para corridas de longa distância.',30,299),(45,9,6,'Chocolate ao Leite','Barra de chocolate ao leite com 100g.',100,4),(46,10,7,'Sofá de 3 Lugares','Sofá de tecido cinza, confortável e moderno, com assentos reclináveis.',10,2.499),(47,11,8,'Livro de Ficção Científica','Livro de ficção científica com 400 páginas, edição de capa dura.',50,79),(48,7,4,'Smartphone Galaxy S21','Smartphone com 128GB de armazenamento, câmera tripla e tela AMOLED.',20,4.299),(49,7,4,'Fone de Ouvido Bluetooth','Fone de ouvido sem fio com cancelamento de ruído.',25,249),(50,8,5,'Relógio Esportivo','Relógio resistente à água com medidor de batimentos cardíacos.',40,399),(51,9,6,'Leite em Pó Integral','Leite em pó integral, lata de 400g.',60,15),(52,10,7,'Cadeira de Escritório','Cadeira ergonômica com ajuste de altura e apoio lombar.',12,899),(53,11,8,'Livro de Autoajuda','Livro de autoajuda com 250 páginas.',50,49.9),(54,7,4,'Câmera Digital','Câmera digital compacta com zoom óptico de 10x.',20,1199),(55,8,5,'Calça de Yoga','Calça de yoga confortável e flexível.',35,129),(56,9,6,'Cereal Matinal','Cereal matinal integral com frutas secas.',70,12),(57,10,7,'Mesa de Centro','Mesa de centro de vidro temperado.',15,459),(58,11,8,'Livro de História','Livro de história com 300 páginas.',45,69.9),(59,7,4,'Smartwatch','Relógio inteligente com monitoramento de atividades.',30,999),(60,8,5,'Jaqueta de Inverno','Jaqueta de inverno com forro térmico.',25,399),(61,9,6,'Achocolatado em Pó','Achocolatado em pó para bebidas.',80,10),(62,10,7,'Estante de Livros','Estante de livros com 5 prateleiras.',10,799),(63,11,8,'Livro de Fantasia','Livro de fantasia com 500 páginas.',50,89.9),(64,7,4,'Tablet','Tablet com tela de 10 polegadas e 64GB de armazenamento.',22,1599),(65,8,5,'Boné Esportivo','Boné esportivo ajustável.',40,59),(66,9,6,'Macarrão Instantâneo','Macarrão instantâneo sabor carne.',100,2.5),(67,10,7,'Cadeira Gamer','Cadeira gamer ergonômica com apoio de braço ajustável.',8,1299),(68,11,8,'Livro de Poesia','Livro de poesia contemporânea.',35,39.9),(69,7,4,'Monitor 27 Pol.','Monitor de 27 polegadas com resolução 4K.',18,2499),(70,8,5,'Camiseta Dry Fit','Camiseta dry fit para atividades físicas.',50,89),(71,9,6,'Café Solúvel','Café solúvel em pó, embalagem de 200g.',70,18),(72,10,7,'Armário de Cozinha','Armário de cozinha modular.',6,1599),(73,11,8,'Livro Infantil','Livro infantil ilustrado.',60,29.9),(74,7,4,'Impressora Multifuncional','Impressora multifuncional com scanner e copiadora.',12,499),(75,8,5,'Calça Jeans','Calça jeans masculina.',45,149),(76,9,6,'Biscoito de Maizena','Biscoito de maizena, pacote de 200g.',85,3.5),(77,10,7,'Rack para TV','Rack para TV com gavetas.',9,999),(78,11,8,'Livro de Biografia','Livro de biografia inspiradora.',50,59.9),(79,7,4,'Micro-ondas','Micro-ondas com grill e função de descongelamento.',20,699),(80,8,5,'Moletom Canguru','Moletom com bolso canguru e capuz.',35,199),(81,9,6,'Bebida Láctea','Bebida láctea sabor morango, embalagem de 1 litro.',60,5),(82,10,7,'Guarda-Roupa','Guarda-roupa com portas de correr e espelho.',10,2399),(83,11,8,'Livro de Medicina','Livro de medicina com foco em anatomia.',40,199.9),(84,7,4,'Notebook','Notebook com 8GB de RAM e 256GB SSD.',25,3599),(85,8,5,'Shorts de Treino','Shorts de treino leve e respirável.',50,99),(86,9,6,'Suco de Laranja','Suco de laranja natural, embalagem de 1 litro.',70,6),(87,10,7,'Cômoda de Madeira','Cômoda de madeira com 5 gavetas.',8,1299),(88,11,8,'Livro de Filosofia','Livro de filosofia com 400 páginas.',35,79.9),(89,7,4,'Smart TV','Smart TV 50 polegadas com resolução 4K.',18,2999),(90,8,5,'Camiseta Polo','Camiseta polo de algodão.',45,129),(91,9,6,'Bolacha de Aveia','Bolacha de aveia com mel, pacote de 300g.',80,8.5),(92,10,7,'Mesa de Cabeceira','Mesa de cabeceira com gaveta e prateleira.',12,599),(93,11,8,'Livro de Economia','Livro de economia com foco em macroeconomia.',30,99.9),(94,7,4,'Fritadeira Sem Óleo','Fritadeira sem óleo com capacidade de 5 litros.',22,499),(95,8,5,'Legging Fitness','Calça legging fitness com alta elasticidade.',50,89),(96,9,6,'Chá Verde','Chá verde em sachês, caixa com 20 unidades.',90,12),(97,10,7,'Sofá Cama','Sofá cama com revestimento em tecido.',6,1999),(98,11,8,'Livro de Direito','Livro de direito civil com 500 páginas.',40,129.9),(99,7,4,'Câmera de Segurança','Câmera de segurança com visão noturna.',20,399),(100,8,5,'Blusa de Frio','Blusa de frio em lã, confortável e quentinha.',30,179),(101,9,6,'Iogurte Natural','Iogurte natural, embalagem de 500g.',100,4),(102,10,7,'Cadeira de Refeição','Cadeira de refeição dobrável.',8,699),(103,11,8,'Livro de Engenharia','Livro de engenharia com foco em estruturas.',35,149.9),(104,7,4,'Home Theater','Sistema de home theater com 5.1 canais.',15,2499),(105,8,5,'Jaqueta Jeans','Jaqueta jeans com lavagem especial.',45,229),(106,9,6,'Arroz Integral','Arroz integral, pacote de 1kg.',70,8),(107,10,7,'Prateleira Modular','Prateleira modular com 3 níveis.',10,799),(108,11,8,'Livro de Biologia','Livro de biologia com foco em genética.',40,109.9),(109,7,4,'Headset Gamer','Headset gamer com microfone integrado.',25,299),(110,8,5,'Regata Esportiva','Regata esportiva leve e respirável.',50,59),(111,9,6,'Molho de Tomate','Molho de tomate tradicional, embalagem de 340g.',85,4.5),(112,10,7,'Poltrona Reclinável','Poltrona reclinável em couro.',6,2499),(113,11,8,'Livro de Matemática','Livro de matemática com exercícios práticos.',30,89.9),(114,7,4,'Aspirador de Pó','Aspirador de pó com filtro HEPA.',20,599),(115,8,5,'Boné Ajustável','Boné ajustável com estampa moderna.',35,49),(116,9,6,'Bebida Energética','Bebida energética, lata de 350ml.',90,7),(117,10,7,'Cama Box','Cama box com colchão de molas ensacadas.',10,2999),(118,11,8,'Livro de Química','Livro de química com foco em reações químicas.',40,119.9),(119,7,4,'Geladeira','Geladeira frost free com capacidade de 400 litros.',12,3499),(120,8,5,'Camiseta Regata','Camiseta regata para atividades físicas.',45,69),(121,9,6,'Biscoito Integral','Biscoito integral com cereais, pacote de 200g.',80,5),(122,10,7,'Cadeira de Jantar','Cadeira de jantar estofada.',8,899),(123,11,8,'Livro de Física','Livro de física com teorias e experimentos.',35,99.9),(124,7,4,'Roteador Wi-Fi','Roteador Wi-Fi de alta velocidade.',25,399),(125,8,5,'Calça Moletom','Calça moletom confortável e quente.',50,99),(126,9,6,'Chocolate Amargo','Barra de chocolate amargo com 70% cacau.',70,10),(127,10,7,'Estante de Madeira','Estante de madeira para livros.',10,1299),(128,11,8,'Livro de Psicologia','Livro de psicologia com estudos de casos.',40,139.9),(129,12,9,'Bola de Futebol','Bola de futebol oficial para jogos.',30,99),(130,13,10,'Shampoo Revitalizante','Shampoo revitalizante para todos os tipos de cabelo.',50,29.9),(131,14,11,'Furadeira Elétrica','Furadeira elétrica com 500W de potência.',20,299),(132,15,12,'Bloco de Montar','Bloco de montar com 500 peças.',40,149),(133,16,13,'Refrigerante de Cola','Refrigerante de cola, lata de 350ml.',100,3.5),(134,12,9,'Tênis de Corrida','Tênis de corrida leve e confortável.',35,299),(135,13,10,'Creme Hidratante','Creme hidratante para pele seca.',45,39.9),(136,14,11,'Serra Circular','Serra circular com lâmina de 7 polegadas.',15,499),(137,15,12,'Carrinho de Brinquedo','Carrinho de brinquedo com controle remoto.',25,79),(138,16,13,'Suco de Laranja','Suco de laranja natural, garrafa de 1 litro.',60,7),(139,12,9,'Bola de Futebol','Bola de futebol oficial para jogos.',30,99),(140,13,10,'Shampoo Revitalizante','Shampoo revitalizante para todos os tipos de cabelo.',50,29.9),(141,14,11,'Furadeira Elétrica','Furadeira elétrica com 500W de potência.',20,299),(142,15,12,'Bloco de Montar','Bloco de montar com 500 peças.',40,149),(143,16,13,'Refrigerante de Cola','Refrigerante de cola, lata de 350ml.',100,3.5),(144,12,9,'Tênis de Corrida','Tênis de corrida leve e confortável.',35,299),(145,13,10,'Creme Hidratante','Creme hidratante para pele seca.',45,39.9),(146,14,11,'Serra Circular','Serra circular com lâmina de 7 polegadas.',15,499),(147,15,12,'Carrinho de Brinquedo','Carrinho de brinquedo com controle remoto.',25,79),(148,16,13,'Suco de Laranja','Suco de laranja natural, garrafa de 1 litro.',60,7),(149,12,9,'Raquete de Tênis','Raquete de tênis leve e resistente.',20,199),(150,13,10,'Condicionador Nutritivo','Condicionador nutritivo para cabelos danificados.',40,25.9),(151,14,11,'Parafusadeira','Parafusadeira sem fio com bateria recarregável.',30,349),(152,15,12,'Boneco de Ação','Boneco de ação com articulações móveis.',50,99),(153,16,13,'Água Mineral','Água mineral com gás, garrafa de 500ml.',80,2.5),(154,12,9,'Camisa de Futebol','Camisa de futebol oficial do time.',25,199),(155,13,10,'Loção Corporal','Loção corporal hidratante com fragrância suave.',35,35),(156,14,11,'Kit de Ferramentas','Kit de ferramentas com 20 peças.',18,599),(157,15,12,'Quebra-Cabeça','Quebra-cabeça de 1000 peças.',30,59.9),(158,16,13,'Chá Gelado','Chá gelado de limão, garrafa de 1 litro.',50,5),(159,12,9,'Bermuda Esportiva','Bermuda esportiva leve e confortável.',40,89),(160,13,10,'Base para Unhas','Base fortalecedora para unhas.',60,12.9),(161,14,11,'Marreta','Marreta de 1kg com cabo de madeira.',25,79),(162,15,12,'Pelúcia','Pelúcia de animal fofinho.',70,49.9),(163,16,13,'Refrigerante de Limão','Refrigerante de limão, lata de 350ml.',90,3.5),(164,12,9,'Calça Legging','Calça legging para prática de yoga.',45,129),(165,13,10,'Protetor Solar','Protetor solar FPS 50.',50,39.9),(166,14,11,'Alicate Universal','Alicate universal com cabo emborrachado.',30,45),(167,15,12,'Kit de Pintura','Kit de pintura com tintas e pincéis.',20,79.9),(168,16,13,'Suco de Uva','Suco de uva integral, garrafa de 1 litro.',65,6),(169,12,9,'Sapatilhas de Ballet','Sapatilhas de ballet confortáveis.',35,159),(170,13,10,'Creme para Pentear','Creme para pentear cabelos cacheados.',55,18.9),(171,14,11,'Martelo','Martelo de carpinteiro com cabo de fibra.',40,39),(172,15,12,'Jogo de Tabuleiro','Jogo de tabuleiro estratégico.',50,99),(173,16,13,'Água Tônica','Água tônica, garrafa de 500ml.',75,3),(174,12,9,'Jaqueta Esportiva','Jaqueta esportiva corta-vento.',30,199),(175,13,10,'Óleo Corporal','Óleo corporal hidratante.',45,29.9),(176,14,11,'Chave de Fenda','Chave de fenda com ponta magnética.',25,25),(177,15,12,'Kit de Blocos','Kit de blocos de construção.',40,129),(178,16,13,'Suco de Abacaxi','Suco de abacaxi natural, garrafa de 1 litro.',55,6),(179,12,9,'Meias Esportivas','Meias esportivas confortáveis.',60,29),(180,13,10,'Sérum Facial','Sérum facial antienvelhecimento.',35,49.9),(181,14,11,'Serrote','Serrote para corte de madeira.',20,55),(182,15,12,'Brinquedo Educativo','Brinquedo educativo para crianças.',50,69.9),(183,16,13,'Refrigerante Diet','Refrigerante diet, lata de 350ml.',85,3.5),(184,12,9,'Tênis Casual','Tênis casual para uso diário.',45,179),(185,13,10,'Creme Anti-rugas','Creme anti-rugas para uso noturno.',40,59.9),(186,14,11,'Chave Inglesa','Chave inglesa ajustável.',30,45),(187,15,12,'Kit de Construção','Kit de construção com peças diversas.',35,149),(188,16,13,'Suco de Manga','Suco de manga natural, garrafa de 1 litro.',60,6),(189,12,9,'Camisa Polo','Camisa polo esportiva.',50,139),(190,13,10,'Hidratante Facial','Hidratante facial com vitamina C.',45,39.9),(191,14,11,'Grampeador','Grampeador para uso em madeira.',25,69),(192,15,12,'Boneca','Boneca com acessórios.',60,89),(193,16,13,'Água de Coco','Água de coco natural, garrafa de 1 litro.',70,5),(194,12,9,'Regata Esportiva','Regata esportiva para treino.',40,79),(195,13,10,'Esfoliante Corporal','Esfoliante corporal revitalizante.',50,29.9),(196,14,11,'Lixa de Unha','Lixa de unha de alta durabilidade.',30,5),(197,15,12,'Jogo de Dominó','Jogo de dominó clássico.',45,49.9),(198,16,13,'Refrigerante de Guaraná','Refrigerante de guaraná, lata de 350ml.',80,3.5),(199,12,9,'Chuteira','Chuteira para futebol de campo.',35,249),(200,13,10,'Máscara Capilar','Máscara capilar nutritiva.',40,49.9),(201,14,11,'Alicates de Corte','Alicate de corte preciso.',25,35),(202,15,12,'Quebra-Cabeça 3D','Quebra-cabeça 3D de monumentos famosos.',30,99.9),(203,16,13,'Suco de Acerola','Suco de acerola natural, garrafa de 1 litro.',65,6),(204,12,9,'Calção Esportivo','Calção esportivo confortável.',40,89),(205,13,10,'Sabonete Líquido','Sabonete líquido para pele sensível.',50,19.9),(206,14,11,'Furadeira de Impacto','Furadeira de impacto com 600W.',20,359),(207,15,12,'Boneco Interativo','Boneco interativo que fala.',45,149),(208,16,13,'Chá Verde','Chá verde natural, garrafa de 1 litro.',75,5.5),(209,12,9,'Legging Fitness','Legging fitness com compressão.',35,99),(210,13,10,'Protetor Labial','Protetor labial hidratante.',55,12.9),(211,14,11,'Jogo de Soquetes','Jogo de soquetes com 30 peças.',25,199),(212,15,12,'Jogo de Xadrez','Jogo de xadrez de madeira.',40,129),(213,16,13,'Refrigerante de Laranja','Refrigerante de laranja, lata de 350ml.',90,3.5),(214,12,9,'Tênis de Treino','Tênis de treino com amortecimento.',30,249),(215,13,10,'Máscara Facial','Máscara facial de argila.',45,29.9),(216,14,11,'Alicate de Bico','Alicate de bico fino.',35,39),(217,15,12,'Blocos de Construção','Blocos de construção com 1000 peças.',25,199),(218,16,13,'Suco de Maracujá','Suco de maracujá natural, garrafa de 1 litro.',50,6),(219,12,9,'Regata para Corrida','Regata leve para corrida.',40,79),(220,13,10,'Creme Hidratante para Mãos','Creme hidratante para mãos.',50,14.9),(221,14,11,'Chave Philips','Chave Philips resistente.',30,25),(222,15,12,'Brinquedo de Pelúcia','Brinquedo de pelúcia macia.',60,59.9),(223,16,13,'Refrigerante de Maçã','Refrigerante de maçã, lata de 350ml.',80,3.5),(224,12,9,'Jaqueta para Corrida','Jaqueta leve para corrida.',35,199),(225,13,10,'Tônico Facial','Tônico facial refrescante.',45,29.9),(226,14,11,'Serra Tico-Tico','Serra tico-tico elétrica.',20,299),(227,15,12,'Jogo de Construção','Jogo de construção com peças coloridas.',40,149),(228,16,13,'Suco de Pêssego','Suco de pêssego natural, garrafa de 1 litro.',70,6);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23 21:31:39
