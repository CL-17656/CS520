-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: cs520_project
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `tb_answer`
--

DROP TABLE IF EXISTS `tb_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT 'author',
  `question_analysis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT 'Question type 1 single choice 2 multiple choice 3 fill in the blank 4 text 5 drop down 6 cascade 7 scoring 8 upload',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL COMMENT 'question mode 1questionnaire 2quiz',
  `possible_answers` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `correct_answers` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_answer`
--

LOCK TABLES `tb_answer` WRITE;
/*!40000 ALTER TABLE `tb_answer` DISABLE KEYS */;
INSERT INTO `tb_answer` VALUES (1,1,NULL,1,0,1,'[\"yes\", \"no\", \"not sure\"]',NULL,'2024-11-16 09:37:33',NULL),(2,1,'The choice b is wrong because something is wrong.',2,0,2,'[\"a\", \"b\", \"c\", \"d\"]','[\"a\", \"c\", \"d\"]','2024-11-16 09:40:54',NULL),(3,1,'According to question, we know Lisa is at least 2m.',3,0,2,NULL,'[\"200\"]','2024-11-16 10:56:42',NULL),(4,1,NULL,5,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]',NULL,'2024-11-16 11:01:51',NULL),(5,1,NULL,1,0,2,'[&quot;&lt;p&gt;333&lt;br /&gt;555&lt;br /&gt;66&lt;br /&gt;&lt;img src=\'0f980d1c4cc50fc37c59a8c1d1f1a97f.jpg\'alt=\'2622c8bc87c5130202f7267d091c47c2733e2b8a5b1834SNvF6_fw1200.jpg\' /&gt;&lt;/p&gt;&quot;, &quot;&lt;p&gt;444&lt;br /&gt;555&lt;br /&gt;66&lt;br /&gt;&lt;img src=\'0f980d1c4cc50fc37c59a8c1d1f1a97f.jpg\'alt=\'2622c8bc87c5130202f7267d091c47c2733e2b8a5b1834SNvF6_fw1200.jpg\' /&gt;&lt;/p&gt;&quot;]','[&quot;&lt;p&gt;333&lt;br /&gt;555&lt;br /&gt;66&lt;br /&gt;&lt;img src=\'0f980d1c4cc50fc37c59a8c1d1f1a97f.jpg\'alt=\'2622c8bc87c5130202f7267d091c47c2733e2b8a5b1834SNvF6_fw1200.jpg\' /&gt;&lt;/p&gt;&quot;]','2024-11-17 11:23:38','2024-11-17 16:18:12'),(6,1,NULL,1,0,1,'[\"within a week\", \"1 to 2 weeks\", \"2 weeks to a month\", \"a month to half a year\", \"more than half a year\"]',NULL,'2024-11-18 09:22:59',NULL),(82,1,'',8,0,1,'null','[&quot;af111a7201d0374012130b99f0b7478a.docx&quot;]','2024-11-18 14:22:56','2024-11-18 16:14:27'),(94,1,'Reason for this is that...',1,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice1&quot;]','2024-11-18 16:11:16','2024-11-19 10:12:56'),(95,1,'',2,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice1&quot;]','2024-11-18 16:11:19','2024-11-18 17:35:25'),(96,1,'',1,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice1&quot;]','2024-11-18 16:11:19','2024-11-18 17:35:03'),(97,1,'',2,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice1&quot;]','2024-11-18 16:11:25','2024-11-18 17:35:31'),(98,1,'',3,0,1,NULL,'[&quot;correct answer&quot;]','2024-11-18 16:11:25','2024-11-18 17:35:46'),(99,1,'',8,0,1,NULL,'[&quot;af111a7201d0374012130b99f0b7478a.docx&quot;]','2024-11-18 16:11:27','2024-11-18 17:36:20'),(100,1,'',3,0,1,NULL,'[&quot;correct answer.&quot;]','2024-11-18 16:11:27','2024-11-18 17:36:29'),(101,1,'',3,0,1,NULL,'[&quot;correct answer..&quot;]','2024-11-18 16:11:28','2024-11-18 17:36:34'),(102,1,'',4,0,1,NULL,'[&quot;correct answer...&quot;]','2024-11-18 16:11:28','2024-11-18 17:06:49'),(103,1,'',4,0,1,NULL,'[&quot;correct answer....&quot;]','2024-11-18 16:11:44','2024-11-18 17:36:46'),(104,1,'',7,0,1,NULL,'[&quot;&quot;]','2024-11-18 16:11:44',NULL),(105,1,'',2,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice2&quot;]','2024-11-18 16:19:17','2024-11-18 17:36:51'),(107,1,'',4,0,1,NULL,'[&quot;answer&quot;]','2024-11-18 16:31:09','2024-11-19 13:58:14'),(112,1,'',5,0,2,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice1&quot;]','2024-11-18 17:07:21','2024-11-18 17:37:00'),(113,1,'',5,0,2,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice2&quot;]','2024-11-18 17:11:28','2024-11-18 17:37:04'),(115,1,'',1,0,2,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;choice1&quot;]','2024-11-19 15:18:15','2024-11-19 15:40:36'),(116,1,'',8,0,2,NULL,'[&quot;&quot;]','2024-11-19 15:58:43',NULL),(162,1,'',8,0,2,NULL,'[&quot;&quot;]','2024-11-20 09:07:49',NULL),(220,1,'',1,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;&quot;]','2024-11-20 14:41:49',NULL),(243,1,'',3,0,1,NULL,'[&quot;&quot;]','2024-11-20 14:55:14',NULL),(244,1,'',1,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;&quot;]','2024-11-20 14:55:17',NULL),(245,1,'',7,0,1,NULL,'[&quot;&quot;]','2024-11-20 14:56:13',NULL),(246,1,'',5,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;]','[&quot;&quot;]','2024-11-20 14:56:16',NULL),(247,1,'',2,0,1,'[&quot;choice1&quot;,&quot;choice2&quot;,&quot;choice3&quot;]','[]','2024-11-20 17:28:16','2024-11-20 17:29:22');
/*!40000 ALTER TABLE `tb_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `order_num` tinyint(1) NOT NULL,
  `parent_id` int DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0F1T',
  `is_disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0F1T',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (1,'setup','/setup','iconfont icon-shezhi','2024-11-15 13:12:51','2024-11-15 13:14:59',1,NULL,0,0),(2,'menu','/setup/menu','iconfont icon-caidan','2024-11-15 13:13:11','2024-11-15 13:15:21',1,1,0,0),(3,'users','/setup/users','iconfont icon-tuandui','2024-11-15 13:13:31','2024-11-15 13:15:31',1,1,0,0),(4,'permission','/permission','iconfont icon-suoping','2024-11-15 13:14:10','2024-11-15 13:15:52',1,NULL,0,0),(5,'role','/permission/role','iconfont icon-laoban','2024-11-15 13:14:15',NULL,1,4,0,0);
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_message`
--

DROP TABLE IF EXISTS `tb_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_content` varchar(2280) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ip_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `from_id` int NOT NULL COMMENT 'sender',
  `to_id` int NOT NULL COMMENT 'receiver',
  `status` tinyint(1) DEFAULT '0' COMMENT '1read 0not read',
  `conversation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8951 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_message`
--

LOCK TABLES `tb_message` WRITE;
/*!40000 ALTER TABLE `tb_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_post`
--

DROP TABLE IF EXISTS `tb_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `project_id` int NOT NULL,
  `answer` varchar(2480) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '{}',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_post`
--

LOCK TABLES `tb_post` WRITE;
/*!40000 ALTER TABLE `tb_post` DISABLE KEYS */;
INSERT INTO `tb_post` VALUES (1,1,3,'{&quot;82&quot;:[&quot;1dc47835a7d45e2e806e5f166717f1f7.docx&quot;],&quot;94&quot;:[&quot;choice1&quot;],&quot;96&quot;:[&quot;choice2&quot;],&quot;97&quot;:[&quot;choice2&quot;],&quot;100&quot;:[&quot;100&quot;],&quot;101&quot;:[&quot;101&quot;],&quot;103&quot;:[&quot;123&quot;],&quot;104&quot;:[&quot;4&quot;],&quot;105&quot;:[&quot;choice2&quot;],&quot;112&quot;:[&quot;choice1&quot;]}',0,'2024-11-20 16:15:00',NULL),(2,1,1,'{&quot;1&quot;:[&quot;yes&quot;],&quot;4&quot;:[&quot;choice2&quot;],&quot;247&quot;:[&quot;choice1&quot;,&quot;choice2&quot;]}',0,'2024-11-20 17:28:43',NULL);
/*!40000 ALTER TABLE `tb_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_project`
--

DROP TABLE IF EXISTS `tb_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `questions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cascades` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1questionnaire 2quiz',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_random` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_password` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'need password?',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `question_number` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'display question number or not',
  `progress_bar` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'progress bar visible',
  `auto_save` tinyint(1) NOT NULL DEFAULT '0',
  `answer_sheet_visible` tinyint(1) NOT NULL DEFAULT '0',
  `copy_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `enable_update` tinyint(1) NOT NULL DEFAULT '0',
  `answer_analysis` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'display answer and analysis or not',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `question_num` int NOT NULL DEFAULT '0' COMMENT 'number of random questions',
  `tag_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'random question tags',
  `types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'random question types',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_project`
--

LOCK TABLES `tb_project` WRITE;
/*!40000 ALTER TABLE `tb_project` DISABLE KEYS */;
INSERT INTO `tb_project` VALUES (1,'questionnaire1','[4,1,247]','null',1,1,0,'2024-11-20 15:22:20','2024-11-20 17:28:16',0,'$2a$10$drpLVPRFIbXZTDJ3goWndOXdYn.hy0KM6j5rSTrmLm6ZigmkilP96',0,0,0,0,1,0,1,NULL,NULL,0,'','','For info collection',NULL,0),(2,'random_quiz1','[3]',NULL,2,0,1,'2024-11-18 14:23:40',NULL,0,'',0,1,1,0,0,1,1,'2024-11-20 16:00:00','2024-11-20 16:00:00',4,'[35,34,32]','[3,4,5]','444444','',0),(3,'quiz1','[94,96,95,97,98,99,100,101,102,104,103,105,107,82,112,113,115,116,162]','{\"82\":{},\"94\":{\"0\":96,\"1\":98},\"95\":{},\"96\":{\"0\":95},\"97\":{\"1\":99},\"98\":{},\"99\":{},\"100\":{},\"101\":{},\"102\":{},\"103\":{},\"104\":{},\"105\":{},\"107\":{},\"112\":{},\"113\":{}}',2,1,0,'2024-11-20 16:44:39','2024-11-21 10:13:23',0,'$2a$10$aB/xXfJqBFk/l9vfXcUNK.JCpCgNpjFDtqHvPZCACjYzjA5BAkHCu',0,0,0,0,1,1,1,'2024-11-18 16:00:00','2024-11-19 08:00:00',0,'','',NULL,'',0),(4,'random_questionnaire1','[220,243,244,245,246]','null',1,1,0,'2024-11-21 13:57:51','2024-11-21 14:56:16',0,'$2a$10$f2Gy58fckyWPJaOuB1dN4Oy9tDu0GsI.x5VL57cg1jfpqP9tGI87m',0,0,0,0,0,1,0,NULL,NULL,0,'','',NULL,NULL,0);
/*!40000 ALTER TABLE `tb_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_question`
--

DROP TABLE IF EXISTS `tb_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT 'author_id',
  `question_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `question_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` int NOT NULL COMMENT 'Question type 1 single choice 2 multiple choice 3 fill in the blank 4 text 5 drop down 6 cascade 7 scoring 8 upload',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL COMMENT 'question mode 1questionnaire 2quiz',
  `questions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'relative questions',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_question`
--

LOCK TABLES `tb_question` WRITE;
/*!40000 ALTER TABLE `tb_question` DISABLE KEYS */;
INSERT INTO `tb_question` VALUES (1,1,'Do you find instructor note helpful for your study?','This question helps instructor know more about students',1,0,1,NULL,'2024-11-16 16:12:20',NULL),(2,1,'multiple choice sample question','This is a multiple choice.',2,0,1,NULL,'2024-11-16 16:14:12','2024-11-16 17:29:22'),(3,1,'Lisa is at least _____ feet.','Enter an integer in the space',3,0,2,NULL,'2024-11-17 10:54:59',NULL),(4,1,'Write the proof for the equation.',NULL,5,0,1,NULL,'2024-11-17 10:59:32',NULL),(5,1,'Select your gender.',NULL,1,0,2,NULL,'2024-11-17 11:22:17',NULL),(6,1,'What is the time complexity of the code?',NULL,1,0,1,NULL,'2024-11-18 09:22:59',NULL),(82,1,'upload sample question','This is a upload question.',8,0,1,NULL,'2024-11-18 14:22:56','2024-11-18 16:14:27'),(94,1,'single choice sample question','This is a single choice.',1,0,1,NULL,'2024-11-18 16:11:15','2024-11-19 10:12:55'),(95,1,'multiple choice sample question2',NULL,2,0,1,NULL,'2024-11-18 16:11:19','2024-11-18 17:35:25'),(96,1,'single choice sample question2',NULL,1,0,1,NULL,'2024-11-18 16:11:19','2024-11-18 17:35:03'),(97,1,'multiple choice sample question3',NULL,2,0,1,NULL,'2024-11-18 16:11:24','2024-11-18 17:35:30'),(98,1,'fill in the blanks sample question','This is a fill in the blanks question.',3,0,1,NULL,'2024-11-18 16:11:24','2024-11-18 17:35:45'),(99,1,'upload sample question2',NULL,8,0,1,NULL,'2024-11-18 16:11:26','2024-11-18 17:36:19'),(100,1,'fill in the blanks sample question2',NULL,3,0,1,NULL,'2024-11-18 16:11:26','2024-11-18 17:36:28'),(101,1,'fill in the blanks sample question3',NULL,3,0,1,NULL,'2024-11-18 16:11:28','2024-11-18 17:36:34'),(102,1,'text sample quetsion','This is a text question.',4,0,1,NULL,'2024-11-18 16:11:28','2024-11-18 17:06:49'),(103,1,'text sample quetsion2',NULL,4,0,1,NULL,'2024-11-18 16:11:44','2024-11-18 17:36:45'),(104,1,'scoring sample question','This is a scoring question.',7,0,1,NULL,'2024-11-18 16:11:44',NULL),(105,1,'multiple choice sample question4',NULL,2,0,1,NULL,'2024-11-18 16:19:17','2024-11-18 17:36:51'),(107,1,'name','Enter your name.',4,0,1,NULL,'2024-11-18 16:31:08','2024-11-19 13:58:13'),(112,1,'drop down sample question','This is a drop down question',5,0,2,NULL,'2024-11-18 17:07:20','2024-11-18 17:36:59'),(113,1,'drop down sample question2',NULL,5,0,2,NULL,'2024-11-18 17:11:27','2024-11-18 17:37:04'),(115,1,'single choice sample question3',NULL,1,0,2,NULL,'2024-11-19 15:18:15','2024-11-19 15:40:36'),(116,1,'upload sample question3',NULL,8,0,2,NULL,'2024-11-19 15:58:42',NULL),(162,1,'upload sample question4',NULL,8,0,2,NULL,'2024-11-20 09:07:48',NULL),(220,1,'single choice sample question4',NULL,1,0,1,NULL,'2024-11-20 14:41:49',NULL),(243,1,'fill in the blanks sample question4',NULL,3,0,1,NULL,'2024-11-20 14:55:13',NULL),(244,1,'single choice sample question5',NULL,1,0,1,NULL,'2024-11-20 14:55:17',NULL),(245,1,'scoring sample question2',NULL,7,0,1,NULL,'2024-11-20 14:56:13',NULL),(246,1,'drop down sample question3',NULL,5,0,1,NULL,'2024-11-20 14:56:15',NULL),(247,1,'multiple choice sample question5',NULL,2,0,1,NULL,'2024-11-20 17:28:16',NULL);
/*!40000 ALTER TABLE `tb_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_question_tag`
--

DROP TABLE IF EXISTS `tb_question_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_question_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_question_tag`
--

LOCK TABLES `tb_question_tag` WRITE;
/*!40000 ALTER TABLE `tb_question_tag` DISABLE KEYS */;
INSERT INTO `tb_question_tag` VALUES (1,1,34),(2,5,29),(3,3,35),(4,4,29),(5,104,1),(6,107,36),(7,102,1),(8,96,1),(9,95,1),(10,97,1),(11,98,1),(12,99,1),(13,100,1),(14,101,1),(15,103,1),(16,105,1),(17,112,1),(18,113,1),(19,115,1),(20,162,1),(21,220,1),(22,243,1),(23,244,1),(24,245,1),(25,246,1),(36,247,1),(37,2,1);
/*!40000 ALTER TABLE `tb_question_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resource`
--

DROP TABLE IF EXISTS `tb_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `is_anonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'anonymous acces 0F 1T',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resource`
--

LOCK TABLES `tb_resource` WRITE;
/*!40000 ALTER TABLE `tb_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role_label` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_disable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0F 1T',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES (1,'admin','admin',0,'2024-11-15 13:02:21','2024-11-15 13:03:12'),(2,'professor','prof',0,'2024-11-15 13:02:25','2024-11-15 13:03:24'),(3,'student','stu',0,'2024-11-15 13:03:23','2024-11-15 13:03:44'),(4,'test','test',1,'2024-11-15 13:04:46','2024-11-15 13:05:37');
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_menu`
--

DROP TABLE IF EXISTS `tb_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3920 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_menu`
--

LOCK TABLES `tb_role_menu` WRITE;
/*!40000 ALTER TABLE `tb_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role_resource`
--

DROP TABLE IF EXISTS `tb_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role_resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `resource_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role_resource`
--

LOCK TABLES `tb_role_resource` WRITE;
/*!40000 ALTER TABLE `tb_role_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tag`
--

DROP TABLE IF EXISTS `tb_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tag`
--

LOCK TABLES `tb_tag` WRITE;
/*!40000 ALTER TABLE `tb_tag` DISABLE KEYS */;
INSERT INTO `tb_tag` VALUES (1,'tag1','2024-11-18 16:01:46',NULL),(29,'tag2','2024-11-18 23:33:57',NULL),(34,'tag3','2024-11-19 16:17:29',NULL),(35,'tag4','2024-11-19 16:18:01','2024-11-20 14:25:31'),(36,'tag5','2024-11-20 14:15:31',NULL);
/*!40000 ALTER TABLE `tb_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_auth`
--

DROP TABLE IF EXISTS `tb_user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_auth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_info_id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `login_type` tinyint(1) NOT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_auth`
--

LOCK TABLES `tb_user_auth` WRITE;
/*!40000 ALTER TABLE `tb_user_auth` DISABLE KEYS */;
INSERT INTO `tb_user_auth` VALUES (1,1,'admin','$2a$10$dcZw8qRctvXv/U1WKSiB.uevrbR1ye4pFoy00ms3PhwGvF1jApihe',1,'','','2024-11-15 13:43:18','2024-11-15 13:44:01','2024-11-15 13:44:01');
/*!40000 ALTER TABLE `tb_user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_info`
--

DROP TABLE IF EXISTS `tb_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_disable` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_info`
--

LOCK TABLES `tb_user_info` WRITE;
/*!40000 ALTER TABLE `tb_user_info` DISABLE KEYS */;
INSERT INTO `tb_user_info` VALUES (1,'admin','admin','','','12345678910',0,'2024-11-15 13:23:17','2024-11-15 13:23:57');
/*!40000 ALTER TABLE `tb_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user_role`
--

DROP TABLE IF EXISTS `tb_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user_role`
--

LOCK TABLES `tb_user_role` WRITE;
/*!40000 ALTER TABLE `tb_user_role` DISABLE KEYS */;
INSERT INTO `tb_user_role` VALUES (1,1,1);
/*!40000 ALTER TABLE `tb_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-20 15:21:40
