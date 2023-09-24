CREATE DATABASE  IF NOT EXISTS `hotel_alura_one` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_alura_one`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_alura_one
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `huespedes`
--

DROP TABLE IF EXISTS `huespedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `huespedes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `id_reserva` int NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_reserva` (`id_reserva`),
  CONSTRAINT `huespedes_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huespedes`
--

LOCK TABLES `huespedes` WRITE;
/*!40000 ALTER TABLE `huespedes` DISABLE KEYS */;
INSERT INTO `huespedes` VALUES (2,'pedro','alcantara','2018-09-19','argentino-argentina','345663642',17,NULL),(3,'pedruzky','vignale','2023-08-31','ruso-rusa','3736783337',18,NULL),(4,'Paola','Lamas','1982-10-06','argentino-argentina','223546478',19,NULL),(6,'dasasdsadsa','dsdSSADSA','2023-09-29','argentino-argentina','4323423443232',56,NULL),(7,'pablo','lemmi','2013-09-19','alemana','244233443223',57,NULL);
/*!40000 ALTER TABLE `huespedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `valor` varchar(50) DEFAULT NULL,
  `forma_de_pago` varchar(50) NOT NULL,
  `fechaEntrada` date DEFAULT NULL,
  `fechaSalida` date DEFAULT NULL,
  `formaPago` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2023-09-18','2023-09-20','600','Tarjeta de Crédito',NULL,NULL,NULL),(4,'2023-09-19','2023-09-27','800','Tarjeta de Crédito',NULL,NULL,NULL),(5,'2023-09-23','2023-09-28','700','Tarjeta de Crédito',NULL,NULL,NULL),(6,'2023-09-22','2023-09-24','200','Dinero en efectivo',NULL,NULL,NULL),(7,'2023-09-27','2023-09-30','300','Tarjeta de Crédito',NULL,NULL,NULL),(8,'2023-09-20','2023-09-25','700','Dinero en efectivo',NULL,NULL,NULL),(9,'2023-09-20','2024-09-28','700','Tarjeta de Débito',NULL,NULL,NULL),(10,'2023-09-28','2023-09-30','200','Tarjeta de Débito',NULL,NULL,NULL),(11,'2023-09-09','2023-09-30','2100','Tarjeta de Crédito',NULL,NULL,NULL),(12,'2023-09-29','2023-09-30','100','Tarjeta de Débito',NULL,NULL,NULL),(14,'2023-09-08','2023-09-16','800','Tarjeta de Crédito',NULL,NULL,NULL),(16,'2023-09-27','2023-09-28','50','Tarjeta de Crédito',NULL,NULL,NULL),(17,'2023-09-29','2023-09-30','50','Tarjeta de Crédito',NULL,NULL,NULL),(18,'2023-09-29','2023-09-30','50','Tarjeta de Débito',NULL,NULL,NULL),(19,'2023-10-04','2023-10-15','1100','Dinero en efectivo',NULL,NULL,NULL),(20,'2023-09-29','2023-09-30','100','Tarjeta de Débito',NULL,NULL,NULL),(21,'2023-09-28','2023-09-30','200','Tarjeta de Débito',NULL,NULL,NULL),(22,'2023-09-16','2023-09-10','-100','Tarjeta de Crédito',NULL,NULL,NULL),(23,'2023-09-16','2023-09-23','700','Tarjeta de Crédito',NULL,NULL,NULL),(24,'2023-09-23','2023-09-24','100','Tarjeta de Crédito',NULL,NULL,NULL),(25,'2023-09-16','2023-09-24','800','Tarjeta de Crédito',NULL,NULL,NULL),(26,'2023-09-29','2023-09-30','100','Tarjeta de Crédito',NULL,NULL,NULL),(27,'2023-10-19','2023-10-28','900','Tarjeta de Crédito',NULL,NULL,NULL),(28,'2023-09-28','2023-09-30','200','Dinero en efectivo',NULL,NULL,NULL),(29,'2023-09-29','2023-09-30','100','Tarjeta de Crédito',NULL,NULL,NULL),(30,'2023-09-29','2023-09-30','100','Tarjeta de Crédito',NULL,NULL,NULL),(31,'2023-09-29','2023-09-30','100','Tarjeta de Crédito',NULL,NULL,NULL),(32,'2023-09-16','2023-09-17','100','Tarjeta de Crédito',NULL,NULL,NULL),(33,'2023-09-29','2023-09-30','10000','Tarjeta de Crédito',NULL,NULL,NULL),(34,'2023-09-29','2023-09-30','10000','Tarjeta de Crédito',NULL,NULL,NULL),(35,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(36,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(37,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(38,'2023-09-23','2023-09-24','$100','Tarjeta de Crédito',NULL,NULL,NULL),(39,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(40,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(41,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(42,'2023-09-23','2023-09-30','$700','Tarjeta de Crédito',NULL,NULL,NULL),(43,'2023-09-23','2023-09-30','$1300','Tarjeta de Crédito',NULL,NULL,NULL),(44,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(45,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(46,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(47,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(48,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(49,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(50,'2023-09-29','2023-09-30','$100','Tarjeta de Débito',NULL,NULL,NULL),(51,'2023-09-29','2023-09-30','$100','Dinero en efectivo',NULL,NULL,NULL),(52,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(53,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(54,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(55,'2023-09-22','2023-09-30','$800','Tarjeta de Crédito',NULL,NULL,NULL),(56,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL),(57,'2023-09-29','2023-09-30','$100','Tarjeta de Crédito',NULL,NULL,NULL);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `nombre` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `Id` int NOT NULL,
  `contrasenia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('admin','admin',0,NULL),('marco','polo',0,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hotel_alura_one'
--

--
-- Dumping routines for database 'hotel_alura_one'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-24 13:07:32
