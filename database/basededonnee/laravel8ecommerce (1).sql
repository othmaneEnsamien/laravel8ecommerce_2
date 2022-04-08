-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 16 Mars 2022 à 11:42
-- Version du serveur :  10.4.22-MariaDB
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `laravel8ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `attribute_values`
--

CREATE TABLE IF NOT EXISTS `attribute_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_attribute_id` bigint(20) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  KEY `attribute_values_product_id_foreign` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=134 ;

--
-- Contenu de la table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(31, 1, 'rouge', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(32, 1, ' noir ', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(33, 1, ' bleue', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(34, 2, 'S', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(35, 2, 'M', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(36, 2, 'L', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(37, 2, 'XL', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(38, 2, 'XXL', 82, '2022-03-02 12:50:25', '2022-03-02 12:50:25'),
(39, 2, 'S', 79, '2022-03-02 12:51:16', '2022-03-02 12:51:16'),
(40, 2, 'M', 79, '2022-03-02 12:51:16', '2022-03-02 12:51:16'),
(41, 2, 'L', 79, '2022-03-02 12:51:16', '2022-03-02 12:51:16'),
(42, 2, 'XL', 79, '2022-03-02 12:51:16', '2022-03-02 12:51:16'),
(43, 2, 'XXL', 79, '2022-03-02 12:51:16', '2022-03-02 12:51:16'),
(44, 2, '31', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(45, 2, '32', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(46, 2, '33', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(47, 2, '34', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(48, 2, '35', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(49, 2, '36', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(50, 2, '37', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(51, 2, '38', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(52, 2, '39', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(53, 2, '40', 78, '2022-03-02 12:52:21', '2022-03-02 12:52:21'),
(54, 2, 's', 77, '2022-03-02 12:53:25', '2022-03-02 12:53:25'),
(55, 2, 'M', 77, '2022-03-02 12:53:25', '2022-03-02 12:53:25'),
(56, 2, 'L', 77, '2022-03-02 12:53:25', '2022-03-02 12:53:25'),
(57, 2, 'XL', 77, '2022-03-02 12:53:25', '2022-03-02 12:53:25'),
(58, 2, 'XXL', 77, '2022-03-02 12:53:25', '2022-03-02 12:53:25'),
(59, 2, 's', 76, '2022-03-02 12:54:37', '2022-03-02 12:54:37'),
(60, 2, 'M', 76, '2022-03-02 12:54:37', '2022-03-02 12:54:37'),
(61, 2, 'L', 76, '2022-03-02 12:54:37', '2022-03-02 12:54:37'),
(62, 2, 'XL', 76, '2022-03-02 12:54:37', '2022-03-02 12:54:37'),
(63, 2, 'XXL', 76, '2022-03-02 12:54:37', '2022-03-02 12:54:37'),
(64, 2, 's', 75, '2022-03-02 12:55:34', '2022-03-02 12:55:34'),
(65, 2, 'M', 75, '2022-03-02 12:55:34', '2022-03-02 12:55:34'),
(66, 2, 'L', 75, '2022-03-02 12:55:34', '2022-03-02 12:55:34'),
(67, 2, 'XL', 75, '2022-03-02 12:55:34', '2022-03-02 12:55:34'),
(68, 2, 'XXL', 75, '2022-03-02 12:55:34', '2022-03-02 12:55:34'),
(69, 2, 'S', 73, '2022-03-02 12:56:06', '2022-03-02 12:56:06'),
(70, 2, 'M', 73, '2022-03-02 12:56:06', '2022-03-02 12:56:06'),
(71, 2, 'L', 73, '2022-03-02 12:56:06', '2022-03-02 12:56:06'),
(72, 2, 'XL', 73, '2022-03-02 12:56:06', '2022-03-02 12:56:06'),
(73, 2, 'XXL', 73, '2022-03-02 12:56:06', '2022-03-02 12:56:06'),
(74, 2, 's', 71, '2022-03-02 12:56:33', '2022-03-02 12:56:33'),
(75, 2, 'M', 71, '2022-03-02 12:56:33', '2022-03-02 12:56:33'),
(76, 2, 'L', 71, '2022-03-02 12:56:33', '2022-03-02 12:56:33'),
(77, 2, 'XL', 71, '2022-03-02 12:56:33', '2022-03-02 12:56:33'),
(78, 2, 'XXL', 71, '2022-03-02 12:56:33', '2022-03-02 12:56:33'),
(79, 2, 's', 70, '2022-03-02 12:57:00', '2022-03-02 12:57:00'),
(80, 2, 'M', 70, '2022-03-02 12:57:00', '2022-03-02 12:57:00'),
(81, 2, 'L', 70, '2022-03-02 12:57:00', '2022-03-02 12:57:00'),
(82, 2, 'XL', 70, '2022-03-02 12:57:00', '2022-03-02 12:57:00'),
(83, 2, 'XXL', 70, '2022-03-02 12:57:00', '2022-03-02 12:57:00'),
(84, 2, 's', 69, '2022-03-02 12:57:37', '2022-03-02 12:57:37'),
(85, 2, 'M', 69, '2022-03-02 12:57:37', '2022-03-02 12:57:37'),
(86, 2, 'L', 69, '2022-03-02 12:57:37', '2022-03-02 12:57:37'),
(87, 2, 'XL', 69, '2022-03-02 12:57:37', '2022-03-02 12:57:37'),
(88, 2, 'XXL', 69, '2022-03-02 12:57:37', '2022-03-02 12:57:37'),
(89, 2, 's', 67, '2022-03-02 12:58:24', '2022-03-02 12:58:24'),
(90, 2, 'M', 67, '2022-03-02 12:58:24', '2022-03-02 12:58:24'),
(91, 2, 'L', 67, '2022-03-02 12:58:24', '2022-03-02 12:58:24'),
(92, 2, 'XL', 67, '2022-03-02 12:58:24', '2022-03-02 12:58:24'),
(93, 2, 'XXL', 67, '2022-03-02 12:58:24', '2022-03-02 12:58:24'),
(94, 2, 's', 66, '2022-03-02 12:58:55', '2022-03-02 12:58:55'),
(95, 2, 'M', 66, '2022-03-02 12:58:55', '2022-03-02 12:58:55'),
(96, 2, 'L', 66, '2022-03-02 12:58:55', '2022-03-02 12:58:55'),
(97, 2, 'XL', 66, '2022-03-02 12:58:55', '2022-03-02 12:58:55'),
(98, 2, 'XXL', 66, '2022-03-02 12:58:55', '2022-03-02 12:58:55'),
(99, 1, 'noir', 83, '2022-03-11 20:58:36', '2022-03-11 20:58:36'),
(100, 1, 'rouge', 83, '2022-03-11 20:58:36', '2022-03-11 20:58:36'),
(101, 1, 'grix', 83, '2022-03-11 20:58:36', '2022-03-11 20:58:36'),
(102, 1, 'bleu', 83, '2022-03-11 20:58:36', '2022-03-11 20:58:36'),
(103, 1, 'blanche', 83, '2022-03-11 20:58:36', '2022-03-11 20:58:36'),
(104, 1, 'black', 94, '2022-03-11 21:41:48', '2022-03-11 21:41:48'),
(105, 1, 'white', 94, '2022-03-11 21:41:48', '2022-03-11 21:41:48'),
(112, 1, 'white', 98, '2022-03-11 21:48:52', '2022-03-11 21:48:52'),
(113, 1, 'black', 98, '2022-03-11 21:48:52', '2022-03-11 21:48:52'),
(114, 1, 'red', 98, '2022-03-11 21:48:52', '2022-03-11 21:48:52'),
(120, 1, 'black', 88, '2022-03-12 11:10:41', '2022-03-12 11:10:41'),
(121, 1, 'orange', 65, '2022-03-12 11:12:22', '2022-03-12 11:12:22'),
(122, 1, 'mauve', 65, '2022-03-12 11:12:22', '2022-03-12 11:12:22'),
(123, 1, 'grix', 65, '2022-03-12 11:12:22', '2022-03-12 11:12:22'),
(132, 1, 'white', 100, '2022-03-14 20:10:24', '2022-03-14 20:10:24'),
(133, 1, 'black', 100, '2022-03-14 20:10:24', '2022-03-14 20:10:24');

-- --------------------------------------------------------

--
-- Structure de la table `categoryys`
--

CREATE TABLE IF NOT EXISTS `categoryys` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoryys_name_unique` (`name`),
  UNIQUE KEY `categoryys_slug_unique` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `categoryys`
--

INSERT INTO `categoryys` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'vetements', 'vetements', '2022-02-17 10:03:24', '2022-03-02 12:38:27'),
(2, 'lunettes', 'lunettes', '2022-02-17 10:03:24', '2022-03-02 12:43:51'),
(3, 'Beauty', 'beauty', '2022-02-17 10:03:24', '2022-03-02 12:44:15'),
(4, 'electronics', 'electronics', '2022-02-17 10:03:24', '2022-03-02 12:44:48'),
(11, 'parfum prince', 'parfum-prince', '2022-02-25 17:24:28', '2022-02-25 17:24:28');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'oth El Khaddar', 'hamzaaAA@gmail.com', '0612993540', 'hjjhhjj', '2022-02-24 12:14:01', '2022-02-24 12:14:01'),
(2, 'oth El Khaddar', 'hamzaaAA@gmail.com', '0612993540', 'hjjhhjj', '2022-02-24 12:14:03', '2022-02-24 12:14:03');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(7, 'ee2001', 'percent', '5.00', '50.00', '2022-02-21 22:51:10', '2022-03-14 20:52:56', '2022-04-22'),
(8, 'othmane211', 'percent', '15.00', '1000.00', '2022-02-21 23:41:31', '2022-02-23 14:24:34', '2022-02-26');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `home_categories`
--

CREATE TABLE IF NOT EXISTS `home_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `select_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `home_categories`
--

INSERT INTO `home_categories` (`id`, `select_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,7,8,9,10', 8, NULL, '2022-02-20 22:31:27');

-- --------------------------------------------------------

--
-- Structure de la table `home_sliders`
--

CREATE TABLE IF NOT EXISTS `home_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Number One of casablance', 'style jdid', '29', 'http://127.0.0.1:8000/shop', '1645988921.jpg', 0, '2022-02-27 18:08:41', '2022-03-11 20:42:00'),
(4, 'lunette', 'Lunette', '280', 'http://127.0.0.1:8000/shop', '1646000778.jpg', 0, '2022-02-27 21:26:18', '2022-03-11 21:03:35'),
(5, 'ELECTRONICS', 'electronics', '280', 'http://127.0.0.1:8000/shop', '1646000820.jpg', 1, '2022-02-27 21:27:00', '2022-02-27 21:27:00'),
(6, 'Women', 'New style Women', '20', 'http://127.0.0.1:8000/shop', '1647036169.jpg', 1, '2022-03-11 21:02:49', '2022-03-11 21:07:51'),
(7, 'Women', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '21', 'http://127.0.0.1:8000/shop', '1647036338.jpg', 1, '2022-03-11 21:05:38', '2022-03-11 21:08:04');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=39 ;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_16_210034_create_sessions_table', 1),
(7, '2022_02_16_235413_create_categories_table', 2),
(8, '2022_02_16_235434_create_products_table', 2),
(10, '2022_02_17_105148_create_categoryys_table', 3),
(11, '2022_02_17_105225_create_products_table', 3),
(13, '2022_02_19_183310_create_home_categories_table', 4),
(14, '2022_02_20_164723_create_orders_table', 5),
(15, '2022_02_20_164901_create_shippings_table', 5),
(16, '2022_02_20_165003_create_transactions_table', 5),
(17, '2022_02_20_172434_create_order_items_table', 5),
(18, '2022_02_21_160702_create_coupons_table', 6),
(19, '2022_02_22_005008_add_expiry_date_to_coupons_table', 7),
(20, '2022_02_22_113936_create_sales_table', 8),
(21, '2022_02_23_215949_add_delivered_canceled_date_to_orders_table', 9),
(22, '2022_02_24_124019_create_contacts_table', 10),
(23, '2022_02_24_161539_create_settings_table', 11),
(24, '2022_02_25_143805_create_shoppingcart_table', 12),
(25, '2022_02_25_180632_create_subcategories_table', 13),
(26, '2022_02_26_112243_add_subcategory_id_to_products_table', 14),
(29, '2022_02_26_221041_create_product_attributes_table', 15),
(30, '2022_02_26_221118_create_attribute_values_table', 15),
(31, '2022_02_27_143627_add_options_to_order_items_table', 16),
(32, '2022_02_27_181140_create_home_sliders_table', 17),
(33, '2022_03_01_123936_create_profiles_table', 18),
(34, '2022_03_02_202157_create_reviews_table', 19),
(35, '2022_03_02_202552_add_revstatus_to_orders_items_table', 19),
(36, '2022_03_13_173518_add_confirmed_date_to_orders_table', 20),
(37, '2022_03_15_180156_add_deleted_at_date_to_orders_table', 21),
(38, '2022_03_15_184345_add_deletedd_at_date_to_orders_table', 22);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ordered','delivered','cancelled','confirmed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `cancelled_date` date DEFAULT NULL,
  `confirmed_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=50 ;

--
-- Contenu de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `total_price`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `cancelled_date`, `confirmed_date`, `deleted_at`) VALUES
(7, 4, '120.00', '0.00', '0.00', '120.00', 'oothmane', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'ordered', 1, '2022-02-23 14:03:30', '2022-03-15 17:54:28', NULL, NULL, NULL, '2022-03-15 17:54:28'),
(8, 2, '1089.70', '192.30', '0.00', '1089.70', 'khadija1', 'El Khaddar', '0612993540', 'khadija1@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'ordered', 1, '2022-02-23 14:26:33', '2022-02-23 14:26:33', NULL, NULL, NULL, NULL),
(9, 5, '892.50', '157.50', '0.00', '892.50', 'souka', 'El Khaddar', '0612993540', 'souka.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'ordered', 1, '2022-02-23 15:21:15', '2022-02-23 15:21:15', NULL, NULL, NULL, NULL),
(14, 2, '1222.00', '0.00', '0.00', '1222.00', 'salah', 'ss', '0612993540', 'salah.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay lfalah', 'media', 'kalaa', 'Maroc', '20470', NULL, 'ordered', 1, '2022-02-23 17:38:33', '2022-02-23 17:38:33', NULL, NULL, NULL, NULL),
(15, 2, '40.00', '0.00', '0.00', '40.00', 'salah', 'ss', '0612993540', 'ham.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'ordered', 1, '2022-02-23 17:44:07', '2022-02-23 17:44:07', NULL, NULL, NULL, NULL),
(16, 6, '344.00', '0.00', '0.00', '344.00', 'amine', 'El Khaddar', '0612993540', 'amine@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'ordered', 1, '2022-02-23 18:07:24', '2022-02-23 18:07:24', NULL, NULL, NULL, NULL),
(17, 7, '150.00', '0.00', '0.00', '150.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-23 20:37:30', '2022-03-15 18:09:27', '2022-02-23', NULL, NULL, '2022-03-15 18:09:27'),
(18, 7, '210.00', '0.00', '0.00', '210.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-23 20:39:11', '2022-03-15 18:09:32', '2022-02-23', '2022-02-23', NULL, '2022-03-15 18:09:32'),
(19, 8, '60.00', '0.00', '0.00', '60.00', 'oth', 'El Khaddar', '0612993540', 'oth@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'cancelled', 1, '2022-02-23 22:10:11', '2022-03-15 20:27:52', NULL, '2022-02-24', NULL, '2022-03-15 20:27:52'),
(20, 7, '100.00', '0.00', '0.00', '100.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhadar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'cancelled', 1, '2022-02-24 09:47:46', '2022-03-15 20:27:55', NULL, '2022-02-24', NULL, '2022-03-15 20:27:55'),
(21, 7, '30.00', '0.00', '0.00', '30.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'cancelled', 1, '2022-02-24 22:51:27', '2022-03-15 20:28:15', NULL, '2022-03-01', NULL, '2022-03-15 20:28:15'),
(22, 7, '140.00', '0.00', '0.00', '140.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'confirmed', 1, '2022-02-24 23:06:30', '2022-03-15 18:22:33', NULL, NULL, '2022-03-15', NULL),
(23, 7, '40.00', '0.00', '0.00', '40.00', 'AcZZ', 'Z', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'cancelled', 1, '2022-02-24 23:08:15', '2022-03-15 20:28:18', NULL, '2022-03-02', NULL, '2022-03-15 20:28:18'),
(24, 7, '425.00', '0.00', '0.00', '425.00', 'chaimaa', 'El Khaddar', '0612993540', 'hamzaaAA@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 08:33:57', '2022-03-15 18:22:31', NULL, NULL, '2022-03-15', NULL),
(25, 7, '130.00', '0.00', '0.00', '130.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-25 08:36:23', '2022-03-15 20:25:02', '2022-02-25', NULL, NULL, '2022-03-15 20:25:02'),
(26, 9, '215.00', '0.00', '0.00', '215.00', 'oussama', 'El Khaddar', '0612993540', 'oussama@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-25 13:22:24', '2022-03-15 18:10:57', '2022-02-25', NULL, NULL, '2022-03-15 18:10:57'),
(27, 9, '80.00', '0.00', '0.00', '80.00', 'oussama', 'El Khaddar', '0612993540', 'oussama@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-25 14:04:05', '2022-03-15 20:25:05', '2022-02-25', NULL, NULL, '2022-03-15 20:25:05'),
(28, 9, '500.00', '0.00', '0.00', '500.00', 'oussama', 'El Khaddar', '0612993540', 'oussama@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-25 14:05:55', '2022-03-15 18:01:44', '2022-02-25', NULL, NULL, '2022-03-15 18:01:44'),
(29, 7, '170.00', '0.00', '0.00', '170.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 15:26:16', '2022-03-15 18:22:27', NULL, NULL, '2022-03-15', NULL),
(30, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 15:31:22', '2022-03-15 18:22:30', NULL, NULL, '2022-03-15', NULL),
(31, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 15:46:20', '2022-03-15 18:22:22', NULL, NULL, '2022-03-15', NULL),
(32, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'cancelled', 1, '2022-02-25 15:48:30', '2022-03-15 20:28:21', NULL, '2022-02-26', NULL, '2022-03-15 20:28:21'),
(33, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 15:54:23', '2022-03-15 18:22:25', NULL, NULL, '2022-03-15', NULL),
(34, 7, '100.00', '0.00', '0.00', '100.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 15:58:03', '2022-03-15 18:22:20', NULL, NULL, '2022-03-15', NULL),
(35, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 15:59:57', '2022-03-15 18:22:16', NULL, NULL, '2022-03-15', NULL),
(36, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-02-25 16:01:13', '2022-03-15 18:21:34', NULL, NULL, '2022-03-15', NULL),
(37, 7, '40.00', '0.00', '0.00', '40.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'cancelled', 1, '2022-02-25 16:03:26', '2022-02-28 21:43:10', NULL, '2022-02-28', NULL, NULL),
(38, 7, '10.00', '0.00', '0.00', '10.00', 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-02-27 13:50:36', '2022-03-15 20:14:30', '2022-02-28', NULL, NULL, '2022-03-15 20:14:30'),
(39, 2, '80.00', '0.00', '0.00', '80.00', 'Aceti', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'confirmed', 1, '2022-02-28 22:00:21', '2022-03-15 18:21:30', NULL, NULL, '2022-03-15', NULL),
(40, 7, '10.00', '0.00', '0.00', '10.00', 'qrrrrr', 'El Khaddar', '0612993540', 'qrr.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'confirmed', 1, '2022-03-01 09:04:10', '2022-03-15 18:21:56', '2022-03-02', '2022-03-02', '2022-03-15', NULL),
(41, 10, '140.00', '0.00', '0.00', '140.00', 'soufiane', 'el khaddar', '0604956676', 'soufiane.elkahddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', NULL, 'confirmed', 1, '2022-03-03 15:59:30', '2022-03-15 18:21:53', NULL, '2022-03-03', '2022-03-15', NULL),
(42, 10, '140.00', '0.00', '0.00', '140.00', 'soufiane', 'el khaddar', '0604956676', 'soufiane.elkahddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-03-03 16:12:24', '2022-03-15 17:47:28', '2022-03-03', NULL, NULL, '2022-03-15 17:47:28'),
(43, 10, '145.00', '0.00', '0.00', '145.00', 'AcZZ', 'Z', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'confirmed', 1, '2022-03-03 16:16:18', '2022-03-15 18:21:51', NULL, '2022-03-03', '2022-03-15', NULL),
(44, 10, '40.00', '0.00', '0.00', '40.00', 'Aceti', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', NULL, 'cancelled', 1, '2022-03-03 16:24:04', '2022-03-03 16:24:58', NULL, '2022-03-03', NULL, NULL),
(48, 11, '40.00', '0.00', '0.00', '40.00', 'amin', 'el khaddar', '0604956676', 'amin.elkhaddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', NULL, 'delivered', 1, '2022-03-13 16:17:03', '2022-03-15 19:51:09', '2022-03-15', '2022-03-15', '2022-03-15', '2022-03-15 19:51:09');

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revstatus` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=92 ;

--
-- Contenu de la table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `options`, `revstatus`) VALUES
(9, 47, 7, '30.00', 4, '2022-02-23 14:03:30', '2022-02-23 14:03:30', NULL, 0),
(27, 36, 15, '40.00', 1, '2022-02-23 17:44:07', '2022-02-23 17:44:07', NULL, 0),
(30, 44, 17, '25.00', 1, '2022-02-23 20:37:30', '2022-03-02 20:15:52', NULL, 1),
(31, 46, 17, '25.00', 1, '2022-02-23 20:37:30', '2022-02-23 20:37:30', NULL, 0),
(32, 36, 18, '30.00', 7, '2022-02-23 20:39:11', '2022-02-23 20:39:11', NULL, 0),
(35, 53, 21, '30.00', 1, '2022-02-24 22:51:27', '2022-02-24 22:51:27', NULL, 0),
(36, 44, 21, '25.00', 1, '2022-02-24 22:51:27', '2022-02-24 22:51:27', NULL, 0),
(37, 39, 21, '40.00', 1, '2022-02-24 22:51:27', '2022-02-24 22:51:27', NULL, 0),
(39, 36, 22, '40.00', 1, '2022-02-24 23:06:30', '2022-02-24 23:06:30', NULL, 0),
(40, 40, 23, '40.00', 1, '2022-02-24 23:08:15', '2022-02-24 23:08:15', NULL, 0),
(41, 38, 24, '40.00', 1, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(42, 36, 24, '40.00', 1, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(43, 39, 24, '40.00', 1, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(44, 47, 24, '25.00', 1, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(45, 76, 24, '45.00', 1, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(46, 44, 24, '25.00', 1, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(47, 77, 24, '45.00', 2, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(48, 41, 24, '40.00', 3, '2022-02-25 08:33:58', '2022-02-25 08:33:58', NULL, 0),
(49, 36, 25, '40.00', 1, '2022-02-25 08:36:23', '2022-02-25 08:36:23', NULL, 0),
(50, 41, 25, '40.00', 1, '2022-02-25 08:36:23', '2022-02-25 08:36:23', NULL, 0),
(51, 47, 25, '25.00', 2, '2022-02-25 08:36:23', '2022-02-25 08:36:23', NULL, 0),
(52, 40, 26, '40.00', 1, '2022-02-25 13:22:24', '2022-02-25 13:22:24', NULL, 0),
(53, 53, 26, '40.00', 1, '2022-02-25 13:22:24', '2022-02-25 13:22:24', NULL, 0),
(54, 39, 26, '40.00', 1, '2022-02-25 13:22:24', '2022-02-25 13:22:24', NULL, 0),
(55, 47, 26, '25.00', 1, '2022-02-25 13:22:24', '2022-02-25 13:22:24', NULL, 0),
(56, 52, 26, '30.00', 1, '2022-02-25 13:22:24', '2022-02-25 13:22:24', NULL, 0),
(57, 36, 26, '40.00', 1, '2022-02-25 13:22:24', '2022-02-25 13:22:24', NULL, 0),
(58, 36, 27, '40.00', 1, '2022-02-25 14:04:05', '2022-02-25 14:04:05', NULL, 0),
(59, 41, 27, '40.00', 1, '2022-02-25 14:04:05', '2022-02-25 14:04:05', NULL, 0),
(62, 52, 29, '30.00', 1, '2022-02-25 15:26:16', '2022-02-25 15:26:16', NULL, 0),
(63, 36, 29, '40.00', 1, '2022-02-25 15:26:16', '2022-02-25 15:26:16', NULL, 0),
(64, 36, 30, '40.00', 1, '2022-02-25 15:31:22', '2022-02-25 15:31:22', NULL, 0),
(65, 38, 31, '40.00', 1, '2022-02-25 15:46:20', '2022-02-25 15:46:20', NULL, 0),
(66, 40, 32, '40.00', 1, '2022-02-25 15:48:30', '2022-02-25 15:48:30', NULL, 0),
(67, 38, 33, '40.00', 1, '2022-02-25 15:54:23', '2022-02-25 15:54:23', NULL, 0),
(69, 38, 35, '40.00', 1, '2022-02-25 15:59:57', '2022-02-25 15:59:57', NULL, 0),
(70, 41, 36, '40.00', 1, '2022-02-25 16:01:13', '2022-02-25 16:01:13', NULL, 0),
(71, 38, 37, '40.00', 1, '2022-02-25 16:03:26', '2022-02-25 16:03:26', NULL, 0),
(74, 82, 39, '20.00', 2, '2022-02-28 22:00:21', '2022-02-28 22:00:21', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:1:{s:5:"Sizes";s:2:"XL";}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(77, 82, 41, '20.00', 4, '2022-03-03 15:59:30', '2022-03-03 15:59:30', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:2:{s:6:"Colors";s:6:" noir ";s:5:"Sizes";s:2:"XL";}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(78, 78, 41, '20.00', 3, '2022-03-03 15:59:30', '2022-03-03 15:59:30', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:1:{s:5:"Sizes";s:2:"39";}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(79, 82, 42, '20.00', 4, '2022-03-03 16:12:24', '2022-03-03 16:12:24', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:2:{s:6:"Colors";s:6:" noir ";s:5:"Sizes";s:2:"XL";}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(80, 78, 42, '20.00', 3, '2022-03-03 16:12:24', '2022-03-03 16:12:24', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:1:{s:5:"Sizes";s:2:"39";}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(81, 44, 43, '25.00', 1, '2022-03-03 16:16:18', '2022-03-03 16:16:18', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(82, 39, 43, '40.00', 1, '2022-03-03 16:16:18', '2022-03-03 16:16:18', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(83, 38, 43, '40.00', 1, '2022-03-03 16:16:18', '2022-03-03 16:16:18', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(84, 41, 43, '40.00', 1, '2022-03-03 16:16:18', '2022-03-03 16:16:18', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(85, 36, 44, '40.00', 1, '2022-03-03 16:24:04', '2022-03-03 16:24:04', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0),
(89, 36, 48, '40.00', 1, '2022-03-13 16:17:03', '2022-03-13 16:17:03', 'O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', 0);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('othmane.elkhaddar@gmail.com', '$2y$10$DtxzudGoyS6NRNgr5.RbiOpoMLAD8YDAupqXaXN32wGh/TSGxSKJG', '2022-02-25 12:52:54');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `quantity` bigint(20) unsigned NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_subcategory_id_foreign` (`subcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=116 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(36, 'T-shirt 3', 't-shirt-3', 'good quality', 'good quality', '40.00', '30.00', '212111', 'instock', 0, 100, '1645399650.jpg', NULL, 1, '2022-02-20 22:27:30', '2022-03-12 11:13:56', NULL),
(38, 'T-shirt 5', 't-shirt-5 ', 'good quality', 'good quality', '40.00', '29.00', '212111', 'instock', 0, 100, '1645399722.jpg', NULL, 1, '2022-02-20 22:28:42', '2022-03-12 11:13:09', 9),
(39, 'T-shirt 6', 't-shirt-6', 'good quality', 'good quality', '40.00', '29.00', '212111', 'instock', 0, 100, '1645399746.jpg', NULL, 4, '2022-02-20 22:29:06', '2022-02-20 22:29:06', NULL),
(40, 'T-shirt 7', 't-shirt-7', 'good quality', 'good quality', '40.00', '29.00', '212111', 'instock', 0, 100, '1645399768.jpg', NULL, 4, '2022-02-20 22:29:28', '2022-02-20 22:29:28', NULL),
(41, 'T-shirt 9', 't-shirt-9', 'good quality', 'good quality', '40.00', '29.00', '212111', 'instock', 0, 100, '1645399936.jpg', NULL, 4, '2022-02-20 22:29:51', '2022-02-20 22:32:16', NULL),
(44, 'capuche over size', 'capuche-over-size', 'bonne qualite', 'bonne qualite', '25.00', '30.00', '444', 'instock', 0, 100, '1645431759.jpg', NULL, 2, '2022-02-21 07:22:39', '2022-02-21 07:22:39', NULL),
(46, 'capuche over size2', 'capuche-over-size2', 'bonne qualite', 'bonne qualite', '25.00', '30.00', '444', 'instock', 0, 100, '1645431795.jpg', NULL, 2, '2022-02-21 07:23:15', '2022-02-21 07:23:15', NULL),
(47, 'capuche over size3', 'capuche-over-size3', 'bonne qualite', 'bonne qualite', '25.00', '30.00', '444', 'instock', 0, 100, '1645431815.jpg', NULL, 2, '2022-02-21 07:23:35', '2022-02-21 07:23:35', NULL),
(51, 'capuche over size7', 'capuche-over-size7', 'bonne qualite', 'bonne qualite', '30.00', '28.00', '4444', 'instock', 0, 100, '1645432821.jpg', NULL, 2, '2022-02-21 07:40:21', '2022-02-21 07:40:21', NULL),
(52, 'capuche over size8', 'capuche-over-size8', 'bonne qualite', 'bonne qualite', '30.00', '20.00', '4444', 'instock', 0, 100, '1645432857.jpg', NULL, 2, '2022-02-21 07:40:57', '2022-02-21 07:40:57', NULL),
(53, 'capuche over size 9', 'capuche-over-size-9', 'bonne qualite', 'bonne qualite', '40.00', '30.00', '444', 'instock', 0, 100, '1645432950.jpg', NULL, 2, '2022-02-21 07:42:30', '2022-02-21 07:42:30', NULL),
(65, 'over size1222', 'over-size1222', 'capuchon haute qualite', 'capuchon haute qualite', '67.00', '33.00', 'wqqw1221', 'instock', 1, 122, '1645727327.jpg', ',16457273270.jpg,16457273271.jpg,16457273272.jpg,16457273273.jpg,16457273274.jpg', 1, '2022-02-24 17:28:47', '2022-03-12 11:12:22', 9),
(66, 'survette 1 ', 'survette-1', 'bonne qualite', 'bonne qualite', '50.00', '25.00', '2324', 'instock', 0, 200, '1645780430.jpg', NULL, 1, '2022-02-25 08:13:50', '2022-03-02 12:58:55', 13),
(67, 'survette 2', 'survette-2', 'bonne qualite', 'bonne qualite', '50.00', '22.00', '2324', 'instock', 0, 200, '1645780465.jpg', NULL, 1, '2022-02-25 08:14:25', '2022-03-02 12:58:24', 13),
(69, 'survette 4', 'survette-4', 'bonne qualite', 'bonne qualite', '50.00', '22.00', '2324', 'instock', 0, 200, '1645780521.jpg', NULL, 1, '2022-02-25 08:15:21', '2022-03-02 12:57:37', 13),
(70, 'survette 5', 'survette-5', 'bonne qualite', 'bonne qualite', '50.00', '22.00', '2324', 'instock', 0, 200, '1645780591.jpg', NULL, 1, '2022-02-25 08:16:31', '2022-03-02 12:57:00', 13),
(71, 'survette 6', 'survette-6', 'bonne qualite', 'bonne qualite', '50.00', '22.00', '2324', 'instock', 0, 200, '1645780637.jpg', NULL, 1, '2022-02-25 08:17:17', '2022-03-02 12:56:33', 11),
(73, 'survette 7', 'survette-7', 'bonne qualite', 'bonne qualite', '50.00', '22.00', '2324', 'instock', 0, 200, '1645780690.jpg', NULL, 1, '2022-02-25 08:18:10', '2022-03-02 12:56:06', 13),
(74, 'jean 1', 'jean-1', 'bonne qualite', 'bonne qualite', '45.00', '20.00', '221kk', 'instock', 0, 200, '1645781198.jpg', NULL, 3, '2022-02-25 08:26:38', '2022-02-25 08:26:38', NULL),
(75, 'jean 3', 'jean-3', 'bonne qualite', 'bonne qualite', '45.00', '20.00', '221kk', 'instock', 0, 200, '1645781242.jpg', NULL, 1, '2022-02-25 08:27:22', '2022-03-02 12:55:34', 11),
(76, 'jean 4', 'jean-4', 'bonne qualite', 'bonne qualite', '45.00', '20.00', '221kk', 'instock', 0, 200, '1645781324.jpg', NULL, 1, '2022-02-25 08:28:44', '2022-03-02 12:54:37', 11),
(77, 'jean 5', 'jean-5', 'bonne qualite', 'bonne qualite', '45.00', '20.00', '221kk', 'instock', 0, 200, '1645781350.jpg', NULL, 1, '2022-02-25 08:29:10', '2022-03-02 12:53:25', 11),
(78, 'jean 6', 'jean-6', 'bonne qualite', 'bonne qualite', '45.00', '20.00', '221kk', 'instock', 0, 200, '1645781392.jpg', NULL, 1, '2022-02-25 08:29:52', '2022-03-02 12:52:21', 11),
(79, 'survêtement football adidas', 'survetement-football-adidas', 'ARSENAL LONDON PANT - Article de supporter', 'ARSENAL LONDON PANT - Article de supporter', '35.00', '18.00', 'K112', 'instock', 0, 200, '1645880708.jpg', ',16458807080.jpg', 1, '2022-02-26 12:05:08', '2022-02-26 12:15:01', 9),
(82, ' Sweat façon campus en molleton', 'sweat-facon-campus-en-molleton', ' Sweat façon campus en molleton', ' Sweat façon campus en molleton', '60.00', '20.00', '3232', 'instock', 0, 100, '1646087777.jpg', ',16460877770.jpg,16460877771.jpg,16460877772.jpg,16460877773.jpg,16460877774.jpg', 2, '2022-02-28 21:36:17', '2022-02-28 21:36:17', NULL),
(83, 'ecouteurs orginal', 'ecouteurs-orginal', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aperiam voluptates distinctio quis ex ratione amet nulla reiciendis obcaecati ea officia laborum, nobis architecto suscipit repellendus illo quisquam doloribus commodi.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta aperiam voluptates distinctio quis ex ratione amet nulla reiciendis obcaecati ea officia laborum, nobis architecto suscipit repellendus illo quisquam doloribus commodi.', '100.00', '45.00', '7622', 'instock', 0, 100, '1647035916.jpg', ',16470359160.jpg,16470359161.jpg,16470359162.jpg,16470359163.jpg,16470359164.jpg', 4, '2022-03-11 20:58:36', '2022-03-11 20:58:36', NULL),
(88, 'testtt 1', 'testtt-1', 'loremmm', 'Currently unavailable.\nWe don''t know when or if this item will be back in stock.\nBrand	Apple\nEar Placement	In Ear\nColor	White\nConnectivity Technology	Wireless\nModel Name	AirPods\n', '122.00', '44.00', '766', 'instock', 1, 777, '1647038045.jpg', NULL, 4, '2022-03-11 21:34:05', '2022-03-11 21:34:05', NULL),
(90, 'hjhjas 21', 'hjhjas-21', 'jj', 'kjjkjk', '122.00', '55.00', '8787', 'instock', 0, 899889, '1647038138.jpg', NULL, 4, '2022-03-11 21:35:38', '2022-03-12 11:09:34', NULL),
(94, 'arrival 2', 'arrival-2', 'lorem ipsum', 'lorem ipsum', '100.00', '23.00', '787', 'instock', 0, 100, '1647038508.jpg', NULL, 4, '2022-03-11 21:41:48', '2022-03-11 21:41:48', NULL),
(98, 'test 200', 'test-200', 'lorem ipsum', '<div id="availability_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="availability" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.29" data-csa-c-component="availability" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="s7s0f9-lktl5-s1w6x0-knnpgl" data-cel-widget="availability_feature_div">\n<div id="availability" class="a-section a-spacing-base }" style="box-sizing: border-box; margin-bottom: 22px;"><span class="a-size-medium a-color-price" style="box-sizing: border-box; font-size: 18px !important; line-height: 24px !important; text-rendering: optimizelegibility; color: #b12704 !important;">Currently unavailable.</span><br style="box-sizing: border-box;" />We don''t know when or if this item will be back in stock.</div>\n<div class="a-section a-spacing-none" style="box-sizing: border-box; margin-bottom: 22px;">&nbsp;</div>\n<div class="a-section a-spacing-mini" style="box-sizing: border-box; margin-bottom: 22px;">&nbsp;</div>\n</div>\n<div id="dpFastTrack_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="dpFastTrack" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.30" data-csa-c-component="dpFastTrack" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="rx6aaf-vkmzen-i7gwuv-u05pyy" data-cel-widget="dpFastTrack_feature_div"></div>\n<div id="deepCheckPromise_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="deepCheckPromise" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.31" data-csa-c-component="deepCheckPromise" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="f1c6d2-jxzlqb-k935o2-jnl21f" data-cel-widget="deepCheckPromise_feature_div"></div>\n<div id="shipsFromSoldBy_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="shipsFromSoldBy" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.32" data-csa-c-component="shipsFromSoldBy" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="ndipit-g36y7d-k53wdx-lrchvj" data-cel-widget="shipsFromSoldBy_feature_div">\n<div id="merchant-info" class="a-section a-spacing-base" style="box-sizing: border-box; margin-bottom: 0px;"></div>\n</div>\n<div id="businessPricing_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="businessPricing" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.33" data-csa-c-component="businessPricing" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="5j6a53-6r0ost-nujmws-qaxty2" data-cel-widget="businessPricing_feature_div"></div>\n<div id="smileEligibility_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="smileEligibility" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.34" data-csa-c-component="smileEligibility" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="ayag13-cggtw5-wyxn24-t80i3c" data-cel-widget="smileEligibility_feature_div"></div>\n<div id="atfCenter7_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="atfCenter7" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.36" data-csa-c-component="atfCenter7" data-csa-c-cs-type="DETAIL_PAGE_AMABOT" data-csa-c-id="i310si-emj1h7-qo4lhy-lb8h82" data-cel-widget="atfCenter7_feature_div"></div>\n<div id="atfCenter8_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="atfCenter8" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.37" data-csa-c-component="atfCenter8" data-csa-c-cs-type="DETAIL_PAGE_AMABOT" data-csa-c-id="sdcadx-cnwkqb-npyqig-jys9ba" data-cel-widget="atfCenter8_feature_div"></div>\n<div id="twister_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="twister" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.38" data-csa-c-component="twister" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="vfs43t-9h2o60-3wmn5m-5vk5fz" data-cel-widget="twister_feature_div"></div>\n<div id="specialOffersInformation_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="specialOffersInformation" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.39" data-csa-c-component="specialOffersInformation" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="tdckd5-v400dh-7cw0eg-1bx1k3" data-cel-widget="specialOffersInformation_feature_div"></div>\n<div id="holidayAvailabilityMessage_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="holidayAvailabilityMessage" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.43" data-csa-c-component="holidayAvailabilityMessage" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="yq9et6-g57q7u-213uyo-k482z9" data-cel-widget="holidayAvailabilityMessage_feature_div"></div>\n<div id="clickToContact_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="clickToContact" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.44" data-csa-c-component="clickToContact" data-csa-c-cs-type="DETAIL_PAGE_AMABOT" data-csa-c-id="xoaavm-vhx96-j2ivlp-8gu8xg" data-cel-widget="clickToContact_feature_div"></div>\n<div id="atfCenter9_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="atfCenter9" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.45" data-csa-c-component="atfCenter9" data-csa-c-cs-type="DETAIL_PAGE_AMABOT" data-csa-c-id="a9pmv5-8prwp-qd7qwl-gfsyiz" data-cel-widget="atfCenter9_feature_div"></div>\n<div id="atfCenter10_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="atfCenter10" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.46" data-csa-c-component="atfCenter10" data-csa-c-cs-type="DETAIL_PAGE_AMABOT" data-csa-c-id="88ajv0-pqrmyy-7vso8r-3yl9ic" data-cel-widget="atfCenter10_feature_div"></div>\n<div id="valuePick_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="valuePick" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.47" data-csa-c-component="valuePick" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="nnvyq8-v7qxqw-cjxlw1-jdx0i6" data-cel-widget="valuePick_feature_div"></div>\n<div id="twisterPlusWWDesktop" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="twisterPlusWWDesktop" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.48" data-csa-c-component="twisterPlusWWDesktop" data-csa-c-cs-type="DETAIL_PAGE_CONTAINER" data-csa-c-id="vjj0he-xe5im-pwk9r4-5vj9t7" data-cel-widget="twisterPlusWWDesktop"></div>\n<div id="featurebullets_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="featurebullets" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.50" data-csa-c-component="featurebullets" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="7k7nzj-u9hul9-4oxm8d-69sxt7" data-cel-widget="featurebullets_feature_div">\n<div id="feature-bullets" class="a-section a-spacing-medium a-spacing-top-small" style="box-sizing: border-box; margin-top: 8px !important; margin-bottom: 0px;"></div>\n</div>\n<div id="productOverview_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" data-feature-name="productOverview" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.49" data-csa-c-component="productOverview" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="woyf0c-jiyvym-28o5mf-yb7gd1" data-cel-widget="productOverview_feature_div">\n<div class="a-section a-spacing-small a-spacing-top-small" style="box-sizing: border-box; margin-bottom: 0px; margin-top: 8px !important;">\n<table class="a-normal a-spacing-micro" style="box-sizing: border-box; margin-bottom: 4px !important; border-collapse: collapse; width: 675.031px;">\n<tbody style="box-sizing: border-box;">\n<tr class="a-spacing-small po-brand" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 0px 3px 3px 0px; float: none !important; margin-right: 0px; width: 176.719px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; font-size: 14px !important; line-height: 20px !important;">Brand</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 0px 0px 3px 3px; float: none !important; margin-right: 0px; width: 498.312px;"><span class="a-size-base" style="box-sizing: border-box; font-size: 14px !important; line-height: 20px !important;">Apple</span></td>\n</tr>\n<tr class="a-spacing-small po-headphones_ear_placement" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 3px 0px; float: none !important; margin-right: 0px; width: 176.719px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; font-size: 14px !important; line-height: 20px !important;">Ear Placement</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 3px 3px; float: none !important; margin-right: 0px; width: 498.312px;"><span class="a-size-base" style="box-sizing: border-box; font-size: 14px !important; line-height: 20px !important;">In Ear</span></td>\n</tr>\n<tr class="a-spacing-small po-color" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 3px 0px; float: none !important; margin-right: 0px; width: 176.719px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; font-size: 14px !important; line-height: 20px !important;">Color</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 3px 3px; float: none !important; margin-right: 0px; width: 498.312px;"><span class="a-size-base" style="box-sizing: border-box; font-size: 14px !important; line-height: 20px !important;">White</span></td>\n</tr>\n<tr class="a-spacing-small po-connectivity_technology" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 3px 0px; float: none !important; margin-right: 0px; width: 176.719px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; font-size: 14px !important; line-height: 20px !important;">Connectivity Technology</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 3px 3px; float: none !important; margin-right: 0px; width: 498.312px;"><span class="a-size-base" style="box-sizing: border-box; font-size: 14px !important; line-height: 20px !important;">Wireless</span></td>\n</tr>\n<tr class="a-spacing-small po-model_name" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 0px 0px; float: none !important; margin-right: 0px; width: 176.719px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; font-size: 14px !important; line-height: 20px !important;">Model Name</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 0px 3px; float: none !important; margin-right: 0px; width: 498.312px;"><span class="a-size-base" style="box-sizing: border-box; font-size: 14px !important; line-height: 20px !important;">AirPods</span></td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>', '100.00', '10.00', '66', 'instock', 1, 555, '1647038932.jpg', ',16470389320.jpg,16470389321.jpg,16470389322.jpg,16470389323.jpg,16470389324.jpg,16470389325.jpg', 4, '2022-03-11 21:48:52', '2022-03-11 21:48:52', NULL),
(100, 'Sceptre 24" Professional Thin 75Hz 1080p LED Monitor 2x HDMI VGA Build-in Speakers, Machine Black (E248W-19203R Series)', 'sceptre-24-professional-thin-75hz-1080p-led-monitor-2x-hdmi-vga-build-in-speakers-machine-black-e248w-19203r-series', '', '<div id="productOverview_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="productOverview" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.45" data-csa-c-component="productOverview" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="f5u74r-1lt9nt-3xy4cl-v61l2w" data-cel-widget="productOverview_feature_div">\n<div class="a-section a-spacing-small a-spacing-top-small" style="box-sizing: border-box; margin-bottom: 0px; margin-top: 8px !important;">\n<table class="a-normal a-spacing-micro" style="width: 440.042px; margin-bottom: 4px !important;">\n<tbody style="box-sizing: border-box;">\n<tr class="a-spacing-small po-specific_uses_for_product" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 0px 3px 3px 0px; float: none !important; margin-right: 0px; width: 115.198px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Specific Uses For Product</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 0px 0px 3px 3px; float: none !important; margin-right: 0px; width: 324.844px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">Multimedia, Personal, Business</span></td>\n</tr>\n<tr class="a-spacing-small po-refresh_rate" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 3px 0px; float: none !important; margin-right: 0px; width: 115.198px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Refresh Rate</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 3px 3px; float: none !important; margin-right: 0px; width: 324.844px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">60 Hz</span></td>\n</tr>\n<tr class="a-spacing-small po-brand" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 3px 0px; float: none !important; margin-right: 0px; width: 115.198px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Brand</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 3px 3px; float: none !important; margin-right: 0px; width: 324.844px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">Sceptre</span></td>\n</tr>\n<tr class="a-spacing-small po-display.size" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 3px 0px; float: none !important; margin-right: 0px; width: 115.198px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Screen Size</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 3px 3px; float: none !important; margin-right: 0px; width: 324.844px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">24 Inches</span></td>\n</tr>\n<tr class="a-spacing-small po-special_feature" style="box-sizing: border-box; margin-bottom: 8px !important;">\n<td class="a-span3" style="box-sizing: border-box; vertical-align: top; padding: 3px 3px 0px 0px; float: none !important; margin-right: 0px; width: 115.198px;"><span class="a-size-base a-text-bold" style="box-sizing: border-box; font-weight: 700 !important; line-height: 20px !important;">Special Feature</span></td>\n<td class="a-span9" style="box-sizing: border-box; vertical-align: top; padding: 3px 0px 0px 3px; float: none !important; margin-right: 0px; width: 324.844px;"><span class="a-size-base" style="box-sizing: border-box; line-height: 20px !important;">Blue Light Filter, Tilt Adjustment, Flicker-Free, Built-In Speakers</span></td>\n</tr>\n</tbody>\n</table>\n</div>\n</div>\n<div id="featurebullets_feature_div" class="celwidget" style="box-sizing: border-box; color: #0f1111; font-family: ''Amazon Ember'', Arial, sans-serif; font-size: 14px; background-color: #ffffff;" data-feature-name="featurebullets" data-csa-c-type="widget" data-csa-c-slot-id="ppd-center.46" data-csa-c-component="featurebullets" data-csa-c-cs-type="DETAIL_PAGE_DYNAMIC" data-csa-c-id="ozk2bc-3lyyxc-z1m5hu-5squy8" data-cel-widget="featurebullets_feature_div">\n<div id="feature-bullets" class="a-section a-spacing-medium a-spacing-top-small" style="box-sizing: border-box; margin-top: 8px !important; margin-bottom: 0px;"><hr style="box-sizing: border-box; background-color: transparent; height: 1px; border-top-color: #e7e7e7; line-height: 19px; margin-top: 0px; margin-bottom: 14px;" />\n<h1 class="a-size-base-plus a-text-bold" style="box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-size: 16px !important; line-height: 24px !important;">About this item</h1>\n<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin: 0px 0px 0px 18px; padding: 0px;">\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">24" Ultra slim profile</span></li>\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Contemporary sleek metallic design</span></li>\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Slim bezel with thin chassis. Power Range (V, A, Hz)- AC-DC Adapter Input 100 &ndash; 240 VAC, 50/60 Hz, 1.0A (Max.) Output - 12V DC, 2.5A. Power Consumption (Typical)- 25.4W. Neck/Stand Detachable: Yes</span></li>\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">2 x HDMI Ports (convertible to DVI).Contrast Ratio:1000 : 1</span></li>\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">VESA wall mount ready. HDMI Input Signal Support - 1920 x 1080 @ 75Hz, 1080/60p, 1080/60i, 720p, 480p, 480i, Built-in Speakers - 2 x 2W 8 Ohm.Mounting type: VESA Hole Pattern 100mm x 100mm</span></li>\n</ul>\n</div>\n</div>', '1000.00', '1000.00', '888', 'instock', 0, 100, '1647039391.jpg', ',16470393910.jpg,16470393911.jpg,16470393912.jpg,16470393913.jpg,16470393914.jpg,16470393915.jpg', 4, '2022-03-11 21:56:31', '2022-03-14 20:09:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `product_attributes`
--

CREATE TABLE IF NOT EXISTS `product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Colors', '2022-02-26 21:15:41', '2022-02-26 21:15:41'),
(2, 'Sizes', '2022-02-26 21:15:52', '2022-02-26 21:15:52');

-- --------------------------------------------------------

--
-- Structure de la table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profiles_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 7, '1646259172.jpg', '+212612993540', 'hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-03-01 12:08:55', '2022-03-02 21:12:52'),
(3, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 21:50:00', '2022-03-15 21:50:00');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_order_item_id_foreign` (`order_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'qualite incroyable du produit je vous invite pour acheter dans ce magasin ', 30, '2022-03-02 20:15:52', '2022-03-02 20:15:52');

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-03-20 12:00:00', 1, NULL, '2022-03-15 15:17:05');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iVhmGRmDHmx6H3GriBigzpILBvHa31OuQjRSB7nG', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo5OntzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR4ekswWFR2Rk40WTdPcVAyTzc0VDdlYmNoeS5zTjV2VDlxYUY4NGpZQXVmRXhkV3kvOFVZRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IjF4RXg2RWF0S0tXOWtTNnAxajIyMEt1Q0ZEaU5TTHFnMDdKWThwbjIiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO3M6NToidXR5cGUiO3M6MzoiQURNIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHh6SzBYVHZGTjRZN09xUDJPNzRUN2ViY2h5LnNONXZUOXFhRjg0allBdWZFeGRXeS84VVlHIjtzOjQ6ImNhcnQiO2E6MTp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJlOTgzNTM0ZTlhNDlkZDhiNjVhODBhZDhiM2M0NTJmYyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImU5ODM1MzRlOWE0OWRkOGI2NWE4MGFkOGIzYzQ1MmZjIjtzOjI6ImlkIjtpOjM2O3M6MzoicXR5IjtpOjI7czo0OiJuYW1lIjtzOjk6IlQtc2hpcnQgMyI7czo1OiJwcmljZSI7ZDozMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjA7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6ODoiY2hlY2tvdXQiO2E6NDp7czo4OiJkaXNjb3VudCI7aTowO3M6ODoic3VidG90YWwiO3M6NToiNjAuMDAiO3M6MzoidGF4IjtzOjQ6IjAuMDAiO3M6NToidG90YWwiO3M6NToiNjAuMDAiO319', 1647386170),
('NiQbPYHFKNmUjXYXKkGWpqM9x4cmlZ7kdlQjMUoZ', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoid1JVQ3NIZ283VHpJNEl5aTJ5WkFrVnFSQ3I5YlJ3Q2JoWTVCYWJKVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czo1OiJ1dHlwZSI7czozOiJBRE0iO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkc0NSNENZS2xTWVltT3dhL2oyMVcvdUlCckMzZUo4RENBQkpFN2hVazJEWVU3a2JIODE0SlciO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjI6e3M6MzI6IjhkYjU1OTkzOTc4MjE1NGU2MGU2MTRlMGY4NGM5ZmIyIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiOGRiNTU5OTM5NzgyMTU0ZTYwZTYxNGUwZjg0YzlmYjIiO3M6MjoiaWQiO2k6ODg7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6ODoidGVzdHR0IDEiO3M6NToicHJpY2UiO2Q6NDQ7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MDp7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czo0OToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGFzc29jaWF0ZWRNb2RlbCI7czoxODoiQXBwXE1vZGVsc1xQcm9kdWN0IjtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AdGF4UmF0ZSI7aTowO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fXM6MzI6IjBiMmRkNWNkY2VjZDViZTA2MzRmNDc4Njc2NmYwMjk3IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMGIyZGQ1Y2RjZWNkNWJlMDYzNGY0Nzg2NzY2ZjAyOTciO3M6MjoiaWQiO2k6Nzc7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6NjoiamVhbiA1IjtzOjU6InByaWNlIjtkOjIwO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MDtzOjQxOiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AaXNTYXZlZCI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJlOTgzNTM0ZTlhNDlkZDhiNjVhODBhZDhiM2M0NTJmYyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImU5ODM1MzRlOWE0OWRkOGI2NWE4MGFkOGIzYzQ1MmZjIjtzOjI6ImlkIjtpOjM2O3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjk6IlQtc2hpcnQgMyI7czo1OiJwcmljZSI7ZDo0MDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjA7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHNDUjRDWUtsU1lZbU93YS9qMjFXL3VJQnJDM2VKOERDQUJKRTdoVWsyRFlVN2tiSDgxNEpXIjt9', 1647424361);

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instragram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone1`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instragram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'othmane.elkhaddar@gmail.com', '0612993540', '0612993540', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3324.2011210821065!2d-7.526463684797458!3d33.57412698073861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcc0876b4acacfc6d!2zMzPCsDM0JzI2LjkiTiA3wrAzMScyNy40Ilc!5e0!3m2!1sfr!2sma!4v1645726063331!5m2!1sfr!2sma', '#', '#', '#', 'https://www.instagram.com/othmane_ELKH/', '#', '2022-02-24 16:01:19', '2022-02-28 20:06:16');

-- --------------------------------------------------------

--
-- Structure de la table `shippings`
--

CREATE TABLE IF NOT EXISTS `shippings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shippings_order_id_foreign` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=42 ;

--
-- Contenu de la table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(3, 7, 'oothmane', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-02-23 14:03:30', '2022-02-23 14:03:30'),
(4, 8, 'khadija1', 'El Khaddar', '0612993540', 'khadija1@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 14:26:33', '2022-02-23 14:26:33'),
(5, 9, 'souka', 'El Khaddar', '0612993540', 'souka@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 15:21:15', '2022-02-23 15:21:15'),
(8, 14, 'salah', 'ss', '0612993540', 'salah@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 17:38:33', '2022-02-23 17:38:33'),
(9, 15, 'salah', 'ss', '0612993540', 'ham.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-02-23 17:44:07', '2022-02-23 17:44:07'),
(10, 16, 'amine', 'El Khaddar', '0612993540', 'amine@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 18:07:24', '2022-02-23 18:07:24'),
(11, 17, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 20:37:30', '2022-02-23 20:37:30'),
(12, 18, 'chai', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 20:39:11', '2022-02-23 20:39:11'),
(13, 19, 'oth', 'El Khaddar', '0612993540', 'oth@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-23 22:10:11', '2022-02-23 22:10:11'),
(14, 20, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhadar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-24 09:47:46', '2022-02-24 09:47:46'),
(15, 21, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-24 22:51:27', '2022-02-24 22:51:27'),
(16, 22, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-24 23:06:30', '2022-02-24 23:06:30'),
(17, 23, 'oothmane', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-02-24 23:08:15', '2022-02-24 23:08:15'),
(18, 24, 'chaimaa', 'El Khaddar', '0612993540', 'hamzaaAA@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 08:33:58', '2022-02-25 08:33:58'),
(19, 25, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 08:36:23', '2022-02-25 08:36:23'),
(20, 26, 'oussama', 'El Khaddar', '0612993540', 'oussama@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 13:22:25', '2022-02-25 13:22:25'),
(21, 27, 'oussam', 'El Khaddar', '0612993540', 'oussama@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 14:04:05', '2022-02-25 14:04:05'),
(22, 28, 'oussam', 'El Khaddar', '0612993540', 'oussama@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 14:05:55', '2022-02-25 14:05:55'),
(23, 29, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:26:16', '2022-02-25 15:26:16'),
(24, 30, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:31:22', '2022-02-25 15:31:22'),
(25, 31, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:46:20', '2022-02-25 15:46:20'),
(26, 32, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:48:30', '2022-02-25 15:48:30'),
(27, 33, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:54:23', '2022-02-25 15:54:23'),
(28, 34, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:58:03', '2022-02-25 15:58:03'),
(29, 35, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 15:59:57', '2022-02-25 15:59:57'),
(30, 36, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 16:01:13', '2022-02-25 16:01:13'),
(31, 37, 'chaimaa', 'El Khaddar', '0612993540', 'chaimaa.elkhaddar@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-02-25 16:03:26', '2022-02-25 16:03:26'),
(32, 38, 'othmane', 'el khaddar', '0604956676', 'othmane.elkahddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', '2022-02-27 13:50:36', '2022-02-27 13:50:36'),
(33, 39, 'gagag', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-02-28 22:00:21', '2022-02-28 22:00:21'),
(34, 40, 'qrrrrr', 'El Khaddar', '0612993540', 'qrr.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-03-01 09:04:10', '2022-03-01 09:04:10'),
(35, 41, 'soufiane', 'el khaddar', '0604956676', 'soufiane.elkahddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', '2022-03-03 15:59:30', '2022-03-03 15:59:30'),
(36, 42, 'soufiane', 'el khaddar', '0604956676', 'soufiane.elkahddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', '2022-03-03 16:12:24', '2022-03-03 16:12:24'),
(37, 43, 'oothmane', 'El Khaddar', '0612993540', 'hamza.elkhaddar@gmail.com', 'hay mly abdellah, hay mly abdellah, hay mly abdellah', 'hay mly abdellah', 'Casablanca', 'Ain Chock', 'Maroc', '20470', '2022-03-03 16:16:18', '2022-03-03 16:16:18'),
(38, 44, 'oth', 'El Khaddar', '0612993540', 'hamzaaAA@gmail.com', 'hay mly abdellah rue 207 N 12 Ain chock, hay mly abdellah', 'hay mly abdellah', 'Paris', 'Ain Chock', 'France', '20470', '2022-03-03 16:24:04', '2022-03-03 16:24:04'),
(41, 48, 'amin', 'el khaddar', '0604956676', 'amin.elkahddar@gmail.com', 'hay moulay abdelah rue 12 casablanca, hay mly abdellah', 'hay mly abdellah', 'casablanca', 'Ain Chock', 'France', '20470', '2022-03-13 16:17:03', '2022-03-13 16:17:03');

-- --------------------------------------------------------

--
-- Structure de la table `shoppingcart`
--

CREATE TABLE IF NOT EXISTS `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin.elkhaddar@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:2:{s:32:"8db559939782154e60e614e0f84c9fb2";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"8db559939782154e60e614e0f84c9fb2";s:2:"id";i:88;s:3:"qty";i:1;s:4:"name";s:8:"testtt 1";s:5:"price";d:44;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"0b2dd5cdcecd5be0634f4786766f0297";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"0b2dd5cdcecd5be0634f4786766f0297";s:2:"id";i:77;s:3:"qty";i:1;s:4:"name";s:6:"jean 5";s:5:"price";d:20;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-15 21:36:03', NULL),
('admin.elkhaddar@gmail.com', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:1:{s:32:"e983534e9a49dd8b65a80ad8b3c452fc";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"e983534e9a49dd8b65a80ad8b3c452fc";s:2:"id";i:36;s:3:"qty";i:1;s:4:"name";s:9:"T-shirt 3";s:5:"price";d:40;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-15 19:30:55', NULL),
('admin3.elkhaddar@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:1:{s:32:"e983534e9a49dd8b65a80ad8b3c452fc";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"e983534e9a49dd8b65a80ad8b3c452fc";s:2:"id";i:36;s:3:"qty";i:2;s:4:"name";s:9:"T-shirt 3";s:5:"price";d:30;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-15 22:16:10', NULL),
('admin3.elkhaddar@gmail.com', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-15 22:16:10', NULL),
('amin.elkhaddar@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:1:{s:32:"abaf049c5c031446161fff7eb65b835c";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"abaf049c5c031446161fff7eb65b835c";s:2:"id";i:71;s:3:"qty";i:1;s:4:"name";s:10:"survette 6";s:5:"price";d:22;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-16 06:53:21', NULL),
('amin.elkhaddar@gmail.com', 'wishlist', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:2:{s:32:"cf5ab80b86d6fc9da7737513ac635dab";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"cf5ab80b86d6fc9da7737513ac635dab";s:2:"id";i:79;s:3:"qty";i:1;s:4:"name";s:28:"survêtement football adidas";s:5:"price";d:35;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}s:32:"6de83ad2f06a80ee5b06ead51cb74fb5";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"6de83ad2f06a80ee5b06ead51cb74fb5";s:2:"id";i:53;s:3:"qty";i:1;s:4:"name";s:19:"capuche over size 9";s:5:"price";d:40;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-15 15:09:07', NULL),
('chaimaa.elkhaddar@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-07 17:26:40', NULL),
('othmane.elkhaddar@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:1:{s:32:"e983534e9a49dd8b65a80ad8b3c452fc";O:32:"Gloudemans\\Shoppingcart\\CartItem":9:{s:5:"rowId";s:32:"e983534e9a49dd8b65a80ad8b3c452fc";s:2:"id";i:36;s:3:"qty";i:1;s:4:"name";s:9:"T-shirt 3";s:5:"price";d:40;s:7:"options";O:39:"Gloudemans\\Shoppingcart\\CartItemOptions":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}s:49:"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel";s:18:"App\\Models\\Product";s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate";i:0;s:41:"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved";b:0;}}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-12 22:22:36', NULL),
('soufiane.elkhaddar@gmail.com', 'cart', 'O:29:"Illuminate\\Support\\Collection":2:{s:8:"\0*\0items";a:0:{}s:28:"\0*\0escapeWhenCastingToString";b:0;}', '2022-03-04 21:55:05', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Cerruti 188', 'cerruti-188', 11, '2022-02-25 17:25:41', '2022-02-25 21:27:15'),
(2, ' Bleu parfum Chanel', 'bleu-parfum-chanel', 11, '2022-02-25 17:27:00', '2022-02-25 17:27:00'),
(3, 'Gentleman parfum Givenchy', 'gentleman-parfum-givenchy', 11, '2022-02-25 17:43:18', '2022-02-25 17:43:18'),
(4, ' L''Homme Idéal parfum Guerlain', 'lhomme-ideal-parfum-guerlain', 11, '2022-02-25 17:43:41', '2022-02-25 17:43:41'),
(5, 'erre d''Hermès parfum Hermès', 'erre-dhermes-parfum-hermes', 11, '2022-02-25 17:43:58', '2022-02-25 17:43:58'),
(6, 'Clive Christian N°1 Imperial Majesty Perfume', 'clive-christian-n1-imperial-majesty-perfume', 11, '2022-02-25 17:44:36', '2022-02-25 17:44:36'),
(7, 'Baccarat Les Larmes Sacrees de Thebes', 'baccarat-les-larmes-sacrees-de-thebes', 11, '2022-02-25 17:44:49', '2022-02-25 17:44:49'),
(8, 'jacket over size', 'jacket-over-size', 1, '2022-02-25 21:17:59', '2022-03-02 12:39:24'),
(9, 'seweat over size', 'seweat-over-size', 1, '2022-02-25 21:18:05', '2022-03-02 12:39:49'),
(11, 'jeans ', 'jeans', 1, '2022-03-02 12:40:15', '2022-03-02 12:40:15'),
(12, 'spadri', 'spadri', 1, '2022-03-02 12:40:20', '2022-03-02 12:40:20'),
(13, 'survette', 'survette', 1, '2022-03-02 12:40:37', '2022-03-02 12:40:37'),
(14, 'casquettes', 'casquettes', 1, '2022-03-02 12:41:32', '2022-03-02 12:41:44'),
(15, 'sport', 'sport', 1, '2022-03-02 12:42:19', '2022-03-02 12:42:19'),
(16, 'les ensembles ', 'les-ensembles', 1, '2022-03-02 12:42:38', '2022-03-02 12:42:38');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  KEY `transactions_order_id_foreign` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=41 ;

--
-- Contenu de la table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 'cod', 'pending', '2022-02-23 14:26:33', '2022-02-23 14:26:33'),
(2, 5, 9, 'cod', 'pending', '2022-02-23 15:21:15', '2022-02-23 15:21:15'),
(5, 2, 14, 'cod', 'pending', '2022-02-23 17:38:33', '2022-02-23 17:38:33'),
(6, 2, 15, 'cod', 'pending', '2022-02-23 17:44:07', '2022-02-23 17:44:07'),
(7, 6, 16, 'cod', 'pending', '2022-02-23 18:07:24', '2022-02-23 18:07:24'),
(8, 7, 17, 'cod', 'pending', '2022-02-23 20:37:30', '2022-02-23 20:37:30'),
(9, 7, 18, 'cod', 'pending', '2022-02-23 20:39:11', '2022-02-23 20:39:11'),
(10, 8, 19, 'cod', 'pending', '2022-02-23 22:10:11', '2022-02-23 22:10:11'),
(11, 7, 20, 'cod', 'pending', '2022-02-24 09:47:46', '2022-02-24 09:47:46'),
(12, 7, 21, 'cod', 'pending', '2022-02-24 22:51:27', '2022-02-24 22:51:27'),
(13, 7, 22, 'cod', 'pending', '2022-02-24 23:06:30', '2022-02-24 23:06:30'),
(14, 7, 23, 'cod', 'pending', '2022-02-24 23:08:15', '2022-02-24 23:08:15'),
(15, 7, 24, 'cod', 'pending', '2022-02-25 08:33:58', '2022-02-25 08:33:58'),
(16, 7, 25, 'cod', 'pending', '2022-02-25 08:36:23', '2022-02-25 08:36:23'),
(17, 9, 26, 'cod', 'pending', '2022-02-25 13:22:25', '2022-02-25 13:22:25'),
(18, 9, 27, 'cod', 'pending', '2022-02-25 14:04:05', '2022-02-25 14:04:05'),
(19, 9, 28, 'cod', 'pending', '2022-02-25 14:05:55', '2022-02-25 14:05:55'),
(20, 7, 29, 'cod', 'pending', '2022-02-25 15:26:16', '2022-02-25 15:26:16'),
(21, 7, 30, 'cod', 'pending', '2022-02-25 15:31:22', '2022-02-25 15:31:22'),
(22, 7, 31, 'cod', 'pending', '2022-02-25 15:46:20', '2022-02-25 15:46:20'),
(23, 7, 32, 'cod', 'pending', '2022-02-25 15:48:30', '2022-02-25 15:48:30'),
(24, 7, 33, 'cod', 'pending', '2022-02-25 15:54:23', '2022-02-25 15:54:23'),
(25, 7, 34, 'cod', 'pending', '2022-02-25 15:58:03', '2022-02-25 15:58:03'),
(26, 7, 35, 'cod', 'pending', '2022-02-25 15:59:57', '2022-02-25 15:59:57'),
(27, 7, 36, 'cod', 'pending', '2022-02-25 16:01:13', '2022-02-25 16:01:13'),
(28, 7, 37, 'cod', 'pending', '2022-02-25 16:03:26', '2022-02-25 16:03:26'),
(29, 7, 38, 'cod', 'pending', '2022-02-27 13:50:36', '2022-02-27 13:50:36'),
(30, 2, 39, 'cod', 'pending', '2022-02-28 22:00:21', '2022-02-28 22:00:21'),
(31, 7, 40, 'cod', 'pending', '2022-03-01 09:04:10', '2022-03-01 09:04:10'),
(32, 10, 41, 'cod', 'pending', '2022-03-03 15:59:30', '2022-03-03 15:59:30'),
(33, 10, 42, 'cod', 'pending', '2022-03-03 16:12:25', '2022-03-03 16:12:25'),
(34, 10, 43, 'cod', 'pending', '2022-03-03 16:16:18', '2022-03-03 16:16:18'),
(35, 10, 44, 'cod', 'pending', '2022-03-03 16:24:04', '2022-03-03 16:24:04'),
(39, 11, 48, 'cod', 'pending', '2022-03-13 16:17:03', '2022-03-13 16:17:03');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin.elkhaddar@gmail.com', NULL, '$2y$10$sCR4CYKlSYYmOwa/j21W/uIBrC3eJ8DCABJE7hUk2DYU7kbH814JW', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-02-16 20:28:29', '2022-02-16 20:28:29'),
(3, 'Aceti', 'hamzaaAA@gmail.com', NULL, '$2y$10$/.Ls6JUa2cpWfzZHpvJUqOVzxARcD312KXpUJ/pVN2WS6zM1Jfwii', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-02-16 22:39:37', '2022-02-16 22:39:37'),
(4, 'khadija', 'khadija@gmail.com', NULL, '$2y$10$mQM6tPJM/4JOrmjt6HTDz.UByKMgWOoLYlWLTmUdFOlWV/2odFUhq', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-02-23 13:40:06', '2022-02-23 13:40:06'),
(5, 'souka', 'souka@gmail.com', NULL, '$2y$10$KV1gAFNBtUYVDXP41RJdNus79dFC43fnm8xrDJm0YMt843t9SfJLe', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-02-23 15:19:32', '2022-02-23 15:19:32'),
(6, 'Aceti El Khaddar', 'amine@gmail.com', NULL, '$2y$10$Q9jTBLfe4/4/LKTq/L0sduECXh6P.pw7jpbnGY5aa13D6JYF63YI.', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-02-23 18:06:33', '2022-02-23 18:06:33'),
(7, 'chaimaa', 'chaimaa.elkhaddar@gmail.com', NULL, '$2y$10$oQUmdZ9eolqI6u4qY7suH.5QzRERfg0rG/VPSS2jahTkTRb5Mu1xi', NULL, NULL, 'Te7S2nSO4utCVecj1eDDQ5hRFkaJ4ghbDxpt2JE70dxxFov7PDPVOkZJyP8U', NULL, NULL, 'USR', '2022-02-23 20:35:29', '2022-03-02 12:28:55'),
(8, 'oth', 'oth@gmail.com', NULL, '$2y$10$t0Bxty/w9rXCAju.Yz9mfeozmJHFRa1FUPLJX5YdRf2zXp68oY3.u', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-02-23 22:09:36', '2022-02-23 22:09:36'),
(9, 'oussama', 'oussama@gmail.com', NULL, '$2y$10$G8DNkKhVip7zwE91DsI0uuBnC7E/iLIG2c4.evvTwQEgzR4WKF6ia', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-02-25 13:19:50', '2022-02-25 13:19:50'),
(10, 'soufiane', 'soufiane.elkhaddar@gmail.com', NULL, '$2y$10$f18w33gHxItnuHRskvjt9ONAWDX2a.7hD9CUDGJaDeB44PErWKWi6', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-03-03 15:43:16', '2022-03-03 15:43:16'),
(11, 'amin', 'amin.elkhaddar@gmail.com', NULL, '$2y$10$AlZYtWWsrL.SPh9lgFDoNOUFrIhW9ZsjfML.yT7GgeEttI2K46Sq2', NULL, NULL, NULL, NULL, NULL, 'USR', '2022-03-13 16:14:53', '2022-03-13 16:14:53'),
(12, 'othmane el khaddar', 'othmane.elkhaddar@gmail.com', NULL, '$2y$10$GLHBuQlrYacxAJTNu/v20.1Xo6e2mB.n5atFGlw7c7LIbuKwGFDFm', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-03-15 21:44:57', '2022-03-15 21:44:57'),
(13, 'admin3', 'admin3.elkhaddar@gmail.com', NULL, '$2y$10$xzK0XTvFN4Y7OqP2O74T7ebchy.sN5vT9qaF84jYAufExdWy/8UYG', NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-03-15 21:47:58', '2022-03-15 21:47:58');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categoryys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categoryys` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
