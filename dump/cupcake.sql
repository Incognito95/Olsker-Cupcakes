-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: cupcake
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `bottoms`
--

DROP TABLE IF EXISTS `bottoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottoms` (
  `bottom_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`bottom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottoms`
--

LOCK TABLES `bottoms` WRITE;
/*!40000 ALTER TABLE `bottoms` DISABLE KEYS */;
INSERT INTO `bottoms` VALUES (1,'Chocolate',5),(2,'Vanilla	',5),(3,'Nutmeg',5),(4,'Pistacio',6),(5,'Almond	',7);
/*!40000 ALTER TABLE `bottoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `sub_total` decimal(10,0) DEFAULT NULL,
  `fk_order_id` int DEFAULT NULL,
  `fk_topping_id` int DEFAULT NULL,
  `fk_bottom_id` int DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `fk_order_details_orders1_idx` (`fk_order_id`),
  KEY `fk_order_details_toppings1_idx` (`fk_topping_id`),
  KEY `fk_order_details_bottoms1_idx` (`fk_bottom_id`),
  CONSTRAINT `fk_order_details_bottoms1` FOREIGN KEY (`fk_bottom_id`) REFERENCES `mydb`.`bottoms` (`bottom_id`),
  CONSTRAINT `fk_order_details_orders1` FOREIGN KEY (`fk_order_id`) REFERENCES `mydb`.`orders` (`order_id`),
  CONSTRAINT `fk_order_details_toppings1` FOREIGN KEY (`fk_topping_id`) REFERENCES `mydb`.`toppings` (`topping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_status` varchar(45) DEFAULT NULL,
  `order_time` timestamp NULL DEFAULT NULL,
  `fk_user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `fk_orders_users1` FOREIGN KEY (`order_id`) REFERENCES `mydb`.`users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppings` (
  `topping_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`topping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
INSERT INTO `toppings` VALUES (1,'Chocolate',5),(2,'Blueberry',5),(3,'Rasberry',5),(4,'Crispy',6),(5,'Strawberry',6),(6,'Rum/Raisin',7),(7,'Orange',8),(8,'Lemon',8),(9,'Blue cheese',9);
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `user_credit` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ermin2@hotmail.com','1234','customer',NULL),(2,'jens@gmail.com','1234','employee',NULL),(3,'admin@admin.com','1234','customer',NULL),(4,'john@a.dk','1234','customer',NULL),(5,'admin@admin.com','123','customer',NULL),(6,'admin@admin.com','123','customer',NULL),(7,'admin@admin.com','123','customer',NULL),(8,'yo@hotmail.com','1234','customer',NULL),(19,'ermin@hotmail.com','1234','customer',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 14:39:31
