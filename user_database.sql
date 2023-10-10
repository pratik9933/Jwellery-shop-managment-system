-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `arshad@gmail.com`
--

CREATE TABLE `arshad@gmail.com` (
  `Product_Id` varchar(300) NOT NULL,
  `ct_id` int(4) NOT NULL,
  `types` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eti@gmail.com`
--

CREATE TABLE `eti@gmail.com` (
  `Product_Id` varchar(300) NOT NULL,
  `ct_id` int(4) NOT NULL,
  `types` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hitesh@gmail.com`
--

CREATE TABLE `hitesh@gmail.com` (
  `Product_Id` varchar(300) NOT NULL,
  `ct_id` int(4) NOT NULL,
  `types` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pratik@gmail.com`
--

CREATE TABLE `pratik@gmail.com` (
  `Product_Id` varchar(300) NOT NULL,
  `ct_id` int(4) NOT NULL,
  `types` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pratik@gmail.com`
--

INSERT INTO `pratik@gmail.com` (`Product_Id`, `ct_id`, `types`, `file`) VALUES
('E2', 2, 'Earing', './earing_gallary/');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Name` varchar(120) NOT NULL,
  `Mail_id` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `re_password` varchar(20) NOT NULL,
  `last_active` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Name`, `Mail_id`, `password`, `re_password`, `last_active`) VALUES
('arshad', 'arshad@gmail.com', '1234', '1234', '2023-04-05'),
('Eti', 'eti@gmail.com', '1234', '1234', NULL),
('Hitesh', 'hitesh@gmail.com', '1234', '1234', NULL),
('Pratik', 'pratik@gmail.com', '1234', '1234', '2023-04-05'),
('user1', 'user1@gmail.com', '1234', '1234', '2023-04-03');

-- --------------------------------------------------------

--
-- Table structure for table `user1@gmail.com`
--

CREATE TABLE `user1@gmail.com` (
  `Product_Id` varchar(300) NOT NULL,
  `ct_id` int(4) NOT NULL,
  `types` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user1@gmail.com`
--

INSERT INTO `user1@gmail.com` (`Product_Id`, `ct_id`, `types`, `file`) VALUES
('E3', 3, 'Earing', './earing_gallary/');

-- --------------------------------------------------------

--
-- Table structure for table `user@user.com`
--

CREATE TABLE `user@user.com` (
  `Product_Id` varchar(300) NOT NULL,
  `ct_id` int(4) NOT NULL,
  `types` varchar(300) NOT NULL,
  `file` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arshad@gmail.com`
--
ALTER TABLE `arshad@gmail.com`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `eti@gmail.com`
--
ALTER TABLE `eti@gmail.com`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `hitesh@gmail.com`
--
ALTER TABLE `hitesh@gmail.com`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `pratik@gmail.com`
--
ALTER TABLE `pratik@gmail.com`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Mail_id`);

--
-- Indexes for table `user1@gmail.com`
--
ALTER TABLE `user1@gmail.com`
  ADD PRIMARY KEY (`Product_Id`);

--
-- Indexes for table `user@user.com`
--
ALTER TABLE `user@user.com`
  ADD PRIMARY KEY (`Product_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
