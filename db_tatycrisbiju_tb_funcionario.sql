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
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `data_nascimento` varchar(100) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `estado_civil` varchar(45) NOT NULL,
  `escolaridade` varchar(45) NOT NULL,
  `cep` varchar(13) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `num` int NOT NULL,
  `complemento` varchar(150) DEFAULT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `tel_fixo` varchar(20) DEFAULT NULL,
  `tel_cel` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `funcao` varchar(45) NOT NULL,
  `dat_admissao` date NOT NULL,
  `salario` float NOT NULL,
  `turno` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `rg` varchar(19) NOT NULL,
  `orgao_emissor` varchar(45) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `data_expedicao` varchar(100) NOT NULL,
  `ctps` bigint NOT NULL,
  `data_emissao` varchar(100) NOT NULL,
  `pis` bigint NOT NULL,
  `banco` int NOT NULL,
  `agencia` int NOT NULL,
  `conta` int NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `pix` varchar(100) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `rg_UNIQUE` (`rg`),
  UNIQUE KEY `ctps_UNIQUE` (`ctps`),
  UNIQUE KEY `pis_UNIQUE` (`pis`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES (9,'Paula','1999-01-07','feminino','solteira','Ensino médio completo','72236-602','QNP 36 Conjunto B',277,'centro','Ceilândia Sul (Ceilândia)','Brasília','Distrito Federal','(88) 36031-618','(88) 99742-3997','paula12@gmail.com','Vendedor','2024-04-17',1400,'vespertino','096.315.743-42','26.256.358-7','SSP-DF','DF','2027-10-13',4324234234,'2015-06-26',232132131,23123,2313123,23123,'corrente','23123123123'),(10,'Leandro Miguel Nascimento','1997-06-17','masculino','Casado','Mestrado','70307-902','SCS Quadra 7 Bloco A',2,'Rua Benedito Rodrigues Ferreira','Asa Sul','Brasília','DF','(96) 28275-4082','(96) 28275-4082','leandro_nascimento@gmail.com','Dono','2024-04-22',450.47,'Integral','383.066.319-60','41.534.984-9','SSP','DF','2018-05-30',787272,'2020-06-02',78967,13,2450,4575784,'Conta corrente','email');
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 10:15:06
