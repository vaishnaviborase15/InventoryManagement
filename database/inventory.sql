-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2026 at 06:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(36);

-- --------------------------------------------------------

--
-- Table structure for table `issueprocessed`
--

CREATE TABLE `issueprocessed` (
  `ipid` int(11) NOT NULL,
  `ipname` varchar(255) DEFAULT NULL,
  `ipquantity` float NOT NULL,
  `pdate` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueprocessed`
--

INSERT INTO `issueprocessed` (`ipid`, `ipname`, `ipquantity`, `pdate`, `pid`, `pname`, `ptime`) VALUES
(1, 'Swamini Patil', 100, '2024-07-26', 2, 'Copper wire', '12:00'),
(2, 'Yash Borase', 100, '2024-08-23', 4, 'Oil', '12:36');

-- --------------------------------------------------------

--
-- Table structure for table `issueraw`
--

CREATE TABLE `issueraw` (
  `irid` int(11) NOT NULL,
  `irname` varchar(255) DEFAULT NULL,
  `irquantity` float NOT NULL,
  `rdate` varchar(255) DEFAULT NULL,
  `rid` int(11) NOT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `rtime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueraw`
--

INSERT INTO `issueraw` (`irid`, `irname`, `irquantity`, `rdate`, `rid`, `rname`, `rtime`) VALUES
(1, 'Jagruti Desale', 100, '2024-07-31', 3, 'Plastic', '17:10'),
(3, 'Vaishnavi Borase', 500, '2024-08-30', 1, 'Bottles', '22:33'),
(4, 'Gauresh Suryavanshi', 7, '2024-08-10', 3, 'Plastic', '23:11');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`email`, `password`) VALUES
('admin@gmail.com', 'vaishu');

-- --------------------------------------------------------

--
-- Table structure for table `processeditem`
--

CREATE TABLE `processeditem` (
  `pid` int(11) NOT NULL,
  `pcost` float NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `pquantity` float NOT NULL,
  `punit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processeditem`
--

INSERT INTO `processeditem` (`pid`, `pcost`, `pname`, `pquantity`, `punit`) VALUES
(1, 90.55, 'Steel', 0, 'kg'),
(2, 27.3, 'Copper wire', 250, 'kg'),
(3, 22, 'Remote', 200, 'kg'),
(4, 77, 'Oil', 0, 'kg'),
(5, 10, 'Paper Bags', 1000, 'pcs'),
(6, 0.5, 'Paper Dish', 1000, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `rawmaterial`
--

CREATE TABLE `rawmaterial` (
  `rid` int(11) NOT NULL,
  `rcost` float NOT NULL,
  `rname` varchar(255) DEFAULT NULL,
  `rquantity` float NOT NULL,
  `runit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rawmaterial`
--

INSERT INTO `rawmaterial` (`rid`, `rcost`, `rname`, `rquantity`, `runit`) VALUES
(1, 7.18, 'Bottles', 1000, 'pcs'),
(2, 12.5, 'Glass', 2500, 'pcs'),
(3, 12, 'Plastic', 0, 'kg'),
(4, 26, 'Copper Wire', 1000, 'kg'),
(5, 50.22, 'Chargers', 200, 'pcs'),
(6, 52, 'Cable Wires', 0, 'kg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issueprocessed`
--
ALTER TABLE `issueprocessed`
  ADD PRIMARY KEY (`ipid`);

--
-- Indexes for table `issueraw`
--
ALTER TABLE `issueraw`
  ADD PRIMARY KEY (`irid`);

--
-- Indexes for table `processeditem`
--
ALTER TABLE `processeditem`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rawmaterial`
--
ALTER TABLE `rawmaterial`
  ADD PRIMARY KEY (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
