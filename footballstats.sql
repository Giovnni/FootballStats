-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: footballstats
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `id` bigint NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `yearCreation` int NOT NULL,
  `coach_id` bigint DEFAULT NULL,
  `president_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhttxh7p6ycguqt8lrm4v4o5k1` (`coach_id`),
  KEY `FKki9mgj1gu20ep1j4404neknrd` (`president_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (10,'2020-03-01 08:00:00',NULL,'Italie','Milan AC',1899,10,10),(9,'2020-03-01 08:00:00',NULL,'Italie','Juventus',1897,9,9),(8,'2020-03-01 08:00:00',NULL,'Allemagne','Borrusia Dortmund',1909,8,8),(7,'2020-03-01 08:00:00',NULL,'Allemagne','Bayern Munich',1900,7,7),(6,'2020-03-01 08:00:00',NULL,'Pays-Bas','Ajax Amsterdam',1900,6,6),(5,'2020-03-01 08:00:00',NULL,'France','PSG',2011,5,5),(4,'2020-03-01 08:00:00',NULL,'Angleterre','Livarpool',1892,4,4),(3,'2020-03-01 08:00:00',NULL,'Angleterre','Manchester United',1878,3,3),(1,'2020-03-01 08:00:00',NULL,'Espagne','FC Barcelone',1899,1,1),(2,'2020-03-01 08:00:00',NULL,'Espagne','Real Madrid',1902,2,2);
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `id` bigint NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `club_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi0c12blainj5dnlu4h5ey82gc` (`club_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'2020-03-01 08:00:00',NULL,'1958-09-27 00:00:00','Espagne','Quique','Setién',1),(2,'2020-03-01 08:00:00',NULL,'1972-06-23 00:00:00','France','Zinedine','Zidane',2),(3,'2020-03-01 08:00:00',NULL,'1973-02-26 00:00:00','Norvégien','Ole Gunnar','Soljkaer',3),(4,'2020-03-01 08:00:00',NULL,'1967-06-16 00:00:00','Allemagne','Jurgen','Klopp',4),(5,'2020-03-01 08:00:00',NULL,'1973-08-29 00:00:00','Allemagne','Thomas','Tuchel',5),(6,'2020-03-01 08:00:00',NULL,'1970-02-02 00:00:00','Pays-Bas','Erik','ten Hag',6),(7,'2020-03-01 08:00:00',NULL,'1965-02-24 00:00:00','Allemagne','Hans-Dieter','Flick',7),(8,'2020-03-01 08:00:00',NULL,'1957-11-02 00:00:00','Suisse','Lucien','Favre',8),(9,'2020-03-01 08:00:00',NULL,'1959-01-10 00:00:00','Italie','Maurizio','Sarri',9),(10,'2020-03-01 08:00:00',NULL,'1965-10-20 00:00:00','Italie','Stefano','Pioli',10);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1),(1),(1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` bigint NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `height` int NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `number` int NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `weight` int NOT NULL,
  `club_id` bigint DEFAULT NULL,
  `stats_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6cc2gbvwo5ws7ugsr4hs7wwxc` (`club_id`),
  KEY `FKe1cw08bhg7yknc4q6t7l8kma9` (`stats_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'2020-03-01 08:00:00',NULL,'1987-06-24 00:00:00','Argentina','Lionel',170,'Messi',10,'Striker/Right Wing',72,1,1),(2,'2020-03-01 08:00:00',NULL,'1987-12-19 00:00:00','France','Karim',185,'Benzema',9,'Stiker',81,2,2),(3,'2020-03-01 08:00:00',NULL,'1993-03-15 00:00:00','France','Paul',191,'Pogba',6,'Midfielder',84,3,3),(4,'2020-03-01 08:00:00',NULL,'1991-07-08 00:00:00','Pays-Bas','Virgil',193,'Van Dijk',4,'CenterBack',92,4,4),(5,'2020-03-01 08:00:00',NULL,'1987-02-14 00:00:00','Urugay','Edinson',184,'Cavani',9,'Striker',71,5,5),(6,'2020-03-01 08:00:00',NULL,'1993-03-19 00:00:00','Maroc','Hakim',181,'Ziyech',7,'Right Wing',67,6,6),(7,'2020-03-01 08:00:00',NULL,'1988-08-21 00:00:00','Pologne','Robert',184,'Lewandowski',9,'Striker',80,7,7),(8,'2020-03-01 08:00:00',NULL,'2000-03-25 00:00:00','Angleterre','Jadon',180,'Sancho',7,'Right Wing',76,8,8),(9,'2020-03-01 08:00:00',NULL,'1993-11-15 00:00:00','Argentine','Paulo',177,'Dybala',10,'RightWing/Midfilder',75,9,9),(10,'2020-03-01 08:00:00',NULL,'1981-10-03 00:00:00','Suede','Zlatan',195,'Ibrahimovic',21,'Striker',95,10,10);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president` (
  `id` bigint NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `club_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK882kcsu2stfgegnimr3epe9k9` (`club_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES (1,'2020-03-01 08:00:00',NULL,'1963-02-06 00:00:00','Espagne','Josep Maria','Bartomeu',1),(2,'2020-03-01 08:00:00',NULL,'1947-03-08 00:00:00','Espagne','Florentino','Pérez',2),(3,'2020-03-01 08:00:00',NULL,'1970-10-20 00:00:00','Etats-Unis','Joel','Glazer',3),(4,'2020-03-01 08:00:00',NULL,'1950-04-12 00:00:00','Etats-Unis','Tom','Werner',4),(5,'2020-03-01 08:00:00',NULL,'1973-11-12 00:00:00','Qatar','Nasser','al-Khelaïfi',5),(6,'2020-03-01 08:00:00',NULL,'1954-03-07 00:00:00','Pays-Bas','Hennie','Henrichs',6),(7,'2020-03-01 08:00:00',NULL,'1954-07-03 00:00:00','Allemagne','Herbert','Hainer',7),(8,'2020-03-01 08:00:00',NULL,'1946-12-25 00:00:00','Allemagne','Reinhard ','Rauball',8),(9,'2020-03-01 08:00:00',NULL,'1975-12-06 00:00:00','Italie','Andrea','Agnelli',9),(10,'2020-03-01 08:00:00',NULL,'1946-11-28 00:00:00','Italie','Paolo','Scaroni',10);
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `id` bigint NOT NULL,
  `creationDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `defending` int NOT NULL,
  `dribbling` int NOT NULL,
  `pace` int NOT NULL,
  `passing` int NOT NULL,
  `physical` int NOT NULL,
  `shooting` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,'2020-03-01 08:00:00',NULL,57,98,86,96,79,99),(2,'2020-03-01 08:00:00',NULL,65,82,82,83,81,88),(3,'2020-03-01 08:00:00',NULL,86,81,76,86,89,81),(4,'2020-03-01 08:00:00',NULL,99,54,86,84,98,56),(5,'2020-03-01 08:00:00',NULL,86,76,82,81,89,90),(6,'2020-03-01 08:00:00',NULL,61,86,79,86,73,87),(7,'2020-03-01 08:00:00',NULL,65,82,83,75,84,92),(8,'2020-03-01 08:00:00',NULL,63,92,83,91,76,87),(9,'2020-03-01 08:00:00',NULL,70,91,82,92,79,86),(10,'2020-03-01 08:00:00',NULL,63,84,72,83,92,96);
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-01 21:52:50
