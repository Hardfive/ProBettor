-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: football
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Sl_fixture`
--

DROP TABLE IF EXISTS `Sl_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sl_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sl_fixture`
--

LOCK TABLES `Sl_fixture` WRITE;
/*!40000 ALTER TABLE `Sl_fixture` DISABLE KEYS */;
INSERT INTO `Sl_fixture` VALUES (1,'2023-08-14 18:00:00','Karagumruk','Besiktas'),(2,'2023-08-21 18:00:00','Samsunspor','Fenerbahce'),(3,'2023-08-28 18:00:00','Adana Demirspor','Besiktas'),(4,'2023-09-03 18:45:00','Hatayspor','Adana Demirspor');
/*!40000 ALTER TABLE `Sl_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sl_h2h`
--

DROP TABLE IF EXISTS `Sl_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sl_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sl_h2h`
--

LOCK TABLES `Sl_h2h` WRITE;
/*!40000 ALTER TABLE `Sl_h2h` DISABLE KEYS */;
INSERT INTO `Sl_h2h` VALUES ('2004-05-15','Konyaspor','Istanbulspor',0,2),('2004-08-28','Konyaspor','Istanbulspor',2,1),('2005-02-05','Samsunspor','Fenerbahce',1,1),('2005-10-22','Kayserispor','Samsunspor',6,3),('2006-02-05','Sivasspor','Samsunspor',0,3),('2006-02-11','Samsunspor','Fenerbahce',0,5),('2011-01-16','Samsunspor','Fenerbahce',0,0),('2011-12-21','Sivasspor','Samsunspor',3,2),('2012-02-02','Samsunspor','Fenerbahce',3,1),('2012-03-18','Kayserispor','Samsunspor',2,0),('2013-03-17','Pendikspor','Hatayspor',1,0),('2013-03-23','Ankaragucu','Adana Demirspor',1,4),('2014-02-26','Pendikspor','Hatayspor',1,1),('2014-09-28','Kayserispor','Samsunspor',1,1),('2015-01-28','Adana Demirspor','Rizespor',1,1),('2016-01-24','Karagumruk','Ankaragucu',1,1),('2016-02-07','Pendikspor','Hatayspor',1,1),('2017-02-12','Sivasspor','Samsunspor',2,1),('2017-08-19','Adana Demirspor','Rizespor',1,3),('2017-09-03','Sivasspor','Samsunspor',2,1),('2018-05-07','Ankaragucu','Adana Demirspor',1,1),('2018-09-02','Kasimpasa','Ankaragucu',2,1),('2018-12-23','Trabzonspor','Rizespor',4,1),('2019-07-17','Besiktas','Pendikspor',2,1),('2019-07-19','Kasimpasa','Pendikspor',1,0),('2019-08-19','Fenerbahce','Gaziantep',5,0),('2019-08-30','Kasimpasa','Ankaragucu',0,1),('2019-08-30','Kayserispor','Galatasaray',2,3),('2019-11-02','Alanyaspor','Basaksehir',0,0),('2020-02-01','Antalyaspor','Konyaspor',0,0),('2020-02-02','Gaziantep','Sivasspor',5,1),('2020-02-29','Trabzonspor','Rizespor',5,2),('2020-03-08','Rizespor','Alanyaspor',1,1),('2020-07-05','Galatasaray','Trabzonspor',1,3),('2020-08-19','Rizespor','Alanyaspor',0,3),('2020-09-26','Hatayspor','Kasimpasa',1,0),('2020-09-27','Rizespor','Alanyaspor',1,1),('2020-10-04','Alanyaspor','Hatayspor',6,0),('2020-12-14','Sivasspor','Antalyaspor',0,0),('2020-12-19','Trabzonspor','Rizespor',2,1),('2021-01-02','Alanyaspor','Basaksehir',3,0),('2021-01-21','Karagumruk','Besiktas',1,4),('2021-02-06','Basaksehir','Karagumruk',0,1),('2021-02-11','Sivasspor','Antalyaspor',0,1),('2021-02-26','Konyaspor','Gaziantep',0,0),('2021-03-07','Karagumruk','Ankaragucu',0,1),('2021-03-13','Kayserispor','Galatasaray',0,3),('2021-04-12','Fenerbahce','Gaziantep',3,1),('2021-04-21','Galatasaray','Trabzonspor',1,1),('2021-05-03','Gaziantep','Sivasspor',0,1),('2021-05-11','Kasimpasa','Ankaragucu',3,1),('2021-05-15','Antalyaspor','Konyaspor',0,0),('2021-07-17','Kayserispor','Samsunspor',0,1),('2021-07-28','Alanyaspor','Hatayspor',2,2),('2021-08-14','Hatayspor','Kasimpasa',1,1),('2021-09-04','Basaksehir','Karagumruk',3,1),('2021-09-18','Adana Demirspor','Rizespor',3,1),('2021-09-22','Kayserispor','Galatasaray',3,0),('2021-10-16','Sivasspor','Antalyaspor',2,2),('2021-10-29','Trabzonspor','Rizespor',2,1),('2021-11-05','Rizespor','Alanyaspor',2,0),('2022-01-08','Alanyaspor','Basaksehir',1,1),('2022-01-18','Karagumruk','Besiktas',0,1),('2022-01-20','Alanyaspor','Hatayspor',6,0),('2022-01-23','Galatasaray','Trabzonspor',1,2),('2022-02-05','Gaziantep','Sivasspor',5,1),('2022-02-26','Basaksehir','Karagumruk',1,2),('2022-04-17','Konyaspor','Gaziantep',4,1),('2022-04-29','Fenerbahce','Gaziantep',3,2),('2022-05-09','Antalyaspor','Konyaspor',3,2),('2022-08-27','Karagumruk','Ankaragucu',4,1),('2022-09-18','Basaksehir','Karagumruk',0,0),('2022-10-08','Antalyaspor','Konyaspor',1,1),('2022-10-15','Kayserispor','Galatasaray',2,1),('2022-10-15','Konyaspor','Gaziantep',0,1),('2022-10-31','Sivasspor','Antalyaspor',0,2),('2022-11-04','Kasimpasa','Ankaragucu',1,1),('2022-12-10','Konyaspor','Gaziantep',0,1),('2022-12-22','Adana Demirspor','Rizespor',3,4),('2023-01-22','Gaziantep','Sivasspor',1,2),('2023-01-31','Karagumruk','Besiktas',1,1),('2023-02-02','Konyaspor','Istanbulspor',0,1),('2023-02-05','Galatasaray','Trabzonspor',2,1),('2023-02-05','Hatayspor','Kasimpasa',1,0),('2023-03-03','Alanyaspor','Basaksehir',1,0),('2023-04-09','Alanyaspor','Hatayspor',3,0),('2023-06-07','Ankaragucu','Adana Demirspor',1,2),('2023-06-07','Fenerbahce','Gaziantep',3,0),('2023-08-12','Kasimpasa','Ankaragucu',3,2),('2023-08-12','Kayserispor','Galatasaray',0,0),('2023-08-12','Konyaspor','Istanbulspor',1,1),('2023-08-12','Pendikspor','Hatayspor',1,5),('2023-08-13','Adana Demirspor','Rizespor',2,1),('2023-08-13','Fenerbahce','Gaziantep',2,1),('2023-08-13','Sivasspor','Samsunspor',1,1),('2023-08-14','Alanyaspor','Basaksehir',2,0),('2023-08-14','Karagumruk','Besiktas',0,1),('2023-08-18','Antalyaspor','Konyaspor',1,1),('2023-08-19','Galatasaray','Trabzonspor',2,0),('2023-08-19','Hatayspor','Kasimpasa',0,0),('2023-08-19','Rizespor','Alanyaspor',0,0),('2023-08-20','Basaksehir','Karagumruk',0,2),('2023-08-20','Besiktas','Pendikspor',1,1),('2023-08-20','Gaziantep','Sivasspor',1,3),('2023-08-21','Ankaragucu','Adana Demirspor',1,1),('2023-08-21','Samsunspor','Fenerbahce',0,2),('2023-08-25','Konyaspor','Gaziantep',2,0),('2023-08-26','Kasimpasa','Pendikspor',1,1),('2023-08-26','Sivasspor','Antalyaspor',1,1),('2023-08-26','Trabzonspor','Rizespor',2,3),('2023-08-27','Alanyaspor','Hatayspor',0,0),('2023-08-27','Karagumruk','Ankaragucu',1,1),('2023-08-27','Kayserispor','Samsunspor',2,1);
/*!40000 ALTER TABLE `Sl_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sl_scorer`
--

DROP TABLE IF EXISTS `Sl_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sl_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sl_scorer`
--

LOCK TABLES `Sl_scorer` WRITE;
/*!40000 ALTER TABLE `Sl_scorer` DISABLE KEYS */;
INSERT INTO `Sl_scorer` VALUES (1,'(Pénalty manqué)',55,'Fenerbahce','Gaziantep'),(1,'Belhanda Y.',27,'Karagumruk','Besiktas'),(1,'Carlos Eduardo',90,'Alanyaspor','Basaksehir'),(1,'Dzeko E.',3,'Fenerbahce','Gaziantep'),(1,'Dzeko E.',19,'Fenerbahce','Gaziantep'),(1,'Erdogan Y.',90,'Karagumruk','Besiktas'),(1,'Mary J.',87,'Besiktas','Karagumruk'),(1,'Novais J.',45,'Alanyaspor','Basaksehir'),(2,'Bekiroglu E.',42,'Ankaragucu','Adana Demirspor'),(2,'Cikalleshi S.',60,'Konyaspor','Antalyaspor'),(2,'Colley O.',12,'Besiktas','Pendikspor'),(2,'Dzeko E.',62,'Fenerbahce','Samsunspor'),(2,'Icardi M.',23,'Galatasaray','Trabzonspor'),(2,'Icardi M.',90,'Galatasaray','Trabzonspor'),(2,'Mendes R.',6,'Karagumruk','Basaksehir'),(2,'Niang M.',26,'Adana Demirspor','Ankaragucu'),(2,'Osmanpasa C.',44,'Sivasspor','Gaziantep'),(2,'Rodrigues G.',84,'Sivasspor','Gaziantep'),(2,'Romero O.',90,'Pendikspor','Besiktas'),(2,'Saiz S.',12,'Sivasspor','Gaziantep'),(2,'Soyalp F.',50,'Gaziantep','Sivasspor'),(2,'Szymanski S.',90,'Fenerbahce','Samsunspor'),(2,'Ugur A.',30,'Karagumruk','Basaksehir'),(2,'Vural G.',87,'Antalyaspor','Konyaspor'),(3,'Bakasetas A.',58,'Trabzonspor','Rizespor'),(3,'Bekiroglu E.',57,'Ankaragucu','Karagumruk'),(3,'Claudio Winck',81,'Kasimpasa','Pendikspor'),(3,'Destan E.',83,'Trabzonspor','Rizespor'),(3,'Guilherme',68,'Konyaspor','Gaziantep'),(3,'Keser B.',43,'Rizespor','Trabzonspor'),(3,'Keser B.',66,'Rizespor','Trabzonspor'),(3,'Larsson S.',10,'Antalyaspor','Sivasspor'),(3,'Marius',22,'Samsunspor','Kayserispor'),(3,'Mocsi A.',20,'Rizespor','Trabzonspor'),(3,'Muric R.',90,'Konyaspor','Gaziantep'),(3,'Rodrigues G.',36,'Sivasspor','Antalyaspor'),(3,'Rohden M.',44,'Karagumruk','Ankaragucu'),(3,'Romero O.',45,'Pendikspor','Kasimpasa'),(3,'Thiam M.',38,'Kayserispor','Samsunspor'),(3,'Uzodimma A.',16,'Kayserispor','Samsunspor');
/*!40000 ALTER TABLE `Sl_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sl_stats`
--

DROP TABLE IF EXISTS `Sl_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sl_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sl_stats`
--

LOCK TABLES `Sl_stats` WRITE;
/*!40000 ALTER TABLE `Sl_stats` DISABLE KEYS */;
INSERT INTO `Sl_stats` VALUES (2,'Ankaragucu','Adana Demirspor',18,12,5,4,3,4,1,1,0.00,0.00),(2,'Antalyaspor','Konyaspor',18,7,4,3,5,5,2,2,0.00,0.00),(2,'Basaksehir','Karagumruk',15,9,5,2,5,4,3,4,0.00,0.00),(2,'Besiktas','Pendikspor',15,11,6,1,6,4,4,5,0.00,0.00),(2,'Galatasaray','Trabzonspor',15,5,6,1,7,1,4,3,0.00,0.00),(2,'Gaziantep','Sivasspor',11,12,2,6,7,4,5,4,0.00,0.00),(2,'Hatayspor','Kasimpasa',8,11,2,2,3,1,0,0,0.00,0.00),(2,'Rizespor','Alanyaspor',12,9,3,2,3,3,2,3,0.00,0.00),(2,'Samsunspor','Fenerbahce',5,13,1,6,2,5,1,1,0.00,0.00),(3,'Alanyaspor','Hatayspor',15,5,5,0,9,1,4,3,0.00,0.00),(3,'Karagumruk','Ankaragucu',6,7,2,5,3,5,1,1,0.00,0.00),(3,'Kasimpasa','Pendikspor',7,16,3,6,9,2,3,2,0.00,0.00),(3,'Kayserispor','Samsunspor',11,6,4,1,3,2,0,0,0.00,0.00),(3,'Konyaspor','Gaziantep',17,8,8,3,10,2,1,2,0.00,0.00),(3,'Sivasspor','Antalyaspor',6,8,2,4,3,4,3,3,0.00,0.00),(3,'Trabzonspor','Rizespor',20,12,7,7,9,2,1,2,0.00,0.00);
/*!40000 ALTER TABLE `Sl_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sl_summary`
--

DROP TABLE IF EXISTS `Sl_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sl_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sl_summary`
--

LOCK TABLES `Sl_summary` WRITE;
/*!40000 ALTER TABLE `Sl_summary` DISABLE KEYS */;
INSERT INTO `Sl_summary` VALUES (1,'2023-08-12 16:15:00','Kasimpasa','Ankaragucu',1,0,1,2,2,4,3,2,5),(1,'2023-08-12 16:15:00','Konyaspor','Istanbulspor',0,1,1,1,0,1,1,1,2),(1,'2023-08-12 18:45:00','Kayserispor','Galatasaray',0,0,0,0,0,0,0,0,0),(1,'2023-08-12 18:45:00','Pendikspor','Hatayspor',0,2,2,1,3,4,1,5,6),(1,'2023-08-13 16:15:00','Sivasspor','Samsunspor',1,0,1,0,1,1,1,1,2),(1,'2023-08-13 18:45:00','Adana Demirspor','Rizespor',1,0,1,1,1,2,2,1,3),(1,'2023-08-13 18:45:00','Fenerbahce','Gaziantep',2,1,3,0,0,0,2,1,3),(1,'2023-08-14 18:00:00','Alanyaspor','Basaksehir',1,0,1,1,0,1,2,0,2),(1,'2023-08-14 18:00:00','Karagumruk','Besiktas',0,0,0,0,1,1,0,1,1),(2,'2023-08-18 18:00:00','Antalyaspor','Konyaspor',0,0,0,1,1,2,1,1,2),(2,'2023-08-19 16:15:00','Rizespor','Alanyaspor',0,0,0,0,0,0,0,0,0),(2,'2023-08-19 18:45:00','Galatasaray','Trabzonspor',1,0,1,1,0,1,2,0,2),(2,'2023-08-19 18:45:00','Hatayspor','Kasimpasa',0,0,0,0,0,0,0,0,0),(2,'2023-08-20 16:15:00','Basaksehir','Karagumruk',0,2,2,0,0,0,0,2,2),(2,'2023-08-20 18:45:00','Besiktas','Pendikspor',1,0,1,0,1,1,1,1,2),(2,'2023-08-20 18:45:00','Gaziantep','Sivasspor',0,2,2,1,1,2,1,3,4),(2,'2023-08-21 18:00:00','Ankaragucu','Adana Demirspor',1,1,2,0,0,0,1,1,2),(2,'2023-08-21 18:00:00','Samsunspor','Fenerbahce',0,0,0,0,2,2,0,2,2);
/*!40000 ALTER TABLE `Sl_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_Sl BEFORE INSERT ON Sl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM Sl_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM Sl_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO Sl_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_Sl BEFORE INSERT ON Sl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM Sl_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM Sl_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO Sl_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_Sl BEFORE INSERT ON Sl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM Sl_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM Sl_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO Sl_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_Sl BEFORE INSERT ON Sl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM Sl_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM Sl_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO Sl_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_Sl BEFORE INSERT ON Sl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM Sl_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM Sl_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO Sl_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_Sl BEFORE INSERT ON Sl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM Sl_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM Sl_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO Sl_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bdliga_fixture`
--

DROP TABLE IF EXISTS `bdliga_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdliga_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdliga_fixture`
--

LOCK TABLES `bdliga_fixture` WRITE;
/*!40000 ALTER TABLE `bdliga_fixture` DISABLE KEYS */;
INSERT INTO `bdliga_fixture` VALUES (1,'2023-08-20 15:30:00','Eintracht Francfort','Darmstadt'),(2,'2023-08-27 15:30:00','Bayern Munich','Augsburg'),(3,'2023-09-03 15:30:00','Union Berlin','RB Leipzig');
/*!40000 ALTER TABLE `bdliga_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bdliga_h2h`
--

DROP TABLE IF EXISTS `bdliga_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdliga_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdliga_h2h`
--

LOCK TABLES `bdliga_h2h` WRITE;
/*!40000 ALTER TABLE `bdliga_h2h` DISABLE KEYS */;
INSERT INTO `bdliga_h2h` VALUES ('2014-10-29','Wolfsburg','Heidenheim',4,1),('2015-03-13','Darmstadt','Union Berlin',5,0),('2015-12-06','Eintracht Francfort','Darmstadt',0,1),('2017-02-05','Eintracht Francfort','Darmstadt',2,0),('2017-03-10','Stuttgart','Bochum',1,1),('2017-07-22','Bochum','Dortmund',2,2),('2018-04-28','Darmstadt','Union Berlin',3,1),('2018-09-26','RB Leipzig','Stuttgart',2,0),('2018-11-25','Fribourg','Werder Brême',1,1),('2019-04-24','Werder Brême','Bayern Munich',2,3),('2019-05-05','Darmstadt','Union Berlin',2,1),('2019-09-02','Stuttgart','Bochum',2,1),('2019-10-05','Bayer Leverkusen','RB Leipzig',1,1),('2020-01-24','Dortmund','FC Cologne',5,1),('2020-02-29','Augsburg','B. Monchengladbach',2,3),('2020-03-08','Bayern Munich','Augsburg',2,0),('2020-05-23','B. Monchengladbach','Bayer Leverkusen',1,3),('2020-05-23','Fribourg','Werder Brême',0,1),('2020-05-27','Union Berlin','Mayence',1,1),('2020-06-16','Werder Brême','Bayern Munich',0,1),('2020-08-29','FC Cologne','Wolfsburg',0,3),('2020-09-26','Bayer Leverkusen','RB Leipzig',1,1),('2020-10-02','Union Berlin','Mayence',4,0),('2020-10-17','Fribourg','Werder Brême',1,1),('2020-11-28','Dortmund','FC Cologne',1,2),('2020-12-05','FC Cologne','Wolfsburg',2,2),('2021-01-02','Hoffenheim','Fribourg',1,3),('2021-01-09','Mayence','Eintracht Francfort',0,2),('2021-03-06','B. Monchengladbach','Bayer Leverkusen',0,1),('2021-03-12','Augsburg','B. Monchengladbach',3,1),('2021-03-13','Werder Brême','Bayern Munich',1,3),('2021-04-25','RB Leipzig','Stuttgart',2,0),('2021-05-22','Bayern Munich','Augsburg',5,2),('2021-07-17','Heidenheim','Hoffenheim',1,0),('2021-08-20','RB Leipzig','Stuttgart',4,0),('2021-09-18','Augsburg','B. Monchengladbach',1,0),('2021-10-30','Dortmund','FC Cologne',2,0),('2021-12-11','Bochum','Dortmund',1,1),('2022-01-15','B. Monchengladbach','Bayer Leverkusen',1,2),('2022-01-19','Hoffenheim','Fribourg',1,4),('2022-01-27','Mayence','Eintracht Francfort',0,1),('2022-02-19','Stuttgart','Bochum',1,1),('2022-02-26','Union Berlin','Mayence',3,1),('2022-04-09','Bayern Munich','Augsburg',1,0),('2022-04-17','Bayer Leverkusen','RB Leipzig',0,1),('2022-04-30','Hoffenheim','Fribourg',3,4),('2022-05-07','FC Cologne','Wolfsburg',0,1),('2022-05-14','Mayence','Eintracht Francfort',2,2),('2022-09-18','Hoffenheim','Fribourg',0,0),('2022-10-15','Stuttgart','Bochum',4,1),('2022-10-22','Fribourg','Werder Brême',2,0),('2022-11-13','Mayence','Eintracht Francfort',1,1),('2023-01-22','B. Monchengladbach','Bayer Leverkusen',2,3),('2023-01-25','Augsburg','B. Monchengladbach',1,0),('2023-01-27','RB Leipzig','Stuttgart',2,1),('2023-02-04','Union Berlin','Mayence',2,1),('2023-02-07','Eintracht Francfort','Darmstadt',4,2),('2023-02-08','Bochum','Dortmund',1,2),('2023-02-25','FC Cologne','Wolfsburg',0,2),('2023-03-11','Bayern Munich','Augsburg',5,3),('2023-03-18','Dortmund','FC Cologne',6,1),('2023-04-23','Bayer Leverkusen','RB Leipzig',2,0),('2023-04-28','Bochum','Dortmund',1,1),('2023-05-06','Werder Brême','Bayern Munich',1,2),('2023-08-18','Werder Brême','Bayern Munich',0,4),('2023-08-19','Augsburg','B. Monchengladbach',4,4),('2023-08-19','Bayer Leverkusen','RB Leipzig',3,2),('2023-08-19','Dortmund','FC Cologne',1,0),('2023-08-19','Hoffenheim','Fribourg',1,2),('2023-08-19','Stuttgart','Bochum',5,0),('2023-08-19','Wolfsburg','Heidenheim',2,0),('2023-08-20','Eintracht Francfort','Darmstadt',1,0),('2023-08-20','Union Berlin','Mayence',4,1),('2023-08-25','RB Leipzig','Stuttgart',5,1),('2023-08-26','B. Monchengladbach','Bayer Leverkusen',0,3),('2023-08-26','Bochum','Dortmund',1,1),('2023-08-26','Darmstadt','Union Berlin',1,4),('2023-08-26','FC Cologne','Wolfsburg',1,2),('2023-08-26','Fribourg','Werder Brême',1,0),('2023-08-26','Heidenheim','Hoffenheim',2,3),('2023-08-27','Bayern Munich','Augsburg',3,1),('2023-08-27','Mayence','Eintracht Francfort',1,1);
/*!40000 ALTER TABLE `bdliga_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bdliga_scorer`
--

DROP TABLE IF EXISTS `bdliga_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdliga_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdliga_scorer`
--

LOCK TABLES `bdliga_scorer` WRITE;
/*!40000 ALTER TABLE `bdliga_scorer` DISABLE KEYS */;
INSERT INTO `bdliga_scorer` VALUES (1,'Bauer M.',41,'Augsburg','B. Monchengladbach'),(1,'Behrens K.',1,'Union Berlin','Mayence'),(1,'Behrens K.',9,'Union Berlin','Mayence'),(1,'Behrens K.',70,'Union Berlin','Mayence'),(1,'Caci A.',64,'Mayence','Union Berlin'),(1,'Cvancara T.',27,'B. Monchengladbach','Augsburg'),(1,'Cvancara T.',90,'B. Monchengladbach','Augsburg'),(1,'Frimpong J.',24,'Bayer Leverkusen','RB Leipzig'),(1,'Guirassy S.',18,'Stuttgart','Bochum'),(1,'Guirassy S.',77,'Stuttgart','Bochum'),(1,'Itakura K.',13,'B. Monchengladbach','Augsburg'),(1,'Kabak O.',50,'Hoffenheim','Fribourg'),(1,'Kane H.',74,'Bayern Munich','Werder Brême'),(1,'Kolo Muani R.',40,'Eintracht Francfort','Darmstadt'),(1,'Malen D.',88,'Dortmund','FC Cologne'),(1,'Michel S.',45,'Augsburg','B. Monchengladbach'),(1,'Ngoumou N.',37,'B. Monchengladbach','Augsburg'),(1,'Olmo D.',39,'RB Leipzig','Bayer Leverkusen'),(1,'Openda L.',71,'RB Leipzig','Bayer Leverkusen'),(1,'Pantovic M.',90,'Union Berlin','Mayence'),(1,'Rexhbecaj E.',29,'Augsburg','B. Monchengladbach'),(1,'Sallai R.',45,'Fribourg','Hoffenheim'),(1,'Sane L.',4,'Bayern Munich','Werder Brême'),(1,'Sane L.',90,'Bayern Munich','Werder Brême'),(1,'Silas',60,'Stuttgart','Bochum'),(1,'Silas',67,'Stuttgart','Bochum'),(1,'Szalai At.',39,'Fribourg','Hoffenheim'),(1,'Tah J.',35,'Bayer Leverkusen','RB Leipzig'),(1,'Tel M.',90,'Bayern Munich','Werder Brême'),(1,'Vargas R.',76,'Augsburg','B. Monchengladbach'),(1,'Wind J.',6,'Wolfsburg','Heidenheim'),(1,'Wind J.',27,'Wolfsburg','Heidenheim'),(1,'Wirtz F.',64,'Bayer Leverkusen','RB Leipzig'),(1,'Zagadou D.',38,'Stuttgart','Bochum'),(2,'Behrens K.',39,'Union Berlin','Darmstadt'),(2,'Beier M.',77,'Hoffenheim','Heidenheim'),(2,'Beljo D.',86,'Augsburg','Bayern Munich'),(2,'Beste J.',26,'Heidenheim','Hoffenheim'),(2,'Boniface V.',18,'Bayer Leverkusen','B. Monchengladbach'),(2,'Boniface V.',53,'Bayer Leverkusen','B. Monchengladbach'),(2,'Doekhi D.',65,'Union Berlin','Darmstadt'),(2,'Gosens R.',4,'Union Berlin','Darmstadt'),(2,'Gosens R.',34,'Union Berlin','Darmstadt'),(2,'Guirassy S.',35,'Stuttgart','RB Leipzig'),(2,'Henrichs B.',51,'RB Leipzig','Stuttgart'),(2,'Kaderabek P.',81,'Hoffenheim','Heidenheim'),(2,'Kampl K.',74,'RB Leipzig','Stuttgart'),(2,'Kane H.',40,'Bayern Munich','Augsburg'),(2,'Kane H.',69,'Bayern Munich','Augsburg'),(2,'Kramaric A.',90,'Hoffenheim','Heidenheim'),(2,'Lee Jae-Sung',25,'Mayence','Eintracht Francfort'),(2,'Malen D.',56,'Dortmund','Bochum'),(2,'Marmoush O.',90,'Eintracht Francfort','Mayence'),(2,'Mehlem M.',24,'Darmstadt','Union Berlin'),(2,'Olmo D.',63,'RB Leipzig','Stuttgart'),(2,'Openda L.',66,'RB Leipzig','Stuttgart'),(2,'Philipp M.',90,'Fribourg','Werder Brême'),(2,'Pieringer M.',58,'Heidenheim','Hoffenheim'),(2,'Simons X.',76,'RB Leipzig','Stuttgart'),(2,'Stoger K.',13,'Bochum','Dortmund'),(2,'Tah J.',45,'Bayer Leverkusen','B. Monchengladbach'),(2,'Uduokhai F.',32,'Bayern Munich','Augsburg'),(2,'Waldschmidt L.',55,'FC Cologne','Wolfsburg'),(2,'Wind J.',62,'Wolfsburg','FC Cologne'),(2,'Wind J.',72,'Wolfsburg','FC Cologne');
/*!40000 ALTER TABLE `bdliga_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bdliga_stats`
--

DROP TABLE IF EXISTS `bdliga_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdliga_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdliga_stats`
--

LOCK TABLES `bdliga_stats` WRITE;
/*!40000 ALTER TABLE `bdliga_stats` DISABLE KEYS */;
INSERT INTO `bdliga_stats` VALUES (1,'Augsburg','B. Monchengladbach',20,9,8,6,8,7,1,2,2.39,2.39),(1,'Bayer Leverkusen','RB Leipzig',11,13,7,6,4,5,1,2,1.39,1.39),(1,'Dortmund','FC Cologne',12,11,2,4,6,3,1,0,1.28,1.28),(1,'Eintracht Francfort','Darmstadt',10,11,4,2,7,3,2,3,1.69,1.69),(1,'Hoffenheim','Fribourg',24,17,5,8,4,2,0,1,2.08,2.08),(1,'Stuttgart','Bochum',19,4,9,1,7,0,1,1,3.33,3.33),(1,'Union Berlin','Mayence',12,9,7,3,3,1,1,5,1.88,1.88),(1,'Werder Brême','Bayern Munich',6,25,1,10,0,6,2,1,0.57,0.57),(1,'Wolfsburg','Heidenheim',18,13,8,1,1,7,3,0,3.24,3.24),(2,'B. Monchengladbach','Bayer Leverkusen',13,24,2,10,5,8,2,3,0.72,0.72),(2,'Bayern Munich','Augsburg',19,11,6,2,10,4,1,2,2.83,2.83),(2,'Bochum','Dortmund',17,13,6,3,5,4,2,1,0.99,0.99),(2,'Darmstadt','Union Berlin',18,12,6,6,3,5,2,2,2.49,2.49),(2,'FC Cologne','Wolfsburg',14,9,2,6,6,1,1,5,0.99,0.99),(2,'Fribourg','Werder Brême',23,16,6,2,5,5,2,2,2.62,2.62),(2,'Heidenheim','Hoffenheim',19,16,9,6,10,6,1,5,2.49,2.49),(2,'Mayence','Eintracht Francfort',13,8,7,2,5,4,3,4,1.36,1.36),(2,'RB Leipzig','Stuttgart',20,8,11,3,4,4,1,1,2.69,2.69);
/*!40000 ALTER TABLE `bdliga_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bdliga_summary`
--

DROP TABLE IF EXISTS `bdliga_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bdliga_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bdliga_summary`
--

LOCK TABLES `bdliga_summary` WRITE;
/*!40000 ALTER TABLE `bdliga_summary` DISABLE KEYS */;
INSERT INTO `bdliga_summary` VALUES (1,'2023-08-18 18:30:00','Werder Brême','Bayern Munich',0,1,1,0,3,3,0,4,4),(1,'2023-08-19 13:30:00','Augsburg','B. Monchengladbach',3,3,6,1,1,2,4,4,8),(1,'2023-08-19 13:30:00','Bayer Leverkusen','RB Leipzig',2,1,3,1,1,2,3,2,5),(1,'2023-08-19 13:30:00','Hoffenheim','Fribourg',0,2,2,1,0,1,1,2,3),(1,'2023-08-19 13:30:00','Stuttgart','Bochum',2,0,2,3,0,3,5,0,5),(1,'2023-08-19 13:30:00','Wolfsburg','Heidenheim',2,0,2,0,0,0,2,0,2),(1,'2023-08-19 16:30:00','Dortmund','FC Cologne',0,0,0,1,0,1,1,0,1),(1,'2023-08-20 13:30:00','Union Berlin','Mayence',2,0,2,2,1,3,4,1,5),(1,'2023-08-20 15:30:00','Eintracht Francfort','Darmstadt',1,0,1,0,0,0,1,0,1);
/*!40000 ALTER TABLE `bdliga_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_bdliga BEFORE INSERT ON bdliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM bdliga_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM bdliga_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO bdliga_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_bdliga BEFORE INSERT ON bdliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM bdliga_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM bdliga_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO bdliga_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_bdliga BEFORE INSERT ON bdliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM bdliga_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM bdliga_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO bdliga_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_bdliga BEFORE INSERT ON bdliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM bdliga_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM bdliga_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO bdliga_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_bdliga BEFORE INSERT ON bdliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM bdliga_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM bdliga_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO bdliga_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_bdliga BEFORE INSERT ON bdliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM bdliga_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM bdliga_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO bdliga_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `erdvs_fixture`
--

DROP TABLE IF EXISTS `erdvs_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erdvs_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erdvs_fixture`
--

LOCK TABLES `erdvs_fixture` WRITE;
/*!40000 ALTER TABLE `erdvs_fixture` DISABLE KEYS */;
INSERT INTO `erdvs_fixture` VALUES (1,'2023-08-13 14:45:00','Almere','Twente'),(2,'2023-08-20 14:45:00','Waalwijk','Alkmaar'),(3,'2023-08-27 14:45:00','Heerenveen','Sparta Rotterdam'),(4,'2023-09-03 14:45:00','Vitesse','Alkmaar');
/*!40000 ALTER TABLE `erdvs_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erdvs_h2h`
--

DROP TABLE IF EXISTS `erdvs_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erdvs_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erdvs_h2h`
--

LOCK TABLES `erdvs_h2h` WRITE;
/*!40000 ALTER TABLE `erdvs_h2h` DISABLE KEYS */;
INSERT INTO `erdvs_h2h` VALUES ('2004-03-07','FC Volendam','Vitesse',0,0),('2009-03-08','FC Volendam','Vitesse',1,0),('2012-09-03','Excelsior','Sittard',3,0),('2013-11-08','Heerenveen','Waalwijk',5,2),('2013-11-29','Excelsior','Sittard',2,0),('2014-12-06','Alkmaar','G.A. Eagles',2,0),('2015-02-21','Sittard','Almere City',1,2),('2015-08-12','Nijmegen','Excelsior',1,0),('2016-01-29','Sittard','Almere City',0,2),('2016-08-19','Sittard','Almere City',2,1),('2016-09-24','Alkmaar','G.A. Eagles',2,2),('2016-12-02','Heracles','Nijmegen',2,0),('2017-03-19','Excelsior','Ajax',1,1),('2017-04-22','Nijmegen','Excelsior',0,1),('2017-09-01','Sittard','Almere City',2,1),('2017-12-17','Sparta Rotterdam','Feyenoord',0,7),('2018-03-31','Zwolle','Sparta Rotterdam',2,0),('2018-04-17','Twente','Zwolle',2,0),('2018-05-06','Excelsior','Ajax',1,2),('2018-08-11','Ajax','Heracles',1,1),('2018-08-11','Excelsior','Sittard',1,1),('2018-08-11','PSV','Utrecht',4,0),('2018-09-07','G.A. Eagles','FC Volendam',3,0),('2018-11-11','Excelsior','Ajax',1,7),('2019-01-26','Almere','Twente',1,3),('2019-08-25','Zwolle','Sparta Rotterdam',2,2),('2019-10-18','G.A. Eagles','FC Volendam',3,0),('2019-11-09','Heerenveen','Sparta Rotterdam',2,1),('2019-11-10','Twente','Zwolle',2,1),('2019-11-23','Ajax','Heracles',4,1),('2020-01-17','Zwolle','Utrecht',3,3),('2020-02-22','Feyenoord','Sittard',2,1),('2020-02-23','Vitesse','PSV',1,2),('2020-07-26','FC Volendam','Vitesse',0,5),('2020-08-20','Utrecht','Heerenveen',4,1),('2020-09-26','Zwolle','Sparta Rotterdam',4,0),('2020-10-02','Utrecht','Heerenveen',1,1),('2020-10-08','Zwolle','Utrecht',3,3),('2020-10-25','Vitesse','PSV',2,1),('2020-10-31','Twente','Zwolle',5,1),('2020-11-21','Zwolle','Utrecht',1,1),('2020-11-22','Ajax','Heracles',5,0),('2020-12-13','PSV','Utrecht',2,1),('2021-01-08','Nijmegen','Excelsior',3,2),('2021-01-10','Sparta Rotterdam','Feyenoord',0,2),('2021-01-14','Heerenveen','Waalwijk',1,1),('2021-02-02','G.A. Eagles','FC Volendam',1,3),('2021-04-04','Feyenoord','Sittard',2,0),('2021-05-01','Waalwijk','Alkmaar',1,3),('2021-05-16','Heerenveen','Sparta Rotterdam',1,2),('2021-07-17','Nijmegen','Waalwijk',3,0),('2021-07-24','Heracles','Nijmegen',0,1),('2021-08-14','Waalwijk','Alkmaar',1,0),('2021-08-21','Heerenveen','Waalwijk',3,2),('2021-08-29','Heracles','Nijmegen',0,1),('2021-09-22','Zwolle','Sparta Rotterdam',1,1),('2021-09-26','Alkmaar','G.A. Eagles',5,0),('2021-10-23','Utrecht','Heerenveen',2,1),('2021-10-31','Sparta Rotterdam','Feyenoord',0,1),('2021-12-04','PSV','Utrecht',4,1),('2021-12-05','Feyenoord','Sittard',5,0),('2021-12-11','Heerenveen','Sparta Rotterdam',0,0),('2022-02-06','Ajax','Heracles',3,0),('2022-02-09','Waalwijk','Alkmaar',0,4),('2022-02-12','Vitesse','PSV',0,5),('2022-02-19','Nijmegen','Waalwijk',1,1),('2022-03-19','Twente','Zwolle',1,0),('2022-05-07','Zwolle','Utrecht',1,1),('2022-07-09','Nijmegen','Waalwijk',3,1),('2022-07-29','Heracles','Nijmegen',1,3),('2022-08-05','Heerenveen','Sparta Rotterdam',0,0),('2022-08-07','Alkmaar','G.A. Eagles',2,0),('2022-10-08','Nijmegen','Excelsior',1,1),('2022-10-16','PSV','Utrecht',6,1),('2022-10-22','Feyenoord','Sittard',1,1),('2022-11-06','Waalwijk','Alkmaar',3,1),('2022-11-13','Nijmegen','Waalwijk',6,1),('2022-12-03','Almere','Twente',1,1),('2023-01-29','Excelsior','Ajax',1,4),('2023-02-04','Utrecht','Heerenveen',1,0),('2023-02-18','FC Volendam','Vitesse',2,0),('2023-02-25','Heerenveen','Waalwijk',1,4),('2023-03-19','Vitesse','PSV',1,1),('2023-04-02','Sparta Rotterdam','Feyenoord',1,3),('2023-05-21','Excelsior','Sittard',3,0),('2023-05-21','G.A. Eagles','FC Volendam',3,0),('2023-08-11','FC Volendam','Vitesse',1,2),('2023-08-12','Ajax','Heracles',4,1),('2023-08-12','Heerenveen','Waalwijk',3,1),('2023-08-12','PSV','Utrecht',2,0),('2023-08-12','Zwolle','Sparta Rotterdam',1,2),('2023-08-13','Alkmaar','G.A. Eagles',5,1),('2023-08-13','Almere','Twente',1,4),('2023-08-13','Feyenoord','Sittard',0,0),('2023-08-13','Nijmegen','Excelsior',3,4),('2023-08-18','Heracles','Nijmegen',2,1),('2023-08-19','Excelsior','Ajax',2,2),('2023-08-19','G.A. Eagles','FC Volendam',4,1),('2023-08-19','Sittard','Almere City',2,1),('2023-08-19','Vitesse','PSV',1,3),('2023-08-20','Sparta Rotterdam','Feyenoord',2,2),('2023-08-20','Twente','Zwolle',3,1),('2023-08-20','Utrecht','Heerenveen',0,2),('2023-08-20','Waalwijk','Alkmaar',1,3),('2023-08-26','Excelsior','Sittard',2,2),('2023-08-26','Nijmegen','Waalwijk',3,0),('2023-08-27','Feyenoord','Almere City',6,1),('2023-08-27','Heerenveen','Sparta Rotterdam',1,3),('2023-08-27','Zwolle','Utrecht',1,0);
/*!40000 ALTER TABLE `erdvs_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erdvs_scorer`
--

DROP TABLE IF EXISTS `erdvs_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erdvs_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erdvs_scorer`
--

LOCK TABLES `erdvs_scorer` WRITE;
/*!40000 ALTER TABLE `erdvs_scorer` DISABLE KEYS */;
INSERT INTO `erdvs_scorer` VALUES (1,'Agrafiotis N.',12,'Excelsior','Nijmegen'),(1,'Baas Y.',36,'Nijmegen','Excelsior'),(1,'de Wit D.',87,'Alkmaar','G.A. Eagles'),(1,'Kramer M.',60,'Waalwijk','Heerenveen'),(1,'Lauritsen T.',70,'Sparta Rotterdam','Zwolle'),(1,'Nicolaescu I.',24,'Heerenveen','Waalwijk'),(1,'Ogawa K.',60,'Nijmegen','Excelsior'),(1,'Omorrowa R.',73,'Excelsior','Nijmegen'),(1,'Pavlidis V.',15,'Alkmaar','G.A. Eagles'),(1,'Post D.',72,'Almere','Twente'),(1,'Propper R.',59,'Twente','Almere'),(1,'Sahraoui O.',43,'Heerenveen','Waalwijk'),(1,'Tielemans M.',60,'Vitesse','FC Volendam'),(1,'van Bommel R.',51,'Alkmaar','G.A. Eagles'),(1,'Vlap M.',66,'Twente','Almere'),(1,'Widell C.',53,'Excelsior','Nijmegen'),(2,'Agrafiotis N.',48,'Excelsior','Ajax'),(2,'Akujobi H.',8,'Sittard','Almere City'),(2,'Brobbey B.',25,'Ajax','Excelsior'),(2,'Brym C.',40,'Sparta Rotterdam','Feyenoord'),(2,'Brym C.',54,'Sparta Rotterdam','Feyenoord'),(2,'de Jong L.',70,'PSV','Vitesse'),(2,'de Wit D.',59,'Alkmaar','Waalwijk'),(2,'Druijf F.',33,'Zwolle','Twente'),(2,'Edvardsen O.',36,'G.A. Eagles','FC Volendam'),(2,'Gimenez S.',77,'Feyenoord','Sparta Rotterdam'),(2,'Hansson E.',61,'Heracles','Nijmegen'),(2,'Horemans S.',45,'Excelsior','Ajax'),(2,'Karlsbakk D. S.',90,'Heerenveen','Utrecht'),(2,'Klaassen D.',72,'Ajax','Excelsior'),(2,'Kramer M.',41,'Waalwijk','Alkmaar'),(2,'Kuipers B.',13,'G.A. Eagles','FC Volendam'),(2,'Llansana E.',86,'G.A. Eagles','FC Volendam'),(2,'Ogawa K.',24,'Nijmegen','Heracles'),(2,'Ouahim A.',74,'Heracles','Nijmegen'),(2,'Pavlidis V.',54,'Alkmaar','Waalwijk'),(2,'Pavlidis V.',79,'Alkmaar','Waalwijk'),(2,'Robinet T.',33,'Almere City','Sittard'),(2,'Rosier L.',24,'Sittard','Almere City'),(2,'Sadilek M.',18,'Twente','Zwolle'),(2,'Sahraoui O.',69,'Heerenveen','Utrecht'),(2,'Saibari I.',48,'PSV','Vitesse'),(2,'Sauer L.',90,'Feyenoord','Sparta Rotterdam'),(2,'Schendelaar J.',90,'Twente','Zwolle'),(2,'Steijn S.',76,'Twente','Zwolle'),(2,'van Ginkel M.',19,'Vitesse','PSV'),(2,'van Mieghem D.',61,'FC Volendam','G.A. Eagles'),(2,'Vertessen Y.',64,'PSV','Vitesse'),(2,'Willumsson W. T.',40,'G.A. Eagles','FC Volendam'),(3,'Agrafiotis N.',30,'Excelsior','Sittard'),(3,'Belkheir M.',78,'Sittard','Excelsior'),(3,'Bochniewicz P.',71,'Heerenveen','Sparta Rotterdam'),(3,'Druijf F.',69,'Zwolle','Utrecht'),(3,'Duarte D.',68,'Sittard','Excelsior'),(3,'Geertruida L.',19,'Feyenoord','Almere City'),(3,'Gimenez S.',4,'Feyenoord','Almere City'),(3,'Gimenez S.',65,'Feyenoord','Almere City'),(3,'Gonzalez R.',90,'Nijmegen','Waalwijk'),(3,'Igor Paixao',10,'Feyenoord','Almere City'),(3,'Lauritsen T.',34,'Sparta Rotterdam','Heerenveen'),(3,'Mattsson M.',23,'Nijmegen','Waalwijk'),(3,'Mattsson M.',90,'Nijmegen','Waalwijk'),(3,'Oscar U.',73,'Excelsior','Sittard'),(3,'Ritmeester van de Kamp J.',89,'Almere City','Feyenoord'),(3,'Saito K.',53,'Sparta Rotterdam','Heerenveen'),(3,'Saito K.',62,'Sparta Rotterdam','Heerenveen'),(3,'Timber Q.',90,'Feyenoord','Almere City'),(3,'Wieffer M.',50,'Feyenoord','Almere City');
/*!40000 ALTER TABLE `erdvs_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erdvs_stats`
--

DROP TABLE IF EXISTS `erdvs_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erdvs_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erdvs_stats`
--

LOCK TABLES `erdvs_stats` WRITE;
/*!40000 ALTER TABLE `erdvs_stats` DISABLE KEYS */;
INSERT INTO `erdvs_stats` VALUES (1,'Ajax','Heracles',31,7,13,2,13,4,2,5,2.00,2.00),(1,'Alkmaar','G.A. Eagles',13,9,8,4,5,4,2,3,3.00,3.00),(1,'Almere','Twente',12,20,4,8,2,11,4,0,1.00,1.00),(1,'FC Volendam','Vitesse',4,13,4,9,3,7,3,1,1.00,1.00),(1,'Feyenoord','Sittard',22,14,6,5,8,3,0,6,1.00,1.00),(1,'Heerenveen','Waalwijk',19,13,9,5,7,2,0,1,1.00,1.00),(1,'Nijmegen','Excelsior',8,6,6,6,2,7,1,2,1.00,1.00),(1,'PSV','Utrecht',23,7,8,1,4,2,2,1,1.00,1.00),(1,'Zwolle','Sparta Rotterdam',20,9,7,4,7,1,2,4,0.00,0.00),(2,'Excelsior','Ajax',12,15,2,8,4,10,0,0,1.25,1.25),(2,'G.A. Eagles','FC Volendam',8,19,6,5,4,12,1,3,0.54,0.54),(2,'Heracles','Nijmegen',16,17,7,4,5,9,2,2,1.06,1.06),(2,'Sittard','Almere City',21,8,7,5,5,6,3,2,1.39,1.39),(2,'Sparta Rotterdam','Feyenoord',10,24,5,8,3,12,2,0,0.78,0.78),(2,'Twente','Zwolle',18,9,3,4,8,3,2,5,1.37,1.37),(2,'Utrecht','Heerenveen',12,12,6,6,9,2,0,1,0.94,0.94),(2,'Vitesse','PSV',12,19,2,7,4,7,0,1,1.66,1.66),(2,'Waalwijk','Alkmaar',7,15,5,7,1,10,2,1,1.70,1.70),(3,'Excelsior','Sittard',9,13,6,5,0,6,1,2,1.88,1.88),(3,'Feyenoord','Almere City',31,6,18,1,8,2,0,1,3.10,3.10),(3,'Heerenveen','Sparta Rotterdam',19,16,6,7,6,7,0,0,2.54,2.54),(3,'Nijmegen','Waalwijk',13,10,10,1,2,4,1,2,1.95,1.95),(3,'Zwolle','Utrecht',9,10,2,1,2,8,2,3,1.11,1.11);
/*!40000 ALTER TABLE `erdvs_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erdvs_summary`
--

DROP TABLE IF EXISTS `erdvs_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erdvs_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erdvs_summary`
--

LOCK TABLES `erdvs_summary` WRITE;
/*!40000 ALTER TABLE `erdvs_summary` DISABLE KEYS */;
INSERT INTO `erdvs_summary` VALUES (1,'2023-08-11 18:00:00','FC Volendam','Vitesse',1,0,1,0,2,2,1,2,3),(1,'2023-08-12 14:30:00','PSV','Utrecht',1,0,1,1,0,1,2,0,2),(1,'2023-08-12 16:45:00','Heerenveen','Waalwijk',3,0,3,0,1,1,3,1,4),(1,'2023-08-12 18:00:00','Ajax','Heracles',1,1,2,3,0,3,4,1,5),(1,'2023-08-12 19:00:00','Zwolle','Sparta Rotterdam',0,1,1,1,1,2,1,2,3),(1,'2023-08-13 10:15:00','Nijmegen','Excelsior',2,1,3,1,3,4,3,4,7),(1,'2023-08-13 12:30:00','Alkmaar','G.A. Eagles',2,0,2,3,1,4,5,1,6),(1,'2023-08-13 12:30:00','Feyenoord','Sittard',0,0,0,0,0,0,0,0,0),(1,'2023-08-13 14:45:00','Almere','Twente',0,0,0,1,4,5,1,4,5),(2,'2023-08-18 18:00:00','Heracles','Nijmegen',0,1,1,2,0,2,2,1,3),(2,'2023-08-19 14:30:00','Excelsior','Ajax',1,1,2,1,1,2,2,2,4),(2,'2023-08-19 16:45:00','Vitesse','PSV',1,0,1,0,3,3,1,3,4),(2,'2023-08-19 18:00:00','Sittard','Almere City',2,1,3,0,0,0,2,1,3),(2,'2023-08-19 19:00:00','G.A. Eagles','FC Volendam',3,0,3,1,1,2,4,1,5),(2,'2023-08-20 10:15:00','Utrecht','Heerenveen',0,0,0,0,2,2,0,2,2),(2,'2023-08-20 12:30:00','Sparta Rotterdam','Feyenoord',1,0,1,1,2,3,2,2,4),(2,'2023-08-20 12:30:00','Twente','Zwolle',1,1,2,2,0,2,3,1,4),(2,'2023-08-20 14:45:00','Waalwijk','Alkmaar',1,0,1,0,3,3,1,3,4);
/*!40000 ALTER TABLE `erdvs_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_erdvs BEFORE INSERT ON erdvs_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM erdvs_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM erdvs_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO erdvs_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_erdvs BEFORE INSERT ON erdvs_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM erdvs_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM erdvs_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO erdvs_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_erdvs BEFORE INSERT ON erdvs_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM erdvs_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM erdvs_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO erdvs_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_erdvs BEFORE INSERT ON erdvs_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM erdvs_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM erdvs_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO erdvs_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_erdvs BEFORE INSERT ON erdvs_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM erdvs_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM erdvs_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO erdvs_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_erdvs BEFORE INSERT ON erdvs_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM erdvs_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM erdvs_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO erdvs_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `l1_fixture`
--

DROP TABLE IF EXISTS `l1_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l1_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l1_fixture`
--

LOCK TABLES `l1_fixture` WRITE;
/*!40000 ALTER TABLE `l1_fixture` DISABLE KEYS */;
INSERT INTO `l1_fixture` VALUES (1,'2023-08-13 18:45:00','Strasbourg','Lyon'),(2,'2023-08-20 18:45:00','Lens','Rennes'),(3,'2023-08-27 18:45:00','Nice','Lyon'),(4,'2023-09-03 18:45:00','Lyon','PSG');
/*!40000 ALTER TABLE `l1_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l1_h2h`
--

DROP TABLE IF EXISTS `l1_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l1_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l1_h2h`
--

LOCK TABLES `l1_h2h` WRITE;
/*!40000 ALTER TABLE `l1_h2h` DISABLE KEYS */;
INSERT INTO `l1_h2h` VALUES ('2000-02-26','Rennes','Le Havre',2,1),('2002-01-08','Rennes','Le Havre',2,0),('2002-11-16','Rennes','Le Havre',0,0),('2004-10-22','Montpellier','Le Havre',3,0),('2005-07-29','Montpellier','Le Havre',2,1),('2007-05-14','Montpellier','Le Havre',2,1),('2008-05-02','Montpellier','Le Havre',0,0),('2008-09-13','Rennes','Le Havre',1,1),('2012-04-27','Clermont','Monaco',1,0),('2012-11-26','Clermont','Monaco',0,1),('2013-09-20','Clermont','Metz',0,0),('2015-02-28','Lens','Rennes',0,1),('2015-03-07','PSG','Lens',4,1),('2016-03-07','Clermont','Metz',2,1),('2016-09-17','Lorient','Lille',1,0),('2016-09-20','Reims','Clermont',2,1),('2016-09-23','Toulouse','PSG',2,0),('2016-10-30','Rennes','Metz',1,0),('2016-12-21','PSG','Lorient',5,0),('2017-02-18','Lorient','Nice',0,1),('2017-09-30','Reims','Clermont',1,0),('2017-11-29','Metz','Marseille',0,3),('2018-02-09','Le Havre','Brest',1,0),('2018-02-10','Toulouse','PSG',0,1),('2018-04-14','Rennes','Metz',1,2),('2018-05-15','Le Havre','Brest',2,0),('2018-08-11','Clermont','Metz',2,3),('2018-08-28','Le Havre','Brest',4,3),('2018-11-03','Strasbourg','Toulouse',1,1),('2019-02-01','Le Havre','Brest',1,1),('2019-02-24','Montpellier','Reims',2,4),('2019-03-17','Lyon','Montpellier',3,2),('2019-03-31','Toulouse','PSG',0,1),('2019-07-19','Strasbourg','Toulouse',3,1),('2019-08-10','Marseille','Reims',0,2),('2019-08-11','Lille','Nantes',2,1),('2019-09-28','Nice','Lille',1,1),('2019-11-29','Marseille','Brest',2,1),('2019-11-30','Strasbourg','Lyon',1,2),('2019-12-01','Nantes','Toulouse',2,1),('2019-12-07','Strasbourg','Toulouse',4,2),('2019-12-14','Metz','Marseille',1,1),('2020-01-25','Monaco','Strasbourg',1,3),('2020-02-02','Nice','Lyon',2,1),('2020-09-25','Lille','Nantes',2,0),('2020-09-27','Monaco','Strasbourg',3,2),('2020-10-18','Strasbourg','Lyon',2,3),('2020-10-25','Montpellier','Reims',0,4),('2020-10-25','Nice','Lille',1,1),('2020-12-16','PSG','Lorient',2,0),('2020-12-19','Marseille','Reims',1,1),('2020-12-19','Nice','Lyon',1,4),('2020-12-23','Rennes','Metz',1,0),('2021-01-31','Nantes','Monaco',1,2),('2021-02-06','Lens','Rennes',0,0),('2021-02-13','Lyon','Montpellier',1,2),('2021-02-21','Lorient','Lille',1,4),('2021-03-13','Marseille','Brest',3,1),('2021-03-14','Lorient','Nice',1,1),('2021-04-18','Brest','Lens',1,1),('2021-05-01','PSG','Lens',2,1),('2021-05-23','Metz','Marseille',1,1),('2021-05-30','Nantes','Toulouse',0,1),('2021-08-29','Clermont','Metz',2,2),('2021-09-10','Lorient','Lille',2,1),('2021-09-22','Lorient','Nice',1,0),('2021-09-26','Clermont','Monaco',1,3),('2021-10-24','Nice','Lyon',3,2),('2021-11-21','Brest','Lens',4,0),('2021-11-27','Lille','Nantes',1,1),('2021-11-28','Monaco','Strasbourg',1,1),('2021-11-28','Reims','Clermont',1,0),('2021-12-04','Marseille','Brest',1,2),('2021-12-22','Marseille','Reims',1,1),('2022-01-08','Lens','Rennes',1,0),('2022-01-09','Nantes','Monaco',0,0),('2022-02-13','Metz','Marseille',1,2),('2022-03-02','Nantes','Monaco',3,2),('2022-03-20','Rennes','Metz',6,1),('2022-04-03','PSG','Lorient',5,1),('2022-04-10','Strasbourg','Lyon',1,1),('2022-04-17','Montpellier','Reims',0,0),('2022-04-23','Lyon','Montpellier',5,2),('2022-04-23','PSG','Lens',1,1),('2022-05-14','Nice','Lille',1,3),('2022-08-07','Marseille','Reims',4,1),('2022-08-14','Reims','Clermont',2,4),('2022-08-27','Lens','Rennes',2,1),('2022-08-28','Nantes','Toulouse',3,1),('2022-08-31','Toulouse','PSG',0,3),('2022-10-02','Lorient','Lille',2,1),('2022-10-30','Lorient','Nice',1,2),('2022-11-13','Montpellier','Reims',1,1),('2023-01-22','Brest','Lens',1,3),('2023-01-29','Nice','Lille',1,0),('2023-01-29','Strasbourg','Toulouse',1,2),('2023-02-05','Brest','Lens',1,1),('2023-02-05','Clermont','Monaco',0,2),('2023-04-02','Monaco','Strasbourg',4,3),('2023-04-09','Nantes','Monaco',2,2),('2023-04-15','PSG','Lens',3,1),('2023-04-28','Strasbourg','Lyon',1,2),('2023-04-29','Nantes','Toulouse',1,5),('2023-04-30','PSG','Lorient',1,3),('2023-05-07','Lyon','Montpellier',5,4),('2023-05-27','Lille','Nantes',2,1),('2023-05-27','Marseille','Brest',1,2),('2023-06-03','Nice','Lyon',3,1),('2023-08-11','Nice','Lille',1,1),('2023-08-12','Marseille','Reims',2,1),('2023-08-12','PSG','Lorient',0,0),('2023-08-13','Brest','Lens',3,2),('2023-08-13','Clermont','Monaco',2,4),('2023-08-13','Montpellier','Le Havre',2,2),('2023-08-13','Nantes','Toulouse',1,2),('2023-08-13','Rennes','Metz',5,1),('2023-08-13','Strasbourg','Lyon',2,1),('2023-08-18','Metz','Marseille',2,2),('2023-08-19','Lyon','Montpellier',1,4),('2023-08-19','Toulouse','PSG',1,1),('2023-08-20','Le Havre','Brest',1,2),('2023-08-20','Lens','Rennes',1,1),('2023-08-20','Lille','Nantes',2,0),('2023-08-20','Lorient','Nice',1,1),('2023-08-20','Monaco','Strasbourg',3,0),('2023-08-20','Reims','Clermont',2,0),('2023-08-25','Nantes','Monaco',3,3),('2023-08-26','Marseille','Brest',2,0),('2023-08-26','PSG','Lens',3,1),('2023-08-27','Clermont','Metz',0,1),('2023-08-27','Lorient','Lille',4,1),('2023-08-27','Montpellier','Reims',1,3),('2023-08-27','Nice','Lyon',0,0),('2023-08-27','Rennes','Le Havre',2,2),('2023-08-27','Strasbourg','Toulouse',2,0);
/*!40000 ALTER TABLE `l1_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l1_scorer`
--

DROP TABLE IF EXISTS `l1_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l1_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l1_scorer`
--

LOCK TABLES `l1_scorer` WRITE;
/*!40000 ALTER TABLE `l1_scorer` DISABLE KEYS */;
INSERT INTO `l1_scorer` VALUES (1,'Adams A.',58,'Montpellier','Le Havre'),(1,'Adams A.',60,'Montpellier','Le Havre'),(1,'Bellegarde J.',63,'Strasbourg','Lyon'),(1,'Ben Yedder W.',43,'Monaco','Clermont'),(1,'Ben Yedder W.',70,'Monaco','Clermont'),(1,'Doku J.',67,'Rennes','Metz'),(1,'Gouiri A.',51,'Rennes','Metz'),(1,'Kalimuendo A.',20,'Rennes','Metz'),(1,'Laborde G.',18,'Nice','Lille'),(1,'Lloris G.',5,'Le Havre','Montpellier'),(1,'Mostafa Mohamed',13,'Nantes','Toulouse'),(1,'Mothiba L.',75,'Strasbourg','Lyon'),(1,'Muhammed Cham',53,'Clermont','Monaco'),(1,'Ounahi A.',23,'Marseille','Reims'),(1,'Salah I.',87,'Rennes','Metz'),(1,'Tagliafico N.',88,'Lyon','Strasbourg'),(1,'Vitinha',73,'Marseille','Reims'),(1,'Wieteska M.',7,'Clermont','Monaco'),(2,'Aboukhlal Z.',87,'Toulouse','PSG'),(2,'Adams A.',89,'Montpellier','Lyon'),(2,'Al-Tamari M.',39,'Montpellier','Lyon'),(2,'Al-Tamari M.',66,'Montpellier','Lyon'),(2,'Ben Yedder W.',58,'Monaco','Strasbourg'),(2,'Bourigeaud B.',53,'Rennes','Lens'),(2,'Brassier L.',56,'Brest','Le Havre'),(2,'Daramy M.',84,'Reims','Clermont'),(2,'David J.',66,'Lille','Nantes'),(2,'Del Castillo R.',28,'Brest','Le Havre'),(2,'Doucoure S.',77,'Lorient','Nice'),(2,'Guessand E.',64,'Nice','Lorient'),(2,'Kuzyaev D.',52,'Le Havre','Brest'),(2,'Lacazette A.',69,'Lyon','Montpellier'),(2,'Machado D.',3,'Lens','Rennes'),(2,'Mbappé K.',62,'PSG','Toulouse'),(2,'Mikautadze G.',71,'Metz','Marseille'),(2,'Minamino T.',20,'Monaco','Strasbourg'),(2,'Minamino T.',36,'Monaco','Strasbourg'),(2,'Munetsi M.',17,'Reims','Clermont'),(2,'Nordin A.',20,'Montpellier','Lyon'),(2,'Ounas A.',90,'Lille','Nantes'),(2,'Sabaly C.',65,'Metz','Marseille'),(2,'Soglo E.',14,'Marseille','Metz'),(2,'Vitinha',82,'Marseille','Metz'),(3,'Abdelhamid Y.',8,'Reims','Montpellier'),(3,'Abergel L.',9,'Lorient','Lille'),(3,'Al-Tamari M.',45,'Montpellier','Reims'),(3,'Alioui N.',40,'Le Havre','Rennes'),(3,'Alioui N.',70,'Le Havre','Rennes'),(3,'Asensio M.',45,'PSG','Lens'),(3,'Bellegarde J.',89,'Strasbourg','Toulouse'),(3,'Ben Yedder W.',58,'Monaco','Nantes'),(3,'Blas L.',10,'Rennes','Le Havre'),(3,'Boadu M.',85,'Monaco','Nantes'),(3,'Castelletto J.',15,'Nantes','Monaco'),(3,'David J.',55,'Lille','Lorient'),(3,'Emegha E.',52,'Strasbourg','Toulouse'),(3,'Faivre R.',62,'Lorient','Lille'),(3,'Guilavogui M.',90,'Lens','PSG'),(3,'Le Goff V.',67,'Lorient','Lille'),(3,'Mbappé K.',52,'PSG','Lens'),(3,'Mbappé K.',90,'PSG','Lens'),(3,'Mbemba Ch.',4,'Marseille','Brest'),(3,'Mikautadze G.',69,'Metz','Clermont'),(3,'Minamino T.',27,'Monaco','Nantes'),(3,'Mostafa Mohamed',5,'Nantes','Monaco'),(3,'Mostafa Mohamed',48,'Nantes','Monaco'),(3,'Ponceau J.',10,'Lorient','Lille'),(3,'Sarr I.',65,'Marseille','Brest'),(3,'Teuma T.',41,'Reims','Montpellier'),(3,'Teuma T.',56,'Reims','Montpellier'),(3,'Wooh C.',24,'Rennes','Le Havre');
/*!40000 ALTER TABLE `l1_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l1_stats`
--

DROP TABLE IF EXISTS `l1_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l1_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l1_stats`
--

LOCK TABLES `l1_stats` WRITE;
/*!40000 ALTER TABLE `l1_stats` DISABLE KEYS */;
INSERT INTO `l1_stats` VALUES (1,'Brest','Lens',15,8,8,2,6,8,2,3,3.00,3.00),(1,'Clermont','Monaco',15,14,7,8,6,2,0,4,1.00,1.00),(1,'Marseille','Reims',14,11,4,4,10,10,1,3,1.00,1.00),(1,'Montpellier','Le Havre',15,12,5,4,5,2,1,2,2.00,2.00),(1,'Nantes','Toulouse',9,9,4,5,7,5,2,2,1.00,1.00),(1,'Nice','Lille',8,12,3,5,3,3,3,2,1.00,1.00),(1,'PSG','Lorient',20,4,4,0,9,2,0,0,1.00,1.00),(1,'Rennes','Metz',29,9,14,3,5,4,0,2,4.00,4.00),(1,'Strasbourg','Lyon',8,23,2,7,1,6,2,2,1.00,1.00),(2,'Le Havre','Brest',18,10,7,5,5,3,0,2,1.24,1.24),(2,'Lens','Rennes',15,10,4,5,11,0,2,1,0.86,0.86),(2,'Lille','Nantes',18,14,8,4,7,5,0,2,1.90,1.90),(2,'Lorient','Nice',9,21,2,8,0,9,1,1,0.63,0.63),(2,'Lyon','Montpellier',7,14,3,8,6,2,4,1,0.28,0.28),(2,'Metz','Marseille',10,22,5,5,4,9,3,2,0.43,0.43),(2,'Monaco','Strasbourg',9,4,4,1,4,3,2,1,0.73,0.73),(2,'Reims','Clermont',8,11,4,4,3,10,0,0,2.06,2.06),(2,'Toulouse','PSG',8,16,2,3,5,5,0,3,0.29,0.29),(3,'Clermont','Metz',16,10,4,5,10,2,1,1,0.38,0.38),(3,'Lorient','Lille',9,18,6,7,5,8,2,4,0.00,0.00),(3,'Marseille','Brest',15,18,6,7,3,10,0,1,2.79,2.79),(3,'Montpellier','Reims',19,12,3,6,5,3,1,1,1.16,1.16),(3,'Nantes','Monaco',3,27,3,10,1,10,2,2,0.91,0.91),(3,'Nice','Lyon',21,6,4,1,7,2,1,4,1.09,1.09),(3,'PSG','Lens',17,12,7,4,5,5,0,5,1.34,1.34),(3,'Rennes','Le Havre',22,7,8,3,5,2,1,2,3.14,3.14),(3,'Strasbourg','Toulouse',11,7,3,1,3,3,1,3,2.04,2.04);
/*!40000 ALTER TABLE `l1_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l1_summary`
--

DROP TABLE IF EXISTS `l1_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l1_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l1_summary`
--

LOCK TABLES `l1_summary` WRITE;
/*!40000 ALTER TABLE `l1_summary` DISABLE KEYS */;
INSERT INTO `l1_summary` VALUES (1,'2023-08-11 19:00:00','Nice','Lille',1,0,1,0,1,1,1,1,2),(1,'2023-08-12 15:00:00','Marseille','Reims',1,1,2,1,0,1,2,1,3),(1,'2023-08-12 19:00:00','PSG','Lorient',0,0,0,0,0,0,0,0,0),(1,'2023-08-13 11:00:00','Brest','Lens',1,2,3,2,0,2,3,2,5),(1,'2023-08-13 13:00:00','Clermont','Monaco',1,2,3,1,2,3,2,4,6),(1,'2023-08-13 13:00:00','Montpellier','Le Havre',0,1,1,2,1,3,2,2,4),(1,'2023-08-13 13:00:00','Nantes','Toulouse',1,0,1,0,2,2,1,2,3),(1,'2023-08-13 15:05:00','Rennes','Metz',1,1,2,4,0,4,5,1,6),(1,'2023-08-13 18:45:00','Strasbourg','Lyon',0,0,0,2,1,3,2,1,3),(2,'2023-08-18 19:00:00','Metz','Marseille',0,1,1,2,1,3,2,2,4),(2,'2023-08-19 17:00:00','Lyon','Montpellier',0,2,2,1,2,3,1,4,5),(2,'2023-08-19 19:00:00','Toulouse','PSG',0,0,0,1,1,2,1,1,2),(2,'2023-08-20 11:00:00','Lille','Nantes',0,0,0,2,0,2,2,0,2),(2,'2023-08-20 13:00:00','Le Havre','Brest',0,1,1,1,1,2,1,2,3),(2,'2023-08-20 13:00:00','Lorient','Nice',0,0,0,1,1,2,1,1,2),(2,'2023-08-20 13:00:00','Reims','Clermont',1,0,1,1,0,1,2,0,2),(2,'2023-08-20 17:00:00','Monaco','Strasbourg',2,0,2,1,0,1,3,0,3),(2,'2023-08-20 18:45:00','Lens','Rennes',1,0,1,0,1,1,1,1,2);
/*!40000 ALTER TABLE `l1_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_l1 BEFORE INSERT ON l1_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM l1_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM l1_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l1_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_l1 BEFORE INSERT ON l1_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM l1_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM l1_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l1_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_l1 BEFORE INSERT ON l1_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM l1_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM l1_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l1_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_l1 BEFORE INSERT ON l1_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM l1_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM l1_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l1_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_l1 BEFORE INSERT ON l1_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM l1_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM l1_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l1_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_l1 BEFORE INSERT ON l1_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM l1_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM l1_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l1_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `l2_fixture`
--

DROP TABLE IF EXISTS `l2_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l2_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l2_fixture`
--

LOCK TABLES `l2_fixture` WRITE;
/*!40000 ALTER TABLE `l2_fixture` DISABLE KEYS */;
INSERT INTO `l2_fixture` VALUES (1,'2023-08-07 18:45:00','Pau FC','Bordeaux'),(2,'2023-08-14 18:45:00','Bordeaux','Concarneau'),(3,'2023-08-21 18:45:00','AC Ajaccio','Bordeaux'),(4,'2023-08-28 18:45:00','Annecy','Saint-Étienne'),(5,'2023-09-02 17:00:00','Troyes','Quevilly-Rouen');
/*!40000 ALTER TABLE `l2_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l2_h2h`
--

DROP TABLE IF EXISTS `l2_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l2_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l2_h2h`
--

LOCK TABLES `l2_h2h` WRITE;
/*!40000 ALTER TABLE `l2_h2h` DISABLE KEYS */;
INSERT INTO `l2_h2h` VALUES ('1991-08-24','Dunkerque','Angers',0,0),('1992-10-03','Guingamp','Dunkerque',0,1),('1993-04-23','Dunkerque','Angers',0,0),('1994-10-29','Guingamp','Dunkerque',1,0),('1995-01-07','Dunkerque','Angers',1,0),('1996-04-09','Dunkerque','Angers',1,0),('2009-03-27','Laval','Rodez',1,1),('2009-05-29','Bastia','Troyes',2,1),('2010-09-17','Grenoble','Troyes',0,2),('2011-05-27','Amiens','Bastia',1,0),('2011-10-21','Amiens','Bastia',1,1),('2011-10-29','AC Ajaccio','Bordeaux',0,2),('2012-01-28','Troyes','Laval',3,0),('2012-02-04','Bastia','Troyes',5,1),('2012-07-18','AC Ajaccio','Bordeaux',2,1),('2012-10-06','Bastia','Troyes',3,2),('2012-11-10','Bastia','Valenciennes',2,3),('2012-12-11','Laval','Angers',1,4),('2013-02-09','AC Ajaccio','Bordeaux',1,0),('2013-08-17','Bastia','Valenciennes',2,0),('2013-09-13','Laval','Angers',4,1),('2013-09-21','Angers','Auxerre',2,0),('2013-11-08','Troyes','Laval',0,1),('2014-04-12','AC Ajaccio','Bordeaux',1,1),('2014-08-22','Troyes','Laval',0,0),('2014-09-19','Laval','Angers',3,2),('2014-09-23','Angers','Auxerre',0,0),('2015-07-11','Laval','Angers',1,2),('2016-01-02','Dunkerque','Troyes',3,4),('2016-02-06','Bastia','Troyes',2,0),('2016-07-09','Pau FC','Bordeaux',0,1),('2016-08-12','Troyes','Laval',1,0),('2017-01-27','Paris FC','Concarneau',1,0),('2017-03-31','Pau FC','Paris FC',1,1),('2017-04-07','Auxerre','Amiens',1,0),('2017-09-22','Valenciennes','Auxerre',0,2),('2017-10-13','Quevilly-Rouen','AC Ajaccio',0,1),('2018-01-20','Laval','Rodez',1,2),('2018-02-10','Bordeaux','Amiens',3,2),('2018-07-27','Valenciennes','Auxerre',3,1),('2018-10-26','Grenoble','Troyes',0,2),('2018-12-23','Bordeaux','Amiens',1,1),('2019-05-09','Laval','Rodez',1,1),('2019-08-16','Grenoble','Troyes',1,1),('2019-10-25','Auxerre','Grenoble',0,1),('2019-10-25','Paris FC','Caen',2,4),('2019-11-01','AC Ajaccio','Rodez',1,0),('2020-01-16','Pau FC','Bordeaux',3,2),('2020-01-31','Rodez','Valenciennes',1,1),('2020-02-04','Valenciennes','Guingamp',0,0),('2020-09-25','Quevilly-Rouen','Laval',0,0),('2020-10-02','Concarneau','Bastia',1,1),('2020-10-31','Paris FC','Caen',3,1),('2020-11-07','Auxerre','Amiens',2,1),('2020-12-22','Grenoble','Troyes',2,0),('2021-01-08','Dunkerque','Troyes',0,0),('2021-01-30','Guingamp','Pau FC',2,3),('2021-02-05','Guingamp','Dunkerque',0,0),('2021-02-13','Pau FC','Paris FC',1,1),('2021-03-02','AC Ajaccio','Rodez',1,0),('2021-03-13','Rodez','Valenciennes',3,0),('2021-03-20','Valenciennes','Auxerre',2,2),('2021-04-03','Caen','Pau FC',1,1),('2021-04-17','Valenciennes','Guingamp',0,1),('2021-05-08','Auxerre','Grenoble',1,1),('2021-05-18','Grenoble','Paris FC',2,0),('2021-07-03','Quevilly-Rouen','AC Ajaccio',0,3),('2021-07-10','Caen','AC Ajaccio',0,0),('2021-07-24','Grenoble','Paris FC',0,4),('2021-08-02','Auxerre','Grenoble',3,0),('2021-08-07','Amiens','Quevilly-Rouen',1,3),('2021-09-11','Caen','Pau FC',1,2),('2021-10-16','Pau FC','Paris FC',1,0),('2021-11-01','Valenciennes','Auxerre',1,2),('2021-12-18','Quevilly-Rouen','Laval',2,1),('2021-12-21','Guingamp','Dunkerque',2,1),('2022-01-08','Valenciennes','Guingamp',1,1),('2022-01-24','Caen','AC Ajaccio',2,0),('2022-02-05','Rodez','Valenciennes',0,0),('2022-02-26','AC Ajaccio','Rodez',2,1),('2022-03-05','Bastia','Valenciennes',1,1),('2022-03-15','Quevilly-Rouen','AC Ajaccio',0,0),('2022-04-09','Amiens','Bastia',0,0),('2022-04-19','Guingamp','Pau FC',3,0),('2022-04-19','Paris FC','Caen',1,0),('2022-05-14','Auxerre','Amiens',2,1),('2022-07-02','Auxerre','Grenoble',1,2),('2022-07-09','Auxerre','Amiens',2,3),('2022-07-09','Caen','AC Ajaccio',1,0),('2022-07-15','Saint-Étienne','Grenoble',1,1),('2022-07-23','Amiens','Quevilly-Rouen',1,1),('2022-07-30','Guingamp','Pau FC',4,0),('2022-08-20','Amiens','Bastia',3,1),('2022-08-27','Paris FC','Caen',1,1),('2022-08-30','Caen','Pau FC',1,1),('2022-09-10','Grenoble','Paris FC',1,2),('2022-09-10','Rodez','Valenciennes',1,1),('2022-09-17','Quevilly-Rouen','Laval',1,3),('2022-09-23','Amiens','Quevilly-Rouen',2,5),('2022-10-01','Saint-Étienne','Grenoble',2,2),('2022-10-15','Valenciennes','Guingamp',1,0),('2022-11-12','Amiens','Quevilly-Rouen',0,2),('2022-12-09','Saint-Étienne','Grenoble',3,1),('2022-12-10','Quevilly-Rouen','Laval',1,1),('2022-12-17','Angers','Auxerre',2,2),('2022-12-26','Annecy','Saint-Étienne',2,1),('2022-12-26','Pau FC','Paris FC',0,1),('2022-12-30','Bastia','Valenciennes',1,0),('2023-01-13','Bordeaux','Amiens',1,1),('2023-01-13','Laval','Rodez',3,1),('2023-02-03','Pau FC','Bordeaux',0,2),('2023-02-12','Angers','Auxerre',1,1),('2023-03-18','Annecy','Guingamp',1,1),('2023-04-29','Rodez','Saint-Étienne',1,1),('2023-05-20','Saint-Étienne','Quevilly-Rouen',4,2),('2023-07-08','Grenoble','Paris FC',0,0),('2023-07-15','Saint-Étienne','Grenoble',1,2),('2023-07-22','Caen','AC Ajaccio',0,1),('2023-07-26','Annecy','Saint-Étienne',2,3),('2023-08-05','AC Ajaccio','Rodez',1,1),('2023-08-05','Amiens','Quevilly-Rouen',1,0),('2023-08-05','Annecy','Guingamp',1,4),('2023-08-05','Concarneau','Bastia',0,0),('2023-08-05','Dunkerque','Troyes',2,2),('2023-08-05','Laval','Angers',1,0),('2023-08-05','Paris FC','Caen',0,2),('2023-08-05','Saint-Étienne','Grenoble',0,1),('2023-08-05','Valenciennes','Auxerre',1,4),('2023-08-07','Pau FC','Bordeaux',3,0),('2023-08-12','Angers','Annecy',0,0),('2023-08-12','Auxerre','Amiens',0,1),('2023-08-12','Bastia','Valenciennes',3,0),('2023-08-12','Caen','Pau FC',2,0),('2023-08-12','Grenoble','Paris FC',2,0),('2023-08-12','Guingamp','Dunkerque',0,1),('2023-08-12','Quevilly-Rouen','AC Ajaccio',0,1),('2023-08-12','Rodez','Saint-Étienne',2,1),('2023-08-12','Troyes','Laval',3,1),('2023-08-14','Bordeaux','Concarneau',1,0),('2023-08-19','Amiens','Bastia',2,1),('2023-08-19','Angers','Auxerre',2,2),('2023-08-19','Annecy','Dunkerque',3,0),('2023-08-19','Concarneau','Caen',0,2),('2023-08-19','Grenoble','Troyes',0,0),('2023-08-19','Laval','Rodez',1,0),('2023-08-19','Pau FC','Paris FC',2,0),('2023-08-19','Saint-Étienne','Quevilly-Rouen',2,1),('2023-08-19','Valenciennes','Guingamp',0,0),('2023-08-21','AC Ajaccio','Bordeaux',0,0),('2023-08-26','Auxerre','Grenoble',0,0),('2023-08-26','Bastia','Troyes',3,2),('2023-08-26','Bordeaux','Amiens',2,0),('2023-08-26','Caen','AC Ajaccio',3,0),('2023-08-26','Dunkerque','Angers',0,1),('2023-08-26','Guingamp','Pau FC',4,0),('2023-08-26','Paris FC','Concarneau',3,0),('2023-08-26','Quevilly-Rouen','Laval',0,0),('2023-08-26','Rodez','Valenciennes',0,1),('2023-08-28','Annecy','Saint-Étienne',1,1);
/*!40000 ALTER TABLE `l2_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l2_scorer`
--

DROP TABLE IF EXISTS `l2_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l2_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l2_scorer`
--

LOCK TABLES `l2_scorer` WRITE;
/*!40000 ALTER TABLE `l2_scorer` DISABLE KEYS */;
INSERT INTO `l2_scorer` VALUES (1,'Abdi A.',62,'Caen','Paris FC'),(1,'Bamba',90,'Grenoble','Saint-Étienne'),(1,'Bosetti A.',45,'Annecy','Guingamp'),(1,'Buatu J.',22,'Valenciennes','Auxerre'),(1,'Camara O.',18,'Auxerre','Valenciennes'),(1,'Camara O.',61,'Auxerre','Valenciennes'),(1,'Dong K.',17,'Troyes','Dunkerque'),(1,'El Ouazzani A.',72,'Guingamp','Annecy'),(1,'Ghrieb R.',23,'Dunkerque','Troyes'),(1,'Ghrieb R.',73,'Dunkerque','Troyes'),(1,'Hein G.',70,'Auxerre','Valenciennes'),(1,'Hein G.',79,'Auxerre','Valenciennes'),(1,'Ilic L.',13,'Troyes','Dunkerque'),(1,'Mendy A.',45,'Caen','Paris FC'),(1,'Merghem M.',90,'Guingamp','Annecy'),(1,'Picard H.',54,'Guingamp','Annecy'),(1,'Rajot L.',6,'Rodez','AC Ajaccio'),(1,'Sagna A.',74,'Guingamp','Annecy'),(1,'Sanna S.',66,'Laval','Angers'),(1,'Touho M.',90,'Amiens','Quevilly-Rouen'),(1,'Touzghar Y.',4,'AC Ajaccio','Rodez'),(1,'Touzghar Y.',45,'AC Ajaccio','Rodez'),(3,'Abdi A.',90,'Caen','Concarneau'),(3,'Balde Y.',81,'Laval','Rodez'),(3,'Beusnard S.',37,'Pau FC','Paris FC'),(3,'Boutaib K.',63,'Pau FC','Paris FC'),(3,'Caddy W.',59,'Annecy','Dunkerque'),(3,'Diony L.',45,'Angers','Auxerre'),(3,'Drame I.',44,'Bastia','Amiens'),(3,'Gelin J.',48,'Amiens','Bastia'),(3,'Hein G.',75,'Auxerre','Angers'),(3,'Larose A.',55,'Annecy','Dunkerque'),(3,'Mafouta L.',36,'Amiens','Bastia'),(3,'Mendy A.',54,'Caen','Concarneau'),(3,'Nadje G.',62,'Angers','Auxerre'),(3,'Perrin G.',17,'Auxerre','Angers'),(3,'Pierret B.',54,'Quevilly-Rouen','Saint-Étienne'),(3,'Sissoko I.',29,'Saint-Étienne','Quevilly-Rouen'),(3,'Sissoko I.',45,'Saint-Étienne','Quevilly-Rouen'),(3,'Testud K.',90,'Annecy','Dunkerque'),(4,'Abdelli H.',90,'Angers','Dunkerque'),(4,'Boutoutaou A.',6,'Valenciennes','Rodez'),(4,'Caddy W.',26,'Annecy','Saint-Étienne'),(4,'Chambost D.',48,'Saint-Étienne','Annecy'),(4,'Conte F.',70,'Bastia','Troyes'),(4,'Conte F.',80,'Bastia','Troyes'),(4,'de Preville N.',9,'Troyes','Bastia'),(4,'Diaby-Fadiga L.',42,'Paris FC','Concarneau'),(4,'Gomis D.',38,'Guingamp','Pau FC'),(4,'Hamel P.',75,'Paris FC','Concarneau'),(4,'Hamel P.',84,'Paris FC','Concarneau'),(4,'Mendy A.',36,'Caen','AC Ajaccio'),(4,'Mendy A.',45,'Caen','AC Ajaccio'),(4,'Mendy A.',63,'Caen','AC Ajaccio'),(4,'Sagna A.',50,'Guingamp','Pau FC'),(4,'Santelli B.',47,'Bastia','Troyes'),(4,'Sidibe K.',17,'Guingamp','Pau FC'),(4,'Sivis M.',89,'Guingamp','Pau FC'),(4,'Vipotnik Z.',47,'Bordeaux','Amiens'),(4,'Weissbeck G.',56,'Bordeaux','Amiens'),(4,'Zoukrou B.',29,'Troyes','Bastia');
/*!40000 ALTER TABLE `l2_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l2_stats`
--

DROP TABLE IF EXISTS `l2_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l2_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l2_stats`
--

LOCK TABLES `l2_stats` WRITE;
/*!40000 ALTER TABLE `l2_stats` DISABLE KEYS */;
INSERT INTO `l2_stats` VALUES (1,'AC Ajaccio','Rodez',20,8,6,3,7,4,1,3,0.00,0.00),(1,'Amiens','Quevilly-Rouen',5,6,2,2,9,2,1,1,0.00,0.00),(1,'Annecy','Guingamp',11,15,4,8,3,2,2,0,0.00,0.00),(1,'Concarneau','Bastia',13,8,3,1,5,6,0,3,0.00,0.00),(1,'Dunkerque','Troyes',16,14,5,7,5,4,2,1,0.00,0.00),(1,'Laval','Angers',13,6,5,2,3,4,1,3,0.00,0.00),(1,'Paris FC','Caen',2,12,0,5,2,6,2,2,0.00,0.00),(1,'Pau FC','Bordeaux',7,15,4,6,2,8,2,0,0.00,0.00),(1,'Saint-Étienne','Grenoble',17,13,4,5,6,1,2,1,0.00,0.00),(1,'Valenciennes','Auxerre',12,19,5,6,6,7,1,1,0.00,0.00),(3,'AC Ajaccio','Bordeaux',9,15,2,4,1,4,4,3,0.00,0.00),(3,'Amiens','Bastia',17,11,6,4,12,2,3,2,0.00,0.00),(3,'Angers','Auxerre',12,13,5,5,3,3,3,0,0.00,0.00),(3,'Annecy','Dunkerque',11,4,4,2,4,3,3,1,0.00,0.00),(3,'Concarneau','Caen',14,11,4,3,2,2,1,1,0.00,0.00),(3,'Grenoble','Troyes',18,6,7,1,14,5,1,1,0.00,0.00),(3,'Laval','Rodez',9,7,4,1,2,3,2,0,0.00,0.00),(3,'Pau FC','Paris FC',9,14,3,5,1,2,2,1,0.00,0.00),(3,'Saint-Étienne','Quevilly-Rouen',5,10,2,1,3,5,0,3,0.00,0.00),(3,'Valenciennes','Guingamp',9,6,3,3,3,7,4,2,0.00,0.00),(4,'Annecy','Saint-Étienne',17,10,5,4,3,3,2,2,0.00,0.00),(4,'Auxerre','Grenoble',15,7,2,4,4,3,2,2,0.00,0.00),(4,'Bastia','Troyes',24,9,6,6,6,2,2,1,0.00,0.00),(4,'Bordeaux','Amiens',17,12,7,2,6,5,5,1,0.00,0.00),(4,'Caen','AC Ajaccio',10,5,5,2,7,4,1,2,0.00,0.00),(4,'Dunkerque','Angers',13,7,9,3,3,4,3,2,0.00,0.00),(4,'Guingamp','Pau FC',23,13,9,6,6,2,3,2,0.00,0.00),(4,'Paris FC','Concarneau',13,12,6,4,3,8,1,0,0.00,0.00),(4,'Quevilly-Rouen','Laval',6,11,2,2,4,6,1,1,0.00,0.00),(4,'Rodez','Valenciennes',19,10,7,4,7,1,2,3,0.00,0.00);
/*!40000 ALTER TABLE `l2_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l2_summary`
--

DROP TABLE IF EXISTS `l2_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l2_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l2_summary`
--

LOCK TABLES `l2_summary` WRITE;
/*!40000 ALTER TABLE `l2_summary` DISABLE KEYS */;
INSERT INTO `l2_summary` VALUES (1,'2023-08-05 13:00:00','Saint-Étienne','Grenoble',0,0,0,0,1,1,0,1,1),(1,'2023-08-05 17:00:00','AC Ajaccio','Rodez',1,1,2,0,0,0,1,1,2),(1,'2023-08-05 17:00:00','Amiens','Quevilly-Rouen',0,0,0,1,0,1,1,0,1),(1,'2023-08-05 17:00:00','Annecy','Guingamp',1,0,1,0,4,4,1,4,5),(1,'2023-08-05 17:00:00','Concarneau','Bastia',0,0,0,0,0,0,0,0,0),(1,'2023-08-05 17:00:00','Dunkerque','Troyes',1,2,3,1,0,1,2,2,4),(1,'2023-08-05 17:00:00','Laval','Angers',0,0,0,1,0,1,1,0,1),(1,'2023-08-05 17:00:00','Paris FC','Caen',0,1,1,0,1,1,0,2,2),(1,'2023-08-05 17:00:00','Valenciennes','Auxerre',1,1,2,0,3,3,1,4,5),(1,'2023-08-07 18:45:00','Pau FC','Bordeaux',2,0,2,1,0,1,3,0,3),(2,'2023-08-12 13:00:00','Rodez','Saint-Étienne',1,0,1,1,1,2,2,1,3),(2,'2023-08-12 17:00:00','Angers','Annecy',0,0,0,0,0,0,0,0,0),(2,'2023-08-12 17:00:00','Auxerre','Amiens',0,0,0,0,1,1,0,1,1),(2,'2023-08-12 17:00:00','Bastia','Valenciennes',1,0,1,2,0,2,3,0,3),(2,'2023-08-12 17:00:00','Caen','Pau FC',2,0,2,0,0,0,2,0,2),(2,'2023-08-12 17:00:00','Grenoble','Paris FC',0,0,0,2,0,2,2,0,2),(2,'2023-08-12 17:00:00','Guingamp','Dunkerque',0,0,0,0,1,1,0,1,1),(2,'2023-08-12 17:00:00','Quevilly-Rouen','AC Ajaccio',0,1,1,0,0,0,0,1,1),(2,'2023-08-12 17:00:00','Troyes','Laval',2,0,2,1,1,2,3,1,4),(2,'2023-08-14 18:45:00','Bordeaux','Concarneau',0,0,0,1,0,1,1,0,1),(3,'2023-08-19 13:00:00','Angers','Auxerre',1,1,2,1,1,2,2,2,4),(3,'2023-08-19 17:00:00','Amiens','Bastia',1,1,2,1,0,1,2,1,3),(3,'2023-08-19 17:00:00','Annecy','Dunkerque',0,0,0,3,0,3,3,0,3),(3,'2023-08-19 17:00:00','Concarneau','Caen',0,0,0,0,2,2,0,2,2),(3,'2023-08-19 17:00:00','Grenoble','Troyes',0,0,0,0,0,0,0,0,0),(3,'2023-08-19 17:00:00','Laval','Rodez',0,0,0,1,0,1,1,0,1),(3,'2023-08-19 17:00:00','Pau FC','Paris FC',1,0,1,1,0,1,2,0,2),(3,'2023-08-19 17:00:00','Saint-Étienne','Quevilly-Rouen',2,0,2,0,1,1,2,1,3),(3,'2023-08-19 17:00:00','Valenciennes','Guingamp',0,0,0,0,0,0,0,0,0),(3,'2023-08-21 18:45:00','AC Ajaccio','Bordeaux',0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `l2_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_l2 BEFORE INSERT ON l2_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM l2_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM l2_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l2_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_l2 BEFORE INSERT ON l2_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM l2_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM l2_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l2_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_l2 BEFORE INSERT ON l2_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM l2_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM l2_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l2_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_l2 BEFORE INSERT ON l2_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM l2_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM l2_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l2_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_l2 BEFORE INSERT ON l2_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM l2_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM l2_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l2_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_l2 BEFORE INSERT ON l2_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM l2_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM l2_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO l2_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `laliga_fixture`
--

DROP TABLE IF EXISTS `laliga_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laliga_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laliga_fixture`
--

LOCK TABLES `laliga_fixture` WRITE;
/*!40000 ALTER TABLE `laliga_fixture` DISABLE KEYS */;
INSERT INTO `laliga_fixture` VALUES (1,'2023-08-14 19:30:00','Atl. Madrid','Grenade'),(2,'2023-08-21 19:30:00','Grenade','Vallecano'),(3,'2023-08-28 19:30:00','Vallecano','Atl. Madrid'),(4,'2023-09-03 19:00:00','Osasuna','Barcelone');
/*!40000 ALTER TABLE `laliga_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laliga_h2h`
--

DROP TABLE IF EXISTS `laliga_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laliga_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laliga_h2h`
--

LOCK TABLES `laliga_h2h` WRITE;
/*!40000 ALTER TABLE `laliga_h2h` DISABLE KEYS */;
INSERT INTO `laliga_h2h` VALUES ('2006-04-29','Barcelone','Cadix CF',1,0),('2006-10-15','Cadix CF','Alaves',1,1),('2008-02-17','Cadix CF','Alaves',2,0),('2009-09-20','Real Sociedad','Gérone',2,2),('2011-01-16','Almeria','Real Madrid',1,1),('2012-02-19','Majorque','Villarreal',4,0),('2013-03-03','Grenade','Majorque',1,2),('2013-11-23','Almeria','Real Madrid',0,5),('2014-01-04','Las Palmas','Majorque',2,2),('2014-10-17','Grenade','Vallecano',0,1),('2014-12-12','Almeria','Real Madrid',1,4),('2015-01-31','Las Palmas','Majorque',2,1),('2015-11-06','Las Palmas','Real Sociedad',2,0),('2015-12-03','Las Palmas','Real Sociedad',2,1),('2016-01-06','Vallecano','Atl. Madrid',1,1),('2016-01-21','Valence','Las Palmas',1,1),('2016-03-19','Grenade','Vallecano',2,2),('2016-08-22','Valence','Las Palmas',2,4),('2016-10-15','Atl. Madrid','Grenade',7,1),('2017-02-24','Las Palmas','Real Sociedad',0,1),('2017-03-04','Gérone','Getafe',5,1),('2017-08-18','Valence','Las Palmas',1,0),('2017-12-17','Gérone','Getafe',1,0),('2018-01-09','Valence','Las Palmas',4,0),('2018-02-11','FC Séville','Gérone',1,0),('2018-03-10','Almeria','Vallecano',0,1),('2018-04-08','Real Sociedad','Gérone',5,0),('2018-04-14','Las Palmas','Real Sociedad',0,1),('2018-05-07','Grenade','Vallecano',0,2),('2018-10-14','Grenade','Majorque',1,0),('2018-10-22','Real Sociedad','Gérone',0,0),('2018-12-16','FC Séville','Gérone',2,0),('2018-12-21','Gérone','Getafe',1,1),('2019-01-18','Getafe','Alaves',4,0),('2019-02-16','Vallecano','Atl. Madrid',0,1),('2019-03-17','Las Palmas','Majorque',1,2),('2019-08-17','Celta Vigo','Real Madrid',1,3),('2019-08-31','Getafe','Alaves',1,1),('2019-09-15','Alaves','FC Séville',0,1),('2019-09-27','Villarreal','Betis',5,1),('2019-09-28','Getafe','Barcelone',0,2),('2019-11-10','Majorque','Villarreal',3,1),('2019-12-22','Betis','Atl. Madrid',1,2),('2020-01-05','Celta Vigo','Osasuna',1,1),('2020-01-05','Grenade','Majorque',1,0),('2020-02-08','Atl. Madrid','Grenade',1,0),('2020-02-29','Cadix CF','Almeria',2,1),('2020-06-20','Ath. Bilbao','Betis',1,0),('2020-06-21','Valence','Osasuna',2,0),('2020-06-24','Real Sociedad','Celta Vigo',0,1),('2020-07-05','Villarreal','Barcelone',1,4),('2020-07-13','Almeria','Vallecano',3,2),('2020-09-09','Cadix CF','Almeria',1,1),('2020-09-27','Atl. Madrid','Grenade',6,1),('2020-10-17','Getafe','Barcelone',1,0),('2020-10-24','Osasuna','Ath. Bilbao',1,0),('2020-11-23','Ath. Bilbao','Betis',4,0),('2021-01-10','Cadix CF','Alaves',3,1),('2021-01-19','Alaves','FC Séville',1,2),('2021-01-21','Valence','Osasuna',1,1),('2021-01-27','FC Séville','Valence',3,0),('2021-01-31','Getafe','Alaves',0,0),('2021-02-14','Villarreal','Betis',1,2),('2021-02-21','Barcelone','Cadix CF',1,1),('2021-03-20','Celta Vigo','Real Madrid',1,3),('2021-04-02','Almeria','Vallecano',0,1),('2021-04-04','Las Palmas','Majorque',1,1),('2021-04-11','Betis','Atl. Madrid',1,1),('2021-04-22','Real Sociedad','Celta Vigo',2,1),('2021-04-25','Celta Vigo','Osasuna',2,1),('2021-04-25','Villarreal','Barcelone',1,2),('2021-05-12','FC Séville','Valence',1,0),('2021-05-16','Ath. Bilbao','Real Madrid',0,1),('2021-08-01','Cadix CF','Almeria',1,2),('2021-09-19','Majorque','Villarreal',0,0),('2021-09-22','FC Séville','Valence',3,1),('2021-10-03','Villarreal','Betis',2,0),('2021-10-23','Cadix CF','Alaves',0,2),('2021-11-27','Villarreal','Barcelone',1,3),('2021-12-19','Ath. Bilbao','Betis',3,2),('2021-12-19','Grenade','Majorque',4,1),('2021-12-22','Ath. Bilbao','Real Madrid',1,2),('2022-01-03','Osasuna','Ath. Bilbao',1,3),('2022-01-08','Real Sociedad','Celta Vigo',1,0),('2022-01-19','Celta Vigo','Osasuna',2,0),('2022-02-03','Ath. Bilbao','Real Madrid',1,0),('2022-02-26','Getafe','Alaves',2,2),('2022-03-04','Alaves','FC Séville',0,0),('2022-03-06','Betis','Atl. Madrid',1,3),('2022-03-19','Vallecano','Atl. Madrid',0,1),('2022-04-02','Celta Vigo','Real Madrid',1,2),('2022-04-03','Grenade','Vallecano',2,2),('2022-04-16','Valence','Osasuna',1,2),('2022-04-18','Barcelone','Cadix CF',0,1),('2022-04-20','Atl. Madrid','Grenade',0,0),('2022-05-15','Getafe','Barcelone',0,0),('2022-08-14','Almeria','Real Madrid',1,2),('2022-08-20','Celta Vigo','Real Madrid',1,4),('2022-08-22','Gérone','Getafe',3,1),('2022-10-08','Almeria','Vallecano',3,1),('2022-10-18','FC Séville','Valence',1,1),('2022-10-23','Betis','Atl. Madrid',1,2),('2022-11-05','Celta Vigo','Osasuna',1,2),('2022-12-30','Cadix CF','Almeria',1,1),('2023-01-17','Alaves','FC Séville',0,1),('2023-01-22','Ath. Bilbao','Real Madrid',0,2),('2023-02-12','Villarreal','Barcelone',0,1),('2023-02-18','Majorque','Villarreal',4,2),('2023-02-18','Real Sociedad','Celta Vigo',1,1),('2023-02-19','Barcelone','Cadix CF',2,0),('2023-03-01','Osasuna','Ath. Bilbao',1,0),('2023-03-11','Valence','Osasuna',1,0),('2023-03-12','Villarreal','Betis',1,1),('2023-04-09','Vallecano','Atl. Madrid',1,2),('2023-04-16','Getafe','Barcelone',0,0),('2023-05-01','FC Séville','Gérone',0,2),('2023-05-04','Ath. Bilbao','Betis',0,1),('2023-05-13','Real Sociedad','Gérone',2,2),('2023-05-25','Osasuna','Ath. Bilbao',2,0),('2023-08-11','Almeria','Vallecano',0,2),('2023-08-11','FC Séville','Valence',1,2),('2023-08-12','Ath. Bilbao','Real Madrid',0,2),('2023-08-12','Las Palmas','Majorque',1,1),('2023-08-12','Real Sociedad','Gérone',1,1),('2023-08-13','Celta Vigo','Osasuna',0,2),('2023-08-13','Getafe','Barcelone',0,0),('2023-08-13','Villarreal','Betis',1,2),('2023-08-14','Atl. Madrid','Grenade',3,1),('2023-08-14','Cadix CF','Alaves',1,0),('2023-08-18','Majorque','Villarreal',0,1),('2023-08-18','Valence','Las Palmas',1,0),('2023-08-19','Almeria','Real Madrid',1,3),('2023-08-19','Osasuna','Ath. Bilbao',0,2),('2023-08-19','Real Sociedad','Celta Vigo',1,1),('2023-08-20','Barcelone','Cadix CF',2,0),('2023-08-20','Betis','Atl. Madrid',0,0),('2023-08-20','Gérone','Getafe',3,0),('2023-08-21','Alaves','FC Séville',4,3),('2023-08-21','Grenade','Vallecano',0,2),('2023-08-25','Celta Vigo','Real Madrid',0,1),('2023-08-25','Las Palmas','Real Sociedad',0,0),('2023-08-26','Cadix CF','Almeria',1,1),('2023-08-26','FC Séville','Gérone',1,2),('2023-08-26','Grenade','Majorque',3,2),('2023-08-27','Ath. Bilbao','Betis',4,2),('2023-08-27','Valence','Osasuna',1,2),('2023-08-27','Villarreal','Barcelone',3,4),('2023-08-28','Getafe','Alaves',1,0),('2023-08-28','Vallecano','Atl. Madrid',0,7);
/*!40000 ALTER TABLE `laliga_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laliga_scorer`
--

DROP TABLE IF EXISTS `laliga_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laliga_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laliga_scorer`
--

LOCK TABLES `laliga_scorer` WRITE;
/*!40000 ALTER TABLE `laliga_scorer` DISABLE KEYS */;
INSERT INTO `laliga_scorer` VALUES (1,'Bellingham J.',36,'Real Madrid','Ath. Bilbao'),(1,'Cuenca J.',61,'Villarreal','Betis'),(1,'Depay M.',67,'Atl. Madrid','Grenade'),(1,'Diakhaby M.',60,'Valence','FC Séville'),(1,'Dovbyk A.',72,'Gérone','Real Sociedad'),(1,'En-Nesyri Y.',69,'FC Séville','Valence'),(1,'Garcia R.',24,'Osasuna','Celta Vigo'),(1,'Gomez M.',74,'Osasuna','Celta Vigo'),(1,'Guerra J.',88,'Valence','FC Séville'),(1,'Kubo T.',5,'Real Sociedad','Gérone'),(1,'Nteka R.',28,'Vallecano','Almeria'),(1,'Palazon I.',20,'Vallecano','Almeria'),(1,'Perez A.',20,'Betis','Villarreal'),(1,'San Emeterio F.',7,'Cadix CF','Alaves'),(2,'Abqar A.',15,'FC Séville','Alaves'),(2,'Arribas S.',3,'Almeria','Real Madrid'),(2,'Barrenetxea A.',22,'Real Sociedad','Celta Vigo'),(2,'Bellingham J.',19,'Real Madrid','Almeria'),(2,'Bellingham J.',60,'Real Madrid','Almeria'),(2,'Ciss P.',79,'Vallecano','Grenade'),(2,'Duarte R.',44,'Alaves','FC Séville'),(2,'Garcia A.',75,'Vallecano','Grenade'),(2,'Garcia K.',54,'Alaves','FC Séville'),(2,'Garcia K.',59,'Alaves','FC Séville'),(2,'Guruzeta G.',20,'Ath. Bilbao','Osasuna'),(2,'Herrera Y.',12,'Gérone','Getafe'),(2,'Lamela E.',41,'FC Séville','Alaves'),(2,'Mingueza O.',90,'Celta Vigo','Real Sociedad'),(2,'Mir R.',90,'FC Séville','Alaves'),(2,'Moreno G.',62,'Villarreal','Majorque'),(2,'Pedri',82,'Barcelone','Cadix CF'),(2,'Pepelu',74,'Valence','Las Palmas'),(2,'Rioja L.',7,'Alaves','FC Séville'),(2,'Stuani C.',55,'Gérone','Getafe'),(2,'Stuani C.',65,'Gérone','Getafe'),(2,'Torres F.',90,'Barcelone','Cadix CF'),(2,'Vinicius Junior',73,'Real Madrid','Almeria'),(2,'Williams I.',11,'Ath. Bilbao','Osasuna'),(3,'Baena A.',50,'Villarreal','Barcelone'),(3,'Bellingham J.',81,'Real Madrid','Celta Vigo'),(3,'Correa A.',79,'Atl. Madrid','Vallecano'),(3,'Costa S.',87,'Majorque','Grenade'),(3,'de Jong F.',15,'Barcelone','Villarreal'),(3,'Depay M.',16,'Atl. Madrid','Vallecano'),(3,'Duro H.',80,'Valence','Osasuna'),(3,'Foyth J.',26,'Villarreal','Barcelone'),(3,'Garcia A.',56,'Gérone','FC Séville'),(3,'Gavi',12,'Barcelone','Villarreal'),(3,'Gomez U.',84,'Ath. Bilbao','Betis'),(3,'Griezmann A.',2,'Atl. Madrid','Vallecano'),(3,'Gudelj N.',45,'FC Séville','Gérone'),(3,'Guruzeta G.',45,'Ath. Bilbao','Betis'),(3,'Hernandez L.',59,'Cadix CF','Almeria'),(3,'Herrera Y.',16,'Gérone','FC Séville'),(3,'Isco',10,'Betis','Ath. Bilbao'),(3,'Kaiky',90,'Almeria','Cadix CF'),(3,'Lewandowski R.',71,'Barcelone','Villarreal'),(3,'Llorente M.',86,'Atl. Madrid','Vallecano'),(3,'Mayoral B.',84,'Getafe','Alaves'),(3,'Molina N.',36,'Atl. Madrid','Vallecano'),(3,'Morata A.',73,'Atl. Madrid','Vallecano'),(3,'Morata A.',84,'Atl. Madrid','Vallecano'),(3,'Oroz A.',24,'Osasuna','Valence'),(3,'Prats A.',38,'Majorque','Grenade'),(3,'Rubio M.',12,'Grenade','Majorque'),(3,'Sorloth A.',40,'Villarreal','Barcelone'),(3,'Torres F.',68,'Barcelone','Villarreal'),(3,'Uzuni M.',70,'Grenade','Majorque'),(3,'Vesga M.',30,'Ath. Bilbao','Betis'),(3,'Vesga M.',45,'Ath. Bilbao','Betis'),(3,'Vidal N.',90,'Osasuna','Valence'),(3,'Willian Jose',2,'Betis','Ath. Bilbao'),(3,'Zaragoza B.',46,'Grenade','Majorque');
/*!40000 ALTER TABLE `laliga_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laliga_stats`
--

DROP TABLE IF EXISTS `laliga_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laliga_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laliga_stats`
--

LOCK TABLES `laliga_stats` WRITE;
/*!40000 ALTER TABLE `laliga_stats` DISABLE KEYS */;
INSERT INTO `laliga_stats` VALUES (1,'Almeria','Vallecano',19,10,5,4,8,3,1,3,1.49,1.49),(1,'Ath. Bilbao','Real Madrid',7,14,1,8,7,5,3,1,0.53,0.53),(1,'Atl. Madrid','Grenade',14,7,6,4,3,3,3,1,2.42,2.42),(1,'Cadix CF','Alaves',12,10,3,2,2,4,3,2,0.72,0.72),(1,'Celta Vigo','Osasuna',11,11,1,5,7,2,1,1,0.85,0.85),(1,'FC Séville','Valence',9,10,3,3,8,1,3,2,0.64,0.64),(1,'Getafe','Barcelone',5,14,2,4,3,4,8,2,0.51,0.51),(1,'Las Palmas','Majorque',5,12,2,2,3,6,3,2,0.92,0.92),(1,'Real Sociedad','Gérone',15,6,2,1,4,1,2,5,0.60,0.60),(1,'Villarreal','Betis',18,12,5,5,9,4,1,3,0.84,0.84),(2,'Alaves','FC Séville',14,12,7,2,4,4,1,2,2.09,2.09),(2,'Almeria','Real Madrid',20,25,8,9,4,5,1,0,1.32,1.32),(2,'Barcelone','Cadix CF',24,10,10,1,10,2,4,3,3.65,3.65),(2,'Betis','Atl. Madrid',14,5,0,1,2,7,2,1,0.70,0.70),(2,'Gérone','Getafe',7,9,6,2,3,2,2,5,1.51,1.51),(2,'Grenade','Vallecano',14,17,7,9,5,6,2,1,1.18,1.18),(2,'Majorque','Villarreal',8,15,1,3,6,5,2,4,0.51,0.51),(2,'Osasuna','Ath. Bilbao',18,8,7,2,5,3,1,5,0.89,0.89),(2,'Real Sociedad','Celta Vigo',11,17,2,6,9,7,2,1,0.62,0.62),(2,'Valence','Las Palmas',9,7,4,1,6,4,0,0,1.46,1.46),(3,'Ath. Bilbao','Betis',14,9,6,4,5,3,4,2,2.97,2.97),(3,'Cadix CF','Almeria',11,5,3,2,7,3,0,5,1.37,1.37),(3,'Celta Vigo','Real Madrid',13,10,4,3,3,5,2,3,1.09,1.09),(3,'FC Séville','Gérone',21,8,4,3,6,6,2,1,1.20,1.20),(3,'Getafe','Alaves',15,16,4,2,4,5,1,2,2.03,2.03),(3,'Grenade','Majorque',10,10,4,5,5,3,2,7,1.13,1.13),(3,'Las Palmas','Real Sociedad',11,8,5,1,5,7,1,4,1.47,1.47),(3,'Valence','Osasuna',16,7,4,2,6,3,3,4,0.00,0.00),(3,'Vallecano','Atl. Madrid',12,17,3,10,8,3,4,3,0.54,0.54),(3,'Villarreal','Barcelone',13,21,6,11,2,6,3,3,1.56,1.56);
/*!40000 ALTER TABLE `laliga_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laliga_summary`
--

DROP TABLE IF EXISTS `laliga_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laliga_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laliga_summary`
--

LOCK TABLES `laliga_summary` WRITE;
/*!40000 ALTER TABLE `laliga_summary` DISABLE KEYS */;
INSERT INTO `laliga_summary` VALUES (1,'2023-08-11 17:30:00','Almeria','Vallecano',0,2,2,0,0,0,0,2,2),(1,'2023-08-11 20:00:00','FC Séville','Valence',0,0,0,1,2,3,1,2,3),(1,'2023-08-12 15:00:00','Real Sociedad','Gérone',1,0,1,0,1,1,1,1,2),(1,'2023-08-12 17:30:00','Las Palmas','Majorque',1,0,1,0,1,1,1,1,2),(1,'2023-08-12 19:30:00','Ath. Bilbao','Real Madrid',0,2,2,0,0,0,0,2,2),(1,'2023-08-13 15:00:00','Celta Vigo','Osasuna',0,1,1,0,1,1,0,2,2),(1,'2023-08-13 17:30:00','Villarreal','Betis',0,1,1,1,1,2,1,2,3),(1,'2023-08-13 19:30:00','Getafe','Barcelone',0,0,0,0,0,0,0,0,0),(1,'2023-08-14 17:30:00','Cadix CF','Alaves',1,0,1,0,0,0,1,0,1),(1,'2023-08-14 19:30:00','Atl. Madrid','Grenade',1,0,1,2,1,3,3,1,4),(2,'2023-08-18 17:30:00','Majorque','Villarreal',0,0,0,0,1,1,0,1,1),(2,'2023-08-18 19:30:00','Valence','Las Palmas',0,0,0,1,0,1,1,0,1),(2,'2023-08-19 15:00:00','Real Sociedad','Celta Vigo',1,0,1,0,1,1,1,1,2),(2,'2023-08-19 17:30:00','Almeria','Real Madrid',1,1,2,0,2,2,1,3,4),(2,'2023-08-19 19:30:00','Osasuna','Ath. Bilbao',0,2,2,0,0,0,0,2,2),(2,'2023-08-20 17:00:00','Gérone','Getafe',1,0,1,2,0,2,3,0,3),(2,'2023-08-20 17:30:00','Barcelone','Cadix CF',0,0,0,2,0,2,2,0,2),(2,'2023-08-20 19:30:00','Betis','Atl. Madrid',0,0,0,0,0,0,0,0,0),(2,'2023-08-21 17:00:00','Alaves','FC Séville',2,2,4,2,1,3,4,3,7),(2,'2023-08-21 19:30:00','Grenade','Vallecano',0,0,0,0,2,2,0,2,2);
/*!40000 ALTER TABLE `laliga_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_laliga BEFORE INSERT ON laliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM laliga_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM laliga_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO laliga_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_laliga BEFORE INSERT ON laliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM laliga_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM laliga_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO laliga_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_laliga BEFORE INSERT ON laliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM laliga_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM laliga_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO laliga_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_laliga BEFORE INSERT ON laliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM laliga_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM laliga_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO laliga_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_laliga BEFORE INSERT ON laliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM laliga_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM laliga_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO laliga_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_laliga BEFORE INSERT ON laliga_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM laliga_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM laliga_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO laliga_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ligpo_fixture`
--

DROP TABLE IF EXISTS `ligpo_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligpo_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligpo_fixture`
--

LOCK TABLES `ligpo_fixture` WRITE;
/*!40000 ALTER TABLE `ligpo_fixture` DISABLE KEYS */;
INSERT INTO `ligpo_fixture` VALUES (1,'2023-08-14 19:45:00','Boavista','Benfica'),(2,'2023-08-21 19:15:00','Famalicao','Moreirense'),(3,'2023-08-28 19:15:00','Rio Ave','FC Porto'),(4,'2023-09-03 19:30:00','Braga','Sporting');
/*!40000 ALTER TABLE `ligpo_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligpo_h2h`
--

DROP TABLE IF EXISTS `ligpo_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligpo_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligpo_h2h`
--

LOCK TABLES `ligpo_h2h` WRITE;
/*!40000 ALTER TABLE `ligpo_h2h` DISABLE KEYS */;
INSERT INTO `ligpo_h2h` VALUES ('1999-12-19','FC Porto','Farense',5,0),('2001-03-04','FC Porto','Farense',2,0),('2001-11-30','FC Porto','Farense',2,0),('2004-05-02','Estrela','Guimaraes',0,1),('2005-10-22','Benfica','Estrela',2,0),('2006-01-08','Estrela','Guimaraes',2,0),('2006-01-11','Sporting','Vizela',2,1),('2006-10-22','Benfica','Estrela',3,1),('2007-12-20','Benfica','Estrela',3,0),('2008-01-06','Estrela','Guimaraes',4,1),('2008-11-16','Benfica','Estrela',1,0),('2009-05-16','Estrela','Guimaraes',1,0),('2012-03-18','Arouca','Portimonense',1,2),('2013-01-12','Arouca','Portimonense',2,0),('2013-04-14','Farense','Casa Pia',1,0),('2014-10-26','Farense','Chaves',0,1),('2015-10-24','Estoril','Rio Ave',2,2),('2015-12-13','Farense','Chaves',1,1),('2017-03-06','Estoril','Rio Ave',0,2),('2017-09-17','Farense','Casa Pia',1,2),('2017-11-04','Estoril','Rio Ave',0,2),('2018-03-18','Chaves','Braga',1,4),('2018-07-14','Rio Ave','Chaves',2,1),('2018-07-25','Famalicao','Moreirense',0,2),('2018-07-26','Chaves','Braga',0,1),('2018-08-31','Chaves','Braga',0,1),('2018-10-27','Rio Ave','Chaves',1,0),('2019-02-08','Moreirense','FC Porto',1,1),('2019-04-26','Rio Ave','FC Porto',2,2),('2019-05-11','Arouca','Estoril',2,1),('2019-08-10','Farense','Casa Pia',3,1),('2019-09-29','Rio Ave','FC Porto',0,1),('2019-10-26','Gil Vicente','Portimonense',1,1),('2019-11-03','Braga','Famalicao',2,2),('2019-11-09','Famalicao','Moreirense',3,3),('2019-11-30','Farense','Chaves',1,0),('2019-12-06','Boavista','Benfica',1,4),('2020-01-10','Moreirense','FC Porto',2,4),('2020-02-24','Gil Vicente','Benfica',0,1),('2020-07-10','Guimaraes','Gil Vicente',1,2),('2020-07-14','Portimonense','Boavista',2,1),('2020-09-27','Gil Vicente','Portimonense',1,0),('2020-11-02','Boavista','Benfica',3,0),('2020-11-02','Braga','Famalicao',1,0),('2020-12-20','Gil Vicente','Benfica',0,2),('2021-01-30','Portimonense','Boavista',1,2),('2021-02-02','Arouca','Estoril',1,0),('2021-02-04','Famalicao','Moreirense',0,2),('2021-03-14','Guimaraes','Gil Vicente',2,4),('2021-03-21','Vizela','Arouca',1,1),('2021-04-11','Sporting','Famalicao',1,1),('2021-04-26','Moreirense','FC Porto',1,1),('2021-05-10','FC Porto','Farense',5,1),('2021-05-15','Rio Ave','FC Porto',0,3),('2021-07-14','Guimaraes','Vizela',2,1),('2021-08-06','Sporting','Vizela',3,0),('2021-08-07','Arouca','Estoril',0,2),('2021-08-21','Gil Vicente','Benfica',0,2),('2021-08-22','Guimaraes','Vizela',4,0),('2021-10-26','Sporting','Famalicao',2,1),('2021-11-26','Farense','Casa Pia',0,1),('2021-12-22','Casa Pia','Sporting',1,2),('2022-01-09','Braga','Famalicao',2,2),('2022-01-23','Gil Vicente','Portimonense',1,0),('2022-02-06','Sporting','Famalicao',2,0),('2022-02-12','Portimonense','Boavista',1,1),('2022-02-13','Famalicao','Moreirense',5,0),('2022-02-18','Boavista','Benfica',2,2),('2022-02-20','Moreirense','FC Porto',0,1),('2022-04-22','Vizela','Arouca',2,1),('2022-04-30','Arouca','Portimonense',1,0),('2022-04-30','Farense','Chaves',1,2),('2022-05-15','Guimaraes','Gil Vicente',5,0),('2022-05-15','Rio Ave','Chaves',3,0),('2022-08-07','Portimonense','Boavista',0,1),('2022-08-19','Estoril','Rio Ave',2,2),('2022-08-27','Boavista','Benfica',0,3),('2022-08-28','Rio Ave','FC Porto',3,1),('2022-11-04','Gil Vicente','Portimonense',1,2),('2022-11-05','Vizela','Arouca',0,1),('2022-11-09','Guimaraes','Vizela',2,1),('2023-01-07','Arouca','Estoril',2,0),('2023-01-20','Arouca','Portimonense',4,0),('2023-01-20','Sporting','Vizela',2,1),('2023-02-05','Braga','Famalicao',4,1),('2023-02-13','Boavista','Casa Pia',0,0),('2023-02-26','Rio Ave','Chaves',1,0),('2023-04-02','Chaves','Braga',1,2),('2023-04-09','Casa Pia','Sporting',3,4),('2023-04-29','Gil Vicente','Benfica',0,2),('2023-04-30','Sporting','Famalicao',2,1),('2023-05-07','Guimaraes','Vizela',3,0),('2023-05-21','Guimaraes','Gil Vicente',1,0),('2023-08-11','Braga','Famalicao',1,2),('2023-08-12','Farense','Casa Pia',0,3),('2023-08-12','Gil Vicente','Portimonense',5,0),('2023-08-12','Sporting','Vizela',3,2),('2023-08-13','Arouca','Estoril',4,3),('2023-08-13','Estrela','Guimaraes',0,1),('2023-08-13','Rio Ave','Chaves',2,0),('2023-08-14','Boavista','Benfica',3,2),('2023-08-14','Moreirense','FC Porto',1,2),('2023-08-18','Casa Pia','Sporting',1,2),('2023-08-19','Benfica','Estrela',2,0),('2023-08-19','Chaves','Braga',2,4),('2023-08-19','Guimaraes','Gil Vicente',2,1),('2023-08-19','Portimonense','Boavista',1,4),('2023-08-20','Estoril','Rio Ave',2,0),('2023-08-20','FC Porto','Farense',2,1),('2023-08-20','Vizela','Arouca',2,2),('2023-08-21','Famalicao','Moreirense',0,0),('2023-08-25','Estrela','Estoril',2,1),('2023-08-26','Arouca','Portimonense',1,1),('2023-08-26','Farense','Chaves',5,0),('2023-08-26','Gil Vicente','Benfica',2,3),('2023-08-27','Boavista','Casa Pia',1,1),('2023-08-27','Guimaraes','Vizela',2,0),('2023-08-27','Sporting','Famalicao',1,0),('2023-08-28','Rio Ave','FC Porto',1,2);
/*!40000 ALTER TABLE `ligpo_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligpo_scorer`
--

DROP TABLE IF EXISTS `ligpo_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligpo_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligpo_scorer`
--

LOCK TABLES `ligpo_scorer` WRITE;
/*!40000 ALTER TABLE `ligpo_scorer` DISABLE KEYS */;
INSERT INTO `ligpo_scorer` VALUES (1,'Di Maria A.',22,'Benfica','Boavista'),(1,'Lourenco B.',90,'Boavista','Benfica'),(1,'Martinez T.',67,'FC Porto','Moreirense'),(1,'Rafa Silva',75,'Benfica','Boavista'),(1,'Wendell',73,'FC Porto','Moreirense'),(2,'Banza S.',80,'Braga','Chaves'),(2,'Baturina R.',55,'Gil Vicente','Guimaraes'),(2,'Bozenik R.',9,'Boavista','Portimonense'),(2,'Bruma',16,'Braga','Chaves'),(2,'Carrillo R.',90,'Portimonense','Boavista'),(2,'Clayton',58,'Casa Pia','Sporting'),(2,'Costa R.',45,'Farense','FC Porto'),(2,'Cristo',39,'Arouca','Vizela'),(2,'Essende S.',88,'Vizela','Arouca'),(2,'Hernandez H.',42,'Chaves','Braga'),(2,'Hernandez H.',52,'Chaves','Braga'),(2,'Horta R.',58,'Braga','Chaves'),(2,'Luz N.',83,'Guimaraes','Gil Vicente'),(2,'Mangala E.',55,'Estoril','Rio Ave'),(2,'Marcano I.',90,'FC Porto','Farense'),(2,'Marques A.',90,'Estoril','Rio Ave'),(2,'Martinez T.',13,'FC Porto','Farense'),(2,'Morais T.',22,'Boavista','Portimonense'),(2,'Mujica R.',64,'Arouca','Vizela'),(2,'Paulinho',3,'Sporting','Casa Pia'),(2,'Paulinho',61,'Sporting','Casa Pia'),(2,'Pizzi',90,'Braga','Chaves'),(2,'Rafa Silva',90,'Benfica','Estrela'),(2,'Relvas F.',6,'Boavista','Portimonense'),(2,'Samu',9,'Vizela','Arouca'),(2,'Tengstedt C.',79,'Benfica','Estrela'),(2,'Tiago Silva',61,'Guimaraes','Gil Vicente'),(2,'Vukotic I.',90,'Boavista','Portimonense'),(3,'Andre Silva',59,'Guimaraes','Vizela'),(3,'Belloumi M.',20,'Farense','Chaves'),(3,'Chabrol T.',74,'Gil Vicente','Benfica'),(3,'Claudio Falcao',17,'Farense','Chaves'),(3,'Clayton',33,'Casa Pia','Boavista'),(3,'Costinha',52,'Rio Ave','FC Porto'),(3,'Di Maria A.',19,'Benfica','Gil Vicente'),(3,'Dominguez M.',90,'Gil Vicente','Benfica'),(3,'Galeno',90,'FC Porto','Rio Ave'),(3,'Isidoro F.',22,'Farense','Chaves'),(3,'Leo Cordeiro',90,'Estrela','Estoril'),(3,'Malheiro P.',48,'Boavista','Casa Pia'),(3,'Marcano I.',90,'FC Porto','Rio Ave'),(3,'Marques J.',66,'Estoril','Estrela'),(3,'Mattheus',49,'Farense','Chaves'),(3,'Mendes J.',72,'Guimaraes','Vizela'),(3,'Musa P.',90,'Benfica','Gil Vicente'),(3,'Muscat Z.',10,'Farense','Chaves'),(3,'Paulinho',52,'Sporting','Famalicao'),(3,'Rafa Silva',53,'Benfica','Gil Vicente'),(3,'Sylla M.',88,'Arouca','Portimonense'),(3,'Tavares R.',47,'Estrela','Estoril'),(3,'Varela H.',5,'Portimonense','Arouca');
/*!40000 ALTER TABLE `ligpo_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligpo_stats`
--

DROP TABLE IF EXISTS `ligpo_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligpo_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligpo_stats`
--

LOCK TABLES `ligpo_stats` WRITE;
/*!40000 ALTER TABLE `ligpo_stats` DISABLE KEYS */;
INSERT INTO `ligpo_stats` VALUES (1,'Arouca','Estoril',7,12,4,7,2,6,4,2,0.51,0.51),(1,'Boavista','Benfica',10,13,3,6,3,3,6,4,2.20,2.20),(1,'Braga','Famalicao',13,12,2,4,3,4,4,4,0.89,0.89),(1,'Estrela','Guimaraes',4,9,0,3,3,10,3,3,0.43,0.43),(1,'Gil Vicente','Portimonense',8,9,5,3,1,1,0,0,1.17,1.17),(1,'Moreirense','FC Porto',9,14,1,5,5,10,4,7,0.52,0.52),(1,'Rio Ave','Chaves',21,6,10,1,14,3,3,4,3.53,3.53),(1,'Sporting','Vizela',19,10,8,4,8,3,4,0,1.61,1.61),(2,'Benfica','Estrela',27,6,10,1,9,4,3,3,2.73,2.73),(2,'Casa Pia','Sporting',13,17,3,5,4,5,4,1,0.84,0.84),(2,'Chaves','Braga',15,13,4,6,5,6,2,2,1.23,1.23),(2,'Estoril','Rio Ave',7,9,4,3,4,3,4,2,1.73,1.73),(2,'Famalicao','Moreirense',4,12,2,3,3,6,4,3,0.00,0.00),(2,'FC Porto','Farense',26,9,8,1,17,3,2,3,1.92,1.92),(2,'Guimaraes','Gil Vicente',15,11,3,3,6,4,3,3,1.04,1.04),(2,'Portimonense','Boavista',10,9,5,6,11,2,3,2,1.75,1.75),(2,'Vizela','Arouca',13,10,7,2,6,3,7,6,1.59,1.59),(3,'Arouca','Portimonense',21,5,4,2,16,2,1,2,0.92,0.92),(3,'Boavista','Casa Pia',10,10,5,7,11,4,1,0,0.00,0.00),(3,'Estrela','Estoril',15,11,3,4,8,8,1,1,1.30,1.30),(3,'Farense','Chaves',18,19,10,7,7,4,2,1,2.36,2.36),(3,'Gil Vicente','Benfica',11,14,7,7,1,5,3,3,0.05,0.05),(3,'Guimaraes','Vizela',6,9,3,4,3,4,1,3,1.25,1.25),(3,'Rio Ave','FC Porto',4,9,1,5,1,7,4,3,0.09,0.09),(3,'Sporting','Famalicao',10,7,6,1,8,1,3,2,2.17,2.17);
/*!40000 ALTER TABLE `ligpo_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ligpo_summary`
--

DROP TABLE IF EXISTS `ligpo_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ligpo_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ligpo_summary`
--

LOCK TABLES `ligpo_summary` WRITE;
/*!40000 ALTER TABLE `ligpo_summary` DISABLE KEYS */;
INSERT INTO `ligpo_summary` VALUES (1,'2023-08-11 19:15:00','Braga','Famalicao',1,0,1,0,2,2,1,2,3),(1,'2023-08-12 14:30:00','Gil Vicente','Portimonense',2,0,2,3,0,3,5,0,5),(1,'2023-08-12 17:00:00','Farense','Casa Pia',0,1,1,0,2,2,0,3,3),(1,'2023-08-12 19:30:00','Sporting','Vizela',2,0,2,1,2,3,3,2,5),(1,'2023-08-13 14:30:00','Rio Ave','Chaves',0,0,0,2,0,2,2,0,2),(1,'2023-08-13 17:00:00','Estrela','Guimaraes',0,1,1,0,0,0,0,1,1),(1,'2023-08-13 19:30:00','Arouca','Estoril',1,1,2,3,2,5,4,3,7),(1,'2023-08-14 17:45:00','Moreirense','FC Porto',0,0,0,1,2,3,1,2,3),(1,'2023-08-14 19:45:00','Boavista','Benfica',0,1,1,3,1,4,3,2,5),(2,'2023-08-18 19:15:00','Casa Pia','Sporting',0,1,1,1,1,2,1,2,3),(2,'2023-08-19 14:30:00','Guimaraes','Gil Vicente',0,0,0,2,1,3,2,1,3),(2,'2023-08-19 17:00:00','Chaves','Braga',1,1,2,1,3,4,2,4,6),(2,'2023-08-19 19:30:00','Benfica','Estrela',0,0,0,2,0,2,2,0,2),(2,'2023-08-19 19:30:00','Portimonense','Boavista',0,3,3,1,1,2,1,4,5),(2,'2023-08-20 14:30:00','Estoril','Rio Ave',0,0,0,2,0,2,2,0,2),(2,'2023-08-20 17:00:00','FC Porto','Farense',1,1,2,1,0,1,2,1,3),(2,'2023-08-20 19:30:00','Vizela','Arouca',1,1,2,1,1,2,2,2,4),(2,'2023-08-21 19:15:00','Famalicao','Moreirense',0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `ligpo_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_ligpo BEFORE INSERT ON ligpo_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM ligpo_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM ligpo_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO ligpo_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_ligpo BEFORE INSERT ON ligpo_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM ligpo_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM ligpo_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO ligpo_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_ligpo BEFORE INSERT ON ligpo_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM ligpo_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM ligpo_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO ligpo_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_ligpo BEFORE INSERT ON ligpo_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM ligpo_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM ligpo_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO ligpo_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_ligpo BEFORE INSERT ON ligpo_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM ligpo_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM ligpo_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO ligpo_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_ligpo BEFORE INSERT ON ligpo_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM ligpo_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM ligpo_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO ligpo_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pl_fixture`
--

DROP TABLE IF EXISTS `pl_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_fixture`
--

LOCK TABLES `pl_fixture` WRITE;
/*!40000 ALTER TABLE `pl_fixture` DISABLE KEYS */;
INSERT INTO `pl_fixture` VALUES (1,'2023-08-14 19:00:00','Manchester Utd','Wolves'),(2,'2023-08-21 19:00:00','Crystal Palace','Arsenal'),(3,'2023-08-27 15:30:00','Newcastle','Liverpool'),(4,'2023-09-03 15:30:00','Arsenal','Manchester Utd');
/*!40000 ALTER TABLE `pl_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_h2h`
--

DROP TABLE IF EXISTS `pl_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_h2h`
--

LOCK TABLES `pl_h2h` WRITE;
/*!40000 ALTER TABLE `pl_h2h` DISABLE KEYS */;
INSERT INTO `pl_h2h` VALUES ('1990-04-07','Chelsea','Luton',1,0),('1991-04-06','Chelsea','Luton',3,3),('1991-08-31','Chelsea','Luton',4,1),('1997-03-08','Arsenal','Nottingham',2,0),('1998-08-17','Arsenal','Nottingham',2,1),('1998-09-15','Brentford','Tottenham',2,3),('1998-11-10','Manchester Utd','Nottingham',2,1),('1998-12-26','Manchester Utd','Nottingham',3,0),('2000-09-18','Brentford','Tottenham',0,0),('2006-03-25','Brighton','Luton',1,1),('2006-12-26','Sheffield Utd','Manchester City',0,1),('2007-11-03','Brighton','Luton',3,1),('2008-01-27','Sheffield Utd','Manchester City',2,1),('2009-01-20','Brighton','Luton',0,0),('2009-12-12','Sheffield Utd','Crystal Palace',2,0),('2010-07-30','Brentford','Crystal Palace',1,1),('2010-11-20','Sheffield Utd','Crystal Palace',3,2),('2013-12-14','Everton','Fulham',4,1),('2014-01-18','Arsenal','Fulham',2,0),('2014-08-02','Brentford','Crystal Palace',3,2),('2014-11-29','Burnley','Aston Villa',1,1),('2016-07-23','Brighton','Luton',1,2),('2017-09-30','Nottingham','Sheffield Utd',2,1),('2017-12-26','Bournemouth','West Ham',3,3),('2018-03-11','Bournemouth','Tottenham',1,4),('2018-04-14','Fulham','Brentford',1,1),('2018-04-14','Liverpool','Bournemouth',3,0),('2018-09-29','Everton','Fulham',3,0),('2018-11-03','Nottingham','Sheffield Utd',1,0),('2019-01-01','Arsenal','Fulham',4,1),('2019-01-19','Bournemouth','West Ham',2,0),('2019-02-09','Liverpool','Bournemouth',3,0),('2019-05-04','Bournemouth','Tottenham',1,0),('2019-08-17','Brighton','West Ham',1,1),('2019-08-18','Sheffield Utd','Crystal Palace',1,0),('2019-08-23','Aston Villa','Everton',2,0),('2019-09-01','Everton','Wolves',3,2),('2019-09-24','Arsenal','Nottingham',5,0),('2019-09-28','Bournemouth','West Ham',2,2),('2019-12-03','Burnley','Manchester City',1,4),('2020-01-01','Burnley','Aston Villa',1,2),('2020-01-11','Crystal Palace','Arsenal',1,1),('2020-01-21','Sheffield Utd','Manchester City',0,1),('2020-02-01','Manchester Utd','Wolves',0,0),('2020-03-07','Liverpool','Bournemouth',2,1),('2020-03-07','Wolves','Brighton',0,0),('2020-06-19','Tottenham','Manchester Utd',1,1),('2020-06-20','Fulham','Brentford',0,2),('2020-07-01','West Ham','Chelsea',3,2),('2020-07-08','Manchester City','Newcastle',5,0),('2020-07-09','Bournemouth','Tottenham',0,0),('2020-07-26','Newcastle','Liverpool',1,3),('2020-09-30','Burnley','Manchester City',0,3),('2020-10-31','Sheffield Utd','Manchester City',0,1),('2020-12-26','Manchester City','Newcastle',2,0),('2020-12-29','Manchester Utd','Wolves',1,0),('2020-12-30','Newcastle','Liverpool',0,0),('2021-01-24','Chelsea','Luton',3,1),('2021-01-27','Burnley','Aston Villa',3,2),('2021-02-03','Burnley','Manchester City',0,2),('2021-02-14','Everton','Fulham',0,2),('2021-03-12','Newcastle','Aston Villa',1,1),('2021-04-11','Tottenham','Manchester Utd',1,3),('2021-04-18','Arsenal','Fulham',1,1),('2021-04-24','West Ham','Chelsea',0,1),('2021-05-08','Sheffield Utd','Crystal Palace',0,2),('2021-05-09','Wolves','Brighton',2,1),('2021-05-13','Aston Villa','Everton',0,0),('2021-05-15','Brighton','West Ham',1,1),('2021-05-19','Crystal Palace','Arsenal',1,3),('2021-05-19','Everton','Wolves',1,0),('2021-09-18','Aston Villa','Everton',3,0),('2021-10-30','Tottenham','Manchester Utd',0,3),('2021-11-02','Nottingham','Sheffield Utd',1,1),('2021-12-04','West Ham','Chelsea',3,2),('2022-01-02','Chelsea','Liverpool',2,2),('2022-01-03','Manchester Utd','Wolves',0,1),('2022-02-12','Brentford','Crystal Palace',0,0),('2022-02-13','Newcastle','Aston Villa',1,0),('2022-02-27','Chelsea','Liverpool',0,1),('2022-03-13','Everton','Wolves',0,1),('2022-04-02','Burnley','Manchester City',0,2),('2022-04-04','Crystal Palace','Arsenal',3,0),('2022-04-23','Brentford','Tottenham',0,0),('2022-04-30','Newcastle','Liverpool',0,1),('2022-04-30','Wolves','Brighton',0,3),('2022-05-07','Burnley','Aston Villa',1,3),('2022-05-08','Manchester City','Newcastle',5,0),('2022-05-14','Chelsea','Liverpool',0,1),('2022-05-17','Nottingham','Sheffield Utd',2,2),('2022-05-22','Brighton','West Ham',3,1),('2022-08-05','Crystal Palace','Arsenal',0,2),('2022-08-13','Aston Villa','Everton',2,1),('2022-08-20','Fulham','Brentford',3,2),('2022-08-27','Arsenal','Fulham',2,1),('2022-08-27','Liverpool','Bournemouth',9,0),('2022-10-29','Bournemouth','Tottenham',2,3),('2022-10-29','Newcastle','Aston Villa',4,0),('2022-10-30','Arsenal','Nottingham',5,0),('2022-11-05','Wolves','Brighton',2,3),('2022-12-26','Brentford','Tottenham',2,2),('2022-12-26','Everton','Wolves',1,2),('2022-12-27','Manchester Utd','Nottingham',3,0),('2023-02-01','Manchester Utd','Nottingham',2,0),('2023-02-11','West Ham','Chelsea',1,1),('2023-02-18','Brentford','Crystal Palace',1,1),('2023-02-18','Newcastle','Liverpool',0,2),('2023-03-04','Brighton','West Ham',4,0),('2023-03-04','Manchester City','Newcastle',2,0),('2023-04-04','Chelsea','Liverpool',0,0),('2023-04-15','Everton','Fulham',1,3),('2023-04-23','Bournemouth','West Ham',0,4),('2023-04-27','Tottenham','Manchester Utd',2,2),('2023-05-13','Manchester Utd','Wolves',2,0),('2023-07-23','Fulham','Brentford',3,2),('2023-07-23','Newcastle','Aston Villa',3,3),('2023-08-11','Burnley','Manchester City',0,3),('2023-08-12','Arsenal','Nottingham',2,1),('2023-08-12','Bournemouth','West Ham',1,1),('2023-08-12','Brighton','Luton',4,1),('2023-08-12','Everton','Fulham',0,1),('2023-08-12','Newcastle','Aston Villa',5,1),('2023-08-12','Sheffield Utd','Crystal Palace',0,1),('2023-08-13','Brentford','Tottenham',2,2),('2023-08-13','Chelsea','Liverpool',1,1),('2023-08-14','Manchester Utd','Wolves',1,0),('2023-08-18','Nottingham','Sheffield Utd',2,1),('2023-08-19','Fulham','Brentford',0,3),('2023-08-19','Liverpool','Bournemouth',3,1),('2023-08-19','Manchester City','Newcastle',1,0),('2023-08-19','Tottenham','Manchester Utd',2,0),('2023-08-19','Wolves','Brighton',1,4),('2023-08-20','Aston Villa','Everton',4,0),('2023-08-20','West Ham','Chelsea',3,1),('2023-08-21','Crystal Palace','Arsenal',0,1),('2023-08-25','Chelsea','Luton',3,0),('2023-08-26','Arsenal','Fulham',2,2),('2023-08-26','Bournemouth','Tottenham',0,2),('2023-08-26','Brentford','Crystal Palace',1,1),('2023-08-26','Brighton','West Ham',1,3),('2023-08-26','Everton','Wolves',0,1),('2023-08-26','Manchester Utd','Nottingham',3,2),('2023-08-27','Burnley','Aston Villa',1,3),('2023-08-27','Newcastle','Liverpool',1,2),('2023-08-27','Sheffield Utd','Manchester City',1,2);
/*!40000 ALTER TABLE `pl_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_scorer`
--

DROP TABLE IF EXISTS `pl_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_scorer`
--

LOCK TABLES `pl_scorer` WRITE;
/*!40000 ALTER TABLE `pl_scorer` DISABLE KEYS */;
INSERT INTO `pl_scorer` VALUES (1,'Awoniyi T.',82,'Nottingham','Arsenal'),(1,'Bowen J.',51,'West Ham','Bournemouth'),(1,'De Cordova-Reid B.',73,'Fulham','Everton'),(1,'Diaz L.',18,'Liverpool','Chelsea'),(1,'Disasi A.',37,'Chelsea','Liverpool'),(1,'Haaland E.',4,'Manchester City','Burnley'),(1,'Haaland E.',36,'Manchester City','Burnley'),(1,'Joao Pedro',71,'Brighton','Luton'),(1,'March S.',36,'Brighton','Luton'),(1,'Mbeumo B.',26,'Brentford','Tottenham'),(1,'Nketiah E.',26,'Arsenal','Nottingham'),(1,'Rodri',75,'Manchester City','Burnley'),(1,'Romero C.',11,'Tottenham','Brentford'),(1,'Saka B.',32,'Arsenal','Nottingham'),(1,'Varane R.',76,'Manchester Utd','Wolves'),(1,'Wissa Y.',36,'Brentford','Tottenham'),(2,'Aguerd N.',7,'West Ham','Chelsea'),(2,'Alvarez J.',31,'Manchester City','Newcastle'),(2,'Antonio M.',53,'West Ham','Chelsea'),(2,'Awoniyi T.',3,'Nottingham','Sheffield Utd'),(2,'Bailey L.',51,'Aston Villa','Everton'),(2,'Chukwuemeka C.',28,'Chelsea','West Ham'),(2,'Diaz L.',28,'Liverpool','Bournemouth'),(2,'Diogo Jota',62,'Liverpool','Bournemouth'),(2,'Douglas Luiz',24,'Aston Villa','Everton'),(2,'Duran J.',75,'Aston Villa','Everton'),(2,'Estupinan P.',46,'Brighton','Wolves'),(2,'Hamer G.',48,'Sheffield Utd','Nottingham'),(2,'Hwang Hee-Chan',61,'Wolves','Brighton'),(2,'March S.',51,'Brighton','Wolves'),(2,'March S.',55,'Brighton','Wolves'),(2,'Martinez Li.',83,'Tottenham','Manchester Utd'),(2,'Mbeumo B.',66,'Brentford','Fulham'),(2,'Mbeumo B.',90,'Brentford','Fulham'),(2,'McGinn J.',18,'Aston Villa','Everton'),(2,'Mitoma K.',15,'Brighton','Wolves'),(2,'Odegaard M.',53,'Arsenal','Crystal Palace'),(2,'Paqueta L.',90,'West Ham','Chelsea'),(2,'Salah M.',36,'Liverpool','Bournemouth'),(2,'Sarr P. M.',49,'Tottenham','Manchester Utd'),(2,'Semenyo A.',3,'Bournemouth','Liverpool'),(2,'Wissa Y.',44,'Brentford','Fulham'),(2,'Wood Ch.',89,'Nottingham','Sheffield Utd'),(3,'Andersen J.',76,'Crystal Palace','Brentford'),(3,'Antonio M.',63,'West Ham','Brighton'),(3,'Awoniyi T.',2,'Nottingham','Manchester Utd'),(3,'Bogle J.',85,'Sheffield Utd','Manchester City'),(3,'Boly W.',4,'Nottingham','Manchester Utd'),(3,'Bowen J.',58,'West Ham','Brighton'),(3,'Casemiro',52,'Manchester Utd','Nottingham'),(3,'Cash M.',8,'Aston Villa','Burnley'),(3,'Cash M.',20,'Aston Villa','Burnley'),(3,'Diaby M.',61,'Aston Villa','Burnley'),(3,'Eriksen C.',17,'Manchester Utd','Nottingham'),(3,'Fernandes B.',76,'Manchester Utd','Nottingham'),(3,'Foster L.',47,'Burnley','Aston Villa'),(3,'Gordon A.',25,'Newcastle','Liverpool'),(3,'Gross P.',81,'Brighton','West Ham'),(3,'Haaland E.',63,'Manchester City','Sheffield Utd'),(3,'Jackson N.',75,'Chelsea','Luton'),(3,'Kalajdzic S.',87,'Wolves','Everton'),(3,'Kulusevski D.',63,'Tottenham','Bournemouth'),(3,'Maddison J.',17,'Tottenham','Bournemouth'),(3,'Nketiah E.',72,'Arsenal','Fulham'),(3,'Nunez D.',81,'Liverpool','Newcastle'),(3,'Nunez D.',90,'Liverpool','Newcastle'),(3,'Palhinha J.',87,'Fulham','Arsenal'),(3,'Pereira A.',1,'Fulham','Arsenal'),(3,'Rodri',88,'Manchester City','Sheffield Utd'),(3,'Saka B.',70,'Arsenal','Fulham'),(3,'Schade K.',18,'Brentford','Crystal Palace'),(3,'Sterling R.',17,'Chelsea','Luton'),(3,'Sterling R.',68,'Chelsea','Luton'),(3,'Ward-Prowse J.',19,'West Ham','Brighton');
/*!40000 ALTER TABLE `pl_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_stats`
--

DROP TABLE IF EXISTS `pl_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_stats`
--

LOCK TABLES `pl_stats` WRITE;
/*!40000 ALTER TABLE `pl_stats` DISABLE KEYS */;
INSERT INTO `pl_stats` VALUES (1,'Arsenal','Nottingham',15,6,7,2,8,3,2,2,0.66,0.66),(1,'Bournemouth','West Ham',14,16,5,3,10,4,1,4,1.13,1.13),(1,'Brentford','Tottenham',11,18,6,6,3,6,1,4,2.07,2.07),(1,'Brighton','Luton',27,9,12,3,6,7,2,2,3.68,3.68),(1,'Burnley','Manchester City',6,17,1,8,6,5,0,0,0.34,0.34),(1,'Chelsea','Liverpool',10,13,4,1,4,4,3,4,1.31,1.31),(1,'Everton','Fulham',19,9,9,2,10,4,0,2,3.07,3.07),(1,'Manchester Utd','Wolves',15,23,3,6,8,7,2,3,1.49,1.49),(1,'Newcastle','Aston Villa',17,16,13,6,6,5,4,4,3.10,3.10),(1,'Sheffield Utd','Crystal Palace',8,24,1,8,5,5,3,0,0.39,0.39),(2,'Aston Villa','Everton',13,9,7,2,7,6,3,4,3.17,3.17),(2,'Crystal Palace','Arsenal',14,14,2,3,1,8,2,3,0.90,0.90),(2,'Fulham','Brentford',10,17,2,8,5,5,4,2,0.50,0.50),(2,'Liverpool','Bournemouth',26,13,10,5,10,2,1,3,2.64,2.64),(2,'Manchester City','Newcastle',14,7,4,1,3,0,1,5,0.96,0.96),(2,'Nottingham','Sheffield Utd',16,7,4,3,6,7,2,3,1.21,1.21),(2,'Tottenham','Manchester Utd',17,22,6,6,5,6,1,3,1.91,1.91),(2,'West Ham','Chelsea',12,17,6,4,3,9,4,3,1.96,1.96),(2,'Wolves','Brighton',16,16,5,8,5,3,5,6,1.82,1.82),(3,'Arsenal','Fulham',19,8,11,3,8,3,0,5,3.15,3.15),(3,'Bournemouth','Tottenham',11,17,3,6,6,2,1,3,0.69,0.69),(3,'Brentford','Crystal Palace',12,15,1,5,8,6,0,0,0.94,0.94),(3,'Brighton','West Ham',26,12,10,7,17,4,1,3,1.42,1.42),(3,'Burnley','Aston Villa',9,16,2,6,4,6,2,0,0.63,0.63),(3,'Chelsea','Luton',19,11,8,1,6,4,2,3,2.17,2.17),(3,'Everton','Wolves',15,11,7,2,7,0,3,4,1.07,1.07),(3,'Manchester Utd','Nottingham',18,9,9,4,11,3,4,4,2.62,2.62),(3,'Newcastle','Liverpool',23,9,8,4,5,9,1,2,1.67,1.67),(3,'Sheffield Utd','Manchester City',6,30,2,9,1,12,4,0,0.81,0.81);
/*!40000 ALTER TABLE `pl_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pl_summary`
--

DROP TABLE IF EXISTS `pl_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pl_summary`
--

LOCK TABLES `pl_summary` WRITE;
/*!40000 ALTER TABLE `pl_summary` DISABLE KEYS */;
INSERT INTO `pl_summary` VALUES (1,'2023-08-11 19:00:00','Burnley','Manchester City',0,2,2,0,1,1,0,3,3),(1,'2023-08-12 11:30:00','Arsenal','Nottingham',2,0,2,0,1,1,2,1,3),(1,'2023-08-12 14:00:00','Bournemouth','West Ham',0,0,0,1,1,2,1,1,2),(1,'2023-08-12 14:00:00','Brighton','Luton',1,0,1,3,1,4,4,1,5),(1,'2023-08-12 14:00:00','Everton','Fulham',0,0,0,0,1,1,0,1,1),(1,'2023-08-12 14:00:00','Sheffield Utd','Crystal Palace',0,0,0,0,1,1,0,1,1),(1,'2023-08-12 16:30:00','Newcastle','Aston Villa',2,1,3,3,0,3,5,1,6),(1,'2023-08-13 13:00:00','Brentford','Tottenham',2,2,4,0,0,0,2,2,4),(1,'2023-08-13 15:30:00','Chelsea','Liverpool',1,1,2,0,0,0,1,1,2),(1,'2023-08-14 19:00:00','Manchester Utd','Wolves',0,0,0,1,0,1,1,0,1),(2,'2023-08-18 18:45:00','Nottingham','Sheffield Utd',1,0,1,1,1,2,2,1,3),(2,'2023-08-19 14:00:00','Fulham','Brentford',0,1,1,0,2,2,0,3,3),(2,'2023-08-19 14:00:00','Liverpool','Bournemouth',2,1,3,1,0,1,3,1,4),(2,'2023-08-19 14:00:00','Wolves','Brighton',0,1,1,1,3,4,1,4,5),(2,'2023-08-19 16:30:00','Tottenham','Manchester Utd',0,0,0,2,0,2,2,0,2),(2,'2023-08-19 19:00:00','Manchester City','Newcastle',1,0,1,0,0,0,1,0,1),(2,'2023-08-20 13:00:00','Aston Villa','Everton',2,0,2,2,0,2,4,0,4),(2,'2023-08-20 15:30:00','West Ham','Chelsea',1,1,2,2,0,2,3,1,4),(2,'2023-08-21 19:00:00','Crystal Palace','Arsenal',0,0,0,0,1,1,0,1,1);
/*!40000 ALTER TABLE `pl_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_pl BEFORE INSERT ON pl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM pl_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM pl_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO pl_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_pl BEFORE INSERT ON pl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM pl_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM pl_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO pl_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_pl BEFORE INSERT ON pl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM pl_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM pl_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO pl_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_pl BEFORE INSERT ON pl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM pl_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM pl_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO pl_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_pl BEFORE INSERT ON pl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM pl_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM pl_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO pl_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_pl BEFORE INSERT ON pl_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM pl_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM pl_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO pl_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sA_fixture`
--

DROP TABLE IF EXISTS `sA_fixture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sA_fixture` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sA_fixture`
--

LOCK TABLES `sA_fixture` WRITE;
/*!40000 ALTER TABLE `sA_fixture` DISABLE KEYS */;
INSERT INTO `sA_fixture` VALUES (1,'2023-08-21 18:45:00','Bologne','AC Milan'),(2,'2023-08-28 18:45:00','Cagliari','Inter'),(3,'2023-09-03 18:45:00','Lecce','Salernitana');
/*!40000 ALTER TABLE `sA_fixture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sA_h2h`
--

DROP TABLE IF EXISTS `sA_h2h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sA_h2h` (
  `date` date NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sA_h2h`
--

LOCK TABLES `sA_h2h` WRITE;
/*!40000 ALTER TABLE `sA_h2h` DISABLE KEYS */;
INSERT INTO `sA_h2h` VALUES ('1995-01-08','Salernitana','Udinese',1,1),('1998-09-12','AS Rome','Salernitana',3,1),('1999-02-07','Salernitana','Udinese',1,2),('1999-09-19','Monza','Empoli',1,0),('2001-05-27','Monza','Empoli',0,1),('2005-12-18','Frosinone','Naples',1,3),('2007-04-21','Frosinone','Naples',1,2),('2011-01-23','Fiorentina','Lecce',1,1),('2011-01-31','Frosinone','Atalanta',0,1),('2011-05-22','Lecce','Lazio',2,4),('2011-12-10','Lecce','Lazio',2,3),('2012-01-15','Fiorentina','Lecce',0,1),('2015-01-06','Empoli','Hellas Vérone',0,0),('2016-01-10','Frosinone','Naples',1,5),('2016-01-23','Frosinone','Atalanta',0,0),('2016-04-20','Empoli','Hellas Vérone',1,0),('2018-09-23','Lazio','Genoa',4,1),('2018-12-29','Genoa','Fiorentina',0,0),('2019-01-20','Frosinone','Atalanta',0,5),('2019-03-01','Cagliari','Inter',2,1),('2019-04-14','Torino','Cagliari',1,1),('2019-04-28','Frosinone','Naples',0,2),('2019-09-01','Cagliari','Inter',1,2),('2019-09-01','Genoa','Fiorentina',2,1),('2019-09-28','Sassuolo','Atalanta',1,4),('2019-09-29','Lazio','Genoa',4,0),('2019-10-19','Juventus','Bologne',2,1),('2019-10-27','Torino','Cagliari',1,1),('2019-11-30','Fiorentina','Lecce',0,1),('2019-12-01','Hellas Vérone','AS Rome',1,3),('2019-12-08','Bologne','AC Milan',2,3),('2020-07-07','Lecce','Lazio',2,1),('2020-07-23','Udinese','Juventus',2,1),('2020-07-25','Naples','Sassuolo',2,0),('2020-09-19','Hellas Vérone','AS Rome',3,0),('2020-10-18','Torino','Cagliari',2,3),('2020-11-01','Naples','Sassuolo',0,2),('2020-11-13','Inter','Monza',1,0),('2020-12-13','Cagliari','Inter',1,3),('2021-01-12','AC Milan','Torino',1,0),('2021-01-24','Juventus','Bologne',2,0),('2021-01-30','Bologne','AC Milan',1,2),('2021-02-06','Monza','Empoli',1,1),('2021-04-03','Genoa','Fiorentina',1,1),('2021-05-02','Lazio','Genoa',4,3),('2021-05-02','Sassuolo','Atalanta',1,1),('2021-05-02','Udinese','Juventus',1,2),('2021-08-22','Udinese','Juventus',2,2),('2021-09-18','Genoa','Fiorentina',1,2),('2021-09-19','Hellas Vérone','AS Rome',3,2),('2021-10-23','Bologne','AC Milan',2,4),('2021-10-26','AC Milan','Torino',1,0),('2021-12-17','Lazio','Genoa',3,1),('2022-02-27','Torino','Cagliari',1,2),('2022-03-20','Empoli','Hellas Vérone',1,1),('2022-04-10','AS Rome','Salernitana',2,1),('2022-04-10','Sassuolo','Atalanta',2,1),('2022-04-16','Juventus','Bologne',1,1),('2022-04-30','Naples','Sassuolo',6,1),('2022-05-15','Cagliari','Inter',1,3),('2022-05-22','Salernitana','Udinese',0,4),('2022-08-31','Empoli','Hellas Vérone',1,1),('2022-10-02','Juventus','Bologne',3,0),('2022-10-29','Naples','Sassuolo',4,0),('2022-10-31','Hellas Vérone','AS Rome',1,3),('2023-01-04','Lecce','Lazio',2,1),('2023-01-11','AC Milan','Torino',0,1),('2023-02-04','Sassuolo','Atalanta',1,0),('2023-02-10','AC Milan','Torino',1,0),('2023-03-04','Monza','Empoli',2,1),('2023-03-19','Fiorentina','Lecce',1,0),('2023-04-15','Bologne','AC Milan',1,1),('2023-04-15','Inter','Monza',0,1),('2023-05-22','AS Rome','Salernitana',2,2),('2023-05-27','Salernitana','Udinese',3,2),('2023-06-04','Udinese','Juventus',0,1),('2023-08-19','Empoli','Hellas Vérone',0,1),('2023-08-19','Frosinone','Naples',1,3),('2023-08-19','Genoa','Fiorentina',1,4),('2023-08-19','Inter','Monza',2,0),('2023-08-20','AS Rome','Salernitana',2,2),('2023-08-20','Lecce','Lazio',2,1),('2023-08-20','Sassuolo','Atalanta',0,2),('2023-08-20','Udinese','Juventus',0,3),('2023-08-21','Bologne','AC Milan',0,2),('2023-08-21','Torino','Cagliari',0,0),('2023-08-26','AC Milan','Torino',4,1),('2023-08-26','Frosinone','Atalanta',2,1),('2023-08-26','Hellas Vérone','AS Rome',2,1),('2023-08-26','Monza','Empoli',2,0),('2023-08-27','Fiorentina','Lecce',2,2),('2023-08-27','Juventus','Bologne',1,1),('2023-08-27','Lazio','Genoa',0,1),('2023-08-27','Naples','Sassuolo',2,0),('2023-08-28','Cagliari','Inter',0,2),('2023-08-28','Salernitana','Udinese',1,1);
/*!40000 ALTER TABLE `sA_h2h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sA_scorer`
--

DROP TABLE IF EXISTS `sA_scorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sA_scorer` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `player` varchar(30) NOT NULL,
  `time_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `team` varchar(30) NOT NULL,
  `opponent` varchar(30) NOT NULL,
  PRIMARY KEY (`journée`,`player`,`time_goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sA_scorer`
--

LOCK TABLES `sA_scorer` WRITE;
/*!40000 ALTER TABLE `sA_scorer` DISABLE KEYS */;
INSERT INTO `sA_scorer` VALUES (1,'Almqvist P.',85,'Lecce','Lazio'),(1,'Belotti A.',17,'AS Rome','Salernitana'),(1,'Belotti A.',82,'AS Rome','Salernitana'),(1,'Biraghi C.',5,'Fiorentina','Genoa'),(1,'Biraschi D.',58,'Genoa','Fiorentina'),(1,'Bonaventura G.',11,'Fiorentina','Genoa'),(1,'Bonazzoli F.',75,'Hellas Vérone','Empoli'),(1,'Candreva A.',36,'Salernitana','AS Rome'),(1,'Candreva A.',49,'Salernitana','AS Rome'),(1,'Chiesa F.',2,'Juventus','Udinese'),(1,'De Ketelaere C.',83,'Atalanta','Sassuolo'),(1,'Di Francesco F.',87,'Lecce','Lazio'),(1,'Giroud O.',11,'AC Milan','Bologne'),(1,'Gonzalez N.',40,'Fiorentina','Genoa'),(1,'Harroui A.',7,'Frosinone','Naples'),(1,'Immobile C.',26,'Lazio','Lecce'),(1,'Mandragora R.',56,'Fiorentina','Genoa'),(1,'Martinez La.',8,'Inter','Monza'),(1,'Martinez La.',76,'Inter','Monza'),(1,'Osimhen V.',42,'Naples','Frosinone'),(1,'Osimhen V.',79,'Naples','Frosinone'),(1,'Politano M.',24,'Naples','Frosinone'),(1,'Pulisic C.',21,'AC Milan','Bologne'),(1,'Rabiot A.',45,'Juventus','Udinese'),(1,'Vlahovic D.',20,'Juventus','Udinese'),(1,'Zortea N.',90,'Atalanta','Sassuolo'),(2,'Aouar H.',56,'AS Rome','Hellas Vérone'),(2,'Colpani A.',45,'Monza','Empoli'),(2,'Colpani A.',53,'Monza','Empoli'),(2,'Di Lorenzo G.',64,'Naples','Sassuolo'),(2,'Dia B.',72,'Salernitana','Udinese'),(2,'Duda O.',4,'Hellas Vérone','AS Rome'),(2,'Dumfries D.',21,'Inter','Cagliari'),(2,'Duncan A.',25,'Fiorentina','Lecce'),(2,'Ferguson L.',24,'Bologne','Juventus'),(2,'Giroud O.',43,'AC Milan','Torino'),(2,'Giroud O.',65,'AC Milan','Torino'),(2,'Gonzalez N.',3,'Fiorentina','Lecce'),(2,'Harroui A.',5,'Frosinone','Atalanta'),(2,'Hernandez T.',45,'AC Milan','Torino'),(2,'Krstovic N.',76,'Lecce','Fiorentina'),(2,'Martinez La.',30,'Inter','Cagliari'),(2,'Monterisi I.',24,'Frosinone','Atalanta'),(2,'Ngonge C.',45,'Hellas Vérone','AS Rome'),(2,'Osimhen V.',16,'Naples','Sassuolo'),(2,'Pulisic C.',33,'AC Milan','Torino'),(2,'Rafia H.',49,'Lecce','Fiorentina'),(2,'Retegui M.',16,'Genoa','Lazio'),(2,'Samardzic L.',57,'Udinese','Salernitana'),(2,'Schuurs P.',36,'Torino','AC Milan'),(2,'Vlahovic D.',80,'Juventus','Bologne'),(2,'Zapata D.',56,'Atalanta','Frosinone');
/*!40000 ALTER TABLE `sA_scorer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sA_stats`
--

DROP TABLE IF EXISTS `sA_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sA_stats` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `home_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_acc_shoot` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_corner` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `away_team_yellow_card` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `home_team_exg` decimal(3,2) NOT NULL,
  `away_team_exg` decimal(3,2) NOT NULL,
  PRIMARY KEY (`journée`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sA_stats`
--

LOCK TABLES `sA_stats` WRITE;
/*!40000 ALTER TABLE `sA_stats` DISABLE KEYS */;
INSERT INTO `sA_stats` VALUES (1,'AS Rome','Salernitana',13,3,3,2,9,1,0,4,1.84,1.84),(1,'Bologne','AC Milan',17,10,5,6,3,6,2,2,1.06,1.06),(1,'Empoli','Hellas Vérone',10,10,4,4,2,4,2,2,0.76,0.76),(1,'Frosinone','Naples',4,19,1,8,4,6,3,3,1.01,1.01),(1,'Genoa','Fiorentina',4,9,2,5,3,4,2,3,0.18,0.18),(1,'Inter','Monza',22,12,3,2,8,3,1,1,2.88,2.88),(1,'Lecce','Lazio',23,10,7,4,5,2,3,2,1.64,1.64),(1,'Sassuolo','Atalanta',11,16,3,6,7,7,0,0,0.54,0.54),(1,'Torino','Cagliari',11,8,2,2,8,3,1,1,0.98,0.98),(1,'Udinese','Juventus',18,9,5,4,7,3,1,3,0.82,0.82),(2,'AC Milan','Torino',17,8,7,1,2,1,2,3,3.38,3.38),(2,'Cagliari','Inter',12,17,2,3,4,7,1,1,0.49,0.49),(2,'Fiorentina','Lecce',9,6,4,2,3,3,1,3,0.00,0.00),(2,'Frosinone','Atalanta',13,18,5,6,3,7,1,2,0.70,0.70),(2,'Hellas Vérone','AS Rome',5,23,3,7,1,12,1,3,0.74,0.74),(2,'Juventus','Bologne',14,9,3,4,5,1,2,1,0.00,0.00),(2,'Lazio','Genoa',16,5,2,3,15,1,4,2,0.93,0.93),(2,'Monza','Empoli',20,18,5,6,6,5,1,2,2.03,2.03),(2,'Naples','Sassuolo',25,6,5,1,12,4,0,1,2.91,2.91),(2,'Salernitana','Udinese',9,14,4,6,7,5,4,4,0.47,0.47);
/*!40000 ALTER TABLE `sA_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sA_summary`
--

DROP TABLE IF EXISTS `sA_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sA_summary` (
  `journée` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `home_team` varchar(30) NOT NULL,
  `away_team` varchar(30) NOT NULL,
  `1st_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `1st_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `2nd_total_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_home_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_away_team_goal` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `global` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`date_time`,`home_team`,`away_team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sA_summary`
--

LOCK TABLES `sA_summary` WRITE;
/*!40000 ALTER TABLE `sA_summary` DISABLE KEYS */;
INSERT INTO `sA_summary` VALUES (1,'2023-08-19 16:30:00','Empoli','Hellas Vérone',0,0,0,0,1,1,0,1,1),(1,'2023-08-19 16:30:00','Frosinone','Naples',1,2,3,0,1,1,1,3,4),(1,'2023-08-19 18:45:00','Genoa','Fiorentina',0,3,3,1,1,2,1,4,5),(1,'2023-08-19 18:45:00','Inter','Monza',1,0,1,1,0,1,2,0,2),(1,'2023-08-20 16:30:00','AS Rome','Salernitana',1,1,2,1,1,2,2,2,4),(1,'2023-08-20 16:30:00','Sassuolo','Atalanta',0,0,0,0,2,2,0,2,2),(1,'2023-08-20 18:45:00','Lecce','Lazio',0,1,1,2,0,2,2,1,3),(1,'2023-08-20 18:45:00','Udinese','Juventus',0,3,3,0,0,0,0,3,3),(1,'2023-08-21 16:30:00','Torino','Cagliari',0,0,0,0,0,0,0,0,0),(1,'2023-08-21 18:45:00','Bologne','AC Milan',0,2,2,0,0,0,0,2,2);
/*!40000 ALTER TABLE `sA_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_overall_ds_sA BEFORE INSERT ON sA_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM sA_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM sA_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO sA_global_overall_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__global_ds_sA BEFORE INSERT ON sA_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, global FROM sA_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(global) INTO average_ht
	FROM temp_tab;
	SELECT global INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT global INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT global INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT global INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT global INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (global > 0);
	SET var_over0_all_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (global > 1);
	SET var_over1_all_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (global > 2);
	SET var_over2_all_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, global FROM sA_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(global) INTO average_at
	FROM temp_tab_away;
	SELECT global INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT global INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT global INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT global INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT global INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (global > 0);
	SET var_over0_all_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (global > 1);
	SET var_over1_all_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (global > 2);
	SET var_over2_all_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO sA_global_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_all_ht, var_over1_all_ht, var_over2_all_ht, var_over0_all_at, var_over1_all_at, var_over2_all_at,NEW.global);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_all_ds_sA BEFORE INSERT ON sA_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM sA_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM sA_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO sA_scored_conceded_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__scored_conceded_ds_sA BEFORE INSERT ON sA_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO , var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_home_team_goal FROM sA_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_home_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_home_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_home_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_home_team_goal > 0);
	SET var_over0_scored_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_home_team_goal > 1);
	SET var_over1_scored_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_home_team_goal > 2);
	SET var_over2_scored_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab WHERE (total_home_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_home_team_goal FROM sA_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_home_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_home_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_home_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_home_team_goal > 0);
	SET var_over0_conceded_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_home_team_goal > 1);
	SET var_over1_conceded_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_home_team_goal > 2);
	SET var_over2_conceded_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab_away WHERE (total_home_team_goal = 0);
	SET clean_sheet = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO sA_scored_conceded_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_scored_ht, var_over1_scored_ht, var_over2_scored_ht, var_over0_conceded_at, var_over1_conceded_at, var_over2_conceded_at,without_scoring, average_ht, clean_sheet, average_at, NEW.total_home_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_all_ds_sA BEFORE INSERT ON sA_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM sA_summary
	WHERE home_team = NEW.home_team OR away_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM sA_summary
	WHERE away_team = NEW.away_team OR home_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO sA_conceded_scored_all_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`hh`@`localhost`*/ /*!50003 TRIGGER beforeInsert__summary__conceded_scored_ds_sA BEFORE INSERT ON sA_summary FOR EACH ROW
BEGIN
	DECLARE current_journée_var, journée1_ht, journée2_ht, journée3_ht, journée4_ht, journée5_ht, journée1_at, journée2_at, journée3_at, journée4_at, journée5_at, var_total_journée TINYINT;
	DECLARE var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at TINYINT UNSIGNED;
	DECLARE var_over0, var_over1, var_over2, average_ht, average_at, ONEorZERO, var_w_scoring, var_clean_sheet, without_scoring, clean_sheet TINYINT UNSIGNED;
	CREATE OR REPLACE TEMPORARY TABLE temp_tab
	SELECT journée, total_away_team_goal FROM sA_summary
	WHERE home_team = NEW.home_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab;
	SELECT AVG(total_away_team_goal) INTO average_ht
	FROM temp_tab;
	SELECT total_away_team_goal INTO journée1_ht
	FROM temp_tab WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée2_ht
	FROM temp_tab WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée3_ht
	FROM temp_tab WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée4_ht
	FROM temp_tab WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_ht = average_ht;
	END IF;
	SELECT total_away_team_goal INTO journée5_ht
	FROM temp_tab WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_ht) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_ht = average_ht;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab WHERE (total_away_team_goal > 0);
	SET var_over0_conceded_ht = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab WHERE (total_away_team_goal > 1);
	SET var_over1_conceded_ht = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab WHERE (total_away_team_goal > 2);
	SET var_over2_conceded_ht = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_clean_sheet
	FROM temp_tab WHERE (total_away_team_goal = 0);
	SET clean_sheet = ((var_clean_sheet / NULLIF(var_total_journée, 0))* 100);
	CREATE OR REPLACE TEMPORARY TABLE temp_tab_away
	SELECT journée, total_away_team_goal FROM sA_summary
	WHERE away_team = NEW.away_team ORDER BY date_time DESC LIMIT 5;
	SELECT MAX(journée) INTO current_journée_var
	FROM temp_tab_away;
	SELECT AVG(total_away_team_goal) INTO average_at
	FROM temp_tab_away;
	SELECT total_away_team_goal INTO journée1_at
	FROM temp_tab_away WHERE journée = current_journée_var;
	SELECT ISNULL(journée1_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée1_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée2_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 1);
	SELECT ISNULL(journée2_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée2_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée3_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 2);
	SELECT ISNULL(journée3_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée3_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée4_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 3);
	SELECT ISNULL(journée4_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée4_at = average_at;
	END IF;
	SELECT total_away_team_goal INTO journée5_at
	FROM temp_tab_away WHERE journée = (current_journée_var - 4);
	SELECT ISNULL(journée5_at) INTO ONEorZERO;
	IF ONEorZERO = 1 THEN
	    SET journée5_at = average_at;
	END IF;
	SELECT COUNT(journée) INTO var_total_journée
	FROM temp_tab_away; 
	SELECT COUNT(journée) INTO var_over0
	FROM temp_tab_away WHERE (total_away_team_goal > 0);
	SET var_over0_scored_at = ((var_over0 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over1
	FROM temp_tab_away WHERE (total_away_team_goal > 1);
	SET var_over1_scored_at = ((var_over1 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_over2
	FROM temp_tab_away WHERE (total_away_team_goal > 2);
	SET var_over2_scored_at = ((var_over2 / NULLIF(var_total_journée, 0))* 100);
	SELECT COUNT(journée) INTO var_w_scoring
	FROM temp_tab_away WHERE (total_away_team_goal = 0);
	SET without_scoring = ((var_w_scoring / NULLIF(var_total_journée, 0))* 100);
	INSERT INTO sA_conceded_scored_ds
	VALUES (NEW.journée, NEW.date_time, NEW.home_team, NEW.away_team, journée5_ht, journée4_ht, journée3_ht, journée2_ht, journée1_ht, journée5_at, journée4_at, journée3_at, journée2_at, journée1_at, var_over0_conceded_ht, var_over1_conceded_ht, var_over2_conceded_ht, var_over0_scored_at, var_over1_scored_at, var_over2_scored_at,clean_sheet, average_ht, without_scoring, average_at, NEW.total_away_team_goal);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31 17:35:20
