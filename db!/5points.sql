-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 08 2020 г., 11:26
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `5points`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_page` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '100',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `slug`, `main_image`, `main_page`, `sort`, `created_at`, `updated_at`) VALUES
(3, 'news-one', 'articles\\September2020\\wkZCkH808pG50MPX6asA.jpg', 1, 111, '2020-09-07 05:29:00', '2020-09-07 11:38:54');

-- --------------------------------------------------------

--
-- Структура таблицы `article_descriptions`
--

DROP TABLE IF EXISTS `article_descriptions`;
CREATE TABLE `article_descriptions` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` varchar(2550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description3` varchar(2550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_descriptions`
--

INSERT INTO `article_descriptions` (`id`, `article_id`, `language_id`, `title`, `description`, `description2`, `description3`, `meta_title`, `meta_description`, `keys`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Astronomy Binoculars A Great Alternative', '<p class=\"excert\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction.</p>\r\n<p>Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed</p>\r\n<p>Boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually sit through a self-imposed</p>', '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.</p>', '<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower.</p>\r\n<p>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower.</p>', 'sesese', 'seesesf', 'fsefsef sefsefsef', NULL, '2020-09-07 11:54:45'),
(2, 3, 2, 'рус', '<p>фівафіваіфва</p>', '<div>123</div>', NULL, 'іфва', 'фіва', 'фіваіфва фіва фіва', NULL, '2020-09-08 04:02:12');

-- --------------------------------------------------------

--
-- Структура таблицы `article_images`
--

DROP TABLE IF EXISTS `article_images`;
CREATE TABLE `article_images` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `article_images`
--

INSERT INTO `article_images` (`id`, `article_id`, `path`, `created_at`, `updated_at`) VALUES
(8, 3, 'article-images\\September2020\\GTvOIV6UcdKhRkGsopy7.jpg', '2020-09-08 03:55:42', '2020-09-08 03:55:42'),
(9, 3, 'article-images\\September2020\\RxByvovgpBhxCAoyBzbF.jpg', '2020-09-08 03:55:54', '2020-09-08 03:55:54'),
(10, 3, 'article-images\\September2020\\a094DiZyCIN6y0PAdum2.jpg', '2020-09-08 03:56:12', '2020-09-08 03:56:12');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_mail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 6, 'main_image', 'image', 'Main Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"750\",\"height\":null},\"quality\":\"100%\"}', 2),
(24, 6, 'main_page', 'checkbox', 'Main Page', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 6, 'sort', 'number', 'Sort', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(27, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(32, 8, 'article_id', 'number', 'Article Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(33, 8, 'path', 'image', 'Path', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"360\",\"height\":\"350\"},\"quality\":\"100%\",\"upsize\":true}', 2),
(34, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(35, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(36, 10, 'article_id', 'number', 'Article Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(37, 10, 'language_id', 'number', 'Language Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(38, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(39, 10, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(40, 10, 'meta_title', 'text', 'Meta Title', 1, 1, 1, 1, 1, 1, '{}', 8),
(41, 10, 'meta_description', 'text', 'Meta Description', 1, 1, 1, 1, 1, 1, '{}', 9),
(42, 10, 'keys', 'text', 'Keys', 1, 1, 1, 1, 1, 1, '{}', 10),
(43, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(44, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(47, 8, 'article_image_belongsto_article_relationship', 'relationship', 'articles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Articles\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"slug\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(48, 10, 'article_description_belongsto_article_relationship', 'relationship', 'articles', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Articles\",\"table\":\"articles\",\"type\":\"belongsTo\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"slug\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(49, 10, 'article_description_belongsto_language_relationship', 'relationship', 'languages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Language\",\"table\":\"languages\",\"type\":\"belongsTo\",\"column\":\"language_id\",\"key\":\"id\",\"label\":\"language\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(50, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 11, 'language', 'text', 'Language', 1, 1, 1, 1, 1, 1, '{}', 2),
(52, 11, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(53, 11, 'flag', 'image', 'Flag', 0, 1, 1, 1, 1, 1, '{}', 4),
(54, 11, 'status', 'checkbox', 'Status', 1, 1, 1, 1, 1, 1, '{}', 5),
(55, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(56, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(57, 11, 'language_hasmany_article_description_relationship', 'relationship', 'article_descriptions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ArticleDescriptions\",\"table\":\"article_descriptions\",\"type\":\"hasMany\",\"column\":\"language_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(58, 6, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"slug\",\"forceUpdate\":true}}', 2),
(59, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 10, 'description2', 'rich_text_box', 'Description2', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 10, 'description3', 'rich_text_box', 'Description3', 0, 1, 1, 1, 1, 1, '{}', 7),
(82, 11, 'language_hasmany_portfolio_description_relationship', 'relationship', 'portfolio_descriptions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PortfolioDescription\",\"table\":\"portfolio_descriptions\",\"type\":\"hasMany\",\"column\":\"language_id\",\"key\":\"language_id\",\"label\":\"language_id\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":null}', 9),
(84, 6, 'article_hasmany_article_image_relationship', 'relationship', 'Images', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ArticleImages\",\"table\":\"article_images\",\"type\":\"hasMany\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"path\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(85, 6, 'article_hasmany_article_description_relationship', 'relationship', 'Descriptions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ArticleDescriptions\",\"table\":\"article_descriptions\",\"type\":\"hasMany\",\"column\":\"article_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(108, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 25, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(110, 25, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(111, 25, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 4),
(112, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(113, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(114, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 26, 'portfolio_id', 'number', 'Portfolio Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(116, 26, 'language_id', 'number', 'Language Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(117, 26, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(118, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(119, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(120, 27, 'portfolio_id', 'number', 'Portfolio Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(121, 27, 'path', 'image', 'Path', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"750\",\"height\":null},\"quality\":\"100%\"}', 2),
(122, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(123, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(124, 25, 'portfolio_hasone_portfolio_description_relationship', 'relationship', 'portfolio_descriptions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PortfolioDescriptions\",\"table\":\"portfolio_descriptions\",\"type\":\"hasOne\",\"column\":\"portfolio_id\",\"key\":\"id\",\"label\":\"description\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":null}', 7),
(125, 26, 'portfolio_description_belongsto_portfolio_relationship', 'relationship', 'portfolios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Portfolios\",\"table\":\"portfolios\",\"type\":\"belongsTo\",\"column\":\"portfolio_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":null}', 7),
(126, 26, 'portfolio_description_belongsto_language_relationship', 'relationship', 'languages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Language\",\"table\":\"languages\",\"type\":\"belongsTo\",\"column\":\"language_id\",\"key\":\"id\",\"label\":\"language\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":null}', 8),
(127, 27, 'portfolio_image_belongsto_portfolio_relationship', 'relationship', 'portfolios', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Portfolios\",\"table\":\"portfolios\",\"type\":\"belongsTo\",\"column\":\"portfolio_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(128, 25, 'portfolio_hasmany_portfolio_image_relationship', 'relationship', 'portfolio_images', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PortfolioImages\",\"table\":\"portfolio_images\",\"type\":\"hasMany\",\"column\":\"portfolio_id\",\"key\":\"portfolio_id\",\"label\":\"path\",\"pivot_table\":\"article_descriptions\",\"pivot\":\"0\",\"taggable\":null}', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(6, 'articles', 'articles', 'Articles', 'Articles', NULL, 'App\\Articles', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-07 04:54:10', '2020-09-08 04:23:42'),
(8, 'article_images', 'article-images', 'Article Image', 'Article Images', NULL, 'App\\ArticleImages', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-07 04:56:41', '2020-09-08 04:31:45'),
(10, 'article_descriptions', 'article-descriptions', 'Article Description', 'Article Descriptions', NULL, 'App\\ArticleDescriptions', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-07 04:58:05', '2020-09-08 04:16:56'),
(11, 'languages', 'languages', 'Language', 'Languages', NULL, 'App\\Language', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-07 05:03:17', '2020-09-07 05:53:12'),
(25, 'portfolios', 'portfolios', 'Portfolio', 'Portfolios', NULL, 'App\\Portfolios', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-08 05:12:12', '2020-09-08 05:12:12'),
(26, 'portfolio_descriptions', 'portfolio-descriptions', 'Portfolio Description', 'Portfolio Descriptions', NULL, 'App\\PortfolioDescriptions', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-09-08 05:14:24', '2020-09-08 05:14:24'),
(27, 'portfolio_images', 'portfolio-images', 'Portfolio Image', 'Portfolio Images', NULL, 'App\\PortfolioImages', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-08 05:15:16', '2020-09-08 05:23:29');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `flag`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'flags\\usa.png', 1, '2020-09-07 08:25:00', '2020-09-07 05:25:37'),
(2, 'Russian', 'ru', 'flags\\russian.png', 1, NULL, NULL),
(3, 'Dutch', 'de', 'flags\\german.png', 1, NULL, NULL),
(4, 'Israel', 'he', 'flags\\israel.png', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(2, 'Moderator', '2020-09-07 12:17:44', '2020-09-07 12:17:44');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-09-01 10:07:41', '2020-09-01 10:07:41', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-09-01 10:07:41', '2020-09-07 05:21:28', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-09-01 10:07:41', '2020-09-01 10:07:41', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-09-01 10:07:41', '2020-09-01 10:07:41', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2020-09-01 10:07:41', '2020-09-07 05:21:28', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-09-01 10:07:41', '2020-09-07 05:21:28', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-09-01 10:07:41', '2020-09-07 05:21:28', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-09-01 10:07:41', '2020-09-07 05:21:28', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-09-01 10:07:41', '2020-09-07 05:21:28', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-09-01 10:07:41', '2020-09-08 05:22:13', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-09-01 10:07:41', '2020-09-07 05:21:28', 'voyager.hooks', NULL),
(12, 1, 'Articles', '', '_self', NULL, '#000000', NULL, 6, '2020-09-07 04:54:11', '2020-09-07 12:22:08', 'voyager.articles.index', 'null'),
(14, 1, 'Article Images', '', '_self', NULL, NULL, NULL, 8, '2020-09-07 04:56:41', '2020-09-07 12:22:08', 'voyager.article-images.index', NULL),
(15, 1, 'Article Descriptions', '', '_self', NULL, NULL, NULL, 7, '2020-09-07 04:58:05', '2020-09-07 12:22:08', 'voyager.article-descriptions.index', NULL),
(16, 1, 'Languages', '', '_self', NULL, NULL, NULL, 9, '2020-09-07 05:03:17', '2020-09-08 05:22:13', 'voyager.languages.index', NULL),
(23, 1, 'Portfolios', '', '_self', NULL, NULL, NULL, 11, '2020-09-08 05:12:12', '2020-09-08 05:22:13', 'voyager.portfolios.index', NULL),
(24, 1, 'Portfolio Descriptions', '', '_self', NULL, NULL, NULL, 12, '2020-09-08 05:14:24', '2020-09-08 05:22:13', 'voyager.portfolio-descriptions.index', NULL),
(25, 1, 'Portfolio Images', '', '_self', NULL, '#000000', NULL, 13, '2020-09-08 05:15:16', '2020-09-08 05:23:01', 'voyager.portfolio-images.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_09_01_112701_create_portfolios_table', 1),
(4, '2020_09_01_123732_create_portfolio_images_table', 1),
(5, '2020_09_01_123914_create_portfolio_descriptions_table', 1),
(6, '2020_09_01_124401_create_languages_table', 1),
(7, '2020_09_01_124706_create_contacts_table', 1),
(8, '2020_09_01_124854_create_articles_table', 1),
(9, '2020_09_01_125029_create_article_descriptions_table', 1),
(10, '2020_09_01_125306_create_article_images_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 2),
(12, '2016_01_01_000000_add_voyager_user_fields', 2),
(13, '2016_01_01_000000_create_data_types_table', 2),
(14, '2016_05_19_173453_create_menu_table', 2),
(15, '2016_10_21_190000_create_roles_table', 2),
(16, '2016_10_21_190000_create_settings_table', 2),
(17, '2016_11_30_135954_create_permission_table', 2),
(18, '2016_11_30_141208_create_permission_role_table', 2),
(19, '2016_12_26_201236_data_types__add__server_side', 2),
(20, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(21, '2017_01_14_005015_create_translations_table', 2),
(22, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(23, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(24, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(25, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(26, '2017_08_05_000000_add_group_to_settings_table', 2),
(27, '2017_11_26_013050_add_user_role_relationship', 2),
(28, '2017_11_26_015000_create_user_roles_table', 2),
(29, '2018_03_11_000000_add_user_settings', 2),
(30, '2018_03_14_000000_add_details_to_data_types_table', 2),
(31, '2018_03_16_000000_make_settings_value_nullable', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(2, 'browse_bread', NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(3, 'browse_database', NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(4, 'browse_media', NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(5, 'browse_compass', NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(6, 'browse_menus', 'menus', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(7, 'read_menus', 'menus', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(8, 'edit_menus', 'menus', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(9, 'add_menus', 'menus', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(10, 'delete_menus', 'menus', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(11, 'browse_roles', 'roles', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(12, 'read_roles', 'roles', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(13, 'edit_roles', 'roles', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(14, 'add_roles', 'roles', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(15, 'delete_roles', 'roles', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(16, 'browse_users', 'users', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(17, 'read_users', 'users', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(18, 'edit_users', 'users', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(19, 'add_users', 'users', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(20, 'delete_users', 'users', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(21, 'browse_settings', 'settings', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(22, 'read_settings', 'settings', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(23, 'edit_settings', 'settings', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(24, 'add_settings', 'settings', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(25, 'delete_settings', 'settings', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(26, 'browse_hooks', NULL, '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(27, 'browse_articles', 'articles', '2020-09-07 04:54:10', '2020-09-07 04:54:10'),
(28, 'read_articles', 'articles', '2020-09-07 04:54:10', '2020-09-07 04:54:10'),
(29, 'edit_articles', 'articles', '2020-09-07 04:54:10', '2020-09-07 04:54:10'),
(30, 'add_articles', 'articles', '2020-09-07 04:54:10', '2020-09-07 04:54:10'),
(31, 'delete_articles', 'articles', '2020-09-07 04:54:10', '2020-09-07 04:54:10'),
(37, 'browse_article_images', 'article_images', '2020-09-07 04:56:41', '2020-09-07 04:56:41'),
(38, 'read_article_images', 'article_images', '2020-09-07 04:56:41', '2020-09-07 04:56:41'),
(39, 'edit_article_images', 'article_images', '2020-09-07 04:56:41', '2020-09-07 04:56:41'),
(40, 'add_article_images', 'article_images', '2020-09-07 04:56:41', '2020-09-07 04:56:41'),
(41, 'delete_article_images', 'article_images', '2020-09-07 04:56:41', '2020-09-07 04:56:41'),
(42, 'browse_article_descriptions', 'article_descriptions', '2020-09-07 04:58:05', '2020-09-07 04:58:05'),
(43, 'read_article_descriptions', 'article_descriptions', '2020-09-07 04:58:05', '2020-09-07 04:58:05'),
(44, 'edit_article_descriptions', 'article_descriptions', '2020-09-07 04:58:05', '2020-09-07 04:58:05'),
(45, 'add_article_descriptions', 'article_descriptions', '2020-09-07 04:58:05', '2020-09-07 04:58:05'),
(46, 'delete_article_descriptions', 'article_descriptions', '2020-09-07 04:58:05', '2020-09-07 04:58:05'),
(47, 'browse_languages', 'languages', '2020-09-07 05:03:17', '2020-09-07 05:03:17'),
(48, 'read_languages', 'languages', '2020-09-07 05:03:17', '2020-09-07 05:03:17'),
(49, 'edit_languages', 'languages', '2020-09-07 05:03:17', '2020-09-07 05:03:17'),
(50, 'add_languages', 'languages', '2020-09-07 05:03:17', '2020-09-07 05:03:17'),
(51, 'delete_languages', 'languages', '2020-09-07 05:03:17', '2020-09-07 05:03:17'),
(82, 'browse_portfolios', 'portfolios', '2020-09-08 05:12:12', '2020-09-08 05:12:12'),
(83, 'read_portfolios', 'portfolios', '2020-09-08 05:12:12', '2020-09-08 05:12:12'),
(84, 'edit_portfolios', 'portfolios', '2020-09-08 05:12:12', '2020-09-08 05:12:12'),
(85, 'add_portfolios', 'portfolios', '2020-09-08 05:12:12', '2020-09-08 05:12:12'),
(86, 'delete_portfolios', 'portfolios', '2020-09-08 05:12:12', '2020-09-08 05:12:12'),
(87, 'browse_portfolio_descriptions', 'portfolio_descriptions', '2020-09-08 05:14:24', '2020-09-08 05:14:24'),
(88, 'read_portfolio_descriptions', 'portfolio_descriptions', '2020-09-08 05:14:24', '2020-09-08 05:14:24'),
(89, 'edit_portfolio_descriptions', 'portfolio_descriptions', '2020-09-08 05:14:24', '2020-09-08 05:14:24'),
(90, 'add_portfolio_descriptions', 'portfolio_descriptions', '2020-09-08 05:14:24', '2020-09-08 05:14:24'),
(91, 'delete_portfolio_descriptions', 'portfolio_descriptions', '2020-09-08 05:14:24', '2020-09-08 05:14:24'),
(92, 'browse_portfolio_images', 'portfolio_images', '2020-09-08 05:15:16', '2020-09-08 05:15:16'),
(93, 'read_portfolio_images', 'portfolio_images', '2020-09-08 05:15:16', '2020-09-08 05:15:16'),
(94, 'edit_portfolio_images', 'portfolio_images', '2020-09-08 05:15:16', '2020-09-08 05:15:16'),
(95, 'add_portfolio_images', 'portfolio_images', '2020-09-08 05:15:16', '2020-09-08 05:15:16'),
(96, 'delete_portfolio_images', 'portfolio_images', '2020-09-08 05:15:16', '2020-09-08 05:15:16');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `slug`, `link`, `created_at`, `updated_at`) VALUES
(5, 'qqqqqqqq', 'qqqqqqqq', NULL, '2020-09-08 05:16:37', '2020-09-08 05:16:37'),
(6, 'wwwwwwwwwwwwww', 'wwwwwwwwwwwwww', NULL, '2020-09-08 05:16:48', '2020-09-08 05:16:48');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_descriptions`
--

DROP TABLE IF EXISTS `portfolio_descriptions`;
CREATE TABLE `portfolio_descriptions` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolio_descriptions`
--

INSERT INTO `portfolio_descriptions` (`id`, `portfolio_id`, `language_id`, `description`, `created_at`, `updated_at`) VALUES
(6, 5, 1, '<p>qqqqqqqqqqq eng</p>', '2020-09-08 05:18:54', '2020-09-08 05:18:54'),
(7, 5, 2, '<p>qqqqqqqqqqqqqqq ru</p>', '2020-09-08 05:19:05', '2020-09-08 05:19:05'),
(8, 6, 1, '<p>wwwwwwwwwwwwwwwwwwww eng</p>', '2020-09-08 05:19:18', '2020-09-08 05:19:18'),
(9, 6, 2, '<p>wwwwwwwwwwwwww ru</p>', '2020-09-08 05:19:30', '2020-09-08 05:19:30');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolio_images`
--

DROP TABLE IF EXISTS `portfolio_images`;
CREATE TABLE `portfolio_images` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `path` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 5, 'portfolio-images\\September2020\\9fqGOtLYOEdKCsg0vfoZ.jpg', '2020-09-08 05:21:02', '2020-09-08 05:21:02'),
(2, 5, 'portfolio-images\\September2020\\RGA0OJr7UIaw7JTrBaW1.jpg', '2020-09-08 05:25:15', '2020-09-08 05:25:15'),
(3, 6, 'portfolio-images\\September2020\\b0w3wOluk3kryrqtdQ5d.jpg', '2020-09-08 05:25:22', '2020-09-08 05:25:22'),
(4, 6, 'portfolio-images\\September2020\\FNrmp55BDDLaZsOut39W.jpg', '2020-09-08 05:25:30', '2020-09-08 05:25:30');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(2, 'user', 'Normal User', '2020-09-01 10:07:41', '2020-09-01 10:07:41'),
(3, 'Moderator', 'Moderator', '2020-09-07 05:04:13', '2020-09-07 05:04:13');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', '5 points will cupture the world', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kykyka', 'e.korj87@gmail.com', 'users/default.png', NULL, '$2y$10$w5Y.aNT3fTykoPqlW1jHkOJ5n2aDk59mLARc7ez7c4RpMKBFDWF3m', 'hr91CzZw1JDLxUvbmlKh5ZDv2FIzWLZgsTL3EDzoTR6ajSCVwCIjKqMto0yu', NULL, '2020-09-01 10:09:03', '2020-09-01 10:09:03'),
(2, 1, 'Kostyan', 'botvinov1m@gmail.com', 'users/default.png', NULL, '$2y$10$AkeT4M3tNW0E/1Z/W8qPnu5ssvh4R/89Oq3OG5EDqV0vlWu.JE4Lm', NULL, NULL, '2020-09-01 10:10:00', '2020-09-01 10:10:00'),
(3, 1, 'Stasyan', 'green.kivi91@gmail.com', 'users/default.png', NULL, '$2y$10$Sds8OiclPL0N15QCHa9ZDOTUHp3o2WzLfkdYcxgS3mM8BFzVBDCaK', NULL, NULL, '2020-09-01 10:19:10', '2020-09-01 10:19:10'),
(4, 3, 'Moder', 'moderator@gmail.com', 'users/default.png', NULL, '$2y$10$6w.Solv1UhW7lNC7ubp.8uSKwSxP9DxR/Euc44Lk0aem71qrWaPn2', NULL, '{\"locale\":\"ru\"}', '2020-09-07 05:04:58', '2020-09-07 05:04:58');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_id_index` (`id`);

--
-- Индексы таблицы `article_descriptions`
--
ALTER TABLE `article_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article_images`
--
ALTER TABLE `article_images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_name_unique` (`name`),
  ADD KEY `portfolios_id_index` (`id`);

--
-- Индексы таблицы `portfolio_descriptions`
--
ALTER TABLE `portfolio_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolio_images_path_unique` (`path`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `article_descriptions`
--
ALTER TABLE `article_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `article_images`
--
ALTER TABLE `article_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблицы `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `portfolio_descriptions`
--
ALTER TABLE `portfolio_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
