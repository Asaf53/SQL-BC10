-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,'1e5'),(2,'2e5'),(3,'3e5'),(4,'4e5');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_classroom`
--

DROP TABLE IF EXISTS `student_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_classroom` (
  `student_id` int DEFAULT NULL,
  `classroom_id` int DEFAULT NULL,
  KEY `fk_student_classroom_student_id_idx` (`student_id`),
  KEY `fk_student_classroom_classroom_id_idx` (`classroom_id`),
  CONSTRAINT `fk_student_classroom_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_student_classroom_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_classroom`
--

LOCK TABLES `student_classroom` WRITE;
/*!40000 ALTER TABLE `student_classroom` DISABLE KEYS */;
INSERT INTO `student_classroom` VALUES (31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,2),(38,2),(76,2),(77,2),(78,2),(79,3),(80,3),(81,3),(82,4),(83,4),(84,4),(85,4),(86,4),(87,4),(88,4);
/*!40000 ALTER TABLE `student_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subject`
--

DROP TABLE IF EXISTS `student_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subject` (
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  KEY `fk_student_subject_student_id_idx` (`student_id`),
  KEY `fk_student_subject_subject_id_idx` (`subject_id`),
  CONSTRAINT `fk_student_subject_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_student_subject_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subject`
--

LOCK TABLES `student_subject` WRITE;
/*!40000 ALTER TABLE `student_subject` DISABLE KEYS */;
INSERT INTO `student_subject` VALUES (31,1,'4'),(32,2,'4'),(33,3,'9'),(34,4,'5'),(35,5,'6'),(36,6,'7'),(37,7,'4'),(38,8,'7'),(31,9,'6'),(32,10,'6');
/*!40000 ALTER TABLE `student_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `registered` date DEFAULT NULL,
  `email` varchar(55) NOT NULL,
  `address` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (21,'Alice','Johnson','1995-02-10','555-1111','F','2022-02-20','alice.johnson@email.com','123 Main St'),(31,'Bob','Smith','1998-07-15','555-2222','M','2022-02-21','bob.smith@email.com','456 Oak Ave'),(32,'Catherine','Miller','1994-11-28','555-3333','F','2022-02-22','catherine.miller@email.com','789 Pine Rd'),(33,'David','Williams','1993-05-03','555-4444','M','2022-02-23','david.williams@email.com','101 Elm St'),(34,'Eva','Jones','1996-09-12','555-5555','F','2022-02-24','eva.jones@email.com','202 Cedar Ln'),(35,'Frank','Anderson','1997-03-25','555-6666','M','2022-02-25','frank.anderson@email.com','303 Maple Ave'),(36,'Grace','Davis','1992-08-08','555-7777','F','2022-02-26','grace.davis@email.com','404 Birch Rd'),(37,'Henry','Taylor','1999-01-18','555-8888','M','2022-02-27','henry.taylor@email.com','505 Pine Ln'),(38,'Ivy','Evans','1991-04-30','555-9999','F','2022-02-28','ivy.evans@email.com','606 Oak St'),(76,'Liridon','Gashi','1998-03-15','555-1234','M','2022-02-22','liridon.gashi@email.com','123 Main St'),(77,'Elira','Krasniqi','1995-08-22','555-5678','F','2022-02-22','elira.krasniqi@email.com','456 Oak Ave'),(78,'Arben','Mehmeti','1990-11-10','555-9876','M','2022-02-22','arben.mehmeti@email.com','789 Pine Rd'),(79,'Albana','Bajrami','1992-05-30','555-4321','F','2022-02-23','albana.bajrami@email.com','101 Elm St'),(80,'Luan','Hoxha','1987-09-18','555-8765','M','2022-02-23','luan.hoxha@email.com','202 Cedar Ln'),(81,'Vesa','Rexhepi','1995-12-05','555-2109','F','2022-02-24','vesa.rexhepi@email.com','303 Maple Ave'),(82,'Arian','Leka','1983-04-12','555-7890','M','2022-02-24','arian.leka@email.com','404 Birch Rd'),(83,'Adela','Gjoni','1998-07-28','555-3456','F','2022-02-25','adela.gjoni@email.com','505 Pine Ln'),(84,'Blendi','Deda','1989-01-07','555-6543','M','2022-02-25','blendi.deda@email.com','606 Oak St'),(85,'Erjona','Basha','1993-06-20','555-8901','F','2022-02-26','erjona.basha@email.com','707 Cedar Ave'),(86,'Artan','Kuqi','1986-10-02','555-1234','M','2022-02-26','artan.kuqi@email.com','808 Birch Rd'),(87,'Anisa','Zeqiri','1990-03-05','555-5678','F','2022-02-27','anisa.zeqiri@email.com','909 Maple Ln'),(88,'Ardit','Ramadani','1985-08-18','555-9876','M','2022-02-27','ardit.ramadani@email.com','101 Pine Rd');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_classroom`
--

DROP TABLE IF EXISTS `subject_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject_classroom` (
  `subject_id` int DEFAULT NULL,
  `classroom_id` int DEFAULT NULL,
  KEY `fk_subject_classroom_subject_id_idx` (`subject_id`),
  KEY `fk_subject_classroom_classroom_id_idx` (`classroom_id`),
  CONSTRAINT `fk_subject_classroom_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_subject_classroom_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_classroom`
--

LOCK TABLES `subject_classroom` WRITE;
/*!40000 ALTER TABLE `subject_classroom` DISABLE KEYS */;
INSERT INTO `subject_classroom` VALUES (10,4),(5,4),(1,4),(2,4),(6,4),(1,1),(8,1),(2,1),(3,1),(8,2),(9,2),(7,2),(9,3),(6,3),(4,3);
/*!40000 ALTER TABLE `subject_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` text,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_subjects_teacher_id_idx` (`teacher_id`),
  CONSTRAINT `fk_subjects_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Mathematics','Advanced mathematics course',1),(2,'English','Literature and language studies',2),(3,'Science','Physics, Chemistry, Biology',3),(4,'History','World history and civilizations',4),(5,'Computer Science','Programming and algorithms',5),(6,'Geography','Study of Earth and its features',6),(7,'Art','Visual and performing arts',7),(8,'Physical Education','Sports and fitness activities',8),(9,'Music','Music theory and performance',9),(10,'Economics','Economic theories and principles',10);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_classroom`
--

DROP TABLE IF EXISTS `teacher_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_classroom` (
  `classroom_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  KEY `fk_classroom_staff_staff_id_idx` (`teacher_id`),
  KEY `fk_teacher_classroom_classroom_id_idx` (`classroom_id`),
  CONSTRAINT `fk_teacher_classroom_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_teacher_classroom_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_classroom`
--

LOCK TABLES `teacher_classroom` WRITE;
/*!40000 ALTER TABLE `teacher_classroom` DISABLE KEYS */;
INSERT INTO `teacher_classroom` VALUES (1,1),(2,2),(3,3),(4,4),(1,5),(2,6),(3,7),(4,8),(1,9),(2,10),(3,11),(4,11),(1,10),(2,9),(3,4),(4,6);
/*!40000 ALTER TABLE `teacher_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `registered` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'John','Doe','1990-03-15','555-1234','M','2022-02-22','john.doe@email.com','123 Main St'),(2,'Jane','Smith','1985-08-22','555-5678','F','2022-02-22','jane.smith@email.com','456 Oak Ave'),(3,'Bob','Johnson','1988-11-10','555-9876','M','2022-02-22','bob.johnson@email.com','789 Pine Rd'),(4,'Alice','Williams','1992-05-30','555-4321','F','2022-02-23','alice@email.com','101 Elm St'),(5,'Michael','Brown','1987-09-18','555-8765','M','2022-02-23','michael@email.com','202 Cedar Ln'),(6,'Sara','Miller','1995-12-05','555-2109','F','2022-02-24','sara@email.com','303 Maple Ave'),(7,'David','Davis','1983-04-12','555-7890','M','2022-02-24','david@email.com','404 Birch Rd'),(8,'Emma','Anderson','1998-07-28','555-3456','F','2022-02-25','emma@email.com','505 Pine Ln'),(9,'Kevin','Evans','1989-01-07','555-6543','M','2022-02-25','kevin@email.com','606 Oak St'),(10,'Olivia','Moore','1993-06-20','555-8901','F','2022-02-26','olivia@email.com','707 Cedar Ave'),(11,'Ryan','Taylor','1986-10-02','555-1234','M','2022-02-26','ryan@email.com','808 Birch Rd');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-23 17:54:06
