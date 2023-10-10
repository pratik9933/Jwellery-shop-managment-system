-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 09:35 AM
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
-- Database: `user_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_slot`
--

CREATE TABLE `book_slot` (
  `Id` int(10) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Store` text NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `employee_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_slot`
--

INSERT INTO `book_slot` (`Id`, `mail`, `phone`, `name`, `Date`, `Time`, `Store`, `status`, `employee_id`) VALUES
(1, 'eti@gmail.com', '9933987504', 'Eti', '2023-03-14', '19:34:00', 'IT Center, Bengaluru, Tamil Nadu', 'Cancel', 'PD1'),
(2, 'hitesh@gmail.com', '9933987504', 'Hitesh', '2023-03-27', '12:42:00', 'Near Station,Dadar(W), Mumbai, Maharastra', 'Visited', 'PD1'),
(3, 'pratik@gmail.com', '9933987504', 'Pratik', '2023-03-28', '19:27:00', 'Near Station,Dadar(W), Mumbai, Maharastra', 'Cancel', 'PD1'),
(4, 'pratik@gmail.com', '9933987504', 'Pratik', '2023-03-28', '19:27:00', 'Near Station,Dadar(W), Mumbai, Maharastra', 'Cancel', 'PD1'),
(5, 'pratik@gmail.com', '9933987504', 'Pratik', '2023-03-28', '19:27:00', 'Near Station,Dadar(W), Mumbai, Maharastra', 'Visited', 'PD1'),
(6, 'user1@gmail.com', '9933987504', 'user1', '2023-04-05', '19:37:00', 'Near Station,Dadar(W), Mumbai, Maharastra', 'Visited', 'PD1'),
(7, 'arshad@gmail.com', '9933987504', 'arshad', '2023-04-06', '17:13:00', 'IT Center, Bengaluru, Tamil Nadu', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `delet_order`
--

CREATE TABLE `delet_order` (
  `del_id` int(4) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  `qty` int(4) NOT NULL,
  `total_amt` float NOT NULL,
  `Date_of_order` date NOT NULL,
  `status` varchar(300) NOT NULL,
  `Cancel_date` date NOT NULL,
  `Transaction_Id` varchar(100) NOT NULL,
  `Refund_amt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delet_order`
--

INSERT INTO `delet_order` (`del_id`, `mail`, `name`, `qty`, `total_amt`, `Date_of_order`, `status`, `Cancel_date`, `Transaction_Id`, `Refund_amt`) VALUES
(3, 'pratik@gmail.com', '[Peacock Stone Penden]', 1, 13845, '2023-03-19', 'Refunded', '2023-03-19', '123456', 14883),
(4, 'pratik@gmail.com', '[Arabic - Ring]\r\n', 1, 14883.5, '2023-03-20', 'Refunded', '2023-04-01', 'ABZ123456', 14833.3),
(5, 'pratik@gmail.com', '[Sprindal Chain with S Cut]', 1, 64436.8, '2023-03-20', 'Refunded', '2023-03-21', '123456', 64436),
(6, 'pratik@gmail.com', '[hand Made Net Pattern]', 1, 32452.8, '2023-04-01', 'Cancel', '2023-04-01', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exclusive_enquiry`
--

CREATE TABLE `exclusive_enquiry` (
  `ID` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Mail_id` varchar(250) NOT NULL,
  `Phone_no` varchar(12) NOT NULL,
  `Degine_type` varchar(300) NOT NULL,
  `Pin_no` int(6) NOT NULL,
  `Qty` int(4) NOT NULL,
  `Sataus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exclusive_enquiry`
--

INSERT INTO `exclusive_enquiry` (`ID`, `Date`, `Name`, `Mail_id`, `Phone_no`, `Degine_type`, `Pin_no`, `Qty`, `Sataus`) VALUES
(1, '2023-03-12', 'Pratik Dinda', 'eti@gmail.com', '9933987504', 'Exclusive 3 (Mukut)', 721212, 1, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_Id` int(10) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Mail_Id` varchar(250) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Address1` varchar(250) NOT NULL,
  `Address2` varchar(250) NOT NULL,
  `State` varchar(200) NOT NULL,
  `Pin` int(6) NOT NULL,
  `Landmark` varchar(200) NOT NULL,
  `P_name` varchar(250) NOT NULL,
  `Catagory` varchar(100) NOT NULL,
  `total_weight` float DEFAULT NULL,
  `purity` float NOT NULL,
  `Price_amt` float NOT NULL,
  `Discount_amt` float NOT NULL,
  `Gst_amt` float NOT NULL,
  `Total_amt` float NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Payment_type` varchar(250) NOT NULL,
  `Payment_id` varchar(260) NOT NULL,
  `Order_date` date NOT NULL,
  `Status` varchar(250) NOT NULL,
  `Delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_Id`, `Name`, `Mail_Id`, `Phone`, `Address1`, `Address2`, `State`, `Pin`, `Landmark`, `P_name`, `Catagory`, `total_weight`, `purity`, `Price_amt`, `Discount_amt`, `Gst_amt`, `Total_amt`, `Quantity`, `Payment_type`, `Payment_id`, `Order_date`, `Status`, `Delivery_date`) VALUES
(50, 'Pratik Dinda', 'pratik@gmail.com', '9933987504', 'kushpata Ghatal', 'East midnapur', 'Maharashtra', 721212, 'new Lic building', '[Name Penden Chain]', 'Chain', NULL, 0, 26599, 23407.1, 702.21, 24109.3, 1, 'G-Pay', '123456789', '2023-04-01', 'Delivered', '0000-00-00'),
(52, 'Pratik Dinda', 'pratik@gmail.com', '933987504', 'kushpata', 'ghtal', 'West Bengal', 721212, 'new lic building', '[Mechanical Lock degine]', '', NULL, 0, 60408, 57387.6, 1721.63, 59109.2, 2, 'G-Pay', '1234567', '2023-03-20', 'Delivered', '2023-03-26'),
(55, 'pratik Dinda', 'pratik@gmail.com', '9933987504', 'ghatal', 'testing', 'Maharashtra', 721212, 'new lic building', '[S-Round Chain Jhumka]', '', NULL, 0, 36650, 32985, 989.55, 33974.6, 1, 'G-Pay', '1234567', '2023-03-29', 'Confirmed', '2023-04-04'),
(56, 'Eti Dinda', 'pratik@gmail.com', '9933987504', 'ward-17,kushpata', 'ghatal,pachime midinipur', 'Maharashtra', 721212, 'new lic building', '[Name Penden Chain]', '', 6.36, 0, 26599, 23407.1, 702.21, 24109.3, 1, 'Phone-Pay', 'AJ2341289BC34', '2023-04-01', 'Booked', '0000-00-00'),
(57, 'Soumita Mity', 'pratik@gmail.com', '7845961230', 'gopinathpur, Belaghat', 'Daspur, East Midnapur', 'West Bengal', 721211, 'New Rk hond showroom', '[hand Made Net Pattern]', '', 8.36, 0, 35204, 31507.6, 945.23, 32452.8, 1, 'Bharat-Pay', 'ABC345JU789', '2023-04-01', 'Shipped', '2023-04-07'),
(58, 'Monika Dinda', 'pratik@gmail.com', '9933987504', 'Tajpur,Sonakhali', 'Daspur, East Midnapur', 'West Bengal', 721212, 'BDO Office', '[hand Made Net Pattern]', 'Chain', 8.36, 75.5, 35204, 31507.6, 945.23, 32452.8, 1, 'Paytm', 'BCDE2345789', '2023-04-01', 'Rejected', '0000-00-00'),
(59, 'Sample', 'user1@gmail.com', '123456789', 'Sample-address1', 'sample-address2', 'Maharashtra', 123456, 'sample - land mark', '[Casting-Arbic India Degine]', 'Earing', 9.65, 75.5, 45650, 40856.8, 1225.7, 42082.4, 1, 'G-Pay', 'ABCD123490ADF', '2023-04-03', 'Confirmed', '2023-04-09'),
(60, 'test', 'pratik@gmail.com', '1234567890', 'test', 'test', 'Maharashtra', 721212, 'test', '[Casted Flower Degine]', 'Penden', 4.51, 75, 23310, 19813.5, 594.41, 20407.9, 1, 'G-Pay', '1234575Aty', '2023-04-05', 'Confirmed', '2023-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `post_your_degine`
--

CREATE TABLE `post_your_degine` (
  `ID` int(4) NOT NULL,
  `Mail` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL,
  `Select_type` text NOT NULL,
  `Degine_nam` varchar(250) NOT NULL,
  `sort_note` text NOT NULL,
  `Date` date DEFAULT NULL,
  `Status` varchar(100) NOT NULL DEFAULT 'Submited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_your_degine`
--

INSERT INTO `post_your_degine` (`ID`, `Mail`, `image`, `Select_type`, `Degine_nam`, `sort_note`, `Date`, `Status`) VALUES
(1, 'eti@gmail.com', 'test_.jpg', 'Photoshop Degine', 'Arbic Necklesh', 'That neckless deigned by my sister \r\nit is the type ancient art of neckless ', '2023-03-12', 'Dislike'),
(2, 'hitesh@gmail.com', 'd5e82611dfdd331091bed2fcdd065104.jpg', 'CAD(Creative Animate Degine)', 'testin', 'testing', '2023-03-16', 'Not Selected'),
(3, 'eti@gmail.com', 'penden.jpg', 'CAD(Creative Animate Degine)', 'Dubai Style Penden', 'it will created a copy diagram', '2023-03-21', 'Selected'),
(4, 'eti@gmail.com', 'ring.jpg', 'Photoshop Degine', 'Testing', 'testing image', '2023-03-21', 'Selected'),
(5, 'hitesh@gmail.com', 'chain.jpg', 'CAD(Creative Animate Degine)', 'testing', 'testing', '2023-03-21', 'Selected');

-- --------------------------------------------------------

--
-- Table structure for table `remove_account`
--

CREATE TABLE `remove_account` (
  `Id` int(5) NOT NULL,
  `mail` varchar(300) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `remove_account`
--

INSERT INTO `remove_account` (`Id`, `mail`, `reason`, `date`) VALUES
(1, 'eti@gmail.com', 'testing', '0000-00-00'),
(2, 'hitesh@gmail.com', 'none', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `try_free_home_request`
--

CREATE TABLE `try_free_home_request` (
  `Id` int(10) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(350) NOT NULL,
  `State` varchar(150) NOT NULL,
  `Pin` int(6) NOT NULL,
  `request_date` date DEFAULT NULL,
  `Jwellery_type` varchar(200) NOT NULL,
  `Date_of_try` date NOT NULL,
  `Time` time NOT NULL,
  `Metal_type` varchar(250) NOT NULL,
  `Description` text NOT NULL,
  `mail_id` varchar(400) NOT NULL,
  `Status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `try_free_home_request`
--

INSERT INTO `try_free_home_request` (`Id`, `Name`, `Phone`, `Address`, `State`, `Pin`, `request_date`, `Jwellery_type`, `Date_of_try`, `Time`, `Metal_type`, `Description`, `mail_id`, `Status`) VALUES
(1, 'Eti Dinda', '9933987504', 'Ghtal kushpata', 'West-Bengal', 721212, NULL, 'Earing', '2023-03-21', '21:41:00', 'Gold', '  engajment ring', 'eti@gmail.com', 'Accepted'),
(2, 'hitesh', '1234567890', 'testing', 'West-Bengal', 721212, NULL, 'Earing', '2023-03-22', '03:49:00', 'Gold', '  testing', 'hitesh@gmail.com', 'Cancel'),
(3, 'Soumita Mity', '9933987504', 'ghatal, kushpata ', 'West-Bengal', 721212, '2023-03-31', 'Earing', '2023-03-31', '22:11:00', 'Gold', '  testing perpose', 'pratik@gmail.com', 'Accepted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_slot`
--
ALTER TABLE `book_slot`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `delet_order`
--
ALTER TABLE `delet_order`
  ADD PRIMARY KEY (`del_id`);

--
-- Indexes for table `exclusive_enquiry`
--
ALTER TABLE `exclusive_enquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `post_your_degine`
--
ALTER TABLE `post_your_degine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `remove_account`
--
ALTER TABLE `remove_account`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `try_free_home_request`
--
ALTER TABLE `try_free_home_request`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_slot`
--
ALTER TABLE `book_slot`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `delet_order`
--
ALTER TABLE `delet_order`
  MODIFY `del_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exclusive_enquiry`
--
ALTER TABLE `exclusive_enquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Order_Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `post_your_degine`
--
ALTER TABLE `post_your_degine`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `remove_account`
--
ALTER TABLE `remove_account`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `try_free_home_request`
--
ALTER TABLE `try_free_home_request`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
