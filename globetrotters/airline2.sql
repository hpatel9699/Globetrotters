-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 11:15 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline2`
--
CREATE DATABASE IF NOT EXISTS `airline2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `airline2`;

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--
-- Creation: Apr 23, 2020 at 03:02 PM
--

CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`ID`, `type`, `company`) VALUES
('1170', 'B738', 'Boeing'),
('1201', 'A320', 'Airbus'),
('1234', 'W754', 'IndiGo'),
('1407', 'A750', 'Spicejet'),
('987', 'A230', 'AirIndia');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--
-- Creation: Apr 23, 2020 at 03:10 PM
--

CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`code`, `name`, `city`, `state`, `country`) VALUES
('AMD', 'ahmedabad international', 'ahmedabad', 'Gujarat', 'INDIA'),
('BAN', 'banglore international', 'banglore', 'karnataka', 'INDIA'),
('CHN', 'chennai', 'chennai', 'chennai', 'INDIA'),
('DAL', 'Dallas Love Field', 'Dallas', 'Texas', 'USA'),
('DEL', 'Delhi international', 'Delhi', 'delhi', 'INDIA'),
('DFW', 'Dallas Fort Worth Airport', 'Dallas', 'Texas', 'USA'),
('GOA', 'goa international', 'goa', 'goa', 'INDIA'),
('HYD', 'hyderabad international', 'hyderabad', 'karnataka', 'INDIA'),
('JAI', 'jaipur international', 'jaipur', 'rajasthan', 'INDIA'),
('KOL', 'Kolkata international', 'Kolkata', 'kolkata', 'INDIA'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'California', 'USA'),
('LCK', 'lucknow international', 'lucknow', 'up', 'INDIA'),
('Mum', 'Mumbai international', 'Mumbai', 'Maharastra', 'INDIA'),
('PTN', 'patna', 'patna', 'bihar', 'INDIA'),
('PUN', 'pune international', 'pune', 'maharastra', 'INDIA'),
('SEA', 'Seattle-Tacoma International Airport', 'Seattle', 'Washington', 'USA'),
('SFO', 'San Francisco International', 'San Fransciso', 'California', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--
-- Creation: Apr 23, 2020 at 05:06 PM
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `date` int(11) NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `time`, `date`, `flightno`, `username`, `classtype`, `paid`) VALUES
(1, '2015-12-01 17:22:00', 2015, 'AA986', 'song', 'Economy', 0),
(2, '2015-12-01 17:23:00', 2015, 'AA986', 'song', 'Economy', 1),
(3, '2015-12-01 17:24:00', 2015, 'AA986', 'abc', 'Economy', 1),
(4, '2015-12-01 17:25:00', 2015, 'AA986', 'song', 'Business', 1),
(5, '2015-12-01 17:26:00', 2015, 'AA986', 'abc', 'Business', 1),
(6, '2015-12-01 17:27:00', 2015, 'AA986', 'abc', 'Business', 1),
(7, '2015-12-01 17:27:00', 2015, 'AA1512', 'song', 'Economy', 1),
(8, '2015-12-02 04:22:32', 2015, 'AA986', 'song', 'Economy', 0),
(9, '2015-12-02 04:26:29', 2015, 'AA120', 'song', 'Economy', 0),
(10, '2015-12-02 04:26:29', 2015, 'AA100', 'song', 'Economy', 0),
(11, '2015-12-02 04:27:36', 2015, 'AA1512', 'abc', 'Economy', 1),
(12, '2015-12-02 04:27:36', 2015, 'AA1512', 'abc', 'Economy', 1),
(13, '2015-12-02 05:55:15', 2015, 'AA1512', 'abc', 'Economy', 1),
(14, '2015-12-02 05:55:15', 2015, 'AA1512', 'abc', 'Economy', 1),
(15, '2015-12-02 05:57:27', 2015, 'AA1512', 'abc', 'Economy', 1),
(16, '2015-12-02 05:57:27', 2015, 'AA1512', 'abc', 'Economy', 1),
(17, '2015-12-02 05:58:11', 2015, 'AA1512', 'abc', 'Economy', 1),
(18, '2015-12-02 05:58:11', 2015, 'AA1512', 'abc', 'Economy', 1),
(19, '2015-12-02 06:05:52', 2015, 'AA6861', 'song', 'Economy', 0),
(20, '2015-12-02 11:46:57', 2015, 'AA100', 'song', 'Business', 0),
(21, '2015-12-02 11:56:31', 2015, 'AA986', 'song', 'Economy', 0),
(22, '2015-12-02 01:24:08', 2015, 'AA120', 'xianchu', 'Economy', 1),
(23, '2015-12-02 01:24:08', 2015, 'AA100', 'xianchu', 'Economy', 1),
(24, '2015-12-02 01:24:42', 2015, 'AA6861', 'xianchu', 'Economy', 1),
(25, '2015-12-02 01:26:46', 2015, 'AA986', 'xianchu', 'Economy', 1),
(26, '2015-12-02 01:26:46', 2013, 'AA986', 'xianchu', 'Economy', 1),
(27, '2015-12-02 02:34:02', 2015, 'AA986', 'song', 'Economy', 0),
(28, '2015-12-02 02:34:02', 2015, 'AA6927', 'song', 'Economy', 0),
(29, '2015-12-06 06:48:46', 2015, 'AA986', 'abc', 'Economy', 1),
(30, '2015-12-06 07:26:56', 2015, 'AA1512', 'qun', 'Economy', 0),
(32, '2015-12-06 07:27:20', 2015, 'AA6861', 'qun', 'Economy', 0),
(34, '2015-12-06 10:04:30', 2015, 'AA120', 'abc', 'Economy', 1),
(45, '2015-12-07 01:46:49', 2015, 'AA986', 'tao', 'Economy', 1),
(54, '2015-12-07 02:12:07', 2015, 'AA100', 'tao', 'Economy', 1),
(55, '2015-12-07 02:13:40', 2015, 'AA100', 'tao', 'Economy', 0),
(56, '2015-12-07 12:50:44', 2015, 'AA180', 'abc', 'Economy', 1),
(60, '2015-12-07 12:57:53', 2015, 'AA100', 'abc', 'Economy', 1),
(61, '2015-12-07 01:50:05', 2015, 'AA600', 'eve', 'Economy', 1),
(63, '2015-12-07 01:53:03', 2015, 'AA100', 'eve', 'Economy', 1),
(66, '2015-12-07 01:55:51', 2015, 'AA986', 'eve', 'Business', 1),
(67, '2015-12-07 01:55:51', 2015, 'AA1512', 'eve', 'Business', 1),
(68, '2020-04-24 03:18:46', 2015, 'AA100', 'abc', 'Economy', 1),
(69, '2020-04-24 03:31:27', 2020, 'AA100', 'hetvi', 'Economy', 1),
(70, '2020-04-24 03:32:09', 2020, 'AA80', 'hetvi', 'Business', 1),
(71, '2020-04-24 03:49:26', 2020, 'AA120', 'vatsal', 'Economy', 1),
(72, '2020-04-24 04:00:28', 2020, 'AA100', 'vatsal', 'Economy', 1),
(73, '2020-04-24 08:21:39', 2020, 'AA6927', 'hetvi', 'Business', 1),
(74, '2020-04-24 10:44:48', 2022, 'AA100', 'shiv', 'Economy', 1),
(75, '2020-04-24 11:15:58', 2020, 'AA120', 'hetvi', 'Economy', 1),
(76, '2020-04-25 02:30:11', 2020, 'AA100', 'hetvi', 'Economy', 1),
(77, '2020-04-25 02:53:51', 2020, 'AA120', 'hetvi', 'Economy', 1),
(78, '2020-04-25 03:02:57', 2020, 'AA100', 'hetvi', 'Economy', 1),
(79, '2020-04-25 08:25:35', 2020, 'AA6927', 'hetvi', 'Business', 1),
(80, '2020-04-25 10:34:43', 2020, 'AA100', 'hetvi', 'Business', 1),
(81, '2020-04-25 10:40:31', 2020, 'AA986', 'hetvi', 'Economy', 1),
(82, '2020-04-25 11:31:14', 2020, 'AA180', 'hetvi', 'Business', 1),
(83, '2020-04-25 11:35:01', 2020, 'AA600', 'hetvi', 'Business', 1),
(84, '0000-00-00 00:00:00', 2020, 'AA100', 'abc', 'economy', 1),
(85, '2020-04-26 12:54:41', 2020, 'AD123', 'hetvi', 'Economy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `carshow`
--
-- Creation: Apr 26, 2020 at 07:17 AM
--

CREATE TABLE `carshow` (
  `car_id` int(10) NOT NULL,
  `car_type` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `rent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carshow`
--

INSERT INTO `carshow` (`car_id`, `car_type`, `company`, `rent`) VALUES
(1, '2-3 door', 'TATA', 100),
(2, '4-5 door', 'TATA', 50),
(3, 'Passenger van', 'TATA', 90),
(4, '2-3 door', 'Hyundai', 70),
(5, '4-5 door', 'Hyundai', 70),
(6, 'Passanger van', 'Hyundai', 70),
(7, 'SUV', 'Hyundai', 90),
(8, '2-3 door', 'ford', 80),
(9, '4-5 door', 'ford', 80),
(10, 'SUV', 'ford', 90),
(11, '2-3 door', 'toyota', 50),
(12, '4-5 door', 'toyota', 80),
(13, 'SUV', 'toyota', 90),
(14, '2-3 door', 'kia', 80),
(15, '4-5 door', 'kia', 95),
(16, 'covertible', 'Audi', 150),
(17, 'Passenger van', 'volvo', 80),
(18, '4-5 door', 'volkswagen', 95);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--
-- Creation: Apr 24, 2020 at 06:11 AM
--

CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`number`, `name`, `capacity`, `price`) VALUES
('AA100', 'Business', 5, 500),
('AA100', 'Economy', 200, 180),
('AA120', 'Business', 15, 4000),
('AA120', 'Economy', 100, 1000),
('AA123', 'business', 78, 90),
('AA123', 'Economy', 45, 100),
('AA1512', 'Business', 1, 200),
('AA1512', 'Economy', 100, 100),
('AA180', 'Business', 15, 800),
('AA180', 'Economy', 100, 240),
('AA181', 'Business', 10, 200),
('AA181', 'Economy', 100, 100),
('AA567', 'Business', 45, 90),
('AA567', 'Economy', 67, 800),
('AA600', 'Business', 5, 200),
('AA600', 'Economy', 80, 50),
('AA601', 'Business', 3, 300),
('AA601', 'Economy', 50, 60),
('AA6861', 'Business', 3, 100),
('AA6861', 'Economy', 100, 40),
('AA6927', 'Business', 10, 100),
('AA6927', 'Economy', 200, 40),
('AA80', 'Business', 3, 200),
('AA80', 'Economy', 80, 50),
('AA90', 'Business', 67, 70),
('AA90', 'Economy', 34, 80),
('AA986', 'Business', 8, 400),
('AA986', 'Economy', 120, 120),
('AB123', 'Business', 56, 90),
('AB123', 'Economy', 67, 1000),
('AB567', 'Business', 90, 900),
('AB567', 'Economy', 34, 80),
('AC123', 'Business', 90, 600),
('AC123', 'Economy', 89, 1000),
('AC456', 'Business', 90, 900),
('AC456', 'Economy', 89, 90),
('AC789', 'Business', 89, 900),
('AC789', 'Economy', 90, 1000),
('AD123', 'Business', 70, 50),
('AD123', 'Economy', 80, 75),
('AD456', 'Business', 56, 900),
('AD456', 'Economy', 78, 90);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--
-- Creation: Apr 24, 2020 at 06:16 AM
--

CREATE TABLE `flight` (
  `number` varchar(20) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `a_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`number`, `airplane_id`, `departure`, `d_time`, `arrival`, `a_time`) VALUES
('1234', 'AA567', 'MUM', '22:00:00', 'BAN', '05:10:00'),
('AA100', '1201', 'LAX', '18:35:00', 'SEA', '21:00:00'),
('AA120', '1201', 'DFW', '14:35:00', 'LAX', '17:30:00'),
('AA123', '1234', 'DELHI', '22:03:00', 'JAIPUR', '15:00:00'),
('AA1512', '1170', 'SEA', '13:40:00', 'DFW', '19:30:00'),
('AA180', '1201', 'DFW', '07:35:00', 'SFO', '10:30:00'),
('AA181', '1170', 'SFO', '19:30:00', 'DFW', '22:00:00'),
('AA600', '1201', 'DAL', '17:00:00', 'SEA', '21:00:00'),
('AA601', '1201', 'SEA', '20:00:00', 'DAL', '23:00:00'),
('AA6861', '1201', 'SFO', '11:00:00', 'SEA', '13:00:00'),
('AA6927', '1201', 'SEA', '17:00:00', 'SFO', '19:00:00'),
('AA80', '1170', 'LAX', '20:00:00', 'DFW', '23:00:00'),
('AA90', '1234', 'GOA', '14:15:09', 'JAI', '08:00:00'),
('AA986', '1170', 'DFW', '10:00:00', 'SEA', '14:00:00'),
('AB123', '1407', 'KOL', '14:00:00', 'PUN', '15:00:00'),
('AB567', '1407', 'HYD', '12:07:00', 'CHN', '15:00:00'),
('AC123', '987', 'AMD', '14:00:00', 'MUM', '15:00:00'),
('AC456', '1407', 'HYD', '12:00:00', 'CHN', '15:00:00'),
('AC789', '1407', 'BAN', '12:00:00', 'JAI', '18:00:00'),
('AD123', '1407', 'PTN', '12:00:00', 'LCK', '14:00:00'),
('AD456', '987', 'AMD', '10:00:00', 'DEL', '16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `passanger`
--
-- Creation: Apr 24, 2020 at 06:21 AM
--

CREATE TABLE `passanger` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passanger`
--

INSERT INTO `passanger` (`username`, `firstname`, `middlename`, `lastname`, `email`, `cellphone`, `gender`, `birthday`, `password`) VALUES
('', '', '', '', '', '', '', '0000-00-00', ''),
('abc', 'abc', NULL, '', 'abc@utd.edu', NULL, NULL, NULL, 'abcdef123456'),
('eve', 'eve', '', 'adi', 'eve@utd.edu', '2143456543', '', '0000-00-00', 'Eve123'),
('Het', 'Het', 'D', 'Patel', 'hetvi@gmail.com', '987654310', 'Female', '2020-04-13', 'Het123456'),
('hetvi', 'Hetvi', '', 'Patel', 'hetvi@gmail.com', '9876543210', 'Female', '1999-06-09', 'Hetvi0609'),
('qun', 'Qun', NULL, 'Niu', 'qun@utd.edu', '', 'Female', NULL, 'Niuqun1'),
('shiv', 'Shiv', 'Dharmendrabhai', 'Patel', 'shilu6320@gmail.com', '123456789', 'Male', '2020-03-06', 'Abc123'),
('song', 'Song', NULL, 'Tao', 'ts@utd.edu', NULL, 'Male', NULL, 'Songtao1'),
('tao', 's', '', 't', 't@utd.edu', '987654321', '', '2015-12-06', 'Ts123456'),
('vatsal', 'Vatsal', '', 'Patel', 'vatsal@gmail.com', '9876543210', 'Male', '2004-09-07', 'Vatsal123'),
('web', 'web', '', 'pro', 'web@utd.edu', '9998887777', '', '2015-12-06', 'Web123'),
('xianchu', 'xianchu', NULL, 'chen', 'xian@utd.edu', '', 'Male', NULL, 'Xianchu1'),
('xyz', 'X', '', 'Y', 'xyz@gmail.com', '7894561230', 'Female', '0000-00-00', 'Xyz123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`,`flightno`);

--
-- Indexes for table `carshow`
--
ALTER TABLE `carshow`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`number`,`name`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `passanger`
--
ALTER TABLE `passanger`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `carshow`
--
ALTER TABLE `carshow`
  MODIFY `car_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
