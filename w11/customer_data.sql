-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2018 at 10:45 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer_data`
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
('101', 'J WHITE', 'Belfast'),
('102', 'B McCann', 'Omagh'),
('103', 'E Smyth', 'Belfast'),
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
('1', 'BIRO', 1),
('2', 'PAD', 2),
('3', 'DIARY', 5),
('4', 'STAPLER', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
CREATE TABLE IF NOT EXISTS `orderline` (
  `ONumber` char(3) NOT NULL,
  `ItemCode` char(3) DEFAULT NULL,
  `Qunatity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ONumber`),
  KEY `ItemCode` (`ItemCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderline`
--

INSERT INTO `orderline` (`ONumber`, `ItemCode`, `Qunatity`) VALUES
('523', '3', 5),
('524', '2', 12),
('525', '2', 5),
('526', '1', 20),
('527', '2', 10);

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
('002', '2018-11-28', 'c2'),
('523', '2015-05-12', '101'),
('524', '2015-05-12', '102'),
('525', '2015-05-15', '103'),
('526', '2015-05-17', '101'),
('527', '2015-05-17', '102');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustCode`) REFERENCES `customer` (`CustCode`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
