-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: server_data
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `dayoo_app`
--

DROP TABLE IF EXISTS `dayoo_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dayoo_app` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `appname` varchar(1024) DEFAULT NULL,
  `appdata` json DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dayoo_app`
--

LOCK TABLES `dayoo_app` WRITE;
/*!40000 ALTER TABLE `dayoo_app` DISABLE KEYS */;
INSERT INTO `dayoo_app` VALUES (1,'广爱基金','{\"domain\": \"guangai.dayoo.com\", \"ipaddr\": \"53.42.241.153,192.168.1.126,192.168.1.127\", \"app_log\": \"/data/web_app/guangai.dayoo.com/runtime/application.log\", \"app_code\": \"/data/web_app/,/data/www/\", \"database\": \"192.168.1.127,guangai.dayoo.com,guangai,guangai\", \"error_log\": \"/var/log/guangai.dayoo.com.error.log\", \"access_log\": \"/var/log/guangai.dayoo.com.access.log\"}'),(2,'大洋直播','{\"domain\": \"zhibo.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.140\"}'),(3,'微报纸','{\"domain\": \"mpaper.i.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.219\"}'),(4,'微报纸','{\"domain\": \"mpaper.i.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.219(DNS已指向137,137做了跳转页面)\"}'),(5,'微报纸二，用途待查','{\"domain\": \"mpaperplat.i.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.129\"}'),(6,'网站短链接','{\"domain\": \"r.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.124\"}'),(7,'暂缺','{\"domain\": \"s2.i.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.198\"}'),(8,'短链接后台','{\"domain\": \"rnd.local.dayoo.com\", \"ipaddr\": \"59.42.241.153\"}'),(9,'广州奖','{\"domain\": \"www.guangzhouaward.org cms.guangzhouaward.org 2014.guangzhouaward.org\", \"ipaddr\": \"59.42.241.153,192.168.1.126\"}'),(10,'广州奖注册入口','{\"domain\": \"www.guangzhouaward.org cms.guangzhouaward.org 2014.guangzhouaward.org /register/\", \"ipaddr\": \"59.42.241.153,192.168.1.179\"}'),(11,'广州奖后台入口','{\"domain\": \"www.guangzhouaward.org cms.guangzhouaward.org 2014.guangzhouaward.org/(front|content)/\", \"ipaddr\": \"59.42.241.153,192.168.1.178  192.168.1.198  192.168.1.199\"}'),(12,'手机应用主站','{\"domain\": \"i.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.198,192.168.1.199（配置文件中设置了重定向http://news.dayoo.com/i/）\"}'),(13,'待查','{\"domain\": \"i.dayoo.com/weixin/zwgz\", \"ipaddr\": \"59.42.241.153,192.168.1.199\"}'),(14,'待查','{\"domain\": \"i.dayoo.com/tclip\", \"ipaddr\": \"59.42.241.153,192.168.1.178\"}'),(15,'待查','{\"domain\": \"i.dayoo.com/idayooapp\", \"ipaddr\": \"59.42.241.153,192.168.1.140\"}'),(16,'论坛手机版','{\"domain\": \"i.dayoo.com/club已重定向 http://club.dayoo.com/forum.php\", \"ipaddr\": \"59.42.241.153,192.168.1.199,192.168.1.198\"}'),(17,'手机应用二主站','{\"domain\": \"mp.i.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.199\"}'),(18,'舞台与银幕','{\"domain\": \"mp.i.dayoo.com/wtyym\", \"ipaddr\": \"59.42.241.153,192.168.1.219\"}'),(19,'见微','{\"domain\": \"mp.i.dayoo.com/jw\", \"ipaddr\": \"59.42.241.153,192.168.1.219\"}'),(20,'待查','{\"domain\": \"mp.i.dayoo.com/jwwenda\", \"ipaddr\": \"59.42.241.153,192.168.1.178\"}'),(21,'待查','{\"domain\": \"mp.i.dayoo.com/gzfa\", \"ipaddr\": \"59.42.241.153,192.168.1.219\"}'),(22,'153的数据库WEB入口，绑定hosts','{\"domain\": \"153db.dayoo.com\", \"ipaddr\": \"59.42.241.153,192.168.1.127\"}');
/*!40000 ALTER TABLE `dayoo_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'news one','news-one','news one text content'),(2,'appname','appname','appdata'),(3,'appname','appname','appdata'),(4,'appname three','appname-three','appdata three content');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13 17:21:20
