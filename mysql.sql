-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: wappdb1
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add comment',7,'add_comment'),(26,'Can change comment',7,'change_comment'),(27,'Can delete comment',7,'delete_comment'),(28,'Can view comment',7,'view_comment'),(29,'Can add food',8,'add_food'),(30,'Can change food',8,'change_food'),(31,'Can delete food',8,'delete_food'),(32,'Can view food',8,'view_food'),(33,'Can add bank account',9,'add_bankaccount'),(34,'Can change bank account',9,'change_bankaccount'),(35,'Can delete bank account',9,'delete_bankaccount'),(36,'Can view bank account',9,'view_bankaccount'),(37,'Can add wedding halls',10,'add_weddinghalls'),(38,'Can change wedding halls',10,'change_weddinghalls'),(39,'Can delete wedding halls',10,'delete_weddinghalls'),(40,'Can view wedding halls',10,'view_weddinghalls'),(41,'Can add shift',11,'add_shift'),(42,'Can change shift',11,'change_shift'),(43,'Can delete shift',11,'delete_shift'),(44,'Can view shift',11,'view_shift'),(45,'Can add system',12,'add_system'),(46,'Can change system',12,'change_system'),(47,'Can delete system',12,'delete_system'),(48,'Can view system',12,'view_system'),(49,'Can add menu',13,'add_menu'),(50,'Can change menu',13,'change_menu'),(51,'Can delete menu',13,'delete_menu'),(52,'Can view menu',13,'view_menu'),(53,'Can add service',14,'add_service'),(54,'Can change service',14,'change_service'),(55,'Can delete service',14,'delete_service'),(56,'Can view service',14,'view_service'),(57,'Can add wedding',15,'add_wedding'),(58,'Can change wedding',15,'change_wedding'),(59,'Can delete wedding',15,'delete_wedding'),(60,'Can view wedding',15,'view_wedding'),(61,'Can add application',16,'add_application'),(62,'Can change application',16,'change_application'),(63,'Can delete application',16,'delete_application'),(64,'Can view application',16,'view_application'),(65,'Can add access token',17,'add_accesstoken'),(66,'Can change access token',17,'change_accesstoken'),(67,'Can delete access token',17,'delete_accesstoken'),(68,'Can view access token',17,'view_accesstoken'),(69,'Can add grant',18,'add_grant'),(70,'Can change grant',18,'change_grant'),(71,'Can delete grant',18,'delete_grant'),(72,'Can view grant',18,'view_grant'),(73,'Can add refresh token',19,'add_refreshtoken'),(74,'Can change refresh token',19,'change_refreshtoken'),(75,'Can delete refresh token',19,'delete_refreshtoken'),(76,'Can view refresh token',19,'view_refreshtoken'),(77,'Can add id token',20,'add_idtoken'),(78,'Can change id token',20,'change_idtoken'),(79,'Can delete id token',20,'delete_idtoken'),(80,'Can view id token',20,'view_idtoken'),(81,'Can add cors model',21,'add_corsmodel'),(82,'Can change cors model',21,'change_corsmodel'),(83,'Can delete cors model',21,'delete_corsmodel'),(84,'Can view cors model',21,'view_corsmodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corsheaders_corsmodel`
--

DROP TABLE IF EXISTS `corsheaders_corsmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corsheaders_corsmodel` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corsheaders_corsmodel`
--

LOCK TABLES `corsheaders_corsmodel` WRITE;
/*!40000 ALTER TABLE `corsheaders_corsmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `corsheaders_corsmodel` ENABLE KEYS */;
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
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-30 14:24:23.189037','1','ƯFVA',1,'[{\"added\": {}}]',12,1),(2,'2021-09-30 14:24:34.913459','2','ƯEGER',1,'[{\"added\": {}}]',10,1),(3,'2021-09-30 14:44:10.419557','1','tets',1,'[{\"added\": {}}]',7,1),(4,'2021-10-03 07:32:32.699937','2','tuyệt vời',1,'[{\"added\": {}}]',7,1),(5,'2021-10-03 07:32:48.105833','3','quá tệ',1,'[{\"added\": {}}]',7,1),(6,'2021-10-03 07:40:32.313032','1','ƯFVA',3,'',12,1),(7,'2021-10-03 07:41:17.879597','2','Home page',1,'[{\"added\": {}}]',12,1),(8,'2021-10-03 07:43:11.451424','2','Home page',3,'',12,1),(9,'2021-10-03 07:43:21.686649','3','Banquet hall',1,'[{\"added\": {}}]',12,1),(10,'2021-10-03 07:43:36.841282','4','Menu',1,'[{\"added\": {}}]',12,1),(11,'2021-10-03 07:43:55.087103','5','Service',1,'[{\"added\": {}}]',12,1),(12,'2021-10-03 07:44:41.062460','6','Recruitment',1,'[{\"added\": {}}]',12,1),(13,'2021-10-03 07:45:12.684974','1','Menu1',1,'[{\"added\": {}}]',13,1),(14,'2021-10-03 07:45:39.459289','2','Menu2',1,'[{\"added\": {}}]',13,1),(15,'2021-10-03 07:46:06.615407','1','food1',1,'[{\"added\": {}}]',8,1),(16,'2021-10-03 07:46:26.033792','2','food2',1,'[{\"added\": {}}]',8,1),(17,'2021-10-03 07:46:48.239459','3','food3',1,'[{\"added\": {}}]',8,1),(18,'2021-10-03 12:20:51.954636','1','sảnh 1',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\", \"System\"]}}]',10,1),(19,'2021-10-03 12:21:13.761330','2','sảnh 2',2,'[{\"changed\": {\"fields\": [\"Name\", \"Image\", \"Description\", \"System\"]}}]',10,1),(20,'2021-10-03 12:21:36.935593','3','sảnh 3',1,'[{\"added\": {}}]',10,1),(21,'2021-10-03 12:22:48.957723','1','Bàn trang trí',1,'[{\"added\": {}}]',14,1),(22,'2021-10-03 12:23:24.385851','2','Cổng chào',1,'[{\"added\": {}}]',14,1),(23,'2021-10-03 12:23:50.123626','3','Ca nhạc',1,'[{\"added\": {}}]',14,1),(24,'2021-10-03 12:24:21.371924','1','Ca sáng',1,'[{\"added\": {}}]',11,1),(25,'2021-10-03 12:24:34.907874','2','Ca trưa',1,'[{\"added\": {}}]',11,1),(26,'2021-10-03 12:24:48.439330','3','Ca tối',1,'[{\"added\": {}}]',11,1),(27,'2021-10-03 12:32:39.557835','1','123',1,'[{\"added\": {}}]',9,1),(28,'2021-10-03 12:32:54.599325','2','1234',1,'[{\"added\": {}}]',9,1),(29,'2021-10-03 12:43:38.620146','1','Phát Lê',1,'[{\"added\": {}}]',15,1),(30,'2021-10-03 12:44:15.756216','2','Nguyễn Kiệt',1,'[{\"added\": {}}]',15,1),(31,'2021-10-04 13:58:38.056125','3','sảnh 3',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',10,1),(32,'2021-10-04 14:37:15.265928','3','456',1,'[{\"added\": {}}]',9,1),(33,'2021-10-04 15:58:27.479121','11','cũng đc',3,'',7,1),(34,'2021-10-04 15:58:27.662645','9','cũng ok',3,'',7,1),(35,'2021-10-04 15:58:27.693460','8','sdsad',3,'',7,1),(36,'2021-10-04 15:58:27.725058','7','lại xem',3,'',7,1),(37,'2021-10-04 15:58:27.756959','5','123',3,'',7,1),(38,'2021-10-04 15:58:40.959955','6','test repa',3,'',7,1),(39,'2021-10-04 15:58:41.023909','4','ok chưa',3,'',7,1),(40,'2021-10-04 15:58:41.065618','3','quá tệ',3,'',7,1),(41,'2021-10-05 03:38:16.657371','7','chart',1,'[{\"added\": {}}]',12,1),(42,'2021-10-05 03:38:25.772049','7','Chart',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',12,1),(43,'2021-10-06 07:46:40.217755','3','PL',2,'[]',6,1),(44,'2021-10-06 08:08:36.850651','3','PL',2,'[]',6,1),(45,'2021-10-06 08:25:25.628746','3','PL',2,'[]',6,1),(46,'2021-10-07 09:59:42.392741','3','PL',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(47,'2021-10-07 10:00:00.857416','2','HK',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(48,'2021-10-07 10:00:41.590983','1','admin',2,'[{\"changed\": {\"fields\": [\"Avatar\"]}}]',6,1),(49,'2021-10-07 13:24:35.490164','2','food2',2,'[]',8,1),(50,'2021-10-08 03:20:01.303736','12','GK',3,'',6,1),(51,'2021-10-08 03:20:01.372497','11','GD',3,'',6,1),(52,'2021-10-08 03:20:01.446302','10','sa',3,'',6,1),(53,'2021-10-08 03:20:01.485164','9','TA',3,'',6,1),(54,'2021-10-08 03:20:01.542012','8','LQ',3,'',6,1),(55,'2021-10-08 03:20:01.633798','7','TT',3,'',6,1),(56,'2021-10-08 03:20:01.671667','6','lk',3,'',6,1),(57,'2021-10-08 13:17:20.716872','29','121',3,'',7,1),(58,'2021-10-08 13:17:20.792669','28','fine thnaks2',3,'',7,1),(59,'2021-10-08 13:17:20.828834','27','fine thanks',3,'',7,1),(60,'2021-10-08 13:17:20.860976','26','2016',3,'',7,1),(61,'2021-10-08 13:17:20.890971','25','2010',3,'',7,1),(62,'2021-10-08 13:17:20.921958','24','2005',3,'',7,1),(63,'2021-10-08 13:17:20.952825','23','1597',3,'',7,1),(64,'2021-10-08 13:17:20.988080','22','1956',3,'',7,1),(65,'2021-10-08 13:17:21.032204','21','456',3,'',7,1),(66,'2021-10-08 13:17:21.062050','20','1956',3,'',7,1),(67,'2021-10-08 13:17:21.093399','19','1527',3,'',7,1),(68,'2021-10-08 13:17:21.122876','18','23456',3,'',7,1),(69,'2021-10-08 13:17:21.152126','17','2345',3,'',7,1),(70,'2021-10-08 13:17:21.182671','16','234',3,'',7,1),(71,'2021-10-08 13:17:21.213044','15','123',3,'',7,1),(72,'2021-10-08 13:17:21.242838','14','test loadd',3,'',7,1),(73,'2021-10-08 13:17:21.274060','13','test loadd',3,'',7,1),(74,'2021-10-08 13:17:21.304386','12','thử load',3,'',7,1),(75,'2021-12-18 02:36:35.286965','3','food3',3,'',8,14),(76,'2021-12-18 02:36:35.364918','2','food2',3,'',8,14),(77,'2021-12-18 02:36:35.502832','1','food1',3,'',8,14),(78,'2021-12-18 02:38:21.529757','3','menu3',1,'[{\"added\": {}}]',13,14),(79,'2021-12-18 02:38:49.397166','4','menu4',1,'[{\"added\": {}}]',13,14),(80,'2021-12-18 02:39:05.428942','5','menu5',1,'[{\"added\": {}}]',13,14),(81,'2021-12-18 02:39:22.444801','6','menu6',1,'[{\"added\": {}}]',13,14),(82,'2021-12-18 02:39:41.769596','7','menu7',1,'[{\"added\": {}}]',13,14),(83,'2021-12-18 02:39:57.711343','8','menu8',1,'[{\"added\": {}}]',13,14),(84,'2021-12-18 02:40:20.544388','9','menu9',1,'[{\"added\": {}}]',13,14),(85,'2021-12-18 02:40:36.971774','10','menu10',1,'[{\"added\": {}}]',13,14),(86,'2021-12-18 02:41:13.291052','4','Bò cuộn nấm Kim Châm',1,'[{\"added\": {}}]',8,14),(87,'2021-12-18 02:42:27.839564','5','Chả mực cuộn tròn',1,'[{\"added\": {}}]',8,14),(88,'2021-12-18 02:42:59.190075','6','Tôm sốt thái',1,'[{\"added\": {}}]',8,14),(89,'2021-12-18 02:43:34.442011','7','Gà xào thập cẩm',1,'[{\"added\": {}}]',8,14),(90,'2021-12-18 02:44:05.691644','8','Mực riêm ngũ vị',1,'[{\"added\": {}}]',8,14),(91,'2021-12-18 02:44:34.787582','9','Heo hung khói kiểu Ý',1,'[{\"added\": {}}]',8,14),(92,'2021-12-18 02:45:01.777182','10','Tôm Giò tréo quẩy',1,'[{\"added\": {}}]',8,14),(93,'2021-12-18 02:45:31.401844','11','Tôm cuộn phô mai',1,'[{\"added\": {}}]',8,14),(94,'2021-12-18 02:45:57.317898','12','Các món hấp',1,'[{\"added\": {}}]',8,14),(95,'2021-12-18 02:46:29.613513','13','Tôm sú nướng tiêu',1,'[{\"added\": {}}]',8,14),(96,'2021-12-18 02:57:01.776953','3','sảnh 3',3,'',10,14),(97,'2021-12-18 02:57:01.874003','2','sảnh 2',3,'',10,14),(98,'2021-12-18 02:57:01.938962','1','sảnh 1',3,'',10,14),(99,'2021-12-18 02:58:40.111692','4','Sảnh Sài Gòn – kiến trúc hoài cổ',1,'[{\"added\": {}}]',10,14),(100,'2021-12-18 02:59:20.529677','5','Sảnh Tokyo lịch lãm',1,'[{\"added\": {}}]',10,14),(101,'2021-12-18 02:59:54.580844','6','Sảnh Paris tinh tế',1,'[{\"added\": {}}]',10,14),(102,'2021-12-18 03:01:21.475090','7','Sảnh Shanghai lộng lẫy',1,'[{\"added\": {}}]',10,14),(103,'2021-12-18 03:02:42.003925','8','Sảnh Shanghai lộng lẫy sang trọng',1,'[{\"added\": {}}]',10,14),(104,'2021-12-18 03:02:55.461730','7','Sảnh Shanghai lộng lẫy',3,'',10,14),(105,'2021-12-18 03:03:54.155489','9','Sảnh New York bay bổng, xa hoa',1,'[{\"added\": {}}]',10,14),(106,'2021-12-18 03:04:41.909921','10','Sảnh Milan rực rỡ huyền ảo',1,'[{\"added\": {}}]',10,14),(107,'2021-12-18 03:06:27.898878','3','Ca nhạc',3,'',14,14),(108,'2021-12-18 03:06:27.945762','2','Cổng chào',3,'',14,14),(109,'2021-12-18 03:06:27.986879','1','Bàn trang trí',3,'',14,14),(110,'2021-12-18 03:08:53.748780','4','Sảnh tiệc',1,'[{\"added\": {}}]',14,14),(111,'2021-12-18 03:10:01.190430','5','THỰC ĐƠN TỰ CHỌN',1,'[{\"added\": {}}]',14,14),(112,'2021-12-18 03:11:23.595413','6','Trang trí trọn gói từ đám hỏi đến cưới',1,'[{\"added\": {}}]',14,14),(113,'2021-12-18 03:12:57.691951','7','SẢNH CƯỚI',1,'[{\"added\": {}}]',14,14),(114,'2021-12-18 03:14:35.238876','8','Trang thiết bị',1,'[{\"added\": {}}]',14,14),(115,'2021-12-18 03:16:01.700833','8','TRANG THIẾT BỊ',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',14,14),(116,'2021-12-18 03:16:20.757924','6','TRANG TRÍ CHỌN GÓI',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',14,14),(117,'2021-12-18 03:16:39.210917','4','SẢNH TIỆC TỰ CHỌN',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',14,14),(118,'2021-12-18 03:18:01.918840','9','KHU VỰC ĐÓN KHÁCH',1,'[{\"added\": {}}]',14,14),(119,'2021-12-18 03:18:41.576059','10','KHU VỰC SÂN KHẤU',1,'[{\"added\": {}}]',14,14),(120,'2021-12-18 03:19:40.271172','11','BÀN TIỆC',1,'[{\"added\": {}}]',14,14),(121,'2021-12-18 03:20:16.624659','11','BÀN TIỆC',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,14),(122,'2021-12-18 03:20:54.340912','11','BÀN TIỆC',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,14),(123,'2021-12-18 03:21:29.432947','11','BÀN TIỆC',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,14),(124,'2021-12-18 03:22:19.732668','7','SẢNH CƯỚI',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',14,14),(125,'2021-12-18 03:23:10.216255','40','Xong rồi nha',3,'',7,14),(126,'2021-12-18 03:23:10.260243','39','mệt mỏi',3,'',7,14),(127,'2021-12-18 03:23:10.300714','38','hi',3,'',7,14),(128,'2021-12-18 03:23:10.338694','37','hi',3,'',7,14);
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
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(21,'corsheaders','corsmodel'),(17,'oauth2_provider','accesstoken'),(16,'oauth2_provider','application'),(18,'oauth2_provider','grant'),(20,'oauth2_provider','idtoken'),(19,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(9,'wedding','bankaccount'),(7,'wedding','comment'),(8,'wedding','food'),(13,'wedding','menu'),(14,'wedding','service'),(11,'wedding','shift'),(12,'wedding','system'),(6,'wedding','user'),(15,'wedding','wedding'),(10,'wedding','weddinghalls');
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
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-09-30 13:55:06.069041'),(2,'contenttypes','0002_remove_content_type_name','2021-09-30 13:55:06.194038'),(3,'auth','0001_initial','2021-09-30 13:55:06.850268'),(4,'auth','0002_alter_permission_name_max_length','2021-09-30 13:55:06.939683'),(5,'auth','0003_alter_user_email_max_length','2021-09-30 13:55:06.951518'),(6,'auth','0004_alter_user_username_opts','2021-09-30 13:55:06.963790'),(7,'auth','0005_alter_user_last_login_null','2021-09-30 13:55:06.973470'),(8,'auth','0006_require_contenttypes_0002','2021-09-30 13:55:06.979687'),(9,'auth','0007_alter_validators_add_error_messages','2021-09-30 13:55:06.991904'),(10,'auth','0008_alter_user_username_max_length','2021-09-30 13:55:07.002893'),(11,'auth','0009_alter_user_last_name_max_length','2021-09-30 13:55:07.008118'),(12,'auth','0010_alter_group_name_max_length','2021-09-30 13:55:07.101871'),(13,'auth','0011_update_proxy_permissions','2021-09-30 13:55:07.117496'),(14,'auth','0012_alter_user_first_name_max_length','2021-09-30 13:55:07.133116'),(15,'wedding','0001_initial','2021-09-30 13:55:07.773720'),(16,'admin','0001_initial','2021-09-30 13:55:08.029752'),(17,'admin','0002_logentry_remove_auto_add','2021-09-30 13:55:08.045380'),(18,'admin','0003_logentry_add_action_flag_choices','2021-09-30 13:55:08.061002'),(19,'sessions','0001_initial','2021-09-30 13:55:08.123500'),(20,'wedding','0002_bankaccount_comment_food_menu_service_shift_system_wedding_weddinghalls','2021-09-30 13:58:54.745158'),(21,'oauth2_provider','0001_initial','2021-09-30 15:00:38.382397'),(22,'oauth2_provider','0002_auto_20190406_1805','2021-09-30 15:00:38.569688'),(23,'oauth2_provider','0003_auto_20201211_1314','2021-09-30 15:00:38.703897'),(24,'oauth2_provider','0004_auto_20200902_2022','2021-09-30 15:00:39.753932'),(25,'corsheaders','0001_initial','2021-12-18 02:25:44.555339'),(26,'corsheaders','0002_alter_corsmodel_id','2021-12-18 02:25:44.711578'),(27,'wedding','0003_alter_service_description','2021-12-18 02:25:44.727203'),(28,'wedding','0004_alter_service_description','2021-12-18 02:25:44.742826');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3ltlurks8nocgwrud8465ce71ok0nwj9','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mXO1P:snvsf6xNNUi_DyvI-ZhFe6jdMQFGFG15NX-JlPhg4N0','2021-10-18 13:28:47.297155'),('h5bd2cyrg9nbxl0x7w8u0fhmbxmz6pm8','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mWvUa:xMMMhG1Qi9W29fMlH2gVFkeASc5jIxZugV3CojFSlMY','2021-10-17 07:01:00.679861'),('y1gu5v3or5z4ff99iq7re81fc0dftdxm','.eJxVjMEOwiAQRP-FsyHAUmQ9evcbyAKLVA1NSnsy_rtt0oPeJvPezFsEWpca1s5zGLO4CG3F6beMlJ7cdpIf1O6TTFNb5jHKXZEH7fI2ZX5dD_fvoFKv25oUFgT2SZM6W8rgwYIrCSkmBcVqLNZijGaLVHAwiMZlx9G4gUF78fkCCqc34Q:1mwcmZ:N3srCGQTuOtZvF0qvmIy6Exj13Bbb9-3wo4x3_upqD4','2021-12-27 04:17:47.374277'),('zd3ko3h0fnnubo8e2qrhp9xh62ec2i4v','.eJxVjEEOwiAQRe_C2hAGOhVcuvcMzTAMUjUlKe3KeHdD0oVu_3vvv9VE-1amvck6zUldFKjT7xaJn7J0kB603KvmumzrHHVX9EGbvtUkr-vh_h0UaqXXNGLIcAZM7EaLYIaEwQT2OQwIwC7IGEXYZofeZsieAeLgDaHPZNXnC80cN3g:1mVxT7:ExXQ-VAciz0-tvFPGfzfvLSYM8v9AhD-H4x66wjcv10','2021-10-14 14:55:29.116342'),('zs7lk41pfivymfqk9uisk8vk20i4fkol','.eJxVjMEOwiAQRP-FsyHAUmQ9evcbyAKLVA1NSnsy_rtt0oPeJvPezFsEWpca1s5zGLO4CG3F6beMlJ7cdpIf1O6TTFNb5jHKXZEH7fI2ZX5dD_fvoFKv25oUFgT2SZM6W8rgwYIrCSkmBcVqLNZijGaLVHAwiMZlx9G4gUF78fkCCqc34Q:1mwhTk:MoK0KfwaQgzVM48DiKypb7OfN_ey1nMNBkjwZqq-tac','2021-12-27 09:18:40.274628');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_accesstoken_user_id_6e4c9a65_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'89XYE2q9oApjadGtal1ED1mf0HpmuU','2021-10-01 01:07:09.576232','read write',1,1,'2021-09-30 15:07:09.578230','2021-09-30 15:07:09.578230',NULL,NULL),(2,'ZVdhll7deoH44PkhylZUEFWRqoaPTk','2021-10-01 22:42:36.533311','read write',1,1,'2021-10-01 12:42:36.541308','2021-10-01 12:42:36.541308',NULL,NULL),(3,'Ip0KsaLfDGaZgcZ0W38R7S0CxdC2bf','2021-10-01 23:05:27.186389','read write',1,1,'2021-10-01 13:05:27.187397','2021-10-01 13:05:27.187397',NULL,NULL),(4,'exP67kUrde25tM4VDQJDjUE0Vr65jw','2021-10-03 19:14:19.562284','read write',1,1,'2021-10-03 09:14:19.563196','2021-10-03 09:14:19.563196',NULL,NULL),(5,'GWtsm9CX6dZd6OAamoewRX4sCf4urS','2021-10-03 20:37:51.663742','read write',1,1,'2021-10-03 10:37:51.663742','2021-10-03 10:37:51.663742',NULL,NULL),(6,'qr0atAt6wCISOieJu2fZKgmKKtql4T','2021-10-03 20:59:18.386172','read write',1,1,'2021-10-03 10:59:18.386172','2021-10-03 10:59:18.386172',NULL,NULL),(7,'L2v3LU6nSyL76EcSJSKyADnjj7Ls1l','2021-10-04 23:41:13.599972','read write',1,1,'2021-10-04 13:41:13.600969','2021-10-04 13:41:13.600969',NULL,NULL),(8,'VYE0ea9wcMK4TvzSNCxXaCJHuL4wYs','2021-10-04 23:42:44.297168','read write',1,1,'2021-10-04 13:42:44.298165','2021-10-04 13:42:44.298165',NULL,NULL),(9,'0N4Hsj3WDEN2ia2pUiGhAS6RCh8kid','2021-10-05 01:20:46.805591','read write',1,1,'2021-10-04 15:20:46.805591','2021-10-04 15:20:46.805591',NULL,NULL),(10,'LT49LX9a8wv53R67zY8ry34eGgMxFH','2021-10-05 01:24:59.552674','read write',1,1,'2021-10-04 15:24:59.552674','2021-10-04 15:24:59.552674',NULL,NULL),(11,'7ih0ck5KDKUJDahv2ed2KgQuV6BUjF','2021-10-05 01:25:50.637557','read write',1,1,'2021-10-04 15:25:50.638552','2021-10-04 15:25:50.638552',NULL,NULL),(12,'gwxTNGyMZ97zym7k1L6haCktINSELb','2021-10-07 19:02:59.295193','read write',1,1,'2021-10-07 09:02:59.295193','2021-10-07 09:02:59.295193',NULL,NULL),(13,'DVLG9VsI4eA9rN5UPBYWfsarsoRe02','2021-10-07 20:05:47.042082','read write',1,1,'2021-10-07 10:05:47.042082','2021-10-07 10:05:47.042082',NULL,NULL),(14,'YLDLaFo7Bui3D3px7AD1uTaBrtmXyH','2021-10-08 00:52:26.016108','read write',1,1,'2021-10-07 14:52:26.036711','2021-10-07 14:52:26.036711',NULL,NULL),(15,'7GAa4Hug0iOXMmgK3jUggaH4fzaH3f','2021-10-08 01:01:45.252344','read write',1,1,'2021-10-07 15:01:45.253342','2021-10-07 15:01:45.253342',NULL,NULL),(16,'cupCU5CatpiPVlT7hiipdRUg7BB9Ip','2021-10-08 01:02:34.099239','read write',1,1,'2021-10-07 15:02:34.100237','2021-10-07 15:02:34.100237',NULL,NULL),(17,'ltYdVMNx0Qtq5QFihOFHSGkrbPUlmy','2021-10-08 01:07:25.002843','read write',1,1,'2021-10-07 15:07:25.002843','2021-10-07 15:07:25.002843',NULL,NULL),(18,'VpanbQrYbGmxi7V3WDRrYnxJS9I0Ro','2021-10-08 01:10:35.328563','read write',1,1,'2021-10-07 15:10:35.328563','2021-10-07 15:10:35.328563',NULL,NULL),(19,'jek7DklGzNK38zVD0W1fpFRSEDNSGl','2021-10-08 01:13:19.059954','read write',1,1,'2021-10-07 15:13:19.060954','2021-10-07 15:13:19.060954',NULL,NULL),(20,'PfTql194TG6oMjf0AR9RAeflHgCXNT','2021-10-08 01:14:22.329738','read write',1,1,'2021-10-07 15:14:22.330733','2021-10-07 15:14:22.330733',NULL,NULL),(21,'1Dw5zKIp4jf8EXoyczpLiTddMHWZNs','2021-10-08 01:14:26.618379','read write',1,1,'2021-10-07 15:14:26.619377','2021-10-07 15:14:26.619377',NULL,NULL),(22,'gjcEe67XPcg3JmptmB3e1rQ4QMwFji','2021-10-08 01:14:51.546086','read write',1,1,'2021-10-07 15:14:51.547083','2021-10-07 15:14:51.547083',NULL,NULL),(23,'jciod7kSpJBzKODNPT3aDuoH8ZU4QD','2021-10-08 01:18:55.783332','read write',1,1,'2021-10-07 15:18:55.784326','2021-10-07 15:18:55.784326',NULL,NULL),(24,'SBQlaiX4d9622o9KfrtQjLkgJFzm5P','2021-10-08 01:27:11.455205','read write',1,1,'2021-10-07 15:27:11.456192','2021-10-07 15:27:11.456192',NULL,NULL),(25,'0VY7d8avJIbcWqykj2KVz0Nv5ty6kv','2021-10-08 01:28:13.423228','read write',1,1,'2021-10-07 15:28:13.424226','2021-10-07 15:28:13.424226',NULL,NULL),(26,'eZ1SmiWl9gcpIpIIoxOoEn0PjzPfiZ','2021-10-08 01:40:33.968470','read write',1,1,'2021-10-07 15:40:33.969467','2021-10-07 15:40:33.969467',NULL,NULL),(27,'450iGJSkhejmPpOSUnZJVNdtSHxmEP','2021-10-08 01:41:27.902429','read write',1,1,'2021-10-07 15:41:27.903393','2021-10-07 15:41:27.903393',NULL,NULL),(28,'xZNd02e1wZW30wLYfvzBk0l3pbcVB2','2021-10-08 01:44:07.347284','read write',1,1,'2021-10-07 15:44:07.347284','2021-10-07 15:44:07.347284',NULL,NULL),(29,'JyVUiEh1DJNBll1pu4qOPb2rFNXJYj','2021-10-08 01:45:18.959682','read write',1,1,'2021-10-07 15:45:18.959682','2021-10-07 15:45:18.959682',NULL,NULL),(30,'ZaT6JzI84AFY2JfSUwDir9fFgAUePB','2021-10-08 01:46:29.791557','read write',1,1,'2021-10-07 15:46:29.791557','2021-10-07 15:46:29.791557',NULL,NULL),(31,'ROX7ccentMmxioJHBtVpbY6cdQZR7E','2021-10-08 01:53:22.469423','read write',1,1,'2021-10-07 15:53:22.470428','2021-10-07 15:53:22.470428',NULL,NULL),(32,'HDiWUr6ppaSrY10xylrS9N4yTLigUe','2021-10-08 12:13:16.299328','read write',1,1,'2021-10-08 02:13:16.300325','2021-10-08 02:13:16.300325',NULL,NULL),(33,'4Ndy04GxmZwoRXBFoMoNirYunVZSQV','2021-10-08 12:14:17.712757','read write',1,1,'2021-10-08 02:14:17.712757','2021-10-08 02:14:17.712757',NULL,NULL),(34,'9tfJQi3Mdrv1PbeySE6VlFCNM822KV','2021-10-08 12:19:36.858544','read write',1,1,'2021-10-08 02:19:36.858544','2021-10-08 02:19:36.858544',NULL,NULL),(35,'AGjoIqiR2lyTxm8idC2xQR3W2riuzw','2021-10-08 12:27:44.873538','read write',1,1,'2021-10-08 02:27:44.874535','2021-10-08 02:27:44.874535',NULL,NULL),(36,'HQxYZGkpnUfruJXZVy7eaZTO8uGnig','2021-10-08 13:15:49.986599','read write',1,1,'2021-10-08 03:15:49.987543','2021-10-08 03:15:49.987543',NULL,NULL),(37,'fsiVUWkNtj5o8uhMHbCvFYMGqlQJT5','2021-10-08 13:16:33.018330','read write',1,1,'2021-10-08 03:16:33.020324','2021-10-08 03:16:33.020324',NULL,NULL),(38,'NUvtc5P5IULJgRRhXYedhRYvY44m8x','2021-10-08 22:56:17.029029','read write',1,1,'2021-10-08 12:56:17.029029','2021-10-08 12:56:17.029029',NULL,NULL),(39,'JuxRD7lqpRo81uF43B8HZAzqh77gBG','2021-10-08 22:59:09.948049','read write',1,1,'2021-10-08 12:59:09.948049','2021-10-08 12:59:09.948049',NULL,NULL),(40,'Ghotxf3FDqiwVkFIVmdAvIQP69qZ8O','2021-12-13 14:06:27.481642','read write',1,13,'2021-12-13 04:06:27.483161','2021-12-13 04:06:27.483161',NULL,NULL),(41,'69yrGcr2dytCz3pP6QKwYH4oPVMfcf','2021-12-13 14:14:25.832040','read write',1,13,'2021-12-13 04:14:25.832870','2021-12-13 04:14:25.832870',NULL,NULL),(42,'LPqetRpFygFYVh6L8BOUhtr1SvkXYg','2021-12-13 19:21:20.025914','read write',2,14,'2021-12-13 09:21:20.029914','2021-12-13 09:21:20.029914',NULL,NULL),(43,'6M5igkiWzY0LxIMC5z8bkNYvptFa3M','2021-12-13 19:21:36.811163','read write',2,14,'2021-12-13 09:21:36.812161','2021-12-13 09:21:36.812161',NULL,NULL),(44,'935POGEQI4jOvFtK1cEgukVUC7EhGO','2021-12-13 19:22:04.042331','read write',2,14,'2021-12-13 09:22:04.042331','2021-12-13 09:22:04.043332',NULL,NULL),(45,'KDhmKXamDiR5bTXLYpvUlikFYzDNW9','2021-12-18 12:01:43.173600','read write',2,14,'2021-12-18 02:01:43.175591','2021-12-18 02:01:43.175591',NULL,NULL),(46,'KC4KechdLXLWbxMjNrj6Lmb760YJ7H','2021-12-18 12:01:43.179590','read write',2,14,'2021-12-18 02:01:43.180589','2021-12-18 02:01:43.180589',NULL,NULL),(47,'aPkfeUAfUzAShAbsYIJepubjvSFnG9','2021-12-18 12:01:48.725181','read write',2,14,'2021-12-18 02:01:48.728176','2021-12-18 02:01:48.728176',NULL,NULL),(48,'kSPj1klFY8ygMJvMHE5q8yzjDJ65Z8','2021-12-18 12:02:02.478721','read write',2,14,'2021-12-18 02:02:02.479720','2021-12-18 02:02:02.479720',NULL,NULL),(49,'xyfGhzQUG1AphKcZkRik0uDvGlQHOo','2021-12-18 12:02:06.045525','read write',2,14,'2021-12-18 02:02:06.046524','2021-12-18 02:02:06.046524',NULL,NULL),(50,'3zXDnj4gEkzqXyKf17Yr250bZb4MSe','2021-12-18 12:02:06.454273','read write',2,14,'2021-12-18 02:02:06.455272','2021-12-18 02:02:06.455272',NULL,NULL),(51,'52ApT4WpVga5oNiiZ3OMVL0OtdqPM4','2021-12-18 12:02:22.555260','read write',2,14,'2021-12-18 02:02:22.556259','2021-12-18 02:02:22.556259',NULL,NULL),(52,'4yRLJU8A6Z4VlU6WLuY0ZQYXBeo6eg','2021-12-18 12:02:22.679184','read write',2,14,'2021-12-18 02:02:22.680183','2021-12-18 02:02:22.680183',NULL,NULL),(53,'42V7btSJA2xDFIBracfXh2upwwD3ur','2021-12-18 12:02:23.066945','read write',2,14,'2021-12-18 02:02:23.067945','2021-12-18 02:02:23.067945',NULL,NULL),(54,'DXjn0EzqMu5SN4zzQqv0UBPiTCQ4Fg','2021-12-18 12:02:23.352768','read write',2,14,'2021-12-18 02:02:23.353768','2021-12-18 02:02:23.353768',NULL,NULL),(55,'RtrlDfYK8t1g2hVHFKGiOzzyYf3hNq','2021-12-18 12:02:31.220816','read write',2,14,'2021-12-18 02:02:31.223812','2021-12-18 02:02:31.223812',NULL,NULL),(56,'VreiAtH6cvEsiaZMfZzszjul2kIMKa','2021-12-18 12:03:20.814662','read write',2,14,'2021-12-18 02:03:20.815662','2021-12-18 02:03:20.815662',NULL,NULL),(57,'c74itBnyImVzm1bk0Wq7PncD5Z6BIR','2021-12-18 12:03:25.417831','read write',2,14,'2021-12-18 02:03:25.419825','2021-12-18 02:03:25.419825',NULL,NULL),(58,'PJA1lvDnOPt188AAbyJYu60t5ZJBoz','2021-12-18 12:03:25.562738','read write',2,14,'2021-12-18 02:03:25.564741','2021-12-18 02:03:25.564741',NULL,NULL),(59,'x3AIDqQWVHO2RKVbMgfh6MqGSHVBkM','2021-12-18 12:03:26.029451','read write',2,14,'2021-12-18 02:03:26.030450','2021-12-18 02:03:26.030450',NULL,NULL),(60,'of8eh2K51NqG5FXx651XbhPkNXMMQu','2021-12-18 12:03:44.588273','read write',2,14,'2021-12-18 02:03:44.589273','2021-12-18 02:03:44.589273',NULL,NULL),(61,'E8dvxgt06PKDMVCE9Ij78vRx2yGI0d','2021-12-18 12:03:44.612262','read write',2,14,'2021-12-18 02:03:44.614262','2021-12-18 02:03:44.614262',NULL,NULL),(62,'25XSFkRywHj0vtJfQAOX2kOLze4ujt','2021-12-18 12:03:44.686213','read write',2,14,'2021-12-18 02:03:44.688212','2021-12-18 02:03:44.688212',NULL,NULL),(63,'IiPLI14oINaW5gvUU6KbvC9qBNhUKq','2021-12-18 12:05:24.427491','read write',2,15,'2021-12-18 02:05:24.428490','2021-12-18 02:05:24.429489',NULL,NULL),(64,'HiMiguNRWgqgY6CUu5rTOUVhLm0w8u','2021-12-18 12:05:29.883140','read write',2,15,'2021-12-18 02:05:29.884130','2021-12-18 02:05:29.885130',NULL,NULL),(65,'v7wr93R8g8cVuFsGUQLI0yCMkcxgHT','2021-12-18 12:05:30.056025','read write',2,15,'2021-12-18 02:05:30.057025','2021-12-18 02:05:30.057025',NULL,NULL),(66,'DqWJgOei4EKCm5QYm0MV9bdgf6TVdM','2021-12-18 12:05:30.168955','read write',2,15,'2021-12-18 02:05:30.169955','2021-12-18 02:05:30.169955',NULL,NULL),(67,'RM4wdmhvqaVPjQhOq2qNjLxHhBA76g','2021-12-18 12:05:30.228918','read write',2,15,'2021-12-18 02:05:30.230916','2021-12-18 02:05:30.230916',NULL,NULL),(68,'bscvs6wEa4kJPuMpKWIeInkYwlWwuv','2021-12-18 12:05:31.032423','read write',2,15,'2021-12-18 02:05:31.033422','2021-12-18 02:05:31.033422',NULL,NULL),(69,'KrXoqvceFwXjCVDUbspAlJfQ1zDate','2021-12-18 12:05:31.430179','read write',2,15,'2021-12-18 02:05:31.434179','2021-12-18 02:05:31.434179',NULL,NULL),(70,'0i8oHB8ZHfvVskuQ9BlC5xVLsFCjZB','2021-12-18 12:05:36.188393','read write',2,15,'2021-12-18 02:05:36.189392','2021-12-18 02:05:36.189392',NULL,NULL),(71,'Q34TlLH6eGN3lVL2jnzed6ZfI2otuY','2021-12-18 12:05:36.982903','read write',2,15,'2021-12-18 02:05:36.983903','2021-12-18 02:05:36.983903',NULL,NULL),(72,'h1dlmZdd81gPdXFpGaSaaRKLmCoa5c','2021-12-18 12:05:37.367675','read write',2,15,'2021-12-18 02:05:37.368666','2021-12-18 02:05:37.368666',NULL,NULL),(73,'RQm2tUyHxaFLePPVGw75HpgmQzIdWm','2021-12-18 12:05:37.737438','read write',2,15,'2021-12-18 02:05:37.738439','2021-12-18 02:05:37.738439',NULL,NULL),(74,'fxTUHctCGYr1vpN1u1DJf6w3UXK5i1','2021-12-18 12:05:37.774417','read write',2,15,'2021-12-18 02:05:37.775416','2021-12-18 02:05:37.775416',NULL,NULL),(75,'CIWd37Jw5RhmsVmQxPJGMcizPCN44n','2021-12-18 12:05:37.944312','read write',2,15,'2021-12-18 02:05:37.947312','2021-12-18 02:05:37.947312',NULL,NULL),(76,'snctuuqP2ryk3H68n4tcxjQ9VdfVEK','2021-12-18 12:05:40.374814','read write',2,15,'2021-12-18 02:05:40.376821','2021-12-18 02:05:40.376821',NULL,NULL),(77,'brwOvUCTuXZNSkWNPCQsHpdbymSWfm','2021-12-18 12:05:47.236589','read write',2,15,'2021-12-18 02:05:47.237588','2021-12-18 02:05:47.237588',NULL,NULL),(78,'JiSllwKliVEXrFpSqzTDbqDvDHmmep','2021-12-18 12:07:51.883809','read write',2,15,'2021-12-18 02:07:51.883809','2021-12-18 02:07:51.883809',NULL,NULL),(79,'C0sYRCmw4stSaWYwUNpibzvo3ZfhQN','2021-12-18 12:07:51.881810','read write',2,15,'2021-12-18 02:07:51.882809','2021-12-18 02:07:51.882809',NULL,NULL),(80,'XO5dDMqlJAmbv1sPJLJ2FfKikXY30G','2021-12-18 12:07:51.884808','read write',2,15,'2021-12-18 02:07:51.885806','2021-12-18 02:07:51.885806',NULL,NULL),(81,'TuJYxWhpyvAX1ZEcc0o0UqZ5gP53bm','2021-12-18 12:08:47.031608','read write',2,15,'2021-12-18 02:08:47.032607','2021-12-18 02:08:47.032607',NULL,NULL),(82,'6Zj4rdYW6dsdcXGUTyoC0iNn3gb62l','2021-12-18 12:08:55.607622','read write',2,15,'2021-12-18 02:08:55.610626','2021-12-18 02:08:55.610626',NULL,NULL),(83,'k8Lq5hohQDgTlvd432wmJ87J1dzcV9','2021-12-18 12:08:57.629377','read write',2,15,'2021-12-18 02:08:57.630376','2021-12-18 02:08:57.630376',NULL,NULL),(84,'BFmTuEW92reL2l83UtUEDNQsMUZLEZ','2021-12-18 12:08:57.862234','read write',2,15,'2021-12-18 02:08:57.863234','2021-12-18 02:08:57.863234',NULL,NULL),(85,'ZzPcJCdFFcPU3bmfE20oXiSWgTTA6R','2021-12-18 12:08:57.918199','read write',2,15,'2021-12-18 02:08:57.921199','2021-12-18 02:08:57.921199',NULL,NULL),(86,'laypGGeXHytejYW6FyYD1Q4pw5ERhl','2021-12-18 12:08:58.165050','read write',2,15,'2021-12-18 02:08:58.166049','2021-12-18 02:08:58.166049',NULL,NULL),(87,'AoSvCFF6PdZCeXiHGG8q5JYJNMT0g6','2021-12-18 12:09:03.209942','read write',2,15,'2021-12-18 02:09:03.211941','2021-12-18 02:09:03.211941',NULL,NULL),(88,'f1EPEQmR0gHmigYHfM1XzSM6ECI3hP','2021-12-18 12:09:05.027821','read write',2,15,'2021-12-18 02:09:05.030821','2021-12-18 02:09:05.030821',NULL,NULL),(89,'wd2B61xpBpVy3u4w3pBMFAY5UYU69F','2021-12-18 12:09:05.323639','read write',2,15,'2021-12-18 02:09:05.324638','2021-12-18 02:09:05.324638',NULL,NULL),(90,'9ZljlDPQCx1bLR1jtlaQ2uwgFeCEZM','2021-12-18 12:09:05.398592','read write',2,15,'2021-12-18 02:09:05.399592','2021-12-18 02:09:05.399592',NULL,NULL),(91,'6TT0hr00ZjcI9VQMftSw2zowVshQMR','2021-12-18 12:09:05.580481','read write',2,15,'2021-12-18 02:09:05.581481','2021-12-18 02:09:05.582480',NULL,NULL),(92,'3Ej0HfAc13zo6VxaUsuY1KAV5HEpU9','2021-12-18 12:09:06.059188','read write',2,15,'2021-12-18 02:09:06.060186','2021-12-18 02:09:06.060186',NULL,NULL),(93,'uLnCwONnVMWT9a5Ewf5M9tp0jctmEo','2021-12-18 12:09:10.804338','read write',2,15,'2021-12-18 02:09:10.804338','2021-12-18 02:09:10.804338',NULL,NULL),(101,'5DfbCWkDfHrpeVpfJJyQz03gKo8lLl','2021-12-18 12:22:17.538229','read write',2,15,'2021-12-18 02:22:17.540442','2021-12-18 02:22:17.540442',NULL,NULL),(102,'baAwnJVTxUyimCm7i6uz10lNi88uip','2021-12-18 12:23:25.904098','read write',2,15,'2021-12-18 02:23:25.905106','2021-12-18 02:23:25.905106',NULL,NULL),(103,'1BtwC1yxhzzV7ZuGkZu2No0Zs1PzS5','2021-12-18 12:26:19.456768','read write',2,15,'2021-12-18 02:26:19.457770','2021-12-18 02:26:19.457770',NULL,NULL),(104,'zp3KFhMOzjx8xIB5Sy7lcRksx8K3uL','2021-12-18 12:26:53.865543','read write',2,15,'2021-12-18 02:26:53.866550','2021-12-18 02:26:53.866550',NULL,NULL),(105,'Un0tt6QLo9JBm3798v54vEwHkJ0Zbw','2021-12-18 12:30:17.295423','read write',2,15,'2021-12-18 02:30:17.296430','2021-12-18 02:30:17.296430',NULL,NULL),(106,'t4lB94ewy4T0NjajvWMKjBRpGEoreo','2021-12-18 12:34:07.706386','read write',2,15,'2021-12-18 02:34:07.706386','2021-12-18 02:34:07.706386',NULL,NULL),(107,'JojoFL1YmozAyNiPRT1CeUVRQp1JAe','2021-12-18 12:34:12.847431','read write',2,15,'2021-12-18 02:34:12.847431','2021-12-18 02:34:12.847431',NULL,NULL),(108,'jLWrqu2YE59DRuv0vAG84EribLUuPW','2021-12-18 12:34:48.605912','read write',2,15,'2021-12-18 02:34:48.606909','2021-12-18 02:34:48.606909',NULL,NULL),(109,'DYiq8WcZzogsJpF1LsItD1LRZyCEhT','2021-12-18 13:27:31.090606','read write',2,15,'2021-12-18 03:27:31.093605','2021-12-18 03:27:31.093605',NULL,NULL),(110,'Jmv5qfAYEHgfbNBcoJI0St7GmzPJE6','2021-12-18 13:27:57.286475','read write',2,15,'2021-12-18 03:27:57.287474','2021-12-18 03:27:57.287474',NULL,NULL),(111,'ixzcux0K8AtXyH7lsLolNlFRU88kdl','2021-12-18 13:28:12.777375','read write',2,15,'2021-12-18 03:28:12.778375','2021-12-18 03:28:12.778375',NULL,NULL),(112,'Bum5BRyzbwA2TL6Rj43MBPsA3g3LAx','2021-12-18 13:28:14.671210','read write',2,15,'2021-12-18 03:28:14.672209','2021-12-18 03:28:14.672209',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_application_user_id_79829054_fk_wedding_user_id` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_application_user_id_79829054_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'HgTmfMKxi7DVfdAwXmaTsUxXdkvAMgZ3UCmQShZi','','confidential','password','WfTM1TxkRvkFbaXzzseqIBcsX6LtLazLzKVC8bg9uzcdaurNqw0pOkyCaXjJtrnzQn6v0YaiJk82cRNDVpl10ldJKanimuxLOrlSZh1H8NH038pQbxOc1bzxQOSF82DK','WeddingAppKP',1,0,'2021-09-30 15:02:03.783875','2021-09-30 15:02:03.783875',''),(2,'acvDKSS5EAW9lMHHmXlhZmoZwjUDmy3gDJPWYNFd','','confidential','password','X9TncnD0EXmxWmRZZZuxVJt3eukwSyY6yIaLacggqAVNjT4A6IKIkvOjsuY8aVcNUHtOk7UKFPdYxWYW1zP5ZJMiUhBSW4wTY7fd1QPULQMZOH1QQi9bWfUDd4rMBooH','WeddingApp',14,0,'2021-12-13 09:18:56.179285','2021-12-13 09:18:56.179285','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `claims` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refreshtoken_user_id_da837fce_fk_wedding_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refreshtoken_user_id_da837fce_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'zrZEV6HvDbXobpSbrDn708XabDa31p',1,1,1,'2021-09-30 15:07:09.635532','2021-09-30 15:07:09.635532',NULL),(2,'BVoc4Zes7QyxlRiK9oYod0vSbm2WGE',2,1,1,'2021-10-01 12:42:36.725287','2021-10-01 12:42:36.725287',NULL),(3,'Z9jRlPGIzGq07Ad0elLPlD2juEXonz',3,1,1,'2021-10-01 13:05:27.298425','2021-10-01 13:05:27.298425',NULL),(4,'X8WEMcHxu1bTpeJgQfewDTLYvT0M3c',4,1,1,'2021-10-03 09:14:20.402955','2021-10-03 09:14:20.402955',NULL),(5,'cncBNCXlsEl5o8Tv2sh015pX1rIVHL',5,1,1,'2021-10-03 10:37:52.060588','2021-10-03 10:37:52.060588',NULL),(6,'lMBHAntaGqVj4HZsWJ6qfgIw5VBP1n',6,1,1,'2021-10-03 10:59:18.552728','2021-10-03 10:59:18.552728',NULL),(7,'XmOjlWjMPPkKOCPHc7cEIoUCi0kOjC',7,1,1,'2021-10-04 13:41:14.160264','2021-10-04 13:41:14.160264',NULL),(8,'hF4vgor1f3axde9W8NBlgLwTqRa0WP',8,1,1,'2021-10-04 13:42:44.482640','2021-10-04 13:42:44.482640',NULL),(9,'brKeZZdjh8xvYX3au7Fj2Pwz2dPoHN',9,1,1,'2021-10-04 15:20:46.977134','2021-10-04 15:20:46.977134',NULL),(10,'PKf7HJhO4PKqYmTmJYqd2MFHGzsPpE',10,1,1,'2021-10-04 15:24:59.721224','2021-10-04 15:24:59.721224',NULL),(11,'06TruQT4PLkcZ8C53LHTqmS0iLNQ10',11,1,1,'2021-10-04 15:25:50.717389','2021-10-04 15:25:50.717389',NULL),(12,'XzAP3SqfSAXSj0SQWnAWlDBI5h8dfs',12,1,1,'2021-10-07 09:02:59.678447','2021-10-07 09:02:59.678447',NULL),(13,'WqC9RQc4KTWlMX6AsnVLwAN89jpg9T',13,1,1,'2021-10-07 10:05:47.086018','2021-10-07 10:05:47.086018',NULL),(14,'hOlqRYT1s837Z5rDAg5ufU6QDmxxcW',14,1,1,'2021-10-07 14:52:26.603785','2021-10-07 14:52:26.603785',NULL),(15,'v2DXG7KsgvZCPDtuQA3eJ2axnimDBH',15,1,1,'2021-10-07 15:01:45.309193','2021-10-07 15:01:45.309193',NULL),(16,'lfvm3QZ0A176nGKR9eJq1Yt5p97JkD',16,1,1,'2021-10-07 15:02:34.158426','2021-10-07 15:02:34.158426',NULL),(17,'UnPbQHMNHuECAt9Oq5ZJRwfdUHV7vV',17,1,1,'2021-10-07 15:07:25.123519','2021-10-07 15:07:25.123519',NULL),(18,'l0BTshYxO5eqkwQjEQkwSlODq0Q1ZV',18,1,1,'2021-10-07 15:10:35.376235','2021-10-07 15:10:35.376235',NULL),(19,'C5TTT2TmIHN0t1Mp9r3Yrr697DvwVY',19,1,1,'2021-10-07 15:13:19.110820','2021-10-07 15:13:19.110820',NULL),(20,'vgc5g6nnZ4sEDI4oqvtQBPDcwlaNNJ',20,1,1,'2021-10-07 15:14:22.373652','2021-10-07 15:14:22.373652',NULL),(21,'wyFbYMga5v8RUt8vcP2M31i7s03UbM',21,1,1,'2021-10-07 15:14:26.702163','2021-10-07 15:14:26.702163',NULL),(22,'NyGvLDNhnQw4KOcurU6WEx0w5d2t33',22,1,1,'2021-10-07 15:14:51.618895','2021-10-07 15:14:51.618895',NULL),(23,'9C6ScPuARCtxuSDosJ6cJ9hRiZmRrN',23,1,1,'2021-10-07 15:18:55.823216','2021-10-07 15:18:55.823216',NULL),(24,'DBzh6O3LS7o3AbL6oIcNrFljrbWzzC',24,1,1,'2021-10-07 15:27:11.500069','2021-10-07 15:27:11.500069',NULL),(25,'7veYyOvwnGnunpgVEx0eSWYs8z49Aa',25,1,1,'2021-10-07 15:28:13.475091','2021-10-07 15:28:13.475091',NULL),(26,'mjIbcbTZCDQxJXnQzHzi2N9uP4PTQX',26,1,1,'2021-10-07 15:40:34.063219','2021-10-07 15:40:34.063219',NULL),(27,'YEsPsupUyJDHKvczJ0rvoA99BUzEWu',27,1,1,'2021-10-07 15:41:28.005120','2021-10-07 15:41:28.005120',NULL),(28,'A62XWLfoEDg8h5LNDXz9iLF0eAhJnJ',28,1,1,'2021-10-07 15:44:07.383459','2021-10-07 15:44:07.383459',NULL),(29,'9KxbVkNWDS2SfMERQoGMsCGZmMQgeA',29,1,1,'2021-10-07 15:45:19.023192','2021-10-07 15:45:19.023192',NULL),(30,'pTZBsoJ8TdYWaUrGswfbiLZlz9FNbz',30,1,1,'2021-10-07 15:46:29.852427','2021-10-07 15:46:29.852427',NULL),(31,'lenIM3IbeQg7D6fJvfCLxf4iUCgHpo',31,1,1,'2021-10-07 15:53:22.516296','2021-10-07 15:53:22.516296',NULL),(32,'HJNCZ5AgVxAYh1t0HebjZaz8kWIa1q',32,1,1,'2021-10-08 02:13:16.357148','2021-10-08 02:13:16.357148',NULL),(33,'o7XTCceOVObDLtTLcBO6KT5iaD8rOP',33,1,1,'2021-10-08 02:14:17.762710','2021-10-08 02:14:17.762710',NULL),(34,'X9SHrzFC5Bv2zLzJS1KZ4Wpu8H8irf',34,1,1,'2021-10-08 02:19:36.911155','2021-10-08 02:19:36.911155',NULL),(35,'XNTJnHDJOMue2IxYjMCe6PRhc7pJXZ',35,1,1,'2021-10-08 02:27:45.298307','2021-10-08 02:27:45.298307',NULL),(36,'U9XBH6eevF3vRvcSiBz2zfvOcD1sDo',36,1,1,'2021-10-08 03:15:50.104527','2021-10-08 03:15:50.104527',NULL),(37,'xz2IkXUrOLYfJBmPbE3WQxSoqiDlzi',37,1,1,'2021-10-08 03:16:33.177903','2021-10-08 03:16:33.177903',NULL),(38,'bhQFWkJ4Vs05jTKz5gRyI5KVD7Gqur',38,1,1,'2021-10-08 12:56:17.079810','2021-10-08 12:56:17.079810',NULL),(39,'UMo8VA3cmdDuj7dQ20wZIE7jnyfQrq',39,1,1,'2021-10-08 12:59:10.082689','2021-10-08 12:59:10.082689',NULL),(40,'o6mO3iQKsmK71KFqHNgl8op8YPIxIe',40,1,13,'2021-12-13 04:06:27.784857','2021-12-13 04:06:27.784857',NULL),(41,'IfWJ9rqCptmtoCUAdgR8TdSos23G7S',41,1,13,'2021-12-13 04:14:26.238034','2021-12-13 04:14:26.239042',NULL),(42,'IbDzP8PNsdGW6G3D0BA3Xb7PbZnR1c',42,2,14,'2021-12-13 09:21:20.172171','2021-12-13 09:21:20.172171',NULL),(43,'xA6SXkj5DKd3OP97l8sv6jy8xUHP3Z',43,2,14,'2021-12-13 09:21:36.943081','2021-12-13 09:21:36.943081',NULL),(44,'1G9MUdh0ewz4SvXr59jRxObxXL9yN6',44,2,14,'2021-12-13 09:22:04.135273','2021-12-13 09:22:04.136273',NULL),(45,'Y53oqCEdelKK5IUsGBoTb4KEXpMdoh',45,2,14,'2021-12-18 02:01:43.553360','2021-12-18 02:01:43.553360',NULL),(46,'ooGKDSQWpbosJGkChLwV3Opj6kg2nu',46,2,14,'2021-12-18 02:01:43.582342','2021-12-18 02:01:43.582342',NULL),(47,'GBMGvfyXSAhUsJqUfxuCNRf6ikfNwy',47,2,14,'2021-12-18 02:01:49.034984','2021-12-18 02:01:49.034984',NULL),(48,'xKkbZGCUsES0xZY4QEixMviyYVCCaF',48,2,14,'2021-12-18 02:02:02.708584','2021-12-18 02:02:02.708584',NULL),(49,'YkpUjGftglIoeaVRnjyw2zOqGIZUrr',49,2,14,'2021-12-18 02:02:06.132471','2021-12-18 02:02:06.132471',NULL),(50,'DEFjOXs0gbvzRiyCAVifYleMwDvdn1',50,2,14,'2021-12-18 02:02:06.940973','2021-12-18 02:02:06.941972',NULL),(51,'Nhpc4WCj6GBmRR2otNFlsU2ZIPQjuS',51,2,14,'2021-12-18 02:02:22.737148','2021-12-18 02:02:22.737148',NULL),(52,'AXBjRBPwfDnhtP7cDDgw5Fdpm4oQFl',52,2,14,'2021-12-18 02:02:22.850078','2021-12-18 02:02:22.850078',NULL),(53,'dPsuzndEBEqyYmmmTxivCBMQrK02TV',53,2,14,'2021-12-18 02:02:23.244835','2021-12-18 02:02:23.244835',NULL),(54,'POnJgz3sATD9GzH3QGTcBiNoZDC1i1',54,2,14,'2021-12-18 02:02:23.863454','2021-12-18 02:02:23.863454',NULL),(55,'1zT0ilbx0Xz9bbm8wwGbRSgfV1XBoa',55,2,14,'2021-12-18 02:02:31.565601','2021-12-18 02:02:31.565601',NULL),(56,'XNb3oaJUXGW5Qjr1ySZ5uizetxaDAB',56,2,14,'2021-12-18 02:03:20.969567','2021-12-18 02:03:20.969567',NULL),(57,'RuXAcYo7IP2o6pmNB3w4xJaCVRqRoH',57,2,14,'2021-12-18 02:03:25.554743','2021-12-18 02:03:25.554743',NULL),(58,'pbVJlCp1JNXDilmi48erRs4buhksjU',58,2,14,'2021-12-18 02:03:25.806588','2021-12-18 02:03:25.806588',NULL),(59,'pCcEbt94GNXJwieFrjmtTCoOoSr1mo',59,2,14,'2021-12-18 02:03:26.538137','2021-12-18 02:03:26.538137',NULL),(60,'F681JjLlEmpvwvdbm67qopHBnhwysU',60,2,14,'2021-12-18 02:03:44.727188','2021-12-18 02:03:44.727188',NULL),(61,'M44sigH2aZ01lJmRpccr9ulihGtyBj',61,2,14,'2021-12-18 02:03:44.755171','2021-12-18 02:03:44.755171',NULL),(62,'XJ5kvitqpEnSFmOap9d2EXVnOGSKdY',62,2,14,'2021-12-18 02:03:44.872098','2021-12-18 02:03:44.872098',NULL),(63,'RsW64MKzyd7oukglhS6YtkMBtmcpW3',63,2,15,'2021-12-18 02:05:24.581396','2021-12-18 02:05:24.581396',NULL),(64,'lOYuMeKhDyqa5AMUBL2to8LehYMHYS',64,2,15,'2021-12-18 02:05:30.118986','2021-12-18 02:05:30.118986',NULL),(65,'f7fVfy4ta99QJ9YzzFW21qpoDlTZBd',65,2,15,'2021-12-18 02:05:30.285883','2021-12-18 02:05:30.285883',NULL),(66,'rucMCiuEkW6S3S0eQgv6z1SPNxxhsW',66,2,15,'2021-12-18 02:05:30.335858','2021-12-18 02:05:30.335858',NULL),(67,'aiDvtFfXRgjg56tjOM015voXZWsO3J',67,2,15,'2021-12-18 02:05:30.766587','2021-12-18 02:05:30.766587',NULL),(68,'qTxU6qPrAp3Py4SaeeO06ekty8nCZq',68,2,15,'2021-12-18 02:05:31.597075','2021-12-18 02:05:31.597075',NULL),(69,'oD41N4sTGRxvHWmR2ps3gMdj02wQi2',69,2,15,'2021-12-18 02:05:32.545491','2021-12-18 02:05:32.545491',NULL),(70,'GdLTfkPHgkni30ZgiViqU6JroDMAcp',70,2,15,'2021-12-18 02:05:36.314315','2021-12-18 02:05:36.314315',NULL),(71,'9LMTx1gHtZwHT6WCizYRDUx4I2drW9',71,2,15,'2021-12-18 02:05:37.703462','2021-12-18 02:05:37.704459',NULL),(72,'Nu8STGgkpDgJkkB4B9sKyMhntGtGkf',72,2,15,'2021-12-18 02:05:38.334072','2021-12-18 02:05:38.334072',NULL),(73,'ViZk1G4hEnukM5JrgIAPIBu4Ya1flB',74,2,15,'2021-12-18 02:05:38.507968','2021-12-18 02:05:38.507968',NULL),(74,'Ioiud4MZh1SuQxpdLPJAmcndoaNa4h',73,2,15,'2021-12-18 02:05:38.534948','2021-12-18 02:05:38.534948',NULL),(75,'ROCKysL9JFzNFXWABw8jemnILD8RKm',75,2,15,'2021-12-18 02:05:38.635886','2021-12-18 02:05:38.635886',NULL),(76,'XBW8ujrWDUberBk0nK76liry2pRgKg',76,2,15,'2021-12-18 02:05:41.148342','2021-12-18 02:05:41.148342',NULL),(77,'9Y4uEPbZz5s3VL8bvUK814PBfVVKGg',77,2,15,'2021-12-18 02:05:47.729287','2021-12-18 02:05:47.729287',NULL),(78,'MDHI2I9ldy8BcGFetjI6v809av5nw8',80,2,15,'2021-12-18 02:07:54.107163','2021-12-18 02:07:54.107163',NULL),(79,'PDR4jteAfKnU9Skp9v64Is6EWTaeWI',78,2,15,'2021-12-18 02:07:54.127153','2021-12-18 02:07:54.127153',NULL),(80,'9wsTpRKmfdYctGYrZO0qeYgTaH9XcY',79,2,15,'2021-12-18 02:07:54.128151','2021-12-18 02:07:54.128151',NULL),(81,'Fs7pPdfP4BJx94uy9HMHf5BDVxGtPK',81,2,15,'2021-12-18 02:08:47.628241','2021-12-18 02:08:47.628241',NULL),(82,'SkG1ZVTCfLLzxXhib1yXsZBoQIfWk7',82,2,15,'2021-12-18 02:08:55.867462','2021-12-18 02:08:55.867462',NULL),(83,'4nMivqkXTZw2LKP9tND5dzlmoZEReP',83,2,15,'2021-12-18 02:08:57.803274','2021-12-18 02:08:57.803274',NULL),(84,'jzeG0YfcMAd5U1bHMJ21VzAXQPUYlT',84,2,15,'2021-12-18 02:08:58.052118','2021-12-18 02:08:58.052118',NULL),(85,'QvO0h393EfXe2m3FUktVZWWagLhMon',85,2,15,'2021-12-18 02:08:58.089101','2021-12-18 02:08:58.089101',NULL),(86,'1JYye63qXkNIs2ldCkhakRWhl83jWX',86,2,15,'2021-12-18 02:08:58.951563','2021-12-18 02:08:58.951563',NULL),(87,'Iwy2uSH0PdehOOabVKGhbQlDGOi3d4',87,2,15,'2021-12-18 02:09:03.762601','2021-12-18 02:09:03.762601',NULL),(88,'O2T9qZKfYI909sejDwqMMhu2IZYUAe',88,2,15,'2021-12-18 02:09:05.170732','2021-12-18 02:09:05.170732',NULL),(89,'93gl1btWcFyAmUIba50ZUYDDYX9wqA',89,2,15,'2021-12-18 02:09:05.417581','2021-12-18 02:09:05.418580',NULL),(90,'bbT4MDNgsaTMU6Hl6Sl2iLSqaVeL3p',90,2,15,'2021-12-18 02:09:05.859309','2021-12-18 02:09:05.859309',NULL),(91,'VJ9iHmOXa00uSeiGCrbIIHSmGFoYvZ',91,2,15,'2021-12-18 02:09:05.961246','2021-12-18 02:09:05.962245',NULL),(92,'MXF7FP0HDR888H83KmJgA9lMB6Fvzw',92,2,15,'2021-12-18 02:09:07.033586','2021-12-18 02:09:07.033586',NULL),(93,'Bq8CEE8t7ls4XjqUCfQEZZ8oUZkpzH',93,2,15,'2021-12-18 02:09:11.385115','2021-12-18 02:09:11.385115',NULL),(101,'aaWossKf6lFaV9s7JRMJLvATiUa1VC',101,2,15,'2021-12-18 02:22:17.716341','2021-12-18 02:22:17.717340',NULL),(102,'6BsjhM7punM6bgQpaZBXFolkrHHDMw',102,2,15,'2021-12-18 02:23:26.291867','2021-12-18 02:23:26.292868',NULL),(103,'WC8y9yTX8l7j8jytImT1VpsT6TCaWq',103,2,15,'2021-12-18 02:26:19.813549','2021-12-18 02:26:19.813549',NULL),(104,'qlKuWJ4ME9eXQxrv4CoKXfIvYjx7RI',104,2,15,'2021-12-18 02:26:53.967487','2021-12-18 02:26:53.967487',NULL),(105,'krbkq6yAeHIP5YcGXaKeyuw7ZU8XS8',105,2,15,'2021-12-18 02:30:17.421353','2021-12-18 02:30:17.421353',NULL),(106,'IUBTLjrVLENK6waytyiBBFJlKxSBLa',106,2,15,'2021-12-18 02:34:07.968225','2021-12-18 02:34:07.968225',NULL),(107,'2zIIw6UvUboYIgbFkg2U6T5Ypzk2Bu',107,2,15,'2021-12-18 02:34:12.908395','2021-12-18 02:34:12.908395',NULL),(108,'5HgGSeuEiRxQbPOGUvxLfYC5di0uRy',108,2,15,'2021-12-18 02:34:48.790902','2021-12-18 02:34:48.790902',NULL),(109,'eusXCBhoTeISnWPJflbnqiBsGdpbII',109,2,15,'2021-12-18 03:27:31.194548','2021-12-18 03:27:31.194548',NULL),(110,'Q1BMVFKUO2BOsNvf83cujaun4CRaiK',110,2,15,'2021-12-18 03:27:57.357431','2021-12-18 03:27:57.357431',NULL),(111,'aRV00WdgBvYzDI8YnBdMAZdJAEhcpT',111,2,15,'2021-12-18 03:28:12.891305','2021-12-18 03:28:12.891305',NULL),(112,'KTJ7Dzy5elaKVCW99seNEo7rTomGGI',112,2,15,'2021-12-18 03:28:14.728179','2021-12-18 03:28:14.728179',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_bankaccount`
--

DROP TABLE IF EXISTS `wedding_bankaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_bankaccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `number` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surplus` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_bankaccount`
--

LOCK TABLES `wedding_bankaccount` WRITE;
/*!40000 ALTER TABLE `wedding_bankaccount` DISABLE KEYS */;
INSERT INTO `wedding_bankaccount` VALUES (1,'Phát','2021-10-03 12:32:39.519995',1,'123','1000000'),(2,'Kiệt','2021-10-03 12:32:54.239159',1,'1234','101010'),(3,'ok','2021-10-04 14:37:15.180158',1,'456','123456');
/*!40000 ALTER TABLE `wedding_bankaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_comment`
--

DROP TABLE IF EXISTS `wedding_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `creator_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_comment_creator_id_f58db97d_fk_wedding_user_id` (`creator_id`),
  CONSTRAINT `wedding_comment_creator_id_f58db97d_fk_wedding_user_id` FOREIGN KEY (`creator_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_comment`
--

LOCK TABLES `wedding_comment` WRITE;
/*!40000 ALTER TABLE `wedding_comment` DISABLE KEYS */;
INSERT INTO `wedding_comment` VALUES (30,'tạm ổn','2021-12-13 03:59:53.521061','2021-12-13 03:59:53.521061',2),(31,'Wonderfull!!!','2021-12-13 04:00:10.869488','2021-12-13 04:00:10.869488',4),(32,'nothing i don\'t like','2021-12-13 04:01:03.903787','2021-12-13 04:01:03.903787',5),(33,'nothing i don\'t like','2021-12-13 04:01:20.360292','2021-12-13 04:01:20.361290',5),(34,'nothing i don\'t like','2021-12-13 04:01:27.856411','2021-12-13 04:01:27.856411',5),(35,'Tôi ko hài lòng lắm !!','2021-12-13 04:06:54.132028','2021-12-13 04:06:54.132028',13),(36,'11/14','2021-12-13 04:14:46.796688','2021-12-13 04:14:46.796688',13),(41,'hi','2021-12-18 02:35:17.664808','2021-12-18 02:35:17.664808',15),(42,'Dịch vụ của nhà hàng khá tốt, nhân viên khá thân thiện!!!','2021-12-18 03:28:36.459155','2021-12-18 03:28:36.459155',15);
/*!40000 ALTER TABLE `wedding_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_food`
--

DROP TABLE IF EXISTS `wedding_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_food` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_food_menu_id_7187dfc6_fk_wedding_menu_id` (`menu_id`),
  CONSTRAINT `wedding_food_menu_id_7187dfc6_fk_wedding_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `wedding_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_food`
--

LOCK TABLES `wedding_food` WRITE;
/*!40000 ALTER TABLE `wedding_food` DISABLE KEYS */;
INSERT INTO `wedding_food` VALUES (4,'Bò cuộn nấm Kim Châm','2021-12-18 02:41:13.229087','2021-12-18 02:41:13.229087',1,'food/2021/12/9-954.jpg',1),(5,'Chả mực cuộn tròn','2021-12-18 02:42:27.780601','2021-12-18 02:42:27.780601',1,'food/2021/12/a.jpg',2),(6,'Tôm sốt thái','2021-12-18 02:42:59.074149','2021-12-18 02:42:59.074149',1,'food/2021/12/2-601.jpg',3),(7,'Gà xào thập cẩm','2021-12-18 02:43:34.381048','2021-12-18 02:43:34.381048',1,'food/2021/12/3.jpg',4),(8,'Mực riêm ngũ vị','2021-12-18 02:44:05.566721','2021-12-18 02:44:05.566721',1,'food/2021/12/4-837.jpg',5),(9,'Heo hung khói kiểu Ý','2021-12-18 02:44:34.717627','2021-12-18 02:44:34.717627',1,'food/2021/12/5-581.jpg',6),(10,'Tôm Giò tréo quẩy','2021-12-18 02:45:01.719218','2021-12-18 02:45:01.719218',1,'food/2021/12/1-101.jpg',7),(11,'Tôm cuộn phô mai','2021-12-18 02:45:31.298907','2021-12-18 02:45:31.298907',1,'food/2021/12/e.jpg',9),(12,'Các món hấp','2021-12-18 02:45:57.259934','2021-12-18 02:45:57.259934',1,'food/2021/12/d.jpg',10),(13,'Tôm sú nướng tiêu','2021-12-18 02:46:29.522570','2021-12-18 02:46:29.522570',1,'food/2021/12/c.jpg',9);
/*!40000 ALTER TABLE `wedding_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_menu`
--

DROP TABLE IF EXISTS `wedding_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_menu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_menu_system_id_9e8280e8_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_menu_system_id_9e8280e8_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_menu`
--

LOCK TABLES `wedding_menu` WRITE;
/*!40000 ALTER TABLE `wedding_menu` DISABLE KEYS */;
INSERT INTO `wedding_menu` VALUES (1,'Menu1','2021-10-03 07:45:12.593026','2021-10-03 07:45:12.593026',1,'menu/2021/10/menu1.jpg',4),(2,'Menu2','2021-10-03 07:45:39.347851','2021-10-03 07:45:39.347851',1,'menu/2021/10/menu2.jpg',4),(3,'menu3','2021-12-18 02:38:21.416632','2021-12-18 02:38:21.416632',1,'menu/2021/12/menu3_BT9ECHb.jpg',4),(4,'menu4','2021-12-18 02:38:49.338203','2021-12-18 02:38:49.338203',1,'menu/2021/12/menu4_AqzwH4y.jpg',4),(5,'menu5','2021-12-18 02:39:05.341995','2021-12-18 02:39:05.341995',1,'menu/2021/12/menu5_GNXvRCJ.jpg',4),(6,'menu6','2021-12-18 02:39:22.327874','2021-12-18 02:39:22.327874',1,'menu/2021/12/menu6_l5qgXPZ.jpg',4),(7,'menu7','2021-12-18 02:39:41.701639','2021-12-18 02:39:41.701639',1,'menu/2021/12/menu7_Lyb4bQ2.jpg',4),(8,'menu8','2021-12-18 02:39:57.530453','2021-12-18 02:39:57.530453',1,'menu/2021/12/menu8_xO0w7fl.jpg',4),(9,'menu9','2021-12-18 02:40:20.478431','2021-12-18 02:40:20.478431',1,'menu/2021/12/menu9_hqx3G5P.jpg',4),(10,'menu10','2021-12-18 02:40:36.907813','2021-12-18 02:40:36.907813',1,'menu/2021/12/menu10.jpg',4);
/*!40000 ALTER TABLE `wedding_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_service`
--

DROP TABLE IF EXISTS `wedding_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_service_system_id_be8c1dec_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_service_system_id_be8c1dec_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_service`
--

LOCK TABLES `wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_service` DISABLE KEYS */;
INSERT INTO `wedding_service` VALUES (4,'SẢNH TIỆC TỰ CHỌN','2021-12-18 03:08:53.704806','2021-12-18 03:16:39.167503',1,'Riverside Palace sở hữu tổng cộng 9 sảnh tiệc với diện tích đa dạng, mỗi sảnh có một điểm đặc trưng khác nhau, được đặt tên bởi những dòng sông nổi tiếng trên thế giới như Amur, Danube, Nile, Volga, Thames,...\r\n\r\nNhờ vào thiết kế tòa nhà theo kiến trúc châu Âu, Riverside Palace như một nữ hoàng tinh khôi khoác trên mình chiếc áo trắng ngọc ngà, tọa lạc bên dòng sông thơ mộng giúp bạn có được bối cảnh sang trọng và hữu tình. Sảnh tiệc ngoài và trong của nhà hàng đều rộng rãi, thoáng mát tạo điều kiện thuận tiện cho cô dâu chú rể trong việc đón tiếp khách và sắp xếp chỗ ngồi thoải mái cho khách mời. \r\n\r\nĐiểm cộng cho Riverside Palace, đó là không gian sảnh ít cột trụ, có diện tích rộng và không che đi tầm nhìn của khách mời và có thể trang trí với nhiều chủ đề khác nhau, thích hợp với nhiều mô hình tiệc cưới.','service/2021/12/48424574_2652462358116333_8482259834903724032_n-779.jpg',5),(5,'THỰC ĐƠN TỰ CHỌN','2021-12-18 03:10:01.132464','2021-12-18 03:10:01.132464',1,'Với ẩm thực phong phú, nhà hàng Riverside Palace ghi điểm với thực khách bằng những món ăn ngon, hấp dẫn. Thực đơn tiệc cưới của Riverside Palace luôn toát lên chất riêng. Sự sang trọng, tính dinh dưỡng và vẻ ngoài ấn tượng khiến cho người thưởng thức dễ bị lôi cuốn trong mỗi bữa tiệc. Mức giá thực đơn tại nhà hàng dao động từ 3.950.000 - 4.750.000 đồng.','service/2021/12/serve.jpg',5),(6,'TRANG TRÍ CHỌN GÓI','2021-12-18 03:11:23.511465','2021-12-18 03:16:20.717946',1,'Riverside Palace được mệnh danh là một trong số những dịch vụ tiệc cưới tại TPHCM có phong cách trang trí tiệc cưới đẹp, độc đáo và có gu thẩm mỹ cao. \r\n\r\nĐội ngũ wedding planner của nhà hàng Riverside Palace luôn biết cách sáng tạo, làm mới những chủ đề khác nhau trong mỗi tiệc cưới. Có thể thấy, đây chính là điểm mạnh lớn nhất của Riverside Palace mà khó có nhà hàng tiệc cưới nào có thể duy trì trong thời gian dài. \r\n\r\nChính vì đề cao sự chu toàn, cẩn thận, tỉ mỉ trong từng chi tiết nên những sản phẩm mà Riverside Palace mang lại đều đem đến cho mọi người cảm giác hài lòng, ấn tượng và khó quên. \r\n\r\nBạn có thể chọn tổ chức tiệc cưới ở 1 trong 9 sảnh tùy vào quy mô đám cưới, hoặc lựa chọn tổ chức tiệc cưới sân vườn để có được không gian thân thiện với thiên nhiên và gần gũi hơn với khách mời thông qua nhiều hoạt động vui chơi.','service/2021/12/riverside-8058.jpg',5),(7,'SẢNH CƯỚI','2021-12-18 03:12:57.648978','2021-12-18 03:22:19.682700',1,'Các sảnh tiệc tại Riverside Palace được thiết kế phù hợp với các buổi hội thảo, hội nghị. Cũng với những sảnh tiệc có sẵn, bạn có thể lựa chọn tổ chức sự kiện theo quy mô lớp học, tiệc đứng, chữ U, hoặc rạp hát tại các không gian sảnh của Riverside Palace đều thích hợp.\r\n\r\nĐặc biệt, với diện tích bố trí bàn ghế, không gian của các sảnh vẫn còn rộng một khoảng, đủ để bạn có nơi đặt bàn chờ hoặc di chuyển, đi lại thoải mái.','service/2021/12/OcWI60d_1.png',5),(8,'TRANG THIẾT BỊ','2021-12-18 03:14:35.187594','2021-12-18 03:16:01.657850',1,'Với kinh nghiệm tổ chức các sự kiện từ nhỏ đến lớn qua gần 10 năm, Riverside Palace hiểu được tầm quan trọng của yếu tố công nghệ trong sản xuất. Do vậy, luôn cập nhật và mang về sử dụng những máy móc, thiết bị hiện đại trong sự kiện là điều khiến cho mọi sự kiện diễn ra ở Riverside Palace thành công rực rỡ','service/2021/12/50-527.jpg',5),(9,'KHU VỰC ĐÓN KHÁCH','2021-12-18 03:18:01.855879','2021-12-18 03:18:01.855879',1,'Khu vực đón khách của các nhà hàng thường bao gồm sảnh đón khách, bàn lễ tân hay còn gọi là bàn gallery chào mừng các vị khách đến tham dự buổi lễ thành hôn. Cổng hoa cưới cùng thường được đặt tại khu vực đón khách để khách mời và cô dâu chú rể check-in tại đây. Chính vì vậy, nhiều đơn vị tổ chức khá sáng tạo trong thiết kế cổng hoa cưới nhằm tăng thêm nét lung linh cho sảnh đón khách của đôi bạn, góp phần mang lại những khoảnh khắc đẹp của ngày cưới.\r\n\r\nMặt khác, bàn gallery tại các nhà hàng sẽ được đặt trang trí theo yêu cầu của đôi bạn, bày trí hình ảnh và câu chuyện tình đẹp của nhân vật chính. Ngoài các chi tiết trang trí độc đáo mà các nhà hàng sử dụng, hộp tiền cũng được đa dạng hóa hơn, thu hút ánh nhìn của khách mời một cách dễ dàng hơn.','service/2021/12/riAY2v0.jpg',5),(10,'KHU VỰC SÂN KHẤU','2021-12-18 03:18:41.525092','2021-12-18 03:18:41.526092',1,'Nhắc đến khu vực sân khấu thì không thể không có lối đi lên sân khấu. Đây là nơi cô dâu chú rể cùng cha mẹ hai bên gia đình cùng nhau sánh bước bên nhau khi làm lễ cưới. Nơi này chính là khu vực thu hút sự chú ý của khách mời nhiều nhất, đặc biệt là khi cô dâu chú rể tiến vào lễ đường làm lễ cưới chính thức.\r\n\r\nVì nguyên do trên, các nhà hàng không thể bỏ qua chi tiết quan trọng và lơ là trong việc trang trí tâm điểm tiệc cưới. Hầu hết các cô dâu đều nói rằng, khi bước trên lối lên sân khấu họ cảm thấy hồi hộp và hạnh phúc nhất trong ngày cưới.\r\n\r\nNgoài lối đi sân khấu, khu vực sân khấu chính cũng được đơn vị tổ chức liệt kê vào trong gói dịch vụ của tiệc cưới. Bên cạnh chi phí trang trí sân khấu, các cặp đôi có thể phải chi trả thêm một số chi phí như âm thanh, ánh sáng, gói dịch vụ văn nghệ cho tiệc cưới thêm sôi động, các hình ảnh trình chiếu trong bữa tiệc,….','service/2021/12/DhzsHv1.jpg',5),(11,'BÀN TIỆC','2021-12-18 03:19:40.230199','2021-12-18 03:21:29.380978',1,'Trong gói dịch vụ cưới chắc chắn không thể thiếu bàn tiệc. Chuẩn bị bàn tiệc và trang trí thật chu đáo sẽ quyết định toàn bộ tông màu chủ đạo và hình thức của sảnh tiệc đấy. Tùy vào ngân sách, bạn có thể quyết định mình sẽ sử dụng dịch vụ trang trí tiệc cưới với mức giá và quy mô cho phù hợp.\r\n\r\nBạn còn có thể lựa chọn sử dụng dịch vụ trang trí cho toàn khu vực sảnh hay chỉ khu vực chính mà bạn cho là quan trọng nhất, được chú ý nhiều nhất trong bữa tiệc. Khu vực đón khách và bàn tiệc là điểm mấu chốt để gây ấn tượng cho khách mời. Khi bước vào không gian cưới, khách mời đầu tiên bị “choáng ngợp” bởi vẻ lộng lẫy và sang trọng của sảnh tiệc, nhân viên tiếp đón.\r\n\r\nTiếp đó, khi ngồi vào bàn tiệc, họ được phục vụ một cách chu đáo nhất với thực đơn cưới hấp dẫn và các bày trí bàn tiệc độc đáo, khách mời hầu như sẽ ngồi tại bàn tiệc cưới đa phần thời gian tham dự tiệc nên bạn cần lưu ý vào điểm này để mang lại trải nghiệm tuyệt vời nhất cho khách mời tham dự tiệc. Chỉ cần tập trung vào 2 điểm nhấn này, bạn có thể bỏ đi một vài chi phí tiệc cưới không cần thiết đồng thời vẫn chuẩn bị được một tiệc cưới thật ấn tượng.','service/2021/12/chocolate-fondant.jpg',5);
/*!40000 ALTER TABLE `wedding_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_shift`
--

DROP TABLE IF EXISTS `wedding_shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_shift` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_shift`
--

LOCK TABLES `wedding_shift` WRITE;
/*!40000 ALTER TABLE `wedding_shift` DISABLE KEYS */;
INSERT INTO `wedding_shift` VALUES (1,'Ca sáng','2021-10-03 12:24:21.270523','2021-10-03 12:24:21.270523',1,'100tr'),(2,'Ca trưa','2021-10-03 12:24:34.884012','2021-10-03 12:24:34.884012',1,'200tr'),(3,'Ca tối','2021-10-03 12:24:47.942061','2021-10-03 12:24:47.942061',1,'300tr');
/*!40000 ALTER TABLE `wedding_shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_system`
--

DROP TABLE IF EXISTS `wedding_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_system` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_system`
--

LOCK TABLES `wedding_system` WRITE;
/*!40000 ALTER TABLE `wedding_system` DISABLE KEYS */;
INSERT INTO `wedding_system` VALUES (3,'Banquet hall'),(7,'Chart'),(4,'Menu'),(6,'Recruitment'),(5,'Service');
/*!40000 ALTER TABLE `wedding_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user`
--

DROP TABLE IF EXISTS `wedding_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user`
--

LOCK TABLES `wedding_user` WRITE;
/*!40000 ALTER TABLE `wedding_user` DISABLE KEYS */;
INSERT INTO `wedding_user` VALUES (1,'pbkdf2_sha256$260000$vUBGxmrW4E9mKSQ4EIJf2H$59rY3hIgxV+jcdQvXy4r1i/LldUV6WCGlhU/C5xLluo=','2021-10-04 13:28:46.000000',1,'admin','','','huukiet21@gmail.com',1,1,'2021-09-30 14:04:16.000000','uploads/2021/10/tuvan.jpg'),(2,'pbkdf2_sha256$260000$u45O4M9MN168OtzsVa3lL3$QOmaoz8QTwMKTS2H5YMGkA8Pg37K5vpFrYNLdqQBpBk=',NULL,0,'HK','Kiet','Nguyen','huukiet21@gmail.com',0,1,'2021-10-01 11:59:27.000000','uploads/2021/10/violinist.jpg'),(3,'pbkdf2_sha256$260000$9RZXo04bYtFRPrAuHS8WOd$ocn7F4+yMGbZKtV/i8jDujCSbEJzRu4kM5ulEVX7+tU=',NULL,0,'PL','Lê','Quốc Phát','abasfidsfk@gmail.com',0,1,'2021-10-01 13:06:21.000000','uploads/2021/10/serve.jpg'),(4,'pbkdf2_sha256$260000$cvmAppjtpkDPXR1Xu3YZTF$2O61eLLCXx3nHM3YbJ1zdgjd26kM8VfOoV6j2Mx/CG0=',NULL,0,'NT','Nguyễn','Tiêm','quoc@gmail.com',0,1,'2021-10-07 15:21:05.354396','uploads/2021/10/signed.jpg'),(5,'pbkdf2_sha256$260000$SgbBZ1YcguzCa9ozqGPP71$kKYMK3FZw+XgOYcvmYpgcWhYwoIJG460GkO+Mp6rNT0=',NULL,0,'NK','Nguyễn','Ka','quoc@gmail.com',0,1,'2021-10-08 02:24:54.572966','uploads/2021/10/decorativeTable.jpg'),(13,'pbkdf2_sha256$260000$DECL3Ws3CHdZ7o8Vrzmfls$D6QZIawY8Tbct6LQVf8mHaLpaGTBvino1MdJbMsZrbA=',NULL,0,'PL3','P2','L3','P2@gmail.com',0,1,'2021-12-13 04:06:12.512829','uploads/2021/12/z2993895043102_df41a63410e671567b9bdd9277d2d3e5.jpg'),(14,'pbkdf2_sha256$260000$6gvZAAniv3zgVaNNmMQWL7$Ajra3JYI/ySjzZO/EvrQh2mttt7s0C7aXKpPqmmVq+0=','2021-12-13 09:18:39.922267',1,'admin1','','','phatphatle9999@gmail.com',1,1,'2021-12-13 04:17:17.818257',''),(15,'pbkdf2_sha256$260000$0WnPQrnfcFpIvwcqUxoWkP$MX7vIMwPvov1y+rJvdJlm6019QSYePWFaD8kNac0Sco=',NULL,0,'KietNguyen','Nguyễn','Kiệt','Ngan@gmail.com',0,1,'2021-12-18 02:05:16.431545','');
/*!40000 ALTER TABLE `wedding_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user_groups`
--

DROP TABLE IF EXISTS `wedding_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_user_groups_user_id_group_id_d2f991b2_uniq` (`user_id`,`group_id`),
  KEY `wedding_user_groups_group_id_8316c968_fk_auth_group_id` (`group_id`),
  CONSTRAINT `wedding_user_groups_group_id_8316c968_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `wedding_user_groups_user_id_d177c0f9_fk_wedding_user_id` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user_groups`
--

LOCK TABLES `wedding_user_groups` WRITE;
/*!40000 ALTER TABLE `wedding_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_user_user_permissions`
--

DROP TABLE IF EXISTS `wedding_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_user_user_permis_user_id_permission_id_1047e857_uniq` (`user_id`,`permission_id`),
  KEY `wedding_user_user_pe_permission_id_8943d6f7_fk_auth_perm` (`permission_id`),
  CONSTRAINT `wedding_user_user_pe_permission_id_8943d6f7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `wedding_user_user_pe_user_id_f9f97f68_fk_wedding_u` FOREIGN KEY (`user_id`) REFERENCES `wedding_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_user_user_permissions`
--

LOCK TABLES `wedding_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `wedding_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_wedding`
--

DROP TABLE IF EXISTS `wedding_wedding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_wedding` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `organization_date` date NOT NULL,
  `menu_id` bigint DEFAULT NULL,
  `shift_id` bigint DEFAULT NULL,
  `stk_id` bigint DEFAULT NULL,
  `wedding_hall_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `wedding_wedding_name_wedding_hall_id_ad44c305_uniq` (`name`,`wedding_hall_id`),
  KEY `wedding_wedding_menu_id_e89d7b49_fk_wedding_menu_id` (`menu_id`),
  KEY `wedding_wedding_shift_id_782ed4b7_fk_wedding_shift_id` (`shift_id`),
  KEY `wedding_wedding_stk_id_67d17628_fk_wedding_bankaccount_id` (`stk_id`),
  KEY `wedding_wedding_wedding_hall_id_7d94c416_fk_wedding_w` (`wedding_hall_id`),
  CONSTRAINT `wedding_wedding_menu_id_e89d7b49_fk_wedding_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `wedding_menu` (`id`),
  CONSTRAINT `wedding_wedding_shift_id_782ed4b7_fk_wedding_shift_id` FOREIGN KEY (`shift_id`) REFERENCES `wedding_shift` (`id`),
  CONSTRAINT `wedding_wedding_stk_id_67d17628_fk_wedding_bankaccount_id` FOREIGN KEY (`stk_id`) REFERENCES `wedding_bankaccount` (`id`),
  CONSTRAINT `wedding_wedding_wedding_hall_id_7d94c416_fk_wedding_w` FOREIGN KEY (`wedding_hall_id`) REFERENCES `wedding_weddinghalls` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_wedding`
--

LOCK TABLES `wedding_wedding` WRITE;
/*!40000 ALTER TABLE `wedding_wedding` DISABLE KEYS */;
INSERT INTO `wedding_wedding` VALUES (1,'Phát Lê','2021-10-03 12:43:37.969811','2021-10-03 12:43:37.969811',1,'2021-10-04',2,2,1,NULL),(2,'Nguyễn Kiệt','2021-10-03 12:44:15.629525','2021-10-03 12:44:15.629525',1,'2021-10-21',1,2,2,NULL),(3,'dsfsdaf','2021-10-04 15:09:35.387090','2021-10-04 15:09:35.387090',1,'2021-10-04',2,2,1,NULL),(4,'sadasd','2021-10-04 15:14:50.464143','2021-10-04 15:14:50.464143',1,'2021-10-04',1,2,1,NULL),(5,'Nguyễn Kì','2021-10-04 15:15:34.687308','2021-10-04 15:15:34.687308',1,'2021-10-04',1,2,2,NULL),(6,'quốc gia','2021-10-04 15:17:40.799246','2021-10-04 15:17:40.799246',1,'2021-10-04',2,2,3,NULL),(7,'lê tuấn','2021-10-04 15:18:21.806512','2021-10-04 15:18:21.806512',1,'2021-10-04',1,3,3,NULL),(8,'tuan le','2021-10-04 15:20:18.074517','2021-10-04 15:20:18.074517',1,'2021-10-13',2,2,2,NULL),(9,'dung do','2021-10-04 15:28:25.067835','2021-10-04 15:28:25.067835',1,'2021-10-04',1,3,3,NULL),(10,'vu pham','2021-10-05 08:13:13.056241','2021-10-05 08:13:13.056305',1,'2021-10-05',1,2,NULL,NULL),(11,'Nguyễn Thị Kim Ngân','2021-12-13 09:44:59.287632','2021-12-13 09:44:59.287632',1,'2021-12-13',1,1,1,NULL),(12,'Nguyễn Huy','2021-12-18 03:26:31.244808','2021-12-18 03:26:31.244808',1,'2021-12-18',10,3,2,9);
/*!40000 ALTER TABLE `wedding_wedding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_wedding_service`
--

DROP TABLE IF EXISTS `wedding_wedding_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_wedding_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `wedding_id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wedding_wedding_service_wedding_id_service_id_618db4ca_uniq` (`wedding_id`,`service_id`),
  KEY `wedding_wedding_serv_service_id_00d22bdf_fk_wedding_s` (`service_id`),
  CONSTRAINT `wedding_wedding_serv_service_id_00d22bdf_fk_wedding_s` FOREIGN KEY (`service_id`) REFERENCES `wedding_service` (`id`),
  CONSTRAINT `wedding_wedding_serv_wedding_id_6d6ec61e_fk_wedding_w` FOREIGN KEY (`wedding_id`) REFERENCES `wedding_wedding` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_wedding_service`
--

LOCK TABLES `wedding_wedding_service` WRITE;
/*!40000 ALTER TABLE `wedding_wedding_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `wedding_wedding_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wedding_weddinghalls`
--

DROP TABLE IF EXISTS `wedding_weddinghalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wedding_weddinghalls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wedding_weddinghalls_system_id_5e28fc49_fk_wedding_system_id` (`system_id`),
  CONSTRAINT `wedding_weddinghalls_system_id_5e28fc49_fk_wedding_system_id` FOREIGN KEY (`system_id`) REFERENCES `wedding_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wedding_weddinghalls`
--

LOCK TABLES `wedding_weddinghalls` WRITE;
/*!40000 ALTER TABLE `wedding_weddinghalls` DISABLE KEYS */;
INSERT INTO `wedding_weddinghalls` VALUES (4,'Sảnh Sài Gòn – kiến trúc hoài cổ','2021-12-18 02:58:40.056980','2021-12-18 02:58:40.056980',1,'wedding-hall/2021/12/IMG_2203-1_KIr6RHe.jpg','Không gian tiệc cưới sang trọng kiểu châu Âu thường được các cặp đôi yêu thích vì sự lịch lãm và không “sến” nếu so sánh với kiểu trang trí thông thường phong cách Á Đông.\r\n\r\nThế nhưng khi ghé thăm Sảnh Sài Gòn tại Metropole, bạn hẳn sẽ có cái nhìn khác về phong cách trang trí cưới truyền thống.\r\n\r\nVẫn là màu đỏ, vàng và nâu quen thuộc trong các đám cưới và phong tục châu Á, thế nhưng khi được nhào nặn và truyền vào đó hơi thở hiện đại, sảnh Sài Gòn trở thành một không gian cưới vừa sang trọng vẫn vừa đậm phong cách Á Đông.\r\n\r\nĐược bố trí thêm tầng lửng như khúc vĩ thanh trong bản giao hưởng sắc màu kỳ ảo, sảnh Sài Gòn hội tụ những tinh hoa của vẻ đẹp mang phong cách cung đình Huế, điểm xuyết thêm bởi những chi tiết trang trí đương đại tạo nên không gian cưới sang trọng, ấm cúng và hoành tráng.',3),(5,'Sảnh Tokyo lịch lãm','2021-12-18 02:59:20.481705','2021-12-18 02:59:20.481705',1,'wedding-hall/2021/12/sanh2_TMXQl6N.jpg','Sảnh Tokyo thể hiện sự trau chuốt và cầu toàn của Metropole khi toàn bộ nội thất được đầu tư đẳng cấp và sang trọng. \r\n\r\nNhững đường uốn lượn mềm mại tinh tế của hệ thống đèn chùm, họa tiết trang trí mang đậm văn hóa Nhật Bản hay hoa văn nổi bật trên cửa chính thể hiện gu thẩm mỹ cùng sự tài hoa và sáng tạo. \r\nSử dụng chất liệu gỗ nhẹ, giấy thông thảo và vải tự nhiên kết hợp với đèn lồng vải màu sắc trầm vốn được trang trí trong các ngôi nhà truyền thống Nhật Bản. Với 3 màu sắc chủ đạo là trắng, tím và xanh lục tạo cảm giác hiện đại, nhẹ nhàng thoải mái chứ không nặng nề như các thiết kế truyền thống của Nhật.\r\n\r\nNhờ vậy dù sảnh tiệc diện tích rộng nhưng khách mời không có cảm giác không gian bị trống trải và đơn điệu.',3),(6,'Sảnh Paris tinh tế','2021-12-18 02:59:54.529878','2021-12-18 02:59:54.529878',1,'wedding-hall/2021/12/sanh3_dyTWimI.jpg','Đây là nơi nghệ thuật trang trí đạt đến đỉnh cao. Tất cả những gì của Paris hoa lệ đều được thể hiện ở đây. Màu trắng là màu chủ đạo của căn phòng, điểm thêm đó là sắc vàng từ ánh đèn trần nhà. \r\n\r\nTại đây toàn bộ chi tiết đều được chăm chút đúng với nét xa hoa của người Paris. Những chi tiết từ hoa để bàn, rèm treo cửa, phù điêu trên cột đều góp phần tạo nên nét đẹp cho sảnh Paris.\r\n\r\nSảnh Paris được thiết kế sang trọng, mang đậm phong cách thiết kế của Pháp, cả không gian như chìm đắm trong hoa và nến mang đặc trưng của thành phố phồn hoa, tráng lệ.',3),(8,'Sảnh Shanghai lộng lẫy sang trọng','2021-12-18 03:02:41.958955','2021-12-18 03:02:41.958955',1,'wedding-hall/2021/12/OcWI60d_1.png','Với màu sắc chủ đạo là đỏ mận và đen. Sảnhtiệc thích hợp cho những cặp đôi ưa thích sự mạnh mẽ, quyền lực và quý phái. \r\n\r\nSảnh là sự kết hợp hài hòa của sắc đỏ Trung Hoa với những đường nét phóng khoáng, tinh tế phương Tây. Đây là sự lựa chọn không thể bỏ qua cho những cặp đôi thích sự mới lạ cùng một chút huyền bí cao sang.\r\n\r\nNhư biểu trưng cho tinh thần năng động, sức vươn dậy thần kỳ của một trung tâm kinh tế phát triển bậc nhất Trung Hoa, sảnh Thượng Hải được trang hoàng nổi bật với gam màu đỏ huy hoàng, lộng lẫy, kết hợp hài hòa giữa đường nét khoáng đạt của kiến trúc phương Tây với sự tinh tế, chiều sâu thẳm của tâm hồn phương Đông.',3),(9,'Sảnh New York bay bổng, xa hoa','2021-12-18 03:03:54.110518','2021-12-18 03:03:54.110518',1,'wedding-hall/2021/12/AxhNoxP.png','Tại sảnh tiệc New York, bạn sẽ không khỏi ngỡ ngàng ở không gian tinh tế hiện đại nhưng vẫn giữ được sự hòa quyện ở màu sắc, phong cách thiết kế và những xúc cảm tuyệt vời được kết đọng tại nơi đây.\r\n\r\nKhông gian sảnh tiệc New York là sự phối trộn giữa phong cách Hollywood xa hoa, sự lãng mạn quyến rũ và tinh thần sáng tạo đầy bay bổng của một trung tâm thời trang hàng đầu thế giới.\r\n\r\nCòn gì tuyệt vời hơn vào khoảnh khắc đôi uyên ương trở thành tâm điểm thu hút mọi chú ý khi tay trong tay rạng ngời hạnh phúc giữa không gian sảnh cưới nổi bật bởi nghệ thuật trang trí sáng tạo với các chất liệu cao cấp và hiện đại.',3),(10,'Sảnh Milan rực rỡ huyền ảo','2021-12-18 03:04:41.861950','2021-12-18 03:04:41.861950',1,'wedding-hall/2021/12/aVWQKqI.png','Nằm trong chuỗi 6 sảnh cưới đặc trưng của Metropole, Sảnh cưới Milan mang đầy đủ những nét đẹp quý phái, lịch lãm của những ngôi nhà vườn đầy bóng cây xanh nước Ý vùng Địa Trung Hải. \r\n\r\nKhông còn là những bức tường khô cứng, những ánh đèn điện, Milan được thiết kế theo kiểu cổ điển với những mảng xanh tươi tốt của khu vườn bao quanh kiểu Italy. Sảnh tiệc cưới Milan mang đầy cảm hứng lãng mạn, trong veo dành riêng cho lễ cưới của những ai kiếm tìm vẻ đẹp thiên nhiên.\r\n\r\nVới tác động của ánh sáng tự nhiên trực tiếp từ các ô kính màu sky light, không gian sảnh tiệc sẽ được thay đổi linh động từ vẻ rực rỡ của khu vườn ban ngày cho đến sự lung vào ban đêm. Các nhân viên thiết kế tiệc của Metropole cũng không quên những bức tranh cổ thời phục hưng kết hợp cùng ánh sáng đèn chùm pha lê trong không gian sảnh tiệc Milan làm sáng lên khu vườn treo đầy màu sắc. \r\n\r\nTất cả sẽ là một bản hợp xướng đầy đủ mảng màu tối sáng, đậm nhạt tạo nên nét cổ điển Ý ngay giữa lòng thành phố Hồ Chí Minh ồn ào sôi động.\r\n\r\nTrên đây là giới thiệu về các sảnh tiệc đặc trưng tại nhà hàng tiệc cưới HCM Metropole, hi vọng bạn đã có ý tưởng về sảnh tiệc mình ưng ý hoặc phong cách tổ chức tiệc cưới thích hợp cho ngày trọng đại của mình.',3);
/*!40000 ALTER TABLE `wedding_weddinghalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wappdb1'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-18 10:40:08
