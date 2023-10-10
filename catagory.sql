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
-- Database: `catagory`
--

-- --------------------------------------------------------

--
-- Table structure for table `chain`
--

CREATE TABLE `chain` (
  `Id` int(10) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Weight` float NOT NULL,
  `Touch` float NOT NULL,
  `Price` float NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(6) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chain`
--

INSERT INTO `chain` (`Id`, `Image`, `Name`, `Weight`, `Touch`, `Price`, `Description`, `Qty`, `Discount`) VALUES
(1, 'chain1.jpg', '[Wire Bend Chain]', 12.36, 75.5, 51204, 'Bended round chain, 34cm long,High Polished, 32mm width,\r\nS lock, Flexible Joined', 1, 25),
(2, 'chain2.jpg', '[hand Made Net Pattern]', 8.36, 75.5, 35204, '30cm long, Chain with cap lock, rafed polish, Net pattern, flexible degine\r\n\r\n', 2, 10.5),
(3, 'chain3.jpg', '[Casted Stone Attach Chain]', 9.36, 75, 41599, 'Bended round chain, 25cm long,High Polished, 32mm width,\r\nS lock, Flexible Joined\r\n\r\n', 2, 10),
(4, 'chain4.png', '[Radis slow-Fast chain]', 12.36, 75.5, 55599, 'Bended round chain, 40cm long,High Polished,Die with hand Made, S lock, Flexible Joined', 2, 10),
(5, 'chain5.png', '[Mechanical Lock degine]', 7.36, 75.5, 30204, 'Star Die Flat pices, 34cm long,High Polished, 32mm width, Mechanical lock, Flexible Joined', 4, 5),
(6, 'chain6.jpeg', '[Name Penden Chain]', 6.36, 75, 26599, 'Circle round chain, 34cm long,High Polished, 32mm width,S lock, Flexible Joined', 2, 12),
(7, 'chain7.jpg', '[machine Chain 32]', 5.56, 75, 23599, 'machine Lock Chain, 35cm long,Light Polished, Penden Attaced, S lock, Flexible Joined', 3, 15),
(8, 'chain8.jpg', '[Machine casting die Lock]', 14.36, 75.5, 47204, 'Casted Lock, 34cm long,High Polished,Glue Attach stone, S lock, Flexible Joined', 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `earing`
--

CREATE TABLE `earing` (
  `id` int(4) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Weight` float NOT NULL,
  `Touch` float NOT NULL,
  `Price` float NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(3) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `earing`
--

INSERT INTO `earing` (`id`, `Image`, `Name`, `Weight`, `Touch`, `Price`, `Description`, `Qty`, `Discount`) VALUES
(1, 'earing1.jpg', '[[Casted - South India Degine]]', 4.5, 75.5, 20000, 'Black Polished , Ganesh casted a green stone on it high polished on it', 2, 10),
(2, 'earing2.jpg', '[Bengali Earing Tops]', 4.65, 75.5, 19650, 'Die Pices with , height 2cm, Raff glezed polish,Light Weight, screw Lock,scrach pattern', 8, 10.6),
(3, 'earing3.jpg', '[S-Round Chain Jhumka]', 7.25, 75.5, 36650, 'Round Chain sprindal degine, Red Mina, 2 step jhumka with circle tops, small ball on it', 2, 10),
(4, 'earing4.png', '[Casting-Arbic India Degine]', 9.65, 75.5, 45650, 'Flower Degine with mina color, casted earing, long stick, screw lock, hand Made Pradip, mat Polish', 9, 10.5),
(5, 'earing5.png', '[Casting-Punjabi Earing]', 6.65, 75.5, 27650, 'Flower casting, Net-degine casting,Strong Round Lock 3 Step, screw Lock, Light Polish', 10, 8),
(6, 'earing7.jpg', '[Bengali - jhumka single step]', 8.65, 75.5, 36650, 'Center pice Moni, Squre stones, Hand Made, All lock with ring, S Lock, die pices, a beutiful Star', 1, 15.6),
(7, 'earing8.jpg', '[Arabic - Half Moon Earing]', 11.65, 75.5, 5589900, 'V- cain degine, A half Moon Mina,hanging Color Flower, Triangle die, light yellow polish ', 3, 25.62),
(8, 'earing9.png', '[light-weight Delhi Renovate Earing]', 3.45, 75.5, 14790, 'hand made Die pices, Mina color 3 step, with round lock, height 4.3cm, 2d degine,high gold Polish', 10, 25.6);

-- --------------------------------------------------------

--
-- Table structure for table `mangalsutra`
--

CREATE TABLE `mangalsutra` (
  `ID` int(4) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Weight` float NOT NULL,
  `Touch` float NOT NULL,
  `Price` float NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(10) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mangalsutra`
--

INSERT INTO `mangalsutra` (`ID`, `Image`, `Name`, `Weight`, `Touch`, `Price`, `Description`, `Qty`, `Discount`) VALUES
(1, 'mangalsutra1.jpg', '[Maharashtra - Mangalsutra]', 18.12, 91.6, 92000, 'Sprindal Chain, Two Casting pices, Net jali Round , S lock, 11.00 inch size\r\n\r\n', 1, 10),
(2, 'mangalsutra2.jpg', '[South - Mangalsutra]', 15.12, 91.6, 76500, 'Sprindal Chain, Two Casting pices, Net jali Round , S lock, 11.00 inch size', 3, 12),
(3, 'mangalsutra3.jpg', '[Bengali - Mangalsutra]', 18.12, 91.6, 83000, 'Patta Degine, Hand made Penden, Net jali Round , Fixed lock, 18.00 inch size\r\n\r\n', 2, 15),
(4, 'mangalsutra4.jpg', '[Casted(Love) - Mangalsutra]', 10.12, 91.6, 51599, 'black Moni Chain,Casting Love pice,Stone with, S lock, 14.00 inch size\r\n\r\n', 5, 18);

-- --------------------------------------------------------

--
-- Table structure for table `penden`
--

CREATE TABLE `penden` (
  `Id` int(4) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Weight` float NOT NULL,
  `Touch` float NOT NULL,
  `Price` float NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(4) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penden`
--

INSERT INTO `penden` (`Id`, `Image`, `Name`, `Weight`, `Touch`, `Price`, `Description`, `Qty`, `Discount`) VALUES
(1, 'penden1.jpg', '[Casted Ganesh Penden]', 6.59, 75, 26450, 'Built With 50% ratio of silver and Gold mixture, Joints are very strong, Small Diamond on it, Ganesh penden, flower dot with red mina, heavey loop on it\r\n', 1, 10),
(2, 'penden2.jpg', '[Peacock Stone Penden]', 3.63, 75, 15630, 'Built with casted Pices, with mini reflected stone, high mirror polished, Round loop, with hard joints, 4cm height width 3 cm, 3d casted degine', 4, 14),
(3, 'penden3.jpeg', '[Casted Flower Degine]', 4.51, 75, 23310, 'built with flowers casted deigned, stone are placed on it , Lopp lock, rose gold polished finished, Mirror cut on it , with joints line, height 3cm width 3cm ', 4, 15),
(4, 'penden4.jpeg', '[Bengali - Penden]', 4.73, 75, 19599, 'fully hand made Pices with different type deigned, chain 1.8cm long machine chain, Polish deep yellow mirror cut polish, height 3.8cm width 3.2cm, net jali finished ', 4, 10),
(5, 'penden5.png', '[Casted Pradip - degine]', 2.99, 75, 14599, 'stone are joints with attached, Pradip style degine, Hard joint Light weighted, Fether pattern, circle loop on it, high polished pended no cut on it ', 1, 15),
(6, 'penden6.png', '[Seuli- Flower Degine]', 3.65, 75, 17500, 'Flower degine, Rhodium on it, Casted pices, with hand filling, Thick surface, powder polished Mechanical Lock, Light weightd, Height 3cm width  4cm,', 3, 20),
(7, 'penden7.jpg', '[Hand made- Net Penden]', 5.25, 75, 27199, 'This is hand made Net jali, Flower pattern jali, Mechanical lock, hard soldered, pattern are all in 2D, Gold polishe with light color, height 3.8cm , width 3cm nice joint', 4, 25),
(8, 'penden8.jpg', '[Hand Made-anitq degine- Flower Pattern]', 6.25, 75, 29350, 'Hand made 3 D degine, all edge are nicely deigned, loop Lock, two step flower, with different type hand made Pices, dark yellow polished, height 3.6cm , width 3cm ', 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ring`
--

CREATE TABLE `ring` (
  `Id` int(4) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Weight` float NOT NULL,
  `Touch` float NOT NULL,
  `Price` float NOT NULL,
  `Description` text NOT NULL,
  `Qty` int(4) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ring`
--

INSERT INTO `ring` (`Id`, `Image`, `Name`, `Weight`, `Touch`, `Price`, `Description`, `Qty`, `Discount`) VALUES
(1, 'ring1.jpg', '[France Engegment Ring', 7.66, 75, 38540, 'Inbuilt - Diamond(20pcs), Rose Gold polish, 3mm thick broad, Casted degine, Comfortable Round, hard joints', 1, 10.5),
(2, 'ring2.jpg', '[Italian - Ring Casted]', 6.32, 91.6, 33560, 'Built with 20pcs diamond, Rose Gold finished, high Polise, Round pipe, S deigned, Hard joints, 18 size  ', 4, 15),
(3, 'ring3.jpg', '[American Diamond S Ring]', 6.35, 75, 28630, 'Sprandel Caste deigned, with 25 diamond, High gold polished, full round Hardly joint, 18 size, Clear Mirror polished.', 8, 15.5),
(4, 'ring4.png', '[India Classic Engagement Ring]', 9.6, 75, 41299, 'Rose gold polished, False Stone total 70pcs\r\n, hard border casted, 3 line Stone, Adjustable Size 11 to 23, 2pcs ring, ', 10, 5),
(5, 'ring5.jpg', '[India classic Sprandel deigne]', 6.65, 75, 26650, 'Casted diamond, hand soldered ball, highly gold Polished, hard joints, Adjustable Size 11-19, Flat on ring, regular usable', 5, 25599),
(6, 'ring6.jpg', '[Maharashtra Ring- Hand made]', 5.65, 91.6, 29999, 'hand Made soldered, Die Pices, Slow fast Degine, Size 16-18, center Flower, mirror cut polish, Round shaped Degine, ', 5, 10),
(7, 'ring7.jpg', '[Casted - Round Top]', 6.35, 75, 28500, 'Casted Round Flower like tops, with Different deigned, Size 15-19, Raff Dark yellow polished, String joints', 4, 10),
(8, 'ring8.jpg', '[Arabic - Ring]\r\n', 3.5, 75, 17000, 'Shape of top Like boat, Color light gold, Die Pices with handmade, Not sharp edge, light weighted, Flexible size 14-15, for women ring  ', 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `shop_stock`
--

CREATE TABLE `shop_stock` (
  `id` int(10) NOT NULL,
  `Item_id` varchar(100) NOT NULL,
  `Item_name` varchar(300) NOT NULL,
  `catagory` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  `weight` float NOT NULL,
  `purity` float NOT NULL,
  `making_charge` float NOT NULL,
  `qty` int(5) NOT NULL,
  `image` varchar(300) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_stock`
--

INSERT INTO `shop_stock` (`id`, `Item_id`, `Item_name`, `catagory`, `type`, `weight`, `purity`, `making_charge`, `qty`, `image`, `description`) VALUES
(1, 'E1', 'Casted Two Love ', 'Gold', 'Earing', 3.7, 75.5, 4, 0, 'earing.jpg', 'in this degine two casted earing pices and attached with single pice of pradip on it '),
(4, 'C1', 'Casted Round Chain', 'Gold', 'Chain', 4.5, 75.5, 4, -63, 'chain.jpg', 'testing'),
(6, 'N1', 'Arbic Necklesh with Dubai Style', 'Gold', 'Necklace', 14.3, 75.5, 5, 3, 'necklesh.jpg', 'Necklesh center pices with flower core it is 10cm hand made die with hard soldered'),
(7, 'R1', 'Bengali Ring', 'Gold', 'Ring', 5, 75, 5, 0, 'ring.jpg', 'testing perpose'),
(8, 'E3', 'Arbic- half Moon Earing', 'Gold', 'Earing', 6.35, 83.5, 6.7, 0, 'Earing1.jpg', 'earing which are contain with half moon and two pices and love pices scrw lock on it in under pices are in single pices of pradid hard soladered with raff polish and makes on i the cutes'),
(9, 'E2', 'U SHAPE LOOP DEGINE', 'Gold', 'Earing', 2.3, 75.5, 5.6, 2, 'earing2.jpg', 'it contain with two round pices and two lotcon pices with high polished and pin lock perfect for regular use'),
(10, 'E4', 'SPIREL STICK PAN LEAVE SHAPE', 'Gold', 'Earing', 4.63, 83.5, 8.5, 0, 'earing3.jpg', 'Earing with made pan shape jwellery gold with little touch of rose gold and tops are with nice finishing'),
(11, 'E5', 'Light weight Angular cut', 'Gold', 'Earing', 3.65, 75, 8, 1, 'earing4.jpg', 'blank spaces on it and two pradid on its end part light red mina touch on it hard soldered casted pices and height 3.5cm high polished Maharashtra style'),
(12, 'C2', 'Strip Chain', 'Gold', 'Chain', 8.3, 75.5, 5, 0, 'gold chain1.png', 'it is regular used chain and use with any locat to attached it and hand made full of chain with soldered hard'),
(13, 'C3', ' S Die Chain', 'Gold', 'Chain', 18.5, 75.5, 5.5, 0, 'gold chain2.jpg', 'made with S die on it and light weight modern degine S lock on it length is 36cm and comfort for regular use it '),
(14, 'CP1', 'Broklet - Chain', 'Platium', 'Chain', 12.5, 83.5, 6.3, 0, 'platinum_withgold1.jpg', 'it is made with broklet and some of broklet pleted with rose gold finishing and length was fixed not changeble it mechanical lock on it length 36 cm and totaly made with skill of gold engenering '),
(15, 'CS1', 'SILVER BROKLET PIN LOCK', 'Silver', 'Chain', 33.5, 92.5, 8.5, 0, 'silver_chain1.jpg', 'Silver Broklet with pin joints machine lock and like look hever but light weight length 40cm and casted high polish chain'),
(16, 'CS2', 'Silver Boss Chain1', 'Silver', 'Chain', 40, 92.5, 8.5, 0, 'silver_chain2.jpg', 'Chain with sime hand made and joints are harder and gas soldered with look like heavey and length of chain is 40cm'),
(17, 'N3', 'Moon Neck-Lesh', 'Gold', 'Necklace', 35.5, 75.5, 8.5, 0, 'necklesh2.jpg', 'made with hand and very deteiled work with small pices of ball jhumur attached on it and light gold polished on it in end a die pradip and circle support Bizels are used in chain are dies are attached  it is shape look like moon and curve length 14cm'),
(18, 'N4', 'Arbi Net Pattern Chain Choker', 'Gold', 'Necklace', 64, 75.5, 4.5, 0, 'necklesh3.jpg', 'Arbi Dubai degine choker and chain works with center pice polish flower bracklet degine hand works leser solder and polish is as normal '),
(19, 'N5', 'BENGALI NECKLESH STLYLE OLD ', 'Gold', 'Necklace', 26.8, 75.5, 7.5, 0, 'necklesh4.jpg', 'full work are done by hand every deteils are comple nicely and look big weight are very less and ovel are given little '),
(20, 'M1', 'MANGALSUTRA WITH SINGLE MONI CHAIN CIRCLE PENDEN ', 'Gold', 'Mangalsutra', 11.5, 75.5, 4.5, 0, 'images.png', 'regular use mangalsuta with pradip style logo two moni joints oval penden S lock '),
(21, 'M2', 'MANGALSUTRA WITH RANI PENDEN', 'Gold', 'Mangalsutra', 28.5, 75.5, 8.5, 0, 'mangalsutra2.jpg', 'single rani penden with big size with attached ghumru on its end long length 30cm ovel penden die on it 3 step moni chain'),
(22, 'M3', 'RAJ WADI  MANGALSUTRA  WITH ANTIC DEGINE', 'Gold', 'Mangalsutra', 35.5, 91.6, 8.5, 0, 'mangalsutra3.jpg', '* chain made with white moni and black moni \r\n* center of pices with red stone and green mina\r\n* polish with black line an high polish mix\r\n*step working with stone pices and a stone latcon pice'),
(23, 'R2', 'Stone Placed Engezment Ring', 'Gold', 'Ring', 7.65, 75.5, 8.5, 0, 'gold ring 1.jpg', 'In top half of circle are made upp with the mini stones on it good ovel ring closed joints inter connect with each other '),
(24, 'R3', 'CASTED STONE PLACED RING', 'Gold', 'Ring', 8.5, 75.5, 5, 0, 'gold ring2.jpg', 'that are loking the very antick casted ring and white shining stone placed on its top air bypass passage are present on it  high polished ring with light white shing'),
(25, 'RP1', 'BOLT DEGINE ON IT ', 'Platium', 'Ring', 18.5, 92.5, 12.5, 1, 'platinum ring1.jpg', 'it degine pattern like bolt and bits are made with rose gold finish touch shameless straight cuts on it surface on ring was smooth'),
(26, 'RP2', 'LADIES MARRAIGE RING WITH PLATINUM RING', 'Platium', 'Ring', 11.5, 92.6, 12.5, 0, 'platinum ring2.jpg', 'its border are two diffrent metal touch on it mix with gold and silver ring was comfortable for evry one adjustable size on it polish with glossy finish'),
(27, 'RS1', 'SILVER STONE SPRINDLE TOP RING', 'Silver', 'Ring', 12.5, 92.6, 8.5, 0, 'ring1.jpg', 'it will be finished with the high polished on it and sprindle like degine and adjustable size n it upper stone are fited on it ligh weight ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chain`
--
ALTER TABLE `chain`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `earing`
--
ALTER TABLE `earing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mangalsutra`
--
ALTER TABLE `mangalsutra`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `penden`
--
ALTER TABLE `penden`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ring`
--
ALTER TABLE `ring`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `shop_stock`
--
ALTER TABLE `shop_stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop_stock`
--
ALTER TABLE `shop_stock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
