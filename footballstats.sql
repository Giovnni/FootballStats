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
  `logo` varchar(255) DEFAULT NULL,
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
INSERT INTO `club` VALUES (10,'2020-03-01 08:00:00',NULL,'Italie','Milan AC',1899,10,10,'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Logo_of_AC_Milan.svg/1200px-Logo_of_AC_Milan.svg.png'),(9,'2020-03-01 08:00:00',NULL,'Italie','Juventus',1897,9,9,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Juventus_FC_2017_logo.svg/1200px-Juventus_FC_2017_logo.svg.png'),(8,'2020-03-01 08:00:00',NULL,'Allemagne','Borrusia Dortmund',1909,8,8,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1200px-Borussia_Dortmund_logo.svg.png'),(7,'2020-03-01 08:00:00',NULL,'Allemagne','Bayern Munich',1900,7,7,'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Logo_FC_Bayern_M%C3%BCnchen_%282002%E2%80%932017%29.svg/1200px-Logo_FC_Bayern_M%C3%BCnchen_%282002%E2%80%932017%29.svg.png'),(6,'2020-03-01 08:00:00',NULL,'Pays-Bas','Ajax Amsterdam',1900,6,6,'https://upload.wikimedia.org/wikipedia/fr/c/c5/Ajax_Amsterdam.png'),(5,'2020-03-01 08:00:00',NULL,'France','PSG',2011,5,5,'https://upload.wikimedia.org/wikipedia/fr/thumb/8/86/Paris_Saint-Germain_Logo.svg/1024px-Paris_Saint-Germain_Logo.svg.png'),(4,'2020-03-01 08:00:00',NULL,'Angleterre','Liverpool',1892,4,4,'https://upload.wikimedia.org/wikipedia/fr/thumb/5/54/Logo_FC_Liverpool.svg/1200px-Logo_FC_Liverpool.svg.png'),(3,'2020-03-01 08:00:00',NULL,'Angleterre','Manchester United',1878,3,3,'https://upload.wikimedia.org/wikipedia/fr/thumb/b/b9/Logo_Manchester_United.svg/1011px-Logo_Manchester_United.svg.png'),(1,'2020-03-01 08:00:00',NULL,'Espagne','FC Barcelone',1899,1,1,'https://upload.wikimedia.org/wikipedia/fr/thumb/a/a1/Logo_FC_Barcelona.svg/758px-Logo_FC_Barcelona.svg.png'),(2,'2020-03-01 08:00:00',NULL,'Espagne','Real Madrid',1902,2,2,'https://upload.wikimedia.org/wikipedia/fr/thumb/c/c7/Logo_Real_Madrid.svg/1200px-Logo_Real_Madrid.svg.png');
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
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi0c12blainj5dnlu4h5ey82gc` (`club_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'2020-03-01 08:00:00',NULL,'1958-09-27 00:00:00','Espagne','Quique','Setién',1,'https://sf.sports.fr/wp-content/uploads/2020/01/setien_reuters-750x368.jpg'),(2,'2020-03-01 08:00:00',NULL,'1972-06-23 00:00:00','France','Zinedine','Zidane',2,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Zinedine_Zidane_2018.jpg/220px-Zinedine_Zidane_2018.jpg'),(3,'2020-03-01 08:00:00',NULL,'1973-02-26 00:00:00','Norvégien','Ole Gunnar','Soljkaer',3,'https://www.sofoot.com/IMG/joueurs/ole-gunnar-solskjaer-2059.jpg'),(4,'2020-03-01 08:00:00',NULL,'1967-06-16 00:00:00','Allemagne','Jurgen','Klopp',4,'https://upload.wikimedia.org/wikipedia/commons/6/63/Liverpool_vs._Chelsea%2C_UEFA_Super_Cup_2019-08-14_04.jpg'),(5,'2020-03-01 08:00:00',NULL,'1973-08-29 00:00:00','Allemagne','Thomas','Tuchel',5,'https://upload.wikimedia.org/wikipedia/commons/6/6f/2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93175.jpg'),(6,'2020-03-01 08:00:00',NULL,'1970-02-02 00:00:00','Pays-Bas','Erik','ten Hag',6,'https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Erik_ten_Hag_2017.jpg/280px-Erik_ten_Hag_2017.jpg'),(7,'2020-03-01 08:00:00',NULL,'1965-02-24 00:00:00','Allemagne','Hans-Dieter','Flick',7,'https://img.aws.la-croix.com/2019/11/10/1301059634/coach-interimaire-Bayern-Munich-Hans-Dieter-Flickrepalkce-joueurs-Borussia-Dortmund-Allianz-Arena-9-novembre-2019_1_730_1176.jpg'),(8,'2020-03-01 08:00:00',NULL,'1957-11-02 00:00:00','Suisse','Lucien','Favre',8,'https://s.hs-data.com/bilder/spieler/gross/20279.jpg'),(9,'2020-03-01 08:00:00',NULL,'1959-01-10 00:00:00','Italie','Maurizio','Sarri',9,'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Maurizio_Sarri_at_Baku_before_2019_UEFA_Europe_League_Final.jpg/280px-Maurizio_Sarri_at_Baku_before_2019_UEFA_Europe_League_Final.jpg'),(10,'2020-03-01 08:00:00',NULL,'1965-10-20 00:00:00','Italie','Stefano','Pioli',10,'https://www.sport.fr/wp-content/uploads/2019/10/Stefano-Pioli-759x500.jpg');
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
  `image` varchar(255) DEFAULT NULL,
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
INSERT INTO `player` VALUES (1,'2020-03-01 08:00:00',NULL,'1987-06-24 00:00:00','Argentina','Lionel',170,'Messi',10,'Striker/Right Wing',72,1,1,'https://upload.wikimedia.org/wikipedia/commons/c/c1/Lionel_Messi_20180626.jpg'),(2,'2020-03-01 08:00:00',NULL,'1987-12-19 00:00:00','France','Karim',185,'Benzema',9,'Striker',81,2,2,'https://upload.wikimedia.org/wikipedia/commons/a/ae/CSKA-RM18_%289%29.jpg'),(3,'2020-03-01 08:00:00',NULL,'1993-03-15 00:00:00','France','Paul',191,'Pogba',6,'Midfielder',84,3,3,'https://upload.wikimedia.org/wikipedia/commons/f/fc/FRA-ARG_%2811%29_-_Paul_Pogba_%28cropped%29.jpg'),(4,'2020-03-01 08:00:00',NULL,'1991-07-08 00:00:00','Pays-Bas','Virgil',193,'Van Dijk',4,'CenterBack',92,4,4,'https://upload.wikimedia.org/wikipedia/commons/9/90/FC_Salzburg_gegen_Liverpool_FC_%28UEFA_Champions_League_10.Dezember_2019%29_19.jpg'),(5,'2020-03-01 08:00:00',NULL,'1987-02-14 00:00:00','Urugay','Edinson',184,'Cavani',9,'Striker',71,5,5,'https://upload.wikimedia.org/wikipedia/commons/8/88/Edinson_Cavani_2018.jpg'),(6,'2020-03-01 08:00:00',NULL,'1993-03-19 00:00:00','Maroc','Hakim',181,'Ziyech',7,'Right Wing',67,6,6,'https://upload.wikimedia.org/wikipedia/commons/5/51/%D8%AD%D9%83%D9%8A%D9%85_%D8%B2%D9%8A%D8%A7%D8%B4.jpg'),(7,'2020-03-01 08:00:00',NULL,'1988-08-21 00:00:00','Pologne','Robert',184,'Lewandowski',9,'Striker',80,7,7,'https://upload.wikimedia.org/wikipedia/commons/d/d6/2019147195017_2019-05-27_Fussball_1.FC_Kaiserslautern_vs_FC_Bayern_M%C3%BCnchen_-_Sven_-_1D_X_MK_II_-_2036_-_B70I0336.jpg'),(8,'2020-03-01 08:00:00',NULL,'2000-03-25 00:00:00','Angleterre','Jadon',180,'Sancho',7,'Right Wing',76,8,8,'https://upload.wikimedia.org/wikipedia/commons/1/16/FC_Salzburg_gegen_Manchester_City_FC_%28U19_8._Februar_2017%29_09_%28cropped%29.jpg'),(9,'2020-03-01 08:00:00',NULL,'1993-11-15 00:00:00','Argentine','Paulo',177,'Dybala',10,'RightWing/Midfilder',75,9,9,'https://upload.wikimedia.org/wikipedia/commons/b/b2/2017_FRIENDLY_MATCH_RUSSIA_v_ARGENTINA_-_Paulo_Dybala_01.jpg'),(10,'2020-03-01 08:00:00',NULL,'1981-10-03 00:00:00','Suede','Zlatan',195,'Ibrahimovic',21,'Striker',95,10,10,'https://upload.wikimedia.org/wikipedia/commons/0/09/Zlatan_Ibrahimovi%C4%87_June_2018.jpg');
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
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK882kcsu2stfgegnimr3epe9k9` (`club_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES (1,'2020-03-01 08:00:00',NULL,'1963-02-06 00:00:00','Espagne','Josep Maria','Bartomeu',1,'https://upload.wikimedia.org/wikipedia/commons/c/cc/Josep_Maria_Bartomeu_2015_%28cropped%29.jpg'),(2,'2020-03-01 08:00:00',NULL,'1947-03-08 00:00:00','Espagne','Florentino','Pérez',2,'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Florentino_P%C3%A9rez_2016_%28cropped%29.jpg/800px-Florentino_P%C3%A9rez_2016_%28cropped%29.jpg'),(3,'2020-03-01 08:00:00',NULL,'1970-10-20 00:00:00','Etats-Unis','Joel','Glazer',3,'https://static.clubs.nfl.com/image/private/t_editorial_landscape_8_desktop_mobile/f_auto/buccaneers/rfe3sk5wylt2heekkuui.jpg'),(4,'2020-03-01 08:00:00',NULL,'1950-04-12 00:00:00','Etats-Unis','Tom','Werner',4,'https://www.gstatic.com/tv/thumb/persons/1906/1906_v9_ba.jpg'),(5,'2020-03-01 08:00:00',NULL,'1973-11-12 00:00:00','Qatar','Nasser','al-Khelaïfi',5,'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Nasser_Al-Khelaifi.jpg/800px-Nasser_Al-Khelaifi.jpg'),(6,'2020-03-01 08:00:00',NULL,'1954-03-07 00:00:00','Pays-Bas','Hennie','Henrichs',6,'https://www.mokummadness.nl/assets/images/henrichs-482x476.jpg'),(7,'2020-03-01 08:00:00',NULL,'1954-07-03 00:00:00','Allemagne','Herbert','Hainer',7,'https://img.fcbayern.com/image/fetch/f_auto,h_880,q_auto:good,w_660/https://fcbayern.com/binaries/content/gallery/fc-bayern/homepage/club/offizielle/hainer/191511_hainer_don.jpg/191511_hainer_don.jpg/fcbhippo%3Alargeninetotwelve%3Fv%3D1573854107179'),(8,'2020-03-01 08:00:00',NULL,'1946-12-25 00:00:00','Allemagne','Reinhard ','Rauball',8,'https://www.dfl.de/wp-content/uploads/sites/3/2018/11/rauball-reinhard.jpg'),(9,'2020-03-01 08:00:00',NULL,'1975-12-06 00:00:00','Italie','Andrea','Agnelli',9,'https://www.infinitamente-juventus.fr/wp-content/uploads/2017/03/Screenshot_2017-03-08-10-13-01-1.png'),(10,'2020-03-01 08:00:00',NULL,'1946-11-28 00:00:00','Italie','Paolo','Scaroni',10,'https://www.econostrum.info/photo/art/default/6488889-9786300.jpg?v=1396508857');
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
  `player_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrcvc2nv4sxhv8yranymgbwj96` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
INSERT INTO `stats` VALUES (1,'2020-03-01 08:00:00',NULL,57,98,86,96,79,99,0),(2,'2020-03-01 08:00:00',NULL,65,82,82,83,81,88,0),(3,'2020-03-01 08:00:00',NULL,86,81,76,86,89,81,0),(4,'2020-03-01 08:00:00',NULL,99,54,86,84,98,56,0),(5,'2020-03-01 08:00:00',NULL,86,76,82,81,89,90,0),(6,'2020-03-01 08:00:00',NULL,61,86,79,86,73,87,0),(7,'2020-03-01 08:00:00',NULL,65,82,83,75,84,92,0),(8,'2020-03-01 08:00:00',NULL,63,92,83,91,76,87,0),(9,'2020-03-01 08:00:00',NULL,70,91,82,92,79,86,0),(10,'2020-03-01 08:00:00',NULL,63,84,72,83,92,96,0);
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

-- Dump completed on 2020-03-03  5:39:29
