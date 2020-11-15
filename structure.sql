-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Professor
-- ------------------------------------------------------
-- Server version	8.0.22
use Automated_Scheduling;
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
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Classes` (
  `Class Name` varchar(45) NOT NULL,
  `Class Number` int NOT NULL,
  PRIMARY KEY (`Class Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES ('Advanced Language Concepts',4318),('Algorithm Design and Analysis',5319),('Computer Architecture',3327),('Computer Design and Construction',4316),('Computer Graphics',4332),('Computer Operating Systems',4327),('Computer Organization and Machine Language',2329),('Computer Science Core Topics',5302),('Computer Software Engineering',4319),('Data Base Management',3318),('Data Structures and Algorithms',3319),('Database Security ',5335),('Digital System Design',3321),('Human-Computer Interaction',3331),('Independent Study ',4050),('Intro to Computer Networks',2327),('Network Theory ',4326),('Operating System Security ',5325),('Operating Systems',5327),('Professionalism and Ethics',4349),('Programming Fundamentals I',1436),('Programming Fundamentals I Lab',1436),('Programming Fundamentals II',1437),('Programming Fundamentals II Lab',1437),('Programming Practicum',6347),('Quantitative Foundations of Computer Science',5301),('Seminar in Computer Science',4149),('Software Engineering ',6319),('Special Topics',4340),('Special Topics/Programming',2347),('System Modeling and Simulation',4320);
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classrooms`
--

DROP TABLE IF EXISTS `Classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Classrooms` (
  `Room Number` int NOT NULL,
  PRIMARY KEY (`Room Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classrooms`
--

LOCK TABLES `Classrooms` WRITE;
/*!40000 ALTER TABLE `Classrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `Classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `professor id` int NOT NULL,
  `first name` varchar(45) NOT NULL,
  `last name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`professor id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Bing','Zhou'),(2,'Peter','Cooper'),(3,'William','Glisson'),(4,'David','Burris'),(5,'Min','Kyung An'),(6,'Hyuk','Cho'),(7,'Gary','Smith'),(8,'Li-Jen','Lester'),(9,'Cihan','Varol'),(10,'N.Karpoor','Shashidhar'),(11,'Qingzhong','Liu'),(12,'Mingkui','Wei'),(13,'ABM','Islam'),(14,'Amar','Rasheed'),(15,'Mohamed','Baza'),(16,'Hacer','Varol'),(17,'Kirk','Burns');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Times`
--

DROP TABLE IF EXISTS `Times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Times` (
  `idTimes` int NOT NULL,
  `Day` varchar(45) DEFAULT NULL,
  `Start Time` time DEFAULT NULL,
  `End Time` time DEFAULT NULL,
  PRIMARY KEY (`idTimes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Times`
--

LOCK TABLES `Times` WRITE;
/*!40000 ALTER TABLE `Times` DISABLE KEYS */;
INSERT INTO `Times` VALUES (1,'MWF','08:00:00','08:50:00'),(2,'MWF','09:00:00','09:50:00'),(3,'MWF','10:00:00','10:50:00'),(4,'MWF','11:00:00','11:50:00'),(5,'MWF','12:00:00','12:50:00'),(6,'MWF','01:00:00','01:50:00'),(7,'MWF','02:00:00','02:50:00'),(8,'MWF','03:00:00','03:50:00'),(9,'MWF','04:00:00','04:50:00'),(10,'TTH','08:00:00','09:15:00'),(11,'TTH','09:30:00','10:45:00'),(12,'TTH','11:00:00','12:15:00'),(13,'TTH','12:30:00','01:45:00'),(14,'TTH','02:00:00','03:15:00'),(15,'TTH','03:30:00','04:45:00');
/*!40000 ALTER TABLE `Times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 22:07:08
