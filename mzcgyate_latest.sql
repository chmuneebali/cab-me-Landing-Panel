-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2025 at 09:12 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mzcgyate_latest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_documents`
--

CREATE TABLE `admin_documents` (
  `id` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_enabled` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_documents`
--

INSERT INTO `admin_documents` (`id`, `title`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'Vehicle Owner Ship', 'Yes', '2024-12-11 14:17:25', '2024-12-11 20:17:25'),
(2, 'Car Safety Inspection', 'Yes', '2024-12-11 14:17:55', '2024-12-11 20:17:55'),
(3, 'Driving License(G)', 'No', '2024-12-11 14:18:57', '2024-12-11 20:18:57'),
(4, 'Proof Of eligibility to Work In Canada', 'No', '2024-12-11 20:19:24', '2024-12-11 20:19:24'),
(5, 'Vehicle Insurance', 'No', '2024-12-11 20:20:07', '2024-12-11 20:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notification`
--

CREATE TABLE `admin_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_notification`
--

INSERT INTO `admin_notification` (`id`, `title`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'New cars added', 'New cars category added included Sedan And XL', '', '2025-02-07 21:06:58', '2025-02-07 21:06:58'),
(3, 'Test', 'this is the message', '', '2025-02-08 16:03:46', '2025-02-08 16:03:46'),
(4, 'hello testing', 'hello testing ... ....', '', '2025-02-08 16:15:31', '2025-02-08 16:15:31'),
(5, 'hey', 'hey', '', '2025-02-08 16:16:10', '2025-02-08 16:16:10'),
(6, 'hey', 'hwoow fakdf. fa kdjf alkdfad adfkad', '', '2025-02-08 19:09:47', '2025-02-08 19:09:47'),
(7, 'new message', 'testing', '', '2025-02-09 19:27:33', '2025-02-09 19:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'banner1', 'this is banner 1', '1733751245_black-taxi-cab-lXNydX0-600.jpg', 'yes', '2024-12-09 19:34:05', '2024-12-09 19:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `vehicle_id`, `created_at`, `modifier`, `updated_at`) VALUES
(1, 'Toyota', 'yes', '', '2024-12-07 15:44:46', '2024-12-11 14:50:08', '2024-12-11 14:50:08'),
(2, 'BMW', 'yes', '', '2025-02-07 18:44:06', '2025-02-07 18:44:06', '2025-02-07 18:44:09'),
(3, 'Honda', 'yes', '', '2025-02-07 18:44:27', '2025-02-07 18:52:47', '2025-02-07 18:52:47'),
(4, 'Mercedes-Benz', 'yes', '', '2025-02-07 18:53:02', '2025-02-07 18:53:02', '2025-02-07 18:55:36'),
(5, 'Audi', 'yes', '', '2025-02-07 18:53:49', '2025-02-07 18:53:49', '2025-02-07 18:55:37'),
(6, 'Hyundai', 'yes', '', '2025-02-07 18:54:06', '2025-02-07 18:54:06', '2025-02-07 18:55:38'),
(7, 'Ford', 'yes', '', '2025-02-07 18:54:22', '2025-02-07 18:54:22', '2025-02-07 18:55:39'),
(8, 'Chevrolet', 'yes', '', '2025-02-07 18:54:43', '2025-02-07 18:54:43', '2025-02-07 18:55:41'),
(9, 'Nissan', 'yes', '', '2025-02-07 18:55:08', '2025-02-07 18:55:08', '2025-02-07 18:55:42'),
(10, 'Kia', 'yes', '', '2025-02-07 18:55:27', '2025-02-07 18:55:27', '2025-02-07 18:55:44'),
(11, 'Volvo', 'yes', '', '2025-02-07 20:14:42', '2025-02-07 20:14:42', '2025-02-07 20:14:42'),
(12, 'Nissan', 'yes', '', '2025-02-07 20:15:08', '2025-02-07 20:15:08', '2025-02-07 20:15:08'),
(13, 'Mazda', 'yes', '', '2025-02-07 20:15:22', '2025-02-07 20:15:22', '2025-02-07 20:20:45'),
(14, 'Subaru', 'yes', '', '2025-02-07 20:15:53', '2025-02-07 20:15:53', '2025-02-07 20:15:53'),
(15, 'Volkswagen (VW)', 'yes', '', '2025-02-07 20:16:13', '2025-02-07 20:16:13', '2025-02-07 20:16:13'),
(16, 'Lexus', 'yes', '', '2025-02-07 20:16:56', '2025-02-07 20:16:56', '2025-02-07 20:16:56'),
(17, 'Acura', 'yes', '', '2025-02-07 20:17:18', '2025-02-07 20:17:18', '2025-02-07 20:17:18'),
(18, 'Genesis', 'yes', '', '2025-02-07 20:17:41', '2025-02-07 20:17:41', '2025-02-07 20:17:41'),
(19, 'Cadillac', 'yes', '', '2025-02-07 20:18:00', '2025-02-07 20:18:00', '2025-02-07 20:18:00'),
(20, 'Tesla', 'yes', '', '2025-02-07 20:18:26', '2025-02-07 20:18:26', '2025-02-07 20:18:26'),
(21, 'Polestar', 'yes', '', '2025-02-07 20:18:54', '2025-02-07 20:18:54', '2025-02-07 20:18:54'),
(22, 'Lucid Motors', 'yes', '', '2025-02-07 20:19:51', '2025-02-07 20:19:51', '2025-02-07 20:19:51'),
(23, 'Dodge', 'yes', '', '2025-02-07 20:20:06', '2025-02-07 20:20:06', '2025-02-07 20:20:06'),
(24, 'Chrysler', 'yes', '', '2025-02-07 20:20:23', '2025-02-07 20:20:23', '2025-02-07 20:20:23'),
(25, 'Hyundai', 'yes', '', '2025-02-07 20:46:13', '2025-02-07 20:46:13', '2025-02-07 20:46:13'),
(26, 'Mitsubishi', 'yes', '', '2025-02-07 20:59:25', '2025-02-07 20:59:25', '2025-02-07 20:59:25'),
(27, 'Suzuki', 'yes', '', '2025-02-07 20:59:39', '2025-02-07 20:59:39', '2025-02-07 20:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE `car_model` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `vehicle_type_id` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL,
  `created_at` varchar(25) NOT NULL,
  `modifier` varchar(25) DEFAULT NULL,
  `updated_at` varchar(25) DEFAULT NULL,
  `deleted_at` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`id`, `name`, `brand_id`, `vehicle_type_id`, `status`, `created_at`, `modifier`, `updated_at`, `deleted_at`) VALUES
(1, 'Toyota Camry', '1', '1', 'yes', '2024-12-07 15:46:46', '2024-12-07 15:46:46', '2025-02-07 18:57:05', NULL),
(2, 'Toyota Corolla', '1', '1', 'yes', '2025-02-07 18:57:17', '2025-02-07 18:57:17', '2025-02-07 18:58:23', NULL),
(3, 'Toyota Avalon', '1', '1', 'yes', '2025-02-07 18:58:11', '2025-02-07 18:58:11', '2025-02-07 18:58:26', NULL),
(4, 'Honda Accord', '3', '1', 'yes', '2025-02-07 18:59:08', '2025-02-07 18:59:08', '2025-02-07 19:05:21', NULL),
(5, 'Honda Civic', '3', '1', 'yes', '2025-02-07 18:59:45', '2025-02-07 18:59:45', '2025-02-07 19:05:24', NULL),
(6, 'Honda Insight', '3', '1', 'yes', '2025-02-07 19:00:46', '2025-02-07 19:00:46', '2025-02-07 19:05:25', NULL),
(7, 'BMW 3 Series', '2', '1', 'yes', '2025-02-07 19:01:20', '2025-02-07 19:01:20', '2025-02-07 19:05:27', NULL),
(8, 'BMW 5 Series', '2', '1', 'yes', '2025-02-07 19:01:59', '2025-02-07 19:01:59', '2025-02-07 19:05:29', NULL),
(9, 'BMW 7 Series', '2', '1', 'yes', '2025-02-07 19:02:23', '2025-02-07 19:02:23', '2025-02-07 19:05:31', NULL),
(10, 'Mercedes-Benz C-Class', '4', '1', 'yes', '2025-02-07 19:03:45', '2025-02-07 19:03:45', '2025-02-07 19:05:31', NULL),
(11, 'Mercedes-Benz E-Class', '4', '1', 'yes', '2025-02-07 19:04:18', '2025-02-07 19:04:18', '2025-02-07 19:28:15', NULL),
(12, 'Mercedes-Benz S-Class', '4', '1', 'yes', '2025-02-07 19:05:07', '2025-02-07 19:05:07', '2025-02-07 19:28:16', NULL),
(13, 'Audi A3', '5', '1', 'yes', '2025-02-07 19:12:08', '2025-02-07 19:12:08', '2025-02-07 19:28:17', NULL),
(16, 'Audi A4', '5', '1', 'yes', '2025-02-07 19:15:57', '2025-02-07 19:15:57', '2025-02-07 19:28:18', NULL),
(17, 'Audi A6', '5', '1', 'yes', '2025-02-07 19:16:22', '2025-02-07 19:16:22', '2025-02-07 19:28:19', NULL),
(18, 'Hyundai Sonata', '6', '1', 'yes', '2025-02-07 19:16:51', '2025-02-07 19:16:51', '2025-02-07 19:28:21', NULL),
(19, 'Hyundai Elantra', '6', '1', 'yes', '2025-02-07 19:17:19', '2025-02-07 19:17:19', '2025-02-07 19:28:24', NULL),
(20, 'Hyundai Ioniq', '6', '1', 'yes', '2025-02-07 19:17:56', '2025-02-07 19:17:56', '2025-02-07 19:28:25', NULL),
(21, 'Ford Fusion', '7', '1', 'yes', '2025-02-07 19:19:06', '2025-02-07 19:19:06', '2025-02-07 19:28:26', NULL),
(22, 'Ford Taurus', '7', '1', 'yes', '2025-02-07 19:19:27', '2025-02-07 19:19:27', '2025-02-07 19:28:32', NULL),
(23, 'Chevrolet Malibu', '8', '1', 'yes', '2025-02-07 19:21:01', '2025-02-07 19:21:01', '2025-02-07 19:28:38', NULL),
(24, 'Chevrolet Impala', '8', '1', 'yes', '2025-02-07 19:21:32', '2025-02-07 19:21:32', '2025-02-07 19:28:39', NULL),
(25, 'Nissan Altima', '9', '1', 'yes', '2025-02-07 19:22:18', '2025-02-07 19:22:18', '2025-02-07 19:28:43', NULL),
(26, 'Nissan Maxima', '9', '1', 'yes', '2025-02-07 19:22:56', '2025-02-07 19:22:56', '2025-02-07 19:28:42', NULL),
(27, 'Nissan Sentra', '9', '1', 'yes', '2025-02-07 19:23:29', '2025-02-07 19:23:29', '2025-02-07 19:28:45', NULL),
(28, 'Kia Optima', '10', '1', 'yes', '2025-02-07 19:24:13', '2025-02-07 19:24:13', '2025-02-07 19:28:50', NULL),
(30, 'Kia Stinger', '10', '1', 'yes', '2025-02-07 19:26:42', '2025-02-07 19:26:42', '2025-02-07 19:28:59', NULL),
(31, 'Kia K5', '10', '1', 'yes', '2025-02-07 19:27:11', '2025-02-07 19:27:11', '2025-02-07 19:29:00', NULL),
(32, 'Mirai', '1', '1', 'yes', '2025-02-07 19:44:36', '2025-02-07 19:44:36', '2025-02-07 19:55:02', NULL),
(33, 'Crown', '1', '1', 'yes', '2025-02-07 19:44:58', '2025-02-07 19:44:58', '2025-02-07 19:55:03', NULL),
(34, 'Civic', '3', '1', 'yes', '2025-02-07 19:45:22', '2025-02-07 19:45:22', '2025-02-07 19:55:10', NULL),
(35, 'i4', '2', '1', 'yes', '2025-02-07 19:47:01', '2025-02-07 19:47:01', '2025-02-07 19:48:20', NULL),
(36, 'i7', '2', '1', 'yes', '2025-02-07 19:47:55', '2025-02-07 19:47:55', '2025-02-07 19:48:39', NULL),
(37, 'EQE', '4', '1', 'yes', '2025-02-07 19:50:59', '2025-02-07 19:50:59', '2025-02-07 19:55:12', NULL),
(38, 'EQS', '4', '1', 'yes', '2025-02-07 19:51:16', '2025-02-07 19:51:16', '2025-02-07 19:55:13', NULL),
(39, 'Mercedes-Benz A-Class', '4', '1', 'yes', '2025-02-07 19:53:10', '2025-02-07 19:53:10', '2025-02-07 19:55:17', NULL),
(40, 'Audi A8', '5', '1', 'yes', '2025-02-07 19:54:12', '2025-02-07 19:54:12', '2025-02-07 19:55:15', NULL),
(41, 'e-tron GT', '5', '1', 'yes', '2025-02-07 19:54:36', '2025-02-07 19:54:36', '2025-02-07 19:55:16', NULL),
(42, 'Kia Forte', '10', '1', 'yes', '2025-02-07 19:58:43', '2025-02-07 19:58:43', '2025-02-07 19:58:43', NULL),
(43, '300', '24', '1', 'yes', '2025-02-07 20:21:17', '2025-02-07 20:21:17', '2025-02-07 20:21:17', NULL),
(44, 'Charger', '23', '1', 'yes', '2025-02-07 20:21:42', '2025-02-07 20:21:42', '2025-02-07 20:21:42', NULL),
(45, 'Lucid Air', '22', '1', 'yes', '2025-02-07 20:22:06', '2025-02-07 20:22:06', '2025-02-07 20:22:20', NULL),
(46, 'Polestar 2', '21', '1', 'yes', '2025-02-07 20:22:49', '2025-02-07 20:22:49', '2025-02-07 20:22:49', NULL),
(47, 'Model 3', '20', '1', 'yes', '2025-02-07 20:23:21', '2025-02-07 20:23:21', '2025-02-07 20:23:21', NULL),
(48, 'Model S', '20', '1', 'yes', '2025-02-07 20:23:45', '2025-02-07 20:23:45', '2025-02-07 20:23:45', NULL),
(49, 'S60', '11', '1', 'yes', '2025-02-07 20:24:14', '2025-02-07 20:24:14', '2025-02-07 20:24:14', NULL),
(50, 'S90', '11', '1', 'yes', '2025-02-07 20:24:30', '2025-02-07 20:24:30', '2025-02-07 20:24:30', NULL),
(51, 'CT4', '19', '1', 'yes', '2025-02-07 20:25:00', '2025-02-07 20:25:00', '2025-02-07 20:25:00', NULL),
(52, 'CT5', '19', '1', 'yes', '2025-02-07 20:25:17', '2025-02-07 20:25:17', '2025-02-07 20:25:17', NULL),
(53, 'CT6', '19', '1', 'yes', '2025-02-07 20:25:35', '2025-02-07 20:25:35', '2025-02-07 20:25:35', NULL),
(54, 'G70', '18', '1', 'yes', '2025-02-07 20:26:58', '2025-02-07 20:26:58', '2025-02-07 20:26:58', NULL),
(55, 'G80', '18', '1', 'yes', '2025-02-07 20:27:21', '2025-02-07 20:27:21', '2025-02-07 20:27:21', NULL),
(56, 'G90', '18', '1', 'yes', '2025-02-07 20:27:47', '2025-02-07 20:27:47', '2025-02-07 20:27:47', NULL),
(57, 'ILX', '17', '1', 'yes', '2025-02-07 20:28:20', '2025-02-07 20:28:20', '2025-02-07 20:28:20', NULL),
(58, 'TLX', '17', '1', 'yes', '2025-02-07 20:28:49', '2025-02-07 20:28:49', '2025-02-07 20:28:49', NULL),
(59, 'RLX', '17', '1', 'yes', '2025-02-07 20:29:15', '2025-02-07 20:29:15', '2025-02-07 20:29:15', NULL),
(60, 'IS', '16', '1', 'yes', '2025-02-07 20:29:47', '2025-02-07 20:29:47', '2025-02-07 20:29:47', NULL),
(61, 'GS', '16', '1', 'yes', '2025-02-07 20:30:07', '2025-02-07 20:30:07', '2025-02-07 20:30:07', NULL),
(62, 'LS', '16', '1', 'yes', '2025-02-07 20:30:34', '2025-02-07 20:30:34', '2025-02-07 20:30:34', NULL),
(63, 'Jetta', '15', '1', 'yes', '2025-02-07 20:31:21', '2025-02-07 20:31:21', '2025-02-07 20:31:21', NULL),
(64, 'Passat', '15', '1', 'yes', '2025-02-07 20:31:47', '2025-02-07 20:31:47', '2025-02-07 20:31:47', NULL),
(65, 'Arteon', '15', '1', 'yes', '2025-02-07 20:32:09', '2025-02-07 20:32:09', '2025-02-07 20:32:09', NULL),
(66, 'Impreza', '14', '1', 'yes', '2025-02-07 20:32:43', '2025-02-07 20:32:43', '2025-02-07 20:32:43', NULL),
(67, 'Legacy', '14', '1', 'yes', '2025-02-07 20:33:03', '2025-02-07 20:33:03', '2025-02-07 20:33:03', NULL),
(68, 'Mazda3', '13', '1', 'yes', '2025-02-07 20:33:35', '2025-02-07 20:33:35', '2025-02-07 20:33:35', NULL),
(69, 'Mazda6', '13', '1', 'yes', '2025-02-07 20:33:51', '2025-02-07 20:33:51', '2025-02-07 20:33:51', NULL),
(70, 'Sentra', '12', '1', 'yes', '2025-02-07 20:34:19', '2025-02-07 20:34:19', '2025-02-07 20:34:19', NULL),
(71, 'Altima', '12', '1', 'yes', '2025-02-07 20:34:43', '2025-02-07 20:34:43', '2025-02-07 20:34:43', NULL),
(72, 'Maxima', '9', '1', 'yes', '2025-02-07 20:35:07', '2025-02-07 20:35:07', '2025-02-07 20:35:07', NULL),
(73, 'Fortuner', '1', '2', 'yes', '2025-02-07 20:40:23', '2025-02-07 20:40:23', '2025-02-07 20:40:23', NULL),
(74, 'Land Cruiser', '1', '2', 'yes', '2025-02-07 20:40:45', '2025-02-07 20:40:45', '2025-02-07 20:40:45', NULL),
(75, 'Highlander', '1', '2', 'yes', '2025-02-07 20:41:09', '2025-02-07 20:41:09', '2025-02-07 20:41:09', NULL),
(76, 'Sequoia', '1', '2', 'yes', '2025-02-07 20:41:33', '2025-02-07 20:41:33', '2025-02-07 20:41:33', NULL),
(77, 'Innova Hycross', '1', '2', 'yes', '2025-02-07 20:41:54', '2025-02-07 20:41:54', '2025-02-07 20:41:54', NULL),
(78, 'Sienna', '1', '2', 'yes', '2025-02-07 20:42:14', '2025-02-07 20:42:14', '2025-02-07 20:42:14', NULL),
(79, 'CR-V', '3', '2', 'yes', '2025-02-07 20:44:11', '2025-02-07 20:44:11', '2025-02-07 20:44:11', NULL),
(80, 'Pilot', '3', '2', 'yes', '2025-02-07 20:44:37', '2025-02-07 20:44:37', '2025-02-07 20:44:37', NULL),
(81, 'Odyssey', '3', '2', 'yes', '2025-02-07 20:45:01', '2025-02-07 20:45:01', '2025-02-07 20:45:01', NULL),
(82, 'Santa Fe', '25', '2', 'yes', '2025-02-07 20:46:49', '2025-02-07 20:46:49', '2025-02-07 20:46:49', NULL),
(83, 'Palisade', '25', '2', 'yes', '2025-02-07 20:47:17', '2025-02-07 20:47:17', '2025-02-07 20:47:17', NULL),
(84, 'Staria', '25', '2', 'yes', '2025-02-07 20:47:43', '2025-02-07 20:47:43', '2025-02-07 20:47:43', NULL),
(85, 'Hyundai Accent', '25', '1', 'yes', '2025-02-07 20:49:53', '2025-02-07 20:49:53', '2025-02-07 20:49:53', NULL),
(86, 'Hyundai Elantra', '25', '1', 'yes', '2025-02-07 20:50:17', '2025-02-07 20:50:17', '2025-02-07 20:50:17', NULL),
(87, 'Hyundai Sonata', '25', '1', 'yes', '2025-02-07 20:50:38', '2025-02-07 20:50:38', '2025-02-07 20:50:38', NULL),
(88, 'Hyundai Ioniq 6', '25', '1', 'yes', '2025-02-07 20:53:13', '2025-02-07 20:53:13', '2025-02-07 20:53:13', NULL),
(89, 'Sorento', '10', '2', 'yes', '2025-02-07 20:54:23', '2025-02-07 20:54:23', '2025-02-07 20:54:23', NULL),
(90, 'Telluride', '10', '2', 'yes', '2025-02-07 20:54:46', '2025-02-07 20:54:46', '2025-02-07 20:54:46', NULL),
(91, 'Carnival', '10', '2', 'yes', '2025-02-07 20:55:11', '2025-02-07 20:55:11', '2025-02-07 20:55:11', NULL),
(92, 'Pathfinder', '10', '2', 'yes', '2025-02-07 20:55:34', '2025-02-07 20:55:34', '2025-02-07 20:55:34', NULL),
(93, 'Armada', '10', '2', 'yes', '2025-02-07 20:56:01', '2025-02-07 20:56:01', '2025-02-07 20:56:01', NULL),
(94, 'Explorer', '7', '2', 'yes', '2025-02-07 20:56:52', '2025-02-07 20:56:52', '2025-02-07 20:56:52', NULL),
(95, 'Expedition', '7', '2', 'yes', '2025-02-07 20:57:18', '2025-02-07 20:57:18', '2025-02-07 20:57:18', NULL),
(96, 'Traverse', '8', '2', 'yes', '2025-02-07 20:57:48', '2025-02-07 20:57:48', '2025-02-07 20:57:48', NULL),
(97, 'Suburban', '8', '2', 'yes', '2025-02-07 20:58:14', '2025-02-07 20:58:14', '2025-02-07 20:58:14', NULL),
(98, 'Tahoe', '8', '2', 'yes', '2025-02-07 20:58:36', '2025-02-07 20:58:36', '2025-02-07 20:58:36', NULL),
(99, 'Outlander', '26', '2', 'yes', '2025-02-07 21:00:22', '2025-02-07 21:00:22', '2025-02-07 21:00:22', NULL),
(100, 'Pajero Sport', '26', '2', 'yes', '2025-02-07 21:00:52', '2025-02-07 21:00:52', '2025-02-07 21:00:52', NULL),
(101, 'Xpander', '26', '2', 'yes', '2025-02-07 21:01:16', '2025-02-07 21:01:16', '2025-02-07 21:01:16', NULL),
(102, 'XL7', '27', '2', 'yes', '2025-02-07 21:01:51', '2025-02-07 21:01:51', '2025-02-07 21:01:51', NULL),
(103, 'Ertiga', '27', '2', 'yes', '2025-02-07 21:02:22', '2025-02-07 21:02:22', '2025-02-07 21:02:22', NULL),
(104, 'Atlas', '15', '2', 'yes', '2025-02-07 21:03:00', '2025-02-07 21:03:00', '2025-02-07 21:03:00', NULL),
(105, 'Tiguan Allspace', '15', '2', 'yes', '2025-02-07 21:03:29', '2025-02-07 21:03:29', '2025-02-07 21:03:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `id` int(11) NOT NULL,
  `id_vehicle_type` varchar(255) DEFAULT NULL,
  `delivery_charges_per_km` varchar(255) DEFAULT NULL,
  `minimum_delivery_charges` varchar(255) DEFAULT NULL,
  `minimum_delivery_charges_within_km` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modifier` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`id`, `id_vehicle_type`, `delivery_charges_per_km`, `minimum_delivery_charges`, `minimum_delivery_charges_within_km`, `created`, `modifier`) VALUES
(1, '1', '5', '5', '5', '2024-12-07 15:44:27', '2025-02-07 18:28:39'),
(2, '2', '2', '2', '2', '2024-12-11 13:10:56', '2025-02-07 18:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `dispatcher_user`
--

CREATE TABLE `dispatcher_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(21) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `profile_picture` text,
  `profile_picture_path` text,
  `remember_token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispatcher_user`
--

INSERT INTO `dispatcher_user` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `status`, `profile_picture`, `profile_picture_path`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Safyan', 'Tariq', '03026111355', 'safyantariq4@gmail.com', '$2y$10$3ZMqeWDuVnYxVUJw1bDWLucAbCjuqqNt7UOoC/jpDmF3Cow.9s8Zq', 'yes', '/tmp/phpSP6pJA', 'dispatcher_user_profile1732995345.jpeg', 'nKNTco6ZL30sJGKefFdD93OyMEfYFCz7wp2i7cmbS723wwAIxXVgg7HSmklK', '2024-11-30 13:36:17', '2024-11-30 13:36:17'),
(2, 'Deplyment', 'Person', '83838388383', 'hassan@gmail.com', '$2y$10$LrZp/j4Xe8S6LQFQ.nTBze5AO/B/Kf/5e3QUZWZSA1fzKby9Zg5nK', 'yes', '/tmp/phpDy7zcK', 'dispatcher_user_profile1733071023.png', 'kVPEk0TXQmy0PJ25sB4CA2sj8NvUlmz8TQwbVoh2HAj7CWrXp8BQnp6jSQ9W', '2024-12-01 10:44:25', '2024-12-01 10:44:25'),
(3, 'Awais', 'Rajput', '03475740874', 'rajaawais893@gmail.com', '$2y$10$DzPojrJfr8L082mEkBCI2esFAjDHwHJ0SG1EJDLsmAvlr86YhH5jW', 'yes', '/tmp/phprAM4wh', 'dispatcher_user_profile1734012458.jpg', 'nAnCZ3RsgMiXgKA7jHgSe0c9HPAGpIE92aPfplVXRVb9kbSQODbCzm8TcgrW', '2024-12-12 08:11:57', '2024-12-12 08:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `driver_document`
--

CREATE TABLE `driver_document` (
  `id` bigint(20) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `document_id` varchar(255) NOT NULL,
  `document_path` varchar(255) NOT NULL,
  `document_status` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_document`
--

INSERT INTO `driver_document` (`id`, `driver_id`, `document_id`, `document_path`, `document_status`, `comment`, `created_at`, `updated_at`) VALUES
(9, '16', '1', 'Vehicle_Owner_Ship_1738067626.png', 'Approved', '', '2025-01-30 17:25:06', '2025-01-30 23:25:06'),
(10, '16', '2', 'Car_Safety_Inspection_1738067662.png', 'Approved', '', '2025-01-30 17:22:59', '2025-01-30 23:22:59'),
(13, '23', '1', 'Vehicle_Owner_Ship_1737743578.jpg', 'Pending', '', '2025-01-27 17:44:26', '2025-01-20 21:02:37'),
(14, '23', '2', 'Car_Safety_Inspection_1737743589.jpg', 'Pending', '', '2025-01-27 17:45:01', '2025-01-20 21:02:47'),
(15, '26', '1', 'Vehicle_Owner_Ship_1737743578.jpg', 'Approved', '', '2025-01-27 17:44:31', '2025-01-24 23:27:36'),
(16, '26', '2', 'Car_Safety_Inspection_1737743589.jpg', 'Approved', '', '2025-01-27 17:45:06', '2025-01-24 23:27:43'),
(17, '28', '1', 'Vehicle_Owner_Ship_1737743578.jpg', 'Approved', '', '2025-01-27 20:53:14', '2025-01-28 02:53:14'),
(18, '28', '2', 'Car_Safety_Inspection_1738011809.png', 'Approved', '', '2025-01-27 21:03:43', '2025-01-28 03:03:43'),
(19, '30', '1', 'Vehicle_Owner_Ship_1738012594.jpg', 'Approved', '', '2025-01-27 21:17:27', '2025-01-28 03:17:27'),
(20, '30', '2', 'Car_Safety_Inspection_1738012620.jpg', 'Approved', '', '2025-01-27 21:17:29', '2025-01-28 03:17:29'),
(21, '34', '1', 'Vehicle_Owner_Ship_1738397729.jpg', 'Approved', '', '2025-02-09 19:35:43', '2025-02-10 01:35:43'),
(22, '34', '2', 'Car_Safety_Inspection_1738397742.jpg', 'Approved', '', '2025-02-09 19:36:50', '2025-02-10 01:36:50'),
(23, '21', '1', 'Vehicle_Owner_Ship_1738417846.jpg', 'Pending', '', '2025-02-01 19:50:46', '2025-02-01 19:50:46'),
(24, '21', '2', 'Car_Safety_Inspection_1738428994.jpg', 'Pending', '', '2025-02-01 22:56:34', '2025-02-01 22:56:34'),
(25, '36', '1', 'Vehicle_Owner_Ship_1738761168.jpg', 'Pending', '', '2025-02-05 19:12:49', '2025-02-05 19:12:49'),
(26, '36', '2', 'Car_Safety_Inspection_1738761190.jpg', 'Pending', '', '2025-02-05 19:13:10', '2025-02-05 19:13:10'),
(27, '39', '1', 'Vehicle_Owner_Ship_1738762565.jpg', 'Approved', '', '2025-02-07 18:05:25', '2025-02-08 00:05:25'),
(28, '39', '2', 'Car_Safety_Inspection_1738762613.jpg', 'Approved', '', '2025-02-07 18:05:34', '2025-02-08 00:05:34'),
(29, '38', '1', 'Vehicle_Owner_Ship_1738763460.jpg', 'Pending', '', '2025-02-05 19:51:00', '2025-02-05 19:51:00'),
(30, '38', '2', 'Car_Safety_Inspection_1738763494.jpg', 'Pending', '', '2025-02-05 19:51:34', '2025-02-05 19:51:34'),
(31, '40', '1', 'Vehicle_Owner_Ship_1738790313.jpg', 'Approved', '', '2025-02-09 19:42:18', '2025-02-10 01:42:18'),
(32, '40', '2', 'Car_Safety_Inspection_1738790456.jpg', 'Approved', '', '2025-02-09 19:42:22', '2025-02-10 01:42:22'),
(33, '43', '1', 'Vehicle_Owner_Ship_1738935524.jpg', 'Approved', '', '2025-02-07 17:58:51', '2025-02-07 23:58:51'),
(34, '43', '2', 'Car_Safety_Inspection_1738935545.jpg', 'Approved', '', '2025-02-07 18:03:50', '2025-02-08 00:03:50'),
(35, '44', '1', 'Vehicle_Owner_Ship_1739283054.jpg', 'Pending', '', '2025-02-11 20:10:54', '2025-02-11 20:10:54'),
(36, '44', '2', 'Car_Safety_Inspection_1739283070.jpg', 'Pending', '', '2025-02-11 20:11:10', '2025-02-11 20:11:10'),
(37, '42', '1', 'Vehicle_Owner_Ship_1739454499.jpg', 'Pending', '', '2025-02-13 19:48:20', '2025-02-13 19:48:20'),
(38, '42', '2', 'Car_Safety_Inspection_1739454522.jpg', 'Pending', '', '2025-02-13 19:48:43', '2025-02-13 19:48:43'),
(39, '46', '1', 'Vehicle_Owner_Ship_1739473857.jpg', 'Pending', '', '2025-02-14 01:10:57', '2025-02-14 01:10:57'),
(40, '46', '2', 'Car_Safety_Inspection_1739473970.jpg', 'Pending', '', '2025-02-14 01:12:50', '2025-02-14 01:12:50'),
(41, '25', '1', 'Vehicle_Owner_Ship_1739555771.jpg', 'Pending', '', '2025-02-14 23:56:11', '2025-02-14 23:56:11'),
(42, '25', '2', 'Car_Safety_Inspection_1739555783.jpg', 'Pending', '', '2025-02-14 17:56:23', '2025-02-14 23:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `send_to_admin` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `type`, `subject`, `message`, `send_to_admin`, `created_at`, `updated_at`) VALUES
(1, 'payment_receipt', 'Payment Receipt - {AppName}', '<div width=\"100%\" style=\"padding: 0px; font-family: arial; line-height: 28px; height: 100%; width: 100%;\">\r\n    <div style=\"max-width: 700px; margin: 30px; font-size: 14px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n        <span style=\"font-size: 14px;\">﻿</span><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255); width: 100%; margin-bottom: 20px;\">\r\n            <tbody>\r\n            <tr>\r\n                <td>\r\n                    <img src=\"https://cabme-landing.siswebapp.com/img/logo_header.png\" alt=\"CabMe\" style=\"border:none\" width=\"15%\">\r\n                </td>\r\n            </tr>\r\n            </tbody>\r\n        </table>\r\n        <h3 style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Payment Receipt </b></h3><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><span style=\"font-size: 14px;\">Hello Mr./Mrs {UserName}</span></p><u style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 0);\"><b><span style=\"font-size: 18px;\">Details of your payment receipt:</span></b></u><br><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Distance:</b> {Distance}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Duration:</b> {Duree}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Sub Total:</b> {Subtotal}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Discount:</b> {Discount}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Tax:</b> {Tax}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Driver Tip:</b> {Tip}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Total:</b> {Total}</p><p style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255);\"><b>Date:</b> {Date}</p><br><p style=\"\"><b style=\"\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Regards {AppName}</font></b></p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"color: rgb(81, 77, 106); background-color: rgb(255, 255, 255); width: 100%;\">\r\n            <tbody>\r\n            <tr>\r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n                \r\n            </tr>\r\n            </tbody>\r\n        </table>\r\n    </div>\r\n</div>', 'false', '2023-08-03 04:09:00', '2023-08-04 14:28:04'),
(2, 'wallet_topup', 'Wallet Topup Confirmation', '<div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Dear {UserName},</font></b></div><div>We are writing to confirm that your wallet has been successfully topped up with {Amount} on {Date}.</div><div><br></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Transaction Details:</font></b></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Date: {Date}</font></b></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Amount: {Amount}</font></b></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Payment Method: {PaymentMethod}</font></b></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Transaction ID: {TransactionId}</font></b></div><div><br></div><div>Your updated wallet balance is now {Balance}. This balance can be used to conveniently and securely pay for your next ride.</div><div><br></div><div>As always, we strive to provide you with the best user experience, and your feedback is valuable to us. We look forward to continuing to serve you and making your experience with us even better.</div><div><br></div><div>Thank you once again for choosing&nbsp;<span style=\"font-weight: bolder;\"><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">{AppName}</font></span>. We appreciate your continued support.</div><div><br></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Best regards,</font></b></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\"><br></font></b></div><div><b><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">{AppName}<br><br></font></b></div>', 'false', '2023-08-04 04:02:29', '2023-08-04 09:52:18'),
(3, 'payout_approve_disapprove', 'Payout Request Status -{RequestId}', '<p><span style=\"background-color: rgb(255, 255, 0);\">Dear {UserName},</span></p><p><span style=\"font-size: 1rem;\">I hope this email finds you well. We would like to inform you about the status of your recent payout request with the Request ID {RequestId}.</span><br></p><p><span style=\"font-size: 1rem;\">We are pleased to inform you that your payout request has been {Status}. The requested amount will be processed and transferred to your designated account within short time. Please note that the processing time may vary depending on your financial institution.</span><br></p><p><span style=\"font-size: 1rem; background-color: rgb(255, 255, 0);\">Here are the details of your {Status} payout:</span><br></p><p><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 1rem;\">Request ID: {RequestId}<br></span><span style=\"font-size: 1rem;\">Amount: {Amount}</span><span style=\"font-size: 1rem;\"><br></span></span><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">Date: {Date}</span></p><p><span style=\"font-size: 1rem;\">Alternatively, in the unlikely event that your payout request has been disapproved, we regret to inform you that the request cannot be fulfilled at this time. The reasons for disapproval may include, but are not limited to, incomplete or incorrect information provided, failure to meet eligibility criteria, or violation of our platforms terms of service.</span><br></p><p><span style=\"font-size: 1rem;\">If you believe there might have been a misunderstanding or you would like to discuss the matter further, kindly get in touch with our support team, and we will be happy to assist you.</span><br></p><p><span style=\"font-size: 1rem;\">We value your partnership with us, and our team is always here to help. We look forward to continued success together.</span><br></p><p><span style=\"font-size: 1rem;\">Thank you for being a part of our community.</span><br></p><p><span style=\"background-color: rgb(255, 255, 0);\"><span style=\"font-size: 1rem;\"><br>Best regards,</span><br></span></p><p><span style=\"background-color: rgb(255, 255, 0);\">{AppName}</span></p>', 'true', '2023-08-04 04:03:43', '2023-09-06 11:36:46'),
(4, 'payout_request', 'Payout Request - {PayoutRequestId}', '<div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">Hi {AppName},</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\">I hope this email finds you well. I am writing to request a payout for {UserName}&nbsp; account with ID number {UserId}.&nbsp;</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\">Below are the details of my payout request:</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">Account ID: {UserId}</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">Amount Requested:{Amount}</span></font></div><div><span style=\"white-space-collapse: preserve; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem; background-color: rgb(255, 255, 0);\">Payment Account ID: {PayoutRequestId}\r\n</span><div><span style=\"white-space-collapse: preserve; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem; background-color: rgb(255, 255, 0);\">Date: {Date}</span><br></div></div><div><span style=\"white-space-collapse: preserve; color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 1rem; background-color: rgb(255, 255, 0);\"><br></span></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\">I would be grateful if you could process my payout request at your earliest convenience. If there are any delays or issues with my request, please inform me as soon as possible so that I can take appropriate action if needed.</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\">Thank you for your attention to this matter. I truly value the partnership we have, and I look forward to your prompt response.</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\">If you require any further information or have any questions, please do not hesitate to reach out to me.</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve;\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">Best regards,</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\"><br></span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">{UserName}</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">{UserContactInfo}</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space-collapse: preserve; background-color: rgb(255, 255, 0);\">{AppName}</span></font></div>', 'true', '2023-08-04 04:06:28', '2023-08-04 12:12:01'),
(5, 'new_registration', 'New Driver Registration', '<p style=\"margin-bottom: 1rem;\"><span style=\"background-color: rgb(255, 255, 0);\">Hi {AppName},</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 1rem;\">I hope this email finds you well. I am writing to inform you about a new user registration on our platform. We are excited to welcome a new member to our community!</span><br></p><p style=\"margin-bottom: 1rem;\"><span style=\"font-size: 1rem;\">Below are the details of the new vendor:</span><br></p><p style=\"margin-bottom: 1rem;\"><span style=\"background-color: rgb(255, 255, 0);\">Account ID: {UserId}<br><span style=\"font-size: 1rem;\">Name: {UserName}<br></span><span style=\"font-size: 1rem;\">Email Address: {UserEmail}<br></span></span><span style=\"background-color: rgb(255, 255, 0); font-size: 1rem;\">Phone Number: {UserPhone}</span><span style=\"background-color: rgb(255, 255, 0); font-size: 1rem;\"><br></span><span style=\"background-color: rgb(255, 255, 0); font-size: 1rem;\">Date of Registration: {Date}</span></p><p style=\"margin-bottom: 1rem;\">As an administrator, you have the privilege to review and verify the new user\'s details to ensure that they comply with our policies and guidelines. Please take a moment to check the provided information and activate the user\'s account if everything appears to be in order. If you have any concerns or need further information, feel free to reach out to the user directly.</p><p style=\"margin-bottom: 1rem;\">We believe that this new addition will enrich our platform and contribute positively to our growing community. By providing them with a warm welcome and support, we can create a positive experience for both the user and our existing members.</p><p style=\"margin-bottom: 1rem;\">Thank you for your continued dedication to maintaining the integrity and security of our platform.</p><p style=\"margin-bottom: 1rem;\"><br></p><p style=\"margin-bottom: 1rem;\"><span style=\"background-color: rgb(255, 255, 0);\">Best regards,</span></p><p style=\"margin-bottom: 1rem;\"><span style=\"background-color: rgb(255, 255, 0);\">{AppName}</span></p>', 'true', '2023-08-04 11:27:24', '2023-08-04 11:37:19'),
(6, 'reset_password', 'Reset Your Password', '<p><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Dear {UserName},</font></p><p>We are sending this email because you requested a password reset.</p><p>Please use {OTP} code to reset your password</p><p><br></p>ThankYou', 'false', '2023-08-04 14:00:45', '2023-08-04 14:09:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_page_templates`
--

CREATE TABLE `landing_page_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `html_template` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_page_templates`
--

INSERT INTO `landing_page_templates` (`id`, `html_template`, `created_at`, `updated_at`) VALUES
(1, '<header class=\"section-header\">\r\n\r\n	<div class=\"container\">\r\n		<div class=\"row\">\r\n			<div class=\"main-logo col-md-6\">\r\n				<div class=\"site-logo\">\r\n					<a href=\"https://yumprides.ca\"> <img class=\"img-fluid\" src=\"https://yumprides.ca/img/logo_header.png\" alt=\"logo\" style=\"width: 25%;\"> </a>\r\n				</div>\r\n				</div>\r\n			</div>\r\n\r\n			<div class=\"header-right col-md-6 text-right\">\r\n				<ul class=\"menu\">\r\n					<li><a href=\"#our-mission\">\r\n						<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Our mission</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font>\r\n					</a></li>\r\n					<li><a href=\"#how-it-works\">\r\n						<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">How it works</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font>\r\n					</a></li>\r\n					<li><a href=\"#mobile-app\">\r\n						<font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Mobile application</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font>\r\n					</a></li>\r\n				</ul>\r\n			</div>\r\n		</div>\r\n	\r\n\r\n</header>\r\n\r\n<!-- alert: do not change class name -->\r\n<div class=\"osahan-home-page\">\r\n\r\n	<div class=\"home-banner\">\r\n\r\n		<div class=\"banner-inner\">\r\n			<div class=\"container\">\r\n				<div class=\"row align-items-center\">\r\n					<div class=\"col-md-5\">\r\n						<div class=\"homebanner-content\">\r\n							<h1><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">The best way to get wherever you want</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h1>\r\n							<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n								We will take you quickly and comfortably to anywhere in your city\r\n							<br><br><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">YUMP RIDES<br></font><br></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n							<div class=\"ban-btn\">\r\n								<a href=\"#\"><img src=\"https://yumprides.ca/img/appstore.png\"></a>\r\n								<a href=\"#\"><img src=\"https://yumprides.ca/img/google_play.png\"></a>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"col-md-7 banner-right\">\r\n						<div class=\"banner-img text-left\">\r\n							<img src=\"https://yumprides.ca/img/banner-img.png\">\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n\r\n	<section class=\"sec-delivery-app pt-5 pb-5\" id=\"our-mission\">\r\n		<div class=\"container\">\r\n			<div class=\"row align-items-center\">\r\n				<div class=\"col-md-6 delapp-left\">\r\n					<img src=\"https://yumprides.ca/img/our-mission.png\" alt=\"Grocery Delivery App\">\r\n				</div>\r\n				<div class=\"col-md-6 delapp-right\">\r\n					<div class=\"delapp-right-cont mb-4\">\r\n						<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Our\r\n						          </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><br><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n						Mission Statement</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n						<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n							Online urban mobility service providers care about the price of the trip based on travel distance and car type, traffic and waiting prices. </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">There are various apps available on Android Play Store and Apple App Store for your need</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n\r\n						<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n							But only here at Floripa Car do you have the best prices.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n					</div>\r\n\r\n					<div class=\"delapp-right-cont-btm mt-5\">\r\n						<div class=\"food-icon align-items-center\">\r\n							<div class=\"delapp-right-cont-btm-box\">\r\n								<div class=\"food-icon-inner\">\r\n									<span><img src=\"https://yumprides.ca/img/surge-free.png\" alt=\"Food Delivery App\"></span>\r\n									<h4 class=\"mt-3\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Surge-free guarantee</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h4>\r\n								</div>\r\n							</div>\r\n							<div class=\"delapp-right-cont-btm-box\">\r\n								<div class=\"food-icon-inner\">\r\n									<span><img src=\"https://yumprides.ca/img/book-now-latter.png\" alt=\"Food Delivery App\"></span>\r\n									<h4 class=\"mt-3\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Book now or later</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h4>\r\n								</div>\r\n							</div>\r\n							<div class=\"delapp-right-cont-btm-box\">\r\n								<div class=\"food-icon-inner\">\r\n									<span><img src=\"https://yumprides.ca/img/cashless.png\" alt=\"Food Delivery App\"></span>\r\n									<h4 class=\"mt-3\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Cashless payment</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h4>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</section>\r\n\r\n	<section class=\"sec-how-it-work py-7\" id=\"how-it-works\">\r\n		<div class=\"container\">\r\n			<div class=\"row\">\r\n				<div class=\"col-md-12 sec-title text-center mb-5\">\r\n					<h2><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">How it works</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h2>\r\n\r\n				</div>\r\n			</div>\r\n			<div class=\"row howitwork-content\">\r\n				<div class=\"col-md-3\">\r\n					<div class=\"howitwork-block howitwork-block1 text-center\">\r\n						<span class=\"hw-icon\"> <img src=\"https://yumprides.ca/img/how-it-icon.png\" alt=\"How does it work\"> </span>\r\n						<div class=\"hwit-detail mt-5\">\r\n							<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Call in just 2 tabs</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n							<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n								Open the app, enter your destination and have a good trip.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-3\">\r\n					<div class=\"howitwork-block howitwork-block2 text-center\">\r\n						<span class=\"hw-icon\"> <img src=\"https://yumprides.ca/img/get_driver.png\" alt=\"How does it work\"> </span>\r\n						<div class=\"hwit-detail mt-5\">\r\n							<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Get a driver</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n							<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n								Open the app, see the map and call your driver.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-3\">\r\n					<div class=\"howitwork-block howitwork-block3 text-center\">\r\n						<span class=\"hw-icon\"> <img src=\"https://yumprides.ca/img/track_driver.png\" alt=\"How does it work\"> </span>\r\n						<div class=\"hwit-detail mt-5\">\r\n							<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Real-time tracking</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n							<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n								Your safety comes first.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"col-md-3\">\r\n					<div class=\"howitwork-block howitwork-block4 text-center\">\r\n						<span class=\"hw-icon\"> <img src=\"https://yumprides.ca/img/arrive_safely.png\" alt=\"How does it work\"> </span>\r\n						<div class=\"hwit-detail mt-5\">\r\n							<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Arrive safely</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n							<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n								Upon arrival, your driver will be assessed.</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n\r\n	</section>\r\n\r\n	<section class=\"sec-get-started py-7\" id=\"mobile-app\">\r\n		<div class=\"container\">\r\n			<div class=\"row align-items-center\">\r\n				<div class=\"col-md-6 get-started-left\">\r\n					<div class=\"sec-title mb-3 dark-title\">\r\n						<h2><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Get a mobile app</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h2>\r\n					</div>\r\n					<div class=\"cust-ser-block\">\r\n						<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Floripa Car offers countless car options through this urban mobility service application. </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Our taxi services have multiple cars accessible through this best taxi booking app.\r\n						</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n					</div>\r\n					<div class=\"row get-started-btm mt-5\">\r\n						<div class=\"col-md-12 d-flex\">\r\n							<div class=\"get-started-icon\">\r\n								<span class=\"get-icon\"><img src=\"https://yumprides.ca/img/clean_car.png\" alt=\"Start\"></span>\r\n							</div>\r\n							<div class=\"get-started-cont\">\r\n								<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Clean car</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n								<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n									You can get clean and best quality cars at an affordable price.\r\n								</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n							</div>\r\n						</div>\r\n						<div class=\"col-md-12 d-flex\">\r\n							<div class=\"get-started-icon\">\r\n								<span class=\"get-icon\"><img src=\"https://yumprides.ca/img/transp_billing.png\" alt=\"Start\"></span>\r\n							</div>\r\n							<div class=\"get-started-cont\">\r\n								<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Transparent Billing</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n								<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n									This app offers 100% transparency in billing, whether online or in cash.\r\n								</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n							</div>\r\n						</div>\r\n						<div class=\"col-md-12 d-flex\">\r\n							<div class=\"get-started-icon\">\r\n								<span class=\"get-icon\"><img src=\"https://yumprides.ca/img/rerliable_service.png\" alt=\"Start\"></span>\r\n							</div>\r\n							<div class=\"get-started-cont\">\r\n								<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Reliable Service</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n								<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n									Taxi services are very hassle-free and reliable.\r\n								</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n							</div>\r\n						</div>\r\n						<div class=\"col-md-12 d-flex\">\r\n							<div class=\"get-started-icon\">\r\n								<span class=\"get-icon\"><img src=\"https://yumprides.ca/img/courteous_drivers.png\" alt=\"Start\"></span>\r\n							</div>\r\n							<div class=\"get-started-cont\">\r\n								<h3><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Courteous drivers</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></h3>\r\n								<p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n									This app driver is very polite and smart on the city map.\r\n								</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></p>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div class=\"ban-btn\">\r\n						<a href=\"#\"><img src=\"https://yumprides.ca/img/appstore.png\"></a>\r\n						<a href=\"#\"><img src=\"https://yumprides.ca/img/google_play.png\"></a>\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"col-md-6 get-started-right\">\r\n					<div class=\"get-started-img text-right\">\r\n						<img src=\"https://yumprides.ca/img/get-mobile-rg.png\" alt=\"Start\">\r\n					</div>\r\n				</div>\r\n\r\n			</div>\r\n		</div>\r\n	</section>\r\n\r\n</div>\r\n\r\n<footer class=\"section-footer border-top bg-dark\">\r\n	<div class=\"container\">\r\n		<section class=\"footer-top pb-5 text-center pt-0\">\r\n			<div class=\"ft-logo mb-5\">\r\n				<img src=\"https://yumprides.ca/img/footer-logo.png\" alt=\"Logo\">\r\n			</div><div class=\"footer-tp-middel d-flex align-items-center mb-5\"><div class=\"ft-social\"><ul>\r\n						<li>\r\n							<a href=\"#\"><img src=\"https://yumprides.ca/img/twitter_footer.png\" alt=\"Twitter\"></a>\r\n						</li>\r\n						<li>\r\n							<a href=\"#\"><img src=\"https://yumprides.ca/img/insta_footer.png\" alt=\"Instagram\"></a>\r\n						</li>\r\n						<li>\r\n							<a href=\"#\"><img src=\"https://yumprides.ca/img/pentrest_footer.png\" alt=\"Pinterest\"></a>\r\n						</li>\r\n						<li>\r\n							<a href=\"#\"><img src=\"https://yumprides.ca/img/g+_footer.png\" alt=\"Google\"></a>\r\n						</li>\r\n					</ul>\r\n				</div>\r\n				<div class=\"ft-app-link ml-3\">\r\n					<ul>\r\n						<li>\r\n							<a href=\"#\"><img src=\"https://yumprides.ca/img/appstore_footer.png\" alt=\"App Store\"></a>\r\n						</li>\r\n						<li>\r\n							<a href=\"#\"><img src=\"https://yumprides.ca/img/google_play_footer.png\" alt=\"App Store\"></a>\r\n						</li>\r\n\r\n					</ul>\r\n				</div>\r\n			</div>\r\n			<div class=\"footer-tp-bottom\">\r\n				<div class=\"contact-info\">\r\n					<ul>\r\n						<li>\r\n							<font color=\"#9c9c94\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">CONTACT US</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font>\r\n						</font></li>\r\n						<li>\r\n							<font color=\"#9c9c94\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">ABOUT US</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font>\r\n						</font></li>\r\n\r\n					</ul>\r\n					<ul>\r\n						<li>\r\n							<font color=\"#9c9c94\"><img src=\"https://yumprides.ca/img/call.png\" alt=\"information\">&nbsp;<b><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">+55 (4</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> 8) 9.91050612</font></font></font></font></font></font></font></font></font></font></font></font></font></font></b></font></li>\r\n						<li>\r\n							<font color=\"#9c9c94\"><img src=\"https://yumprides.ca/img/mail.png\" alt=\"information\">&nbsp;support@yumprides.ca</font></li>\r\n\r\n					</ul>\r\n				</div>\r\n\r\n			</div>\r\n\r\n		</section>\r\n\r\n		<section class=\"footer-copyright border-top py-3\">\r\n			<div class=\"container text-center\">\r\n				<ul><li><font style=\"vertical-align: inherit;\" color=\"#9c9c94\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">\r\n					© Copyright 2022-2023 Micro Hard Center. </font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">All rights reserved.\r\n				</font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></font></li></ul>\r\n				<p class=\"mb-0\"></p>\r\n			</div>\r\n		</section>\r\n	</div>\r\n	<a href=\"#\" id=\"toTopBtn\" class=\"cd-top text-replace js-cd-top cd-top--is-visible cd-top--fade-out\" data-abc=\"true\"></a>\r\n</footer>', '2023-01-18 17:49:54', '2025-01-25 00:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `flag` varchar(1200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `is_rtl` varchar(200) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`, `code`, `flag`, `status`, `is_rtl`, `creer`, `modifier`, `updated_at`) VALUES
(1, 'English', 'en', 'English.png', 'true', 'false', '2022-11-16 07:47:35', '2022-11-16 07:47:35', '2022-11-16 07:47:35'),
(3, 'French', 'fr', 'French.png', 'true', 'false', '2025-02-07 21:11:41', '2025-02-07 21:11:41', '2025-02-07 21:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_11_080858_create_zones_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `on_boardings`
--

CREATE TABLE `on_boardings` (
  `id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `on_boardings`
--

INSERT INTO `on_boardings` (`id`, `type`, `title`, `description`, `image`) VALUES
(1, 'Customer', 'Welcome to Yump Rides', 'Your ultimate taxi booking solution for hassle-free rides.', '1730374680_splash-01.png'),
(2, 'Customer', 'Seamless Rides, Anytime, Anywhere', 'Book a ride in seconds with just a few taps on your screen.', '1730374687_splash-2.png'),
(3, 'Driver', 'Receive Ride Requests Instantly', 'Get notified of nearby ride requests in real-time. Accept rides with just one tap and start earning quickly.', '1730374823_driver_splash1.png'),
(4, 'Driver', 'Smart Route Navigation', 'Reach your destination faster with optimized routes. Our built-in navigation guides you through the most efficient path', '1730374835_driver_splash2.png'),
(5, 'Driver', 'Monitor Earnings & Payouts Easily', 'View your ride earnings, track daily income, and get automatic payouts. Your hard work, rewarded instantly.', '1730374853_driver_splash3.png');

-- --------------------------------------------------------

--
-- Table structure for table `parcel_category`
--

CREATE TABLE `parcel_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_orders`
--

CREATE TABLE `parcel_orders` (
  `id` int(11) NOT NULL,
  `id_user_app` varchar(11) NOT NULL,
  `id_conducteur` varchar(11) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `lat_source` varchar(30) NOT NULL,
  `lng_source` varchar(30) NOT NULL,
  `lat_destination` varchar(30) NOT NULL,
  `lng_destination` varchar(30) NOT NULL,
  `source_city` varchar(100) NOT NULL,
  `destination_city` varchar(100) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_phone` varchar(15) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_phone` varchar(15) NOT NULL,
  `parcel_weight` varchar(10) NOT NULL,
  `parcel_dimension` varchar(60) NOT NULL,
  `parcel_image` json NOT NULL,
  `parcel_type` varchar(255) NOT NULL,
  `parcel_date` varchar(30) NOT NULL,
  `parcel_time` varchar(30) NOT NULL,
  `receive_date` varchar(30) NOT NULL,
  `receive_time` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `reason` longtext NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_status` varchar(5) NOT NULL,
  `id_payment_method` varchar(11) NOT NULL,
  `distance` varchar(30) NOT NULL,
  `distance_unit` varchar(10) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tip` varchar(10) DEFAULT NULL,
  `admin_commission` varchar(10) DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `rejected_driver_id` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `app_id` varchar(500) DEFAULT NULL,
  `key` varchar(500) DEFAULT NULL,
  `clientpublishableKey` varchar(500) DEFAULT NULL,
  `secret_key` varchar(500) DEFAULT NULL,
  `merchant_Id` varchar(500) DEFAULT NULL,
  `merchant_key` varchar(500) DEFAULT NULL,
  `public_key` varchar(500) DEFAULT NULL,
  `private_key` varchar(500) DEFAULT NULL,
  `encryption_key` varchar(500) DEFAULT NULL,
  `tokenization_key` varchar(500) DEFAULT NULL,
  `accesstoken` varchar(500) DEFAULT NULL,
  `callback_url` varchar(500) DEFAULT NULL,
  `webhook_url` varchar(500) DEFAULT NULL,
  `cancel_url` varchar(500) DEFAULT NULL,
  `notify_url` varchar(500) DEFAULT NULL,
  `return_url` varchar(500) DEFAULT NULL,
  `isEnabled` varchar(200) NOT NULL,
  `isLive` varchar(200) DEFAULT NULL,
  `isSandboxEnabled` varchar(200) DEFAULT NULL,
  `id_payment_method` varchar(255) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `tax_type` varchar(200) DEFAULT NULL,
  `tax_amount` varchar(200) DEFAULT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `app_id`, `key`, `clientpublishableKey`, `secret_key`, `merchant_Id`, `merchant_key`, `public_key`, `private_key`, `encryption_key`, `tokenization_key`, `accesstoken`, `callback_url`, `webhook_url`, `cancel_url`, `notify_url`, `return_url`, `isEnabled`, `isLive`, `isSandboxEnabled`, `id_payment_method`, `username`, `password`, `tax_type`, `tax_amount`, `creer`, `modifier`, `deleted_at`) VALUES
(1, NULL, 'pk_live_51QT6NuFCZA829IV4efUVvxXyEBw6Ugx0UpnsA72trVbiHwOT5LS3V9ukp5jgk9GawAXbE1ZHIUHc4cl1cvfk0qF300qEAmMSKT', NULL, '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', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL, 'true', '10', NULL, NULL, NULL, NULL, '2022-07-11 12:43:30', '2025-01-20 19:01:34', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, '5', NULL, NULL, NULL, NULL, '2022-07-12 06:58:54', '2024-12-07 12:45:20', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '7', NULL, NULL, NULL, NULL, '2022-07-12 06:58:37', '2024-12-07 12:46:12', NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL, NULL, '9', NULL, NULL, NULL, NULL, '2022-07-12 06:58:43', '2025-01-14 18:06:13', NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '11', NULL, NULL, NULL, NULL, '2022-07-12 06:56:57', '2024-12-07 12:46:24', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '12', NULL, NULL, NULL, NULL, '2022-07-12 06:57:19', '2024-12-07 12:46:34', NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '13', NULL, NULL, NULL, NULL, '2022-07-12 06:58:19', '2024-12-07 12:45:38', NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'true', NULL, 'true', '14', NULL, NULL, NULL, NULL, '2022-07-12 06:58:11', '2024-08-30 06:45:00', NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', 'false', NULL, '15', NULL, NULL, NULL, NULL, '2022-07-12 06:58:04', '2024-12-07 12:45:55', NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '0', NULL, NULL, 'percentage', '18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '16', NULL, NULL, NULL, NULL, '2022-12-15 13:09:39', '2024-12-07 12:46:45', NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, NULL, '17', NULL, NULL, NULL, NULL, '2023-01-02 11:21:13', '2024-12-07 12:45:28', NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '18', NULL, NULL, NULL, NULL, '2024-08-29 08:20:49', '2024-12-07 12:47:18', NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '19', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2024-12-07 12:47:10', NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'false', NULL, 'false', '20', NULL, NULL, NULL, NULL, '2024-08-29 08:31:09', '2024-12-07 12:47:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `referral_by_id` int(11) DEFAULT NULL,
  `referral_code` varchar(255) NOT NULL,
  `code_used` varchar(255) NOT NULL,
  `creer` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`id`, `user_id`, `referral_by_id`, `referral_code`, `code_used`, `creer`) VALUES
(5, 5, NULL, 'c3ac8', 'false', '2025-01-19 09:19:40'),
(6, 6, NULL, '78e52', 'false', '2025-01-20 13:41:17'),
(7, 7, NULL, '8e641', 'false', '2025-01-20 14:56:17'),
(8, 8, NULL, '6b066', 'false', '2025-01-23 16:15:02'),
(13, 13, NULL, '68784', 'false', '2025-01-26 19:05:40'),
(14, 14, NULL, '7991d', 'false', '2025-01-28 18:08:29'),
(15, 15, NULL, 'fd0ee', 'false', '2025-02-02 20:09:18'),
(16, 16, NULL, 'acbc0', 'false', '2025-02-12 15:19:30'),
(17, 17, NULL, '7acbf', 'false', '2025-02-12 15:33:16'),
(18, 18, NULL, 'acc1d', 'false', '2025-02-12 15:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tj_cms`
--

CREATE TABLE `tj_cms` (
  `cms_id` bigint(20) UNSIGNED NOT NULL,
  `cms_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tj_commission`
--

CREATE TABLE `tj_commission` (
  `id` int(11) NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `value` varchar(21) NOT NULL,
  `type` varchar(21) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_commission`
--

INSERT INTO `tj_commission` (`id`, `libelle`, `value`, `type`, `statut`, `creer`, `modifier`, `updated_at`) VALUES
(1, '', '25', 'Percentage', 'yes', '2022-05-20 09:25:56', '2024-12-12 17:06:39', '2024-12-12 17:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `tj_complaints`
--

CREATE TABLE `tj_complaints` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `id_user_app` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_ride` varchar(15) DEFAULT NULL,
  `id_parcel` varchar(15) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tj_complaints`
--

INSERT INTO `tj_complaints` (`id`, `title`, `description`, `user_type`, `id_user_app`, `id_conducteur`, `status`, `id_ride`, `id_parcel`, `created`) VALUES
(1, 'Okay', 'Fine', 'driver', '8', '16', 'initiated', '5', NULL, '2025-01-27 06:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `tj_conducteur`
--

CREATE TABLE `tj_conducteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) NOT NULL,
  `cnib` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `fb_id` varchar(255) NOT NULL,
  `statut` varchar(255) NOT NULL,
  `statut_vehicule` varchar(255) NOT NULL,
  `status_car_image` varchar(255) DEFAULT NULL,
  `online` varchar(255) DEFAULT NULL,
  `login_type` varchar(255) NOT NULL,
  `photo` text,
  `photo_path` text,
  `photo_licence` text,
  `photo_licence_path` text,
  `photo_nic` text,
  `photo_nic_path` text,
  `photo_car_service_book` text,
  `photo_car_service_book_path` text,
  `photo_road_worthy` text,
  `photo_road_worthy_path` text,
  `tonotify` varchar(255) NOT NULL,
  `device_id` text,
  `fcm_id` text,
  `address` text NOT NULL,
  `bank_name` text,
  `branch_name` text,
  `holder_name` text,
  `account_no` text,
  `other_info` text,
  `ifsc_code` varchar(200) DEFAULT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `reset_password_otp` varchar(255) DEFAULT NULL,
  `reset_password_otp_modifier` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT '0',
  `parcel_delivery` varchar(5) NOT NULL,
  `zone_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_conducteur`
--

INSERT INTO `tj_conducteur` (`id`, `nom`, `prenom`, `cnib`, `phone`, `mdp`, `latitude`, `longitude`, `email`, `fb_id`, `statut`, `statut_vehicule`, `status_car_image`, `online`, `login_type`, `photo`, `photo_path`, `photo_licence`, `photo_licence_path`, `photo_nic`, `photo_nic_path`, `photo_car_service_book`, `photo_car_service_book_path`, `photo_road_worthy`, `photo_road_worthy_path`, `tonotify`, `device_id`, `fcm_id`, `address`, `bank_name`, `branch_name`, `holder_name`, `account_no`, `other_info`, `ifsc_code`, `creer`, `modifier`, `updated_at`, `amount`, `reset_password_otp`, `reset_password_otp_modifier`, `deleted_at`, `is_verified`, `parcel_delivery`, `zone_id`) VALUES
(13, 'Tariq', 'Muhammad Safyan', NULL, '+187845454554', 'd41d8cd98f00b204e9800998ecf8427e', '32.44376317607674', '74.12338482992477', 'muhammadsafyan.freelancing@gmail.com', 'EZ0wuorACJM1PtmOb9Up7kEECTa2', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'e5tZMeEJN0xFox2UglGHjg:APA91bF4b6DRfPHn5mmTrM1Tg3DiO9eaGAcXCw-CF3mtD_wmaCW2CbrLSQO6fkgggcFNKPFmULGS6clpCKACUthPQClYuw5cKklSjfQnj0XeNN0rlOAhk0A', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-09 19:11:20', '2025-01-13 10:27:19', '2025-01-09 19:11:20', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(16, 'Tariq', 'Safyan', NULL, '+13933993939', 'cc03e747a6afbbcbf8be7668acfebee5', '32.44371693584372', '74.1233296786194', 'safyantariq0001@gmail.com', 'lf6IDCCxYIRoibDG0xLRhpw4A8c2', 'yes', 'yes', 'no', 'yes', 'apple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'ffdfLOX8o0I_ro73a581vo:APA91bHzlKbF6rKzII6xrDdDJ5skNxZ_xn1E5W5pu30wrPtsjN5UgHi2hjPOOZlXEdNHEqoF6rNyplW5cuiSAK1E3nmf_jc8513a79pmYLE1g11bHg_Yi1o', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-11 09:32:32', '2025-02-01 14:51:46', '2025-01-11 09:32:32', '0', '6056', '2025-01-14 17:59:42', NULL, 1, 'yes', '11'),
(17, 'John', 'Apple', NULL, '+16696666666', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'hnvm2gmsdj@privaterelay.appleid.com', 'v6gNUKzaRkfwm1wR8D417r2XVp52', 'yes', 'no', 'no', 'no', 'apple', '', 'Driver_photo1736760355.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'cU2_T2YN0EtYjMJ4O6UlNI:APA91bFHyqQ7SEfkdYgCkB0ni-ZH0cvY5zfICUF2wIEbInesPSMRLiGV-XWE75ujPYPvTSnv-PO1UrVB1KfY3uRCnb2U1DjxczBUgUOoPFByrBssH4Y6p-I', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-13 09:22:14', '2025-01-13 09:25:55', '2025-01-13 09:22:14', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(18, 'Rips on g', 'Karen’s', NULL, '+2135', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'w4mnn26zdk@privaterelay.appleid.com', 'Wjo8tgRTStYVyviV2xz6pKHFOxa2', 'yes', 'no', 'no', 'no', 'apple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-13 17:03:53', '2025-01-13 11:03:53', '2025-01-13 17:03:53', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(19, 'Ali', 'Muneeb ali', NULL, '+9203006239730', 'd41d8cd98f00b204e9800998ecf8427e', '32.6266158', '74.102771', 'chmuneebali.sa@gmail.com', 'RERiLYFhf1P6ORGSrHaeEMRv16W2', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'cbsFhiOHQCSS5YuvIDAWSa:APA91bHnp37iQeCwazM-T3CutlwjAszUYos_cDK1reBMaVjzTBg8T5pk89qWcmprYGY5wzIb7OREkJWCoTFUlGXi5pPR8whrT6W3PgPeSUVwEAMzxk8tyrU', '', 'Hbl', 'Abc', 'Muneeb ali', '2345790085r4', 'Bsbsjsj', '87787', '2025-01-18 17:49:28', '2025-01-18 18:49:30', '2025-01-18 17:49:28', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(20, 'King个', 'John', NULL, '+16845', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'p9qhdm9z8s@privaterelay.appleid.com', 'OZMg6sVLkvRge9B69D8F93f4nKj2', 'yes', 'no', 'no', 'no', 'apple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fSgskitQHk3koKqmmZ3yK4:APA91bHkXTrIN9XCCe8xDvctCD3HmbtuAycDlovKCj9V-PMcQTpDstzdA8LsJNV3IhiM_KT1ZYhYQ7U_I4tn9UQ_sNoWs7tiOfs-2J54pXhsS168zPVBbzQ', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-19 09:21:46', '2025-01-19 09:25:19', '2025-01-19 09:21:46', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(21, 'Tariq', 'Safyan', NULL, '+923026111355', 'd41d8cd98f00b204e9800998ecf8427e', '32.44379520335396', '74.12335333104714', 'mstdevops786@gmail.com', 'FOo5qddPbZhGVQ5c7ZH0VYX2WZO2', 'yes', 'yes', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'ffdfLOX8o0I_ro73a581vo:APA91bHzlKbF6rKzII6xrDdDJ5skNxZ_xn1E5W5pu30wrPtsjN5UgHi2hjPOOZlXEdNHEqoF6rNyplW5cuiSAK1E3nmf_jc8513a79pmYLE1g11bHg_Yi1o', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-19 14:15:32', '2025-02-06 09:50:12', '2025-01-19 14:15:32', '0', NULL, NULL, NULL, 0, 'yes', '8'),
(22, 'Tariq', 'safyan tariq', NULL, '+1838388338833', 'd41d8cd98f00b204e9800998ecf8427e', '37.4219983', '-122.084', 'safyant401@gmail.com', '8YQErejTK8RaIqz4a813NKMkijo2', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'enrehKs9Q8qHccc2fx-5vo:APA91bHzQUsmXO0CiJrpzVPi1GrJubeSNeG4c-EjQRvHq61L4d_mP0ITuyI7l8r5eP7b4w5INsKVht-xyaemkJo5ecogGGTz2dLIRFzsoa_EGuMAIAX4-I4', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-20 12:11:21', '2025-01-24 10:37:08', '2025-01-20 12:11:21', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(23, 'Link', 'Cater Link', NULL, '+923002436262', 'd41d8cd98f00b204e9800998ecf8427e', '37.4219983', '-122.084', 'caterlink203641@gmail.com', 'MV001qmJ53OO1zVMXA2jyfFErGI3', 'yes', 'yes', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'czXChMPXSwKUqghW8or3YM:APA91bFFMU-M3Rzxxiq-vbzgHQDaJJtQRM_XaiWe4gPWSn6pvOAGSLNUCxj2Ul2eCEVx0TisuCGMkrpiOftn2BSObhrs3ti7WP6XkCTD5Hw-vI9C4ot7WWk', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-20 13:25:33', '2025-01-20 15:12:40', '2025-01-20 13:25:33', '0', NULL, NULL, NULL, 0, 'yes', '1'),
(24, 'Tahir', 'Miraj', NULL, '+923495772160', 'd41d8cd98f00b204e9800998ecf8427e', '32.8273304', '74.3108269', 'mirajtahir75@gmail.com', '2wJvyNncSmhq91P8FfuXZWBEguf2', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fmscaj0GSp2u4sQ9GLUdfq:APA91bEgtWUnM1aUvDhz4j-7lL2wX4ciaUQfD97Ivl6mlC99Iz0uTQEHI0roPnXqflFB-1-zXC7KAy0ppdBLEwlW2xDEJZ9kVXgJS2llwTvbfTYrPZqS3SI', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-21 11:16:50', '2025-01-21 16:36:56', '2025-01-21 11:16:50', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(25, 'Tabib', 'Tabib Tahir Jarral', NULL, '+103440452477', 'd41d8cd98f00b204e9800998ecf8427e', '32.8274339', '74.3106681', 'tabibjarral@gmail.com', '8EafYYMuMceAG98fff5TBMOUJjU2', 'yes', 'yes', 'no', 'no', 'google', '', 'Driver_photo1739556633.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'eDalBxaiRsekFJe3S7xngb:APA91bE9FoR5J10mu3epm3H4i2c1bmNLQknBIc6aXGyTKBUMBInGHKt5vPEAZCojltXw1B7YxuCqGHiYKrqaQcQXn83atPxUX6uAdpxUUzlLlPhHW-iJeOY', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-21 11:29:22', '2025-02-14 18:10:33', '2025-01-21 11:29:22', '0', NULL, NULL, NULL, 0, 'yes', '9,10'),
(26, 'Zafar', 'Bisma Zafar', NULL, '+103479938377', 'd41d8cd98f00b204e9800998ecf8427e', '32.8608865', '74.1164791', 'bismazafar2001@gmail.com', 'bfortgBWDZds5QwoqZAwePf0iiM2', 'yes', 'yes', 'no', 'no', 'google', '', 'Driver_photo1737725635.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'eV483ZljT0q0QZoMv6PjGv:APA91bHpql2XfGJjBqs16QamJ50-BA-OKTGQlcKNPb-5L45DEuPuxPmXNniUC2CnM3ghGmJDCW8auk8-Wrhn7KbGwgroxv6LOCNbfxTrtJkb93zaOUZNwVE', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-22 09:54:26', '2025-02-11 15:59:41', '2025-01-22 09:54:26', '0', NULL, NULL, NULL, 1, 'yes', '4,3,1'),
(28, 'Abdul Nasir', 'TAYYBA NASIR', NULL, '+9203127709961', 'd41d8cd98f00b204e9800998ecf8427e', '32.6385585', '74.1589551', 'tayybanasir2000@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fT5qqE26QBSXGGcKOoym0i:APA91bEcIb7NKKvvR6n2d7XSRxHb2RiJ6MA2KBzQOmM5feAKFa2EndHw_Oqz5hOzfdNpp_7dMk_zLVz2Z3f3jdSpD4bkDxDo7uWnbwa96q5V9z1N_Vxbi-8', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-24 17:45:11', '2025-02-12 18:02:18', '2025-01-24 17:45:11', '0', NULL, NULL, NULL, 1, 'yes', NULL),
(29, 'Clay', 'Richard', NULL, '+3765', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'jhdmbdgjf4@privaterelay.appleid.com', '', 'yes', 'no', 'no', 'no', 'apple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'cDGFTFML7UWngDpFbOs5Tz:APA91bFvUON9d2DkbeayccVPgdVoUtSAIavtFpi1OuQbskjnQK6UnsnVXPeHjgbK9H5jrW8JiKXj6-KfgLtyCRD8xz-qUsX2TDkDIUMzJK8l1712jr1LHHQ', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 21:51:30', '2025-01-25 21:56:07', '2025-01-25 21:51:30', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(30, 'Raja', 'Awais', NULL, '+923475740874', 'd41d8cd98f00b204e9800998ecf8427e', '32.8288205', '74.3110621', 'rajaawais893@gmail.com', '', 'yes', 'yes', 'no', 'no', 'google', '', 'Driver_photo1738012569.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'eqoPtMWJQZCtaB_5mxs1Yw:APA91bGipSD-pncaKc8E3n0nnkV6TT-PVUrx0ltqiYYKzDYNjDxAL4FWpDScrMHQMhlwOgP_8Vp3TpJTrph_sP69WXc3qK9QGrv7DxraHG1ajEDENhN89Vg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-27 21:13:03', '2025-02-14 10:26:40', '2025-01-27 21:13:03', '0', NULL, NULL, NULL, 1, 'yes', '9,10'),
(31, 'John', 'Apple', NULL, '+16693334444', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'dt9s2cxkks@privaterelay.appleid.com', '', 'yes', 'no', 'no', 'no', 'apple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fhXLZNkVH04Hp2-H0yhhb7:APA91bF2AKCbfzZGtfte2mZjUtXMhP-NDOIERA-sdPJt8I_Dc8xRxhZa9nIwx5yQMhbROzTkEJrTeHlMlRRnDHVxLhF21m2s8-egM33KLKaOik3A0ibBDXA', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-28 19:48:39', '2025-01-28 19:49:17', '2025-01-28 19:48:39', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(32, 'Akhtar', 'chand', NULL, '+19059232906', 'd41d8cd98f00b204e9800998ecf8427e', '43.340765281191764', '-79.80863470926957', 'megawest61@gmail.com', '', 'yes', 'yes', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fDGyNlJ7HUsThXB3MYk62t:APA91bHjThMWq3dEdNYdOw1TWbxX6O7MVxLxHnqVnCpQEqekU3ioOzdNixV0wo0SGNOyArS6Wgi_u04ovoArHZS2slZjBlDmARC2Ms0xQT6yWemiTPwXbP4', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-29 02:59:36', '2025-02-13 02:50:39', '2025-01-29 02:59:36', '0', '9390', '2025-02-02 16:33:22', NULL, 0, 'yes', '8'),
(33, 'Tariq', 'Safyan', NULL, '+923246910899', 'cc03e747a6afbbcbf8be7668acfebee5', '32.44380938823562', '74.12332330837299', 'safyantariq@gmail.com', '', 'yes', 'no', 'no', 'no', 'phoneNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'ffdfLOX8o0I_ro73a581vo:APA91bHzlKbF6rKzII6xrDdDJ5skNxZ_xn1E5W5pu30wrPtsjN5UgHi2hjPOOZlXEdNHEqoF6rNyplW5cuiSAK1E3nmf_jc8513a79pmYLE1g11bHg_Yi1o', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-31 14:18:34', '2025-02-08 16:15:29', '2025-01-31 14:18:34', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(34, 'Zafar', 'Zakia', NULL, '+923480891503', 'd41d8cd98f00b204e9800998ecf8427e', '32.828924', '74.3108769', 'zakiazafar1968@gmail.com', '', 'yes', 'yes', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'cSrhLtZQT26ZtkipeTYxOp:APA91bEUKtL-zrQK2sKk-f4haT-QtpLXZ131lK7a7IaVovsZmfMlrNAJQ0sWFnahqiAJ2L_sus3Rpf_7VQ-TRnXgH-pypRWUBJt7W2oT17JJyp96u2fRpfg', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-01 08:14:36', '2025-02-13 13:18:34', '2025-02-01 08:14:36', '0', NULL, NULL, NULL, 1, 'yes', '9,10'),
(35, 'Arooj', 'Tuba Arooj', NULL, '+103471086336', 'e10adc3949ba59abbe56e057f20f883e', '32.6904712', '74.1834182', 'tubaarooj2002@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'dQgfybw0RoqNDGg_047lDn:APA91bE3mdnV_OSIBdHIL8-wjnUf4muuh5-Uj3aqEHpiJlefBvgfj0rt1LcSbLnA176T1dDDDJvjF5aogFDvBAz8jJ2GfM3b4iiImuEGU0jVwbQ6kxhzoJQ', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 13:09:21', '2025-02-05 13:17:17', '2025-02-05 13:09:21', '0', '4322', '2025-02-05 13:11:06', NULL, 0, 'yes', NULL),
(36, 'Gujjar', 'Musaf Ali', NULL, '+923250326432', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, 'musafali049@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'c31iiE56RM-RSXHn_XkZBn:APA91bHxdA5KXfdHsjBQHDJBCDzBidiudqu8mOBtwUWGoQ9_E1tuDMWFRo0iCizARI93XYz5Ee8L5qZMhdNogHG8xpNlv1vJ3-i_UnBkTMoxoWV9-ipK8Y8', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 13:09:21', '2025-02-05 13:09:41', '2025-02-05 13:09:21', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(37, 'Haroon', 'Raja', NULL, '+9203498846981', 'd41d8cd98f00b204e9800998ecf8427e', '32.8462551', '74.3022683', 'rajaharoon341520@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'eFPkG5czRUyaiXylAiLMem:APA91bE0vFlK9VbJWo5fnPgfBaytw00UHn6-nsrn-lfo0mw5NHN6LCNn5pBuxeOv9U4RlTbQ4kDLNh8TM1mWPHE7U-tFB4aJFhqL6xpBJ39FT1246d_UM1E', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 13:26:00', '2025-02-12 17:55:14', '2025-02-05 13:26:00', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(38, 'Khatana', 'Qasim', NULL, '+923204109570', 'd41d8cd98f00b204e9800998ecf8427e', '32.7504787', '74.1900421', 'qasimkhatan00@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'eKUMppgARaG3EtelOHQLsU:APA91bFhUmzSWs07booI145OimaRYYzs8GRnk9DNqCUU5FZpVI20D2zfIiaV0M980JMPL5puJBzcIwTjYwfwfUowPFCPcNotJJcU1qvL0Y3B5Fk6zCCVVBc', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 13:26:28', '2025-02-05 13:50:28', '2025-02-05 13:26:28', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(39, 'Hassan', 'Ali', NULL, '+923497442294', 'd41d8cd98f00b204e9800998ecf8427e', '32.5837363', '74.1566553', 'alipindihasna0987@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fduKAjEkSHGuuy8mbenwcR:APA91bG2NKErx_mf38fAQrYowYH6W6G4o-ET5Y8kNkkbuY2Ad0WWS-y30jvo0I5b1W7Xedd04vrm65eDWW6reJSRrozRGQ2Kvwmp6F_kRx6bgAlvAk7TTM4', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 13:34:42', '2025-02-06 09:18:53', '2025-02-05 13:34:42', '0', NULL, NULL, NULL, 1, 'yes', NULL),
(40, 'Rehman', 'Khizar', NULL, '+923258836963', 'd41d8cd98f00b204e9800998ecf8427e', '31.5044141', '74.3302018', 'mughalpashah@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'feVamTTGRgif_JfT_OCWLy:APA91bGBuvDKB4s_VE32GhwzEozaUq4gtjB9SfdQIURrVouIvTOXr_P0UyzGqugaPYZCm3Vwvfob3IcLH1qxt4r_--vb_87UuySfJ82HgTF7dhED0H40oVA', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 21:10:00', '2025-02-13 19:13:18', '2025-02-05 21:10:00', '0', NULL, NULL, NULL, 1, 'yes', NULL),
(41, 'Sheikh', 'Sufyan Arshad', NULL, '+923150089677', 'd41d8cd98f00b204e9800998ecf8427e', '31.504401', '74.3301927', 'sufyanarshad140@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fzuj8urwTsi4TvCOv7ZxUd:APA91bFr9laDDiS5JVIdqRpmOl0WHJ3JVbmDXgejinSl9QQfuwU-T8hCx2rYNm9NJHq7VznbXgV5ZHrNPJMz623IrlVGeWwINLo6oUwhen33JBpmKrdmol4', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 21:15:42', '2025-02-13 18:45:30', '2025-02-05 21:15:42', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(42, 'Zulfiqar', 'Faseeha Zulfiqar', NULL, '+923104279882', 'd41d8cd98f00b204e9800998ecf8427e', '31.5044871', '74.3301133', 'faseehazulfiqar09@gmail.com', '', 'yes', 'no', 'no', 'no', 'google', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'dpMRQW2AT5asYm0sFZhiyP:APA91bGWC6yGF3LhSfkNvLa5dcw1j6hFDMN1rQ1HOQhCYlBAQ2k9QGO3SssdcREk8m7573wl6bZ06wwQPqCuEb5ScFSkO94T0sZ7AWteZOl1mbAaYFnnxzA', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-05 21:23:39', '2025-02-13 13:49:06', '2025-02-05 21:23:39', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(43, 'Tahir', 'Rajjab', NULL, '+923457416729', 'd41d8cd98f00b204e9800998ecf8427e', '32.7367065', '74.2423472', 'rajjabtahir24@gmail.com', '', 'yes', 'yes', 'no', 'no', 'google', '', 'Driver_photo1739532818.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'ecyL6pHxSMmpIsTBCKtA5b:APA91bEJo3Nv2A7zwv9N0FXzdPxNNzAkt5fmDrhzy36BSpv1GqOIs4Rhh7NUtCfjQr1hXIWsW85PYdc3zZhR8zWhJQj69OvMIo8_7NNXdAJYcFpK73Qire0', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-07 13:23:24', '2025-02-14 11:35:05', '2025-02-07 13:23:24', '0', NULL, NULL, NULL, 1, 'yes', '10,9'),
(44, 'Quddus', 'Tahseen', NULL, '+923420790970', '64b764decdde6341c9621db8d2245f4a', NULL, NULL, 'Tahseenquddus33@gmail.com', '', 'yes', 'yes', 'no', 'no', 'phoneNumber', '', 'Driver_photo1739533089.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fGkxBOHPRwa2f2t2evHZ7o:APA91bH8klYmLz6YRvUWcEc-tai3B0Bobnq5sirRJNx8-aa5bbybOpfYM8nV9G_Dbch_cybKSuiA1yTj9uEaL0IpMAagvkF8sNJBWZPMClbh0p_Ls-dwFdI', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-11 14:06:47', '2025-02-14 11:38:09', '2025-02-11 14:06:47', '0', NULL, NULL, NULL, 0, 'yes', '9'),
(45, 'Muhammad', 'Bilal', NULL, '+19059043250', '607f9cbc8151aacaba4405f2bb33d3dd', NULL, NULL, 'bilalcheema1134@gmail.com', '', 'yes', 'no', 'no', 'no', 'phoneNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'dk2dR_S5O07_mXLvy4UFRb:APA91bF1uY769nERunt6_Yab-IHOH2z6PxeeAzYxSbXudnR4oPFDt5iyK47wlPOpwyy0MZm-YvCLCoAIVD9l__2dPPFWt6T2cSLVvPlsbKJt9RRw-8_uV1k', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-13 02:31:37', '2025-02-13 02:32:39', '2025-02-13 02:31:37', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(46, 'Rafay', 'Abdul', NULL, '+923423466347', '18753b85773a4cf8f30f7ca48cfd4b1f', '31.5044326', '74.3302236', 'Richrex361@gmail.com', '', 'yes', 'no', 'no', 'no', 'phoneNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'en5NymXLQsC7W5dQ-7UIwL:APA91bE_qW-ttP6j3w3nf1FSUS-8zPUjpLCgi2oq-4xzqV0j4kAsE1kaM53YYYO_LlIt3QOSHHMPMS7vfXCCMMCTqaA64UkvK6JPHiz0NnSNlzd_ioz9zgE', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-13 19:02:26', '2025-02-13 19:14:32', '2025-02-13 19:02:26', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(47, 'Khalid', 'Mahnoor', NULL, '+923099148684', '3e4f0314f6b8a5764e9693af6e4647a4', '31.5043673', '74.330185', 'mahnoorkhalid254526@gmail.com', '', 'yes', 'no', 'no', 'no', 'phoneNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'cKm0FyUuTE6XVudTnphjRT:APA91bH6Nrq6oHjGYTsLNI8qHNFEx8E6xE7Cn4f_14C2s4GTIbLmIhg36R5y3ZNX0guvfE7A3hXW21F8A3l_WSzkjqn_xFngZ0VIeQd0p4XSAdDCvdluaR8', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-13 22:34:25', '2025-02-14 06:10:28', '2025-02-13 22:34:25', '0', NULL, NULL, NULL, 0, 'yes', NULL),
(48, 'Ali', 'Muhammed', NULL, '+923284120951', '8a5edd2f3879a0ed204ad965bb2c45f8', '31.5044032', '74.3301598', 'ali03266289317@gmail.com', '', 'yes', 'no', 'no', 'no', 'phoneNumber', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, 'fSb1jOPfSAW6rJ4n4EjLq9:APA91bHLBE21h3M0huYItOpF4vYBe60j2AD9jqUwP0K5fSs3zM7cRCf_3jqj25SPFc81Q1YQ8fm1cnsCutl6pBvAA9h9S95qgUPDLxMvc0nyU6gs1qWc_so', '', NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 01:11:23', '2025-02-15 00:35:40', '2025-02-14 01:11:23', '0', NULL, NULL, NULL, 0, 'yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tj_conducteur_transaction`
--

CREATE TABLE `tj_conducteur_transaction` (
  `id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `id_ride` varchar(255) DEFAULT NULL,
  `id_parcel` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tj_country`
--

CREATE TABLE `tj_country` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `code` varchar(5) NOT NULL,
  `statut` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_country`
--

INSERT INTO `tj_country` (`id`, `libelle`, `code`, `statut`) VALUES
(1, 'Afghanistan', 'AF', 'no'),
(2, 'Albania', 'AL', 'no'),
(3, 'Algeria', 'DZ', 'no'),
(4, 'American Samoa', 'AS', 'no'),
(5, 'Andorra', 'AD', 'no'),
(6, 'Angola', 'AO', 'yes'),
(7, 'Anguilla', 'AI', 'no'),
(8, 'Antarctica', 'AQ', 'no'),
(9, 'Antigua and Barbuda', 'AG', 'no'),
(10, 'Argentina', 'AR', 'no'),
(11, 'Armenia', 'AM', 'no'),
(12, 'Aruba', 'AW', 'no'),
(13, 'Australia', 'AU', 'no'),
(14, 'Austria', 'AT', 'no'),
(15, 'Azerbaijan', 'AZ', 'no'),
(16, 'Bahamas', 'BS', 'no'),
(17, 'Bahrain', 'BH', 'no'),
(18, 'Bangladesh', 'BD', 'no'),
(19, 'Barbados', 'BB', 'no'),
(20, 'Belarus', 'BY', 'no'),
(21, 'Belgium', 'BE', 'no'),
(22, 'Belize', 'BZ', 'no'),
(23, 'Benin', 'BJ', 'no'),
(24, 'Bermuda', 'BM', 'no'),
(25, 'Bhutan', 'BT', 'no'),
(26, 'Bolivia', 'BO', 'yes'),
(27, 'Bosnia and Herzegovin', 'BA', 'no'),
(28, 'Botswana', 'BW', 'no'),
(29, 'Bouvet Island', 'BV', 'no'),
(30, 'Brazil', 'BR', 'yes'),
(31, 'British Indian Ocean ', 'IO', 'no'),
(32, 'Brunei Darussalam', 'BN', 'no'),
(33, 'Bulgaria', 'BG', 'no'),
(34, 'Burkina Faso', 'BF', 'no'),
(35, 'Burundi', 'BI', 'no'),
(36, 'Cambodia', 'KH', 'no'),
(37, 'Cameroon', 'CM', 'no'),
(38, 'Canada', 'CA', 'no'),
(39, 'Cape Verde', 'CV', 'no'),
(40, 'Cayman Islands', 'KY', 'no'),
(41, 'Central African Repub', 'CF', 'no'),
(42, 'Chad', 'TD', 'no'),
(43, 'Chile', 'CL', 'no'),
(44, 'China', 'CN', 'no'),
(45, 'Christmas Island', 'CX', 'no'),
(46, 'Cocos (Keeling) Islan', 'CC', 'no'),
(47, 'Colombia', 'CO', 'no'),
(48, 'Comoros', 'KM', 'no'),
(49, 'Democratic Republic o', 'CD', 'no'),
(50, 'Republic of the Congo', 'CG', 'no'),
(51, 'Cook Islands', 'CK', 'no'),
(52, 'Costa Rica', 'CR', 'no'),
(53, 'Croatia (Hrvatska)', 'HR', 'no'),
(54, 'Cuba', 'CU', 'yes'),
(55, 'Cyprus', 'CY', 'no'),
(56, 'Czech Republic', 'CZ', 'no'),
(57, 'Denmark', 'DK', 'no'),
(58, 'Djibouti', 'DJ', 'no'),
(59, 'Dominica', 'DM', 'no'),
(60, 'Dominican Republic', 'DO', 'no'),
(61, 'East Timor', 'TL', 'no'),
(62, 'Ecuador', 'EC', 'no'),
(63, 'Egypt', 'EG', 'no'),
(64, 'El Salvador', 'SV', 'no'),
(65, 'Equatorial Guinea', 'GQ', 'no'),
(66, 'Eritrea', 'ER', 'no'),
(67, 'Estonia', 'EE', 'no'),
(68, 'Ethiopia', 'ET', 'no'),
(69, 'Falkland Islands (Mal', 'FK', 'no'),
(70, 'Faroe Islands', 'FO', 'no'),
(71, 'Fiji', 'FJ', 'no'),
(72, 'Finland', 'FI', 'no'),
(73, 'France', 'FR', 'no'),
(74, 'France, Metropolitan', 'FX', 'no'),
(75, 'French Guiana', 'GF', 'no'),
(76, 'French Polynesia', 'PF', 'no'),
(77, 'French Southern Terri', 'TF', 'no'),
(78, 'Gabon', 'GA', 'no'),
(79, 'Gambia', 'GM', 'no'),
(80, 'Georgia', 'GE', 'no'),
(81, 'Germany', 'DE', 'yes'),
(82, 'Ghana', 'GH', 'no'),
(83, 'Gibraltar', 'GI', 'no'),
(84, 'Guernsey', 'GG', 'no'),
(85, 'Greece', 'GR', 'no'),
(86, 'Greenland', 'GL', 'no'),
(87, 'Grenada', 'GD', 'no'),
(88, 'Guadeloupe', 'GP', 'no'),
(89, 'Guam', 'GU', 'no'),
(90, 'Guatemala', 'GT', 'no'),
(91, 'Guinea', 'GN', 'no'),
(92, 'Guinea-Bissau', 'GW', 'no'),
(93, 'Guyana', 'GY', 'no'),
(94, 'Haiti', 'HT', 'no'),
(95, 'Heard and Mc Donald I', 'HM', 'no'),
(96, 'Honduras', 'HN', 'no'),
(97, 'Hong Kong', 'HK', 'no'),
(98, 'Hungary', 'HU', 'no'),
(99, 'Iceland', 'IS', 'no'),
(100, 'India', 'IN', 'yes'),
(101, 'Isle of Man', 'IM', 'no'),
(102, 'Indonesia', 'ID', 'no'),
(103, 'Iran (Islamic Republi', 'IR', 'no'),
(104, 'Iraq', 'IQ', 'no'),
(105, 'Ireland', 'IE', 'no'),
(106, 'Israel', 'IL', 'no'),
(107, 'Italy', 'IT', 'no'),
(108, 'Ivory Coast', 'CI', 'no'),
(109, 'Jersey', 'JE', 'no'),
(110, 'Jamaica', 'JM', 'no'),
(111, 'Japan', 'JP', 'no'),
(112, 'Jordan', 'JO', 'no'),
(113, 'Kazakhstan', 'KZ', 'no'),
(114, 'Kenya', 'KE', 'yes'),
(115, 'Kiribati', 'KI', 'no'),
(116, 'Korea, Democratic Peo', 'KP', 'no'),
(117, 'Korea, Republic of', 'KR', 'no'),
(118, 'Kosovo', 'XK', 'no'),
(119, 'Kuwait', 'KW', 'no'),
(120, 'Kyrgyzstan', 'KG', 'no'),
(121, 'Lao People\"s Democrat', 'LA', 'no'),
(122, 'Latvia', 'LV', 'no'),
(123, 'Lebanon', 'LB', 'no'),
(124, 'Lesotho', 'LS', 'no'),
(125, 'Liberia', 'LR', 'no'),
(126, 'Libyan Arab Jamahiriy', 'LY', 'no'),
(127, 'Liechtenstein', 'LI', 'no'),
(128, 'Lithuania', 'LT', 'no'),
(129, 'Luxembourg', 'LU', 'no'),
(130, 'Macau', 'MO', 'no'),
(131, 'North Macedonia', 'MK', 'no'),
(132, 'Madagascar', 'MG', 'no'),
(133, 'Malawi', 'MW', 'no'),
(134, 'Malaysia', 'MY', 'no'),
(135, 'Maldives', 'MV', 'no'),
(136, 'Mali', 'ML', 'no'),
(137, 'Malta', 'MT', 'no'),
(138, 'Marshall Islands', 'MH', 'no'),
(139, 'Martinique', 'MQ', 'no'),
(140, 'Mauritania', 'MR', 'no'),
(141, 'Mauritius', 'MU', 'no'),
(142, 'Mayotte', 'YT', 'no'),
(143, 'Mexico', 'MX', 'no'),
(144, 'Micronesia, Federated', 'FM', 'no'),
(145, 'Moldova, Republic of', 'MD', 'no'),
(146, 'Monaco', 'MC', 'no'),
(147, 'Mongolia', 'MN', 'no'),
(148, 'Montenegro', 'ME', 'no'),
(149, 'Montserrat', 'MS', 'no'),
(150, 'Morocco', 'MA', 'no'),
(151, 'Mozambique', 'MZ', 'no'),
(152, 'Myanmar', 'MM', 'no'),
(153, 'Namibia', 'NA', 'no'),
(154, 'Nauru', 'NR', 'no'),
(155, 'Nepal', 'NP', 'no'),
(156, 'Netherlands', 'NL', 'no'),
(157, 'Netherlands Antilles', 'AN', 'no'),
(158, 'New Caledonia', 'NC', 'no'),
(159, 'New Zealand', 'NZ', 'no'),
(160, 'Nicaragua', 'NI', 'no'),
(161, 'Niger', 'NE', 'no'),
(162, 'Nigeria', 'NG', 'no'),
(163, 'Niue', 'NU', 'no'),
(164, 'Norfolk Island', 'NF', 'no'),
(165, 'Northern Mariana Isla', 'MP', 'no'),
(166, 'Norway', 'NO', 'no'),
(167, 'Oman', 'OM', 'no'),
(168, 'Pakistan', 'PK', 'no'),
(169, 'Palau', 'PW', 'no'),
(170, 'Palestine', 'PS', 'no'),
(171, 'Panama', 'PA', 'no'),
(172, 'Papua New Guinea', 'PG', 'no'),
(173, 'Paraguay', 'PY', 'no'),
(174, 'Peru', 'PE', 'no'),
(175, 'Philippines', 'PH', 'no'),
(176, 'Pitcairn', 'PN', 'no'),
(177, 'Poland', 'PL', 'no'),
(178, 'Portugal', 'PT', 'no'),
(179, 'Puerto Rico', 'PR', 'no'),
(180, 'Qatar', 'QA', 'yes'),
(181, 'Reunion', 'RE', 'no'),
(182, 'Romania', 'RO', 'no'),
(183, 'Russian Federation', 'RU', 'yes'),
(184, 'Rwanda', 'RW', 'no'),
(185, 'Saint Kitts and Nevis', 'KN', 'no'),
(186, 'Saint Lucia', 'LC', 'no'),
(187, 'Saint Vincent and the', 'VC', 'no'),
(188, 'Samoa', 'WS', 'no'),
(189, 'San Marino', 'SM', 'no'),
(190, 'Sao Tome and Principe', 'ST', 'no'),
(191, 'Saudi Arabia', 'SA', 'no'),
(192, 'Senegal', 'SN', 'no'),
(193, 'Serbia', 'RS', 'no'),
(194, 'Seychelles', 'SC', 'no'),
(195, 'Sierra Leone', 'SL', 'no'),
(196, 'Singapore', 'SG', 'no'),
(197, 'Slovakia', 'SK', 'no'),
(198, 'Slovenia', 'SI', 'no'),
(199, 'Solomon Islands', 'SB', 'no'),
(200, 'Somalia', 'SO', 'no'),
(201, 'South Africa', 'ZA', 'no'),
(202, 'South Georgia South S', 'GS', 'no'),
(203, 'South Sudan', 'SS', 'no'),
(204, 'Spain', 'ES', 'no'),
(205, 'Sri Lanka', 'LK', 'no'),
(206, 'St. Helena', 'SH', 'no'),
(207, 'St. Pierre and Miquel', 'PM', 'no'),
(208, 'Sudan', 'SD', 'no'),
(209, 'Suriname', 'SR', 'no'),
(210, 'Svalbard and Jan Maye', 'SJ', 'no'),
(211, 'Eswatini', 'SZ', 'no'),
(212, 'Sweden', 'SE', 'no'),
(213, 'Switzerland', 'CH', 'no'),
(214, 'Syrian Arab Republic', 'SY', 'no'),
(215, 'Taiwan', 'TW', 'no'),
(216, 'Tajikistan', 'TJ', 'no'),
(217, 'Tanzania, United Repu', 'TZ', 'no'),
(218, 'Thailand', 'TH', 'no'),
(219, 'Togo', 'TG', 'no'),
(220, 'Tokelau', 'TK', 'no'),
(221, 'Tonga', 'TO', 'no'),
(222, 'Trinidad and Tobago', 'TT', 'no'),
(223, 'Tunisia', 'TN', 'no'),
(224, 'Turkey', 'TR', 'no'),
(225, 'Turkmenistan', 'TM', 'no'),
(226, 'Turks and Caicos Isla', 'TC', 'no'),
(227, 'Tuvalu', 'TV', 'no'),
(228, 'Uganda', 'UG', 'no'),
(229, 'Ukraine', 'UA', 'no'),
(230, 'United Arab Emirates', 'AE', 'no'),
(231, 'United Kingdom', 'GB', 'no'),
(232, 'United States', 'US', 'no'),
(233, 'United States minor o', 'UM', 'no'),
(234, 'Uruguay', 'UY', 'no'),
(235, 'Uzbekistan', 'UZ', 'no'),
(236, 'Vanuatu', 'VU', 'no'),
(237, 'Vatican City State', 'VA', 'no'),
(238, 'Venezuela', 'VE', 'yes'),
(239, 'Vietnam', 'VN', 'no'),
(240, 'Virgin Islands (Briti', 'VG', 'no'),
(241, 'Virgin Islands (U.S.)', 'VI', 'no'),
(242, 'Wallis and Futuna Isl', 'WF', 'no'),
(243, 'Western Sahara', 'EH', 'no'),
(244, 'Yemen', 'YE', 'no'),
(245, 'Zambia', 'ZM', 'no'),
(246, 'Zimbabwe', 'ZW', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tj_currency`
--

CREATE TABLE `tj_currency` (
  `id` int(11) NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `symbole` varchar(21) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `decimal_digit` varchar(255) NOT NULL,
  `symbol_at_right` varchar(10) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_currency`
--

INSERT INTO `tj_currency` (`id`, `libelle`, `symbole`, `statut`, `decimal_digit`, `symbol_at_right`, `creer`, `modifier`, `created_at`, `updated_at`) VALUES
(1, 'Dollar', '$', 'yes', '2', '', '0000-00-00 00:00:00', '2023-01-23 14:50:57', '2023-01-16 07:26:44', '2023-01-25 05:01:17'),
(2, 'Indian Rupee', '₹', 'no', '2', '', '0000-00-00 00:00:00', '2023-01-23 14:50:30', '2023-01-16 10:58:43', '2023-01-25 13:26:04'),
(3, 'Euro', '€', 'no', '2', '', '0000-00-00 00:00:00', '2023-01-17 12:32:31', '2023-01-17 12:32:31', '2023-01-17 12:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `tj_discount`
--

CREATE TABLE `tj_discount` (
  `id` int(11) NOT NULL,
  `code` varchar(1200) NOT NULL,
  `discount` varchar(1200) NOT NULL,
  `type` varchar(1200) NOT NULL,
  `discription` varchar(5000) DEFAULT NULL,
  `coupon_type` varchar(200) NOT NULL,
  `expire_at` datetime NOT NULL,
  `statut` varchar(12) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tj_discount`
--

INSERT INTO `tj_discount` (`id`, `code`, `discount`, `type`, `discription`, `coupon_type`, `expire_at`, `statut`, `creer`, `modifier`, `deleted_at`) VALUES
(1, 'NEWYEARSALE', '10', 'Percentage', 'Check out our new year sale, use our app and get 10% OFF, avail this offer till 7 January.\r\nThanks', 'Ride', '2024-01-07 00:00:00', 'no', '2024-12-08 10:01:52', '2024-12-08 10:01:52', '0000-00-00 00:00:00'),
(2, 'NEWYEARSALEFixed', '50', 'Fix Price', 'Get 50$off on each ride! WOOHO', 'Ride', '2025-01-11 00:00:00', 'yes', '2024-12-08 10:02:33', '2024-12-08 10:03:02', '0000-00-00 00:00:00'),
(3, '12345', '20', 'Percentage', 'Get 20% percent of on all rides till 27/01/2025', 'Ride', '2025-01-27 00:00:00', 'yes', '2025-01-24 18:22:46', '2025-01-24 18:22:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tj_favorite_ride`
--

CREATE TABLE `tj_favorite_ride` (
  `id` int(11) NOT NULL,
  `libelle` varchar(70) NOT NULL,
  `latitude_depart` varchar(21) NOT NULL,
  `longitude_depart` varchar(21) NOT NULL,
  `latitude_arrivee` varchar(21) NOT NULL,
  `longitude_arrivee` varchar(21) NOT NULL,
  `depart_name` varchar(200) NOT NULL,
  `destination_name` varchar(200) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `distance_unit` varchar(10) NOT NULL,
  `statut` varchar(10) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `id_user_app` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_location_vehicule`
--

CREATE TABLE `tj_location_vehicule` (
  `id` int(11) NOT NULL,
  `nb_jour` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `contact` varchar(21) NOT NULL,
  `statut` varchar(21) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_vehicule_rental` varchar(255) DEFAULT NULL,
  `id_user_app` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_message`
--

CREATE TABLE `tj_message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `id_requete` varchar(255) NOT NULL,
  `id_user_app` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `user_cat` varchar(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_note`
--

CREATE TABLE `tj_note` (
  `id` int(11) NOT NULL,
  `ride_id` varchar(255) DEFAULT NULL,
  `parcel_id` varchar(255) DEFAULT NULL,
  `niveau` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `id_user_app` varchar(255) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_notification`
--

CREATE TABLE `tj_notification` (
  `id` int(11) NOT NULL,
  `to_id` varchar(255) NOT NULL DEFAULT '0',
  `from_id` varchar(255) NOT NULL DEFAULT '0',
  `titre` text NOT NULL,
  `message` text NOT NULL,
  `statut` varchar(5) NOT NULL,
  `type` varchar(111) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_notification`
--

INSERT INTO `tj_notification` (`id`, `to_id`, `from_id`, `titre`, `message`, `statut`, `type`, `creer`, `modifier`, `deleted_at`) VALUES
(1, '3', '16', 'Confirmation of your ride', 'Safyan Tariq is Confirmed your ride.', 'yes', 'rideconfirmed', '2025-01-14 19:15:44', '2025-01-14 19:15:44', NULL),
(2, '8', '16', 'Confirmation of your ride', 'Safyan Tariq is Confirmed your ride.', 'yes', 'rideconfirmed', '2025-01-24 10:38:16', '2025-01-24 10:38:16', NULL),
(3, '8', '16', 'Beginning of your ride', 'Safyan Tariq is started your ride.', 'yes', 'rideonride', '2025-01-24 10:38:48', '2025-01-24 10:38:48', NULL),
(4, '8', '16', 'End of your ride', 'Safyan Tariq is completed your ride.', 'yes', 'ridecompleted', '2025-01-24 10:38:56', '2025-01-24 10:38:56', NULL),
(5, '11', '16', 'Confirmation of your ride', 'Safyan Tariq is Confirmed your ride.', 'yes', 'rideconfirmed', '2025-01-26 18:18:21', '2025-01-26 18:18:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tj_payment_method`
--

CREATE TABLE `tj_payment_method` (
  `id` int(11) NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `image` text NOT NULL,
  `statut` varchar(10) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_payment_method`
--

INSERT INTO `tj_payment_method` (`id`, `libelle`, `image`, `statut`, `creer`, `modifier`, `updated_at`) VALUES
(5, 'Cash', 'image_method_1575136572.6831_944653490.png', 'no', '2019-11-30 11:04:28', '2019-11-30 17:56:12', '2023-01-09 08:01:36'),
(7, 'PayFast', 'payfast.png', 'no', '2019-11-30 17:14:23', '0000-00-00 00:00:00', NULL),
(8, 'Credit Card', 'image_method_1575134086.263_1420646508.png', 'No', '2019-11-30 17:14:46', '0000-00-00 00:00:00', NULL),
(9, 'Wallet', 'image_method_1578411935.0009_2031756.png', 'yes', '2020-01-07 15:45:35', '0000-00-00 00:00:00', NULL),
(10, 'Stripe', 'stripe.png', 'yes', '2022-07-08 07:49:23', '0000-00-00 00:00:00', NULL),
(11, 'PayStack', 'paystack.png', 'yes', '2022-07-08 08:38:13', '0000-00-00 00:00:00', NULL),
(12, 'FlutterWave', 'flutterwave.png', 'yes', '2022-07-08 08:40:05', '0000-00-00 00:00:00', NULL),
(13, 'Razorpay', 'razorpay_@3x.png', 'yes', '2022-07-08 08:40:32', '0000-00-00 00:00:00', NULL),
(14, 'Paytm', 'paytm_@3x.png', 'yes', '2022-07-08 08:40:59', '0000-00-00 00:00:00', NULL),
(15, 'PayPal', 'paypal_@3x.png', 'yes', '2022-07-08 08:41:35', '0000-00-00 00:00:00', NULL),
(16, 'Mercadopago', 'marcado_pago.png', 'yes', '2022-12-15 13:05:58', '2022-12-15 13:05:58', '2022-12-15 13:56:48'),
(17, ' applePay', '', '', '2023-01-02 11:20:05', '2023-01-02 11:20:05', NULL),
(18, 'Midtrans', 'midtrans.png', 'yes', '2024-08-29 06:03:15', '0000-00-00 00:00:00', NULL),
(19, 'OrangePay', 'orangeMoney.png', 'yes', '2024-08-29 06:04:28', '0000-00-00 00:00:00', NULL),
(20, 'Xendit', 'xendit.png', 'yes', '2024-08-29 06:04:49', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tj_privacy_policy`
--

CREATE TABLE `tj_privacy_policy` (
  `id` int(11) NOT NULL,
  `privacy_policy` text NOT NULL,
  `statut` varchar(20) NOT NULL,
  `career` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tj_privacy_policy`
--

INSERT INTO `tj_privacy_policy` (`id`, `privacy_policy`, `statut`, `career`, `modifier`, `updated_at`) VALUES
(1, '<h3>1. <strong>Information We Collect</strong></h3><p>We collect both personal and non-personal information from users of the Cabme app. The types of information we collect include:</p><h4>a. <strong>Personal Information</strong></h4><ul><li><strong>Account Information:</strong> When you create an account, we collect personal details such as your name, phone number, email address, and payment information (such as credit/debit card details or payment processor information).</li><li><strong>Location Data:</strong> To provide you with accurate and real-time taxi booking services, we collect your GPS location when you use the app. This includes your current location when booking a ride and the destination you input.</li><li><strong>Ride History:</strong> We collect information about your ride, such as pick-up and drop-off locations, trip duration, fare, and driver details.</li><li><strong>Profile Information:</strong> You may provide additional information such as your profile picture or preferences related to your rides.</li></ul><h4>b. <strong>Non-Personal Information</strong></h4><ul><li><strong>Device Information:</strong> We collect technical details about your device, such as device type, operating system, IP address, app version, and browser type.</li><li><strong>Usage Data:</strong> We collect data related to how you interact with the app, including pages visited, time spent on the app, and interactions with features such as ride requests or payment processing.</li></ul><h3>2. <strong>How We Use Your Information</strong></h3><p>We use your information for the following purposes:</p><ul><li><strong>Providing and Improving Services:</strong> To process your bookings, manage your rides, and deliver an optimal user experience.</li><li><strong>Location Services:</strong> To track your current location for ride pickup and drop-off, as well as provide accurate navigation for the driver.</li><li><strong>Customer Support:</strong> To respond to your inquiries, resolve issues, and improve our customer service.</li><li><strong>Communication:</strong> To send you updates, promotions, ride receipts, and other notifications related to your account or rides.</li><li><strong>Payment Processing:</strong> To process payments securely and facilitate transactions.</li><li><strong>Analytics and Research:</strong> To analyze usage patterns, enhance the app’s features, and improve the overall user experience.</li></ul><h3>3. <strong>How We Share Your Information</strong></h3><p>We may share your information with third parties in the following situations:</p><ul><li><strong>Service Providers:</strong> We share your information with third-party service providers (such as payment processors, cloud services, or analytics providers) who assist in operating and improving the app.</li><li><strong>Law Enforcement and Legal Requirements:</strong> We may disclose your information if required by law, regulation, legal process, or to protect the rights, property, or safety of Cabme, our users, or others.</li><li><strong>Business Transfers:</strong> In the event of a merger, acquisition, or sale of our assets, your information may be transferred as part of that transaction.</li><li><strong>With Your Consent:</strong> We may share your information with third parties when you give explicit consent.</li></ul><h3>4. <strong>Data Retention</strong></h3><p>We retain your personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy or as required by law. If you delete your account, we will retain certain information for a period of time to comply with legal obligations, resolve disputes, and enforce our agreements.</p><h3>5. <strong>Security of Your Information</strong></h3><p>We take reasonable measures to protect your information from unauthorized access, alteration, or disclosure. However, no method of transmission over the internet or method of electronic storage is 100% secure. We cannot guarantee the absolute security of your personal information.</p><h3>6. <strong>Your Rights and Choices</strong></h3><p>Depending on your jurisdiction, you may have certain rights regarding your personal information, including:</p><ul><li><strong>Access:</strong> You have the right to access the personal data we hold about you.</li><li><strong>Correction:</strong> You can request correction of any inaccurate or incomplete information.</li><li><strong>Deletion:</strong> You may request deletion of your personal information, subject to certain legal exceptions.</li><li><strong>Opt-out of Marketing:</strong> You can opt-out of receiving marketing communications from us at any time by following the instructions in the email or contacting us directly.</li><li><strong>Location Data:</strong> You can disable location tracking in your device settings, although this may limit some functionality of the app.</li></ul><p>To exercise any of these rights, please contact us using the information provided in the “Contact Us” section below.</p><h3>7. <strong>Children\"s Privacy</strong></h3><p>Cabme does not knowingly collect or solicit personal information from anyone under the age of 16. If we learn that we have collected personal information from a child under 16, we will delete that information as soon as possible. If you believe that we may have information from or about a child under 16, please contact us immediately.</p><h3>8. <strong>Changes to This Privacy Policy</strong></h3><p>We may update this Privacy Policy from time to time to reflect changes in our practices, technology, or legal requirements. We will notify you of any significant changes by posting the updated policy on the app or via email. The updated policy will be effective as of the date specified at the top of this page.</p>', 'false', '2022-11-15 14:50:06', '2023-02-02 12:17:49', '2024-11-06 10:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `tj_requete`
--

CREATE TABLE `tj_requete` (
  `id` int(11) NOT NULL,
  `id_user_app` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `depart_name` varchar(100) NOT NULL,
  `destination_name` varchar(100) NOT NULL,
  `latitude_depart` varchar(21) NOT NULL,
  `longitude_depart` varchar(21) NOT NULL,
  `latitude_arrivee` varchar(21) NOT NULL,
  `longitude_arrivee` varchar(21) NOT NULL,
  `stops` json DEFAULT NULL,
  `place` text NOT NULL,
  `number_poeple` varchar(255) NOT NULL,
  `distance` varchar(255) NOT NULL,
  `distance_unit` varchar(10) CHARACTER SET armscii8 NOT NULL,
  `duree` varchar(21) NOT NULL,
  `montant` varchar(255) NOT NULL,
  `tip_amount` varchar(255) DEFAULT NULL,
  `tax` json DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `admin_commission` varchar(2000) NOT NULL,
  `transaction_id` varchar(2000) NOT NULL,
  `trajet` text NOT NULL,
  `statut` varchar(255) NOT NULL,
  `statut_paiement` varchar(10) NOT NULL,
  `id_payment_method` varchar(255) DEFAULT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `date_retour` date DEFAULT NULL,
  `heure_retour` time NOT NULL,
  `statut_round` varchar(5) NOT NULL,
  `statut_course` varchar(10) NOT NULL,
  `id_conducteur_accepter` varchar(255) NOT NULL,
  `trip_objective` varchar(111) NOT NULL,
  `trip_category` varchar(111) NOT NULL,
  `age_children1` varchar(111) NOT NULL,
  `age_children2` varchar(111) NOT NULL,
  `age_children3` varchar(111) NOT NULL,
  `feel_safe` varchar(1) NOT NULL,
  `feel_safe_driver` varchar(1) NOT NULL,
  `car_driver_confirmed` varchar(1) NOT NULL DEFAULT '0',
  `otp` varchar(255) DEFAULT NULL,
  `otp_created` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `dispatcher_id` varchar(255) DEFAULT NULL,
  `ride_type` varchar(255) DEFAULT NULL,
  `user_info` json DEFAULT NULL,
  `rejected_driver_id` json DEFAULT NULL,
  `ride_date` timestamp NULL DEFAULT NULL,
  `rider_firebase_id` varchar(255) NOT NULL,
  `drive_firebase_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_requete`
--

INSERT INTO `tj_requete` (`id`, `id_user_app`, `id_conducteur`, `depart_name`, `destination_name`, `latitude_depart`, `longitude_depart`, `latitude_arrivee`, `longitude_arrivee`, `stops`, `place`, `number_poeple`, `distance`, `distance_unit`, `duree`, `montant`, `tip_amount`, `tax`, `discount`, `admin_commission`, `transaction_id`, `trajet`, `statut`, `statut_paiement`, `id_payment_method`, `creer`, `modifier`, `date_retour`, `heure_retour`, `statut_round`, `statut_course`, `id_conducteur_accepter`, `trip_objective`, `trip_category`, `age_children1`, `age_children2`, `age_children3`, `feel_safe`, `feel_safe_driver`, `car_driver_confirmed`, `otp`, `otp_created`, `deleted_at`, `updated_at`, `dispatcher_id`, `ride_type`, `user_info`, `rejected_driver_id`, `ride_date`, `rider_firebase_id`, `drive_firebase_id`) VALUES
(3, '5', '16', 'Loroy, Loroy', 'Gujranwala, Punjab, Pakistan', '32.6266148', '74.1027672', '32.1876919', '74.1944529', '[]', '', '1', '54.941', 'KM', '1 hour 12 mins', '274.70500000000004', '0', NULL, NULL, '', '', '', 'driver rejected', '', '10', '2025-01-19 09:21:38', '2025-01-19 09:21:38', '2025-01-19', '09:21:38', 'no', '', '0', 'General', '', '', '', '', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"16\"]', NULL, '', ''),
(4, '5', '16', 'Loroy, Loroy', 'Gujranwala, Punjab, Pakistan', '32.6266133', '74.1027751', '32.1876919', '74.1944529', '[]', '', '1', '54.941', 'KM', '1 hour 12 mins', '274.70500000000004', '0', NULL, NULL, '', '', '', 'driver rejected', '', '10', '2025-01-19 12:43:44', '2025-01-19 12:43:44', '2025-01-19', '12:43:44', 'no', '', '0', 'General', '', '', '', '', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"16\"]', NULL, '', ''),
(5, '8', '16', 'Wazirabad, Gujranwala, Punjab, Pakistan', 'Gujrat, Punjab, Pakistan', '32.4404179', '74.120255', '32.57307249999999', '74.10050439999999', '[]', '', '1', '17.94', 'KM', '32 mins', '89.7', '0', NULL, NULL, '', '', '', 'completed', '', '10', '2025-01-24 10:36:13', '2025-01-24 10:36:13', '2025-01-24', '10:36:13', 'no', '', '0', 'General', '', '', '', '', '0', '0', '0', '483676', '2025-01-24 10:38:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(19, '13', '16', 'Wazirabad, Gujranwala, Punjab, Pakistan', 'Gujrat, Punjab, Pakistan', '32.4404179', '74.120255', '32.57307249999999', '74.10050439999999', '[]', '', '1', '17.94', 'KM', '32 mins', '89.7', '0', NULL, NULL, '', '', '', 'confirmed', '', '10', '2025-01-26 19:09:14', '2025-01-26 19:09:14', '2025-01-26', '19:09:14', 'no', '', '0', 'General', '', '', '', '', '0', '0', '0', '877551', '2025-01-30 13:11:20', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-30 06:08:00', '8YQErejTK8RaIqz4a813NKMkijo2', 'lf6IDCCxYIRoibDG0xLRhpw4A8c2');

-- --------------------------------------------------------

--
-- Table structure for table `tj_settings`
--

CREATE TABLE `tj_settings` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `footer` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `website_color` varchar(2000) NOT NULL,
  `driverapp_color` varchar(2000) NOT NULL,
  `adminpanel_color` varchar(2000) NOT NULL,
  `app_logo` varchar(255) NOT NULL,
  `app_logo_small` varchar(255) NOT NULL,
  `google_map_api_key` varchar(2000) NOT NULL,
  `is_social_media` varchar(200) NOT NULL,
  `driver_radios` varchar(200) NOT NULL,
  `user_ride_schedule_time_minute` varchar(200) NOT NULL,
  `trip_accept_reject_driver_time_sec` varchar(200) NOT NULL,
  `show_ride_without_destination` varchar(20) NOT NULL,
  `show_ride_otp` varchar(20) NOT NULL,
  `show_ride_later` varchar(20) NOT NULL,
  `delivery_distance` varchar(20) NOT NULL,
  `app_version` varchar(20) NOT NULL,
  `web_version` varchar(20) NOT NULL,
  `contact_us_address` longtext NOT NULL,
  `contact_us_phone` varchar(15) NOT NULL,
  `contact_us_email` varchar(60) NOT NULL,
  `minimum_deposit_amount` int(11) NOT NULL,
  `minimum_withdrawal_amount` int(11) NOT NULL,
  `referral_amount` int(11) NOT NULL,
  `mapType` varchar(100) NOT NULL,
  `driverLocationUpdate` int(11) NOT NULL,
  `delivery_charge_parcel` varchar(200) NOT NULL,
  `parcel_active` varchar(5) NOT NULL,
  `parcel_per_weight_charge` varchar(30) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `senderId` varchar(255) NOT NULL,
  `serviceJson` varchar(255) NOT NULL,
  `map_for_application` varchar(100) NOT NULL,
  `home_screen_type` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_settings`
--

INSERT INTO `tj_settings` (`id`, `title`, `footer`, `email`, `website_color`, `driverapp_color`, `adminpanel_color`, `app_logo`, `app_logo_small`, `google_map_api_key`, `is_social_media`, `driver_radios`, `user_ride_schedule_time_minute`, `trip_accept_reject_driver_time_sec`, `show_ride_without_destination`, `show_ride_otp`, `show_ride_later`, `delivery_distance`, `app_version`, `web_version`, `contact_us_address`, `contact_us_phone`, `contact_us_email`, `minimum_deposit_amount`, `minimum_withdrawal_amount`, `referral_amount`, `mapType`, `driverLocationUpdate`, `delivery_charge_parcel`, `parcel_active`, `parcel_per_weight_charge`, `creer`, `modifier`, `senderId`, `serviceJson`, `map_for_application`, `home_screen_type`) VALUES
(1, 'Yump Rides', '© 2022-2024 Yump rides. All rights reserved.', '', '#000000', '#000000', '#151414', 'logo.jpg', 'logo.jpg', 'AIzaSyC8JtIMqTQ8KByebN3hnijwXPZnt3wzrRs', '', '10', '', '200', '', 'yes', '', 'KM', '1.0', '1.0', '1600 Amphitheatre Pkwy, Mountain View, CA 94043, USA', '0', 'support@yumprides.ca', 0, 50, 5, 'google', 50, '5', 'yes', '10', '2019-12-15 09:41:04', '2025-02-08 16:13:55', '600457798477', 'https://www.yumprides.ca/admin/latest/storage/app/firebase/credentials.json', 'Google', 'UberHome');

-- --------------------------------------------------------

--
-- Table structure for table `tj_sos`
--

CREATE TABLE `tj_sos` (
  `id` int(11) NOT NULL,
  `ride_id` varchar(255) NOT NULL,
  `latitude` varchar(60) NOT NULL,
  `longitude` varchar(60) NOT NULL,
  `status` varchar(200) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tj_tax`
--

CREATE TABLE `tj_tax` (
  `id` int(11) NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `value` varchar(21) NOT NULL,
  `type` varchar(21) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `country` varchar(255) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tj_tax`
--

INSERT INTO `tj_tax` (`id`, `libelle`, `value`, `type`, `statut`, `country`, `creer`, `modifier`) VALUES
(1, 'HST', '13', 'Percentage', 'yes', 'Canada', '2022-07-25 09:23:34', '2024-12-12 17:05:35'),
(2, 'GST', '10', 'Percentage', 'yes', 'Pakistan', '2024-12-12 17:45:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tj_terms_and_conditions`
--

CREATE TABLE `tj_terms_and_conditions` (
  `id` int(11) NOT NULL,
  `terms` text CHARACTER SET utf8 NOT NULL,
  `statut` varchar(11) CHARACTER SET utf8 NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tj_terms_and_conditions`
--

INSERT INTO `tj_terms_and_conditions` (`id`, `terms`, `statut`, `creer`, `modifier`, `updated_at`) VALUES
(1, '<p><strong>Welcome to Cabme!</strong> By accessing or using our mobile application (\"Cabme\") and its associated services, you agree to be bound by the following Terms and Conditions. These terms govern your use of the App, including all features and services offered. If you do not agree to these Terms and Conditions, please do not use the App.</p><h3>1. <strong>Acceptance of Terms</strong></h3><p>By using the Cabme app, you agree to comply with and be bound by these Terms and Conditions, as well as our Privacy Policy. We may update these terms from time to time, and any such updates will be posted in the app or on our website. Continued use of the app after such changes are made will signify your acceptance of the updated terms.</p><h3>2. <strong>Eligibility</strong></h3><p>To use the Cabme app, you must be at least 18 years of age or have the legal capacity to enter into a binding contract. By using the App, you represent and warrant that you meet these eligibility requirements.</p><h3>3. <strong>Services Provided</strong></h3><p>Cabme offers a platform that connects passengers with available taxi drivers for transportation services. Through the app, you can:</p><ul><li>Request rides from nearby drivers.</li><li>Track the status of your ride in real-time.</li><li>Make payments for your ride through the app.</li><li>Rate and review your driver after the completion of your ride.</li></ul><p>Please note that Cabme is a booking platform and not a taxi service provider. The actual transportation services are provided by independent drivers or transportation companies, and Cabme is not responsible for the quality or safety of these services.</p>', 'false', '2021-06-09 08:27:59', '2023-01-23 14:20:48', '2024-11-06 10:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `tj_transaction`
--

CREATE TABLE `tj_transaction` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `id_user_app` varchar(255) NOT NULL,
  `deduction_type` varchar(255) NOT NULL,
  `ride_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(200) NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_type_vehicule`
--

CREATE TABLE `tj_type_vehicule` (
  `id` int(11) NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `prix` varchar(21) NOT NULL,
  `image` text NOT NULL,
  `selected_image` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_type_vehicule`
--

INSERT INTO `tj_type_vehicule` (`id`, `libelle`, `prix`, `image`, `selected_image`, `status`, `creer`, `modifier`, `updated_at`, `deleted_at`) VALUES
(1, 'Sedan X', '', 'image_vehicleType1733586267.jpg', '', 'Yes', '2024-12-07 15:44:27', '2025-02-07 18:28:39', '2025-02-07 18:28:39', NULL),
(2, 'XL', '', 'image_vehicleType1733922655.png', '', 'Yes', '2024-12-11 13:10:56', '2025-02-07 18:28:52', '2025-02-07 18:28:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tj_type_vehicule_rental`
--

CREATE TABLE `tj_type_vehicule_rental` (
  `id` int(11) NOT NULL,
  `libelle` varchar(21) NOT NULL,
  `prix` varchar(21) NOT NULL,
  `image` text NOT NULL,
  `no_of_passenger` varchar(255) DEFAULT NULL,
  `nombre` varchar(21) DEFAULT NULL,
  `nb_place` varchar(255) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_user_app`
--

CREATE TABLE `tj_user_app` (
  `id` int(11) NOT NULL,
  `nom` varchar(21) DEFAULT NULL,
  `prenom` varchar(21) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb_id` varchar(255) NOT NULL,
  `phone` varchar(21) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `login_type` varchar(21) NOT NULL,
  `photo` text,
  `photo_path` text,
  `photo_nic` text,
  `photo_nic_path` text,
  `statut` varchar(10) NOT NULL,
  `statut_nic` varchar(10) DEFAULT NULL,
  `tonotify` varchar(5) NOT NULL,
  `device_id` text,
  `fcm_id` text,
  `creer` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifier` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(10,2) DEFAULT NULL,
  `reset_password_otp` varchar(4) DEFAULT NULL,
  `reset_password_otp_modifier` varchar(20) DEFAULT NULL,
  `age` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `otp` varchar(20) DEFAULT NULL,
  `otp_created` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_user_app`
--

INSERT INTO `tj_user_app` (`id`, `nom`, `prenom`, `email`, `fb_id`, `phone`, `mdp`, `login_type`, `photo`, `photo_path`, `photo_nic`, `photo_nic_path`, `statut`, `statut_nic`, `tonotify`, `device_id`, `fcm_id`, `creer`, `updated_at`, `modifier`, `amount`, `reset_password_otp`, `reset_password_otp_modifier`, `age`, `gender`, `otp`, `otp_created`, `deleted_at`, `created_at`) VALUES
(5, 'Ali', 'Muneeb ali', 'chmuneebali.sa@gmail.com', '', '+9203006239730', 'd41d8cd98f00b204e9800998ecf8427e', 'google', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'ftHNXlL-Qduxk3F7kHBOcx:APA91bGt1VSqGrEYxtsH0olKeBkXidvS2dB2HSGo6Jweh3eIZ0_Zy8RxMJRFuE5AqMQaBZZl6JOsDx3ZzpUqDC4ZaBua8YvWw93AxJI3T4CcCJcHtjbVhE0', '2025-01-19 09:19:40', '2025-01-20 01:34:54', '2025-01-20 07:34:54', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(6, 'Link', 'Cater Link', 'caterlink203641@gmail.com', '', '+923005278412', 'd41d8cd98f00b204e9800998ecf8427e', 'google', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'dyU-kjHpRb6eeP-39y2O8n:APA91bFVxZPLXmpGlGKmGQvSj2KXeDy8KR9UgFVf_I7EyCD58mgvlA1Sc0TjzJ11d0l5lG7hiV2c67gLlWVCGbQMykQYXW13at3TDJIETG7Ut59E7v4w2vc', '2025-01-20 13:41:17', '2025-01-20 12:23:47', '2025-01-20 18:23:47', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(7, 'Channel', 'Sports Channel', 'sportsytchannel159@gmail.com', 'VxORFuHSENhrpmPgKLu847nQFpY2', '+923004735267', 'd41d8cd98f00b204e9800998ecf8427e', 'google', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'djQyTm37QMW8efrk2pIe8j:APA91bEJ87Ic2GFrYbZGE13gWxCEebs2FnYPt9kmF9_idNRQBOCX631Z4R4lpyhxbj5jjBznJaaq5zlRhyC7THEI0gvS57UA4CuoGNHx-sYrCn63FExNBKo', '2025-01-20 14:56:17', '2025-01-24 11:38:25', '2025-01-20 17:17:28', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(8, 'Gggggggg', 'Safyan Tariq', 'mstdevops786@gmail.com', '', '+15555555', 'd41d8cd98f00b204e9800998ecf8427e', 'google', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'eQM6g4qLSauVyOwRPBo1wi:APA91bE2FXEZqeSl1Vsw5Z8y305UiKaZ-no96E4RGzoac1I8FDrSITiB5PMuObqYmjEnCZ6ustxwznW725CRsLB04-f0z4U5kNd7iKAZuucJQ7v06w_-nrg', '2025-01-23 16:15:02', '2025-01-26 11:14:56', '2025-01-26 17:14:56', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(13, 'Á§Ð', 'safyan tariq', 'safyant401@gmail.com', '', '+1Ð[§', 'd41d8cd98f00b204e9800998ecf8427e', 'google', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'eqbxenuITyWLt6vT0_cXMq:APA91bGo1Pek5qApXEQb6jJMQd_drPPboJGgXU5NKTOtV-os8dVWc-Ywk3Y_8qImbiuraO20WJHvMM9yiGc1K6KIvdTPuaeWJBtRhZ1_1qOj5tAUQwKUHUk', '2025-01-26 19:05:40', '2025-01-28 09:49:49', '2025-01-28 15:49:49', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(14, 'Tariq', 'Safyan', 'safyantariq4@gmail.com', '', '+923026111355', 'cc03e747a6afbbcbf8be7668acfebee5', 'phoneNumber', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'dMj7HEplRQqafYB5MoXO3r:APA91bHfaiw4BEseQHgXJknqtJqvyV65Y9hHAN3vnPzrD_uq88jxDSBSTRAQvYB66F0uDOkrWKXekmKAMrxllIVt6_9kSfvxUiUNv18zEIavfmi4ppwenaw', '2025-01-28 18:08:29', '2025-02-14 12:45:56', '2025-02-14 18:45:56', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(15, 'Tariq', 'Safyan', 'safyantariq444@gmail.com', '', '+923246910899', 'cc03e747a6afbbcbf8be7668acfebee5', 'phoneNumber', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'fT_8CCbk7UYPq9EUNuyryJ:APA91bGCwGWDeCbO9jCAVhnlxncHnq9oH8y4QWKsc8_FqV9rOvdc9xhXzlLXXXGHwF8wV0b9lX3lOn2NJjQI3AJ1hDwnQm5AR3fcFlSvIWfQ_0mZKoRZaJA', '2025-02-02 20:09:18', '2025-02-10 22:43:52', '2025-02-11 04:43:52', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(16, 'Sohail', 'Anum', 'Anumgrt68@gmail.com', '', '+923066490897', 'e80b5017098950fc58aad83c8c14978e', 'phoneNumber', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'cODASRj-4kMQnfJ7MsqCck:APA91bGwhvlxi3KRCqpgHagC9_y--55p7w6qQfMTqThRW3raJoHZUP1EH3VJNa19LkY1b1pVODRqGGmDICldaiTPdUW5704oCY7-6KPZfcgEmdxv0tAKUbE', '2025-02-12 15:19:30', '2025-02-12 09:19:34', '2025-02-12 15:19:34', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(17, 'Jarral', 'Faheem', 'faheemjarral612@gmail.com', '', '+923431156993', '900710c8d3b878450ec81b6f827f0129', 'phoneNumber', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'dBzQ38fwpUu8l6dWUQVPqq:APA91bFMLnyS8aHZcFOIZMP3qUhMFC24LrtHJTRQ2iiru6KugM-6EUtQ9HDNHmYPoUnZOpCJDlvzKDbZ1C6sDYRYMZRTeF85ORWr1XucLR-oAoB7BJo66SA', '2025-02-12 15:33:16', '2025-02-12 09:36:15', '2025-02-12 15:36:15', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(18, 'Tariq', 'Safyan', 'safyantariq000@gmail.com', '', '+923473910899', 'cc03e747a6afbbcbf8be7668acfebee5', 'phoneNumber', NULL, NULL, NULL, NULL, 'yes', 'no', 'yes', NULL, 'cUv-C3EwekmFo7txT7DXkB:APA91bH7_q8XOaCZEbbzByY9qGPkzo6dA-FdtxBBv_wIIyrcMJv40YSC25JMVegv71brAYMgIky1GlSIqfFEFY5GE4bhSg-cyJLEtkB4kDkVZVHoK-BextQ', '2025-02-12 15:44:27', '2025-02-12 09:44:32', '2025-02-12 15:44:32', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tj_user_note`
--

CREATE TABLE `tj_user_note` (
  `id` int(11) NOT NULL,
  `ride_id` varchar(255) NOT NULL,
  `niveau_driver` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `id_user_app` varchar(255) NOT NULL,
  `statut` varchar(5) CHARACTER SET utf8 NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tj_user_note`
--

INSERT INTO `tj_user_note` (`id`, `ride_id`, `niveau_driver`, `id_conducteur`, `id_user_app`, `statut`, `creer`, `modifier`, `comment`) VALUES
(1, '5', '1.0', '16', '8', 'yes', '2025-01-24 14:20:12', '2025-01-27 06:59:37', 'Thanks');

-- --------------------------------------------------------

--
-- Table structure for table `tj_vehicle_images`
--

CREATE TABLE `tj_vehicle_images` (
  `id` int(11) NOT NULL,
  `id_vehicle` varchar(255) NOT NULL,
  `id_driver` varchar(255) NOT NULL,
  `image` text CHARACTER SET utf8 NOT NULL,
  `image_path` text CHARACTER SET utf8 NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tj_vehicule`
--

CREATE TABLE `tj_vehicule` (
  `id` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `car_make` varchar(100) NOT NULL,
  `milage` varchar(100) NOT NULL,
  `km` varchar(100) NOT NULL,
  `color` varchar(21) NOT NULL,
  `numberplate` varchar(100) NOT NULL,
  `passenger` varchar(255) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `id_type_vehicule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tj_vehicule`
--

INSERT INTO `tj_vehicule` (`id`, `brand`, `model`, `car_make`, `milage`, `km`, `color`, `numberplate`, `passenger`, `id_conducteur`, `statut`, `creer`, `modifier`, `updated_at`, `deleted_at`, `id_type_vehicule`) VALUES
(6, '1', '1', '2014', '4234', '4234', 'Red', '33933', '2', '16', 'yes', '2025-01-11 09:34:08', '2025-01-11 03:34:08', '2025-01-11 09:34:08', NULL, '2'),
(8, '1', '1', '2024', '15', '1200', 'Black', 'GTL1234', '4', '23', 'yes', '2025-01-20 15:02:02', '2025-01-20 09:02:02', '2025-01-20 15:02:02', NULL, '1'),
(9, '1', '1', '2018', '200', '50000', 'White', 'ZS 029', '5', '26', 'yes', '2025-01-24 13:31:05', '2025-01-24 13:31:10', '2025-01-24 13:31:05', NULL, '1'),
(10, '1', '1', '2022', 'afd', 'fad', 'red', 'ADF', '4', '21', 'yes', '2025-02-01 13:50:21', '2025-02-01 07:50:21', '2025-02-01 13:50:21', NULL, '1'),
(11, '1', '1', '2019', '123', '523', 'Black', '7777', '4', '32', 'yes', '2025-02-04 18:11:44', '2025-02-04 18:11:48', '2025-02-04 18:11:44', NULL, '1'),
(12, '3', '79', '2020', '15', '150000', 'White', 'MK 032', '5', '43', 'yes', '2025-02-07 13:38:13', '2025-02-14 11:33:14', '2025-02-07 13:38:13', NULL, '2'),
(13, '1', '1', '2023', '15', '255000', 'Black', 'KH 9755', '4', '30', 'yes', '2025-02-07 17:41:46', '2025-02-11 16:04:48', '2025-02-07 17:41:46', NULL, '1'),
(14, '7', '94', '2025', '15', '8638265', 'Blue', '876HB', '4', '34', 'yes', '2025-02-09 19:32:45', '2025-02-11 19:45:40', '2025-02-09 19:32:45', NULL, '2'),
(15, '1', '1', '2023', '15', '128000', 'Black', 'ZS049', '4', '44', 'yes', '2025-02-11 14:10:14', '2025-02-11 08:10:14', '2025-02-11 14:10:14', NULL, '1'),
(16, '6', '87', '2024', '18', '150000', 'Black', 'KJ 0983', '4', '25', 'yes', '2025-02-14 18:11:26', '2025-02-14 12:11:26', '2025-02-14 18:11:26', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tj_vehicule_rental`
--

CREATE TABLE `tj_vehicule_rental` (
  `id` int(11) NOT NULL,
  `nombre` varchar(21) NOT NULL,
  `statut` varchar(5) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `nb_place` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `id_type_vehicule_rental` varchar(255) NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tj_vehicule_service_book`
--

CREATE TABLE `tj_vehicule_service_book` (
  `id` int(11) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `km` varchar(100) CHARACTER SET utf8 NOT NULL,
  `photo_car_service_book` text CHARACTER SET utf8 NOT NULL,
  `photo_car_service_book_path` text CHARACTER SET utf8 NOT NULL,
  `file_name` text CHARACTER SET utf8 NOT NULL,
  `creer` datetime NOT NULL,
  `modifier` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'support@yumprides.com', NULL, '$2y$10$gKCo63msIBcavsXWOlQT9O7/m0BO5mlM2q4pNDvEpAfOFokUe0hx.', 'N83dtps3klaAaeXm1qOOjRImcWvGDYGWICcbHM7upbvqqjkSqRju9NcAU73l', '2022-02-26 18:22:29', '2024-12-09 22:53:31'),
(2, 'Super user', 'admin@demo.com', NULL, '$2y$10$4D/Oi3x7gxPwZ/zxCKtgCOlPNujUnUER0vkMjQ0moL7l3cAJwTIJa', 'SwyMwXqhlktlJXCs2oNFFFBrUlFM3QL5CXmvN7dPKI4syTYsp30tJHjmNCie', '2022-03-02 16:18:22', '2022-03-02 16:18:22'),
(3, 'Super user', 'admindummy@demo.com', NULL, '$2y$10$4D/Oi3x7gxPwZ/zxCKtgCOlPNujUnUER0vkMjQ0moL7l3cAJwTIJa', '1CxELWOAqgdssazLMwmCsPSftiAF4VL7Hqa5scS0DpWvBu3U46x2OYNQEdS1', '2022-03-02 16:18:22', '2022-03-02 16:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `users_access`
--

CREATE TABLE `users_access` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `accesstoken` varchar(1111) NOT NULL,
  `user_type` varchar(1111) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_access`
--

INSERT INTO `users_access` (`id`, `user_id`, `accesstoken`, `user_type`) VALUES
(17, '13', '0f50dbf8585b28c6754923d716037ae4', 'driver'),
(24, '19', 'ac8a34d4e5a08689b402bd0170e3e37d', 'driver'),
(45, '14', '10e6f7a769ae22f96d2a6b9417c4f895', 'customer'),
(20, '16', '4ca5e33951ba5658bb9dc4e3ee7c1941', 'driver'),
(21, '17', '2ebec51438413dfdfffc4fad41662553', 'driver'),
(22, '18', 'a04df95ced4bb7cfbb14d4e09f7e6865', 'driver'),
(28, '22', '9d8202ba0759978987b057c228c7ff01', 'driver'),
(25, '5', '80f938afafba6c85d8906f21a8ca84c0', 'customer'),
(26, '20', 'c7879a96590ad4d616a372556e1dbf69', 'driver'),
(27, '21', '4f131566bb210c8324dd9107d4bd6c2a', 'driver'),
(29, '23', '90662a5cb770d8494eb55264a37f3ebb', 'driver'),
(30, '6', 'c2d7ac374d93372bbc5067b46920b03c', 'customer'),
(44, '30', '970e2e953bc7bc5998fdf7ae2e627b24', 'driver'),
(32, '24', '7a410b0fe050a11bd69e7f29317c7913', 'driver'),
(33, '25', '4a5a4b330d32a7e46430c49df6257dbd', 'driver'),
(34, '26', 'c8a3bb5c07ffc792fdad8fed352b22b5', 'driver'),
(35, '8', 'e3ceba88e25372094525ec7f7fc69412', 'customer'),
(36, '27', '466be01bb32c995b3381acafd04f0cfb', 'driver'),
(37, '28', '56798cdf1ca0e8e5c27166324eb95998', 'driver'),
(43, '13', 'b59beced2b8e77120761365dbd95cb4e', 'customer'),
(41, '29', 'a4abc26dc29ff2147e5671a0d6c4974a', 'driver'),
(46, '31', '178b6a358370a585008cf82f6938cd7a', 'driver'),
(47, '32', '991ef9646beb27c207bb59c378cb764d', 'driver'),
(48, '33', '3ad0963db9740095b2eb79f7829a93af', 'driver'),
(49, '34', '6ed837ed6383eb7057aa8dac4212f917', 'driver'),
(50, '15', '9067207b65632fc4e5f17234c0583e9a', 'customer'),
(51, '35', 'cf9327f3f961c796706fd6e95c3655ba', 'driver'),
(52, '36', '71cfaa951d4e49ecc60ba6e5d1f1b51d', 'driver'),
(53, '37', 'c29805786076fb6a32a2dd1f1af6fcad', 'driver'),
(54, '38', 'a693c00b155e608dd5ba718f4164f256', 'driver'),
(55, '39', '6d9d86334b5a8a27ee80360e113faf52', 'driver'),
(56, '40', '7708de05be653bed1f8b72be0f1c82cc', 'driver'),
(57, '41', '0cf41f8861788610f14c37924326decc', 'driver'),
(58, '42', 'da9f68d772a088c82467896dad518c69', 'driver'),
(59, '43', '01b3deeaa5b8d7b8aa1954ab47408fb1', 'driver'),
(60, '44', 'daf5f3267a2800777a3b208c4526c546', 'driver'),
(61, '16', '62cef8eb93899a0759378b5a682300bc', 'customer'),
(62, '17', 'd509dd5f0075188f0a2a835c402342a1', 'customer'),
(63, '18', '5007bfc66377e70c94a07f08e473134b', 'customer'),
(64, '45', '01710b5c07bcf5b5b4882ee2871c0d7e', 'driver'),
(65, '46', '45925a9f8b0776a9c96fde3d043e1dee', 'driver'),
(66, '47', '5aef6915152b5f972ed434722965771f', 'driver'),
(67, '48', 'e105ab98b06c33c150c37c4aee12a31b', 'driver');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `id_conducteur` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `note` varchar(200) NOT NULL,
  `statut` varchar(200) DEFAULT NULL,
  `creer` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modifier` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` polygon DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_status` tinyint(1) DEFAULT NULL,
  `commission_type` int(11) DEFAULT NULL COMMENT '1 for percentage and 2 for fixed	',
  `commission_value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `status`, `latitude`, `longitude`, `area`, `created_at`, `updated_at`, `commission_status`, `commission_type`, `commission_value`) VALUES
(9, 'gujrat', 'yes', '32.610130928769', '74.039241506522', 0x000000000103000000010000000400000019caceee82825240a5ab30c5184e404003cace2ef08952404715f9e73e4c40400ccaceae338a52404aa534ef3e44404019caceee82825240a5ab30c5184e4040, '2025-01-28 13:26:11', '2025-01-28 13:26:11', 1, 2, 25),
(10, 'gujrat 5', 'yes', '32.616493110809', '74.011089040702', 0x00000000010300000001000000090000002fcaceaeb580524026910a3fe94e404014cace2e6f83524003ec42709d4e404022cace6e4a86524003ec42709d4e40400ccaceae1788524000017177484b404033cace6eed8852404f67c23ae045404038cace2ee5855240b98086c79d4440403ccaceee28825240f8cda20f3f46404033cace6e31815240eb7f060c3f4a40402fcaceaeb580524026910a3fe94e4040, '2025-01-28 13:27:06', '2025-01-28 13:27:06', 1, 2, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_documents`
--
ALTER TABLE `admin_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notification`
--
ALTER TABLE `admin_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatcher_user`
--
ALTER TABLE `dispatcher_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_document`
--
ALTER TABLE `driver_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_page_templates`
--
ALTER TABLE `landing_page_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `on_boardings`
--
ALTER TABLE `on_boardings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_category`
--
ALTER TABLE `parcel_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parcel_orders`
--
ALTER TABLE `parcel_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_cms`
--
ALTER TABLE `tj_cms`
  ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `tj_commission`
--
ALTER TABLE `tj_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_complaints`
--
ALTER TABLE `tj_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_conducteur`
--
ALTER TABLE `tj_conducteur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_conducteur_transaction`
--
ALTER TABLE `tj_conducteur_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_country`
--
ALTER TABLE `tj_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_currency`
--
ALTER TABLE `tj_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_discount`
--
ALTER TABLE `tj_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_favorite_ride`
--
ALTER TABLE `tj_favorite_ride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tj_favorite_ride_ibfk_1` (`id_user_app`);

--
-- Indexes for table `tj_location_vehicule`
--
ALTER TABLE `tj_location_vehicule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_message`
--
ALTER TABLE `tj_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_note`
--
ALTER TABLE `tj_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_notification`
--
ALTER TABLE `tj_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_payment_method`
--
ALTER TABLE `tj_payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_privacy_policy`
--
ALTER TABLE `tj_privacy_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_requete`
--
ALTER TABLE `tj_requete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_settings`
--
ALTER TABLE `tj_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_sos`
--
ALTER TABLE `tj_sos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_tax`
--
ALTER TABLE `tj_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_terms_and_conditions`
--
ALTER TABLE `tj_terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_transaction`
--
ALTER TABLE `tj_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_type_vehicule`
--
ALTER TABLE `tj_type_vehicule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_type_vehicule_rental`
--
ALTER TABLE `tj_type_vehicule_rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_user_app`
--
ALTER TABLE `tj_user_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_user_note`
--
ALTER TABLE `tj_user_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_vehicle_images`
--
ALTER TABLE `tj_vehicle_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_vehicule`
--
ALTER TABLE `tj_vehicule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_vehicule_rental`
--
ALTER TABLE `tj_vehicule_rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tj_vehicule_service_book`
--
ALTER TABLE `tj_vehicule_service_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_access`
--
ALTER TABLE `users_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_documents`
--
ALTER TABLE `admin_documents`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_notification`
--
ALTER TABLE `admin_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `car_model`
--
ALTER TABLE `car_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dispatcher_user`
--
ALTER TABLE `dispatcher_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver_document`
--
ALTER TABLE `driver_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landing_page_templates`
--
ALTER TABLE `landing_page_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `on_boardings`
--
ALTER TABLE `on_boardings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parcel_category`
--
ALTER TABLE `parcel_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parcel_orders`
--
ALTER TABLE `parcel_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tj_cms`
--
ALTER TABLE `tj_cms`
  MODIFY `cms_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_commission`
--
ALTER TABLE `tj_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tj_complaints`
--
ALTER TABLE `tj_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tj_conducteur`
--
ALTER TABLE `tj_conducteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tj_conducteur_transaction`
--
ALTER TABLE `tj_conducteur_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_country`
--
ALTER TABLE `tj_country`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `tj_currency`
--
ALTER TABLE `tj_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tj_discount`
--
ALTER TABLE `tj_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tj_favorite_ride`
--
ALTER TABLE `tj_favorite_ride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_location_vehicule`
--
ALTER TABLE `tj_location_vehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_message`
--
ALTER TABLE `tj_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_note`
--
ALTER TABLE `tj_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_notification`
--
ALTER TABLE `tj_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tj_payment_method`
--
ALTER TABLE `tj_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tj_privacy_policy`
--
ALTER TABLE `tj_privacy_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tj_requete`
--
ALTER TABLE `tj_requete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tj_settings`
--
ALTER TABLE `tj_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tj_sos`
--
ALTER TABLE `tj_sos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_tax`
--
ALTER TABLE `tj_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tj_terms_and_conditions`
--
ALTER TABLE `tj_terms_and_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tj_transaction`
--
ALTER TABLE `tj_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_type_vehicule`
--
ALTER TABLE `tj_type_vehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tj_type_vehicule_rental`
--
ALTER TABLE `tj_type_vehicule_rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_user_app`
--
ALTER TABLE `tj_user_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tj_user_note`
--
ALTER TABLE `tj_user_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tj_vehicle_images`
--
ALTER TABLE `tj_vehicle_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_vehicule`
--
ALTER TABLE `tj_vehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tj_vehicule_rental`
--
ALTER TABLE `tj_vehicule_rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tj_vehicule_service_book`
--
ALTER TABLE `tj_vehicule_service_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_access`
--
ALTER TABLE `users_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tj_favorite_ride`
--
ALTER TABLE `tj_favorite_ride`
  ADD CONSTRAINT `tj_favorite_ride_ibfk_1` FOREIGN KEY (`id_user_app`) REFERENCES `tj_user_app` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
