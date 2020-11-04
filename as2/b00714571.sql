-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 15, 2019 at 04:26 PM
-- Server version: 5.6.11-log
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b00714571`
--

-- --------------------------------------------------------

--
-- Table structure for table `actormovies`
--

CREATE TABLE `actormovies` (
  `FilmID` smallint(6) NOT NULL,
  `ActorID` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actormovies`
--

INSERT INTO `actormovies` (`FilmID`, `ActorID`) VALUES
(205, 105),
(206, 106),
(207, 107),
(201, 101),
(204, 104),
(202, 102),
(208, 105),
(210, 108);

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `ActorID` smallint(6) NOT NULL,
  `firstname` char(20) NOT NULL,
  `surname` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`ActorID`, `firstname`, `surname`) VALUES
(101, 'Bryce', 'Dallas Howard'),
(102, 'Jenifer', 'Connoly'),
(103, 'Kenneth', 'Choi'),
(104, 'Tyler', 'Labine'),
(105, 'Samuel', 'El Jackson'),
(106, 'Viggo', 'Mortensen'),
(107, 'Steve', 'Coogan'),
(108, 'Danny', 'De Vitto');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `BookingID` smallint(6) NOT NULL,
  `CinemaID` smallint(6) NOT NULL,
  `FilmID` smallint(6) NOT NULL,
  `CustomerID` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`BookingID`, `CinemaID`, `FilmID`, `CustomerID`) VALUES
(401, 1, 201, 302),
(402, 2, 202, 301),
(403, 1, 211, 304),
(404, 5, 209, 303),
(405, 5, 203, 308),
(406, 1, 208, 301),
(407, 3, 210, 303),
(408, 1, 207, 307);

-- --------------------------------------------------------

--
-- Table structure for table `cinema`
--

CREATE TABLE `cinema` (
  `CinemaID` smallint(6) NOT NULL,
  `cinemaname` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cinema`
--

INSERT INTO `cinema` (`CinemaID`, `cinemaname`) VALUES
(1, 'Coleraine'),
(2, 'Maghera'),
(3, 'Glengormley'),
(4, 'City Side'),
(5, 'Dublin Road');

-- --------------------------------------------------------

--
-- Table structure for table `cinemashows`
--

CREATE TABLE `cinemashows` (
  `CinemaID` smallint(6) NOT NULL,
  `FilmID` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cinemashows`
--

INSERT INTO `cinemashows` (`CinemaID`, `FilmID`) VALUES
(1, 201),
(1, 205),
(2, 204),
(2, 212),
(3, 203),
(3, 207),
(4, 210),
(5, 209),
(5, 201),
(4, 202),
(3, 201);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` smallint(6) NOT NULL,
  `firstname` char(20) NOT NULL,
  `surname` char(20) NOT NULL,
  `address` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `firstname`, `surname`, `address`) VALUES
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

CREATE TABLE `movies` (
  `FilmID` smallint(6) NOT NULL,
  `filmname` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`FilmID`, `filmname`) VALUES
(201, 'A Dogs Way Home'),
(202, 'Alita: Battle Angel'),
(203, 'Bumblebee'),
(204, 'Escape Room'),
(205, 'Glass'),
(206, 'Green Book'),
(207, 'Stan & Ollie'),
(208, 'Captain Marvel'),
(209, 'Avengers End Game'),
(210, 'Dumbo'),
(211, 'Aquaman'),
(212, 'New Mutants'),
(213, 'X-Men Dark Phoenix');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actormovies`
--
ALTER TABLE `actormovies`
  ADD KEY `FilmID` (`FilmID`),
  ADD KEY `ActorID` (`ActorID`);

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`ActorID`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `CinemaID` (`CinemaID`),
  ADD KEY `FilmID` (`FilmID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `cinema`
--
ALTER TABLE `cinema`
  ADD PRIMARY KEY (`CinemaID`);

--
-- Indexes for table `cinemashows`
--
ALTER TABLE `cinemashows`
  ADD KEY `FilmID` (`FilmID`),
  ADD KEY `CinemaID` (`CinemaID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`FilmID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actormovies`
--
ALTER TABLE `actormovies`
  ADD CONSTRAINT `actormovies_ibfk_1` FOREIGN KEY (`FilmID`) REFERENCES `movies` (`FilmID`),
  ADD CONSTRAINT `actormovies_ibfk_2` FOREIGN KEY (`ActorID`) REFERENCES `actors` (`ActorID`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`CinemaID`) REFERENCES `cinema` (`CinemaID`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`FilmID`) REFERENCES `movies` (`FilmID`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `cinemashows`
--
ALTER TABLE `cinemashows`
  ADD CONSTRAINT `cinemashows_ibfk_1` FOREIGN KEY (`FilmID`) REFERENCES `movies` (`FilmID`),
  ADD CONSTRAINT `cinemashows_ibfk_2` FOREIGN KEY (`CinemaID`) REFERENCES `cinema` (`CinemaID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
