-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2026 at 02:21 PM
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
-- Database: `ocrsdjango1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add orders', 8, 'add_orders'),
(30, 'Can change orders', 8, 'change_orders'),
(31, 'Can delete orders', 8, 'delete_orders'),
(32, 'Can view orders', 8, 'view_orders'),
(33, 'Can add area', 9, 'add_area'),
(34, 'Can change area', 9, 'change_area'),
(35, 'Can delete area', 9, 'delete_area'),
(36, 'Can view area', 9, 'view_area'),
(37, 'Can add car dealer', 10, 'add_cardealer'),
(38, 'Can change car dealer', 10, 'change_cardealer'),
(39, 'Can delete car dealer', 10, 'delete_cardealer'),
(40, 'Can view car dealer', 10, 'view_cardealer'),
(41, 'Can add vehicles', 11, 'add_vehicles'),
(42, 'Can change vehicles', 11, 'change_vehicles'),
(43, 'Can delete vehicles', 11, 'delete_vehicles'),
(44, 'Can view vehicles', 11, 'view_vehicles');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$TN4wSkj5uVEdGiG0uPnUCp$pNFW/i0U4IXJW1O1a+8kBUfZAvQEKQE1aU+ib1/ScbU=', '2025-10-04 09:49:32.832431', 0, 'sobchanpro', 'Christian Jacob', 'Archivido', 'archividochristianjacob09@gmail.com', 0, 1, '2025-10-04 06:43:10.602632'),
(2, 'pbkdf2_sha256$720000$DfPWloPKPa2lH2lHsWR5zZ$RN3SJ/cyJ8ADHWd8KG3MXndpPpHgtHkraPu2M0/R0f4=', NULL, 0, 'bosschan', 'CJ', 'Jaldo', 'hacker123', 0, 1, '2025-10-04 08:24:44.015653'),
(3, 'pbkdf2_sha256$720000$iD9U8CR52GWo64XSZE6iNN$6ZbP1aO3cvTmXm7h9cA25MpJFOZH4E6Du0mv7BAya3o=', '2025-10-04 08:44:28.948981', 0, 'nicolelabayo', 'Nichole', 'Labayo', 'nicolelabayo@gmail.com', 0, 1, '2025-10-04 08:35:18.611909'),
(6, 'pbkdf2_sha256$320000$Ug9Slnro6pHBe94HPt8PJR$T5rGlhJ3uX+nE1aCQlF3XPj1IEdLs6wNpMfKGD8g+iQ=', '2026-01-31 15:31:32.877373', 0, 'prochan', 'CJ ', 'Castillo', 'christine@gmail.com', 0, 1, '2025-10-04 10:58:13.410524'),
(7, 'pbkdf2_sha256$320000$B6suAZoA3TDN13mKyKdMLs$qj+EyBySpQ9QpTkJv1bgOMbK4NsXU76S9BfESRbuBEk=', '2025-10-08 08:00:31.679169', 0, 'jaijai', 'Honey', 'Tan', '837@haseg.onmicrosoft.com', 0, 1, '2025-10-04 12:44:26.265674'),
(8, 'pbkdf2_sha256$320000$QFATi1XMwOXXeerPVzjCWQ$R413H0+3vgcOpgTapyel6iOxYWzTkKBnU/gs528O4N4=', '2026-01-31 15:44:51.201702', 0, 'administrator', 'Stephanie', 'Dollete', '837@haseg.onmicrosoft.com', 0, 1, '2025-10-04 13:47:48.514985'),
(9, 'pbkdf2_sha256$320000$NnNFRAU8z9IYzet444MCGs$6Ts+OYTCbf3UkDgnaYWQIyhQpWa78HupglC+8wzHaiE=', '2025-10-08 15:11:33.268500', 0, 'Propro@12', 'Christian', 'Archivido', 'christianarchivido88@gmail.com', 0, 1, '2025-10-08 15:11:24.522520'),
(10, 'pbkdf2_sha256$320000$rVGtQ6oxMYsxbL284J4Aad$zznQ12r11W/LvwJIM1Cb2GdU5ws/UcW5CL6iVRquLuI=', NULL, 0, 'Aibielle@182', 'Aibielle', 'Archivido', 'Aiebiellearchivido@gmail.com', 0, 1, '2026-01-31 10:32:01.037616'),
(12, 'pbkdf2_sha256$320000$IZmbiERBj4NWxsHjhuHMEG$XySnPZIhxJ80seWtDeRviPcVYtan76dRa/ieuX7IIXc=', NULL, 0, 'Jaifranco@182', 'Jai', 'Franco', 'test1234@gmail.com', 0, 1, '2026-01-31 10:39:41.583458');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car_dealer_portal_area`
--

CREATE TABLE `car_dealer_portal_area` (
  `id` int(11) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_dealer_portal_area`
--

INSERT INTO `car_dealer_portal_area` (`id`, `pincode`, `city`) VALUES
(1, '3000', 'bulacan'),
(2, '4517', 'bicol');

-- --------------------------------------------------------

--
-- Table structure for table `car_dealer_portal_cardealer`
--

CREATE TABLE `car_dealer_portal_cardealer` (
  `id` int(11) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `area_id` int(11) NOT NULL,
  `car_dealer_id` int(11) NOT NULL,
  `wallet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_dealer_portal_cardealer`
--

INSERT INTO `car_dealer_portal_cardealer` (`id`, `mobile`, `area_id`, `car_dealer_id`, `wallet`) VALUES
(1, '09771952684', 1, 8, 307820);

-- --------------------------------------------------------

--
-- Table structure for table `car_dealer_portal_vehicles`
--

CREATE TABLE `car_dealer_portal_vehicles` (
  `id` int(11) NOT NULL,
  `car_name` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `capacity` varchar(2) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `description` varchar(100) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `dealer_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price_per_day` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car_dealer_portal_vehicles`
--

INSERT INTO `car_dealer_portal_vehicles` (`id`, `car_name`, `color`, `capacity`, `is_available`, `description`, `area_id`, `dealer_id`, `image`, `price_per_day`) VALUES
(22, 'Montero Sports', 'White', '5', 1, 'Family Car', 1, 1, 'vehicles/montero_LZu7tAs.jpg', 2500.00),
(23, 'Mercedes Benz', 'White', '4', 1, 'Professional Car', 1, 1, 'vehicles/mercedes_6eBAror.jpg', 5000.00),
(24, 'BYD', 'Black', '4', 1, 'Professional Car', 1, 1, 'vehicles/byd.jpg', 5000.00),
(25, 'Van', 'White', '10', 1, 'Travel Van', 1, 1, 'vehicles/van.jpg', 3500.00),
(26, 'Hyundai Van', 'Black', '10', 1, 'Business', 1, 1, 'vehicles/hyundai.jpg', 2000.00),
(27, 'Toyota Fortuner', 'White', '4', 1, 'Family Car', 1, 1, 'vehicles/toyota_fortuner.avif', 2500.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer_portal_customer`
--

CREATE TABLE `customer_portal_customer` (
  `id` int(11) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `area_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_portal_customer`
--

INSERT INTO `customer_portal_customer` (`id`, `mobile`, `area_id`, `user_id`) VALUES
(1, '09771952684', 1, 1),
(2, 'hacker123', 1, 2),
(3, '09771952684', 2, 3),
(4, '09771952684', 1, 6),
(5, '09771952684', 1, 7),
(6, '+639771952684', 1, 9),
(7, '09771952684', 1, 10),
(8, '09771952684', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer_portal_orders`
--

CREATE TABLE `customer_portal_orders` (
  `id` int(11) NOT NULL,
  `rent` varchar(8) NOT NULL,
  `days` varchar(3) NOT NULL,
  `car_dealer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `customer_name` varchar(255) DEFAULT 'Not Provided',
  `customer_address` text DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `payment_proof` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT 'GCash',
  `is_pending` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_portal_orders`
--

INSERT INTO `customer_portal_orders` (`id`, `rent`, `days`, `car_dealer_id`, `user_id`, `vehicle_id`, `is_complete`, `customer_name`, `customer_address`, `rental_date`, `return_date`, `payment_proof`, `description`, `payment_method`, `is_pending`) VALUES
(62, '3000.0', '6', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-06', 'payment_proofs/Simple_Gantt_UTeJBrb.png', 'CANCELLED_ORDER', 'maya', 0),
(63, '3000.0', '6', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-06', 'payment_proofs/Simple_Gantt_GuzVzGk.png', 'DESTINATION: Bulacan to Pangasinan | FEEDBACK: salamuch', 'gcash', 1),
(64, '3000.0', '6', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-06', 'payment_proofs/Simple_Gantt_xbORHuG.png', 'DESTINATION: Bulacan to Tarlac | FEEDBACK: thank u', 'gcash', 1),
(65, '10000.0', '20', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-02-07', '2026-02-27', 'payment_proofs/Simple_Gantt_5cfzbfb.png', 'DESTINATION: Bulacan to Pampanga | FEEDBACK: ', 'gcash', 1),
(66, '3000.0', '6', 1, 6, 22, 1, 'CJ Claveria', 'Tabang Guiguinto Bulacan', '2026-02-01', '2026-02-07', 'payment_proofs/Simple_Gantt_qB24zTt.png', 'CANCELLED_ORDER', 'maya', 0),
(67, '6500.0', '13', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-13', 'payment_proofs/Simple_Gantt_jW29vxy.png', 'CANCELLED_ORDER', 'gcash', 0),
(68, '6500.0', '13', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-13', 'payment_proofs/Simple_Gantt_bRZULc4.png', 'DESTINATION: Bulacan to Daet | FEEDBACK: salamuch po', 'gcash', 1),
(69, '6000.0', '12', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-12', 'payment_proofs/Simple_Gantt_e5oJMcq.png', 'CANCELLED_ORDER', 'gcash', 0),
(70, '5000.0', '10', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-10', 'payment_proofs/Simple_Gantt_DfyY4OI.png', 'CANCELLED_ORDER', 'gcash', 0),
(71, '3500.0', '7', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-07', 'payment_proofs/Simple_Gantt_Mm0VyFp.png', 'CANCELLED_ORDER', 'gcash', 0),
(72, '6000.0', '12', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-12', 'payment_proofs/Simple_Gantt_ZpT93DP.png', 'CANCELLED_ORDER', 'gcash', 0),
(73, '1500.0', '3', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-03', 'payment_proofs/Simple_Gantt_eEjZOHa.png', 'CANCELLED_ORDER', 'gcash', 0),
(74, '6500.0', '13', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-13', 'payment_proofs/Simple_Gantt_f1T8qQD.png', 'CANCELLED_ORDER', 'gcash', 0),
(75, '6000.0', '12', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-12', 'payment_proofs/Simple_Gantt_LYHi8qN.png', 'CANCELLED_ORDER', 'gcash', 0),
(76, '6000.0', '12', 1, 6, 22, 1, 'Christian Jacob Archivido', 'Tabang Guiguinto Bulacan', '2026-01-31', '2026-02-12', 'payment_proofs/Simple_Gantt_8cuHW2p.png', 'DESTINATION: Bulacan to MDHAOD | FEEDBACK: SALAMAT', 'gcash', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_portal_rentaldetails`
--

CREATE TABLE `customer_portal_rentaldetails` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `rental_date` date NOT NULL,
  `return_date` date NOT NULL,
  `total_days` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_proof` varchar(100) DEFAULT NULL,
  `rent` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `vehicle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'car_dealer_portal', 'area'),
(10, 'car_dealer_portal', 'cardealer'),
(11, 'car_dealer_portal', 'vehicles'),
(5, 'contenttypes', 'contenttype'),
(7, 'customer_portal', 'customer'),
(8, 'customer_portal', 'orders'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-10-04 06:38:34.969825'),
(2, 'auth', '0001_initial', '2025-10-04 06:38:35.420682'),
(3, 'admin', '0001_initial', '2025-10-04 06:38:35.496427'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-10-04 06:38:35.503532'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-10-04 06:38:35.510726'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-10-04 06:38:35.555859'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-10-04 06:38:35.848465'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-10-04 06:38:35.859946'),
(9, 'auth', '0004_alter_user_username_opts', '2025-10-04 06:38:35.867514'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-10-04 06:38:35.912014'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-10-04 06:38:35.915360'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-10-04 06:38:35.922734'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-10-04 06:38:35.934434'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-10-04 06:38:35.947911'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-10-04 06:38:35.959425'),
(16, 'auth', '0011_update_proxy_permissions', '2025-10-04 06:38:35.966910'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-10-04 06:38:35.978492'),
(18, 'car_dealer_portal', '0001_initial', '2025-10-04 06:38:36.164577'),
(19, 'car_dealer_portal', '0002_cardealer_wallet', '2025-10-04 06:38:36.179524'),
(20, 'customer_portal', '0001_initial', '2025-10-04 06:38:36.440526'),
(21, 'customer_portal', '0002_auto_20180405_0707', '2025-10-04 06:38:36.809021'),
(22, 'customer_portal', '0003_auto_20180405_0909', '2025-10-04 06:38:37.367109'),
(23, 'customer_portal', '0004_orders_is_complete', '2025-10-04 06:38:37.380000'),
(24, 'customer_portal', '0005_auto_20180406_0512', '2025-10-04 06:38:37.534119'),
(25, 'customer_portal', '0006_auto_20180406_0520', '2025-10-04 06:38:37.677275'),
(26, 'sessions', '0001_initial', '2025-10-04 06:38:37.698728'),
(27, 'car_dealer_portal', '0003_vehicles_image_vehicles_price_per_day', '2025-10-08 08:19:32.099458');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04fw5mne6cohaoxoo4sn4qfmmq2ph9ex', '.eJxVjDsOwjAQBe_iGlmRd_2jpOcM1vqzOIAcKU6qiLuTSCmgfTNvNhFoXWpYe5nDmMVVOHH53SKlV2kHyE9qj0mmqS3zGOWhyJN2eZ9yed9O9y9Qqdf9bdkYhYl4UKB0yQislcYC7JwmDdkbjGh4LxqjfYxcyCoEb9G7AZz4fAHb3Tdk:1v6WOO:Rz8_H9pZzkm4cNep1d4WkOP1Ut4OmDozLRKou2n-5F8', '2025-10-22 15:47:52.479032'),
('216mv6r769wit02756thyd1v56kqp6x4', '.eJxVjEEOwiAQRe_C2hBnmEJx6b5nIMBMpWpoUtqV8e7apAvd_vfef6kQt7WErckSJlYXZdXpd0sxP6TugO-x3mad57ouU9K7og_a9DCzPK-H-3dQYivfOmcQMGcD4nDsxgyWjEnZsuPk2bKQ9CyA0YNgog4FEa0j8gI9GlLvD_EBN50:1vm1DJ:72ndAEfMdECqcvyB5xNnsqjXaX5DJt-T-1BrjsK21O0', '2026-02-14 02:59:57.003315'),
('21kl4yed53dl7eh30xc6q9yd73j63vgc', '.eJxVjDsOwjAQBe_iGlmRd_2jpOcM1vqzOIAcKU6qiLuTSCmgfTNvNhFoXWpYe5nDmMVVOHH53SKlV2kHyE9qj0mmqS3zGOWhyJN2eZ9yed9O9y9Qqdf9bdkYhYl4UKB0yQislcYC7JwmDdkbjGh4LxqjfYxcyCoEb9G7AZz4fAHb3Tdk:1vlruU:W50dC3oPF9YKRp2l-aVE27OYm-2bPy9LUTgQTQKzJe0', '2026-02-13 17:03:54.223465'),
('4pmx02dhk56uuj47f4ty0faoezpfu09r', '.eJxVjDsOwjAQBe_iGlmRd_2jpOcM1vqzOIAcKU6qiLuTSCmgfTNvNhFoXWpYe5nDmMVVOHH53SKlV2kHyE9qj0mmqS3zGOWhyJN2eZ9yed9O9y9Qqdf9bdkYhYl4UKB0yQislcYC7JwmDdkbjGh4LxqjfYxcyCoEb9G7AZz4fAHb3Tdk:1v6WhO:N85tRFSw4H8BIgidjHHbDig-JNu7zpHJBmsW3KdNzA8', '2025-10-22 16:07:30.158857'),
('bfdy352ftc2105h73ratvrz2816i0uwa', '.eJxVjDsOwjAQBe_iGlmRd_2jpOcM1vqzOIAcKU6qiLuTSCmgfTNvNhFoXWpYe5nDmMVVOHH53SKlV2kHyE9qj0mmqS3zGOWhyJN2eZ9yed9O9y9Qqdf9bdkYhYl4UKB0yQislcYC7JwmDdkbjGh4LxqjfYxcyCoEb9G7AZz4fAHb3Tdk:1vlqyO:MvI5PWapKAcuJwXs6apCvKCl-qHheDUOP0PrIN7MhIw', '2026-02-13 16:03:52.929047'),
('e2dfy1oigagttmp6gik9g60h4dzaya34', '.eJxVj71uwzAMhF8l0BwY1k_sOGMLdMvUoUNRGBTFVGoVyZDkAkGQd68EeGhH3nc8Hu9shrXYec2UZmfYiQ1s_1fTgN8UGjBfED5jhzGU5HTXLN1Gc3eOhvzT5v0XYCHbuo3IictechrF5XBBPigpNQ5mNHoygyFFR0NcwMRJaHUQJIQYRqUm4kchVQ39IevQU569y4Wd3u8swJVq9rlWohR3r0tMJVcnRh9TBW_WFapze0z0e7a4gLVoJbLv-2Z05VYnvXpACE2ABTaxnTSUMbmluBiq8gJX52-7Z0js8fH4BWeIZeg:1vls5D:np6Fl-wWX7kkRnMnsjLVw4u8NO1IJIkw8A9YhqDkxVE', '2026-02-13 17:14:59.042584'),
('vmreepw0on74zpfewykteb3rbr8sgg3e', '.eJxVjDsOwjAQBe_iGlmRd_2jpOcM1vqzOIAcKU6qiLuTSCmgfTNvNhFoXWpYe5nDmMVVOHH53SKlV2kHyE9qj0mmqS3zGOWhyJN2eZ9yed9O9y9Qqdf9bdkYhYl4UKB0yQislcYC7JwmDdkbjGh4LxqjfYxcyCoEb9G7AZz4fAHb3Tdk:1vljeK:J-ZKCB3D-UEaNKOWra1KdT2Z51U57UCeyqnUEZhT-Co', '2026-02-13 08:14:40.758396'),
('xd8xabd8790qvsm31pfiwoeux0b4izom', '.eJxVjEEOwiAQRe_C2hBnmEJx6b5nIMBMpWpoUtqV8e7apAvd_vfef6kQt7WErckSJlYXZdXpd0sxP6TugO-x3mad57ouU9K7og_a9DCzPK-H-3dQYivfOmcQMGcD4nDsxgyWjEnZsuPk2bKQ9CyA0YNgog4FEa0j8gI9GlLvD_EBN50:1vm1RK:eO3PLSxiQ1sBIQ1zwZoYhZwldKKTqBoMpj5EJG7r24Y', '2026-02-14 03:14:26.061165'),
('zf5p9zr4ax13qgiaedijbzcuqvdnvkvu', '.eJxVj71uwzAMhF8l0BwY1k_sOGMLdMvUoUNRGBTFVGoVyZDkAkGQd68EeGhH3nc8Hu9shrXYec2UZmfYiQ1s_1fTgN8UGjBfED5jhzGU5HTXLN1Gc3eOhvzT5v0XYCHbuo3IictechrF5XBBPigpNQ5mNHoygyFFR0NcwMRJaHUQJIQYRqUm4kchVQ39IevQU569y4Wd3u8swJVq9rlWohR3r0tMJVcnRh9TBW_WFapze0z0e7a4gLVoJbLv-2Z05VYnvXpACE2ABTaxnTSUMbmluBiq8gJX52-7Z0js8fH4BWeIZeg:1vlrzt:c83lxIfNXMRMxxPnrN6otl34UmYsy2OpQGWNvjb8gVo', '2026-02-13 17:09:29.369185');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `car_dealer_portal_area`
--
ALTER TABLE `car_dealer_portal_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pincode` (`pincode`);

--
-- Indexes for table `car_dealer_portal_cardealer`
--
ALTER TABLE `car_dealer_portal_cardealer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_id` (`area_id`),
  ADD UNIQUE KEY `car_dealer_id` (`car_dealer_id`);

--
-- Indexes for table `car_dealer_portal_vehicles`
--
ALTER TABLE `car_dealer_portal_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_dealer_portal_ve_area_id_aa5a0daa_fk_car_deale` (`area_id`),
  ADD KEY `car_dealer_portal_ve_dealer_id_f1f31e1c_fk_car_deale` (`dealer_id`);

--
-- Indexes for table `customer_portal_customer`
--
ALTER TABLE `customer_portal_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `customer_portal_customer_area_id_9d75d4c8` (`area_id`);

--
-- Indexes for table `customer_portal_orders`
--
ALTER TABLE `customer_portal_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_portal_orders_car_dealer_id_a4556a42` (`car_dealer_id`),
  ADD KEY `customer_portal_orders_user_id_61ee261b` (`user_id`),
  ADD KEY `customer_portal_orders_vehicle_id_3da80825` (`vehicle_id`);

--
-- Indexes for table `customer_portal_rentaldetails`
--
ALTER TABLE `customer_portal_rentaldetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_portal_rentaldetails_vehicle_id_fk` (`vehicle_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car_dealer_portal_area`
--
ALTER TABLE `car_dealer_portal_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `car_dealer_portal_cardealer`
--
ALTER TABLE `car_dealer_portal_cardealer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `car_dealer_portal_vehicles`
--
ALTER TABLE `car_dealer_portal_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_portal_customer`
--
ALTER TABLE `customer_portal_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_portal_orders`
--
ALTER TABLE `customer_portal_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `customer_portal_rentaldetails`
--
ALTER TABLE `customer_portal_rentaldetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `car_dealer_portal_cardealer`
--
ALTER TABLE `car_dealer_portal_cardealer`
  ADD CONSTRAINT `car_dealer_portal_ca_area_id_a3b130bc_fk_car_deale` FOREIGN KEY (`area_id`) REFERENCES `car_dealer_portal_area` (`id`),
  ADD CONSTRAINT `car_dealer_portal_ca_car_dealer_id_a3409dd0_fk_auth_user` FOREIGN KEY (`car_dealer_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `car_dealer_portal_vehicles`
--
ALTER TABLE `car_dealer_portal_vehicles`
  ADD CONSTRAINT `car_dealer_portal_ve_area_id_aa5a0daa_fk_car_deale` FOREIGN KEY (`area_id`) REFERENCES `car_dealer_portal_area` (`id`),
  ADD CONSTRAINT `car_dealer_portal_ve_dealer_id_f1f31e1c_fk_car_deale` FOREIGN KEY (`dealer_id`) REFERENCES `car_dealer_portal_cardealer` (`id`);

--
-- Constraints for table `customer_portal_customer`
--
ALTER TABLE `customer_portal_customer`
  ADD CONSTRAINT `customer_portal_cust_area_id_9d75d4c8_fk_car_deale` FOREIGN KEY (`area_id`) REFERENCES `car_dealer_portal_area` (`id`),
  ADD CONSTRAINT `customer_portal_customer_user_id_eecc325f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `customer_portal_orders`
--
ALTER TABLE `customer_portal_orders`
  ADD CONSTRAINT `customer_portal_orde_car_dealer_id_a4556a42_fk_car_deale` FOREIGN KEY (`car_dealer_id`) REFERENCES `car_dealer_portal_cardealer` (`id`),
  ADD CONSTRAINT `customer_portal_orde_vehicle_id_3da80825_fk_car_deale` FOREIGN KEY (`vehicle_id`) REFERENCES `car_dealer_portal_vehicles` (`id`),
  ADD CONSTRAINT `customer_portal_orders_user_id_61ee261b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
