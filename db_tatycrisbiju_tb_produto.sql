CREATE DATABASE  IF NOT EXISTS `db_tatycrisbiju` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_tatycrisbiju`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tatycrisbiju
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tb_produto`
--

DROP TABLE IF EXISTS `tb_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `qtde` int NOT NULL,
  `valor` varchar(12) NOT NULL,
  `valor_compra` varchar(12) NOT NULL,
  `valor_venda` varchar(12) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` blob NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_produto`
--

LOCK TABLES `tb_produto` WRITE;
/*!40000 ALTER TABLE `tb_produto` DISABLE KEYS */;
INSERT INTO `tb_produto` VALUES (33,'Brinco bolinha','desconto',5,'67.59','67.59','67.59','Adicione um toque de diversão e estilo ao seu visual com esses brincos de bolinha encantadores! Feitos para brilhar, esses pequenos detalhes adicionam um toque de sofisticação a qualquer ocasião. ',_binary 'Brinco_bolinha.jpg'),(34,'Brinco corrente','desconto',23,'57.59','57.59','57.59','Complete seu visual com um toque moderno e elegante com esses brincos de corrente deslumbrantes! Feitos para quem adora se destacar, esses brincos oferecem uma combinação perfeita de estilo e sofisticação.',_binary 'Brinco_corrente.jpg'),(35,'Colar condecorado','desconto',23,'47.59','47.59','47.59','Eleve o seu estilo com este colar condecorado deslumbrante! Cada detalhe meticulosamente trabalhado deste colar reflete elegância e sofisticação. Com sua combinação única de design clássico e toques modernos, este colar é perfeito.',_binary 'Colar_condecorado.jpg'),(36,'Anel de ouro','desconto30',27,'699.99','699.99','699.99','Adicione um toque de luxo e elegância atemporal ao seu visual com este deslumbrante anel de ouro! Feito com o mais fino ouro, este anel é uma verdadeira obra-prima de artesanato e beleza. Seu design simples, mas sofisticado.',_binary 'anel_banhado.jpg'),(37,'Bracelete de ouro','desconto30',23,'499.99','499.99','499.99','Destaque-se com elegância usando este deslumbrante bracelete de ouro! Feito para a mulher moderna que aprecia o luxo e a sofisticação, este bracelete é uma peça de destaque em qualquer coleção de joias. O brilho suave do ouro',_binary 'braceletedeouro.png'),(38,'Pulseira de ouro','desconto30',23,'799.99','799.99','799.99','Adicione um toque de elegância refinada ao seu estilo com esta pulseira de ouro deslumbrante! Feita com o mais puro ouro, esta pulseira é uma declaração de luxo e sofisticação. Seu design clássico é acentuado pela qualidade superior do material.',_binary 'pulseiradeouro.jpg'),(39,'Colar Ouro Radiante','desconto40',20,'2999.99','2999.99','2999.99','Deslumbre-se com o brilho radiante deste colar de ouro. Cada elo é meticulosamente trabalhado para capturar a luz de maneira deslumbrante, adornando seu pescoço com um toque de elegância incomparável',_binary 'colar_ouro1.jpg'),(40,'Colar Coração de Ouro ','desconto40',20,'5999.99','5999.99','5999.99','Deixe seu coração brilhar com o Colar Coração de Ouro. Este deslumbrante colar apresenta um delicado pingente em forma de coração, banhado em ouro reluzente. Cada curva e contorno reflete a luz de maneira cativante, simbolizando amor e elegância.',_binary 'colardeouro.png'),(41,'Brincos dourados ','desconto40',25,'589.99','589.99','589.99','Deslumbre-se com a radiante elegância destes brincos dourados. Cada detalhe é meticulosamente trabalhado para capturar a luz de maneira deslumbrante, adicionando um toque de luxo e sofisticação ao seu visual.',_binary 'brincos_dourados.jpg'),(42,'Piercing banho de prata','piercing',5,'29.99','29.99','29.99','Este nome destaca o banho de prata e evoca a imagem da lua, sugerindo uma peça elegante e encantadora.',_binary 'piercing222.jpg'),(43,'Piercing Argola','piercing',4,'39.99','39.99','39.99','\"Radiância de Prata\". Este nome sugere a beleza e o brilho do piercing de argola banhado a prata, destacando sua elegância e estilo.',_binary 'piercing2.jpg'),(44,'Piercing ferradura','piercing',4,'59,99','59,99','59,99','Este nome evoca a forma do piercing em ferradura e sugere uma imagem poética da lua crescente, adicionando um toque de mistério e beleza ao acessório.',_binary 'ferradura.png'),(45,'Brinco redondo','brinco',4,'15.99','15.99','15.99','Explore a beleza sutil e o brilho delicado de nossa coleção Brilho Sutil de bijuterias. Cada peça é cuidadosamente elaborada para oferecer um toque de elegância e estilo ao seu visual diário. ',_binary 'Brinco_redondo.jpg'),(46,'Brincos correntes douradas','brinco',5,'20.99','20.99','20.99','Explore a beleza e a elegância dos nossos brincos correntes dourados. Cada par é meticulosamente projetado para adicionar um toque de sofisticação e estilo ao seu visual. Com um design moderno e versátil.',_binary 'Brinco_corrente.jpg'),(47,'Brinco bolinha','brinco',4,'22.99','22.99','22.99','Adicione um toque de delicadeza e charme ao seu visual com nossos brincos de bolinha. Feitos para serem leves e confortáveis;',_binary 'Brinco_bolinha.jpg'),(48,'Colar de pedra','colar',5,'39.99','39.99','39.99','Este nome evoca a imagem de uma pedra celestial com um brilho misterioso, enquanto adiciona um toque de elegância e mistério ao colar.',_binary 'Colar_pedra.jpg'),(49,'Colar coração','colar',10,'59.99','59.99','59.99',' Este nome destaca o formato do colar e evoca a ideia de amor e brilho, transmitindo uma sensação de romance e elegância',_binary 'colar_coracao.jpg'),(50,'Colar coração','colar',11,'99.99','99.99','99.99','Este nome enfatiza a simbologia do coração como um símbolo de amor duradouro e intemporal, transmitindo uma sensação de romantismo e conexão emocional.',_binary 'colardeouro.png'),(51,'Anel de prata','anel',19,'299.99','299.99','299.99','Este nome sugere a pureza e a beleza atemporal da prata, enquanto evoca a imagem da lua brilhante no céu noturno, adicionando um toque de poesia e mistério ao anel.',_binary 'anelprata.jpg'),(52,'Anel Prata 925 Aparador Corações Vazados','anel',9,'159.99','159.99','159.99','Este nome destaca a pureza e qualidade da prata 925, enquanto descreve visualmente os corações vazados, evocando a imagem de uma serenata romântica e delicada.',_binary 'anelaparador.jpg'),(53,'Anel Prata 925 Solitário Triângulo Zircônia','anel',8,'249.99','249.99','249.99','Esse nome destaca a qualidade da prata 925 e a beleza do design com a zircônia em formato de triângulo, evocando a imagem de uma estrela cintilante, que reflete elegância e sofisticação.',_binary 'aneltriangulo.jpg'),(54,'Pulseira unicor','pulseira',9,'9.99','9.99','9.99','Este nome destaca a inspiração mágica e encantadora do unicórnio na pulseira, sugerindo uma peça cheia de fantasia e magia.',_binary 'Pulseira_unicolor.jpg'),(55,'Pulseira de ouro','pulseira',7,'1599.99','1599.99','1599.99','Este nome destaca o material nobre e luxuoso da pulseira, evocando a imagem de um brilho intenso e sofisticado.',_binary 'pulseiradeouro.jpg'),(56,'Pulseira love','pulseira',5,'29.99','29.99','29.99','Este nome sugere uma ideia de amor duradouro e eterno, transmitindo uma sensação de conexão e afeto constante.',_binary 'pulseiralove.jpg'),(57,'Bracelete de ouro','bracelete',6,'499.99','499.99','499.99','Este nome destaca a nobreza e a beleza do ouro, evocando uma imagem de grandeza e sofisticação.',_binary 'braceletedeouro.png'),(58,'Bracelete black com joias ','bracelete',3,'2999.99','2999.99','2999.99','Este nome destaca o contraste entre o black e as joias, sugerindo uma peça elegante e luxuosa, perfeita para ocasiões especiais à noite.',_binary 'braceletepreto.jpg'),(59,'Bracelete de pérolas ','bracelete',15,'649.99','649.99','649.99','Este nome destaca a elegância e a beleza das pérolas, evocando uma sensação de luxo e sofisticação celestial.',_binary 'braceleteperolas.jpg'),(60,'Tornozeira banhada a ouro','tornozeleira',7,'199.99','199.99','199.99','Este nome destaca o banho de ouro e sugere um brilho intenso e sofisticado, adicionando um toque de elegância à peça.',_binary 'tornoze2.jpg'),(61,'Tornozelira coração prateado','tornozeleira',19,'299','299','299','Este nome destaca o design com corações e a cor prateada, sugerindo uma peça delicada e romântica, perfeita para adicionar charme ao visual.',_binary 'tornozeleiracoracao.jpg'),(62,'Tornozelira olhos de prata','tornozeleira',9,'149.99','149.99','149.99',' Este nome destaca o design com olhos e a cor prateada da tornozeleira, evocando uma sensação de mistério e encanto.',_binary 'tornozeleiraolhos.jpeg');
/*!40000 ALTER TABLE `tb_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 10:15:07
