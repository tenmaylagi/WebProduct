CREATE DATABASE  IF NOT EXISTS `web_beauty_care` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `web_beauty_care`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: web_beauty_care
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (6,'Sản phẩm của HP',1),(7,'Sản phẩm Apple',1),(8,'Các nhà sản xuất',1),(19,'Test Banner 2',0),(20,'TemplateMonster OpenCart 50677',1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_image` (
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `title` varchar(64) DEFAULT NULL,
  `sub_title` varchar(64) DEFAULT NULL,
  `description` text,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`banner_id`,`image`),
  KEY `fk_banner_image_to_banner` (`banner_id`),
  CONSTRAINT `fk_banner_image_to_banner` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_image`
--

LOCK TABLES `banner_image` WRITE;
/*!40000 ALTER TABLE `banner_image` DISABLE KEYS */;
INSERT INTO `banner_image` VALUES (6,'index.php?route=product/manufacturer/info&manufacturer_id=7','catalog/demo/compaq_presario.jpg',0,'HP Banner',NULL,NULL,0.0000),(7,'bbc.co.uk','catalog/banners/iphone-banner-1.jpg',2,'english book',NULL,NULL,0.0000),(7,'http://facebook.com','catalog/demo/banners/iPhone6.jpg',2,'iPhone 6',NULL,NULL,0.0000),(7,'http://apple.com','catalog/demo/banners/MacBookAir.jpg',1,'MacBook Air',NULL,NULL,0.0000),(8,'https://www.nintendo.com','catalog/manufacturers/300px-Nintendo_Logo.png',0,'',NULL,NULL,0.0000),(8,'http://www.acer.com','catalog/manufacturers/Acer-Logo_2011.png',0,'',NULL,NULL,0.0000),(8,'http://www.asus.com','catalog/manufacturers/asus.png',0,'',NULL,NULL,0.0000),(8,'http://www.canon.com','catalog/manufacturers/Canon_logo.png',0,'',NULL,NULL,0.0000),(8,'http://www.dell.com','catalog/manufacturers/dell_logo.png',0,'',NULL,NULL,0.0000),(8,'http://hp.com','catalog/manufacturers/HP-logo.png',0,'Disney',NULL,NULL,0.0000),(8,'http://www.lg.com','catalog/manufacturers/LG_Logo.svg.png',0,'',NULL,NULL,0.0000),(8,'http://www.nokia.com','catalog/manufacturers/nokia-logo.png',0,'RedBull',NULL,NULL,0.0000),(8,'http://www.palm.com','catalog/manufacturers/Palm_logo_2005.png',0,'NFL',NULL,NULL,0.0000),(8,'http://www.samsung.com','catalog/manufacturers/samsung-logo.png',0,'',NULL,NULL,0.0000),(8,'http://www.sony.com','catalog/manufacturers/Sony-Logo-psd64604.png',0,'',NULL,NULL,0.0000),(19,'http://www.facebook.com','catalog/demo/banners/iPhone6.jpg',0,'',NULL,NULL,0.0000),(19,'http://wwww.vnexpress.net','catalog/demo/banners/MacBookAir.jpg',0,'',NULL,NULL,0.0000),(20,'http://product-demo.com','catalog/banners/3d8628e3e38e9a32bab6464c8ce4608f.jpg',1,'Special Offers',NULL,NULL,0.0000),(20,'http://product-demo.com','catalog/banners/b515591c9aad529298ab2131f4570887.jpg',2,'Accessories',NULL,NULL,0.0000),(20,'http://product-demo.com','catalog/banners/bb8de093daf880206d79f9d5b52eb1e3.jpg',0,'Smartphones',NULL,NULL,0.0000);
/*!40000 ALTER TABLE `banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (18,'catalog/demo/hp_2.jpg',0,1,0,2,1,'2009-01-05 21:49:15','2018-03-15 14:30:26','Dưỡng Tóc','<br>'),(20,'catalog/banners/banner-1-370x240.jpg',0,1,0,1,1,'2009-01-05 21:49:43','2018-03-15 14:30:06','Dưỡng Da','abc...'),(24,'catalog/banners/banner-2-370x240.jpg',0,1,0,5,1,'2009-01-20 02:36:26','2018-03-15 14:31:30','Loại Khác','<br>'),(25,'catalog/products/It-peripherals.png',0,1,0,3,1,'2009-01-31 01:04:25','2018-03-15 14:30:54','Bộ Sản Phẩm','<br>'),(26,'',20,0,0,1,1,'2009-01-31 01:55:14','2018-03-14 17:34:46','Loại 2.1','<p><br></p>'),(27,'',20,0,0,2,1,'2009-01-31 01:55:34','2018-03-14 17:35:04','Loại 2.2','<p><br></p>'),(28,'',25,0,0,1,1,'2009-02-02 13:11:12','2018-03-14 17:39:05','Loại 4.2','<p><br></p>'),(29,'',25,0,0,1,1,'2009-02-02 13:11:37','2018-03-14 17:39:54','Loại 4.5','<p><br></p>'),(30,'',25,0,0,1,1,'2009-02-02 13:11:59','2018-03-14 17:39:38','Loại 4.4','<p><br></p>'),(31,'',25,0,0,1,1,'2009-02-03 14:17:24','2018-03-14 17:39:24','Loại 4.3','<p><br></p>'),(32,'',25,0,0,1,1,'2009-02-03 14:17:34','2018-03-14 17:38:51','Loại 4.1','<p><br></p>'),(45,'',18,0,0,0,1,'2010-09-24 18:29:16','2018-03-14 17:37:04','Loại 3.1','<p><br></p>'),(46,'',18,0,0,0,1,'2010-09-24 18:29:31','2018-03-14 17:37:21','Loại 3.2','<p><br></p>'),(57,'catalog/demo/category/ipad-2-black.jpg',0,1,0,3,1,'2011-04-26 08:53:16','2018-03-15 14:31:12','Nail','<br>'),(69,'catalog/banners/banner-3-370x240.jpg',0,1,0,0,1,'2015-06-14 04:59:18','2018-03-15 14:29:44','Trang Điểm','<p><br></p>'),(70,'',24,0,0,0,1,'2016-02-23 13:58:14','2018-03-14 17:40:39','Loại 6.1','<p><br></p>'),(71,'',24,0,0,0,1,'2016-02-23 13:58:39','2018-03-14 17:40:55','Loại 6.2','<p><br></p>'),(72,'',24,0,0,0,1,'2016-02-23 13:59:01','2018-03-14 17:41:09','Loại 6.3','<p><br></p>'),(73,'',20,0,0,0,1,'2016-02-23 14:12:20','2018-03-14 17:35:21','Loại 2.3','<p><br></p>'),(74,'',20,0,0,0,1,'2017-01-04 14:03:10','2018-03-14 17:35:35','Loại 2.3','<p><br></p>');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_path`
--

DROP TABLE IF EXISTS `category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_path`
--

LOCK TABLES `category_path` WRITE;
/*!40000 ALTER TABLE `category_path` DISABLE KEYS */;
INSERT INTO `category_path` VALUES (18,18,0),(20,20,0),(24,24,0),(25,25,0),(26,20,0),(26,26,1),(27,20,0),(27,27,1),(28,25,0),(28,28,1),(29,25,0),(29,29,1),(30,25,0),(30,30,1),(31,25,0),(31,31,1),(32,25,0),(32,32,1),(45,18,0),(45,45,1),(46,18,0),(46,46,1),(57,57,0),(69,69,0),(70,24,0),(70,70,1),(71,24,0),(71,71,1),(72,24,0),(72,72,1),(73,20,0),(73,73,1),(74,20,0),(74,74,1);
/*!40000 ALTER TABLE `category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Bình','binh@fpt.vn','0979999999','285 Doi Can, Ba Dinh, HaNoi','$2y$10$T.kuGeuZQRLuWraL3zclZuHl67q8InDwn4tmzFJ/Tn4lCb2OqaK5G',1,'2015-07-10 13:37:34'),(3,'Quảng','quang@bkav.com','0915686868','69 Quan Hoa Cầu Giấy Hà Nội','$2y$10$yeJkGSXTPLQoBX6QqjPlteI9qE496Qkl0z7jsQK0PJUa/pf9kOtua',1,'2016-03-02 10:55:52'),(4,'Đức','demo@project.com','0968686868','Playku Gialai2','$2y$10$P1kJFjMxDqMP0jRhkkXVPuDv8hGLEDLGxmLyaX39.QObjsl0usu9.',1,'2016-03-06 23:14:33');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0),(11,'Samsung','',0),(12,'Nokia','',0),(13,'LG','',0),(14,'Asus','',0),(15,'Acer','',0),(16,'BenQ','',0),(17,'Dell','',0),(18,'Microsoft','',0),(19,'Motorola','',0),(20,'NEC','',0),(21,'Panasonic','',0),(22,'Siemens','',0),(23,'Alcaltel','',0),(24,'Huawei','',0),(25,'Oppo','',0),(26,'O2','',0),(27,'Philips','',0),(28,'Sharp','',0),(29,'Toshiba','',0),(30,'Vodafone','',0),(31,'Ericsson','',0),(32,'Fujitsu','',0),(33,'BlackBerry','',0),(34,'Vertu','catalog/manufacturers/Vertu_7d69a_450x450.png',0),(35,'Gresso','catalog/manufacturers/gresso-logo.jpg',0),(36,'Mobiado','catalog/manufacturers/mobiado-logo.png',0);
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (27,'Slideshow - Trang chủ','slideshow','a:5:{s:4:\"name\";s:23:\"Slideshow - Trang chủ\";s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:4:\"1140\";s:6:\"height\";s:3:\"380\";s:6:\"status\";s:1:\"1\";}'),(28,'Sản Phẩm Nổi Bật - Trang Chủ','featured','a:6:{s:4:\"name\";s:38:\"Sản Phẩm Nổi Bật - Trang Chủ\";s:7:\"product\";a:6:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"30\";i:3;s:2:\"41\";i:4;s:2:\"48\";i:5;s:2:\"34\";}s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"0\";}'),(29,'Carousel - Trang Chủ','carousel','a:5:{s:4:\"name\";s:22:\"Carousel - Trang Chủ\";s:9:\"banner_id\";s:1:\"8\";s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"100\";s:6:\"status\";s:1:\"1\";}'),(30,'Banner bat ky','banner','a:5:{s:4:\"name\";s:13:\"Banner bat ky\";s:9:\"banner_id\";s:2:\"20\";s:5:\"width\";s:3:\"370\";s:6:\"height\";s:3:\"240\";s:6:\"status\";s:1:\"1\";}'),(31,'Sản Phẩm Bán Chạy','best_seller','a:6:{s:4:\"name\";s:24:\"Sản Phẩm Bán Chạy\";s:7:\"product\";a:3:{i:0;s:2:\"40\";i:1;s:2:\"41\";i:2;s:2:\"36\";}s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"127\";s:6:\"status\";s:1:\"1\";}'),(32,'Sản phẩm đặc biệt','specials','a:6:{s:4:\"name\";s:26:\"Sản phẩm đặc biệt\";s:7:\"product\";a:5:{i:0;s:2:\"60\";i:1;s:2:\"30\";i:2;s:2:\"47\";i:3;s:2:\"63\";i:4;s:2:\"64\";}s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"127\";s:6:\"status\";s:1:\"1\";}'),(33,'Sản phẩm giới thiệu','banner_products','a:6:{s:4:\"name\";s:27:\"Sản phẩm giới thiệu\";s:7:\"product\";a:2:{i:0;s:2:\"60\";i:1;s:2:\"40\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"127\";s:6:\"status\";s:1:\"1\";}'),(34,'Sản phẩm mới ','latest','a:6:{s:4:\"name\";s:19:\"Sản phẩm mới \";s:7:\"product\";a:3:{i:0;s:2:\"40\";i:1;s:2:\"30\";i:2;s:2:\"47\";}s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"127\";s:6:\"status\";s:1:\"1\";}'),(35,'Loại Sản Phẩm (giới thiệu)','banner_categories','a:6:{s:4:\"name\";s:36:\"Loại Sản Phẩm (giới thiệu)\";s:8:\"category\";a:3:{i:0;s:2:\"20\";i:1;s:2:\"69\";i:2;s:2:\"24\";}s:5:\"limit\";s:1:\"3\";s:5:\"width\";s:3:\"370\";s:6:\"height\";s:3:\"240\";s:6:\"status\";s:1:\"1\";}');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (23,4,'phuonghuuvu@gmail.com','043668866','Đức','285 Doi Can','',601.0000,'2015-05-11 22:52:08'),(25,4,'phuong2@gmail.com','0968222222','Đức','Ngõ 285 Đội Cấn 1','',12020000.0000,'2015-06-16 04:16:17'),(26,4,'phuong3@gmail.com','0968333333','Đức','hà nội 3','',4020000.0000,'2015-06-16 04:24:58'),(27,4,'phuong4@gmail.com','0968444444','Đức','Ngõ 285 Đội Cấn 4','',16020000.0000,'2015-06-16 09:36:03'),(28,4,'phuong5@gmail.com','0968555555','Đức','Palo Alto CA 5','Some comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5\r\nSome comment 5, Some comment 5, Some comment 5, Some comment 5',16020000.0000,'2015-06-17 08:14:16'),(29,4,'phuong6@gmail.com','0968 666 666','Đức','Palo Alto CA 6','Some comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6\r\nSome comment on order 6, Some comment on order 6, Some comment on order 6',12020000.0000,'2015-06-17 09:17:52'),(30,4,'phuong7@gmail.com','0968777777','Đức','Address 7','Some comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7\r\nSome comment on orrder 7 Some comment on orrder 7 Some comment on orrder 7',14020000.0000,'2015-07-01 05:44:03'),(31,4,'phuong8@gmail.com','0968888888','Đức','285 Doi Can Hanoi','I like these products',6020000.0000,'2015-07-09 09:09:08'),(32,4,'phuong9@gmail.com','0968999999','Đức','285 Doi Can 9','Fuck it offf',14020000.0000,'2015-07-09 09:10:55'),(33,4,'phuong10@gmail.com','0968101010','Đức','258 Doi Can 10','',4020000.0000,'2015-07-09 09:14:08'),(34,4,'phuong10@gmail.com','0968101010','Đức','258 Doi Can 10','',4020000.0000,'2015-07-09 09:15:17'),(35,4,'phuong12@gmail.com','0968111111','Đức','285 Doi Can','Don hang nay mang so bao danh 11',34020000.0000,'2015-07-09 13:33:00'),(36,4,'phuong13@gmail.com','09681313133','Đức','285 Doi Can 13','Fuck offf 13',4020000.0000,'2015-07-09 13:41:13'),(37,1,'phuong@gmail.com','0968802828','Phuong','285 Doi Can, Ba Dinh, HaNoi','',12020000.0000,'2015-07-11 10:02:33'),(38,1,'phuong@gmail.com','0968802828','Phuong','285 Doi Can, Ba Dinh, HaNoi','',16020000.0000,'2015-07-11 10:02:56'),(39,1,'phuong@gmail.com','0968802828','Phuong','285 Doi Can, Ba Dinh, HaNoi','Some test comment from Phuong',6020000.0000,'2015-07-11 11:06:09');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_order_details_to_order` (`order_id`),
  KEY `fk_order_details_to_product` (`product_id`),
  CONSTRAINT `fk_order_details_to_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  CONSTRAINT `fk_order_details_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (23,40,'iPhone','product 11',1,101.0000,101.0000),(23,43,'MacBook','Product 16',1,500.0000,500.0000),(25,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(25,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(26,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(26,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(27,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(27,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(27,41,'iMac','Product 14',1,2000000.0000,2000000.0000),(27,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(28,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(28,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(28,41,'iMac','Product 14',1,2000000.0000,2000000.0000),(28,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(29,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(29,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(30,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(30,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(30,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(31,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(31,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(31,41,'iMac','Product 14',1,2000000.0000,2000000.0000),(32,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(32,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(32,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(34,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(34,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(35,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(35,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(35,43,'MacBook','Product 16',3,10000000.0000,30000000.0000),(36,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(36,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(37,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(37,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(38,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(38,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(38,41,'iMac','Product 14',1,2000000.0000,2000000.0000),(38,43,'MacBook','Product 16',1,10000000.0000,10000000.0000),(39,30,'Canon EOS 5D','Product 3',1,2000000.0000,2000000.0000),(39,40,'iPhone','product 11',1,2020000.0000,2020000.0000),(39,41,'iMac','Product 14',1,2000000.0000,2000000.0000);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `tag` text,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_to_manufacturer` (`manufacturer_id`),
  CONSTRAINT `fk_product_to_manufacturer` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (28,'','catalog/demo/htc_touch_hd_1.jpg',5,2000000.0000,0,1,'2009-02-03 16:06:50','2018-03-14 17:43:30','Sản Phẩm Mẫu 28','<p>\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8\" WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.</p>\r\n<p>\r\n	<strong>Features</strong></p>\r\n<ul>\r\n	<li>\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz</li>\r\n	<li>\r\n		Windows Mobile® 6.1 Professional Operating System</li>\r\n	<li>\r\n		Memory: 512 MB ROM, 288 MB RAM</li>\r\n	<li>\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams</li>\r\n	<li>\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution</li>\r\n	<li>\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds</li>\r\n	<li>\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)</li>\r\n	<li>\r\n		Device Control via HTC TouchFLO™ 3D &amp; Touch-sensitive front panel buttons</li>\r\n	<li>\r\n		GPS and A-GPS ready</li>\r\n	<li>\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets</li>\r\n	<li>\r\n		Wi-Fi®: IEEE 802.11 b/g</li>\r\n	<li>\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)</li>\r\n	<li>\r\n		5 megapixel color camera with auto focus</li>\r\n	<li>\r\n		VGA CMOS color camera</li>\r\n	<li>\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio</li>\r\n	<li>\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV</li>\r\n	<li>\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI</li>\r\n	<li>\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery</li>\r\n	<li>\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)</li>\r\n	<li>\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A</li>\r\n	<li>\r\n		Special Features: FM Radio, G-Sensor</li>\r\n</ul>\r\n',''),(29,'','catalog/demo/palm_treo_pro_1.jpg',6,5599800.0000,0,1,'2009-02-03 16:42:17','2011-09-30 01:06:08','Sản Phẩm Mẫu 29','&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n',''),(30,'','catalog/demo/canon_eos_5d_1.jpg',9,2000000.0000,0,1,'2009-02-03 16:59:00','2018-03-14 17:44:34','Sản Phẩm Mẫu 30','<p>\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë</p>\r\n',''),(31,'','catalog/demo/nikon_d300_1.jpg',8,1600000.0000,0,1,'2009-02-03 17:00:10','2011-09-30 01:06:00','Sản Phẩm Mẫu 31','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;',''),(32,'','catalog/demo/ipod_touch_1.jpg',8,2000000.0000,0,1,'2009-02-03 17:07:26','2011-09-30 01:07:22','Sản Phẩm Mẫu 32','&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n',''),(33,'','catalog/demo/samsung_syncmaster_941bw.jpg',8,4000000.0000,0,1,'2009-02-03 17:08:31','2011-09-30 01:06:29','Sản Phẩm Mẫu 33','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n',''),(34,'','catalog/demo/ipod_shuffle_1.jpg',8,2000000.0000,0,1,'2009-02-03 18:07:54','2011-09-30 01:07:17','Sản Phẩm Mẫu 34','&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n',''),(36,'','catalog/demo/ipod_nano_1.jpg',8,2000000.0000,0,1,'2009-02-03 18:09:19','2011-09-30 01:07:12','Sản Phẩm Mẫu 36','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n',''),(40,'','catalog/demo/iphone_1.jpg',8,2020000.0000,0,1,'2009-02-03 21:07:12','2016-02-23 14:27:24','Sản Phẩm Mẫu 40','<p class=\"intro\">\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.</p>\r\n',''),(41,'','catalog/products/apple/macfamily-productnav-imac_2x.png',8,26000000.0000,0,1,'2009-02-03 21:07:26','2016-11-22 18:04:27','Sản Phẩm Mẫu 41','<h2 class=\"hero-headline\">Retina. In colossal and ginormous.</h2>\r\n				<p class=\"intro\">The idea behind iMac has never wavered: to craft \r\nthe ultimate desktop experience. The best display, paired with \r\nhigh-performance processors, graphics, and storage — all within an \r\nincredibly thin, seamless enclosure. And that commitment continues with \r\nthe all-new 21.5‑inch iMac with Retina 4K display. Like the \r\nrevolutionary 27‑inch 5K&nbsp;model, it delivers such spectacular image \r\nquality that everything else around you seems to disappear. Adding up to\r\n the most immersive iMac experience yet — and another big, beautiful \r\nstep&nbsp;forward.</p><h2 class=\"section-headline\">More than just a display, it’s a vision.\r\n						</h2>\r\n\r\n						\r\n\r\n						<div class=\"intro\">\r\n							<p>Accuracy. Brightness. Clarity. Regardless of how you measure \r\nthe quality of a display, Retina is in a class by itself. The pixel \r\ndensity is so high that you won’t detect a single one while using iMac. \r\nText is so sharp, you’ll feel like you’re reading email and documents on\r\n a printed page. And with a new, wider color gamut, the Retina display \r\nis able to deliver even more available colors — 25&nbsp;percent more. So \r\nevery photo and video you see appears even more true to&nbsp;life. </p><p><br></p><h2 class=\"section-headline\">Innovation from <br class=\"large-show\">edge to cutting edge.\r\n						</h2>\r\n\r\n						\r\n\r\n						<div class=\"intro\">\r\n							<p>An incredible amount of engineering was required to bring the \r\nRetina display to the iMac family. Witness a design that’s just 5&nbsp;mm at \r\nits edge — yet entirely capable of making everything around you fade \r\ninto the distance. This ensures that nothing gets between you and your \r\nfavorite content. Seamless and beautiful, iMac with Retina display is an\r\n elegant addition to your workspace, representing a depth of technology \r\nat the height of&nbsp;design.</p></div></div>',''),(42,'','catalog/demo/canon_eos_5d_1.jpg',9,2000000.0000,0,1,'2009-02-03 21:07:37','2015-06-22 06:47:39','Sản Phẩm Mẫu 42','<p>\r\n	<font face=\"helvetica,geneva,arial\" size=\"2\"><font face=\"Helvetica\" size=\"2\">The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. <br>\r\n	<br>\r\n	</font><font face=\"Helvetica\" size=\"2\">The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. <br>\r\n	<br>\r\n	</font><font face=\"Helvetica\" size=\"2\">Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. <br>\r\n	<br>\r\n	</font><font face=\"Helvetica\" size=\"2\">Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. <br>\r\n	<br>\r\n	</font><font face=\"Helvetica\" size=\"2\">The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.<br>\r\n	</font></font></p>\r\n<h3>\r\n	Features:</h3>\r\n<p>\r\n	Unrivaled display performance</p>\r\n<ul>\r\n	<li>\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.</li>\r\n	<li>\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.</li>\r\n	<li>\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.</li>\r\n	<li>\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks</li>\r\n	<li>\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.</li>\r\n	<li>\r\n		Lightning-fast pixel response for full-motion digital video playback.</li>\r\n	<li>\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.</li>\r\n</ul>\r\n<p>\r\n	Simple setup and operation</p>\r\n<ul>\r\n	<li>\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports</li>\r\n	<li>\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.</li>\r\n	<li>\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals</li>\r\n</ul>\r\n<p>\r\n	Sleek, elegant design</p>\r\n<ul>\r\n	<li>\r\n		Huge virtual workspace, very small footprint.</li>\r\n	<li>\r\n		Narrow Bezel design to minimize visual impact of using dual displays</li>\r\n	<li>\r\n		Unique hinge design for effortless adjustment</li>\r\n	<li>\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)</li>\r\n</ul>\r\n<h3>\r\n	Technical specifications</h3>\r\n<p>\r\n	<b>Screen size (diagonal viewable image size)</b></p>\r\n<ul>\r\n	<li>\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)</li>\r\n</ul>\r\n<p>\r\n	<b>Screen type</b></p>\r\n<ul>\r\n	<li>\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)</li>\r\n</ul>\r\n<p>\r\n	<b>Resolutions</b></p>\r\n<ul>\r\n	<li>\r\n		2560 x 1600 pixels (optimum resolution)</li>\r\n	<li>\r\n		2048 x 1280</li>\r\n	<li>\r\n		1920 x 1200</li>\r\n	<li>\r\n		1280 x 800</li>\r\n	<li>\r\n		1024 x 640</li>\r\n</ul>\r\n<p>\r\n	<b>Display colors (maximum)</b></p>\r\n<ul>\r\n	<li>\r\n		16.7 million</li>\r\n</ul>\r\n<p>\r\n	<b>Viewing angle (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		170Â° horizontal; 170Â° vertical</li>\r\n</ul>\r\n<p>\r\n	<b>Brightness (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		30-inch Cinema HD Display: 400 cd/m2</li>\r\n</ul>\r\n<p>\r\n	<b>Contrast ratio (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		700:1</li>\r\n</ul>\r\n<p>\r\n	<b>Response time (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		16 ms</li>\r\n</ul>\r\n<p>\r\n	<b>Pixel pitch</b></p>\r\n<ul>\r\n	<li>\r\n		30-inch Cinema HD Display: 0.250 mm</li>\r\n</ul>\r\n<p>\r\n	<b>Screen treatment</b></p>\r\n<ul>\r\n	<li>\r\n		Antiglare hardcoat</li>\r\n</ul>\r\n<p>\r\n	<b>User controls (hardware and software)</b></p>\r\n<ul>\r\n	<li>\r\n		Display Power,</li>\r\n	<li>\r\n		System sleep, wake</li>\r\n	<li>\r\n		Brightness</li>\r\n	<li>\r\n		Monitor tilt</li>\r\n</ul>\r\n<p>\r\n	<b>Connectors and cables</b><br>\r\n	Cable</p>\r\n<ul>\r\n	<li>\r\n		DVI (Digital Visual Interface)</li>\r\n	<li>\r\n		FireWire 400</li>\r\n	<li>\r\n		USB 2.0</li>\r\n	<li>\r\n		DC power (24 V)</li>\r\n</ul>\r\n<p>\r\n	Connectors</p>\r\n<ul>\r\n	<li>\r\n		Two-port, self-powered USB 2.0 hub</li>\r\n	<li>\r\n		Two FireWire 400 ports</li>\r\n	<li>\r\n		Kensington security port</li>\r\n</ul>\r\n<p>\r\n	<b>VESA mount adapter</b><br>\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)</p>\r\n<ul>\r\n	<li>\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions</li>\r\n</ul>\r\n<p>\r\n	<b>Electrical requirements</b></p>\r\n<ul>\r\n	<li>\r\n		Input voltage: 100-240 VAC 50-60Hz</li>\r\n	<li>\r\n		Maximum power when operating: 150W</li>\r\n	<li>\r\n		Energy saver mode: 3W or less</li>\r\n</ul>\r\n<p>\r\n	<b>Environmental requirements</b></p>\r\n<ul>\r\n	<li>\r\n		Operating temperature: 50Â° to 95Â° F (10Â° to 35Â° C)</li>\r\n	<li>\r\n		Storage temperature: -40Â° to 116Â° F (-40Â° to 47Â° C)</li>\r\n	<li>\r\n		Operating humidity: 20% to 80% noncondensing</li>\r\n	<li>\r\n		Maximum operating altitude: 10,000 feet</li>\r\n</ul>\r\n<p>\r\n	<b>Agency approvals</b></p>\r\n<ul>\r\n	<li>\r\n		FCC Part 15 Class B</li>\r\n	<li>\r\n		EN55022 Class B</li>\r\n	<li>\r\n		EN55024</li>\r\n	<li>\r\n		VCCI Class B</li>\r\n	<li>\r\n		AS/NZS 3548 Class B</li>\r\n	<li>\r\n		CNS 13438 Class B</li>\r\n	<li>\r\n		ICES-003 Class B</li>\r\n	<li>\r\n		ISO 13406 part 2</li>\r\n	<li>\r\n		MPR II</li>\r\n	<li>\r\n		IEC 60950</li>\r\n	<li>\r\n		UL 60950</li>\r\n	<li>\r\n		CSA 60950</li>\r\n	<li>\r\n		EN60950</li>\r\n	<li>\r\n		ENERGY STAR</li>\r\n	<li>\r\n		TCO \'03</li>\r\n</ul>\r\n<p>\r\n	<b>Size and weight</b><br>\r\n	30-inch Apple Cinema HD Display</p>\r\n<ul>\r\n	<li>\r\n		Height: 21.3 inches (54.3 cm)</li>\r\n	<li>\r\n		Width: 27.2 inches (68.8 cm)</li>\r\n	<li>\r\n		Depth: 8.46 inches (21.5 cm)</li>\r\n	<li>\r\n		Weight: 27.5 pounds (12.5 kg)</li>\r\n</ul>\r\n<p>\r\n	<b>System Requirements</b></p>\r\n<ul>\r\n	<li>\r\n		Mac Pro, all graphic options</li>\r\n	<li>\r\n		MacBook Pro</li>\r\n	<li>\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better</li>\r\n	<li>\r\n		Power Mac G5 (PCI Express), all graphics options</li>\r\n	<li>\r\n		PowerBook G4 with dual-link DVI support</li>\r\n	<li>\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup</li>\r\n</ul>\r\n',''),(43,'','catalog/demo/macbook_1.jpg',8,10000000.0000,0,1,'2009-02-03 21:07:49','2011-09-30 01:05:46','Sản Phẩm Mẫu 43','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n',''),(44,'','catalog/demo/macbook_air_1.jpg',8,20000000.0000,0,1,'2009-02-03 21:08:00','2011-09-30 01:05:53','Sản Phẩm Mẫu 44','&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n',''),(45,'','catalog/demo/macbook_pro_1.jpg',8,40000000.0000,0,1,'2009-02-03 21:08:17','2011-09-15 22:22:01','Sản Phẩm Mẫu 45','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;',''),(46,'','catalog/demo/sony_vaio_1.jpg',10,20000000.0000,0,1,'2009-02-03 21:08:29','2011-09-30 01:06:39','Sản Phẩm Mẫu 46','&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n',''),(47,'','catalog/demo/hp_1.jpg',7,12000000.0000,0,1,'2009-02-03 21:08:40','2016-11-22 17:42:58','Sản Phẩm Mẫu 47','<p>\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office</p>\r\n',''),(48,'','catalog/demo/ipod_classic_1.jpg',8,2000000.0000,0,1,'2009-02-08 17:21:51','2011-09-30 01:07:06','Sản Phẩm Mẫu 48','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;',''),(49,'','catalog/demo/samsung_tab_1.jpg',8,3999800.0000,1,1,'2011-04-26 08:57:34','2011-09-30 01:06:23','Sản Phẩm Mẫu 49','&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n',''),(57,'','catalog/demo/samsung_tab_1.jpg',8,3999800.0000,1,0,'2015-04-04 16:04:28','0000-00-00 00:00:00','Sản Phẩm Mẫu 57','&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n',''),(60,'','catalog/demo/apple_cinema_30.jpg',8,2000000.0000,0,1,'2015-06-22 06:46:02','2018-03-14 17:43:52','Sản Phẩm Mẫu 60','<p>\r\n	<font size=\"2\" face=\"helvetica,geneva,arial\"><font size=\"2\" face=\"Helvetica\">The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. <br>\r\n	<br>\r\n	</font><font size=\"2\" face=\"Helvetica\">The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. <br>\r\n	<br>\r\n	</font><font size=\"2\" face=\"Helvetica\">Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. <br>\r\n	<br>\r\n	</font><font size=\"2\" face=\"Helvetica\">Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. <br>\r\n	<br>\r\n	</font><font size=\"2\" face=\"Helvetica\">The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.<br>\r\n	</font></font></p>\r\n<h3>\r\n	Features:</h3>\r\n<p>\r\n	Unrivaled display performance</p>\r\n<ul>\r\n	<li>\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.</li>\r\n	<li>\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.</li>\r\n	<li>\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.</li>\r\n	<li>\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks</li>\r\n	<li>\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.</li>\r\n	<li>\r\n		Lightning-fast pixel response for full-motion digital video playback.</li>\r\n	<li>\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.</li>\r\n</ul>\r\n<p>\r\n	Simple setup and operation</p>\r\n<ul>\r\n	<li>\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports</li>\r\n	<li>\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.</li>\r\n	<li>\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals</li>\r\n</ul>\r\n<p>\r\n	Sleek, elegant design</p>\r\n<ul>\r\n	<li>\r\n		Huge virtual workspace, very small footprint.</li>\r\n	<li>\r\n		Narrow Bezel design to minimize visual impact of using dual displays</li>\r\n	<li>\r\n		Unique hinge design for effortless adjustment</li>\r\n	<li>\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)</li>\r\n</ul>\r\n<h3>\r\n	Technical specifications</h3>\r\n<p>\r\n	<b>Screen size (diagonal viewable image size)</b></p>\r\n<ul>\r\n	<li>\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)</li>\r\n</ul>\r\n<p>\r\n	<b>Screen type</b></p>\r\n<ul>\r\n	<li>\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)</li>\r\n</ul>\r\n<p>\r\n	<b>Resolutions</b></p>\r\n<ul>\r\n	<li>\r\n		2560 x 1600 pixels (optimum resolution)</li>\r\n	<li>\r\n		2048 x 1280</li>\r\n	<li>\r\n		1920 x 1200</li>\r\n	<li>\r\n		1280 x 800</li>\r\n	<li>\r\n		1024 x 640</li>\r\n</ul>\r\n<p>\r\n	<b>Display colors (maximum)</b></p>\r\n<ul>\r\n	<li>\r\n		16.7 million</li>\r\n</ul>\r\n<p>\r\n	<b>Viewing angle (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		170Â° horizontal; 170Â° vertical</li>\r\n</ul>\r\n<p>\r\n	<b>Brightness (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		30-inch Cinema HD Display: 400 cd/m2</li>\r\n</ul>\r\n<p>\r\n	<b>Contrast ratio (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		700:1</li>\r\n</ul>\r\n<p>\r\n	<b>Response time (typical)</b></p>\r\n<ul>\r\n	<li>\r\n		16 ms</li>\r\n</ul>\r\n<p>\r\n	<b>Pixel pitch</b></p>\r\n<ul>\r\n	<li>\r\n		30-inch Cinema HD Display: 0.250 mm</li>\r\n</ul>\r\n<p>\r\n	<b>Screen treatment</b></p>\r\n<ul>\r\n	<li>\r\n		Antiglare hardcoat</li>\r\n</ul>\r\n<p>\r\n	<b>User controls (hardware and software)</b></p>\r\n<ul>\r\n	<li>\r\n		Display Power,</li>\r\n	<li>\r\n		System sleep, wake</li>\r\n	<li>\r\n		Brightness</li>\r\n	<li>\r\n		Monitor tilt</li>\r\n</ul>\r\n<p>\r\n	<b>Connectors and cables</b><br>\r\n	Cable</p>\r\n<ul>\r\n	<li>\r\n		DVI (Digital Visual Interface)</li>\r\n	<li>\r\n		FireWire 400</li>\r\n	<li>\r\n		USB 2.0</li>\r\n	<li>\r\n		DC power (24 V)</li>\r\n</ul>\r\n<p>\r\n	Connectors</p>\r\n<ul>\r\n	<li>\r\n		Two-port, self-powered USB 2.0 hub</li>\r\n	<li>\r\n		Two FireWire 400 ports</li>\r\n	<li>\r\n		Kensington security port</li>\r\n</ul>\r\n<p>\r\n	<b>VESA mount adapter</b><br>\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)</p>\r\n<ul>\r\n	<li>\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions</li>\r\n</ul>\r\n<p>\r\n	<b>Electrical requirements</b></p>\r\n<ul>\r\n	<li>\r\n		Input voltage: 100-240 VAC 50-60Hz</li>\r\n	<li>\r\n		Maximum power when operating: 150W</li>\r\n	<li>\r\n		Energy saver mode: 3W or less</li>\r\n</ul>\r\n<p>\r\n	<b>Environmental requirements</b></p>\r\n<ul>\r\n	<li>\r\n		Operating temperature: 50Â° to 95Â° F (10Â° to 35Â° C)</li>\r\n	<li>\r\n		Storage temperature: -40Â° to 116Â° F (-40Â° to 47Â° C)</li>\r\n	<li>\r\n		Operating humidity: 20% to 80% noncondensing</li>\r\n	<li>\r\n		Maximum operating altitude: 10,000 feet</li>\r\n</ul>\r\n<p>\r\n	<b>Agency approvals</b></p>\r\n<ul>\r\n	<li>\r\n		FCC Part 15 Class B</li>\r\n	<li>\r\n		EN55022 Class B</li>\r\n	<li>\r\n		EN55024</li>\r\n	<li>\r\n		VCCI Class B</li>\r\n	<li>\r\n		AS/NZS 3548 Class B</li>\r\n	<li>\r\n		CNS 13438 Class B</li>\r\n	<li>\r\n		ICES-003 Class B</li>\r\n	<li>\r\n		ISO 13406 part 2</li>\r\n	<li>\r\n		MPR II</li>\r\n	<li>\r\n		IEC 60950</li>\r\n	<li>\r\n		UL 60950</li>\r\n	<li>\r\n		CSA 60950</li>\r\n	<li>\r\n		EN60950</li>\r\n	<li>\r\n		ENERGY STAR</li>\r\n	<li>\r\n		TCO \'03</li>\r\n</ul>\r\n<p>\r\n	<b>Size and weight</b><br>\r\n	30-inch Apple Cinema HD Display</p>\r\n<ul>\r\n	<li>\r\n		Height: 21.3 inches (54.3 cm)</li>\r\n	<li>\r\n		Width: 27.2 inches (68.8 cm)</li>\r\n	<li>\r\n		Depth: 8.46 inches (21.5 cm)</li>\r\n	<li>\r\n		Weight: 27.5 pounds (12.5 kg)</li>\r\n</ul>\r\n<p>\r\n	<b>System Requirements</b></p>\r\n<ul>\r\n	<li>\r\n		Mac Pro, all graphic options</li>\r\n	<li>\r\n		MacBook Pro</li>\r\n	<li>\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better</li>\r\n	<li>\r\n		Power Mac G5 (PCI Express), all graphics options</li>\r\n	<li>\r\n		PowerBook G4 with dual-link DVI support</li>\r\n	<li>\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup</li>\r\n</ul>\r\n',''),(63,'','catalog/products/iphone6s-plus-box-rosegold-2015_GEO_US.jpg',8,18890000.0000,1,1,'2016-02-23 14:33:11','2016-02-23 14:41:37','Sản Phẩm Mẫu 63','<h2 class=\"hero-subtitle subsection-headline\">The only thing that’s changed is&nbsp;everything.</h2><p class=\"hero-subtitle subsection-headline\">The moment you use iPhone 6s, you know you’ve never felt anything like \r\nit. With a single press, 3D Touch lets you do more than ever before. \r\nLive Photos bring your memories to life in a powerfully vivid way. \r\nAnd&nbsp;that’s&nbsp;just the beginning. Take a deeper look at iPhone 6s, and \r\nyou’ll find innovation&nbsp;on every&nbsp;level.</p><p class=\"hero-subtitle subsection-headline\"><br></p><h2 class=\"overview-headline\">The next generation of&nbsp;Multi‑Touch.</h2>\r\n					<p class=\"intro\">The original iPhone introduced the world to \r\nMulti-Touch, forever changing the way people experience technology. With\r\n 3D Touch, you can do things that were never possible before. It senses \r\nhow deeply you press the display, letting you do all kinds of essential \r\nthings more quickly and simply. And it gives you real-time feedback in \r\nthe form of subtle taps from the all-new Taptic Engine.</p><p class=\"intro\"><br></p><h2 class=\"overview-headline\">12MP pictures. 4K videos.<br class=\"small-hide medium-show\"> Live Photos. Lasting memories.</h2>\r\n					<p class=\"intro\">The world’s most popular camera is more advanced \r\nthan ever. The 12-megapixel iSight camera captures sharp, detailed \r\nphotos. It takes brilliant 4K video, up to four times the resolution of \r\n1080p HD video. iPhone 6s also takes selfies worthy of a self-portrait \r\nwith the new 5-megapixel FaceTime HD camera. And it introduces Live \r\nPhotos, a new way to relive your favorite memories. It captures the \r\nmoments just before and after your picture and sets it in motion with \r\njust the press of a finger.</p>','...'),(64,'','catalog/products/vertu_sig_red_calf_c26_phone_front.jpg',34,246000000.0000,1,1,'2016-02-23 14:50:04','2016-02-23 16:31:39','Sản Phẩm Mẫu 64','<p>This quintessential English edition celebrates Vertu\'s provenance with \r\ncaptivating guards red calf leather, complemented by polished stainless \r\nsteel and reflective silver PVD coating on the sapphire faces and \r\nceramic pillow. As we use only the finest, most natural leather, the \r\nappearance of your Vertu may vary slightly from what is shown here.\r\n	        </p><h3 class=\"h5\">HANDMADE IN ENGLAND</h3>\r\n                <p class=\"copy\">Every part of Signature has been hand \r\ncrafted to the most exacting specifications, of a type usually only seen\r\n in luxury watches.</p><h3 class=\"h5\">LEATHER FINISH</h3>\r\n                <p class=\"copy\">The finest leather is hand selected for the perfect grip and hand finished for grain, structure and feel.</p><h3 class=\"h5\">CRYSTAL-CLEAR VOICE CLARITY</h3>\r\n                <p class=\"copy\">Whether you’re making or receiving calls, Signature gives you crystal-clear voice clarity, so you don’t miss a thing.</p><br>\r\n                <section><br></section>','...'),(65,'','catalog/products/Samsung-Galaxy-S6-official-images.jpg',11,10500000.0000,1,1,'2016-02-23 15:12:12','2016-02-23 16:12:39','Sản Phẩm Mẫu 65','<div class=\"wrap inner-x left\">\r\n<div class=\"title active black m-black\">Chế Tác Tinh Xảo, Rực Rỡ Quyến Rũ</div>\r\n<div class=\"desc active black m-black\">Lấy cảm hứng từ tác phẩm của các \r\nthợ thủy tinh và thợ chế tác kim loại thủ công, chiếc điện thoại Samsung\r\n Galaxy S6 edge là sự kết hợp mượt mà của kính và kim loại. Thiết kế ấn \r\ntượng với màn hình cạnh kép đầu tiên trên thế giới, những đường cong \r\ntuyệt mỹ và mặt kính rực rỡ chói ngời.</div><div class=\"desc active black m-black\"><br></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\">\r\n<div class=\"title active black m-black\">Tương Tác Nhiều Hơn với Cạnh Bên</div>\r\n<div class=\"desc active black m-black\">Thêm sắc màu khi tương tác cùng \r\nvới Samsung Galaxy S6 edge. Đánh dấu năm người bạn quan tâm nhất bằng \r\nmàu sắc và chỉ cần chạm vào màu sắc của từng người trên màn hình cạnh để\r\n gọi điện, nhắn tin hay gửi email. Nhờ có tính năng thông báo bằng mã \r\nmàu sắc tiên tiến, bạn có thể dễ dàng biết ai đang liên lạc với bạn dù \r\nđiện thoại đang úp sấp.</div><div class=\"desc active black m-black\"><br></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x left\">\r\n<div class=\"title active black m-black\">Nâng Cao Khẩu Độ, cho Hình Ảnh Rõ Ràng Hơn</div>\r\n<div class=\"desc active black m-black\">Cả camera trước và sau của \r\nSamsung Galaxy S6 edge đều có độ phân giải cao hơn và khẩu độ f/1.9 giúp\r\n bạn chụp được những bức hình rõ ràng hơn dù bạn ở đâu. Nhấn đúp vào nút\r\n Home để vào thẳng chế độ camera và không bao giờ để lỡ một khoảnh khắc \r\nquan trọng nào nữa.</div><div class=\"desc active black m-black\"><br></div><div class=\"desc active black m-black\"><div class=\"wrap inner-x right\">\r\n<div class=\"title active black m-black\">Sạc Pin Nhanh</div>\r\n<div class=\"desc active black m-black\">Không còn phải lo lắng hết pin \r\nnữa. Sau khi sạc pin chỉ trong 10 phút*, bạn có thể sử dụng trong 4 giờ*\r\n nhờ tốc độ sạc pin nhanh. Khả năng tương thích sạc không dây có nghĩa \r\nlà bạn chỉ cần đặt chiếc Samsung Galaxy S6 edge lên một tấm sạc tương \r\nthích là có thể sạc pin không cần dùng dây.</div>\r\n</div></div>\r\n</div></div>\r\n</div></div>\r\n</div>','...'),(66,'','catalog/products/Lumia-950-performance_en-US.jpg',18,10800000.0000,1,1,'2016-02-23 15:25:42','2016-02-23 15:32:49','Sản Phẩm Mẫu 66','<h3 class=\"content-block-enhanced-caption__headline\">\r\n Microsoft Lumia 950</h3>\r\n <p>\r\n High-end features, premium design, and the best Windows 10 experience –\r\n get the phone that works like your PC and turn an ordinary moment into \r\nyour biggest accomplishment</p><div class=\"content-block-enhanced-caption\">\r\n <div class=\"content-block-enhanced-caption-content-wrapper half-wrapper\">\r\n <h3 class=\"content-block-enhanced-caption__headline\">Powered by Windows 10</h3>\r\n <p>\r\n Discover the benefits of one Windows experience. Office documents and \r\nphotos are in sync across devices and your favorite apps, music, and \r\nvideos are in one place with the brand new Windows Store. And with \r\nCortana for Windows 10, you can use your PC to set a location-based \r\nreminder that will arrive just in time on your Lumia.<sup>1</sup></p><h3 class=\"content-block-enhanced-caption__headline\">Built to do great things</h3>\r\n <p>\r\n Unleash the potential of your digital life with a stunning Quad HD \r\ndisplay. Run the most demanding apps without missing a beat and power up\r\n quickly with USB-C Fast Charging. With a super-fast processor, a large \r\ncapacity battery, and wireless charging, the Lumia 950 has the power and\r\n performance that you\'d expect from a premium smartphone.</p><p>\r\n \r\n </p><h3 class=\"content-block-enhanced-caption__headline\">Windows Continuum</h3>\r\n <p>\r\n Connect your Lumia 950 to a Microsoft Display Dock and use it with an \r\nexternal monitor, a keyboard, and a mouse. Office apps and Outlook scale\r\n up to create a big screen-optimized work environment that makes you \r\nmore productive. It’s a PC-like experience that’s powered by your phone.<sup>3</sup></p>\r\n </div>\r\n </div>','...'),(67,'','catalog/products/gresso/gresso_product-img.jpg',35,60000000.0000,1,1,'2016-02-23 16:29:43','2018-03-14 17:45:00','Sản Phẩm Mẫu 67','<p>18K Gold. High-strength titanium case. OS Android. Limited Edition.</p><p>Each smartphone is unique. The individual number is engraved on the golden insert\r\n            on the back panel. You can choose the smartphone\'s number when you\'\'ll <a href=\"https://gresso.com/landing/regal/en/#12s\" class=\"scroll_to_bay\">place the order</a>.\r\n        </p><p>The Cresso Regal Collection consists of 3 models. Each model is unique\r\n            and has a perfect combination of exclusive materials and design. <br>Gresso Regal R1 is completely made of\r\n            titanium. Gresso Regal R2 and R3 are made of titanium with PVD-coating and have inserts from 18K Gold.\r\n            <br>\r\n            Gresso Regal Gold is made of titanium with golden PVD-coating and inserts from Yellow Gold.\r\n        </p><p>Gresso Regal embodies the uncompromising approach to solving a complex\r\n            technological\r\n            problem - an ultra-thin smartphone in a titanium body. The smartphone’s thickness is only 8.8\r\n            mm.\r\n        </p><p>Gresso Regal’s solid case withstands extreme mechanical loads.</p>\r\n\r\n            <p>The smartphone case is made of a grade 5 solid titanium plate. The key advantages of titanium are its\r\n                unique protection properties and lightness. Titanium Grade 5 is widely used in the aerospace industry\r\n                and in high-end sport cars. The one of a kind titanium case machining and milling process is labor\r\n                intense and it takes 8 hours using high-tech equipment.</p><p>The back panel is satin-finished and performed manually and it takes 3 hours. With this technology, the\r\n                desired metal texture is achieved and the case becomes light and durable. The edges on the front panel\r\n                are manually polished.</p><p><br></p>','...'),(68,'','catalog/products/mobiado/Mobiado-The-One-77-Mobile-Device-Gold-1.jpg',36,248000000.0000,1,1,'2016-02-23 16:44:19','0000-00-00 00:00:00','Sản Phẩm Mẫu 68','<p>Mobiado là thương hiệu điện thoại di động sang trọng thuộc sở hữu của \r\nCông ty Bonac Innovation Corp. Mobiado được thành lập vào năm 2004 bởi \r\nPeter Bonac, trụ sở chính đặt tại Vancouver, Canada. Peter Bonac cũng là\r\n nhà thiết kế chính cho hầu hết các sản phẩm Mobiado. Mobiado được chế \r\ntác thủ công bằng công nghệ CNC và hoàn thiện bằng tay từng chiếc một...</p>','...'),(69,'','catalog/products/apple/carousel-apple-iphone-7-black-380x380-1.jpg',8,18890000.0000,1,1,'2016-11-22 18:07:40','2016-11-22 18:19:30','Sản Phẩm Mẫu 69','<p>iPhone 7 dramatically improves the most important aspects of the iPhone \r\nexperience. It introduces advanced new camera systems. The best \r\nperformance and battery life ever in an iPhone. Immersive stereo \r\nspeakers. The brightest, most colorful iPhone display. Splash and water \r\nresistance.<sup>1</sup> And it looks every bit as powerful as it is. This is iPhone&nbsp;7.</p><section class=\"sub-section sub-section-intro\">\r\n				<div class=\"section-content\">\r\n					<div class=\"section-copy-gutter\">\r\n						<div class=\"row\">\r\n							<div class=\"column large-10 small-12\">\r\n								<p class=\"intro\">iPhone&nbsp;7 reaches a new level of innovation and \r\nprecision. The jet black finish is like nothing we’ve ever made. The \r\nenclosure is splash and water resistant.<sup>1</sup> The Home button is \r\ncompletely reengineered. And with a new unibody design that’s seamless \r\nto the touch, iPhone&nbsp;7 feels as amazing as it&nbsp;looks.</p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</section>\r\n			\r\n				<div class=\"section-content\">\r\n					<div class=\"section-copy-gutter\">\r\n						<div class=\"row\">\r\n							<div class=\"column column-finishes large-9 small-12\">\r\n								<h4 class=\"typography-intro-medium\">Two sizes. Five finishes.</h4>\r\n								<p class=\"typography-intro\">With iPhone&nbsp;7 and iPhone&nbsp;7&nbsp;Plus, \r\nwe’re introducing a beautiful black with a matte finish and a deep, \r\nhigh-gloss jet black. Both the 4.7-inch and 5.5-inch models — \r\nconstructed with incredibly strong 7000 Series aluminum — are also \r\navailable in our signature silver, gold, and rose gold&nbsp;finishes.</p><div class=\"section-content\">\r\n					<div class=\"section-copy-gutter\">\r\n						<div class=\"row\">\r\n							<div class=\"column column-intro-black large-9 small-12\">\r\n								<h4 class=\"typography-intro-medium\">The gold standard of black.</h4>\r\n								<p class=\"typography-intro\">Crafted from bead-blasted aluminum, \r\nour new black model has a rich, deep matte finish. The high-gloss jet \r\nblack finish was achieved through a new feat of design engineering — a \r\nremarkably precise, nine-step process of anodization and polishing.<sup>2</sup>\r\n The end result is so purely and continuously black, you can’t tell \r\nwhere the aluminum ends and the glass begins. The dark side,&nbsp;indeed.</p><p class=\"typography-intro\"><br></p><div class=\"section-content\">\r\n					<div class=\"section-copy-gutter\">\r\n						<div class=\"row\">\r\n							<div class=\"column column-water large-9 small-12\">\r\n								<h4 class=\"typography-intro-medium\">Built to be water resistant.</h4>\r\n								<p class=\"typography-intro\">With its entire enclosure reengineered, iPhone&nbsp;7 is the very first water‑resistant iPhone.<sup>1</sup> So now you’re protected like never before against spills, splashes, and even&nbsp;dust.</p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div><p class=\"typography-intro\"><br></p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>','...'),(70,'','catalog/products/hp/c04600462.png',7,6000000.0000,1,1,'2016-11-22 18:33:09','0000-00-00 00:00:00','Sản Phẩm Mẫu 70','<ul><li>Windows 10 Home 64</li><li>AMD A6 Quad-core processor</li><li>4 GB memory; 1 TB HDD storage</li><li>Integrated Radeon™ R4 graphics</li></ul><br><div class=\"right_section\">\r\n												<div class=\"locate_with_container\">\r\n												\r\n													<h2 class=\"_desktop_only\">Built to last</h2>\r\n													\r\n														<p class=\"no-margin\">\r\n															When you’re looking for a desktop that just doesn’t quit,\r\n HP has you covered.  We put every tower through over 100 tests, \r\nensuring its trusted reliability.															\r\n														</p><div class=\"left_section\">\r\n												<div class=\"locate_with_container\">\r\n												\r\n													<h2>Names you know. Performance you can trust.</h2>\r\n													\r\n														<p class=\"no-margin _desktop_only\">\r\n															From the powerful processors to the Windows 10, these HP \r\nTowers are packed with reliable and proven technology from trusted \r\nbrands.<sup class=\"brackets_highlight\"><a class=\"disclaimerTooltip\">[1]</a></sup></p><p class=\"no-margin _desktop_only\"><sup class=\"brackets_highlight\"><br></sup></p><p class=\"no-margin _desktop_only\"><br></p><div class=\"right_section\">\r\n												<div class=\"locate_with_container\">\r\n												\r\n													<h2 class=\"_desktop_only\">Cyberlink PowerDirector and PowerDVD included</h2>\r\n													\r\n														<p class=\"no-margin\">\r\n															Whether you’re editing pro-quality videos or just \r\nwatching your favorite DVD, powerful software gives you all the tools \r\nyou need.															\r\n														</p>															\r\n													\r\n												</div>\r\n											</div><p class=\"no-margin _desktop_only\">																														\r\n														</p>															\r\n													\r\n												</div>\r\n											</div>															\r\n													\r\n												</div>\r\n											</div>','...');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`image`),
  KEY `product_id` (`product_id`),
  KEY `fk_product_image_to_product` (`product_id`),
  CONSTRAINT `fk_product_image_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (28,'',2),(28,'catalog/products/783_img1.jpg',3),(29,'catalog/demo/palm_treo_pro_2.jpg',0),(29,'catalog/demo/palm_treo_pro_3.jpg',0),(30,'',0),(31,'catalog/demo/nikon_d300_2.jpg',0),(31,'catalog/demo/nikon_d300_3.jpg',0),(31,'catalog/demo/nikon_d300_4.jpg',0),(31,'catalog/demo/nikon_d300_5.jpg',0),(32,'catalog/demo/ipod_touch_2.jpg',0),(32,'catalog/demo/ipod_touch_3.jpg',0),(32,'catalog/demo/ipod_touch_4.jpg',0),(32,'catalog/demo/ipod_touch_5.jpg',0),(32,'catalog/demo/ipod_touch_6.jpg',0),(32,'catalog/demo/ipod_touch_7.jpg',0),(34,'catalog/demo/ipod_shuffle_2.jpg',0),(34,'catalog/demo/ipod_shuffle_3.jpg',0),(34,'catalog/demo/ipod_shuffle_4.jpg',0),(34,'catalog/demo/ipod_shuffle_5.jpg',0),(36,'catalog/demo/ipod_nano_2.jpg',0),(36,'catalog/demo/ipod_nano_3.jpg',0),(36,'catalog/demo/ipod_nano_4.jpg',0),(36,'catalog/demo/ipod_nano_5.jpg',0),(40,'catalog/demo/iphone_2.jpg',0),(40,'catalog/demo/iphone_3.jpg',0),(40,'catalog/demo/iphone_4.jpg',0),(40,'catalog/demo/iphone_5.jpg',0),(40,'catalog/demo/iphone_6.jpg',0),(41,'catalog/products/apple/Apple-iMac-5k-Retina-Hardware-boom.com-02.jpg',0),(41,'catalog/products/apple/apple-imac-retina-5k-3.jpg',0),(41,'catalog/products/apple/IMac retina.jpg',0),(42,'catalog/demo/canon_eos_5d_1.jpg',0),(42,'catalog/demo/canon_eos_5d_2.jpg',0),(42,'catalog/demo/canon_logo.jpg',0),(42,'catalog/demo/compaq_presario.jpg',0),(42,'catalog/demo/hp_1.jpg',0),(43,'catalog/demo/macbook_2.jpg',0),(43,'catalog/demo/macbook_3.jpg',0),(43,'catalog/demo/macbook_4.jpg',0),(43,'catalog/demo/macbook_5.jpg',0),(44,'catalog/demo/macbook_air_2.jpg',0),(44,'catalog/demo/macbook_air_3.jpg',0),(44,'catalog/demo/macbook_air_4.jpg',0),(45,'catalog/demo/macbook_pro_2.jpg',0),(45,'catalog/demo/macbook_pro_3.jpg',0),(45,'catalog/demo/macbook_pro_4.jpg',0),(46,'catalog/demo/sony_vaio_2.jpg',0),(46,'catalog/demo/sony_vaio_3.jpg',0),(46,'catalog/demo/sony_vaio_4.jpg',0),(46,'catalog/demo/sony_vaio_5.jpg',0),(47,'catalog/demo/hp_2.jpg',0),(47,'catalog/demo/hp_3.jpg',0),(48,'catalog/demo/ipod_classic_2.jpg',0),(48,'catalog/demo/ipod_classic_3.jpg',0),(48,'catalog/demo/ipod_classic_4.jpg',0),(49,'catalog/demo/samsung_tab_2.jpg',0),(49,'catalog/demo/samsung_tab_3.jpg',0),(49,'catalog/demo/samsung_tab_4.jpg',0),(49,'catalog/demo/samsung_tab_5.jpg',0),(49,'catalog/demo/samsung_tab_6.jpg',0),(49,'catalog/demo/samsung_tab_7.jpg',0),(57,'catalog/demo/samsung_tab_2.jpg',0),(57,'catalog/demo/samsung_tab_3.jpg',0),(57,'catalog/demo/samsung_tab_4.jpg',0),(57,'catalog/demo/samsung_tab_5.jpg',0),(57,'catalog/demo/samsung_tab_6.jpg',0),(57,'catalog/demo/samsung_tab_7.jpg',0),(60,'',0),(63,'catalog/products/150910-iphone-6s-iphone-6s-plus-official-announcement-03.jpg',0),(63,'catalog/products/783_img1.jpg',0),(63,'catalog/products/Apple-iPhone-6---iPhone-Plus---all-the-official-images32b3b0b3d3c5105c58c730337aee36d5.jpg',0),(63,'catalog/products/Apple-iPhone-6s---all-the-official-images.jpg',0),(63,'catalog/products/iphone6s-collection.jpg',0),(64,'catalog/products/20151222171728_vertu_sig_red_calf_c26_phone_keypad.jpg',0),(64,'catalog/products/red-calf-255x309.jpg',0),(64,'catalog/products/vertu-signature-s-silver-red-calf-9.jpg',0),(65,'catalog/products/galaxy_s6_edge_combination2_gold_platinum.jpg',0),(65,'catalog/products/s6-edge-1.jpg',0),(65,'catalog/products/s6-edge-2.jpg',0),(65,'catalog/products/s6-edge-4.jpg',0),(65,'catalog/products/s6-edge-5.jpg',0),(65,'catalog/products/s6-edge-7.jpg',0),(65,'catalog/products/s6-edge6.jpg',0),(66,'catalog/products/Lumia-950-Coming-Soon-jpg.jpg',0),(66,'catalog/products/Lumia-950-hero-jpg.jpg',0),(66,'catalog/products/Lumia-950-performance-jpg.jpg',0),(66,'catalog/products/Lumia-950-Specifications-jpg.jpg',0),(67,'catalog/products/gresso/gresso-3.jpg',0),(67,'catalog/products/gresso/gresso-4.jpg',0),(67,'catalog/products/gresso/gresso-5.jpg',0),(67,'catalog/products/gresso/gresso_product-img-1.jpg',0),(67,'catalog/products/gresso/gresso_product-img-2.jpg',0),(68,'catalog/products/mobiado/Mobiado-The-One-77-Mobile-Device-Gold-2.jpg',0),(68,'catalog/products/mobiado/Mobiado-The-One-77-Mobile-Device-Gold-3.jpg',0),(68,'catalog/products/mobiado/Mobiado-The-One-77-Mobile-Device-Gold-4.jpg',0),(68,'catalog/products/mobiado/Mobiado-The-One-77-Mobile-Device-Gold-5.jpg',0),(69,'catalog/products/apple/apple-iphone-7-1.jpg',0),(69,'catalog/products/apple/images1780090_Them_7_tinh_n_ng_de_iPhone_7_b_t_bai.jpg',0),(69,'catalog/products/apple/iphone-7-render.jpg',0),(69,'catalog/products/apple/iphone7-gold.jpg',0),(70,'catalog/products/hp/c05051590.png',0),(70,'catalog/products/hp/c05051617.png',0),(70,'catalog/products/hp/hp-case-monitors.png',0);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_related`
--

DROP TABLE IF EXISTS `product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`),
  CONSTRAINT `fk_product_related_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_related`
--

LOCK TABLES `product_related` WRITE;
/*!40000 ALTER TABLE `product_related` DISABLE KEYS */;
INSERT INTO `product_related` VALUES (40,63),(40,69),(41,60),(41,70),(47,70),(60,41),(63,40),(63,64),(63,65),(63,66),(63,69),(64,63),(64,67),(64,68),(64,69),(65,63),(65,66),(65,69),(66,63),(66,65),(66,69),(67,64),(67,68),(68,64),(68,67),(69,40),(69,63),(69,64),(69,65),(69,66),(70,41),(70,47);
/*!40000 ALTER TABLE `product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_to_category`
--

DROP TABLE IF EXISTS `product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `fk_product_to_category_to_category` (`category_id`),
  KEY `fk_product_to_category_to_product` (`product_id`),
  CONSTRAINT `fk_product_to_category_to_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `fk_product_to_category_to_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_to_category`
--

LOCK TABLES `product_to_category` WRITE;
/*!40000 ALTER TABLE `product_to_category` DISABLE KEYS */;
INSERT INTO `product_to_category` VALUES (43,18),(44,18),(45,18),(46,18),(47,18),(29,20),(30,20),(33,20),(43,20),(44,20),(46,20),(48,20),(60,20),(70,20),(28,24),(29,24),(40,24),(63,24),(64,24),(65,24),(67,24),(69,24),(70,26),(41,27),(33,28),(60,28),(42,32),(47,45),(49,57),(57,57),(40,70),(63,70),(65,70),(66,70),(69,70),(64,71),(67,71),(68,71),(28,72);
/*!40000 ALTER TABLE `product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (171,'config_name','iShop'),(172,'config_owner','Steve Jobs'),(173,'config_address','285 phố Đội Cấn - quận Ba Đình. t.p Hà Nội. Việt Nam.'),(176,'config_telephone','043686868'),(178,'config_image','catalog/logos/Apple_logo.png'),(179,'config_open','08h:00'),(180,'config_comment','Cửa hành chỉ nhận thanh toán tiền mặt.'),(194,'config_product_count','1'),(195,'config_product_limit','15'),(196,'config_product_description_length','100'),(197,'config_limit_admin','20'),(220,'config_order_mail','0'),(231,'config_logo','catalog/logos/Apple_logo.png'),(232,'config_icon','catalog/icons/Apple-icon-16x16.png'),(233,'config_image_category_width','80'),(234,'config_image_category_height','80'),(235,'config_image_thumb_width','228'),(236,'config_image_thumb_height','228'),(237,'config_image_popup_width','500'),(238,'config_image_popup_height','500'),(239,'config_image_product_width','228'),(240,'config_image_product_height','228'),(241,'config_image_additional_width','74'),(242,'config_image_additional_height','74'),(243,'config_image_related_width','80'),(244,'config_image_related_height','80'),(245,'config_image_compare_width','90'),(246,'config_image_compare_height','90'),(247,'config_image_wishlist_width','47'),(248,'config_image_wishlist_height','47'),(249,'config_image_cart_width','47'),(250,'config_image_cart_height','47'),(251,'config_image_location_width','268'),(252,'config_image_location_height','50'),(269,'config_file_max_size','300000'),(270,'config_file_ext_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods'),(271,'config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet'),(272,'config_maintenance','0'),(273,'config_password','1'),(275,'config_compression','0'),(276,'config_error_display','1'),(277,'config_error_log','1'),(278,'config_error_filename','error.log'),(280,'config_email','stevejobs@ishop.com'),(281,'config_url','http://localhost:82/xxxxxx/');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `due_date` datetime NOT NULL DEFAULT '2099-01-01 23:00:00',
  PRIMARY KEY (`user_id`),
  KEY `fk_user_to_user_group` (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin','$2y$10$X3ZfKqgugwO2TyIxOOvnxOXP9pq2weDBN9EOROhv69ZBf5bn4WUSG','Steve','stevejobs@apple.com','catalog/profiles/Steve-Jobs-Profile.jpg','',1,'2015-01-29 08:07:20','2099-01-01 23:00:00'),(4,1,'billgate','$2y$10$ZLipDnO6LmBXDjAbV.PuBulf30fYTOpP4FW4fT3F949z52WmbGPJi','Bill','billgates@gmail.com','catalog/profiles/billgates.jpg','',1,'2015-04-03 17:32:02','2099-01-01 23:00:00'),(5,10,'mark','$2a$10$Onh3/KpeCpd5a.SuC18/geyLew.VHS73AFWq9mCcK4dW3.S45KbhS','Mark','zuck@facebook.com','catalog/profiles/mark-zuckerberg.jpg','',1,'2015-04-06 18:25:04','2099-01-01 23:00:00');
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

-- Dump completed on 2018-03-15 14:32:10
