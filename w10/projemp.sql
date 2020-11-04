-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2014 at 09:03 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `dno` char(3) NOT NULL,
  `dname` char(12) DEFAULT NULL,
  `location` char(12) DEFAULT NULL,
  PRIMARY KEY (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dno`, `dname`, `location`) VALUES
('d1', 'information', 'lisburn'),
('d2', 'systems', 'belfast'),
('d3', 'engineering', 'belfast'),
('d4', 'maintenance', 'bangor');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE IF NOT EXISTS `emp` (
  `eno` char(3) NOT NULL,
  `ename` char(12) DEFAULT NULL,
  `salary` decimal(7,2) DEFAULT NULL,
  `supno` char(3) DEFAULT NULL,
  `dno` char(3) NOT NULL,
  PRIMARY KEY (`eno`),
  KEY `dno` (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`eno`, `ename`, `salary`, `supno`, `dno`) VALUES
('e1', 'armstrong', '24000.00', '', 'd1'),
('e10', 'jones', '48000.00', 'e1', 'd3'),
('e11', 'kelly', '28000.00', 'e7', 'd2'),
('e12', 'mccoy', '33000.00', 'e3', 'd1'),
('e13', 'neeson', '48000.00', 'e19', 'd1'),
('e14', 'oliver', '26000.00', 'e17', 'd3'),
('e15', 'pearse', '20000.00', 'e21', 'd1'),
('e16', 'quinn', '33000.00', 'e2', 'd1'),
('e17', 'roberts', '21000.00', 'e4', 'd3'),
('e18', 'smyth', '33000.00', 'e21', 'd3'),
('e19', 'trainor', '33000.00', 'e7', 'd1'),
('e2', 'breen', '20000.00', 'e4', 'd3'),
('e20', 'urquhart', '19000.00', 'e11', 'd3'),
('e21', 'vance', '15000.00', 'e10', 'd1'),
('e3', 'carroll', '18000.00', 'e10', 'd3'),
('e4', 'deehan', '50000.00', 'e1', 'd1'),
('e5', 'evans', '38000.00', 'e11', 'd1'),
('e6', 'flynn', '24000.00', 'e17', 'd1'),
('e7', 'greer', '16000.00', 'e1', 'd2'),
('e8', 'hamill', '25000.00', 'e3', 'd1'),
('e9', 'irwin', '23000.00', 'e2', 'd2');



-- --------------------------------------------------------

--
-- Table structure for table `proj`
--

CREATE TABLE IF NOT EXISTS `proj` (
  `pno` char(3) NOT NULL,
  `pname` char(12) DEFAULT NULL,
  `ptype` char(12) DEFAULT NULL,
  `budget` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proj`
--

INSERT INTO `proj` (`pno`, `pname`, `ptype`, `budget`) VALUES
('p13', 'payroll', 'access', '52000.00'),
('p15', 'database', 'access', '54000.00'),
('p19', 'graphics', 'c', '65000.00'),
('p23', 'registration', 'access', '79000.00'),
('p26', 'examination', 'c', '69000.00'),
('p30', 'information', 'java', '43000.00');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `eno` char(3) NOT NULL,
  `pno` char(3) NOT NULL,
  `role` char(15) DEFAULT NULL,
  PRIMARY KEY (`eno`,`pno`),
  KEY `eno` (`eno`),
  KEY `pno` (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`eno`, `pno`, `role`) VALUES
('e1', 'p19', 'consultant'),
('e1', 'p23', 'consultant'),
('e10', 'p15', 'manager'),
('e11', 'p19', 'administrator'),
('e12', 'p23', 'consultant'),
('e12', 'p26', 'administrator'),
('e13', 'p23', 'manager'),
('e14', 'p23', 'engineer'),
('e14', 'p26', 'analyst'),
('e15', 'p13', 'programmer'),
('e15', 'p19', 'programmer'),
('e15', 'p26', 'programmer'),
('e16', 'p19', 'manager'),
('e16', 'p23', 'manager'),
('e17', 'p13', 'analyst'),
('e17', 'p19', 'programmer'),
('e18', 'p13', 'consultant'),
('e18', 'p23', 'analyst'),
('e18', 'p26', 'consultant'),
('e19', 'p15', 'analyst'),
('e19', 'p19', 'consultant'),
('e2', 'p15', 'engineer'),
('e20', 'p15', 'engineer'),
('e20', 'p19', 'engineer'),
('e21', 'p13', 'programmer'),
('e21', 'p23', 'programmer'),
('e21', 'p26', 'programmer'),
('e3', 'p19', 'programmer'),
('e3', 'p26', 'engineer'),
('e4', 'p26', 'manager'),
('e5', 'p13', 'manager'),
('e6', 'p19', 'consultant'),
('e6', 'p26', 'analyst'),
('e7', 'p13', 'administrator'),
('e7', 'p15', 'administrator'),
('e8', 'p13', 'programmer'),
('e8', 'p23', 'analyst'),
('e9', 'p13', 'programmer'),
('e9', 'p19', 'consultant');

--
-- Constraints for dumped tables
--



--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `dept` (`dno`);

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_ibfk_1` FOREIGN KEY (`eno`) REFERENCES `emp` (`eno`),
  ADD CONSTRAINT `works_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `proj` (`pno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
