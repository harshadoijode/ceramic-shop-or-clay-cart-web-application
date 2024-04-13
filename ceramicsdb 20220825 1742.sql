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
-- Create schema gfgc_ceramics
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_ceramics;
USE gfgc_ceramics;

--
-- Table structure for table `gfgc_ceramics`.`adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`adminuser`
--

/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` (`username`,`password`) VALUES 
 ('admin','admin');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`categoryname`) VALUES 
 ('plates'),
 ('tails'),
 ('Toys');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`customer`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`email`,`password`,`firstname`,`lastname`,`country`,`zip`,`state`,`address`,`question`,`answer`,`customerid`) VALUES 
 ('ravishkumar@gmail.com','dfgsdfgsdfg','fgsf','sfgs','sfgsdf','577777','sfgs','sfgsfd','sfdgdsf','dfsgdsf',1),
 ('ramesh@gmail.com','ramesh123','lokesh','kumar','india','577222','karnataka','shimoga','which is your best school','sports school',2),
 ('meghana@gmail.com','megha123','megha','mg','india','577201','karnataka','shimohs','where is air','everywhere',3),
 ('savi@gmail.com','savi1234','savi','kumar','india','577222','karnataka','shimoga','my school','vasavi',4);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_ceramics`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`place`,`feedback`) VALUES 
 ('ravi@gmail.com',NULL,'the college is good'),
 ('ravi','shimoga','nice shop to buy'),
 ('ravi','shimgoa','nice website for herbals ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification` (
  `email` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`notification`
--

/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`orderlist`
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`orderlist`
--

/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`product`
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
  `ptype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`discount`,`productid`,`storephone`,`gst`,`units`,`ptype`) VALUES 
 ('plates','plates','500','50','images/bin.png','nice plates','0',14,'1234567890','0',NULL,'Clay'),
 ('plates','plates','500','50','images/bin.png','asfasf','0',15,'1234567890','0',NULL,'Clay'),
 ('Toys','ceramic toys','600','78','images/bin2.png','asdfasdf','0',16,'1234567890','0',NULL,'Ceramic');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `productID` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`rating`
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
-- Table structure for table `gfgc_ceramics`.`shoprating`
--

DROP TABLE IF EXISTS `shoprating`;
CREATE TABLE `shoprating` (
  `shopname` varchar(50) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`shoprating`
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
 ('harshni stores',5),
 ('ravish store',5);
/*!40000 ALTER TABLE `shoprating` ENABLE KEYS */;


--
-- Table structure for table `gfgc_ceramics`.`stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `storemobileno` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`storeid`),
  UNIQUE KEY `storemobileno` (`storemobileno`),
  UNIQUE KEY `storename` (`storename`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_ceramics`.`stores`
--

/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`storeid`,`storename`,`address`,`storemobileno`,`password`,`status`) VALUES 
 (1,'harshni stores','shimoga','9999999999','harshini','Rejected'),
 (2,'ravish store','shimoga','1234567890','ravi','Rejected');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
