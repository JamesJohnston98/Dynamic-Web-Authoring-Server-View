-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 21, 2010 at 08:06 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `modulecode` char(6) NOT NULL,
  `modulename` char(30) DEFAULT NULL,
  `hoursperweek` tinyint(4) DEFAULT NULL,
  `totalweeks` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`modulecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`modulecode`, `modulename`, `hoursperweek`, `totalweeks`) VALUES
('COM137', 'Maths', 5, 12),
('COM147', 'Database', 3, 24),
('COM179', 'Web Technologies', 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentnum` char(9) NOT NULL,
  `firstname` char(15) DEFAULT NULL,
  `surname` char(20) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `coursename` char(30) DEFAULT NULL,
  PRIMARY KEY (`studentnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentnum`, `firstname`, `surname`, `age`, `email`, `coursename`) VALUES
('B00123456', 'David', 'Hall', 18, 'Hall-D3@ulster.ac.uk', 'BScICT'),
('B00234567', 'Jenna', 'Kane', 19, 'Kane-J5@ulster.ac.uk', 'BScCS'),
('B00345678', 'Sean', 'Maguire', 23, 'Maguire-S4@ulster.ac.uk', 'BScCS'),
('B00456789', 'Aine', 'Whyte', 20, 'Whyte-A8@ulster.ac.uk', 'BScICT'),
('B00567890', 'Gary', 'Gordon', 19, 'Gordon-G2@ulster.ac.uk', 'BScICT');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE IF NOT EXISTS `takes` (
  `modulecode` char(6) NOT NULL,
  `studentnum` char(9) NOT NULL,
  `cwmark` tinyint(4) DEFAULT NULL,
  `exammark` tinyint(4) DEFAULT NULL,
  `modulemark` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`modulecode`,`studentnum`),
  KEY `studentnum` (`studentnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`modulecode`, `studentnum`, `cwmark`, `exammark`, `modulemark`) VALUES
('COM137', 'B00234567', 63, 57, 60),
('COM137', 'B00345678', 70, 64, 67),
('COM147', 'B00123456', 56, 43, 50),
('COM147', 'B00234567', 69, 61, 65),
('COM147', 'B00345678', 79, 83, 81),
('COM147', 'B00456789', 71, 55, 63),
('COM147', 'B00567890', 51, 35, 43),
('COM179', 'B00123456', 48, NULL, 48),
('COM179', 'B00456789', 85, NULL, 85),
('COM179', 'B00567890', 50, NULL, 50);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`modulecode`) REFERENCES `module` (`modulecode`),
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`studentnum`) REFERENCES `student` (`studentnum`);