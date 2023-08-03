CREATE DATABASE  IF NOT EXISTS `golf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `golf`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: golf
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_countries` (
  `cty_id` int NOT NULL AUTO_INCREMENT,
  `cty_name` varchar(45) NOT NULL,
  PRIMARY KEY (`cty_id`),
  UNIQUE KEY `cty_id_UNIQUE` (`cty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_courses`
--

DROP TABLE IF EXISTS `tbl_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_courses` (
  `crs_id` int NOT NULL AUTO_INCREMENT,
  `crs_name` varchar(45) NOT NULL,
  `crs_address` varchar(45) DEFAULT NULL,
  `crs_cty_id` int DEFAULT NULL,
  PRIMARY KEY (`crs_id`),
  UNIQUE KEY `crs_id_UNIQUE` (`crs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_courses`
--

LOCK TABLES `tbl_courses` WRITE;
/*!40000 ALTER TABLE `tbl_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_handicaps`
--

DROP TABLE IF EXISTS `tbl_handicaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_handicaps` (
  `hc_id` int NOT NULL AUTO_INCREMENT,
  `hc_handicap` int DEFAULT NULL,
  `hc_date` date DEFAULT NULL,
  `hc_pyr_id` int NOT NULL,
  `hc_crs_id` int NOT NULL,
  PRIMARY KEY (`hc_id`),
  UNIQUE KEY `hc_id_UNIQUE` (`hc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_handicaps`
--

LOCK TABLES `tbl_handicaps` WRITE;
/*!40000 ALTER TABLE `tbl_handicaps` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_handicaps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_holes`
--

DROP TABLE IF EXISTS `tbl_holes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_holes` (
  `hole_id` int NOT NULL AUTO_INCREMENT,
  `hole_number` varchar(2) NOT NULL,
  `hole_par` int DEFAULT NULL,
  `hole_yards` int DEFAULT NULL,
  `hole_handicap` int DEFAULT NULL,
  PRIMARY KEY (`hole_id`),
  UNIQUE KEY `hole_id_UNIQUE` (`hole_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_holes`
--

LOCK TABLES `tbl_holes` WRITE;
/*!40000 ALTER TABLE `tbl_holes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_holes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_players`
--

DROP TABLE IF EXISTS `tbl_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_players` (
  `pyr_id` int NOT NULL AUTO_INCREMENT,
  `pyr_lastname` varchar(45) NOT NULL,
  `pyr_firstname` varchar(45) NOT NULL,
  `pyr_birthday` date DEFAULT NULL,
  `pyr_birthplace` varchar(45) DEFAULT NULL,
  `pyr_swing` varchar(45) DEFAULT NULL,
  `pyr_address` varchar(45) DEFAULT NULL,
  `pyr_address2` varchar(45) DEFAULT NULL,
  `pyr_region` varchar(45) DEFAULT NULL,
  `pyr_cty_id` int DEFAULT NULL,
  `pyr_nationality` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pyr_id`),
  UNIQUE KEY `pyr_id_UNIQUE` (`pyr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_players`
--

LOCK TABLES `tbl_players` WRITE;
/*!40000 ALTER TABLE `tbl_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rules`
--

DROP TABLE IF EXISTS `tbl_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rules` (
  `rule_id` int NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(45) NOT NULL,
  `rule_scoring` varchar(45) DEFAULT NULL,
  `rule_multiplier` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  UNIQUE KEY `rule_id_UNIQUE` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rules`
--

LOCK TABLES `tbl_rules` WRITE;
/*!40000 ALTER TABLE `tbl_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_scores`
--

DROP TABLE IF EXISTS `tbl_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_scores` (
  `scr_id` int NOT NULL AUTO_INCREMENT,
  `scr_pyr_id` int DEFAULT NULL,
  `scr_tour_id` int DEFAULT NULL,
  `scr_hole_id` int DEFAULT NULL,
  `scr_handicap` int DEFAULT NULL,
  `scr_score` int DEFAULT NULL,
  PRIMARY KEY (`scr_id`),
  UNIQUE KEY `scr_id_UNIQUE` (`scr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_scores`
--

LOCK TABLES `tbl_scores` WRITE;
/*!40000 ALTER TABLE `tbl_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tournaments`
--

DROP TABLE IF EXISTS `tbl_tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tournaments` (
  `tour_id` int NOT NULL AUTO_INCREMENT,
  `tour_datefrom` date NOT NULL,
  `tourdateto` date NOT NULL,
  `tour_organizer` varchar(45) DEFAULT NULL,
  `tour_crs_id` int DEFAULT NULL,
  `tour_par` int DEFAULT NULL,
  `tour_rule_id` int DEFAULT NULL,
  PRIMARY KEY (`tour_id`),
  UNIQUE KEY `tour_id_UNIQUE` (`tour_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tournaments`
--

LOCK TABLES `tbl_tournaments` WRITE;
/*!40000 ALTER TABLE `tbl_tournaments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'golf'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-03 23:47:45
