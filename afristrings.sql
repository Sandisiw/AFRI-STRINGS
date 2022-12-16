-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 11:51 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afristrings`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(12, 'Bikinis', 'bikinis'),
(13, 'Shorts', 'shorts'),
(14, 'Bras', 'bras'),
(15, 'G-Strings', 'g-strings'),
(17, 'Thongs', 'thongs'),
(18, 'Footwear', 'footwear'),
(19, 'Tops', 'tops');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(25, 15, 33, 1),
(26, 15, 46, 1),
(27, 15, 38, 1),
(28, 16, 44, 1),
(29, 16, 36, 1),
(30, 16, 37, 1),
(31, 17, 46, 1),
(32, 18, 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(33, 12, 'Bikinis', '<p>Bikinis available in most sizes and colours. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'bikinis', 60, 'bikinis.png', '2022-06-05', 1),
(34, 12, 'Bikinis and Boyshorts', '<p>Bikinis and Boyshorts&nbsp;available in most sizes and colours. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'bikinis-and-boyshorts', 80, 'bikinis-and-boyshorts.png', '2022-06-05', 1),
(35, 13, 'Boyshorts and Briefs', '<p>Boyshorts and Briefs available in most sizes and colours. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'boyshorts-and-briefs', 70, 'boyshorts-and-briefs.png', '0000-00-00', 0),
(36, 12, 'African', '<p>Bikinis available in most sizes and colours. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'african', 55, 'african.png', '2022-06-07', 1),
(37, 18, 'FlipFlops', '<p>Flops available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.<br />\r\n&nbsp;</p>\r\n', 'flipflops', 30, 'flipflops.png', '2022-06-07', 1),
(38, 18, 'Sandals', '<p>Sandals available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.<br />\r\n<br />\r\n&nbsp;</p>\r\n', 'sandals', 75, 'sandals.png', '2022-06-05', 1),
(39, 12, 'Gold Trim', '<p>Bikinis available in most sizes and designs. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'gold-trim', 65, 'gold-trim.png', '0000-00-00', 0),
(40, 17, 'Gold Trims', '<p>Thongs available in most sizes and color. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.<br />\r\n<br />\r\n&nbsp;</p>\r\n', 'gold-trims', 75, 'gold-trims.png', '0000-00-00', 0),
(41, 12, 'High Neck', '<p>Bikinis available in most sizes and colour. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.<br />\r\n&nbsp;</p>\r\n', 'high-neck', 75, 'high-neck.png', '0000-00-00', 0),
(42, 12, 'Bath Siuit', '<p>Bikinis available in most sizes and colours. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.<br />\r\n&nbsp;</p>\r\n', 'bath-siuit', 90, 'bath-siuit.png', '0000-00-00', 0),
(43, 13, 'African Prints', '<p>Shorts available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'african-prints', 95, 'african-prints.png', '0000-00-00', 0),
(44, 13, 'Leg Shorts', '<p>Shorts available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days<br />\r\n&nbsp;</p>\r\n', 'leg-shorts', 95, 'leg-shorts.png', '2022-06-07', 5),
(45, 13, 'Shorts', '<p>Shorts&nbsp;available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'shorts', 95, 'shorts.png', '0000-00-00', 0),
(46, 17, 'Thong', '<p>Thongs available in most sizes and clours. If you need any custom colour or size, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'thong', 45, 'thong.png', '2022-06-07', 1),
(47, 17, 'Flags', '<p>Thongs available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'flags', 50, 'flags.png', '0000-00-00', 0),
(48, 15, 'Flag', '<p>G-Strings available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'flag', 50, 'flag.png', '0000-00-00', 0),
(49, 15, 'Hangover', '<p>S-Strings available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'hangover', 50, 'hangover.png', '0000-00-00', 0),
(50, 15, 'Strings', '<p>G-Strings available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'strings', 80, 'strings.png', '2022-06-07', 1),
(51, 14, 'Sports', '<p>Bras available in most sizes and designs. If you need any custom &nbsp;design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.</p>\r\n', 'sports', 55, 'sports.png', '0000-00-00', 0),
(52, 15, 'African String', '<p>G-Strings available in most sizes and designs. If you need any custom colour or design, feel free to give us a call. Most custom orders will be available for collection or delivery within 2 days.<br />\r\n&nbsp;</p>\r\n', 'african-string', 75, 'african-string.png', '2022-06-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(15, 2, 'cash', '2022-06-05'),
(16, 2, 'cash', '2022-06-07'),
(17, 14, 'cash', '2022-06-07'),
(18, 14, 'cash', '2022-06-07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@afri-strings.co.za', '$2y$10$BNHpp5y.ZLhKBMcaC6Iec.x1Ve0SjAOMRtc8t1wK/CdzLgzNBYoeu', 1, 'Admin', 'Afri-Strings', '', '', 'phiwo1.png', 1, '', '', '2022-05-03'),
(2, 'phiwokuhle.mpungose@afri-strings.co.za', '$2y$10$BNHpp5y.ZLhKBMcaC6Iec.x1Ve0SjAOMRtc8t1wK/CdzLgzNBYoeu', 0, 'Phiwokuhle', 'Mpungose', 'Umhlanga, Durban, KZN', '09092735719', 'phiwo.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2022-05-03'),
(13, 'phiwokuhle.mpungose@afristrings.co.za', '$2y$10$820iMHL/Y8HGi1wQdceWMeTTbZk3blagTswWtbHCmB36r/8RRVDOe', 0, 'Phiwo', 'Mpungose', '', '', '', 1, 'gHCaxpz978IU', '', '2022-06-04'),
(14, 'sandisiwe.mpungose@afri-strings.co.za', '$2y$10$VUH4SLV6ZPhasF6iVL1uWuDwkiVAt.P8YsoiYUNpi2aDsldRQS8AG', 0, 'Sandisiwe', 'Mpungose', 'kibhhjji', '65212145141', 'african.png', 1, 'dWLXtx8Sy5NT', '', '2022-06-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
