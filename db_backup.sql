-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: python_sql_warmup
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Item One',1.5),(2,'Item Two',2),(3,'Item Three',2.5),(4,'Item Four',5),(5,'Item Five',10);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_sale`
--

DROP TABLE IF EXISTS `item_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_sale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sales_person_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_sale_FK` (`item_id`),
  KEY `item_sale_FK_1` (`sales_person_id`),
  CONSTRAINT `item_sale_FK` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `item_sale_FK_1` FOREIGN KEY (`sales_person_id`) REFERENCES `sales_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_sale`
--

LOCK TABLES `item_sale` WRITE;
/*!40000 ALTER TABLE `item_sale` DISABLE KEYS */;
INSERT INTO `item_sale` VALUES (1,3,4),(2,1,3),(3,2,5),(4,1,1),(5,2,4),(6,2,2),(7,3,1),(8,2,1),(9,1,3),(10,3,1),(11,3,2),(12,3,5),(13,1,2),(14,1,2),(15,2,5),(16,3,3),(17,1,1),(18,1,4),(19,1,4),(20,1,5),(21,2,4),(22,1,3),(23,2,5),(24,3,2),(25,1,2),(26,1,5),(27,1,4),(28,2,5),(29,1,3),(30,1,5),(31,3,1),(32,3,1),(33,3,4),(34,2,5),(35,1,1),(36,1,4),(37,1,2),(38,2,4),(39,1,2),(40,1,3),(41,2,4),(42,1,2),(43,3,5),(44,1,4),(45,1,3),(46,2,4),(47,2,4),(48,1,4),(49,2,5),(50,1,1),(51,1,5),(52,2,5),(53,1,5),(54,2,5),(55,2,2),(56,1,4),(57,1,2),(58,1,4),(59,1,5),(60,3,4),(61,3,3),(62,3,4),(63,1,1),(64,2,2),(65,2,2),(66,3,3),(67,2,3),(68,3,5),(69,2,2),(70,2,5),(71,2,5),(72,1,5),(73,1,2),(74,1,1),(75,3,4),(76,3,3),(77,1,4),(78,2,4),(79,1,4),(80,1,3),(81,1,4),(82,2,3),(83,3,1),(84,2,4),(85,1,2),(86,1,5),(87,2,5),(88,1,3),(89,3,3),(90,2,1),(91,1,3),(92,1,5),(93,2,4),(94,1,2),(95,2,4),(96,2,5),(97,3,1),(98,3,5),(99,3,3),(100,1,5),(101,3,5),(102,2,5),(103,1,5),(104,1,2),(105,2,1),(106,3,3),(107,2,3),(108,1,5),(109,2,3),(110,2,3),(111,1,1),(112,1,5),(113,1,4),(114,2,4),(115,3,1),(116,3,5),(117,2,4),(118,3,3),(119,2,5),(120,2,1),(121,3,3),(122,2,5),(123,1,2),(124,1,5),(125,2,1),(126,2,3),(127,3,2),(128,3,4),(129,2,3),(130,2,1),(131,1,1),(132,1,1),(133,1,3),(134,3,1),(135,1,2),(136,1,4),(137,2,2),(138,3,1),(139,3,4),(140,1,1),(141,3,1),(142,1,5),(143,1,4),(144,3,3),(145,3,2),(146,2,3),(147,3,1),(148,2,3),(149,1,1),(150,3,1),(151,1,2),(152,2,4),(153,3,4),(154,3,2),(155,1,1),(156,1,1),(157,3,3),(158,2,2),(159,2,3),(160,3,5),(161,2,5),(162,2,4),(163,2,5),(164,3,5),(165,3,3),(166,3,2),(167,3,2),(168,1,3),(169,3,1),(170,3,2),(171,3,4),(172,3,3),(173,2,2),(174,1,1),(175,2,3),(176,3,1),(177,1,1),(178,2,3),(179,1,1),(180,1,2),(181,1,4),(182,1,1),(183,3,5),(184,1,3),(185,1,1),(186,2,5),(187,1,2),(188,2,2),(189,1,3),(190,2,5),(191,2,5),(192,2,4),(193,3,3),(194,2,5),(195,2,4),(196,1,5),(197,1,3),(198,3,3),(199,1,4),(200,2,1),(201,3,5),(202,1,4),(203,1,2),(204,2,2),(205,2,5),(206,1,1),(207,3,5),(208,2,2),(209,1,2),(210,2,2),(211,3,5),(212,2,4),(213,3,3),(214,3,5),(215,3,3),(216,2,4),(217,1,2),(218,3,3),(219,1,5),(220,1,2),(221,2,3),(222,2,2),(223,1,2),(224,3,2),(225,3,1),(226,3,2),(227,3,4),(228,2,2),(229,1,2),(230,1,4),(231,2,5),(232,3,5),(233,1,5),(234,1,4),(235,3,1),(236,2,3),(237,1,2),(238,2,1),(239,3,2),(240,2,3),(241,3,1),(242,1,4),(243,2,2),(244,1,4),(245,3,4),(246,1,1),(247,3,2),(248,3,4),(249,1,5),(250,3,5),(251,1,5),(252,1,1),(253,1,1),(254,1,5),(255,2,1),(256,2,2),(257,2,4),(258,2,2),(259,3,2),(260,1,2),(261,2,4),(262,2,4),(263,1,3),(264,2,1),(265,1,3),(266,1,2),(267,2,2),(268,3,2),(269,1,2),(270,1,5),(271,1,1),(272,3,2),(273,3,4),(274,3,3),(275,3,4),(276,1,5),(277,3,5),(278,1,1),(279,3,4),(280,2,4),(281,2,4),(282,1,3),(283,3,1),(284,3,4),(285,1,1),(286,2,5),(287,2,3),(288,1,2),(289,3,3),(290,1,1),(291,3,1),(292,1,4),(293,2,2),(294,1,3),(295,2,5),(296,2,3),(297,3,1),(298,2,5),(299,2,5),(300,3,3),(301,1,2),(302,1,4),(303,3,5),(304,1,4),(305,1,5),(306,2,2),(307,3,5),(308,1,4),(309,2,5),(310,2,5),(311,2,1),(312,1,4),(313,1,3),(314,1,5),(315,1,4),(316,2,2),(317,3,5),(318,1,5),(319,2,2),(320,1,3),(321,2,2),(322,2,3),(323,1,2),(324,3,1),(325,1,4),(326,1,4),(327,2,5),(328,3,1),(329,3,5),(330,3,5),(331,1,5),(332,3,2),(333,1,3),(334,2,4),(335,2,5),(336,3,2),(337,2,2),(338,2,2),(339,1,3),(340,1,3),(341,1,1),(342,2,1),(343,2,3),(344,2,2),(345,2,1),(346,3,4),(347,1,1),(348,2,1),(349,1,5),(350,1,2),(351,2,5),(352,1,3),(353,3,5),(354,2,1),(355,1,1),(356,2,3),(357,3,3),(358,3,1),(359,2,5),(360,3,3),(361,3,1),(362,1,1),(363,1,1),(364,3,1),(365,1,3),(366,2,5),(367,1,4),(368,1,1),(369,1,4),(370,2,4),(371,1,1),(372,1,3),(373,2,2),(374,3,5),(375,1,1),(376,1,5),(377,3,3),(378,2,2),(379,3,1),(380,3,5),(381,1,4),(382,1,5),(383,1,3),(384,1,2),(385,3,1),(386,3,5),(387,3,2),(388,3,3),(389,2,1),(390,3,2),(391,3,1),(392,3,2),(393,3,5),(394,2,1),(395,3,2),(396,2,3),(397,1,1),(398,2,1),(399,2,2),(400,1,5),(402,2,4),(403,1,4),(404,2,5);
/*!40000 ALTER TABLE `item_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_person`
--

DROP TABLE IF EXISTS `sales_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_person` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_person`
--

LOCK TABLES `sales_person` WRITE;
/*!40000 ALTER TABLE `sales_person` DISABLE KEYS */;
INSERT INTO `sales_person` VALUES (1,'Person One'),(2,'Person Two'),(3,'Person Three');
/*!40000 ALTER TABLE `sales_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'python_sql_warmup'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_all_items` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_items`()
BEGIN
	select id, name, price from item;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_sales_by_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_sales_by_person`(sales_person_id_input int unsigned)
BEGIN
	select sp.name, sum(i.price) 
	from sales_person sp inner join item_sale is2 on sp.id = is2.sales_person_id 
	inner join item i on i.id = is2.item_id
	where sp.id = sales_person_id_input
	group by sp.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sell_item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sell_item`(item_id_input int unsigned, sales_person_id_input int unsigned)
    MODIFIES SQL DATA
BEGIN
	insert into item_sale(item_id, sales_person_id) values(item_id_input, sales_person_id_input);
	commit;
END ;;
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

-- Dump completed on 2023-06-03 10:58:37
