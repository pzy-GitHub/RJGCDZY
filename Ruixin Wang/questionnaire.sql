CREATE DATABASE  IF NOT EXISTS `questionnaire` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `questionnaire`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: questionnaire
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `questionnaireID` int(11) NOT NULL,
  `submitTime` varchar(45) NOT NULL,
  `timeForWriting` int(11) NOT NULL,
  `feedback` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,'2020.5.24 14:00',60,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Warren\"}, {\"index\": 2, \"answer\": 0}, {\"index\": 3, \"answer\": 1}]}',1,0),(2,1,'2020.5.24 15:33',45,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Jack\"}, {\"index\": 2, \"answer\": 1}, {\"index\": 3, \"answer\": 1}]}',1,0),(3,1,'2020.5.24 15:45',50,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Mark\"}, {\"index\": 2, \"answer\": 1}, {\"index\": 3, \"answer\": 0}]}',1,0),(4,1,'2020.5.24 16:00',43,-1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Lisa\"}, {\"index\": 2, \"answer\": 1}, {\"index\": 3, \"answer\": 0}]}',1,0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `questionnaireID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `publishTime` varchar(45) NOT NULL,
  `tag1` varchar(45) DEFAULT NULL,
  `tag2` varchar(45) DEFAULT NULL,
  `cnt` int(11) NOT NULL,
  PRIMARY KEY (`questionnaireID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,981026,'关于喜茶喜爱度的调查问卷','{\"questionlist\": [{\"type\": \"单项填空\", \"index\": 1, \"content\": \"您的姓名？\"}, {\"type\": \"单项选择\", \"index\": 2, \"option\": [\"male\", \"female\"], \"content\": \"您的性别？\"}, {\"type\": \"单项选择\", \"index\": 3, \"option\": [\"like\", \"dislike\"], \"content\": \"您喜欢喜茶吗？\"}]}',1,'2020.5.24 13:00','教育培训','企业培训',4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-28 15:31:45
