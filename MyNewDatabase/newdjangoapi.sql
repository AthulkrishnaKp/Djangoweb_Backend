-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: djangoapi
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `api_like`
--

DROP TABLE IF EXISTS `api_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_like` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_like_post_id_73dc0aac_fk_api_post_id` (`post_id`),
  KEY `api_like_user_id_cf2ea3c1_fk_api_myuser_id` (`user_id`),
  CONSTRAINT `api_like_post_id_73dc0aac_fk_api_post_id` FOREIGN KEY (`post_id`) REFERENCES `api_post` (`id`),
  CONSTRAINT `api_like_user_id_cf2ea3c1_fk_api_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_like`
--

LOCK TABLES `api_like` WRITE;
/*!40000 ALTER TABLE `api_like` DISABLE KEYS */;
INSERT INTO `api_like` VALUES (1,'2023-09-14 04:31:18.016160',1,5),(2,'2023-09-14 04:31:23.067926',4,5),(3,'2023-09-14 04:31:28.067024',7,5),(4,'2023-09-14 04:31:31.882467',3,5),(5,'2023-09-14 04:33:25.111156',1,6),(6,'2023-09-14 04:33:28.610956',2,6),(7,'2023-09-14 04:33:32.978868',10,6),(8,'2023-09-14 04:33:37.928188',9,6),(9,'2023-09-14 04:35:27.806981',11,8),(10,'2023-09-14 04:35:31.591060',12,8),(11,'2023-09-14 04:35:35.556571',2,8),(12,'2023-09-14 04:35:39.156537',5,8),(13,'2023-09-14 04:38:14.885112',5,9),(14,'2023-09-14 04:38:18.637252',13,9),(15,'2023-09-14 04:38:22.134725',12,9),(16,'2023-09-14 04:38:25.317035',10,9),(17,'2023-09-14 04:38:28.833341',1,9),(18,'2023-09-14 04:38:32.765865',2,9);
/*!40000 ALTER TABLE `api_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_myuser`
--

DROP TABLE IF EXISTS `api_myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_myuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `mobile` varchar(17) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_myuser`
--

LOCK TABLES `api_myuser` WRITE;
/*!40000 ALTER TABLE `api_myuser` DISABLE KEYS */;
INSERT INTO `api_myuser` VALUES (1,'pbkdf2_sha256$390000$SDQNgDL8oaDViBuMhZe5D7$0VjaDWuc0VHlDPY2yPXTHJLXkASQNJJZsCYnMJi91Nw=','2023-09-14 04:15:08.199866',1,'athul@22','','',1,1,'2023-09-14 04:14:25.207784','','','athul@gmail.com'),(2,'pbkdf2_sha256$390000$CBlJNjG8hDRkLOEVcAvfMC$jl/T4YKWCHebGEMuYUsXXzMgDUVI0L6hmMqeah8J2fU=',NULL,0,'athul@11','','',0,1,'2023-09-14 04:16:08.147515','9681453410','Athulkrishna','athul11@gmail.com'),(3,'pbkdf2_sha256$390000$qvUzuXa2MvuSAuNrQyGHpL$1mAUSzKGUM+jhOWqe2gP2zzW3CrIwRFPWVTTaXnGwas=',NULL,0,'arun@33','','',0,1,'2023-09-14 04:16:56.011877','96814534522','Arun','arun@gmail.com'),(4,'pbkdf2_sha256$390000$Oa60mrcYoOk63LwuYWTR6R$YV5BtNiy7F4xbbEzEWq5POs6xSzNmNrH4h9VUL4JRjA=',NULL,0,'kumar@44','','',0,1,'2023-09-14 04:17:32.710461','9681454578','Kumar','kumar@gmail.com'),(5,'pbkdf2_sha256$390000$RCKj1GTsay8jdQRzX9FHPr$LbD5DYJEv8vhbaz4WI63YlXSKbBhF8LFAzamAho7p94=',NULL,0,'ramu@55','','',0,1,'2023-09-14 04:18:00.726819','8971454578','Ramu','ramu@gmail.com'),(6,'pbkdf2_sha256$390000$4GYPb2fy9mkQ0K5yi0BT2I$SVzqWIi6KdaReTGSK/D4vosZ6GxkThOhzDvS0q8ihh0=',NULL,0,'orville@66','','',0,1,'2023-09-14 04:18:26.826386','8971554578','Orville','orville@gmail.com'),(7,'pbkdf2_sha256$390000$GhFZFhmWM5sT6GAxv33AUP$hyTH+Oav1H9imBMqxmBSS2gGjs8ezcO2gQHz4os3i4s=',NULL,0,'wilbur@77','','',0,1,'2023-09-14 04:18:53.507600','8971459678','Wilbur','wilbur@gmail.com'),(8,'pbkdf2_sha256$390000$h5ooTkXVZkjhGRjZqZpsVC$wmFuFTZIdL68+ZFMv8hLh1Vx8XdpUMfWukYHT902A+w=',NULL,0,'vivans@88','','',0,1,'2023-09-14 04:19:18.507547','8974512678','Vivans','vivans@gmail.com'),(9,'pbkdf2_sha256$390000$oYzr5RX6kIGtVxy0VJi7nH$l6sVQ6GMyXebJHJkVJYu9t3OIeE3oo9yXT7wuT8d7aQ=',NULL,0,'at@99','','',0,1,'2023-09-14 04:19:54.956622','8971112678','At','at@gmail.com'),(10,'pbkdf2_sha256$390000$Ag6hw12jFuz67oM2mb2c4P$GOs8jothc3tnORIiJntt0g6RZFxv7e0pNLuZyOAe36M=',NULL,0,'zx@100','','',0,1,'2023-09-14 04:20:26.905575','8971118745','zx','zx@gmail.com');
/*!40000 ALTER TABLE `api_myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_myuser_groups`
--

DROP TABLE IF EXISTS `api_myuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_myuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_myuser_groups_myuser_id_group_id_dd0fa6e8_uniq` (`myuser_id`,`group_id`),
  KEY `api_myuser_groups_group_id_242b80d7_fk_auth_group_id` (`group_id`),
  CONSTRAINT `api_myuser_groups_group_id_242b80d7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `api_myuser_groups_myuser_id_7cb4c860_fk_api_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `api_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_myuser_groups`
--

LOCK TABLES `api_myuser_groups` WRITE;
/*!40000 ALTER TABLE `api_myuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_myuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_myuser_user_permissions`
--

DROP TABLE IF EXISTS `api_myuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_myuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_myuser_user_permissi_myuser_id_permission_id_a1ffa2cd_uniq` (`myuser_id`,`permission_id`),
  KEY `api_myuser_user_perm_permission_id_10482570_fk_auth_perm` (`permission_id`),
  CONSTRAINT `api_myuser_user_perm_permission_id_10482570_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `api_myuser_user_permissions_myuser_id_f38f1863_fk_api_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `api_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_myuser_user_permissions`
--

LOCK TABLES `api_myuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `api_myuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_myuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_post`
--

DROP TABLE IF EXISTS `api_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_post_user_id_580bae2a_fk_api_myuser_id` (`user_id`),
  CONSTRAINT `api_post_user_id_580bae2a_fk_api_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_post`
--

LOCK TABLES `api_post` WRITE;
/*!40000 ALTER TABLE `api_post` DISABLE KEYS */;
INSERT INTO `api_post` VALUES (1,'Night Sky','Look up and enjoy','2023-09-14 04:21:58.885629',1),(2,'Abc','bcd','2023-09-14 04:22:52.766418',1),(3,'Qwe','Tgh','2023-09-14 04:25:00.295514',2),(4,'User 2','2 description','2023-09-14 04:25:36.027433',2),(5,'User 3','3 description','2023-09-14 04:26:34.776571',3),(6,'User 3 tags 2,5','My description','2023-09-14 04:27:03.124674',3),(7,'User 4 tags 1,8','4 description','2023-09-14 04:28:08.922177',4),(8,'User 4 tags 2,3','My 4 description','2023-09-14 04:29:25.720557',4),(9,'User 5 tags 1','5 description','2023-09-14 04:30:25.700764',5),(10,'User 5 with no tags','My 5 description','2023-09-14 04:30:57.018613',5),(11,'User 6 with tags 3,4','My 6 description','2023-09-14 04:32:44.962513',6),(12,'User 6 with no tags','6 description user 6','2023-09-14 04:33:09.147535',6),(13,'User 8 with no tags','8 description user 8 hii','2023-09-14 04:34:45.392546',8),(14,'User 8 with tags 1,2,3','my 8 description  hii','2023-09-14 04:35:07.491947',8),(15,'User 9 with tags 5,6,8','my 9 description  welcome to my post','2023-09-14 04:36:47.004895',9),(16,'User 9 with no tags','welcome to my post buddies','2023-09-14 04:37:55.403018',9);
/*!40000 ALTER TABLE `api_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_post_tags`
--

DROP TABLE IF EXISTS `api_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_post_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_id` bigint NOT NULL,
  `myuser_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_post_tags_post_id_myuser_id_cc583985_uniq` (`post_id`,`myuser_id`),
  KEY `api_post_tags_myuser_id_88a968af_fk_api_myuser_id` (`myuser_id`),
  CONSTRAINT `api_post_tags_myuser_id_88a968af_fk_api_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `api_myuser` (`id`),
  CONSTRAINT `api_post_tags_post_id_7bd8b806_fk_api_post_id` FOREIGN KEY (`post_id`) REFERENCES `api_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_post_tags`
--

LOCK TABLES `api_post_tags` WRITE;
/*!40000 ALTER TABLE `api_post_tags` DISABLE KEYS */;
INSERT INTO `api_post_tags` VALUES (1,1,4),(2,1,5),(3,2,2),(4,2,10),(5,4,3),(6,4,4),(7,5,9),(8,5,10),(9,6,2),(10,6,5),(12,7,1),(11,7,8),(13,8,2),(14,8,3),(15,9,1),(16,11,3),(17,11,4),(18,14,1),(19,14,2),(20,14,3),(22,15,5),(23,15,6),(21,15,8);
/*!40000 ALTER TABLE `api_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_myuser'),(22,'Can change user',6,'change_myuser'),(23,'Can delete user',6,'delete_myuser'),(24,'Can view user',6,'view_myuser'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add like',8,'add_like'),(30,'Can change like',8,'change_like'),(31,'Can delete like',8,'delete_like'),(32,'Can view like',8,'view_like'),(33,'Can add Token',9,'add_token'),(34,'Can change Token',9,'change_token'),(35,'Can delete Token',9,'delete_token'),(36,'Can view Token',9,'view_token'),(37,'Can add token',10,'add_tokenproxy'),(38,'Can change token',10,'change_tokenproxy'),(39,'Can delete token',10,'delete_tokenproxy'),(40,'Can view token',10,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_api_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('0719ef59063652361220f3647eb81a089e01e3ea','2023-09-14 04:14:41.417564',1),('0c8875b38aba9ff9c49fc16668280ed993ed8fc6','2023-09-14 04:35:57.189815',9),('619b863ef4550194ff8176a96d325a1b5b4c8cc1','2023-09-14 04:27:35.240993',4),('720f5a50aedb74f6069c0ec1c748c55715110055','2023-09-14 04:32:03.752929',6),('bf5385aef227ea7d641800d9d427175e7ac02213','2023-09-14 04:34:11.981264',8),('c3756453e470b536d53e476761f3931f993f6a2c','2023-09-14 04:29:55.702427',5),('d5b953435c348ef4a2b733cd261bdfeb6fe19d56','2023-09-14 04:24:41.829073',2),('d986b8aaab06e3ddce367f01a8d8161e360417ae','2023-09-14 04:26:06.843936',3);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_api_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_api_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `api_myuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'api','like'),(6,'api','myuser'),(7,'api','post'),(3,'auth','group'),(2,'auth','permission'),(9,'authtoken','token'),(10,'authtoken','tokenproxy'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-09-14 04:13:07.487005'),(2,'contenttypes','0002_remove_content_type_name','2023-09-14 04:13:07.571523'),(3,'auth','0001_initial','2023-09-14 04:13:07.904557'),(4,'auth','0002_alter_permission_name_max_length','2023-09-14 04:13:08.018902'),(5,'auth','0003_alter_user_email_max_length','2023-09-14 04:13:08.069206'),(6,'auth','0004_alter_user_username_opts','2023-09-14 04:13:08.086267'),(7,'auth','0005_alter_user_last_login_null','2023-09-14 04:13:08.119419'),(8,'auth','0006_require_contenttypes_0002','2023-09-14 04:13:08.124728'),(9,'auth','0007_alter_validators_add_error_messages','2023-09-14 04:13:08.141132'),(10,'auth','0008_alter_user_username_max_length','2023-09-14 04:13:08.158072'),(11,'auth','0009_alter_user_last_name_max_length','2023-09-14 04:13:08.174331'),(12,'auth','0010_alter_group_name_max_length','2023-09-14 04:13:08.221224'),(13,'auth','0011_update_proxy_permissions','2023-09-14 04:13:08.244735'),(14,'auth','0012_alter_user_first_name_max_length','2023-09-14 04:13:08.268476'),(15,'api','0001_initial','2023-09-14 04:13:08.860201'),(16,'admin','0001_initial','2023-09-14 04:13:09.036486'),(17,'admin','0002_logentry_remove_auto_add','2023-09-14 04:13:09.056018'),(18,'admin','0003_logentry_add_action_flag_choices','2023-09-14 04:13:09.073599'),(19,'api','0002_post','2023-09-14 04:13:09.512597'),(20,'api','0003_remove_post_likes_like','2023-09-14 04:13:09.695719'),(21,'api','0004_alter_post_user','2023-09-14 04:13:09.819819'),(22,'api','0005_alter_post_tags','2023-09-14 04:13:09.840262'),(23,'authtoken','0001_initial','2023-09-14 04:13:09.941344'),(24,'authtoken','0002_auto_20160226_1747','2023-09-14 04:13:10.003030'),(25,'authtoken','0003_tokenproxy','2023-09-14 04:13:10.003030'),(26,'sessions','0001_initial','2023-09-14 04:13:10.071125');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2lygg24uyjw80y2v2bt7002y1ziqp8cp','.eJxVjEEOwiAQRe_C2hCgQjsu3fcMzTAzSNVAUtqV8e7apAvd_vfef6kJtzVPW5NlmlldlFWn3y0iPaTsgO9YblVTLesyR70r-qBNj5XleT3cv4OMLX9rMWCELHkvxoKzzrGFIXXEyI5C7Hrh5DgwCQmHHhIgGPQ4JAuQzur9AfgSOM0:1qgdky:rgg8LSWllqsfnJKaDzl0EPV9I6w5oHX45JFokWDNQV0','2023-09-28 04:15:08.199866');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 10:19:51
