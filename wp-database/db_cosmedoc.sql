-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 16 2020 г., 23:01
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_cosmedoc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wss_actionscheduler_actions`
--

CREATE TABLE `wss_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_actionscheduler_actions`
--

INSERT INTO `wss_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-09-18 11:13:09', '2020-09-18 11:13:09', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600427589;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600427589;}', 1, 1, '2020-09-18 11:13:22', '2020-09-18 11:13:22', 0, NULL),
(7, 'action_scheduler/migration_hook', 'complete', '2020-09-18 11:14:22', '2020-09-18 11:14:22', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600427662;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600427662;}', 1, 1, '2020-09-18 11:14:23', '2020-09-18 11:14:23', 0, NULL),
(8, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-09-19 11:50:05', '2020-09-19 11:50:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600516205;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600516205;}', 0, 1, '2020-09-19 11:50:06', '2020-09-19 11:50:06', 0, NULL),
(9, 'action_scheduler/migration_hook', 'complete', '2020-09-22 16:33:45', '2020-09-22 16:33:45', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600792425;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600792425;}', 1, 1, '2020-09-22 16:33:53', '2020-09-22 16:33:53', 0, NULL),
(10, 'action_scheduler/migration_hook', 'complete', '2020-09-22 16:34:53', '2020-09-22 16:34:53', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600792493;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600792493;}', 1, 1, '2020-09-22 16:35:06', '2020-09-22 16:35:06', 0, NULL),
(11, 'action_scheduler/migration_hook', 'complete', '2020-09-22 21:39:14', '2020-09-22 21:39:14', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600810754;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600810754;}', 1, 1, '2020-09-22 21:40:06', '2020-09-22 21:40:06', 0, NULL),
(12, 'action_scheduler/migration_hook', 'complete', '2020-09-22 21:41:06', '2020-09-22 21:41:06', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1600810866;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600810866;}', 1, 1, '2020-09-22 21:41:09', '2020-09-22 21:41:09', 0, NULL),
(13, 'action_scheduler/migration_hook', 'complete', '2020-09-25 21:53:18', '2020-09-25 21:53:18', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601070798;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601070798;}', 1, 1, '2020-09-25 21:53:34', '2020-09-25 21:53:34', 0, NULL),
(14, 'action_scheduler/migration_hook', 'complete', '2020-09-25 21:54:35', '2020-09-25 21:54:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601070875;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601070875;}', 1, 1, '2020-09-25 21:54:39', '2020-09-25 21:54:39', 0, NULL),
(15, 'action_scheduler/migration_hook', 'complete', '2020-10-01 19:42:10', '2020-10-01 19:42:10', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601581330;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601581330;}', 1, 1, '2020-10-01 19:42:25', '2020-10-01 19:42:25', 0, NULL),
(16, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-10-05 07:30:19', '2020-10-05 07:30:19', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601883019;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601883019;}', 0, 1, '2020-10-05 07:31:03', '2020-10-05 07:31:03', 0, NULL),
(17, 'action_scheduler/migration_hook', 'complete', '2020-10-06 10:54:09', '2020-10-06 10:54:09', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601981649;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601981649;}', 1, 1, '2020-10-06 10:54:27', '2020-10-06 10:54:27', 0, NULL),
(18, 'action_scheduler/migration_hook', 'complete', '2020-10-06 10:57:53', '2020-10-06 10:57:53', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601981873;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601981873;}', 1, 1, '2020-10-06 10:57:55', '2020-10-06 10:57:55', 0, NULL),
(19, 'action_scheduler/migration_hook', 'complete', '2020-10-06 11:18:26', '2020-10-06 11:18:26', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601983106;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601983106;}', 1, 1, '2020-10-06 11:18:28', '2020-10-06 11:18:28', 0, NULL),
(20, 'action_scheduler/migration_hook', 'complete', '2020-10-06 15:30:07', '2020-10-06 15:30:07', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601998207;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601998207;}', 1, 1, '2020-10-06 15:31:09', '2020-10-06 15:31:09', 0, NULL),
(21, 'action_scheduler/migration_hook', 'complete', '2020-10-06 15:32:09', '2020-10-06 15:32:09', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601998329;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601998329;}', 1, 1, '2020-10-06 15:32:39', '2020-10-06 15:32:39', 0, NULL),
(22, 'action_scheduler/migration_hook', 'complete', '2020-10-10 07:03:15', '2020-10-10 07:03:15', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602313395;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602313395;}', 1, 1, '2020-10-10 07:03:17', '2020-10-10 07:03:17', 0, NULL),
(23, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-10-13 13:06:05', '2020-10-13 13:06:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602594365;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602594365;}', 0, 1, '2020-10-13 13:06:42', '2020-10-13 13:06:42', 0, NULL),
(24, 'woocommerce_run_update_callback', 'complete', '2020-10-15 12:17:57', '2020-10-15 12:17:57', '[\"wc_admin_update_160_remove_facebook_note\"]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602764277;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602764277;}', 2, 1, '2020-10-15 12:18:13', '2020-10-15 12:18:13', 0, NULL),
(25, 'woocommerce_run_update_callback', 'complete', '2020-10-15 12:17:58', '2020-10-15 12:17:58', '[\"wc_admin_update_160_db_version\"]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602764278;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602764278;}', 2, 1, '2020-10-15 12:18:13', '2020-10-15 12:18:13', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_actionscheduler_claims`
--

CREATE TABLE `wss_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_actionscheduler_groups`
--

CREATE TABLE `wss_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_actionscheduler_groups`
--

INSERT INTO `wss_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_actionscheduler_logs`
--

CREATE TABLE `wss_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_actionscheduler_logs`
--

INSERT INTO `wss_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-09-18 11:12:09', '2020-09-18 11:12:09'),
(2, 6, 'action started via WP Cron', '2020-09-18 11:13:22', '2020-09-18 11:13:22'),
(3, 6, 'action complete via WP Cron', '2020-09-18 11:13:22', '2020-09-18 11:13:22'),
(4, 7, 'action created', '2020-09-18 11:13:22', '2020-09-18 11:13:22'),
(5, 7, 'action started via Async Request', '2020-09-18 11:14:23', '2020-09-18 11:14:23'),
(6, 7, 'action complete via Async Request', '2020-09-18 11:14:23', '2020-09-18 11:14:23'),
(7, 8, 'action created', '2020-09-19 11:50:05', '2020-09-19 11:50:05'),
(8, 8, 'action started via Async Request', '2020-09-19 11:50:06', '2020-09-19 11:50:06'),
(9, 8, 'action complete via Async Request', '2020-09-19 11:50:06', '2020-09-19 11:50:06'),
(10, 9, 'action created', '2020-09-22 16:32:45', '2020-09-22 16:32:45'),
(11, 9, 'action started via Async Request', '2020-09-22 16:33:53', '2020-09-22 16:33:53'),
(12, 9, 'action complete via Async Request', '2020-09-22 16:33:53', '2020-09-22 16:33:53'),
(13, 10, 'action created', '2020-09-22 16:33:53', '2020-09-22 16:33:53'),
(14, 10, 'action started via WP Cron', '2020-09-22 16:35:06', '2020-09-22 16:35:06'),
(15, 10, 'action complete via WP Cron', '2020-09-22 16:35:06', '2020-09-22 16:35:06'),
(16, 11, 'action created', '2020-09-22 21:38:14', '2020-09-22 21:38:14'),
(17, 11, 'action started via WP Cron', '2020-09-22 21:40:06', '2020-09-22 21:40:06'),
(18, 11, 'action complete via WP Cron', '2020-09-22 21:40:06', '2020-09-22 21:40:06'),
(19, 12, 'action created', '2020-09-22 21:40:06', '2020-09-22 21:40:06'),
(20, 12, 'action started via WP Cron', '2020-09-22 21:41:09', '2020-09-22 21:41:09'),
(21, 12, 'action complete via WP Cron', '2020-09-22 21:41:09', '2020-09-22 21:41:09'),
(22, 13, 'action created', '2020-09-25 21:52:18', '2020-09-25 21:52:18'),
(23, 13, 'action started via WP Cron', '2020-09-25 21:53:34', '2020-09-25 21:53:34'),
(24, 13, 'action complete via WP Cron', '2020-09-25 21:53:34', '2020-09-25 21:53:34'),
(25, 14, 'action created', '2020-09-25 21:53:35', '2020-09-25 21:53:35'),
(26, 14, 'action started via WP Cron', '2020-09-25 21:54:39', '2020-09-25 21:54:39'),
(27, 14, 'action complete via WP Cron', '2020-09-25 21:54:39', '2020-09-25 21:54:39'),
(28, 15, 'action created', '2020-10-01 19:41:10', '2020-10-01 19:41:10'),
(29, 15, 'action started via Async Request', '2020-10-01 19:42:25', '2020-10-01 19:42:25'),
(30, 15, 'action complete via Async Request', '2020-10-01 19:42:25', '2020-10-01 19:42:25'),
(31, 16, 'action created', '2020-10-05 07:30:19', '2020-10-05 07:30:19'),
(32, 16, 'action started via WP Cron', '2020-10-05 07:31:03', '2020-10-05 07:31:03'),
(33, 16, 'action complete via WP Cron', '2020-10-05 07:31:03', '2020-10-05 07:31:03'),
(34, 17, 'action created', '2020-10-06 10:53:09', '2020-10-06 10:53:09'),
(35, 17, 'action started via Async Request', '2020-10-06 10:54:27', '2020-10-06 10:54:27'),
(36, 17, 'action complete via Async Request', '2020-10-06 10:54:27', '2020-10-06 10:54:27'),
(37, 18, 'action created', '2020-10-06 10:56:53', '2020-10-06 10:56:53'),
(38, 18, 'action started via Async Request', '2020-10-06 10:57:55', '2020-10-06 10:57:55'),
(39, 18, 'action complete via Async Request', '2020-10-06 10:57:55', '2020-10-06 10:57:55'),
(40, 19, 'action created', '2020-10-06 11:17:26', '2020-10-06 11:17:26'),
(41, 19, 'action started via Async Request', '2020-10-06 11:18:28', '2020-10-06 11:18:28'),
(42, 19, 'action complete via Async Request', '2020-10-06 11:18:28', '2020-10-06 11:18:28'),
(43, 20, 'action created', '2020-10-06 15:29:07', '2020-10-06 15:29:07'),
(44, 20, 'action started via WP Cron', '2020-10-06 15:31:09', '2020-10-06 15:31:09'),
(45, 20, 'action complete via WP Cron', '2020-10-06 15:31:09', '2020-10-06 15:31:09'),
(46, 21, 'action created', '2020-10-06 15:31:09', '2020-10-06 15:31:09'),
(47, 21, 'action started via Async Request', '2020-10-06 15:32:39', '2020-10-06 15:32:39'),
(48, 21, 'action complete via Async Request', '2020-10-06 15:32:39', '2020-10-06 15:32:39'),
(49, 22, 'action created', '2020-10-10 07:02:15', '2020-10-10 07:02:15'),
(50, 22, 'action started via Async Request', '2020-10-10 07:03:17', '2020-10-10 07:03:17'),
(51, 22, 'action complete via Async Request', '2020-10-10 07:03:17', '2020-10-10 07:03:17'),
(52, 23, 'action created', '2020-10-13 13:06:06', '2020-10-13 13:06:06'),
(53, 23, 'action started via Async Request', '2020-10-13 13:06:42', '2020-10-13 13:06:42'),
(54, 23, 'action complete via Async Request', '2020-10-13 13:06:42', '2020-10-13 13:06:42'),
(55, 24, 'action created', '2020-10-15 12:17:57', '2020-10-15 12:17:57'),
(56, 25, 'action created', '2020-10-15 12:17:57', '2020-10-15 12:17:57'),
(57, 24, 'action started via WP Cron', '2020-10-15 12:18:13', '2020-10-15 12:18:13'),
(58, 24, 'action complete via WP Cron', '2020-10-15 12:18:13', '2020-10-15 12:18:13'),
(59, 25, 'action started via WP Cron', '2020-10-15 12:18:13', '2020-10-15 12:18:13'),
(60, 25, 'action complete via WP Cron', '2020-10-15 12:18:13', '2020-10-15 12:18:13');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_commentmeta`
--

CREATE TABLE `wss_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_comments`
--

CREATE TABLE `wss_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_duplicator_packages`
--

CREATE TABLE `wss_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wss_duplicator_packages`
--

INSERT INTO `wss_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, '20201012_cosmedoc', '203ca692427794c36693_20201012082826', 100, '2020-10-12 08:35:55', 'unknown', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-12 08:28:26\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:6:\"5.7.25\";s:10:\"VersionPHP\";s:6:\"7.0.33\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:17:\"20201012_cosmedoc\";s:4:\"Hash\";s:35:\"203ca692427794c36693_20201012082826\";s:8:\"NameHash\";s:53:\"20201012_cosmedoc_203ca692427794c36693_20201012082826\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:63:\"20201012_cosmedoc_203ca692427794c36693_20201012082826_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:11:\"150.22 sec.\";s:7:\"ExeSize\";s:7:\"61.32KB\";s:7:\"ZipSize\";s:8:\"411.83MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:65:\"20201012_cosmedoc_203ca692427794c36693_20201012082826_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:27:\"D:/OSPanel/domains/cosmedic\";s:4:\"Size\";i:431830908;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:12342;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:36:\"D:/OSPanel/domains/cosmedic/wp-admin\";i:1;s:46:\"D:/OSPanel/domains/cosmedic/wp-content/uploads\";i:2;s:48:\"D:/OSPanel/domains/cosmedic/wp-content/languages\";i:3;s:45:\"D:/OSPanel/domains/cosmedic/wp-content/themes\";i:4;s:39:\"D:/OSPanel/domains/cosmedic/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:27:\"D:/OSPanel/domains/cosmedic\";i:1;s:38:\"D:/OSPanel/domains/cosmedic/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:39:\"D:/OSPanel/domains/cosmedic/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:67:\"20201012_cosmedoc_203ca692427794c36693_20201012082826_installer.php\";s:4:\"Size\";i:62787;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:1189226;s:4:\"File\";s:66:\"20201012_cosmedoc_203ca692427794c36693_20201012082826_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:9:\"MYSQLDUMP\";s:13:\"collationList\";a:3:{i:0;s:22:\"utf8mb4_unicode_520_ci\";i:1;s:18:\"utf8mb4_unicode_ci\";i:2;s:15:\"utf8_general_ci\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:11:\"db_cosmedic\";s:15:\"tablesBaseCount\";i:50;s:16:\"tablesFinalCount\";i:50;s:14:\"tablesRowCount\";s:5:\"2,251\";s:16:\"tablesSizeOnDisk\";s:6:\"3.89MB\";s:18:\"varLowerCaseTables\";s:1:\"1\";s:7:\"version\";s:6:\"5.7.25\";s:14:\"versionComment\";s:28:\"MySQL Community Server (GPL)\";s:18:\"tableWiseRowCounts\";a:50:{s:27:\"wss_actionscheduler_actions\";s:2:\"17\";s:26:\"wss_actionscheduler_claims\";s:1:\"0\";s:26:\"wss_actionscheduler_groups\";s:1:\"1\";s:24:\"wss_actionscheduler_logs\";s:2:\"51\";s:15:\"wss_commentmeta\";s:1:\"0\";s:12:\"wss_comments\";s:1:\"0\";s:23:\"wss_duplicator_packages\";s:1:\"1\";s:9:\"wss_links\";s:1:\"0\";s:11:\"wss_options\";s:3:\"502\";s:12:\"wss_postmeta\";s:4:\"1031\";s:9:\"wss_posts\";s:3:\"185\";s:22:\"wss_term_relationships\";s:2:\"89\";s:17:\"wss_term_taxonomy\";s:2:\"55\";s:12:\"wss_termmeta\";s:2:\"42\";s:9:\"wss_terms\";s:2:\"55\";s:20:\"wss_tinvwl_analytics\";s:1:\"3\";s:16:\"wss_tinvwl_items\";s:1:\"3\";s:16:\"wss_tinvwl_lists\";s:1:\"2\";s:12:\"wss_usermeta\";s:3:\"206\";s:9:\"wss_users\";s:2:\"11\";s:25:\"wss_wc_admin_note_actions\";s:2:\"10\";s:18:\"wss_wc_admin_notes\";s:1:\"9\";s:22:\"wss_wc_category_lookup\";s:1:\"1\";s:22:\"wss_wc_customer_lookup\";s:1:\"0\";s:19:\"wss_wc_download_log\";s:1:\"0\";s:26:\"wss_wc_order_coupon_lookup\";s:1:\"0\";s:27:\"wss_wc_order_product_lookup\";s:1:\"0\";s:18:\"wss_wc_order_stats\";s:1:\"0\";s:23:\"wss_wc_order_tax_lookup\";s:1:\"0\";s:26:\"wss_wc_product_meta_lookup\";s:2:\"10\";s:21:\"wss_wc_reserved_stock\";s:1:\"0\";s:23:\"wss_wc_tax_rate_classes\";s:1:\"2\";s:15:\"wss_wc_webhooks\";s:1:\"0\";s:24:\"wss_woocommerce_api_keys\";s:1:\"0\";s:36:\"wss_woocommerce_attribute_taxonomies\";s:1:\"3\";s:48:\"wss_woocommerce_downloadable_product_permissions\";s:1:\"0\";s:19:\"wss_woocommerce_log\";s:1:\"0\";s:30:\"wss_woocommerce_order_itemmeta\";s:1:\"0\";s:27:\"wss_woocommerce_order_items\";s:1:\"0\";s:33:\"wss_woocommerce_payment_tokenmeta\";s:1:\"0\";s:30:\"wss_woocommerce_payment_tokens\";s:1:\"0\";s:24:\"wss_woocommerce_sessions\";s:1:\"1\";s:39:\"wss_woocommerce_shipping_zone_locations\";s:1:\"0\";s:37:\"wss_woocommerce_shipping_zone_methods\";s:1:\"0\";s:30:\"wss_woocommerce_shipping_zones\";s:1:\"0\";s:34:\"wss_woocommerce_tax_rate_locations\";s:1:\"0\";s:25:\"wss_woocommerce_tax_rates\";s:1:\"0\";s:20:\"wss_woof_query_cache\";s:1:\"0\";s:13:\"wss_yith_wcwl\";s:1:\"1\";s:19:\"wss_yith_wcwl_lists\";s:1:\"1\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:24:\"\0DUP_Database\0tempDbPath\";s:126:\"D:/OSPanel/domains/cosmedic/wp-content/backups-dup-lite/tmp/20201012_cosmedoc_203ca692427794c36693_20201012082826_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-12 08:28:26\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:6:\"5.7.25\";s:10:\"VersionPHP\";s:6:\"7.0.33\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20201012_cosmedoc\";s:4:\"Hash\";s:35:\"203ca692427794c36693_20201012082826\";s:8:\"NameHash\";s:53:\"20201012_cosmedoc_203ca692427794c36693_20201012082826\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";r:74;s:8:\"Database\";r:86;s:13:\"BuildProgress\";r:170;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_links`
--

CREATE TABLE `wss_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_options`
--

CREATE TABLE `wss_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_options`
--

INSERT INTO `wss_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cosmedoc.local', 'yes'),
(2, 'home', 'http://cosmedoc.local', 'yes'),
(3, 'blogname', 'Cosmedoc', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'irwintram@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:183:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:8:\"store/?$\";s:27:\"index.php?post_type=product\";s:38:\"store/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:33:\"store/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:25:\"store/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:64:\"(([^/]+/)*wishlist)/([A-Fa-f0-9]{6})?/wl_page/([0-9]{1,})/{0,1}$\";s:72:\"index.php?pagename=$matches[1]&tinvwlID=$matches[3]&wl_paged=$matches[4]\";s:44:\"(([^/]+/)*wishlist)/([A-Fa-f0-9]{6})?/{0,1}$\";s:51:\"index.php?pagename=$matches[1]&tinvwlID=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:51:\"cos_brands/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?cos_brands=$matches[1]&feed=$matches[2]\";s:46:\"cos_brands/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?cos_brands=$matches[1]&feed=$matches[2]\";s:27:\"cos_brands/([^/]+)/embed/?$\";s:43:\"index.php?cos_brands=$matches[1]&embed=true\";s:39:\"cos_brands/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?cos_brands=$matches[1]&paged=$matches[2]\";s:21:\"cos_brands/([^/]+)/?$\";s:32:\"index.php?cos_brands=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:59:\"kolichestvo-tovara/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?pa_kolichestvo-tovara=$matches[1]&feed=$matches[2]\";s:54:\"kolichestvo-tovara/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?pa_kolichestvo-tovara=$matches[1]&feed=$matches[2]\";s:35:\"kolichestvo-tovara/([^/]+)/embed/?$\";s:54:\"index.php?pa_kolichestvo-tovara=$matches[1]&embed=true\";s:47:\"kolichestvo-tovara/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?pa_kolichestvo-tovara=$matches[1]&paged=$matches[2]\";s:29:\"kolichestvo-tovara/([^/]+)/?$\";s:43:\"index.php?pa_kolichestvo-tovara=$matches[1]\";s:60:\"strana-proizvoditel/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?pa_strana-proizvoditel=$matches[1]&feed=$matches[2]\";s:55:\"strana-proizvoditel/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?pa_strana-proizvoditel=$matches[1]&feed=$matches[2]\";s:36:\"strana-proizvoditel/([^/]+)/embed/?$\";s:55:\"index.php?pa_strana-proizvoditel=$matches[1]&embed=true\";s:48:\"strana-proizvoditel/([^/]+)/page/?([0-9]{1,})/?$\";s:62:\"index.php?pa_strana-proizvoditel=$matches[1]&paged=$matches[2]\";s:30:\"strana-proizvoditel/([^/]+)/?$\";s:44:\"index.php?pa_strana-proizvoditel=$matches[1]\";s:47:\"weight/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pa_weight=$matches[1]&feed=$matches[2]\";s:42:\"weight/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?pa_weight=$matches[1]&feed=$matches[2]\";s:23:\"weight/([^/]+)/embed/?$\";s:42:\"index.php?pa_weight=$matches[1]&embed=true\";s:35:\"weight/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?pa_weight=$matches[1]&paged=$matches[2]\";s:17:\"weight/([^/]+)/?$\";s:31:\"index.php?pa_weight=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=123&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:16:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:6;s:22:\"cyr2lat/cyr-to-lat.php\";i:7;s:25:\"duplicator/duplicator.php\";i:8;s:35:\"pre-orders-for-woocommerce/main.php\";i:9;s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";i:10;s:43:\"pw-woocommerce-gift-cards/pw-gift-cards.php\";i:11;s:21:\"safe-svg/safe-svg.php\";i:12;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:13;s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";i:14;s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";i:15;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cosmedoc', 'yes'),
(41, 'stylesheet', 'cosmedoc', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'file', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:23:\"uninstall_tinv_wishlist\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '123', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '75', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1615978748', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wss_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:118:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:23:\"tinvwl_general_settings\";b:1;s:21:\"tinvwl_style_settings\";b:1;s:29:\"tinvwl_export_import_settings\";b:1;s:14:\"tinvwl_upgrade\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:32:\"woocommerce_product_categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:23:{i:1602850687;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602860297;a:1:{s:34:\"yith_wcwl_delete_expired_wishlists\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602861477;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602878404;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1602879134;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602879964;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602880866;a:1:{s:28:\"check_for_released_preorders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602881949;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602881974;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1602889149;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602891317;a:1:{s:20:\"mce_12hours_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"12hours\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602892800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602896400;a:1:{s:37:\"tinvwl_remove_without_author_wishlist\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602915477;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602932348;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602932360;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602932361;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602933128;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602937087;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1603193717;a:1:{s:18:\"mce_4days_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"4days\";s:4:\"args\";a:0:{}s:8:\"interval\";i:345600;}}}i:1603278347;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1604060337;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(140, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600426773;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'current_theme', 'cosmedoc', 'yes'),
(142, 'theme_mods_cosmedoc', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:11:\"footer_menu\";i:54;s:11:\"mobile_menu\";i:55;s:7:\"primary\";i:53;s:4:\"main\";i:59;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:57:\"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:72;s:3:\"url\";s:57:\"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\";s:13:\"thumbnail_url\";s:57:\"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\";s:6:\"height\";i:40;s:5:\"width\";i:223;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(146, 'disallowed_keys', '', 'no'),
(147, 'comment_previously_approved', '1', 'yes'),
(148, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'db_upgraded', '', 'yes'),
(154, 'recently_activated', 'a:1:{s:37:\"woocommerce-products-filter/index.php\";i:1602313334;}', 'yes'),
(157, 'acf_version', '5.9.1', 'yes'),
(160, 'cptui_new_install', 'false', 'yes'),
(173, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRZd05qWTJmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE9TMHdOUzB4TmlBeE1Eb3dNam95TkE9PSI7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9jb3NtZWRpYy5sb2NhbCI7fQ==', 'yes'),
(180, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(181, 'schema-ActionScheduler_StoreSchema', '3.0.1600427524', 'yes'),
(182, 'schema-ActionScheduler_LoggerSchema', '2.0.1600427524', 'yes'),
(185, 'woocommerce_schema_version', '430', 'yes'),
(186, 'woocommerce_store_address', '', 'yes'),
(187, 'woocommerce_store_address_2', '', 'yes'),
(188, 'woocommerce_store_city', '', 'yes'),
(189, 'woocommerce_default_country', 'IL', 'yes'),
(190, 'woocommerce_store_postcode', '', 'yes'),
(191, 'woocommerce_allowed_countries', 'all', 'yes'),
(192, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(193, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(194, 'woocommerce_ship_to_countries', '', 'yes'),
(195, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(196, 'woocommerce_default_customer_address', 'base', 'yes'),
(197, 'woocommerce_calc_taxes', 'no', 'yes'),
(198, 'woocommerce_enable_coupons', 'yes', 'yes'),
(199, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(200, 'woocommerce_currency', 'RUB', 'yes'),
(201, 'woocommerce_currency_pos', 'right', 'yes'),
(202, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(203, 'woocommerce_price_decimal_sep', ',', 'yes'),
(204, 'woocommerce_price_num_decimals', '2', 'yes'),
(205, 'woocommerce_shop_page_id', '76', 'yes'),
(206, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(207, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(208, 'woocommerce_placeholder_image', '5', 'yes'),
(209, 'woocommerce_weight_unit', 'kg', 'yes'),
(210, 'woocommerce_dimension_unit', 'cm', 'yes'),
(211, 'woocommerce_enable_reviews', 'no', 'yes'),
(212, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(213, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(214, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(215, 'woocommerce_review_rating_required', 'yes', 'no'),
(216, 'woocommerce_manage_stock', 'yes', 'yes'),
(217, 'woocommerce_hold_stock_minutes', '60', 'no'),
(218, 'woocommerce_notify_low_stock', 'yes', 'no'),
(219, 'woocommerce_notify_no_stock', 'yes', 'no'),
(220, 'woocommerce_stock_email_recipient', 'irwintram@gmail.com', 'no'),
(221, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(222, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(223, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(224, 'woocommerce_stock_format', 'no_amount', 'yes'),
(225, 'woocommerce_file_download_method', 'force', 'no'),
(226, 'woocommerce_downloads_require_login', 'no', 'no'),
(227, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(228, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(229, 'woocommerce_prices_include_tax', 'no', 'yes'),
(230, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(231, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(232, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(233, 'woocommerce_tax_classes', '', 'yes'),
(234, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(235, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(236, 'woocommerce_price_display_suffix', '', 'yes'),
(237, 'woocommerce_tax_total_display', 'itemized', 'no'),
(238, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(239, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(240, 'woocommerce_ship_to_destination', 'billing', 'no'),
(241, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(242, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(243, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(244, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(245, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(246, 'woocommerce_registration_generate_username', 'yes', 'no'),
(247, 'woocommerce_registration_generate_password', 'no', 'no'),
(248, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(249, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(250, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(251, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(252, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(253, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(254, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(255, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(256, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(257, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(258, 'woocommerce_email_from_name', 'cosmedoc', 'no'),
(259, 'woocommerce_email_from_address', 'irwintram@gmail.com', 'no'),
(260, 'woocommerce_email_header_image', '', 'no'),
(261, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(262, 'woocommerce_email_base_color', '#89937a', 'no'),
(263, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(264, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(265, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(266, 'woocommerce_cart_page_id', '200', 'no'),
(267, 'woocommerce_checkout_page_id', '', 'no'),
(268, 'woocommerce_myaccount_page_id', '187', 'no'),
(269, 'woocommerce_terms_page_id', '', 'no'),
(270, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(271, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(272, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(273, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(274, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(275, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(276, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(277, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(278, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(279, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(280, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(281, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(282, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(283, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(284, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(285, 'woocommerce_api_enabled', 'no', 'yes'),
(286, 'woocommerce_allow_tracking', 'no', 'no'),
(287, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(288, 'woocommerce_single_image_width', '600', 'yes'),
(289, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(290, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(291, 'woocommerce_demo_store', 'no', 'no'),
(292, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(293, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(294, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(297, 'default_product_cat', '23', 'yes'),
(298, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(303, 'woocommerce_homescreen_enabled', 'yes', 'yes'),
(306, 'action_scheduler_lock_async-request-runner', '1602878457', 'yes'),
(307, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"gJQ44YYu5wv4lVzzciE6zVAGUhMZBvVN\";}', 'yes'),
(308, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(309, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(311, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:0:\"\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:1;s:10:\"hide_empty\";i:0;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'woocommerce_admin_install_timestamp', '1600427528', 'yes'),
(328, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1600427529', 'yes'),
(330, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(331, 'wc_blocks_db_schema_version', '260', 'yes'),
(347, '_transient_product_query-transient-version', '1602787215', 'yes'),
(348, 'category_children', 'a:0:{}', 'yes'),
(350, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(353, '_transient_woocommerce_reports-transient-version', '1602764277', 'yes'),
(413, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes');
INSERT INTO `wss_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(417, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1602594402;}', 'no'),
(465, '_transient_product-transient-version', '1602785731', 'yes'),
(542, 'recovery_mode_email_last_sent', '1602711796', 'yes'),
(543, 'item_children', 'a:0:{}', 'yes'),
(583, 'brands_children', 'a:0:{}', 'yes'),
(1123, '_transient_shipping-transient-version', '1600601881', 'yes'),
(1124, '_transient_timeout_wc_shipping_method_count_legacy', '1603193881', 'no'),
(1125, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1600601881\";s:5:\"value\";i:0;}', 'no'),
(1141, 'wc_preorders_mode', 'either', 'yes'),
(1142, 'wc_preorders_change_button', 'yes', 'yes'),
(1143, 'wc_preorders_button_text', 'Предзаказ', 'yes'),
(1244, 'can_compress_scripts', '1', 'no'),
(1267, 'woocommerce_maybe_regenerate_images_hash', '363fbb40c0f44b4b89b60b3bf7a51ad2', 'yes'),
(1364, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1376, 'options_copyright', '© Cosmedoc', 'no'),
(1377, '_options_copyright', 'field_5f69df1fc4f69', 'no'),
(1378, 'options_phone_number', '+7 999 999 99 99', 'no'),
(1379, '_options_phone_number', 'field_5f69df41c4f6a', 'no'),
(1397, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1600774447;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1402, 'mce_show_update_news', '0', 'no'),
(1404, 'mce_conten_panel_master', '<p class=\"about-description\">Easier setup to get you up and running in no time. Please <a href=\"https://renzojohnson.com/contact\" target=\"_blank\" rel=\"noopener noreferrer\">lets us know</a> what kind of features you would like to see added <a href=\"https://renzojohnson.com/contact\" target=\"_blank\" rel=\"noopener noreferrer\">HERE</a></p>\n<div class=\"welcome-panel-column-container\">\n<div class=\"welcome-panel-column\">\n<h3>Get Started</h3>\n<p>Make sure it works as you expect <br><a class=\"button button-primary button-hero load-customize\" href=\"/wp-admin/admin.php?page=wpcf7&amp;post=8&amp;active-tab=4\">Review your settings <span alt=\"f111\" class=\"dashicons dashicons-admin-generic\" style=\"font-size: 17px;vertical-align: middle;\"> </span> </a></p>\n</div>\n<div class=\"welcome-panel-column\">\n<h3>Next Steps</h3>\n<p>Help me develop the plugin and provide support by <br><a class=\"donate button button-primary button-hero load-customize\" href=\"https://www.paypal.me/renzojohnson\" target=\"_blank\" rel=\"noopener noreferrer\">Donating even a small sum <span alt=\"f524\" class=\"dashicons dashicons-tickets-alt\"> </span></a></p>\n</div>\n</div>', 'no'),
(1405, 'mce_conten_tittle_master', 'ChimpMatic Lite is now 0.5!', 'no'),
(1406, 'cf7_mch_89', 'a:29:{s:3:\"api\";s:0:\"\";s:14:\"mce_txtcomodin\";s:2:\"89\";s:15:\"mce_txtcomodin2\";s:1:\"0\";s:5:\"email\";s:12:\"[your-email]\";s:4:\"name\";s:1:\" \";s:12:\"CustomValue1\";s:0:\"\";s:10:\"CustomKey1\";s:0:\"\";s:12:\"CustomValue2\";s:0:\"\";s:10:\"CustomKey2\";s:0:\"\";s:12:\"CustomValue3\";s:0:\"\";s:10:\"CustomKey3\";s:0:\"\";s:12:\"CustomValue4\";s:0:\"\";s:10:\"CustomKey4\";s:0:\"\";s:12:\"CustomValue5\";s:0:\"\";s:10:\"CustomKey5\";s:0:\"\";s:12:\"CustomValue6\";s:0:\"\";s:10:\"CustomKey6\";s:0:\"\";s:12:\"CustomValue7\";s:0:\"\";s:10:\"CustomKey7\";s:0:\"\";s:12:\"CustomValue8\";s:0:\"\";s:10:\"CustomKey8\";s:0:\"\";s:12:\"CustomValue9\";s:0:\"\";s:10:\"CustomKey9\";s:0:\"\";s:13:\"CustomValue10\";s:0:\"\";s:11:\"CustomKey10\";s:0:\"\";s:6:\"accept\";s:0:\"\";s:14:\"api-validation\";i:0;s:7:\"lisdata\";i:0;s:9:\"listatags\";a:1:{i:0;O:13:\"WPCF7_FormTag\":10:{s:4:\"type\";s:6:\"email*\";s:8:\"basetype\";s:5:\"email\";s:4:\"name\";s:10:\"your-email\";s:7:\"options\";a:1:{i:0;s:11:\"placeholder\";}s:10:\"raw_values\";a:1:{i:0;s:13:\"Ваш E-mail\";}s:6:\"values\";a:1:{i:0;s:13:\"Ваш E-mail\";}s:5:\"pipes\";O:11:\"WPCF7_Pipes\":1:{s:18:\"\0WPCF7_Pipes\0pipes\";a:1:{i:0;O:10:\"WPCF7_Pipe\":2:{s:6:\"before\";s:13:\"Ваш E-mail\";s:5:\"after\";s:13:\"Ваш E-mail\";}}}s:6:\"labels\";a:1:{i:0;s:13:\"Ваш E-mail\";}s:4:\"attr\";s:0:\"\";s:7:\"content\";s:0:\"\";}}}', 'yes'),
(1407, 'mce_loyalty', 'a:11:{s:7:\"seconds\";i:33;s:7:\"minutes\";i:35;s:5:\"hours\";i:11;s:4:\"mday\";i:22;s:4:\"wday\";i:2;s:3:\"mon\";i:9;s:4:\"year\";i:2020;s:4:\"yday\";i:265;s:7:\"weekday\";s:7:\"Tuesday\";s:5:\"month\";s:9:\"September\";i:0;i:1600774533;}', 'no'),
(1408, 'chimpmatic-update', '1', 'no'),
(1409, 'mce_conten_panel_welcome', '', 'no'),
(1410, 'mce_conten_panel_lateralbanner', '', 'no'),
(1419, 'secret_key', '9&J;3:lP0u|Amq^0J5!:0TfHdR/%_RR@m{vAFN),Y):pe5JlY:Ckl*#X>FG1Mi#B', 'no'),
(1503, 'options_social_links_0_link', 'https://www.instagram.com/', 'no'),
(1504, '_options_social_links_0_link', 'field_5f69f1390497c', 'no'),
(1505, 'options_social_links_1_link', 'https://www.facebook.com/', 'no'),
(1506, '_options_social_links_1_link', 'field_5f69f1390497c', 'no'),
(1507, 'options_social_links_2_link', 'https://www.youtube.com/', 'no'),
(1508, '_options_social_links_2_link', 'field_5f69f1390497c', 'no'),
(1509, 'options_social_links', '3', 'no'),
(1510, '_options_social_links', 'field_5f69eff40497b', 'no'),
(1524, 'options_footer_description', 'Cosmedoc это салон красоты в самом сердце Москвы и интернет магазин. Уже несколько лет мы трепетно заботимся о вашей уникальной красоте и сейчас мы ON(LINE).', 'no'),
(1525, '_options_footer_description', 'field_5f69f41d39769', 'no'),
(1536, 'options_subscribe_title', 'Хотите стать участником закрытого клуба Cosmedoc,\r\n чтобы быть в курсе наших новостей и акций?', 'no'),
(1537, '_options_subscribe_title', 'field_5f69f5521c17c', 'no'),
(1538, 'options_subscribe_description', 'Подписывайтесь на нашу полезную рассылку\r\n и узнавайте обо всем первыми!', 'no'),
(1539, '_options_subscribe_description', 'field_5f69f58f1c17d', 'no'),
(1764, 'dc_woo_product_stock_alert_general_settings_name', 'a:17:{s:9:\"is_enable\";s:6:\"Enable\";s:20:\"is_enable_backorders\";s:6:\"Enable\";s:10:\"alert_text\";s:0:\"\";s:16:\"alert_text_color\";s:6:\"fbfbfb\";s:11:\"button_text\";s:0:\"\";s:23:\"unsubscribe_button_text\";s:0:\"\";s:19:\"shown_interest_text\";s:0:\"\";s:23:\"button_background_color\";s:6:\"fbfbfb\";s:19:\"button_border_color\";s:6:\"fbfbfb\";s:17:\"button_text_color\";s:6:\"fbfbfb\";s:31:\"button_background_color_onhover\";s:6:\"fbfbfb\";s:27:\"button_border_color_onhover\";s:6:\"fbfbfb\";s:25:\"button_text_color_onhover\";s:6:\"fbfbfb\";s:13:\"alert_success\";s:0:\"\";s:17:\"alert_email_exist\";s:0:\"\";s:11:\"valid_email\";s:0:\"\";s:25:\"alert_unsubscribe_message\";s:0:\"\";}', 'yes'),
(1765, 'dc_product_stock_alert_activate', '1', 'yes'),
(1796, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"7\",\"critical\":\"2\"}', 'yes'),
(1827, 'xa_pipe_plugin_installed_date', '2020-09-23 19:51:11', 'yes'),
(2187, '_transient_timeout_wc_shipping_method_count', '1603636872', 'no'),
(2188, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1600601881\";s:5:\"value\";i:0;}', 'no'),
(2212, 'dc_product_stock_alert_installed', '1', 'yes'),
(2213, 'dc_product_stock_alert_cron_start', '1', 'yes'),
(2983, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:34:\"ajax-search-for-woocommerce/fs/lib\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1602748121;s:11:\"plugin_path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}}s:7:\"abspath\";s:38:\"C:\\OSPanel\\domains\\localhost\\cosmedoc/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:8:\"sdk_path\";s:34:\"ajax-search-for-woocommerce/fs/lib\";s:7:\"version\";s:5:\"2.3.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1602748121;}}', 'yes'),
(2984, 'fs_debug_mode', '', 'yes'),
(2985, 'fs_accounts', 'a:5:{s:21:\"id_slug_type_path_map\";a:1:{i:700;a:3:{s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}}s:11:\"plugin_data\";a:1:{s:27:\"ajax-search-for-woocommerce\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1601219558;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.7.2\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"cosmedoc.local\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1601219558;s:7:\"version\";s:5:\"1.7.2\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1601219568;s:7:\"version\";s:5:\"1.7.2\";}}}s:13:\"file_slug_map\";a:1:{s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:27:\"ajax-search-for-woocommerce\";}s:7:\"plugins\";a:1:{s:27:\"ajax-search-for-woocommerce\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:27:\"AJAX Search for WooCommerce\";s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:12:\"premium_slug\";s:35:\"ajax-search-for-woocommerce-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:7:\"version\";s:5:\"1.7.2\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_f4f2a51dbe0aee43de0692db77a3e\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"700\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"04232ee9066c388ee57e9f3e51945b2f\";}', 'yes'),
(2986, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(2987, 'fs_api_cache', 'a:0:{}', 'no'),
(2990, 'widget_dgwt_wcas_ajax_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2991, 'dgwt_wcas_activation_date', '1601219559', 'yes'),
(2992, 'dgwt_wcas_settings', 'a:47:{s:9:\"min_chars\";s:1:\"3\";s:14:\"max_form_width\";s:3:\"600\";s:18:\"show_submit_button\";s:3:\"off\";s:18:\"search_submit_text\";s:6:\"Search\";s:18:\"search_placeholder\";s:13:\"Поиск...\";s:13:\"search_layout\";s:7:\"classic\";s:21:\"enable_mobile_overlay\";s:3:\"off\";s:17:\"mobile_breakpoint\";s:3:\"992\";s:17:\"search_icon_color\";s:0:\"\";s:14:\"bg_input_color\";s:0:\"\";s:16:\"text_input_color\";s:0:\"\";s:18:\"border_input_color\";s:0:\"\";s:15:\"bg_submit_color\";s:0:\"\";s:17:\"text_submit_color\";s:0:\"\";s:14:\"show_preloader\";s:2:\"on\";s:13:\"preloader_url\";s:0:\"\";s:17:\"suggestions_limit\";s:1:\"3\";s:20:\"show_grouped_results\";s:2:\"on\";s:22:\"search_no_results_text\";s:10:\"No results\";s:18:\"show_product_image\";s:2:\"on\";s:18:\"show_product_price\";s:3:\"off\";s:17:\"show_product_desc\";s:3:\"off\";s:16:\"show_product_sku\";s:3:\"off\";s:27:\"search_see_all_results_text\";s:39:\"Показать все товары...\";s:24:\"show_matching_categories\";s:2:\"on\";s:18:\"show_matching_tags\";s:3:\"off\";s:19:\"show_matching_posts\";s:3:\"off\";s:19:\"show_matching_pages\";s:3:\"off\";s:16:\"show_details_box\";s:3:\"off\";s:12:\"sug_bg_color\";s:0:\"\";s:15:\"sug_hover_color\";s:0:\"\";s:14:\"sug_text_color\";s:0:\"\";s:19:\"sug_highlight_color\";s:0:\"\";s:16:\"sug_border_color\";s:0:\"\";s:25:\"search_in_product_content\";s:3:\"off\";s:25:\"search_in_product_excerpt\";s:3:\"off\";s:21:\"search_in_product_sku\";s:3:\"off\";s:28:\"search_in_product_attributes\";s:3:\"off\";s:28:\"search_in_product_categories\";s:3:\"off\";s:22:\"search_in_product_tags\";s:3:\"off\";s:23:\"search_in_custom_fields\";s:0:\"\";s:20:\"exclude_out_of_stock\";s:3:\"off\";s:22:\"fuzziness_enabled_demo\";s:3:\"off\";s:15:\"search_synonyms\";s:0:\"\";s:16:\"indexer_schedule\";s:3:\"off\";s:25:\"indexer_schedule_interval\";s:6:\"weekly\";s:27:\"indexer_schedule_start_time\";s:1:\"3\";}', 'yes'),
(2993, 'dgwt_wcas_version', '1.7.2', 'yes'),
(3003, 'dgwt_wcas_settings_show_advanced', 'on', 'yes'),
(3242, 'password_strength', '0', 'yes'),
(3243, 'captcha_enabled', '0', 'yes'),
(3596, 'lrm_version', '2.14', 'yes'),
(3885, 'yit_recently_activated', 'a:1:{i:0;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(3886, 'yith_wcwl_wishlist_page_id', '198', 'yes'),
(3887, 'yith_wcwl_version', '3.0.14', 'yes'),
(3888, 'yith_wcwl_db_version', '3.0.0', 'yes'),
(3889, 'yith_wcwl_ajax_enable', 'yes', 'yes'),
(3890, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(3891, 'yith_wcwl_after_add_to_wishlist_behaviour', 'view', 'yes'),
(3892, 'yith_wcwl_show_on_loop', 'yes', 'yes'),
(3893, 'yith_wcwl_loop_position', 'after_add_to_cart', 'yes'),
(3894, 'yith_wcwl_button_position', 'add-to-cart', 'yes'),
(3895, 'yith_wcwl_add_to_wishlist_text', 'Add to wishlist', 'yes'),
(3896, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(3897, 'yith_wcwl_browse_wishlist_text', 'Browse wishlist', 'yes'),
(3898, 'yith_wcwl_already_in_wishlist_text', 'The product is already in your wishlist!', 'yes'),
(3899, 'yith_wcwl_add_to_wishlist_style', 'link', 'yes'),
(3900, 'yith_wcwl_rounded_corners_radius', '16', 'yes'),
(3901, 'yith_wcwl_add_to_wishlist_icon', 'fa-bookmark-o', 'yes'),
(3902, 'yith_wcwl_add_to_wishlist_custom_icon', '', 'yes'),
(3903, 'yith_wcwl_added_to_wishlist_icon', 'fa-heart', 'yes'),
(3904, 'yith_wcwl_added_to_wishlist_custom_icon', '', 'yes'),
(3905, 'yith_wcwl_custom_css', '', 'yes'),
(3906, 'yith_wcwl_variation_show', '', 'yes'),
(3907, 'yith_wcwl_price_show', '', 'yes'),
(3908, 'yith_wcwl_stock_show', '', 'yes'),
(3909, 'yith_wcwl_show_dateadded', '', 'yes'),
(3910, 'yith_wcwl_add_to_cart_show', '', 'yes'),
(3911, 'yith_wcwl_show_remove', 'yes', 'yes'),
(3912, 'yith_wcwl_repeat_remove_button', '', 'yes'),
(3913, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(3914, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(3915, 'yith_wcwl_enable_share', 'yes', 'yes'),
(3916, 'yith_wcwl_share_fb', 'yes', 'yes'),
(3917, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(3918, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(3919, 'yith_wcwl_share_email', 'yes', 'yes'),
(3920, 'yith_wcwl_share_whatsapp', 'yes', 'yes'),
(3921, 'yith_wcwl_share_url', 'no', 'yes'),
(3922, 'yith_wcwl_socials_title', 'My wishlist on Cosmedoc', 'yes'),
(3923, 'yith_wcwl_socials_text', '', 'yes'),
(3924, 'yith_wcwl_socials_image_url', '', 'yes'),
(3925, 'yith_wcwl_wishlist_title', 'My wishlist', 'yes'),
(3926, 'yith_wcwl_add_to_cart_text', 'Add to cart', 'yes'),
(3927, 'yith_wcwl_add_to_cart_style', 'link', 'yes'),
(3928, 'yith_wcwl_add_to_cart_rounded_corners_radius', '16', 'yes'),
(3929, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(3930, 'yith_wcwl_add_to_cart_custom_icon', '', 'yes'),
(3931, 'yith_wcwl_color_headers_background', '#F4F4F4', 'yes'),
(3932, 'yith_wcwl_fb_button_icon', 'fa-facebook', 'yes'),
(3933, 'yith_wcwl_fb_button_custom_icon', '', 'yes'),
(3934, 'yith_wcwl_tw_button_icon', 'fa-twitter', 'yes'),
(3935, 'yith_wcwl_tw_button_custom_icon', '', 'yes'),
(3936, 'yith_wcwl_pr_button_icon', 'fa-pinterest', 'yes'),
(3937, 'yith_wcwl_pr_button_custom_icon', '', 'yes'),
(3938, 'yith_wcwl_em_button_icon', 'fa-envelope-o', 'yes'),
(3939, 'yith_wcwl_em_button_custom_icon', '', 'yes'),
(3940, 'yith_wcwl_wa_button_icon', 'fa-whatsapp', 'yes'),
(3941, 'yith_wcwl_wa_button_custom_icon', '', 'yes'),
(3942, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:15:\"yith_wcwl_panel\";b:1;}', 'yes'),
(3943, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(3944, '_site_transient_timeout_yith_promo_message', '3204078874', 'no'),
(3945, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(3948, 'yith_wcwl_color_add_to_wishlist', 'a:6:{s:10:\"background\";s:7:\"#333333\";s:4:\"text\";s:7:\"#FFFFFF\";s:6:\"border\";s:7:\"#333333\";s:16:\"background_hover\";s:7:\"#333333\";s:10:\"text_hover\";s:7:\"#FFFFFF\";s:12:\"border_hover\";s:7:\"#333333\";}', 'yes'),
(3951, 'yith_system_info', 'a:2:{s:11:\"system_info\";a:13:{s:14:\"min_wp_version\";a:1:{s:5:\"value\";s:5:\"5.5.1\";}s:14:\"min_wc_version\";a:1:{s:5:\"value\";s:5:\"4.5.2\";}s:15:\"wp_memory_limit\";a:1:{s:5:\"value\";i:1610612736;}s:15:\"min_php_version\";a:1:{s:5:\"value\";s:5:\"7.3.9\";}s:15:\"min_tls_version\";a:1:{s:5:\"value\";s:3:\"1.3\";}s:15:\"imagick_version\";a:1:{s:5:\"value\";s:5:\"7.0.7\";}s:15:\"wp_cron_enabled\";a:1:{s:5:\"value\";b:1;}s:16:\"mbstring_enabled\";a:1:{s:5:\"value\";b:1;}s:17:\"simplexml_enabled\";a:1:{s:5:\"value\";b:1;}s:10:\"gd_enabled\";a:1:{s:5:\"value\";b:1;}s:13:\"iconv_enabled\";a:1:{s:5:\"value\";b:1;}s:15:\"opcache_enabled\";a:1:{s:5:\"value\";b:0;}s:17:\"url_fopen_enabled\";a:1:{s:5:\"value\";s:1:\"1\";}}s:6:\"errors\";b:0;}', 'yes'),
(3996, 'tinvwl_db_ver', '1.21.10', 'yes'),
(3997, 'tinvwl-general', 'a:15:{s:13:\"default_title\";s:16:\"Default wishlist\";s:13:\"page_wishlist\";i:198;s:13:\"require_login\";b:0;s:22:\"redirect_require_login\";b:0;s:17:\"link_in_myaccount\";b:1;s:21:\"processing_autoremove\";b:1;s:28:\"processing_redirect_checkout\";b:0;s:28:\"processing_autoremove_anyone\";b:0;s:11:\"simple_flow\";b:0;s:11:\"show_notice\";b:1;s:11:\"text_browse\";s:13:\"View Wishlist\";s:8:\"redirect\";b:1;s:13:\"text_added_to\";s:42:\"&#34;{product_name}&#34; added to Wishlist\";s:15:\"text_already_in\";s:44:\"&#34;{product_name}&#34; already in Wishlist\";s:17:\"text_removed_from\";s:29:\"Product removed from Wishlist\";}', 'yes'),
(3998, 'tinvwl-permalinks', 'a:1:{s:5:\"force\";b:0;}', 'yes'),
(3999, 'tinvwl-page', 'a:1:{s:8:\"wishlist\";i:198;}', 'yes'),
(4000, 'tinvwl-processing', 'a:4:{s:10:\"autoremove\";b:1;s:17:\"autoremove_status\";s:14:\"tinvwl-addcart\";s:17:\"redirect_checkout\";b:0;s:17:\"autoremove_anyone\";b:0;}', 'yes'),
(4001, 'tinvwl-add_to_wishlist', 'a:11:{s:8:\"position\";s:5:\"after\";s:5:\"class\";s:0:\"\";s:4:\"icon\";s:5:\"heart\";s:11:\"icon_upload\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";s:14:\"show_preloader\";b:0;s:9:\"show_text\";b:1;s:4:\"text\";s:15:\"Add to Wishlist\";s:10:\"already_on\";b:0;s:15:\"text_already_on\";s:19:\"Already In Wishlist\";s:11:\"text_remove\";s:20:\"Remove from Wishlist\";}', 'yes'),
(4002, 'tinvwl-add_to_wishlist_catalog', 'a:12:{s:12:\"show_in_loop\";b:1;s:8:\"position\";s:5:\"after\";s:5:\"class\";s:0:\"\";s:4:\"icon\";s:5:\"heart\";s:11:\"icon_upload\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";s:14:\"show_preloader\";b:0;s:9:\"show_text\";b:1;s:4:\"text\";s:15:\"Add to Wishlist\";s:10:\"already_on\";b:0;s:15:\"text_already_on\";s:19:\"Already In Wishlist\";s:11:\"text_remove\";s:20:\"Remove from Wishlist\";}', 'yes'),
(4003, 'tinvwl-product_table', 'a:5:{s:11:\"add_to_cart\";b:1;s:16:\"text_add_to_cart\";s:11:\"Add to Cart\";s:10:\"colm_price\";b:1;s:10:\"colm_stock\";b:1;s:9:\"colm_date\";b:1;}', 'yes'),
(4004, 'tinvwl-table', 'a:6:{s:13:\"colm_checkbox\";b:1;s:12:\"colm_actions\";b:1;s:18:\"add_select_to_cart\";b:1;s:23:\"text_add_select_to_cart\";s:20:\"Add Selected to Cart\";s:15:\"add_all_to_cart\";b:1;s:20:\"text_add_all_to_cart\";s:15:\"Add All to Cart\";}', 'yes'),
(4005, 'tinvwl-social', 'a:9:{s:6:\"social\";s:0:\"\";s:8:\"facebook\";b:0;s:7:\"twitter\";b:0;s:9:\"pinterest\";b:0;s:8:\"whatsapp\";b:0;s:9:\"clipboard\";b:0;s:5:\"email\";b:0;s:8:\"share_on\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";}', 'yes'),
(4006, 'tinvwl-topline', 'a:9:{s:4:\"icon\";s:5:\"heart\";s:11:\"icon_upload\";s:0:\"\";s:10:\"icon_style\";s:0:\"\";s:9:\"show_text\";b:1;s:4:\"text\";s:10:\"Wishlist -\";s:4:\"menu\";a:1:{i:0;s:0:\"\";}s:10:\"menu_order\";i:100;s:12:\"show_counter\";b:1;s:17:\"hide_zero_counter\";b:0;}', 'yes'),
(4007, 'tinvwl-style', 'a:1:{s:11:\"customstyle\";b:1;}', 'yes'),
(4008, 'tinvwl-style_options', 'a:75:{s:32:\"bda8150264b84aeff0ca47779ebacc00\";s:7:\"#000000\";s:32:\"2d1414f360ef96f3bdd718878b838843\";s:4:\"40px\";s:32:\"0f617e666d70702b660f4a733af1cd5c\";s:7:\"#1a1a1a\";s:32:\"4578aeedef5c22d62ff52c33f9bba6cd\";s:14:\"Georgia, serif\";s:32:\"6fa639cb245131cd45e0abb36abd86ce\";s:7:\"#007acc\";s:32:\"2343474f1380ef4be1905ba43b880647\";s:7:\"#686868\";s:32:\"0b340af13bdf4cbdb056adc5f79b3373\";s:9:\"underline\";s:32:\"3fc21953166f508ee2aeeecd7aee0bd8\";s:7:\"inherit\";s:32:\"7a33c22c4c2a5c21e7c3a914f4eeb2c1\";s:7:\"#f7f7f7\";s:32:\"24179cd549f6e251373383906299b096\";s:7:\"#d1d1d1\";s:32:\"5e58bbdd0e885ca2b71116cea057e414\";s:3:\"2px\";s:32:\"c9b30b5c3e54618a46760805932ab8bf\";s:7:\"#686868\";s:32:\"6a1003e57ef5796dfcaf02fa4b8ac499\";s:7:\"inherit\";s:32:\"f7baf52c4518d3a4dfa63810320b45e2\";s:4:\"12px\";s:32:\"7139fa8307c4a65b7591e6dde6ae937f\";s:7:\"#ebe9eb\";s:32:\"cb88e51ff78f5d530ccf0bb719ec9c76\";s:7:\"#dad8da\";s:32:\"da0b548056da720976cf4f7f3cb5018c\";s:7:\"#515151\";s:32:\"c986c70cad5bc5f474abffea5b94ff7e\";s:7:\"#686868\";s:32:\"9e727dca77dd5482f23de230a3d5046f\";s:7:\"#007acc\";s:32:\"2ceebaa93d8a5c371551274780ddc300\";s:7:\"#686868\";s:32:\"dd67d3c367e9535414de00f3cc31a27c\";s:7:\"inherit\";s:32:\"478dbaf4932fbddfb0635a2524c109f8\";s:4:\"16px\";s:32:\"5a5c778b20bb2a740c14d622e1778927\";s:4:\"16px\";s:32:\"68940071b9fb40e3f336b7886b6f1d1b\";s:3:\"3px\";s:32:\"d5d75eab7561efa79cb1fefccd01f8a4\";s:7:\"#ebe9eb\";s:32:\"73a7a9d026401b62bf1cfe5d2a833b7e\";s:7:\"#dad8da\";s:32:\"939c7f00b7b90a16f80fd6312a4a0e0d\";s:7:\"#515151\";s:32:\"fa4f419f1114d3867a9630275364d086\";s:7:\"#515151\";s:32:\"2b1fbec4726635eb00e802d02f6e2e7d\";s:7:\"#007acc\";s:32:\"048f149cf361ad9d0e085d4af382752b\";s:7:\"#686868\";s:32:\"321da9c8bc66c286a29c544fc14e3f9e\";s:0:\"\";s:32:\"01f066844ed4e57f9ee7b8b03b2f18a7\";s:4:\"16px\";s:32:\"f3e46faa2e790800a881e6893cf2171e\";s:4:\"16px\";s:32:\"8d6c42fb581f8511d2affa83aa9ef81f\";s:3:\"3px\";s:32:\"27471cca2b825cfe2c307f7deb5c0f8b\";s:7:\"#ebe9eb\";s:32:\"1be5052ff24892ae6eecd8ee532be013\";s:7:\"#dad8da\";s:32:\"dcbaebb7da7109f1c0adc717b6971cd7\";s:7:\"#515151\";s:32:\"38acbc6d0ea4887e80a909b8078335a2\";s:7:\"#515151\";s:32:\"21a1f368854745ed15acea4fee3fd90a\";s:7:\"inherit\";s:32:\"a76bde0573bc009de0ff353bbac66def\";s:4:\"14px\";s:32:\"a095a25b82f1c317456ed3d5bf7bd721\";s:3:\"3px\";s:32:\"e8453b34b3ad8e5c51a4b1a8c83da979\";s:7:\"#a46497\";s:32:\"864bd3ccc745240992706b97c1599d1e\";s:7:\"#935386\";s:32:\"40bbed4ee296fd5fef264a1cc77670bf\";s:7:\"#ffffff\";s:32:\"831efa14fec3cf383879f988d32c5a15\";s:7:\"#ffffff\";s:32:\"fda80ea49f05a78edb5076e814f69292\";s:7:\"inherit\";s:32:\"3d4036f21baef6625cc3a323ee6e1e66\";s:4:\"14px\";s:32:\"672007341cff762ddf0d2281bdc0c299\";s:3:\"3px\";s:32:\"e4d5d4ef67c7ca30722286d58b2650f6\";s:7:\"#ffffff\";s:32:\"0b792e66d13026e6a122323222804c15\";s:7:\"#d1d1d1\";s:32:\"608484016590a0721da236a1885f9ade\";s:7:\"#ffffff\";s:32:\"69ae1bd0ebe53785d2b0e348b27b37dc\";s:7:\"#1a1a1a\";s:32:\"ecec585e20f406fc1ff002adfcbe9a9c\";s:7:\"inherit\";s:32:\"17742a42a30f7be0736d1e79908bc616\";s:4:\"14px\";s:32:\"aaf74cc43a3736ed621e17f1d7337965\";s:7:\"#686868\";s:32:\"e1b605ab84ede698ee5b65bdc097c550\";s:7:\"inherit\";s:32:\"59a1d057b2b45324f63ce597f36946e2\";s:4:\"14px\";s:32:\"921f8d28a66e0dbff0d74713a842c219\";s:7:\"#202020\";s:32:\"a2dabc4fdcada89b2e391e2edd7268a5\";s:7:\"inherit\";s:32:\"115256bbd72f9182797db3f54dce8f8b\";s:4:\"16px\";s:32:\"d1241272421242eb22011f3518a76da3\";s:7:\"#ffffff\";s:32:\"711de9e4983ba0e64439cec8d257fec0\";s:7:\"#007acc\";s:32:\"2c83e1eeed3250bf738550e6d52f2203\";s:7:\"#ebe9eb\";s:32:\"6eac9d09c71c87fd720963bcfc4ff973\";s:7:\"#dad8da\";s:32:\"3c6b408b1f5e325ef9b98202c693a4ec\";s:7:\"#000000\";s:32:\"f2a3a843e98eb989d8c9355f149b2b5e\";s:7:\"#686868\";s:32:\"8000e1c3ff927792052adcbaf10a57b6\";s:4:\"20px\";s:32:\"25ad1cb265d6a6f1798c03ea5e2380cc\";s:7:\"#ffffff\";s:32:\"e20fe57c88d077539db0740fbc54d95e\";s:7:\"#1a1a1a\";s:32:\"f74bce5a7e9a892248f5a1459acb2318\";s:0:\"\";s:32:\"70d5eda2690ddb4aaed81ee52db962fb\";s:4:\"16px\";s:32:\"89c5f801f41e34d0d01bf1c592f4642a\";s:7:\"#ebe9eb\";s:32:\"8256242f5a6cd2296de8ab945a060a2b\";s:7:\"#dad8da\";s:32:\"9da70190e482bf08f104dcb8280efabb\";s:7:\"#515151\";s:32:\"d7348c4c1bb37670a9d9a0202d2f056d\";s:7:\"#515151\";}', 'yes'),
(4009, 'tinvwl-style_plain', 'a:2:{s:5:\"allow\";b:0;s:3:\"css\";s:0:\"\";}', 'yes'),
(4010, 'tinvwl_ver', '1.21.11', 'yes'),
(4011, 'tinvwl_utm_source', 'wordpress_org', 'yes'),
(4012, 'tinvwl_utm_medium', 'organic', 'yes'),
(4013, 'tinvwl_utm_campaign', 'organic', 'yes'),
(4014, 'widget_widget_top_wishlist', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4016, 'tinvwl_wizard', '1', 'yes'),
(4570, 'widget_woof_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4571, 'woof_first_init', '1', 'yes'),
(4572, 'woof_set_automatically', '0', 'yes'),
(4573, 'woof_autosubmit', '1', 'yes'),
(4574, 'woof_show_count', '1', 'yes'),
(4575, 'woof_show_count_dynamic', '0', 'yes'),
(4576, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(4577, 'woof_try_ajax', '0', 'yes'),
(4578, 'woof_checkboxes_slide', '1', 'yes'),
(4579, 'woof_hide_red_top_panel', '0', 'yes'),
(4580, 'woof_sort_terms_checked', '0', 'yes'),
(4581, 'woof_filter_btn_txt', '', 'yes'),
(4582, 'woof_reset_btn_txt', '', 'yes'),
(4583, 'woof_settings', 'a:50:{s:11:\"items_order\";s:117:\"by_price,product_cat,cos_brands,pa_strana-proizvoditel,product_visibility,product_tag,pa_kolichestvo-tovara,pa_weight\";s:8:\"by_price\";a:9:{s:4:\"show\";s:1:\"0\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"show_button\";s:1:\"0\";s:10:\"title_text\";s:0:\"\";s:18:\"show_toggle_button\";s:1:\"0\";s:6:\"ranges\";s:0:\"\";s:17:\"first_option_text\";s:0:\"\";s:15:\"ion_slider_step\";s:1:\"0\";s:9:\"price_tax\";s:1:\"0\";}s:8:\"tax_type\";a:7:{s:11:\"product_cat\";s:8:\"checkbox\";s:10:\"cos_brands\";s:8:\"checkbox\";s:22:\"pa_strana-proizvoditel\";s:5:\"radio\";s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_tag\";s:5:\"radio\";s:21:\"pa_kolichestvo-tovara\";s:5:\"radio\";s:9:\"pa_weight\";s:5:\"radio\";}s:14:\"excluded_terms\";a:7:{s:11:\"product_cat\";s:0:\"\";s:10:\"cos_brands\";s:0:\"\";s:22:\"pa_strana-proizvoditel\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:21:\"pa_kolichestvo-tovara\";s:0:\"\";s:9:\"pa_weight\";s:0:\"\";}s:16:\"tax_block_height\";a:7:{s:11:\"product_cat\";s:1:\"0\";s:10:\"cos_brands\";s:1:\"0\";s:22:\"pa_strana-proizvoditel\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:21:\"pa_kolichestvo-tovara\";s:1:\"0\";s:9:\"pa_weight\";s:1:\"0\";}s:16:\"show_title_label\";a:7:{s:11:\"product_cat\";s:1:\"0\";s:10:\"cos_brands\";s:1:\"0\";s:22:\"pa_strana-proizvoditel\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:21:\"pa_kolichestvo-tovara\";s:1:\"0\";s:9:\"pa_weight\";s:1:\"0\";}s:18:\"show_toggle_button\";a:7:{s:11:\"product_cat\";s:1:\"0\";s:10:\"cos_brands\";s:1:\"0\";s:22:\"pa_strana-proizvoditel\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:21:\"pa_kolichestvo-tovara\";s:1:\"0\";s:9:\"pa_weight\";s:1:\"0\";}s:12:\"tooltip_text\";a:7:{s:11:\"product_cat\";s:0:\"\";s:10:\"cos_brands\";s:0:\"\";s:22:\"pa_strana-proizvoditel\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:21:\"pa_kolichestvo-tovara\";s:0:\"\";s:9:\"pa_weight\";s:0:\"\";}s:13:\"dispay_in_row\";a:7:{s:11:\"product_cat\";s:1:\"0\";s:10:\"cos_brands\";s:1:\"0\";s:22:\"pa_strana-proizvoditel\";s:1:\"0\";s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:21:\"pa_kolichestvo-tovara\";s:1:\"0\";s:9:\"pa_weight\";s:1:\"0\";}s:7:\"orderby\";a:7:{s:11:\"product_cat\";s:2:\"-1\";s:10:\"cos_brands\";s:2:\"-1\";s:22:\"pa_strana-proizvoditel\";s:2:\"-1\";s:18:\"product_visibility\";s:2:\"-1\";s:11:\"product_tag\";s:2:\"-1\";s:21:\"pa_kolichestvo-tovara\";s:2:\"-1\";s:9:\"pa_weight\";s:2:\"-1\";}s:5:\"order\";a:7:{s:11:\"product_cat\";s:3:\"ASC\";s:10:\"cos_brands\";s:3:\"ASC\";s:22:\"pa_strana-proizvoditel\";s:3:\"ASC\";s:18:\"product_visibility\";s:3:\"ASC\";s:11:\"product_tag\";s:3:\"ASC\";s:21:\"pa_kolichestvo-tovara\";s:3:\"ASC\";s:9:\"pa_weight\";s:3:\"ASC\";}s:16:\"comparison_logic\";a:7:{s:11:\"product_cat\";s:2:\"OR\";s:10:\"cos_brands\";s:2:\"OR\";s:22:\"pa_strana-proizvoditel\";s:2:\"OR\";s:18:\"product_visibility\";s:2:\"OR\";s:11:\"product_tag\";s:2:\"OR\";s:21:\"pa_kolichestvo-tovara\";s:2:\"OR\";s:9:\"pa_weight\";s:2:\"OR\";}s:16:\"custom_tax_label\";a:7:{s:11:\"product_cat\";s:0:\"\";s:10:\"cos_brands\";s:0:\"\";s:22:\"pa_strana-proizvoditel\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:21:\"pa_kolichestvo-tovara\";s:0:\"\";s:9:\"pa_weight\";s:0:\"\";}s:23:\"not_toggled_terms_count\";a:7:{s:11:\"product_cat\";s:0:\"\";s:10:\"cos_brands\";s:0:\"\";s:22:\"pa_strana-proizvoditel\";s:0:\"\";s:18:\"product_visibility\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:21:\"pa_kolichestvo-tovara\";s:0:\"\";s:9:\"pa_weight\";s:0:\"\";}s:11:\"icheck_skin\";s:4:\"none\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:11:\"use_tooltip\";s:1:\"1\";s:16:\"woof_tooltip_img\";s:0:\"\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:20:\"init_only_on_reverse\";s:1:\"0\";s:12:\"init_only_on\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:17:\"optimize_js_files\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:19:\"result_count_redraw\";s:0:\"\";s:21:\"order_dropdown_redraw\";s:0:\"\";s:15:\"per_page_redraw\";s:0:\"\";s:20:\"activated_extensions\";s:0:\"\";}', 'yes'),
(4584, 'woof_version', '1.2.4', 'yes'),
(4585, 'woof_alert', 'a:2:{s:29:\"woocommerce_currency_switcher\";s:0:\"\";s:23:\"woocommerce_bulk_editor\";s:0:\"\";}', 'no'),
(4588, 'woof_manage_rate_alert', '1602182845', 'yes'),
(4725, '_site_transient_timeout_browser_44a5e524f134e3228c7b0b16c2224ffc', '1602914495', 'no'),
(4726, '_site_transient_browser_44a5e524f134e3228c7b0b16c2224ffc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.75\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(4816, 'action_scheduler_migration_status', 'complete', 'yes'),
(5362, 'duplicator_settings', 'a:17:{s:7:\"version\";s:6:\"1.3.38\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:19:\"installer_name_mode\";s:6:\"simple\";s:16:\"storage_position\";s:6:\"wpcont\";s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:1;}', 'yes'),
(5363, 'duplicator_lite_inst_hash_notice', '1', 'yes'),
(5364, 'duplicator_version_plugin', '1.3.38', 'yes');
INSERT INTO `wss_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5365, 'duplicator_package_active', 'O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-12 08:28:26\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:6:\"5.7.25\";s:10:\"VersionPHP\";s:6:\"7.0.33\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20201012_cosmedoc\";s:4:\"Hash\";s:35:\"203ca692427794c36693_20201012082826\";s:8:\"NameHash\";s:53:\"20201012_cosmedoc_203ca692427794c36693_20201012082826\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";s:63:\"20201012_cosmedoc_203ca692427794c36693_20201012082826_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:27:\"D:/OSPanel/domains/cosmedic\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2020-10-12 08:28:26\";s:7:\"Version\";s:6:\"1.3.38\";s:9:\"VersionWP\";s:5:\"5.5.1\";s:9:\"VersionDB\";s:6:\"5.7.25\";s:10:\"VersionPHP\";s:6:\"7.0.33\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20201012_cosmedoc\";s:4:\"Hash\";s:35:\"203ca692427794c36693_20201012082826\";s:8:\"NameHash\";s:53:\"20201012_cosmedoc_203ca692427794c36693_20201012082826\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:21;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:61;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:61;s:24:\"\0DUP_Database\0tempDbPath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:61;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:36:\"D:/OSPanel/domains/cosmedic/wp-admin\";i:1;s:46:\"D:/OSPanel/domains/cosmedic/wp-content/uploads\";i:2;s:48:\"D:/OSPanel/domains/cosmedic/wp-content/languages\";i:3;s:45:\"D:/OSPanel/domains/cosmedic/wp-content/themes\";i:4;s:39:\"D:/OSPanel/domains/cosmedic/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:27:\"D:/OSPanel/domains/cosmedic\";i:1;s:38:\"D:/OSPanel/domains/cosmedic/wp-content\";}}s:9:\"Installer\";r:82;s:8:\"Database\";r:94;s:13:\"BuildProgress\";r:124;}', 'yes'),
(6113, '_transient_timeout_orders-all-statuses', '1603387348', 'no'),
(6114, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1602764277\";s:5:\"value\";a:0:{}}', 'no'),
(6163, 'cos_brands_children', 'a:0:{}', 'yes'),
(6804, 'product_cat_children', 'a:2:{i:24;a:1:{i:0;i:56;}i:56;a:1:{i:0;i:58;}}', 'yes'),
(6984, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1603368945', 'no'),
(6985, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(7011, 'woocommerce_version', '4.6.0', 'yes'),
(7012, 'woocommerce_db_version', '4.6.0', 'yes'),
(7015, 'woocommerce_onboarding_profile', 'a:1:{s:9:\"completed\";b:1;}', 'yes'),
(7016, 'woocommerce_task_list_hidden', 'yes', 'yes'),
(7019, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:0;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(7021, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:18:\"kolichestvo-tovara\";s:15:\"attribute_label\";s:33:\"Количество товара\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:19:\"strana-proizvoditel\";s:15:\"attribute_label\";s:39:\"Страна производитель\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:6:\"weight\";s:15:\"attribute_label\";s:23:\"Вес продукта\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(7031, 'woocommerce_admin_version', '1.6.1', 'yes'),
(7056, 'wc_remote_inbox_notifications_specs', 'a:3:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}}', 'yes'),
(7303, '_transient_timeout_wc_report_orders_stats_dff65137bf3874c056856a888e8b239d', '1603387350', 'no'),
(7304, '_transient_wc_report_orders_stats_dff65137bf3874c056856a888e8b239d', 'a:2:{s:7:\"version\";s:10:\"1602764277\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-42\";s:10:\"date_start\";s:19:\"2020-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-15 20:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-15 20:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(7305, '_transient_timeout_wc_report_orders_stats_6ae016703e06501a053999ac79026beb', '1603387350', 'no'),
(7306, '_transient_wc_report_orders_stats_6ae016703e06501a053999ac79026beb', 'a:2:{s:7:\"version\";s:10:\"1602764277\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-42\";s:10:\"date_start\";s:19:\"2020-10-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-15 20:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-10-15 20:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(7307, '_transient_timeout_wc_report_orders_stats_8222120cee077860a58463749446cc34', '1603387350', 'no'),
(7308, '_transient_wc_report_orders_stats_8222120cee077860a58463749446cc34', 'a:2:{s:7:\"version\";s:10:\"1602764277\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-42\";s:10:\"date_start\";s:19:\"2020-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-10-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(7309, '_transient_timeout_wc_report_orders_stats_2b86e3d70213455f5272de02a507ea62', '1603387350', 'no'),
(7310, '_transient_wc_report_orders_stats_2b86e3d70213455f5272de02a507ea62', 'a:2:{s:7:\"version\";s:10:\"1602764277\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-42\";s:10:\"date_start\";s:19:\"2020-10-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-10-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-10-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-10-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(7374, '_transient_timeout_wc_product_children_0', '1605377567', 'no'),
(7375, '_transient_wc_product_children_0', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(7384, '_transient_timeout_wc_product_children_225', '1605377680', 'no'),
(7385, '_transient_wc_product_children_225', 'a:2:{s:3:\"all\";a:4:{i:0;i:226;i:1;i:227;i:2;i:228;i:3;i:229;}s:7:\"visible\";a:4:{i:0;i:226;i:1;i:227;i:2;i:228;i:3;i:229;}}', 'no'),
(7386, '_transient_timeout_wc_var_prices_225', '1605377763', 'no'),
(7387, '_transient_wc_var_prices_225', '{\"version\":\"1602785731\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"226\":\"10.00\",\"227\":\"25.00\",\"228\":\"50.00\",\"229\":\"100.00\"},\"regular_price\":{\"226\":\"10.00\",\"227\":\"25.00\",\"228\":\"50.00\",\"229\":\"100.00\"},\"sale_price\":{\"226\":\"10.00\",\"227\":\"25.00\",\"228\":\"50.00\",\"229\":\"100.00\"}}}', 'no'),
(7408, '_transient_timeout_wc_child_has_weight_225', '1605377774', 'no'),
(7409, '_transient_wc_child_has_weight_225', '0', 'no'),
(7410, '_transient_timeout_wc_child_has_dimensions_225', '1605377774', 'no'),
(7411, '_transient_wc_child_has_dimensions_225', '0', 'no'),
(7420, '_transient_timeout_wc_var_prices_232', '1605378037', 'no'),
(7421, '_transient_wc_var_prices_232', '{\"version\":\"1602785731\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"233\":\"10.00\",\"234\":\"25.00\",\"235\":\"50.00\",\"236\":\"100.00\",\"237\":\"1000.00\"},\"regular_price\":{\"233\":\"10.00\",\"234\":\"25.00\",\"235\":\"50.00\",\"236\":\"100.00\",\"237\":\"1000.00\"},\"sale_price\":{\"233\":\"10.00\",\"234\":\"25.00\",\"235\":\"50.00\",\"236\":\"100.00\",\"237\":\"1000.00\"}}}', 'no'),
(7424, '_transient_timeout_wc_product_children_232', '1605378042', 'no'),
(7425, '_transient_wc_product_children_232', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(7426, '_transient_timeout_wc_term_counts', '1605378057', 'no'),
(7427, '_transient_wc_term_counts', 'a:8:{i:24;s:1:\"3\";i:25;s:1:\"6\";i:26;s:1:\"2\";i:23;s:1:\"3\";i:27;s:1:\"0\";i:28;s:1:\"0\";i:56;s:1:\"1\";i:58;s:1:\"1\";}', 'no'),
(7430, '_transient_timeout_acf_plugin_updates', '1603051179', 'no'),
(7431, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";}}', 'no'),
(7432, '_transient_timeout__woocommerce_helper_subscriptions', '1602879279', 'no'),
(7433, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(7434, '_site_transient_timeout_theme_roots', '1602880179', 'no'),
(7435, '_site_transient_theme_roots', 'a:2:{s:8:\"cosmedoc\";s:7:\"/themes\";s:23:\"empty-theme/empty-theme\";s:7:\"/themes\";}', 'no'),
(7436, '_transient_timeout__woocommerce_helper_updates', '1602921579', 'no'),
(7437, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1602878379;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(7439, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602878382;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-10-15 14:14:27\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(7440, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602878382;s:7:\"checked\";a:2:{s:8:\"cosmedoc\";s:5:\"2.0.0\";s:23:\"empty-theme/empty-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(7441, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602878383;s:7:\"checked\";a:17:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:5:\"1.7.2\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:7:\"1.5.7.3\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";s:6:\"0.5.25\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.1\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.5.0\";s:25:\"duplicator/duplicator.php\";s:6:\"1.3.38\";s:35:\"pre-orders-for-woocommerce/main.php\";s:5:\"1.0.9\";s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";s:5:\"1.8.3\";s:43:\"pw-woocommerce-gift-cards/pw-gift-cards.php\";s:5:\"1.148\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.9\";s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:7:\"1.21.11\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.6.0\";s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";s:5:\"1.7.1\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"15.1\";}s:8:\"response\";a:3:{s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:43:\"w.org/plugins/product-import-export-for-woo\";s:4:\"slug\";s:29:\"product-import-export-for-woo\";s:6:\"plugin\";s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";s:11:\"new_version\";s:5:\"1.8.4\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/product-import-export-for-woo/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/product-import-export-for-woo.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/product-import-export-for-woo/assets/icon-256x256.png?rev=2010403\";s:2:\"1x\";s:82:\"https://ps.w.org/product-import-export-for-woo/assets/icon-128x128.jpg?rev=1906359\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/product-import-export-for-woo/assets/banner-1544x500.jpg?rev=2065538\";s:2:\"1x\";s:84:\"https://ps.w.org/product-import-export-for-woo/assets/banner-772x250.jpg?rev=2065542\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:43:\"<ul>\n<li>Tested OK with WC 4.6.0</li>\n</ul>\";s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:37:\"w.org/plugins/ti-woocommerce-wishlist\";s:4:\"slug\";s:23:\"ti-woocommerce-wishlist\";s:6:\"plugin\";s:51:\"ti-woocommerce-wishlist/ti-woocommerce-wishlist.php\";s:11:\"new_version\";s:7:\"1.21.12\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/ti-woocommerce-wishlist/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/ti-woocommerce-wishlist.1.21.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/ti-woocommerce-wishlist/assets/icon-256x256.png?rev=2071101\";s:2:\"1x\";s:76:\"https://ps.w.org/ti-woocommerce-wishlist/assets/icon-128x128.png?rev=2071101\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/ti-woocommerce-wishlist/assets/banner-1544x500.png?rev=2071101\";s:2:\"1x\";s:78:\"https://ps.w.org/ti-woocommerce-wishlist/assets/banner-772x250.png?rev=2071101\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:98:\"<p>URGENT UPDATE! Fixed zero day vulnerability issue related to export/import plugin settings.</p>\";s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"15.1.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.15.1.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"duplicator\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"1.3.38\";s:7:\"updated\";s:19:\"2020-06-22 14:58:00\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/duplicator/1.3.38/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"ti-woocommerce-wishlist\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:7:\"1.21.11\";s:7:\"updated\";s:19:\"2020-09-18 07:57:06\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/translation/plugin/ti-woocommerce-wishlist/1.21.11/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.6.0\";s:7:\"updated\";s:19:\"2020-10-14 19:09:48\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.6.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:4:\"15.1\";s:7:\"updated\";s:19:\"2020-10-14 08:47:57\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/15.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:13:{s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/ajax-search-for-woocommerce\";s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:6:\"plugin\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ajax-search-for-woocommerce/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ajax-search-for-woocommerce.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/ajax-search-for-woocommerce/assets/icon-256x256.png?rev=2042590\";s:2:\"1x\";s:80:\"https://ps.w.org/ajax-search-for-woocommerce/assets/icon-128x128.png?rev=2042590\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/ajax-search-for-woocommerce/assets/banner-1544x500.jpg?rev=2234615\";s:2:\"1x\";s:82:\"https://ps.w.org/ajax-search-for-woocommerce/assets/banner-772x250.jpg?rev=2234615\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:7:\"1.5.7.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/contact-form-7-mailchimp-extension\";s:4:\"slug\";s:34:\"contact-form-7-mailchimp-extension\";s:6:\"plugin\";s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";s:11:\"new_version\";s:6:\"0.5.25\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/contact-form-7-mailchimp-extension/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/contact-form-7-mailchimp-extension.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-256x256.png?rev=1072113\";s:2:\"1x\";s:87:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-128x128.png?rev=1072113\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-1544x500.png?rev=1072092\";s:2:\"1x\";s:89:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-772x250.png?rev=1625715\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.3.38\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.3.38.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"pre-orders-for-woocommerce/main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/pre-orders-for-woocommerce\";s:4:\"slug\";s:26:\"pre-orders-for-woocommerce\";s:6:\"plugin\";s:35:\"pre-orders-for-woocommerce/main.php\";s:11:\"new_version\";s:5:\"1.0.9\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/pre-orders-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/pre-orders-for-woocommerce.1.0.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/pre-orders-for-woocommerce/assets/icon-256x256.jpg?rev=2281163\";s:2:\"1x\";s:79:\"https://ps.w.org/pre-orders-for-woocommerce/assets/icon-128x128.jpg?rev=2281163\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/pre-orders-for-woocommerce/assets/banner-1544x500.jpg?rev=2281163\";s:2:\"1x\";s:81:\"https://ps.w.org/pre-orders-for-woocommerce/assets/banner-772x250.jpg?rev=2281163\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"pw-woocommerce-gift-cards/pw-gift-cards.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/pw-woocommerce-gift-cards\";s:4:\"slug\";s:25:\"pw-woocommerce-gift-cards\";s:6:\"plugin\";s:43:\"pw-woocommerce-gift-cards/pw-gift-cards.php\";s:11:\"new_version\";s:5:\"1.148\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/pw-woocommerce-gift-cards/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/pw-woocommerce-gift-cards.1.148.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/pw-woocommerce-gift-cards/assets/icon-256x256.png?rev=1809373\";s:2:\"1x\";s:78:\"https://ps.w.org/pw-woocommerce-gift-cards/assets/icon-128x128.png?rev=1809373\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/pw-woocommerce-gift-cards/assets/banner-1544x500.png?rev=1809373\";s:2:\"1x\";s:80:\"https://ps.w.org/pw-woocommerce-gift-cards/assets/banner-772x250.png?rev=1809373\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.6.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/woocommerce-product-stock-alert\";s:4:\"slug\";s:31:\"woocommerce-product-stock-alert\";s:6:\"plugin\";s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/woocommerce-product-stock-alert/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/woocommerce-product-stock-alert.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/woocommerce-product-stock-alert/assets/icon-256x256.png?rev=1592392\";s:2:\"1x\";s:84:\"https://ps.w.org/woocommerce-product-stock-alert/assets/icon-128x128.png?rev=1592392\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:86:\"https://ps.w.org/woocommerce-product-stock-alert/assets/banner-772x250.jpg?rev=2371395\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_pimwick_gift_card`
--

CREATE TABLE `wss_pimwick_gift_card` (
  `pimwick_gift_card_id` int(11) NOT NULL,
  `number` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_pimwick_gift_card_activity`
--

CREATE TABLE `wss_pimwick_gift_card_activity` (
  `pimwick_gift_card_activity_id` int(11) NOT NULL,
  `pimwick_gift_card_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activity_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(60) NOT NULL,
  `amount` decimal(15,6) DEFAULT NULL,
  `note` text,
  `reference_activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_postmeta`
--

CREATE TABLE `wss_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_postmeta`
--

INSERT INTO `wss_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, '_wp_attached_file', '2020/09/2_lico_m.jpg'),
(14, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:20:\"2020/09/2_lico_m.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"2_lico_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"2_lico_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"2_lico_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"2_lico_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"2_lico_m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"2_lico_m-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"2_lico_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"2_lico_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"2_lico_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 10, '_wp_attached_file', '2020/09/2_volosy_m.jpg'),
(16, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:22:\"2020/09/2_volosy_m.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"2_volosy_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"2_volosy_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"2_volosy_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 11, '_wp_attached_file', '2020/09/2_telo_m.jpg'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:20:\"2020/09/2_telo_m.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"2_telo_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"2_telo_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"2_telo_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"2_telo_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"2_telo_m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"2_telo_m-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"2_telo_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"2_telo_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"2_telo_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 12, '_wp_attached_file', '2020/09/2_acsessuary_m.jpg'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:26:\"2020/09/2_acsessuary_m.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"2_acsessuary_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"2_acsessuary_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"2_acsessuary_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 13, '_wp_attached_file', '2020/09/2_atmosfera_m.jpg'),
(22, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:25:\"2020/09/2_atmosfera_m.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"2_atmosfera_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"2_atmosfera_m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"2_atmosfera_m-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 14, '_edit_last', '1'),
(24, 14, '_edit_lock', '1600521196:1'),
(25, 14, 'total_sales', '0'),
(26, 14, '_tax_status', 'taxable'),
(27, 14, '_tax_class', ''),
(28, 14, '_manage_stock', 'no'),
(29, 14, '_backorders', 'no'),
(30, 14, '_sold_individually', 'no'),
(31, 14, '_virtual', 'no'),
(32, 14, '_downloadable', 'no'),
(33, 14, '_download_limit', '-1'),
(34, 14, '_download_expiry', '-1'),
(35, 14, '_stock', NULL),
(36, 14, '_stock_status', 'instock'),
(37, 14, '_wc_average_rating', '0'),
(38, 14, '_wc_review_count', '0'),
(39, 14, '_product_version', '4.5.2'),
(40, 16, '_edit_last', '1'),
(41, 16, '_edit_lock', '1600602023:1'),
(42, 14, 'gift_certificate', '1'),
(43, 14, '_gift_certificate', 'field_5f65f7a11bb2d'),
(44, 14, 'sertificate_summ_0_sert_price_value', '5000'),
(45, 14, '_sertificate_summ_0_sert_price_value', 'field_5f65f8672549b'),
(46, 14, 'sertificate_summ_1_sert_price_value', '10000'),
(47, 14, '_sertificate_summ_1_sert_price_value', 'field_5f65f8672549b'),
(48, 14, 'sertificate_summ_2_sert_price_value', '25000'),
(49, 14, '_sertificate_summ_2_sert_price_value', 'field_5f65f8672549b'),
(50, 14, 'sertificate_summ_3_sert_price_value', '50000'),
(51, 14, '_sertificate_summ_3_sert_price_value', 'field_5f65f8672549b'),
(52, 14, 'sertificate_summ', '4'),
(53, 14, '_sertificate_summ', 'field_5f65f8152549a'),
(54, 14, '_sku', 'KL_KL019'),
(55, 23, '_wp_attached_file', '2020/09/kl_rg003_2.jpg'),
(56, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:22:\"2020/09/kl_rg003_2.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_rg003_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg003_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_rg003_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg003_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_rg003_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_rg003_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg003_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 22, '_edit_last', '1'),
(58, 22, '_edit_lock', '1600595954:1'),
(59, 22, '_thumbnail_id', '23'),
(60, 22, '_sku', 'KL_RG003'),
(61, 22, '_regular_price', '1600'),
(62, 22, 'total_sales', '0'),
(63, 22, '_tax_status', 'taxable'),
(64, 22, '_tax_class', ''),
(65, 22, '_manage_stock', 'no'),
(66, 22, '_backorders', 'no'),
(67, 22, '_sold_individually', 'no'),
(68, 22, '_virtual', 'no'),
(69, 22, '_downloadable', 'no'),
(70, 22, '_download_limit', '-1'),
(71, 22, '_download_expiry', '-1'),
(72, 22, '_stock', NULL),
(73, 22, '_stock_status', 'instock'),
(74, 22, '_wc_average_rating', '0'),
(75, 22, '_wc_review_count', '0'),
(76, 22, '_product_version', '4.5.2'),
(77, 22, '_price', '1600'),
(78, 22, 'gift_certificate', '0'),
(79, 22, '_gift_certificate', 'field_5f65f7a11bb2d'),
(80, 22, 'about_product', 'Это интенсивный уход за волосами, который смягчает и защищает поврежденные волосы. Благодаря специальной формуле, состоящей из масла ши холодного отжима, овсяного протеина и коллагена.\r\nНеобходимо наносить на влажные волосы, перед сушкой феном.'),
(81, 22, '_about_product', 'field_5f6700c16100b'),
(82, 22, 'mode_of_application', 'Нанесите небольшое количество средства на влажные, подсушенные полотенцем волосы и распределите его по всей длине, предварительно отступив от корней. Высушите волосы феном. Не требует смывания. При попадании в глаза немедленно промыть их водой. Хранить в недоступном для детей месте.'),
(83, 22, '_mode_of_application', 'field_5f6700e96100e'),
(84, 22, 'composition', 'Glycerin, Water, Cyclopentasiloxane, Cetearyl Alcohol, Dicaprylyl Carbonate, Behentrimonium Chloride, Steartrimonium Chloride, Aloe Barbadensis Leaf Juice, Glycine Soja (Soybean) Seed Extract, Butyrospermum Parkii (Shea) Butter, Citrus Aurantium Dulcis (Orange) Peel Oil, Avena Sativa (Oat) Kernel Protein, Hydrolyzed Collagen, Bis-Hydroxy/Methoxy Amodimethicone, Propylene Glycol, Quaternium-80, Hydroxyethylcellulose, Dimethicone, Cetyl Esters, Pectin, Pentylene Glycol, 1,2-Hexanediol, Butylene Glycol, Octanediol, Ethylhexylglycerin, Stearyl Alcohol, Alcohol, Disodium EDTA, Fragrance(Parfum)'),
(85, 22, '_composition', 'field_5f67012d61012'),
(86, 30, '_edit_last', '1'),
(87, 30, '_edit_lock', '1602713335:1'),
(88, 31, '_wp_attached_file', '2020/09/kl_rg022_set_1.jpg'),
(89, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:26:\"2020/09/kl_rg022_set_1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"kl_rg022_set_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"kl_rg022_set_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"kl_rg022_set_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 32, '_wp_attached_file', '2020/09/kl_rg001.jpg'),
(91, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/09/kl_rg001.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"kl_rg001-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_rg001-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"kl_rg001-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kl_rg001-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"kl_rg001-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_rg001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"kl_rg001-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"kl_rg001-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"kl_rg001-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"kl_rg001-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_rg001-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 33, '_wp_attached_file', '2020/09/kl_rg002_2.jpg'),
(93, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/kl_rg002_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_rg002_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_rg002_2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_rg002_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg002_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 34, '_wp_attached_file', '2020/09/kl_rg003_2_1_3.jpg'),
(95, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:26:\"2020/09/kl_rg003_2_1_3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"kl_rg003_2_1_3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"kl_rg003_2_1_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 35, '_wp_attached_file', '2020/09/kl_rg003_3.jpg'),
(97, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/kl_rg003_3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_rg003_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_rg003_3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_rg003_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg003_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(98, 36, '_wp_attached_file', '2020/09/kl_rg004_1_2.jpg'),
(99, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:24:\"2020/09/kl_rg004_1_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"kl_rg004_1_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"kl_rg004_1_2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"kl_rg004_1_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_rg004_1_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 37, '_wp_attached_file', '2020/09/kl_rg004_2.jpg'),
(101, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/kl_rg004_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_rg004_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_rg004_2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_rg004_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg004_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 38, '_wp_attached_file', '2020/09/kl_rg005_1_2.jpg'),
(103, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:24:\"2020/09/kl_rg005_1_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"kl_rg005_1_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"kl_rg005_1_2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"kl_rg005_1_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_rg005_1_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 39, '_wp_attached_file', '2020/09/kl_rg005_3.jpg'),
(105, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/kl_rg005_3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_rg005_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_rg005_3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_rg005_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_rg005_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 40, '_wp_attached_file', '2020/09/kl_rg022_set_1-1.jpg'),
(107, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:28:\"2020/09/kl_rg022_set_1-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"kl_rg022_set_1-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"kl_rg022_set_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 30, '_thumbnail_id', '31'),
(109, 30, '_sku', 'KL_RG022_SET'),
(110, 30, '_regular_price', '7410'),
(111, 30, 'total_sales', '0'),
(112, 30, '_tax_status', 'taxable'),
(113, 30, '_tax_class', ''),
(114, 30, '_manage_stock', 'yes'),
(115, 30, '_backorders', 'no'),
(116, 30, '_sold_individually', 'no'),
(117, 30, '_virtual', 'no'),
(118, 30, '_downloadable', 'no'),
(119, 30, '_download_limit', '-1'),
(120, 30, '_download_expiry', '-1'),
(121, 30, '_stock', '9'),
(122, 30, '_stock_status', 'instock'),
(123, 30, '_wc_average_rating', '0'),
(124, 30, '_wc_review_count', '0'),
(125, 30, '_product_version', '4.5.2'),
(126, 30, '_price', '7410'),
(127, 30, '_product_image_gallery', '32,33,34,35,36,37,38,39,40'),
(128, 30, 'about_product', ''),
(129, 30, '_about_product', 'field_5f6700c16100b'),
(130, 30, 'mode_of_application', ''),
(131, 30, '_mode_of_application', 'field_5f6700e96100e'),
(132, 30, 'composition', ''),
(133, 30, '_composition', 'field_5f67012d61012'),
(134, 30, 'gift_certificate', '0'),
(135, 30, '_gift_certificate', 'field_5f65f7a11bb2d'),
(136, 42, '_wp_attached_file', '2020/09/7m1a3093_1.jpg'),
(137, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/7m1a3093_1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"7m1a3093_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"7m1a3093_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"7m1a3093_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 43, '_wp_attached_file', '2020/09/7m1a3093_1-1.jpg'),
(139, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:24:\"2020/09/7m1a3093_1-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"7m1a3093_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"7m1a3093_1-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"7m1a3093_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"7m1a3093_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 44, '_wp_attached_file', '2020/09/kl_ss003_1_4.jpg'),
(141, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:24:\"2020/09/kl_ss003_1_4.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"kl_ss003_1_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"kl_ss003_1_4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"kl_ss003_1_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ss003_1_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 41, '_edit_last', '1'),
(143, 41, '_thumbnail_id', '42'),
(144, 41, '_regular_price', '6880'),
(145, 41, '_sale_price', '5850'),
(146, 41, 'total_sales', '0'),
(147, 41, '_tax_status', 'taxable'),
(148, 41, '_tax_class', ''),
(149, 41, '_manage_stock', 'no'),
(150, 41, '_backorders', 'no'),
(151, 41, '_sold_individually', 'no'),
(152, 41, '_virtual', 'no'),
(153, 41, '_downloadable', 'no'),
(154, 41, '_download_limit', '-1'),
(155, 41, '_download_expiry', '-1'),
(156, 41, '_stock', NULL),
(157, 41, '_stock_status', 'instock'),
(158, 41, '_wc_average_rating', '0'),
(159, 41, '_wc_review_count', '0'),
(160, 41, '_product_version', '4.5.2'),
(161, 41, '_price', '5850'),
(162, 41, '_product_image_gallery', '43,44');
INSERT INTO `wss_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(163, 41, 'about_product', 'Рассул - мылящаяся глина, которую рекомендуется использовать как маску для лица и тела и как шампунь для волос. Данное средство глубоко очищает кожу и волосы от загрязнений, сужает поры, подсушивает воспаления, избавляет черных точек, регулирует секрецию сальных желез, улучшает цвет лица.\r\n\r\nРассул - универсальное средство для ухода\r\n\r\n- за кожей лица: маска обладает дезинфицирующими свойствами, сужает поры и удаляет «черные точки», снимает воспаления, регулирует выделение кожного сала, а также является прекрасным противовозрастным средством, разглаживает мелкие морщины, стимулируют обновление клеток и выработку коллагена\r\n\r\n- за кожей тела: выводит из клеток токсины, тонизирует, при регулярном применении помогает в борьбе с растяжками и шрамами.\r\n\r\n- за волосами: отлично очищает волосы от загрязнений и остатков средств для укладки, обладает абсорбирующими и обезжиривающими свойствами, укрепляет корни, ускоряет рост волос, придает объем и избавляет от необходимости в частом мытье головы.\r\n\r\n*Возникновение осадка в виде осевшей глины находится в рамках нормы, он связан с разной плотностью ингредиентов. В таком случае рекомендуем перемешать продукт чистым шпателем до однородной консистенции и продолжить использование.'),
(164, 41, '_about_product', 'field_5f6700c16100b'),
(165, 41, 'mode_of_application', 'Нанесите маску пальцами или кистью на влажную распаренную кожу не тонким слоем максимум на 10 минут (на теле можно оставить до 20 минут), смойте до того, как маска успеет засохнуть или сбрызгивайте кожу термальной водой. Используйте не чаще 2х раз в неделю.\r\nОбладателям сухой, чувствительной кожи использовать на коже лица не более 7 минут, на теле не более 10 минут 1 раз в 1-2 недели.\r\n\r\nНа волосах Рассул применяется как обычный шампунь, очень хорошо пенится, дополнительно действует как скраб для кожи головы за счет содержания салициловой кислоты в составе.\r\nОбладателям сухой, чувствительной кожи использовать на коже лица не более 7 минут, на теле не более 10 минут 1 раз в 1-2 недели.\r\nНе подходит для ежедневного мытья волос.'),
(166, 41, '_mode_of_application', 'field_5f6700e96100e'),
(167, 41, 'composition', ''),
(168, 41, '_composition', 'field_5f67012d61012'),
(169, 41, 'gift_certificate', '0'),
(170, 41, '_gift_certificate', 'field_5f65f7a11bb2d'),
(171, 41, '_edit_lock', '1600595918:1'),
(172, 46, '_edit_last', '1'),
(173, 46, '_edit_lock', '1602322594:1'),
(174, 41, 'product_subtitle', ''),
(175, 41, '_product_subtitle', 'field_5f6720e2c804e'),
(177, 41, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(178, 22, 'product_subtitle', 'REAL SHEA COLD PRESSED SHEA BUTTER PROTEIN RECHARGING LEAVE-IN TREATMENT'),
(179, 22, '_product_subtitle', 'field_5f6720e2c804e'),
(180, 30, 'product_subtitle', 'REAL SHEA COLD PRESSED'),
(181, 30, '_product_subtitle', 'field_5f6720e2c804e'),
(182, 50, '_edit_last', '1'),
(183, 50, '_edit_lock', '1600596353:1'),
(184, 51, '_wp_attached_file', '2020/09/kl_ab042_1_1.jpg'),
(185, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1502;s:6:\"height\";i:1500;s:4:\"file\";s:24:\"2020/09/kl_ab042_1_1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"kl_ab042_1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"kl_ab042_1_1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"kl_ab042_1_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 52, '_wp_attached_file', '2020/09/kl_ab042_1.jpg'),
(187, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/kl_ab042_1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_ab042_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_ab042_1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_ab042_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_ab042_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 50, 'total_sales', '0'),
(189, 50, '_tax_status', 'taxable'),
(190, 50, '_tax_class', ''),
(191, 50, '_manage_stock', 'no'),
(192, 50, '_backorders', 'no'),
(193, 50, '_sold_individually', 'no'),
(194, 50, '_virtual', 'no'),
(195, 50, '_downloadable', 'no'),
(196, 50, '_download_limit', '-1'),
(197, 50, '_download_expiry', '-1'),
(198, 50, '_stock', NULL),
(199, 50, '_stock_status', 'instock'),
(200, 50, '_wc_average_rating', '0'),
(201, 50, '_wc_review_count', '0'),
(202, 50, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"2\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(203, 50, '_product_version', '4.5.2'),
(204, 50, '_thumbnail_id', '51'),
(205, 50, '_sku', 'KL_AB053'),
(206, 50, '_regular_price', '2980'),
(207, 50, '_price', '2980'),
(208, 50, '_product_image_gallery', '51,52'),
(209, 50, 'product_subtitle', 'Indulging'),
(210, 50, '_product_subtitle', 'field_5f6720e2c804e'),
(211, 50, 'about_product', 'Масло-флюид без силиконов и парабенов благодаря уникальной консистенции равномерно распределяется по длине любого типа волос без ощущения липкости и утяжеления. Эффективно запечатывает секущиеся концы, делает волосы гладкими и сияющими. Обеспечивает термозащиту до 230 ℃. Подходит для использования на кожу тела - активно питает и красиво подсвечивает.'),
(212, 50, '_about_product', 'field_5f6700c16100b'),
(213, 50, 'mode_of_application', ''),
(214, 50, '_mode_of_application', 'field_5f6700e96100e'),
(215, 50, 'composition', 'Без силиконов и парабенов.'),
(216, 50, '_composition', 'field_5f67012d61012'),
(217, 50, 'gift_certificate', '0'),
(218, 50, '_gift_certificate', 'field_5f65f7a11bb2d'),
(219, 53, '_edit_last', '1'),
(220, 53, '_edit_lock', '1602339020:1'),
(221, 54, '_wp_attached_file', '2020/09/kl_te002.jpg'),
(222, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/09/kl_te002.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"kl_te002-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_te002-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"kl_te002-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kl_te002-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"kl_te002-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_te002-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"kl_te002-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"kl_te002-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"kl_te002-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"kl_te002-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_te002-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 53, '_thumbnail_id', '54'),
(224, 53, '_sku', 'KL_TE002'),
(225, 53, '_regular_price', '2200'),
(226, 53, '_sale_price', '1540'),
(227, 53, 'total_sales', '0'),
(228, 53, '_tax_status', 'taxable'),
(229, 53, '_tax_class', ''),
(230, 53, '_manage_stock', 'no'),
(231, 53, '_backorders', 'no'),
(232, 53, '_sold_individually', 'no'),
(233, 53, '_virtual', 'no'),
(234, 53, '_downloadable', 'no'),
(235, 53, '_download_limit', '-1'),
(236, 53, '_download_expiry', '-1'),
(237, 53, '_stock', NULL),
(238, 53, '_stock_status', 'instock'),
(239, 53, '_wc_average_rating', '0'),
(240, 53, '_wc_review_count', '0'),
(241, 53, '_product_version', '4.5.2'),
(242, 53, '_price', '1540'),
(243, 53, 'product_subtitle', 'HAIR & BODY OIL PEONY FLOWER & BERGAMOT'),
(244, 53, '_product_subtitle', 'field_5f6720e2c804e'),
(245, 53, 'about_product', 'Универсальное питательное масло с экстрактом бергамота и пиона. Можно использовать не только для волос, но и для тела. Интенсивно питает волосы и увлажняет кожу.\r\n\r\nЭкстракт пиона незаменим для ухода за поврежденными и уставшими\r\nволосами. Он стимулирует рост волос и препятствует их выпадению,\r\nинтенсивно питает кожу головы и обеспечивает сохранение влаги,\r\nвосстанавливает структуру волос, возвращает им естественный блеск и\r\nделает их более послушными.\r\n\r\nБергамот увлажняет сухие и сеченые кончики, укрепляет корни волос\r\nи нормализует работу сальных желез. Устраняет жирный блеск, делая волосы\r\nмягкими, без утяжеления, защищает от ультрафиолета.'),
(246, 53, '_about_product', 'field_5f6700c16100b'),
(247, 53, 'mode_of_application', 'Для спа ухода нанесите средство по всей длине на сухие немытые волосы (от 5 минут до 10 часов).\r\n\r\nДля ухода за кончиками вы можете нанести небольшое количество средства на чистые сухие волосы. Важно\r\nперед применением протестировать на чувствительных участках кожи, т.к.\r\nвозможна индивидуальная реакция на натуральные компоненты.'),
(248, 53, '_mode_of_application', 'field_5f6700e96100e'),
(249, 53, 'composition', 'Активные компоненты:\r\nJojoba oil, Shea butter, Coconut oil, Peony flowers extract, Bergamot extract'),
(250, 53, '_composition', 'field_5f67012d61012'),
(251, 53, 'gift_certificate', '0'),
(252, 53, '_gift_certificate', 'field_5f65f7a11bb2d'),
(253, 53, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(254, 56, '_edit_last', '1'),
(255, 56, '_edit_lock', '1600810471:1'),
(256, 56, 'total_sales', '0'),
(257, 56, '_tax_status', 'taxable'),
(258, 56, '_tax_class', ''),
(259, 56, '_manage_stock', 'no'),
(260, 56, '_backorders', 'no'),
(261, 56, '_sold_individually', 'no'),
(262, 56, '_virtual', 'no'),
(263, 56, '_downloadable', 'no'),
(264, 56, '_download_limit', '-1'),
(265, 56, '_download_expiry', '-1'),
(266, 56, '_stock', NULL),
(267, 56, '_stock_status', 'instock'),
(268, 56, '_wc_average_rating', '0'),
(269, 56, '_wc_review_count', '0'),
(270, 56, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(271, 56, '_product_version', '4.5.2'),
(272, 57, '_wp_attached_file', '2020/09/kl_km055.jpg'),
(273, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/09/kl_km055.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"kl_km055-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_km055-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"kl_km055-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kl_km055-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"kl_km055-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_km055-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"kl_km055-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"kl_km055-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"kl_km055-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"kl_km055-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_km055-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(274, 56, '_thumbnail_id', '57'),
(275, 56, '_sku', 'KL_KM055'),
(276, 56, '_regular_price', '3570'),
(277, 56, '_price', '3570'),
(278, 56, 'product_subtitle', 'YOUNG.AGAIN'),
(279, 56, '_product_subtitle', 'field_5f6720e2c804e'),
(280, 56, 'about_product', 'Содержит комплекс из 20 аминокислот для укрепления волос. Улучшает метаболизм кожи головы, питает фолликулы. Масло, которое не утяжеляет волосы. Упаковка из биоразлагаемого пластика. Формула не наносит вреда окружающей среде.'),
(281, 56, '_about_product', 'field_5f6700c16100b'),
(282, 56, 'mode_of_application', ''),
(283, 56, '_mode_of_application', 'field_5f6700e96100e'),
(284, 56, 'composition', 'Экстракт бессмертника (восстанавливает поврежденные волосы, улучшает эластичность), масло семян саффлоры (улучшает расчесывание волос, смягчает и разглаживает), репейное масло (придает блеск), экстракт цветков орхидеи (предотвращает потерю влаги), фосфолипиды, биопептиды, масло семян баобаба.'),
(285, 56, '_composition', 'field_5f67012d61012'),
(286, 56, 'gift_certificate', '0'),
(287, 56, '_gift_certificate', 'field_5f65f7a11bb2d'),
(288, 58, '_edit_last', '1'),
(289, 58, '_edit_lock', '1602330278:1'),
(290, 58, 'total_sales', '0'),
(291, 58, '_tax_status', 'taxable'),
(292, 58, '_tax_class', ''),
(293, 58, '_manage_stock', 'no'),
(294, 58, '_backorders', 'no'),
(295, 58, '_sold_individually', 'no'),
(296, 58, '_virtual', 'no'),
(297, 58, '_downloadable', 'no'),
(298, 58, '_download_limit', '-1'),
(299, 58, '_download_expiry', '-1'),
(300, 58, '_stock', NULL),
(301, 58, '_stock_status', 'instock'),
(302, 58, '_wc_average_rating', '0'),
(303, 58, '_wc_review_count', '0'),
(304, 58, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(305, 58, '_product_version', '4.5.2'),
(306, 59, '_wp_attached_file', '2020/09/651473708865_2.jpg'),
(307, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:26:\"2020/09/651473708865_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"651473708865_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"651473708865_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"651473708865_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"651473708865_2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"651473708865_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"651473708865_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"651473708865_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 60, '_wp_attached_file', '2020/09/651473708865_1.jpg'),
(309, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:26:\"2020/09/651473708865_1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"651473708865_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"651473708865_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"651473708865_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"651473708865_1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"651473708865_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"651473708865_1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"651473708865_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"651473708865_1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 61, '_wp_attached_file', '2020/09/651473708865_2-1.jpg'),
(311, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:28:\"2020/09/651473708865_2-1.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"651473708865_2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"651473708865_2-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"651473708865_2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"651473708865_2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 62, '_wp_attached_file', '2020/09/651473708865_3.jpg'),
(313, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:26:\"2020/09/651473708865_3.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"651473708865_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"651473708865_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"651473708865_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"651473708865_3-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"651473708865_3-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"651473708865_3-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"651473708865_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"651473708865_3-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 63, '_wp_attached_file', '2020/09/651473708865_4.jpg'),
(315, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:26:\"2020/09/651473708865_4.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"651473708865_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"651473708865_4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"651473708865_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"651473708865_4-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"651473708865_4-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"651473708865_4-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"651473708865_4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"651473708865_4-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"651473708865_4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 58, '_thumbnail_id', '59'),
(317, 58, '_sku', 'KL_PR016'),
(318, 58, '_regular_price', '4240'),
(319, 58, '_price', '4240'),
(320, 58, '_product_image_gallery', '60,61,62,63'),
(321, 58, 'product_subtitle', 'NO MAKE UP SKINCARE NO CONCEALER CONCEALER'),
(322, 58, '_product_subtitle', 'field_5f6720e2c804e'),
(323, 58, 'about_product', 'Консилер обладает кремовой текстурой, чтобы скрыть темные круги под глазами и недостатки. Многофункциональная формула содержит ингредиенты для ухода за кожей, которые увлажняют деликатную область под глазами, одновременно уменьшая темные круги, отечность, морщины. Защита широкого спектра SPF20 помогает защитить от видимых признаков преждевременного старения, вызванные повреждением ультрафиолетом. Этот увлажняющий консилер не подчеркивает мимку и осветляет кожу вокруг глаз при регулярном применении. Создайте иллюзию естественного безупречного цвета лица с помощью этого средства.'),
(324, 58, '_about_product', 'field_5f6700c16100b'),
(325, 58, 'mode_of_application', 'Нанести на область вокруг глаз и при необходимости локально на кожу лица, растушевать кончиками пальцев.'),
(326, 58, '_mode_of_application', 'field_5f6700e96100e'),
(327, 58, 'composition', 'Water/Aqua/Eau, Zinc Oxide, Dimethicone, Cyclopentasiloxane, Butyloctyl Salicylate, Glycerin, Butylene Glycol, Nylon-12, Acrylates Copolymer, Argania Spinosa Kernel Oil, Lauryl PEG-9 Polydimethylsiloxyethyl Dimethicone, Tocopheryl Acetate, Triheptanoin, Tribehenin, Synthetic Fluorphlogopite, C13-16 Isoparaffin, Dimethicone/PEG-10/15 Crosspolymer, Sodium Chloride, HDI/Trimethylol Hexyllactone Crosspolymer, Albizia Julibrissin Bark Extract, Xanthan Gum, Hydrolyzed Rice Bran Protein, Bisabolol, Ethylhexylglycerin, Glycine Soja (Soybean) Protein, Superoxide Dismutase, Tocopherol, Disodium EDTA, Polysilicone-11, Triceteareth-4 Phosphate, Polyglyceryl-6 Polyricinoleate, Triethoxycaprylylsilane, Octyldodecanol, Dipropylene Glycol, Sodium Citrate, Darutoside, Sodium Dextran Sulfate, Phenoxyethanol, Sodium Benzoate, Potassium Sorbate, Mica (CI 77019), Silica, Tin Oxide. May Contain: Titanium Dioxide (CI 77891), Iron Oxides (CI 77491, CI 77492, CI 77499)'),
(328, 58, '_composition', 'field_5f67012d61012'),
(329, 58, 'gift_certificate', '0'),
(330, 58, '_gift_certificate', 'field_5f65f7a11bb2d'),
(331, 64, '_edit_last', '1'),
(332, 64, '_edit_lock', '1602710547:1'),
(333, 65, '_wp_attached_file', '2020/09/front_red.jpg'),
(334, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:21:\"2020/09/front_red.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"front_red-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"front_red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"front_red-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"front_red-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"front_red-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"front_red-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"front_red-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:21:\"front_red-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"front_red-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"front_red-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"front_red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 66, '_wp_attached_file', '2020/09/kl_prall_2.jpg'),
(336, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/09/kl_prall_2.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_prall_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_prall_2-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"kl_prall_2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_prall_2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(337, 67, '_wp_attached_file', '2020/09/red.jpg'),
(338, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:15:\"2020/09/red.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"red-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"red-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"red-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"red-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"red-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"red-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:15:\"red-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"red-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"red-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"red-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 64, 'total_sales', '0'),
(340, 64, '_tax_status', 'taxable'),
(341, 64, '_tax_class', ''),
(342, 64, '_manage_stock', 'no'),
(343, 64, '_backorders', 'no'),
(344, 64, '_sold_individually', 'no'),
(345, 64, '_virtual', 'no'),
(346, 64, '_downloadable', 'no'),
(347, 64, '_download_limit', '-1'),
(348, 64, '_download_expiry', '-1'),
(349, 64, '_stock', NULL),
(350, 64, '_stock_status', 'outofstock'),
(351, 64, '_wc_average_rating', '0'),
(352, 64, '_wc_review_count', '0'),
(353, 64, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:21:\"pa_kolichestvo-tovara\";a:6:{s:4:\"name\";s:21:\"pa_kolichestvo-tovara\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(354, 64, '_product_version', '4.5.2'),
(355, 64, '_thumbnail_id', '67'),
(356, 64, '_sku', 'KL_PL003'),
(357, 64, '_regular_price', '38500'),
(358, 64, '_price', '38500'),
(359, 64, '_product_image_gallery', '65,66,67'),
(360, 64, 'product_subtitle', ''),
(361, 64, '_product_subtitle', 'field_5f6720e2c804e'),
(362, 64, 'about_product', 'Purelift Face EMS (electro-muscle-stimulation) – гаджет для проведения электромиостимуляции в домашних условиях. Аппарат позволяет выбирать интенсивность силы тока исходя индивидуальных потребностей и ощущений – всего 10 уровней.\r\nВоздействие оказывается в течение 10 минут (по 5 минут для каждой стороны). Перед проведением миостимуляции необходимо тщательно очистить кожу и нанести достаточное количество сыворотки. Во время процедуры при необходимости можно добавлять сыворотку на лицо, чтобы кожа была хорошо увлажнена, тем самым повышается проводящая способность и улучшается\r\nрезультат воздействия токов.\r\nМиостимуляция – это воздействие импульсным током на мышцы и нервные окончания с целью стимуляции физиологического сокращения мускулатуры и значительного улучшения обменных процессов и кровообращения. Подобное воздействие возвращает мышцам тонус: расслабляет мускулатуру, которая находится в гипертонусе и и возвращает тонус атоничным мышцам. Поочередное сжатие и расслабление мышечных волокон под действием миостимуляции подобно помпе - при сжатии кровеносные и лимфатические капилляры закрываются, а при расслаблении, наоборот, просвет капилляров открывается, и они снова наполняются. Как результат - уменьшается отёчность и улучшается рельеф.\r\nЭффекты миостимуляции:\r\n- Повышение тонуса мышц\r\n- Лифтинг\r\n- Более четкий рельеф лица\r\n- Лимфодренаж\r\n- Коррекция овала лица\r\n- Уменьшение темных кругов под глазами\r\n- Стимуляция микроциркуляции и обменных процессов в коже\r\n- Улучшение проникновения компонентов, нанесенных на кожу\r\nПоказания к миостимуляции:\r\n- Снижение тонуса\r\n- Усталый тип старения\r\n- Профилактика старения\r\n- Темные круги под глазами\r\n- Утрата четкого рельефа и овала лица\r\n- Отеки\r\n- Тусклый, серый цвет лица\r\nВоздействие миостимуляции имеет накопительный эффект, поэтому уместно устанавливать перерывы между процедурами.. Рекомендуемый интервал между применением Purelift Face: при сниженном тонусе 2-3 дня, при всех остальных показаниях 3-4 дня.\r\nПротивопоказания:\r\n- Беременность;\r\n- Сильная степень акне;\r\n- Заболевания щитовидной железы;\r\n- Эпилепсия;\r\n- Психические расстройства;\r\n- Онкологические заболевания;\r\n- Заболевания сердца\r\n\r\nДля правильной работы PureLift™ нужен специальный гель с хорошей проводимостью электрических импульсов. Производитель строго рекомендует использовать специально разработанную для него сыворотку LIFT Collagen Serum (прилагается в комплекте), потому что другие гели могут давать схожие ощущения, но из-за неправильных параметров эффективность воздействия и результат процедуры может оказаться хуже. А содержащиеся в сыворотке пептиды регулируют фибриллогенез, контролируя рост и размеры коллагеновых волокон. Более упорядоченное и равномерное расположение этих волокон улучшает упругость кожи, ее устойчивость к растяжениям и помогает убрать морщины.'),
(363, 64, '_about_product', 'field_5f6700c16100b'),
(364, 64, 'mode_of_application', 'Нанесите на лицо проводящую сыворотку LIFT Colllagen Serum, которая прилагается к PureLift™ FACE, включите гаджет на комфортный для вас уровень мощности и прорабатывайте кожу по масажных линиям. Достаточно применять аппарат всего 10 минут в день, по 5 минут на каждую сторону лица.'),
(365, 64, '_mode_of_application', 'field_5f6700e96100e'),
(366, 64, 'composition', '-'),
(367, 64, '_composition', 'field_5f67012d61012'),
(368, 64, 'gift_certificate', '0'),
(369, 64, '_gift_certificate', 'field_5f65f7a11bb2d'),
(370, 68, '_edit_last', '1'),
(371, 68, '_edit_lock', '1602713250:1'),
(372, 68, 'total_sales', '0'),
(373, 68, '_tax_status', 'taxable'),
(374, 68, '_tax_class', ''),
(375, 68, '_manage_stock', 'yes'),
(376, 68, '_backorders', 'no'),
(377, 68, '_sold_individually', 'no'),
(378, 68, '_virtual', 'no'),
(379, 68, '_downloadable', 'no'),
(380, 68, '_download_limit', '-1'),
(381, 68, '_download_expiry', '-1'),
(382, 68, '_stock', '2'),
(383, 68, '_stock_status', 'instock'),
(384, 68, '_wc_average_rating', '0'),
(385, 68, '_wc_review_count', '0'),
(386, 68, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(387, 68, '_product_version', '4.5.2'),
(388, 69, '_wp_attached_file', '2020/09/kl_gs017.jpg'),
(389, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/09/kl_gs017.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"kl_gs017-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_gs017-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"kl_gs017-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kl_gs017-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"kl_gs017-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_gs017-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"kl_gs017-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"kl_gs017-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"kl_gs017-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"kl_gs017-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_gs017-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 68, '_thumbnail_id', '69'),
(391, 68, '_sku', 'KL_GS017'),
(392, 68, '_regular_price', '4200'),
(393, 68, '_low_stock_amount', '2'),
(394, 68, '_price', '4200'),
(395, 68, 'product_subtitle', 'INTENSIVE BLEMISH BALM CREAM SPF 30+ PA++'),
(396, 68, '_product_subtitle', 'field_5f6720e2c804e'),
(397, 68, 'about_product', '- подстраивается под тон кожи и маскирует несовершенства\r\n- увлажняет и восстанавливает\r\n- защищает от фотостарения\r\n- придает коже роскошное сияние'),
(398, 68, '_about_product', 'field_5f6700c16100b'),
(399, 68, 'mode_of_application', 'Наносите крем тонким слоем на кожу легкими массажными движениями поверх\r\nсыворотки. Дождитесь пока крем подстроится под тон кожи.'),
(400, 68, '_mode_of_application', 'field_5f6700e96100e');
INSERT INTO `wss_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(401, 68, 'composition', 'Ключевые ингредиенты:\r\nАрбутин.\r\nЭкстракт Японской березы.\r\nЭкстракт золотой Фасоли.\r\nЭкстракт Щавеля.\r\nЭкстракт листьев Эвкалипта. Масло семян Периллы.\r\nДиоксид титана.\r\nАденозин.\r\nАллантоин.\r\nЭкстракт листьев Душицы.'),
(402, 68, '_composition', 'field_5f67012d61012'),
(403, 68, 'gift_certificate', '0'),
(404, 68, '_gift_certificate', 'field_5f65f7a11bb2d'),
(405, 56, '_is_pre_order', 'yes'),
(406, 56, '_pre_order_date', '2020-11-01 10:00:00'),
(407, 70, '_edit_last', '1'),
(408, 70, '_edit_lock', '1600604198:1'),
(409, 68, '_is_pre_order', 'no'),
(410, 68, 'cross_sale', ''),
(411, 68, '_cross_sale', 'field_5f67478a850fd'),
(412, 58, '_is_pre_order', 'no'),
(413, 58, 'cross_sale', 'a:6:{i:0;s:2:\"53\";i:1;s:2:\"58\";i:2;s:2:\"22\";i:3;s:2:\"64\";i:4;s:2:\"68\";i:5;s:2:\"41\";}'),
(414, 58, '_cross_sale', 'field_5f67478a850fd'),
(415, 72, '_wp_attached_file', '2020/09/logo.svg'),
(416, 72, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:223;s:6:\"height\";i:40;s:4:\"file\";s:17:\"/2020/09/logo.svg\";s:5:\"sizes\";a:13:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:8:\"cat_tile\";a:5:{s:5:\"width\";i:323;s:6:\"height\";i:323;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(417, 72, '_wp_attachment_image_alt', 'cosmedoc'),
(418, 72, '_wp_attachment_custom_header_last_used_cosmedoc', '1600773174'),
(419, 72, '_wp_attachment_is_custom_header', 'cosmedoc'),
(420, 73, '_wp_trash_meta_status', 'publish'),
(421, 73, '_wp_trash_meta_time', '1600773174'),
(422, 74, '_edit_lock', '1600773432:1'),
(423, 75, '_wp_attached_file', '2020/09/image.png'),
(424, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:38;s:6:\"height\";i:38;s:4:\"file\";s:17:\"2020/09/image.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 75, '_wp_attachment_image_alt', 'favicon'),
(426, 74, '_wp_trash_meta_status', 'publish'),
(427, 74, '_wp_trash_meta_time', '1600773449'),
(428, 76, '_edit_last', '1'),
(429, 76, '_wp_page_template', 'default'),
(430, 76, '_edit_lock', '1601575710:1'),
(431, 78, '_edit_last', '1'),
(432, 78, '_wp_page_template', 'default'),
(433, 78, '_edit_lock', '1601225785:1'),
(434, 80, '_edit_last', '1'),
(435, 80, '_wp_page_template', 'default'),
(436, 80, '_edit_lock', '1601235977:1'),
(437, 82, '_menu_item_type', 'post_type'),
(438, 82, '_menu_item_menu_item_parent', '0'),
(439, 82, '_menu_item_object_id', '80'),
(440, 82, '_menu_item_object', 'page'),
(441, 82, '_menu_item_target', ''),
(442, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(443, 82, '_menu_item_xfn', ''),
(444, 82, '_menu_item_url', ''),
(446, 83, '_menu_item_type', 'post_type'),
(447, 83, '_menu_item_menu_item_parent', '0'),
(448, 83, '_menu_item_object_id', '78'),
(449, 83, '_menu_item_object', 'page'),
(450, 83, '_menu_item_target', ''),
(451, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 83, '_menu_item_xfn', ''),
(453, 83, '_menu_item_url', ''),
(455, 84, '_menu_item_type', 'post_type'),
(456, 84, '_menu_item_menu_item_parent', '0'),
(457, 84, '_menu_item_object_id', '76'),
(458, 84, '_menu_item_object', 'page'),
(459, 84, '_menu_item_target', ''),
(460, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(461, 84, '_menu_item_xfn', ''),
(462, 84, '_menu_item_url', ''),
(464, 85, '_edit_last', '1'),
(465, 85, '_edit_lock', '1601575192:1'),
(466, 89, '_form', '[email* your-email placeholder \"Ваш E-mail\"]<button id=\'submit\' class=\'wpcf7-form-control wpcf7-submit\'>Подписаться</button>'),
(467, 89, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Cosmedoc \"[your-subject]\"\";s:6:\"sender\";s:35:\"Cosmedoc <wordpress@cosmedoc.local>\";s:9:\"recipient\";s:19:\"irwintram@gmail.com\";s:4:\"body\";s:168:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Cosmedoc (http://cosmedoc.local)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(468, 89, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Cosmedoc \"[your-subject]\"\";s:6:\"sender\";s:35:\"Cosmedoc <wordpress@cosmedoc.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:110:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Cosmedoc (http://cosmedoc.local)\";s:18:\"additional_headers\";s:29:\"Reply-To: irwintram@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(469, 89, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:87:\"Спасибо за то, что подписались на нашу рассылку.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:67:\"Это поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(470, 89, '_additional_settings', ''),
(471, 89, '_locale', 'en_US'),
(472, 90, '_menu_item_type', 'custom'),
(473, 90, '_menu_item_menu_item_parent', '0'),
(474, 90, '_menu_item_object_id', '90'),
(475, 90, '_menu_item_object', 'custom'),
(476, 90, '_menu_item_target', ''),
(477, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(478, 90, '_menu_item_xfn', ''),
(479, 90, '_menu_item_url', '#'),
(481, 91, '_menu_item_type', 'post_type'),
(482, 91, '_menu_item_menu_item_parent', '90'),
(483, 91, '_menu_item_object_id', '80'),
(484, 91, '_menu_item_object', 'page'),
(485, 91, '_menu_item_target', ''),
(486, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(487, 91, '_menu_item_xfn', ''),
(488, 91, '_menu_item_url', ''),
(490, 92, '_menu_item_type', 'custom'),
(491, 92, '_menu_item_menu_item_parent', '90'),
(492, 92, '_menu_item_object_id', '92'),
(493, 92, '_menu_item_object', 'custom'),
(494, 92, '_menu_item_target', ''),
(495, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(496, 92, '_menu_item_xfn', ''),
(497, 92, '_menu_item_url', 'http://cosmedoc.local/'),
(499, 93, '_menu_item_type', 'custom'),
(500, 93, '_menu_item_menu_item_parent', '0'),
(501, 93, '_menu_item_object_id', '93'),
(502, 93, '_menu_item_object', 'custom'),
(503, 93, '_menu_item_target', ''),
(504, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(505, 93, '_menu_item_xfn', ''),
(506, 93, '_menu_item_url', '#'),
(507, 93, '_menu_item_orphaned', '1600775259'),
(508, 94, '_menu_item_type', 'custom'),
(509, 94, '_menu_item_menu_item_parent', '90'),
(510, 94, '_menu_item_object_id', '94'),
(511, 94, '_menu_item_object', 'custom'),
(512, 94, '_menu_item_target', ''),
(513, 94, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(514, 94, '_menu_item_xfn', ''),
(515, 94, '_menu_item_url', '#'),
(517, 95, '_menu_item_type', 'custom'),
(518, 95, '_menu_item_menu_item_parent', '90'),
(519, 95, '_menu_item_object_id', '95'),
(520, 95, '_menu_item_object', 'custom'),
(521, 95, '_menu_item_target', ''),
(522, 95, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(523, 95, '_menu_item_xfn', ''),
(524, 95, '_menu_item_url', '#'),
(526, 96, '_menu_item_type', 'custom'),
(527, 96, '_menu_item_menu_item_parent', '0'),
(528, 96, '_menu_item_object_id', '96'),
(529, 96, '_menu_item_object', 'custom'),
(530, 96, '_menu_item_target', ''),
(531, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(532, 96, '_menu_item_xfn', ''),
(533, 96, '_menu_item_url', '#'),
(535, 97, '_menu_item_type', 'custom'),
(536, 97, '_menu_item_menu_item_parent', '90'),
(537, 97, '_menu_item_object_id', '97'),
(538, 97, '_menu_item_object', 'custom'),
(539, 97, '_menu_item_target', ''),
(540, 97, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(541, 97, '_menu_item_xfn', ''),
(542, 97, '_menu_item_url', 'http://cosmedoc.local/edit-account/'),
(544, 98, '_menu_item_type', 'custom'),
(545, 98, '_menu_item_menu_item_parent', '96'),
(546, 98, '_menu_item_object_id', '98'),
(547, 98, '_menu_item_object', 'custom'),
(548, 98, '_menu_item_target', ''),
(549, 98, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(550, 98, '_menu_item_xfn', ''),
(551, 98, '_menu_item_url', 'http://cosmedoc.local/store'),
(553, 99, '_menu_item_type', 'custom'),
(554, 99, '_menu_item_menu_item_parent', '96'),
(555, 99, '_menu_item_object_id', '99'),
(556, 99, '_menu_item_object', 'custom'),
(557, 99, '_menu_item_target', ''),
(558, 99, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(559, 99, '_menu_item_xfn', ''),
(560, 99, '_menu_item_url', '#'),
(562, 100, '_menu_item_type', 'custom'),
(563, 100, '_menu_item_menu_item_parent', '96'),
(564, 100, '_menu_item_object_id', '100'),
(565, 100, '_menu_item_object', 'custom'),
(566, 100, '_menu_item_target', ''),
(567, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(568, 100, '_menu_item_xfn', ''),
(569, 100, '_menu_item_url', '#'),
(571, 101, '_menu_item_type', 'custom'),
(572, 101, '_menu_item_menu_item_parent', '96'),
(573, 101, '_menu_item_object_id', '101'),
(574, 101, '_menu_item_object', 'custom'),
(575, 101, '_menu_item_target', ''),
(576, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(577, 101, '_menu_item_xfn', ''),
(578, 101, '_menu_item_url', '#'),
(580, 102, '_menu_item_type', 'custom'),
(581, 102, '_menu_item_menu_item_parent', '96'),
(582, 102, '_menu_item_object_id', '102'),
(583, 102, '_menu_item_object', 'custom'),
(584, 102, '_menu_item_target', ''),
(585, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(586, 102, '_menu_item_xfn', ''),
(587, 102, '_menu_item_url', '#'),
(589, 103, '_menu_item_type', 'custom'),
(590, 103, '_menu_item_menu_item_parent', '0'),
(591, 103, '_menu_item_object_id', '103'),
(592, 103, '_menu_item_object', 'custom'),
(593, 103, '_menu_item_target', ''),
(594, 103, '_menu_item_classes', 'a:1:{i:0;s:19:\"hide-for-small-only\";}'),
(595, 103, '_menu_item_xfn', ''),
(596, 103, '_menu_item_url', '#'),
(598, 104, '_menu_item_type', 'custom'),
(599, 104, '_menu_item_menu_item_parent', '103'),
(600, 104, '_menu_item_object_id', '104'),
(601, 104, '_menu_item_object', 'custom'),
(602, 104, '_menu_item_target', ''),
(603, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(604, 104, '_menu_item_xfn', ''),
(605, 104, '_menu_item_url', '#'),
(607, 105, '_menu_item_type', 'custom'),
(608, 105, '_menu_item_menu_item_parent', '0'),
(609, 105, '_menu_item_object_id', '105'),
(610, 105, '_menu_item_object', 'custom'),
(611, 105, '_menu_item_target', ''),
(612, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(613, 105, '_menu_item_xfn', ''),
(614, 105, '_menu_item_url', '#'),
(615, 105, '_menu_item_orphaned', '1600775458'),
(616, 106, '_menu_item_type', 'post_type'),
(617, 106, '_menu_item_menu_item_parent', '103'),
(618, 106, '_menu_item_object_id', '78'),
(619, 106, '_menu_item_object', 'page'),
(620, 106, '_menu_item_target', ''),
(621, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(622, 106, '_menu_item_xfn', ''),
(623, 106, '_menu_item_url', ''),
(625, 107, '_menu_item_type', 'custom'),
(626, 107, '_menu_item_menu_item_parent', '103'),
(627, 107, '_menu_item_object_id', '107'),
(628, 107, '_menu_item_object', 'custom'),
(629, 107, '_menu_item_target', ''),
(630, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(631, 107, '_menu_item_xfn', ''),
(632, 107, '_menu_item_url', '#'),
(633, 56, 'cross_sale', ''),
(634, 56, '_cross_sale', 'field_5f67478a850fd'),
(635, 119, '_wp_trash_meta_status', 'publish'),
(636, 119, '_wp_trash_meta_time', '1601043386'),
(637, 120, '_wp_trash_meta_status', 'publish'),
(638, 120, '_wp_trash_meta_time', '1601043404'),
(640, 123, '_edit_last', '1'),
(641, 123, '_wp_page_template', 'default'),
(642, 123, '_edit_lock', '1601575285:1'),
(643, 125, '_edit_last', '1'),
(644, 125, '_edit_lock', '1601574925:1'),
(645, 131, '_wp_attached_file', '2020/09/2_volosy_d1.jpg'),
(646, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:750;s:4:\"file\";s:23:\"2020/09/2_volosy_d1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"2_volosy_d1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-323x162.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"2_volosy_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"2_volosy_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(647, 131, '_wp_attachment_image_alt', 'image1'),
(648, 123, 'slider_0_image', '131'),
(649, 123, '_slider_0_image', 'field_5f6e31fd4e732'),
(650, 123, 'slider_0_title', 'Маска в подарок'),
(651, 123, '_slider_0_title', 'field_5f6e31db4e731'),
(652, 123, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(653, 123, '_slider_0_description', 'field_5f6e324b4e733'),
(654, 123, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(655, 123, '_slider_0_link', 'field_5f6e32694e734'),
(656, 123, 'slider', '3'),
(657, 123, '_slider', 'field_5f6e318f4e730'),
(658, 132, 'slider_0_image', '131'),
(659, 132, '_slider_0_image', 'field_5f6e31fd4e732'),
(660, 132, 'slider_0_title', 'Маска в подарок'),
(661, 132, '_slider_0_title', 'field_5f6e31db4e731'),
(662, 132, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(663, 132, '_slider_0_description', 'field_5f6e324b4e733'),
(664, 132, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(665, 132, '_slider_0_link', 'field_5f6e32694e734'),
(666, 132, 'slider', '1'),
(667, 132, '_slider', 'field_5f6e318f4e730'),
(668, 133, '_wp_attached_file', '2020/09/2_atmosfera_d1.jpg'),
(669, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:750;s:4:\"file\";s:26:\"2020/09/2_atmosfera_d1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"2_atmosfera_d1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-323x162.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"2_atmosfera_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"2_atmosfera_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(670, 133, '_wp_attachment_image_alt', 'image2'),
(671, 134, '_wp_attached_file', '2020/09/2_telo_d1.jpg'),
(672, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:750;s:4:\"file\";s:21:\"2020/09/2_telo_d1.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"2_telo_d1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-323x162.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"2_telo_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"2_telo_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(673, 134, '_wp_attachment_image_alt', 'image3'),
(674, 123, 'slider_1_image', '133'),
(675, 123, '_slider_1_image', 'field_5f6e31fd4e732'),
(676, 123, 'slider_1_title', 'Маска в подарок'),
(677, 123, '_slider_1_title', 'field_5f6e31db4e731'),
(678, 123, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(679, 123, '_slider_1_description', 'field_5f6e324b4e733'),
(680, 123, 'slider_1_link', ''),
(681, 123, '_slider_1_link', 'field_5f6e32694e734'),
(682, 123, 'slider_2_image', '134'),
(683, 123, '_slider_2_image', 'field_5f6e31fd4e732'),
(684, 123, 'slider_2_title', 'Маска в подарок'),
(685, 123, '_slider_2_title', 'field_5f6e31db4e731'),
(686, 123, 'slider_2_description', ''),
(687, 123, '_slider_2_description', 'field_5f6e324b4e733'),
(688, 123, 'slider_2_link', ''),
(689, 123, '_slider_2_link', 'field_5f6e32694e734'),
(690, 135, 'slider_0_image', '131'),
(691, 135, '_slider_0_image', 'field_5f6e31fd4e732'),
(692, 135, 'slider_0_title', 'Маска в подарок'),
(693, 135, '_slider_0_title', 'field_5f6e31db4e731'),
(694, 135, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(695, 135, '_slider_0_description', 'field_5f6e324b4e733'),
(696, 135, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(697, 135, '_slider_0_link', 'field_5f6e32694e734'),
(698, 135, 'slider', '3'),
(699, 135, '_slider', 'field_5f6e318f4e730'),
(700, 135, 'slider_1_image', '133'),
(701, 135, '_slider_1_image', 'field_5f6e31fd4e732'),
(702, 135, 'slider_1_title', 'Маска в подарок'),
(703, 135, '_slider_1_title', 'field_5f6e31db4e731'),
(704, 135, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(705, 135, '_slider_1_description', 'field_5f6e324b4e733'),
(706, 135, 'slider_1_link', ''),
(707, 135, '_slider_1_link', 'field_5f6e32694e734'),
(708, 135, 'slider_2_image', '134'),
(709, 135, '_slider_2_image', 'field_5f6e31fd4e732'),
(710, 135, 'slider_2_title', 'Маска в подарок'),
(711, 135, '_slider_2_title', 'field_5f6e31db4e731'),
(712, 135, 'slider_2_description', ''),
(713, 135, '_slider_2_description', 'field_5f6e324b4e733'),
(714, 135, 'slider_2_link', ''),
(715, 135, '_slider_2_link', 'field_5f6e32694e734'),
(716, 139, '_wp_attached_file', '2020/09/2_all_products_m1.jpg'),
(717, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:750;s:4:\"file\";s:29:\"2020/09/2_all_products_m1.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"2_all_products_m1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"2_all_products_m1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(718, 139, '_wp_attachment_image_alt', 'all product'),
(719, 123, 'image_for_all_product', '139'),
(720, 123, '_image_for_all_product', 'field_5f6e55394e01c'),
(721, 123, 'products_cat', 'a:5:{i:0;s:2:\"24\";i:1;s:2:\"25\";i:2;s:2:\"26\";i:3;s:2:\"27\";i:4;s:2:\"28\";}'),
(722, 123, '_products_cat', 'field_5f6e4cfe0f658'),
(723, 140, 'slider_0_image', '131'),
(724, 140, '_slider_0_image', 'field_5f6e31fd4e732'),
(725, 140, 'slider_0_title', 'Маска в подарок'),
(726, 140, '_slider_0_title', 'field_5f6e31db4e731'),
(727, 140, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(728, 140, '_slider_0_description', 'field_5f6e324b4e733'),
(729, 140, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(730, 140, '_slider_0_link', 'field_5f6e32694e734'),
(731, 140, 'slider', '3'),
(732, 140, '_slider', 'field_5f6e318f4e730'),
(733, 140, 'slider_1_image', '133'),
(734, 140, '_slider_1_image', 'field_5f6e31fd4e732'),
(735, 140, 'slider_1_title', 'Маска в подарок'),
(736, 140, '_slider_1_title', 'field_5f6e31db4e731'),
(737, 140, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(738, 140, '_slider_1_description', 'field_5f6e324b4e733'),
(739, 140, 'slider_1_link', ''),
(740, 140, '_slider_1_link', 'field_5f6e32694e734'),
(741, 140, 'slider_2_image', '134'),
(742, 140, '_slider_2_image', 'field_5f6e31fd4e732'),
(743, 140, 'slider_2_title', 'Маска в подарок'),
(744, 140, '_slider_2_title', 'field_5f6e31db4e731'),
(745, 140, 'slider_2_description', ''),
(746, 140, '_slider_2_description', 'field_5f6e324b4e733'),
(747, 140, 'slider_2_link', ''),
(748, 140, '_slider_2_link', 'field_5f6e32694e734'),
(749, 140, 'image_for_all_product', '139'),
(750, 140, '_image_for_all_product', 'field_5f6e55394e01c'),
(751, 140, 'products_cat', 'a:5:{i:0;s:2:\"27\";i:1;s:2:\"28\";i:2;s:2:\"25\";i:3;s:2:\"24\";i:4;s:2:\"26\";}'),
(752, 140, '_products_cat', 'field_5f6e4cfe0f658'),
(753, 141, 'slider_0_image', '131'),
(754, 141, '_slider_0_image', 'field_5f6e31fd4e732'),
(755, 141, 'slider_0_title', 'Маска в подарок'),
(756, 141, '_slider_0_title', 'field_5f6e31db4e731'),
(757, 141, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(758, 141, '_slider_0_description', 'field_5f6e324b4e733'),
(759, 141, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(760, 141, '_slider_0_link', 'field_5f6e32694e734'),
(761, 141, 'slider', '3'),
(762, 141, '_slider', 'field_5f6e318f4e730'),
(763, 141, 'slider_1_image', '133'),
(764, 141, '_slider_1_image', 'field_5f6e31fd4e732'),
(765, 141, 'slider_1_title', 'Маска в подарок'),
(766, 141, '_slider_1_title', 'field_5f6e31db4e731'),
(767, 141, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(768, 141, '_slider_1_description', 'field_5f6e324b4e733'),
(769, 141, 'slider_1_link', ''),
(770, 141, '_slider_1_link', 'field_5f6e32694e734'),
(771, 141, 'slider_2_image', '134'),
(772, 141, '_slider_2_image', 'field_5f6e31fd4e732'),
(773, 141, 'slider_2_title', 'Маска в подарок'),
(774, 141, '_slider_2_title', 'field_5f6e31db4e731'),
(775, 141, 'slider_2_description', ''),
(776, 141, '_slider_2_description', 'field_5f6e324b4e733'),
(777, 141, 'slider_2_link', ''),
(778, 141, '_slider_2_link', 'field_5f6e32694e734'),
(779, 141, 'image_for_all_product', '139'),
(780, 141, '_image_for_all_product', 'field_5f6e55394e01c'),
(781, 141, 'products_cat', 'a:5:{i:0;s:2:\"27\";i:1;s:2:\"28\";i:2;s:2:\"25\";i:3;s:2:\"24\";i:4;s:2:\"26\";}'),
(782, 141, '_products_cat', 'field_5f6e4cfe0f658'),
(783, 142, 'slider_0_image', '131'),
(784, 142, '_slider_0_image', 'field_5f6e31fd4e732'),
(785, 142, 'slider_0_title', 'Маска в подарок'),
(786, 142, '_slider_0_title', 'field_5f6e31db4e731'),
(787, 142, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(788, 142, '_slider_0_description', 'field_5f6e324b4e733'),
(789, 142, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(790, 142, '_slider_0_link', 'field_5f6e32694e734'),
(791, 142, 'slider', '3'),
(792, 142, '_slider', 'field_5f6e318f4e730'),
(793, 142, 'slider_1_image', '133'),
(794, 142, '_slider_1_image', 'field_5f6e31fd4e732'),
(795, 142, 'slider_1_title', 'Маска в подарок'),
(796, 142, '_slider_1_title', 'field_5f6e31db4e731'),
(797, 142, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(798, 142, '_slider_1_description', 'field_5f6e324b4e733'),
(799, 142, 'slider_1_link', ''),
(800, 142, '_slider_1_link', 'field_5f6e32694e734'),
(801, 142, 'slider_2_image', '134'),
(802, 142, '_slider_2_image', 'field_5f6e31fd4e732'),
(803, 142, 'slider_2_title', 'Маска в подарок'),
(804, 142, '_slider_2_title', 'field_5f6e31db4e731'),
(805, 142, 'slider_2_description', ''),
(806, 142, '_slider_2_description', 'field_5f6e324b4e733'),
(807, 142, 'slider_2_link', ''),
(808, 142, '_slider_2_link', 'field_5f6e32694e734'),
(809, 142, 'image_for_all_product', '139'),
(810, 142, '_image_for_all_product', 'field_5f6e55394e01c'),
(811, 142, 'products_cat', 'a:5:{i:0;s:2:\"27\";i:1;s:2:\"28\";i:2;s:2:\"25\";i:3;s:2:\"24\";i:4;s:2:\"26\";}'),
(812, 142, '_products_cat', 'field_5f6e4cfe0f658'),
(813, 143, 'slider_0_image', '131'),
(814, 143, '_slider_0_image', 'field_5f6e31fd4e732'),
(815, 143, 'slider_0_title', 'Маска в подарок'),
(816, 143, '_slider_0_title', 'field_5f6e31db4e731'),
(817, 143, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(818, 143, '_slider_0_description', 'field_5f6e324b4e733'),
(819, 143, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(820, 143, '_slider_0_link', 'field_5f6e32694e734'),
(821, 143, 'slider', '3'),
(822, 143, '_slider', 'field_5f6e318f4e730'),
(823, 143, 'slider_1_image', '133'),
(824, 143, '_slider_1_image', 'field_5f6e31fd4e732'),
(825, 143, 'slider_1_title', 'Маска в подарок'),
(826, 143, '_slider_1_title', 'field_5f6e31db4e731'),
(827, 143, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(828, 143, '_slider_1_description', 'field_5f6e324b4e733'),
(829, 143, 'slider_1_link', ''),
(830, 143, '_slider_1_link', 'field_5f6e32694e734'),
(831, 143, 'slider_2_image', '134'),
(832, 143, '_slider_2_image', 'field_5f6e31fd4e732'),
(833, 143, 'slider_2_title', 'Маска в подарок'),
(834, 143, '_slider_2_title', 'field_5f6e31db4e731'),
(835, 143, 'slider_2_description', ''),
(836, 143, '_slider_2_description', 'field_5f6e324b4e733'),
(837, 143, 'slider_2_link', ''),
(838, 143, '_slider_2_link', 'field_5f6e32694e734'),
(839, 143, 'image_for_all_product', '139'),
(840, 143, '_image_for_all_product', 'field_5f6e55394e01c'),
(841, 143, 'products_cat', 'a:5:{i:0;s:2:\"24\";i:1;s:2:\"25\";i:2;s:2:\"26\";i:3;s:2:\"27\";i:4;s:2:\"28\";}'),
(842, 143, '_products_cat', 'field_5f6e4cfe0f658'),
(843, 123, 'slider_products', 'a:5:{i:0;s:2:\"68\";i:1;s:2:\"64\";i:2;s:2:\"22\";i:3;s:2:\"58\";i:4;s:2:\"53\";}'),
(844, 123, '_slider_products', 'field_5f6e6726fa1a0'),
(845, 145, 'slider_0_image', '131'),
(846, 145, '_slider_0_image', 'field_5f6e31fd4e732'),
(847, 145, 'slider_0_title', 'Маска в подарок'),
(848, 145, '_slider_0_title', 'field_5f6e31db4e731'),
(849, 145, 'slider_0_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(850, 145, '_slider_0_description', 'field_5f6e324b4e733'),
(851, 145, 'slider_0_link', 'a:3:{s:5:\"title\";s:12:\"Купить\";s:3:\"url\";s:28:\"http://cosmedoc.local/about/\";s:6:\"target\";s:0:\"\";}'),
(852, 145, '_slider_0_link', 'field_5f6e32694e734'),
(853, 145, 'slider', '3'),
(854, 145, '_slider', 'field_5f6e318f4e730'),
(855, 145, 'slider_1_image', '133'),
(856, 145, '_slider_1_image', 'field_5f6e31fd4e732'),
(857, 145, 'slider_1_title', 'Маска в подарок'),
(858, 145, '_slider_1_title', 'field_5f6e31db4e731'),
(859, 145, 'slider_1_description', 'При покупки на сумму от 15000 руб маска в подарок.'),
(860, 145, '_slider_1_description', 'field_5f6e324b4e733'),
(861, 145, 'slider_1_link', ''),
(862, 145, '_slider_1_link', 'field_5f6e32694e734'),
(863, 145, 'slider_2_image', '134'),
(864, 145, '_slider_2_image', 'field_5f6e31fd4e732'),
(865, 145, 'slider_2_title', 'Маска в подарок'),
(866, 145, '_slider_2_title', 'field_5f6e31db4e731'),
(867, 145, 'slider_2_description', ''),
(868, 145, '_slider_2_description', 'field_5f6e324b4e733'),
(869, 145, 'slider_2_link', ''),
(870, 145, '_slider_2_link', 'field_5f6e32694e734'),
(871, 145, 'image_for_all_product', '139'),
(872, 145, '_image_for_all_product', 'field_5f6e55394e01c'),
(873, 145, 'products_cat', 'a:5:{i:0;s:2:\"24\";i:1;s:2:\"25\";i:2;s:2:\"26\";i:3;s:2:\"27\";i:4;s:2:\"28\";}'),
(874, 145, '_products_cat', 'field_5f6e4cfe0f658'),
(875, 145, 'slider_products', 'a:5:{i:0;s:2:\"68\";i:1;s:2:\"64\";i:2;s:2:\"22\";i:3;s:2:\"58\";i:4;s:2:\"53\";}'),
(876, 145, '_slider_products', 'field_5f6e6726fa1a0'),
(877, 146, '_menu_item_type', 'custom'),
(878, 146, '_menu_item_menu_item_parent', '0'),
(879, 146, '_menu_item_object_id', '146'),
(880, 146, '_menu_item_object', 'custom'),
(881, 146, '_menu_item_target', ''),
(882, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(883, 146, '_menu_item_xfn', ''),
(884, 146, '_menu_item_url', '#'),
(886, 147, '_menu_item_type', 'custom'),
(887, 147, '_menu_item_menu_item_parent', '0'),
(888, 147, '_menu_item_object_id', '147'),
(889, 147, '_menu_item_object', 'custom'),
(890, 147, '_menu_item_target', ''),
(891, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(892, 147, '_menu_item_xfn', ''),
(893, 147, '_menu_item_url', '#'),
(895, 148, '_menu_item_type', 'post_type'),
(896, 148, '_menu_item_menu_item_parent', '0'),
(897, 148, '_menu_item_object_id', '80'),
(898, 148, '_menu_item_object', 'page'),
(899, 148, '_menu_item_target', ''),
(900, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(901, 148, '_menu_item_xfn', ''),
(902, 148, '_menu_item_url', ''),
(904, 149, '_menu_item_type', 'post_type'),
(905, 149, '_menu_item_menu_item_parent', '0'),
(906, 149, '_menu_item_object_id', '78'),
(907, 149, '_menu_item_object', 'page'),
(908, 149, '_menu_item_target', ''),
(909, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(910, 149, '_menu_item_xfn', ''),
(911, 149, '_menu_item_url', ''),
(913, 150, '_menu_item_type', 'custom'),
(914, 150, '_menu_item_menu_item_parent', '0'),
(915, 150, '_menu_item_object_id', '150'),
(916, 150, '_menu_item_object', 'custom'),
(917, 150, '_menu_item_target', ''),
(918, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(919, 150, '_menu_item_xfn', ''),
(920, 150, '_menu_item_url', '#'),
(922, 151, '_menu_item_type', 'taxonomy'),
(923, 151, '_menu_item_menu_item_parent', '146'),
(924, 151, '_menu_item_object_id', '24'),
(925, 151, '_menu_item_object', 'product_cat'),
(926, 151, '_menu_item_target', ''),
(927, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(928, 151, '_menu_item_xfn', ''),
(929, 151, '_menu_item_url', ''),
(931, 152, '_menu_item_type', 'taxonomy'),
(932, 152, '_menu_item_menu_item_parent', '146'),
(933, 152, '_menu_item_object_id', '25'),
(934, 152, '_menu_item_object', 'product_cat'),
(935, 152, '_menu_item_target', ''),
(936, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(937, 152, '_menu_item_xfn', ''),
(938, 152, '_menu_item_url', ''),
(940, 153, '_menu_item_type', 'taxonomy'),
(941, 153, '_menu_item_menu_item_parent', '146'),
(942, 153, '_menu_item_object_id', '26'),
(943, 153, '_menu_item_object', 'product_cat'),
(944, 153, '_menu_item_target', ''),
(945, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(946, 153, '_menu_item_xfn', ''),
(947, 153, '_menu_item_url', ''),
(949, 154, '_menu_item_type', 'taxonomy'),
(950, 154, '_menu_item_menu_item_parent', '146'),
(951, 154, '_menu_item_object_id', '27'),
(952, 154, '_menu_item_object', 'product_cat'),
(953, 154, '_menu_item_target', ''),
(954, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(955, 154, '_menu_item_xfn', ''),
(956, 154, '_menu_item_url', ''),
(958, 155, '_menu_item_type', 'taxonomy'),
(959, 155, '_menu_item_menu_item_parent', '146'),
(960, 155, '_menu_item_object_id', '28'),
(961, 155, '_menu_item_object', 'product_cat'),
(962, 155, '_menu_item_target', ''),
(963, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(964, 155, '_menu_item_xfn', ''),
(965, 155, '_menu_item_url', ''),
(967, 156, '_menu_item_type', 'custom'),
(968, 156, '_menu_item_menu_item_parent', '146'),
(969, 156, '_menu_item_object_id', '156'),
(970, 156, '_menu_item_object', 'custom'),
(971, 156, '_menu_item_target', ''),
(972, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(973, 156, '_menu_item_xfn', ''),
(974, 156, '_menu_item_url', '#'),
(976, 157, '_menu_item_type', 'custom'),
(977, 157, '_menu_item_menu_item_parent', '150'),
(978, 157, '_menu_item_object_id', '157'),
(979, 157, '_menu_item_object', 'custom'),
(980, 157, '_menu_item_target', ''),
(981, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(982, 157, '_menu_item_xfn', ''),
(983, 157, '_menu_item_url', '#'),
(985, 158, '_menu_item_type', 'custom'),
(986, 158, '_menu_item_menu_item_parent', '150'),
(987, 158, '_menu_item_object_id', '158'),
(988, 158, '_menu_item_object', 'custom'),
(989, 158, '_menu_item_target', ''),
(990, 158, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(991, 158, '_menu_item_xfn', ''),
(992, 158, '_menu_item_url', '#'),
(994, 159, '_menu_item_type', 'custom'),
(995, 159, '_menu_item_menu_item_parent', '150'),
(996, 159, '_menu_item_object_id', '159'),
(997, 159, '_menu_item_object', 'custom'),
(998, 159, '_menu_item_target', ''),
(999, 159, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1000, 159, '_menu_item_xfn', ''),
(1001, 159, '_menu_item_url', '#'),
(1003, 160, '_menu_item_type', 'custom'),
(1004, 160, '_menu_item_menu_item_parent', '150'),
(1005, 160, '_menu_item_object_id', '160'),
(1006, 160, '_menu_item_object', 'custom'),
(1007, 160, '_menu_item_target', ''),
(1008, 160, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1009, 160, '_menu_item_xfn', ''),
(1010, 160, '_menu_item_url', '#'),
(1012, 161, '_menu_item_type', 'custom'),
(1013, 161, '_menu_item_menu_item_parent', '150'),
(1014, 161, '_menu_item_object_id', '161'),
(1015, 161, '_menu_item_object', 'custom'),
(1016, 161, '_menu_item_target', ''),
(1017, 161, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1018, 161, '_menu_item_xfn', ''),
(1019, 161, '_menu_item_url', '#'),
(1021, 162, '_edit_last', '1'),
(1022, 162, '_edit_lock', '1601222948:1'),
(1025, 167, '_wp_attached_file', '2020/09/contact-page-banner1.jpg'),
(1026, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:467;s:4:\"file\";s:32:\"2020/09/contact-page-banner1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-323x215.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"contact-page-banner1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"contact-page-banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"dgwt-wcas-product-suggestion\";a:4:{s:4:\"file\";s:30:\"contact-page-banner1-64x43.jpg\";s:5:\"width\";i:64;s:6:\"height\";i:43;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1027, 167, '_wp_attachment_image_alt', 'iamge4'),
(1028, 174, '_menu_item_type', 'custom'),
(1029, 174, '_menu_item_menu_item_parent', '90'),
(1030, 174, '_menu_item_object_id', '174'),
(1031, 174, '_menu_item_object', 'custom'),
(1032, 174, '_menu_item_target', ''),
(1033, 174, '_menu_item_classes', 'a:1:{i:0;s:19:\"show-for-small-only\";}'),
(1034, 174, '_menu_item_xfn', ''),
(1035, 174, '_menu_item_url', '#'),
(1037, 12, '_wp_attachment_image_alt', 'image'),
(1038, 182, '_edit_last', '1'),
(1039, 182, '_edit_lock', '1601577373:1'),
(1040, 185, '_wp_attached_file', '2020/10/2_all_products_d1.jpg'),
(1041, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:750;s:4:\"file\";s:29:\"2020/10/2_all_products_d1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"2_all_products_d1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-323x162.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"2_all_products_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"2_all_products_d1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"dgwt-wcas-product-suggestion\";a:4:{s:4:\"file\";s:27:\"2_all_products_d1-64x32.jpg\";s:5:\"width\";i:64;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1042, 185, '_wp_attachment_image_alt', 'hero_product'),
(1043, 76, 'hero_image', '185'),
(1044, 76, '_hero_image', 'field_5f7619ccfd304'),
(1045, 76, 'hero_title', 'ВСЕ ТОВАРЫ'),
(1046, 76, '_hero_title', 'field_5f761a2efd305'),
(1047, 186, 'hero_image', '185'),
(1048, 186, '_hero_image', 'field_5f7619ccfd304'),
(1049, 186, 'hero_title', 'ВСЕ ТОВАРЫ'),
(1050, 186, '_hero_title', 'field_5f761a2efd305'),
(1051, 187, '_edit_last', '1'),
(1052, 187, '_wp_page_template', 'default'),
(1053, 187, '_edit_lock', '1601980443:1'),
(1054, 191, '_edit_last', '1'),
(1055, 191, '_edit_lock', '1601883248:1'),
(1056, 191, '_wp_page_template', 'default'),
(1057, 3, '_edit_lock', '1601980449:1'),
(1058, 3, '_edit_last', '1'),
(1059, 198, '_edit_lock', '1601999162:1'),
(1060, 198, '_edit_last', '1'),
(1061, 198, '_wp_page_template', 'default'),
(1062, 200, '_edit_last', '1'),
(1063, 200, '_wp_page_template', 'default'),
(1064, 200, '_edit_lock', '1602781510:1'),
(1065, 204, '_edit_lock', '1602322604:1'),
(1066, 205, '_edit_lock', '1602338876:1'),
(1067, 205, '_edit_last', '1'),
(1068, 58, 'specific_product_label', 'a:1:{i:0;s:3:\"new\";}'),
(1069, 58, '_specific_product_label', 'field_5f819ea0c55d2'),
(1070, 64, '_is_pre_order', 'no'),
(1071, 64, 'specific_product_label', 'a:1:{i:0;s:9:\"lead_sale\";}'),
(1072, 64, '_specific_product_label', 'field_5f819ea0c55d2'),
(1073, 64, 'cross_sale', ''),
(1074, 64, '_cross_sale', 'field_5f67478a850fd'),
(1075, 53, '_is_pre_order', 'no'),
(1076, 53, 'specific_product_label', 'a:2:{i:0;s:3:\"new\";i:1;s:9:\"lead_sale\";}'),
(1077, 53, '_specific_product_label', 'field_5f819ea0c55d2'),
(1078, 53, 'cross_sale', ''),
(1079, 53, '_cross_sale', 'field_5f67478a850fd'),
(1080, 209, '_edit_lock', '1602614747:1'),
(1081, 209, '_edit_last', '1'),
(1082, 210, '_wp_attached_file', '2020/10/kl_ba058_0.jpg');
INSERT INTO `wss_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1083, 210, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/10/kl_ba058_0.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"kl_ba058_0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"dgwt-wcas-product-suggestion\";a:4:{s:4:\"file\";s:20:\"kl_ba058_0-64x64.jpg\";s:5:\"width\";i:64;s:6:\"height\";i:64;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1084, 211, '_wp_attached_file', '2020/10/kl_ba058.jpg'),
(1085, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/10/kl_ba058.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kl_ba058-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"kl_ba058-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_ba058-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"kl_ba058-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:20:\"kl_ba058-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"kl_ba058-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"kl_ba058-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_ba058-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"kl_ba058-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"kl_ba058-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"kl_ba058-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"dgwt-wcas-product-suggestion\";a:4:{s:4:\"file\";s:18:\"kl_ba058-64x64.jpg\";s:5:\"width\";i:64;s:6:\"height\";i:64;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1086, 212, '_wp_attached_file', '2020/10/kl_ba058_0-1.jpg'),
(1087, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:24:\"2020/10/kl_ba058_0-1.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"kl_ba058_0-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-323x323.jpg\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"kl_ba058_0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"kl_ba058_0-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"dgwt-wcas-product-suggestion\";a:4:{s:4:\"file\";s:22:\"kl_ba058_0-1-64x64.jpg\";s:5:\"width\";i:64;s:6:\"height\";i:64;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1088, 209, 'total_sales', '0'),
(1089, 209, '_tax_status', 'taxable'),
(1090, 209, '_tax_class', ''),
(1091, 209, '_manage_stock', 'no'),
(1092, 209, '_backorders', 'no'),
(1093, 209, '_sold_individually', 'no'),
(1094, 209, '_virtual', 'no'),
(1095, 209, '_downloadable', 'no'),
(1096, 209, '_download_limit', '-1'),
(1097, 209, '_download_expiry', '-1'),
(1098, 209, '_stock', NULL),
(1099, 209, '_stock_status', 'instock'),
(1100, 209, '_wc_average_rating', '0'),
(1101, 209, '_wc_review_count', '0'),
(1102, 209, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:21:\"pa_kolichestvo-tovara\";a:6:{s:4:\"name\";s:21:\"pa_kolichestvo-tovara\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(1103, 209, '_product_version', '4.5.2'),
(1104, 209, '_thumbnail_id', '210'),
(1105, 209, '_is_pre_order', 'no'),
(1106, 209, '_sku', 'KL_BA058'),
(1107, 209, '_regular_price', '6150'),
(1108, 209, '_price', '6150'),
(1109, 209, '_product_image_gallery', '211,212'),
(1110, 209, 'product_subtitle', ''),
(1111, 209, '_product_subtitle', 'field_5f6720e2c804e'),
(1112, 209, 'specific_product_label', ''),
(1113, 209, '_specific_product_label', 'field_5f819ea0c55d2'),
(1114, 209, 'about_product', ''),
(1115, 209, '_about_product', 'field_5f6700c16100b'),
(1116, 209, 'mode_of_application', ''),
(1117, 209, '_mode_of_application', 'field_5f6700e96100e'),
(1118, 209, 'composition', ''),
(1119, 209, '_composition', 'field_5f67012d61012'),
(1120, 209, 'cross_sale', ''),
(1121, 209, '_cross_sale', 'field_5f67478a850fd'),
(1122, 30, '_is_pre_order', 'no'),
(1123, 30, 'specific_product_label', ''),
(1124, 30, '_specific_product_label', 'field_5f819ea0c55d2'),
(1125, 30, 'cross_sale', ''),
(1126, 30, '_cross_sale', 'field_5f67478a850fd'),
(1127, 213, '_menu_item_type', 'post_type'),
(1128, 213, '_menu_item_menu_item_parent', '0'),
(1129, 213, '_menu_item_object_id', '76'),
(1130, 213, '_menu_item_object', 'page'),
(1131, 213, '_menu_item_target', ''),
(1132, 213, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1133, 213, '_menu_item_xfn', ''),
(1134, 213, '_menu_item_url', ''),
(1136, 214, '_edit_lock', '1602789548:1'),
(1137, 214, '_edit_last', '1'),
(1138, 214, '_wp_page_template', 'page-templates/faq-template.php'),
(1139, 216, '_menu_item_type', 'post_type'),
(1140, 216, '_menu_item_menu_item_parent', '0'),
(1141, 216, '_menu_item_object_id', '214'),
(1142, 216, '_menu_item_object', 'page'),
(1143, 216, '_menu_item_target', ''),
(1144, 216, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1145, 216, '_menu_item_xfn', ''),
(1146, 216, '_menu_item_url', ''),
(1148, 217, '_menu_item_type', 'post_type'),
(1149, 217, '_menu_item_menu_item_parent', '0'),
(1150, 217, '_menu_item_object_id', '80'),
(1151, 217, '_menu_item_object', 'page'),
(1152, 217, '_menu_item_target', ''),
(1153, 217, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1154, 217, '_menu_item_xfn', ''),
(1155, 217, '_menu_item_url', ''),
(1157, 218, '_menu_item_type', 'post_type'),
(1158, 218, '_menu_item_menu_item_parent', '0'),
(1159, 218, '_menu_item_object_id', '78'),
(1160, 218, '_menu_item_object', 'page'),
(1161, 218, '_menu_item_target', ''),
(1162, 218, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1163, 218, '_menu_item_xfn', ''),
(1164, 218, '_menu_item_url', ''),
(1166, 219, '_menu_item_type', 'taxonomy'),
(1167, 219, '_menu_item_menu_item_parent', '213'),
(1168, 219, '_menu_item_object_id', '24'),
(1169, 219, '_menu_item_object', 'product_cat'),
(1170, 219, '_menu_item_target', ''),
(1171, 219, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1172, 219, '_menu_item_xfn', ''),
(1173, 219, '_menu_item_url', ''),
(1175, 220, '_menu_item_type', 'taxonomy'),
(1176, 220, '_menu_item_menu_item_parent', '213'),
(1177, 220, '_menu_item_object_id', '25'),
(1178, 220, '_menu_item_object', 'product_cat'),
(1179, 220, '_menu_item_target', ''),
(1180, 220, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1181, 220, '_menu_item_xfn', ''),
(1182, 220, '_menu_item_url', ''),
(1184, 221, '_menu_item_type', 'taxonomy'),
(1185, 221, '_menu_item_menu_item_parent', '220'),
(1186, 221, '_menu_item_object_id', '26'),
(1187, 221, '_menu_item_object', 'product_cat'),
(1188, 221, '_menu_item_target', ''),
(1189, 221, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1190, 221, '_menu_item_xfn', ''),
(1191, 221, '_menu_item_url', ''),
(1193, 222, '_menu_item_type', 'post_type'),
(1194, 222, '_menu_item_menu_item_parent', '213'),
(1195, 222, '_menu_item_object_id', '76'),
(1196, 222, '_menu_item_object', 'page'),
(1197, 222, '_menu_item_target', ''),
(1198, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1199, 222, '_menu_item_xfn', ''),
(1200, 222, '_menu_item_url', ''),
(1201, 225, 'total_sales', '0'),
(1202, 225, '_tax_status', 'none'),
(1203, 225, '_tax_class', ''),
(1204, 225, '_manage_stock', 'no'),
(1205, 225, '_backorders', 'no'),
(1206, 225, '_sold_individually', 'no'),
(1207, 225, '_virtual', 'no'),
(1208, 225, '_downloadable', 'no'),
(1209, 225, '_download_limit', '-1'),
(1210, 225, '_download_expiry', '-1'),
(1211, 225, '_stock', NULL),
(1212, 225, '_stock_status', 'instock'),
(1213, 225, '_wc_average_rating', '0'),
(1214, 225, '_wc_review_count', '0'),
(1215, 225, '_product_version', '4.6.0'),
(1216, 226, '_variation_description', ''),
(1217, 226, '_regular_price', '10'),
(1218, 226, 'total_sales', '0'),
(1219, 226, '_tax_status', 'taxable'),
(1220, 226, '_tax_class', 'parent'),
(1221, 226, '_manage_stock', 'no'),
(1222, 226, '_backorders', 'no'),
(1223, 226, '_sold_individually', 'no'),
(1224, 226, '_virtual', 'yes'),
(1225, 226, '_downloadable', 'no'),
(1226, 226, '_download_limit', '-1'),
(1227, 226, '_download_expiry', '-1'),
(1228, 226, '_stock', NULL),
(1229, 226, '_stock_status', 'instock'),
(1230, 226, '_wc_average_rating', '0'),
(1231, 226, '_wc_review_count', '0'),
(1232, 226, 'attribute_gift-card-amount', '10руб.'),
(1233, 226, '_price', '10'),
(1234, 226, '_product_version', '4.6.0'),
(1235, 226, '_thumbnail_id', '0'),
(1236, 225, '_product_attributes', 'a:1:{s:16:\"gift-card-amount\";a:6:{s:4:\"name\";s:16:\"Gift Card Amount\";s:5:\"value\";s:46:\"10руб. | 25руб. | 50руб. | 100руб.\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1237, 227, '_variation_description', ''),
(1238, 227, '_regular_price', '25'),
(1239, 227, 'total_sales', '0'),
(1240, 227, '_tax_status', 'taxable'),
(1241, 227, '_tax_class', 'parent'),
(1242, 227, '_manage_stock', 'no'),
(1243, 227, '_backorders', 'no'),
(1244, 227, '_sold_individually', 'no'),
(1245, 227, '_virtual', 'yes'),
(1246, 227, '_downloadable', 'no'),
(1247, 227, '_download_limit', '-1'),
(1248, 227, '_download_expiry', '-1'),
(1249, 227, '_stock', NULL),
(1250, 227, '_stock_status', 'instock'),
(1251, 227, '_wc_average_rating', '0'),
(1252, 227, '_wc_review_count', '0'),
(1253, 227, 'attribute_gift-card-amount', '25руб.'),
(1254, 227, '_price', '25'),
(1255, 227, '_product_version', '4.6.0'),
(1256, 227, '_thumbnail_id', '0'),
(1257, 228, '_variation_description', ''),
(1258, 228, '_regular_price', '50'),
(1259, 228, 'total_sales', '0'),
(1260, 228, '_tax_status', 'taxable'),
(1261, 228, '_tax_class', 'parent'),
(1262, 228, '_manage_stock', 'no'),
(1263, 228, '_backorders', 'no'),
(1264, 228, '_sold_individually', 'no'),
(1265, 228, '_virtual', 'yes'),
(1266, 228, '_downloadable', 'no'),
(1267, 228, '_download_limit', '-1'),
(1268, 228, '_download_expiry', '-1'),
(1269, 228, '_stock', NULL),
(1270, 228, '_stock_status', 'instock'),
(1271, 228, '_wc_average_rating', '0'),
(1272, 228, '_wc_review_count', '0'),
(1273, 228, 'attribute_gift-card-amount', '50руб.'),
(1274, 228, '_price', '50'),
(1275, 228, '_product_version', '4.6.0'),
(1276, 228, '_thumbnail_id', '0'),
(1277, 229, '_variation_description', ''),
(1278, 229, '_regular_price', '100'),
(1279, 229, 'total_sales', '0'),
(1280, 229, '_tax_status', 'taxable'),
(1281, 229, '_tax_class', 'parent'),
(1282, 229, '_manage_stock', 'no'),
(1283, 229, '_backorders', 'no'),
(1284, 229, '_sold_individually', 'no'),
(1285, 229, '_virtual', 'yes'),
(1286, 229, '_downloadable', 'no'),
(1287, 229, '_download_limit', '-1'),
(1288, 229, '_download_expiry', '-1'),
(1289, 229, '_stock', NULL),
(1290, 229, '_stock_status', 'instock'),
(1291, 229, '_wc_average_rating', '0'),
(1292, 229, '_wc_review_count', '0'),
(1293, 229, 'attribute_gift-card-amount', '100руб.'),
(1294, 229, '_price', '100'),
(1295, 229, '_product_version', '4.6.0'),
(1296, 229, '_thumbnail_id', '0'),
(1297, 230, '_wp_attached_file', '2020/10/pw-gift-card.png'),
(1298, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2020/10/pw-gift-card.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"pw-gift-card-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"pw-gift-card-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:8:\"cat_tile\";a:4:{s:4:\"file\";s:24:\"pw-gift-card-323x323.png\";s:5:\"width\";i:323;s:6:\"height\";i:323;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"pw-gift-card-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"pw-gift-card-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"pw-gift-card-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"pw-gift-card-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"dgwt-wcas-product-suggestion\";a:4:{s:4:\"file\";s:22:\"pw-gift-card-64x64.png\";s:5:\"width\";i:64;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1299, 225, '_thumbnail_id', '230'),
(1300, 225, '_price', '10'),
(1301, 225, '_price', '25'),
(1302, 225, '_price', '50'),
(1303, 225, '_price', '100'),
(1304, 231, '_edit_lock', '1602785671:1'),
(1305, 225, '_edit_lock', '1602785557:1'),
(1306, 232, 'total_sales', '0'),
(1307, 232, '_tax_status', 'none'),
(1308, 232, '_tax_class', ''),
(1309, 232, '_manage_stock', 'no'),
(1310, 232, '_backorders', 'no'),
(1311, 232, '_sold_individually', 'no'),
(1312, 232, '_virtual', 'no'),
(1313, 232, '_downloadable', 'no'),
(1314, 232, '_download_limit', '-1'),
(1315, 232, '_download_expiry', '-1'),
(1316, 232, '_thumbnail_id', '230'),
(1317, 232, '_stock', NULL),
(1318, 232, '_stock_status', 'instock'),
(1319, 232, '_wc_average_rating', '0'),
(1320, 232, '_wc_review_count', '0'),
(1321, 232, '_product_attributes', 'a:1:{s:16:\"gift-card-amount\";a:6:{s:4:\"name\";s:16:\"Gift Card Amount\";s:5:\"value\";s:61:\"10руб. | 25руб. | 50руб. | 100руб. | 1 000руб.\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(1322, 232, '_product_version', '4.6.0'),
(1323, 233, '_variation_description', ''),
(1324, 233, '_regular_price', '10'),
(1325, 233, 'total_sales', '0'),
(1326, 233, '_tax_status', 'none'),
(1327, 233, '_tax_class', 'parent'),
(1328, 233, '_manage_stock', 'no'),
(1329, 233, '_backorders', 'no'),
(1330, 233, '_sold_individually', 'no'),
(1331, 233, '_virtual', 'yes'),
(1332, 233, '_downloadable', 'no'),
(1333, 233, '_download_limit', '-1'),
(1334, 233, '_download_expiry', '-1'),
(1335, 233, '_thumbnail_id', '0'),
(1336, 233, '_stock', NULL),
(1337, 233, '_stock_status', 'instock'),
(1338, 233, '_wc_average_rating', '0'),
(1339, 233, '_wc_review_count', '0'),
(1340, 233, 'attribute_gift-card-amount', '10руб.'),
(1341, 233, '_price', '10'),
(1342, 233, '_product_version', '4.6.0'),
(1343, 234, '_variation_description', ''),
(1344, 234, '_regular_price', '25'),
(1345, 234, 'total_sales', '0'),
(1346, 234, '_tax_status', 'none'),
(1347, 234, '_tax_class', 'parent'),
(1348, 234, '_manage_stock', 'no'),
(1349, 234, '_backorders', 'no'),
(1350, 234, '_sold_individually', 'no'),
(1351, 234, '_virtual', 'yes'),
(1352, 234, '_downloadable', 'no'),
(1353, 234, '_download_limit', '-1'),
(1354, 234, '_download_expiry', '-1'),
(1355, 234, '_thumbnail_id', '0'),
(1356, 234, '_stock', NULL),
(1357, 234, '_stock_status', 'instock'),
(1358, 234, '_wc_average_rating', '0'),
(1359, 234, '_wc_review_count', '0'),
(1360, 234, 'attribute_gift-card-amount', '25руб.'),
(1361, 234, '_price', '25'),
(1362, 234, '_product_version', '4.6.0'),
(1363, 235, '_variation_description', ''),
(1364, 235, '_regular_price', '50'),
(1365, 235, 'total_sales', '0'),
(1366, 235, '_tax_status', 'none'),
(1367, 235, '_tax_class', 'parent'),
(1368, 235, '_manage_stock', 'no'),
(1369, 235, '_backorders', 'no'),
(1370, 235, '_sold_individually', 'no'),
(1371, 235, '_virtual', 'yes'),
(1372, 235, '_downloadable', 'no'),
(1373, 235, '_download_limit', '-1'),
(1374, 235, '_download_expiry', '-1'),
(1375, 235, '_thumbnail_id', '0'),
(1376, 235, '_stock', NULL),
(1377, 235, '_stock_status', 'instock'),
(1378, 235, '_wc_average_rating', '0'),
(1379, 235, '_wc_review_count', '0'),
(1380, 235, 'attribute_gift-card-amount', '50руб.'),
(1381, 235, '_price', '50'),
(1382, 235, '_product_version', '4.6.0'),
(1383, 236, '_variation_description', ''),
(1384, 236, '_regular_price', '100'),
(1385, 236, 'total_sales', '0'),
(1386, 236, '_tax_status', 'none'),
(1387, 236, '_tax_class', 'parent'),
(1388, 236, '_manage_stock', 'no'),
(1389, 236, '_backorders', 'no'),
(1390, 236, '_sold_individually', 'no'),
(1391, 236, '_virtual', 'yes'),
(1392, 236, '_downloadable', 'no'),
(1393, 236, '_download_limit', '-1'),
(1394, 236, '_download_expiry', '-1'),
(1395, 236, '_thumbnail_id', '0'),
(1396, 236, '_stock', NULL),
(1397, 236, '_stock_status', 'instock'),
(1398, 236, '_wc_average_rating', '0'),
(1399, 236, '_wc_review_count', '0'),
(1400, 236, 'attribute_gift-card-amount', '100руб.'),
(1401, 236, '_price', '100'),
(1402, 236, '_product_version', '4.6.0'),
(1407, 232, '_edit_lock', '1602786038:1'),
(1408, 237, '_variation_description', ''),
(1409, 237, '_regular_price', '1000'),
(1410, 237, 'total_sales', '0'),
(1411, 237, '_tax_status', 'taxable'),
(1412, 237, '_tax_class', 'parent'),
(1413, 237, '_manage_stock', 'no'),
(1414, 237, '_backorders', 'no'),
(1415, 237, '_sold_individually', 'no'),
(1416, 237, '_virtual', 'yes'),
(1417, 237, '_downloadable', 'no'),
(1418, 237, '_download_limit', '-1'),
(1419, 237, '_download_expiry', '-1'),
(1420, 237, '_stock', NULL),
(1421, 237, '_stock_status', 'instock'),
(1422, 237, '_wc_average_rating', '0'),
(1423, 237, '_wc_review_count', '0'),
(1424, 237, 'attribute_gift-card-amount', '1 000руб.'),
(1425, 237, '_price', '1000'),
(1426, 237, '_product_version', '4.6.0'),
(1427, 237, '_thumbnail_id', '0'),
(1428, 232, '_price', '10'),
(1429, 232, '_price', '25'),
(1430, 232, '_price', '50'),
(1431, 232, '_price', '100'),
(1432, 232, '_price', '1000'),
(1433, 237, '_wp_trash_meta_status', 'publish'),
(1434, 237, '_wp_trash_meta_time', '1602786042'),
(1435, 237, '_wp_desired_post_slug', 'gift-card-copy-1-000rub'),
(1436, 233, '_wp_trash_meta_status', 'publish'),
(1437, 233, '_wp_trash_meta_time', '1602786042'),
(1438, 233, '_wp_desired_post_slug', 'gift-card-10rub-11'),
(1439, 234, '_wp_trash_meta_status', 'publish'),
(1440, 234, '_wp_trash_meta_time', '1602786042'),
(1441, 234, '_wp_desired_post_slug', 'gift-card-25rub-26'),
(1442, 235, '_wp_trash_meta_status', 'publish'),
(1443, 235, '_wp_trash_meta_time', '1602786042'),
(1444, 235, '_wp_desired_post_slug', 'gift-card-50rub-51'),
(1445, 236, '_wp_trash_meta_status', 'publish'),
(1446, 236, '_wp_trash_meta_time', '1602786042'),
(1447, 236, '_wp_desired_post_slug', 'gift-card-100rub-101'),
(1448, 232, '_wp_trash_meta_status', 'draft'),
(1449, 232, '_wp_trash_meta_time', '1602786042'),
(1450, 232, '_wp_desired_post_slug', ''),
(1451, 238, '_edit_lock', '1602787076:1'),
(1452, 238, '_edit_last', '1'),
(1453, 214, 'faq_0_title', 'Как сделать заказ?'),
(1454, 214, '_faq_0_title', 'field_5f889712c06a1'),
(1455, 214, 'faq_0_description', '<ol>\r\n 	<li>Перейдите в раздел «Интернет-магазин»;</li>\r\n 	<li>Найдите необходимый товар(ы) в каталоге;</li>\r\n 	<li>Чтобы ознакомиться с подробной информацией о товаре, кликните на изображение товара. Нажмите на кнопку \"В корзину\", если хотите сразу же добавить товар в корзину;</li>\r\n 	<li>Выберите необходимый объем или цвет товара, если такой выбор предоставляется;</li>\r\n 	<li>Нажмите кнопку «Добавить в корзину», находясь в карточке товара;</li>\r\n 	<li>Если Вы хотите продолжить покупки, Вам необходимо вернуться назад в каталог и повторить перечисленные выше действия;</li>\r\n 	<li>Если Вы добавили все необходимые товары в корзину, Вы можете перейти к оформлению заказа нажав соответствующую кнопку внизу;</li>\r\n 	<li>Введите необходимые данные и нажмите «Продолжить»;</li>\r\n 	<li>Выберите один из предложенных методов доставки, нажмите «Продолжить»;</li>\r\n 	<li>Проверьте информацию о заказе. Если необходимо, внесите изменения, вернувшись к необходимым этапам создания заказа;</li>\r\n 	<li>Нажмите кнопку «Перейти к оплате», так Вы подтвердите корректность предоставленной контактной информации, состав заказа и дадите согласие с условиями Договора оферты и Обработки персональных данных;</li>\r\n 	<li>Ваш заказ оформлен. Мы будем информировать Вас о смене статусов Заказа путем оповещения на электронную почту;</li>\r\n 	<li>Благодарим за покупку! При возникновении проблем Вы всегда можете обратиться к нам по электронному адресу <a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.</li>\r\n</ol>'),
(1456, 214, '_faq_0_description', 'field_5f88972cc06a2'),
(1457, 214, 'faq_1_title', 'Сколько стоит доставка? Сколько будет идти заказ?'),
(1458, 214, '_faq_1_title', 'field_5f889712c06a1'),
(1459, 214, 'faq_1_description', 'Стоимость и сроки доставки зависят от выбранного Вами метода доставки и города, в который необходимо её осуществить:\r\n<ol>\r\n 	<li>тест</li>\r\n 	<li>тест</li>\r\n 	<li>тест</li>\r\n</ol>'),
(1460, 214, '_faq_1_description', 'field_5f88972cc06a2'),
(1461, 214, 'faq_2_title', 'Есть ли у вас самовывоз?'),
(1462, 214, '_faq_2_title', 'field_5f889712c06a1'),
(1463, 214, 'faq_2_description', '<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>Мы доставляем заказы в течение 48 часов после оплаты в наши фирменные салоны, расположенные по адресу:</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>- г. Москва, Петровский бульвар д.23</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>- г. Москва, ДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»;</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>Стоимость самовывоза - 0 рублей.</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>В день доставки Вам придет sms-оповещение о возможности забрать заказ.</ol>\r\n&nbsp;'),
(1464, 214, '_faq_2_description', 'field_5f88972cc06a2'),
(1465, 214, 'faq_3_title', 'Как оплатить заказ?'),
(1466, 214, '_faq_3_title', 'field_5f889712c06a1'),
(1467, 214, 'faq_3_description', 'Оформление заказа предполагает предоплату. После подтверждения покупки Вы будете направлены на форму оплаты банковской картой.\r\nВы можете оплатить заказ в течение часа. В случае отсутствия оплаты бронь на товары и заказ отменяются.'),
(1468, 214, '_faq_3_description', 'field_5f88972cc06a2'),
(1469, 214, 'faq', '4'),
(1470, 214, '_faq', 'field_5f889480c06a0'),
(1471, 214, 'contacts', '<p style=\"text-align: center;\">Если Вы не нашли ответ на свой вопрос,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>\r\n<a href=\"tel:+74993508050\">+7 499 350 80 50</a>'),
(1472, 214, '_contacts', 'field_5f88976ec06a3'),
(1473, 243, 'faq_0_title', 'Как сделать заказ?'),
(1474, 243, '_faq_0_title', 'field_5f889712c06a1'),
(1475, 243, 'faq_0_description', '<ol>\r\n 	<li>Перейдите в раздел «Интернет-магазин»;</li>\r\n 	<li>Найдите необходимый товар(ы) в каталоге;</li>\r\n 	<li>Чтобы ознакомиться с подробной информацией о товаре, кликните на изображение товара. Нажмите на кнопку \"В корзину\", если хотите сразу же добавить товар в корзину;</li>\r\n 	<li>Выберите необходимый объем или цвет товара, если такой выбор предоставляется;</li>\r\n 	<li>Нажмите кнопку «Добавить в корзину», находясь в карточке товара;</li>\r\n 	<li>Если Вы хотите продолжить покупки, Вам необходимо вернуться назад в каталог и повторить перечисленные выше действия;</li>\r\n 	<li>Если Вы добавили все необходимые товары в корзину, Вы можете перейти к оформлению заказа нажав соответствующую кнопку внизу;</li>\r\n 	<li>Введите необходимые данные и нажмите «Продолжить»;</li>\r\n 	<li>Выберите один из предложенных методов доставки, нажмите «Продолжить»;</li>\r\n 	<li>Проверьте информацию о заказе. Если необходимо, внесите изменения, вернувшись к необходимым этапам создания заказа;</li>\r\n 	<li>Нажмите кнопку «Перейти к оплате», так Вы подтвердите корректность предоставленной контактной информации, состав заказа и дадите согласие с условиями Договора оферты и Обработки персональных данных;</li>\r\n 	<li>Ваш заказ оформлен. Мы будем информировать Вас о смене статусов Заказа путем оповещения на электронную почту;</li>\r\n 	<li>Благодарим за покупку! При возникновении проблем Вы всегда можете обратиться к нам по электронному адресу <a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.</li>\r\n</ol>'),
(1476, 243, '_faq_0_description', 'field_5f88972cc06a2'),
(1477, 243, 'faq_1_title', 'Сколько стоит доставка? Сколько будет идти заказ?'),
(1478, 243, '_faq_1_title', 'field_5f889712c06a1'),
(1479, 243, 'faq_1_description', 'Стоимость и сроки доставки зависят от выбранного Вами метода доставки и города, в который необходимо её осуществить:\r\n<ol>\r\n 	<li>тест</li>\r\n 	<li>тест</li>\r\n 	<li>тест</li>\r\n</ol>'),
(1480, 243, '_faq_1_description', 'field_5f88972cc06a2'),
(1481, 243, 'faq_2_title', 'Есть ли у вас самовывоз?'),
(1482, 243, '_faq_2_title', 'field_5f889712c06a1'),
(1483, 243, 'faq_2_description', '<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>Мы доставляем заказы в течение 48 часов после оплаты в наши фирменные салоны, расположенные по адресу:</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>- г. Москва, Петровский бульвар д.23</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>- г. Москва, ДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»;</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>Стоимость самовывоза - 0 рублей.</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>В день доставки Вам придет sms-оповещение о возможности забрать заказ.</ol>\r\n&nbsp;'),
(1484, 243, '_faq_2_description', 'field_5f88972cc06a2'),
(1485, 243, 'faq_3_title', 'Как оплатить заказ?'),
(1486, 243, '_faq_3_title', 'field_5f889712c06a1'),
(1487, 243, 'faq_3_description', 'Оформление заказа предполагает предоплату. После подтверждения покупки Вы будете направлены на форму оплаты банковской картой.\r\nВы можете оплатить заказ в течение часа. В случае отсутствия оплаты бронь на товары и заказ отменяются.'),
(1488, 243, '_faq_3_description', 'field_5f88972cc06a2'),
(1489, 243, 'faq', '4'),
(1490, 243, '_faq', 'field_5f889480c06a0'),
(1491, 243, 'contacts', '<p style=\"text-align: center;\">Если Вы не нашли ответ на свой вопрос,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.\r\n\r\n<a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>\r\n<a href=\"tel:+74993508050\">+7 499 350 80 50</a></p>'),
(1492, 243, '_contacts', 'field_5f88976ec06a3'),
(1493, 244, 'faq_0_title', 'Как сделать заказ?'),
(1494, 244, '_faq_0_title', 'field_5f889712c06a1'),
(1495, 244, 'faq_0_description', '<ol>\r\n 	<li>Перейдите в раздел «Интернет-магазин»;</li>\r\n 	<li>Найдите необходимый товар(ы) в каталоге;</li>\r\n 	<li>Чтобы ознакомиться с подробной информацией о товаре, кликните на изображение товара. Нажмите на кнопку \"В корзину\", если хотите сразу же добавить товар в корзину;</li>\r\n 	<li>Выберите необходимый объем или цвет товара, если такой выбор предоставляется;</li>\r\n 	<li>Нажмите кнопку «Добавить в корзину», находясь в карточке товара;</li>\r\n 	<li>Если Вы хотите продолжить покупки, Вам необходимо вернуться назад в каталог и повторить перечисленные выше действия;</li>\r\n 	<li>Если Вы добавили все необходимые товары в корзину, Вы можете перейти к оформлению заказа нажав соответствующую кнопку внизу;</li>\r\n 	<li>Введите необходимые данные и нажмите «Продолжить»;</li>\r\n 	<li>Выберите один из предложенных методов доставки, нажмите «Продолжить»;</li>\r\n 	<li>Проверьте информацию о заказе. Если необходимо, внесите изменения, вернувшись к необходимым этапам создания заказа;</li>\r\n 	<li>Нажмите кнопку «Перейти к оплате», так Вы подтвердите корректность предоставленной контактной информации, состав заказа и дадите согласие с условиями Договора оферты и Обработки персональных данных;</li>\r\n 	<li>Ваш заказ оформлен. Мы будем информировать Вас о смене статусов Заказа путем оповещения на электронную почту;</li>\r\n 	<li>Благодарим за покупку! При возникновении проблем Вы всегда можете обратиться к нам по электронному адресу <a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.</li>\r\n</ol>'),
(1496, 244, '_faq_0_description', 'field_5f88972cc06a2'),
(1497, 244, 'faq_1_title', 'Сколько стоит доставка? Сколько будет идти заказ?'),
(1498, 244, '_faq_1_title', 'field_5f889712c06a1'),
(1499, 244, 'faq_1_description', 'Стоимость и сроки доставки зависят от выбранного Вами метода доставки и города, в который необходимо её осуществить:\r\n<ol>\r\n 	<li>тест</li>\r\n 	<li>тест</li>\r\n 	<li>тест</li>\r\n</ol>'),
(1500, 244, '_faq_1_description', 'field_5f88972cc06a2'),
(1501, 244, 'faq_2_title', 'Есть ли у вас самовывоз?'),
(1502, 244, '_faq_2_title', 'field_5f889712c06a1'),
(1503, 244, 'faq_2_description', '<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>Мы доставляем заказы в течение 48 часов после оплаты в наши фирменные салоны, расположенные по адресу:</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>- г. Москва, Петровский бульвар д.23</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>- г. Москва, ДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»;</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>\r\n 	<li style=\"list-style-type: none;\">\r\n<ol>Стоимость самовывоза - 0 рублей.</ol>\r\n</li>\r\n</ol>\r\n&nbsp;\r\n<ol>В день доставки Вам придет sms-оповещение о возможности забрать заказ.</ol>\r\n&nbsp;'),
(1504, 244, '_faq_2_description', 'field_5f88972cc06a2'),
(1505, 244, 'faq_3_title', 'Как оплатить заказ?'),
(1506, 244, '_faq_3_title', 'field_5f889712c06a1'),
(1507, 244, 'faq_3_description', 'Оформление заказа предполагает предоплату. После подтверждения покупки Вы будете направлены на форму оплаты банковской картой.\r\nВы можете оплатить заказ в течение часа. В случае отсутствия оплаты бронь на товары и заказ отменяются.'),
(1508, 244, '_faq_3_description', 'field_5f88972cc06a2'),
(1509, 244, 'faq', '4'),
(1510, 244, '_faq', 'field_5f889480c06a0'),
(1511, 244, 'contacts', '<p style=\"text-align: center;\">Если Вы не нашли ответ на свой вопрос,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>\r\n<a href=\"tel:+74993508050\">+7 499 350 80 50</a>'),
(1512, 244, '_contacts', 'field_5f88976ec06a3');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_posts`
--

CREATE TABLE `wss_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_posts`
--

INSERT INTO `wss_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-09-18 10:59:08', '2020-09-18 10:59:08', '<h1 style=\"text-align: center;\">ПОЛИТИКА\r\nКОНФИДЕНЦИАЛЬНОСТИ</h1>\r\n\r\n<hr />\r\n\r\n<h2>ПОЛОЖЕНИЕ ОБ ОБРАБОТКЕ\r\nПЕРСОНАЛЬНЫХ ДАННЫХ</h2>\r\nНастоящее Положение об обработке персональных данных (далее – Политика конфиденциальности) применяется Обществом с ограниченной ответственностью «КИП ЛУКИНГ» (ИНН/КПП 7724471511 / 772401001, далее – ООО «КИП ЛУКИНГ») в соответствии с положениями Федерального закона от 27.07.2006 № 152-ФЗ «О персональных данных» (далее – ФЗ «О персональных данных») и действует в отношении всей информации, которую Интернет-магазин «КИП ЛУКИНГ», расположенный на доменном имени http://keeplooking.online (включая все поддоменные имена, далее - Сайт), может получить о Пользователе во время использования Сайта, программ и продуктов Сайта.\r\n<h2>1. ОСНОВНЫЕ ТЕРМИНЫ</h2>\r\n1.1 В настоящей Политике конфиденциальности используются следующие термины:1.1.1. «Администрация Сайта» – уполномоченные сотрудники на управления Сайтом, действующие от ООО «КИП ЛУКИНГ», которые организуют и (или) осуществляют обработку персональных данных, а также определяют цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.1.1.2. «Персональные данные» - любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных, Пользователю).1.1.3. «Обработка персональных данных» - любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.1.1.4. «Конфиденциальность персональных данных» - обязательное для соблюдения Администрацией Сайта или иным получившим доступ к персональным данным лицом требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания.1.1.5. «Пользователь» – лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.1.1.6. «Cookies» — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.1.1.7. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.1.1.8. «Публичная оферта» - публичное предложение ООО «КИП ЛУКИНГ», адресованное Пользователям, заключить с ним договор купли-продажи на указанных в таком предложении условиях, в соответствии со статьей 437 Гражданского кодекса Российской Федерации, размещённое на сайте <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"http://keeplooking.ru/\">http://keeplooking.ru</a>.</span>\r\n<h2>2. ОБЩИЕ ПОЛОЖЕНИЯ</h2>\r\n2.1. Целью настоящей Политики конфиденциальности является обеспечение надлежащей защиты информации о Пользователях, в том числе их Персональных данных, от несанкционированного доступа и разглашения.2.2. Действие настоящей Политики конфиденциальности не распространяется на отношения, которые не регулируются ФЗ «О персональных данных», а также связанные с обработкой персональных сотрудников ООО «КИП ЛУКИНГ».2.3. Администрация Сайта осуществляет обработку следующих персональных данных, предоставляемых Пользователем путём заполнения регистрационной формы для осуществления обратного звонкаи формы оформления заказа на Сайте:\r\n<ul>\r\n 	<li>1) фамилию, имя, отчество Пользователей;</li>\r\n 	<li>2) номер контактного телефона;</li>\r\n 	<li>3) адрес электронной почты;</li>\r\n 	<li>4) адрес доставки заказа.</li>\r\n</ul>\r\nПри получении персональных данных, не указанных в настоящем пункте, такие данные подлежат немедленному уничтожению лицом, непреднамеренно получившим их, за исключением данных, указанных в п. 3.4 настоящей Политики конфиденциальности.2.4. Администрация Сайта осуществляет обработку персональных данных Пользователей в следующих целях:\r\n<ul>\r\n 	<li>1) для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте, в том числе для осуществления обработки и доставки заказов покупателей, информирования Пользователей о ходе исполнения договора ООО «КИП ЛУКИНГ» путём направления СМС и e-mail уведомлений;</li>\r\n 	<li>2) идентификации поступающих от Пользователей платежей в адрес ООО «КИП ЛУКИНГ» в целях исполнения заключенного между ООО «КИП ЛУКИНГ»и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n 	<li>3) предоставления Пользователю технической и клиентской поддержки по вопросам исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n 	<li>4) в иных целях, для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте,в случае, если соответствующие действия Оператора не противоречат действующему законодательству, деятельности Оператора, и на проведение указанной обработки получено согласие Субъекта персональных данных.</li>\r\n 	<li>5) создания Пользователем учетной записи на Сайте в целях исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n</ul>\r\n2.5. Администрация Сайта осуществляет обработку персональных данных Пользователей персональных посредством совершения любого действия (операции) или совокупности действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение.2.6. Использование Пользователем Сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.2.7. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование Сайта.2.8.Настоящая Политика конфиденциальности применяется только к Сайту. Администрация Сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на Сайте.2.9. Администрация Сайта не проверяет достоверность персональных данных, предоставляемых Пользователем Сайта.Однако Администрация Сайта исходит из того, что пользователь предоставляет достоверную и достаточную персональную информацию по вопросам, предлагаемым в формах, и поддерживает эту информацию в актуальном состоянии.3. ПРЕДМЕТ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ3.1. Настоящая Политика конфиденциальности устанавливает обязательства Администрации Сайта по неразглашению и обеспечению режима защиты конфиденциальности персональных данных, которые Пользователь предоставляет по запросу Администрации сайта при оформлении заказа для заключения договора согласно условиям Публичной оферты, размещённой на Сайте по адресу:<a href=\"https://keeplooking.ru/dogovor-oferty/\">keeplooking.ru/dogovor-oferty</a>.3.2. Администрация Сайта защищает данные, которые автоматически передаются в процессе просмотра рекламных блоков и при посещении страниц, на которых установлен статистический скрипт системы(«пиксель»): · IP адрес; · информация из cookies; · информация о браузере (или иной программе, которая осуществляет доступ к показу рекламы); · время доступа; · адрес страницы, на которой расположен рекламный блок; · реферер (адрес предыдущей страницы).3.3. Отключение cookies может повлечь невозможность доступа к частям сайта Сайта, требующим авторизации.3.4. Любая иная персональная информация неоговоренная выше (история покупок, используемые браузеры и операционные системы и т.д.) подлежит надежному хранению и нераспространению, за исключением случаев, предусмотренных в п.п. 4.2. и 4.3. настоящей Политики конфиденциальности.4. СПОСОБЫ И СРОКИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ4.1. Обработка персональных данных Пользователя осуществляется без ограничения срока, любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств.4.2. Пользователь соглашается с тем, что Администрация Сайта вправе передавать персональные данные третьим лицам, в частности, курьерским службам, организациями почтовой и иной связи, исключительно в целях взаимодействия в рамках исполнения договора, заключенного с Пользователем через принятие им условий Публичной оферты на Сайте.4.3. Персональные данные Пользователя могут быть переданы уполномоченным органам государственной власти Российской Федерации только по основаниям и в порядке, установленным законодательством Российской Федерации.4.4. При утрате или разглашении персональных данных Администрация Сайта информирует Пользователя об утрате или разглашении персональных данных.4.5. Администрация Сайта принимает необходимые организационные и технические меры для защиты персональной информации Пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий третьих лиц.4.6. Администрация Сайта совместно с Пользователем принимает все необходимые меры по предотвращению убытков или иных отрицательных последствий, вызванных утратой или разглашением персональных данных Пользователя.5. ОБЯЗАТЕЛЬСТВА СТОРОН5.1. В порядке пользования Сайтом Пользователь:\r\n<ul>\r\n 	<li>1) предоставляет информацию о персональных данных, необходимую для пользования Сайтом и/или заключения договора с ООО «КИП ЛУКИНГ» согласно условиям Публичной оферты, указанным на Сайте;</li>\r\n 	<li>2) обновляет, дополняет предоставленную информацию о персональных данных в случае изменения данной информации;</li>\r\n 	<li>3) уведомляет Администрацию Сайта о согласии на обработку персональных данных, если нажимает кнопку «Оформить заказ» на последнем этапе оформления Заказа на Сайте или либо предоставление персональных данных уполномоченному сотруднику по телефону, будет считаться предоставлением согласия на обработку персональных данных Пользователя, приравненному к уведомлению, составленному в простой письменной форме. Если Покупатель не нажал кнопку «Оформить заказ» или не предоставил согласие Оператору по телефону, это означает, что Покупатель не согласен с условиями Политики конфиденциальности, что делает невозможным дальнейшее сотрудничество Пользователя и ООО «КИП ЛУКИНГ» с целью заключения договора согласно условиям Публичной оферты, указанным на Сайте.</li>\r\n</ul>\r\n5.2. Администрация сайта обязана:\r\n<ul>\r\n 	<li>1) использовать полученную информацию исключительно для целей, указанных в настоящей Политике конфиденциальности;</li>\r\n 	<li>2) обеспечить хранение конфиденциальной информации в тайне, не разглашать без предварительного письменного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя, за исключением п.п. 4.2. и 4.3. настоящей Политики Конфиденциальности.</li>\r\n 	<li>3) принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.</li>\r\n 	<li>4) осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.</li>\r\n</ul>\r\n6. ОТВЕТСТВЕННОСТЬ СТОРОН6.1. Администрация Сайта, не исполнившая свои обязательства, несёт ответственность за убытки, понесённые Пользователем в связи с неправомерным использованием персональных данных, в соответствии с законодательством Российской Федерации, за исключением случаев, предусмотренных п.п. 4.2., 4.3. и 6.2. настоящей Политики конфиденциальности.6.2. В случае утраты или разглашения персональных данных Администрация Сайта не несёт ответственность, если данная информация:\r\n<ul>\r\n 	<li>1) стала публичным достоянием до её утраты или разглашения;</li>\r\n 	<li>2) была получена от третьей стороны до момента её получения Администрацией Сайта;</li>\r\n 	<li>3) была разглашена с согласия Пользователя.</li>\r\n</ul>\r\n7. РАЗРЕШЕНИЕ СПОРОВ\r\n\r\n7.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем и Администрацией Сайта, обязательным является предъявление претензии (письменного предложения о досудебном урегулировании спора).\r\n\r\n7.2.Получатель претензии в течение 30 календарных дней со дня получения претензии, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.\r\n\r\n7.3. При не достижении соглашения спор будет передан на рассмотрение в судебный орган в соответствии с действующим законодательством Российской Федерации.\r\n\r\n7.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией Сайта применяется действующее законодательство Российской Федерации.\r\n\r\n8. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ\r\n\r\n8.1. Администрация Сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя при соблюдении требований действующего законодательства в области персональных данных;\r\n\r\n8.2. Все предложения или вопросы по настоящей Политике конфиденциальности следует направлять на электронную почту ООО «КИП ЛУКИНГ»: <span style=\"color: #ff9900;\"><a class=\"help-link\" style=\"color: #ff9900;\" href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.8.3.</span> Действующая Политика конфиденциальности размещена на странице Сайта по адресу: <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"https://keeplooking.ru/obrabotka-dannykh/\">http://keeplooking.ru/obrabotka-dannykh</a>.</span>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Политика Конфиденциальности', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2020-10-06 09:54:35', '2020-10-06 09:54:35', '', 0, 'http://cosmedoc.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-09-18 11:12:05', '2020-09-18 11:12:05', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-09-18 11:12:05', '2020-09-18 11:12:05', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2020-09-19 11:55:02', '2020-09-19 11:55:02', '', '2_lico_m', '', 'inherit', 'open', 'closed', '', '2_lico_m', '', '', '2020-09-19 11:55:02', '2020-09-19 11:55:02', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_lico_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-09-19 11:55:08', '2020-09-19 11:55:08', '', '2_volosy_m', '', 'inherit', 'open', 'closed', '', '2_volosy_m', '', '', '2020-09-19 11:55:08', '2020-09-19 11:55:08', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_volosy_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2020-09-19 11:57:36', '2020-09-19 11:57:36', '', '2_telo_m', '', 'inherit', 'open', 'closed', '', '2_telo_m', '', '', '2020-09-19 11:57:36', '2020-09-19 11:57:36', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2020-09-19 11:58:02', '2020-09-19 11:58:02', '', '2_acsessuary_m', '', 'inherit', 'open', 'closed', '', '2_acsessuary_m', '', '', '2020-09-27 17:31:49', '2020-09-27 17:31:49', '', 80, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_acsessuary_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-09-19 11:58:20', '2020-09-19 11:58:20', '', '2_atmosfera_m', '', 'inherit', 'open', 'closed', '', '2_atmosfera_m', '', '', '2020-09-19 11:58:20', '2020-09-19 11:58:20', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_atmosfera_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2020-09-19 12:20:17', '2020-09-19 12:20:17', '', 'Подарочный сертификат на покупки в интернет магазине', '', 'publish', 'open', 'closed', '', 'podarochnyj-sertifikat-na-pokupki-v-internet-magazine', '', '', '2020-09-19 13:15:31', '2020-09-19 13:15:31', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=14', 0, 'product', '', 0),
(16, 1, '2020-09-19 12:21:35', '2020-09-19 12:21:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'WC: Product (About Accordeon)', 'wc-product-about-accordeon', 'publish', 'closed', 'closed', '', 'group_5f65f791de5c9', '', '', '2020-09-20 11:23:33', '2020-09-20 11:23:33', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(22, 1, '2020-09-19 13:18:31', '2020-09-19 13:18:31', 'Это интенсивный уход за волосами, который смягчает и защищает поврежденные волосы. Благодаря специальной формуле, состоящей из масла ши холодного отжима, овсяного протеина и коллагена.\r\nНеобходимо наносить на влажные волосы, перед сушкой феном.', 'Восстанавливающий термозащитный крем для волос с маслом ши', '', 'publish', 'open', 'closed', '', 'vosstanavlivayushhij-termozashhitnyj-krem-dlya-volos-s-maslom-shi', '', '', '2020-09-20 10:01:35', '2020-09-20 10:01:35', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2020-09-19 13:17:09', '2020-09-19 13:17:09', '', 'kl_rg003_2', '', 'inherit', 'open', 'closed', '', 'kl_rg003_2', '', '', '2020-09-19 13:17:09', '2020-09-19 13:17:09', '', 22, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg003_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2020-09-20 07:14:44', '2020-09-20 07:14:44', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'О продукте', 'about_broduct', 'publish', 'closed', 'closed', '', 'field_5f6700886100a', '', '', '2020-09-20 07:14:44', '2020-09-20 07:14:44', '', 16, 'http://cosmedoc.local/?post_type=acf-field&p=24', 0, 'acf-field', '', 0),
(25, 1, '2020-09-20 07:14:44', '2020-09-20 07:14:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Описание о продукте', 'about_product', 'publish', 'closed', 'closed', '', 'field_5f6700c16100b', '', '', '2020-09-20 09:24:51', '2020-09-20 09:24:51', '', 16, 'http://cosmedoc.local/?post_type=acf-field&#038;p=25', 1, 'acf-field', '', 0),
(26, 1, '2020-09-20 07:14:44', '2020-09-20 07:14:44', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Способ применения', 'about_broduct_copy', 'publish', 'closed', 'closed', '', 'field_5f67014e61013', '', '', '2020-09-20 07:14:44', '2020-09-20 07:14:44', '', 16, 'http://cosmedoc.local/?post_type=acf-field&p=26', 2, 'acf-field', '', 0),
(27, 1, '2020-09-20 07:14:44', '2020-09-20 07:14:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Описание способа применения', 'mode_of_application', 'publish', 'closed', 'closed', '', 'field_5f6700e96100e', '', '', '2020-09-20 09:24:51', '2020-09-20 09:24:51', '', 16, 'http://cosmedoc.local/?post_type=acf-field&#038;p=27', 3, 'acf-field', '', 0),
(28, 1, '2020-09-20 07:14:44', '2020-09-20 07:14:44', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:0;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Состав продукта', 'about_broduct_copy', 'publish', 'closed', 'closed', '', 'field_5f6700db6100d', '', '', '2020-09-20 07:14:44', '2020-09-20 07:14:44', '', 16, 'http://cosmedoc.local/?post_type=acf-field&p=28', 4, 'acf-field', '', 0),
(29, 1, '2020-09-20 07:14:44', '2020-09-20 07:14:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";}', 'Описание состава', 'composition', 'publish', 'closed', 'closed', '', 'field_5f67012d61012', '', '', '2020-09-20 09:24:51', '2020-09-20 09:24:51', '', 16, 'http://cosmedoc.local/?post_type=acf-field&#038;p=29', 5, 'acf-field', '', 0),
(30, 1, '2020-09-20 09:11:26', '2020-09-20 09:11:26', '<p class=\"bundle-contain\">В составе набора:</p>\r\n\r\n<div id=\"product-options-wrapper\" class=\"product-options\">\r\n<dl class=\"last\">\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Питательный шампунь с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Питательная маска для волос с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Восстанавливающий термозащитный крем для волос с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Ночной Увлажняющий лосьон для волос с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd class=\"last\">\r\n<div class=\"input-box\"> 1 x Увлажняющая сыворотка для волос с маслом ши</div></dd>\r\n</dl>\r\n</div>', 'Набор для восстановления волос с маслом ши (5 продуктов)', '', 'publish', 'closed', 'closed', '', 'nabor-dlya-vosstanovleniya-volos-s-maslom-shi-5-produktov', '', '', '2020-10-14 22:10:18', '2020-10-14 22:10:18', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2020-09-20 09:10:53', '2020-09-20 09:10:53', '', 'kl_rg022_set_1', '', 'inherit', 'open', 'closed', '', 'kl_rg022_set_1', '', '', '2020-09-20 09:10:53', '2020-09-20 09:10:53', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg022_set_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-09-20 09:11:05', '2020-09-20 09:11:05', '', 'kl_rg001', '', 'inherit', 'open', 'closed', '', 'kl_rg001', '', '', '2020-09-20 09:11:05', '2020-09-20 09:11:05', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg001.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-09-20 09:11:07', '2020-09-20 09:11:07', '', 'kl_rg002_2', '', 'inherit', 'open', 'closed', '', 'kl_rg002_2', '', '', '2020-09-20 09:11:07', '2020-09-20 09:11:07', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg002_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-09-20 09:11:08', '2020-09-20 09:11:08', '', 'kl_rg003_2_1_3', '', 'inherit', 'open', 'closed', '', 'kl_rg003_2_1_3', '', '', '2020-09-20 09:11:08', '2020-09-20 09:11:08', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg003_2_1_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-09-20 09:11:09', '2020-09-20 09:11:09', '', 'kl_rg003_3', '', 'inherit', 'open', 'closed', '', 'kl_rg003_3', '', '', '2020-09-20 09:11:09', '2020-09-20 09:11:09', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg003_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-09-20 09:11:10', '2020-09-20 09:11:10', '', 'kl_rg004_1_2', '', 'inherit', 'open', 'closed', '', 'kl_rg004_1_2', '', '', '2020-09-20 09:11:10', '2020-09-20 09:11:10', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg004_1_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-09-20 09:11:11', '2020-09-20 09:11:11', '', 'kl_rg004_2', '', 'inherit', 'open', 'closed', '', 'kl_rg004_2', '', '', '2020-09-20 09:11:11', '2020-09-20 09:11:11', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg004_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-09-20 09:11:12', '2020-09-20 09:11:12', '', 'kl_rg005_1_2', '', 'inherit', 'open', 'closed', '', 'kl_rg005_1_2', '', '', '2020-09-20 09:11:12', '2020-09-20 09:11:12', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg005_1_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-09-20 09:11:14', '2020-09-20 09:11:14', '', 'kl_rg005_3', '', 'inherit', 'open', 'closed', '', 'kl_rg005_3', '', '', '2020-09-20 09:11:14', '2020-09-20 09:11:14', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg005_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-09-20 09:11:15', '2020-09-20 09:11:15', '', 'kl_rg022_set_1', '', 'inherit', 'open', 'closed', '', 'kl_rg022_set_1-2', '', '', '2020-09-20 09:11:15', '2020-09-20 09:11:15', '', 30, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_rg022_set_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-09-20 09:23:56', '2020-09-20 09:23:56', '', 'Маска-рассул', 'Рассул - мылящаяся глина, которую рекомендуется использовать как маску для лица и тела и как шампунь для волос. Данное средство глубоко очищает кожу и волосы от загрязнений, сужает поры, подсушивает воспаления, избавляет от черных точек, регулируют секрецию сальных желез, улучшает цвет лица. Придает волосам объем и избавляет от необходимости в частом мытье головы.', 'publish', 'open', 'closed', '', '41', '', '', '2020-09-20 09:55:48', '2020-09-20 09:55:48', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2020-09-20 09:22:37', '2020-09-20 09:22:37', '', '7m1a3093_1', '', 'inherit', 'open', 'closed', '', '7m1a3093_1', '', '', '2020-09-20 09:22:37', '2020-09-20 09:22:37', '', 41, 'http://cosmedoc.local/wp-content/uploads/2020/09/7m1a3093_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-09-20 09:22:48', '2020-09-20 09:22:48', '', '7m1a3093_1', '', 'inherit', 'open', 'closed', '', '7m1a3093_1-2', '', '', '2020-09-20 09:22:48', '2020-09-20 09:22:48', '', 41, 'http://cosmedoc.local/wp-content/uploads/2020/09/7m1a3093_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-09-20 09:22:49', '2020-09-20 09:22:49', '', 'kl_ss003_1_4', '', 'inherit', 'open', 'closed', '', 'kl_ss003_1_4', '', '', '2020-09-20 09:22:49', '2020-09-20 09:22:49', '', 41, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-09-20 09:42:30', '2020-09-20 09:42:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'WC: Product (Subtitle)', 'wc-product-subtitle', 'publish', 'closed', 'closed', '', 'group_5f6720cf92c45', '', '', '2020-09-20 09:44:23', '2020-09-20 09:44:23', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2020-09-20 09:42:30', '2020-09-20 09:42:30', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:42:\"Введите подзаголовок...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок', 'product_subtitle', 'publish', 'closed', 'closed', '', 'field_5f6720e2c804e', '', '', '2020-09-20 09:42:30', '2020-09-20 09:42:30', '', 46, 'http://cosmedoc.local/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(50, 1, '2020-09-20 10:07:51', '2020-09-20 10:07:51', 'Мультифункциональное масло-флюид для волос и тела убирает нежелательную пушистость, предотвращает сечение запечатывает кончики волос, придает сияние, здоровый блеск и гладкость. Обеспечивает термозащиту до 230 ℃.\r\nНе содержит силиконы и парабены.', 'Масло-флюид с термозащитой', '', 'publish', 'open', 'closed', '', 'maslo-flyuid-s-termozashhitoj', '', '', '2020-09-20 10:07:51', '2020-09-20 10:07:51', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2020-09-20 10:04:34', '2020-09-20 10:04:34', '', 'kl_ab042_1_1', '', 'inherit', 'open', 'closed', '', 'kl_ab042_1_1', '', '', '2020-09-20 10:04:34', '2020-09-20 10:04:34', '', 50, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_ab042_1_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-09-20 10:04:42', '2020-09-20 10:04:42', '', 'kl_ab042_1', '', 'inherit', 'open', 'closed', '', 'kl_ab042_1', '', '', '2020-09-20 10:04:42', '2020-09-20 10:04:42', '', 50, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_ab042_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-09-20 10:10:07', '2020-09-20 10:10:07', 'Универсальное питательное масло с экстрактом бергамота и пиона. Можно использовать не только для волос, но и для тела. Интенсивно питает волосы и увлажняет кожу.', 'Крем-масло для волос и тела Пион и Бергамот', '', 'publish', 'closed', 'closed', '', 'krem-maslo-dlya-volos-i-tela-pion-i-bergamot', '', '', '2020-10-10 11:56:52', '2020-10-10 11:56:52', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2020-09-20 10:09:57', '2020-09-20 10:09:57', '', '_kl_te002', '', 'inherit', 'open', 'closed', '', '_kl_te002', '', '', '2020-09-20 10:09:57', '2020-09-20 10:09:57', '', 53, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_te002.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-09-20 10:14:35', '2020-09-20 10:14:35', '', 'Масло для укрепления и восстановления длинных волос', '', 'publish', 'open', 'closed', '', 'maslo-dlya-ukrepleniya-i-vosstanovleniya-dlinnyh-volos', '', '', '2020-09-22 21:36:47', '2020-09-22 21:36:47', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2020-09-20 10:14:16', '2020-09-20 10:14:16', '', '_kl_km055', '', 'inherit', 'open', 'closed', '', '_kl_km055', '', '', '2020-09-20 10:14:16', '2020-09-20 10:14:16', '', 56, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_km055.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-09-20 10:52:59', '2020-09-20 10:52:59', 'Консилер обладает кремовой текстурой, помогает скрыть темные круги под глазами и недостатки. Защита широкого спектра SPF20 помогает защитить от видимых признаков преждевременного старения.', 'Консилер 20spf Light', '', 'publish', 'closed', 'closed', '', 'konsiler-20spf-light', '', '', '2020-10-10 11:46:53', '2020-10-10 11:46:53', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2020-09-20 10:51:53', '2020-09-20 10:51:53', '', '651473708865_2', '', 'inherit', 'open', 'closed', '', '651473708865_2', '', '', '2020-09-20 10:51:53', '2020-09-20 10:51:53', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-09-20 10:52:17', '2020-09-20 10:52:17', '', '651473708865_1', '', 'inherit', 'open', 'closed', '', '651473708865_1', '', '', '2020-09-20 10:52:17', '2020-09-20 10:52:17', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-09-20 10:52:19', '2020-09-20 10:52:19', '', '651473708865_2', '', 'inherit', 'open', 'closed', '', '651473708865_2-2', '', '', '2020-09-20 10:52:19', '2020-09-20 10:52:19', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-09-20 10:52:20', '2020-09-20 10:52:20', '', '651473708865_3', '', 'inherit', 'open', 'closed', '', '651473708865_3', '', '', '2020-09-20 10:52:20', '2020-09-20 10:52:20', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-09-20 10:52:21', '2020-09-20 10:52:21', '', '651473708865_4', '', 'inherit', 'open', 'closed', '', '651473708865_4', '', '', '2020-09-20 10:52:21', '2020-09-20 10:52:21', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-09-20 10:58:42', '2020-09-20 10:58:42', 'PureLift™ Face – это устройство для подтяжки и скульптурирования лица. Без уколов, боли и периода восстановления! PureLift™ FACE специально разработан для домашнего использования. Всего за 10 минут в день он укрепляет мышцы, обеспечивая тонус, упругость и подтяжку кожи. Его секрет – запатентованный метод трехволновой электромиостимуляции: PureLift™ Face генерирует электрические импульсы, вызывающие интенсивное сокращение и расслабление глубоких лицевых мышц.', 'Аппарат для лица PureLift Face Красный', '', 'publish', 'closed', 'closed', '', 'apparat-dlya-licza-purelift-face-krasnyj', '', '', '2020-10-14 20:14:13', '2020-10-14 20:14:13', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2020-09-20 10:56:31', '2020-09-20 10:56:31', '', 'front_red', '', 'inherit', 'open', 'closed', '', 'front_red', '', '', '2020-09-20 10:56:31', '2020-09-20 10:56:31', '', 64, 'http://cosmedoc.local/wp-content/uploads/2020/09/front_red.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-09-20 10:56:32', '2020-09-20 10:56:32', '', 'kl_prall_2', '', 'inherit', 'open', 'closed', '', 'kl_prall_2', '', '', '2020-09-20 10:56:32', '2020-09-20 10:56:32', '', 64, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_prall_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-09-20 10:56:34', '2020-09-20 10:56:34', '', 'red', '', 'inherit', 'open', 'closed', '', 'red', '', '', '2020-09-20 10:56:34', '2020-09-20 10:56:34', '', 64, 'http://cosmedoc.local/wp-content/uploads/2020/09/red.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-09-20 11:18:17', '2020-09-20 11:18:17', 'Интенсивный BB-крем борется со старением, восстанавливает и защищает кожу от ультрафиолетового излучения. Идеально маскирует несовершенства, пигментные пятна и красноту. Глубоко питает и увлажняет кожу, активно заживляет. Заменяет тональное средство, помогает создать ровный рельеф и тон кожи с сияющим\r\nфинишем.', 'BB-крем с солнцезащитой SPF 30+ PA++', '', 'publish', 'open', 'closed', '', 'bb-krem-s-solnczezashhitoj-spf-30-pa', '', '', '2020-09-20 12:17:00', '2020-09-20 12:17:00', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2020-09-20 11:17:19', '2020-09-20 11:17:19', '', 'kl_gs017', '', 'inherit', 'open', 'closed', '', 'kl_gs017', '', '', '2020-09-20 11:17:19', '2020-09-20 11:17:19', '', 68, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_gs017.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-09-20 12:15:39', '2020-09-20 12:15:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'WC: Product (Additional Products)', 'wc-product-additional-products', 'publish', 'closed', 'closed', '', 'group_5f67477c91249', '', '', '2020-09-20 12:16:37', '2020-09-20 12:16:37', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2020-09-20 12:15:39', '2020-09-20 12:15:39', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";a:1:{i:0;s:14:\"featured_image\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'С этим товаром покупают', 'cross_sale', 'publish', 'closed', 'closed', '', 'field_5f67478a850fd', '', '', '2020-09-20 12:16:18', '2020-09-20 12:16:18', '', 70, 'http://cosmedoc.local/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(72, 1, '2020-09-22 11:12:26', '2020-09-22 11:12:26', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-09-22 11:12:40', '2020-09-22 11:12:40', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(73, 1, '2020-09-22 11:12:53', '2020-09-22 11:12:53', '{\n    \"cosmedoc::header_image\": {\n        \"value\": \"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 11:12:53\"\n    },\n    \"cosmedoc::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\",\n            \"thumbnail_url\": \"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\",\n            \"timestamp\": 1600773164966,\n            \"attachment_id\": 72,\n            \"width\": 223,\n            \"height\": 40\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 11:12:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d6aa39f-34b7-43b3-8c68-4dbd5a14d8be', '', '', '2020-09-22 11:12:53', '2020-09-22 11:12:53', '', 0, 'http://cosmedoc.local/7d6aa39f-34b7-43b3-8c68-4dbd5a14d8be/', 0, 'customize_changeset', '', 0),
(74, 1, '2020-09-22 11:17:29', '2020-09-22 11:17:29', '{\n    \"blogname\": {\n        \"value\": \"Cosmedoc\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 11:15:34\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 11:15:34\"\n    },\n    \"site_icon\": {\n        \"value\": 75,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-22 11:17:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b030e86a-6111-40ed-8817-55ab893f2f3c', '', '', '2020-09-22 11:17:29', '2020-09-22 11:17:29', '', 0, 'http://cosmedoc.local/?p=74', 0, 'customize_changeset', '', 0),
(75, 1, '2020-09-22 11:17:11', '2020-09-22 11:17:11', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2020-09-22 11:17:22', '2020-09-22 11:17:22', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/image.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2020-09-22 11:18:19', '2020-09-22 11:18:19', '', 'Интернет-магазин', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2020-10-01 18:08:29', '2020-10-01 18:08:29', '', 0, 'http://cosmedoc.local/?page_id=76', 0, 'page', '', 0),
(77, 1, '2020-09-22 11:18:19', '2020-09-22 11:18:19', '', 'Интернет-магазин', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-09-22 11:18:19', '2020-09-22 11:18:19', '', 76, 'http://cosmedoc.local/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-09-22 11:18:52', '2020-09-22 11:18:52', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"wp-image-167 size-full aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg\" alt=\"iamge4\" width=\"700\" height=\"467\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»</p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a></p>\r\n<p style=\"text-align: center;\">Часы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных</p>\r\n\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-27 16:35:56', '2020-09-27 16:35:56', '', 0, 'http://cosmedoc.local/?page_id=78', 0, 'page', '', 0),
(79, 1, '2020-09-22 11:18:52', '2020-09-22 11:18:52', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 11:18:52', '2020-09-22 11:18:52', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-09-22 11:19:25', '2020-09-22 11:19:25', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n<img class=\"size-large wp-image-134 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_d1-1024x512.jpg\" alt=\"image3\" width=\"1024\" height=\"512\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n&nbsp;\r\n\r\n<hr />', 'O Нас', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-09-27 17:37:15', '2020-09-27 17:37:15', '', 0, 'http://cosmedoc.local/?page_id=80', 0, 'page', '', 0),
(81, 1, '2020-09-22 11:19:25', '2020-09-22 11:19:25', '', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-22 11:19:25', '2020-09-22 11:19:25', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-09-22 11:20:13', '2020-09-22 11:20:13', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2020-09-27 09:09:17', '2020-09-27 09:09:17', '', 0, 'http://cosmedoc.local/?p=82', 3, 'nav_menu_item', '', 0),
(83, 1, '2020-09-22 11:20:13', '2020-09-22 11:20:13', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2020-09-27 09:09:17', '2020-09-27 09:09:17', '', 0, 'http://cosmedoc.local/?p=83', 2, 'nav_menu_item', '', 0),
(84, 1, '2020-09-22 11:20:13', '2020-09-22 11:20:13', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2020-09-27 09:09:17', '2020-09-27 09:09:17', '', 0, 'http://cosmedoc.local/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Главные Настройки', 'glavnye-nastrojki', 'publish', 'closed', 'closed', '', 'group_5f69deac57af5', '', '', '2020-09-22 13:12:35', '2020-09-22 13:12:35', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:1;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Контактная информация', 'kontaktnaya_informacziya', 'publish', 'closed', 'closed', '', 'field_5f69dec1c4f68', '', '', '2020-09-22 11:26:19', '2020-09-22 11:26:19', '', 85, 'http://cosmedoc.local/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(87, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Копирайт', 'copyright', 'publish', 'closed', 'closed', '', 'field_5f69df1fc4f69', '', '', '2020-09-22 11:26:45', '2020-09-22 11:26:45', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=87', 1, 'acf-field', '', 0),
(88, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5f69df41c4f6a', '', '', '2020-09-22 11:26:45', '2020-09-22 11:26:45', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=88', 2, 'acf-field', '', 0),
(89, 1, '2020-09-22 11:34:07', '2020-09-22 11:34:07', '[email* your-email placeholder \"Ваш E-mail\"]<button id=\'submit\' class=\'wpcf7-form-control wpcf7-submit\'>Подписаться</button>\n1\nCosmedoc \"[your-subject]\"\nCosmedoc <wordpress@cosmedoc.local>\nirwintram@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Cosmedoc (http://cosmedoc.local)\nReply-To: [your-email]\n\n\n\n\nCosmedoc \"[your-subject]\"\nCosmedoc <wordpress@cosmedoc.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Cosmedoc (http://cosmedoc.local)\nReply-To: irwintram@gmail.com\n\n\n\nСпасибо за то, что подписались на нашу рассылку.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nЭто поле обязательно для заполнения.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Подписка', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-22 15:36:54', '2020-09-22 15:36:54', '', 0, 'http://cosmedoc.local/?post_type=wpcf7_contact_form&#038;p=89', 0, 'wpcf7_contact_form', '', 0),
(90, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Cosmedoc', '', 'publish', 'closed', 'closed', '', 'cosmedoc', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2020-09-22 11:47:39', '0000-00-00 00:00:00', '', 'Личный кабинет', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-22 11:47:39', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidenczialnosti', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=94', 5, 'nav_menu_item', '', 0),
(95, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Договор оферты', '', 'publish', 'closed', 'closed', '', 'dogovor-oferty', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=95', 6, 'nav_menu_item', '', 0);
INSERT INTO `wss_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'КАТАЛОГ', '', 'publish', 'closed', 'closed', '', 'katalog', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=96', 8, 'nav_menu_item', '', 0),
(97, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', 'lichnyj-kabinet', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=97', 4, 'nav_menu_item', '', 0),
(98, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Все товары', '', 'publish', 'closed', 'closed', '', 'vse-tovary', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=98', 9, 'nav_menu_item', '', 0),
(99, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Лицо', '', 'publish', 'closed', 'closed', '', 'liczo', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=99', 10, 'nav_menu_item', '', 0),
(100, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Волосы', '', 'publish', 'closed', 'closed', '', 'volosy', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=100', 11, 'nav_menu_item', '', 0),
(101, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Тело', '', 'publish', 'closed', 'closed', '', 'telo', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=101', 12, 'nav_menu_item', '', 0),
(102, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Аксессуары', '', 'publish', 'closed', 'closed', '', 'aksessuary', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=102', 13, 'nav_menu_item', '', 0),
(103, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'ПОМОЩЬ', '', 'publish', 'closed', 'closed', '', 'pomoshh', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=103', 14, 'nav_menu_item', '', 0),
(104, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=104', 15, 'nav_menu_item', '', 0),
(105, 1, '2020-09-22 11:50:58', '0000-00-00 00:00:00', '', 'Контакты', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-22 11:50:58', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=105', 1, 'nav_menu_item', '', 0),
(106, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=106', 16, 'nav_menu_item', '', 0),
(107, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Программа лояльности салонов', '', 'publish', 'closed', 'closed', '', 'programma-loyalnosti-salonov', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=107', 17, 'nav_menu_item', '', 0),
(108, 1, '2020-09-22 12:43:46', '2020-09-22 12:43:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:29:\"Добавить Ссылку\";}', 'Социальные Ссылки', 'social_links', 'publish', 'closed', 'closed', '', 'field_5f69eff40497b', '', '', '2020-09-22 12:45:39', '2020-09-22 12:45:39', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=108', 3, 'acf-field', '', 0),
(109, 1, '2020-09-22 12:43:46', '2020-09-22 12:43:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_5f69f1390497c', '', '', '2020-09-22 12:45:39', '2020-09-22 12:45:39', '', 108, 'http://cosmedoc.local/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2020-09-22 12:55:27', '2020-09-22 12:55:27', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание', 'footer_description', 'publish', 'closed', 'closed', '', 'field_5f69f41d39769', '', '', '2020-09-22 12:55:51', '2020-09-22 12:55:51', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=110', 4, 'acf-field', '', 0),
(111, 1, '2020-09-22 13:01:34', '2020-09-22 13:01:34', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:1;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Информация подписки', 'informacziya_podpiski', 'publish', 'closed', 'closed', '', 'field_5f69f52d1c17b', '', '', '2020-09-22 13:01:34', '2020-09-22 13:01:34', '', 85, 'http://cosmedoc.local/?post_type=acf-field&p=111', 5, 'acf-field', '', 0),
(112, 1, '2020-09-22 13:01:34', '2020-09-22 13:01:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Заголовок подписки', 'subscribe_title', 'publish', 'closed', 'closed', '', 'field_5f69f5521c17c', '', '', '2020-09-22 13:12:26', '2020-09-22 13:12:26', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=112', 6, 'acf-field', '', 0),
(113, 1, '2020-09-22 13:01:34', '2020-09-22 13:01:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Описание подписки', 'subscribe_description', 'publish', 'closed', 'closed', '', 'field_5f69f58f1c17d', '', '', '2020-09-22 13:12:35', '2020-09-22 13:12:35', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=113', 7, 'acf-field', '', 0),
(114, 1, '2020-09-22 16:39:09', '2020-09-22 16:39:09', '<p style=\"text-align: center;\">Если у Вас возникли вопросы,\nто свяжитесь с нами по почте или телефону\nв рабочее время салона.</p>\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\n\n\n<hr />\n\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2020-09-22 16:39:09', '2020-09-22 16:39:09', '', 78, 'http://cosmedoc.local/78-autosave-v1/', 0, 'revision', '', 0),
(115, 1, '2020-09-22 16:38:07', '2020-09-22 16:38:07', '<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n<pre></pre>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 16:38:07', '2020-09-22 16:38:07', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-09-22 16:39:43', '2020-09-22 16:39:43', '<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных</p>\r\n\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 16:39:43', '2020-09-22 16:39:43', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2020-09-22 16:51:35', '2020-09-22 16:51:35', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 16:51:35', '2020-09-22 16:51:35', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2020-09-25 14:16:26', '2020-09-25 14:16:26', '{\n    \"woocommerce_thumbnail_image_width\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-25 14:16:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '67d64a11-9331-4c29-a54a-f272b2c44c15', '', '', '2020-09-25 14:16:26', '2020-09-25 14:16:26', '', 0, 'http://cosmedoc.local/67d64a11-9331-4c29-a54a-f272b2c44c15/', 0, 'customize_changeset', '', 0),
(120, 1, '2020-09-25 14:16:43', '2020-09-25 14:16:43', '{\n    \"woocommerce_thumbnail_image_width\": {\n        \"value\": \"300\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-25 14:16:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ab99808-d6a0-4006-836b-93b208b5a905', '', '', '2020-09-25 14:16:43', '2020-09-25 14:16:43', '', 0, 'http://cosmedoc.local/6ab99808-d6a0-4006-836b-93b208b5a905/', 0, 'customize_changeset', '', 0),
(123, 1, '2020-09-25 18:04:43', '2020-09-25 18:04:43', '', 'Главная Страница', '', 'publish', 'closed', 'closed', '', 'glavnaya-stranicza', '', '', '2020-09-25 21:56:37', '2020-09-25 21:56:37', '', 0, 'http://cosmedoc.local/?page_id=123', 0, 'page', '', 0),
(124, 1, '2020-09-25 18:04:43', '2020-09-25 18:04:43', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 18:04:43', '2020-09-25 18:04:43', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2020-09-25 18:10:36', '2020-09-25 18:10:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"123\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Главная Страница', 'glavnaya-stranicza', 'publish', 'closed', 'closed', '', 'group_5f6e316ac0ca4', '', '', '2020-09-25 21:56:13', '2020-09-25 21:56:13', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2020-09-25 18:10:36', '2020-09-25 18:10:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:27:\"Добавить Слайд\";}', 'Слайдер', 'slider', 'publish', 'closed', 'closed', '', 'field_5f6e318f4e730', '', '', '2020-09-25 18:10:36', '2020-09-25 18:10:36', '', 125, 'http://cosmedoc.local/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2020-09-25 18:10:36', '2020-09-25 18:10:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Картинка', 'image', 'publish', 'closed', 'closed', '', 'field_5f6e31fd4e732', '', '', '2020-09-25 18:10:36', '2020-09-25 18:10:36', '', 126, 'http://cosmedoc.local/?post_type=acf-field&p=127', 0, 'acf-field', '', 0),
(128, 1, '2020-09-25 18:10:36', '2020-09-25 18:10:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_5f6e31db4e731', '', '', '2020-09-25 18:10:36', '2020-09-25 18:10:36', '', 126, 'http://cosmedoc.local/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2020-09-25 18:10:36', '2020-09-25 18:10:36', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:300;s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Описания', 'description', 'publish', 'closed', 'closed', '', 'field_5f6e324b4e733', '', '', '2020-09-25 18:10:36', '2020-09-25 18:10:36', '', 126, 'http://cosmedoc.local/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2020-09-25 18:10:36', '2020-09-25 18:10:36', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_5f6e32694e734', '', '', '2020-09-25 18:10:36', '2020-09-25 18:10:36', '', 126, 'http://cosmedoc.local/?post_type=acf-field&p=130', 3, 'acf-field', '', 0),
(131, 1, '2020-09-25 18:11:30', '2020-09-25 18:11:30', '', '2_volosy_d[1]', '', 'inherit', 'open', 'closed', '', '2_volosy_d1', '', '', '2020-09-25 18:11:45', '2020-09-25 18:11:45', '', 123, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_volosy_d1.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2020-09-25 18:13:50', '2020-09-25 18:13:50', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 18:13:50', '2020-09-25 18:13:50', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2020-09-25 18:39:37', '2020-09-25 18:39:37', '', '2_atmosfera_d[1]', '', 'inherit', 'open', 'closed', '', '2_atmosfera_d1', '', '', '2020-09-25 18:39:49', '2020-09-25 18:39:49', '', 123, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_atmosfera_d1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2020-09-25 18:40:47', '2020-09-25 18:40:47', '', '2_telo_d[1]', '', 'inherit', 'open', 'closed', '', '2_telo_d1', '', '', '2020-09-25 18:40:55', '2020-09-25 18:40:55', '', 123, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_d1.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-09-25 18:41:15', '2020-09-25 18:41:15', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 18:41:15', '2020-09-25 18:41:15', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-09-25 20:05:44', '2020-09-25 20:05:44', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:11:\"product_cat\";s:10:\"field_type\";s:8:\"checkbox\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:1;s:10:\"load_terms\";i:1;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;}', 'Категории Продуктов', 'products_cat', 'publish', 'closed', 'closed', '', 'field_5f6e4cfe0f658', '', '', '2020-09-25 20:54:31', '2020-09-25 20:54:31', '', 125, 'http://cosmedoc.local/?post_type=acf-field&#038;p=137', 2, 'acf-field', '', 0),
(138, 1, '2020-09-25 20:39:43', '2020-09-25 20:39:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Картинка Для Всех Товаров', 'image_for_all_product', 'publish', 'closed', 'closed', '', 'field_5f6e55394e01c', '', '', '2020-09-25 21:28:00', '2020-09-25 21:28:00', '', 125, 'http://cosmedoc.local/?post_type=acf-field&#038;p=138', 1, 'acf-field', '', 0),
(139, 1, '2020-09-25 20:42:39', '2020-09-25 20:42:39', '', '2_all_products_m[1]', '', 'inherit', 'open', 'closed', '', '2_all_products_m1', '', '', '2020-09-25 20:42:48', '2020-09-25 20:42:48', '', 123, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_all_products_m1.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2020-09-25 20:42:55', '2020-09-25 20:42:55', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 20:42:55', '2020-09-25 20:42:55', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2020-09-25 20:50:22', '2020-09-25 20:50:22', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 20:50:22', '2020-09-25 20:50:22', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2020-09-25 20:52:44', '2020-09-25 20:52:44', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 20:52:44', '2020-09-25 20:52:44', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2020-09-25 20:53:20', '2020-09-25 20:53:20', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 20:53:20', '2020-09-25 20:53:20', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2020-09-25 21:56:13', '2020-09-25 21:56:13', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";a:1:{i:0;s:14:\"featured_image\";}s:3:\"min\";i:4;s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Слайдер Товаров', 'slider_products', 'publish', 'closed', 'closed', '', 'field_5f6e6726fa1a0', '', '', '2020-09-25 21:56:13', '2020-09-25 21:56:13', '', 125, 'http://cosmedoc.local/?post_type=acf-field&p=144', 3, 'acf-field', '', 0),
(145, 1, '2020-09-25 21:56:37', '2020-09-25 21:56:37', '', 'Главная Страница', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2020-09-25 21:56:37', '2020-09-25 21:56:37', '', 123, 'http://cosmedoc.local/123-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Каталог', '', 'publish', 'closed', 'closed', '', 'katalog-2', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=146', 1, 'nav_menu_item', '', 0),
(147, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', 'lichnyj-kabinet-2', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=147', 8, 'nav_menu_item', '', 0),
(148, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=148', 16, 'nav_menu_item', '', 0),
(149, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=149', 15, 'nav_menu_item', '', 0),
(150, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Помощь', '', 'publish', 'closed', 'closed', '', 'pomoshh-2', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=150', 9, 'nav_menu_item', '', 0),
(151, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=151', 2, 'nav_menu_item', '', 0),
(152, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=152', 3, 'nav_menu_item', '', 0),
(153, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=153', 4, 'nav_menu_item', '', 0),
(154, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=154', 5, 'nav_menu_item', '', 0),
(155, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', ' ', '', '', 'publish', 'closed', 'closed', '', '155', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=155', 6, 'nav_menu_item', '', 0),
(156, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Подарочные сертификаты', '', 'publish', 'closed', 'closed', '', 'podarochnye-sertifikaty', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=156', 7, 'nav_menu_item', '', 0),
(157, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Руководство по покупке', '', 'publish', 'closed', 'closed', '', 'rukovodstvo-po-pokupke', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=157', 10, 'nav_menu_item', '', 0),
(158, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq-2', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=158', 11, 'nav_menu_item', '', 0),
(159, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Доставка', '', 'publish', 'closed', 'closed', '', 'dostavka', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=159', 12, 'nav_menu_item', '', 0),
(160, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidenczialnosti-2', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=160', 13, 'nav_menu_item', '', 0),
(161, 1, '2020-09-27 08:43:22', '2020-09-27 08:43:22', '', 'Оферта', '', 'publish', 'closed', 'closed', '', 'oferta', '', '', '2020-09-27 11:16:00', '2020-09-27 11:16:00', '', 0, 'http://cosmedoc.local/?p=161', 14, 'nav_menu_item', '', 0),
(162, 1, '2020-09-27 08:42:58', '2020-09-27 08:42:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"nav_menu\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"55\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Дополнительные поля для меню', 'dopolnitelnye-polya-dlya-menyu', 'publish', 'closed', 'closed', '', 'group_5f7050148fada', '', '', '2020-09-27 08:42:58', '2020-09-27 08:42:58', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=162', 0, 'acf-field-group', '', 0),
(163, 1, '2020-09-27 08:42:58', '2020-09-27 08:42:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Картинка', 'menu_image', 'publish', 'closed', 'closed', '', 'field_5f705032bd88e', '', '', '2020-09-27 08:42:58', '2020-09-27 08:42:58', '', 162, 'http://cosmedoc.local/?post_type=acf-field&p=163', 0, 'acf-field', '', 0),
(164, 1, '2020-09-27 08:42:58', '2020-09-27 08:42:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок Меню', 'menu_title', 'publish', 'closed', 'closed', '', 'field_5f705076bd88f', '', '', '2020-09-27 08:42:58', '2020-09-27 08:42:58', '', 162, 'http://cosmedoc.local/?post_type=acf-field&p=164', 1, 'acf-field', '', 0),
(167, 1, '2020-09-27 16:27:04', '2020-09-27 16:27:04', '', 'contact-page-banner[1]', '', 'inherit', 'open', 'closed', '', 'contact-page-banner1', '', '', '2020-09-27 16:27:15', '2020-09-27 16:27:15', '', 78, 'http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2020-09-27 16:27:20', '2020-09-27 16:27:20', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"size-medium wp-image-167 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1-300x200.jpg\" alt=\"iamge4\" width=\"300\" height=\"200\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-27 16:27:20', '2020-09-27 16:27:20', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2020-09-27 16:27:51', '2020-09-27 16:27:51', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"aligncenter wp-image-167 size-full\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg\" alt=\"iamge4\" width=\"700\" height=\"467\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-27 16:27:51', '2020-09-27 16:27:51', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2020-09-27 16:32:08', '2020-09-27 16:32:08', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"wp-image-167 size-full alignright\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg\" alt=\"iamge4\" width=\"700\" height=\"467\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-27 16:32:08', '2020-09-27 16:32:08', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2020-09-27 16:33:31', '2020-09-27 16:33:31', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"wp-image-167 size-full aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg\" alt=\"iamge4\" width=\"700\" height=\"467\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-27 16:33:31', '2020-09-27 16:33:31', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2020-09-27 16:35:06', '2020-09-27 16:35:06', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"wp-image-167 size-full aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg\" alt=\"iamge4\" width=\"700\" height=\"467\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a></p>\r\n<p style=\"text-align: center;\">123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»</p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a></p>\r\n<p style=\"text-align: center;\">Часы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных</p>\r\n\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-27 16:35:06', '2020-09-27 16:35:06', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2020-09-27 16:35:56', '2020-09-27 16:35:56', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"wp-image-167 size-full aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/contact-page-banner1.jpg\" alt=\"iamge4\" width=\"700\" height=\"467\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a></p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»</p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a></p>\r\n<p style=\"text-align: center;\">Часы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных</p>\r\n\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-27 16:35:56', '2020-09-27 16:35:56', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2020-09-27 17:04:56', '2020-09-27 17:04:56', '', 'Программа лояльности салонов', '', 'publish', 'closed', 'closed', '', 'programma-loyalnosti-salonov-2', '', '', '2020-09-27 17:05:25', '2020-09-27 17:05:25', '', 0, 'http://cosmedoc.local/?p=174', 7, 'nav_menu_item', '', 0),
(175, 1, '2020-09-27 17:31:42', '2020-09-27 17:31:42', '<h2 style=\"text-align: center;\">O Нас</h2>\n&nbsp;', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2020-09-27 17:31:42', '2020-09-27 17:31:42', '', 80, 'http://cosmedoc.local/80-autosave-v1/', 0, 'revision', '', 0),
(176, 1, '2020-09-27 17:33:11', '2020-09-27 17:33:11', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n<img class=\"size-full wp-image-12 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_acsessuary_m.jpg\" alt=\"image\" width=\"750\" height=\"750\" />\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n\r\n\r\n<hr />\r\n\r\n&nbsp;', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-27 17:33:11', '2020-09-27 17:33:11', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2020-09-27 17:35:36', '2020-09-27 17:35:36', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n<img class=\"size-full wp-image-12 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_acsessuary_m.jpg\" alt=\"image\" width=\"750\" height=\"750\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n&nbsp;', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-27 17:35:36', '2020-09-27 17:35:36', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2020-09-27 17:36:19', '2020-09-27 17:36:19', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-large wp-image-134\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_d1-1024x512.jpg\" alt=\"image3\" width=\"1024\" height=\"512\" />\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n&nbsp;', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-27 17:36:19', '2020-09-27 17:36:19', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2020-09-27 17:36:26', '2020-09-27 17:36:26', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n&nbsp;\r\n\r\n<img class=\"size-large wp-image-134 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_d1-1024x512.jpg\" alt=\"image3\" width=\"1024\" height=\"512\" />\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n&nbsp;', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-27 17:36:26', '2020-09-27 17:36:26', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2020-09-27 17:36:39', '2020-09-27 17:36:39', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n&nbsp;\r\n\r\n<img class=\"size-large wp-image-134 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_d1-1024x512.jpg\" alt=\"image3\" width=\"1024\" height=\"512\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n&nbsp;', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-27 17:36:39', '2020-09-27 17:36:39', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(181, 1, '2020-09-27 17:37:15', '2020-09-27 17:37:15', '<h2 style=\"text-align: center;\">O Нас</h2>\r\n<img class=\"size-large wp-image-134 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_d1-1024x512.jpg\" alt=\"image3\" width=\"1024\" height=\"512\" />\r\n\r\n&nbsp;\r\n<p style=\"text-align: center;\">Концепция бренда Cosmedoc берет свое начало от игры слов «keep» - продолжай, сохраняй и «look» – образ, взгляд. Дословно это выражение можно перевести,\r\nкак продолжай искать…</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">ГАРМОНИЮ МЕЖДУ СВОЕЙ\r\nИСТИННОЙ ВНУТРЕННЕЙ КРАСОТОЙ\r\nИ ВНЕШНИМ ОБРАЗОМ</p>\r\n&nbsp;\r\n<p style=\"text-align: center;\">Наши мастера подобно гениальным художникам ищут свое вдохновение\r\nв подлинной женской красоте, работая над каждым образом, словно над изящным произведением классического искусства, чувствуя вашу индивидуальность, неповторимый характер и неуловимое настроение.</p>\r\n&nbsp;\r\n\r\n<hr />', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-27 17:37:15', '2020-09-27 17:37:15', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2020-10-01 18:05:16', '2020-10-01 18:05:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"76\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Магазин', 'magazin', 'publish', 'closed', 'closed', '', 'group_5f7619b8075e6', '', '', '2020-10-01 18:36:12', '2020-10-01 18:36:12', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=182', 0, 'acf-field-group', '', 0),
(183, 1, '2020-10-01 18:05:16', '2020-10-01 18:05:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Главная Картинка', 'hero_image', 'publish', 'closed', 'closed', '', 'field_5f7619ccfd304', '', '', '2020-10-01 18:36:12', '2020-10-01 18:36:12', '', 182, 'http://cosmedoc.local/?post_type=acf-field&#038;p=183', 0, 'acf-field', '', 0),
(184, 1, '2020-10-01 18:05:16', '2020-10-01 18:05:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'hero_title', 'publish', 'closed', 'closed', '', 'field_5f761a2efd305', '', '', '2020-10-01 18:05:16', '2020-10-01 18:05:16', '', 182, 'http://cosmedoc.local/?post_type=acf-field&p=184', 1, 'acf-field', '', 0),
(185, 1, '2020-10-01 18:08:01', '2020-10-01 18:08:01', '', '2_all_products_d[1]', '', 'inherit', 'open', 'closed', '', '2_all_products_d1', '', '', '2020-10-01 18:08:26', '2020-10-01 18:08:26', '', 76, 'http://cosmedoc.local/wp-content/uploads/2020/10/2_all_products_d1.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2020-10-01 18:08:29', '2020-10-01 18:08:29', '', 'Интернет-магазин', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-10-01 18:08:29', '2020-10-01 18:08:29', '', 76, 'http://cosmedoc.local/76-revision-v1/', 0, 'revision', '', 0),
(187, 1, '2020-10-01 19:17:15', '2020-10-01 19:17:15', '[woocommerce_my_account]', 'Страница Аккаунта', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2020-10-01 19:25:21', '2020-10-01 19:25:21', '', 0, 'http://cosmedoc.local/?page_id=187', 0, 'page', '', 0),
(188, 1, '2020-10-01 19:17:15', '2020-10-01 19:17:15', '', 'Страница Аккаунта', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2020-10-01 19:17:15', '2020-10-01 19:17:15', '', 187, 'http://cosmedoc.local/187-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2020-10-01 19:25:21', '2020-10-01 19:25:21', '[woocommerce_my_account]', 'Страница Аккаунта', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2020-10-01 19:25:21', '2020-10-01 19:25:21', '', 187, 'http://cosmedoc.local/187-revision-v1/', 0, 'revision', '', 0),
(191, 1, '2020-10-05 07:32:20', '2020-10-05 07:32:20', '[wc_reg_form_wss]', 'Регистрация', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2020-10-05 07:36:25', '2020-10-05 07:36:25', '', 0, 'http://cosmedoc.local/?page_id=191', 0, 'page', '', 0),
(192, 1, '2020-10-05 07:32:20', '2020-10-05 07:32:20', '[wc_reg_form_wss]', 'Register', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2020-10-05 07:32:20', '2020-10-05 07:32:20', '', 191, 'http://cosmedoc.local/191-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2020-10-05 07:32:32', '2020-10-05 07:32:32', '[wc_reg_form_wss]', 'Регистрация', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2020-10-05 07:32:32', '2020-10-05 07:32:32', '', 191, 'http://cosmedoc.local/191-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wss_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(194, 1, '2020-10-06 09:52:36', '2020-10-06 09:52:36', '<h1 style=\"text-align: center;\">ПОЛИТИКА<br />КОНФИДЕНЦИАЛЬНОСТИ</h1>\r\n<p>&nbsp;</p>\r\n<hr />\r\n<h2>ПОЛОЖЕНИЕ ОБ ОБРАБОТКЕ<br />ПЕРСОНАЛЬНЫХ ДАННЫХ</h2>\r\n<p>Настоящее Положение об обработке персональных данных (далее – Политика конфиденциальности) применяется Обществом с ограниченной ответственностью «КИП ЛУКИНГ» (ИНН/КПП 7724471511 / 772401001, далее – ООО «КИП ЛУКИНГ») в соответствии с положениями Федерального закона от 27.07.2006 № 152-ФЗ «О персональных данных» (далее – ФЗ «О персональных данных») и действует в отношении всей информации, которую Интернет-магазин «КИП ЛУКИНГ», расположенный на доменном имени http://keeplooking.online (включая все поддоменные имена, далее - Сайт), может получить о Пользователе во время использования Сайта, программ и продуктов Сайта.</p>\r\n<h2>1. ОСНОВНЫЕ ТЕРМИНЫ</h2>\r\n<p>1.1 В настоящей Политике конфиденциальности используются следующие термины:1.1.1. «Администрация Сайта» – уполномоченные сотрудники на управления Сайтом, действующие от ООО «КИП ЛУКИНГ», которые организуют и (или) осуществляют обработку персональных данных, а также определяют цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.1.1.2. «Персональные данные» - любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных, Пользователю).1.1.3. «Обработка персональных данных» - любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.1.1.4. «Конфиденциальность персональных данных» - обязательное для соблюдения Администрацией Сайта или иным получившим доступ к персональным данным лицом требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания.1.1.5. «Пользователь» – лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.1.1.6. «Cookies» — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.1.1.7. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.1.1.8. «Публичная оферта» - публичное предложение ООО «КИП ЛУКИНГ», адресованное Пользователям, заключить с ним договор купли-продажи на указанных в таком предложении условиях, в соответствии со статьей 437 Гражданского кодекса Российской Федерации, размещённое на сайте <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"http://keeplooking.ru/\">http://keeplooking.ru</a>.</span></p>\r\n<h2>2. ОБЩИЕ ПОЛОЖЕНИЯ</h2>\r\n<p>2.1. Целью настоящей Политики конфиденциальности является обеспечение надлежащей защиты информации о Пользователях, в том числе их Персональных данных, от несанкционированного доступа и разглашения.2.2. Действие настоящей Политики конфиденциальности не распространяется на отношения, которые не регулируются ФЗ «О персональных данных», а также связанные с обработкой персональных сотрудников ООО «КИП ЛУКИНГ».2.3. Администрация Сайта осуществляет обработку следующих персональных данных, предоставляемых Пользователем путём заполнения регистрационной формы для осуществления обратного звонкаи формы оформления заказа на Сайте:</p>\r\n<ul>\r\n<li>1) фамилию, имя, отчество Пользователей;</li>\r\n<li>2) номер контактного телефона;</li>\r\n<li>3) адрес электронной почты;</li>\r\n<li>4) адрес доставки заказа.</li>\r\n</ul>\r\n<p>При получении персональных данных, не указанных в настоящем пункте, такие данные подлежат немедленному уничтожению лицом, непреднамеренно получившим их, за исключением данных, указанных в п. 3.4 настоящей Политики конфиденциальности.2.4. Администрация Сайта осуществляет обработку персональных данных Пользователей в следующих целях:</p>\r\n<ul>\r\n<li>1) для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте, в том числе для осуществления обработки и доставки заказов покупателей, информирования Пользователей о ходе исполнения договора ООО «КИП ЛУКИНГ» путём направления СМС и e-mail уведомлений;</li>\r\n<li>2) идентификации поступающих от Пользователей платежей в адрес ООО «КИП ЛУКИНГ» в целях исполнения заключенного между ООО «КИП ЛУКИНГ»и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n<li>3) предоставления Пользователю технической и клиентской поддержки по вопросам исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n<li>4) в иных целях, для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте,в случае, если соответствующие действия Оператора не противоречат действующему законодательству, деятельности Оператора, и на проведение указанной обработки получено согласие Субъекта персональных данных.</li>\r\n<li>5) создания Пользователем учетной записи на Сайте в целях исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n</ul>\r\n<p>2.5. Администрация Сайта осуществляет обработку персональных данных Пользователей персональных посредством совершения любого действия (операции) или совокупности действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение.2.6. Использование Пользователем Сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.2.7. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование Сайта.2.8.Настоящая Политика конфиденциальности применяется только к Сайту. Администрация Сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на Сайте.2.9. Администрация Сайта не проверяет достоверность персональных данных, предоставляемых Пользователем Сайта.Однако Администрация Сайта исходит из того, что пользователь предоставляет достоверную и достаточную персональную информацию по вопросам, предлагаемым в формах, и поддерживает эту информацию в актуальном состоянии.3. ПРЕДМЕТ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ3.1. Настоящая Политика конфиденциальности устанавливает обязательства Администрации Сайта по неразглашению и обеспечению режима защиты конфиденциальности персональных данных, которые Пользователь предоставляет по запросу Администрации сайта при оформлении заказа для заключения договора согласно условиям Публичной оферты, размещённой на Сайте по адресу:<a href=\"https://keeplooking.ru/dogovor-oferty/\">keeplooking.ru/dogovor-oferty</a>.3.2. Администрация Сайта защищает данные, которые автоматически передаются в процессе просмотра рекламных блоков и при посещении страниц, на которых установлен статистический скрипт системы(«пиксель»): · IP адрес; · информация из cookies; · информация о браузере (или иной программе, которая осуществляет доступ к показу рекламы); · время доступа; · адрес страницы, на которой расположен рекламный блок; · реферер (адрес предыдущей страницы).3.3. Отключение cookies может повлечь невозможность доступа к частям сайта Сайта, требующим авторизации.3.4. Любая иная персональная информация неоговоренная выше (история покупок, используемые браузеры и операционные системы и т.д.) подлежит надежному хранению и нераспространению, за исключением случаев, предусмотренных в п.п. 4.2. и 4.3. настоящей Политики конфиденциальности.4. СПОСОБЫ И СРОКИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ4.1. Обработка персональных данных Пользователя осуществляется без ограничения срока, любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств.4.2. Пользователь соглашается с тем, что Администрация Сайта вправе передавать персональные данные третьим лицам, в частности, курьерским службам, организациями почтовой и иной связи, исключительно в целях взаимодействия в рамках исполнения договора, заключенного с Пользователем через принятие им условий Публичной оферты на Сайте.4.3. Персональные данные Пользователя могут быть переданы уполномоченным органам государственной власти Российской Федерации только по основаниям и в порядке, установленным законодательством Российской Федерации.4.4. При утрате или разглашении персональных данных Администрация Сайта информирует Пользователя об утрате или разглашении персональных данных.4.5. Администрация Сайта принимает необходимые организационные и технические меры для защиты персональной информации Пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий третьих лиц.4.6. Администрация Сайта совместно с Пользователем принимает все необходимые меры по предотвращению убытков или иных отрицательных последствий, вызванных утратой или разглашением персональных данных Пользователя.5. ОБЯЗАТЕЛЬСТВА СТОРОН5.1. В порядке пользования Сайтом Пользователь:</p>\r\n<ul>\r\n<li>1) предоставляет информацию о персональных данных, необходимую для пользования Сайтом и/или заключения договора с ООО «КИП ЛУКИНГ» согласно условиям Публичной оферты, указанным на Сайте;</li>\r\n<li>2) обновляет, дополняет предоставленную информацию о персональных данных в случае изменения данной информации;</li>\r\n<li>3) уведомляет Администрацию Сайта о согласии на обработку персональных данных, если нажимает кнопку «Оформить заказ» на последнем этапе оформления Заказа на Сайте или либо предоставление персональных данных уполномоченному сотруднику по телефону, будет считаться предоставлением согласия на обработку персональных данных Пользователя, приравненному к уведомлению, составленному в простой письменной форме. Если Покупатель не нажал кнопку «Оформить заказ» или не предоставил согласие Оператору по телефону, это означает, что Покупатель не согласен с условиями Политики конфиденциальности, что делает невозможным дальнейшее сотрудничество Пользователя и ООО «КИП ЛУКИНГ» с целью заключения договора согласно условиям Публичной оферты, указанным на Сайте.</li>\r\n</ul>\r\n<p>5.2. Администрация сайта обязана:</p>\r\n<ul>\r\n<li>1) использовать полученную информацию исключительно для целей, указанных в настоящей Политике конфиденциальности;</li>\r\n<li>2) обеспечить хранение конфиденциальной информации в тайне, не разглашать без предварительного письменного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя, за исключением п.п. 4.2. и 4.3. настоящей Политики Конфиденциальности.</li>\r\n<li>3) принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.</li>\r\n<li>4) осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.</li>\r\n</ul>\r\n<p>6. ОТВЕТСТВЕННОСТЬ СТОРОН6.1. Администрация Сайта, не исполнившая свои обязательства, несёт ответственность за убытки, понесённые Пользователем в связи с неправомерным использованием персональных данных, в соответствии с законодательством Российской Федерации, за исключением случаев, предусмотренных п.п. 4.2., 4.3. и 6.2. настоящей Политики конфиденциальности.6.2. В случае утраты или разглашения персональных данных Администрация Сайта не несёт ответственность, если данная информация:</p>\r\n<ul>\r\n<li>1) стала публичным достоянием до её утраты или разглашения;</li>\r\n<li>2) была получена от третьей стороны до момента её получения Администрацией Сайта;</li>\r\n<li>3) была разглашена с согласия Пользователя.</li>\r\n</ul>\r\n<p>7. РАЗРЕШЕНИЕ СПОРОВ7.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем и Администрацией Сайта, обязательным является предъявление претензии (письменного предложения о досудебном урегулировании спора).7.2.Получатель претензии в течение 30 календарных дней со дня получения претензии, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.7.3. При не достижении соглашения спор будет передан на рассмотрение в судебный орган в соответствии с действующим законодательством Российской Федерации.7.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией Сайта применяется действующее законодательство Российской Федерации.8. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ8.1. Администрация Сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя при соблюдении требований действующего законодательства в области персональных данных;8.2. Все предложения или вопросы по настоящей Политике конфиденциальности следует направлять на электронную почту ООО «КИП ЛУКИНГ»: <span style=\"color: #ff9900;\"><a class=\"help-link\" style=\"color: #ff9900;\" href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.8.3.</span> Действующая Политика конфиденциальности размещена на странице Сайта по адресу: <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"https://keeplooking.ru/obrabotka-dannykh/\">http://keeplooking.ru/obrabotka-dannykh</a>.</span></p>', 'Политика Конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-06 09:52:36', '2020-10-06 09:52:36', '', 3, 'http://cosmedoc.local/3-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2020-10-06 09:53:38', '2020-10-06 09:53:38', '<h1 style=\"text-align: center;\">ПОЛИТИКА\nКОНФИДЕНЦИАЛЬНОСТИ</h1>\n\n<hr />\n\n<h2>ПОЛОЖЕНИЕ ОБ ОБРАБОТКЕ\nПЕРСОНАЛЬНЫХ ДАННЫХ</h2>\nНастоящее Положение об обработке персональных данных (далее – Политика конфиденциальности) применяется Обществом с ограниченной ответственностью «КИП ЛУКИНГ» (ИНН/КПП 7724471511 / 772401001, далее – ООО «КИП ЛУКИНГ») в соответствии с положениями Федерального закона от 27.07.2006 № 152-ФЗ «О персональных данных» (далее – ФЗ «О персональных данных») и действует в отношении всей информации, которую Интернет-магазин «КИП ЛУКИНГ», расположенный на доменном имени http://keeplooking.online (включая все поддоменные имена, далее - Сайт), может получить о Пользователе во время использования Сайта, программ и продуктов Сайта.\n<h2>1. ОСНОВНЫЕ ТЕРМИНЫ</h2>\n1.1 В настоящей Политике конфиденциальности используются следующие термины:1.1.1. «Администрация Сайта» – уполномоченные сотрудники на управления Сайтом, действующие от ООО «КИП ЛУКИНГ», которые организуют и (или) осуществляют обработку персональных данных, а также определяют цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.1.1.2. «Персональные данные» - любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных, Пользователю).1.1.3. «Обработка персональных данных» - любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.1.1.4. «Конфиденциальность персональных данных» - обязательное для соблюдения Администрацией Сайта или иным получившим доступ к персональным данным лицом требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания.1.1.5. «Пользователь» – лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.1.1.6. «Cookies» — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.1.1.7. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.1.1.8. «Публичная оферта» - публичное предложение ООО «КИП ЛУКИНГ», адресованное Пользователям, заключить с ним договор купли-продажи на указанных в таком предложении условиях, в соответствии со статьей 437 Гражданского кодекса Российской Федерации, размещённое на сайте <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"http://keeplooking.ru/\">http://keeplooking.ru</a>.</span>\n<h2>2. ОБЩИЕ ПОЛОЖЕНИЯ</h2>\n2.1. Целью настоящей Политики конфиденциальности является обеспечение надлежащей защиты информации о Пользователях, в том числе их Персональных данных, от несанкционированного доступа и разглашения.2.2. Действие настоящей Политики конфиденциальности не распространяется на отношения, которые не регулируются ФЗ «О персональных данных», а также связанные с обработкой персональных сотрудников ООО «КИП ЛУКИНГ».2.3. Администрация Сайта осуществляет обработку следующих персональных данных, предоставляемых Пользователем путём заполнения регистрационной формы для осуществления обратного звонкаи формы оформления заказа на Сайте:\n<ul>\n 	<li>1) фамилию, имя, отчество Пользователей;</li>\n 	<li>2) номер контактного телефона;</li>\n 	<li>3) адрес электронной почты;</li>\n 	<li>4) адрес доставки заказа.</li>\n</ul>\nПри получении персональных данных, не указанных в настоящем пункте, такие данные подлежат немедленному уничтожению лицом, непреднамеренно получившим их, за исключением данных, указанных в п. 3.4 настоящей Политики конфиденциальности.2.4. Администрация Сайта осуществляет обработку персональных данных Пользователей в следующих целях:\n<ul>\n 	<li>1) для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте, в том числе для осуществления обработки и доставки заказов покупателей, информирования Пользователей о ходе исполнения договора ООО «КИП ЛУКИНГ» путём направления СМС и e-mail уведомлений;</li>\n 	<li>2) идентификации поступающих от Пользователей платежей в адрес ООО «КИП ЛУКИНГ» в целях исполнения заключенного между ООО «КИП ЛУКИНГ»и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\n 	<li>3) предоставления Пользователю технической и клиентской поддержки по вопросам исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\n 	<li>4) в иных целях, для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте,в случае, если соответствующие действия Оператора не противоречат действующему законодательству, деятельности Оператора, и на проведение указанной обработки получено согласие Субъекта персональных данных.</li>\n 	<li>5) создания Пользователем учетной записи на Сайте в целях исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\n</ul>\n2.5. Администрация Сайта осуществляет обработку персональных данных Пользователей персональных посредством совершения любого действия (операции) или совокупности действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение.2.6. Использование Пользователем Сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.2.7. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование Сайта.2.8.Настоящая Политика конфиденциальности применяется только к Сайту. Администрация Сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на Сайте.2.9. Администрация Сайта не проверяет достоверность персональных данных, предоставляемых Пользователем Сайта.Однако Администрация Сайта исходит из того, что пользователь предоставляет достоверную и достаточную персональную информацию по вопросам, предлагаемым в формах, и поддерживает эту информацию в актуальном состоянии.3. ПРЕДМЕТ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ3.1. Настоящая Политика конфиденциальности устанавливает обязательства Администрации Сайта по неразглашению и обеспечению режима защиты конфиденциальности персональных данных, которые Пользователь предоставляет по запросу Администрации сайта при оформлении заказа для заключения договора согласно условиям Публичной оферты, размещённой на Сайте по адресу:<a href=\"https://keeplooking.ru/dogovor-oferty/\">keeplooking.ru/dogovor-oferty</a>.3.2. Администрация Сайта защищает данные, которые автоматически передаются в процессе просмотра рекламных блоков и при посещении страниц, на которых установлен статистический скрипт системы(«пиксель»): · IP адрес; · информация из cookies; · информация о браузере (или иной программе, которая осуществляет доступ к показу рекламы); · время доступа; · адрес страницы, на которой расположен рекламный блок; · реферер (адрес предыдущей страницы).3.3. Отключение cookies может повлечь невозможность доступа к частям сайта Сайта, требующим авторизации.3.4. Любая иная персональная информация неоговоренная выше (история покупок, используемые браузеры и операционные системы и т.д.) подлежит надежному хранению и нераспространению, за исключением случаев, предусмотренных в п.п. 4.2. и 4.3. настоящей Политики конфиденциальности.4. СПОСОБЫ И СРОКИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ4.1. Обработка персональных данных Пользователя осуществляется без ограничения срока, любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств.4.2. Пользователь соглашается с тем, что Администрация Сайта вправе передавать персональные данные третьим лицам, в частности, курьерским службам, организациями почтовой и иной связи, исключительно в целях взаимодействия в рамках исполнения договора, заключенного с Пользователем через принятие им условий Публичной оферты на Сайте.4.3. Персональные данные Пользователя могут быть переданы уполномоченным органам государственной власти Российской Федерации только по основаниям и в порядке, установленным законодательством Российской Федерации.4.4. При утрате или разглашении персональных данных Администрация Сайта информирует Пользователя об утрате или разглашении персональных данных.4.5. Администрация Сайта принимает необходимые организационные и технические меры для защиты персональной информации Пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий третьих лиц.4.6. Администрация Сайта совместно с Пользователем принимает все необходимые меры по предотвращению убытков или иных отрицательных последствий, вызванных утратой или разглашением персональных данных Пользователя.5. ОБЯЗАТЕЛЬСТВА СТОРОН5.1. В порядке пользования Сайтом Пользователь:\n<ul>\n 	<li>1) предоставляет информацию о персональных данных, необходимую для пользования Сайтом и/или заключения договора с ООО «КИП ЛУКИНГ» согласно условиям Публичной оферты, указанным на Сайте;</li>\n 	<li>2) обновляет, дополняет предоставленную информацию о персональных данных в случае изменения данной информации;</li>\n 	<li>3) уведомляет Администрацию Сайта о согласии на обработку персональных данных, если нажимает кнопку «Оформить заказ» на последнем этапе оформления Заказа на Сайте или либо предоставление персональных данных уполномоченному сотруднику по телефону, будет считаться предоставлением согласия на обработку персональных данных Пользователя, приравненному к уведомлению, составленному в простой письменной форме. Если Покупатель не нажал кнопку «Оформить заказ» или не предоставил согласие Оператору по телефону, это означает, что Покупатель не согласен с условиями Политики конфиденциальности, что делает невозможным дальнейшее сотрудничество Пользователя и ООО «КИП ЛУКИНГ» с целью заключения договора согласно условиям Публичной оферты, указанным на Сайте.</li>\n</ul>\n5.2. Администрация сайта обязана:\n<ul>\n 	<li>1) использовать полученную информацию исключительно для целей, указанных в настоящей Политике конфиденциальности;</li>\n 	<li>2) обеспечить хранение конфиденциальной информации в тайне, не разглашать без предварительного письменного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя, за исключением п.п. 4.2. и 4.3. настоящей Политики Конфиденциальности.</li>\n 	<li>3) принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.</li>\n 	<li>4) осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.</li>\n</ul>\n6. ОТВЕТСТВЕННОСТЬ СТОРОН6.1. Администрация Сайта, не исполнившая свои обязательства, несёт ответственность за убытки, понесённые Пользователем в связи с неправомерным использованием персональных данных, в соответствии с законодательством Российской Федерации, за исключением случаев, предусмотренных п.п. 4.2., 4.3. и 6.2. настоящей Политики конфиденциальности.6.2. В случае утраты или разглашения персональных данных Администрация Сайта не несёт ответственность, если данная информация:\n<ul>\n 	<li>1) стала публичным достоянием до её утраты или разглашения;</li>\n 	<li>2) была получена от третьей стороны до момента её получения Администрацией Сайта;</li>\n 	<li>3) была разглашена с согласия Пользователя.</li>\n</ul>\n7. РАЗРЕШЕНИЕ СПОРОВ\n\n7.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем и Администрацией Сайта, обязательным является предъявление претензии (письменного предложения о досудебном урегулировании спора).\n\n7.2.Получатель претензии в течение 30 календарных дней со дня получения претензии, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.\n\n7.3. При не достижении соглашения спор будет передан на рассмотрение в судебный орган в соответствии с действующим законодательством Российской Федерации.\n\n7.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией Сайта применяется действующее законодательство Российской Федерации.8. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ8.1. Администрация Сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя при соблюдении требований действующего законодательства в области персональных данных;8.2. Все предложения или вопросы по настоящей Политике конфиденциальности следует направлять на электронную почту ООО «КИП ЛУКИНГ»: <span style=\"color: #ff9900;\"><a class=\"help-link\" style=\"color: #ff9900;\" href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.8.3.</span> Действующая Политика конфиденциальности размещена на странице Сайта по адресу: <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"https://keeplooking.ru/obrabotka-dannykh/\">http://keeplooking.ru/obrabotka-dannykh</a>.</span>', 'Политика Конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-autosave-v1', '', '', '2020-10-06 09:53:38', '2020-10-06 09:53:38', '', 3, 'http://cosmedoc.local/3-autosave-v1/', 0, 'revision', '', 0),
(196, 1, '2020-10-06 09:53:52', '2020-10-06 09:53:52', '<h1 style=\"text-align: center;\">ПОЛИТИКА\r\nКОНФИДЕНЦИАЛЬНОСТИ</h1>\r\n\r\n<hr />\r\n\r\n<h2>ПОЛОЖЕНИЕ ОБ ОБРАБОТКЕ\r\nПЕРСОНАЛЬНЫХ ДАННЫХ</h2>\r\nНастоящее Положение об обработке персональных данных (далее – Политика конфиденциальности) применяется Обществом с ограниченной ответственностью «КИП ЛУКИНГ» (ИНН/КПП 7724471511 / 772401001, далее – ООО «КИП ЛУКИНГ») в соответствии с положениями Федерального закона от 27.07.2006 № 152-ФЗ «О персональных данных» (далее – ФЗ «О персональных данных») и действует в отношении всей информации, которую Интернет-магазин «КИП ЛУКИНГ», расположенный на доменном имени http://keeplooking.online (включая все поддоменные имена, далее - Сайт), может получить о Пользователе во время использования Сайта, программ и продуктов Сайта.\r\n<h2>1. ОСНОВНЫЕ ТЕРМИНЫ</h2>\r\n1.1 В настоящей Политике конфиденциальности используются следующие термины:1.1.1. «Администрация Сайта» – уполномоченные сотрудники на управления Сайтом, действующие от ООО «КИП ЛУКИНГ», которые организуют и (или) осуществляют обработку персональных данных, а также определяют цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.1.1.2. «Персональные данные» - любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных, Пользователю).1.1.3. «Обработка персональных данных» - любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.1.1.4. «Конфиденциальность персональных данных» - обязательное для соблюдения Администрацией Сайта или иным получившим доступ к персональным данным лицом требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания.1.1.5. «Пользователь» – лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.1.1.6. «Cookies» — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.1.1.7. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.1.1.8. «Публичная оферта» - публичное предложение ООО «КИП ЛУКИНГ», адресованное Пользователям, заключить с ним договор купли-продажи на указанных в таком предложении условиях, в соответствии со статьей 437 Гражданского кодекса Российской Федерации, размещённое на сайте <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"http://keeplooking.ru/\">http://keeplooking.ru</a>.</span>\r\n<h2>2. ОБЩИЕ ПОЛОЖЕНИЯ</h2>\r\n2.1. Целью настоящей Политики конфиденциальности является обеспечение надлежащей защиты информации о Пользователях, в том числе их Персональных данных, от несанкционированного доступа и разглашения.2.2. Действие настоящей Политики конфиденциальности не распространяется на отношения, которые не регулируются ФЗ «О персональных данных», а также связанные с обработкой персональных сотрудников ООО «КИП ЛУКИНГ».2.3. Администрация Сайта осуществляет обработку следующих персональных данных, предоставляемых Пользователем путём заполнения регистрационной формы для осуществления обратного звонкаи формы оформления заказа на Сайте:\r\n<ul>\r\n 	<li>1) фамилию, имя, отчество Пользователей;</li>\r\n 	<li>2) номер контактного телефона;</li>\r\n 	<li>3) адрес электронной почты;</li>\r\n 	<li>4) адрес доставки заказа.</li>\r\n</ul>\r\nПри получении персональных данных, не указанных в настоящем пункте, такие данные подлежат немедленному уничтожению лицом, непреднамеренно получившим их, за исключением данных, указанных в п. 3.4 настоящей Политики конфиденциальности.2.4. Администрация Сайта осуществляет обработку персональных данных Пользователей в следующих целях:\r\n<ul>\r\n 	<li>1) для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте, в том числе для осуществления обработки и доставки заказов покупателей, информирования Пользователей о ходе исполнения договора ООО «КИП ЛУКИНГ» путём направления СМС и e-mail уведомлений;</li>\r\n 	<li>2) идентификации поступающих от Пользователей платежей в адрес ООО «КИП ЛУКИНГ» в целях исполнения заключенного между ООО «КИП ЛУКИНГ»и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n 	<li>3) предоставления Пользователю технической и клиентской поддержки по вопросам исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n 	<li>4) в иных целях, для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте,в случае, если соответствующие действия Оператора не противоречат действующему законодательству, деятельности Оператора, и на проведение указанной обработки получено согласие Субъекта персональных данных.</li>\r\n 	<li>5) создания Пользователем учетной записи на Сайте в целях исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n</ul>\r\n2.5. Администрация Сайта осуществляет обработку персональных данных Пользователей персональных посредством совершения любого действия (операции) или совокупности действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение.2.6. Использование Пользователем Сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.2.7. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование Сайта.2.8.Настоящая Политика конфиденциальности применяется только к Сайту. Администрация Сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на Сайте.2.9. Администрация Сайта не проверяет достоверность персональных данных, предоставляемых Пользователем Сайта.Однако Администрация Сайта исходит из того, что пользователь предоставляет достоверную и достаточную персональную информацию по вопросам, предлагаемым в формах, и поддерживает эту информацию в актуальном состоянии.3. ПРЕДМЕТ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ3.1. Настоящая Политика конфиденциальности устанавливает обязательства Администрации Сайта по неразглашению и обеспечению режима защиты конфиденциальности персональных данных, которые Пользователь предоставляет по запросу Администрации сайта при оформлении заказа для заключения договора согласно условиям Публичной оферты, размещённой на Сайте по адресу:<a href=\"https://keeplooking.ru/dogovor-oferty/\">keeplooking.ru/dogovor-oferty</a>.3.2. Администрация Сайта защищает данные, которые автоматически передаются в процессе просмотра рекламных блоков и при посещении страниц, на которых установлен статистический скрипт системы(«пиксель»): · IP адрес; · информация из cookies; · информация о браузере (или иной программе, которая осуществляет доступ к показу рекламы); · время доступа; · адрес страницы, на которой расположен рекламный блок; · реферер (адрес предыдущей страницы).3.3. Отключение cookies может повлечь невозможность доступа к частям сайта Сайта, требующим авторизации.3.4. Любая иная персональная информация неоговоренная выше (история покупок, используемые браузеры и операционные системы и т.д.) подлежит надежному хранению и нераспространению, за исключением случаев, предусмотренных в п.п. 4.2. и 4.3. настоящей Политики конфиденциальности.4. СПОСОБЫ И СРОКИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ4.1. Обработка персональных данных Пользователя осуществляется без ограничения срока, любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств.4.2. Пользователь соглашается с тем, что Администрация Сайта вправе передавать персональные данные третьим лицам, в частности, курьерским службам, организациями почтовой и иной связи, исключительно в целях взаимодействия в рамках исполнения договора, заключенного с Пользователем через принятие им условий Публичной оферты на Сайте.4.3. Персональные данные Пользователя могут быть переданы уполномоченным органам государственной власти Российской Федерации только по основаниям и в порядке, установленным законодательством Российской Федерации.4.4. При утрате или разглашении персональных данных Администрация Сайта информирует Пользователя об утрате или разглашении персональных данных.4.5. Администрация Сайта принимает необходимые организационные и технические меры для защиты персональной информации Пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий третьих лиц.4.6. Администрация Сайта совместно с Пользователем принимает все необходимые меры по предотвращению убытков или иных отрицательных последствий, вызванных утратой или разглашением персональных данных Пользователя.5. ОБЯЗАТЕЛЬСТВА СТОРОН5.1. В порядке пользования Сайтом Пользователь:\r\n<ul>\r\n 	<li>1) предоставляет информацию о персональных данных, необходимую для пользования Сайтом и/или заключения договора с ООО «КИП ЛУКИНГ» согласно условиям Публичной оферты, указанным на Сайте;</li>\r\n 	<li>2) обновляет, дополняет предоставленную информацию о персональных данных в случае изменения данной информации;</li>\r\n 	<li>3) уведомляет Администрацию Сайта о согласии на обработку персональных данных, если нажимает кнопку «Оформить заказ» на последнем этапе оформления Заказа на Сайте или либо предоставление персональных данных уполномоченному сотруднику по телефону, будет считаться предоставлением согласия на обработку персональных данных Пользователя, приравненному к уведомлению, составленному в простой письменной форме. Если Покупатель не нажал кнопку «Оформить заказ» или не предоставил согласие Оператору по телефону, это означает, что Покупатель не согласен с условиями Политики конфиденциальности, что делает невозможным дальнейшее сотрудничество Пользователя и ООО «КИП ЛУКИНГ» с целью заключения договора согласно условиям Публичной оферты, указанным на Сайте.</li>\r\n</ul>\r\n5.2. Администрация сайта обязана:\r\n<ul>\r\n 	<li>1) использовать полученную информацию исключительно для целей, указанных в настоящей Политике конфиденциальности;</li>\r\n 	<li>2) обеспечить хранение конфиденциальной информации в тайне, не разглашать без предварительного письменного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя, за исключением п.п. 4.2. и 4.3. настоящей Политики Конфиденциальности.</li>\r\n 	<li>3) принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.</li>\r\n 	<li>4) осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.</li>\r\n</ul>\r\n6. ОТВЕТСТВЕННОСТЬ СТОРОН6.1. Администрация Сайта, не исполнившая свои обязательства, несёт ответственность за убытки, понесённые Пользователем в связи с неправомерным использованием персональных данных, в соответствии с законодательством Российской Федерации, за исключением случаев, предусмотренных п.п. 4.2., 4.3. и 6.2. настоящей Политики конфиденциальности.6.2. В случае утраты или разглашения персональных данных Администрация Сайта не несёт ответственность, если данная информация:\r\n<ul>\r\n 	<li>1) стала публичным достоянием до её утраты или разглашения;</li>\r\n 	<li>2) была получена от третьей стороны до момента её получения Администрацией Сайта;</li>\r\n 	<li>3) была разглашена с согласия Пользователя.</li>\r\n</ul>\r\n7. РАЗРЕШЕНИЕ СПОРОВ\r\n\r\n7.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем и Администрацией Сайта, обязательным является предъявление претензии (письменного предложения о досудебном урегулировании спора).\r\n\r\n7.2.Получатель претензии в течение 30 календарных дней со дня получения претензии, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.\r\n\r\n7.3. При не достижении соглашения спор будет передан на рассмотрение в судебный орган в соответствии с действующим законодательством Российской Федерации.\r\n\r\n7.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией Сайта применяется действующее законодательство Российской Федерации.\r\n\r\n8. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ\r\n\r\n8.1. Администрация Сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя при соблюдении требований действующего законодательства в области персональных данных;\r\n\r\n8.2. Все предложения или вопросы по настоящей Политике конфиденциальности следует направлять на электронную почту ООО «КИП ЛУКИНГ»: <span style=\"color: #ff9900;\"><a class=\"help-link\" style=\"color: #ff9900;\" href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.8.3.</span> Действующая Политика конфиденциальности размещена на странице Сайта по адресу: <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"https://keeplooking.ru/obrabotka-dannykh/\">http://keeplooking.ru/obrabotka-dannykh</a>.</span>\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Политика Конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-06 09:53:52', '2020-10-06 09:53:52', '', 3, 'http://cosmedoc.local/3-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wss_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(197, 1, '2020-10-06 09:54:35', '2020-10-06 09:54:35', '<h1 style=\"text-align: center;\">ПОЛИТИКА\r\nКОНФИДЕНЦИАЛЬНОСТИ</h1>\r\n\r\n<hr />\r\n\r\n<h2>ПОЛОЖЕНИЕ ОБ ОБРАБОТКЕ\r\nПЕРСОНАЛЬНЫХ ДАННЫХ</h2>\r\nНастоящее Положение об обработке персональных данных (далее – Политика конфиденциальности) применяется Обществом с ограниченной ответственностью «КИП ЛУКИНГ» (ИНН/КПП 7724471511 / 772401001, далее – ООО «КИП ЛУКИНГ») в соответствии с положениями Федерального закона от 27.07.2006 № 152-ФЗ «О персональных данных» (далее – ФЗ «О персональных данных») и действует в отношении всей информации, которую Интернет-магазин «КИП ЛУКИНГ», расположенный на доменном имени http://keeplooking.online (включая все поддоменные имена, далее - Сайт), может получить о Пользователе во время использования Сайта, программ и продуктов Сайта.\r\n<h2>1. ОСНОВНЫЕ ТЕРМИНЫ</h2>\r\n1.1 В настоящей Политике конфиденциальности используются следующие термины:1.1.1. «Администрация Сайта» – уполномоченные сотрудники на управления Сайтом, действующие от ООО «КИП ЛУКИНГ», которые организуют и (или) осуществляют обработку персональных данных, а также определяют цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.1.1.2. «Персональные данные» - любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных, Пользователю).1.1.3. «Обработка персональных данных» - любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.1.1.4. «Конфиденциальность персональных данных» - обязательное для соблюдения Администрацией Сайта или иным получившим доступ к персональным данным лицом требование не допускать их распространения без согласия субъекта персональных данных или наличия иного законного основания.1.1.5. «Пользователь» – лицо, имеющее доступ к Сайту, посредством сети Интернет и использующее Сайт.1.1.6. «Cookies» — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.1.1.7. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.1.1.8. «Публичная оферта» - публичное предложение ООО «КИП ЛУКИНГ», адресованное Пользователям, заключить с ним договор купли-продажи на указанных в таком предложении условиях, в соответствии со статьей 437 Гражданского кодекса Российской Федерации, размещённое на сайте <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"http://keeplooking.ru/\">http://keeplooking.ru</a>.</span>\r\n<h2>2. ОБЩИЕ ПОЛОЖЕНИЯ</h2>\r\n2.1. Целью настоящей Политики конфиденциальности является обеспечение надлежащей защиты информации о Пользователях, в том числе их Персональных данных, от несанкционированного доступа и разглашения.2.2. Действие настоящей Политики конфиденциальности не распространяется на отношения, которые не регулируются ФЗ «О персональных данных», а также связанные с обработкой персональных сотрудников ООО «КИП ЛУКИНГ».2.3. Администрация Сайта осуществляет обработку следующих персональных данных, предоставляемых Пользователем путём заполнения регистрационной формы для осуществления обратного звонкаи формы оформления заказа на Сайте:\r\n<ul>\r\n 	<li>1) фамилию, имя, отчество Пользователей;</li>\r\n 	<li>2) номер контактного телефона;</li>\r\n 	<li>3) адрес электронной почты;</li>\r\n 	<li>4) адрес доставки заказа.</li>\r\n</ul>\r\nПри получении персональных данных, не указанных в настоящем пункте, такие данные подлежат немедленному уничтожению лицом, непреднамеренно получившим их, за исключением данных, указанных в п. 3.4 настоящей Политики конфиденциальности.2.4. Администрация Сайта осуществляет обработку персональных данных Пользователей в следующих целях:\r\n<ul>\r\n 	<li>1) для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте, в том числе для осуществления обработки и доставки заказов покупателей, информирования Пользователей о ходе исполнения договора ООО «КИП ЛУКИНГ» путём направления СМС и e-mail уведомлений;</li>\r\n 	<li>2) идентификации поступающих от Пользователей платежей в адрес ООО «КИП ЛУКИНГ» в целях исполнения заключенного между ООО «КИП ЛУКИНГ»и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n 	<li>3) предоставления Пользователю технической и клиентской поддержки по вопросам исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n 	<li>4) в иных целях, для исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте,в случае, если соответствующие действия Оператора не противоречат действующему законодательству, деятельности Оператора, и на проведение указанной обработки получено согласие Субъекта персональных данных.</li>\r\n 	<li>5) создания Пользователем учетной записи на Сайте в целях исполнения заключенного между ООО «КИП ЛУКИНГ» и Пользователем договора согласно условиям Публичной оферты, размещённой на Сайте;</li>\r\n</ul>\r\n2.5. Администрация Сайта осуществляет обработку персональных данных Пользователей персональных посредством совершения любого действия (операции) или совокупности действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение.2.6. Использование Пользователем Сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.2.7. В случае несогласия с условиями Политики конфиденциальности Пользователь должен прекратить использование Сайта.2.8.Настоящая Политика конфиденциальности применяется только к Сайту. Администрация Сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на Сайте.2.9. Администрация Сайта не проверяет достоверность персональных данных, предоставляемых Пользователем Сайта.Однако Администрация Сайта исходит из того, что пользователь предоставляет достоверную и достаточную персональную информацию по вопросам, предлагаемым в формах, и поддерживает эту информацию в актуальном состоянии.3. ПРЕДМЕТ ПОЛИТИКИ КОНФИДЕНЦИАЛЬНОСТИ3.1. Настоящая Политика конфиденциальности устанавливает обязательства Администрации Сайта по неразглашению и обеспечению режима защиты конфиденциальности персональных данных, которые Пользователь предоставляет по запросу Администрации сайта при оформлении заказа для заключения договора согласно условиям Публичной оферты, размещённой на Сайте по адресу:<a href=\"https://keeplooking.ru/dogovor-oferty/\">keeplooking.ru/dogovor-oferty</a>.3.2. Администрация Сайта защищает данные, которые автоматически передаются в процессе просмотра рекламных блоков и при посещении страниц, на которых установлен статистический скрипт системы(«пиксель»): · IP адрес; · информация из cookies; · информация о браузере (или иной программе, которая осуществляет доступ к показу рекламы); · время доступа; · адрес страницы, на которой расположен рекламный блок; · реферер (адрес предыдущей страницы).3.3. Отключение cookies может повлечь невозможность доступа к частям сайта Сайта, требующим авторизации.3.4. Любая иная персональная информация неоговоренная выше (история покупок, используемые браузеры и операционные системы и т.д.) подлежит надежному хранению и нераспространению, за исключением случаев, предусмотренных в п.п. 4.2. и 4.3. настоящей Политики конфиденциальности.4. СПОСОБЫ И СРОКИ ОБРАБОТКИ ПЕРСОНАЛЬНОЙ ИНФОРМАЦИИ4.1. Обработка персональных данных Пользователя осуществляется без ограничения срока, любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств.4.2. Пользователь соглашается с тем, что Администрация Сайта вправе передавать персональные данные третьим лицам, в частности, курьерским службам, организациями почтовой и иной связи, исключительно в целях взаимодействия в рамках исполнения договора, заключенного с Пользователем через принятие им условий Публичной оферты на Сайте.4.3. Персональные данные Пользователя могут быть переданы уполномоченным органам государственной власти Российской Федерации только по основаниям и в порядке, установленным законодательством Российской Федерации.4.4. При утрате или разглашении персональных данных Администрация Сайта информирует Пользователя об утрате или разглашении персональных данных.4.5. Администрация Сайта принимает необходимые организационные и технические меры для защиты персональной информации Пользователя от неправомерного или случайного доступа, уничтожения, изменения, блокирования, копирования, распространения, а также от иных неправомерных действий третьих лиц.4.6. Администрация Сайта совместно с Пользователем принимает все необходимые меры по предотвращению убытков или иных отрицательных последствий, вызванных утратой или разглашением персональных данных Пользователя.5. ОБЯЗАТЕЛЬСТВА СТОРОН5.1. В порядке пользования Сайтом Пользователь:\r\n<ul>\r\n 	<li>1) предоставляет информацию о персональных данных, необходимую для пользования Сайтом и/или заключения договора с ООО «КИП ЛУКИНГ» согласно условиям Публичной оферты, указанным на Сайте;</li>\r\n 	<li>2) обновляет, дополняет предоставленную информацию о персональных данных в случае изменения данной информации;</li>\r\n 	<li>3) уведомляет Администрацию Сайта о согласии на обработку персональных данных, если нажимает кнопку «Оформить заказ» на последнем этапе оформления Заказа на Сайте или либо предоставление персональных данных уполномоченному сотруднику по телефону, будет считаться предоставлением согласия на обработку персональных данных Пользователя, приравненному к уведомлению, составленному в простой письменной форме. Если Покупатель не нажал кнопку «Оформить заказ» или не предоставил согласие Оператору по телефону, это означает, что Покупатель не согласен с условиями Политики конфиденциальности, что делает невозможным дальнейшее сотрудничество Пользователя и ООО «КИП ЛУКИНГ» с целью заключения договора согласно условиям Публичной оферты, указанным на Сайте.</li>\r\n</ul>\r\n5.2. Администрация сайта обязана:\r\n<ul>\r\n 	<li>1) использовать полученную информацию исключительно для целей, указанных в настоящей Политике конфиденциальности;</li>\r\n 	<li>2) обеспечить хранение конфиденциальной информации в тайне, не разглашать без предварительного письменного разрешения Пользователя, а также не осуществлять продажу, обмен, опубликование, либо разглашение иными возможными способами переданных персональных данных Пользователя, за исключением п.п. 4.2. и 4.3. настоящей Политики Конфиденциальности.</li>\r\n 	<li>3) принимать меры предосторожности для защиты конфиденциальности персональных данных Пользователя согласно порядку, обычно используемого для защиты такого рода информации в существующем деловом обороте.</li>\r\n 	<li>4) осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления недостоверных персональных данных или неправомерных действий.</li>\r\n</ul>\r\n6. ОТВЕТСТВЕННОСТЬ СТОРОН6.1. Администрация Сайта, не исполнившая свои обязательства, несёт ответственность за убытки, понесённые Пользователем в связи с неправомерным использованием персональных данных, в соответствии с законодательством Российской Федерации, за исключением случаев, предусмотренных п.п. 4.2., 4.3. и 6.2. настоящей Политики конфиденциальности.6.2. В случае утраты или разглашения персональных данных Администрация Сайта не несёт ответственность, если данная информация:\r\n<ul>\r\n 	<li>1) стала публичным достоянием до её утраты или разглашения;</li>\r\n 	<li>2) была получена от третьей стороны до момента её получения Администрацией Сайта;</li>\r\n 	<li>3) была разглашена с согласия Пользователя.</li>\r\n</ul>\r\n7. РАЗРЕШЕНИЕ СПОРОВ\r\n\r\n7.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем и Администрацией Сайта, обязательным является предъявление претензии (письменного предложения о досудебном урегулировании спора).\r\n\r\n7.2.Получатель претензии в течение 30 календарных дней со дня получения претензии, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.\r\n\r\n7.3. При не достижении соглашения спор будет передан на рассмотрение в судебный орган в соответствии с действующим законодательством Российской Федерации.\r\n\r\n7.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией Сайта применяется действующее законодательство Российской Федерации.\r\n\r\n8. ДОПОЛНИТЕЛЬНЫЕ УСЛОВИЯ\r\n\r\n8.1. Администрация Сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя при соблюдении требований действующего законодательства в области персональных данных;\r\n\r\n8.2. Все предложения или вопросы по настоящей Политике конфиденциальности следует направлять на электронную почту ООО «КИП ЛУКИНГ»: <span style=\"color: #ff9900;\"><a class=\"help-link\" style=\"color: #ff9900;\" href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>.8.3.</span> Действующая Политика конфиденциальности размещена на странице Сайта по адресу: <span style=\"color: #ff9900;\"><a style=\"color: #ff9900;\" href=\"https://keeplooking.ru/obrabotka-dannykh/\">http://keeplooking.ru/obrabotka-dannykh</a>.</span>\r\n\r\n&nbsp;\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Политика Конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-10-06 09:54:35', '2020-10-06 09:54:35', '', 3, 'http://cosmedoc.local/3-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2020-10-06 14:57:17', '2020-10-06 14:57:17', '<!-- wp:shortcode -->\r\n<p>[ti_wishlistsview]</p>\r\n<!-- /wp:shortcode -->', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2020-10-06 15:30:29', '2020-10-06 15:30:29', '', 0, 'http://cosmedoc.local/wishlist/', 0, 'page', '', 0),
(199, 1, '2020-10-06 15:30:29', '2020-10-06 15:30:29', '<!-- wp:shortcode -->\r\n<p>[ti_wishlistsview]</p>\r\n<!-- /wp:shortcode -->', 'Wishlist', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2020-10-06 15:30:29', '2020-10-06 15:30:29', '', 198, 'http://cosmedoc.local/198-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2020-10-07 07:34:38', '2020-10-07 07:34:38', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-10-15 16:35:54', '2020-10-15 16:35:54', '', 0, 'http://cosmedoc.local/?page_id=200', 0, 'page', '', 0),
(201, 1, '2020-10-07 07:34:38', '2020-10-07 07:34:38', '', 'Cart', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2020-10-07 07:34:38', '2020-10-07 07:34:38', '', 200, 'http://cosmedoc.local/200-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2020-10-07 07:34:47', '2020-10-07 07:34:47', '', 'Корзина', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2020-10-07 07:34:47', '2020-10-07 07:34:47', '', 200, 'http://cosmedoc.local/200-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2020-10-07 07:36:33', '2020-10-07 07:36:33', '<strong><code>[woocommerce_cart]</code></strong>', 'Корзина', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2020-10-07 07:36:33', '2020-10-07 07:36:33', '', 200, 'http://cosmedoc.local/200-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2020-10-10 09:36:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-10 09:36:43', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&p=204', 0, 'acf-field-group', '', 0),
(205, 1, '2020-10-10 11:45:57', '2020-10-10 11:45:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'WC: Product (Special labels)', 'wc-product-special-labels', 'publish', 'closed', 'closed', '', 'group_5f819e7f95a0f', '', '', '2020-10-10 12:05:53', '2020-10-10 12:05:53', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=205', 0, 'acf-field-group', '', 0),
(206, 1, '2020-10-10 11:45:57', '2020-10-10 11:45:57', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:3:\"new\";s:14:\"Новинка\";s:9:\"lead_sale\";s:23:\"Лидер продаж\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Специальные пометки товара', 'specific_product_label', 'publish', 'closed', 'closed', '', 'field_5f819ea0c55d2', '', '', '2020-10-10 12:05:53', '2020-10-10 12:05:53', '', 205, 'http://cosmedoc.local/?post_type=acf-field&#038;p=206', 0, 'acf-field', '', 0),
(207, 1, '2020-10-10 14:10:20', '2020-10-10 14:10:20', 'Универсальное питательное масло с экстрактом бергамота и пиона. Можно использовать не только для волос, но и для тела. Интенсивно питает волосы и увлажняет кожу.', 'Крем-масло для волос и тела Пион и Бергамот', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2020-10-10 14:10:20', '2020-10-10 14:10:20', '', 53, 'http://cosmedoc.local/53-autosave-v1/', 0, 'revision', '', 0),
(208, 1, '2020-10-13 07:50:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-13 07:50:32', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=208', 0, 'post', '', 0),
(209, 1, '2020-10-13 13:08:53', '2020-10-13 13:08:53', 'Черное махровое полотенце Balmain Paris Hair Couture с логотипом.', 'Черное махровое полотенце', '', 'publish', 'closed', 'closed', '', 'chernoe-mahrovoe-polotencze', '', '', '2020-10-13 13:08:53', '2020-10-13 13:08:53', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=209', 0, 'product', '', 0),
(210, 1, '2020-10-13 13:07:15', '2020-10-13 13:07:15', '', 'kl_ba058_0', '', 'inherit', 'open', 'closed', '', 'kl_ba058_0', '', '', '2020-10-13 13:07:15', '2020-10-13 13:07:15', '', 209, 'http://cosmedoc.local/wp-content/uploads/2020/10/kl_ba058_0.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2020-10-13 13:07:26', '2020-10-13 13:07:26', '', 'kl_ba058', '', 'inherit', 'open', 'closed', '', 'kl_ba058', '', '', '2020-10-13 13:07:26', '2020-10-13 13:07:26', '', 209, 'http://cosmedoc.local/wp-content/uploads/2020/10/kl_ba058.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2020-10-13 13:07:27', '2020-10-13 13:07:27', '', 'kl_ba058_0', '', 'inherit', 'open', 'closed', '', 'kl_ba058_0-2', '', '', '2020-10-13 13:07:27', '2020-10-13 13:07:27', '', 209, 'http://cosmedoc.local/wp-content/uploads/2020/10/kl_ba058_0-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2020-10-15 12:26:50', '2020-10-15 12:26:50', '', 'Каталог', '', 'publish', 'closed', 'closed', '', 'katalog-3', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=213', 1, 'nav_menu_item', '', 0),
(214, 1, '2020-10-15 12:26:33', '2020-10-15 12:26:33', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'help', '', '', '2020-10-15 18:47:45', '2020-10-15 18:47:45', '', 0, 'http://cosmedoc.local/?page_id=214', 0, 'page', '', 0),
(215, 1, '2020-10-15 12:26:33', '2020-10-15 12:26:33', '', 'Помощь', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2020-10-15 12:26:33', '2020-10-15 12:26:33', '', 214, 'http://cosmedoc.local/214-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2020-10-15 12:27:08', '2020-10-15 12:27:08', ' ', '', '', 'publish', 'closed', 'closed', '', '216', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=216', 6, 'nav_menu_item', '', 0),
(217, 1, '2020-10-15 12:27:08', '2020-10-15 12:27:08', ' ', '', '', 'publish', 'closed', 'closed', '', '217', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=217', 8, 'nav_menu_item', '', 0),
(218, 1, '2020-10-15 12:27:08', '2020-10-15 12:27:08', ' ', '', '', 'publish', 'closed', 'closed', '', '218', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=218', 7, 'nav_menu_item', '', 0),
(219, 1, '2020-10-15 12:28:20', '2020-10-15 12:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '219', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=219', 3, 'nav_menu_item', '', 0),
(220, 1, '2020-10-15 12:28:20', '2020-10-15 12:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '220', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=220', 4, 'nav_menu_item', '', 0),
(221, 1, '2020-10-15 12:28:20', '2020-10-15 12:28:20', ' ', '', '', 'publish', 'closed', 'closed', '', '221', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=221', 5, 'nav_menu_item', '', 0),
(222, 1, '2020-10-15 12:28:20', '2020-10-15 12:28:20', '', 'Все товары', '', 'publish', 'closed', 'closed', '', 'vse-tovary-2', '', '', '2020-10-15 14:27:31', '2020-10-15 14:27:31', '', 0, 'http://cosmedoc.local/?p=222', 2, 'nav_menu_item', '', 0),
(223, 1, '2020-10-15 15:34:33', '2020-10-15 15:34:33', 'Если Вы не нашли ответ на свой вопрос,\nто свяжитесь с нами по почте или телефону\nв рабочее время салона.\n\n<a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a>\n<a href=\"tel:+74993508050\">+7 499 350 80 50</a>', 'Помощь', '', 'inherit', 'closed', 'closed', '', '214-autosave-v1', '', '', '2020-10-15 15:34:33', '2020-10-15 15:34:33', '', 214, 'http://cosmedoc.local/214-autosave-v1/', 0, 'revision', '', 0),
(224, 1, '2020-10-15 16:35:54', '2020-10-15 16:35:54', '[woocommerce_cart]', 'Корзина', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2020-10-15 16:35:54', '2020-10-15 16:35:54', '', 200, 'http://cosmedoc.local/200-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 'Gift Card', '', 'publish', 'open', 'closed', '', 'gift-card', '', '', '2020-10-15 18:12:50', '2020-10-15 18:12:50', '', 0, 'http://cosmedoc.local/product/gift-card/', 0, 'product', '', 0),
(226, 1, '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 'Gift Card - 10руб.', 'Gift Card Amount: 10руб.', 'publish', 'closed', 'closed', '', 'gift-card-10rub', '', '', '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 225, 'http://cosmedoc.local/product/gift-card/', 0, 'product_variation', '', 0),
(227, 1, '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 'Gift Card - 25руб.', 'Gift Card Amount: 25руб.', 'publish', 'closed', 'closed', '', 'gift-card-25rub', '', '', '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 225, 'http://cosmedoc.local/?post_type=product_variation&p=227', 1, 'product_variation', '', 0),
(228, 1, '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 'Gift Card - 50руб.', 'Gift Card Amount: 50руб.', 'publish', 'closed', 'closed', '', 'gift-card-50rub', '', '', '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 225, 'http://cosmedoc.local/?post_type=product_variation&p=228', 2, 'product_variation', '', 0),
(229, 1, '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 'Gift Card - 100руб.', 'Gift Card Amount: 100руб.', 'publish', 'closed', 'closed', '', 'gift-card-100rub', '', '', '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 225, 'http://cosmedoc.local/?post_type=product_variation&p=229', 3, 'product_variation', '', 0),
(230, 1, '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 'pw-gift-card', '', 'inherit', 'open', 'closed', '', 'pw-gift-card', '', '', '2020-10-15 18:12:47', '2020-10-15 18:12:47', '', 225, 'http://cosmedoc.local/wp-content/uploads/2020/10/pw-gift-card.png', 0, 'attachment', 'image/png', 0),
(231, 1, '2020-10-15 18:14:13', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-10-15 18:14:13', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?post_type=product&p=231', 0, 'product', '', 0),
(232, 1, '2020-10-15 18:15:07', '2020-10-15 18:15:07', '', 'Gift Card (Copy)', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2020-10-15 18:20:42', '2020-10-15 18:20:42', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=232', 0, 'product', '', 0),
(233, 1, '2020-10-15 18:15:07', '2020-10-15 18:15:07', '', 'Gift Card (Copy) - 10руб.', 'Gift Card Amount: 10руб.', 'trash', 'closed', 'closed', '', 'gift-card-10rub-11__trashed', '', '', '2020-10-15 18:20:42', '2020-10-15 18:20:42', '', 232, 'http://cosmedoc.local/?post_type=product_variation&#038;p=233', 0, 'product_variation', '', 0),
(234, 1, '2020-10-15 18:15:07', '2020-10-15 18:15:07', '', 'Gift Card (Copy) - 25руб.', 'Gift Card Amount: 25руб.', 'trash', 'closed', 'closed', '', 'gift-card-25rub-26__trashed', '', '', '2020-10-15 18:20:42', '2020-10-15 18:20:42', '', 232, 'http://cosmedoc.local/?post_type=product_variation&#038;p=234', 1, 'product_variation', '', 0),
(235, 1, '2020-10-15 18:15:07', '2020-10-15 18:15:07', '', 'Gift Card (Copy) - 50руб.', 'Gift Card Amount: 50руб.', 'trash', 'closed', 'closed', '', 'gift-card-50rub-51__trashed', '', '', '2020-10-15 18:20:42', '2020-10-15 18:20:42', '', 232, 'http://cosmedoc.local/?post_type=product_variation&#038;p=235', 2, 'product_variation', '', 0),
(236, 1, '2020-10-15 18:15:07', '2020-10-15 18:15:07', '', 'Gift Card (Copy) - 100руб.', 'Gift Card Amount: 100руб.', 'trash', 'closed', 'closed', '', 'gift-card-100rub-101__trashed', '', '', '2020-10-15 18:20:42', '2020-10-15 18:20:42', '', 232, 'http://cosmedoc.local/?post_type=product_variation&#038;p=236', 3, 'product_variation', '', 0),
(237, 1, '2020-10-15 18:15:31', '2020-10-15 18:15:31', '', 'Gift Card (Copy) - 1 000руб.', 'Gift Card Amount: 1 000руб.', 'trash', 'closed', 'closed', '', 'gift-card-copy-1-000rub__trashed', '', '', '2020-10-15 18:20:42', '2020-10-15 18:20:42', '', 232, 'http://cosmedoc.local/?post_type=product_variation&#038;p=237', 4, 'product_variation', '', 0),
(238, 1, '2020-10-15 18:40:15', '2020-10-15 18:40:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:31:\"page-templates/faq-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:6:\"author\";i:6;s:6:\"format\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'FAQ Page Template', 'faq-page-template', 'publish', 'closed', 'closed', '', 'group_5f88945252ac5', '', '', '2020-10-15 18:40:15', '2020-10-15 18:40:15', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=238', 0, 'acf-field-group', '', 0),
(239, 1, '2020-10-15 18:40:15', '2020-10-15 18:40:15', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:29:\"Добавить вопрос\";}', 'Помощь', 'faq', 'publish', 'closed', 'closed', '', 'field_5f889480c06a0', '', '', '2020-10-15 18:40:15', '2020-10-15 18:40:15', '', 238, 'http://cosmedoc.local/?post_type=acf-field&p=239', 0, 'acf-field', '', 0),
(240, 1, '2020-10-15 18:40:15', '2020-10-15 18:40:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вопрос', 'title', 'publish', 'closed', 'closed', '', 'field_5f889712c06a1', '', '', '2020-10-15 18:40:15', '2020-10-15 18:40:15', '', 239, 'http://cosmedoc.local/?post_type=acf-field&p=240', 0, 'acf-field', '', 0),
(241, 1, '2020-10-15 18:40:15', '2020-10-15 18:40:15', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Описания', 'description', 'publish', 'closed', 'closed', '', 'field_5f88972cc06a2', '', '', '2020-10-15 18:40:15', '2020-10-15 18:40:15', '', 239, 'http://cosmedoc.local/?post_type=acf-field&p=241', 1, 'acf-field', '', 0),
(242, 1, '2020-10-15 18:40:15', '2020-10-15 18:40:15', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Контакты', 'contacts', 'publish', 'closed', 'closed', '', 'field_5f88976ec06a3', '', '', '2020-10-15 18:40:15', '2020-10-15 18:40:15', '', 238, 'http://cosmedoc.local/?post_type=acf-field&p=242', 1, 'acf-field', '', 0),
(243, 1, '2020-10-15 18:44:03', '2020-10-15 18:44:03', '', 'Помощь', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2020-10-15 18:44:03', '2020-10-15 18:44:03', '', 214, 'http://cosmedoc.local/214-revision-v1/', 0, 'revision', '', 0),
(244, 1, '2020-10-15 18:47:45', '2020-10-15 18:47:45', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '214-revision-v1', '', '', '2020-10-15 18:47:45', '2020-10-15 18:47:45', '', 214, 'http://cosmedoc.local/214-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_termmeta`
--

CREATE TABLE `wss_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_termmeta`
--

INSERT INTO `wss_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 24, 'order', '3'),
(2, 24, 'display_type', ''),
(3, 24, 'thumbnail_id', '9'),
(4, 25, 'order', '2'),
(5, 25, 'display_type', ''),
(6, 25, 'thumbnail_id', '10'),
(7, 26, 'order', '4'),
(8, 26, 'display_type', ''),
(9, 26, 'thumbnail_id', '11'),
(10, 27, 'order', '5'),
(11, 27, 'display_type', ''),
(12, 27, 'thumbnail_id', '12'),
(13, 28, 'order', '6'),
(14, 28, 'display_type', ''),
(15, 28, 'thumbnail_id', '13'),
(20, 25, 'product_count_product_cat', '6'),
(21, 23, 'product_count_product_cat', '3'),
(22, 34, 'order_pa_strana-proizvoditel', '0'),
(23, 35, 'order_pa_weight', '0'),
(24, 37, 'order_pa_strana-proizvoditel', '0'),
(25, 38, 'order_pa_weight', '0'),
(26, 26, 'product_count_product_cat', '2'),
(27, 40, 'order_pa_strana-proizvoditel', '0'),
(28, 41, 'order_pa_weight', '0'),
(29, 43, 'order_pa_strana-proizvoditel', '0'),
(30, 44, 'order_pa_strana-proizvoditel', '0'),
(31, 45, 'order_pa_weight', '0'),
(32, 24, 'product_count_product_cat', '3'),
(33, 47, 'order_pa_strana-proizvoditel', '0'),
(34, 49, 'order_pa_kolichestvo-tovara', '0'),
(35, 51, 'order_pa_strana-proizvoditel', '0'),
(36, 52, 'order_pa_weight', '0'),
(37, 27, 'product_count_product_cat', '0'),
(38, 28, 'product_count_product_cat', '0'),
(39, 23, 'order', '1'),
(40, 55, 'menu_image', '133'),
(41, 55, '_menu_image', 'field_5f705032bd88e'),
(42, 55, 'menu_title', 'Cosmedoc'),
(43, 55, '_menu_title', 'field_5f705076bd88f'),
(44, 56, 'order', '0'),
(45, 56, 'display_type', ''),
(46, 56, 'thumbnail_id', '0'),
(47, 58, 'order', '0'),
(48, 58, 'display_type', ''),
(49, 58, 'thumbnail_id', '0'),
(50, 56, 'product_count_product_cat', '1'),
(51, 58, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_terms`
--

CREATE TABLE `wss_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_terms`
--

INSERT INTO `wss_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Template', 'template', 0, 0),
(3, 'Option', 'option', 0, 0),
(4, 'Post Type', 'post-type', 0, 0),
(5, 'Flexible Content', 'flexible-content', 0, 0),
(6, 'Block', 'block', 0, 0),
(7, 'Taxonomy', 'taxonomy', 0, 0),
(8, 'User', 'user', 0, 0),
(9, 'Menu Item', 'menu-item', 0, 0),
(10, 'simple', 'simple', 0, 0),
(11, 'grouped', 'grouped', 0, 0),
(12, 'variable', 'variable', 0, 0),
(13, 'external', 'external', 0, 0),
(14, 'exclude-from-search', 'exclude-from-search', 0, 0),
(15, 'exclude-from-catalog', 'exclude-from-catalog', 0, 0),
(16, 'featured', 'featured', 0, 0),
(17, 'outofstock', 'outofstock', 0, 0),
(18, 'rated-1', 'rated-1', 0, 0),
(19, 'rated-2', 'rated-2', 0, 0),
(20, 'rated-3', 'rated-3', 0, 0),
(21, 'rated-4', 'rated-4', 0, 0),
(22, 'rated-5', 'rated-5', 0, 0),
(23, 'Uncategorized', 'uncategorized', 0, 0),
(24, 'Лицо', 'liczo', 0, 0),
(25, 'Волосы', 'volosy', 0, 0),
(26, 'Тело', 'telo', 0, 0),
(27, 'Аксессуары', 'aksessuary', 0, 0),
(28, 'Атмосфера', 'atmosfera', 0, 0),
(30, 'Rated green', 'rated-green', 0, 0),
(31, 'Rated Green', 'rated-green', 0, 0),
(32, 'Rated Green', 'rated-green', 0, 0),
(33, 'LA SULTANE DE SABA', 'la-sultane-de-saba', 0, 0),
(34, 'Франция', 'francziya', 0, 0),
(35, '300 мл', '300-ml', 0, 0),
(36, 'AUTHENTIC BEAUTY CONCEPT', 'authentic-beauty-concept', 0, 0),
(37, 'Германия', 'germaniya', 0, 0),
(38, '100 мл', '100-ml', 0, 0),
(39, '22|11', '2211', 0, 0),
(40, 'Россия', 'rossiya', 0, 0),
(41, '125 мл', '125-ml', 0, 0),
(42, 'KEVIN MURPHY', 'kevin-murphy', 0, 0),
(43, 'Австралия', 'avstraliya', 0, 0),
(44, 'США', 'ssha', 0, 0),
(45, '10 мл', '10-ml', 0, 0),
(46, 'PERRICONE MD', 'perricone-md', 0, 0),
(47, 'Япония', 'yaponiya', 0, 0),
(48, 'PURE LIFT', 'pure-lift', 0, 0),
(49, '1 шт', '1-sht', 0, 0),
(50, 'GENOSYS', 'genosys', 0, 0),
(51, 'Южная Корея', 'yuzhnaya-koreya', 0, 0),
(52, '50 мл', '50-ml', 0, 0),
(53, 'Home Menu', 'home-menu', 0, 0),
(54, 'Footer Menu', 'footer-menu', 0, 0),
(55, 'Mobile Menu', 'mobile-menu', 0, 0),
(56, 'Уход за кожей', 'uhod-za-kozhej', 0, 0),
(57, 'BALMAIN PARIS HAIR COUTURE', 'balmain-paris-hair-couture', 0, 0),
(58, 'Глаза', 'glaza', 0, 0),
(59, 'Main Menu', 'main-menu', 0, 0),
(60, 'PW Gift Card', 'pw-gift-card', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_term_relationships`
--

CREATE TABLE `wss_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_term_relationships`
--

INSERT INTO `wss_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(14, 10, 0),
(14, 23, 0),
(22, 10, 0),
(22, 25, 0),
(22, 30, 0),
(22, 31, 0),
(22, 32, 0),
(30, 10, 0),
(30, 23, 0),
(30, 32, 0),
(41, 10, 0),
(41, 25, 0),
(41, 33, 0),
(41, 34, 0),
(41, 35, 0),
(50, 10, 0),
(50, 25, 0),
(50, 26, 0),
(50, 36, 0),
(50, 37, 0),
(50, 38, 0),
(53, 10, 0),
(53, 25, 0),
(53, 26, 0),
(53, 39, 0),
(53, 40, 0),
(53, 41, 0),
(56, 10, 0),
(56, 25, 0),
(56, 38, 0),
(56, 42, 0),
(56, 43, 0),
(58, 10, 0),
(58, 24, 0),
(58, 44, 0),
(58, 45, 0),
(58, 46, 0),
(64, 10, 0),
(64, 17, 0),
(64, 24, 0),
(64, 47, 0),
(64, 48, 0),
(64, 49, 0),
(64, 56, 0),
(64, 58, 0),
(68, 10, 0),
(68, 24, 0),
(68, 50, 0),
(68, 51, 0),
(68, 52, 0),
(82, 53, 0),
(83, 53, 0),
(84, 53, 0),
(90, 54, 0),
(91, 54, 0),
(92, 54, 0),
(94, 54, 0),
(95, 54, 0),
(96, 54, 0),
(97, 54, 0),
(98, 54, 0),
(99, 54, 0),
(100, 54, 0),
(101, 54, 0),
(102, 54, 0),
(103, 54, 0),
(104, 54, 0),
(106, 54, 0),
(107, 54, 0),
(123, 24, 0),
(123, 25, 0),
(123, 26, 0),
(123, 27, 0),
(123, 28, 0),
(146, 55, 0),
(147, 55, 0),
(148, 55, 0),
(149, 55, 0),
(150, 55, 0),
(151, 55, 0),
(152, 55, 0),
(153, 55, 0),
(154, 55, 0),
(155, 55, 0),
(156, 55, 0),
(157, 55, 0),
(158, 55, 0),
(159, 55, 0),
(160, 55, 0),
(161, 55, 0),
(174, 54, 0),
(209, 10, 0),
(209, 25, 0),
(209, 47, 0),
(209, 49, 0),
(209, 57, 0),
(213, 59, 0),
(216, 59, 0),
(217, 59, 0),
(218, 59, 0),
(219, 59, 0),
(220, 59, 0),
(221, 59, 0),
(222, 59, 0),
(225, 23, 0),
(225, 60, 0),
(232, 23, 0),
(232, 60, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_term_taxonomy`
--

CREATE TABLE `wss_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_term_taxonomy`
--

INSERT INTO `wss_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'acf-fg-type', '', 0, 0),
(3, 3, 'acf-fg-type', '', 0, 0),
(4, 4, 'acf-fg-type', '', 0, 0),
(5, 5, 'acf-fg-type', '', 0, 0),
(6, 6, 'acf-fg-type', '', 0, 0),
(7, 7, 'acf-fg-type', '', 0, 0),
(8, 8, 'acf-fg-type', '', 0, 0),
(9, 9, 'acf-fg-type', '', 0, 0),
(10, 10, 'product_type', '', 0, 11),
(11, 11, 'product_type', '', 0, 0),
(12, 12, 'product_type', '', 0, 0),
(13, 13, 'product_type', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 1),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_visibility', '', 0, 0),
(20, 20, 'product_visibility', '', 0, 0),
(21, 21, 'product_visibility', '', 0, 0),
(22, 22, 'product_visibility', '', 0, 0),
(23, 23, 'product_cat', '', 0, 3),
(24, 24, 'product_cat', '', 0, 3),
(25, 25, 'product_cat', '', 0, 6),
(26, 26, 'product_cat', '', 0, 2),
(27, 27, 'product_cat', '', 0, 0),
(28, 28, 'product_cat', '', 0, 0),
(30, 30, 'item', '', 0, 1),
(31, 31, 'brands', '', 0, 1),
(32, 32, 'cos_brands', '', 0, 2),
(33, 33, 'cos_brands', '', 0, 1),
(34, 34, 'pa_strana-proizvoditel', '', 0, 1),
(35, 35, 'pa_weight', '', 0, 1),
(36, 36, 'cos_brands', '', 0, 1),
(37, 37, 'pa_strana-proizvoditel', '', 0, 1),
(38, 38, 'pa_weight', '', 0, 2),
(39, 39, 'cos_brands', '', 0, 1),
(40, 40, 'pa_strana-proizvoditel', '', 0, 1),
(41, 41, 'pa_weight', '', 0, 1),
(42, 42, 'cos_brands', '', 0, 1),
(43, 43, 'pa_strana-proizvoditel', '', 0, 1),
(44, 44, 'pa_strana-proizvoditel', '', 0, 1),
(45, 45, 'pa_weight', '', 0, 1),
(46, 46, 'cos_brands', '', 0, 1),
(47, 47, 'pa_strana-proizvoditel', '', 0, 2),
(48, 48, 'cos_brands', '', 0, 1),
(49, 49, 'pa_kolichestvo-tovara', '', 0, 2),
(50, 50, 'cos_brands', '', 0, 1),
(51, 51, 'pa_strana-proizvoditel', '', 0, 1),
(52, 52, 'pa_weight', '', 0, 1),
(53, 53, 'nav_menu', '', 0, 3),
(54, 54, 'nav_menu', '', 0, 17),
(55, 55, 'nav_menu', '', 0, 16),
(56, 56, 'product_cat', '', 24, 1),
(57, 57, 'cos_brands', '', 0, 1),
(58, 58, 'product_cat', '', 56, 1),
(59, 59, 'nav_menu', '', 0, 8),
(60, 60, 'product_type', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_tinvwl_analytics`
--

CREATE TABLE `wss_tinvwl_analytics` (
  `ID` varchar(32) NOT NULL,
  `wishlist_id` bigint(20) NOT NULL DEFAULT '0',
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `variation_id` bigint(20) NOT NULL DEFAULT '0',
  `visite_author` bigint(20) NOT NULL DEFAULT '0',
  `visite` bigint(20) NOT NULL DEFAULT '0',
  `click_author` bigint(20) NOT NULL DEFAULT '0',
  `click` bigint(20) NOT NULL DEFAULT '0',
  `cart` bigint(20) NOT NULL DEFAULT '0',
  `sell_of_wishlist` bigint(20) NOT NULL DEFAULT '0',
  `sell_as_gift` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wss_tinvwl_analytics`
--

INSERT INTO `wss_tinvwl_analytics` (`ID`, `wishlist_id`, `product_id`, `variation_id`, `visite_author`, `visite`, `click_author`, `click`, `cart`, `sell_of_wishlist`, `sell_as_gift`) VALUES
('81cd81862af31b7177bef61c0b125ffa', 1, 64, 0, 6, 6, 0, 0, 0, 0, 0),
('b964d28dd48674bb4095f2f047b37619', 1, 22, 0, 6, 6, 0, 0, 0, 0, 0),
('f569d7adecb1dfc30ee8ff364e27c653', 2, 64, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_tinvwl_items`
--

CREATE TABLE `wss_tinvwl_items` (
  `ID` bigint(20) NOT NULL,
  `wishlist_id` bigint(20) NOT NULL DEFAULT '0',
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `variation_id` bigint(20) NOT NULL DEFAULT '0',
  `formdata` text,
  `author` bigint(20) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantity` bigint(20) NOT NULL DEFAULT '1',
  `price` varchar(255) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wss_tinvwl_items`
--

INSERT INTO `wss_tinvwl_items` (`ID`, `wishlist_id`, `product_id`, `variation_id`, `formdata`, `author`, `date`, `quantity`, `price`, `in_stock`) VALUES
(1, 1, 64, 0, '', 1, '2020-10-06 15:33:18', 1, '38500', 0),
(2, 1, 22, 0, '', 1, '2020-10-06 15:33:30', 1, '1600', 1),
(3, 2, 64, 0, '', 0, '2020-10-08 20:27:36', 1, '38500', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_tinvwl_lists`
--

CREATE TABLE `wss_tinvwl_lists` (
  `ID` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` text,
  `status` varchar(20) NOT NULL DEFAULT 'public',
  `type` varchar(20) NOT NULL DEFAULT 'list',
  `share_key` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wss_tinvwl_lists`
--

INSERT INTO `wss_tinvwl_lists` (`ID`, `author`, `date`, `title`, `status`, `type`, `share_key`) VALUES
(1, 1, '2020-10-06 15:31:52', '', 'share', 'default', '522CE8'),
(2, 0, '2020-10-08 20:27:36', '', 'share', 'default', '0B26EF');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_usermeta`
--

CREATE TABLE `wss_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_usermeta`
--

INSERT INTO `wss_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wss_develop'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wss_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wss_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wss_dashboard_quick_press_last_post_id', '208'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:UlmwLMQ1eYyvavNAMFmJOFyo'),
(20, 1, 'wc_last_active', '1602806400'),
(21, 1, '_order_count', '0'),
(24, 1, 'wss_user-settings', 'libraryContent=browse&editor=tinymce&advImgDetails=hide&hidetb=1&imgsize=large&editor_plain_text_paste_warning=1'),
(25, 1, 'wss_user-settings-time', '1602787439'),
(26, 1, 'closedpostboxes_product', 'a:2:{i:0;s:24:\"woocommerce-product-data\";i:1;s:23:\"acf-group_5f65f791de5c9\";}'),
(27, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'meta-box-order_product', 'a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_5f6720cf92c45\";s:4:\"side\";s:122:\"submitdiv,acf-group_5f819e7f95a0f,cos_brandsdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:92:\"woocommerce-product-data,acf-group_5f65f791de5c9,postexcerpt,acf-group_5f67477c91249,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_product', '2'),
(33, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:14:\"add-cos_brands\";i:4;s:15:\"add-product_tag\";i:5;s:15:\"add-acf-fg-type\";}'),
(36, 1, 'nav_menu_recently_edited', '59'),
(38, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(40, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(41, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(43, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(44, 1, 'last_update', '1601975578'),
(48, 2, 'nickname', 'test'),
(49, 2, 'first_name', 'First'),
(50, 2, 'last_name', 'Last'),
(51, 2, 'description', ''),
(52, 2, 'rich_editing', 'true'),
(53, 2, 'syntax_highlighting', 'true'),
(54, 2, 'comment_shortcuts', 'false'),
(55, 2, 'admin_color', 'fresh'),
(56, 2, 'use_ssl', '0'),
(57, 2, 'show_admin_bar_front', 'true'),
(58, 2, 'locale', ''),
(59, 2, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(60, 2, 'wss_user_level', '0'),
(61, 2, 'billing_first_name', 'First'),
(62, 2, 'last_update', '1601980939'),
(63, 2, 'billing_last_name', 'Last'),
(65, 2, 'wc_last_active', '1601942400'),
(66, 3, 'nickname', 'test-9020'),
(67, 3, 'first_name', 'TEst'),
(68, 3, 'last_name', 'test'),
(69, 3, 'description', ''),
(70, 3, 'rich_editing', 'true'),
(71, 3, 'syntax_highlighting', 'true'),
(72, 3, 'comment_shortcuts', 'false'),
(73, 3, 'admin_color', 'fresh'),
(74, 3, 'use_ssl', '0'),
(75, 3, 'show_admin_bar_front', 'true'),
(76, 3, 'locale', ''),
(77, 3, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(78, 3, 'wss_user_level', '0'),
(79, 3, 'dismissed_wp_pointers', ''),
(80, 3, 'billing_first_name', 'TEst'),
(81, 3, 'last_update', '1601981506'),
(82, 3, 'billing_last_name', 'test'),
(84, 3, 'wc_last_active', '1601942400'),
(85, 4, 'nickname', 'test-4141'),
(86, 4, 'first_name', 'TEst'),
(87, 4, 'last_name', 'test'),
(88, 4, 'description', ''),
(89, 4, 'rich_editing', 'true'),
(90, 4, 'syntax_highlighting', 'true'),
(91, 4, 'comment_shortcuts', 'false'),
(92, 4, 'admin_color', 'fresh'),
(93, 4, 'use_ssl', '0'),
(94, 4, 'show_admin_bar_front', 'true'),
(95, 4, 'locale', ''),
(96, 4, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(97, 4, 'wss_user_level', '0'),
(98, 4, 'billing_first_name', 'TEst'),
(99, 4, 'last_update', '1601984011'),
(100, 4, 'billing_last_name', 'test'),
(102, 4, 'wc_last_active', '1601942400'),
(103, 5, 'nickname', 'test-8025'),
(104, 5, 'first_name', 'TEst'),
(105, 5, 'last_name', 'test'),
(106, 5, 'description', ''),
(107, 5, 'rich_editing', 'true'),
(108, 5, 'syntax_highlighting', 'true'),
(109, 5, 'comment_shortcuts', 'false'),
(110, 5, 'admin_color', 'fresh'),
(111, 5, 'use_ssl', '0'),
(112, 5, 'show_admin_bar_front', 'true'),
(113, 5, 'locale', ''),
(114, 5, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(115, 5, 'wss_user_level', '0'),
(116, 5, 'billing_first_name', 'TEst'),
(117, 5, 'last_update', '1601984186'),
(118, 5, 'billing_last_name', 'test'),
(120, 5, 'wc_last_active', '1601942400'),
(123, 6, 'nickname', 'test-3332'),
(124, 6, 'first_name', 'TEst'),
(125, 6, 'last_name', 'test'),
(126, 6, 'description', ''),
(127, 6, 'rich_editing', 'true'),
(128, 6, 'syntax_highlighting', 'true'),
(129, 6, 'comment_shortcuts', 'false'),
(130, 6, 'admin_color', 'fresh'),
(131, 6, 'use_ssl', '0'),
(132, 6, 'show_admin_bar_front', 'true'),
(133, 6, 'locale', ''),
(134, 6, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(135, 6, 'wss_user_level', '0'),
(136, 6, 'billing_first_name', 'TEst'),
(137, 6, 'last_update', '1601991140'),
(138, 6, 'billing_last_name', 'test'),
(140, 6, 'wc_last_active', '1601942400'),
(141, 7, 'nickname', 'test-4774'),
(142, 7, 'first_name', 'TEst'),
(143, 7, 'last_name', 'test'),
(144, 7, 'description', ''),
(145, 7, 'rich_editing', 'true'),
(146, 7, 'syntax_highlighting', 'true'),
(147, 7, 'comment_shortcuts', 'false'),
(148, 7, 'admin_color', 'fresh'),
(149, 7, 'use_ssl', '0'),
(150, 7, 'show_admin_bar_front', 'true'),
(151, 7, 'locale', ''),
(152, 7, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(153, 7, 'wss_user_level', '0'),
(154, 7, 'billing_first_name', 'TEst'),
(155, 7, 'last_update', '1601991205'),
(156, 7, 'billing_last_name', 'test'),
(158, 7, 'wc_last_active', '1601942400'),
(159, 8, 'nickname', 'test-9109'),
(160, 8, 'first_name', 'test'),
(161, 8, 'last_name', 'test'),
(162, 8, 'description', ''),
(163, 8, 'rich_editing', 'true'),
(164, 8, 'syntax_highlighting', 'true'),
(165, 8, 'comment_shortcuts', 'false'),
(166, 8, 'admin_color', 'fresh'),
(167, 8, 'use_ssl', '0'),
(168, 8, 'show_admin_bar_front', 'true'),
(169, 8, 'locale', ''),
(170, 8, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(171, 8, 'wss_user_level', '0'),
(172, 8, 'billing_first_name', 'test'),
(173, 8, 'last_update', '1601991743'),
(174, 8, 'billing_last_name', 'test'),
(176, 8, 'wc_last_active', '1601942400'),
(177, 9, 'nickname', 'asdsa'),
(178, 9, 'first_name', 'еуы'),
(179, 9, 'last_name', 'ку'),
(180, 9, 'description', ''),
(181, 9, 'rich_editing', 'true'),
(182, 9, 'syntax_highlighting', 'true'),
(183, 9, 'comment_shortcuts', 'false'),
(184, 9, 'admin_color', 'fresh'),
(185, 9, 'use_ssl', '0'),
(186, 9, 'show_admin_bar_front', 'true'),
(187, 9, 'locale', ''),
(188, 9, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(189, 9, 'wss_user_level', '0'),
(190, 9, 'billing_first_name', 'еуы'),
(191, 9, 'last_update', '1601992458'),
(192, 9, 'billing_last_name', 'ку'),
(194, 9, 'wc_last_active', '1601942400'),
(196, 10, 'nickname', 'test123'),
(197, 10, 'first_name', 'Test'),
(198, 10, 'last_name', 'Test'),
(199, 10, 'description', ''),
(200, 10, 'rich_editing', 'true'),
(201, 10, 'syntax_highlighting', 'true'),
(202, 10, 'comment_shortcuts', 'false'),
(203, 10, 'admin_color', 'fresh'),
(204, 10, 'use_ssl', '0'),
(205, 10, 'show_admin_bar_front', 'true'),
(206, 10, 'locale', ''),
(207, 10, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(208, 10, 'wss_user_level', '0'),
(209, 10, 'billing_first_name', 'Test'),
(210, 10, 'last_update', '1601994700'),
(211, 10, 'billing_last_name', 'Test'),
(213, 10, 'wc_last_active', '1601942400'),
(214, 11, 'nickname', 'tes24'),
(215, 11, 'first_name', 'TEst'),
(216, 11, 'last_name', 'test'),
(217, 11, 'description', ''),
(218, 11, 'rich_editing', 'true'),
(219, 11, 'syntax_highlighting', 'true'),
(220, 11, 'comment_shortcuts', 'false'),
(221, 11, 'admin_color', 'fresh'),
(222, 11, 'use_ssl', '0'),
(223, 11, 'show_admin_bar_front', 'true'),
(224, 11, 'locale', ''),
(225, 11, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(226, 11, 'wss_user_level', '0'),
(227, 11, 'billing_first_name', 'TEst'),
(228, 11, 'last_update', '1601996624'),
(229, 11, 'billing_last_name', 'test'),
(231, 11, 'wc_last_active', '1601942400'),
(233, 12, 'nickname', 'alekspvn25'),
(234, 12, 'first_name', 'Aleks'),
(235, 12, 'last_name', 'Piven'),
(236, 12, 'description', ''),
(237, 12, 'rich_editing', 'true'),
(238, 12, 'syntax_highlighting', 'true'),
(239, 12, 'comment_shortcuts', 'false'),
(240, 12, 'admin_color', 'fresh'),
(241, 12, 'use_ssl', '0'),
(242, 12, 'show_admin_bar_front', 'true'),
(243, 12, 'locale', ''),
(244, 12, 'wss_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(245, 12, 'wss_user_level', '0'),
(246, 12, 'billing_first_name', 'Aleks'),
(247, 12, 'last_update', '1602513504'),
(248, 12, 'billing_last_name', 'Piven'),
(249, 12, 'session_tokens', 'a:1:{s:64:\"65d583c19bf332b1edd5259a1066a0ef53ba095d4a35421075ae1db1ca3a4f71\";a:4:{s:10:\"expiration\";i:1603723104;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1602513504;}}'),
(250, 12, 'wc_last_active', '1602460800'),
(257, 1, 'session_tokens', 'a:1:{s:64:\"44da442e96b14a55d541000390fa2a48aec8c87923baeaaff8609d3d6acea910\";a:4:{s:10:\"expiration\";i:1602958273;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1602785473;}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_users`
--

CREATE TABLE `wss_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_users`
--

INSERT INTO `wss_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wss_develop', '$P$BDk9a.jTBAJmH9xYNgZ2tuRisCxx2T0', 'wss_develop', 'irwintram@gmail.com', '', '2020-09-18 10:59:08', '1601975578:$P$B4CYFYxMVfGx3o/gLWmC9gRsr6MkSC0', 0, 'wss_develop'),
(2, 'test', '$P$BFZNHpMYhGsp8KS/UMP0P/5Cine..F1', 'test', 'test@test123.com', '', '2020-10-06 10:42:19', '', 0, 'test'),
(3, 'test-9020', '$P$B7isH7eVphejZpfQB7fAbnhOO3On141', 'test-9020', 'test@test.com', '', '2020-10-06 10:51:46', '', 0, 'test-9020'),
(4, 'test-4141', '$P$Bue4Z77cjqpZBxfhLk5eoWLZMmy3gj0', 'test-4141', 'test@test1234.com', '', '2020-10-06 11:33:31', '', 0, 'test-4141'),
(5, 'test-8025', '$P$BkIwKluJI4G4x9SdSzvxA/37vO01Qp/', 'test-8025', 'test@567gmail.com', '', '2020-10-06 11:36:26', '', 0, 'test-8025'),
(6, 'test-3332', '$P$BNSEOe.M03PPo3FMZg3GKISh4S.IYD/', 'test-3332', 'test@test123423123.com', '', '2020-10-06 13:32:20', '', 0, 'test-3332'),
(7, 'test-4774', '$P$Bp6Oe3gGQRG8G20Agd9cOUopKSErg1.', 'test-4774', 'test@gmail.com', '', '2020-10-06 13:33:25', '', 0, 'test-4774'),
(8, 'test-9109', '$P$BlZNVvJt7HDTdd6sduMUrCUHP67bxu.', 'test-9109', 'test@denys.com', '', '2020-10-06 13:42:23', '', 0, 'test-9109'),
(9, 'asdsa', '$P$BU3xIEIhxawzXkid5mHvKq9ZiVBWoQ0', 'asdsa', 'asdsa@ddas.com', '', '2020-10-06 13:54:18', '', 0, 'asdsa'),
(10, 'test123', '$P$BfSQun.xDsWKnPmB9hKJSjqFJDQeIZ/', 'test123', 'test123@123.com', '', '2020-10-06 14:31:40', '', 0, 'test123'),
(11, 'tes24', '$P$BFAUBUC1bRmJWeYlw3Xn0oxif/AkH/0', 'tes24', 'tes24@ew.com', '', '2020-10-06 15:03:44', '', 0, 'tes24'),
(12, 'alekspvn25', '$P$BCzvHJFywsLvahPOfUl5ZRKvyN2Zqk1', 'alekspvn25', 'alekspvn25@gmail.com', '', '2020-10-12 14:38:24', '', 0, 'alekspvn25');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_admin_notes`
--

CREATE TABLE `wss_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_wc_admin_notes`
--

INSERT INTO `wss_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-09-18 11:12:09', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-18 11:12:09', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-18 11:12:09', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-20 11:12:17', NULL, 0, 'plain', '', 0, 'info'),
(5, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-23 19:47:42', NULL, 0, 'plain', '', 0, 'info'),
(6, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://cosmedoc.local/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-25 11:12:13', NULL, 0, 'plain', '', 0, 'info'),
(7, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-26 18:31:32', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-09-26 18:31:32', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-01 16:56:35', NULL, 0, 'plain', '', 0, 'info'),
(10, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-10-15 12:33:31', NULL, 0, 'plain', '', 0, 'info'),
(11, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-10-15 12:33:31', NULL, 0, 'plain', '', 0, 'info'),
(12, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-10-15 12:33:31', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_admin_note_actions`
--

CREATE TABLE `wss_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_wc_admin_note_actions`
--

INSERT INTO `wss_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(2, 2, 'open-marketing-hub', 'Open marketing hub', 'http://cosmedoc.local/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(4, 4, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(5, 5, 'view-payment-gateways', 'Learn more', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, ''),
(6, 6, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, ''),
(7, 7, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(8, 8, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(9, 8, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(10, 9, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(20, 10, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(21, 11, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(22, 12, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_category_lookup`
--

CREATE TABLE `wss_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_wc_category_lookup`
--

INSERT INTO `wss_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(23, 23),
(24, 24),
(24, 56),
(24, 58),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(56, 56),
(56, 58),
(58, 58);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_customer_lookup`
--

CREATE TABLE `wss_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_download_log`
--

CREATE TABLE `wss_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_order_coupon_lookup`
--

CREATE TABLE `wss_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_order_product_lookup`
--

CREATE TABLE `wss_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_order_stats`
--

CREATE TABLE `wss_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_order_tax_lookup`
--

CREATE TABLE `wss_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_product_meta_lookup`
--

CREATE TABLE `wss_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_wc_product_meta_lookup`
--

INSERT INTO `wss_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(14, 'KL_KL019', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(22, 'KL_RG003', 0, 0, '1600.0000', '1600.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(30, 'KL_RG022_SET', 0, 0, '7410.0000', '7410.0000', 0, 9, 'instock', 0, '0.00', 0, 'taxable', ''),
(41, '', 0, 0, '5850.0000', '5850.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(50, 'KL_AB053', 0, 0, '2980.0000', '2980.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(53, 'KL_TE002', 0, 0, '1540.0000', '1540.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, 'KL_KM055', 0, 0, '3570.0000', '3570.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(58, 'KL_PR016', 0, 0, '4240.0000', '4240.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, 'KL_PL003', 0, 0, '38500.0000', '38500.0000', 0, NULL, 'outofstock', 0, '0.00', 0, 'taxable', ''),
(68, 'KL_GS017', 0, 0, '4200.0000', '4200.0000', 0, 2, 'instock', 0, '0.00', 0, 'taxable', ''),
(209, 'KL_BA058', 0, 0, '6150.0000', '6150.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(225, '', 0, 0, '10.0000', '100.0000', 0, NULL, 'instock', 0, '0.00', 0, 'none', ''),
(226, '', 1, 0, '10.0000', '10.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(227, '', 1, 0, '25.0000', '25.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(228, '', 1, 0, '50.0000', '50.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(229, '', 1, 0, '100.0000', '100.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(232, '', 0, 0, '10.0000', '1000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'none', ''),
(233, '', 1, 0, '10.0000', '10.0000', 0, NULL, 'instock', 0, '0.00', 0, 'none', 'parent'),
(234, '', 1, 0, '25.0000', '25.0000', 0, NULL, 'instock', 0, '0.00', 0, 'none', 'parent'),
(235, '', 1, 0, '50.0000', '50.0000', 0, NULL, 'instock', 0, '0.00', 0, 'none', 'parent'),
(236, '', 1, 0, '100.0000', '100.0000', 0, NULL, 'instock', 0, '0.00', 0, 'none', 'parent'),
(237, '', 1, 0, '1000.0000', '1000.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_reserved_stock`
--

CREATE TABLE `wss_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_tax_rate_classes`
--

CREATE TABLE `wss_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_wc_tax_rate_classes`
--

INSERT INTO `wss_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wss_wc_webhooks`
--

CREATE TABLE `wss_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_api_keys`
--

CREATE TABLE `wss_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wss_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_woocommerce_attribute_taxonomies`
--

INSERT INTO `wss_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'strana-proizvoditel', 'Страна производитель', 'select', 'menu_order', 1),
(2, 'weight', 'Вес продукта', 'select', 'menu_order', 1),
(3, 'kolichestvo-tovara', 'Количество товара', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wss_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_log`
--

CREATE TABLE `wss_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_order_itemmeta`
--

CREATE TABLE `wss_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_order_items`
--

CREATE TABLE `wss_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wss_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_payment_tokens`
--

CREATE TABLE `wss_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_sessions`
--

CREATE TABLE `wss_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wss_woocommerce_sessions`
--

INSERT INTO `wss_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(10, 'eb5ff151bfb6bbc3119f0842b68114c1', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:825:\"a:2:{s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";a:11:{s:3:\"key\";s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:5;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:8000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:8000;s:8:\"line_tax\";i:0;}s:32:\"66f041e16a60928b05a7e228a89c3799\";a:11:{s:3:\"key\";s:32:\"66f041e16a60928b05a7e228a89c3799\";s:10:\"product_id\";i:58;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:20;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:84800;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:84800;s:8:\"line_tax\";i:0;}}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1602881899),
(12, '66b6fb2d2401910db933e9c2ae290c50', 'a:1:{s:8:\"customer\";s:733:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-06T09:12:58+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"irwintram@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1602936947),
(15, '17ea9bc4cd4014acdbabd260d9cf8db8', 'a:8:{s:4:\"cart\";s:1359:\"a:3:{s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";a:12:{s:3:\"key\";s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:11:\"product_sku\";s:8:\"KL_RG003\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:3200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:3200;s:8:\"line_tax\";i:0;}s:32:\"66f041e16a60928b05a7e228a89c3799\";a:12:{s:3:\"key\";s:32:\"66f041e16a60928b05a7e228a89c3799\";s:10:\"product_id\";i:58;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:14;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:11:\"product_sku\";s:8:\"KL_PR016\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:59360;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:59360;s:8:\"line_tax\";i:0;}s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";a:11:{s:3:\"key\";s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";s:10:\"product_id\";i:68;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:4200;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:414:\"a:15:{s:8:\"subtotal\";s:8:\"66760.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:8:\"66760.00\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"66760.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:477:\"a:1:{s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";a:12:{s:3:\"key\";s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";s:10:\"product_id\";i:68;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:11:\"product_sku\";s:8:\"KL_GS017\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:8400;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:8400;s:8:\"line_tax\";i:0;}}\";s:8:\"customer\";s:687:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1602955263),
(41, '1', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:1661:\"a:3:{s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";a:12:{s:3:\"key\";s:32:\"a3f390d88e4c41f2747bfa2f1b5f87db\";s:10:\"product_id\";i:68;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:11:\"product_sku\";s:8:\"KL_GS017\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:8400;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:8400;s:8:\"line_tax\";i:0;}s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";a:12:{s:3:\"key\";s:32:\"b6d767d2f8ed5d21a44b0e5886680cb9\";s:10:\"product_id\";i:22;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:15:\"tinvwl_formdata\";a:1:{s:11:\"product_sku\";s:8:\"KL_RG003\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:4800;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:4800;s:8:\"line_tax\";i:0;}s:32:\"6fd1f46fa10d263a09c4587f9724c531\";a:15:{s:15:\"pw_gift_card_to\";s:19:\"irwintram@gmail.com\";s:17:\"pw_gift_card_from\";s:11:\"wss_develop\";s:20:\"pw_gift_card_message\";s:0:\"\";s:3:\"key\";s:32:\"6fd1f46fa10d263a09c4587f9724c531\";s:10:\"product_id\";i:225;s:12:\"variation_id\";i:229;s:9:\"variation\";a:1:{s:26:\"attribute_gift-card-amount\";s:10:\"100руб.\";}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"f207a4b53144ca3f18bf8cc28ef833ec\";s:15:\"tinvwl_formdata\";a:2:{s:17:\"pw_gift_card_from\";s:11:\"wss_develop\";s:15:\"pw_gift_card_to\";s:19:\"irwintram@gmail.com\";}s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:200;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:200;s:8:\"line_tax\";i:0;}}\";s:8:\"customer\";s:733:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-06T09:12:58+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"irwintram@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1602955434);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_shipping_zones`
--

CREATE TABLE `wss_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wss_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wss_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_tax_rates`
--

CREATE TABLE `wss_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woocommerce_tax_rate_locations`
--

CREATE TABLE `wss_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_woof_query_cache`
--

CREATE TABLE `wss_woof_query_cache` (
  `mkey` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mvalue` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wss_yith_wcwl`
--

CREATE TABLE `wss_yith_wcwl` (
  `ID` bigint(20) NOT NULL,
  `prod_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `wishlist_id` bigint(20) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `original_price` decimal(9,3) DEFAULT NULL,
  `original_currency` char(3) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `on_sale` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wss_yith_wcwl`
--

INSERT INTO `wss_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `position`, `original_price`, `original_currency`, `dateadded`, `on_sale`) VALUES
(1, 64, 1, 1, 1, 0, '38500.000', 'RUB', '2020-10-06 15:26:20', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wss_yith_wcwl_lists`
--

CREATE TABLE `wss_yith_wcwl_lists` (
  `ID` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expiration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wss_yith_wcwl_lists`
--

INSERT INTO `wss_yith_wcwl_lists` (`ID`, `user_id`, `session_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`, `expiration`) VALUES
(1, 1, NULL, '', '', 'AHWBFE4CVR1T', 0, 1, '2020-10-06 15:26:20', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wss_actionscheduler_actions`
--
ALTER TABLE `wss_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Индексы таблицы `wss_actionscheduler_claims`
--
ALTER TABLE `wss_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Индексы таблицы `wss_actionscheduler_groups`
--
ALTER TABLE `wss_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wss_actionscheduler_logs`
--
ALTER TABLE `wss_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Индексы таблицы `wss_commentmeta`
--
ALTER TABLE `wss_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wss_comments`
--
ALTER TABLE `wss_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wss_duplicator_packages`
--
ALTER TABLE `wss_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `wss_links`
--
ALTER TABLE `wss_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wss_options`
--
ALTER TABLE `wss_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wss_pimwick_gift_card`
--
ALTER TABLE `wss_pimwick_gift_card`
  ADD PRIMARY KEY (`pimwick_gift_card_id`),
  ADD UNIQUE KEY `wss_ix_pimwick_gift_card_number` (`number`(128));

--
-- Индексы таблицы `wss_pimwick_gift_card_activity`
--
ALTER TABLE `wss_pimwick_gift_card_activity`
  ADD PRIMARY KEY (`pimwick_gift_card_activity_id`),
  ADD KEY `wss_ix_pimwick_gift_card_id` (`pimwick_gift_card_id`);

--
-- Индексы таблицы `wss_postmeta`
--
ALTER TABLE `wss_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wss_posts`
--
ALTER TABLE `wss_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wss_termmeta`
--
ALTER TABLE `wss_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wss_terms`
--
ALTER TABLE `wss_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wss_term_relationships`
--
ALTER TABLE `wss_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wss_term_taxonomy`
--
ALTER TABLE `wss_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wss_tinvwl_analytics`
--
ALTER TABLE `wss_tinvwl_analytics`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `unique_product` (`wishlist_id`,`product_id`,`variation_id`);

--
-- Индексы таблицы `wss_tinvwl_items`
--
ALTER TABLE `wss_tinvwl_items`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `wss_tinvwl_lists`
--
ALTER TABLE `wss_tinvwl_lists`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `wss_usermeta`
--
ALTER TABLE `wss_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wss_users`
--
ALTER TABLE `wss_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wss_wc_admin_notes`
--
ALTER TABLE `wss_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Индексы таблицы `wss_wc_admin_note_actions`
--
ALTER TABLE `wss_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Индексы таблицы `wss_wc_category_lookup`
--
ALTER TABLE `wss_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Индексы таблицы `wss_wc_customer_lookup`
--
ALTER TABLE `wss_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `wss_wc_download_log`
--
ALTER TABLE `wss_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wss_wc_order_coupon_lookup`
--
ALTER TABLE `wss_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wss_wc_order_product_lookup`
--
ALTER TABLE `wss_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wss_wc_order_stats`
--
ALTER TABLE `wss_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Индексы таблицы `wss_wc_order_tax_lookup`
--
ALTER TABLE `wss_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Индексы таблицы `wss_wc_product_meta_lookup`
--
ALTER TABLE `wss_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wss_wc_reserved_stock`
--
ALTER TABLE `wss_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Индексы таблицы `wss_wc_tax_rate_classes`
--
ALTER TABLE `wss_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wss_wc_webhooks`
--
ALTER TABLE `wss_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wss_woocommerce_api_keys`
--
ALTER TABLE `wss_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wss_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wss_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wss_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wss_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wss_woocommerce_log`
--
ALTER TABLE `wss_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wss_woocommerce_order_itemmeta`
--
ALTER TABLE `wss_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wss_woocommerce_order_items`
--
ALTER TABLE `wss_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wss_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wss_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wss_woocommerce_payment_tokens`
--
ALTER TABLE `wss_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wss_woocommerce_sessions`
--
ALTER TABLE `wss_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wss_woocommerce_shipping_zones`
--
ALTER TABLE `wss_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wss_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wss_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wss_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wss_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wss_woocommerce_tax_rates`
--
ALTER TABLE `wss_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wss_woocommerce_tax_rate_locations`
--
ALTER TABLE `wss_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wss_woof_query_cache`
--
ALTER TABLE `wss_woof_query_cache`
  ADD KEY `mkey` (`mkey`);

--
-- Индексы таблицы `wss_yith_wcwl`
--
ALTER TABLE `wss_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Индексы таблицы `wss_yith_wcwl_lists`
--
ALTER TABLE `wss_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_actions`
--
ALTER TABLE `wss_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_claims`
--
ALTER TABLE `wss_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_groups`
--
ALTER TABLE `wss_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_logs`
--
ALTER TABLE `wss_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `wss_commentmeta`
--
ALTER TABLE `wss_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_comments`
--
ALTER TABLE `wss_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_duplicator_packages`
--
ALTER TABLE `wss_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wss_links`
--
ALTER TABLE `wss_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_options`
--
ALTER TABLE `wss_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7445;

--
-- AUTO_INCREMENT для таблицы `wss_pimwick_gift_card`
--
ALTER TABLE `wss_pimwick_gift_card`
  MODIFY `pimwick_gift_card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_pimwick_gift_card_activity`
--
ALTER TABLE `wss_pimwick_gift_card_activity`
  MODIFY `pimwick_gift_card_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_postmeta`
--
ALTER TABLE `wss_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1513;

--
-- AUTO_INCREMENT для таблицы `wss_posts`
--
ALTER TABLE `wss_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT для таблицы `wss_termmeta`
--
ALTER TABLE `wss_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `wss_terms`
--
ALTER TABLE `wss_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `wss_term_taxonomy`
--
ALTER TABLE `wss_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `wss_tinvwl_items`
--
ALTER TABLE `wss_tinvwl_items`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wss_tinvwl_lists`
--
ALTER TABLE `wss_tinvwl_lists`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wss_usermeta`
--
ALTER TABLE `wss_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT для таблицы `wss_users`
--
ALTER TABLE `wss_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wss_wc_admin_notes`
--
ALTER TABLE `wss_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wss_wc_admin_note_actions`
--
ALTER TABLE `wss_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `wss_wc_customer_lookup`
--
ALTER TABLE `wss_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_wc_download_log`
--
ALTER TABLE `wss_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_wc_tax_rate_classes`
--
ALTER TABLE `wss_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wss_wc_webhooks`
--
ALTER TABLE `wss_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_api_keys`
--
ALTER TABLE `wss_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wss_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wss_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_log`
--
ALTER TABLE `wss_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_order_itemmeta`
--
ALTER TABLE `wss_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_order_items`
--
ALTER TABLE `wss_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wss_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_payment_tokens`
--
ALTER TABLE `wss_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_sessions`
--
ALTER TABLE `wss_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_shipping_zones`
--
ALTER TABLE `wss_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wss_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wss_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_tax_rates`
--
ALTER TABLE `wss_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_woocommerce_tax_rate_locations`
--
ALTER TABLE `wss_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_yith_wcwl`
--
ALTER TABLE `wss_yith_wcwl`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wss_yith_wcwl_lists`
--
ALTER TABLE `wss_yith_wcwl_lists`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wss_wc_download_log`
--
ALTER TABLE `wss_wc_download_log`
  ADD CONSTRAINT `fk_wss_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wss_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
