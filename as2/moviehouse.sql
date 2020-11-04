-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2019 at 12:52 PM
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
-- Database: `moviehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `ActorID` smallint(6) NOT NULL,
  `FirstName` char(20) DEFAULT NULL,
  `Surname` char(20) DEFAULT NULL,
  `Salary` smallint(6) DEFAULT NULL,
  `FilmID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ActorID`),
  KEY `FilmID` (`FilmID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`ActorID`, `FirstName`, `Surname`, `Salary`, `FilmID`) VALUES
(101, 'Bryce', 'Dallas Howard', 2000, 201),
(102, 'Jenifer', 'Connoly', 1200, 202),
(103, 'Kenneth', 'Choi', 3000, 203),
(104, 'Tyler', 'Labine', 2300, 204),
(105, 'Samuel', 'El Jackson', 5000, 205),
(106, 'Viggo', 'Mortensen', 3000, 206),
(107, 'Steve', 'Coogan', 2300, 207),
(108, 'Danny', 'De Vitto', 2500, 210),
(109, 'Brie', 'Larson', 5000, 208);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `BookingID` smallint(6) NOT NULL,
  `FilmID` smallint(6) DEFAULT NULL,
  `CustomerID` smallint(6) DEFAULT NULL,
  `CinemaID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `FilmID` (`FilmID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `CinemaID` (`CinemaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`BookingID`, `FilmID`, `CustomerID`, `CinemaID`) VALUES
(401, 201, 302, 1),
(402, 202, 301, 2),
(403, 211, 304, 1),
(404, 209, 303, 5),
(405, 203, 308, 5),
(406, 208, 301, 1),
(407, 210, 303, 3),
(408, 207, 307, 1),
(409, 208, 310, 1),
(410, 211, 309, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

DROP TABLE IF EXISTS `cinema`;
CREATE TABLE IF NOT EXISTS `cinema` (
  `CinemaID` smallint(6) NOT NULL,
  `CinemaName` char(30) DEFAULT NULL,
  PRIMARY KEY (`CinemaID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`CinemaID`, `CinemaName`) VALUES
(1, 'Coleraine'),
(2, 'Maghera'),
(3, 'Glengormley'),
(4, 'City Side'),
(5, 'Dublin Road');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` smallint(6) NOT NULL,
  `FirstName` char(20) DEFAULT NULL,
  `Surname` char(20) DEFAULT NULL,
  `Address` char(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `Surname`, `Address`) VALUES
(301, 'James', 'Johnston', 'Armagh'),
(302, 'Andrew', 'McCullagh', 'Armagh'),
(303, 'Romano', 'Malocca', 'Armagh'),
(304, 'Hans', 'Johnston', 'Belfast'),
(305, 'Jordan', 'Hinks', 'Keady'),
(306, 'Jim', 'Jones', 'Newry'),
(307, 'Alan', 'Magwood', 'Glengormley'),
(308, 'Mina', 'McCall', 'Coleraine'),
(309, 'Sadie', 'Johnston', 'Coleraine'),
(310, 'Calvin', 'Hughes', 'Belfast');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `FilmID` smallint(6) NOT NULL,
  `FilmName` char(20) DEFAULT NULL,
  `Screen` smallint(6) DEFAULT NULL,
  `CinemaID` smallint(6) DEFAULT NULL,
  `ActorID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`FilmID`),
  KEY `CinemaID` (`CinemaID`),
  KEY `ActorID` (`ActorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`FilmID`, `FilmName`, `Screen`, `CinemaID`, `ActorID`) VALUES
(201, 'A Dogs Way Home', 3, 4, 101),
(202, 'Alita: Battle Angel', 1, 1, 102),
(203, 'Bumblebee', 3, 4, 103),
(204, 'Escape Room', 2, 3, 104),
(205, 'Glass', 4, 4, 105),
(206, 'Green Book', 5, 5, 106),
(207, 'Stan & Ollie', 5, 2, 107),
(208, 'Captain Marvel', 6, 3, 105),
(209, 'Avengers End Game', 7, 1, 105),
(210, 'Dumbo', 7, 2, 108),
(211, 'Aquaman', 8, 1, 101),
(212, 'New Mutants', 1, 2, 106),
(213, 'X-Men Dark Phoenix', 6, 3, 105),
(214, 'The Grinch', 4, 2, 101),
(215, 'Kong Skull Island', 6, 5, 109),
(216, 'Happy Death Day 2U', 1, 2, 101),
(217, 'Greatest Showman', 3, 4, 101),
(218, 'Halloween', 4, 1, 107),
(219, 'Mary Poppins Returns', 2, 4, 101),
(220, 'Lego Movie 2', 3, 2, 107);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`CinemaID`) REFERENCES `cinema` (`CinemaID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`FilmID`) REFERENCES `movies` (`FilmID`) ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`CinemaID`) REFERENCES `cinema` (`CinemaID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `actors` (`ActorID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
