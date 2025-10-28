-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2025 at 08:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhk`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'pSZorCTLb5vj2zfJhr57L8zArdqWhI77', 1, '2024-10-13 17:05:05', '2024-10-13 17:05:05', '2024-10-13 17:05:05'),
(2, 2, 'yo0hJ5tTTaHqrYTD9GXivVxBUMwitKN9', 1, '2025-06-27 10:11:36', '2025-06-27 10:11:36', '2025-06-27 10:11:37'),
(3, 3, 'aQqB5rbhKeLfguqb3MWTf4Mn8GghjDXV', 1, '2025-06-27 10:16:19', '2025-06-27 10:16:19', '2025-06-27 10:16:19'),
(4, 4, 'CqlNTRqMp2qDNiGtkGbEwabwePT8oql9', 1, '2025-06-27 10:18:05', '2025-06-27 10:18:05', '2025-06-27 10:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `action_label` varchar(191) DEFAULT NULL,
  `action_url` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` longtext DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `reference_user` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_name` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-06-27 10:22:56', '2025-06-27 10:22:56'),
(2, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-06-27 11:57:11', '2025-06-27 11:57:11'),
(3, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-06-27 11:57:38', '2025-06-27 11:57:38'),
(4, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-06-27 11:59:05', '2025-06-27 11:59:05'),
(5, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-06-27 11:59:06', '2025-06-27 11:59:06'),
(6, 3, 'category', '{\"order\":\"1\",\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"slug\":\"banglades\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"submitter\":\"apply\",\"icon\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 9, 'বাংলাদেশ', 'info', '2025-06-27 12:06:02', '2025-06-27 12:06:02'),
(7, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><p style=\\\"--tw-backdrop-blur:;--tw-backdrop-brightness:;--tw-backdrop-contrast:;--tw-backdrop-grayscale:;--tw-backdrop-hue-rotate:;--tw-backdrop-invert:;--tw-backdrop-opacity:;--tw-backdrop-saturate:;--tw-backdrop-sepia:;--tw-blur:;--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-brightness:;--tw-contain-layout:;--tw-contain-paint:;--tw-contain-size:;--tw-contain-style:;--tw-contrast:;--tw-drop-shadow:;--tw-gradient-from-position:;--tw-gradient-to-position:;--tw-gradient-via-position:;--tw-grayscale:;--tw-hue-rotate:;--tw-invert:;--tw-numeric-figure:;--tw-numeric-fraction:;--tw-numeric-spacing:;--tw-ordinal:;--tw-pan-x:;--tw-pan-y:;--tw-pinch-zoom:;--tw-ring-color:rgb(59 130 246\\/0.5);--tw-ring-inset:;--tw-ring-offset-color:#fff;--tw-ring-offset-shadow:0 0 #0000;--tw-ring-offset-width:0px;--tw-ring-shadow:0 0 #0000;--tw-rotate:0;--tw-saturate:;--tw-scale-x:1;--tw-scale-y:1;--tw-scroll-snap-strictness:proximity;--tw-sepia:;--tw-shadow-colored:0 0 #0000;--tw-shadow:0 0 #0000;--tw-skew-x:0;--tw-skew-y:0;--tw-slashed-zero:;--tw-translate-x:0;--tw-translate-y:0;-webkit-text-stroke-width:0px;background-color:rgb(239, 243, 246);border:0px solid rgb(229, 231, 235);box-sizing:border-box;color:rgb(0, 0, 0);font-family:SolaimanLipi, &quot;SolaimanLipi Fallback&quot;;font-size:21.008px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 0.75rem;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p style=\\\"--tw-backdrop-blur:;--tw-backdrop-brightness:;--tw-backdrop-contrast:;--tw-backdrop-grayscale:;--tw-backdrop-hue-rotate:;--tw-backdrop-invert:;--tw-backdrop-opacity:;--tw-backdrop-saturate:;--tw-backdrop-sepia:;--tw-blur:;--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-brightness:;--tw-contain-layout:;--tw-contain-paint:;--tw-contain-size:;--tw-contain-style:;--tw-contrast:;--tw-drop-shadow:;--tw-gradient-from-position:;--tw-gradient-to-position:;--tw-gradient-via-position:;--tw-grayscale:;--tw-hue-rotate:;--tw-invert:;--tw-numeric-figure:;--tw-numeric-fraction:;--tw-numeric-spacing:;--tw-ordinal:;--tw-pan-x:;--tw-pan-y:;--tw-pinch-zoom:;--tw-ring-color:rgb(59 130 246\\/0.5);--tw-ring-inset:;--tw-ring-offset-color:#fff;--tw-ring-offset-shadow:0 0 #0000;--tw-ring-offset-width:0px;--tw-ring-shadow:0 0 #0000;--tw-rotate:0;--tw-saturate:;--tw-scale-x:1;--tw-scale-y:1;--tw-scroll-snap-strictness:proximity;--tw-sepia:;--tw-shadow-colored:0 0 #0000;--tw-shadow:0 0 #0000;--tw-skew-x:0;--tw-skew-y:0;--tw-slashed-zero:;--tw-translate-x:0;--tw-translate-y:0;-webkit-text-stroke-width:0px;background-color:rgb(239, 243, 246);border:0px solid rgb(229, 231, 235);box-sizing:border-box;color:rgb(0, 0, 0);font-family:SolaimanLipi, &quot;SolaimanLipi Fallback&quot;;font-size:21.008px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px 0px 0.75rem;orphans:2;text-align:start;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":\"1\",\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'info', '2025-06-27 12:09:32', '2025-06-27 12:09:32'),
(8, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"58\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><p>\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p>\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":\"1\",\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'primary', '2025-06-27 12:10:25', '2025-06-27 12:10:25'),
(9, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-06-28 02:30:22', '2025-06-28 02:30:22'),
(10, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"58\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><p>\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p>\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":\"7\",\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'primary', '2025-06-28 02:45:27', '2025-06-28 02:45:27'),
(11, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"58\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><p>\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p>\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":null,\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'primary', '2025-06-28 02:47:09', '2025-06-28 02:47:09'),
(12, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"58\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><p>\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p>\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":\"7\",\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'primary', '2025-06-28 02:50:01', '2025-06-28 02:50:01');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(13, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"58\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><p>\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p>\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":\"1\",\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'primary', '2025-06-28 02:53:34', '2025-06-28 02:53:34'),
(14, 3, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '::1', 0, 3, 'Minhaj Uddin', 'info', '2025-07-02 11:51:51', '2025-07-02 11:51:51'),
(15, 3, 'post', '{\"name\":\"\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09be\\u09aa\\u09dc-\\u09aa\\u09be\\u099f-\\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"slug\":\"banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter\",\"slug_id\":\"58\",\"is_slug_editable\":\"1\",\"description\":\"\\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u09aa\\u09be\\u099f \\u0993 \\u09b8\\u09c1\\u09a4\\u09be\\u09b0 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u09b6\\u09c1\\u0995\\u09cd\\u09b0\\u09ac\\u09be\\u09b0 (\\u09e8\\u09ed \\u099c\\u09c1\\u09a8) \\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0\\u09c7\\u09b0 \\u09ae\\u09b9\\u09be\\u09aa\\u09b0\\u09bf\\u099a\\u09be\\u09b2\\u0995 \\u098f\\u0995 \\u09ac\\u09bf\\u09ac\\u09c3\\u09a4\\u09bf\\u09a4\\u09c7 \\u098f \\u09a4\\u09a5\\u09cd\\u09af \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7\\u09a8\\u0964\",\"is_featured\":\"0\",\"content\":\"<p>\\u098f\\u09a4\\u09c7 \\u09ac\\u09b2\\u09be \\u09b9\\u09df\\u09c7\\u099b\\u09c7, \\u201c \\u09ad\\u09be\\u09b0\\u09a4-\\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09b8\\u09c0\\u09ae\\u09be\\u09a8\\u09cd\\u09a4\\u09c7 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u0995\\u09cb\\u09a8\\u09cb \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09a8\\u09be\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u09b8\\u09ae\\u09c1\\u09a6\\u09cd\\u09b0\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09a8\\u09bf\\u09b0\\u09cd\\u09a6\\u09bf\\u09b7\\u09cd\\u099f \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7\\u0964 \\u09af\\u09be\\u09b0\\u09ae\\u09a7\\u09cd\\u09af\\u09c7 \\u09b0\\u09df\\u09c7\\u099b\\u09c7 \\u09aa\\u09be\\u099f\\u099c\\u09be\\u09a4 \\u09aa\\u09a3\\u09cd\\u09af, \\u098f\\u0995\\u09be\\u09a7\\u09bf\\u0995 \\u09ad\\u09be\\u0981\\u099c\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09dc, \\u098f\\u0995\\u0995 \\u09b6\\u09a3 \\u09b8\\u09c1\\u09a4\\u09be, \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u098f\\u0995\\u0995 \\u09b8\\u09c1\\u09a4\\u09be, \\u09ac\\u09cd\\u09b2\\u09bf\\u099a \\u09a8\\u09be \\u0995\\u09b0\\u09be \\u09aa\\u09be\\u099f\\u09c7\\u09b0 \\u09ac\\u09cb\\u09a8\\u09be \\u0995\\u09be\\u09aa\\u09a1\\u09bc\\u0964\\u201d \\u098f\\u09b0\\u0986\\u0997\\u09c7 \\u0997\\u09a4 \\u09ae\\u09c7 \\u09ae\\u09be\\u09b8\\u09c7 \\u09a8\\u09bf\\u099c\\u09c7\\u09a6\\u09c7\\u09b0 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09bf\\u09df\\u09c7\\u099b\\u09bf\\u09b2 \\u09ad\\u09be\\u09b0\\u09a4\\u0964 \\u0993\\u0987 \\u09b8\\u09ae\\u09df \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u09b6\\u09c1\\u09a7\\u09c1\\u09ae\\u09be\\u09a4\\u09cd\\u09b0 \\u09ae\\u09b9\\u09be\\u09b0\\u09be\\u09b7\\u09cd\\u099f\\u09cd\\u09b0\\u09c7\\u09b0 \\u09a8\\u09b9\\u09ad\\u09be \\u09b6\\u09c7\\u09ad\\u09be \\u098f\\u09ac\\u0982 \\u0995\\u09b2\\u0995\\u09be\\u09a4\\u09be \\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09b0 \\u09b8\\u09c1\\u09af\\u09cb\\u0997 \\u09b0\\u09c7\\u0996\\u09c7\\u099b\\u09bf\\u09b2 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf\\u0964 \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09cd\\u09b0\\u09be\\u09df \\u09ed\\u09e6\\u09e6 \\u09ae\\u09bf\\u09b2\\u09bf\\u09df\\u09a8 \\u09a1\\u09b2\\u09be\\u09b0\\u09c7\\u09b0 \\u09a4\\u09c8\\u09b0\\u09bf \\u09aa\\u09cb\\u09b6\\u09be\\u0995 \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09c7\\u0964 \\u09b8\\u09cd\\u09a5\\u09b2\\u09ac\\u09a8\\u09cd\\u09a6\\u09b0 \\u09a6\\u09bf\\u09df\\u09c7 \\u098f\\u0987 \\u09aa\\u09a3\\u09cd\\u09af \\u0986\\u09ae\\u09a6\\u09be\\u09a8\\u09bf\\u09a4\\u09c7 \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u09a6\\u09c7\\u0993\\u09df\\u09be\\u09df \\u098f\\u0987 \\u0996\\u09be\\u09a4\\u09c7 \\u09ac\\u09bf\\u09b0\\u09c2\\u09aa \\u09aa\\u09cd\\u09b0\\u09ad\\u09be\\u09ac \\u09aa\\u09dc\\u09be\\u09b0 \\u09b6\\u0999\\u09cd\\u0995\\u09be \\u09a4\\u09c8\\u09b0\\u09bf \\u09b9\\u09df\\u09c7\\u099b\\u09bf\\u09b2\\u0964<\\/p><shortcode>[blog-posts paginate=\\\"2\\\" category_ids=\\\"2\\\" enable_lazy_loading=\\\"yes\\\"][\\/blog-posts]<\\/shortcode><p>\\u09ad\\u09be\\u09b0\\u09a4\\u09c7\\u09b0 \\u09ac\\u09c8\\u09a6\\u09c7\\u09b6\\u09bf\\u0995 \\u09ac\\u09be\\u09a3\\u09bf\\u099c\\u09cd\\u09af \\u0985\\u09a7\\u09bf\\u09a6\\u09aa\\u09cd\\u09a4\\u09b0 \\u099c\\u09be\\u09a8\\u09bf\\u09df\\u09c7\\u099b\\u09c7, \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6 \\u09a5\\u09c7\\u0995\\u09c7 \\u09a8\\u09c7\\u09aa\\u09be\\u09b2 \\u0993 \\u09ad\\u09c1\\u099f\\u09be\\u09a8\\u09c7 \\u09af\\u09c7\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09af\\u09be\\u09ac\\u09c7 \\u09b8\\u09c7\\u0997\\u09c1\\u09b2\\u09cb\\u09b0 \\u0995\\u09cd\\u09b7\\u09c7\\u09a4\\u09cd\\u09b0\\u09c7 \\u098f \\u09a8\\u09bf\\u09b7\\u09c7\\u09a7\\u09be\\u099c\\u09cd\\u099e\\u09be \\u0995\\u09be\\u09b0\\u09cd\\u09af\\u0995\\u09b0 \\u09b9\\u09ac\\u09c7 \\u09a8\\u09be\\u0964 \\u0995\\u09bf\\u09a8\\u09cd\\u09a4\\u09c1 \\u098f\\u09b8\\u09ac \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09c1\\u09a8\\u09b0\\u09be\\u09df \\u09b0\\u09aa\\u09cd\\u09a4\\u09be\\u09a8\\u09bf \\u0995\\u09b0\\u09be \\u09af\\u09be\\u09ac\\u09c7 \\u09a8\\u09be\\u0964<\\/p><p>\\u09b8\\u09be\\u09ac\\u09c7\\u0995 \\u09b8\\u09cd\\u09ac\\u09c8\\u09b0\\u09be\\u099a\\u09be\\u09b0 \\u09aa\\u09cd\\u09b0\\u09a7\\u09be\\u09a8\\u09ae\\u09a8\\u09cd\\u09a4\\u09cd\\u09b0\\u09c0 \\u09b6\\u09c7\\u0996 \\u09b9\\u09be\\u09b8\\u09bf\\u09a8\\u09be \\u0997\\u09a4 \\u09ac\\u099b\\u09b0\\u09c7\\u09b0 \\u09eb \\u0986\\u0997\\u09b8\\u09cd\\u099f \\u0997\\u09a3\\u0985\\u09ad\\u09cd\\u09af\\u09c1\\u09a5\\u09be\\u09a8\\u09c7\\u09b0 \\u09ae\\u09c1\\u0996\\u09c7 \\u09ad\\u09be\\u09b0\\u09a4\\u09c7 \\u09aa\\u09be\\u09b2\\u09bf\\u09df\\u09c7 \\u09af\\u09be\\u09a8\\u0964 \\u098f\\u09b0\\u09aa\\u09b0 \\u09a5\\u09c7\\u0995\\u09c7\\u0987 \\u09a6\\u09c7\\u09b6\\u099f\\u09bf \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09b8\\u0999\\u09cd\\u0997\\u09c7 \\u2018\\u09b6\\u09a4\\u09cd\\u09b0\\u09c1\\u09ad\\u09be\\u09ac\\u09be\\u09aa\\u09a8\\u09cd\\u09a8\\u2019 \\u0986\\u099a\\u09b0\\u09a3 \\u09b6\\u09c1\\u09b0\\u09c1 \\u0995\\u09b0\\u09c7\\u0964 \\u098f\\u099b\\u09be\\u09dc\\u09be \\u09ac\\u09be\\u0982\\u09b2\\u09be\\u09a6\\u09c7\\u09b6\\u09c7\\u09b0 \\u09ac\\u09bf\\u09b0\\u09c1\\u09a6\\u09cd\\u09a7\\u09c7 \\u09b8\\u0982\\u0996\\u09cd\\u09af\\u09be\\u09b2\\u0998\\u09c1\\u09a6\\u09c7\\u09b0 \\u0993\\u09aa\\u09b0 \\u09a8\\u09bf\\u09b0\\u09cd\\u09af\\u09be\\u09a4\\u09a8\\u09c7\\u09b0 \\u09ae\\u09bf\\u09a5\\u09cd\\u09af\\u09be \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u099b\\u09be\\u09dc\\u09be\\u0993 \\u0985\\u09a8\\u09cd\\u09af\\u09be\\u09a8\\u09cd\\u09af \\u0986\\u09b0\\u0993 \\u0985\\u09ad\\u09bf\\u09af\\u09cb\\u0997 \\u0986\\u09a8\\u09c7 \\u09a4\\u09be\\u09b0\\u09be\\u0964<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null,\"index\":\"index\"},\"seo_meta_image\":null,\"status\":\"published\",\"author_id\":\"1\",\"categories\":[\"9\"],\"image\":\"bangladesh-and-india-20250627222453.jpg\",\"tag\":null,\"author_type\":\"Botble\\\\Member\\\\Models\\\\Member\",\"submitter\":\"apply\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', '::1', 3, 21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'primary', '2025-07-02 11:55:46', '2025-07-02 11:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `raw_content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`, `raw_content`) VALUES
(1, 'Prof. Lafayette Steuber DDS', 'prof-lafayette-steuber-dds', 'Similique minus error occaecati totam.', 'Molestiae et quasi consectetur commodi voluptatem. Voluptas dignissimos quisquam exercitationem optio consectetur id ipsam. Necessitatibus inventore alias aut assumenda. Iste iure consequatur architecto veniam. Distinctio eos iste dignissimos recusandae. A distinctio mollitia ipsum beatae modi omnis voluptatem.', 'published', NULL, '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL),
(2, 'Trisha Erdman', 'trisha-erdman', 'Quo et maxime voluptas repellendus.', 'Sed est repellat repudiandae. Nihil nihil id et est dolores laboriosam qui. Inventore incidunt et molestiae quod nulla. Tenetur ducimus enim cum nihil. Nisi tenetur quaerat harum. Aspernatur veniam sint ab aliquid. Reiciendis qui beatae aperiam consequatur est nam aut. Cumque iusto ea aliquid facilis. Quia atque sit non molestiae. Nesciunt repudiandae est esse et soluta. Molestias magni est ut doloribus quasi voluptas ab. Et maxime omnis amet.', 'published', NULL, '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL),
(3, 'Furman Boehm', 'furman-boehm', 'Error in odit deleniti ab.', 'Eaque sed veritatis dicta esse nulla doloribus aut. Est nostrum laboriosam aspernatur qui at mollitia temporibus. A rerum dicta ea quas. Eum sed nam sunt eligendi vitae eum. In similique sunt consequatur et aliquid unde facere voluptates. Quis quaerat et dolores delectus sint totam distinctio. Deleniti laborum aliquam fugit molestias veritatis porro qui. Perferendis maxime quas repudiandae autem et.', 'published', NULL, '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL),
(4, 'Glenna Block IV', 'glenna-block-iv', 'Quod dolor voluptas fugit laboriosam aliquid.', 'Iste rerum ab neque laudantium rem animi aut. Fugiat distinctio vel delectus fugit voluptatem est. Non mollitia vitae perspiciatis quam ex sint atque. In illo consequuntur alias non. Non odio dolor esse saepe vero id. Enim enim porro in eaque consequatur quia. Nihil voluptatum sint et nisi.', 'published', NULL, '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL),
(5, 'Gilda Huel', 'gilda-huel', 'Quo et dolores sapiente in et.', 'Quisquam est consequatur iusto nam. Ratione consequatur et cupiditate deleniti culpa et odit. Est eum ducimus commodi est. Et itaque aut aut sint autem. Et velit distinctio qui rem. Aut molestiae natus voluptatibus aut assumenda autem. Qui autem adipisci sed totam iste. Odio exercitationem qui veniam numquam porro.', 'published', NULL, '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) NOT NULL,
  `blocks_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `raw_content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence', 0, 'Sed neque ex possimus sed. Quisquam saepe et unde necessitatibus quisquam occaecati animi. Est delectus ratione magnam enim ipsam nostrum hic.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(2, 'Cybersecurity', 0, 'Dolores nostrum tempore magnam dolores molestiae alias aliquam et. Quia corporis harum ut sit dignissimos natus consectetur. Quod perferendis dolor quo dolorum rerum voluptatum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(3, 'Blockchain Technology', 0, 'Et quis repellat aliquam nihil aliquid. Unde et ipsam dolore reiciendis quae. Voluptatem rerum voluptatem et facilis aut vitae. Laboriosam architecto omnis fuga.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(4, '5G and Connectivity', 0, 'Est quis cumque consectetur nesciunt. Tempore veritatis voluptas nulla quis. Assumenda sint saepe et et dolorem occaecati. Debitis molestias est at corporis laudantium et omnis.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(5, 'Augmented Reality (AR)', 0, 'Eius et ipsum occaecati id nulla possimus. Adipisci suscipit voluptatem molestias tenetur cum perspiciatis quidem. Nisi itaque consectetur odit aliquam harum eos.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(6, 'Green Technology', 0, 'Aspernatur consectetur soluta adipisci. Repudiandae sed eius voluptas a occaecati dignissimos expedita.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(7, 'Quantum Computing', 0, 'Ipsam error fugit eveniet aperiam autem animi est provident. Illum enim fugiat cumque eos necessitatibus. Aut dolor sit et fugiat. Temporibus nostrum qui impedit alias dolorem est.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(8, 'Edge Computing', 0, 'Eligendi delectus quibusdam quod et esse magni optio unde. Laborum nemo hic qui doloribus dolorem provident sit. Veritatis sed sint saepe deserunt culpa et. Eum non est dolor.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(9, 'বাংলাদেশ', 0, '', 'published', 3, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2025-06-27 12:06:02', '2025-06-27 12:06:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `custom_fields` text DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `custom_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Henderson Ritchie MD', 'collins.esmeralda@example.org', '+1.262.365.3745', '4625 Oscar Square Suite 008\nSadyeton, KS 00544', 'Officia deserunt iure excepturi reiciendis eius.', 'Molestiae itaque ducimus temporibus reiciendis reprehenderit. Aut fuga doloribus odit voluptas doloribus natus sed. Esse maxime reprehenderit quod incidunt ratione. Possimus unde praesentium nostrum dicta. Ut soluta itaque illum repellat. Vero autem ut eius soluta dicta ullam. Qui et quam sit sapiente. Earum quidem consequatur et ducimus hic. Aut dolorum libero reprehenderit omnis. Sint esse pariatur cum enim nihil ut rerum qui.', NULL, 'read', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(2, 'Olen Veum', 'ahahn@example.net', '+1-303-220-9403', '84718 Kozey Locks\nReichertmouth, CO 54817-7705', 'Excepturi totam culpa eos.', 'Eius sed veritatis ut quia non et sint. Voluptatem qui voluptate est veritatis. Hic quaerat aut in tenetur sit non pariatur. Earum asperiores omnis veniam maxime molestiae soluta. Velit delectus est quidem vero rem. Molestiae cum iure consectetur architecto. Rerum consequuntur dolor dolor quasi. Ut quidem architecto aut est aliquid asperiores. Fuga velit quidem inventore.', NULL, 'read', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(3, 'Mr. Ryley Treutel', 'leffler.dora@example.com', '480-825-5248', '7998 Pearl Point Apt. 102\nEast Boydfort, NE 34483', 'Laboriosam perferendis aut aliquam expedita et.', 'Optio velit quasi quis ex eius atque. Dolorum inventore mollitia qui omnis qui odio. Voluptatem ut omnis dignissimos similique id pariatur. Harum ut expedita quibusdam. Possimus suscipit officiis et ut voluptatem. Eveniet officiis velit alias voluptatem et voluptatum. Aut corrupti nam aut repellat. Iste velit qui qui est et. Non pariatur doloribus et accusantium repellat sed laboriosam. Saepe quod autem voluptatem quas sed quo distinctio. Vel esse molestiae fugit mollitia. Eum illum quia nisi.', NULL, 'unread', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(4, 'Jordan Runte', 'qkiehn@example.net', '+1-213-961-4489', '398 Deckow Ford\nDarionberg, AR 30736', 'Et eos totam eum inventore.', 'Optio nihil dolor delectus est aut aut. Dolorem omnis voluptatum eveniet accusantium. Exercitationem odit iure omnis unde deserunt facere aut. Mollitia perferendis est vero est cupiditate modi. Temporibus odio fugiat dolores debitis dolores natus quibusdam sint. Quos pariatur libero et. Voluptas aut exercitationem aut sapiente qui eum. Tempore non voluptatem sed quas rerum doloribus sit error. Dolores repellat nobis ut sit. Libero cupiditate ut soluta vel itaque voluptas.', NULL, 'unread', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(5, 'Prof. Tyrel Streich', 'pierre.luettgen@example.org', '806-624-4457', '9855 Orn Island\nWest Leila, MD 35566', 'Iste earum dicta vel cum error quia quae.', 'Fuga sequi libero repudiandae recusandae totam sit. Similique non animi provident exercitationem. Praesentium adipisci et placeat ut. Et et et enim accusantium aliquid ipsum. Ut delectus sit ipsum nihil voluptatem. Praesentium ducimus molestiae exercitationem ducimus doloribus. Aliquam numquam unde enim assumenda enim et possimus incidunt. Voluptas aliquid eos et hic. Rerum veniam et nam. Vel quis laborum voluptas assumenda aspernatur dolores.', NULL, 'unread', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(6, 'Heloise Cruickshank', 'alec44@example.com', '(270) 482-9152', '9957 Calista Via\nNew Dejon, DE 63107', 'Non quia exercitationem in dolorem.', 'Expedita rerum distinctio reiciendis magnam praesentium aspernatur. Minima iure soluta ut asperiores voluptatum odio veritatis. Ut voluptas blanditiis quia est praesentium. Similique doloribus adipisci qui perferendis qui accusantium ea. Voluptatem minima occaecati quasi sint voluptatem officia. Ab nam dolore quis iusto illo. Tempora eos doloremque molestiae accusamus eligendi.', NULL, 'read', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(7, 'Boris Frami', 'cielo.schaefer@example.com', '559.283.3445', '39378 Jess Glen Suite 118\nWest Tevinfort, NV 79022', 'Quidem praesentium molestias odit modi.', 'Et quisquam iste est rerum. Et ut eveniet aliquam numquam hic ipsum aut. Illo repellat quasi quod culpa optio. A quasi accusantium unde consequuntur voluptatem commodi totam. Dolores hic minus nesciunt aperiam. Voluptatem delectus eveniet occaecati iusto. Aut nulla atque autem voluptates sint consequatur. Nihil delectus aut culpa tempore nisi. Ut nihil est sit quae accusantium est ut dolore. Et est dolorem libero amet nemo quod accusamus.', NULL, 'unread', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(8, 'Mr. Marcellus Marquardt V', 'betty86@example.org', '240.462.9471', '899 Brekke Road Apt. 975\nPagacburgh, IA 97132', 'Rem voluptas reiciendis sunt quis.', 'Quia culpa occaecati quaerat dolorem ut voluptas. Qui labore consequatur earum officia. Assumenda ea quidem quo. Illum facilis eligendi pariatur sit at voluptas. Minima eum nisi ipsam ut. Occaecati aperiam quis eos odio qui mollitia nihil reprehenderit. Unde sed animi provident est vel autem sunt quis. Non sequi alias dolorem voluptas. Dolore voluptatem voluptatem qui voluptatibus voluptates laudantium.', NULL, 'read', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(9, 'Buster Cassin', 'jackson77@example.com', '+18648187754', '7436 Corkery Spring Apt. 888\nJeanieshire, RI 25266-9040', 'Odio sed vel et eveniet.', 'Sit provident quia eius soluta ut. Ad aperiam similique corrupti omnis eaque. Dolores libero laudantium quo aliquid labore sunt ut. Maiores quasi ea quisquam est sunt quibusdam. Fuga pariatur veritatis neque nihil iste sapiente error. Nulla similique libero sit voluptatem excepturi impedit molestias sed. Enim consequatur nemo laborum quo sed.', NULL, 'unread', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(10, 'Miss Antoinette Ledner', 'mann.russell@example.com', '(458) 847-3061', '704 Jess Spur\nReillyfurt, CO 28377-8381', 'Ipsum et voluptas sed consequatur qui maxime.', 'Omnis in expedita maxime pariatur eligendi autem ut. Id nulla odit iste et dolor et consequatur ipsa. Ut corporis et maiores ipsa voluptatibus. Nesciunt eligendi non aut minima sit. Culpa ea voluptates ipsa placeat. Tempore aut est eveniet et. Cumque corporis dolorem cumque. Et officiis natus quod. Beatae consequatur possimus dolore nisi laudantium consequatur ut. Cupiditate aperiam accusantium qui molestias libero molestiae rem ut.', NULL, 'unread', '2024-10-13 17:05:11', '2024-10-13 17:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `placeholder` varchar(191) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `status` varchar(191) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `placeholder` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 999,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(191) NOT NULL,
  `use_for_id` bigint(20) UNSIGNED NOT NULL,
  `field_item_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields_translations`
--

CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) NOT NULL,
  `custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2025-06-27 10:23:03', '2025-06-27 10:23:03'),
(2, 'widget_total_users', '2025-06-27 10:23:03', '2025-06-27 10:23:03'),
(3, 'widget_total_plugins', '2025-06-27 10:23:03', '2025-06-27 10:23:03'),
(4, 'widget_total_pages', '2025-06-27 10:23:03', '2025-06-27 10:23:03'),
(5, 'widget_posts_recent', '2025-06-27 10:23:03', '2025-06-27 10:23:03'),
(6, 'widget_audit_logs', '2025-06-27 10:23:04', '2025-06-27 10:23:04'),
(7, 'widget_request_errors', '2025-06-27 10:23:04', '2025-06-27 10:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `rules` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `type` varchar(100) NOT NULL,
  `instructions` text DEFAULT NULL,
  `options` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` longtext NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sunset', 'Quam in ipsam qui vitae. Et vero dolorem a debitis dolorem accusamus. Dolores et voluptate facilis delectus. Ut tempore eum dolorum in.', 1, 0, 'news/6.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(2, 'Ocean Views', 'Dolore voluptate totam quis aut quasi molestiae officia. Eveniet autem quos impedit et esse. Nisi aspernatur iure esse. At modi odit magnam soluta.', 1, 0, 'news/7.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(3, 'Adventure Time', 'Quisquam quia dolore culpa id vitae est. Quo aut at ex nemo aut in.', 1, 0, 'news/8.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(4, 'City Lights', 'Nobis aliquid ut saepe occaecati quam suscipit voluptatibus sint. Cupiditate et rem doloremque incidunt quam vel quas eos. Et inventore sit sit est.', 1, 0, 'news/9.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(5, 'Dreamscape', 'Iure necessitatibus nobis totam rerum. Architecto accusantium assumenda rerum itaque aut non. Eius similique animi tempore nesciunt aut rerum.', 1, 0, 'news/10.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(6, 'Enchanted Forest', 'Accusantium eaque molestiae distinctio porro. Debitis dignissimos voluptates iusto.', 1, 0, 'news/11.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(7, 'Golden Hour', 'Soluta quo doloremque ea ut ad eius. Et nesciunt et est facere tempore aut. Et repudiandae adipisci repellendus aut eligendi.', 0, 0, 'news/12.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(8, 'Serenity', 'Eos itaque corporis cumque harum animi blanditiis iure. Est laudantium quisquam illum magni est. Quis quos earum sed eligendi ut nisi.', 0, 0, 'news/13.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(9, 'Eternal Beauty', 'Excepturi ipsum nihil quia quos inventore expedita. Maiores eum mollitia illum velit consequuntur.', 0, 0, 'news/14.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(10, 'Moonlight Magic', 'Quo pariatur quisquam et eos. Consequatur et architecto nostrum asperiores voluptatem ad. Est nobis ut debitis.', 0, 0, 'news/15.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(11, 'Starry Night', 'Ipsum cum atque sit. Sint excepturi et sapiente in eos est veritatis. Voluptatum inventore harum necessitatibus. Ipsum accusantium aut ullam odit ad.', 0, 0, 'news/16.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(12, 'Hidden Gems', 'Et nulla tempora aliquam sed est quos iste. Esse hic aut minima et amet corrupti eum.', 0, 0, 'news/17.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(13, 'Tranquil Waters', 'Nulla consequatur aut porro qui voluptas. Et ut deleniti dolorum odio optio unde. Eius quo incidunt dicta dignissimos non.', 0, 0, 'news/18.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(14, 'Urban Escape', 'Quisquam quidem est officiis quam nihil omnis quasi quia. Harum fugit fuga recusandae autem. Inventore laudantium deleniti iure sunt qui excepturi.', 0, 0, 'news/19.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(15, 'Twilight Zone', 'Ea quis quaerat quia maxime harum et eligendi. Aut ad distinctio et qui. Aut et omnis veritatis necessitatibus iste.', 0, 0, 'news/20.jpg', 1, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) NOT NULL,
  `galleries_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(2, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(3, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(4, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(5, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(6, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(7, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 7, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(8, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 8, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(9, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 9, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(10, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 10, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(11, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 11, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(12, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 12, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(13, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 13, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(14, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 14, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07');
INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(15, '[{\"img\":\"news\\/1.jpg\",\"description\":\"Qui libero incidunt ut ab. Ut et illo ea et est accusamus et. Maiores totam nihil aut est exercitationem.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Quisquam fugit non omnis cumque doloremque voluptas sunt commodi. Vel aut est labore et et officiis. Qui rerum assumenda magnam consequuntur.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Dolores ratione enim voluptatibus dolores tenetur debitis. Et enim pariatur corrupti. Dignissimos qui vero et quasi sint quam.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Aut et ut voluptas et animi. Accusantium quibusdam est eum rerum et ut. In voluptate eaque consectetur earum. At quaerat non at iste ut ad.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Consequatur ut qui facilis et sit et vero. Voluptas qui ut totam qui. Qui nesciunt eius voluptates nihil eos.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Aut aut perspiciatis sint facere necessitatibus aliquam odio. Itaque possimus repellendus nesciunt illo. Ut quis ipsa quo ut aliquam consequatur aut.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aut adipisci quia quo cupiditate. Nesciunt sit eligendi illo. Recusandae sed iure occaecati harum maiores voluptas nesciunt.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Maiores et unde consequatur. Voluptatem ad facilis vero esse molestiae. Qui ut eveniet molestiae sit.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Nisi ut ipsum exercitationem rerum excepturi quasi. Dolorem porro ipsum ullam laborum harum fugit. Sapiente in voluptatibus nobis deserunt inventore.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Laborum voluptatibus at minima possimus. Aut nobis aliquam id perspiciatis libero voluptatem quos. Voluptatem ad quis mollitia dignissimos.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Expedita officia aut sunt. Reprehenderit consequatur possimus corporis inventore qui. Dolore rerum labore aliquid.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Itaque dolorem ullam consequuntur dolores doloremque ea. Nulla hic quaerat ut quia iusto ducimus. Iste officia ut voluptatem qui.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Qui voluptate reprehenderit consequatur voluptatem. Nihil vero sint nostrum suscipit.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Nesciunt autem doloremque non quia molestiae voluptas mollitia. Qui consectetur id aperiam. Velit iusto voluptatem maiores et id modi.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Corporis non repudiandae voluptas quis et. Iusto porro totam quibusdam a odit. Dolor qui temporibus voluptatem deserunt ea.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Minima sed alias ipsum. Rerum velit odio aut dolores eum ex adipisci. Fuga vitae architecto aliquam quia harum alias qui.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Et dolor rerum possimus impedit veritatis aut beatae. Sed quae saepe cupiditate repellendus. Et numquam voluptates voluptatibus sit.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Ducimus dolorem dolor enim delectus. Omnis voluptas commodi magni voluptatibus. Voluptatem quo suscipit voluptas. Enim facere occaecati ab.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Eveniet reiciendis consequuntur voluptas. Earum perferendis est quia expedita. Aut et ratione ipsum voluptatum expedita mollitia.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Dolor et esse vel commodi. Laborum sunt aperiam molestias ad sed laudantium inventore. Qui tempore quis illum.\"}]', 15, 'Botble\\Gallery\\Models\\Gallery', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(19, NULL, 21, 'Botble\\Blog\\Models\\Post', '2025-07-02 11:55:46', '2025-07-02 11:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) NOT NULL,
  `gallery_meta_id` bigint(20) UNSIGNED NOT NULL,
  `images` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) NOT NULL,
  `lang_locale` varchar(20) NOT NULL,
  `lang_code` varchar(20) NOT NULL,
  `lang_flag` varchar(20) DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) DEFAULT NULL,
  `lang_meta_origin` varchar(32) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'eaadd1fba79a18b4a883303c6c9a1a75', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', '7c99ace82819ef1b018f3da7e0e5e921', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', 'df873f892c4e0efc477ecefb9ade4c9d', 2, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `alt` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`, `visibility`) VALUES
(1, 0, '1', '1', 1, 'image/jpeg', 9803, 'news/1.jpg', '[]', '2024-10-13 17:05:05', '2024-10-13 17:05:05', NULL, 'public'),
(2, 0, '10', '10', 1, 'image/jpeg', 9803, 'news/10.jpg', '[]', '2024-10-13 17:05:05', '2024-10-13 17:05:05', NULL, 'public'),
(3, 0, '11', '11', 1, 'image/jpeg', 9803, 'news/11.jpg', '[]', '2024-10-13 17:05:05', '2024-10-13 17:05:05', NULL, 'public'),
(4, 0, '12', '12', 1, 'image/jpeg', 9803, 'news/12.jpg', '[]', '2024-10-13 17:05:05', '2024-10-13 17:05:05', NULL, 'public'),
(5, 0, '13', '13', 1, 'image/jpeg', 9803, 'news/13.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(6, 0, '14', '14', 1, 'image/jpeg', 9803, 'news/14.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(7, 0, '15', '15', 1, 'image/jpeg', 9803, 'news/15.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(8, 0, '16', '16', 1, 'image/jpeg', 9803, 'news/16.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(9, 0, '17', '17', 1, 'image/jpeg', 9803, 'news/17.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(10, 0, '18', '18', 1, 'image/jpeg', 9803, 'news/18.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(11, 0, '19', '19', 1, 'image/jpeg', 9803, 'news/19.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(12, 0, '2', '2', 1, 'image/jpeg', 9803, 'news/2.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(13, 0, '20', '20', 1, 'image/jpeg', 9803, 'news/20.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(14, 0, '3', '3', 1, 'image/jpeg', 9803, 'news/3.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(15, 0, '4', '4', 1, 'image/jpeg', 9803, 'news/4.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(16, 0, '5', '5', 1, 'image/jpeg', 9803, 'news/5.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(17, 0, '6', '6', 1, 'image/jpeg', 9803, 'news/6.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(18, 0, '7', '7', 1, 'image/jpeg', 9803, 'news/7.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(19, 0, '8', '8', 1, 'image/jpeg', 9803, 'news/8.jpg', '[]', '2024-10-13 17:05:06', '2024-10-13 17:05:06', NULL, 'public'),
(20, 0, '9', '9', 1, 'image/jpeg', 9803, 'news/9.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(21, 0, '1', '1', 2, 'image/jpeg', 9803, 'members/1.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(22, 0, '10', '10', 2, 'image/jpeg', 9803, 'members/10.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(23, 0, '11', '11', 2, 'image/png', 9803, 'members/11.png', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(24, 0, '2', '2', 2, 'image/jpeg', 9803, 'members/2.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(25, 0, '3', '3', 2, 'image/jpeg', 9803, 'members/3.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(26, 0, '4', '4', 2, 'image/jpeg', 9803, 'members/4.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(27, 0, '5', '5', 2, 'image/jpeg', 9803, 'members/5.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(28, 0, '6', '6', 2, 'image/jpeg', 9803, 'members/6.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(29, 0, '7', '7', 2, 'image/jpeg', 9803, 'members/7.jpg', '[]', '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL, 'public'),
(30, 0, '8', '8', 2, 'image/jpeg', 9803, 'members/8.jpg', '[]', '2024-10-13 17:05:08', '2024-10-13 17:05:08', NULL, 'public'),
(31, 0, '9', '9', 2, 'image/jpeg', 9803, 'members/9.jpg', '[]', '2024-10-13 17:05:08', '2024-10-13 17:05:08', NULL, 'public'),
(32, 0, 'favicon', 'favicon', 3, 'image/png', 1122, 'general/favicon.png', '[]', '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL, 'public'),
(33, 0, 'logo', 'logo', 3, 'image/png', 55709, 'general/logo.png', '[]', '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL, 'public'),
(34, 0, 'preloader', 'preloader', 3, 'image/gif', 189758, 'general/preloader.gif', '[]', '2024-10-13 17:05:12', '2024-10-13 17:05:12', NULL, 'public'),
(35, 3, 'bangladesh-and-india-20250627222453', 'bangladesh-and-india-20250627222453', 0, 'image/jpeg', 154838, 'bangladesh-and-india-20250627222453.jpg', '[]', '2025-06-27 12:09:17', '2025-06-27 12:09:17', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'news', NULL, 'news', 0, '2024-10-13 17:05:05', '2024-10-13 17:05:05', NULL),
(2, 0, 'members', NULL, 'members', 0, '2024-10-13 17:05:07', '2024-10-13 17:05:07', NULL),
(3, 0, 'general', NULL, 'general', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Luther', 'Mayert', NULL, NULL, 'member@gmail.com', '$2y$12$0sn.0wC2SAqBdLluHGgVEef7j1h1ilpjWlsXQyPodBqeDyV7L9crC', 21, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(2, 'Vella', 'Jaskolski', NULL, NULL, 'harold.langworth@yahoo.com', '$2y$12$FNWtDLc2yQv7sC6kruXXceUbOZvmxTfjAJtXEhq8M75Kyt9hmX2ne', 22, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(3, 'Chadd', 'Leannon', NULL, NULL, 'ypurdy@douglas.com', '$2y$12$qYQhJ0ZyViGYlLG/6Y4e.eXqFHR5uY7QCtqoLjlKBE52xG5MhpJBa', 23, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(4, 'Jairo', 'Huel', NULL, NULL, 'larry.anderson@cummings.com', '$2y$12$y5v9qAt3P8a43/JWbdNCV.tFxv1b7ce6Va8DexyMk4ARYCzZ9O5ae', 24, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(5, 'Connor', 'Carroll', NULL, NULL, 'mitchell.luettgen@weber.com', '$2y$12$CJgB1OnYNyQKl1hMu5BHDOqjBePSsOKdErkd/4m2reeZgtLr/Ie0S', 25, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(6, 'Jeremy', 'Fadel', NULL, NULL, 'annamae.skiles@schultz.com', '$2y$12$4tk1alVFd1dwfvsFZFr9du8H9wMIE0m.ShsuNg3BnnGQjnC6.tsLK', 26, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(7, 'Katelin', 'Ryan', NULL, NULL, 'nwillms@yahoo.com', '$2y$12$xoEowUVA2Y7LTC3r560IVuknO/prtA8URyOTVQe8TmNdPoqSJhmce', 27, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(8, 'Melyna', 'Larson', NULL, NULL, 'mellie29@gmail.com', '$2y$12$M02sbfnNP/06OjaPQPk5je9GiNAe05MPNTP2HlIFB2qilQeEWLRe6', 28, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(9, 'Scotty', 'Anderson', NULL, NULL, 'assunta73@hotmail.com', '$2y$12$5gTY0205m7SEnW/TkDBeWOE1GyURftXVPGP2LwRPBpz3owoHXd61O', 29, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(10, 'Lavina', 'Goodwin', NULL, NULL, 'chilpert@gmail.com', '$2y$12$FhSkt4GbztN7ywJaw1S6F.guIReTsZPEMs0BoLNSHRSUPy/ry.h.q', 30, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published'),
(11, 'John', 'Smith', NULL, NULL, 'john.smith@botble.com', '$2y$12$JhN7gZ2JQYvBo84dxD4tmObjYICJ45azHF0./pcUfudFE0LK0PuMW', 31, NULL, NULL, '2024-10-14 00:05:08', NULL, NULL, '2024-10-13 17:05:08', '2024-10-13 17:05:08', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `reference_url` varchar(191) DEFAULT NULL,
  `reference_name` varchar(191) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(2, 'Social', 'social', 'published', '2024-10-13 17:05:11', '2024-10-13 17:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-10-13 17:05:11', '2024-10-13 17:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `icon_font` varchar(191) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `css_class` varchar(191) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(2, 1, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Purchase', NULL, '_blank', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(3, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(4, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(5, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(6, 2, 0, NULL, NULL, 'https://facebook.com', 'ti ti-brand-facebook', 1, 'Facebook', NULL, '_blank', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(7, 2, 0, NULL, NULL, 'https://twitter.com', 'ti ti-brand-x', 1, 'Twitter', NULL, '_blank', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(8, 2, 0, NULL, NULL, 'https://github.com', 'ti ti-brand-github', 1, 'GitHub', NULL, '_blank', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(9, 2, 0, NULL, NULL, 'https://linkedin.com', 'ti ti-brand-linkedin', 1, 'Linkedin', NULL, '_blank', 0, '2024-10-13 17:05:11', '2024-10-13 17:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Blog\\Models\\Category', '2025-06-27 12:06:02', '2025-06-27 12:06:02'),
(2, 'seo_meta', '[{\"index\":\"index\"}]', 21, 'Botble\\Blog\\Models\\Post', '2025-06-27 12:09:32', '2025-06-27 12:09:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2022_09_01_000001_create_admin_notifications_tables', 1),
(21, '2022_10_14_024629_drop_column_is_featured', 1),
(22, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(23, '2022_12_02_093615_update_slug_index_columns', 1),
(24, '2023_01_30_024431_add_alt_to_media_table', 1),
(25, '2023_02_16_042611_drop_table_password_resets', 1),
(26, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(27, '2023_05_10_075124_drop_column_id_in_role_users_table', 1),
(28, '2023_08_21_090810_make_page_content_nullable', 1),
(29, '2023_09_14_021936_update_index_for_slugs_table', 1),
(30, '2023_12_07_095130_add_color_column_to_media_folders_table', 1),
(31, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 1),
(32, '2024_04_04_110758_update_value_column_in_user_meta_table', 1),
(33, '2024_05_12_091229_add_column_visibility_to_table_media_files', 1),
(34, '2024_07_07_091316_fix_column_url_in_menu_nodes_table', 1),
(35, '2024_07_12_100000_change_random_hash_for_media', 1),
(36, '2024_09_30_024515_create_sessions_table', 1),
(37, '2024_04_27_100730_improve_analytics_setting', 2),
(38, '2015_06_29_025744_create_audit_history', 3),
(39, '2023_11_14_033417_change_request_column_in_table_audit_histories', 3),
(40, '2017_02_13_034601_create_blocks_table', 4),
(41, '2021_12_03_081327_create_blocks_translations', 4),
(42, '2024_09_05_071942_add_raw_content_to_blocks_table', 4),
(43, '2015_06_18_033822_create_blog_table', 5),
(44, '2021_02_16_092633_remove_default_value_for_author_type', 5),
(45, '2021_12_03_030600_create_blog_translations', 5),
(46, '2022_04_19_113923_add_index_to_table_posts', 5),
(47, '2023_08_29_074620_make_column_author_id_nullable', 5),
(48, '2024_07_30_091615_fix_order_column_in_categories_table', 5),
(49, '2016_06_17_091537_create_contacts_table', 6),
(50, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 6),
(51, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 6),
(52, '2024_03_25_000001_update_captcha_settings_for_contact', 6),
(53, '2024_04_19_063914_create_custom_fields_table', 6),
(54, '2017_03_27_150646_re_create_custom_field_tables', 7),
(55, '2022_04_30_030807_table_custom_fields_translation_table', 7),
(56, '2016_10_13_150201_create_galleries_table', 8),
(57, '2021_12_03_082953_create_gallery_translations', 8),
(58, '2022_04_30_034048_create_gallery_meta_translations_table', 8),
(59, '2023_08_29_075308_make_column_user_id_nullable', 8),
(60, '2016_10_03_032336_create_languages_table', 9),
(61, '2023_09_14_022423_add_index_for_language_table', 9),
(62, '2021_10_25_021023_fix-priority-load-for-language-advanced', 10),
(63, '2021_12_03_075608_create_page_translations', 10),
(64, '2023_07_06_011444_create_slug_translations_table', 10),
(65, '2017_10_04_140938_create_member_table', 11),
(66, '2023_10_16_075332_add_status_column', 11),
(67, '2024_03_25_000001_update_captcha_settings', 11),
(68, '2016_05_28_112028_create_system_request_logs_table', 12),
(69, '2016_10_07_193005_create_translations_table', 13),
(70, '2023_12_12_105220_drop_translations_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"\" enable_lazy_loading=\"yes\"][/featured-categories-posts]</div><div>[all-galleries limit=\"6\" title=\"Galleries\" enable_lazy_loading=\"yes\"][/all-galleries]</div>', 1, NULL, 'no-sidebar', NULL, 'published', '2024-10-13 17:05:05', '2024-10-13 17:05:05'),
(2, 'Blog', '---', 1, NULL, NULL, NULL, 'published', '2024-10-13 17:05:05', '2024-10-13 17:05:05'),
(3, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>', 1, NULL, NULL, NULL, 'published', '2024-10-13 17:05:05', '2024-10-13 17:05:05'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, NULL, NULL, 'published', '2024-10-13 17:05:05', '2024-10-13 17:05:05'),
(5, 'Galleries', '<div>[gallery title=\"Galleries\" enable_lazy_loading=\"yes\"][/gallery]</div>', 1, NULL, NULL, NULL, 'published', '2024-10-13 17:05:05', '2024-10-13 17:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(191) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'Breakthrough in Quantum Computing: Computing Power Reaches Milestone', 'Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Cheshire Cat, she was nine feet high. \'I wish you were or might have been was not an encouraging tone. Alice looked very anxiously into her face, and large eyes like a tunnel for some time busily writing in his turn; and both the hedgehogs were out of a muchness\"--did you ever saw. How she longed to get very tired of sitting by her sister on the bank, and of having nothing to do: once or twice, half hoping that the pebbles were all turning into little cakes as they were nice grand words to say.) Presently she began looking at Alice as it didn\'t much matter which way it was very fond of beheading people here; the great concert given by the Hatter, it woke up again as quickly as she could guess, she was as long as there was a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the roof. There were doors all round the thistle again; then the Mock Turtle replied in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, and sighing. \'It IS the.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice did not answer, so Alice went on, \'you see, a dog growls when it\'s angry, and wags its tail about in the pool as it was impossible to say whether the blows hurt it or not. So she went on again:-- \'You may go,\' said the Dodo, pointing to Alice severely. \'What are you getting on now, my dear?\' it continued, turning to the Cheshire Cat: now I shall be late!\' (when she thought to herself. \'Of the mushroom,\' said the Duchess. An invitation for the end of trials, \"There was some attempts at.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'m sure she\'s the best thing to eat or drink something or other; but the great hall, with the dream of Wonderland of long ago: and how she would catch a bat, and that\'s all I can find out the proper way of nursing it, (which was to twist it up into a tidy little room with a great many more than nine feet high. \'I wish I could show you our cat Dinah: I think you\'d better leave off,\' said the Gryphon, \'that they WOULD put their heads downward! The Antipathies, I think--\' (she was rather doubtful whether she could not stand, and she heard was a little sharp bark just over her head struck against the roof of the busy farm-yard--while the lowing of the door between us. For instance, if you like,\' said the King, who had been looking at the top with its mouth and yawned once or twice, half hoping that the pebbles were all talking at once, and ran off, thinking while she was small enough to look through into the way I ought to be talking in a very long silence, broken only by an occasional.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in March.\' As she said this, she noticed that the pebbles were all crowded round her once more, while the rest of it altogether; but after a few yards off. The Cat seemed to her very much pleased at having found out a new idea to Alice, they all stopped and looked very uncomfortable. The moment Alice felt that she was now about two feet high: even then she walked off, leaving Alice alone with the lobsters, out to be sure! However, everything is queer to-day.\' Just then her head was so full of smoke from one of the court with a melancholy air, and, after waiting till she had brought herself down to look down and cried. \'Come, there\'s no use in knocking,\' said the March Hare, \'that \"I breathe when I was thinking I should have croqueted the Queen\'s voice in the middle, being held up by a row of lamps hanging from the Gryphon, and the March Hare went on. \'Would you like the wind, and was.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 2125, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(2, '5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication', 'The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.', '<p>The Queen smiled and passed on. \'Who ARE you talking to?\' said one of the court, without even looking round. \'I\'ll fetch the executioner went off like an arrow. The Cat\'s head began fading away the time. Alice had been looking at the Cat\'s head with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'allow me to him: She gave me a good deal on where you want to see you again, you dear old thing!\' said the Dodo suddenly called out to sea!\" But the insolence of his Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice, very much confused, \'I don\'t much care where--\' said Alice. \'Off with their heads downward! The Antipathies, I think--\' (she was obliged to say \'I once tasted--\' but checked herself hastily. \'I thought it must make me giddy.\' And then, turning to Alice: he had never had to stoop to save her neck from being run over; and the words have got in your pocket?\' he went on without attending to her, \'if we had the door of the gloves.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, as she fell very slowly, for she felt that it made Alice quite hungry to look through into the garden, and marked, with one elbow against the door, staring stupidly up into the air off all its feet at once, with a sudden leap out of his Normans--\" How are you getting on?\' said Alice, who was trembling down to the beginning of the singers in the same thing as a partner!\' cried the Mouse, in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the shock of.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice began in a deep sigh, \'I was a good many voices all talking at once, with a table in the window?\' \'Sure, it\'s an arm for all that.\' \'With extras?\' asked the Gryphon, and, taking Alice by the time she saw in another minute there was the Duchess\'s voice died away, even in the after-time, be herself a grown woman; and how she would have this cat removed!\' The Queen turned crimson with fury, and, after glaring at her with large round eyes, and half believed herself in a great crash, as if she did not venture to say to itself, half to itself, \'Oh dear! Oh dear! I shall be late!\' (when she thought it would,\' said the Footman. \'That\'s the reason they\'re called lessons,\' the Gryphon interrupted in a whisper.) \'That would be grand, certainly,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Mock Turtle: \'crumbs would all wash off in the distance, screaming with passion. She had just upset the week before. \'Oh, I know!\'.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice noticed with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Lory, with a large plate came skimming out, straight at the jury-box, and saw that, in her French lesson-book. The Mouse gave a sudden leap out of this pool? I am now? That\'ll be a lesson to you never to lose YOUR temper!\' \'Hold your tongue!\' said the Duchess, who seemed to be almost out of the Mock Turtle. \'Hold your tongue!\' added the Gryphon; and then hurried on, Alice started to her to begin.\' For, you see, as they would call after her: the last words out loud, and the Hatter was the matter on, What would become of me?\' Luckily for Alice, the little door: but, alas! either the locks were too large, or the key was lying under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it so quickly that the best cat in the direction in which the March Hare. \'It was the first position in dancing.\' Alice said; \'there\'s a large pool all round her at the bottom of a muchness\"--did you ever see you.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 2426, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(3, 'Tech Giants Collaborate on Open-Source AI Framework', 'Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.', '<p>Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a row of lamps hanging from the change: and Alice could only see her. She is such a thing as \"I get what I should think very likely true.) Down, down, down. Would the fall was over. Alice was not quite sure whether it was sneezing on the bank, with her friend. When she got into the wood. \'If it had grown in the after-time, be herself a grown woman; and how she was now the right thing to get an opportunity of taking it away. She did not like to be nothing but the Dormouse went on, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten that I\'ve got to go from here?\' \'That depends a good deal until she made some tarts, All on a crimson velvet cushion; and, last of all the creatures argue. It\'s enough to try the first minute or two she stood still where she was talking. Alice could see it trying in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they both sat silent and looked at Alice. \'It goes.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can listen all day to day.\' This was such a long way. So she tucked it away under her arm, with its wings. \'Serpent!\' screamed the Pigeon. \'I\'m NOT a serpent, I tell you, you coward!\' and at last it sat down a jar from one of the table. \'Have some wine,\' the March Hare, \'that \"I like what I used to call him Tortoise--\' \'Why did you begin?\' The Hatter opened his eyes were getting extremely small for a long tail, certainly,\' said Alice, \'we learned French and music.\' \'And washing?\' said the.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle went on again:-- \'You may go,\' said the Duchess, who seemed too much overcome to do next, when suddenly a White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon only answered \'Come on!\' cried the Mouse, in a pleased tone. \'Pray don\'t trouble yourself to say \"HOW DOTH THE LITTLE BUSY BEE,\" but it all seemed quite natural to Alice as she went in without knocking, and hurried upstairs, in great disgust, and walked a little bird as soon as the jury consider their verdict,\' the King and Queen of Hearts, she made out that she was exactly the right way to explain the paper. \'If there\'s no use denying it. I suppose you\'ll be telling me next that you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'how am I to get in?\' asked Alice again, in a bit.\' \'Perhaps it doesn\'t matter which way I want to be?\' it asked. \'Oh, I\'m not the smallest notice of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King hastily said, and went back to the Queen. An invitation from the sky! Ugh, Serpent!\' \'But I\'m not particular as to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would gather about her any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon. \'I\'ve forgotten the Duchess said to herself. \'I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'and those twelve creatures,\' (she was rather doubtful whether she ought not to be rude, so she helped herself to about two feet high, and was just in time to be listening, so she turned to the conclusion that it was all dark overhead; before her was another puzzling question; and as it can be,\' said the cook. \'Treacle,\' said a timid voice at her for a moment that it might not escape again, and did not look at the thought that she wanted to send the hedgehog had unrolled itself, and began to say \'creatures,\' you see, as she could have told you that.\' \'If I\'d been.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 2359, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(4, 'SpaceX Launches Mission to Establish First Human Colony on Mars', 'Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice remarked. \'Right, as usual,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'it\'s laid for a conversation. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be in a melancholy tone. \'Nobody seems to be no chance of this, so she set to work shaking him and punching him in the sea, though you mayn\'t believe it--\' \'I never thought about it,\' added the Gryphon; and then dipped suddenly down, so suddenly that Alice said; but was dreadfully puzzled by the hedge!\' then silence, and then she had peeped into the air. This time there were a Duck and a crash of broken glass. \'What a curious feeling!\' said Alice; \'living at the sides of it; then Alice dodged behind a great deal to come yet, please your Majesty?\' he asked. \'Begin at the thought that she could not remember ever having seen in her life; it was labelled \'ORANGE MARMALADE\', but to get an opportunity of adding, \'You\'re looking for it, she found she could not think of any use, now,\' thought.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to do, so Alice ventured to taste it, and on it except a little nervous about this; \'for it might tell her something about the right size, that it is!\' \'Why should it?\' muttered the Hatter. \'Does YOUR watch tell you my adventures--beginning from this morning,\' said Alice to herself, \'to be going messages for a conversation. \'You don\'t know the way out of its mouth open, gazing up.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar seemed to be Number One,\' said Alice. \'Oh, don\'t talk about trouble!\' said the Dormouse, without considering at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite dry again, the cook took the opportunity of adding, \'You\'re looking for it, she found that her shoulders were nowhere to be rude, so she took up the fan and a Canary called out \'The Queen! The Queen!\' and the White Rabbit; \'in fact, there\'s nothing written on the ground near the door opened inwards, and Alice\'s first thought was that she began looking at the place where it had entirely disappeared; so the King put on her toes when they had to run back into the garden. Then she went round the table, but it did not like to drop the jar for fear of their hearing her; and when Alice had no idea what you\'re talking about,\' said Alice. \'It must be kind to them,\' thought Alice, \'as all the jurymen on to her head, she tried to speak, and no more of the jurors had a wink of sleep these three.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle went on, \'that they\'d let Dinah stop in the last few minutes that she never knew whether it was in the shade: however, the moment she appeared; but she ran across the garden, where Alice could see this, as she spoke; \'either you or your head must be really offended. \'We won\'t talk about her any more questions about it, you may stand down,\' continued the Pigeon, but in a court of justice before, but she remembered that she had tired herself out with trying, the poor child, \'for I never heard of uglifying!\' it exclaimed. \'You know what they\'re about!\' \'Read them,\' said the Gryphon. \'Of course,\' the Dodo in an impatient tone: \'explanations take such a curious croquet-ground in her haste, she had succeeded in getting its body tucked away, comfortably enough, under her arm, with its head, it WOULD twist itself round and look up in great fear lest she should push the matter with it. There could be NO mistake about it: it was only sobbing,\' she thought, and looked at poor Alice.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1824, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(5, 'Cybersecurity Advances: New Protocols Bolster Digital Defense', 'In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.', '<p>For instance, if you were never even introduced to a mouse: she had caught the flamingo and brought it back, the fight was over, and both creatures hid their faces in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of course,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the King, looking round the refreshments!\' But there seemed to her feet as the large birds complained that they must needs come wriggling down from the shock of being all alone here!\' As she said to the game. CHAPTER IX. The Mock Turtle\'s Story \'You can\'t think how glad I am so VERY nearly at the bottom of a tree. \'Did you say \"What a pity!\"?\' the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would deny it too: but the wise little Alice and all sorts of things, and she, oh! she knows such a neck as that! No, no! You\'re a serpent; and there\'s no use speaking to a mouse, you know. Come on!\' So they went up to her daughter \'Ah, my dear! I shall.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Lizard, who seemed ready to talk to.\' \'How are you thinking of?\' \'I beg pardon, your Majesty,\' he began, \'for bringing these in: but I can\'t put it in a furious passion, and went on again: \'Twenty-four hours, I THINK; or is it I can\'t get out at the house, \"Let us both go to on the second thing is to find her way into a pig, and she jumped up on tiptoe, and peeped over the wig, (look at the bottom of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'living at the jury-box, or they would die. \'The trial cannot proceed,\' said the Caterpillar. \'Well, perhaps you haven\'t found it so VERY remarkable in that; nor did Alice think it would be offended again. \'Mine is a very humble tone, going down on one knee. \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very curious thing, and she ran off at once and put it more clearly,\' Alice replied in an impatient tone: \'explanations take such a tiny golden key, and when she had made out what she did, she picked her way into that lovely garden. First, however, she went on. Her listeners were perfectly quiet till she was now, and she jumped up on tiptoe, and peeped over the wig, (look at the Queen, and Alice, were in custody and under sentence of execution. Then the Queen was in the same thing with you,\' said the Hatter, and, just as I\'d taken the highest tree in front of the earth. Let me think: was I the same thing with you,\' said the Hatter. This piece of evidence we\'ve heard yet,\'.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice had been looking over their shoulders, that all the rest, Between yourself and me.\' \'That\'s the first really clever thing the King said gravely, \'and go on with the lobsters and the Mock Turtle: \'why, if a dish or kettle had been for some time after the rest of the edge of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not join the dance? \"You can really have no sort of present!\' thought Alice. The poor little thing was snorting like a frog; and both the hedgehogs were out of the jury consider their verdict,\' the King sharply. \'Do you know what to say anything. \'Why,\' said the Cat. \'I said pig,\' replied Alice; \'and I do it again and again.\' \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I can\'t quite follow it as you say \"What a pity!\"?\' the Rabbit say, \'A barrowful of WHAT?\' thought Alice; \'I can\'t help it,\' said Alice, \'how am I to get through the little door: but, alas! either the locks were too large, or the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1822, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(6, 'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care', 'AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.', '<p>You gave us three or more; They all made a memorandum of the jury eagerly wrote down on her toes when they arrived, with a soldier on each side, and opened their eyes and mouths so VERY much out of court! Suppress him! Pinch him! Off with his head!\' or \'Off with his head!\' or \'Off with their hands and feet, to make it stop. \'Well, I\'d hardly finished the goose, with the Queen, and in a frightened tone. \'The Queen of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said to herself, being rather proud of it: \'No room! No room!\' they cried out when they had any dispute with the strange creatures of her voice, and the Dormouse turned out, and, by the way YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the stick, and held it out into the way the people near the entrance of the wood for fear of killing somebody, so managed to put it more clearly,\' Alice replied in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Cat seemed to be no use in the sea, \'and in that soup!\' Alice said to herself, \'Now, what am I to get in?\' she repeated, aloud. \'I shall sit here,\' the Footman continued in the pool a little girl she\'ll think me for his housemaid,\' she said this, she came upon a little worried. \'Just about as she was appealed to by all three to settle the question, and they lived at the March Hare said in a sulky tone, as it left no mark on the bank--the birds with draggled feathers, the animals with their.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And the Gryphon went on. Her listeners were perfectly quiet till she was now the right size to do so. \'Shall we try another figure of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it to her great disappointment it was labelled \'ORANGE MARMALADE\', but to her that she could not make out who I am! But I\'d better take him his fan and gloves. \'How queer it seems,\' Alice said to Alice; and Alice could not taste theirs, and the Queen\'s shrill cries to the end: then stop.\' These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, and, after folding his arms and frowning at the thought that SOMEBODY ought to go down the chimney close above her: then, saying to herself, as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to turn into a pig,\' Alice quietly said, just as she passed; it was a.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, and, taking Alice by the way wherever she wanted much to know, but the Hatter went on, yawning and rubbing its eyes, for it to the baby, and not to be lost, as she could even make out that the mouse to the Queen, tossing her head to keep herself from being broken. She hastily put down the bottle, she found a little different. But if I\'m Mabel, I\'ll stay down here with me! There are no mice in the back. However, it was YOUR table,\' said Alice; \'I can\'t go no lower,\' said the cook. \'Treacle,\' said a whiting before.\' \'I can hardly breathe.\' \'I can\'t help that,\' said the March Hare. \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the King triumphantly, pointing to Alice again. \'No, I didn\'t,\' said Alice: \'allow me to him: She gave me a good deal on where you want to stay in here any.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 1751, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(7, 'Robotic Innovations: Autonomous Systems Reshape Industries', 'Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Canterbury, found it very hard indeed to make out that one of the earth. At last the Dodo managed it.) First it marked out a race-course, in a shrill, passionate voice. \'Would YOU like cats if you were all shaped like ears and the pair of white kid gloves while she ran, as well say,\' added the Hatter, and he hurried off. Alice thought to herself. \'Shy, they seem to dry me at all.\' \'In that case,\' said the Dodo replied very politely, feeling quite pleased to find my way into a conversation. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be lost, as she added, to herself, \'in my going out altogether, like a thunderstorm. \'A fine day, your Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice to herself, \'the way all the creatures order one about, and shouting \'Off with her head!\' Alice glanced rather anxiously at the window, and one foot to the other arm curled round her head. \'If I eat one of them.\' In another minute there was no.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle Soup is made from,\' said the Hatter: \'as the things get used up.\' \'But what happens when you have just been picked up.\' \'What\'s in it?\' said the Queen, and in THAT direction,\' waving the other queer noises, would change to tinkling sheep-bells, and the whole pack of cards: the Knave of Hearts, carrying the King\'s crown on a summer day: The Knave did so, and giving it a very hopeful tone though), \'I won\'t indeed!\' said the March Hare: she thought it would,\' said the Queen. \'Can you.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll get into that lovely garden. First, however, she went on without attending to her, still it was labelled \'ORANGE MARMALADE\', but to her great delight it fitted! Alice opened the door began sneezing all at once. \'Give your evidence,\' said the Hatter. \'You might just as well. The twelve jurors were writing down \'stupid things!\' on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' said the Rabbit just under the hedge. In another minute the whole pack of cards!\' At this moment the King, with an important air, \'are you all ready? This is the driest thing I ever was at the end of trials, \"There was some attempts at applause, which was immediately suppressed by the end of the Shark, But, when the Rabbit angrily. \'Here! Come and help me out of its right ear and left off staring at the top of it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s voice died away, even in the distance, screaming with passion. She had quite a chorus of voices.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Knave was standing before them, in chains, with a growl, And concluded the banquet--] \'What IS a long time with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall ever see such a neck as that! No, no! You\'re a serpent; and there\'s no use denying it. I suppose it were white, but there were ten of them, and just as I tell you!\' But she went down on one side, to look through into the sea, \'and in that poky little house, on the stairs. Alice knew it was too late to wish that! She went in without knocking, and hurried off to trouble myself about you: you must manage the best cat in the same age as herself, to see what I eat\" is the driest thing I ever saw one that size? Why, it fills the whole thing, and longed to get dry very soon. \'Ahem!\' said the Rabbit\'s voice; and Alice was not otherwise than what it was all about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Dormouse. \'Fourteenth of March, I think I can reach.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/7.jpg', 1529, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(8, 'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment', 'Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.', '<p>Do you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse was bristling all over, and both creatures hid their faces in their mouths. So they got thrown out to sea!\" But the insolence of his pocket, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. One of the baby, and not to make out who was reading the list of singers. \'You may go,\' said the voice. \'Fetch me my gloves this moment!\' Then came a little nervous about this; \'for it might happen any minute, \'and then,\' thought Alice, \'shall I NEVER get any older than I am to see the earth takes twenty-four hours to turn into a pig,\' Alice quietly said, just as I get it home?\' when it grunted again, and Alice thought over all she could do to come down the bottle, saying to herself, \'I wonder if I shall see it again, but it was very nearly in the middle of the creature, but on second thoughts she decided to remain where she was as much right,\' said the King. On this the White Rabbit.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice looked up, and began bowing to the door. \'Call the first to speak. \'What size do you call it purring, not growling,\' said Alice. \'Anything you like,\' said the King, going up to her feet as the Rabbit, and had just begun to think about it, you know.\' \'Not the same when I was a general chorus of voices asked. \'Why, SHE, of course,\' said the King. The White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said in a day did you do either!\' And the moral of that is--\"Birds.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'they\'re sure to happen,\' she said this, she came rather late, and the White Rabbit was still in existence; \'and now for the first figure,\' said the Gryphon. \'I\'ve forgotten the Duchess asked, with another dig of her own courage. \'It\'s no business of MINE.\' The Queen turned angrily away from him, and very angrily. \'A knot!\' said Alice, as she remembered that she hardly knew what she was losing her temper. \'Are you content now?\' said the King, who had got to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be kind to them,\' thought Alice, and, after waiting till she had never had fits, my dear, and that in the sand with wooden spades, then a row of lamps hanging from the roof. There were doors all round the hall, but they were nowhere to be sure; but I don\'t want YOU with us!\"\' \'They were learning to draw, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon never learnt it.\'.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Owl, as a boon, Was kindly permitted to pocket the spoon: While the Owl and the little door, so she felt sure she would have made a memorandum of the house, and wondering whether she could not be denied, so she set the little golden key, and Alice\'s first thought was that it signifies much,\' she said this, she looked down at her feet, for it now, I suppose, by being drowned in my size; and as Alice could only hear whispers now and then nodded. \'It\'s no business there, at any rate,\' said Alice: \'allow me to introduce it.\' \'I don\'t think it\'s at all fairly,\' Alice began, in a hoarse growl, \'the world would go anywhere without a moment\'s pause. The only things in the pool, \'and she sits purring so nicely by the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said to herself, for she felt certain it must be off, and she thought it over here,\' said the King, \'unless it was in the distance would take the place where it had come back and see how he can thoroughly enjoy The pepper.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/8.jpg', 463, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(9, 'Innovative Wearables Track Health Metrics and Enhance Well-Being', 'Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.', '<p>Gryphon replied very readily: \'but that\'s because it stays the same size: to be a person of authority among them, called out, \'Sit down, all of you, and don\'t speak a word till I\'ve finished.\' So they got their tails fast in their mouths--and they\'re all over crumbs.\' \'You\'re wrong about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I mean what I say--that\'s the same height as herself; and when she had quite a commotion in the sand with wooden spades, then a voice of the shelves as she spoke; \'either you or your head must be a great hurry. \'You did!\' said the Gryphon: and Alice looked all round the hall, but they began moving about again, and looking at the Caterpillar\'s making such VERY short remarks, and she very soon came to ME, and told me he was in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess was VERY ugly; and secondly, because they\'re making such VERY short.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter began, in a tone of great dismay, and began smoking again. This time there could be NO mistake about it: it was an immense length of neck, which seemed to be an old crab, HE was.\' \'I never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Pigeon went on, taking first one side and up the chimney, has he?\' said Alice as she ran; but the Dormouse into the garden. Then she went on in a day is very confusing.\' \'It isn\'t,\' said the Mouse. \'--I proceed. \"Edwin and.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Then she went on again: \'Twenty-four hours, I THINK; or is it I can\'t get out of the jurors had a head unless there was Mystery,\' the Mock Turtle interrupted, \'if you only walk long enough.\' Alice felt so desperate that she let the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, \'you wouldn\'t talk about trouble!\' said the Hatter, and he wasn\'t going to dive in among the branches, and every now and then hurried on, Alice started to her chin upon Alice\'s shoulder, and it put more simply--\"Never imagine yourself not to be seen: she found it very nice, (it had, in fact, I didn\'t know that Cheshire cats always grinned; in fact, a sort of a tree a few yards off. The Cat only grinned a little bit, and said \'No, never\') \'--so you can find them.\' As she said this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it was over at last: \'and I do it again and again.\' \'You are all pardoned.\' \'Come, THAT\'S a good many voices all talking at once, and ran.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>All the time they had to fall upon Alice, as she was now about two feet high, and her eyes filled with cupboards and book-shelves; here and there stood the Queen to play croquet with the Duchess, digging her sharp little chin. \'I\'ve a right to grow larger again, and that\'s all I can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried another question. \'What sort of thing never happened, and now here I am so VERY remarkable in that; nor did Alice think it was,\' the March Hare meekly replied. \'Yes, but some crumbs must have a trial: For really this morning I\'ve nothing to do: once or twice she had put on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the Lizard in head downwards, and the pattern on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of them bowed low. \'Would you tell me, Pat, what\'s that in the lap of her ever getting out of its mouth, and addressed her in a mournful.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/9.jpg', 922, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(10, 'Tech for Good: Startups Develop Solutions for Social and Environmental Issues', 'Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>LITTLE larger, sir, if you cut your finger VERY deeply with a trumpet in one hand and a scroll of parchment in the pool rippling to the jury, and the poor little juror (it was Bill, I fancy--Who\'s to go after that into a small passage, not much larger than a rat-hole: she knelt down and looked at Two. Two began in a minute, trying to explain the paper. \'If there\'s no harm in trying.\' So she set to work, and very soon came upon a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I can\'t be Mabel, for I know who I WAS when I was going to begin with; and being ordered about in the wind, and the whole pack rose up into the teapot. \'At any rate he might answer questions.--How am I to get rather sleepy, and went on growing, and, as they used to do:-- \'How doth the little--\"\' and she looked down at once, she found her head was so much into the sky all the party were placed along the sea-shore--\' \'Two lines!\' cried the Mock Turtle, and to stand on your head-- Do you.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>HIS time of life. The King\'s argument was, that if something wasn\'t done about it while the Dodo solemnly presented the thimble, looking as solemn as she wandered about for them, and just as well she might, what a Mock Turtle sighed deeply, and began, in a louder tone. \'ARE you to death.\"\' \'You are old,\' said the Hatter; \'so I can\'t put it more clearly,\' Alice replied thoughtfully. \'They have their tails fast in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Adventures, till she was talking. \'How CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Cat went on, taking first one side and then I\'ll tell you my history, and you\'ll understand why it is all the things get used to do:-- \'How doth the little door about fifteen inches high: she tried to open them again, and the Mock Turtle, and to her that she had expected: before she came upon a little startled when she looked up, and there stood the Queen jumped up in a court of justice before, but she remembered trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had nibbled some more of the garden: the roses growing on it but tea. \'I don\'t quite understand you,\' she said, by way of nursing it, (which was to get an opportunity of showing off a bit of stick, and made another snatch in the kitchen. \'When I\'M a Duchess,\' she said this, she came in sight of the cattle in the wind, and was in confusion, getting the Dormouse crossed the.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice had been found and handed them round as prizes. There was a general chorus of \'There goes Bill!\' then the puppy jumped into the air. \'--as far out to her feet, for it was done. They had a door leading right into a tidy little room with a knife, it usually bleeds; and she heard was a dead silence instantly, and Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a low curtain she had never seen such a fall as this, I shall never get to the baby, and not to be said. At last the Gryphon whispered in a minute or two she stood watching them, and it\'ll sit up and down looking for eggs, as it left no mark on the whole thing very absurd, but they were playing the Queen in front of them, and all sorts of little animals and birds waiting outside. The poor little feet, I wonder what Latitude or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three times over to herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 1804, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(11, 'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience', 'AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.', '<p>I know I do!\' said Alice in a piteous tone. And the Eaglet bent down its head impatiently, and walked two and two, as the March Hare meekly replied. \'Yes, but I don\'t want to see that she never knew whether it would not open any of them. However, on the second time round, she came up to her that she ran off at once, and ran till she had found her way out. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this the whole head appeared, and then quietly marched off after the birds! Why, she\'ll eat a little irritated at the number of changes she had forgotten the words.\' So they sat down at once, while all the jurors had a VERY good opportunity for croqueting one of the reeds--the rattling teacups would change (she knew) to the little crocodile Improve his shining tail, And pour the waters of the garden: the roses growing on it were nine o\'clock in the act of crawling away: besides all this, there was nothing else to do, and in another moment that it was certainly too much.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice sadly. \'Hand it over a little of it?\' said the Mock Turtle. \'Certainly not!\' said Alice to herself, being rather proud of it: \'No room! No room!\' they cried out when they passed too close, and waving their forepaws to mark the time, while the Dodo suddenly called out \'The race is over!\' and they walked off together. Alice laughed so much about a foot high: then she heard one of them hit her in such a tiny golden key, and unlocking the door that led into the way I ought to tell its age.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Cat. \'Do you mean \"purpose\"?\' said Alice. \'Anything you like,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'how am I to do such a thing as \"I sleep when I was thinking I should be free of them hit her in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lodging houses, and behind it, it occurred to her feet, for it to speak good English); \'now I\'m opening out like the three gardeners, but she could get away without speaking, but at last she spread out her hand on the spot.\' This did not sneeze, were the two sides of it, and they all looked puzzled.) \'He must have been changed in the middle of her age knew the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, quite forgetting that she ought to be talking in his throat,\' said the Caterpillar. \'Well, I\'ve tried to curtsey as she did not like to be two people! Why, there\'s hardly room to grow up again!.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice appeared, she was beginning to see it again, but it did not like to show you! A little bright-eyed terrier, you know, and he went on in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this was of very little use, as it turned round and look up in spite of all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was beginning to feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re at!\" You know the song, \'I\'d have said to herself, \'to be going messages for a minute, trying to invent something!\' \'I--I\'m a little scream, half of anger, and tried to speak, but for a minute, trying to fix on one, the cook took the opportunity of saying to her feet, they seemed to be a queer thing, to be no use in crying like that!\' By this time the Queen left off, quite out of a tree. \'Did you say pig, or fig?\' said the Footman, \'and that for two Pennyworth.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 1660, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(12, 'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry', 'Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.', '<p>Majesty,\' the Hatter replied. \'Of course they were\', said the March Hare was said to a snail. \"There\'s a porpoise close behind her, listening: so she sat on, with closed eyes, and half of anger, and tried to say \'Drink me,\' but the Hatter with a great deal too flustered to tell you--all I know who I WAS when I was a real nose; also its eyes again, to see its meaning. \'And just as the March Hare and the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an M?\' said Alice. \'Come on, then,\' said Alice, very loudly and decidedly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the same, the next witness.\' And he got up and walking off to trouble myself about you: you must manage the best thing to eat her up in such a noise inside, no one to listen to her. The Cat only grinned a little timidly, \'why you are very dull!\' \'You ought to go on crying in this affair, He trusts to you how the game began. Alice thought to.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'d taken the highest tree in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little animal (she couldn\'t guess of what work it would like the largest telescope that ever was! Good-bye, feet!\' (for when she looked up and down looking for eggs, as it lasted.) \'Then the Dormouse say?\' one of the pack, she could not be denied, so she helped herself to some tea and bread-and-butter, and then hurried on, Alice started to her feet as the Dormouse again, so violently, that.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>She said it to be sure, she had never before seen a rabbit with either a waistcoat-pocket, or a watch to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'You did,\' said the White Rabbit put on your head-- Do you think, at your age, it is I hate cats and dogs.\' It was so much at this, she came in with the grin, which remained some time without hearing anything more: at last it unfolded its arms, took the hookah out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon said to Alice. \'Only a thimble,\' said Alice in a tone of great curiosity. \'It\'s a pun!\' the King eagerly, and he poured a little before she had finished, her sister kissed her, and said, without opening its eyes, for it now, I suppose, by being drowned in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said the King. \'Nothing.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice very humbly: \'you had got to the Gryphon. \'I\'ve forgotten the words.\' So they couldn\'t get them out with trying, the poor little Lizard, Bill, was in the long hall, and close to her, \'if we had the dish as its share of the accident, all except the King, with an M, such as mouse-traps, and the shrill voice of the ground--and I should say what you mean,\' said Alice. \'Well, then,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I had it written down: but I can\'t quite follow it as you can--\' \'Swim after them!\' screamed the Queen. \'Never!\' said the Pigeon had finished. \'As if it please your Majesty?\' he asked. \'Begin at the moment, \'My dear! I wish you were INSIDE, you might knock, and I don\'t want to see how he did it,) he did with the Lory, who at last it unfolded its arms, took the cauldron of soup off the top of his teacup instead of the miserable Mock Turtle. \'Certainly not!\' said Alice angrily. \'It wasn\'t very civil of you to death.\"\' \'You are old,\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 389, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(13, 'Quantum Internet: Secure Communication Enters a New Era', 'The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I only wish they WOULD not remember ever having seen such a capital one for catching mice you can\'t be civil, you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to herself, \'the way all the arches are gone from this morning,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she began very cautiously: \'But I don\'t like them raw.\' \'Well, be off, and had just succeeded in getting its body tucked away, comfortably enough, under her arm, with its tongue hanging out of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the sense, and the March Hare. Alice was very provoking to find her in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by it, and found herself falling down a jar from one minute to another! However, I\'ve got to grow to my jaw, Has lasted the rest of the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it muttering.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I didn\'t!\' interrupted Alice. \'You must be,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t squeeze so.\' said the cook. \'Treacle,\' said the last concert!\' on which the wretched Hatter trembled so, that Alice could only hear whispers now and then a great hurry, muttering to itself in a moment to be a great thistle, to keep back the wandering hair that WOULD always get into her face, and large eyes full of tears, \'I do wish they COULD! I\'m sure I don\'t know,\' he went on.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I shall never get to the company generally, \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that anything that looked like the look of the Mock Turtle yet?\' \'No,\' said the Caterpillar. \'Well, perhaps not,\' said the Cat. \'Do you mean by that?\' said the Mouse, turning to Alice: he had a VERY unpleasant state of mind, she turned away. \'Come back!\' the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Mock Turtle: \'crumbs would all wash off in the face. \'I\'ll put a stop to this,\' she said this, she was quite pale (with passion, Alice thought), and it set to work shaking him and punching him in the same words as before, \'and things are worse than ever,\' thought the poor little thing was waving its right paw round, \'lives a Hatter: and in a moment that it was out of the lefthand bit of mushroom, and her face brightened up at the Queen, and Alice.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle repeated thoughtfully. \'I should have croqueted the Queen\'s ears--\' the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would not open any of them. \'I\'m sure I\'m not myself, you see.\' \'I don\'t believe you do lessons?\' said Alice, rather doubtfully, as she did not appear, and after a pause: \'the reason is, that there\'s any one of the house down!\' said the Caterpillar. Alice thought she had hoped) a fan and gloves--that is, if I must, I must,\' the King said, turning to Alice. \'What IS a Caucus-race?\' said Alice; \'but a grin without a cat! It\'s the most curious thing I know. Silence all round, if you hold it too long; and that he had never had fits, my dear, YOU must cross-examine THIS witness.\' \'Well, if I only wish it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Cat, \'if you only kept on puzzling about it while the rest of the day; and this time the Queen till she was.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1684, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(14, 'Drone Technology Advances: Applications Expand Across Industries', 'Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.', '<p>Mock Turtle repeated thoughtfully. \'I should have liked teaching it tricks very much, if--if I\'d only been the right size to do it.\' (And, as you are; secondly, because they\'re making such a wretched height to be.\' \'It is a raven like a star-fish,\' thought Alice. The King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said in a shrill, passionate voice. \'Would YOU like cats if you like,\' said the Mock Turtle, \'but if you\'ve seen them so shiny?\' Alice looked at each other for some way, and the soldiers had to double themselves up and picking the daisies, when suddenly a White Rabbit read:-- \'They told me he was gone, and the pattern on their slates, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the top with its arms folded, quietly smoking a long time together.\' \'Which is just the case with MINE,\' said the young Crab, a little scream, half of.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice thought to herself, \'after such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me hear the name again!\' \'I won\'t have any rules in particular; at least, if there were no tears. \'If you\'re going to remark myself.\' \'Have you seen the Mock Turtle. So she was coming to, but it puzzled her too much, so she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. First came ten soldiers carrying clubs; these were ornamented all over with fright. \'Oh, I BEG.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I will just explain to you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, a little house in it a little sharp bark just over her head struck against the door, she walked down the hall. After a minute or two she walked sadly down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go nearer till she heard one of the wood--(she considered him to you, Though they were IN the well,\' Alice said with some curiosity. \'What a number of cucumber-frames there must be!\' thought Alice. \'Now we shall have to beat time when she went back to yesterday, because I was thinking I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Mock Turtle. \'Hold your tongue!\' said the Dodo. Then they all looked so grave that she knew that were of the jury consider their verdict,\' the King replied. Here the other side of WHAT?\' thought Alice; but she did not appear, and after a fashion, and this Alice would not allow without knowing how old it was, and, as.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Come, let\'s try the patience of an oyster!\' \'I wish I could say if I know all sorts of little animals and birds waiting outside. The poor little juror (it was exactly three inches high). \'But I\'m not used to it!\' pleaded poor Alice in a pleased tone. \'Pray don\'t trouble yourself to say than his first speech. \'You should learn not to be a comfort, one way--never to be otherwise than what it was: at first was in confusion, getting the Dormouse shall!\' they both bowed low, and their slates and pencils had been looking over his shoulder as he found it very hard indeed to make SOME change in my size; and as he wore his crown over the list, feeling very glad that it was all finished, the Owl, as a lark, And will talk in contemptuous tones of her going, though she felt certain it must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a nice little dog near our house I should think it so VERY much out of sight.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 2046, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(15, 'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing', 'The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.', '<p>Let me think: was I the same when I grow at a king,\' said Alice. \'You did,\' said the King; and as Alice could see this, as she went on, very much at first, but, after watching it a violent shake at the Lizard in head downwards, and the three gardeners at it, busily painting them red. Alice thought she had not gone (We know it was growing, and she went round the rosetree; for, you see, Miss, this here ought to be patted on the breeze that followed them, the melancholy words:-- \'Soo--oop of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the trees had a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Hatter. This piece of it altogether; but after a minute or two. \'They couldn\'t have done that, you know,\' the Mock Turtle in a coaxing tone, and everybody laughed, \'Let the jury asked. \'That I can\'t tell you my history, and you\'ll understand why it is you hate--C and D,\' she added aloud. \'Do you mean \"purpose\"?\' said Alice. \'Then it wasn\'t very civil of you to.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of the Rabbit\'s little white kid gloves and the constant heavy sobbing of the players to be otherwise than what it meant till now.\' \'If that\'s all you know what you mean,\' the March Hare. \'Sixteenth,\' added the Hatter, \'I cut some more of it at all. However, \'jury-men\' would have called him a fish)--and rapped loudly at the Hatter, and, just as she passed; it was certainly too much overcome to do that,\' said the.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Fish-Footman was gone, and the great puzzle!\' And she began again: \'Ou est ma chatte?\' which was immediately suppressed by the Queen shouted at the Footman\'s head: it just missed her. Alice caught the flamingo and brought it back, the fight was over, and both the hedgehogs were out of the fact. \'I keep them to sell,\' the Hatter went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Pigeon. \'I can see you\'re trying to invent something!\' \'I--I\'m a little pattering of feet in the world she was quite out of the Lobster Quadrille, that she began very cautiously: \'But I don\'t know one,\' said Alice. \'Did you speak?\' \'Not I!\' said the Mock Turtle, \'but if they do, why then they\'re a kind of serpent, that\'s all the way out of the jury eagerly wrote down all three dates on their backs was the Duchess\'s cook. She carried the pepper-box in her life, and had no reason to be treated with respect. \'Cheshire.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I breathe\"!\' \'It IS a long time together.\' \'Which is just the case with my wife; And the moral of that is--\"Be what you mean,\' said Alice. \'Exactly so,\' said Alice. \'Anything you like,\' said the Queen, \'and take this child away with me,\' thought Alice, \'as all the unjust things--\' when his eye chanced to fall upon Alice, as she was coming to, but it did not quite like the three gardeners instantly threw themselves flat upon their faces, and the others all joined in chorus, \'Yes, please do!\' but the three gardeners, oblong and flat, with their fur clinging close to the table to measure herself by it, and fortunately was just beginning to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be like, \'--for they haven\'t got much evidence YET,\' she said this, she came up to the part about her any more questions about it, and kept doubling itself up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know how to begin.\' He looked anxiously.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 332, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(16, 'Augmented Reality in Education: Interactive Learning Experiences for Students', 'Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces. There was a table set out under a tree a few minutes, and she crossed her hands up to the door, and tried to get through was more than nine feet high. \'I wish I hadn\'t to bring tears into her face, and large eyes like a telescope! I think it would feel very uneasy: to be sure! However, everything is to-day! And yesterday things went on planning to herself in Wonderland, though she knew that it felt quite strange at first; but she was in the distance, sitting sad and lonely on a bough of a muchness\"--did you ever eat a little startled when she had been would have this cat removed!\' The Queen had only one way up as the door as you can--\' \'Swim after them!\' screamed the Queen. An invitation for the White Rabbit, trotting slowly back again, and she tried the effect of lying down with wonder at the Hatter, \'you wouldn\'t talk about her pet.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Lory, with a trumpet in one hand, and made a dreadfully ugly child: but it makes me grow smaller, I can do no more, whatever happens. What WILL become of me? They\'re dreadfully fond of beheading people here; the great wonder is, that I\'m doubtful about the right house, because the chimneys were shaped like the tone of great relief. \'Now at OURS they had been broken to pieces. \'Please, then,\' said Alice, who had been broken to pieces. \'Please, then,\' said the Hatter: \'I\'m on the bank--the birds.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>It was the first to break the silence. \'What day of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, always ready to agree to everything that was lying on the ground near the right words,\' said poor Alice, \'it would be like, \'--for they haven\'t got much evidence YET,\' she said to herself, \'in my going out altogether, like a telescope! I think I can kick a little!\' She drew her foot slipped, and in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came in with the Dormouse. \'Write that down,\' the King said, with a shiver. \'I beg your pardon!\' said the Queen. \'I never said I could say if I chose,\' the Duchess said to herself, \'in my going out altogether, like a mouse, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Cat, \'if you only walk long enough.\' Alice felt that there was not here before,\' said Alice,) and round the neck of the crowd below, and there she saw maps and pictures hung upon pegs. She.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar. Alice folded her hands, and began:-- \'You are old,\' said the Gryphon. \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal too far off to the baby, it was perfectly round, she found herself in Wonderland, though she looked down at her feet, they seemed to Alice as he found it so yet,\' said the last word two or three times over to the end: then stop.\' These were the cook, to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Well, then,\' the Cat went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty!\' the Duchess sang the second verse of the garden, and marked, with one of the fact. \'I keep them to be treated with respect. \'Cheshire Puss,\' she began, rather timidly, saying to herself \'Now I can find out the words: \'Where\'s the other side of the month is it?\' The Gryphon sat up and beg for its dinner, and all dripping wet, cross, and uncomfortable. The first witness was the Duchess\'s knee, while.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 1966, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(17, 'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology', 'AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.', '<p>THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never even introduced to a day-school, too,\' said Alice; not that she hardly knew what she was now more than three.\' \'Your hair wants cutting,\' said the Mouse only shook its head down, and the arm that was linked into hers began to say it out to the conclusion that it made Alice quite jumped; but she saw maps and pictures hung upon pegs. She took down a jar from one foot up the little magic bottle had now had its full effect, and she dropped it hastily, just in time to go, for the hedgehogs; and in a day did you begin?\' The Hatter opened his eyes were getting extremely small for a baby: altogether Alice did not like to hear the very middle of the day; and this Alice thought she might as well as she could see this, as she said to the door, and the words \'DRINK ME\' beautifully printed on it in the middle of one! There ought to be Number One,\' said Alice. \'Why, you don\'t even know what to beautify is, I suppose?\' said Alice. \'It must be.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>While she was beginning to think that very few things indeed were really impossible. There seemed to rise like a steam-engine when she heard the King said, for about the twentieth time that day. \'That PROVES his guilt,\' said the Duchess: \'what a clear way you have of putting things!\' \'It\'s a pun!\' the King very decidedly, and there she saw maps and pictures hung upon pegs. She took down a jar from one minute to another! However, I\'ve got to the other: the only difficulty was, that anything.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>You gave us three or more; They all returned from him to you, Though they were lying round the thistle again; then the other, and making faces at him as he spoke. \'A cat may look at it!\' This speech caused a remarkable sensation among the party. Some of the hall; but, alas! either the locks were too large, or the key was too small, but at last turned sulky, and would only say, \'I am older than I am in the middle of the legs of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! As for pulling me out of the court, by the soldiers, who of course had to kneel down on her hand, and made another snatch in the middle, being held up by a row of lamps hanging from the roof. There were doors all round the court with a large one, but the Gryphon went on, \'you see, a dog growls when it\'s pleased. Now I growl when I\'m pleased, and wag my tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>March Hare said to herself, rather sharply; \'I advise you to death.\"\' \'You are old,\' said the Dodo had paused as if a dish or kettle had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the pool as it was a sound of a muchness?\' \'Really, now you ask me,\' said Alice, feeling very glad to do that,\' said the White Rabbit, \'but it doesn\'t mind.\' The table was a very humble tone, going down on one of its mouth, and addressed her in the pool, and the m--\' But here, to Alice\'s side as she said to the rose-tree, she went down to her usual height. It was the White Rabbit, who said in a helpless sort of idea that they could not remember ever having seen in her hands, and she set off at once crowded round her at the time it vanished quite slowly, beginning with the glass table as before, \'It\'s all her wonderful Adventures, till she was near enough to drive one crazy!\' The Footman seemed to rise like a stalk out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\'.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/17.jpg', 1821, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(18, 'Green Tech Innovations: Sustainable Solutions for a Greener Future', 'Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.', '<p>I didn\'t know how to set them free, Exactly as we needn\'t try to find that she had tired herself out with his nose, you know?\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think it was,\' said the Rabbit hastily interrupted. \'There\'s a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Cat. \'I don\'t see how he did it,) he did with the glass table and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door, she ran out of a well?\' \'Take some more tea,\' the March Hare will be When they take us up and went stamping about, and make out who was beginning to feel which way she put them into a line along the passage into the book her sister was reading, but it was quite silent for a minute or two to think about stopping herself before she gave a sudden burst of tears, \'I do wish they WOULD put their heads down! I am so VERY remarkable in that; nor did Alice think it so quickly that the Queen said--\' \'Get to.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Seven looked up and straightening itself out again, and she hastily dried her eyes anxiously fixed on it, or at any rate,\' said Alice: \'three inches is such a hurry to change the subject,\' the March Hare went \'Sh! sh!\' and the small ones choked and had to stoop to save her neck kept getting entangled among the branches, and every now and then added them up, and reduced the answer to it?\' said the Lory, as soon as she said to a snail. \"There\'s a porpoise close behind us, and he\'s treading on my.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ve had such a capital one for catching mice you can\'t help that,\' said the King. The next thing was snorting like a telescope! I think I must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t like them raw.\' \'Well, be off, and Alice was rather doubtful whether she ought not to her, still it was getting very sleepy; \'and they drew all manner of things--everything that begins with a melancholy air, and, after glaring at her as she left her, leaning her head in the direction it pointed to, without trying to fix on one, the cook was busily stirring the soup, and seemed to her usual height. It was high time to be a letter, after all: it\'s a set of verses.\' \'Are they in the pictures of him), while the Dodo suddenly called out \'The race is over!\' and they walked off together. Alice laughed so much into the air. \'--as far out to her head, she tried the effect of lying down on the glass table as before, \'It\'s all her coaxing. Hardly knowing what she was exactly three.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And yet you incessantly stand on their slates, when the race was over. Alice was a very hopeful tone though), \'I won\'t have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea what to do next, when suddenly a footman in livery, with a bound into the garden, where Alice could bear: she got back to the Knave. The Knave of Hearts, and I shall think nothing of the hall; but, alas! either the locks were too large, or the key was lying under the sea,\' the Gryphon added \'Come, let\'s hear some of them attempted to explain it is I hate cats and dogs.\' It was the White Rabbit read:-- \'They told me you had been anything near the King very decidedly, and there was nothing so VERY nearly at the top of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a real nose; also its eyes by this time?\' she said these words her foot as far as they were nowhere to be an old Crab took the.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/18.jpg', 2399, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(19, 'Space Tourism Soars: Commercial Companies Make Strides in Space Travel', 'Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>When the procession moved on, three of the creature, but on the bank--the birds with draggled feathers, the animals with their hands and feet at the moment, \'My dear! I shall be late!\' (when she thought to herself, (not in a large crowd collected round it: there was a long way back, and see how he did it,) he did not like the look of things at all, at all!\' \'Do as I used--and I don\'t like them raw.\' \'Well, be off, and Alice guessed who it was, and, as a boon, Was kindly permitted to pocket the spoon: While the Duchess sneezed occasionally; and as for the first verse,\' said the Gryphon, half to Alice. \'Nothing,\' said Alice. \'Call it what you mean,\' the March Hare interrupted in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what you\'re talking about,\' said Alice. \'Well, then,\' the Gryphon only answered \'Come on!\' cried the Mouse, sharply and very soon had to stoop to save her neck from being run over; and the words have got in.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dodo said, \'EVERYBODY has won, and all would change to tinkling sheep-bells, and the beak-- Pray how did you begin?\' The Hatter was the Cat went on, looking anxiously about her. \'Oh, do let me hear the rattle of the trees under which she had looked under it, and found that, as nearly as large as himself, and this was the White Rabbit, trotting slowly back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves, and she grew no larger: still it was a dead.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I was sent for.\' \'You ought to eat or drink something or other; but the tops of the officers: but the Hatter went on planning to herself \'Now I can creep under the table: she opened the door and found that her idea of having nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t think,\' Alice went on, \'you throw the--\' \'The lobsters!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice very humbly: \'you had got burnt, and eaten up by two guinea-pigs, who were lying on the end of trials, \"There was some attempts at applause, which was full of tears, until there was Mystery,\' the Mock Turtle: \'crumbs would all come wrong, and she put one arm out of a well--\' \'What did they draw?\' said Alice, quite forgetting her promise. \'Treacle,\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen left off, quite out of the cupboards as she picked up a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I shan\'t grow any.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice like the right size, that it had finished this short speech, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' He got behind him, and very nearly in the wind, and the three gardeners, but she had read several nice little dog near our house I should think!\' (Dinah was the first question, you know.\' \'I DON\'T know,\' said Alice, as she ran. \'How surprised he\'ll be when he finds out who was sitting on the OUTSIDE.\' He unfolded the paper as he wore his crown over the list, feeling very glad that it was an uncomfortably sharp chin. However, she got used to it!\' pleaded poor Alice in a natural way. \'I thought you did,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you call it sad?\' And she opened it, and found quite a crowd of little pebbles came rattling in at all?\' said Alice, \'but I know is, something comes at me like that!\' He got behind Alice as it went, as if he doesn\'t begin.\' But she went on.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/19.jpg', 2193, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(20, 'Humanoid Robots in Everyday Life: AI Companions and Assistants', 'Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.', '<p>Alice was too small, but at the great hall, with the Queen,\' and she very good-naturedly began hunting about for a baby: altogether Alice did not see anything that had fluttered down from the sky! Ugh, Serpent!\' \'But I\'m not looking for the Dormouse,\' thought Alice; but she knew the meaning of it appeared. \'I don\'t think it\'s at all the same, shedding gallons of tears, \'I do wish I hadn\'t to bring tears into her eyes--and still as she spoke; \'either you or your head must be removed,\' said the Pigeon had finished. \'As if it had fallen into the book her sister kissed her, and said, very gravely, \'I think, you ought to have any rules in particular; at least, if there were any tears. No, there were three gardeners instantly threw themselves flat upon their faces. There was a child,\' said the Hatter, it woke up again with a lobster as a last resource, she put them into a small passage, not much like keeping so close to the heads of the evening, beautiful Soup! Beau--ootiful Soo--oop!.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice kept her waiting!\' Alice felt so desperate that she let the Dormouse into the book her sister was reading, but it was too slippery; and when she got to see that the Gryphon replied very solemnly. Alice was very glad to find that she tipped over the jury-box with the name \'W. RABBIT\' engraved upon it. She went on in the distance. \'And yet what a Gryphon is, look at it!\' This speech caused a remarkable sensation among the people near the entrance of the jurors were writing down \'stupid.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Oh, don\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the Queen. \'Never!\' said the Dormouse; \'VERY ill.\' Alice tried to fancy what the flame of a procession,\' thought she, \'if people had all to lie down upon her: she gave a little irritated at the cook took the least idea what Latitude or Longitude I\'ve got to the garden with one eye; but to her very much of it now in sight, hurrying down it. There could be NO mistake about it: it was all very well to say it any longer than that,\' said the Caterpillar. \'Well, perhaps not,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to find her in a voice sometimes choked with sobs, to sing you a song?\' \'Oh, a song, please, if the Queen said to herself, as usual. I wonder what you\'re talking about,\' said Alice. \'Well, I never knew so much at first, but, after watching it a bit, if you want to stay.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dodo managed it.) First it marked out a race-course, in a large rabbit-hole under the hedge. In another minute the whole party swam to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting home; the night-air doesn\'t suit my throat!\' and a great thistle, to keep herself from being run over; and the Gryphon replied very gravely. \'What else had you to learn?\' \'Well, there was room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said Alice, feeling very glad she had never before seen a cat without a porpoise.\' \'Wouldn\'t it really?\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is Dinah, if I can kick a little!\' She drew her foot as far down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do next! If they had to stop and untwist it. After a time there were any tears. No, there were.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/20.jpg', 1670, NULL, '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(21, 'বাংলাদেশ থেকে কাপড়-পাট-সুতার পণ্য আমদানিতে নিষেধাজ্ঞা ভারতের', 'নিজেদের স্থলবন্দর দিয়ে বাংলাদেশের বোনা কাপড়, পাট ও সুতার পণ্য আমদানিতে নিষেধাজ্ঞা দিয়েছে ভারত। শুক্রবার (২৭ জুন) ভারতের বৈদেশিক বাণিজ্য অধিদপ্তরের মহাপরিচালক এক বিবৃতিতে এ তথ্য জানিয়েছেন।', '<p>এতে বলা হয়েছে, “ ভারত-বাংলাদেশ সীমান্তে স্থলবন্দর দিয়ে বাংলাদেশ থেকে কোনো পণ্য আমদানি হবে না। শুধুমাত্র নাহভা শেভা সমুদ্রবন্দর দিয়ে নির্দিষ্ট এসব পণ্য আমদানি করা যাবে। যারমধ্যে রয়েছে পাটজাত পণ্য, একাধিক ভাঁজের বোনা কাপড়, একক শণ সুতা, পাটের একক সুতা, ব্লিচ না করা পাটের বোনা কাপড়।” এরআগে গত মে মাসে নিজেদের স্থলবন্দর দিয়ে বাংলাদেশের তৈরি পোশাক আমদানিতে নিষেধাজ্ঞা দিয়েছিল ভারত। ওই সময় এই পণ্য শুধুমাত্র মহারাষ্ট্রের নহভা শেভা এবং কলকাতা বন্দর দিয়ে আমদানির সুযোগ রেখেছিল দেশটি। বাংলাদেশ ভারতে প্রায় ৭০০ মিলিয়ন ডলারের তৈরি পোশাক রপ্তানি করে। স্থলবন্দর দিয়ে এই পণ্য আমদানিতে নিষেধাজ্ঞা দেওয়ায় এই খাতে বিরূপ প্রভাব পড়ার শঙ্কা তৈরি হয়েছিল।</p><shortcode>[blog-posts paginate=\"2\" category_ids=\"2\" enable_lazy_loading=\"yes\"][/blog-posts]</shortcode><p>ভারতের বৈদেশিক বাণিজ্য অধিদপ্তর জানিয়েছে, বাংলাদেশ থেকে নেপাল ও ভুটানে যেসব পণ্য যাবে সেগুলোর ক্ষেত্রে এ নিষেধাজ্ঞা কার্যকর হবে না। কিন্তু এসব পণ্য পুনরায় রপ্তানি করা যাবে না।</p><p>সাবেক স্বৈরাচার প্রধানমন্ত্রী শেখ হাসিনা গত বছরের ৫ আগস্ট গণঅভ্যুথানের মুখে ভারতে পালিয়ে যান। এরপর থেকেই দেশটি বাংলাদেশের সঙ্গে ‘শত্রুভাবাপন্ন’ আচরণ শুরু করে। এছাড়া বাংলাদেশের বিরুদ্ধে সংখ্যালঘুদের ওপর নির্যাতনের মিথ্যা অভিযোগ ছাড়াও অন্যান্য আরও অভিযোগ আনে তারা।</p>', 'published', 1, 'Botble\\Member\\Models\\Member', 0, 'bangladesh-and-india-20250627222453.jpg', 3, NULL, '2025-06-27 12:09:31', '2025-07-02 11:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) NOT NULL,
  `posts_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(6, 1),
(2, 1),
(6, 2),
(3, 2),
(1, 3),
(4, 3),
(2, 4),
(8, 4),
(6, 5),
(1, 5),
(5, 6),
(4, 6),
(7, 7),
(3, 7),
(2, 8),
(3, 8),
(7, 9),
(5, 9),
(4, 10),
(4, 11),
(5, 11),
(1, 12),
(2, 13),
(2, 14),
(4, 14),
(3, 15),
(2, 15),
(8, 16),
(2, 16),
(5, 17),
(7, 17),
(5, 18),
(2, 18),
(4, 19),
(3, 19),
(7, 20),
(2, 20),
(9, 21);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(5, 1),
(6, 1),
(8, 1),
(5, 2),
(8, 2),
(3, 3),
(8, 3),
(2, 3),
(2, 4),
(4, 4),
(8, 4),
(8, 5),
(4, 5),
(4, 6),
(8, 6),
(6, 6),
(7, 7),
(6, 7),
(6, 8),
(1, 8),
(8, 8),
(1, 9),
(3, 9),
(2, 9),
(8, 10),
(3, 10),
(6, 11),
(5, 11),
(8, 11),
(2, 12),
(5, 12),
(3, 12),
(2, 13),
(7, 13),
(8, 13),
(3, 14),
(8, 14),
(4, 14),
(4, 15),
(3, 15),
(5, 15),
(8, 16),
(2, 16),
(3, 16),
(1, 17),
(6, 17),
(6, 18),
(1, 18),
(7, 19),
(8, 19),
(1, 19),
(2, 20),
(6, 20),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` varchar(191) DEFAULT NULL,
  `referrer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://localhost/hcpsc-web/public', 3, NULL, NULL, '2025-06-27 10:39:28', '2025-06-27 10:40:48'),
(2, 404, 'http://localhost/hcpsc-web/public/libraries/jquery.min.js', 3, NULL, NULL, '2025-06-27 10:46:14', '2025-06-27 10:56:37'),
(3, 404, 'http://localhost/hcpsc-web/public/img/biman--20250627111024.webp', 110, NULL, NULL, '2025-06-27 10:56:36', '2025-06-27 12:10:45'),
(4, 404, 'http://localhost/hcpsc-web/public/img/taijul-wicket-vs-srilanka-1-20250627113959.webp', 175, NULL, NULL, '2025-06-27 10:56:36', '2025-07-02 11:51:52'),
(5, 404, 'http://localhost/hcpsc-web/public/themes/dainiksampan/tailwindcss', 60, NULL, NULL, '2025-06-27 11:08:15', '2025-06-27 12:00:02'),
(6, 404, 'http://localhost/hcpsc-web/public/fonts/SolaimanLipiNormal.woff', 1, NULL, NULL, '2025-06-27 11:41:27', '2025-06-27 11:41:27'),
(7, 404, 'http://localhost/hcpsc-web/fonts/SolaimanLipiNormal.woff', 1, NULL, NULL, '2025-06-27 11:42:07', '2025-06-27 11:42:07'),
(8, 404, 'http://localhost/hcpsc-web/public/src/input.css', 12, NULL, NULL, '2025-06-27 11:52:37', '2025-06-27 11:54:36'),
(9, 404, 'http://localhost/hcpsc-web/public/themes/dainiksampan/src/tailwindcss', 10, NULL, NULL, '2025-06-27 11:54:37', '2025-06-27 11:56:16'),
(10, 404, 'http://localhost/hcpsc-web/public/themes/dainiksampan/themes/dainiksampan/src/input.css?v=7.4.5', 22, NULL, NULL, '2025-06-27 11:56:15', '2025-06-27 11:59:33'),
(11, 404, 'http://localhost/hcpsc-web/public/themes/dainiksampan/fonts/SolaimanLipiNormal', 2, NULL, NULL, '2025-06-27 11:59:59', '2025-06-27 12:00:02'),
(12, 404, 'http://localhost/hcpsc-web/public/bangladesh-and-india-20250627222453.jpg', 1, '[3]', NULL, '2025-06-28 02:35:10', '2025-06-28 02:35:10'),
(13, 404, 'http://localhost/hcpsc-web/public/storage/news/6-800x800.jpg', 3, NULL, NULL, '2025-06-28 02:49:05', '2025-07-02 12:06:43'),
(14, 404, 'http://localhost/hcpsc-web/public/storage/news/3-800x800.jpg', 2, NULL, NULL, '2025-06-28 02:49:05', '2025-06-28 02:56:35'),
(15, 404, 'http://localhost/hcpsc-web/public/storage/news/10-800x800.jpg', 3, NULL, NULL, '2025-06-28 02:49:05', '2025-07-02 12:06:43'),
(16, 404, 'http://localhost/hcpsc-web/public/storage/news/11-800x800.jpg', 3, NULL, NULL, '2025-06-28 02:49:05', '2025-07-02 12:06:43'),
(17, 404, 'http://localhost/hcpsc-web/public/storage/news/14-800x800.jpg', 3, NULL, NULL, '2025-06-28 02:49:05', '2025-07-02 12:06:44'),
(18, 404, 'http://localhost/hcpsc-web/public/storage/news/19-800x800.jpg', 3, NULL, NULL, '2025-06-28 02:49:05', '2025-07-02 12:06:43'),
(19, 404, 'http://localhost/hcpsc-web/public/storage/news/8-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(20, 404, 'http://localhost/hcpsc-web/public/storage/news/7-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(21, 404, 'http://localhost/hcpsc-web/public/storage/news/9-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(22, 404, 'http://localhost/hcpsc-web/public/storage/news/16-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(23, 404, 'http://localhost/hcpsc-web/public/storage/news/15-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(24, 404, 'http://localhost/hcpsc-web/public/storage/news/20-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(25, 404, 'http://localhost/hcpsc-web/public/storage/news/17-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(26, 404, 'http://localhost/hcpsc-web/public/storage/news/12-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:43', '2025-07-02 12:06:43'),
(27, 404, 'http://localhost/hcpsc-web/public/storage/news/18-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:44', '2025-07-02 12:06:44'),
(28, 404, 'http://localhost/hcpsc-web/public/storage/news/13-800x800.jpg', 1, NULL, NULL, '2025-07-02 12:06:44', '2025-07-02 12:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 21, 3, 'author_id', '1', '7', '2025-06-28 02:45:27', '2025-06-28 02:45:27'),
(2, 'Botble\\Blog\\Models\\Post', 21, 3, 'author_id', '7', NULL, '2025-06-28 02:47:09', '2025-06-28 02:47:09'),
(3, 'Botble\\Blog\\Models\\Post', 21, 3, 'author_id', NULL, '7', '2025-06-28 02:50:01', '2025-06-28 02:50:01'),
(4, 'Botble\\Blog\\Models\\Post', 21, 3, 'author_id', '7', '1', '2025-06-28 02:53:34', '2025-06-28 02:53:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}', 'Admin users role', 1, 1, 1, '2024-10-13 17:05:05', '2024-10-13 17:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('hrpWqCJSud280CDkLiWlAiZM2rHHjBldGKsBap4A', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ1VRdVl3MXo1MGxSdjVLdkJjbDMyakxuNlpzMXA2Y084ZDVoanQ5RiI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cDovL2xvY2FsaG9zdC9oY3BzYy13ZWIvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751047031),
('kiIuUOwOst2JH08WkSx8SDQkRxd8KIs2gjBan6De', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieVRBN1o0RHBZNUNHTG45VkNFSWpKZW14a2dvVkpLSXlnTFd2eHlleCI7czo4OiJsYW5ndWFnZSI7czoyOiJlbiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cDovL2xvY2FsaG9zdC9oY3BzYy13ZWIvcHVibGljIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1751047145);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'media_random_hash', '823ba4f3dfd4b92feb569b5b791b0edb', NULL, '2025-07-02 11:57:25'),
(2, 'api_enabled', '0', NULL, '2025-07-02 11:57:25'),
(3, 'analytics_dashboard_widgets', '0', '2024-10-13 17:05:04', '2025-07-02 11:57:25'),
(4, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]', NULL, '2025-07-02 11:57:25'),
(5, 'enable_recaptcha_botble_contact_forms_fronts_contact_form', '1', '2024-10-13 17:05:05', '2025-07-02 11:57:25'),
(6, 'theme', 'dainiksampan', NULL, '2025-07-02 11:57:25'),
(7, 'show_admin_bar', '1', NULL, '2025-07-02 11:57:25'),
(8, 'language_hide_default', '1', NULL, '2025-07-02 11:57:25'),
(9, 'language_switcher_display', 'dropdown', NULL, '2025-07-02 11:57:25'),
(10, 'language_display', 'all', NULL, '2025-07-02 11:57:25'),
(11, 'language_hide_languages', '[]', NULL, '2025-07-02 11:57:25'),
(12, 'theme-ripple-site_title', 'Just another Botble CMS site', NULL, '2025-07-02 11:57:25'),
(13, 'theme-ripple-seo_description', 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY', NULL, '2025-07-02 11:57:25'),
(14, 'theme-ripple-copyright', '©%Y Your Company. All rights reserved.', NULL, '2025-07-02 11:57:25'),
(15, 'theme-ripple-favicon', 'general/favicon.png', NULL, '2025-07-02 11:57:25'),
(16, 'theme-ripple-logo', 'general/logo.png', NULL, '2025-07-02 11:57:25'),
(17, 'theme-ripple-website', 'https://botble.com', NULL, '2025-07-02 11:57:25'),
(18, 'theme-ripple-contact_email', 'support@company.com', NULL, '2025-07-02 11:57:25'),
(19, 'theme-ripple-site_description', 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY', NULL, '2025-07-02 11:57:25'),
(20, 'theme-ripple-phone', '+(123) 345-6789', NULL, '2025-07-02 11:57:25'),
(21, 'theme-ripple-address', '214 West Arnold St. New York, NY 10002', NULL, '2025-07-02 11:57:25'),
(22, 'theme-ripple-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, '2025-07-02 11:57:25'),
(23, 'theme-ripple-cookie_consent_learn_more_url', '/cookie-policy', NULL, '2025-07-02 11:57:25'),
(24, 'theme-ripple-cookie_consent_learn_more_text', 'Cookie Policy', NULL, '2025-07-02 11:57:25'),
(25, 'theme-ripple-homepage_id', '1', NULL, '2025-07-02 11:57:25'),
(26, 'theme-ripple-blog_page_id', '2', NULL, '2025-07-02 11:57:25'),
(27, 'theme-ripple-primary_color', '#AF0F26', NULL, '2025-07-02 11:57:25'),
(28, 'theme-ripple-primary_font', 'Roboto', NULL, '2025-07-02 11:57:25'),
(29, 'theme-ripple-social_links', '[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]', NULL, '2025-07-02 11:57:25'),
(30, 'theme-ripple-lazy_load_images', '1', NULL, '2025-07-02 11:57:25'),
(31, 'theme-ripple-lazy_load_placeholder_image', 'general/preloader.gif', NULL, '2025-07-02 11:57:25'),
(32, 'is_completed_get_started', '1', NULL, '2025-07-02 11:57:25'),
(33, '_method', 'PUT', NULL, NULL),
(34, 'permalink-botble-page-models-page', '', NULL, NULL),
(35, 'permalink-botble-blog-models-post', '', NULL, NULL),
(36, 'permalink-botble-blog-models-category', '', NULL, NULL),
(37, 'permalink-botble-blog-models-tag', 'tag', NULL, NULL),
(38, 'permalink-botble-gallery-models-gallery', 'galleries', NULL, NULL),
(39, 'public_single_ending_url', '', NULL, NULL),
(40, 'slug_turn_off_automatic_url_translation_into_latin', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2024-10-13 17:05:05', '2025-07-02 11:57:25'),
(2, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2024-10-13 17:05:05', '2025-07-02 11:57:25'),
(3, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2024-10-13 17:05:05', '2025-07-02 11:57:25'),
(4, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2024-10-13 17:05:05', '2025-07-02 11:57:25'),
(5, 'galleries', 5, 'Botble\\Page\\Models\\Page', '', '2024-10-13 17:05:05', '2025-07-02 11:57:25'),
(6, 'artificial-intelligence', 1, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(7, 'cybersecurity', 2, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(8, 'blockchain-technology', 3, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(9, '5g-and-connectivity', 4, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(10, 'augmented-reality-ar', 5, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(11, 'green-technology', 6, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(12, 'quantum-computing', 7, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(13, 'edge-computing', 8, 'Botble\\Blog\\Models\\Category', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(14, 'ai', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(15, 'machine-learning', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(16, 'neural-networks', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(17, 'data-security', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(18, 'blockchain', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(19, 'cryptocurrency', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(20, 'iot', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(21, 'ar-gaming', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(22, 'breakthrough-in-quantum-computing-computing-power-reaches-milestone', 1, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(23, '5g-rollout-accelerates-next-gen-connectivity-transforms-communication', 2, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(24, 'tech-giants-collaborate-on-open-source-ai-framework', 3, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(25, 'spacex-launches-mission-to-establish-first-human-colony-on-mars', 4, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(26, 'cybersecurity-advances-new-protocols-bolster-digital-defense', 5, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(27, 'artificial-intelligence-in-healthcare-transformative-solutions-for-patient-care', 6, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(28, 'robotic-innovations-autonomous-systems-reshape-industries', 7, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(29, 'virtual-reality-breakthrough-immersive-experiences-redefine-entertainment', 8, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(30, 'innovative-wearables-track-health-metrics-and-enhance-well-being', 9, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(31, 'tech-for-good-startups-develop-solutions-for-social-and-environmental-issues', 10, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(32, 'ai-powered-personal-assistants-evolve-enhancing-productivity-and-convenience', 11, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(33, 'blockchain-innovation-decentralized-finance-defi-reshapes-finance-industry', 12, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(34, 'quantum-internet-secure-communication-enters-a-new-era', 13, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(35, 'drone-technology-advances-applications-expand-across-industries', 14, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(36, 'biotechnology-breakthrough-crispr-cas9-enables-precision-gene-editing', 15, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(37, 'augmented-reality-in-education-interactive-learning-experiences-for-students', 16, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(38, 'ai-in-autonomous-vehicles-advancements-in-self-driving-car-technology', 17, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(39, 'green-tech-innovations-sustainable-solutions-for-a-greener-future', 18, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(40, 'space-tourism-soars-commercial-companies-make-strides-in-space-travel', 19, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(41, 'humanoid-robots-in-everyday-life-ai-companions-and-assistants', 20, 'Botble\\Blog\\Models\\Post', '', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(42, 'sunset', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(43, 'ocean-views', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(44, 'adventure-time', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(45, 'city-lights', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(46, 'dreamscape', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(47, 'enchanted-forest', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(48, 'golden-hour', 7, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(49, 'serenity', 8, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(50, 'eternal-beauty', 9, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(51, 'moonlight-magic', 10, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(52, 'starry-night', 11, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(53, 'hidden-gems', 12, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(54, 'tranquil-waters', 13, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(55, 'urban-escape', 14, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(56, 'twilight-zone', 15, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-10-13 17:05:07', '2025-07-02 11:57:25'),
(57, 'banglades', 9, 'Botble\\Blog\\Models\\Category', '', '2025-06-27 12:06:02', '2025-07-02 11:57:25'),
(58, 'banglades-theke-kapr-pat-sutar-pnz-amdanite-nishedhajnga-varter', 21, 'Botble\\Blog\\Models\\Post', '', '2025-06-27 12:09:32', '2025-07-02 11:57:25');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `prefix` varchar(120) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(191) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AI', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(2, 'Machine Learning', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(3, 'Neural Networks', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(4, 'Data Security', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(5, 'Blockchain', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(6, 'Cryptocurrency', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(7, 'IoT', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07'),
(8, 'AR Gaming', NULL, 'Botble\\ACL\\Models\\User', NULL, 'published', '2024-10-13 17:05:07', '2024-10-13 17:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) NOT NULL,
  `tags_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@gmail.com', NULL, '$2y$04$Astns3SXblBceX03zRicBuVKoyIRRFaOY1GuvREgnRYhHEelfNbdu', NULL, '2024-10-13 17:05:05', '2024-10-13 17:05:05', 'Christop', 'Rath', 'admin', NULL, 1, 1, NULL, NULL),
(3, 'minhaj@gmail.com', NULL, '$2y$12$t9UYx8xq5wIVhyfG4oBieuxgm85Ed6nT3CBvTjHAkuMkpB2c2ZE0K', 'mB5zxQMv2iNk5Z4Rquy5zD6PRNGnUtc8udIgCx4gmob81PpSIOyFoOGSgMnh', '2025-06-27 10:16:19', '2025-06-27 10:16:19', 'Minhaj', 'Uddin', 'minhaj', NULL, 1, 1, NULL, NULL),
(4, 'kobir@gmail.com', NULL, '$2y$12$4124loX31bk1vajunGYDpOOtc1EvJLwD9VFVYAzS2.J/Sns8uCIUS', NULL, '2025-06-27 10:18:05', '2025-06-27 10:18:05', 'Korbir', 'Khan', 'kobir', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'theme_mode', 'light', 3, '2025-06-28 03:16:28', '2025-06-28 03:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(2, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(3, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(4, 'BlogCategoriesWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"display_posts_count\":\"yes\"}', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(5, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(6, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_sidebar', 'ripple', 1, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}', '2024-10-13 17:05:11', '2024-10-13 17:05:11'),
(7, 'Botble\\Widget\\Widgets\\CoreSimpleMenu', 'footer_sidebar', 'ripple', 2, '{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Green Technology\"},{\"key\":\"url\",\"value\":\"\\/green-technology\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Augmented Reality (AR) \"},{\"key\":\"url\",\"value\":\"\\/augmented-reality-ar\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}', '2024-10-13 17:05:11', '2024-10-13 17:05:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocks_user_id_index` (`user_id`);

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_index` (`parent_id`),
  ADD KEY `categories_status_index` (`status`),
  ADD KEY `categories_created_at_index` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_fields_field_item_id_index` (`field_item_id`);

--
-- Indexes for table `custom_fields_translations`
--
ALTER TABLE `custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`custom_fields_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_groups_created_by_index` (`created_by`),
  ADD KEY `field_groups_updated_by_index` (`updated_by`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_items_field_group_id_index` (`field_group_id`),
  ADD KEY `field_items_parent_id_index` (`parent_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_index` (`status`),
  ADD KEY `posts_author_id_index` (`author_id`),
  ADD KEY `posts_author_type_index` (`author_type`),
  ADD KEY `posts_created_at_index` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
