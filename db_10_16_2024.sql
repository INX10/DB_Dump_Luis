CREATE DATABASE  IF NOT EXISTS `inx10` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inx10`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inx10
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `announce_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_ID` bigint unsigned NOT NULL,
  `announce_subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announce_body` text COLLATE utf8mb4_unicode_ci,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`announce_ID`),
  UNIQUE KEY `announce_ID_UNIQUE` (`announce_ID`),
  KEY `employee_ID(announcement)_idx` (`employee_ID`),
  CONSTRAINT `announcement_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (1,1,'Bakit pumasok si martin?','Umuwi ka na martin ohhh 6hours ka na diyan','2024-09-30 03:43:07','2024-09-29 19:43:07','2024-09-29 19:43:07'),(2,1,'5 pa klase kay ser windell','grabeh bah','2024-09-30 03:43:30','2024-09-29 19:43:30','2024-09-29 19:43:30'),(3,1,'sample subject','sample','2024-09-30 03:56:15','2024-09-29 19:56:15','2024-09-29 19:56:15'),(4,1,'sample subject2','sample','2024-09-30 03:56:24','2024-09-29 19:56:24','2024-09-29 19:56:24'),(5,1,'sample subject','sample','2024-09-30 03:56:36','2024-09-29 19:56:36','2024-09-29 19:56:36'),(6,1,'No Work Tomorrow','Here’s a simple announcement you can use:\r\n\r\nAnnouncement\r\n\r\nDear Team,\r\n\r\nPlease be advised that there will be no work tomorrow. Take this time to rest and recharge.\r\n\r\nThank you for your understanding!\r\n\r\nBest regards,\r\n[Your Name]\r\n[Your Position]\r\n\r\ne would like to inform all employees that there will be no work scheduled for tomorrow. This decision has been made to provide everyone with a well-deserved break and an opportunity to relax. We encourage you to use this time to unwind and rejuvenate. Thank you for your hard work and dedication, and we look forward to seeing you back in the office on [insert date].','2024-10-01 05:39:26','2024-09-30 21:39:26','2024-09-30 21:39:26'),(7,1,'Christmas Party','Good Day Employees. \r\n\r\nWe will be having a Christmas party preparation for this upcoming [DATE]......','2024-10-02 11:21:41','2024-10-02 03:21:41','2024-10-02 03:21:41'),(8,1,'Holiday (NO WORKING DAY)','We wanted to inform all employees that we will not be having a work on [DATE]','2024-10-09 19:19:43','2024-10-09 11:19:43','2024-10-09 11:19:43'),(9,1,'Payday Move date','Announcement:\r\n\r\nPayday date will be move to [date] for further questions go to HR.','2024-10-09 19:23:45','2024-10-09 11:23:45','2024-10-09 11:23:45'),(10,1,'Broadcast','Broadcast to employee and head','2024-10-10 20:19:24','2024-10-10 12:19:24','2024-10-10 12:19:24'),(11,1,'Broadcast 2','Dear [Recipient\'s Name],\r\n\r\nWe are pleased to announce [briefly describe the announcement, e.g., the promotion of an employee, a new policy, an upcoming event, etc.].\r\n\r\nDetails of the Announcement:\r\n\r\nWhat: [Provide detailed information about the announcement]\r\nWhen: [Specify the date and time, if applicable]\r\nWhere: [Provide location details, if applicable]\r\nWho: [Mention any individuals or teams involved]\r\nThis announcement reflects our commitment to [state the goal or purpose related to the announcement, e.g., employee development, community engagement, etc.]. We believe that this change will [mention the positive outcomes expected from the announcement].\r\n\r\nFor further information or questions, please feel free to contact [provide contact information].\r\n\r\nThank you for your attention to this matter.\r\n\r\nBest Regards,\r\n\r\n[Your Name]\r\n[Your Position]\r\n[Your Company/Organization Name]\r\n[Your Contact Information]\r\n\r\nInstructions for Use:\r\nFill in the brackets with the relevant information.\r\nCustomize the announcement details to fit the specific purpose.\r\nReview and edit for clarity and professionalism before distribution.\r\nFeel free to modify this template as needed!','2024-10-10 20:21:51','2024-10-10 12:21:51','2024-10-10 12:21:51');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_attendance` (
  `attendance_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_ID` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `hours_required` decimal(4,2) NOT NULL,
  `hours_worked` decimal(4,2) NOT NULL,
  `hours_overtime` decimal(4,2) DEFAULT NULL,
  `hours_undertime` decimal(4,2) DEFAULT NULL,
  `if_resign` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`attendance_ID`),
  UNIQUE KEY `attendance_ID_UNIQUE` (`attendance_ID`),
  KEY `employee_ID(employee_attendance)_idx` (`employee_ID`),
  CONSTRAINT `employee_attendance_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_contactinfo`
--

DROP TABLE IF EXISTS `employee_contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_contactinfo` (
  `employee_ID` bigint unsigned NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_contactinfo_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_contactinfo`
--

LOCK TABLES `employee_contactinfo` WRITE;
/*!40000 ALTER TABLE `employee_contactinfo` DISABLE KEYS */;
INSERT INTO `employee_contactinfo` VALUES (1,'sample@gmail.com','09352617615','9567856785678','B2A,L20','Oak',NULL,NULL),(2,'sample@gmail.com','09352617615','9567856785678','B2A L20 Oak St. Woodland Hills, Brgy. Bancal','Oak',NULL,NULL),(3,'sample@gmail.com','09352617615','9567856785678','B2A L20 Oak St. Woodland Hills, Brgy. Bancal','Oak',NULL,NULL),(4,'sample@gmail.com','09352617615','9567856785678','B2A,L20','Oak',NULL,NULL),(5,'sample@gmail.com','09352617615','9567856785678','B2A L20 Oak St. Woodland Hills, Brgy. Bancal','Oak',NULL,NULL),(6,'sample@gmail.com','09352617615','9567856785678','B2A L20 Oak St. Woodland Hills, Brgy. Bancal','Oak',NULL,NULL),(7,'sample@gmail.com','09352617615',NULL,'B2A,L20','Oak',NULL,NULL),(8,'sample@gmail.com','09352617615','9567856785678','B2A L20 Oak St. Woodland Hills, Brgy. Bancal','Oak',NULL,NULL),(9,'sample@gmail.com','09352617615','9567856785678','B2A L20 Oak St. Woodland Hills, Brgy. Bancal','Oak',NULL,NULL),(10,'dasdfad@facebook','09352617615','9567856785678','B2A,L20','Oak',NULL,NULL);
/*!40000 ALTER TABLE `employee_contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department`
--

DROP TABLE IF EXISTS `employee_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_department` (
  `department_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `department_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`department_ID`),
  UNIQUE KEY `department_ID_UNIQUE` (`department_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department`
--

LOCK TABLES `employee_department` WRITE;
/*!40000 ALTER TABLE `employee_department` DISABLE KEYS */;
INSERT INTO `employee_department` VALUES (1,'Admin/HR','',NULL,NULL),(2,'MSIT','',NULL,NULL),(3,'Purchasing','',NULL,NULL),(4,'Shipping','',NULL,NULL),(5,'Accounting','',NULL,NULL),(6,'Sales Marketing','',NULL,NULL),(7,'Technical','',NULL,NULL),(8,'PPC','',NULL,NULL),(9,'Packing','',NULL,NULL),(10,'Mixer','',NULL,NULL),(11,'Rollermill','',NULL,NULL),(12,'Sandmill','',NULL,NULL),(13,'Weighing & Premix','',NULL,NULL),(14,'Washing','',NULL,NULL),(15,'FG Warehouse','',NULL,NULL),(16,'RM Warehouse','',NULL,NULL);
/*!40000 ALTER TABLE `employee_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_documents`
--

DROP TABLE IF EXISTS `employee_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_documents` (
  `employee_ID` bigint unsigned NOT NULL,
  `filename` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_file` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `employee_ID(employee_documents)_idx` (`employee_ID`),
  CONSTRAINT `employee_documents_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_documents`
--

LOCK TABLES `employee_documents` WRITE;
/*!40000 ALTER TABLE `employee_documents` DISABLE KEYS */;
INSERT INTO `employee_documents` VALUES (5,'1.jpg','uploads/employees/1728277220_1.jpg','2024-10-06 21:00:20','2024-10-06 21:00:20'),(6,'4.jpg','uploads/employees/1728279530_4.jpg','2024-10-06 21:38:50','2024-10-06 21:38:50'),(7,'2.jpg','uploads/employees/1728287659_2.jpg','2024-10-06 23:54:19','2024-10-06 23:54:19');
/*!40000 ALTER TABLE `employee_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_education`
--

DROP TABLE IF EXISTS `employee_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_education` (
  `employee_ID` bigint unsigned NOT NULL,
  `highschool` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `college` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_education_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_education`
--

LOCK TABLES `employee_education` WRITE;
/*!40000 ALTER TABLE `employee_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_evaluation`
--

DROP TABLE IF EXISTS `employee_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_evaluation` (
  `evaluation_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `employee_ID` bigint unsigned NOT NULL,
  `rating` int NOT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`evaluation_ID`),
  UNIQUE KEY `evaluation_ID_UNIQUE` (`evaluation_ID`),
  KEY `employee_ID(employee_evaluation)_idx` (`employee_ID`),
  CONSTRAINT `employee_evaluation_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_evaluation`
--

LOCK TABLES `employee_evaluation` WRITE;
/*!40000 ALTER TABLE `employee_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_governmentid`
--

DROP TABLE IF EXISTS `employee_governmentid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_governmentid` (
  `employee_ID` bigint unsigned NOT NULL,
  `sss` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `philhealth` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagibig` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  UNIQUE KEY `sss_UNIQUE` (`sss`),
  UNIQUE KEY `philhealth_UNIQUE` (`philhealth`),
  UNIQUE KEY `pagibig_UNIQUE` (`pagibig`),
  UNIQUE KEY `tin_UNIQUE` (`tin`),
  CONSTRAINT `employee_governmentid_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_governmentid`
--

LOCK TABLES `employee_governmentid` WRITE;
/*!40000 ALTER TABLE `employee_governmentid` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_governmentid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_history`
--

DROP TABLE IF EXISTS `employee_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_history` (
  `employee_ID` bigint unsigned NOT NULL,
  `job_ID` bigint unsigned DEFAULT NULL,
  `department_ID` bigint unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `employee_ID_idx` (`employee_ID`),
  KEY `job_ID_idx` (`job_ID`),
  KEY `department_ID(employee_history)_idx` (`department_ID`),
  CONSTRAINT `employee_history_department_id_foreign` FOREIGN KEY (`department_ID`) REFERENCES `employee_department` (`department_ID`),
  CONSTRAINT `employee_history_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`),
  CONSTRAINT `employee_history_job_id_foreign` FOREIGN KEY (`job_ID`) REFERENCES `employee_job` (`job_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_history`
--

LOCK TABLES `employee_history` WRITE;
/*!40000 ALTER TABLE `employee_history` DISABLE KEYS */;
INSERT INTO `employee_history` VALUES (1,NULL,1,'2024-09-29',NULL,1,'2024-09-29 01:17:31','2024-09-29 01:17:31'),(2,NULL,2,'2024-09-29',NULL,1,'2024-09-29 01:26:19','2024-09-29 01:26:19'),(3,NULL,2,'2024-10-02',NULL,1,'2024-10-02 03:20:08','2024-10-02 03:20:08'),(4,NULL,2,'2024-10-07',NULL,1,'2024-10-06 20:57:27','2024-10-06 20:57:27'),(5,NULL,9,'2024-10-07',NULL,1,'2024-10-06 21:00:19','2024-10-06 21:00:19'),(6,NULL,2,'2024-10-07',NULL,1,'2024-10-06 21:38:50','2024-10-06 21:38:50'),(7,NULL,4,'2024-10-07',NULL,1,'2024-10-06 23:54:18','2024-10-06 23:54:18'),(8,NULL,9,'2024-10-11',NULL,1,'2024-10-11 10:42:09','2024-10-11 10:42:09'),(9,NULL,9,'2024-10-11',NULL,1,'2024-10-11 10:47:55','2024-10-11 10:47:55'),(10,NULL,1,'2024-10-16',NULL,1,'2024-10-16 06:43:45','2024-10-16 06:43:45');
/*!40000 ALTER TABLE `employee_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_information`
--

DROP TABLE IF EXISTS `employee_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_information` (
  `employee_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_ID` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`employee_ID`),
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  KEY `user_ID(employee_information)_idx` (`user_ID`),
  CONSTRAINT `employee_information_user_id_foreign` FOREIGN KEY (`user_ID`) REFERENCES `user_login` (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_information`
--

LOCK TABLES `employee_information` WRITE;
/*!40000 ALTER TABLE `employee_information` DISABLE KEYS */;
INSERT INTO `employee_information` VALUES (1,'admin','Ryan Mark','Macalalo','Luis','none',NULL),(2,'employee','Rene Martin','Salvador','Calpo','none',NULL),(3,'department','Joshua','Doe','Cruz','junior',NULL),(4,NULL,'Vicente','Malo','Dela Cruz','none',NULL),(5,'packinghead','Juanito','Juan','Cruz','none',NULL),(6,NULL,'Jackson','Jacinto','Perez','second',NULL),(7,NULL,'Finch','Perez','Lacunia','fourth',NULL),(8,'packingemployee','Thomas','Shoal','Philips','second',NULL),(9,'packingemployee2','Ingrid','Cruz','Delo santos','none',NULL),(10,NULL,'Mark','Macalalo','Luis','sixth',NULL);
/*!40000 ALTER TABLE `employee_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_job`
--

DROP TABLE IF EXISTS `employee_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_job` (
  `job_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`job_ID`),
  UNIQUE KEY `job_ID_UNIQUE` (`job_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_job`
--

LOCK TABLES `employee_job` WRITE;
/*!40000 ALTER TABLE `employee_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave`
--

DROP TABLE IF EXISTS `employee_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_leave` (
  `leave_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `employee_ID` int NOT NULL,
  `date_applied` date NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `hours_no` decimal(7,2) DEFAULT NULL,
  `leave_type` int NOT NULL,
  `leave_type_other` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_approval` bit(2) DEFAULT NULL,
  `manager_ID` int DEFAULT NULL,
  `manager_date_approved` date DEFAULT NULL,
  `hr_approval` bit(2) DEFAULT NULL,
  `hr_ID` int DEFAULT NULL,
  `hr_date_approved` date DEFAULT NULL,
  PRIMARY KEY (`leave_ID`),
  UNIQUE KEY `leave_ID_UNIQUE` (`leave_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave`
--

LOCK TABLES `employee_leave` WRITE;
/*!40000 ALTER TABLE `employee_leave` DISABLE KEYS */;
INSERT INTO `employee_leave` VALUES (1,2,'2024-10-15','2024-10-15','2024-10-19',NULL,1,NULL,'sample sick leave 1',_binary '',3,'2024-10-15',NULL,1,NULL),(2,2,'2024-10-15','2024-10-16','2024-11-01',NULL,2,NULL,'sample sick leave 2',_binary '\0',3,'2024-10-15',NULL,1,NULL),(3,2,'2024-10-15','2024-10-19','2024-10-24',NULL,3,NULL,'sample sick leave 3',NULL,3,NULL,NULL,1,NULL),(4,2,'2024-10-15','2024-10-16','2024-10-26',NULL,4,NULL,'sample leave 5',NULL,3,NULL,NULL,1,NULL),(5,2,'2024-10-15','2024-10-15','2024-10-15',NULL,0,'half day','sample half day',_binary '\0',3,'2024-10-15',NULL,1,NULL),(6,8,'2024-10-15','2024-10-15','2024-10-15',NULL,0,'undertime','undertime sample leave',NULL,5,NULL,NULL,1,NULL),(7,2,'2024-10-15','2024-10-15','2024-10-17',NULL,0,'FAMILY MATTER SAMPLE','sample max 20 character',NULL,3,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `employee_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_otherinfo`
--

DROP TABLE IF EXISTS `employee_otherinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_otherinfo` (
  `employee_ID` bigint unsigned NOT NULL,
  `birth_date` date NOT NULL,
  `birth_place` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civil_status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `employee_ID_UNIQUE` (`employee_ID`),
  CONSTRAINT `employee_otherinfo_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_otherinfo`
--

LOCK TABLES `employee_otherinfo` WRITE;
/*!40000 ALTER TABLE `employee_otherinfo` DISABLE KEYS */;
INSERT INTO `employee_otherinfo` VALUES (1,'2024-09-27','Candelaria, Quezon','Married',NULL,NULL),(2,'2024-09-13','Candelaria, Quezon','Single',NULL,NULL),(3,'1998-09-09','Bulihan, Silang','Single',NULL,NULL),(4,'1996-02-09','Bulihan, Silang','Married',NULL,NULL),(5,'1980-10-09','Binan','Married',NULL,NULL),(6,'1981-10-07','Candelaria, Quezon','Single',NULL,NULL),(7,'1999-10-07','Cavite, Cavite','Married',NULL,NULL),(8,'1995-05-08','Pangasinan','Single',NULL,NULL),(9,'1990-02-24','Alabang','Single',NULL,NULL),(10,'2024-10-02','Candelaria, Quezon','Married',NULL,NULL);
/*!40000 ALTER TABLE `employee_otherinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_workhistory`
--

DROP TABLE IF EXISTS `employee_workhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_workhistory` (
  `employee_ID` bigint unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `company` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `employee_ID(employee_workhistory)_idx` (`employee_ID`),
  CONSTRAINT `employee_workhistory_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_workhistory`
--

LOCK TABLES `employee_workhistory` WRITE;
/*!40000 ALTER TABLE `employee_workhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_workhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_scale`
--

DROP TABLE IF EXISTS `evaluation_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_scale` (
  `scale_value` int NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`scale_value`),
  UNIQUE KEY `scale_value_UNIQUE` (`scale_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_scale`
--

LOCK TABLES `evaluation_scale` WRITE;
/*!40000 ALTER TABLE `evaluation_scale` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation_scale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_balance`
--

DROP TABLE IF EXISTS `leave_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_balance` (
  `employee_ID` bigint unsigned NOT NULL,
  `leave_type` int DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `employee_leave_type_UNIQUE` (`employee_ID`,`leave_type`),
  KEY `employee_ID(leave_balance)_idx` (`employee_ID`),
  KEY `leave_balance_leave_type_foreign` (`leave_type`),
  CONSTRAINT `leave_balance_employee_id_foreign` FOREIGN KEY (`employee_ID`) REFERENCES `employee_information` (`employee_ID`),
  CONSTRAINT `leave_balance_leave_type_foreign` FOREIGN KEY (`leave_type`) REFERENCES `leave_type` (`leave_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_balance`
--

LOCK TABLES `leave_balance` WRITE;
/*!40000 ALTER TABLE `leave_balance` DISABLE KEYS */;
/*!40000 ALTER TABLE `leave_balance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_type`
--

DROP TABLE IF EXISTS `leave_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_type` (
  `leave_type` int NOT NULL,
  `value` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`leave_type`),
  UNIQUE KEY `value_UNIQUE` (`value`),
  UNIQUE KEY `leave_type_UNIQUE` (`leave_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_type`
--

LOCK TABLES `leave_type` WRITE;
/*!40000 ALTER TABLE `leave_type` DISABLE KEYS */;
INSERT INTO `leave_type` VALUES (1,'Sick Leave',NULL,NULL),(2,'Vacation Leave',NULL,NULL),(3,'Emergency Leave',NULL,NULL),(4,'Maternity Leave',NULL,NULL),(5,'Bereavement Leave',NULL,NULL),(6,'Casual Leave',NULL,NULL);
/*!40000 ALTER TABLE `leave_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (5,'2024_08_30_074741_user_login',2),(6,'2024_08_30_080120_user_login',3),(7,'2024_08_30_080403_user_login',4),(8,'2024_08_30_114438_recommend_action',5),(9,'2024_08_30_115216_create_failed_jobs_table',0),(10,'2024_08_30_115216_create_password_reset_tokens_table',0),(11,'2024_08_30_115216_create_personal_access_tokens_table',0),(12,'2024_08_30_115216_create_recommend_action_table',0),(13,'2024_08_30_115216_create_user_login_table',0),(14,'2024_08_30_115216_create_users_table',0),(15,'2024_08_30_120902_alltables',6),(20,'2014_10_12_000000_create_users_table',7),(21,'2014_10_12_100000_create_password_reset_tokens_table',7),(22,'2019_08_19_000000_create_failed_jobs_table',7),(23,'2019_12_14_000001_create_personal_access_tokens_table',7),(24,'2024_08_31_052941_alltables',8),(25,'2024_09_02_041628_add_dark_mode_to_user_login_table',9),(26,'2024_09_02_122825_alltables',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend_action`
--

DROP TABLE IF EXISTS `recommend_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend_action` (
  `action_ID` int NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`action_ID`),
  UNIQUE KEY `action_ID_UNIQUE` (`action_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend_action`
--

LOCK TABLES `recommend_action` WRITE;
/*!40000 ALTER TABLE `recommend_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommend_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_login` (
  `user_ID` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int NOT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
INSERT INTO `user_login` VALUES ('admin','sample',1),('department','sample',3),('employee','sample',2),('msithead','sample',3),('packingemployee','sample',2),('packingemployee2','sample',2),('packinghead','sample',3);
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 14:52:32
