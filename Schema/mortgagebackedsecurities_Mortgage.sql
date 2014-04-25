CREATE DATABASE  IF NOT EXISTS `mortgagebackedsecurities` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mortgagebackedsecurities`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: mysql.wpi.edu    Database: mortgagebackedsecurities
-- ------------------------------------------------------
-- Server version	5.5.27-log

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
-- Table structure for table `Mortgage`
--

DROP TABLE IF EXISTS `Mortgage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mortgage` (
  `MortID` varchar(15) NOT NULL DEFAULT '',
  `PropLocID` varchar(15) DEFAULT NULL,
  `MortgageVal` double DEFAULT NULL,
  `MortHoldID` char(30) DEFAULT NULL,
  `DeedRef` varchar(30) DEFAULT NULL,
  `MortLenderID` varchar(15) DEFAULT NULL,
  `IntRate` double DEFAULT NULL,
  `Maturity` date DEFAULT NULL,
  `Delinquency` int(11) DEFAULT NULL,
  `mbsID` varchar(30) DEFAULT NULL,
  `ForeclosureStatus` varchar(30) DEFAULT NULL,
  `TotalPrepayment` double DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MortID`),
  KEY `mbsID` (`mbsID`),
  CONSTRAINT `Mortgage_ibfk_1` FOREIGN KEY (`mbsID`) REFERENCES `mbs` (`mbsID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-24 23:12:26
