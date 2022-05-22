-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 01:29 PM
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
-- Database: `sim_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courier_table`
--

CREATE TABLE `courier_table` (
  `courier_id` int(50) NOT NULL,
  `courier_name` varchar(200) NOT NULL,
  `courier_ref_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courier_table`
--

INSERT INTO `courier_table` (`courier_id`, `courier_name`, `courier_ref_id`) VALUES
(1, 'smart', 1001),
(2, 'globe', 2002),
(3, 'tnt', 3003),
(4, 'tm', 4004),
(5, 'sun', 5005),
(6, 'gomo', 6006),
(7, 'dito', 7007);

-- --------------------------------------------------------

--
-- Table structure for table `sim_table`
--

CREATE TABLE `sim_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `sim_number` int(200) NOT NULL,
  `sim_courier_ref_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sim_table`
--

INSERT INTO `sim_table` (`id`, `sim_number`, `sim_courier_ref_id`) VALUES
(1, 895, 7007),
(2, 896, 7007),
(3, 897, 7007),
(4, 898, 7007),
(5, 905, 2002),
(6, 906, 2002),
(7, 907, 3003),
(8, 908, 1001),
(9, 909, 3003),
(10, 910, 3003),
(11, 912, 3003),
(12, 915, 2002),
(13, 916, 2002),
(14, 917, 2002),
(15, 918, 1001),
(16, 919, 1001),
(17, 920, 1001),
(18, 921, 1001),
(19, 922, 5005),
(20, 923, 5005),
(21, 924, 5005),
(22, 925, 5005),
(23, 926, 2002),
(24, 927, 2002),
(25, 928, 1001),
(26, 929, 1001),
(27, 930, 3003),
(28, 931, 5005),
(29, 932, 5005),
(30, 933, 5005),
(31, 934, 5005),
(32, 935, 2002),
(33, 936, 2002),
(34, 937, 2002),
(35, 938, 3003),
(36, 939, 1001),
(37, 940, 5005),
(38, 941, 5005),
(39, 942, 5005),
(40, 943, 5005),
(41, 945, 2002),
(42, 946, 1001),
(43, 947, 1001),
(44, 948, 3003),
(45, 949, 1001),
(46, 950, 3003),
(47, 951, 1001),
(48, 953, 2002),
(49, 954, 2002),
(50, 955, 2002),
(51, 956, 2002),
(52, 961, 1001),
(53, 965, 2002),
(54, 966, 2002),
(55, 967, 2002),
(56, 973, 5005),
(57, 974, 5005),
(58, 975, 2002),
(59, 976, 2002),
(60, 977, 2002),
(61, 978, 2002),
(62, 979, 2002),
(63, 991, 7007),
(64, 992, 7007),
(65, 993, 7007),
(66, 994, 7007),
(67, 995, 2002),
(68, 996, 2002),
(69, 997, 2002),
(70, 998, 1001),
(71, 999, 1001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courier_table`
--
ALTER TABLE `courier_table`
  ADD PRIMARY KEY (`courier_id`),
  ADD UNIQUE KEY `courier_ref_id` (`courier_ref_id`);

--
-- Indexes for table `sim_table`
--
ALTER TABLE `sim_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sim_number` (`sim_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courier_table`
--
ALTER TABLE `courier_table`
  MODIFY `courier_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sim_table`
--
ALTER TABLE `sim_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
