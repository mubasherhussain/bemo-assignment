
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_column_id_foreign` (`column_id`),
  CONSTRAINT `cards_column_id_foreign` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (6,'Checking',0,NULL,37,'2024-01-10 06:16:51','2024-01-10 06:16:39','2024-01-10 06:16:51'),(7,'New Checking',0,NULL,36,NULL,'2024-01-10 06:16:51','2024-01-10 06:16:51'),(8,'Checking',0,NULL,37,NULL,'2024-01-10 06:19:46','2024-01-10 06:19:46'),(9,'Again Checking',1,NULL,36,NULL,'2024-01-10 06:19:54','2024-01-10 06:19:54'),(10,'Phr se checking',1,NULL,37,'2024-01-10 07:15:28','2024-01-10 06:20:00','2024-01-10 07:15:28'),(11,'I am checking bro updated',0,'With Description',38,'2024-01-10 10:29:54','2024-01-10 06:20:08','2024-01-10 10:29:54'),(12,'Checking new Card Updated',0,'Description',38,'2024-01-10 13:09:12','2024-01-10 07:13:15','2024-01-10 13:09:12'),(13,'Adding new Card Updated',0,'Description',38,'2024-01-10 12:11:44','2024-01-10 07:15:38','2024-01-10 12:11:44'),(14,'adfasdas',0,NULL,38,'2024-01-10 12:11:47','2024-01-10 07:23:59','2024-01-10 12:11:47'),(15,'23qwdasf',0,NULL,38,'2024-01-10 10:12:47','2024-01-10 07:24:00','2024-01-10 10:12:47'),(16,'fadsfadas',0,NULL,38,'2024-01-10 10:11:07','2024-01-10 07:24:01','2024-01-10 10:11:07'),(17,'43214132eqdacsds',0,NULL,44,'2024-01-10 13:16:31','2024-01-10 07:24:02','2024-01-10 13:16:31'),(18,'sdfsadasda',0,NULL,38,'2024-01-10 10:30:34','2024-01-10 07:24:03','2024-01-10 10:30:34'),(19,'21324r32e',0,NULL,38,'2024-01-10 10:12:58','2024-01-10 07:24:04','2024-01-10 10:12:58'),(20,'asdfzdsadfs',0,NULL,38,'2024-01-10 10:39:16','2024-01-10 07:24:05','2024-01-10 10:39:16'),(21,'Checking 2',1,NULL,37,NULL,'2024-01-10 08:02:58','2024-01-10 08:02:58'),(22,'new itmem testing',0,NULL,38,'2024-01-10 10:29:45','2024-01-10 08:20:29','2024-01-10 10:29:45'),(23,'adsa',0,NULL,38,'2024-01-10 10:31:43','2024-01-10 10:13:08','2024-01-10 10:31:43'),(24,'132423123',0,NULL,38,'2024-01-10 10:33:11','2024-01-10 10:13:09','2024-01-10 10:33:11'),(25,'wedawDEA',0,NULL,38,'2024-01-10 13:09:01','2024-01-10 10:13:11','2024-01-10 13:09:01'),(26,'asdasfd',0,NULL,38,'2024-01-10 13:10:11','2024-01-10 13:09:20','2024-01-10 13:10:11'),(27,'asdasasd',0,NULL,44,NULL,'2024-01-10 13:09:22','2024-01-10 13:17:31'),(28,'vsadsdfs',2,NULL,44,NULL,'2024-01-10 13:09:23','2024-01-10 13:18:05'),(29,'CAXSDQSA',1,NULL,38,NULL,'2024-01-10 13:09:25','2024-01-10 13:18:05'),(30,'234rqewsadcx',1,'Description',44,'2024-01-10 13:19:54','2024-01-10 13:09:28','2024-01-10 13:19:54'),(31,'asdasdas',0,NULL,38,NULL,'2024-01-10 13:17:46','2024-01-10 13:17:46'),(32,'asdasdas',2,NULL,38,NULL,'2024-01-10 13:17:48','2024-01-10 13:18:05'),(33,'asdasd',0,NULL,43,NULL,'2024-01-10 13:19:57','2024-01-10 13:19:57'),(34,'43212324',2,NULL,43,NULL,'2024-01-10 13:19:59','2024-01-11 04:27:27'),(35,'asdfafda',2,NULL,45,NULL,'2024-01-10 14:45:13','2024-01-11 04:27:31'),(36,'fsdaf',1,NULL,44,NULL,'2024-01-10 14:45:15','2024-01-10 14:45:18'),(37,'asdasdas',3,NULL,44,NULL,'2024-01-10 14:46:43','2024-01-10 14:46:43'),(38,'fsdad',4,NULL,44,NULL,'2024-01-10 14:46:44','2024-01-10 14:46:44'),(39,'dsfadad',5,NULL,44,NULL,'2024-01-10 14:46:45','2024-01-10 14:46:45'),(40,'dfsas',6,NULL,44,NULL,'2024-01-10 14:46:45','2024-01-10 14:46:45'),(41,'asdas',7,NULL,44,NULL,'2024-01-10 14:46:46','2024-01-10 14:46:46'),(42,'dsfgda',3,NULL,45,NULL,'2024-01-10 14:46:46','2024-01-11 04:27:31'),(43,'adgfd',4,NULL,45,NULL,'2024-01-10 14:46:47','2024-01-11 04:27:33'),(44,'DAFDAAS',8,NULL,44,NULL,'2024-01-10 14:46:47','2024-01-11 04:27:33'),(45,'DSVGAFD',1,NULL,43,NULL,'2024-01-10 14:46:48','2024-01-11 04:27:27'),(46,'SDFAD',0,NULL,45,NULL,'2024-01-10 14:46:48','2024-01-11 04:27:29'),(47,'dfdA',1,NULL,45,NULL,'2024-01-10 14:46:49','2024-01-11 04:27:31'),(48,'DFDASdz',9,NULL,44,NULL,'2024-01-10 14:46:50','2024-01-11 04:27:33'),(49,'fdasdf',10,NULL,44,NULL,'2024-01-10 14:46:50','2024-01-11 04:27:33'),(50,'fads',11,NULL,44,NULL,'2024-01-10 14:46:51','2024-01-11 04:27:33'),(51,'fadsd',12,NULL,44,NULL,'2024-01-10 14:46:51','2024-01-11 04:27:33'),(52,'asdas',13,NULL,44,NULL,'2024-01-10 14:51:11','2024-01-11 04:27:33'),(53,'asfasd',0,NULL,46,'2024-01-11 08:10:27','2024-01-11 08:09:50','2024-01-11 08:10:27');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `columns` WRITE;
/*!40000 ALTER TABLE `columns` DISABLE KEYS */;
INSERT INTO `columns` VALUES (2,'Column 2',2,'2024-01-09 12:34:36','2024-01-09 12:21:45','2024-01-09 12:34:36'),(3,'Column 5',0,'2024-01-10 04:37:47','2024-01-09 12:28:58','2024-01-10 04:37:47'),(4,'Column 12',0,'2024-01-10 04:37:45','2024-01-09 12:57:44','2024-01-10 04:37:45'),(5,'Column 6',2,'2024-01-10 04:37:42','2024-01-09 12:57:47','2024-01-10 04:37:42'),(6,'Column 7',0,'2024-01-10 04:37:46','2024-01-09 12:57:50','2024-01-10 04:37:46'),(7,'new Column',0,'2024-01-10 04:37:47','2024-01-10 04:30:49','2024-01-10 04:37:47'),(8,'Mubasher Is Testing',5,'2024-01-10 04:37:27','2024-01-10 04:31:04','2024-01-10 04:37:27'),(9,'Column1',0,'2024-01-10 04:43:48','2024-01-10 04:39:11','2024-01-10 04:43:48'),(10,'Column2',1,'2024-01-10 04:43:28','2024-01-10 04:40:18','2024-01-10 04:43:28'),(11,'Column3',1,'2024-01-10 04:43:47','2024-01-10 04:42:26','2024-01-10 04:43:47'),(12,'Column4',2,'2024-01-10 04:43:46','2024-01-10 04:42:55','2024-01-10 04:43:46'),(13,'Column5',3,'2024-01-10 04:43:45','2024-01-10 04:43:02','2024-01-10 04:43:45'),(14,'New Column',1,'2024-01-10 04:43:56','2024-01-10 04:43:52','2024-01-10 04:43:56'),(15,'Column Checlk',0,'2024-01-10 04:44:15','2024-01-10 04:44:02','2024-01-10 04:44:15'),(16,'Checkl 3',1,'2024-01-10 04:44:12','2024-01-10 04:44:04','2024-01-10 04:44:12'),(17,'cakds',1,'2024-01-10 04:44:13','2024-01-10 04:44:06','2024-01-10 04:44:13'),(18,'dagfasd',1,'2024-01-10 04:44:13','2024-01-10 04:44:07','2024-01-10 04:44:13'),(19,'asdadasd',1,'2024-01-10 04:44:14','2024-01-10 04:44:09','2024-01-10 04:44:14'),(20,'new column',1,'2024-01-10 04:45:23','2024-01-10 04:44:31','2024-01-10 04:45:23'),(21,'Column blah',0,'2024-01-10 04:52:43','2024-01-10 04:45:29','2024-01-10 04:52:43'),(22,'New Column',1,'2024-01-10 04:52:15','2024-01-10 04:49:03','2024-01-10 04:52:15'),(23,'asdadvfdasdfadasdasdasdvfdasd',2,'2024-01-10 04:49:19','2024-01-10 04:49:12','2024-01-10 04:49:19'),(24,'New Columns',0,'2024-01-10 04:52:43','2024-01-10 04:49:56','2024-01-10 04:52:43'),(25,'New Columns',0,'2024-01-10 04:52:43','2024-01-10 04:51:53','2024-01-10 04:52:43'),(26,'New',0,'2024-01-10 04:52:44','2024-01-10 04:52:34','2024-01-10 04:52:44'),(27,'asdasd',0,'2024-01-10 04:52:44','2024-01-10 04:52:36','2024-01-10 04:52:44'),(28,'fadas',0,'2024-01-10 04:52:44','2024-01-10 04:52:37','2024-01-10 04:52:44'),(29,'fasdasd',0,'2024-01-10 04:52:44','2024-01-10 04:52:37','2024-01-10 04:52:44'),(30,'acoluasd',0,'2024-01-10 05:33:00','2024-01-10 04:52:59','2024-01-10 05:33:00'),(31,'adfadasdfas',1,'2024-01-10 05:32:58','2024-01-10 04:53:02','2024-01-10 05:32:58'),(32,'afdasfadsaf',2,'2024-01-10 05:32:53','2024-01-10 04:53:03','2024-01-10 05:32:53'),(33,'4321435224132',2,'2024-01-10 05:32:57','2024-01-10 04:53:05','2024-01-10 05:32:57'),(34,'asfdasfdass asdsafdsad adsfdasd',3,'2024-01-10 05:32:56','2024-01-10 05:28:40','2024-01-10 05:32:56'),(35,'asdvsbgfds asfdadsasff dfdsafas sdfgfdsasfa',5,'2024-01-10 05:32:50','2024-01-10 05:29:33','2024-01-10 05:32:50'),(36,'New Column',3,'2024-01-10 06:26:00','2024-01-10 05:46:10','2024-01-10 06:26:00'),(37,'Testing',1,'2024-01-10 08:30:56','2024-01-10 05:46:14','2024-01-10 08:30:56'),(38,'Column',2,'2024-01-10 13:20:15','2024-01-10 05:46:20','2024-01-10 13:20:15'),(39,'Checking',3,'2024-01-10 06:13:02','2024-01-10 06:11:36','2024-01-10 06:13:02'),(40,'Checking',4,'2024-01-10 06:13:01','2024-01-10 06:11:48','2024-01-10 06:13:01'),(41,'Checking',3,'2024-01-10 06:14:36','2024-01-10 06:13:13','2024-01-10 06:14:36'),(42,'Checking',3,'2024-01-10 06:14:37','2024-01-10 06:14:34','2024-01-10 06:14:37'),(43,'New Column',2,NULL,'2024-01-10 06:25:33','2024-01-11 04:27:40'),(44,'New Testing Column',0,NULL,'2024-01-10 10:00:12','2024-01-11 04:27:42'),(45,'1234567890',3,NULL,'2024-01-10 13:20:17','2024-01-10 14:57:08'),(46,'0987654321',1,NULL,'2024-01-10 13:20:20','2024-01-11 04:27:42'),(47,'786543213456743',4,NULL,'2024-01-10 14:45:27','2024-01-10 14:57:08');
/*!40000 ALTER TABLE `columns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2024_01_09_162859_init_tables',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

