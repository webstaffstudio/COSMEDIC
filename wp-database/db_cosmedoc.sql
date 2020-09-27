-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2020 г., 16:29
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.9

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
(14, 'action_scheduler/migration_hook', 'complete', '2020-09-25 21:54:35', '2020-09-25 21:54:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601070875;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601070875;}', 1, 1, '2020-09-25 21:54:39', '2020-09-25 21:54:39', 0, NULL);

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
(1, 'action-scheduler-migration');

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
(27, 14, 'action complete via WP Cron', '2020-09-25 21:54:39', '2020-09-25 21:54:39');

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
(29, 'rewrite_rules', 'a:166:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:8:\"store/?$\";s:27:\"index.php?post_type=product\";s:38:\"store/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:33:\"store/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:25:\"store/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:51:\"cos_brands/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?cos_brands=$matches[1]&feed=$matches[2]\";s:46:\"cos_brands/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?cos_brands=$matches[1]&feed=$matches[2]\";s:27:\"cos_brands/([^/]+)/embed/?$\";s:43:\"index.php?cos_brands=$matches[1]&embed=true\";s:39:\"cos_brands/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?cos_brands=$matches[1]&paged=$matches[2]\";s:21:\"cos_brands/([^/]+)/?$\";s:32:\"index.php?cos_brands=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=123&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:22:\"cyr2lat/cyr-to-lat.php\";i:6;s:35:\"pre-orders-for-woocommerce/main.php\";i:7;s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";i:8;s:21:\"safe-svg/safe-svg.php\";i:9;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:10;s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";i:11;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(95, 'wss_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:20:{i:1601213399;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1601214066;a:1:{s:28:\"check_for_released_preorders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601215149;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601215925;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601215928;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601215934;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601216886;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1601226725;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601247549;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601249717;a:1:{s:20:\"mce_12hours_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"12hours\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601251200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601290748;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601290760;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601290761;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601291528;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601291535;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601463947;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1601465717;a:1:{s:18:\"mce_4days_cron_job\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"4days\";s:4:\"args\";a:0:{}s:8:\"interval\";i:345600;}}}i:1601723585;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
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
(142, 'theme_mods_cosmedoc', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"footer_menu\";i:54;s:11:\"mobile_menu\";i:55;s:7:\"primary\";i:53;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:57:\"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:72;s:3:\"url\";s:57:\"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\";s:13:\"thumbnail_url\";s:57:\"http://cosmedoc.local/wp-content/uploads/2020/09/logo.svg\";s:6:\"height\";i:40;s:5:\"width\";i:223;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(146, 'disallowed_keys', '', 'no'),
(147, 'comment_previously_approved', '1', 'yes'),
(148, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, 'db_upgraded', '', 'yes'),
(154, 'recently_activated', 'a:1:{s:43:\"custom-taxonomy-order-ne/customtaxorder.php\";i:1601070738;}', 'yes'),
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
(244, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(245, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(246, 'woocommerce_registration_generate_username', 'yes', 'no'),
(247, 'woocommerce_registration_generate_password', 'yes', 'no'),
(248, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(249, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(250, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(251, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(252, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(253, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(254, 'woocommerce_trash_pending_orders', '', 'no'),
(255, 'woocommerce_trash_failed_orders', '', 'no'),
(256, 'woocommerce_trash_cancelled_orders', '', 'no'),
(257, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(258, 'woocommerce_email_from_name', 'cosmedoc', 'no'),
(259, 'woocommerce_email_from_address', 'irwintram@gmail.com', 'no'),
(260, 'woocommerce_email_header_image', '', 'no'),
(261, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(262, 'woocommerce_email_base_color', '#96588a', 'no'),
(263, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(264, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(265, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(266, 'woocommerce_cart_page_id', '', 'no'),
(267, 'woocommerce_checkout_page_id', '', 'no'),
(268, 'woocommerce_myaccount_page_id', '', 'no'),
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
(298, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(301, 'woocommerce_version', '4.5.2', 'yes'),
(302, 'woocommerce_db_version', '4.5.2', 'yes'),
(303, 'woocommerce_homescreen_enabled', 'yes', 'yes'),
(306, 'action_scheduler_lock_async-request-runner', '1601213373', 'yes'),
(307, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"gJQ44YYu5wv4lVzzciE6zVAGUhMZBvVN\";}', 'yes'),
(308, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(309, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(311, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(323, 'woocommerce_admin_version', '1.5.0', 'yes'),
(324, 'woocommerce_admin_install_timestamp', '1600427528', 'yes'),
(328, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1600427529', 'yes'),
(330, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(331, 'wc_blocks_db_schema_version', '260', 'yes'),
(347, '_transient_product_query-transient-version', '1601212945', 'yes'),
(348, 'category_children', 'a:0:{}', 'yes'),
(350, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(353, '_transient_woocommerce_reports-transient-version', '1600427710', 'yes'),
(413, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes');
INSERT INTO `wss_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(417, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1600516206;}', 'no'),
(465, '_transient_product-transient-version', '1600810607', 'yes'),
(542, 'recovery_mode_email_last_sent', '1600521199', 'yes'),
(543, 'item_children', 'a:0:{}', 'yes'),
(583, 'brands_children', 'a:0:{}', 'yes'),
(1024, '_transient_wc_attribute_taxonomies', 'a:3:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:18:\"kolichestvo-tovara\";s:15:\"attribute_label\";s:33:\"Количество товара\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:19:\"strana-proizvoditel\";s:15:\"attribute_label\";s:39:\"Страна производитель\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:6:\"weight\";s:15:\"attribute_label\";s:23:\"Вес продукта\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(1066, 'cos_brands_children', 'a:0:{}', 'yes'),
(1123, '_transient_shipping-transient-version', '1600601881', 'yes'),
(1124, '_transient_timeout_wc_shipping_method_count_legacy', '1603193881', 'no'),
(1125, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1600601881\";s:5:\"value\";i:0;}', 'no'),
(1141, 'wc_preorders_mode', 'either', 'yes'),
(1142, 'wc_preorders_change_button', 'yes', 'yes'),
(1143, 'wc_preorders_button_text', 'Предзаказ', 'yes'),
(1153, '_transient_timeout_wc_report_orders_stats_e8b78fb62e527637f00c021715f53d8b', '1601206994', 'no'),
(1154, '_transient_wc_report_orders_stats_e8b78fb62e527637f00c021715f53d8b', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-38\";s:10:\"date_start\";s:19:\"2020-09-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-09-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1155, '_transient_timeout_wc_report_orders_stats_bd8a21adf5545e5cfd877ecd91003945', '1601206994', 'no'),
(1156, '_transient_wc_report_orders_stats_bd8a21adf5545e5cfd877ecd91003945', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-38\";s:10:\"date_start\";s:19:\"2020-09-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-20 14:43:00\";s:12:\"date_end_gmt\";s:19:\"2020-09-20 14:43:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1157, '_transient_timeout_wc_report_orders_stats_906a71b3e356a2da54247551e6e3c3a1', '1601206994', 'no'),
(1158, '_transient_timeout_wc_report_orders_stats_b644febd953dc10829e5fe435fbe8977', '1601206994', 'no'),
(1159, '_transient_wc_report_orders_stats_b644febd953dc10829e5fe435fbe8977', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-38\";s:10:\"date_start\";s:19:\"2020-09-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-20 14:43:00\";s:12:\"date_end_gmt\";s:19:\"2020-09-20 14:43:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1160, '_transient_wc_report_orders_stats_906a71b3e356a2da54247551e6e3c3a1', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-38\";s:10:\"date_start\";s:19:\"2020-09-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-09-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1244, 'can_compress_scripts', '1', 'no'),
(1267, 'woocommerce_maybe_regenerate_images_hash', '363fbb40c0f44b4b89b60b3bf7a51ad2', 'yes'),
(1342, '_transient_timeout_wc_report_orders_stats_ad34d740572f0ed044db96f38cd4b1df', '1601378266', 'no'),
(1343, '_transient_wc_report_orders_stats_ad34d740572f0ed044db96f38cd4b1df', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-39\";s:10:\"date_start\";s:19:\"2020-09-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-22 14:17:00\";s:12:\"date_end_gmt\";s:19:\"2020-09-22 14:17:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1344, '_transient_timeout_wc_report_orders_stats_557af6582b82ca700efaf10281d6e801', '1601378266', 'no'),
(1345, '_transient_wc_report_orders_stats_557af6582b82ca700efaf10281d6e801', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-39\";s:10:\"date_start\";s:19:\"2020-09-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-22 14:17:00\";s:12:\"date_end_gmt\";s:19:\"2020-09-22 14:17:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1346, '_transient_timeout_wc_report_orders_stats_987e4bfda71c7d885c7ca57cdb3301d0', '1601378266', 'no'),
(1347, '_transient_wc_report_orders_stats_987e4bfda71c7d885c7ca57cdb3301d0', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-39\";s:10:\"date_start\";s:19:\"2020-09-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-09-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1348, '_transient_timeout_wc_report_orders_stats_1658a07aec72200d1b8cf0c4c827366b', '1601378266', 'no'),
(1349, '_transient_wc_report_orders_stats_1658a07aec72200d1b8cf0c4c827366b', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-39\";s:10:\"date_start\";s:19:\"2020-09-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-09-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1364, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1376, 'options_copyright', '© Cosmedoc', 'no'),
(1377, '_options_copyright', 'field_5f69df1fc4f69', 'no'),
(1378, 'options_phone_number', '+7 999 999 99 99', 'no'),
(1379, '_options_phone_number', 'field_5f69df41c4f6a', 'no'),
(1381, '_transient_timeout_wc_report_orders_stats_575b6a5472f8fed2e867c5be6a4f64e4', '1601378903', 'no'),
(1382, '_transient_wc_report_orders_stats_575b6a5472f8fed2e867c5be6a4f64e4', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-39\";s:10:\"date_start\";s:19:\"2020-09-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-22 14:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-09-22 14:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1383, '_transient_timeout_wc_report_orders_stats_9f8efa49d7f8c2fa774f0929840dd737', '1601378903', 'no'),
(1384, '_transient_wc_report_orders_stats_9f8efa49d7f8c2fa774f0929840dd737', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:1:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-39\";s:10:\"date_start\";s:19:\"2020-09-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-09-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-09-22 14:28:00\";s:12:\"date_end_gmt\";s:19:\"2020-09-22 14:28:00\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:1;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1397, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1600774447;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1402, 'mce_show_update_news', '1', 'no'),
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
(1796, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"8\",\"critical\":\"2\"}', 'yes'),
(1801, '_site_transient_timeout_browser_ce4e9e986b0fbc713624d54b83c36283', '1601495378', 'no'),
(1802, '_site_transient_browser_ce4e9e986b0fbc713624d54b83c36283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1803, '_transient_timeout_wc_low_stock_count', '1603482578', 'no'),
(1804, '_transient_wc_low_stock_count', '1', 'no'),
(1805, '_transient_timeout_wc_outofstock_count', '1603482578', 'no'),
(1806, '_transient_wc_outofstock_count', '0', 'no'),
(1827, 'xa_pipe_plugin_installed_date', '2020-09-23 19:51:11', 'yes'),
(2081, '_transient_timeout_orders-all-statuses', '1601648067', 'no'),
(2082, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1600427710\";s:5:\"value\";a:0:{}}', 'no'),
(2187, '_transient_timeout_wc_shipping_method_count', '1603636872', 'no'),
(2188, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1600601881\";s:5:\"value\";i:0;}', 'no'),
(2212, 'dc_product_stock_alert_installed', '1', 'yes'),
(2213, 'dc_product_stock_alert_cron_start', '1', 'yes'),
(2440, '_transient_timeout_wc_term_counts', '1603659283', 'no'),
(2441, '_transient_wc_term_counts', 'a:5:{i:27;s:1:\"0\";i:28;s:1:\"0\";i:25;s:1:\"5\";i:24;s:1:\"3\";i:26;s:1:\"2\";}', 'no'),
(2507, 'product_cat_children', 'a:0:{}', 'yes'),
(2519, 'action_scheduler_migration_status', 'complete', 'yes'),
(2521, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601204350;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(2529, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601204352;s:7:\"checked\";a:13:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:7:\"1.5.7.3\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";s:6:\"0.5.23\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.1\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.5.0\";s:35:\"pre-orders-for-woocommerce/main.php\";s:5:\"1.0.8\";s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";s:5:\"1.8.3\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.9\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.5.2\";s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";s:5:\"1.7.0\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"14.9\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:12:{s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:7:\"1.5.7.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/contact-form-7-mailchimp-extension\";s:4:\"slug\";s:34:\"contact-form-7-mailchimp-extension\";s:6:\"plugin\";s:54:\"contact-form-7-mailchimp-extension/chimpmatic-lite.php\";s:11:\"new_version\";s:6:\"0.5.23\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/contact-form-7-mailchimp-extension/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/contact-form-7-mailchimp-extension.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-256x256.png?rev=1072113\";s:2:\"1x\";s:87:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-128x128.png?rev=1072113\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-1544x500.png?rev=1072092\";s:2:\"1x\";s:89:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-772x250.png?rev=1625715\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"pre-orders-for-woocommerce/main.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/pre-orders-for-woocommerce\";s:4:\"slug\";s:26:\"pre-orders-for-woocommerce\";s:6:\"plugin\";s:35:\"pre-orders-for-woocommerce/main.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/pre-orders-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/pre-orders-for-woocommerce.1.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/pre-orders-for-woocommerce/assets/icon-256x256.jpg?rev=2281163\";s:2:\"1x\";s:79:\"https://ps.w.org/pre-orders-for-woocommerce/assets/icon-128x128.jpg?rev=2281163\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/pre-orders-for-woocommerce/assets/banner-1544x500.jpg?rev=2281163\";s:2:\"1x\";s:81:\"https://ps.w.org/pre-orders-for-woocommerce/assets/banner-772x250.jpg?rev=2281163\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/product-import-export-for-woo\";s:4:\"slug\";s:29:\"product-import-export-for-woo\";s:6:\"plugin\";s:63:\"product-import-export-for-woo/product-import-export-for-woo.php\";s:11:\"new_version\";s:5:\"1.8.3\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/product-import-export-for-woo/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/product-import-export-for-woo.1.8.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/product-import-export-for-woo/assets/icon-256x256.png?rev=2010403\";s:2:\"1x\";s:82:\"https://ps.w.org/product-import-export-for-woo/assets/icon-128x128.jpg?rev=1906359\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/product-import-export-for-woo/assets/banner-1544x500.jpg?rev=2065538\";s:2:\"1x\";s:84:\"https://ps.w.org/product-import-export-for-woo/assets/banner-772x250.jpg?rev=2065542\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}}s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/woocommerce-product-stock-alert\";s:4:\"slug\";s:31:\"woocommerce-product-stock-alert\";s:6:\"plugin\";s:55:\"woocommerce-product-stock-alert/product_stock_alert.php\";s:11:\"new_version\";s:5:\"1.7.0\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/woocommerce-product-stock-alert/\";s:7:\"package\";s:80:\"https://downloads.wordpress.org/plugin/woocommerce-product-stock-alert.1.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:84:\"https://ps.w.org/woocommerce-product-stock-alert/assets/icon-256x256.png?rev=1592392\";s:2:\"1x\";s:84:\"https://ps.w.org/woocommerce-product-stock-alert/assets/icon-128x128.png?rev=1592392\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:86:\"https://ps.w.org/woocommerce-product-stock-alert/assets/banner-772x250.jpg?rev=2371395\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"14.9\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.14.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no'),
(2530, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601204352;s:7:\"checked\";a:2:{s:8:\"cosmedoc\";s:5:\"2.0.0\";s:23:\"empty-theme/empty-theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wss_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2535, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1601749895', 'no'),
(2536, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2537, '_transient_timeout_wc_report_sales_by_date', '1601231495', 'no'),
(2538, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"bac452105e26e196d1bb89b5cb8df0f5\";a:0:{}s:32:\"4d381f7b9405fce78197d47dcde1e2e2\";a:0:{}s:32:\"19992fe09031dc425aae17511c358d29\";a:0:{}s:32:\"6721d17d8e9cae62f7c3cdc0c5bfbef7\";N;s:32:\"e25d7dd94232adbc22ca9f3979fe5102\";a:0:{}s:32:\"d8de4513cbebe38dda958a5e4024ef00\";a:0:{}s:32:\"110a49bb3b07abfc6d68266799f24792\";a:0:{}s:32:\"18a58511a00668fabf11bb174e77c97a\";a:0:{}}', 'no'),
(2539, '_transient_timeout_wc_admin_report', '1601231495', 'no'),
(2540, '_transient_wc_admin_report', 'a:1:{s:32:\"acd34b64bfae30f07858eda6b049bc87\";a:0:{}}', 'no'),
(2571, '_transient_timeout__woocommerce_helper_updates', '1601238460', 'no'),
(2573, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1601195260;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(2607, '_site_transient_timeout_available_translations', '1601207425', 'no');
INSERT INTO `wss_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2608, '_site_transient_available_translations', 'a:122:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-20 19:59:25\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-24 06:56:02\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.15/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-22 10:57:09\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.14/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 09:02:07\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-17 11:59:40\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 13:00:36\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-06-11 08:59:48\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-15 13:08:41\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-04 08:37:35\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 20:03:47\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.5.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-23 11:19:47\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 20:03:38\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-13 17:09:13\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-23 11:21:07\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.5.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-11 11:25:19\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 23:59:49\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-01 19:35:42\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 06:42:25\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 06:41:38\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-03-31 22:29:33\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 15:08:45\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-17 09:26:34\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-16 17:47:09\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 06:07:56\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-23 23:51:44\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 14:15:48\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-23 16:46:04\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-16 03:52:10\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-11 12:26:58\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:3:\"5.5\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 15:51:06\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-26 15:02:46\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-01 19:36:15\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-08 08:44:11\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-24 17:47:23\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-25 08:39:33\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-22 10:26:04\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-21 16:22:03\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-03 19:26:10\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-21 12:01:04\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-06-03 10:58:08\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-09 07:22:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-01 19:33:58\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-26 04:56:43\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.4.1\";s:7:\"updated\";s:19:\"2020-04-30 07:54:16\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-25 10:14:24\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.15/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.3.4\";s:7:\"updated\";s:19:\"2020-08-22 04:31:42\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-15 06:41:03\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.7\";s:7:\"updated\";s:19:\"2020-07-14 08:45:32\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.7/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-14 08:34:14\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.14\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.14/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.15\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-22 19:20:56\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-14 10:09:47\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.5.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 06:47:14\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-23 18:16:13\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-17 05:05:59\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-03 15:42:01\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-03 15:42:46\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.5.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-01 11:09:51\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-14 17:35:06\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-22 13:05:13\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-25 11:32:11\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 08:18:39\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-13 06:50:55\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-02 11:04:40\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"5.5\";s:7:\"updated\";s:19:\"2020-08-12 14:55:13\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.5/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-16 16:01:16\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.6\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-22 08:23:03\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-04 19:01:04\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-19 12:26:14\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.6\";s:7:\"updated\";s:19:\"2020-04-09 10:48:08\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.6/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:6:\"5.0.10\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0.10/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-07-13 09:29:34\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.5.1\";s:7:\"updated\";s:19:\"2020-09-27 07:19:13\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.5.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2020-08-03 03:32:27\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.3\";s:7:\"updated\";s:19:\"2020-03-08 12:12:22\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(2750, '_transient_timeout_acf_plugin_updates', '1601377151', 'no'),
(2751, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";}}', 'no'),
(2754, '_site_transient_timeout_theme_roots', '1601206151', 'no'),
(2755, '_site_transient_theme_roots', 'a:2:{s:8:\"cosmedoc\";s:7:\"/themes\";s:23:\"empty-theme/empty-theme\";s:7:\"/themes\";}', 'no');

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
(87, 30, '_edit_lock', '1600596048:1'),
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
(114, 30, '_manage_stock', 'no'),
(115, 30, '_backorders', 'no'),
(116, 30, '_sold_individually', 'no'),
(117, 30, '_virtual', 'no'),
(118, 30, '_downloadable', 'no'),
(119, 30, '_download_limit', '-1'),
(120, 30, '_download_expiry', '-1'),
(121, 30, '_stock', NULL),
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
(173, 46, '_edit_lock', '1601043123:1'),
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
(220, 53, '_edit_lock', '1600600814:1'),
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
(253, 53, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
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
(289, 58, '_edit_lock', '1600604264:1'),
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
(304, 58, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:9:\"pa_weight\";a:6:{s:4:\"name\";s:9:\"pa_weight\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
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
(332, 64, '_edit_lock', '1601049903:1'),
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
(353, 64, '_product_attributes', 'a:2:{s:22:\"pa_strana-proizvoditel\";a:6:{s:4:\"name\";s:22:\"pa_strana-proizvoditel\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:21:\"pa_kolichestvo-tovara\";a:6:{s:4:\"name\";s:21:\"pa_kolichestvo-tovara\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
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
(371, 68, '_edit_lock', '1600604083:1'),
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
(430, 76, '_edit_lock', '1600773373:1'),
(431, 78, '_edit_last', '1'),
(432, 78, '_wp_page_template', 'default'),
(433, 78, '_edit_lock', '1600793495:1'),
(434, 80, '_edit_last', '1'),
(435, 80, '_wp_page_template', 'default'),
(436, 80, '_edit_lock', '1600773440:1'),
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
(465, 85, '_edit_lock', '1601062786:1'),
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
(594, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
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
(642, 123, '_edit_lock', '1601070971:1'),
(643, 125, '_edit_last', '1'),
(644, 125, '_edit_lock', '1601070974:1'),
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
(1022, 162, '_edit_lock', '1601196179:1');

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
(3, 1, '2020-09-18 10:59:08', '2020-09-18 10:59:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://cosmedoc.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-18 10:59:08', '2020-09-18 10:59:08', '', 0, 'http://cosmedoc.local/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-09-18 11:12:05', '2020-09-18 11:12:05', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-09-18 11:12:05', '2020-09-18 11:12:05', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2020-09-19 11:55:02', '2020-09-19 11:55:02', '', '2_lico_m', '', 'inherit', 'open', 'closed', '', '2_lico_m', '', '', '2020-09-19 11:55:02', '2020-09-19 11:55:02', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_lico_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-09-19 11:55:08', '2020-09-19 11:55:08', '', '2_volosy_m', '', 'inherit', 'open', 'closed', '', '2_volosy_m', '', '', '2020-09-19 11:55:08', '2020-09-19 11:55:08', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_volosy_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2020-09-19 11:57:36', '2020-09-19 11:57:36', '', '2_telo_m', '', 'inherit', 'open', 'closed', '', '2_telo_m', '', '', '2020-09-19 11:57:36', '2020-09-19 11:57:36', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_telo_m.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2020-09-19 11:58:02', '2020-09-19 11:58:02', '', '2_acsessuary_m', '', 'inherit', 'open', 'closed', '', '2_acsessuary_m', '', '', '2020-09-19 11:58:02', '2020-09-19 11:58:02', '', 0, 'http://cosmedoc.local/wp-content/uploads/2020/09/2_acsessuary_m.jpg', 0, 'attachment', 'image/jpeg', 0),
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
(30, 1, '2020-09-20 09:11:26', '2020-09-20 09:11:26', '<p class=\"bundle-contain\">В составе набора:</p>\r\n\r\n<div id=\"product-options-wrapper\" class=\"product-options\">\r\n<dl class=\"last\">\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Питательный шампунь с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Питательная маска для волос с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Восстанавливающий термозащитный крем для волос с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd>\r\n<div class=\"input-box\"> 1 x Ночной Увлажняющий лосьон для волос с маслом ши</div>\r\n&nbsp;</dd>\r\n 	<dd class=\"last\">\r\n<div class=\"input-box\"> 1 x Увлажняющая сыворотка для волос с маслом ши</div></dd>\r\n</dl>\r\n</div>', 'Набор для восстановления волос с маслом ши (5 продуктов)', '', 'publish', 'open', 'closed', '', 'nabor-dlya-vosstanovleniya-volos-s-maslom-shi-5-produktov', '', '', '2020-09-20 10:01:53', '2020-09-20 10:01:53', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=30', 0, 'product', '', 0),
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
(53, 1, '2020-09-20 10:10:07', '2020-09-20 10:10:07', 'Универсальное питательное масло с экстрактом бергамота и пиона. Можно использовать не только для волос, но и для тела. Интенсивно питает волосы и увлажняет кожу.', 'Крем-масло для волос и тела Пион и Бергамот', '', 'publish', 'open', 'closed', '', 'krem-maslo-dlya-volos-i-tela-pion-i-bergamot', '', '', '2020-09-20 11:20:13', '2020-09-20 11:20:13', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=53', 0, 'product', '', 0),
(54, 1, '2020-09-20 10:09:57', '2020-09-20 10:09:57', '', '_kl_te002', '', 'inherit', 'open', 'closed', '', '_kl_te002', '', '', '2020-09-20 10:09:57', '2020-09-20 10:09:57', '', 53, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_te002.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-09-20 10:14:35', '2020-09-20 10:14:35', '', 'Масло для укрепления и восстановления длинных волос', '', 'publish', 'open', 'closed', '', 'maslo-dlya-ukrepleniya-i-vosstanovleniya-dlinnyh-volos', '', '', '2020-09-22 21:36:47', '2020-09-22 21:36:47', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2020-09-20 10:14:16', '2020-09-20 10:14:16', '', '_kl_km055', '', 'inherit', 'open', 'closed', '', '_kl_km055', '', '', '2020-09-20 10:14:16', '2020-09-20 10:14:16', '', 56, 'http://cosmedoc.local/wp-content/uploads/2020/09/kl_km055.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-09-20 10:52:59', '2020-09-20 10:52:59', 'Консилер обладает кремовой текстурой, помогает скрыть темные круги под глазами и недостатки. Защита широкого спектра SPF20 помогает защитить от видимых признаков преждевременного старения.', 'Консилер 20spf Light', '', 'publish', 'open', 'closed', '', 'konsiler-20spf-light', '', '', '2020-09-20 12:17:44', '2020-09-20 12:17:44', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2020-09-20 10:51:53', '2020-09-20 10:51:53', '', '651473708865_2', '', 'inherit', 'open', 'closed', '', '651473708865_2', '', '', '2020-09-20 10:51:53', '2020-09-20 10:51:53', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-09-20 10:52:17', '2020-09-20 10:52:17', '', '651473708865_1', '', 'inherit', 'open', 'closed', '', '651473708865_1', '', '', '2020-09-20 10:52:17', '2020-09-20 10:52:17', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-09-20 10:52:19', '2020-09-20 10:52:19', '', '651473708865_2', '', 'inherit', 'open', 'closed', '', '651473708865_2-2', '', '', '2020-09-20 10:52:19', '2020-09-20 10:52:19', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-09-20 10:52:20', '2020-09-20 10:52:20', '', '651473708865_3', '', 'inherit', 'open', 'closed', '', '651473708865_3', '', '', '2020-09-20 10:52:20', '2020-09-20 10:52:20', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-09-20 10:52:21', '2020-09-20 10:52:21', '', '651473708865_4', '', 'inherit', 'open', 'closed', '', '651473708865_4', '', '', '2020-09-20 10:52:21', '2020-09-20 10:52:21', '', 58, 'http://cosmedoc.local/wp-content/uploads/2020/09/651473708865_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-09-20 10:58:42', '2020-09-20 10:58:42', 'PureLift™ Face – это устройство для подтяжки и скульптурирования лица. Без уколов, боли и периода восстановления! PureLift™ FACE специально разработан для домашнего использования. Всего за 10 минут в день он укрепляет мышцы, обеспечивая тонус, упругость и подтяжку кожи. Его секрет – запатентованный метод трехволновой электромиостимуляции: PureLift™ Face генерирует электрические импульсы, вызывающие интенсивное сокращение и расслабление глубоких лицевых мышц.', 'Аппарат для лица PureLift Face Красный', '', 'publish', 'open', 'closed', '', 'apparat-dlya-licza-purelift-face-krasnyj', '', '', '2020-09-20 11:14:14', '2020-09-20 11:14:14', '', 0, 'http://cosmedoc.local/?post_type=product&#038;p=64', 0, 'product', '', 0),
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
(76, 1, '2020-09-22 11:18:19', '2020-09-22 11:18:19', '', 'Интернет-магазин', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2020-09-22 11:18:35', '2020-09-22 11:18:35', '', 0, 'http://cosmedoc.local/?page_id=76', 0, 'page', '', 0),
(77, 1, '2020-09-22 11:18:19', '2020-09-22 11:18:19', '', 'Интернет-магазин', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-09-22 11:18:19', '2020-09-22 11:18:19', '', 76, 'http://cosmedoc.local/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-09-22 11:18:52', '2020-09-22 11:18:52', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-22 16:51:35', '2020-09-22 16:51:35', '', 0, 'http://cosmedoc.local/?page_id=78', 0, 'page', '', 0),
(79, 1, '2020-09-22 11:18:52', '2020-09-22 11:18:52', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 11:18:52', '2020-09-22 11:18:52', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-09-22 11:19:25', '2020-09-22 11:19:25', '', 'O Нас', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-09-22 11:19:39', '2020-09-22 11:19:39', '', 0, 'http://cosmedoc.local/?page_id=80', 0, 'page', '', 0),
(81, 1, '2020-09-22 11:19:25', '2020-09-22 11:19:25', '', 'O Нас', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-09-22 11:19:25', '2020-09-22 11:19:25', '', 80, 'http://cosmedoc.local/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-09-22 11:20:13', '2020-09-22 11:20:13', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2020-09-27 09:09:17', '2020-09-27 09:09:17', '', 0, 'http://cosmedoc.local/?p=82', 3, 'nav_menu_item', '', 0),
(83, 1, '2020-09-22 11:20:13', '2020-09-22 11:20:13', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2020-09-27 09:09:17', '2020-09-27 09:09:17', '', 0, 'http://cosmedoc.local/?p=83', 2, 'nav_menu_item', '', 0),
(84, 1, '2020-09-22 11:20:13', '2020-09-22 11:20:13', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2020-09-27 09:09:17', '2020-09-27 09:09:17', '', 0, 'http://cosmedoc.local/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Главные Настройки', 'glavnye-nastrojki', 'publish', 'closed', 'closed', '', 'group_5f69deac57af5', '', '', '2020-09-22 13:12:35', '2020-09-22 13:12:35', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:1;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Контактная информация', 'kontaktnaya_informacziya', 'publish', 'closed', 'closed', '', 'field_5f69dec1c4f68', '', '', '2020-09-22 11:26:19', '2020-09-22 11:26:19', '', 85, 'http://cosmedoc.local/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(87, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Копирайт', 'copyright', 'publish', 'closed', 'closed', '', 'field_5f69df1fc4f69', '', '', '2020-09-22 11:26:45', '2020-09-22 11:26:45', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=87', 1, 'acf-field', '', 0),
(88, 1, '2020-09-22 11:26:19', '2020-09-22 11:26:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5f69df41c4f6a', '', '', '2020-09-22 11:26:45', '2020-09-22 11:26:45', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=88', 2, 'acf-field', '', 0),
(89, 1, '2020-09-22 11:34:07', '2020-09-22 11:34:07', '[email* your-email placeholder \"Ваш E-mail\"]<button id=\'submit\' class=\'wpcf7-form-control wpcf7-submit\'>Подписаться</button>\n1\nCosmedoc \"[your-subject]\"\nCosmedoc <wordpress@cosmedoc.local>\nirwintram@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Cosmedoc (http://cosmedoc.local)\nReply-To: [your-email]\n\n\n\n\nCosmedoc \"[your-subject]\"\nCosmedoc <wordpress@cosmedoc.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Cosmedoc (http://cosmedoc.local)\nReply-To: irwintram@gmail.com\n\n\n\nСпасибо за то, что подписались на нашу рассылку.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nЭто поле обязательно для заполнения.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Подписка', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-22 15:36:54', '2020-09-22 15:36:54', '', 0, 'http://cosmedoc.local/?post_type=wpcf7_contact_form&#038;p=89', 0, 'wpcf7_contact_form', '', 0),
(90, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Cosmedoc', '', 'publish', 'closed', 'closed', '', 'cosmedoc', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=91', 2, 'nav_menu_item', '', 0),
(92, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=92', 3, 'nav_menu_item', '', 0),
(93, 1, '2020-09-22 11:47:39', '0000-00-00 00:00:00', '', 'Личный кабинет', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-22 11:47:39', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidenczialnosti', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=94', 5, 'nav_menu_item', '', 0),
(95, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Договор оферты', '', 'publish', 'closed', 'closed', '', 'dogovor-oferty', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=95', 6, 'nav_menu_item', '', 0),
(96, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'КАТАЛОГ', '', 'publish', 'closed', 'closed', '', 'katalog', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=96', 7, 'nav_menu_item', '', 0),
(97, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', 'lichnyj-kabinet', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=97', 4, 'nav_menu_item', '', 0),
(98, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Все товары', '', 'publish', 'closed', 'closed', '', 'vse-tovary', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=98', 8, 'nav_menu_item', '', 0),
(99, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Лицо', '', 'publish', 'closed', 'closed', '', 'liczo', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=99', 9, 'nav_menu_item', '', 0),
(100, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Волосы', '', 'publish', 'closed', 'closed', '', 'volosy', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=100', 10, 'nav_menu_item', '', 0),
(101, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Тело', '', 'publish', 'closed', 'closed', '', 'telo', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=101', 11, 'nav_menu_item', '', 0),
(102, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Аксессуары', '', 'publish', 'closed', 'closed', '', 'aksessuary', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=102', 12, 'nav_menu_item', '', 0),
(103, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'ПОМОЩЬ', '', 'publish', 'closed', 'closed', '', 'pomoshh', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=103', 13, 'nav_menu_item', '', 0),
(104, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=104', 14, 'nav_menu_item', '', 0),
(105, 1, '2020-09-22 11:50:58', '0000-00-00 00:00:00', '', 'Контакты', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-22 11:50:58', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=105', 1, 'nav_menu_item', '', 0),
(106, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=106', 15, 'nav_menu_item', '', 0),
(107, 1, '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 'Программа лояльности салонов', '', 'publish', 'closed', 'closed', '', 'programma-loyalnosti-salonov', '', '', '2020-09-22 11:51:24', '2020-09-22 11:51:24', '', 0, 'http://cosmedoc.local/?p=107', 16, 'nav_menu_item', '', 0),
(108, 1, '2020-09-22 12:43:46', '2020-09-22 12:43:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:29:\"Добавить Ссылку\";}', 'Социальные Ссылки', 'social_links', 'publish', 'closed', 'closed', '', 'field_5f69eff40497b', '', '', '2020-09-22 12:45:39', '2020-09-22 12:45:39', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=108', 3, 'acf-field', '', 0),
(109, 1, '2020-09-22 12:43:46', '2020-09-22 12:43:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_5f69f1390497c', '', '', '2020-09-22 12:45:39', '2020-09-22 12:45:39', '', 108, 'http://cosmedoc.local/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2020-09-22 12:55:27', '2020-09-22 12:55:27', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание', 'footer_description', 'publish', 'closed', 'closed', '', 'field_5f69f41d39769', '', '', '2020-09-22 12:55:51', '2020-09-22 12:55:51', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=110', 4, 'acf-field', '', 0),
(111, 1, '2020-09-22 13:01:34', '2020-09-22 13:01:34', 'a:8:{s:4:\"type\";s:9:\"accordion\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"open\";i:1;s:12:\"multi_expand\";i:0;s:8:\"endpoint\";i:0;}', 'Информация подписки', 'informacziya_podpiski', 'publish', 'closed', 'closed', '', 'field_5f69f52d1c17b', '', '', '2020-09-22 13:01:34', '2020-09-22 13:01:34', '', 85, 'http://cosmedoc.local/?post_type=acf-field&p=111', 5, 'acf-field', '', 0),
(112, 1, '2020-09-22 13:01:34', '2020-09-22 13:01:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Заголовок подписки', 'subscribe_title', 'publish', 'closed', 'closed', '', 'field_5f69f5521c17c', '', '', '2020-09-22 13:12:26', '2020-09-22 13:12:26', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=112', 6, 'acf-field', '', 0),
(113, 1, '2020-09-22 13:01:34', '2020-09-22 13:01:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Описание подписки', 'subscribe_description', 'publish', 'closed', 'closed', '', 'field_5f69f58f1c17d', '', '', '2020-09-22 13:12:35', '2020-09-22 13:12:35', '', 85, 'http://cosmedoc.local/?post_type=acf-field&#038;p=113', 7, 'acf-field', '', 0),
(114, 1, '2020-09-22 16:39:09', '2020-09-22 16:39:09', '<p style=\"text-align: center;\">Если у Вас возникли вопросы,\nто свяжитесь с нами по почте или телефону\nв рабочее время салона.</p>\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\n\n\n<hr />\n\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-autosave-v1', '', '', '2020-09-22 16:39:09', '2020-09-22 16:39:09', '', 78, 'http://cosmedoc.local/78-autosave-v1/', 0, 'revision', '', 0),
(115, 1, '2020-09-22 16:38:07', '2020-09-22 16:38:07', '<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n<pre></pre>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 16:38:07', '2020-09-22 16:38:07', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-09-22 16:39:43', '2020-09-22 16:39:43', '<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных</p>\r\n\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 16:39:43', '2020-09-22 16:39:43', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wss_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 1, '2020-09-22 16:51:35', '2020-09-22 16:51:35', '<h1 style=\"text-align: center;\">Контакты</h1>\r\n\r\n<hr />\r\n<p style=\"text-align: center;\">Если у Вас возникли вопросы,\r\nто свяжитесь с нами по почте или телефону\r\nв рабочее время салона.</p>\r\n<p style=\"text-align: center;\"><a href=\"mailto:support@keeplooking.ru\">support@keeplooking.ru</a></p>\r\n<p style=\"text-align: center;\"><a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50</a></p>\r\n\r\n\r\n<hr />\r\n\r\n<h2 style=\"text-align: center;\">САЛОНЫ И ТОЧКИ САМОВЫВОЗА</h2>\r\n<img class=\"size-medium wp-image-44 aligncenter\" src=\"http://cosmedoc.local/wp-content/uploads/2020/09/kl_ss003_1_4-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />\r\n<p style=\"text-align: center;\">127051, МОСКВА\r\nПетровский бульвар, 23</p>\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 1</a>\r\n\r\n123317, МОСКВА\r\nДЦ Москва-Сити, Пресненская набержная, 8, башня «Город столиц»\r\n\r\n<a href=\"tel:+7 499 350 80 50\">+7 499 350 80 50 доб. 2</a>\r\n\r\nЧасы работы ПН-ВС 10:00-22:00\r\nбез перерывов и выходных\r\n\r\n<hr />\r\n\r\n&nbsp;', 'Контакты', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-09-22 16:51:35', '2020-09-22 16:51:35', '', 78, 'http://cosmedoc.local/78-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2020-09-25 10:11:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-25 10:11:11', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=118', 0, 'post', '', 0),
(119, 1, '2020-09-25 14:16:26', '2020-09-25 14:16:26', '{\n    \"woocommerce_thumbnail_image_width\": {\n        \"value\": \"600\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-25 14:16:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '67d64a11-9331-4c29-a54a-f272b2c44c15', '', '', '2020-09-25 14:16:26', '2020-09-25 14:16:26', '', 0, 'http://cosmedoc.local/67d64a11-9331-4c29-a54a-f272b2c44c15/', 0, 'customize_changeset', '', 0),
(120, 1, '2020-09-25 14:16:43', '2020-09-25 14:16:43', '{\n    \"woocommerce_thumbnail_image_width\": {\n        \"value\": \"300\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-25 14:16:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ab99808-d6a0-4006-836b-93b208b5a905', '', '', '2020-09-25 14:16:43', '2020-09-25 14:16:43', '', 0, 'http://cosmedoc.local/6ab99808-d6a0-4006-836b-93b208b5a905/', 0, 'customize_changeset', '', 0),
(121, 1, '2020-09-25 17:56:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-25 17:56:17', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&p=121', 0, 'acf-field-group', '', 0),
(122, 1, '2020-09-25 18:03:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-25 18:03:50', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&p=122', 0, 'acf-field-group', '', 0),
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
(136, 1, '2020-09-25 20:02:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-25 20:02:50', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?post_type=acf-field-group&p=136', 0, 'acf-field-group', '', 0),
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
(166, 1, '2020-09-27 13:22:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-27 13:22:25', '0000-00-00 00:00:00', '', 0, 'http://cosmedoc.local/?p=166', 0, 'post', '', 0);

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
(20, 25, 'product_count_product_cat', '5'),
(21, 23, 'product_count_product_cat', '2'),
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
(43, 55, '_menu_title', 'field_5f705076bd88f');

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
(55, 'Mobile Menu', 'mobile-menu', 0, 0);

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
(161, 55, 0);

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
(10, 10, 'product_type', '', 0, 10),
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
(23, 23, 'product_cat', '', 0, 2),
(24, 24, 'product_cat', '', 0, 3),
(25, 25, 'product_cat', '', 0, 5),
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
(47, 47, 'pa_strana-proizvoditel', '', 0, 1),
(48, 48, 'cos_brands', '', 0, 1),
(49, 49, 'pa_kolichestvo-tovara', '', 0, 1),
(50, 50, 'cos_brands', '', 0, 1),
(51, 51, 'pa_strana-proizvoditel', '', 0, 1),
(52, 52, 'pa_weight', '', 0, 1),
(53, 53, 'nav_menu', '', 0, 3),
(54, 54, 'nav_menu', '', 0, 16),
(55, 55, 'nav_menu', '', 0, 16);

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
(16, 1, 'session_tokens', 'a:2:{s:64:\"a70787b69b47861284fe6bc82bd2b92da5397a7cdf369d1c50f5b0fe24349573\";a:4:{s:10:\"expiration\";i:1601636360;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";s:5:\"login\";i:1600426760;}s:64:\"2532bfd012db7dfd94784d56087652b6bb975c918dc8abcd24748267707a606d\";a:4:{s:10:\"expiration\";i:1601317894;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601145094;}}'),
(17, 1, 'wss_dashboard_quick_press_last_post_id', '118'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:UlmwLMQ1eYyvavNAMFmJOFyo'),
(20, 1, 'wc_last_active', '1601164800'),
(21, 1, '_order_count', '0'),
(24, 1, 'wss_user-settings', 'libraryContent=browse&editor=tinymce'),
(25, 1, 'wss_user-settings-time', '1600792779'),
(26, 1, 'closedpostboxes_product', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(27, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(29, 1, 'meta-box-order_product', 'a:4:{s:15:\"acf_after_title\";s:23:\"acf-group_5f6720cf92c45\";s:4:\"side\";s:98:\"submitdiv,cos_brandsdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:104:\"woocommerce-product-data,postexcerpt,acf-group_5f65f791de5c9,acf-group_5f67477c91249,slugdiv,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_product', '2'),
(33, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:14:\"add-cos_brands\";i:4;s:15:\"add-product_tag\";i:5;s:15:\"add-acf-fg-type\";}'),
(36, 1, 'nav_menu_recently_edited', '55'),
(38, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"9f61408e3afb633e50cdf1b20de6f466\";a:11:{s:3:\"key\";s:32:\"9f61408e3afb633e50cdf1b20de6f466\";s:10:\"product_id\";i:56;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:10;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:17850;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:17850;s:8:\"line_tax\";i:0;}}}'),
(40, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(41, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(43, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

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
(1, 'wss_develop', '$P$BDk9a.jTBAJmH9xYNgZ2tuRisCxx2T0', 'wss_develop', 'irwintram@gmail.com', '', '2020-09-18 10:59:08', '', 0, 'wss_develop');

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
(8, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-09-26 18:31:32', NULL, 0, 'plain', '', 0, 'info');

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
(9, 8, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback');

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
(23, 23);

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
(30, 'KL_RG022_SET', 0, 0, '7410.0000', '7410.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(41, '', 0, 0, '5850.0000', '5850.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(50, 'KL_AB053', 0, 0, '2980.0000', '2980.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(53, 'KL_TE002', 0, 0, '1540.0000', '1540.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, 'KL_KM055', 0, 0, '3570.0000', '3570.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(58, 'KL_PR016', 0, 0, '4240.0000', '4240.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, 'KL_PL003', 0, 0, '38500.0000', '38500.0000', 0, NULL, 'outofstock', 0, '0.00', 0, 'taxable', ''),
(68, 'KL_GS017', 0, 0, '4200.0000', '4200.0000', 0, 2, 'instock', 0, '0.00', 0, 'taxable', '');

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
(1, 'strana-proizvoditel', 'Страна производитель', 'select', 'menu_order', 0),
(2, 'weight', 'Вес продукта', 'select', 'menu_order', 0),
(3, 'kolichestvo-tovara', 'Количество товара', 'select', 'menu_order', 0);

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
(4, 'a699af631c54ef25694fc17ffcd3c54d', 'a:1:{s:8:\"customer\";s:707:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"irwintram@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1601229384),
(10, '507a13c0ad5ea2759f634242b2b06d01', 'a:1:{s:8:\"customer\";s:707:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"IL\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"IL\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"irwintram@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1601317896);

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
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_actions`
--
ALTER TABLE `wss_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_claims`
--
ALTER TABLE `wss_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_groups`
--
ALTER TABLE `wss_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wss_actionscheduler_logs`
--
ALTER TABLE `wss_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
-- AUTO_INCREMENT для таблицы `wss_links`
--
ALTER TABLE `wss_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wss_options`
--
ALTER TABLE `wss_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2926;

--
-- AUTO_INCREMENT для таблицы `wss_postmeta`
--
ALTER TABLE `wss_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1025;

--
-- AUTO_INCREMENT для таблицы `wss_posts`
--
ALTER TABLE `wss_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT для таблицы `wss_termmeta`
--
ALTER TABLE `wss_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `wss_terms`
--
ALTER TABLE `wss_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `wss_term_taxonomy`
--
ALTER TABLE `wss_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `wss_usermeta`
--
ALTER TABLE `wss_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `wss_users`
--
ALTER TABLE `wss_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wss_wc_admin_notes`
--
ALTER TABLE `wss_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `wss_wc_admin_note_actions`
--
ALTER TABLE `wss_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
