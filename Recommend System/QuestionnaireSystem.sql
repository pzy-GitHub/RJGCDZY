CREATE DATABASE  IF NOT EXISTS `QuestionnaireSystem` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `QuestionnaireSystem`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: QuestionnaireSystem
-- ------------------------------------------------------
-- Server version	5.7.28

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (1,1,'2020.5.24 14:00',60,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Warren\"}, {\"index\": 2, \"answer\": 0}, {\"index\": 3, \"answer\": 1}]}',1,1),(2,1,'2020.5.24 15:33',45,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Jack\"}, {\"index\": 2, \"answer\": 1}, {\"index\": 3, \"answer\": 1}]}',1,2),(3,1,'2020.5.24 15:45',50,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Mark\"}, {\"index\": 2, \"answer\": 1}, {\"index\": 3, \"answer\": 0}]}',1,3),(4,1,'2020.5.24 16:00',43,1,'{\"answerlist\": [{\"index\": 1, \"answer\": \"Lisa\"}, {\"index\": 2, \"answer\": 1}, {\"index\": 3, \"answer\": 0}]}',1,4),(5,2,'2020.5.24 16:00',0,1,'{}',1,2),(6,2,'2020.5.24 16:00',0,1,'{}',1,1),(7,2,'2020.5.24 16:00',0,1,'{}',1,5),(8,2,'2020.5.24 16:00',0,1,'{}',1,6),(9,2,'2020.5.24 16:00',0,1,'{}',1,1),(10,2,'2020.5.24 16:00',0,1,'{}',1,4),(11,3,'2020.5.24 16:00',0,1,'{}',1,1),(12,3,'2020.5.24 16:00',0,1,'{}',1,3),(13,3,'2020.5.24 16:00',0,1,'{}',1,6),(14,3,'2020.5.24 16:00',0,1,'{}',1,4),(15,4,'2020.5.24 16:00',0,1,'{}',1,1),(16,4,'2020.5.24 16:00',0,1,'{}',1,2),(17,5,'2020.5.24 16:00',0,1,'{}',1,5),(18,6,'2020.5.24 16:00',0,1,'{}',1,2),(19,6,'2020.5.24 16:00',0,1,'{}',1,3),(20,7,'2020.5.24 16:00',0,1,'{}',1,1),(21,7,'2020.5.24 16:00',0,1,'{}',1,2),(22,7,'2020.5.24 16:00',0,1,'{}',1,3),(23,7,'2020.5.24 16:00',0,1,'{}',1,4),(24,8,'2020.5.24 16:00',0,1,'{}',1,5);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_tags`
--

DROP TABLE IF EXISTS `group_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_tags` (
  `questionaireID` int(11) NOT NULL,
  `userID` varchar(45) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `t_age` varchar(45) DEFAULT NULL,
  `t_edu` varchar(45) DEFAULT NULL,
  `t_job` varchar(45) DEFAULT NULL,
  `t_region` varchar(45) DEFAULT NULL,
  `t_gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`questionaireID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_tags`
--

LOCK TABLES `group_tags` WRITE;
/*!40000 ALTER TABLE `group_tags` DISABLE KEYS */;
INSERT INTO `group_tags` VALUES (1,'1','问卷1','18~20','大学生','学生','北京','男'),(2,'1','问卷2','24~30','研究生','金融','上海',NULL),(3,'2','问卷3','30~40','','法律','重庆、四川',NULL),(4,'2','问卷4','18~20','大学','学生','上海、江苏','女'),(5,'3','问卷5','14岁以下','',NULL,'内蒙古',NULL),(6,'4','问卷6','','博士','IT/互联网','上海',NULL),(7,'4','问卷7','40~60',NULL,NULL,'安徽、江苏、南京','男'),(8,'5','问卷8','60岁以上','',NULL,'福建',NULL),(9,'6','问卷9','14~17','高中','学生','北京',NULL),(10,'7','问卷10','21~24','大学 ','媒体公关',NULL,'女');
/*!40000 ALTER TABLE `group_tags` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'关于喜茶喜爱度的调查问卷','{\"questionlist\": [{\"type\": \"text\", \"index\": 1, \"content\": \"您的姓名？\"}, {\"type\": \"single-choice\", \"index\": 2, \"option\": [\"male\", \"female\"], \"content\": \"您的性别？\"}, {\"type\": \"single-choice\", \"index\": 3, \"option\": [\"like\", \"dislike\"], \"content\": \"您喜欢喜茶吗\"}]}',1,'2020.5.24 13:00','教育培训','企业培训',4),(2,2,'追星1','{}',1,'2020.5.24 13:00',NULL,NULL,29),(3,3,'追星2','{}',1,'2020.5.24 13:00',NULL,NULL,0),(4,4,'游戏行业调查','{}',1,'2020.5.24 13:00',NULL,NULL,3),(5,5,'手游时间','{}',1,'2020.5.24 13:00',NULL,NULL,41),(6,6,'人工智能普及度','{}',1,'2020.5.24 13:00',NULL,NULL,31),(7,7,'老年人心理健康','{}',1,'2020.5.24 13:00',NULL,NULL,13),(8,8,'环保','{}',1,'2020.5.24 13:00',NULL,NULL,2);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaire_tags`
--

DROP TABLE IF EXISTS `questionnaire_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionnaire_tags` (
  `index` int(11) NOT NULL,
  `quetionnaireID` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `tag1` varchar(45) DEFAULT NULL,
  `tag2` varchar(45) DEFAULT NULL,
  UNIQUE KEY `index_UNIQUE` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire_tags`
--

LOCK TABLES `questionnaire_tags` WRITE;
/*!40000 ALTER TABLE `questionnaire_tags` DISABLE KEYS */;
INSERT INTO `questionnaire_tags` VALUES (1,1,'问卷1','教育培训','企业培训'),(2,2,'问卷2','生活日常','心理健康'),(3,3,'问卷3','市场调研','环境环保'),(4,4,'问卷4','市场调研','医疗健康'),(5,5,'问卷5','市场调研','游戏产业'),(6,6,'问卷6','心理测评',NULL),(7,7,'问卷7','性格测评',NULL),(8,8,'问卷8','趣味测评',NULL),(9,9,'问卷9','视频类',NULL),(10,10,'问卷10','文章类',NULL);
/*!40000 ALTER TABLE `questionnaire_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Angela','123'),(2,'Belly','123'),(3,'Cecilia','123'),(4,'David','123'),(5,'Emily','123'),(6,'Fola','123'),(7,'Gary','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-26 22:38:00
