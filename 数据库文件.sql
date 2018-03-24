-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Uid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `town` varchar(45) DEFAULT NULL,
  `deaddress` varchar(45) DEFAULT NULL,
  `ifdefault` tinyint(4) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (34,'俞浩雄','18267552916','辽宁','沈阳','浑南新区','东北大学',1,31),(34,'马志宇','13851515151','湖北','武汉','洪山区','倒萨',0,32);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (5,'大颗粒红松子仁','湖南',89,2,'pic/005pic000.jpg','tom',42);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `img1` varchar(45) DEFAULT NULL,
  `img2` varchar(45) DEFAULT NULL,
  `img3` varchar(45) DEFAULT NULL,
  `Oprice` int(11) DEFAULT NULL,
  `monSale` int(11) DEFAULT NULL,
  `totalSale` int(11) DEFAULT NULL,
  `evaluation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (2,'百草味-东北松子','安徽',49,9,'pic/002pic000.jpg','pic/002pic001.jpg','pic/002pic002.jpg','pic/002pic003.jpg',98,1234,2529,3458),(3,'新货东北红松子手剥','浙江',32,8,'pic/003pic000.jpg','pic/003pic001.jpg','pic/003pic002.jpg','pic/003pic003.jpg',46,5896,7942,2584),(4,'16年新货原味手剥松子','辽宁',52,7,'pic/004pic000.jpg','pic/004pic001.jpg','pic/004pic002.jpg','pic/004pic003.jpg',68,8456,9999,4565),(5,'大颗粒红松子仁','湖南',89,4,'pic/005pic000.jpg','pic/005pic001.jpg','pic/005pic002.jpg','pic/005pic003.jpg',99,2000,2945,1587),(6,'东北特产野生开口有机松子','辽宁',128,324,'pic/006pic000.jpg','pic/006pic001.jpg','pic/006pic002.jpg','pic/006pic003.jpg',258,2548,5158,4651),(7,'2月新货上臣巴西松子','辽宁',148,56,'pic/007pic000.jpg','pic/007pic001.jpg','pic/007pic002.jpg','pic/007pic003.jpg',258,2548,5158,4651),(8,'2月新货上臣巴西松子','辽宁',148,56,'pic/008pic000.jpg','pic/008pic001.jpg','pic/008pic002.jpg','pic/008pic003.jpg',258,2548,5158,4651),(9,'2月新货上臣巴西松子','辽宁',148,346,'pic/009pic000.jpg','pic/009pic001.jpg','pic/009pic002.jpg','pic/009pic003.jpg',258,2548,5158,4651),(10,'2月新货上臣巴西松子','辽宁',148,234,'pic/010pic000.jpg','pic/010pic001.jpg','pic/010pic002.jpg','pic/010pic003.jpg',258,2548,5158,4651),(11,'2月新货上臣巴西松子','辽宁',148,354,'pic/011pic000.jpg','pic/011pic001.jpg','pic/011pic002.jpg','pic/011pic003.jpg',258,2548,5158,4651),(12,'休闲农场夹心蒸蛋糕','广东',59,300,'pic/012pic000.jpg','pic/012pic001.jpg','pic/012pic002.jpg','pic/014pic001.jpg',24,2873,8196,1844),(13,'慕滋三明治枣泥蒸蛋糕','上海',59,100,'pic/013pic000.jpg','pic/013pic001.jpg','pic/013pic002.jpg','pic/012pic001.jpg',24,1099,6999,5367),(14,'友梦早餐三明治蒸蛋糕','福建',69,500,'pic/014pic000.jpg','pic/014pic001.jpg','pic/014pic002.jpg','pic/016pic001.jpg',28,572,5682,4365),(15,'港荣蓝莓蒸蛋糕紫米','辽宁',38,670,'pic/015pic000.jpg','pic/015pic001.jpg','pic/015pic002.jpg','pic/016pic002.jpg',29,875,7654,6700),(16,'千丝蒸蛋糕早餐手撕口袋','辽宁',39,453,'pic/016pic000.jpg','pic/016pic001.jpg','pic/016pic002.jpg','pic/018pic002.jpg',19,2903,8675,7600),(17,'老乡亲芝士夹心蒸蛋糕','广东',49,500,'pic/017pic000.jpg','pic/017pic001.jpg','pic/017pic002.jpg','pic/015pic001.jpg',27,1500,8967,7865),(18,'葡记蒸蛋糕点心整箱','广东',68,675,'pic/018pic000.jpg','pic/018pic001.jpg','pic/018pic002.jpg','pic/017pic001.jpg',32,375,6000,3232),(19,'三惠蜜方鲜鸡蒸蛋糕三明治','河南',19,700,'pic/019pic000.jpg',NULL,NULL,NULL,14,120,2005,1093),(20,'港荣蒸奶香蛋糕蒸蛋糕','广东',59,300,'pic/020pic000.jpg',NULL,NULL,NULL,29,370,3091,2845),(21,'华美拔丝蛋糕蒸蛋糕 面包 ','广东',62,400,'pic/021pic000.jpg',NULL,NULL,NULL,32,674,7890,6901),(22,'盼盼手撕面包早餐蒸蛋糕','上海',89,900,'pic/022pic000.jpg',NULL,NULL,NULL,22,321,8902,7693),(23,'舜丰分子料理蒸蛋糕','上海',53,200,'pic/023pic000.jpg',NULL,NULL,NULL,21,456,7208,5200),(24,'老乡亲芝士小面包蒸蛋糕','广东',78,345,'pic/024pic000.jpg',NULL,NULL,NULL,36,953,4209,3208),(25,'良品铺子黑米蒸蛋糕','湖北',96,786,'pic/025pic000.jpg',NULL,NULL,NULL,25,620,2100,1322);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `adname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`adname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('admin','admin');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) DEFAULT NULL,
  `Uid` int(11) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (64,'17-05-17 15:23:24',34,26,42),(66,'17-05-17 16:19:49',34,31,173);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paied`
--

DROP TABLE IF EXISTS `paied`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paied` (
  `orderId` int(11) DEFAULT NULL,
  `paiedId` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`paiedId`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paied`
--

LOCK TABLES `paied` WRITE;
/*!40000 ALTER TABLE `paied` DISABLE KEYS */;
INSERT INTO `paied` VALUES (61,78,35,3,1),(62,79,35,4,1),(62,80,35,5,1),(63,81,35,2,3),(63,82,35,5,1),(64,83,34,3,1),(65,84,34,13,1),(66,85,34,2,1),(66,86,34,4,2);
/*!40000 ALTER TABLE `paied` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `phone` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `Uid` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Uid`),
  UNIQUE KEY `Uid_UNIQUE` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('13044553728','tom','g8888',00034),('15804051667','tom','123',00035),('123','alice','123',00037);
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

-- Dump completed on 2017-05-17 17:05:54
