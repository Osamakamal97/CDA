-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 22, 2019 at 06:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cda`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `knowabout_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('0','1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `college` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applications_subject_id_foreign` (`subject_id`),
  KEY `applications_knowabout_id_foreign` (`knowabout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arpages`
--

DROP TABLE IF EXISTS `arpages`;
CREATE TABLE IF NOT EXISTS `arpages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `arpages`
--

INSERT INTO `arpages` (`id`, `name`, `content`, `meta_key`, `meta_desc`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'كلمة عميد الكلية', '<h1>عميد كلية تنمية القدرات</h1>\r\n\r\n<p>&nbsp;كلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةكلمة عميد الكليةركلمة عميد الكلية</p>', NULL, 'كلمة عميد الكلية عن الكلية و العام الدراسي الجديد', '0', NULL, '2019-07-22 15:09:32', '2019-07-22 15:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `enpages`
--

DROP TABLE IF EXISTS `enpages`;
CREATE TABLE IF NOT EXISTS `enpages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `arpage_id` int(10) UNSIGNED DEFAULT NULL,
  `enpage_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_arpage_id_foreign` (`arpage_id`),
  KEY `items_enpage_id_foreign` (`enpage_id`),
  KEY `items_menu_id_foreign` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `ar_name`, `en_name`, `menu_id`, `arpage_id`, `enpage_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 'كلمة عميد الكلية', 'Dean of the collage', 1, 1, NULL, 1, '2019-07-22 14:56:36', '2019-07-22 14:56:36'),
(2, 'الرؤية و الرسالة', 'Vision and Mission', 1, NULL, NULL, 1, '2019-07-22 14:56:50', '2019-07-22 14:56:50'),
(3, 'الأهداف العامة', 'General aims', 1, NULL, NULL, 1, '2019-07-22 14:57:08', '2019-07-22 14:57:08'),
(4, 'المكتبة', 'Library', 1, NULL, NULL, 1, '2019-07-22 14:57:21', '2019-07-22 14:57:21'),
(5, 'مجلس الإدارة', 'Collage Council', 1, NULL, NULL, 1, '2019-07-22 14:57:38', '2019-07-22 14:57:38'),
(6, 'بكالوريوس', 'Bachelor', 2, NULL, NULL, 1, '2019-07-22 14:58:33', '2019-07-22 14:58:33'),
(7, 'دبلوم', 'Diploma', 2, NULL, NULL, 1, '2019-07-22 14:59:12', '2019-07-22 14:59:12'),
(8, 'عن القَبول و التسجيل', 'About admission and registration', 3, NULL, NULL, 1, '2019-07-22 14:59:35', '2019-07-22 14:59:35'),
(9, 'كيف تختار تخصصك؟', 'How to choose your specialty?', 3, NULL, NULL, 1, '2019-07-22 15:00:15', '2019-07-22 15:00:15'),
(10, 'الطلبة الجدد', 'New students', 3, NULL, NULL, 1, '2019-07-22 15:00:25', '2019-07-22 15:00:25'),
(11, 'كيف تلتحق بالكلية؟', 'How to join in collage?', 3, NULL, NULL, 1, '2019-07-22 15:00:36', '2019-07-22 15:00:36'),
(12, 'أسئلة شائعة', 'Common Questions', 3, NULL, NULL, 1, '2019-07-22 15:01:09', '2019-07-22 15:01:09'),
(13, 'أرشادات الطلبة', 'Student Guidelines', 3, NULL, NULL, 1, '2019-07-22 15:01:32', '2019-07-22 15:01:32'),
(14, 'مواعيد هامة', 'Important dates', 3, NULL, NULL, 1, '2019-07-22 15:01:42', '2019-07-22 15:01:42'),
(15, 'خدمات المحاضريين', 'Services of lecturers', 4, NULL, NULL, 1, '2019-07-22 15:02:11', '2019-07-22 15:02:11'),
(16, 'خدمات الطلبة', 'Student Services', 4, NULL, NULL, 1, '2019-07-22 15:02:38', '2019-07-22 15:03:00'),
(17, 'البريد الإلكتروني', 'Email', 4, NULL, NULL, 1, '2019-07-22 15:03:17', '2019-07-22 15:03:17'),
(18, 'المدرسين', 'Teachers', 5, NULL, NULL, 1, '2019-07-22 15:03:38', '2019-07-22 15:03:38'),
(19, 'إتصل بنا', 'Contact us', 6, NULL, NULL, 1, '2019-07-22 15:04:18', '2019-07-22 15:04:18'),
(20, 'الخريطة', 'Map', 6, NULL, NULL, 1, '2019-07-22 15:05:11', '2019-07-22 15:05:11'),
(21, 'المبنى الإداري', 'Administrative building', 7, NULL, NULL, 1, '2019-07-22 15:06:13', '2019-07-22 15:06:13'),
(22, 'المبنى الاكاديمي', 'Academic building', 7, NULL, NULL, 1, '2019-07-22 15:06:27', '2019-07-22 15:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `knowabouts`
--

DROP TABLE IF EXISTS `knowabouts`;
CREATE TABLE IF NOT EXISTS `knowabouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `ar_name`, `en_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'الرئيسية', 'Home', 1, '2019-07-22 13:57:19', '2019-07-22 13:57:19'),
(2, 'التخصصات', 'Subjects', 1, '2019-07-22 13:59:37', '2019-07-22 13:59:37'),
(3, 'القبول والتسجيل', 'Registrations', 1, '2019-07-22 14:03:58', '2019-07-22 15:06:58'),
(4, 'الخدمات الإلكترونية', 'Services', 1, '2019-07-22 14:04:18', '2019-07-22 14:04:18'),
(5, 'المحاضرين', 'Teachers', 1, '2019-07-22 14:04:27', '2019-07-22 14:05:07'),
(6, 'اتصل بنا', 'Contacts', 1, '2019-07-22 14:04:48', '2019-07-22 15:04:50'),
(7, 'مرافق الكلية', 'Facilities', 1, '2019-07-22 14:06:43', '2019-07-22 14:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_30_153232_create_enpages_table', 1),
(4, '2019_06_30_153233_create_arpages_table', 1),
(5, '2019_06_30_163237_create_menus_table', 1),
(6, '2019_06_30_163442_create_items_table', 1),
(7, '2019_06_30_164116_create_subitems_table', 1),
(8, '2019_06_30_170411_create_albums_table', 1),
(9, '2019_06_30_170744_create_images_table', 1),
(10, '2019_06_30_171140_create_sliders_table', 1),
(11, '2019_06_30_172050_create_messages_table', 1),
(12, '2019_06_30_172943_create_settings_table', 1),
(13, '2019_06_30_173400_create_admins_table', 1),
(14, '2019_06_30_173834_create_permissions_table', 1),
(15, '2019_06_30_173949_create_adminpermissions_table', 1),
(16, '2019_07_02_081026_create_knowabouts_table', 1),
(17, '2019_07_02_081121_create_subjects_table', 1),
(18, '2019_07_02_081413_create_applications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone_number1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `default_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subitems`
--

DROP TABLE IF EXISTS `subitems`;
CREATE TABLE IF NOT EXISTS `subitems` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ar_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `arpage_id` int(10) UNSIGNED DEFAULT NULL,
  `enpage_id` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subitems_item_id_foreign` (`item_id`),
  KEY `subitems_arpage_id_foreign` (`arpage_id`),
  KEY `subitems_enpage_id_foreign` (`enpage_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
