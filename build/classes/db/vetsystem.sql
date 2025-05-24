-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 03:11 AM
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
-- Database: `vetsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `pet_name` varchar(150) NOT NULL,
  `pet_breed` varchar(150) NOT NULL,
  `pet_age` int(11) NOT NULL,
  `appointment_reason` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'Scheduled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `u_id`, `pet_name`, `pet_breed`, `pet_age`, `appointment_reason`, `status`) VALUES
(8, 2, 'adAD', 'DASDAS', 3, 'DASDAS', 'Scheduled'),
(9, 2, 'dsadasd', 'sdasd', 10, 'asdasd', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `medicalrecord`
--

CREATE TABLE `medicalrecord` (
  `record_id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_breed` varchar(100) DEFAULT NULL,
  `pet_age` int(11) DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `prescription` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `treatment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrecord`
--

INSERT INTO `medicalrecord` (`record_id`, `appointment_id`, `pet_name`, `pet_breed`, `pet_age`, `diagnosis`, `prescription`, `notes`, `treatment`) VALUES
(11, 8, 'adAD', 'DASDAS', 3, 'asdasdas', 'dasdasd', 'sdsa', 'dasdasdas'),
(12, 9, 'dsadasd', 'sdasd', 10, 'asdasd', 'dasdasd', 'asd', 'asdas');

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
(10, 2, 'ian123', 'Success - Admin Login', '2025-04-24 05:53:07', '2025-05-24 00:56:18', 'Inactive', NULL),
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
(50, 3, 'jeja123', 'Success - Admin Login', '2025-04-27 09:14:37', '2025-04-27 09:14:44', 'Inactive', NULL),
(51, 3, 'jeja123', 'Success - Admin Login', '2025-05-16 12:20:27', '2025-05-16 12:20:29', 'Inactive', NULL),
(54, 1, 'ross123', 'Success - User Login', '2025-05-16 12:20:50', NULL, 'Active', NULL),
(55, 1, 'ross123', 'Success - User Login', '2025-05-16 12:22:35', NULL, 'Active', NULL),
(56, 1, 'ross123', 'Success - User Login', '2025-05-16 12:24:13', NULL, 'Active', NULL),
(58, 1, 'ross123', 'Success - User Login', '2025-05-16 12:24:57', NULL, 'Active', NULL),
(59, 1, 'ross123', 'Success - User Login', '2025-05-16 12:28:38', NULL, 'Active', NULL),
(60, 1, 'ross123', 'Success - User Login', '2025-05-16 12:58:13', NULL, 'Active', NULL),
(61, 1, 'ross123', 'Success - User Login', '2025-05-16 13:16:31', NULL, 'Active', NULL),
(62, 1, 'ross123', 'Success - User Login', '2025-05-16 13:19:45', NULL, 'Active', NULL),
(63, 1, 'ross123', 'Success - User Login', '2025-05-16 13:27:27', NULL, 'Active', NULL),
(64, 1, 'ross123', 'Success - User Login', '2025-05-16 13:29:54', NULL, 'Active', NULL),
(65, 1, 'ross123', 'Success - User Login', '2025-05-16 13:31:16', NULL, 'Active', NULL),
(66, 3, 'jeja123', 'Success - Admin Login', '2025-05-16 14:32:33', '2025-05-16 14:36:36', 'Inactive', NULL),
(67, 3, 'jeja123', 'Success - Admin Login', '2025-05-16 14:36:27', '2025-05-16 14:36:36', 'Inactive', NULL),
(68, 3, 'jeja123', 'Success - Admin Login', '2025-05-16 14:39:09', '2025-05-16 14:42:01', 'Inactive', NULL),
(69, 1, 'ross123', 'Success - User Login', '2025-05-16 15:04:21', NULL, 'Active', NULL),
(70, 1, 'ross123', 'Success - User Login', '2025-05-16 15:04:51', NULL, 'Active', NULL),
(71, 3, 'jeja123', 'Success - Admin Login', '2025-05-16 15:07:47', '2025-05-16 15:09:14', 'Inactive', NULL),
(72, 3, 'jeja123', 'Success - Admin Login', '2025-05-16 15:09:02', '2025-05-16 15:09:14', 'Inactive', NULL),
(73, 1, 'ross123', 'Success - User Login', '2025-05-16 15:18:09', NULL, 'Active', NULL),
(74, 1, 'ross123', 'User', '2025-05-16 15:18:30', NULL, 'Active', 'User Booked an appointment'),
(75, 3, 'jeja123', 'Success - Admin Login', '2025-05-23 23:45:55', '2025-05-24 00:32:27', 'Inactive', NULL),
(76, 3, 'jeja123', 'Success - Admin Login', '2025-05-23 23:46:47', '2025-05-24 00:32:27', 'Inactive', NULL),
(77, 3, 'jeja123', 'Success - Admin Login', '2025-05-23 23:47:46', '2025-05-24 00:32:27', 'Inactive', NULL),
(78, 3, 'jeja123', 'Success - Admin Login', '2025-05-23 23:50:57', '2025-05-24 00:32:27', 'Inactive', NULL),
(79, 3, 'jeja123', 'Success - Admin Login', '2025-05-23 23:56:49', '2025-05-24 00:32:27', 'Inactive', NULL),
(80, 3, 'jeja123', 'Success - Admin Login', '2025-05-23 23:58:36', '2025-05-24 00:32:27', 'Inactive', NULL),
(81, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:00:44', '2025-05-24 00:32:27', 'Inactive', NULL),
(82, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:13:22', '2025-05-24 00:32:27', 'Inactive', NULL),
(83, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:20:38', '2025-05-24 00:32:27', 'Inactive', NULL),
(84, 3, 'jeja123', 'Admin', '2025-05-24 00:21:52', '2025-05-24 00:32:27', 'Inactive', 'Admin Added medical record for appointment ID 1'),
(85, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:25:16', '2025-05-24 00:32:27', 'Inactive', NULL),
(86, 3, 'jeja123', 'Admin', '2025-05-24 00:25:32', '2025-05-24 00:32:27', 'Inactive', 'Admin Added medical record for appointment ID 1'),
(87, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:27:11', '2025-05-24 00:32:27', 'Inactive', NULL),
(88, 3, 'jeja123', 'Admin', '2025-05-24 00:27:27', '2025-05-24 00:32:27', 'Inactive', 'Admin Added medical record for appointment ID 2'),
(91, 3, 'jeja123', 'Success - User Login', '2025-05-24 00:30:23', '2025-05-24 00:32:27', 'Inactive', NULL),
(92, 3, 'jeja123', 'User', '2025-05-24 00:30:39', '2025-05-24 00:32:27', 'Inactive', 'User Booked an appointment'),
(93, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:30:53', '2025-05-24 00:32:27', 'Inactive', NULL),
(94, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:32:03', '2025-05-24 00:32:27', 'Inactive', NULL),
(95, 3, 'jeja123', 'Admin', '2025-05-24 00:32:14', '2025-05-24 00:32:27', 'Inactive', 'Admin Added medical record for appointment ID 3'),
(96, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:34:45', '2025-05-24 00:36:32', 'Inactive', NULL),
(97, 3, 'jeja123', 'Admin', '2025-05-24 00:35:04', '2025-05-24 00:36:32', 'Inactive', 'Admin added medical record and removed appointment ID 3'),
(98, 3, 'jeja123', 'Success - User Login', '2025-05-24 00:36:18', '2025-05-24 00:36:32', 'Inactive', NULL),
(99, 3, 'jeja123', 'User', '2025-05-24 00:36:23', '2025-05-24 00:36:32', 'Inactive', 'User Booked an appointment'),
(100, 3, 'jeja123', 'User', '2025-05-24 00:36:29', '2025-05-24 00:36:32', 'Inactive', 'User Booked an appointment'),
(101, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:37:12', '2025-05-24 00:43:52', 'Inactive', NULL),
(102, 3, 'jeja123', 'Admin', '2025-05-24 00:37:23', '2025-05-24 00:43:52', 'Inactive', 'Admin added medical record and removed appointment ID 4'),
(103, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:40:34', '2025-05-24 00:43:52', 'Inactive', NULL),
(104, 3, 'jeja123', 'Admin', '2025-05-24 00:40:43', '2025-05-24 00:43:52', 'Inactive', 'Admin added medical record and removed appointment ID 5'),
(107, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:43:45', '2025-05-24 00:43:52', 'Inactive', NULL),
(108, 2, 'ian123', 'Success - User Login', '2025-05-24 00:44:16', '2025-05-24 00:56:18', 'Inactive', NULL),
(109, 2, 'ian123', 'User', '2025-05-24 00:44:23', '2025-05-24 00:56:18', 'Inactive', 'User Booked an appointment'),
(110, 2, 'ian123', 'User', '2025-05-24 00:44:34', '2025-05-24 00:56:18', 'Inactive', 'User Booked an appointment'),
(111, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:44:44', '2025-05-24 00:46:42', 'Inactive', NULL),
(112, 3, 'jeja123', 'Admin', '2025-05-24 00:44:52', '2025-05-24 00:46:42', 'Inactive', 'Admin added medical record and removed appointment ID 7'),
(113, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:46:26', '2025-05-24 00:46:42', 'Inactive', NULL),
(114, 3, 'jeja123', 'Admin', '2025-05-24 00:46:33', '2025-05-24 00:46:42', 'Inactive', 'Admin Added medical record for appointment ID 6'),
(115, 2, 'ian123', 'Success - User Login', '2025-05-24 00:46:48', '2025-05-24 00:56:18', 'Inactive', NULL),
(116, 2, 'ian123', 'Success - User Login', '2025-05-24 00:48:11', '2025-05-24 00:56:18', 'Inactive', NULL),
(117, 2, 'ian123', 'Success - User Login', '2025-05-24 00:50:03', '2025-05-24 00:56:18', 'Inactive', NULL),
(118, 2, 'ian123', 'Success - User Login', '2025-05-24 00:50:25', '2025-05-24 00:56:18', 'Inactive', NULL),
(119, 2, 'ian123', 'Success - User Login', '2025-05-24 00:51:06', '2025-05-24 00:56:18', 'Inactive', NULL),
(120, 2, 'ian123', 'Success - User Login', '2025-05-24 00:51:25', '2025-05-24 00:56:18', 'Inactive', NULL),
(121, 2, 'ian123', 'Success - User Login', '2025-05-24 00:54:18', '2025-05-24 00:56:18', 'Inactive', NULL),
(122, 2, 'ian123', 'Success - User Login', '2025-05-24 00:56:10', '2025-05-24 00:56:18', 'Inactive', NULL),
(123, 2, 'ian123', 'User', '2025-05-24 00:56:15', '2025-05-24 00:56:18', 'Inactive', 'User booked an appointment'),
(125, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:56:26', '2025-05-24 00:56:43', 'Inactive', NULL),
(126, 3, 'jeja123', 'Admin', '2025-05-24 00:56:36', '2025-05-24 00:56:43', 'Inactive', 'Admin Added medical record for appointment ID 8'),
(127, 2, 'ian123', 'Success - User Login', '2025-05-24 00:56:50', NULL, 'Active', NULL),
(128, 2, 'ian123', 'Success - User Login', '2025-05-24 00:58:29', NULL, 'Active', NULL),
(129, 2, 'ian123', 'User', '2025-05-24 00:58:38', NULL, 'Active', 'User booked an appointment'),
(130, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 00:59:10', '2025-05-24 00:59:26', 'Inactive', NULL),
(131, 3, 'jeja123', 'Admin', '2025-05-24 00:59:21', '2025-05-24 00:59:26', 'Inactive', 'Admin Added medical record for appointment ID 9'),
(132, 2, 'ian123', 'Success - User Login', '2025-05-24 00:59:32', NULL, 'Active', NULL),
(133, 2, 'ian123', 'Success - User Login', '2025-05-24 01:00:49', NULL, 'Active', NULL),
(134, 2, 'ian123', 'Success - User Login', '2025-05-24 01:01:37', NULL, 'Active', NULL),
(135, 2, 'ian123', 'Success - User Login', '2025-05-24 01:02:32', NULL, 'Active', NULL),
(136, 2, 'ian123', 'Success - User Login', '2025-05-24 01:04:36', NULL, 'Active', NULL),
(137, 2, 'ian123', 'Success - User Login', '2025-05-24 01:06:23', NULL, 'Active', NULL),
(138, 2, 'ian123', 'Success - User Login', '2025-05-24 01:06:44', NULL, 'Active', NULL),
(139, 3, 'jeja123', 'Success - Admin Login', '2025-05-24 01:11:05', '2025-05-24 01:11:16', 'Inactive', NULL);

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
(2, 'ian', 'iansarno@gmail.com', 'ian123', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'User', 'Active', 'What\'s the name of your first pet?', 'kPP3e1CTgrOFy2MeVuAyRj3YCF0KkXkpoqnlJBGV5Nw=', 'sarno', 'Null'),
(3, 'ross', 'jeja@gmail.com', 'jeja123', 'ky88G1YlfOhTmsJp16q0JVDaz4gY0HXwvfGZBWKq4+8=', 'Admin', 'Active', 'What\'s your favorite food?', '3kM+1VChYkp0J5qjDDa1LyhEJmEMAUtwAi5MiJ68qHU=', 'sabio', 'src/images/add.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `fk_appointment_user` (`u_id`);

--
-- Indexes for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `appointment_id` (`appointment_id`);

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
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `fk_appointment_user` FOREIGN KEY (`u_id`) REFERENCES `tbl_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD CONSTRAINT `medicalrecord_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD CONSTRAINT `tbl_log_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_users` (`u_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
