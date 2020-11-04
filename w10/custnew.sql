-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2018 at 11:58 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustCode` char(3) NOT NULL,
  `CustName` char(12) DEFAULT NULL,
  `Address` char(30) DEFAULT NULL,
  PRIMARY KEY (`CustCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustCode`, `CustName`, `Address`) VALUES
('C1', 'James', '33 Edenaveys Crescent'),
('C2', 'Mina', '1 Edenaveys Gardens');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `ItemCode` char(3) NOT NULL,
  `ItemName` char(12) DEFAULT NULL,
  `UnitCost` int(11) DEFAULT NULL,
  PRIMARY KEY (`ItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemCode`, `ItemName`, `UnitCost`) VALUES
('I1', 'Echo Dot', 50),
('I2', 'PS4', 250);

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
CREATE TABLE IF NOT EXISTS `orderline` (
  `ONumber` char(3) NOT NULL,
  `ItemCode` char(3) NOT NULL,
  `Qunatity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ONumber`,`ItemCode`),
  KEY `ItemCode` (`ItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderline`
--

INSERT INTO `orderline` (`ONumber`, `ItemCode`, `Qunatity`) VALUES
('02', 'I2', 1),
('o1', 'I1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ONumber` char(3) NOT NULL,
  `ODate` date DEFAULT NULL,
  `CustCode` char(3) NOT NULL,
  PRIMARY KEY (`ONumber`),
  KEY `CustCode` (`CustCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ONumber`, `ODate`, `CustCode`) VALUES
('001', '2018-11-29', 'c1'),
('002', '2018-11-28', 'c2');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderline`
--
ALTER TABLE `orderline`
  ADD CONSTRAINT `orderline_ibfk_1` FOREIGN KEY (`ItemCode`) REFERENCES `item` (`ItemCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustCode`) REFERENCES `customer` (`CustCode`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
