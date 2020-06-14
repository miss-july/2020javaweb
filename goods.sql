-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: goods
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `t_address`
--

DROP TABLE IF EXISTS `t_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_address` (
  `aid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `commonly` int(1) DEFAULT NULL,
  `uid` int(10) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_address`
--

LOCK TABLES `t_address` WRITE;
/*!40000 ALTER TABLE `t_address` DISABLE KEYS */;
INSERT INTO `t_address` VALUES ('7d945aa8d3e0440cab5ad36b67ae1ee9','广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147',0,5),('8eb0cb90ce6643ac9e41db1919b8944c','0罗诗琪 广东省广州市广州大学城华南理工大学 17316863147',0,5);
/*!40000 ALTER TABLE `t_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_admin`
--

DROP TABLE IF EXISTS `t_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_admin` (
  `adminId` char(32) NOT NULL,
  `adminname` varchar(50) DEFAULT NULL,
  `adminpwd` varchar(50) DEFAULT NULL,
  `logintime`  char(19) DEFAULT NULL,
  `exittime` char(19) DEFAULT NULL,
  `ip` char(19) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin`
--

LOCK TABLES `t_admin` WRITE;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` VALUES ('a1','liuBei','123',NULL,NULL,NULL),('a2','guanYu','123',NULL,NULL,NULL),('a3','zhangSanFei','123',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_book`
--

DROP TABLE IF EXISTS `t_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_book` (
  `bid` char(32) NOT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `discount` decimal(3,1) DEFAULT NULL,
  `press` varchar(100) DEFAULT NULL,
  `publishtime` char(10) DEFAULT NULL,
  `edition` int(11) DEFAULT NULL,
  `pageNum` int(11) DEFAULT NULL,
  `wordNum` varchar(50) DEFAULT NULL,
  `printtime` char(10) DEFAULT NULL,
  `booksize` varchar(50) DEFAULT NULL,
  `paper` varchar(50) DEFAULT NULL,
  `cid` char(32) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  `image_w` varchar(100) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bid`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_book_t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_book`
--

LOCK TABLES `t_book` WRITE;
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` VALUES ('0c8c72833b024bf5b40ff7ad598c1ca8','代金券 威井云吞面，超薄超滑的云吞皮包裹着新鲜的猪肉和小虾米，搭配骨头汤，美味一绝','威井云吞面',10.00,8.00,8.0,'龙城','2019-1-1',3,6,'四会市曙光路21号','2020-7-31','7:00-22:00','18898877773','0cb70fee05d74842988f03311cd28790',100,'book_img/C6DD4B26DE094C08AD49FC41CA3C13B1-3b.jpg','book_img/885967CF2FBD4BE7870FCAEF9CBC81F4-3m.jpg',114),('6c2d9d11902543b9878e9d748ff2c1ca','代金券 龙湾烧肉一斤，其肉松化、香脆，其口感富有层次感','正宗龙湾烧肉',30.00,20.00,6.7,'东城区','2019-1-1',3,30,'四会市东城三街与东城路交叉口东南20米','2020-7-31','9:00-19:00','13556509904','0cb70fee05d74842988f03311cd28790',99,'book_img/60B666D5BB0A4D87BC0CA266A9DCF9B8-5b.jpg','book_img/3A8799E08D064F3AA1CAE9824355A755-5m.jpg',116),('8db1b0820af14b23922f9b5b8db6e14a','代金券 无笃石螺一碟，其口感韧肖、肉味鲜美','尚下九美食阁',20.00,15.00,7.5,'龙城','2019-1-1',3,30,'四会市龙凤路38座1号','2020-7-31','19:00-02:00','18029826338','0cb70fee05d74842988f03311cd28790',99,'book_img/3004851B0C37408C998BC5D337DE7E8E-6b.jpg','book_img/B31690ADE3C14CFB9B8355BF628D721C-6m.jpg',117),('9da19ae3b8944ff7b9a085f00c46ca90','特产 四会沙糖桔一箱，鲜美而极甜，无渣，口感细腻，实为极品','红飞果汇',99.00,57.42,5.8,'城中区','2019-1-1',10,68,'四会市光明大道君悦旅馆左侧10米','2020-7-31','9:00-22:00','13450192599','fafbdcd36db9464e8b1079d6f38a3d61',198,'book_img/9208C3C029644141888720E31DE094FB-1b.jpg','book_img/466BD5755C4C4EB68D2789FE708B2796-1m.jpg',109),('b31f775a7bf54b989beac5928bf36412','代金券 茶油鸡一只（配以野山茶油，皮焦肉嫩，实为鸡中上品）','江陆茶油鸡',79.80,55.10,6.9,'东城区','2019-1-1',3,57,'四会市玉器街14号','2020-7-31','9:00-19:00','0758-3331234','0cb70fee05d74842988f03311cd28790',97,'book_img/7B87D8ABC1D6471AB8D026D7AA35FDC4-2b.jpg','book_img/94A12F557084417C9A64639BEBFE6F19-2m.jpg',113),('c0acf90b2a774b8b8b2e22695c42b6ed','代金券 四会鹅汤濑粉一份，味道鲜香清淡','外婆家鹅汤濑粉',11.00,8.00,7.3,'龙城','2019-1-1',3,10,'四会市建设路（红绿灯往龙城方向150米）','2020-7-31','10:30-01:30','13425369039','0cb70fee05d74842988f03311cd28790',200,'book_img/419512303D7944C1AB0FEA7627E5BDBA-7b.jpg','book_img/2AA980D07B9A4F008DBAA327718F1CC4-7m.jpg',118),('cf96528cf9fa4224b4b85434826c5247','代金券 江谷窝粉一碟，米香味浓郁，爽口弹牙，柔韧性十足而又嫩滑','威井云吞面',8.00,6.00,7.5,'龙城','2019-1-1',3,8,'四会市曙光路21号','2020-7-31','7:00-22:00','18898877773','0cb70fee05d74842988f03311cd28790',100,'book_img/E44C4AF17E7E41A692BBA9EF587B8B31-4b.jpg','book_img/C055B6C7B33B4C2A85B22B23B1DA1DDC-4m.jpg',115);
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cartitem`
--

DROP TABLE IF EXISTS `t_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cartitem` (
  `cartItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cartItemId`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_cartitem_t_user` (`uid`),
  KEY `FK_t_cartitem_t_book` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cartitem`
--

LOCK TABLES `t_cartitem` WRITE;
/*!40000 ALTER TABLE `t_cartitem` DISABLE KEYS */;
INSERT INTO `t_cartitem` VALUES ('dee1c4bd26ce4f8dbba946180f548d65',2,'c0acf90b2a774b8b8b2e22695c42b6ed','5',55);
/*!40000 ALTER TABLE `t_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_category` (
  `cid` char(32) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `pid` char(32) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cname` (`cname`),
  KEY `FK_t_category_t_category` (`pid`),
  KEY `orderBy` (`orderBy`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES ('0729860fdffe47a8a632c42819350a60','景点门票',NULL,'当地景点门票',54),('0cb70fee05d74842988f03311cd28790','当地特色','dce454d693064b86bb96eb2d4f168fcb','四会当地特色美食',43),('17581a37330b4b8bafc9145b09bbb7f7','其他景点','0729860fdffe47a8a632c42819350a60','畅游当地其他景点',60),('17c420196e744e0fb3499359f5fe3e71','火锅','dce454d693064b86bb96eb2d4f168fcb','火锅代金券',45),('1b9c34bb1f6e41f59287318331596ab4','商城','6688eb4a761c4c5ca57902c6fb084ad2','商城活动门票、代金券或礼品',64),('217f88be0c13450394a14a46daeea80e','民宿','b2a9ec5139294b31ab0bd0538d0f4da7','当地特色民宿',52),('3824df5bd2f847ad91200f2484cd36a4','甜点饮品','dce454d693064b86bb96eb2d4f168fcb','甜点饮品代金券',48),('39026d39f1a84dddbf0c153ffd91a2b9','经济连锁','b2a9ec5139294b31ab0bd0538d0f4da7','当地经济连锁酒店',51),('565b376d314341259a29a1d5e65ab904','纪念品',NULL,'购买当地纪念品',66),('59b07342e33c487384abb72acaa836c3','名胜古迹','0729860fdffe47a8a632c42819350a60','游览当地名胜古迹',56),('6688eb4a761c4c5ca57902c6fb084ad2','电影/演出',NULL,'在当地观看电影/演出',61),('7bf96c2116c74484a425e2c03cc286e7','高端酒店','b2a9ec5139294b31ab0bd0538d0f4da7','当地高端酒店',50),('847fcedaa6ec4c279182f6c545a54dde','温泉','0729860fdffe47a8a632c42819350a60','体验当地温泉',57),('8ee33e5fa04f40488eacbd061eb61948','其他','565b376d314341259a29a1d5e65ab904','购买其他纪念品',72),('91c2c4b655c14c27a47b4b020b1e9ed9','展馆展览','0729860fdffe47a8a632c42819350a60','参观当地展馆展览',59),('994149383a8940cfafd7decd515a732e','自助餐','dce454d693064b86bb96eb2d4f168fcb','自助餐代金券',46),('9b43b5c6ca4945d4bee81cca5759f2f1','自然风光','0729860fdffe47a8a632c42819350a60','欣赏当地自然风光',55),('ab6d8a6688cf488b9c669a6e30736469','公园游乐场','0729860fdffe47a8a632c42819350a60','游玩当地公园游乐场',58),('b2a9ec5139294b31ab0bd0538d0f4da7','酒店住宿',NULL,'当地酒店住宿',49),('b8d36f549ced4fedaa039f4d9226e59b','明信片','565b376d314341259a29a1d5e65ab904','明信片',73),('be6f887ed26847c2af1a8b193d3e9cf7','电影','6688eb4a761c4c5ca57902c6fb084ad2','当地电影院门票',62),('caaa698952814e79abac962719a417d2','小吃快餐','dce454d693064b86bb96eb2d4f168fcb','小吃快餐代金券',44),('dce454d693064b86bb96eb2d4f168fcb','美食',NULL,'美食代金券',42),('eb01e13cb1fd4c79bfce715cf2fdcb84','其他住宿','b2a9ec5139294b31ab0bd0538d0f4da7','其他当地住宿',53),('ebb5ff95c845418d97b6e3a44eb22fe5','特产水果/美食',NULL,'当地特产',70),('ecccdf69773c421caa61908715764bbe','西餐','dce454d693064b86bb96eb2d4f168fcb','西餐代金券',47),('f3d97c9274a4459ba0f4adc14b5e2df9','演出','6688eb4a761c4c5ca57902c6fb084ad2','当地演出门票',63),('fafbdcd36db9464e8b1079d6f38a3d61','特色','ebb5ff95c845418d97b6e3a44eb22fe5','当地特色特产',71);
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_order` (
  `oid` char(32) NOT NULL,
  `ordertime` char(19) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK_t_order_t_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order`
--

LOCK TABLES `t_order` WRITE;
/*!40000 ALTER TABLE `t_order` DISABLE KEYS */;
INSERT INTO `t_order` VALUES ('3bdbecbdf3524bcc91402b47cf446613','2019-12-15 16:30:57',55.10,6,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5'),('46e1eee0531848acb4cbbc5791b5e5ff','2019-12-15 16:30:48',15.00,1,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5'),('7681bbf6278d4349a9075a63435d69e8','2019-12-15 16:28:55',114.84,4,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5'),('7f12b276da1e4a7184e4646c7de3aedd','2019-12-15 16:30:25',15.00,5,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5'),('ab191561353f45c48e8d90e89c9d2306','2019-12-15 16:31:24',20.00,3,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5'),('e6d06ccf437a4a8a9cd156be868ee1f9','2019-12-15 16:32:51',110.20,2,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5'),('f9c6fa9760d64bf5b68fcbf475ffd01d','2019-12-15 16:29:56',15.00,5,'广东省广州市番禺区广州大学城华南理工大学 罗诗琪 17316863147','5');
/*!40000 ALTER TABLE `t_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_orderitem`
--

DROP TABLE IF EXISTS `t_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_orderitem` (
  `orderItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `oid` char(32) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `FK_t_orderitem_t_order` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_orderitem`
--

LOCK TABLES `t_orderitem` WRITE;
/*!40000 ALTER TABLE `t_orderitem` DISABLE KEYS */;
INSERT INTO `t_orderitem` VALUES ('1f1267d7701c4f1eb988ec79658d92f8',1,15.00,'8db1b0820af14b23922f9b5b8db6e14a','代金券 无笃石螺一碟，其口感韧肖、肉味鲜美',15.00,'book_img/B31690ADE3C14CFB9B8355BF628D721C-6m.jpg','f9c6fa9760d64bf5b68fcbf475ffd01d'),('79060365911041749dbca057135e1c39',1,15.00,'8db1b0820af14b23922f9b5b8db6e14a','代金券 无笃石螺一碟，其口感韧肖、肉味鲜美',15.00,'book_img/B31690ADE3C14CFB9B8355BF628D721C-6m.jpg','46e1eee0531848acb4cbbc5791b5e5ff'),('7dcd84b2b54b4768b1643c8667fdf5b2',1,55.10,'b31f775a7bf54b989beac5928bf36412','代金券 茶油鸡一只（配以野山茶油，皮焦肉嫩，实为鸡中上品）',55.10,'book_img/94A12F557084417C9A64639BEBFE6F19-2m.jpg','3bdbecbdf3524bcc91402b47cf446613'),('95cd1f32e7454160912b0b9bc8f779e4',1,20.00,'6c2d9d11902543b9878e9d748ff2c1ca','代金券 龙湾烧肉一斤，其肉松化、香脆，其口感富有层次感',20.00,'book_img/3A8799E08D064F3AA1CAE9824355A755-5m.jpg','ab191561353f45c48e8d90e89c9d2306'),('a1686c0e6d7f4a13ade258d0583e181d',2,110.20,'b31f775a7bf54b989beac5928bf36412','代金券 茶油鸡一只（配以野山茶油，皮焦肉嫩，实为鸡中上品）',55.10,'book_img/94A12F557084417C9A64639BEBFE6F19-2m.jpg','e6d06ccf437a4a8a9cd156be868ee1f9'),('c321e99d13144dfbb801ce6d95885f2b',1,15.00,'8db1b0820af14b23922f9b5b8db6e14a','代金券 无笃石螺一碟，其口感韧肖、肉味鲜美',15.00,'book_img/B31690ADE3C14CFB9B8355BF628D721C-6m.jpg','7f12b276da1e4a7184e4646c7de3aedd'),('f631754f23d74a38b15960ab67551577',2,114.84,'9da19ae3b8944ff7b9a085f00c46ca90','特产 四会沙糖桔一箱，鲜美而极甜，无渣，口感细腻，实为极品',57.42,'book_img/466BD5755C4C4EB68D2789FE708B2796-1m.jpg','7681bbf6278d4349a9075a63435d69e8');
/*!40000 ALTER TABLE `t_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logintime`  char(19) DEFAULT NULL,
  `exittime` char(19) DEFAULT NULL,
  `ip` char(19) DEFAULT NULL,
  `staytime` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `loginname` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'zhangSan','123456','1023016660@qq.com',NULL,NULL,NULL,NULL),(2,'liSi','123456','1023016661@qq.com',NULL,NULL,NULL,NULL),(3,'wangWu','123456','1023016662@qq.com',NULL,NULL,NULL,NULL),(4,'zhaoLiu','123456','1023016663@qq.com',NULL,NULL,NULL,NULL),(5,'user1','123456','861440969@qq.com',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 16:36:44
