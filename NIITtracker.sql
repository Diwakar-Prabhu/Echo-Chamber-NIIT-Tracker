-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 03, 2020 at 07:17 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NIIT tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `Type` varchar(50) NOT NULL,
  `Event_Name` varchar(100) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Time` varchar(20) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Extra_Info` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Events`
--

INSERT INTO `Events` (`Type`, `Event_Name`, `Date`, `Time`, `Location`, `Extra_Info`) VALUES
('webinars', 'webinar on cloud computing', '01/06/2020', '5:30pm', 'Auditorium', 'this is being conducted by our very own csc prof rao'),
('Seminar', 'Seminar on biotechnology of the future', '02/06/2020', '6:30pm', 'auditorium', 'being conducted by prof sunil varma'),
('sports', 'cricket match', '06/06/2020', '6:00am', 'cricket ground', 'an inter house match between green and orange house'),
('Seminar', 'Machine Learning', '15/07/20', '3:00pm', 'Auditorium', 'Seminar by ML expert Andrew NG');

-- --------------------------------------------------------

--
-- Table structure for table `Laundry`
--

CREATE TABLE `Laundry` (
  `No_of_Clothes` int(20) DEFAULT NULL,
  `Card_No` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Laundry`
--

INSERT INTO `Laundry` (`No_of_Clothes`, `Card_No`) VALUES
(11, 3524),
(15, 3470),
(13, 3519),
(1, 3524),
(23, 3470),
(23, 3470),
(34, 3519),
(34, 3519),
(34, 3519),
(34, 3519),
(1, 3524),
(2, 34),
(1, 123),
(2, 123),
(3, 123),
(1, 123);

-- --------------------------------------------------------

--
-- Table structure for table `Sports_Items`
--

CREATE TABLE `Sports_Items` (
  `ItemName` varchar(20) NOT NULL,
  `Count` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Sports_Items`
--

INSERT INTO `Sports_Items` (`ItemName`, `Count`) VALUES
('Basketball', 4),
('Volleyball', 4),
('Cricket kits', 0),
('Football', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(50) NOT NULL,
  `Enrollment_ID` varchar(15) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Card_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `Enrollment_ID`, `Phone`, `Card_NO`) VALUES
('ghf', '1234', '675765456', 34),
('rocky', '1234', '9000000000', 123),
('Prabhu', 'BT18176', '9000001968', 700),
('Maddy', 'BT1892', '9121885070', 3470),
('Chip', 'BT1857', '9705646297', 3519),
('Nick', 'BT1807', '7093041968', 3524);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Laundry`
--
ALTER TABLE `Laundry`
  ADD KEY `Card_No` (`Card_No`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Card_NO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Laundry`
--
ALTER TABLE `Laundry`
  ADD CONSTRAINT `Laundry_ibfk_1` FOREIGN KEY (`Card_No`) REFERENCES `student` (`Card_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
