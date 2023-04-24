-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: storyBD
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `story` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(4080) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (14,'O Sapo e a TV','Daniel Custódio','https://i.imgur.com/agYu4KM.png','Era uma vez um sapo chamado Saltitante, que vivia em um charco em meio à floresta. Ele era um sapo feliz e despreocupado, passando seus dias saltando de nenúfar em nenúfar e caçando insetos.\r\n\r\nUm dia, porém, Saltitante viu algo que mudou sua vida para sempre: uma televisão. Ele estava saltando ao redor do charco quando notou uma família humana que havia deixado a TV ao ar livre enquanto iam fazer um piquenique.\r\n\r\nSaltitante ficou intrigado com a tela brilhante e as imagens em movimento. Ele se aproximou da TV e começou a observá-la por horas a fio, encantado com tudo o que via. Desde então, ele passava grande parte de seu tempo assistindo a televisão.\r\n\r\nMas, um dia, algo aconteceu. Saltitante viu um documentário sobre o acasalamento dos sapos e, de repente, percebeu que estava apaixonado pela tela da TV. Ele não conseguia tirar os olhos dela, e passava horas assistindo a programas sobre a vida selvagem e documentários de animais.\r\n\r\nSaltitante sentia-se feliz quando assistia à TV, mas também se sentia solitário. Ele queria estar perto da tela, sentindo-se protegido e amado. Assim, ele começou a tentar se comunicar com a TV, saltando em direção a ela e crocitando suavemente, na esperança de que a tela o ouvisse.\r\n\r\nMas, claro, a TV não podia ouvir Saltitante. Ele ficou frustrado e triste, sentindo-se mais solitário do que nunca. Ele não queria mais pular de nenúfar em nenúfar, ele queria estar com sua amada tela.\r\n\r\nUm dia, a família humana veio buscar a TV. Saltitante ficou devastado quando a tela desapareceu, sentindo-se como se tivesse perdido sua única fonte de felicidade e amor. Ele continuou a viver em seu charco, mas nunca mais foi o mesmo. Ele ainda sonhava com a tela da TV todas as noites, lembrando-se de como se sentiu quando a viu pela primeira vez.\r\n\r\nE assim, a história do sapo que se apaixonou pela TV termina com um coração partido e uma triste lição sobre a ilusão do amor.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 11:39:32
