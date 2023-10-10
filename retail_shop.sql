-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 09:33 AM
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
-- Database: `retail_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `mail_id` varchar(300) NOT NULL,
  `pin_code` int(6) NOT NULL,
  `address` varchar(300) NOT NULL,
  `adhar_no` varchar(16) NOT NULL,
  `pan_no` varchar(16) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` int(4) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_of_join` date NOT NULL,
  `depertment` varchar(300) NOT NULL,
  `start_shift_time` time NOT NULL,
  `end_shift_time` time NOT NULL,
  `salary` double NOT NULL,
  `salary_date` date NOT NULL,
  `salary_paid_date` date DEFAULT NULL,
  `total_bill_order` int(40) NOT NULL,
  `total_query` int(15) NOT NULL,
  `reason_deactive` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `phone_no`, `mail_id`, `pin_code`, `address`, `adhar_no`, `pan_no`, `gender`, `age`, `password`, `date_of_join`, `depertment`, `start_shift_time`, `end_shift_time`, `salary`, `salary_date`, `salary_paid_date`, `total_bill_order`, `total_query`, `reason_deactive`, `status`) VALUES
('HP1', 'Hitesh', '9933987504', 'hitesh@gmail.com', 721212, 'testing', '0123456799132', 'ABCD123445', 'Male', 20, '1234', '2023-03-26', 'Branch Manager', '00:45:00', '18:51:00', 5000, '2023-03-01', '2023-03-25', 2, 0, 'tsting', 'ACTIVE'),
('PD1', 'Pratik', '9933987504', 'dindapratik@gmail.com', 721212, 'Kushpata', '01234789456314', 'PD1234GH789', 'Male', 18, '1234', '2023-03-24', 'Factory Manager', '10:23:00', '19:24:00', 10000, '2023-02-24', '2023-03-24', 21, 4, 'owner request', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `make_new_invoice`
--

CREATE TABLE `make_new_invoice` (
  `date` date NOT NULL,
  `coustomer_name` varchar(300) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `mail_id` varchar(300) NOT NULL,
  `address` text NOT NULL,
  `pin` int(6) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `metal_type` varchar(100) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `item_nam1` varchar(300) NOT NULL,
  `item_nam2` varchar(300) NOT NULL,
  `item_nam3` varchar(300) NOT NULL,
  `item_nam4` varchar(300) NOT NULL,
  `item_id1` varchar(100) NOT NULL,
  `item_id2` varchar(100) NOT NULL,
  `item_id3` varchar(100) NOT NULL,
  `item_id4` varchar(100) NOT NULL,
  `w1` float NOT NULL,
  `w2` float NOT NULL,
  `w3` float NOT NULL,
  `w4` float NOT NULL,
  `p1` float NOT NULL,
  `p2` float NOT NULL,
  `p3` float NOT NULL,
  `p4` float NOT NULL,
  `mk1` float NOT NULL,
  `mk2` float NOT NULL,
  `mk3` float NOT NULL,
  `mk4` float NOT NULL,
  `fg1` float NOT NULL,
  `fg2` float NOT NULL,
  `fg3` float NOT NULL,
  `fg4` float NOT NULL,
  `pay_mode` varchar(100) NOT NULL,
  `remark` text NOT NULL,
  `matel_price` float NOT NULL,
  `discount` float NOT NULL,
  `total_weight` float NOT NULL,
  `total_price` float NOT NULL,
  `gst_amt` float NOT NULL,
  `grand_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `make_new_invoice`
--

INSERT INTO `make_new_invoice` (`date`, `coustomer_name`, `phone`, `mail_id`, `address`, `pin`, `invoice_no`, `metal_type`, `employee_id`, `item_nam1`, `item_nam2`, `item_nam3`, `item_nam4`, `item_id1`, `item_id2`, `item_id3`, `item_id4`, `w1`, `w2`, `w3`, `w4`, `p1`, `p2`, `p3`, `p4`, `mk1`, `mk2`, `mk3`, `mk4`, `fg1`, `fg2`, `fg3`, `fg4`, `pay_mode`, `remark`, `matel_price`, `discount`, `total_weight`, `total_price`, `gst_amt`, `grand_price`) VALUES
('0000-00-00', '[value-2]', '[value-3]', '[value-4]', '[value-5]', 0, '0', '[value-8]', '[value-9]', '[value-10]', '[value-11]', '[value-12]', '[value-13]', '[value-14]', '[value-15]', '[value-16]', '[value-17]', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '[value-34]', '[value-35]', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '1', 'Gold', '121', 'Casted Round Chain,Chain', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Two Love ,Earing', 'C1', 'E1', 'C1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 2, 14.32, 78611.9, 2358.36, 80970.2),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '10', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '11', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '12', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-22', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '2', 'Gold', '121', 'Casted Round Chain,Chain', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Two Love ,Earing', 'C1', 'E1', 'C1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 2, 14.32, 78611.9, 2358.36, 80970.2),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '2147483647', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-22', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '3', 'Gold', '121', 'Casted Round Chain,Chain', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Two Love ,Earing', 'C1', 'E1', 'C1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 2, 14.32, 78611.9, 2358.36, 80970.2),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '4', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '5', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '6', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-24', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cd155aa9d1', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cde0daf0a7', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cde7aee4bf', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cded0aa923', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdf340972e', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdf4964d45', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdf5bed698', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdf8979401', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdfb1af21d', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdfd8c3cec', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641cdfff8a974', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce024c15c7', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce0391e10f', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce06ec27e9', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce0993853e', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce0bf54e34', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce11690880', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce13a42a77', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('0000-00-00', 'Pratik Dinda', '09933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce17c7ee38', 'Gold', '121', 'Casted Round Chain,Chain', '', '', '', 'C1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3),
('2023-03-24', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce1e35cc91', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3),
('2023-03-24', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641ce215c4e31', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3),
('2023-03-24', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641de77cb48db', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3),
('0000-00-00', 'Pratik', '09933987504', 'pratik@gmail.com', 'kushpata,ghatal,WB', 721212, '641e01a73f47e', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'testing', 2000, 10, 0, 0, 0, 0),
('0000-00-00', 'Pratik', '09933987504', 'pratik@gmail.com', 'kushpata,ghatal,WB', 721212, '641e01c5c32c1', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 4000, 20, 3.58, 11459.5, 343.78, 11803.2),
('2023-03-25', 'Pratik', '09933987504', 'pratik@gmail.com', 'kushpata,ghatal,WB', 721212, '641e0e5a1e2d5', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5300, 10, 3.58, 17081.8, 512.45, 17594.2),
('2023-03-25', 'Pratik', '09933987504', 'pratik@gmail.com', 'kushpata,ghatal,WB', 721212, '641e0f2602537', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5300, 10, 3.58, 17081.8, 512.45, 17594.2),
('0000-00-00', 'Pratik', '09933987504', 'pratik@gmail.com', 'kushpata,ghatal,WB', 721212, '641e113201ecb', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 4000, 10, 3.58, 12891.9, 386.76, 13278.7),
('2023-03-24', 'Pratik Dinda', '9933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641e11df75153', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5),
('2023-03-24', 'Pratik Dinda', '9933987504', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '641e11f12c8e3', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5),
('2023-03-26', 'ETI DINDA', '9933987504', 'eti@gmail.com', 'testing', 721212, '641f4931a2cd9', 'Gold', 'HP1', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'E1', 'E1', 'E1', 'C1', 3.5, 3.5, 3.5, 4.5, 75.5, 75.5, 75.5, 75.5, 3.8, 3.8, 3.8, 4, 2.78, 2.78, 2.78, 2.79, 'Cash', '', 5000, 10, 11.12, 50040.5, 1501.22, 51541.8),
('2023-03-25', 'ETI DINDA', '09933987504', 'eti@gmail.com', 'testing', 721212, '641f4a304d158', 'Gold', 'HP1', 'Arbic Necklesh with Dubai Style,Necklace', '', '', '', 'N1', '', '', '', 20.3, 0, 0, 0, 75.5, 0, 0, 0, 8, 0, 0, 0, 16.97, 0, 0, 0, 'Cash', '', 5000, 5, 16.97, 80595.5, 2417.86, 83013.3),
('2023-03-28', 'Hitesh', '09933987504', 'dindapratik@gmil.com', 'hhhg', 721212, '6421fecbefad4', 'Gold', 'PD1', 'Arbic Necklesh with Dubai Style,Necklace', '', '', '', 'N1', '', '', '', 14.3, 0, 0, 0, 75.5, 0, 0, 0, 5, 0, 0, 0, 11.52, 0, 0, 0, 'Banks Cheque', '', 4750, 10, 11.52, 49260.9, 1477.83, 50738.8),
('2023-03-27', 'Soumita Mity', '9933987504', 'soumita@gmail.com', 'daspur,ghatal,west bengal,India', 721212, '642350109d1f7', 'Gold', 'PD1', 'Arbic Necklesh with Dubai Style,Necklace', '', '', '', 'N1', '', '', '', 14.3, 0, 0, 0, 75.5, 0, 0, 0, 5, 0, 0, 0, 11.52, 0, 0, 0, 'Cash', '', 4320, 1, 11.52, 49281.7, 1478.45, 50760.1),
('2023-03-29', 'kishan', '9933987504', 'pratik@gmail.com', 'mumbai', 721212, '64243c0be307e', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 3.5, 0, 0, 0, 75.5, 0, 0, 0, 3.8, 0, 0, 0, 2.78, 0, 0, 0, 'Cash', '', 5600, 10, 2.78, 14002.5, 420.08, 14422.6),
('2023-04-04', 'Praatik Dinda', '9933987504', 'pratik@gmail.com', 'kushpata', 721212, '642b351befbdc', 'Gold', 'PD1', '', 'Arbic Necklesh with Dubai Style,Necklace', '', '', '', 'N1', '', '', 0, 14.3, 0, 0, 0, 75.5, 0, 0, 0, 5, 0, 0, 0, 11.52, 0, 0, 'Cash', '', 5000, 10, 11.52, 51853.6, 1555.61, 53409.2),
('2023-04-04', 'Soumita Maity', '09933987504', 'soumita@gmail.com', 'New rk honda showroom Daspur', 721212, '642c7efeb1332', 'Silver', 'PD1', 'SILVER STONE SPRINDLE TOP RING,Ring', '', '', '', 'RS1', '', '', '', 12.5, 0, 0, 0, 92.6, 0, 0, 0, 8.5, 0, 0, 0, 12.65, 0, 0, 0, 'Banks Cheque', 'Payment by cheque on request of Branch manager ', 74.6, 5, 12.65, 889.31, 26.68, 915.98),
('2023-04-04', 'Ramesh Saha', '0312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai ', 400011, '642c89230dbab', 'Platinum', 'PD1', 'BOLT DEGINE ON IT ,Ring', '', '', '', 'RP1', '', '', '', 18.5, 0, 0, 0, 92.5, 0, 0, 0, 11.3, 0, 0, 0, 19.22, 0, 0, 0, 'UPI / Cards', 'Transaction ID 01238975563  | Size should be update from its current size +2', 2590, 8.5, 19.22, 45553.8, 1366.61, 46920.4),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c943cc2af5', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c945034026', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c945c4b667', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c9465b893d', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c9475199e3', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c947fce87c', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c948a1875a', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c94aaaa4ab', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c94c07564d', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('0000-00-00', 'Ramesh Saha', '312456789', 'ramesh@gmail.com', 'Lal bahadur sastri road , Near bastand, mumbai', 400011, '642c94ca383c1', 'Gold', 'PD1', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cash', '', 0, 0, 0, 0, 0, 0),
('2023-04-05', 'Hitesh Parmar', '9890161382', 'hp5047@gmail.com', 'B shidivinayak apt near vithal mandir', 401303, '642d584f4f864', 'Silver', 'PD1', 'U SHAPE LOOP DEGINE,Earing', '', '', '', 'E2', '', '', '', 2.3, 0, 0, 0, 75.5, 0, 0, 0, 5.6, 0, 0, 0, 1.87, 0, 0, 0, 'Cash', '', 5850, 20, 1.87, 8738.34, 262.15, 9000.49),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '7', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '8', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6),
('2023-03-23', 'pratik', '123456789', 'dindapratik5@gmail.com', 'Ghatal, kushpata, new lic building', 721212, '9', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'Casted Round Chain,Chain', 'E1', 'C1', 'C1', 'C1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', 'test', 5500, 10, 14.32, 70905.4, 2127.16, 73032.6);

-- --------------------------------------------------------

--
-- Table structure for table `make_new_order`
--

CREATE TABLE `make_new_order` (
  `order_no` varchar(100) NOT NULL,
  `name` varchar(300) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `pin` int(6) NOT NULL,
  `address` text NOT NULL,
  `mail` varchar(300) NOT NULL,
  `order_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `metal_type` varchar(200) NOT NULL,
  `employee_id` varchar(300) NOT NULL,
  `item_nam1` varchar(300) NOT NULL,
  `item_nam2` varchar(300) NOT NULL,
  `item_nam3` varchar(300) NOT NULL,
  `item_nam4` varchar(300) NOT NULL,
  `item_id1` varchar(100) NOT NULL,
  `item_id2` varchar(100) NOT NULL,
  `item_id3` varchar(100) NOT NULL,
  `item_id4` varchar(100) NOT NULL,
  `w1` float NOT NULL,
  `w2` float NOT NULL,
  `w3` float NOT NULL,
  `w4` float NOT NULL,
  `p1` float NOT NULL,
  `p2` float NOT NULL,
  `p3` float NOT NULL,
  `p4` float NOT NULL,
  `m1` float NOT NULL,
  `m2` float NOT NULL,
  `m3` float NOT NULL,
  `m4` float NOT NULL,
  `fw1` float NOT NULL,
  `fw2` float NOT NULL,
  `fw3` float NOT NULL,
  `fw4` float NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `remark` text NOT NULL,
  `metal_price` float NOT NULL,
  `discount` float NOT NULL,
  `total_weight` float NOT NULL,
  `total_price` float NOT NULL,
  `gst_amt` float NOT NULL,
  `grand_amt` float NOT NULL,
  `Status` varchar(150) NOT NULL DEFAULT 'Confirmed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `make_new_order`
--

INSERT INTO `make_new_order` (`order_no`, `name`, `phone`, `pin`, `address`, `mail`, `order_date`, `delivery_date`, `metal_type`, `employee_id`, `item_nam1`, `item_nam2`, `item_nam3`, `item_nam4`, `item_id1`, `item_id2`, `item_id3`, `item_id4`, `w1`, `w2`, `w3`, `w4`, `p1`, `p2`, `p3`, `p4`, `m1`, `m2`, `m3`, `m4`, `fw1`, `fw2`, `fw3`, `fw4`, `payment_type`, `remark`, `metal_price`, `discount`, `total_weight`, `total_price`, `gst_amt`, `grand_amt`, `Status`) VALUES
('1', 'pratik', '123456789', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-23', '2023-03-25', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '1234', 5700, 2, 14.32, 80015.7, 2400.47, 82416.1, 'Cancel'),
('2147483647', 'pratik', '123456789', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-23', '2023-03-31', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3, 'Confirmed'),
('230322', 'pratik', '123456789', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-23', '2023-03-31', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3, 'Confirmed'),
('23032211', 'pratik', '123456789', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-23', '2023-03-31', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3, 'Confirmed'),
('641b7d61daee7', 'pratik', '123456789', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-23', '2023-03-31', 'Gold', '121', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'Casted Two Love ,Earing', 'E1', 'E1', 'E1', 'E1', 4.5, 4.5, 4.5, 4.5, 75.5, 75.5, 75.5, 75.5, 4, 4, 4, 4, 3.58, 3.58, 3.58, 3.58, 'Cash', '', 5600, 15, 14.32, 68183.8, 2045.51, 70229.3, 'Cancel'),
('641cb277342ed', 'Pratik Dinda', '9933987504', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-24', '2023-03-27', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5, 'Confirmed'),
('641cb2f000148', 'Pratik Dinda', '9933987504', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-24', '2023-03-27', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5, 'Confirmed'),
('641cb5dabd9fa', 'Pratik Dinda', '9933987504', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-24', '2023-03-27', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5, 'Confirmed'),
('641cb62174d76', 'Pratik Dinda', '9933987504', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-24', '2023-03-27', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5, 'Confirmed'),
('641cb62def5a1', 'Pratik Dinda', '9933987504', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-24', '2023-03-27', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5, 'Confirmed'),
('641cb637e34ff', 'Pratik Dinda', '9933987504', 721212, 'Ghatal, kushpata, new lic building', 'dindapratik5@gmail.com', '2023-03-24', '2023-03-27', 'Gold', '121', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Exchange Type', '', 4500, 10, 3.58, 14503.4, 435.1, 14938.5, 'Confirmed'),
('641e128fd1aba', 'Pratik', '09933987504', 721212, 'kushpata,ghatal,WB', 'pratik@gmail.com', '2023-03-25', '2023-03-28', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3, 'Confirmed'),
('641e12df9b5d4', 'Pratik', '09933987504', 721212, 'kushpata,ghatal,WB', 'pratik@gmail.com', '2023-03-25', '2023-03-28', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 5000, 10, 3.58, 16114.9, 483.45, 16598.3, 'Confirmed'),
('641e1421214fd', 'Pratik', '09933987504', 721212, 'kushpata,ghatal,WB', 'pratik@gmail.com', '2023-03-25', '2023-03-28', 'Gold', 'PD1', 'Casted Two Love ,Earing', '', '', '', 'E1', '', '', '', 4.5, 0, 0, 0, 75.5, 0, 0, 0, 4, 0, 0, 0, 3.58, 0, 0, 0, 'Cash', '', 6000, 20, 3.58, 17189.2, 515.68, 17704.9, 'Confirmed'),
('641f49dc82c89', 'ETI DINDA', '09933987504', 721212, 'testing', 'eti@gmail.com', '2023-03-26', '2023-03-31', 'Gold', 'HP1', 'Arbic Necklesh with Dubai Style,Necklace', '', '', '', 'N1', '', '', '', 20.3, 0, 0, 0, 75.5, 0, 0, 0, 8, 0, 0, 0, 16.97, 0, 0, 0, 'Cash', '', 5000, 5, 16.97, 80595.5, 2417.86, 83013.3, 'Cancel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `make_new_invoice`
--
ALTER TABLE `make_new_invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `make_new_order`
--
ALTER TABLE `make_new_order`
  ADD PRIMARY KEY (`order_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
