-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 11:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sarns`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loads`
--

CREATE TABLE `tbl_loads` (
  `Load_id` int(11) NOT NULL,
  `Cargo` varchar(255) NOT NULL,
  `Destination` varchar(255) NOT NULL,
  `Weight` decimal(10,2) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_loads`
--

INSERT INTO `tbl_loads` (`Load_id`, `Cargo`, `Destination`, `Weight`, `Status`) VALUES
(1, 'Electronics', 'New York', 9.00, 'Delivered'),
(3, 'Furniture', 'City B', 8.00, 'Delivered'),
(4, 'Furniture', 'City H', 6.00, 'Active'),
(5, 'Clothing', 'Las Vegas', 7.00, 'Pending'),
(6, 'Medicine', 'HongKong', 5.00, 'Pending'),
(7, 'Logs', 'MountApo', 4.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `log_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `u_type` varchar(50) NOT NULL,
  `login_time` timestamp NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NULL DEFAULT NULL,
  `log_status` enum('Pending','Active','Inactive','') DEFAULT NULL,
  `log_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`log_id`, `u_id`, `u_username`, `u_type`, `login_time`, `logout_time`, `log_status`, `log_description`) VALUES
(1, 1, 'ross123', 'User', '2025-04-24 05:42:56', NULL, 'Active', 'User Changed Their Details'),
(2, 1, 'ross123', 'Success - User Login', '2025-04-24 05:43:53', NULL, 'Active', NULL),
(3, 1, 'ross123', 'User', '2025-04-24 05:44:44', NULL, 'Active', 'User Changed Their Details'),
(4, 1, 'ross123', 'User', '2025-04-24 05:45:17', NULL, 'Active', 'User Changed Their Details'),
(5, 1, 'ross123', 'Success - User Login', '2025-04-24 05:47:52', NULL, 'Active', NULL),
(6, 2, 'ian123', 'Success - User Action', '2025-04-24 05:51:39', '2025-04-24 05:52:46', 'Inactive', 'New user registered: ian123'),
(7, 2, 'ian123', 'Failed - Inactive Account', '2025-04-24 05:52:13', '2025-04-24 05:52:46', 'Inactive', NULL),
(8, 2, 'ian123', 'Failed - Inactive Account', '2025-04-24 05:52:32', '2025-04-24 05:52:46', 'Inactive', NULL),
(9, 2, 'ian123', 'Success - User Login', '2025-04-24 05:52:43', '2025-04-24 05:52:46', 'Inactive', NULL),
(10, 2, 'ian123', 'Success - Admin Login', '2025-04-24 05:53:07', NULL, 'Active', NULL),
(11, 3, 'jeja123', 'Success - User Action', '2025-04-27 06:59:04', '2025-04-27 09:03:51', 'Inactive', 'New user registered: jeja123'),
(12, 3, 'jeja123', 'Failed - Inactive Account', '2025-04-27 06:59:12', '2025-04-27 09:03:51', 'Inactive', NULL),
(13, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 06:59:41', '2025-04-27 09:03:51', 'Inactive', NULL),
(14, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:00:55', '2025-04-27 09:03:51', 'Inactive', NULL),
(15, 3, 'jeja123', 'Admin', '2025-04-27 07:02:05', '2025-04-27 09:03:51', 'Inactive', 'Admin Added a New Load: Electronics'),
(16, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:11:02', '2025-04-27 09:03:51', 'Inactive', NULL),
(17, 3, 'jeja123', 'Admin', '2025-04-27 07:12:45', '2025-04-27 09:03:51', 'Inactive', 'Admin Added a New Load: Clothing'),
(18, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:16:57', '2025-04-27 09:03:51', 'Inactive', NULL),
(19, 3, 'jeja123', 'Admin', '2025-04-27 07:17:36', '2025-04-27 09:03:51', 'Inactive', 'Admin Added a New Load: Furniture'),
(20, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:19:23', '2025-04-27 09:03:51', 'Inactive', NULL),
(21, 3, 'jeja123', 'Admin', '2025-04-27 07:19:38', '2025-04-27 09:03:51', 'Inactive', 'Admin Added a New Load: Furniture'),
(22, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:22:12', '2025-04-27 09:03:51', 'Inactive', NULL),
(23, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:27:14', '2025-04-27 09:03:51', 'Inactive', NULL),
(24, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:31:27', '2025-04-27 09:03:51', 'Inactive', NULL),
(25, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 07:33:40', '2025-04-27 09:03:51', 'Inactive', NULL),
(26, 3, 'jeja123', 'Admin', '2025-04-27 07:33:48', '2025-04-27 09:03:51', 'Inactive', 'Deleted load with ID: 2'),
(27, 3, 'jeja123', 'Success - User Login', '2025-04-27 07:47:25', '2025-04-27 09:03:51', 'Inactive', NULL),
(28, 3, 'jeja123', 'Success - User Login', '2025-04-27 07:48:26', '2025-04-27 09:03:51', 'Inactive', NULL),
(29, 3, 'jeja123', 'Success - User Login', '2025-04-27 07:49:32', '2025-04-27 09:03:51', 'Inactive', NULL),
(30, 3, 'jeja123', 'Success - User Login', '2025-04-27 07:50:21', '2025-04-27 09:03:51', 'Inactive', NULL),
(31, 3, 'jeja123', 'Success - User Login', '2025-04-27 08:05:34', '2025-04-27 09:03:51', 'Inactive', NULL),
(32, 3, 'jeja123', 'Success - User Login', '2025-04-27 08:06:16', '2025-04-27 09:03:51', 'Inactive', NULL),
(33, 3, 'jeja123', 'Success - User Login', '2025-04-27 08:14:29', '2025-04-27 09:03:51', 'Inactive', NULL),
(34, 3, 'jeja123', 'Success - User Action', '2025-04-27 08:14:40', '2025-04-27 09:03:51', 'Inactive', 'Delivered Load ID: 3'),
(35, 3, 'jeja123', 'Success - User Login', '2025-04-27 08:36:14', '2025-04-27 09:03:51', 'Inactive', NULL),
(36, 3, 'jeja123', 'User', '2025-04-27 08:36:39', '2025-04-27 09:03:51', 'Inactive', 'User Changed Their Details'),
(37, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 08:39:18', '2025-04-27 09:03:51', 'Inactive', NULL),
(38, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 08:40:10', '2025-04-27 09:03:51', 'Inactive', NULL),
(39, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 08:57:15', '2025-04-27 09:03:51', 'Inactive', NULL),
(40, 3, 'jeja123', 'Admin', '2025-04-27 08:57:34', '2025-04-27 09:03:51', 'Inactive', 'Admin Changed Their Profile'),
(41, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 08:58:51', '2025-04-27 09:03:51', 'Inactive', NULL),
(42, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 09:02:24', '2025-04-27 09:03:51', 'Inactive', NULL),
(43, 3, 'jeja123', 'Admin', '2025-04-27 09:03:07', '2025-04-27 09:03:51', 'Inactive', 'Admin Added a New Load: Clothing'),
(44, 3, 'jeja123', 'Success - User Action', '2025-04-27 09:03:07', '2025-04-27 09:03:51', 'Inactive', 'Delivered Load ID: '),
(45, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 09:06:59', '2025-04-27 09:11:36', 'Inactive', NULL),
(46, 3, 'jeja123', 'Admin', '2025-04-27 09:07:26', '2025-04-27 09:11:36', 'Inactive', 'Admin Added a New Load: Medicine'),
(47, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 09:11:05', '2025-04-27 09:11:36', 'Inactive', NULL),
(48, 3, 'jeja123', 'Admin', '2025-04-27 09:11:30', '2025-04-27 09:11:36', 'Inactive', 'Admin Added a New Load: Logs'),
(49, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 09:13:40', '2025-04-27 09:13:46', 'Inactive', NULL),
(50, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 09:14:37', '2025-04-27 09:14:44', 'Inactive', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `u_id` int(50) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_username` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL,
  `u_type` varchar(50) NOT NULL,
  `u_status` varchar(50) NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `security_answer` varchar(255) NOT NULL,
  `u_lname` varchar(255) NOT NULL,
  `u_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`u_id`, `u_fname`, `u_email`, `u_username`, `u_password`, `u_type`, `u_status`, `security_question`, `security_answer`, `u_lname`, `u_image`) VALUES
(1, 'ross', 'rosssabio@gmail.com', 'ross123', '2KkosgQ9t340C1I1R78Wy0qkg/BkX+CikO0fIKq3Ylc=', 'User', 'Active', 'What\'s your favorite food?', '3kM+1VChYkp0J5qjDDa1LyhEJmEMAUtwAi5MiJ68qHU=', 'sabio', 'src/images/search.png'),
(2, 'ian', 'iansarno@gmail.com', 'ian123', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Admin', 'Active', 'What\'s the name of your first pet?', 'kPP3e1CTgrOFy2MeVuAyRj3YCF0KkXkpoqnlJBGV5Nw=', 'sarno', 'Null'),
(3, 'ross', 'jeja@gmail.com', 'jeja123', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Admin', 'Active', 'What\'s your favorite food?', '3kM+1VChYkp0J5qjDDa1LyhEJmEMAUtwAi5MiJ68qHU=', 'sabio', 'src/images/add.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_loads`
--
ALTER TABLE `tbl_loads`
  ADD PRIMARY KEY (`Load_id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_loads`
--
ALTER TABLE `tbl_loads`
  MODIFY `Load_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD CONSTRAINT `tbl_log_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
