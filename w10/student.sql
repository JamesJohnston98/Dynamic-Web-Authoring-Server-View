-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2018 at 11:47 AM
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
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE IF NOT EXISTS `lecturer` (
  `Lid` char(3) NOT NULL,
  `Lname` char(13) DEFAULT NULL,
  `Office` char(4) DEFAULT NULL,
  `Tel` int(11) DEFAULT NULL,
  PRIMARY KEY (`Lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `MCode` char(3) NOT NULL,
  `title` char(10) DEFAULT NULL,
  `Campus` char(15) DEFAULT NULL,
  PRIMARY KEY (`MCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Sid` char(3) NOT NULL,
  `Sname` char(12) DEFAULT NULL,
  `Address` char(30) DEFAULT NULL,
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
CREATE TABLE IF NOT EXISTS `takes` (
  `Sid` char(3) NOT NULL,
  `MCode` char(3) NOT NULL,
  PRIMARY KEY (`Sid`,`MCode`),
  KEY `MCode` (`MCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

DROP TABLE IF EXISTS `teach`;
CREATE TABLE IF NOT EXISTS `teach` (
  `Lid` char(3) NOT NULL,
  `MCode` char(3) NOT NULL,
  `timeofclass` time DEFAULT NULL,
  `classroom` char(4) DEFAULT NULL,
  PRIMARY KEY (`Lid`,`MCode`),
  KEY `MCode` (`MCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`Sid`) REFERENCES `student` (`Sid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`MCode`) REFERENCES `module` (`MCode`) ON UPDATE CASCADE;

--
-- Constraints for table `teach`
--
ALTER TABLE `teach`
  ADD CONSTRAINT `teach_ibfk_1` FOREIGN KEY (`Lid`) REFERENCES `lecturer` (`Lid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `teach_ibfk_2` FOREIGN KEY (`MCode`) REFERENCES `module` (`MCode`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
