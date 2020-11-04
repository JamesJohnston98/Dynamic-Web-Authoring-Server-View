-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2018 at 10:22 AM
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
-- Database: `patients`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultant`
--

DROP TABLE IF EXISTS `consultant`;
CREATE TABLE IF NOT EXISTS `consultant` (
  `conscode` char(3) NOT NULL,
  `consname` char(12) DEFAULT NULL,
  `Speciality` char(12) DEFAULT NULL,
  PRIMARY KEY (`conscode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `Patnum` char(2) NOT NULL,
  `Patname` char(12) DEFAULT NULL,
  `Address` char(30) DEFAULT NULL,
  `Age` char(2) DEFAULT NULL,
  `WardNum` char(3) DEFAULT NULL,
  PRIMARY KEY (`Patnum`),
  KEY `WardNum` (`WardNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
CREATE TABLE IF NOT EXISTS `ward` (
  `WardNum` char(3) NOT NULL,
  `Wardtype` char(10) DEFAULT NULL,
  `Conscode` char(3) DEFAULT NULL,
  PRIMARY KEY (`WardNum`),
  KEY `Conscode` (`Conscode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
