-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2021 lúc 09:49 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopfashion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 24, 4, 100, NULL, NULL),
(2, 1, 27, 1, 98, NULL, NULL),
(3, 1, 30, 1, 199, NULL, NULL),
(4, 2, 30, 1, 199, NULL, NULL),
(5, 3, 32, 1, 98, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Nam Nguyen', 'daf', '69 Nguyễn Đình Hiến, Ngũ Hành Sơn, Đã Nẵng', 'nam070202@gmail.com', 'dsafsa', '2021-11-28 05:58:00', '2021-11-28 05:58:00'),
(2, 'Nam Nguyen', '+84833405209', '69 Nguyễn Đình Hiến, Ngũ Hành Sơn, Đã Nẵng', 'nam070202@gmail.com', 'qewr', '2021-11-29 00:59:38', '2021-11-29 00:59:38'),
(3, 'Nam Nguyen', '+84833405209', '69 Nguyễn Đình Hiến, Ngũ Hành Sơn, Đã Nẵng', 'nam070202@gmail.com', '123', '2021-11-29 01:26:15', '2021-11-29 01:26:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '9405b3b5-a5f7-4cf9-880f-1044d833a340', 'database', 'default', '{\"uuid\":\"9405b3b5-a5f7-4cf9-880f-1044d833a340\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:19:\\\"nam070202@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2021-11-29 07:59:40.378988\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"nam070202@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials h6sm18194077pfh.82 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials h6sm18194077pfh.82 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials h6sm18194077pfh.82 - gsmtp\r\n\". in E:\\website\\fashion\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 E:\\website\\fashion\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 E:\\website\\fashion\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 E:\\website\\fashion\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#6 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#10 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#11 E:\\website\\fashion\\app\\Jobs\\SendMail.php(36): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#12 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#13 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#19 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#20 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#22 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#23 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#26 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#38 E:\\website\\fashion\\vendor\\symfony\\console\\Command\\Command.php(299): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 E:\\website\\fashion\\vendor\\symfony\\console\\Application.php(978): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 E:\\website\\fashion\\vendor\\symfony\\console\\Application.php(295): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 E:\\website\\fashion\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 E:\\website\\fashion\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 E:\\website\\fashion\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}', '2021-11-29 00:59:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(6, 'Nước Hoa', 0, 'Hương thơm tự nhiên', '<p>Lan tỏa y&ecirc;u thương</p>', 1, '2021-11-27 04:40:18', '2021-11-27 04:40:18'),
(7, 'Trang phục', 0, 'Quần áo và các set đồ', '<p>Thời trang đi đầu xu thế</p>', 1, '2021-11-27 04:40:58', '2021-11-27 04:40:58'),
(8, 'Giày', 0, 'giày', '<p>gi&agrave;y</p>', 1, '2021-11-27 04:41:13', '2021-11-27 04:41:13'),
(9, 'Phụ Kiện', 0, 'tất cả phụ kiện', '<p>tạo n&ecirc;n phong c&aacute;ch</p>\r\n\r\n<p>&nbsp;</p>', 1, '2021-11-27 04:41:35', '2021-11-27 04:41:35'),
(10, 'Quần áo nam', 7, 'Nam giới', '', 1, '2021-11-27 04:42:04', '2021-11-27 04:42:04'),
(11, 'Quần áo nữ', 7, 'Nữ giới', '', 1, '2021-11-27 04:42:25', '2021-11-27 04:42:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_14_062819_create_menus_table', 1),
(6, '2021_11_21_073904_create_products_table', 1),
(7, '2021_11_21_075559_update_table_product', 2),
(8, '2021_11_21_075817_create_sliders_table', 3),
(9, '2021_11_21_075916_create_customers_table', 4),
(10, '2021_11_21_080007_create_carts_table', 5),
(11, '2021_11_29_073656_create_jobs_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(3, 'Áo MLB Hồng', 'Áo khoác', '<p>&Aacute;o kho&aacute;c m&agrave;u hồng</p>', 11, 100, 99, 1, '2021-11-27 04:43:44', '2021-11-27 04:43:44', '/storage/uploads/2021/11/27/ao khoac hong.webp'),
(4, 'Áo khoác đen', 'áo dành cho nam', '<p>&aacute;o d&agrave;nh cho nam</p>', 10, 102, 100, 1, '2021-11-27 04:44:32', '2021-11-27 04:44:32', '/storage/uploads/2021/11/27/khoac den.webp'),
(5, 'Set mlb Nữ', 'Set thời trang nữ', '<p>Set thời trang nữ</p>', 11, 205, 199, 1, '2021-11-27 04:45:08', '2021-11-27 04:45:08', '/storage/uploads/2021/11/27/set 1.webp'),
(6, 'Quần Thể thao Nam', 'quần thể thao', '<p>quần thể thao</p>', 10, 57, 50, 1, '2021-11-27 04:45:42', '2021-11-27 04:45:42', '/storage/uploads/2021/11/27/set 3.webp'),
(7, 'Giày MLB NY', 'Giày', '<p>Gi&agrave;y&nbsp;</p>', 8, 100, 98, 1, '2021-11-27 04:46:32', '2021-11-27 04:46:32', '/storage/uploads/2021/11/27/MLB NY.webp'),
(8, 'Áo MLB Hồng', 'Áo khoác', '<p>&Aacute;o kho&aacute;c m&agrave;u hồng</p>', 11, 100, 99, 1, '2021-11-26 21:43:44', '2021-11-26 21:43:44', '/storage/uploads/2021/11/27/ao khoac hong.webp'),
(9, 'Áo khoác đen', 'áo dành cho nam', '<p>&aacute;o d&agrave;nh cho nam</p>', 10, 102, 100, 1, '2021-11-26 21:44:32', '2021-11-26 21:44:32', '/storage/uploads/2021/11/27/khoac den.webp'),
(10, 'Set mlb Nữ', 'Set thời trang nữ', '<p>Set thời trang nữ</p>', 11, 205, 199, 1, '2021-11-26 21:45:08', '2021-11-26 21:45:08', '/storage/uploads/2021/11/27/set 1.webp'),
(11, 'Quần Thể thao Nam', 'quần thể thao', '<p>quần thể thao</p>', 10, 57, 50, 1, '2021-11-26 21:45:42', '2021-11-26 21:45:42', '/storage/uploads/2021/11/27/set 3.webp'),
(12, 'Giày MLB NY', 'Giày', '<p>Gi&agrave;y&nbsp;</p>', 8, 100, 98, 1, '2021-11-26 21:46:32', '2021-11-26 21:46:32', '/storage/uploads/2021/11/27/MLB NY.webp'),
(13, 'Áo MLB Hồng', 'Áo khoác', '<p>&Aacute;o kho&aacute;c m&agrave;u hồng</p>', 11, 100, 99, 1, '2021-11-26 21:43:44', '2021-11-26 21:43:44', '/storage/uploads/2021/11/27/ao khoac hong.webp'),
(14, 'Áo khoác đen', 'áo dành cho nam', '<p>&aacute;o d&agrave;nh cho nam</p>', 10, 102, 100, 1, '2021-11-26 21:44:32', '2021-11-26 21:44:32', '/storage/uploads/2021/11/27/khoac den.webp'),
(15, 'Set mlb Nữ', 'Set thời trang nữ', '<p>Set thời trang nữ</p>', 11, 205, 199, 1, '2021-11-26 21:45:08', '2021-11-26 21:45:08', '/storage/uploads/2021/11/27/set 1.webp'),
(16, 'Quần Thể thao Nam', 'quần thể thao', '<p>quần thể thao</p>', 10, 57, 50, 1, '2021-11-26 21:45:42', '2021-11-26 21:45:42', '/storage/uploads/2021/11/27/set 3.webp'),
(17, 'Giày MLB NY', 'Giày', '<p>Gi&agrave;y&nbsp;</p>', 8, 100, 98, 1, '2021-11-26 21:46:32', '2021-11-26 21:46:32', '/storage/uploads/2021/11/27/MLB NY.webp'),
(18, 'Áo MLB Hồng', 'Áo khoác', '<p>&Aacute;o kho&aacute;c m&agrave;u hồng</p>', 11, 100, 99, 1, '2021-11-26 21:43:44', '2021-11-26 21:43:44', '/storage/uploads/2021/11/27/ao khoac hong.webp'),
(19, 'Áo khoác đen', 'áo dành cho nam', '<p>&aacute;o d&agrave;nh cho nam</p>', 10, 102, 100, 1, '2021-11-26 21:44:32', '2021-11-26 21:44:32', '/storage/uploads/2021/11/27/khoac den.webp'),
(20, 'Set mlb Nữ', 'Set thời trang nữ', '<p>Set thời trang nữ</p>', 11, 205, 199, 1, '2021-11-26 21:45:08', '2021-11-26 21:45:08', '/storage/uploads/2021/11/27/set 1.webp'),
(21, 'Quần Thể thao Nam', 'quần thể thao', '<p>quần thể thao</p>', 10, 57, 50, 1, '2021-11-26 21:45:42', '2021-11-26 21:45:42', '/storage/uploads/2021/11/27/set 3.webp'),
(22, 'Giày MLB NY', 'Giày', '<p>Gi&agrave;y&nbsp;</p>', 8, 100, 98, 1, '2021-11-26 21:46:32', '2021-11-26 21:46:32', '/storage/uploads/2021/11/27/MLB NY.webp'),
(23, 'Áo MLB Hồng', 'Áo khoác', '<p>&Aacute;o kho&aacute;c m&agrave;u hồng</p>', 11, 100, 99, 1, '2021-11-26 21:43:44', '2021-11-26 21:43:44', '/storage/uploads/2021/11/27/ao khoac hong.webp'),
(24, 'Áo khoác đen', 'áo dành cho nam', '<p>&aacute;o d&agrave;nh cho nam</p>', 10, 102, 100, 1, '2021-11-26 21:44:32', '2021-11-26 21:44:32', '/storage/uploads/2021/11/27/khoac den.webp'),
(25, 'Set mlb Nữ', 'Set thời trang nữ', '<p>Set thời trang nữ</p>', 11, 205, 199, 1, '2021-11-26 21:45:08', '2021-11-26 21:45:08', '/storage/uploads/2021/11/27/set 1.webp'),
(26, 'Quần Thể thao Nam', 'quần thể thao', '<p>quần thể thao</p>', 10, 57, 50, 1, '2021-11-26 21:45:42', '2021-11-26 21:45:42', '/storage/uploads/2021/11/27/set 3.webp'),
(27, 'Giày MLB NY', 'Giày', '<p>Gi&agrave;y&nbsp;</p>', 8, 100, 98, 1, '2021-11-26 21:46:32', '2021-11-26 21:46:32', '/storage/uploads/2021/11/27/MLB NY.webp'),
(28, 'Áo MLB Hồng', 'Áo khoác', '<p>&Aacute;o kho&aacute;c m&agrave;u hồng</p>', 11, 100, 99, 1, '2021-11-26 21:43:44', '2021-11-26 21:43:44', '/storage/uploads/2021/11/27/ao khoac hong.webp'),
(29, 'Áo khoác đen', 'áo dành cho nam', '<p>&aacute;o d&agrave;nh cho nam</p>', 10, 102, 100, 1, '2021-11-26 21:44:32', '2021-11-26 21:44:32', '/storage/uploads/2021/11/27/khoac den.webp'),
(30, 'Set mlb Nữ', 'Set thời trang nữ', '<p>Set thời trang nữ</p>', 11, 205, 199, 1, '2021-11-26 21:45:08', '2021-11-26 21:45:08', '/storage/uploads/2021/11/27/set 1.webp'),
(31, 'Quần Thể thao Nam', 'quần thể thao', '<p>quần thể thao</p>', 10, 57, 50, 1, '2021-11-26 21:45:42', '2021-11-26 21:45:42', '/storage/uploads/2021/11/27/set 3.webp'),
(32, 'Giày MLB NY', 'Giày', '<p>Gi&agrave;y&nbsp;</p>', 8, 100, 98, 1, '2021-11-26 21:46:32', '2021-11-26 21:46:32', '/storage/uploads/2021/11/27/MLB NY.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Nuoc hoa nam', 'https://www.facebook.com/dat03082001', '/storage/uploads/2021/11/27/share.png', 1, 1, '2021-11-27 02:29:53', '2021-11-27 02:29:53'),
(5, 'Nuoc hoa nu', 'https://www.facebook.com/100010825261061', '/storage/uploads/2021/11/27/share2.jpg', 1, 1, '2021-11-27 04:18:56', '2021-11-27 04:18:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'nin@gmail.com', NULL, '$2y$10$6f7a1fH/MtWy843UCEneBeFVsuPUjziF9mIKYtqG7SReKZt.bitdy', 'rcCEbsSgw3u7AEq2ZNvsj68gIRyuZrexakE99Pk0oUHSVvm1gCWocliUef8S', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
