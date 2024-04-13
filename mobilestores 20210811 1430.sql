-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema onlinemobilestore
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ onlinemobilestore;
USE onlinemobilestore;

--
-- Table structure for table `onlinemobilestore`.`adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`adminuser`
--

/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` (`username`,`password`) VALUES 
 ('admin','admin');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`categoryname`) VALUES 
 ('Bike'),
 ('Cars'),
 ('cosmetics'),
 ('Desktop'),
 ('dolls'),
 ('hospitals'),
 ('Laptop'),
 ('tv');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`email`,`password`,`firstname`,`lastname`,`country`,`zip`,`state`,`address`,`question`,`answer`,`customerid`) VALUES 
 ('ravishkumar@gmail.com','dfgsdfgsdfg','fgsf','sfgs','sfgsdf','577777','sfgs','sfgsfd','sfdgdsf','dfsgdsf',1),
 ('ramesh@gmail.com','ramesh123','lokesh','kumar','india','577222','karnataka','shimoga','which is your best school','sports school',2),
 ('meghana@gmail.com','megha123','megha','mg','india','577201','karnataka','shimohs','where is air','everywhere',3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `email` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`notification`
--

/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` (`email`,`productname`) VALUES 
 ('ramesh@gmail.com',''),
 ('ramesh@gmail.com','ktm'),
 ('ramesh@gmail.com','ktm'),
 ('meghana@gmail.com','benz'),
 ('ramesh@gmail.com','benz'),
 ('1234567890','benz');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `productname` varchar(50) DEFAULT NULL,
  `productCast` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `totalAmount` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cardHolderName` varchar(50) DEFAULT NULL,
  `cardtype` varchar(50) DEFAULT NULL,
  `cardNum` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `charity` varchar(50) DEFAULT NULL,
  `orderid` int(50) NOT NULL AUTO_INCREMENT,
  `storephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`orderlist`
--

/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`,`storephone`) VALUES 
 ('hp','30000','1','30000.0','sfgsdfgdg','ravi','credit card','534534534534534','566','60.000003999999997',1,NULL),
 ('maruthi','500000','1','500000.0','shimoga','ragvasjgfjg','credit card','38573953758357385','343','1000.00006',2,NULL),
 ('maruthi','500000','1','500000.0','','','credit card','','','1000.00006',3,NULL),
 ('hp','30000','1','30000.0','','ravi','credit card','123456789012345','123','60.000004',4,NULL),
 ('samsung','36000','1','36000.0','','','credit card','','','3600.0',5,NULL),
 ('samsung','36000','1','36000.0','','ravi','credit card','12345678989988','667','3600.0',6,NULL),
 ('dell','29970','1','29970.0','','ravi','credit card','13993939393883','332','29.970001',7,NULL),
 ('dell','29970','1','29970.0','shimoga','ravvi','debit card','9473467364343','343','29.970001',8,'9999999999'),
 ('ktm','9990000','1','9990000.0','shimoga','ravi','credit card','4234234324232','323','9990.0',9,'1234567890'),
 ('ktm','9990000','1','9990000.0','shimoga','ravi','credit card','234567896786789','123','9990.0',10,'1234567890');
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`,`storephone`) VALUES 
 ('ear rings','997','2','1994.0','shimoga','vivek','credit card','12345678908989','123','5.982',11,'9590324417'),
 ('benz','9990000','1','9990000.0','shimoga','ravi','debit card','56745645343445','123','9990.0',12,'1234567890'),
 ('ktm','9990000','1','9990000.0','shimoga','ravi','debit card','123456789012345','433','9990.0',13,'1234567890');
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `productprice` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `storephone` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`discount`,`productid`,`storephone`,`gst`,`units`) VALUES 
 ('Laptop','hp','30000','8','images/Desert.jpg','good for business','0.2',1,NULL,'6',NULL),
 ('Cars','maruthi','500000','-1','images/Koala.jpg','my good marthi','0.2',2,NULL,'4',NULL),
 ('tv','samsung','40000','8','images/Koala.jpg','good tv','10',3,NULL,'4',NULL),
 ('Desktop','dell','30000','3','images/Penguins.jpg','good laptop very new','0.1',4,'9999999999','2',NULL),
 ('Bike','ktm','10000000','7','images/Lighthouse.jpg','my bike','0.1',5,'1234567890','3',NULL),
 ('tv','samsug','20000','29','images/Desert.jpg','good one wilth lcd','0.1',6,'1234567890','7',NULL),
 ('cosmetics','ear rings','1000','8','images/Jellyfish.jpg','look good for childran and ladies','0.3',7,'9590324417','6',NULL),
 ('dolls','dolls','500','20','images/Koala.jpg','looking cute','0.1',8,'meghana@gmail.com','4',NULL),
 ('Cars','benz','10000000','9','images/Penguins.jpg','very fast and super cars','0.1',9,'1234567890','6',NULL),
 ('cosmetics','lipsstick','500','1','images/img2.jpg','new one','0.1',10,'null','7','kg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `productID` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`rating`
--

/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`productID`,`rating`) VALUES 
 (NULL,'3'),
 ('hp','3'),
 ('maruthi','4'),
 ('samsung','4'),
 ('dolls','4'),
 ('dolls','1'),
 ('ear rings','4');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`shoprating`
--

DROP TABLE IF EXISTS `shoprating`;
CREATE TABLE `shoprating` (
  `shopname` varchar(50) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`shoprating`
--

/*!40000 ALTER TABLE `shoprating` DISABLE KEYS */;
INSERT INTO `shoprating` (`shopname`,`rate`) VALUES 
 ('harshni stores',3),
 ('ravish store',4),
 ('ravish store',4),
 ('ravish store',4),
 ('ravish store',4),
 ('harshni stores',3),
 ('harshni stores',3),
 ('harshni stores',3),
 ('vivek Stores',5),
 ('vivek Stores',5),
 ('harshni stores',4),
 ('harshni stores',5),
 ('harshni stores',5),
 ('vivek Stores',1),
 ('vivek Stores',1),
 ('harshni stores',5),
 ('harshni stores',5);
/*!40000 ALTER TABLE `shoprating` ENABLE KEYS */;


--
-- Table structure for table `onlinemobilestore`.`stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `storemobileno` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`storeid`),
  UNIQUE KEY `storemobileno` (`storemobileno`),
  UNIQUE KEY `storename` (`storename`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinemobilestore`.`stores`
--

/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`storeid`,`storename`,`address`,`storemobileno`,`password`) VALUES 
 (1,'harshni stores','shimoga','9999999999','harshini'),
 (2,'ravish store','shimoga','1234567890','ravi');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
