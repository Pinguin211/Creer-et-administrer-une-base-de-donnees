-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (3,333),(2,666),(1,999);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cinema` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_director` int DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_director` (`id_director`),
  CONSTRAINT `cinema_ibfk_1` FOREIGN KEY (`id_director`) REFERENCES `director` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cinema`
--

LOCK TABLES `cinema` WRITE;
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
INSERT INTO `cinema` VALUES (11,222,'Le grand écran'),(22,888,'BigScreen'),(33,555,'TV'),(44,NULL,'CD');
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,1,'alice'),(2,2,'bob'),(3,3,'carol'),(4,4,'dave'),(5,5,'eve'),(6,6,'frank'),(7,7,'grace'),(8,8,'hank'),(9,9,'irene'),(10,10,'jack'),(11,11,'kate'),(12,12,'lucas'),(13,13,'mary'),(14,14,'nancy'),(15,15,'oliver'),(16,1002,'JenPiere');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `director_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=889 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (222,222),(555,555),(888,888);
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (31,'American History X'),(27,'Blade Runner'),(29,'Casino'),(23,'Django Unchained'),(30,'Dunkerque'),(4,'Fight Club'),(2,'Forrest Gump'),(18,'Forrest Gump 2'),(11,'Gladiator'),(5,'Inception'),(28,'Inglourious Basterds'),(14,'Interstellar'),(25,'La La Land'),(9,'Le Bon, la Brute et le Truand'),(19,'Le Labyrinthe de Pan'),(22,'Le Loup de Wall Street'),(6,'Le Parrain'),(26,'Le Prestige'),(12,'Le Retour du Roi'),(16,'Le Roi Lion'),(1,'Le Seigneur des Anneaux'),(8,'Le Silence des Agneaux'),(13,'Le Voyage de Chihiro'),(20,'Les Affranchis'),(21,'Les Cinq Légendes'),(10,'Les Évadés'),(7,'Matrix'),(3,'Pulp Fiction'),(24,'Retour vers le Futur'),(17,'The Dark Knight');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cinema` int NOT NULL,
  `nb` int NOT NULL,
  `max_place` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cinema` (`id_cinema`),
  CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`id_cinema`) REFERENCES `cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,11,1,100),(2,11,2,100),(3,11,3,150),(4,11,4,200),(5,11,5,200),(6,22,1,20),(7,22,2,30),(8,22,3,40),(9,33,1,30),(10,33,2,30),(11,44,1,30),(12,44,2,66);
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_salle` int NOT NULL,
  `id_film` int NOT NULL,
  `datehour` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_salle` (`id_salle`),
  KEY `id_film` (`id_film`),
  CONSTRAINT `seance_ibfk_1` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id`),
  CONSTRAINT `seance_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES (1,1,10,'2023-09-24 14:00:00'),(2,2,5,'2023-09-25 15:30:00'),(3,3,20,'2023-09-26 12:15:00'),(4,4,12,'2023-09-27 17:45:00'),(5,5,8,'2023-09-28 09:20:00'),(6,6,12,'2023-09-29 14:30:00'),(7,7,3,'2023-09-30 16:45:00'),(8,8,29,'2023-10-01 11:00:00'),(9,9,7,'2023-10-02 18:30:00'),(10,10,17,'2023-10-03 10:15:00'),(11,11,25,'2023-10-04 14:45:00'),(12,12,4,'2023-10-05 19:10:00'),(13,1,11,'2023-10-06 09:40:00'),(14,2,30,'2023-10-07 13:20:00'),(15,3,9,'2023-10-08 15:55:00'),(16,4,22,'2023-10-09 12:05:00'),(17,5,6,'2023-10-10 17:25:00'),(18,6,14,'2023-10-11 11:30:00'),(19,7,28,'2023-10-12 16:00:00'),(20,8,1,'2023-10-13 08:45:00'),(21,9,19,'2023-10-14 19:40:00'),(22,10,26,'2023-10-15 14:50:00'),(23,11,2,'2023-10-16 10:10:00'),(24,12,16,'2023-10-17 17:15:00'),(25,1,18,'2023-10-18 12:25:00'),(26,2,27,'2023-10-19 16:35:00'),(27,3,13,'2023-10-20 09:15:00'),(28,4,21,'2023-10-21 13:50:00'),(29,5,23,'2023-10-22 18:20:00'),(30,6,24,'2023-10-23 10:55:00');
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarif`
--

DROP TABLE IF EXISTS `tarif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarif` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarif`
--

LOCK TABLES `tarif` WRITE;
/*!40000 ALTER TABLE `tarif` DISABLE KEYS */;
INSERT INTO `tarif` VALUES (1,'Plein tarif',9.20),(2,'Étudiant',7.60),(3,'Moins de 14 ans',5.90);
/*!40000 ALTER TABLE `tarif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_seance` int NOT NULL,
  `id_client` int NOT NULL,
  `id_tarif` int NOT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_seance` (`id_seance`),
  KEY `id_client` (`id_client`),
  KEY `id_tarif` (`id_tarif`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`id_client`) REFERENCES `client` (`id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`id_tarif`) REFERENCES `tarif` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,5,12,2,1),(2,7,6,1,0),(3,2,9,3,1),(4,11,1,1,0),(5,9,15,3,1),(6,8,5,2,1),(7,1,3,3,0),(8,6,14,1,1),(9,10,7,1,1),(10,12,4,2,0),(11,3,8,3,1),(12,15,11,2,0),(13,4,13,3,1),(14,13,2,1,0),(15,14,10,2,1),(16,27,1,3,1),(17,30,15,1,0),(18,16,5,2,1),(19,20,9,3,1),(20,21,7,1,0),(21,25,3,2,1),(22,19,12,3,1),(23,23,6,1,0),(24,28,14,2,1),(25,29,4,3,1),(26,17,8,1,0),(27,24,13,2,1),(28,18,2,3,1),(29,26,11,1,0);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'alice@example.com','hashed_password'),(2,'bob@example.com','hashed_password'),(3,'carol@example.com','hashed_password'),(4,'dave@example.com','hashed_password'),(5,'eve@example.com','hashed_password'),(6,'frank@example.com','hashed_password'),(7,'grace@example.com','hashed_password'),(8,'hank@example.com','hashed_password'),(9,'irene@example.com','hashed_password'),(10,'jack@example.com','hashed_password'),(11,'kate@example.com','hashed_password'),(12,'lucas@example.com','hashed_password'),(13,'mary@example.com','hashed_password'),(14,'nancy@example.com','hashed_password'),(15,'oliver@example.com','hashed_password'),(222,'jorge@director.com','hashed_password'),(333,'jorge@admin.com','hashed_password'),(555,'yuri@director.com','hashed_password'),(666,'yuri@admin.com','hashed_password'),(888,'robert@director.com','hashed_password'),(999,'robert@admin.com','hashed_password'),(1002,'jp-pii@union.vf','58ad983135fe15c5a8e2e15fb5b501aedcf70dc2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 18:52:39
