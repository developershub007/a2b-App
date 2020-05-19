-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2020 at 12:06 AM
-- Server version: 5.6.41-84.1-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `develuw5_a2b`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'dd/mm/yy'),
(8, 'language', 'en'),
(18, 'app_name', 'A2B'),
(19, 'app_short_description', 'Manage Mobile Application'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.mailtrap.io'),
(22, 'mail_port', '2525'),
(23, 'mail_username', 'cb1bbb56ad7b2e'),
(24, 'mail_password', 'b005c361fdcf5b'),
(25, 'mail_encryption', 'tls'),
(26, 'mail_from_address', '3c3ed03f69-5d3964@inbox.mailtrap.io'),
(27, 'mail_from_name', 'Hola'),
(30, 'timezone', 'Asia/Kolkata'),
(32, 'theme_contrast', 'dark'),
(33, 'theme_color', 'danger'),
(34, 'app_logo', '4a3fc366-dee4-4249-bcd2-81798c2cab75'),
(35, 'nav_color', 'navbar-light bg-white'),
(38, 'logo_bg_color', 'bg-white'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '518416208939727'),
(69, 'facebook_app_secret', '93649810f78fa9ca0d48972fee2a75cd'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '527129559488-roolg8aq110p8r1q952fqa9tm06gbloe.apps.googleusercontent.com'),
(75, 'google_app_secret', 'FpIi8SLgc69ZWodk-xHaOrxn'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(101, 'custom_field_models.0', 'App\\Models\\User'),
(104, 'default_tax', '12'),
(107, 'default_currency', 'R$'),
(110, 'fcm_key', 'AAAAHMZiAQA:APA91bEb71b5sN5jl-w_mmt6vLfgGY5-_CQFxMQsVEfcwO3FAh4-mk1dM6siZwwR3Ls9U0pRDpm96WN1AmrMHQ906GxljILqgU2ZB6Y1TjiLyAiIUETpu7pQFyicER8KLvM9JUiXcfWK'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', 'JV2A7G4SEMLMZ565'),
(114, 'paypal_secret', 'AbMmSXVaig1ExpY3utVS3dcAjx7nAHH0utrZsUN6LYwPgo7wfMzrV5WZ'),
(121, 'enable_stripe', ''),
(122, 'paypal_mode', ''),
(123, 'paypal_app_id', ''),
(124, 'currency_right', '1'),
(129, 'is_human_date_format', '1'),
(130, 'fixed_header', ''),
(131, 'fixed_footer', '');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_extras`
--

CREATE TABLE `cart_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Grains', '2019-08-29 21:54:23', '2019-10-18 11:38:04'),
(3, 'Vegetables', '2019-08-29 22:42:51', '2019-10-18 11:36:57'),
(5, 'Protein', '2019-08-30 11:07:38', '2019-10-18 11:37:32'),
(8, 'Food', '2020-05-07 15:09:53', '2020-05-07 15:09:53'),
(9, 'Goods', '2020-05-07 15:11:24', '2020-05-07 15:11:24'),
(10, 'test category +12', '2020-05-11 18:40:25', '2020-05-11 18:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED NOT NULL,
  `rounding` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(7, 'Denmark', 'Kr', 'DKK', 0, 0, '2019-10-22 14:56:26', '2020-05-01 18:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone +12', 'selects', NULL, 0, 0, 0, 12, 1, 'App\\Models\\User', '2019-09-06 20:30:00', '2020-05-11 19:27:54'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 20:43:58', '2019-09-06 20:43:58'),
(7, 'radio', 'radio', NULL, 0, 1, 0, 12, 1, 'App\\Models\\Restaurant', '2020-05-11 19:21:12', '2020-05-11 19:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(29, '+136 226 5669', '+136 226 5669', 4, 'App\\Models\\User', 18, '2019-09-06 20:52:30', '2019-09-06 20:52:30'),
(30, 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 'Lobortis mattis aliquam faucibus purus. Habitasse platea dictumst vestibulum rhoncus est pellentesque elit. Nunc vel risus commodo viverra maecenas accumsan lacus vel.', 5, 'App\\Models\\User', 18, '2019-09-06 20:52:30', '2019-10-16 18:32:35'),
(32, '+136 226 5660 +12', '+136 226 5660 +12', 4, 'App\\Models\\User', 1, '2019-09-06 20:53:58', '2020-05-11 18:22:14'),
(33, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta +12', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta +12', 5, 'App\\Models\\User', 1, '2019-09-06 20:53:58', '2020-05-11 18:22:14'),
(35, '+1 098-6543-236', '+1 098-6543-236', 4, 'App\\Models\\User', 19, '2019-10-15 16:21:32', '2019-10-17 22:21:43'),
(36, 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 'Aliquet porttitor lacus luctus accumsan tortor posuere ac ut. Tortor pretium viverra suspendisse', 5, 'App\\Models\\User', 19, '2019-10-15 16:21:32', '2019-10-17 22:21:12'),
(38, '+1 248-437-7610', '+1 248-437-7610', 4, 'App\\Models\\User', 20, '2019-10-16 18:31:46', '2019-10-16 18:31:46'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 20, '2019-10-16 18:31:46', '2019-10-16 18:31:46'),
(41, 'null', '', 4, 'App\\Models\\User', 41, '2020-05-11 19:44:16', '2020-05-11 19:44:16'),
(42, NULL, '', 5, 'App\\Models\\User', 41, '2020-05-11 19:44:16', '2020-05-11 19:44:16'),
(43, 'null', '', 4, 'App\\Models\\User', 21, '2020-05-11 21:12:06', '2020-05-11 21:12:06'),
(44, NULL, '', 5, 'App\\Models\\User', 21, '2020-05-11 21:12:06', '2020-05-11 21:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `name`, `description`, `price`, `food_id`, `created_at`, `updated_at`) VALUES
(1, 'Tuna', '<p>Add some tuna</p>', 3.00, 1, '2019-08-30 11:39:50', '2019-08-30 11:39:50'),
(2, 'Unagi', '<p>Add some Unagi</p>', 5.00, 1, '2019-08-30 11:40:47', '2019-08-30 11:40:47'),
(3, 'Salmon', '<p>Add some Salmon</p>', 8.00, 7, '2019-08-30 11:41:34', '2019-10-18 10:52:30'),
(6, 'Vegetable oil', '<p>Add some&nbsp;vegetable oil</p>', 2.00, 3, '2019-10-18 10:53:34', '2019-10-18 10:53:34'),
(7, 'Vegetable oil', '<p>Add some vegetable oil</p>', 2.00, 4, '2019-10-18 10:54:11', '2019-10-18 10:54:11'),
(8, 'Vegetable oil', '<p>Add some&nbsp;</p>', 2.00, 5, '2019-10-18 10:54:37', '2019-10-18 10:54:37'),
(9, 'Tuna', '<p>Add some tuna</p>', 3.00, 3, '2019-10-18 11:38:44', '2019-10-18 11:38:44'),
(10, 'Tuna', '<p>Add some tuna</p>', 3.00, 5, '2019-10-18 11:39:15', '2019-10-18 11:39:15'),
(12, 'test Extras Name', 'test Extras Description', 76.00, 17, '2020-05-11 18:44:55', '2020-05-11 18:44:55'),
(13, 'fef', '<p>fewf</p>', 200.00, 1, '2020-05-11 20:58:46', '2020-05-11 20:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Amet aliquam id diam maecenas ultricies mi eget ?', 'Tellus cras adipiscing enim eu turpis. Facilisis magna etiam tempor orci eu lobortis. Nibh tellus molestie nunc non. Risus in hendrerit gravida rutrum quisque non tellus orci ac. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo.', 1, '2019-08-31 11:33:33', '2019-10-17 22:13:43'),
(2, 'Posuere sollicitudin aliquam ultrices?', 'Nulla porttitor massa id neque aliquam vestibulum morbi. Sed pulvinar proin gravida hendrerit. Ullamcorper a lacus vestibulum sed arcu non odio euismod.', 2, '2019-09-06 09:27:15', '2019-10-17 22:14:17'),
(3, 'Volutpat blandit aliquam etiam erat velit?', 'Nulla porttitor massa id neque aliquam vestibulum morbi. Sed pulvinar proin gravida hendrerit. Ullamcorper a lacus vestibulum sed arcu non odio euismod', 1, '2019-10-17 22:14:56', '2019-10-17 22:14:56'),
(4, '<p>Aliquet porttitor lacus luctus?<br></p>', '<p>Eget egestas purus viverra accumsan in nisl nisi. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Urna cursus eget nunc scelerisque viverra. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu.<br></p>', 1, '2019-10-17 22:16:33', '2019-10-17 22:16:33'),
(5, '<p>Proin fermentum leo vel orci porta non pulvinar ?<br></p>', 'Facilisis mauris sit amet massa vitae tortor condimentum lacinia. Arcu dui vivamus arcu felis bibendum ut. Enim facilisis gravida neque convallis a cras semper auctor neque. Pellentesque elit eget gravida cum sociis natoque penatibus et. Massa massa ultricies mi quis. Diam donec adipiscing tristique risus nec feugiat. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Amet justo donec enim diam vulputate ut.', 2, '2019-10-17 22:17:03', '2019-10-17 22:17:03'),
(6, '<p>Lorem ipsum dolor sit amet<br></p>', '<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis tristique sollicitudin nibh sit amet commodo nulla. Nullam ac tortor vitae purus faucibus ornare. Odio morbi quis commodo odio aenean sed. Sit amet tellus cras adipiscing enim.&nbsp;<br></p>', 2, '2019-10-17 22:17:36', '2019-10-17 22:17:36'),
(7, '<p>Bibendum ut tristique et egestas?<br></p>', '<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis tristique sollicitudin nibh sit amet commodo nulla. Nullam ac tortor vitae purus faucibus ornare. Odio morbi quis commodo odio aenean sed. Sit amet tellus cras adipiscing enim.&nbsp;<br></p>', 3, '2019-10-17 22:18:06', '2019-10-17 22:18:06'),
(8, 'Viverra nam libero justo laoreet', '<p>Est placerat in egestas erat imperdiet sed euismod. Non quam lacus suspendisse faucibus interdum posuere lorem. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim.<br></p>', 3, '2019-10-17 22:18:32', '2019-10-17 22:18:32'),
(9, 'Amet cursus sit amet dictum sit?', 'Est placerat in egestas erat imperdiet sed euismod. Non quam lacus suspendisse faucibus interdum posuere lorem. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim.', 4, '2019-10-17 22:19:46', '2019-10-17 22:19:46'),
(10, 'test Question Faqs', 'test Question Answer', 5, '2020-05-11 19:04:11', '2020-05-11 19:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Foods', '2019-08-31 11:31:52', '2019-08-31 11:31:52'),
(2, 'Services', '2019-08-31 11:32:03', '2019-08-31 11:32:03'),
(3, 'Delivery', '2019-08-31 11:32:11', '2019-08-31 11:32:11'),
(4, 'Misc', '2019-08-31 11:32:17', '2019-08-31 11:32:17'),
(5, 'test cate', '2020-05-11 19:04:31', '2020-05-11 19:04:31');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `food_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 18, '2019-08-30 15:31:52', '2019-08-30 15:31:53'),
(14, 2, 18, '2019-10-09 12:42:45', '2019-10-09 12:42:45'),
(16, 3, 1, '2019-10-17 22:22:26', '2019-10-17 22:22:26'),
(25, 1, 1, '2019-10-18 12:40:22', '2019-10-18 12:40:22'),
(26, 2, 19, '2019-11-30 06:21:16', '2019-11-30 06:21:16'),
(28, 3, 19, '2019-11-30 07:36:50', '2019-11-30 07:36:50'),
(29, 1, 19, '2019-11-30 14:32:04', '2019-11-30 14:32:04'),
(30, 1, 19, '2019-11-30 14:32:06', '2019-11-30 14:32:06'),
(31, 5, 24, '2019-11-30 17:22:12', '2019-11-30 17:22:12'),
(32, 3, 27, '2019-11-30 22:34:58', '2019-11-30 22:34:58'),
(34, 2, 37, '2020-05-04 23:10:15', '2020-05-04 23:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_extras`
--

CREATE TABLE `favorite_extras` (
  `extra_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_extras`
--

INSERT INTO `favorite_extras` (`extra_id`, `favorite_id`) VALUES
(2, 3),
(2, 14),
(1, 25),
(2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(9,2) NOT NULL DEFAULT '0.00',
  `featured` tinyint(1) NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `discount_price`, `description`, `ingredients`, `weight`, `featured`, `restaurant_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'American fried rice', 11.00, 0.00, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s<br></p>', '<p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 193.00, 1, 2, 1, '2019-08-30 11:21:43', '2019-09-03 21:58:30'),
(2, 'Calas', 15.00, 0.00, 'Calas are dumplings composed primarily of cooked rice, yeast, sugar, eggs, and flour; the resulting batter is deep-fried. It is traditionally a breakfast dish, served with coffee or cafe au lait, and has a mention in most Creole cuisine cookbooks.', 'some ingredients', 634.00, 1, 1, 1, '2019-08-31 12:03:37', '2019-08-31 12:36:16'),
(3, 'Pizza Margherita', 8.00, 0.00, 'Tomato sauce, Firm mozzarella cheese, grated. Fresh soft mozzarella cheese, separated into small clumps. Fontina cheese, grated. Parmesan cheese, grated.', 'Tomato sauce, Firm mozzarella cheese, grated. Fresh soft mozzarella cheese, separated into small clumps. Fontina cheese, grated. Parmesan cheese, grated.', 200.00, 1, 1, 1, '2019-10-17 22:06:51', '2019-10-17 22:06:51'),
(4, 'Pizza Casera', 120.00, 10.00, '<p>TSuave pizza a la pieda<br></p>', '<p>Tomate huerta rico y delicioso</p><p><br></p><p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAArwAAAH0CAIAAABQO2mIAAAAAXNSR0IArs4c6QAFwspJREFUeNrs/WmPLMuWHYjZ4B5DZp7pDfWqqtGQ2M0qNgtdbAkiQOgb/0MLgj7qDwoQIFDfSXRTajTRDUFkgWy1WqyqV8Ob7j1DZkaEuw3C', 290.50, 1, 1, 1, '2019-10-18 09:09:53', '2019-11-30 02:57:29'),
(5, 'Pizza Valtellina', 7.40, 0.00, 'Tomato sauce, mozzarella, bresaola, Parmesan flakes and rocket', 'Tomato sauce, mozzarella, bresaola, Parmesan flakes and rocket', 245.30, 0, 2, 1, '2019-10-18 09:15:19', '2019-10-18 09:15:19'),
(6, 'Pizza al Pesto', 4.80, 0.00, '<p>Tomato, mozzarella, Genoese pesto, pine nuts, and olives<br></p>', '<p>Tomato, mozzarella, Genoese pesto, pine nuts, and olives<br></p>', 240.00, 0, 3, 1, '2019-10-18 09:16:17', '2019-10-18 09:16:17'),
(7, 'Angel Hair', 10.99, 8.00, 'Angel hair is the thinnest type of pasta, made of long, very fine strands that cook quickly. Use delicate sauces with this narrow noodle, like a light tomato sauce or a broth, or simply cook it with butter and oil.', 'Angel hair is the thinnest type of pasta, made of long, very fine strands that cook quickly. Use delicate sauces with this narrow noodle, like a light tomato sauce or a broth, or simply cook it with butter and oil.', 320.00, 1, 3, 3, '2019-10-18 09:19:33', '2019-10-18 09:19:33'),
(8, 'Acini di Pepe', 11.99, 9.99, 'Sometimes referred to as pastina, acini di pepe means “small parts of the pepper” in Italian, alluding to its miniscule size and rounded shape, which makes it versatile enough to be welcome in a wide range of dishes. Make it the mainstay of a cold salad or sprinkle it into a piping hot soup.', 'Sometimes referred to as pastina, acini di pepe means “small parts of the pepper” in Italian, alluding to its miniscule size and rounded shape, which makes it versatile enough to be welcome in a wide range of dishes. Make it the mainstay of a cold salad o', 260.00, 1, 4, 3, '2019-10-18 09:36:17', '2019-10-18 09:36:17'),
(9, 'Pasta Pappardelle', 12.99, 10.99, 'A wide egg noodle with Tuscan origins, pappardelle is often served with hearty meat sauces, as in our decadent bolognese recipe.', 'A wide egg noodle with Tuscan origins, pappardelle is often served with hearty meat sauces, as in our decadent bolognese recipe.', 290.00, 0, 4, 3, '2019-10-18 09:47:46', '2019-10-18 09:47:46'),
(10, 'Pasta Campanelle', 13.99, 11.99, 'Literally meaning “bellflowers,” campanelle sports a very unique shape that’s great at capturing thick, creamy, or meaty sauces. And they work wonders in cheesy bowls, too.', 'Literally meaning “bellflowers,” campanelle sports a very unique shape that’s great at capturing thick, creamy, or meaty sauces. And they work wonders in cheesy bowls, too.', 190.00, 1, 3, 3, '2019-10-18 09:49:08', '2019-10-18 09:49:08'),
(11, 'Chicken Noodle Soup', 7.90, 0.00, 'This creamy cheese soup is delicious on a cold winter day!', '1/4 cup butter1 onion, chopped 1/4 cup all-purpose flour 3 cups chicken broth 3 cups milk 1 pound shredded Cheddar cheese Add all ingredients to list', 180.00, 1, 1, 3, '2019-10-18 09:52:28', '2019-10-18 09:52:28'),
(12, 'California Italian Wedding Soup', 8.60, 0.00, 'This is my variation of a standard recipe. I like fresh basil and a little lemon rind, so those are basically my only changes. This is a quick and easy soup with flavors that impress all.', '1/2 pound extra-lean ground beef1 egg, lightly beaten 2 tablespoons Italian-seasoned breadcrumbs1 tablespoon grated Parmesan cheese 2 tablespoons shredded fresh basil leaves1 tablespoon chopped Italian flat leaf parsley (optional) 2 green onions, sliced (', 170.00, 1, 3, 3, '2019-10-18 09:54:32', '2019-10-18 09:54:32'),
(16, 'Cedar Planked Salmon', 16.30, 12.90, '<p>This is a dish my brother prepared for me in Seattle. It is by far the best salmon I\'ve ever eaten. I like to serve it with Asian-inspired rice and roasted asparagus.<br></p>', '<ul><li>3 (12 inch) untreated cedar planks</li><li>1/3 cup vegetable oil</li><li>1/2 tablespoons rice vinegar1 teaspoon sesame oil</li><li>1/3 cup soy sauce</li><li>1/4 cup chopped green onions</li><li>1 tablespoon grated fresh ginger root</li><li>1 teasp', 163.00, 1, 3, 1, '2019-10-18 10:51:51', '2019-10-18 10:51:51'),
(17, 'test Foods Name', 76.00, 76.00, 'test Foods Description', 'test Foods Ingredients', 76.00, 1, 5, 10, '2020-05-11 18:42:09', '2020-05-11 18:42:09'),
(18, 'asf', 300.00, 34.00, '<p>fsadf</p>', '<p>fasf</p>', 34.00, 1, 1, 3, '2020-05-11 20:54:12', '2020-05-11 20:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `food_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`id`, `price`, `quantity`, `food_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 1.00, 3, 1, 1, NULL, '2019-09-03 20:28:46'),
(2, 2.00, 5, 1, 1, NULL, '2019-09-03 20:29:38'),
(3, 23.00, 3, 2, 2, '2019-09-03 20:30:22', '2019-09-03 20:30:22'),
(4, 15.00, 1, 2, 4, '2019-09-27 14:57:08', '2019-09-27 14:57:08'),
(5, 15.00, 4, 2, 4, '2019-09-27 14:57:09', '2019-09-27 14:57:09'),
(6, 11.00, 5, 1, 4, '2019-09-27 14:57:09', '2019-09-27 14:57:09'),
(7, 15.00, 1, 2, 5, '2019-09-27 14:58:40', '2019-09-27 14:58:40'),
(8, 15.00, 4, 2, 5, '2019-09-27 14:58:40', '2019-09-27 14:58:40'),
(9, 11.00, 5, 1, 5, '2019-09-27 14:58:40', '2019-09-27 14:58:40'),
(10, 15.00, 1, 2, 6, '2019-09-27 15:10:23', '2019-09-27 15:10:23'),
(11, 15.00, 4, 2, 6, '2019-09-27 15:10:23', '2019-09-27 15:10:23'),
(12, 11.00, 5, 1, 6, '2019-09-27 15:10:23', '2019-09-27 15:10:23'),
(13, 11.00, 1, 1, 7, '2019-09-27 15:12:17', '2019-09-27 15:12:17'),
(14, 11.00, 1, 1, 8, '2019-09-27 15:26:59', '2019-09-27 15:27:00'),
(15, 11.00, 1, 1, 9, '2019-09-27 15:29:18', '2019-09-27 15:29:18'),
(16, 11.00, 1, 1, 10, '2019-09-27 15:30:10', '2019-09-27 15:30:10'),
(17, 11.00, 1, 1, 11, '2019-09-27 15:34:55', '2019-09-27 15:34:55'),
(18, 11.00, 1, 1, 12, '2019-09-27 15:35:26', '2019-09-27 15:35:26'),
(19, 15.00, 1, 2, 13, '2019-09-27 21:05:16', '2019-09-27 21:05:16'),
(20, 11.00, 1, 1, 14, '2019-09-27 21:16:46', '2019-09-27 21:16:46'),
(21, 15.00, 1, 2, 15, '2019-10-09 17:03:21', '2019-10-09 17:03:21'),
(22, 24.00, 1, 1, 15, '2019-10-09 17:03:21', '2019-10-09 17:03:22'),
(23, 21.00, 1, 2, 16, '2019-10-11 21:37:42', '2019-10-11 21:37:42'),
(24, 21.00, 3, 2, 17, '2019-10-11 21:51:38', '2019-10-11 21:51:38'),
(25, 21.00, 4, 2, 18, '2019-10-11 22:06:37', '2019-10-11 22:06:38'),
(26, 15.00, 2, 2, 19, '2019-10-12 17:54:37', '2019-10-12 17:54:37'),
(27, 15.00, 2, 2, 20, '2019-10-12 17:55:36', '2019-10-12 17:55:36'),
(28, 16.00, 3, 1, 21, '2019-10-12 18:08:48', '2019-10-12 18:08:49'),
(29, 11.00, 1, 1, 22, '2019-10-12 18:17:36', '2019-10-12 18:17:36'),
(30, 11.00, 1, 1, 23, '2019-10-12 18:20:21', '2019-10-12 18:20:21'),
(31, 11.00, 1, 1, 24, '2019-10-12 18:21:12', '2019-10-12 18:21:12'),
(32, 11.00, 1, 1, 25, '2019-10-12 18:24:58', '2019-10-18 11:51:26'),
(33, 11.00, 1, 1, 26, '2019-10-12 20:28:38', '2019-10-12 20:28:38'),
(34, 11.00, 5, 1, 27, '2019-10-12 20:42:27', '2019-10-12 20:42:27'),
(35, 15.00, 1, 2, 28, '2019-10-12 20:44:03', '2019-10-18 11:51:19'),
(36, 15.00, 3, 2, 29, '2019-10-15 17:00:43', '2019-10-15 17:00:43'),
(37, 22.00, 2, 1, 30, '2019-10-18 12:53:54', '2019-10-18 12:53:55'),
(38, 21.00, 1, 2, 30, '2019-10-18 12:53:55', '2019-10-18 12:53:55'),
(39, 8.00, 2, 3, 30, '2019-10-18 12:53:55', '2019-10-18 12:53:55'),
(40, 15.00, 1, 2, 31, '2019-11-29 21:22:51', '2019-11-29 21:22:51'),
(41, 21.00, 1, 2, 31, '2019-11-29 21:22:51', '2019-11-29 21:22:51'),
(42, 15.00, 2, 2, 33, '2019-11-30 01:58:07', '2019-11-30 01:58:07'),
(43, 14.00, 1, 3, 33, '2019-11-30 01:58:07', '2019-11-30 01:58:07'),
(44, 15.00, 4, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(45, 15.00, 4, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(46, 15.00, 1, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(47, 15.00, 1, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(48, 15.00, 1, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(49, 15.00, 1, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(50, 11.00, 1, 1, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(51, 8.00, 1, 3, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(52, 15.00, 1, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(53, 15.00, 1, 2, 34, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(54, 11.00, 1, 1, 35, '2019-11-30 12:44:41', '2019-11-30 12:44:41'),
(55, 11.00, 1, 1, 36, '2019-11-30 12:51:40', '2019-11-30 12:51:40'),
(56, 8.00, 1, 3, 37, '2019-11-30 14:40:07', '2019-11-30 14:40:07'),
(57, 8.00, 1, 3, 38, '2019-11-30 15:11:06', '2019-11-30 15:11:06'),
(58, 11.99, 1, 8, 39, '2019-11-30 15:14:14', '2019-11-30 15:14:14'),
(59, 4.80, 1, 6, 40, '2019-11-30 17:35:55', '2019-11-30 17:35:55'),
(60, 16.30, 1, 16, 40, '2019-11-30 17:35:55', '2019-11-30 17:35:55'),
(62, 11.99, 1, 8, 42, '2019-11-30 17:39:59', '2019-11-30 17:39:59'),
(63, 15.00, 1, 2, 44, '2019-11-30 18:06:48', '2019-11-30 18:06:48'),
(64, 4.80, 2, 6, 45, '2019-11-30 18:38:08', '2019-11-30 18:38:08'),
(65, 11.00, 2, 1, 46, '2019-11-30 18:44:42', '2019-11-30 18:44:42'),
(68, 19.00, 2, 1, 51, '2019-11-30 20:14:08', '2019-11-30 20:14:08'),
(69, 10.40, 1, 5, 51, '2019-11-30 20:14:08', '2019-11-30 20:14:08'),
(71, 10.40, 1, 5, 54, '2019-11-30 21:32:38', '2019-11-30 21:32:38'),
(72, 4.80, 2, 6, 55, '2019-11-30 22:25:22', '2019-11-30 22:25:22'),
(75, 12.99, 1, 9, 58, '2019-12-01 02:42:53', '2019-12-01 02:42:53'),
(76, 4.80, 1, 6, 59, '2019-12-01 03:33:42', '2019-12-01 03:33:42'),
(78, 13.99, 6, 10, 61, '2019-12-01 04:53:57', '2019-12-01 04:53:57'),
(79, 15.00, 1, 2, 62, '2019-12-01 06:03:41', '2019-12-01 06:03:41'),
(80, 4.80, 1, 6, 64, '2020-05-04 19:06:08', '2020-05-04 19:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `food_order_extras`
--

CREATE TABLE `food_order_extras` (
  `food_order_id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_order_extras`
--

INSERT INTO `food_order_extras` (`food_order_id`, `extra_id`, `price`) VALUES
(1, 1, 0.00),
(2, 3, 0.00),
(3, 2, 0.00),
(13, 1, 0.00),
(13, 3, 0.00),
(14, 1, 0.00),
(14, 3, 0.00),
(22, 2, 0.00),
(22, 3, 0.00),
(28, 2, 0.00),
(35, 3, 0.00),
(37, 1, 0.00),
(37, 3, 0.00),
(43, 6, 0.00),
(43, 9, 0.00),
(68, 1, 0.00),
(68, 2, 0.00),
(69, 10, 0.00),
(71, 10, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `food_reviews`
--

CREATE TABLE `food_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food_reviews`
--

INSERT INTO `food_reviews` (`id`, `review`, `rate`, `user_id`, `food_id`, `created_at`, `updated_at`) VALUES
(1, '<p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 4, 18, 1, '2019-08-30 11:37:44', '2019-08-30 11:37:44'),
(2, '<p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 4, 1, 2, '2019-10-09 12:24:37', '2019-10-09 12:24:37'),
(3, '<p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', 4, 19, 3, '2019-10-17 22:12:11', '2019-10-17 22:12:11'),
(4, 'test Food Reviews Review +12', 7, 39, 16, '2020-05-11 18:55:48', '2020-05-11 18:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(2, '<p>Our Hall</p>', 1, '2019-08-31 16:00:43', '2019-08-31 16:01:06'),
(3, '<p>Our Tables</p>', 1, '2019-10-16 18:39:42', '2019-10-16 18:39:42'),
(4, '<p><span style=\"color: rgb(33, 37, 41);\">Our Team</span><br></p>', 2, '2019-10-16 18:40:20', '2019-10-16 18:40:20'),
(5, '<p><span style=\"color: rgb(33, 37, 41);\">Our Hall</span><br></p>', 2, '2019-10-16 18:40:38', '2019-10-16 18:40:38'),
(6, '<p><span style=\"color: rgb(33, 37, 41);\">Our Tables</span><br></p>', 2, '2019-10-16 18:40:56', '2019-10-16 18:40:56'),
(7, '<p><span style=\"color: rgb(33, 37, 41);\">Our Hall</span><br></p>', 3, '2019-10-16 18:41:41', '2019-10-16 18:41:41'),
(8, '<p><span style=\"color: rgb(33, 37, 41);\">Our Team</span><br></p>', 3, '2019-10-16 18:41:56', '2019-10-16 18:41:56'),
(9, '<p><span style=\"color: rgb(33, 37, 41);\">Our Tables</span><br></p>', 3, '2019-10-16 18:42:12', '2019-10-16 18:42:12'),
(10, '<p><span style=\"color: rgb(33, 37, 41);\">Our Hall</span><br></p>', 4, '2019-10-16 18:42:24', '2019-10-16 18:42:24'),
(11, '<p><span style=\"color: rgb(33, 37, 41);\">Our Teal</span><br></p>', 4, '2019-10-16 18:42:38', '2019-10-16 18:42:38');
INSERT INTO `galleries` (`id`, `description`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(12, '<p><img src=\"data:image/jpeg;base64,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', 1, '2019-10-22 17:27:00', '2019-10-22 17:27:00');
INSERT INTO `galleries` (`id`, `description`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(13, 'galleires Description +12', 4, '2020-05-11 18:33:13', '2020-05-11 18:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(17, 'App\\Models\\User', 7, 'avatar', 'type3 - Copie', 'type3---Copie.jpg', 'image/jpeg', 'public', 93699, '[]', '{\"uuid\":\"f23837ec-ec63-4a35-b9ca-4a2da1a136fa\",\"custom_headers\":[],\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2018-08-06 22:03:06', '2018-08-06 22:03:06'),
(32, 'App\\Models\\Upload', 18, 'avatar', 'user0', 'user0.jpg', 'image/jpeg', 'public', 27946, '[]', '{\"uuid\":\"f090bd7d-1e27-4832-8355-b9dd45c9e9ca\",\"custom_headers\":[],\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2019-08-27 14:58:03', '2019-08-27 14:58:04'),
(34, 'App\\Models\\Upload', 19, 'app_logo', 'ic_launcher', 'ic_launcher.png', 'image/png', 'public', 18944, '[]', '{\"uuid\":\"020a2dd4-4277-425a-b450-426663f52633\",\"custom_headers\":[],\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2019-08-27 14:59:08', '2019-08-27 14:59:09'),
(35, 'App\\Models\\Upload', 20, 'image', 'food3', 'food3.jpg', 'image/jpeg', 'public', 129114, '[]', '{\"uuid\":\"26337c68-3ba4-489d-b417-42f5617fbe10\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2019-08-29 21:54:21', '2019-08-29 21:54:21'),
(37, 'App\\Models\\Upload', 21, 'image', 'food5', 'food5.jpg', 'image/jpeg', 'public', 95713, '[]', '{\"uuid\":\"d6d948be-fb90-43bc-840e-fb0e1af2d253\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2019-08-29 22:32:01', '2019-08-29 22:32:02'),
(39, 'App\\Models\\Upload', 22, 'image', 'food0', 'food0.jpg', 'image/jpeg', 'public', 102282, '[]', '{\"uuid\":\"6131cae4-e0c1-495e-9c09-34ca3ce469f6\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2019-08-29 22:42:48', '2019-08-29 22:42:49'),
(42, 'App\\Models\\Upload', 23, 'image', 'food1', 'food1.jpg', 'image/jpeg', 'public', 138202, '[]', '{\"uuid\":\"f678c87b-5583-4a1c-bdec-4fbde1f3bdca\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2019-08-30 11:07:13', '2019-08-30 11:07:14'),
(44, 'App\\Models\\Upload', 24, 'image', 'food5', 'food5.jpg', 'image/jpeg', 'public', 95713, '[]', '{\"uuid\":\"8e79b31c-1f20-4d30-abee-30627dd707ea\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 42, '2019-08-30 11:07:36', '2019-08-30 11:07:36'),
(48, 'App\\Models\\Food', 1, 'image', 'food1', 'food1.jpg', 'image/jpeg', 'public', 138202, '[]', '{\"uuid\":\"f678c87b-5583-4a1c-bdec-4fbde1f3bdca\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2019-08-30 11:21:43', '2019-08-30 11:21:43'),
(52, 'App\\Models\\Upload', 25, 'image', 'food2', 'food2.jpg', 'image/jpeg', 'public', 89539, '[]', '{\"uuid\":\"02a2bd26-5f72-4089-a87a-2d0c1cad4e35\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 50, '2019-08-30 11:41:19', '2019-08-30 11:41:20'),
(54, 'App\\Models\\Food', 2, 'image', 'food2', 'food2.jpg', 'image/jpeg', 'public', 89539, '[]', '{\"uuid\":\"02a2bd26-5f72-4089-a87a-2d0c1cad4e35\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 52, '2019-08-31 12:03:37', '2019-08-31 12:03:37'),
(57, 'App\\Models\\Upload', 26, 'avatar', 'user1', 'user1.jpg', 'image/jpeg', 'public', 28974, '[]', '{\"uuid\":\"c0a791ea-33ed-4002-ac7d-267e08d740da\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 55, '2019-09-01 10:47:09', '2019-09-01 10:47:10'),
(59, 'App\\Models\\NotificationType', 1, 'image', 'food1', 'food1.jpg', 'image/jpeg', 'public', 138202, '[]', '{\"uuid\":\"f678c87b-5583-4a1c-bdec-4fbde1f3bdca\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 57, '2019-09-04 13:06:14', '2019-09-04 13:06:14'),
(60, 'App\\Models\\NotificationType', 2, 'image', 'food0', 'food0.jpg', 'image/jpeg', 'public', 102282, '[]', '{\"uuid\":\"6131cae4-e0c1-495e-9c09-34ca3ce469f6\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 58, '2019-09-04 13:06:36', '2019-09-04 13:06:36'),
(61, 'App\\Models\\NotificationType', 3, 'image', 'food2', 'food2.jpg', 'image/jpeg', 'public', 89539, '[]', '{\"uuid\":\"02a2bd26-5f72-4089-a87a-2d0c1cad4e35\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 59, '2019-09-04 13:07:10', '2019-09-04 13:07:10'),
(65, 'App\\Models\\User', 19, 'avatar', 'api', 'api.png', 'image/png', 'public', 796, '[]', '{\"uuid\":\"$2y$10$MhJMEFqv6leUxN7oOApXHuUStBVmAbec.it7g1HRt63G7xdNwmmRK\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 63, '2019-10-12 21:31:27', '2019-10-12 21:31:28'),
(66, 'App\\Models\\User', 20, 'avatar', 'api', 'api.png', 'image/png', 'public', 1208, '[]', '{\"uuid\":\"$2y$10$dc7KCWO\\/WQfMEs\\/ulB7ycu\\/rjNGHd2li8rEw5O8bJL1KWAqJE9g0m\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 64, '2019-10-15 16:55:40', '2019-10-15 16:55:42'),
(67, 'App\\Models\\User', 18, 'avatar', 'user1', 'user1.jpg', 'image/jpeg', 'public', 28974, '[]', '{\"uuid\":\"c0a791ea-33ed-4002-ac7d-267e08d740da\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 65, '2019-10-16 18:32:09', '2019-10-16 18:32:09'),
(68, 'App\\Models\\Upload', 27, 'image', 'restaurant-3597677_1280', 'restaurant-3597677_1280.jpg', 'image/jpeg', 'public', 369963, '[]', '{\"uuid\":\"76a05190-0d7d-4b24-9100-ff78e0aa04dc\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 66, '2019-10-16 18:34:03', '2019-10-16 18:34:04'),
(69, 'App\\Models\\Restaurant', 2, 'image', 'restaurant-3597677_1280', 'restaurant-3597677_1280.jpg', 'image/jpeg', 'public', 369963, '[]', '{\"uuid\":\"76a05190-0d7d-4b24-9100-ff78e0aa04dc\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 67, '2019-10-16 18:34:20', '2019-10-16 18:34:20'),
(70, 'App\\Models\\Upload', 28, 'image', 'restaurant-2649620_1280', 'restaurant-2649620_1280.jpg', 'image/jpeg', 'public', 441524, '[]', '{\"uuid\":\"657d6464-130a-4805-aa97-d1b06f5809f5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 68, '2019-10-16 18:35:31', '2019-10-16 18:35:32'),
(71, 'App\\Models\\Restaurant', 1, 'image', 'restaurant-2649620_1280', 'restaurant-2649620_1280.jpg', 'image/jpeg', 'public', 441524, '[]', '{\"uuid\":\"657d6464-130a-4805-aa97-d1b06f5809f5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 69, '2019-10-16 18:35:34', '2019-10-16 18:35:34'),
(72, 'App\\Models\\Upload', 29, 'image', 'restaurant-449952_1280', 'restaurant-449952_1280.jpg', 'image/jpeg', 'public', 289736, '[]', '{\"uuid\":\"0a6b49a6-154a-407e-a864-42c22dcf751b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2019-10-16 18:36:56', '2019-10-16 18:36:57'),
(73, 'App\\Models\\Restaurant', 3, 'image', 'restaurant-449952_1280', 'restaurant-449952_1280.jpg', 'image/jpeg', 'public', 289736, '[]', '{\"uuid\":\"0a6b49a6-154a-407e-a864-42c22dcf751b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 71, '2019-10-16 18:37:18', '2019-10-16 18:37:18'),
(74, 'App\\Models\\Upload', 30, 'image', 'restaurant-1837150_1920', 'restaurant-1837150_1920.jpg', 'image/jpeg', 'public', 540709, '[]', '{\"uuid\":\"05801bad-536b-47cc-85db-cbd391fd5eab\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 72, '2019-10-16 18:37:57', '2019-10-16 18:37:58'),
(75, 'App\\Models\\Restaurant', 4, 'image', 'restaurant-1837150_1920', 'restaurant-1837150_1920.jpg', 'image/jpeg', 'public', 540709, '[]', '{\"uuid\":\"05801bad-536b-47cc-85db-cbd391fd5eab\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 73, '2019-10-16 18:38:18', '2019-10-16 18:38:18'),
(77, 'App\\Models\\Gallery', 2, 'image', 'restaurant-2649620_1280', 'restaurant-2649620_1280.jpg', 'image/jpeg', 'public', 441524, '[]', '{\"uuid\":\"657d6464-130a-4805-aa97-d1b06f5809f5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 75, '2019-10-16 18:39:07', '2019-10-16 18:39:07'),
(78, 'App\\Models\\Gallery', 3, 'image', 'restaurant-3597677_1280', 'restaurant-3597677_1280.jpg', 'image/jpeg', 'public', 369963, '[]', '{\"uuid\":\"76a05190-0d7d-4b24-9100-ff78e0aa04dc\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 76, '2019-10-16 18:39:42', '2019-10-16 18:39:42'),
(79, 'App\\Models\\Gallery', 4, 'image', 'restaurant-1837150_1920', 'restaurant-1837150_1920.jpg', 'image/jpeg', 'public', 540709, '[]', '{\"uuid\":\"05801bad-536b-47cc-85db-cbd391fd5eab\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 77, '2019-10-16 18:40:20', '2019-10-16 18:40:20'),
(80, 'App\\Models\\Gallery', 5, 'image', 'restaurant-2649620_1280', 'restaurant-2649620_1280.jpg', 'image/jpeg', 'public', 441524, '[]', '{\"uuid\":\"657d6464-130a-4805-aa97-d1b06f5809f5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 78, '2019-10-16 18:40:38', '2019-10-16 18:40:38'),
(81, 'App\\Models\\Gallery', 6, 'image', 'restaurant-3597677_1280', 'restaurant-3597677_1280.jpg', 'image/jpeg', 'public', 369963, '[]', '{\"uuid\":\"76a05190-0d7d-4b24-9100-ff78e0aa04dc\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 79, '2019-10-16 18:40:56', '2019-10-16 18:40:56'),
(82, 'App\\Models\\Gallery', 7, 'image', 'restaurant-1837150_1920', 'restaurant-1837150_1920.jpg', 'image/jpeg', 'public', 540709, '[]', '{\"uuid\":\"05801bad-536b-47cc-85db-cbd391fd5eab\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 80, '2019-10-16 18:41:41', '2019-10-16 18:41:41'),
(83, 'App\\Models\\Gallery', 8, 'image', 'restaurant-449952_1280', 'restaurant-449952_1280.jpg', 'image/jpeg', 'public', 289736, '[]', '{\"uuid\":\"0a6b49a6-154a-407e-a864-42c22dcf751b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 81, '2019-10-16 18:41:56', '2019-10-16 18:41:56'),
(84, 'App\\Models\\Gallery', 9, 'image', 'restaurant-3597677_1280', 'restaurant-3597677_1280.jpg', 'image/jpeg', 'public', 369963, '[]', '{\"uuid\":\"76a05190-0d7d-4b24-9100-ff78e0aa04dc\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 82, '2019-10-16 18:42:12', '2019-10-16 18:42:12'),
(85, 'App\\Models\\Gallery', 10, 'image', 'restaurant-3597677_1280', 'restaurant-3597677_1280.jpg', 'image/jpeg', 'public', 369963, '[]', '{\"uuid\":\"76a05190-0d7d-4b24-9100-ff78e0aa04dc\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 83, '2019-10-16 18:42:24', '2019-10-16 18:42:24'),
(86, 'App\\Models\\Gallery', 11, 'image', 'restaurant-449952_1280', 'restaurant-449952_1280.jpg', 'image/jpeg', 'public', 289736, '[]', '{\"uuid\":\"0a6b49a6-154a-407e-a864-42c22dcf751b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2019-10-16 18:42:38', '2019-10-16 18:42:38'),
(87, 'App\\Models\\Upload', 31, 'image', 'extra1', 'extra1.jpg', 'image/jpeg', 'public', 7578, '[]', '{\"uuid\":\"2dedc2c0-a47b-4bc6-a9dd-c36f41d8949b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 85, '2019-10-16 18:49:08', '2019-10-16 18:49:08'),
(88, 'App\\Models\\Extra', 2, 'image', 'extra1', 'extra1.jpg', 'image/jpeg', 'public', 7578, '[]', '{\"uuid\":\"2dedc2c0-a47b-4bc6-a9dd-c36f41d8949b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2019-10-16 18:49:15', '2019-10-16 18:49:15'),
(89, 'App\\Models\\Upload', 32, 'image', 'extra3', 'extra3.jpg', 'image/jpeg', 'public', 19323, '[]', '{\"uuid\":\"09f3a00a-d451-46d0-b200-f33fb09fcdf5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 87, '2019-10-16 18:49:39', '2019-10-16 18:49:40'),
(90, 'App\\Models\\Extra', 1, 'image', 'extra3', 'extra3.jpg', 'image/jpeg', 'public', 19323, '[]', '{\"uuid\":\"09f3a00a-d451-46d0-b200-f33fb09fcdf5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 88, '2019-10-16 18:49:46', '2019-10-16 18:49:46'),
(91, 'App\\Models\\Upload', 33, 'image', 'extra5', 'extra5.jpg', 'image/jpeg', 'public', 17578, '[]', '{\"uuid\":\"de3dbcd2-cbef-44ce-a63d-acdeba07f8db\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 89, '2019-10-16 18:50:11', '2019-10-16 18:50:13'),
(92, 'App\\Models\\Extra', 3, 'image', 'extra5', 'extra5.jpg', 'image/jpeg', 'public', 17578, '[]', '{\"uuid\":\"de3dbcd2-cbef-44ce-a63d-acdeba07f8db\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2019-10-16 18:50:16', '2019-10-16 18:50:16'),
(93, 'App\\Models\\Upload', 34, 'image', 'extra4', 'extra4.jpg', 'image/jpeg', 'public', 11839, '[]', '{\"uuid\":\"06a22ca5-b0d0-4037-84b8-de56544b5603\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 91, '2019-10-16 18:50:34', '2019-10-16 18:50:34'),
(95, 'App\\Models\\Upload', 35, 'image', 'margherita-pizza-993274_1280', 'margherita-pizza-993274_1280.jpg', 'image/jpeg', 'public', 237678, '[]', '{\"uuid\":\"793eed7b-c814-441c-9bed-05f325a3c40f\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 93, '2019-10-17 22:04:25', '2019-10-17 22:04:27'),
(96, 'App\\Models\\Food', 3, 'image', 'margherita-pizza-993274_1280', 'margherita-pizza-993274_1280.jpg', 'image/jpeg', 'public', 237678, '[]', '{\"uuid\":\"793eed7b-c814-441c-9bed-05f325a3c40f\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 94, '2019-10-17 22:06:52', '2019-10-17 22:06:52'),
(98, 'App\\Models\\Upload', 36, 'image', 'pizza-2000615_1280', 'pizza-2000615_1280.jpg', 'image/jpeg', 'public', 335428, '[]', '{\"uuid\":\"a261347a-3dfa-4d4d-86e9-85bd442a2b50\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2019-10-18 09:09:45', '2019-10-18 09:09:47'),
(100, 'App\\Models\\Upload', 37, 'image', 'pizza-2802332_1280', 'pizza-2802332_1280.jpg', 'image/jpeg', 'public', 450717, '[]', '{\"uuid\":\"fe38c3e7-6d6f-4b53-94aa-b1ebe5970854\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2019-10-18 09:14:17', '2019-10-18 09:14:18'),
(101, 'App\\Models\\Food', 5, 'image', 'pizza-2802332_1280', 'pizza-2802332_1280.jpg', 'image/jpeg', 'public', 450717, '[]', '{\"uuid\":\"fe38c3e7-6d6f-4b53-94aa-b1ebe5970854\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 99, '2019-10-18 09:15:19', '2019-10-18 09:15:19'),
(102, 'App\\Models\\Upload', 38, 'image', 'pizza-1081543_1280', 'pizza-1081543_1280.jpg', 'image/jpeg', 'public', 175543, '[]', '{\"uuid\":\"6b658af2-efff-40d0-ba94-58a545fcade7\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 100, '2019-10-18 09:15:35', '2019-10-18 09:15:35'),
(103, 'App\\Models\\Food', 6, 'image', 'pizza-1081543_1280', 'pizza-1081543_1280.jpg', 'image/jpeg', 'public', 175543, '[]', '{\"uuid\":\"6b658af2-efff-40d0-ba94-58a545fcade7\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 101, '2019-10-18 09:16:17', '2019-10-18 09:16:17'),
(104, 'App\\Models\\Upload', 39, 'image', 'pasta-712664_1280', 'pasta-712664_1280.jpg', 'image/jpeg', 'public', 261150, '[]', '{\"uuid\":\"9120de78-3d31-4934-9bdc-5199baee264d\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 102, '2019-10-18 09:19:19', '2019-10-18 09:19:20'),
(105, 'App\\Models\\Food', 7, 'image', 'pasta-712664_1280', 'pasta-712664_1280.jpg', 'image/jpeg', 'public', 261150, '[]', '{\"uuid\":\"9120de78-3d31-4934-9bdc-5199baee264d\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 103, '2019-10-18 09:19:33', '2019-10-18 09:19:33'),
(106, 'App\\Models\\Upload', 40, 'image', 'spaghetti-709337_1280', 'spaghetti-709337_1280.jpg', 'image/jpeg', 'public', 220613, '[]', '{\"uuid\":\"86e07703-c20b-4986-a401-c03f82203264\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2019-10-18 09:35:16', '2019-10-18 09:35:17'),
(107, 'App\\Models\\Food', 8, 'image', 'spaghetti-709337_1280', 'spaghetti-709337_1280.jpg', 'image/jpeg', 'public', 220613, '[]', '{\"uuid\":\"86e07703-c20b-4986-a401-c03f82203264\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 105, '2019-10-18 09:36:17', '2019-10-18 09:36:17'),
(108, 'App\\Models\\Upload', 41, 'image', 'spaghetti-3547078_1280', 'spaghetti-3547078_1280.jpg', 'image/jpeg', 'public', 226745, '[]', '{\"uuid\":\"c4483eb7-f84b-4791-925c-e257bbb8cf18\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2019-10-18 09:46:58', '2019-10-18 09:46:58'),
(109, 'App\\Models\\Food', 9, 'image', 'spaghetti-3547078_1280', 'spaghetti-3547078_1280.jpg', 'image/jpeg', 'public', 226745, '[]', '{\"uuid\":\"c4483eb7-f84b-4791-925c-e257bbb8cf18\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 107, '2019-10-18 09:47:46', '2019-10-18 09:47:46'),
(110, 'App\\Models\\Upload', 42, 'image', 'pasta-329521_1280', 'pasta-329521_1280.jpg', 'image/jpeg', 'public', 195843, '[]', '{\"uuid\":\"cd5f8506-d4b6-4dd8-908e-2e1a9f5e5ef9\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2019-10-18 09:48:30', '2019-10-18 09:48:31'),
(111, 'App\\Models\\Food', 10, 'image', 'pasta-329521_1280', 'pasta-329521_1280.jpg', 'image/jpeg', 'public', 195843, '[]', '{\"uuid\":\"cd5f8506-d4b6-4dd8-908e-2e1a9f5e5ef9\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 109, '2019-10-18 09:49:08', '2019-10-18 09:49:08'),
(112, 'App\\Models\\Upload', 43, 'image', 'soup-4115245_1280', 'soup-4115245_1280.jpg', 'image/jpeg', 'public', 222194, '[]', '{\"uuid\":\"6d450cd5-b522-4b0a-8925-966afc4a6872\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 110, '2019-10-18 09:51:04', '2019-10-18 09:51:04'),
(113, 'App\\Models\\Food', 11, 'image', 'soup-4115245_1280', 'soup-4115245_1280.jpg', 'image/jpeg', 'public', 222194, '[]', '{\"uuid\":\"6d450cd5-b522-4b0a-8925-966afc4a6872\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 111, '2019-10-18 09:52:28', '2019-10-18 09:52:28'),
(114, 'App\\Models\\Upload', 44, 'image', 'soup-918422_1280', 'soup-918422_1280.jpg', 'image/jpeg', 'public', 157729, '[]', '{\"uuid\":\"b7163204-acbc-41a5-adfd-df6e8c0a8f59\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 112, '2019-10-18 09:53:46', '2019-10-18 09:53:46'),
(115, 'App\\Models\\Food', 12, 'image', 'soup-918422_1280', 'soup-918422_1280.jpg', 'image/jpeg', 'public', 157729, '[]', '{\"uuid\":\"b7163204-acbc-41a5-adfd-df6e8c0a8f59\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 113, '2019-10-18 09:54:32', '2019-10-18 09:54:32'),
(116, 'App\\Models\\Upload', 45, 'image', 'soup-1503117_1280', 'soup-1503117_1280.jpg', 'image/jpeg', 'public', 240711, '[]', '{\"uuid\":\"91232db0-e160-419c-aa6b-c7705a6283d5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 114, '2019-10-18 09:56:51', '2019-10-18 09:56:51'),
(118, 'App\\Models\\Upload', 46, 'image', 'hamburger-993526_1280', 'hamburger-993526_1280.jpg', 'image/jpeg', 'public', 234359, '[]', '{\"uuid\":\"76184023-5516-4847-81e7-28e0e2b5e590\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, '2019-10-18 09:59:07', '2019-10-18 09:59:08'),
(119, 'App\\Models\\Food', 14, 'image', 'hamburger-993526_1280', 'hamburger-993526_1280.jpg', 'image/jpeg', 'public', 234359, '[]', '{\"uuid\":\"76184023-5516-4847-81e7-28e0e2b5e590\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 117, '2019-10-18 10:01:09', '2019-10-18 10:01:09'),
(120, 'App\\Models\\Upload', 47, 'image', 'hamburger-1414423_1280', 'hamburger-1414423_1280.jpg', 'image/jpeg', 'public', 295610, '[]', '{\"uuid\":\"f1fb4002-bca7-488e-b3a4-7c67e635ef21\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 118, '2019-10-18 10:48:10', '2019-10-18 10:48:10'),
(121, 'App\\Models\\Food', 15, 'image', 'hamburger-1414423_1280', 'hamburger-1414423_1280.jpg', 'image/jpeg', 'public', 295610, '[]', '{\"uuid\":\"f1fb4002-bca7-488e-b3a4-7c67e635ef21\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 119, '2019-10-18 10:49:36', '2019-10-18 10:49:36'),
(122, 'App\\Models\\Upload', 48, 'image', 'salmon-518032_1280', 'salmon-518032_1280.jpg', 'image/jpeg', 'public', 227975, '[]', '{\"uuid\":\"8e032da7-a5b7-4f6c-a02a-9a0902f81224\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 120, '2019-10-18 10:50:15', '2019-10-18 10:50:15'),
(123, 'App\\Models\\Food', 16, 'image', 'salmon-518032_1280', 'salmon-518032_1280.jpg', 'image/jpeg', 'public', 227975, '[]', '{\"uuid\":\"8e032da7-a5b7-4f6c-a02a-9a0902f81224\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, '2019-10-18 10:51:51', '2019-10-18 10:51:51'),
(124, 'App\\Models\\Upload', 49, 'image', 'extra7', 'extra7.jpg', 'image/jpeg', 'public', 10574, '[]', '{\"uuid\":\"be0393c4-d89d-4742-9d7c-a175b838c624\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 122, '2019-10-18 10:53:09', '2019-10-18 10:53:09'),
(125, 'App\\Models\\Extra', 6, 'image', 'extra7', 'extra7.jpg', 'image/jpeg', 'public', 10574, '[]', '{\"uuid\":\"be0393c4-d89d-4742-9d7c-a175b838c624\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 123, '2019-10-18 10:53:34', '2019-10-18 10:53:34'),
(126, 'App\\Models\\Extra', 7, 'image', 'extra7', 'extra7.jpg', 'image/jpeg', 'public', 10574, '[]', '{\"uuid\":\"be0393c4-d89d-4742-9d7c-a175b838c624\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 124, '2019-10-18 10:54:11', '2019-10-18 10:54:11'),
(127, 'App\\Models\\Extra', 8, 'image', 'extra7', 'extra7.jpg', 'image/jpeg', 'public', 10574, '[]', '{\"uuid\":\"be0393c4-d89d-4742-9d7c-a175b838c624\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 125, '2019-10-18 10:54:37', '2019-10-18 10:54:37'),
(128, 'App\\Models\\Upload', 50, 'image', 'apple', 'apple.svg', 'image/svg+xml', 'public', 2206, '[]', '{\"uuid\":\"d3ee0634-cb13-4184-8fd6-c9ee2d943f3b\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 126, '2019-10-18 11:01:29', '2019-10-18 11:01:29'),
(130, 'App\\Models\\Upload', 51, 'image', 'hamburguer-1', 'hamburguer-1.svg', 'image/svg+xml', 'public', 4161, '[]', '{\"uuid\":\"9f3a2ba1-50be-44f5-b01f-d0f50bc39b43\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 128, '2019-10-18 11:25:51', '2019-10-18 11:25:52'),
(132, 'App\\Models\\Upload', 52, 'image', 'milk', 'milk.svg', 'image/svg+xml', 'public', 3190, '[]', '{\"uuid\":\"99ee10c4-81a5-479e-95b1-23e7c35c9b95\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 130, '2019-10-18 11:26:48', '2019-10-18 11:26:48'),
(133, 'App\\Models\\Category', 1, 'image', 'milk', 'milk.svg', 'image/svg+xml', 'public', 3190, '[]', '{\"uuid\":\"99ee10c4-81a5-479e-95b1-23e7c35c9b95\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2019-10-18 11:26:50', '2019-10-18 11:26:50'),
(134, 'App\\Models\\Upload', 53, 'image', 'raspberry', 'raspberry.svg', 'image/svg+xml', 'public', 4987, '[]', '{\"uuid\":\"a54b4a31-ebfb-4a90-a57a-0e74d5c5b25f\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 132, '2019-10-18 11:27:16', '2019-10-18 11:27:16'),
(136, 'App\\Models\\Upload', 54, 'image', 'cupcake-1', 'cupcake-1.svg', 'image/svg+xml', 'public', 4170, '[]', '{\"uuid\":\"321342a0-5c0a-4960-a082-52d92185dc01\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 134, '2019-10-18 11:28:06', '2019-10-18 11:28:06'),
(137, 'App\\Models\\Category', 5, 'image', 'cupcake-1', 'cupcake-1.svg', 'image/svg+xml', 'public', 4170, '[]', '{\"uuid\":\"321342a0-5c0a-4960-a082-52d92185dc01\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, '2019-10-18 11:28:08', '2019-10-18 11:28:08'),
(138, 'App\\Models\\Upload', 55, 'image', 'food', 'food.svg', 'image/svg+xml', 'public', 3483, '[]', '{\"uuid\":\"b5a61bc0-5b19-4236-8be5-39320cb41f37\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 136, '2019-10-18 11:29:57', '2019-10-18 11:29:58'),
(140, 'App\\Models\\Extra', 9, 'image', 'extra3', 'extra3.jpg', 'image/jpeg', 'public', 19323, '[]', '{\"uuid\":\"09f3a00a-d451-46d0-b200-f33fb09fcdf5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 138, '2019-10-18 11:38:44', '2019-10-18 11:38:44'),
(141, 'App\\Models\\Extra', 10, 'image', 'extra3', 'extra3.jpg', 'image/jpeg', 'public', 19323, '[]', '{\"uuid\":\"09f3a00a-d451-46d0-b200-f33fb09fcdf5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 139, '2019-10-18 11:39:15', '2019-10-18 11:39:15'),
(143, 'App\\Models\\Upload', 56, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 24757, '[]', '{\"uuid\":\"EAAHXfy36ys8BAM3PAOFmRZAxwqQoXLCnZBQ9SSFi29PKs7t1MmZCWaZBOfDTJb8hM1rACizSwwgCXmI8R7wyDtRYVIejfkxjAEoxYcJj5gcP3rztQlh5fyybYlbZCd8cT6BfqPWBV7D8memSAhAGbGqAatG6AhuQMRdXVa0ce8AZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2019-10-22 17:05:38', '2019-10-22 17:05:39'),
(145, 'App\\Models\\Upload', 57, 'image', '15717615733623368546809485806768', '15717615733623368546809485806768.jpg', 'image/jpeg', 'public', 5054079, '[]', '{\"uuid\":\"612f979d-ad43-4409-ab6c-c0e1f177bc13\"}', '[]', 143, '2019-10-22 17:26:36', '2019-10-22 17:26:36'),
(146, 'App\\Models\\Gallery', 12, 'image', '15717615733623368546809485806768', '15717615733623368546809485806768.jpg', 'image/jpeg', 'public', 5054079, '[]', '{\"uuid\":\"612f979d-ad43-4409-ab6c-c0e1f177bc13\"}', '[]', 144, '2019-10-22 17:27:00', '2019-10-22 17:27:00'),
(151, 'App\\Models\\User', 22, 'avatar', 'api', 'api.png', 'image/png', 'public', 1406, '[]', '{\"uuid\":\"$2y$10$wjjkDDbRphVixuXQoUl3Le5aDbu562tPCMAfpEnDc70okGwPM24HW\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, '2019-11-30 04:45:31', '2019-11-30 04:45:32'),
(152, 'App\\Models\\User', 23, 'avatar', 'api', 'api.png', 'image/png', 'public', 1270, '[]', '{\"uuid\":\"$2y$10$QxbQ9RJZb5tb8GKJgmiZG.LrzweawaEs22xq.bR5fATN4oCZW94HW\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 150, '2019-11-30 12:35:00', '2019-11-30 12:35:01'),
(153, 'App\\Models\\User', 24, 'avatar', 'api', 'api.png', 'image/png', 'public', 1418, '[]', '{\"uuid\":\"$2y$10$tmheBc1qUzakjN\\/myk8V3ONwPbgGDuNIQmjrTSxyZ8dADCluvRwvq\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 151, '2019-11-30 17:20:33', '2019-11-30 17:20:34'),
(154, 'App\\Models\\User', 26, 'avatar', 'api', 'api.png', 'image/png', 'public', 850, '[]', '{\"uuid\":\"$2y$10$LQ0TT0LYPJvVFPqXBVTa6ehYmZ1Ra7Tlf3QGHjBorgjUC3GlX73EW\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 152, '2019-11-30 18:05:41', '2019-11-30 18:05:42'),
(155, 'App\\Models\\User', 27, 'avatar', 'api', 'api.png', 'image/png', 'public', 852, '[]', '{\"uuid\":\"$2y$10$DERGQ8qELES\\/Qm8N6NpeRefLdWnvjizkwYPIkDoLvPCU7ly7ombm2\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 153, '2019-11-30 19:13:00', '2019-11-30 19:13:00'),
(157, 'App\\Models\\User', 31, 'avatar', 'api', 'api.png', 'image/png', 'public', 1283, '[]', '{\"uuid\":\"$2y$10$\\/Yb1BOgEmO18k\\/yCtXZ7Ee1PoCYeXPYHTRwuoDsOMXRIbD7lb8isu\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 155, '2019-12-01 07:11:28', '2019-12-01 07:11:28'),
(158, 'App\\Models\\User', 32, 'avatar', 'api', 'api.png', 'image/png', 'public', 1401, '[]', '{\"uuid\":\"$2y$10$xtpmJLpnOyRhT2SmxzSgmeLfscyktVe04BAeb.ro.ioNKvVSfGGdC\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 156, '2020-05-01 18:39:48', '2020-05-01 18:39:49'),
(160, 'App\\Models\\User', 37, 'avatar', 'api', 'api.png', 'image/png', 'public', 1098, '[]', '{\"uuid\":\"$2y$10$rygZGWiAERiLzs7BiIMwve4adT1Yn0ieISLYdAgllpEwv6uwrjJu.\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 158, '2020-05-04 18:53:21', '2020-05-04 18:53:23'),
(161, 'App\\Models\\Upload', 61, 'default', 'developershub', 'developershub.jpeg', 'image/jpeg', 'public', 38406, '[]', '{\"uuid\":\"a07f1d7b-4298-4912-9f8b-c22b1d8a4de1\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 159, '2020-05-04 20:08:17', '2020-05-04 20:08:20'),
(162, 'App\\Models\\User', 38, 'avatar', 'api', 'api.png', 'image/png', 'public', 458, '[]', '{\"uuid\":\"$2y$10$A8eGlEoa08KakAdL\\/okNvukEiQPhoq8rYYjeCR\\/pwDBSHyfHu1SmO\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 160, '2020-05-06 13:22:39', '2020-05-06 13:22:40'),
(163, 'App\\Models\\User', 39, 'avatar', 'api', 'api.png', 'image/png', 'public', 458, '[]', '{\"uuid\":\"$2y$10$dx7W78JPhB2f\\/8xv0wHYceaz56X1ks6jZiE1XJWyq7fXC6TLdePnm\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 161, '2020-05-08 16:52:25', '2020-05-08 16:52:26'),
(164, 'App\\Models\\Upload', 62, 'app_logo', 'Original', 'Original.png', 'image/png', 'public', 1311860, '[]', '{\"uuid\":\"1abedf47-1ae9-441f-b07c-72b8d39a5833\"}', '[]', 162, '2020-05-10 10:46:56', '2020-05-10 10:46:56'),
(165, 'App\\Models\\User', 40, 'avatar', 'api', 'api.png', 'image/png', 'public', 1230, '[]', '{\"uuid\":\"$2y$10$5JeF6KKn6\\/I8PNCZmbMs7ezOUFvG9RvTOc\\/f.BnrKBPehcYHZI3WC\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 163, '2020-05-11 18:17:46', '2020-05-11 18:17:47'),
(166, 'App\\Models\\User', 1, 'avatar', 'user1', 'user1.jpg', 'image/jpeg', 'public', 28974, '[]', '{\"uuid\":\"c0a791ea-33ed-4002-ac7d-267e08d740da\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 164, '2020-05-11 18:22:30', '2020-05-11 18:22:30'),
(167, 'App\\Models\\Upload', 63, 'default', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"9cab410a-1db3-4136-9e17-31bae8c6cf17\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 165, '2020-05-11 19:05:35', '2020-05-11 19:05:35'),
(168, 'App\\Models\\Upload', 64, 'app_logo', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"7a5dc4e2-a9d8-401b-9fee-b237536bdd0f\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 166, '2020-05-11 19:07:12', '2020-05-11 19:07:12'),
(169, 'App\\Models\\Gallery', 13, 'image', 'extra7', 'extra7.jpg', 'image/jpeg', 'public', 10574, '[]', '{\"uuid\":\"be0393c4-d89d-4742-9d7c-a175b838c624\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 167, '2020-05-11 20:51:53', '2020-05-11 20:51:53'),
(170, 'App\\Models\\Food', 18, 'image', 'extra7', 'extra7.jpg', 'image/jpeg', 'public', 10574, '[]', '{\"uuid\":\"be0393c4-d89d-4742-9d7c-a175b838c624\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 168, '2020-05-11 20:54:12', '2020-05-11 20:54:12'),
(171, 'App\\Models\\Food', 4, 'image', 'pizza-1081543_1280', 'pizza-1081543_1280.jpg', 'image/jpeg', 'public', 175543, '[]', '{\"uuid\":\"6b658af2-efff-40d0-ba94-58a545fcade7\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 169, '2020-05-11 20:54:35', '2020-05-11 20:54:35'),
(172, 'App\\Models\\Category', 3, 'image', 'cupcake-1', 'cupcake-1.svg', 'image/svg+xml', 'public', 4170, '[]', '{\"uuid\":\"321342a0-5c0a-4960-a082-52d92185dc01\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 170, '2020-05-11 20:56:59', '2020-05-11 20:56:59'),
(173, 'App\\Models\\Extra', 13, 'image', 'soup-4115245_1280', 'soup-4115245_1280.jpg', 'image/jpeg', 'public', 222194, '[]', '{\"uuid\":\"6d450cd5-b522-4b0a-8925-966afc4a6872\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2020-05-11 20:58:46', '2020-05-11 20:58:46'),
(174, 'App\\Models\\NotificationType', 5, 'image', 'hamburguer-1', 'hamburguer-1.svg', 'image/svg+xml', 'public', 4161, '[]', '{\"uuid\":\"9f3a2ba1-50be-44f5-b01f-d0f50bc39b43\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 172, '2020-05-11 21:02:20', '2020-05-11 21:02:20'),
(175, 'App\\Models\\NotificationType', 4, 'image', 'pasta-329521_1280', 'pasta-329521_1280.jpg', 'image/jpeg', 'public', 195843, '[]', '{\"uuid\":\"cd5f8506-d4b6-4dd8-908e-2e1a9f5e5ef9\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2020-05-11 21:02:36', '2020-05-11 21:02:36'),
(176, 'App\\Models\\User', 21, 'avatar', 'user1', 'user1.jpg', 'image/jpeg', 'public', 28974, '[]', '{\"uuid\":\"c0a791ea-33ed-4002-ac7d-267e08d740da\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 174, '2020-05-11 21:12:05', '2020-05-11 21:12:05'),
(177, 'App\\Models\\Upload', 66, 'app_logo', 'Original', 'Original.png', 'image/png', 'public', 1311860, '[]', '{\"uuid\":\"4a3fc366-dee4-4249-bcd2-81798c2cab75\"}', '[]', 175, '2020-05-11 23:06:32', '2020-05-11 23:06:32'),
(178, 'App\\Models\\Upload', 69, 'image', 'Original', 'Original.png', 'image/png', 'public', 1311860, '[]', '{\"uuid\":\"51095847-916c-40d9-95c9-e4955af90f33\"}', '[]', 176, '2020-05-11 23:18:26', '2020-05-11 23:18:26'),
(181, 'App\\Models\\Upload', 70, 'image', 'Chat Box', 'Chat-Box.svg', 'image/svg+xml', 'public', 679, '[]', '{\"uuid\":\"df18a935-193a-4f64-a7a2-1161538923b2\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 179, '2020-05-12 15:40:18', '2020-05-12 15:40:19'),
(185, 'App\\Models\\Upload', 72, 'image', 'Chat Box', 'Chat-Box.svg', 'image/svg+xml', 'public', 679, '[]', '{\"uuid\":\"d6fb9a9d-8907-4d2d-98f0-4000d0642ae4\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 183, '2020-05-12 15:47:25', '2020-05-12 15:47:26'),
(186, 'App\\Models\\Upload', 73, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 184, '2020-05-12 15:49:59', '2020-05-12 15:50:00'),
(188, 'App\\Models\\Restaurant', 5, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 186, '2020-05-12 15:57:34', '2020-05-12 15:57:34'),
(189, 'App\\Models\\Restaurant', 5, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 187, '2020-05-12 15:58:16', '2020-05-12 15:58:16'),
(190, 'App\\Models\\Restaurant', 5, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 188, '2020-05-12 15:59:10', '2020-05-12 15:59:10'),
(191, 'App\\Models\\Restaurant', 5, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 189, '2020-05-12 15:59:35', '2020-05-12 15:59:35'),
(192, 'App\\Models\\Restaurant', 5, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 190, '2020-05-12 16:02:34', '2020-05-12 16:02:34'),
(193, 'App\\Models\\Restaurant', 5, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 191, '2020-05-12 16:03:04', '2020-05-12 16:03:04'),
(194, 'App\\Models\\Restaurant', 14, 'image', 'soup-1503117_1280', 'soup-1503117_1280.jpg', 'image/jpeg', 'public', 240711, '[]', '{\"uuid\":\"91232db0-e160-419c-aa6b-c7705a6283d5\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 192, '2020-05-12 16:07:36', '2020-05-12 16:07:36'),
(196, 'App\\Models\\Category', 10, 'image', '3d_abstract_sound_of_green-1440x900', '3d_abstract_sound_of_green-1440x900.jpg', 'image/jpeg', 'public', 261470, '[]', '{\"uuid\":\"036707cd-f7a9-41e8-90a2-fa7f85ee23c8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 193, '2020-05-12 16:43:25', '2020-05-12 16:43:25'),
(197, 'App\\Models\\Upload', 74, 'image', 'Original', 'Original.png', 'image/png', 'public', 1311860, '[]', '{\"uuid\":\"86d2fc02-601e-4e0d-8d80-cd2c88e07cdc\"}', '[]', 194, '2020-05-12 21:45:50', '2020-05-12 21:45:50'),
(198, 'App\\Models\\Category', 8, 'image', 'Original', 'Original.png', 'image/png', 'public', 1311860, '[]', '{\"uuid\":\"86d2fc02-601e-4e0d-8d80-cd2c88e07cdc\"}', '[]', 195, '2020-05-12 21:45:52', '2020-05-12 21:45:52'),
(199, 'App\\Models\\Category', 8, 'image', 'Original', 'Original.png', 'image/png', 'public', 1311860, '[]', '{\"uuid\":\"86d2fc02-601e-4e0d-8d80-cd2c88e07cdc\"}', '[]', 196, '2020-05-12 21:45:58', '2020-05-12 21:45:58'),
(200, 'App\\Models\\User', 42, 'avatar', 'api', 'api.png', 'image/png', 'public', 1098, '[]', '{\"uuid\":\"$2y$10$OdYuqgdxaKkvAn\\/CL.13wO6CIOakOIzbARGcYgMYCoNUEI3tzNAdq\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 197, '2020-05-12 21:50:29', '2020-05-12 21:50:29'),
(201, 'App\\Models\\NotificationType', 6, 'image', 'restaurant-1837150_1920', 'restaurant-1837150_1920.jpg', 'image/jpeg', 'public', 540709, '[]', '{\"uuid\":\"05801bad-536b-47cc-85db-cbd391fd5eab\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 198, '2020-05-14 20:35:27', '2020-05-14 20:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213821_create_restaurants_table', 1),
(10, '2019_08_29_213825_create_categories_table', 1),
(11, '2019_08_29_213829_create_faq_categories_table', 1),
(12, '2019_08_29_213833_create_order_statuses_table', 1),
(13, '2019_08_29_213837_create_foods_table', 1),
(14, '2019_08_29_213842_create_galleries_table', 1),
(15, '2019_08_29_213847_create_food_reviews_table', 1),
(16, '2019_08_29_213903_create_nutrition_table', 1),
(17, '2019_08_29_213907_create_extras_table', 1),
(18, '2019_08_29_213921_create_payments_table', 1),
(19, '2019_08_29_213926_create_faqs_table', 1),
(20, '2019_08_29_213940_create_restaurant_reviews_table', 1),
(21, '2019_08_30_152927_create_favorites_table', 1),
(22, '2019_08_31_111104_create_orders_table', 1),
(23, '2019_09_04_102720_create_notification_types_table', 1),
(24, '2019_09_04_103039_create_notifications_table', 1),
(25, '2019_09_04_153857_create_carts_table', 1),
(26, '2019_09_04_153858_create_favorite_extras_table', 1),
(27, '2019_09_04_153859_create_cart_extras_table', 1),
(28, '2019_09_04_153958_create_food_orders_table', 1),
(29, '2019_09_04_154957_create_food_order_extras_table', 1),
(30, '2019_09_04_163857_create_user_restaurants_table', 1),
(31, '2019_09_27_085111_add_braintree_columns', 1),
(32, '2019_09_27_085111_add_strip_columns', 1),
(33, '2019_10_22_144652_create_currencies_table', 1),
(34, '2019_11_23_144038_update_payment_table', 1),
(35, '2019_11_28_171510_add_device_token_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 42);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `notification_type_id`, `user_id`, `read`, `created_at`, `updated_at`) VALUES
(1, 'New Notification Form hola', 2, 1, 1, '2019-09-04 13:10:55', '2019-09-04 13:10:55'),
(2, 'Notification from hola', 1, 18, 0, '2019-10-09 12:45:59', '2019-10-09 12:45:59'),
(3, 'Your order #31 was received successfully', 1, 19, 0, '2019-11-29 21:22:51', '2019-11-29 21:22:51'),
(4, 'Your order #32 was received successfully', 1, 19, 0, '2019-11-29 21:22:58', '2019-11-29 21:22:58'),
(5, 'Your order #33 was received successfully', 1, 19, 0, '2019-11-30 01:58:07', '2019-11-30 01:58:07'),
(6, 'Your order #34 was received successfully', 1, 19, 0, '2019-11-30 12:15:17', '2019-11-30 12:15:17'),
(7, 'Your order #35 was received successfully', 1, 19, 0, '2019-11-30 12:44:41', '2019-11-30 12:44:41'),
(8, 'Your order #36 was received successfully', 1, 19, 0, '2019-11-30 12:51:40', '2019-11-30 12:51:40'),
(9, 'Your order #37 was received successfully', 1, 19, 0, '2019-11-30 14:40:07', '2019-11-30 14:40:07'),
(10, 'Your order #38 was received successfully', 1, 19, 0, '2019-11-30 15:11:06', '2019-11-30 15:11:06'),
(11, 'Your order #39 was received successfully', 1, 19, 0, '2019-11-30 15:14:14', '2019-11-30 15:14:14'),
(12, 'Your order #40 was received successfully', 1, 24, 0, '2019-11-30 17:35:55', '2019-11-30 17:35:55'),
(13, 'Your order #41 was received successfully', 1, 19, 0, '2019-11-30 17:39:19', '2019-11-30 17:39:19'),
(14, 'Your order #42 was received successfully', 1, 19, 0, '2019-11-30 17:39:59', '2019-11-30 17:39:59'),
(15, 'Your order #43 was received successfully', 1, 19, 0, '2019-11-30 17:40:06', '2019-11-30 17:40:06'),
(16, 'Your order #44 was received successfully', 1, 26, 0, '2019-11-30 18:06:48', '2019-11-30 18:06:48'),
(17, 'Your order #45 was received successfully', 1, 19, 0, '2019-11-30 18:38:08', '2019-11-30 18:38:08'),
(18, 'Your order #46 was received successfully', 1, 19, 0, '2019-11-30 18:44:42', '2019-11-30 18:44:42'),
(19, 'Your order #47 was received successfully', 1, 19, 0, '2019-11-30 18:45:11', '2019-11-30 18:45:11'),
(20, 'Your order #48 was received successfully', 1, 19, 0, '2019-11-30 18:50:39', '2019-11-30 18:50:39'),
(21, 'Your order #49 was received successfully', 1, 19, 0, '2019-11-30 18:50:46', '2019-11-30 18:50:46'),
(22, 'Your order #50 was received successfully', 1, 19, 0, '2019-11-30 20:06:15', '2019-11-30 20:06:15'),
(23, '', 1, 19, 0, '2019-11-30 20:10:11', '2019-11-30 20:10:11'),
(24, '', 1, 19, 0, '2019-11-30 20:11:33', '2019-11-30 20:11:33'),
(25, 'Your order #51 was received successfully', 1, 19, 0, '2019-11-30 20:14:08', '2019-11-30 20:14:08'),
(26, 'Your order #52 was received successfully', 2, 19, 0, '2019-11-30 20:14:48', '2019-11-30 20:15:34'),
(27, '', 1, 19, 0, '2019-11-30 20:55:49', '2019-11-30 20:55:49'),
(29, 'Your order #54 was received successfully', 1, 19, 0, '2019-11-30 21:32:38', '2019-11-30 21:32:38'),
(30, 'Your order #55 was received successfully', 1, 27, 0, '2019-11-30 22:25:22', '2019-11-30 22:25:22'),
(31, 'Your order #50 was Ready', 1, 19, 0, '2019-12-01 01:10:21', '2019-12-01 01:10:21'),
(32, 'Your order #56 was received successfully', 1, 19, 0, '2019-12-01 02:25:54', '2019-12-01 02:25:54'),
(33, 'Your order #57 was received successfully', 1, 19, 0, '2019-12-01 02:26:04', '2019-12-01 02:26:04'),
(34, 'Your order #58 was received successfully', 1, 19, 0, '2019-12-01 02:42:53', '2019-12-01 02:42:53'),
(35, 'Your order #59 was received successfully', 1, 19, 0, '2019-12-01 03:33:42', '2019-12-01 03:33:42'),
(36, 'Your order #56 was Delivered', 1, 19, 0, '2019-12-01 03:35:50', '2019-12-01 03:35:50'),
(37, 'Your order #60 was received successfully', 1, 1, 0, '2019-12-01 04:12:02', '2019-12-01 04:12:02'),
(38, 'Your order #61 was received successfully', 1, 19, 0, '2019-12-01 04:53:57', '2019-12-01 04:53:57'),
(39, 'Your order #62 was received successfully', 1, 19, 0, '2019-12-01 06:03:41', '2019-12-01 06:03:41'),
(40, 'Your order #63 was received successfully', 1, 19, 0, '2019-12-01 06:03:49', '2019-12-01 06:03:49'),
(41, 'Your order #64 was received successfully', 1, 37, 0, '2020-05-04 19:06:08', '2020-05-04 19:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Order Done', '2019-09-04 13:06:13', '2019-09-04 13:06:13'),
(2, 'Payment Done', '2019-09-04 13:06:35', '2019-09-04 13:06:35'),
(3, 'New Foods', '2019-09-04 13:07:10', '2019-09-04 13:07:10'),
(4, 'test Settings', '2020-05-11 19:12:18', '2020-05-11 19:12:18'),
(5, 'test Settings', '2020-05-11 21:02:20', '2020-05-11 21:02:20'),
(6, 'login', '2020-05-14 20:35:27', '2020-05-14 20:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition`
--

CREATE TABLE `nutrition` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `food_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nutrition`
--

INSERT INTO `nutrition` (`id`, `name`, `quantity`, `food_id`, `created_at`, `updated_at`) VALUES
(2, 'Proteins', 20, 2, '2019-10-09 12:26:28', '2019-10-09 12:26:28'),
(3, 'Lipide', 63, 3, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(4, 'Proteins', 100, 3, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(5, 'Sugar', 14, 3, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(6, 'Sugar', 100, 2, '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(7, 'Proteins', 20, 5, '2019-10-09 12:26:28', '2019-10-09 12:26:28'),
(8, 'Lipide', 63, 5, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(9, 'Proteins', 100, 5, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(10, 'Sugar', 14, 9, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(11, 'Sugar', 100, 7, '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(13, 'Lipide', 63, 16, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(14, 'Proteins', 100, 7, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(17, 'Proteins', 20, 9, '2019-10-09 12:26:28', '2019-10-09 12:26:28'),
(18, 'Lipide', 63, 12, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(19, 'Proteins', 100, 6, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(20, 'Sugar', 14, 3, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(21, 'Sugar', 100, 2, '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(22, 'Proteins', 20, 12, '2019-10-09 12:26:28', '2019-10-09 12:26:28'),
(23, 'Lipide', 63, 10, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(24, 'Proteins', 100, 10, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(25, 'Sugar', 14, 6, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(26, 'Sugar', 100, 3, '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(27, 'Proteins', 20, 3, '2019-10-09 12:26:28', '2019-10-09 12:26:28'),
(28, 'Lipide', 63, 4, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(29, 'Proteins', 100, 12, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(30, 'Sugar', 14, 8, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(31, 'Sugar', 100, 9, '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(33, 'Lipide', 63, 9, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(34, 'Proteins', 100, 16, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(35, 'Sugar', 14, 5, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(36, 'Sugar', 100, 11, '2019-08-31 09:55:28', '2019-08-31 09:55:28'),
(38, 'Lipide', 63, 10, '2019-10-17 22:10:54', '2019-10-17 22:11:31'),
(39, 'Proteins', 100, 5, '2019-10-17 22:11:06', '2019-10-17 22:11:06'),
(40, 'Sugar', 14, 16, '2019-10-17 22:11:17', '2019-10-17 22:11:17'),
(41, 'test Nutrition Name', 76, 17, '2020-05-11 18:57:00', '2020-05-11 18:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) NOT NULL DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_status_id`, `tax`, `hint`, `created_at`, `updated_at`, `payment_id`) VALUES
(1, 20, 1, 5.00, '', '2019-08-30 15:41:34', '2019-08-30 15:41:34', NULL),
(2, 19, 1, 2.00, '', '2019-08-30 15:55:37', '2019-08-30 15:55:37', NULL),
(3, 18, 1, 10.00, '', '2019-09-27 14:45:24', '2019-09-27 14:45:24', NULL),
(4, 20, 1, 10.00, '', '2019-09-27 14:57:08', '2019-09-27 14:57:08', NULL),
(5, 1, 1, 10.00, '', '2019-09-27 14:58:40', '2019-09-27 14:58:40', NULL),
(6, 1, 1, 10.00, '', '2019-09-27 15:10:23', '2019-09-27 15:10:23', NULL),
(7, 1, 1, 10.00, '', '2019-09-27 15:12:17', '2019-09-27 15:12:17', NULL),
(8, 1, 1, 10.00, '', '2019-09-27 15:26:59', '2019-09-27 15:26:59', NULL),
(9, 1, 1, 10.00, '', '2019-09-27 15:29:17', '2019-01-27 15:29:17', NULL),
(10, 1, 1, 10.00, '', '2019-09-27 15:30:10', '2019-09-27 15:30:10', NULL),
(11, 1, 1, 10.00, '', '2019-09-27 15:34:55', '2019-02-27 15:34:55', NULL),
(12, 1, 1, 10.00, '', '2019-09-27 15:35:26', '2019-09-27 15:35:26', NULL),
(13, 1, 1, 10.00, '', '2019-09-27 21:05:16', '2019-09-27 21:05:16', NULL),
(14, 1, 1, 10.00, '', '2019-09-27 21:16:46', '2019-09-27 21:16:46', NULL),
(15, 1, 1, 10.00, '', '2019-10-09 17:03:21', '2019-03-09 17:03:21', NULL),
(16, 1, 1, 10.00, '', '2019-10-11 21:37:42', '2019-10-11 21:37:42', NULL),
(17, 1, 1, 10.00, '', '2019-10-11 21:51:38', '2019-06-11 21:51:38', NULL),
(18, 1, 1, 10.00, '', '2019-10-11 22:06:37', '2019-10-11 22:06:37', NULL),
(19, 1, 1, 10.00, '', '2019-10-12 17:54:37', '2019-04-12 17:54:37', NULL),
(20, 1, 1, 10.00, '', '2019-10-12 17:55:36', '2019-10-12 17:55:36', NULL),
(21, 1, 1, 10.00, '', '2019-10-12 18:08:48', '2019-10-12 18:08:48', NULL),
(22, 1, 1, 10.00, '', '2019-10-12 18:17:36', '2019-06-12 18:17:36', NULL),
(23, 1, 1, 10.00, '', '2019-10-12 18:20:21', '2019-10-12 18:20:21', NULL),
(24, 1, 1, 10.00, '', '2019-10-12 18:21:12', '2019-10-12 18:21:12', NULL),
(25, 1, 1, 10.00, '', '2019-10-12 18:24:58', '2019-10-12 18:24:58', NULL),
(26, 1, 1, 10.00, '', '2019-10-12 20:28:38', '2019-05-12 20:28:38', NULL),
(27, 1, 1, 10.00, '', '2019-10-12 20:42:26', '2019-05-12 20:42:26', NULL),
(28, 1, 1, 10.00, '', '2019-10-12 20:44:03', '2019-10-12 20:44:03', NULL),
(29, 20, 1, 10.00, '', '2019-10-15 17:00:43', '2019-10-15 17:00:43', NULL),
(30, 1, 1, 10.00, '', '2019-10-18 12:53:54', '2019-10-18 12:53:54', NULL),
(31, 19, 1, 10.00, '', '2019-11-29 21:22:51', '2019-11-29 21:22:51', 11),
(32, 19, 1, 10.00, '', '2019-11-29 21:22:58', '2019-11-29 21:22:58', 12),
(33, 19, 1, 10.00, '', '2019-11-30 01:58:07', '2019-11-30 01:58:07', 13),
(34, 19, 1, 12.00, '', '2019-11-30 12:15:17', '2019-11-30 12:15:17', 14),
(35, 19, 1, 12.00, '', '2019-11-30 12:44:41', '2019-11-30 12:44:41', 15),
(36, 19, 1, 12.00, '', '2019-11-30 12:51:40', '2019-11-30 12:51:40', 16),
(37, 19, 1, 12.00, '', '2019-11-30 14:40:07', '2019-11-30 14:40:07', 17),
(38, 19, 1, 12.00, '', '2019-11-30 15:11:06', '2019-11-30 15:11:06', 18),
(39, 19, 1, 12.00, '', '2019-11-30 15:14:14', '2019-11-30 15:14:14', 19),
(40, 24, 1, 12.00, '', '2019-11-30 17:35:55', '2019-11-30 17:35:55', 20),
(41, 19, 1, 12.00, '', '2019-11-30 17:39:19', '2019-11-30 17:39:19', 21),
(42, 19, 1, 12.00, '', '2019-11-30 17:39:59', '2019-11-30 17:39:59', 22),
(43, 19, 1, 12.00, '', '2019-11-30 17:40:06', '2019-11-30 17:40:06', 23),
(44, 26, 1, 12.00, '', '2019-11-30 18:06:48', '2019-11-30 18:06:48', 24),
(45, 19, 1, 12.00, '', '2019-11-30 18:38:08', '2019-11-30 18:38:08', 25),
(46, 19, 1, 12.00, '', '2019-11-30 18:44:42', '2019-11-30 18:44:42', 26),
(47, 19, 1, 12.00, '', '2019-11-30 18:45:11', '2019-11-30 18:45:11', 27),
(48, 19, 1, 12.00, '', '2019-11-30 18:50:39', '2019-11-30 18:50:39', 28),
(49, 19, 1, 12.00, '', '2019-11-30 18:50:46', '2019-11-30 18:50:46', 29),
(50, 19, 3, 12.00, '', '2019-11-30 20:06:15', '2019-12-01 01:10:21', 30),
(51, 19, 1, 12.00, '', '2019-11-30 20:14:08', '2019-11-30 20:14:08', 31),
(52, 19, 1, 12.00, '', '2019-11-30 20:14:48', '2019-11-30 20:14:48', 32),
(54, 19, 1, 12.00, '', '2019-11-30 21:32:38', '2019-11-30 21:32:38', 34),
(55, 27, 1, 12.00, '', '2019-11-30 22:25:22', '2019-11-30 22:25:22', 35),
(57, 19, 1, 12.00, '', '2019-12-01 02:26:04', '2019-12-01 02:26:04', 37),
(58, 19, 1, 12.00, '', '2019-12-01 02:42:53', '2019-12-01 02:42:53', 38),
(59, 19, 1, 12.00, '', '2019-12-01 03:33:42', '2019-12-01 03:33:42', 39),
(60, 1, 1, 12.00, '', '2019-12-01 04:12:02', '2019-12-01 04:12:02', 40),
(61, 19, 1, 12.00, '', '2019-12-01 04:53:57', '2019-12-01 04:53:57', 41),
(62, 19, 1, 12.00, '', '2019-12-01 06:03:41', '2019-12-01 06:03:41', 42),
(63, 19, 1, 12.00, '', '2019-12-01 06:03:49', '2019-12-01 06:03:49', 43),
(64, 37, 1, 12.00, '', '2020-05-04 19:06:08', '2020-05-04 19:06:08', 44);

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Order Received', '2019-08-30 15:39:28', '2019-10-15 17:03:14'),
(2, 'Preparing', '2019-10-15 17:03:50', '2019-10-15 17:03:50'),
(3, 'Ready', '2019-10-15 17:04:30', '2019-10-15 17:04:30'),
(4, 'On the Way', '2019-10-15 17:04:13', '2019-10-15 17:04:13'),
(6, 'test status', '2020-05-11 19:01:22', '2020-05-11 19:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `price`, `description`, `user_id`, `created_at`, `updated_at`, `status`, `method`) VALUES
(1, 42.90, 'Michael E. Quinn Complete order #15', 1, '2019-10-09 17:03:25', '2019-10-09 17:08:36', 'Waiting for Client', 'Cash on Delivery'),
(2, 23.10, 'Michael E. Quinn Complete order #16', 1, '2019-08-11 21:37:48', '2019-10-11 21:37:48', 'Waiting for Client', 'Cash on Delivery'),
(3, 23.10, 'Michael E. Quinn Complete order #17', 1, '2019-07-11 21:51:42', '2019-10-11 21:51:42', 'Waiting for Client', 'Cash on Delivery'),
(4, 92.40, 'Complete order #18', 19, '2019-06-11 22:06:40', '2019-10-11 22:06:40', 'Waiting for Client', 'Cash on Delivery'),
(5, 12.10, 'Complete order #25', 18, '2019-05-12 18:25:01', '2019-10-12 18:25:01', 'Waiting for Client', 'Cash on Delivery'),
(6, 12.10, 'Complete order #26', 19, '2019-04-12 20:28:41', '2019-10-12 20:28:41', 'Waiting for Client', 'Cash on Delivery'),
(7, 60.50, 'Complete order #27', 20, '2019-05-12 20:42:28', '2019-10-12 20:42:28', 'Waiting for Client', 'Cash on Delivery'),
(8, 16.50, 'Complete order #28', 20, '2019-06-12 20:44:06', '2019-10-12 20:44:06', 'Waiting for Client', 'Cash on Delivery'),
(9, 49.50, 'Complete order #29', 20, '2019-08-15 17:00:45', '2019-10-15 17:00:45', 'Waiting for Client', 'Cash on Delivery'),
(10, 89.10, 'Michael E. Quinn Complete order #30', 1, '2019-10-18 12:53:55', '2019-10-18 12:53:55', 'Waiting for Client', 'Cash on Delivery'),
(11, 39.60, 'Order not paid yet', 19, '2019-11-29 21:22:51', '2019-11-29 21:22:51', 'Waiting for Client', 'Cash on Delivery'),
(12, 0.00, 'Order not paid yet', 19, '2019-11-29 21:22:58', '2019-11-29 21:22:58', 'Waiting for Client', 'Pay on Pickup'),
(13, 48.40, 'Order not paid yet', 19, '2019-11-30 01:58:07', '2019-11-30 01:58:07', 'Waiting for Client', 'Cash on Delivery'),
(14, 256.48, 'Order not paid yet', 19, '2019-11-30 12:15:17', '2019-11-30 12:15:17', 'Waiting for Client', 'Cash on Delivery'),
(15, 12.32, 'Order not paid yet', 19, '2019-11-30 12:44:41', '2019-11-30 12:44:41', 'Waiting for Client', 'Cash on Delivery'),
(16, 12.32, 'Order not paid yet', 19, '2019-11-30 12:51:40', '2019-11-30 12:51:40', 'Waiting for Client', 'Cash on Delivery'),
(17, 8.96, 'Order not paid yet', 19, '2019-11-30 14:40:07', '2019-11-30 14:40:07', 'Waiting for Client', 'Cash on Delivery'),
(18, 8.96, 'Order not paid yet', 19, '2019-11-30 15:11:06', '2019-11-30 15:11:06', 'Waiting for Client', 'Cash on Delivery'),
(19, 13.43, 'Order not paid yet', 19, '2019-11-30 15:14:14', '2019-11-30 15:14:14', 'Waiting for Client', 'Pay on Pickup'),
(20, 23.63, 'Order not paid yet', 24, '2019-11-30 17:35:55', '2019-11-30 17:35:55', 'Waiting for Client', 'Cash on Delivery'),
(21, 8.95, 'Order not paid yet', 19, '2019-11-30 17:39:19', '2019-11-30 17:39:19', 'Waiting for Client', 'Pay on Pickup'),
(22, 13.43, 'Order not paid yet', 19, '2019-11-30 17:39:59', '2019-11-30 17:39:59', 'Waiting for Client', 'Cash on Delivery'),
(23, 0.00, 'Order not paid yet', 19, '2019-11-30 17:40:06', '2019-11-30 17:40:06', 'Waiting for Client', 'Pay on Pickup'),
(24, 16.80, 'Order not paid yet', 26, '2019-11-30 18:06:48', '2019-11-30 18:06:48', 'Waiting for Client', 'Cash on Delivery'),
(25, 10.75, 'Order not paid yet', 19, '2019-11-30 18:38:08', '2019-11-30 18:38:08', 'Waiting for Client', 'Cash on Delivery'),
(26, 24.64, 'Order not paid yet', 19, '2019-11-30 18:44:42', '2019-11-30 18:44:42', 'Waiting for Client', 'Cash on Delivery'),
(27, 0.00, 'Order not paid yet', 19, '2019-11-30 18:45:11', '2019-11-30 18:45:11', 'Waiting for Client', 'Pay on Pickup'),
(28, 10.07, 'Order not paid yet', 19, '2019-11-30 18:50:39', '2019-11-30 18:50:39', 'Waiting for Client', 'Pay on Pickup'),
(29, 0.00, 'Order not paid yet', 19, '2019-11-30 18:50:46', '2019-11-30 18:50:46', 'Waiting for Client', 'Cash on Delivery'),
(30, 11.20, 'Order not paid yet', 19, '2019-11-30 20:06:15', '2019-11-30 20:06:15', 'Waiting for Client', 'Cash on Delivery'),
(31, 54.21, 'Order not paid yet', 19, '2019-11-30 20:14:08', '2019-11-30 20:14:08', 'Waiting for Client', 'Pay on Pickup'),
(32, 0.00, 'Order not paid yet', 19, '2019-11-30 20:14:48', '2019-11-30 20:14:48', 'Waiting for Client', 'Pay on Pickup'),
(34, 11.65, 'Order not paid yet', 19, '2019-11-30 21:32:38', '2019-11-30 21:32:38', 'Waiting for Client', 'Cash on Delivery'),
(35, 10.75, 'Order not paid yet', 27, '2019-11-30 22:25:22', '2019-11-30 22:25:22', 'Waiting for Client', 'Cash on Delivery'),
(36, 47.04, 'Order not paid yet', 19, '2019-12-01 02:25:54', '2019-12-01 02:25:54', 'Waiting for Client', 'Cash on Delivery'),
(37, 0.00, 'Order not paid yet', 19, '2019-12-01 02:26:04', '2019-12-01 02:26:04', 'Waiting for Client', 'Pay on Pickup'),
(38, 24.62, 'Order not paid yet', 19, '2019-12-01 02:42:53', '2019-12-01 02:42:53', 'Waiting for Client', 'Cash on Delivery'),
(39, 5.38, 'Order not paid yet', 19, '2019-12-01 03:33:42', '2019-12-01 03:33:42', 'Waiting for Client', 'Cash on Delivery'),
(40, 33.57, 'Order not paid yet', 1, '2019-12-01 04:12:02', '2019-12-01 04:12:02', 'Waiting for Client', 'Pay on Pickup'),
(41, 94.01, 'Order not paid yet', 19, '2019-12-01 04:53:57', '2019-12-01 04:53:57', 'Waiting for Client', 'Cash on Delivery'),
(42, 16.80, 'Order not paid yet', 19, '2019-12-01 06:03:41', '2019-12-01 06:03:41', 'Waiting for Client', 'Cash on Delivery'),
(43, 0.00, 'Order not paid yet', 19, '2019-12-01 06:03:49', '2019-12-01 06:03:49', 'Waiting for Client', 'Pay on Pickup'),
(44, 5.38, 'Order not paid yet', 37, '2020-05-04 19:06:08', '2020-05-04 19:06:08', 'Waiting for Client', 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(140, 'permissions.index', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(141, 'permissions.create', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(142, 'permissions.store', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(143, 'permissions.show', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(144, 'permissions.edit', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(145, 'permissions.update', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(146, 'permissions.destroy', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(147, 'roles.index', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(148, 'roles.create', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(149, 'roles.store', 'web', '2018-07-21 18:37:03', '2018-07-21 18:37:03', NULL),
(150, 'roles.show', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(151, 'roles.edit', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(152, 'roles.update', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(153, 'roles.destroy', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(154, 'users.index', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(155, 'users.create', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(156, 'users.store', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(157, 'users.show', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(158, 'users.edit', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(159, 'users.update', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(160, 'users.destroy', 'web', '2018-07-21 18:37:04', '2018-07-21 18:37:04', NULL),
(161, 'users.profile', 'web', '2018-07-21 18:53:20', '2018-07-21 18:53:20', NULL),
(162, 'medias.create', 'web', '2018-07-21 18:53:20', '2018-07-21 18:53:20', NULL),
(165, 'medias.delete', 'web', '2018-07-21 18:53:21', '2018-07-21 18:53:21', NULL),
(166, 'medias', 'web', '2018-07-21 18:53:21', '2018-07-21 18:53:21', NULL),
(167, 'medias.delete-all', 'web', '2018-07-21 18:53:21', '2018-07-21 18:53:21', NULL),
(168, 'dashboard', 'web', '2018-07-21 18:53:21', '2018-07-21 18:53:21', NULL),
(171, 'app-settings', 'web', '2018-07-21 18:53:21', '2018-07-21 18:53:21', NULL),
(172, 'customFields.index', 'web', '2018-07-24 18:14:03', '2018-07-24 18:14:03', NULL),
(173, 'customFields.create', 'web', '2018-07-24 18:14:03', '2018-07-24 18:14:03', NULL),
(174, 'customFields.store', 'web', '2018-07-24 18:14:03', '2018-07-24 18:14:03', NULL),
(175, 'customFields.show', 'web', '2018-07-24 18:14:03', '2018-07-24 18:14:03', NULL),
(176, 'customFields.edit', 'web', '2018-07-24 18:14:03', '2018-07-24 18:14:03', NULL),
(177, 'customFields.update', 'web', '2018-07-24 18:14:04', '2018-07-24 18:14:04', NULL),
(178, 'customFields.destroy', 'web', '2018-07-24 18:14:04', '2018-07-24 18:14:04', NULL),
(179, 'users.login-as-user', 'web', '2018-07-29 16:49:09', '2018-07-29 16:49:09', NULL),
(187, 'restaurants.index', 'web', '2019-08-27 18:14:44', '2019-08-27 18:14:44', NULL),
(188, 'restaurants.create', 'web', '2019-08-27 18:14:44', '2019-08-27 18:14:44', NULL),
(189, 'restaurants.store', 'web', '2019-08-27 18:14:44', '2019-08-27 18:14:44', NULL),
(190, 'restaurants.show', 'web', '2019-08-27 18:14:44', '2019-08-27 18:14:44', NULL),
(191, 'restaurants.edit', 'web', '2019-08-27 18:14:44', '2019-08-27 18:14:44', NULL),
(192, 'restaurants.update', 'web', '2019-08-27 18:14:44', '2019-08-27 18:14:44', NULL),
(193, 'restaurants.destroy', 'web', '2019-08-27 18:14:45', '2019-08-27 18:14:45', NULL),
(194, 'categories.index', 'web', '2019-08-29 21:53:32', '2019-08-29 21:53:32', NULL),
(195, 'categories.create', 'web', '2019-08-29 21:53:32', '2019-08-29 21:53:32', NULL),
(196, 'categories.store', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(197, 'categories.show', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(198, 'categories.edit', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(199, 'categories.update', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(200, 'categories.destroy', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(201, 'faq_categories.index', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(202, 'faq_categories.create', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(203, 'faq_categories.store', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(204, 'faq_categories.show', 'web', '2019-08-29 21:53:33', '2019-08-29 21:53:33', NULL),
(205, 'faq_categories.edit', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(206, 'faq_categories.update', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(207, 'faq_categories.destroy', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(208, 'order_statuses.index', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(209, 'order_statuses.create', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(210, 'order_statuses.store', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(211, 'order_statuses.show', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(212, 'order_statuses.edit', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(213, 'order_statuses.update', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(214, 'order_statuses.destroy', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(215, 'foods.index', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(216, 'foods.create', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(217, 'foods.store', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(218, 'foods.show', 'web', '2019-08-29 21:53:34', '2019-08-29 21:53:34', NULL),
(219, 'foods.edit', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(220, 'foods.update', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(221, 'foods.destroy', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(222, 'galleries.index', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(223, 'galleries.create', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(224, 'galleries.store', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(225, 'galleries.show', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(226, 'galleries.edit', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(227, 'galleries.update', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(228, 'galleries.destroy', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(229, 'food_reviews.index', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(230, 'food_reviews.create', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(231, 'food_reviews.store', 'web', '2019-08-29 21:53:35', '2019-08-29 21:53:35', NULL),
(232, 'food_reviews.show', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(233, 'food_reviews.edit', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(234, 'food_reviews.update', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(235, 'food_reviews.destroy', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(236, 'orders.index', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(237, 'orders.create', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(238, 'orders.store', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(239, 'orders.show', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(240, 'orders.edit', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(241, 'orders.update', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(242, 'orders.destroy', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(243, 'carts.index', 'web', '2019-08-29 21:53:36', '2019-08-29 21:53:36', NULL),
(244, 'carts.create', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(245, 'carts.store', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(246, 'carts.show', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(247, 'carts.edit', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(248, 'carts.update', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(249, 'carts.destroy', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(250, 'nutrition.index', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(251, 'nutrition.create', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(252, 'nutrition.store', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(253, 'nutrition.show', 'web', '2019-08-29 21:53:37', '2019-08-29 21:53:37', NULL),
(254, 'nutrition.edit', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(255, 'nutrition.update', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(256, 'nutrition.destroy', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(257, 'extras.index', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(258, 'extras.create', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(259, 'extras.store', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(260, 'extras.show', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(261, 'extras.edit', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(262, 'extras.update', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(263, 'extras.destroy', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(264, 'favorites.index', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(265, 'favorites.create', 'web', '2019-08-29 21:53:38', '2019-08-29 21:53:38', NULL),
(266, 'favorites.store', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(267, 'favorites.show', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(268, 'favorites.edit', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(269, 'favorites.update', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(270, 'favorites.destroy', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(271, 'notifications.index', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(272, 'notifications.create', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(273, 'notifications.store', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(274, 'notifications.show', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(275, 'notifications.edit', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(276, 'notifications.update', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(277, 'notifications.destroy', 'web', '2019-08-29 21:53:39', '2019-08-29 21:53:39', NULL),
(278, 'payments.index', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(279, 'payments.create', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(280, 'payments.store', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(281, 'payments.show', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(282, 'payments.edit', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(283, 'payments.update', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(284, 'payments.destroy', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(285, 'faqs.index', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(286, 'faqs.create', 'web', '2019-08-29 21:53:40', '2019-08-29 21:53:40', NULL),
(287, 'faqs.store', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(288, 'faqs.show', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(289, 'faqs.edit', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(290, 'faqs.update', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(291, 'faqs.destroy', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(292, 'cart_extras.index', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(293, 'cart_extras.create', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(294, 'cart_extras.store', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(295, 'cart_extras.show', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(296, 'cart_extras.edit', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(297, 'cart_extras.update', 'web', '2019-08-29 21:53:41', '2019-08-29 21:53:41', NULL),
(298, 'cart_extras.destroy', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(299, 'user_restaurants.index', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(300, 'user_restaurants.create', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(301, 'user_restaurants.store', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(302, 'user_restaurants.show', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(303, 'user_restaurants.edit', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(304, 'user_restaurants.update', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(305, 'user_restaurants.destroy', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(306, 'restaurant_reviews.index', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(307, 'restaurant_reviews.create', 'web', '2019-08-29 21:53:42', '2019-08-29 21:53:42', NULL),
(308, 'restaurant_reviews.store', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(309, 'restaurant_reviews.show', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(310, 'restaurant_reviews.edit', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(311, 'restaurant_reviews.update', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(312, 'restaurant_reviews.destroy', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(313, 'food_orders.index', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(314, 'food_orders.create', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(315, 'food_orders.store', 'web', '2019-08-29 21:53:43', '2019-08-29 21:53:43', NULL),
(316, 'food_orders.show', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(317, 'food_orders.edit', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(318, 'food_orders.update', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(319, 'food_orders.destroy', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(320, 'food_order_extras.index', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(321, 'food_order_extras.create', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(322, 'food_order_extras.store', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(323, 'food_order_extras.show', 'web', '2019-08-29 21:53:44', '2019-08-29 21:53:44', NULL),
(324, 'food_order_extras.edit', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(325, 'food_order_extras.update', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(326, 'food_order_extras.destroy', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(327, 'favorite_extras.index', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(328, 'favorite_extras.create', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(329, 'favorite_extras.store', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(330, 'favorite_extras.show', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(331, 'favorite_extras.edit', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(332, 'favorite_extras.update', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(333, 'favorite_extras.destroy', 'web', '2019-08-29 21:53:45', '2019-08-29 21:53:45', NULL),
(334, 'faqCategories.index', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(335, 'faqCategories.create', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(336, 'faqCategories.store', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(337, 'faqCategories.show', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(338, 'faqCategories.edit', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(339, 'faqCategories.update', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(340, 'faqCategories.destroy', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(341, 'orderStatuses.index', 'web', '2019-08-29 21:53:46', '2019-08-29 21:53:46', NULL),
(342, 'orderStatuses.create', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(343, 'orderStatuses.store', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(344, 'orderStatuses.show', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(345, 'orderStatuses.edit', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(346, 'orderStatuses.update', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(347, 'orderStatuses.destroy', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(348, 'foodReviews.index', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(349, 'foodReviews.create', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(350, 'foodReviews.store', 'web', '2019-08-29 21:53:47', '2019-08-29 21:53:47', NULL),
(351, 'foodReviews.show', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(352, 'foodReviews.edit', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(353, 'foodReviews.update', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(354, 'foodReviews.destroy', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(355, 'cartExtras.index', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(356, 'cartExtras.create', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(357, 'cartExtras.store', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(358, 'cartExtras.show', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(359, 'cartExtras.edit', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(360, 'cartExtras.update', 'web', '2019-08-29 21:53:48', '2019-08-29 21:53:48', NULL),
(361, 'cartExtras.destroy', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(362, 'userRestaurants.index', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(363, 'userRestaurants.create', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(364, 'userRestaurants.store', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(365, 'userRestaurants.show', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(366, 'userRestaurants.edit', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(367, 'userRestaurants.update', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(368, 'userRestaurants.destroy', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(369, 'restaurantReviews.index', 'web', '2019-08-29 21:53:49', '2019-08-29 21:53:49', NULL),
(370, 'restaurantReviews.create', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(371, 'restaurantReviews.store', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(372, 'restaurantReviews.show', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(373, 'restaurantReviews.edit', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(374, 'restaurantReviews.update', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(375, 'restaurantReviews.destroy', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(376, 'foodOrders.index', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(377, 'foodOrders.create', 'web', '2019-08-29 21:53:50', '2019-08-29 21:53:50', NULL),
(378, 'foodOrders.store', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(379, 'foodOrders.show', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(380, 'foodOrders.edit', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(381, 'foodOrders.update', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(382, 'foodOrders.destroy', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(383, 'foodOrderExtras.index', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(384, 'foodOrderExtras.create', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(385, 'foodOrderExtras.store', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(386, 'foodOrderExtras.show', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(387, 'foodOrderExtras.edit', 'web', '2019-08-29 21:53:51', '2019-08-29 21:53:51', NULL),
(388, 'foodOrderExtras.update', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(389, 'foodOrderExtras.destroy', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(390, 'favoriteExtras.index', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(391, 'favoriteExtras.create', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(392, 'favoriteExtras.store', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(393, 'favoriteExtras.show', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(394, 'favoriteExtras.edit', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(395, 'favoriteExtras.update', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(396, 'favoriteExtras.destroy', 'web', '2019-08-29 21:53:52', '2019-08-29 21:53:52', NULL),
(397, 'notification_types.index', 'web', '2019-09-04 10:41:50', '2019-09-04 10:41:50', NULL),
(398, 'notification_types.create', 'web', '2019-09-04 10:41:50', '2019-09-04 10:41:50', NULL),
(399, 'notification_types.store', 'web', '2019-09-04 10:41:50', '2019-09-04 10:41:50', NULL),
(400, 'notification_types.show', 'web', '2019-09-04 10:41:51', '2019-09-04 10:41:51', NULL),
(401, 'notification_types.edit', 'web', '2019-09-04 10:41:51', '2019-09-04 10:41:51', NULL),
(402, 'notification_types.update', 'web', '2019-09-04 10:41:51', '2019-09-04 10:41:51', NULL),
(403, 'notification_types.destroy', 'web', '2019-09-04 10:41:51', '2019-09-04 10:41:51', NULL),
(404, 'notificationTypes.index', 'web', '2019-09-04 10:41:51', '2019-09-04 10:41:51', NULL),
(405, 'notificationTypes.create', 'web', '2019-09-04 10:41:51', '2019-09-04 10:41:51', NULL),
(406, 'notificationTypes.store', 'web', '2019-09-04 10:41:52', '2019-09-04 10:41:52', NULL),
(407, 'notificationTypes.show', 'web', '2019-09-04 10:41:52', '2019-09-04 10:41:52', NULL),
(408, 'notificationTypes.edit', 'web', '2019-09-04 10:41:52', '2019-09-04 10:41:52', NULL),
(409, 'notificationTypes.update', 'web', '2019-09-04 10:41:52', '2019-09-04 10:41:52', NULL),
(410, 'notificationTypes.destroy', 'web', '2019-09-04 10:41:52', '2019-09-04 10:41:52', NULL),
(411, 'payments.byMonth', 'web', '2019-10-22 17:35:45', '2019-10-22 17:35:45', NULL),
(412, 'currencies.index', 'web', '2019-10-22 17:39:33', '2019-10-22 17:39:33', NULL),
(413, 'currencies.create', 'web', '2019-10-22 17:39:33', '2019-10-22 17:39:33', NULL),
(414, 'currencies.store', 'web', '2019-10-22 17:39:33', '2019-10-22 17:39:33', NULL),
(415, 'currencies.show', 'web', '2019-10-22 17:39:34', '2019-10-22 17:39:34', NULL),
(416, 'currencies.edit', 'web', '2019-10-22 17:39:35', '2019-10-22 17:39:35', NULL),
(417, 'currencies.update', 'web', '2019-10-22 17:39:37', '2019-10-22 17:39:37', NULL),
(418, 'currencies.destroy', 'web', '2019-10-22 17:39:37', '2019-10-22 17:39:37', NULL),
(419, 'Test.edit', 'web', '2020-05-11 19:29:51', '2020-05-11 19:29:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `created_at`, `updated_at`) VALUES
(1, 'Home Cooking Experience', 'Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '3515 Rosewood Lane Manhattan, NY 10016', '37.42796133580664', '-122.085749655962', '+136 226 5669', '+163 525 9432', '<p>Monday - Thursday 10:00AM - 11:00PM</p><p>Friday - Sunday 12:00PM - 5:00AM</p>', '2019-08-30 10:51:04', '2019-10-16 18:35:34'),
(2, 'The Lonesome Dove', 'Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2911 Corpening Drive South Lyon, MI 48178', '37.42196133580664', '-122.086749655962', '+136 226 5669', '+163 525 9432', '<p>Monday - Thursday 10:00AM - 11:00PM</p><p>Friday - Sunday 12:00PM - 5:00AM</p>', '2019-08-30 11:15:09', '2019-10-18 10:21:45'),
(3, 'Golden Palace', 'Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2572 George Avenue Mobile, AL 36608', '37.4226133580664', '-122.086759655962', '+136 226 5669', '+163 525 9432', '<p>Monday - Thursday 10:00AM - 11:00PM</p><p>Friday - Sunday 12:00PM - 5:00AM<br></p>', '2019-08-30 11:17:02', '2019-10-18 11:52:38'),
(4, 'La Perla Restaurant', '<p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum<br></p>', '360 Jody Road Chester Heights, PA 19017', '37.42196233580664', '-122.086743655962', '+136 226 5669', '+163 525 9432', '<p>Monday - Thursday 10:00AM - 11:00PM</p><p>Friday - Sunday 12:00PM - 5:00AM</p>', '2019-10-09 15:12:20', '2019-10-18 10:20:35'),
(5, 'test restaurant name ++12', 'test restaurant Description&nbsp;++12', 'test restaurant Address ++12', 'test restaurant Latitude', 'test restaurant Longitud', 'test restaurant Phone ++12', 'test restaurant Mobile ++12', 'test restaurant Information&nbsp;++12', '2020-05-11 18:24:45', '2020-05-12 16:05:05'),
(6, 'test name', '<p>test&nbsp;<span style=\"color: rgb(33, 37, 41); font-weight: 700; text-align: right; font-size: 1rem;\">Description</span><br></p>', 'asdf', 'test restaurant Latitude', 'test restaurant Longitud', '34523689', '4335355', '<p>asdfasfd</p>', '2020-05-11 20:40:55', '2020-05-11 20:40:55'),
(7, 'asf', '<p>asdf</p>', 'asfd', 'test restaurant Latitude', 'test restaurant Longitud', '+1 43', '4335355', '<p>asdf</p>', '2020-05-11 20:45:14', '2020-05-11 20:45:14'),
(8, 'asf', '<p>asdf</p>', 'asfd', 'test restaurant Latitude', 'test restaurant Longitud', '+1 43', '4335355', '<p>asdf</p>', '2020-05-11 20:46:03', '2020-05-11 20:46:03'),
(9, 'asf', '<p>asdf</p>', 'asfd', 'test restaurant Latitude', 'test restaurant Longitud', '+1 43', '4335355', '<p>asdf</p>', '2020-05-11 20:46:31', '2020-05-11 20:46:31'),
(10, 'asf', '<p>asdf</p>', 'asfd', 'test restaurant Latitude', 'test restaurant Longitud', '+1 43', '4335355', '<p>asdf</p>', '2020-05-11 20:47:56', '2020-05-11 20:47:56'),
(11, 'asf', '<p>asdf</p>', 'asfd', 'test restaurant Latitude', 'test restaurant Longitud', '+1 43', '4335355', '<p>asdf</p>', '2020-05-11 20:48:20', '2020-05-11 20:48:20'),
(12, 'asf', '<p>asdf</p>', 'asfd', 'test restaurant Latitude', 'test restaurant Longitud', '+1 43', '4335355', '<p>asdf</p>', '2020-05-11 20:48:46', '2020-05-11 20:48:46'),
(13, 'Restaurants Name ++12', '<p>Restaurants&nbsp;<span style=\"color: rgb(33, 37, 41); font-weight: 700; text-align: right;\">Description</span>++12<br></p>', 'Restaurants Address++12', 'Restaurants Latitude++12', 'Restaurants Longitude++1', 'Restaurants Phone++12', 'Restaurants Mobile++12', '<p>Restaurants&nbsp;<span style=\"color: rgb(33, 37, 41); font-weight: 700; text-align: right;\">Information</span>++12<br></p>', '2020-05-12 16:06:36', '2020-05-12 16:06:36'),
(14, 'Restaurants Name ++12', '<p>Restaurants&nbsp;<span style=\"color: rgb(33, 37, 41); font-weight: 700; text-align: right;\">Description</span>++12<br></p>', 'Restaurants Address++12', 'Restaurants Latitude++12', 'Restaurants Longitude++1', 'Restaurants Phone++12', 'Restaurants Mobile++12', '<p>Restaurants&nbsp;<span style=\"color: rgb(33, 37, 41); font-weight: 700; text-align: right;\">Information</span>++12<br></p>', '2020-05-12 16:07:36', '2020-05-12 16:07:36'),
(15, 'saddasasafasdfsdfsfdfads', '<p>saddasasafasdfsdfsfdfads</p>', 'saddasasafasdfsdfsfdfads', 'saddasasafasdfsdfsfdfads', 'saddasasafasdfsdfsfdfads', 'saddasasafasdfsdfsfdfads', 'saddasasafasdfsdfsfdfads', '<p>saddasasafasdfsdfsfdfads<br></p>', '2020-05-12 16:42:32', '2020-05-12 16:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_reviews`
--

CREATE TABLE `restaurant_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` tinyint(3) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_reviews`
--

INSERT INTO `restaurant_reviews` (`id`, `review`, `rate`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, '<p>European colonization of the Americas brought about the introduction of a large number of new ingredients</p>', 2, 18, 2, '2019-08-30 10:56:09', '2019-10-16 18:43:48'),
(2, '<p>Americas brought about the introduction of a large number of new ingredients<br></p>', 5, 1, 1, '2019-08-30 10:56:52', '2019-08-30 10:56:52'),
(5, 'Elementum nibh tellus molestie nunc non blandit. Risus nec feugiat in fermentum.', 2, 20, 4, '2019-10-16 18:45:54', '2019-10-16 18:45:54'),
(6, 'Restaurant Reviews Review +12', 7, 38, 4, '2020-05-11 18:35:35', '2020-05-11 18:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 15:37:56', '2019-09-07 21:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-07 21:41:38', '2019-09-07 21:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-07 21:41:54', '2019-09-07 21:41:54', NULL),
(5, 'creater +12', 'web', 0, '2020-05-11 19:40:07', '2020-05-11 19:40:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(187, 2),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(219, 2),
(220, 2),
(221, 2),
(222, 2),
(223, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(228, 2),
(229, 2),
(230, 2),
(231, 2),
(232, 2),
(233, 2),
(234, 2),
(235, 2),
(236, 2),
(237, 2),
(238, 2),
(239, 2),
(240, 2),
(241, 2),
(242, 2),
(243, 2),
(244, 2),
(245, 2),
(246, 2),
(247, 2),
(248, 2),
(249, 2),
(250, 2),
(251, 2),
(252, 2),
(253, 2),
(254, 2),
(255, 2),
(256, 2),
(257, 2),
(258, 2),
(259, 2),
(260, 2),
(261, 2),
(262, 2),
(263, 2),
(264, 2),
(265, 2),
(266, 2),
(267, 2),
(268, 2),
(269, 2),
(270, 2),
(271, 2),
(272, 2),
(273, 2),
(275, 2),
(276, 2),
(277, 2),
(278, 2),
(279, 2),
(280, 2),
(282, 2),
(283, 2),
(284, 2),
(285, 2),
(286, 2),
(287, 2),
(288, 2),
(289, 2),
(290, 2),
(291, 2),
(292, 2),
(293, 2),
(294, 2),
(295, 2),
(296, 2),
(297, 2),
(298, 2),
(299, 2),
(300, 2),
(301, 2),
(302, 2),
(303, 2),
(304, 2),
(305, 2),
(306, 2),
(307, 2),
(308, 2),
(309, 2),
(310, 2),
(311, 2),
(312, 2),
(313, 2),
(314, 2),
(315, 2),
(316, 2),
(317, 2),
(318, 2),
(319, 2),
(320, 2),
(321, 2),
(322, 2),
(323, 2),
(324, 2),
(325, 2),
(326, 2),
(327, 2),
(328, 2),
(329, 2),
(330, 2),
(331, 2),
(332, 2),
(333, 2),
(334, 2),
(335, 2),
(336, 2),
(337, 2),
(338, 2),
(339, 2),
(340, 2),
(341, 2),
(342, 2),
(343, 2),
(345, 2),
(346, 2),
(347, 2),
(348, 2),
(349, 2),
(350, 2),
(352, 2),
(353, 2),
(354, 2),
(355, 2),
(356, 2),
(357, 2),
(358, 2),
(359, 2),
(360, 2),
(361, 2),
(362, 2),
(363, 2),
(364, 2),
(366, 2),
(367, 2),
(368, 2),
(369, 2),
(370, 2),
(371, 2),
(372, 2),
(373, 2),
(374, 2),
(375, 2),
(376, 2),
(377, 2),
(378, 2),
(379, 2),
(380, 2),
(381, 2),
(382, 2),
(383, 2),
(384, 2),
(385, 2),
(386, 2),
(387, 2),
(388, 2),
(389, 2),
(390, 2),
(391, 2),
(392, 2),
(393, 2),
(394, 2),
(395, 2),
(396, 2),
(397, 2),
(398, 2),
(399, 2),
(401, 2),
(402, 2),
(403, 2),
(404, 2),
(405, 2),
(406, 2),
(407, 2),
(408, 2),
(409, 2),
(410, 2),
(411, 2),
(412, 2),
(413, 2),
(414, 2),
(415, 2),
(416, 2),
(417, 2),
(418, 2),
(161, 3),
(166, 3),
(187, 3),
(188, 3),
(189, 3),
(191, 3),
(192, 3),
(193, 3),
(208, 3),
(215, 3),
(216, 3),
(217, 3),
(219, 3),
(220, 3),
(221, 3),
(222, 3),
(223, 3),
(224, 3),
(226, 3),
(227, 3),
(228, 3),
(236, 3),
(240, 3),
(241, 3),
(242, 3),
(243, 3),
(250, 3),
(251, 3),
(252, 3),
(254, 3),
(255, 3),
(256, 3),
(257, 3),
(258, 3),
(259, 3),
(261, 3),
(262, 3),
(263, 3),
(264, 3),
(270, 3),
(271, 3),
(278, 3),
(285, 3),
(306, 3),
(313, 3),
(319, 3),
(341, 3),
(348, 3),
(351, 3),
(362, 3),
(363, 3),
(364, 3),
(366, 3),
(368, 3),
(369, 3),
(376, 3),
(382, 3),
(161, 4),
(166, 4),
(215, 4),
(236, 4),
(243, 4),
(264, 4),
(270, 4),
(271, 4),
(278, 4),
(285, 4),
(306, 4),
(348, 4),
(351, 4),
(369, 4);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(8, 'EAAdrdunmO4ABACSwq2flTWo19A18jMv2fUUR3euzHLXjlPz95SK3RRDxvnObL19RL59CPxaMyflX258bWYZCpbuwMyXxDMdTmzMzZA7WXZCE8ZBGXRJH1Rz87lMV5Mqfi7OMS7UIZCP0J2Txfuac2zjBrbTCc2T5XwKKqhsBoAQZDZD', '2018-08-14 14:08:36', '2018-08-14 14:08:36'),
(11, 'EAAdrdunmO4ABAAVKObZAi8zGWwmxjMUpUxfMyEC2gdjKKuqZA4SbeapUGcjKTRly9JZCki9oXDtYZC9W6mqdcO0XctKTSCzeCFSwsz8NiDv6sF4Bih31qrleTINZCE0CpOCLxVw0x5gW8sTjWk9tz0ID0AN2zDdfpbDrPw6QJiAZDZD', '2018-08-14 14:36:08', '2018-08-14 14:36:08'),
(12, 'EAAdrdunmO4ABALuBgdIeYZAuAtatPZBZAt3ZAmRBmZA3rUUcDoNHwdZAgPUks2YK46UvjrwPxTdpixLVvaeFDFzTRTdcLFKYlUDDYeqta2dyaS6oaD1zXX5IPmqNNDvw3cqm8E1YZCYv5KdK99y5j7riAgZCS3biXgye2ANWYjCsbAZDZD', '2018-08-14 14:37:04', '2018-08-14 14:37:04'),
(18, 'f090bd7d-1e27-4832-8355-b9dd45c9e9ca', '2019-08-27 14:58:03', '2019-08-27 14:58:03'),
(19, '020a2dd4-4277-425a-b450-426663f52633', '2019-08-27 14:59:08', '2019-08-27 14:59:08'),
(20, '26337c68-3ba4-489d-b417-42f5617fbe10', '2019-08-29 21:54:21', '2019-08-29 21:54:21'),
(21, 'd6d948be-fb90-43bc-840e-fb0e1af2d253', '2019-08-29 22:32:00', '2019-08-29 22:32:00'),
(22, '6131cae4-e0c1-495e-9c09-34ca3ce469f6', '2019-08-29 22:42:48', '2019-08-29 22:42:48'),
(23, 'f678c87b-5583-4a1c-bdec-4fbde1f3bdca', '2019-08-30 11:07:13', '2019-08-30 11:07:13'),
(24, '8e79b31c-1f20-4d30-abee-30627dd707ea', '2019-08-30 11:07:36', '2019-08-30 11:07:36'),
(25, '02a2bd26-5f72-4089-a87a-2d0c1cad4e35', '2019-08-30 11:41:19', '2019-08-30 11:41:19'),
(26, 'c0a791ea-33ed-4002-ac7d-267e08d740da', '2019-09-01 10:47:09', '2019-09-01 10:47:09'),
(27, '76a05190-0d7d-4b24-9100-ff78e0aa04dc', '2019-10-16 18:34:03', '2019-10-16 18:34:03'),
(28, '657d6464-130a-4805-aa97-d1b06f5809f5', '2019-10-16 18:35:31', '2019-10-16 18:35:31'),
(29, '0a6b49a6-154a-407e-a864-42c22dcf751b', '2019-10-16 18:36:56', '2019-10-16 18:36:56'),
(30, '05801bad-536b-47cc-85db-cbd391fd5eab', '2019-10-16 18:37:57', '2019-10-16 18:37:57'),
(31, '2dedc2c0-a47b-4bc6-a9dd-c36f41d8949b', '2019-10-16 18:49:08', '2019-10-16 18:49:08'),
(32, '09f3a00a-d451-46d0-b200-f33fb09fcdf5', '2019-10-16 18:49:39', '2019-10-16 18:49:39'),
(33, 'de3dbcd2-cbef-44ce-a63d-acdeba07f8db', '2019-10-16 18:50:11', '2019-10-16 18:50:11'),
(34, '06a22ca5-b0d0-4037-84b8-de56544b5603', '2019-10-16 18:50:34', '2019-10-16 18:50:34'),
(35, '793eed7b-c814-441c-9bed-05f325a3c40f', '2019-10-17 22:04:25', '2019-10-17 22:04:25'),
(36, 'a261347a-3dfa-4d4d-86e9-85bd442a2b50', '2019-10-18 09:09:45', '2019-10-18 09:09:45'),
(37, 'fe38c3e7-6d6f-4b53-94aa-b1ebe5970854', '2019-10-18 09:14:17', '2019-10-18 09:14:17'),
(38, '6b658af2-efff-40d0-ba94-58a545fcade7', '2019-10-18 09:15:35', '2019-10-18 09:15:35'),
(39, '9120de78-3d31-4934-9bdc-5199baee264d', '2019-10-18 09:19:19', '2019-10-18 09:19:19'),
(40, '86e07703-c20b-4986-a401-c03f82203264', '2019-10-18 09:35:16', '2019-10-18 09:35:16'),
(41, 'c4483eb7-f84b-4791-925c-e257bbb8cf18', '2019-10-18 09:46:58', '2019-10-18 09:46:58'),
(42, 'cd5f8506-d4b6-4dd8-908e-2e1a9f5e5ef9', '2019-10-18 09:48:30', '2019-10-18 09:48:30'),
(43, '6d450cd5-b522-4b0a-8925-966afc4a6872', '2019-10-18 09:51:04', '2019-10-18 09:51:04'),
(44, 'b7163204-acbc-41a5-adfd-df6e8c0a8f59', '2019-10-18 09:53:46', '2019-10-18 09:53:46'),
(45, '91232db0-e160-419c-aa6b-c7705a6283d5', '2019-10-18 09:56:51', '2019-10-18 09:56:51'),
(46, '76184023-5516-4847-81e7-28e0e2b5e590', '2019-10-18 09:59:07', '2019-10-18 09:59:07'),
(47, 'f1fb4002-bca7-488e-b3a4-7c67e635ef21', '2019-10-18 10:48:10', '2019-10-18 10:48:10'),
(48, '8e032da7-a5b7-4f6c-a02a-9a0902f81224', '2019-10-18 10:50:15', '2019-10-18 10:50:15'),
(49, 'be0393c4-d89d-4742-9d7c-a175b838c624', '2019-10-18 10:53:09', '2019-10-18 10:53:09'),
(50, 'd3ee0634-cb13-4184-8fd6-c9ee2d943f3b', '2019-10-18 11:01:29', '2019-10-18 11:01:29'),
(51, '9f3a2ba1-50be-44f5-b01f-d0f50bc39b43', '2019-10-18 11:25:51', '2019-10-18 11:25:51'),
(52, '99ee10c4-81a5-479e-95b1-23e7c35c9b95', '2019-10-18 11:26:48', '2019-10-18 11:26:48'),
(53, 'a54b4a31-ebfb-4a90-a57a-0e74d5c5b25f', '2019-10-18 11:27:16', '2019-10-18 11:27:16'),
(54, '321342a0-5c0a-4960-a082-52d92185dc01', '2019-10-18 11:28:06', '2019-10-18 11:28:06'),
(55, 'b5a61bc0-5b19-4236-8be5-39320cb41f37', '2019-10-18 11:29:57', '2019-10-18 11:29:57'),
(56, 'EAAHXfy36ys8BAM3PAOFmRZAxwqQoXLCnZBQ9SSFi29PKs7t1MmZCWaZBOfDTJb8hM1rACizSwwgCXmI8R7wyDtRYVIejfkxjAEoxYcJj5gcP3rztQlh5fyybYlbZCd8cT6BfqPWBV7D8memSAhAGbGqAatG6AhuQMRdXVa0ce8AZDZD', '2019-10-22 17:05:37', '2019-10-22 17:05:37'),
(57, '612f979d-ad43-4409-ab6c-c0e1f177bc13', '2019-10-22 17:26:36', '2019-10-22 17:26:36'),
(60, '44397532-421c-4d8b-adf8-be97b55bb16a', '2020-05-01 18:24:37', '2020-05-01 18:24:37'),
(61, 'a07f1d7b-4298-4912-9f8b-c22b1d8a4de1', '2020-05-04 20:08:17', '2020-05-04 20:08:17'),
(62, '1abedf47-1ae9-441f-b07c-72b8d39a5833', '2020-05-10 10:46:56', '2020-05-10 10:46:56'),
(63, '9cab410a-1db3-4136-9e17-31bae8c6cf17', '2020-05-11 19:05:34', '2020-05-11 19:05:34'),
(64, '7a5dc4e2-a9d8-401b-9fee-b237536bdd0f', '2020-05-11 19:07:11', '2020-05-11 19:07:11'),
(65, 'd14ede61-f25b-4c58-a9c0-9401426c2668', '2020-05-11 23:05:35', '2020-05-11 23:05:35'),
(66, '4a3fc366-dee4-4249-bcd2-81798c2cab75', '2020-05-11 23:06:31', '2020-05-11 23:06:31'),
(67, '836eb5a5-d748-4a9e-bb3d-93540f773d84', '2020-05-11 23:07:11', '2020-05-11 23:07:11'),
(68, 'da3a0611-b328-4ad1-b3cf-a1b1ebe037a1', '2020-05-11 23:18:11', '2020-05-11 23:18:11'),
(69, '51095847-916c-40d9-95c9-e4955af90f33', '2020-05-11 23:18:25', '2020-05-11 23:18:25'),
(70, 'df18a935-193a-4f64-a7a2-1161538923b2', '2020-05-12 15:40:18', '2020-05-12 15:40:18'),
(71, '2fd388c4-c2b9-41a2-8397-c99fb6718a21', '2020-05-12 15:43:05', '2020-05-12 15:43:05'),
(72, 'd6fb9a9d-8907-4d2d-98f0-4000d0642ae4', '2020-05-12 15:47:25', '2020-05-12 15:47:25'),
(73, '036707cd-f7a9-41e8-90a2-fa7f85ee23c8', '2020-05-12 15:49:59', '2020-05-12 15:49:59'),
(74, '86d2fc02-601e-4e0d-8d80-cd2c88e07cdc', '2020-05-12 21:45:50', '2020-05-12 21:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`, `braintree_id`, `paypal_email`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `device_token`) VALUES
(1, 'Michael E. Quinn +12', 'admin@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', 'Za3U0OwUmtoaFn1tcUqx0mZszjBkoj8NI3l6LnE1HsOHgCoCR2LbMXTlVolM', '2018-08-06 21:58:41', '2020-05-14 23:50:40', NULL, NULL, NULL, NULL, NULL, NULL, 'fdeL4DVe-hM:APA91bHroTN0DrNqwImFXM-9rnuWIrLWGNTrPqpMru51EZVWOsL4v-Fb-gv0n1zhznRTotnBuSy2D8ivYCBHupWHwb7bLlaoGScqWq0bvzOjbE69mSre5evIOev5tiZrbTGuitwa2LfW'),
(18, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', '72NBfvIGdwgDRNBiIYT0GzaTuOKiPsi8dUvi3sNLtsTYEOgb6heGejPRaAuS', '2018-08-14 16:06:28', '2019-12-01 02:30:41', NULL, NULL, NULL, NULL, NULL, NULL, 'eJLzGKy9L_8:APA91bGglkUnyHp_-p_sVzz4hY4SviP5b-cGVKfXiss9VSgEt--U3obKQLAY3vdMNWDzLVIy6GqekdsEnCx7Luboww7nbqxrsyrA3LWtEHmjodPTmzyoofao4knUNl4s99kN5gNnyaxT'),
(19, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', '3ZqFZjDGezUbRvGBY7UFpOaXODNuCg9FPOpnAn35ux1tYWI9CtInHXixlHuG', '2019-10-12 21:31:26', '2020-05-14 20:51:12', NULL, NULL, NULL, NULL, NULL, NULL, 'f5v9_vmmmUk:APA91bFBbwWqEzh5gg9jpQcqjoEYLGm6OyUbf76WfjOl7s8MTvuwpA_vtxjlnruHEkvBl_SvmkMRuyjR7fLxq_kGnj7eX9DcoiEkzVCsZJ_HoevQqS_mbUG1q82yswMa_ETL29R1JvXh'),
(20, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, '2019-10-15 16:55:39', '2019-10-16 18:31:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'kimo', 'kimo@gmail.com', '$2y$10$UhxHC0ts5dCDXtdRh5H7o.tDnxvg5/mksTqL5/gYHRiv0Z80lampu', 'lGrfllZonxdw44J98Cqv0GOteuu2a3KMI6IlcsEt2wJWj0UzNOIMyK9ZF0rP', NULL, '2019-11-29 22:25:20', '2019-11-29 22:25:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'asdasf', 'vogeto4583@topmail2.net', '$2y$10$UOJOoRg13XFEmBaqnE5G.u9VFbuCEOP6HlOvh4i1ReV.uIhFmkNwC', 'DZJ1mCiMkxQhmBqsoBTF5DxWBuzbnj3TcIPvFzuOdIKYKJAPA1MLqiiQpxd9', NULL, '2019-11-30 04:45:31', '2019-11-30 04:45:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'abdulla', '3abdalla.aero@gmail.com', '$2y$10$oWZEtMhLdehiH7/9KN5HUeGiFe4XxcgK.qyTNhjgFogv6qVHahzUK', 'ZvE36DEQ7JW1HFq8QjtJC9tTVtIsZjRbdP5omEz3ZKGznhyIwJlUYVoR0l9h', NULL, '2019-11-30 12:35:00', '2019-11-30 12:35:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'kowit', 'kowit.ks@gmail.com', '$2y$10$Bd5lHLHimthC35dt0bEl1.ofpW0j1YZonQgiWTht70AUjTFPyFBZC', 'OMi2fgnf9oIHrMwcUuzMUTlaCugRMPwAXdTUZpLWUR5hyl0NHZVn3hYyH0YP', NULL, '2019-11-30 17:20:33', '2019-11-30 17:20:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Bijoy Haldar', 'bijoy.haldar999@gmail.com', '$2y$10$lts1bpUd6AW3yBGBcAw5QefLOaG9kO5pMH2C8/I1wzO0r1HW2YJtq', '2CInf1FvzLxGQaAksYlc1woO9oXk5iQpaTgniMzLtomZ00SLiCDkpvjVjtY7', NULL, '2019-11-30 18:05:41', '2019-11-30 18:05:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'renato', 'renatokeuller@gmail.com', '$2y$10$afpFDpfqN.dKqSp6Oi0uU.NfuddK45nf3nFz14OxL6bB.qWkZz2ca', 'jr78sHRKct3Bh0kILPwN9Olj3Aw5R8BShbg4E6Lz6ASG2Hraa8C58kJ1mCPN', NULL, '2019-11-30 19:13:00', '2019-11-30 19:13:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'sdt', 'ssonu0001@gmail.com', '$2y$10$2.sMq6Jro.qvLn0MhWQqX.IAQZxHykpMPtUAlEPnzu5B2g0JhIc5a', 'r7mcTuJdsKXam4MS0SVVJVOS2eFJjClRB4Vkaq0nE20IeSkGFAg4sgP7w9ZA', NULL, '2019-12-01 07:11:27', '2019-12-01 07:11:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Salahuddin', 'abc543@gmail.com', '$2y$10$Ptv8LMqoi8X1MB4.cfB6A.Y/5oT0EeX7MtX29WZmCdrCkacUDJiUK', 'DPkRHJPKlwTYDcyBPgU1kztbFi9ffEq0vXLA3lzdwUZM1OA0H0hl2OJZyPMB', NULL, '2020-05-01 18:39:47', '2020-05-01 18:39:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'rao zubair', 'raozubair1441@gmail.com', '$2y$10$CIs8j2tloyqmj0Ac300m1OFkhUAaqRtB2lCbksId9UYP/71R78xhi', 'bB4tX8kqAFjv71zbGDrvWVR8qb6ZGTauuVAPZiic5G0hn1ZkNM8QLCcbBeXp', NULL, '2020-05-04 18:53:20', '2020-05-16 21:21:42', NULL, NULL, NULL, NULL, NULL, NULL, 'cKRnjhiK8oA:APA91bEn7Op-BHfhk-db09cEuktOsRaNl5SqQsr4plnG59BOoSqpKPPCEOGGQ_mQeL1O0Dwjc1-wk_OGHqy1fkZdvxj5CCkjMqINbB_DrdArtap4-2CUnTOf9JzIgTHRBlLLr2vZ2M-E'),
(38, 'test', 'test@gmail.com', '$2y$10$NWbdrsplM.2bki3l1zXB4./1VaThg3yr5gkVOoSb01mouZsrIQWle', 'z4zET39COTCxEnAqG5Z5YGVMPbNb6kHQzjiakrFgnNwwf8TATZsnS4ZUxsFA', NULL, '2020-05-06 13:22:38', '2020-05-06 15:45:34', NULL, NULL, NULL, NULL, NULL, NULL, 'cZEgihTg8MQ:APA91bG_5qW92T8H50f4971X-TC1sf9J4wxyzv_xFr2HdBkMiwBvbT3uH_VRRJDnvZhd6dpEyrJWJcJxGfUs6Bt5Aw2VY2_j5ZoY0PQkxJyZZe_LTBeOPGAu8rfdUWvq3MhSthM22Htx'),
(39, 'test', 'test@test.com', '$2y$10$Eph90Enfcb/t.f3RBXqpL.Q4sGLuy5sVclgusRO4XdVQquaWU3b.m', 'XM28MlpboqasQbl8WBYDE7HzfydiCXdlcElsUWneyYccrmcSHdDlV2X49oII', NULL, '2020-05-08 16:52:24', '2020-05-08 16:52:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'david', 'developer00898@gmail.com', '$2y$10$2ruIklO1IqoyCPTHm1IeeuouM3kBbTfjH27xyVUDYRN6OT4oRBb6q', 'YXlCkrZTtVf06TKn7cXunti0wmvolyCzAhjOVmUYxf8D6scwbck6HlwJPnlU', 'TrMhIYr2lfiPxZQ9OVCTA790cnEIBmlQNUlqoVt4JOiheBzjeSNxbF45vMyC', '2020-05-11 18:17:46', '2020-05-11 18:17:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Zubair Rao', 'zubair@demo.com', '$2y$10$loemWWvcOZ1dvFXMeDpdA.YKJ1E5vqaWMuMTC/CGRzAGjxuI0Dwk6', 'OXYDfVANpxNZgIEr511AdhL9OxwC7eH0lD8ioA6Eg4G6le0UQYfBRNWknpVT', 'f227lVJY4jrUE22Z6U3CTWjLot58YqgSNbYoSHGbmLkzldrFwZfYCqAYfZ8j', '2020-05-12 21:50:28', '2020-05-12 21:50:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_restaurants`
--

CREATE TABLE `user_restaurants` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_restaurants`
--

INSERT INTO `user_restaurants` (`user_id`, `restaurant_id`) VALUES
(18, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(19, 6),
(1, 13),
(1, 14),
(18, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_food_id_foreign` (`food_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD PRIMARY KEY (`extra_id`,`cart_id`),
  ADD KEY `cart_extras_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extras_food_id_foreign` (`food_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_food_id_foreign` (`food_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD PRIMARY KEY (`extra_id`,`favorite_id`),
  ADD KEY `favorite_extras_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `foods_category_id_foreign` (`category_id`);

--
-- Indexes for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_orders_food_id_foreign` (`food_id`),
  ADD KEY `food_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `food_order_extras`
--
ALTER TABLE `food_order_extras`
  ADD PRIMARY KEY (`food_order_id`,`extra_id`),
  ADD KEY `food_order_extras_extra_id_foreign` (`extra_id`);

--
-- Indexes for table `food_reviews`
--
ALTER TABLE `food_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_reviews_user_id_foreign` (`user_id`),
  ADD KEY `food_reviews_food_id_foreign` (`food_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notification_type_id_foreign` (`notification_type_id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nutrition_food_id_foreign` (`food_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_order_status_id_foreign` (`order_status_id`),
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_reviews_user_id_foreign` (`user_id`),
  ADD KEY `restaurant_reviews_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_restaurants`
--
ALTER TABLE `user_restaurants`
  ADD PRIMARY KEY (`user_id`,`restaurant_id`),
  ADD KEY `user_restaurants_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `food_reviews`
--
ALTER TABLE `food_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nutrition`
--
ALTER TABLE `nutrition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_extras`
--
ALTER TABLE `cart_extras`
  ADD CONSTRAINT `cart_extras_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `extras`
--
ALTER TABLE `extras`
  ADD CONSTRAINT `extras_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_extras`
--
ALTER TABLE `favorite_extras`
  ADD CONSTRAINT `favorite_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_extras_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foods_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_orders`
--
ALTER TABLE `food_orders`
  ADD CONSTRAINT `food_orders_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_order_extras`
--
ALTER TABLE `food_order_extras`
  ADD CONSTRAINT `food_order_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_order_extras_food_order_id_foreign` FOREIGN KEY (`food_order_id`) REFERENCES `food_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `food_reviews`
--
ALTER TABLE `food_reviews`
  ADD CONSTRAINT `food_reviews_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_notification_type_id_foreign` FOREIGN KEY (`notification_type_id`) REFERENCES `notification_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nutrition`
--
ALTER TABLE `nutrition`
  ADD CONSTRAINT `nutrition_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurant_reviews`
--
ALTER TABLE `restaurant_reviews`
  ADD CONSTRAINT `restaurant_reviews_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_restaurants`
--
ALTER TABLE `user_restaurants`
  ADD CONSTRAINT `user_restaurants_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
