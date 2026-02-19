-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: ap4
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (1,'PC 1 - Unité centrale',2016,NULL,'PC'),(2,'PC 2 - Unité centrale',2017,NULL,'PC'),(3,'PC 3 - Portable',2015,'Inspiron 15-3558','PC'),(4,'Écran A',2012,'HP LA1951g - 19\" - 1280x1024 - 60 Hz','Écran'),(5,'Écran B',2010,'Dell E178FP - 17\" - 1280x1024','Écran'),(6,'Écran C',2009,'Samsung 933SN - 18.5\" - 1366x768','Écran');
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `materiel`
--

LOCK TABLES `materiel` WRITE;
/*!40000 ALTER TABLE `materiel` DISABLE KEYS */;
INSERT INTO `materiel` VALUES (10,'CPU PC1',2016,'Intel Core i3-6100','CPU',1),(11,'RAM PC1',2016,'4 Go DDR4 (1x4 Go)','RAM',1),(12,'Disque PC1',2016,'HDD Seagate 500 Go','Disque',1),(13,'GPU PC1',2016,'Intel HD 530','GPU',1),(14,'Carte réseau PC1',2016,'1 Gbps','Carte réseau',1),(15,'OS PC1',2016,'Windows 10 Pro','OS',1),(20,'CPU PC2',2017,'Intel Core i5-7500','CPU',2),(21,'RAM PC2',2017,'8 Go DDR4 (2x4 Go)','RAM',2),(22,'Disque PC2',2017,'SSD A400 240 Go','Disque',2),(23,'GPU PC2',2017,'Intel HD 630','GPU',2),(24,'Carte réseau PC2',2017,'1 Gbps','Carte réseau',2),(25,'OS PC2',2017,'Pas d\'OS','OS',2),(30,'CPU PC3',2015,'Intel Core i3-5005U','CPU',3),(31,'RAM PC3',2015,'4 Go DDR3L','RAM',3),(32,'Disque PC3',2015,'HDD WD Blue 500 Go','Disque',3),(33,'Batterie PC3',2015,'usée (? 40 min)','Batterie',3),(34,'OS PC3',2015,'Windows 10 Pro','OS',3);
/*!40000 ALTER TABLE `materiel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-17  9:39:01
