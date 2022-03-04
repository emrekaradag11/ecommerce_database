-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 04 Mar 2022, 19:14:04
-- Sunucu sürümü: 8.0.27
-- PHP Sürümü: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecommerce`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 1, '2022-01-03 17:35:59', '2022-01-03 17:35:59', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cargo`
--

CREATE TABLE `cargo` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `ord` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent_id`, `type_id`, `status_id`, `ord`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 0, 1, 1, NULL, '2022-01-03 17:36:12', '2022-01-03 17:36:12', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `currency`
--

CREATE TABLE `currency` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double(8,2) DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `currency`
--

INSERT INTO `currency` (`id`, `title`, `short_code`, `rate`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dolar', 'USD', 7.20, 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(2, 'Türk Lirası', 'TRY', 1.00, 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(3, 'Euro', 'EUR', 9.90, 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(4, 'Pound', 'GBP', 11.90, 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `discount_types`
--

CREATE TABLE `discount_types` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `discount_types`
--

INSERT INTO `discount_types` (`id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ürün İndirimi', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(2, 'Havale İndirimi', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(3, 'Sepet İndirimi', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `img`
--

CREATE TABLE `img` (
  `id` bigint UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord` int NOT NULL DEFAULT '0',
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `img`
--

INSERT INTO `img` (`id`, `img`, `ord`, `imageable_type`, `imageable_id`, `created_at`, `updated_at`) VALUES
(1, 'asdasd_620908a268679.jpg', 0, 'App\\Models\\product_dtl', 1, '2022-02-13 10:33:22', '2022-02-13 10:33:22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `members`
--

CREATE TABLE `members` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `gender` int DEFAULT NULL,
  `sms_notification` int DEFAULT NULL,
  `mail_notification` int DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `member_addresses`
--

CREATE TABLE `member_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `member_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `country_id` int DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `default` int DEFAULT NULL,
  `tax_administration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `member_price_alarm`
--

CREATE TABLE `member_price_alarm` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `member_stock_alarm`
--

CREATE TABLE `member_stock_alarm` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_11_08_135407_create_banks_table', 1),
(6, '2020_11_08_143159_create_brands_table', 1),
(7, '2020_11_08_143219_create_cargo_table', 1),
(8, '2020_11_08_143236_create_categories_table', 1),
(9, '2020_11_08_143300_create_currency_table', 1),
(10, '2020_11_08_143341_create_discount_types_table', 1),
(11, '2020_11_08_143358_create_members_table', 1),
(12, '2020_11_08_143435_create_member_addresses_table', 1),
(13, '2020_11_08_143459_create_member_price_alarm_table', 1),
(14, '2020_11_08_143511_create_member_stock_alarm_table', 1),
(15, '2020_11_08_143541_create_newsletter_table', 1),
(16, '2020_11_08_143556_create_orders_table', 1),
(17, '2020_11_08_143609_create_orders_cargo_table', 1),
(18, '2020_11_08_143634_create_orders_installment_table', 1),
(19, '2020_11_08_143659_create_order_dtl_table', 1),
(20, '2020_11_08_143749_create_order_dtl_discount_table', 1),
(21, '2020_11_08_143807_create_products_table', 1),
(22, '2020_11_08_143827_create_product_comments_table', 1),
(23, '2020_11_08_143850_create_product_discount_table', 1),
(24, '2020_11_08_143904_create_product_dtl_table', 1),
(25, '2020_11_08_143932_create_product_units_table', 1),
(26, '2020_11_08_143944_create_product_variants_table', 1),
(27, '2020_11_08_144000_create_status_list_table', 1),
(28, '2020_11_08_144016_create_status_list_types_table', 1),
(29, '2020_11_08_144030_create_stores_table', 1),
(30, '2021_03_21_112549_product_variant_group', 1),
(31, '2021_03_21_112604_product_variant_group_option', 1),
(32, '2021_03_24_182030_img', 1),
(33, '2021_06_20_105904_create_panel_users', 1),
(34, '2021_06_20_105917_create_panel_user_types', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `newsletter`
--

CREATE TABLE `newsletter` (
  `id` bigint UNSIGNED NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_desciption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `payment_type_id` int DEFAULT NULL,
  `order_type_id` int DEFAULT NULL,
  `member_address_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `currency_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `net_total_price` double(8,2) DEFAULT NULL,
  `total_discount` double(8,2) DEFAULT NULL,
  `cargo_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders_cargo`
--

CREATE TABLE `orders_cargo` (
  `id` bigint UNSIGNED NOT NULL,
  `tracking_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `cargo_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders_installment`
--

CREATE TABLE `orders_installment` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_id` int DEFAULT NULL,
  `number_of_installments` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `installment_rate` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_dtl`
--

CREATE TABLE `order_dtl` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `product_unit_id` int DEFAULT NULL,
  `piece` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `currency_rate` double(8,2) DEFAULT NULL,
  `cargo_price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_dtl_discount`
--

CREATE TABLE `order_dtl_discount` (
  `id` bigint UNSIGNED NOT NULL,
  `type_id` int DEFAULT NULL,
  `order_dtl_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `rate` double(8,2) DEFAULT NULL,
  `over_the_amount` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `panel_users`
--

CREATE TABLE `panel_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `panel_users`
--

INSERT INTO `panel_users` (`id`, `name`, `surname`, `password`, `email`, `type_id`, `status_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super', 'Admin', '$2y$10$2vGfg8FAvORo5wa45oGcCeGW7vvm0G/Or/yGfhQPL7GF7KoQKE86G', 'demo@demo.com', 1, 1, NULL, NULL, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `panel_user_types`
--

CREATE TABLE `panel_user_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `panel_user_types`
--

INSERT INTO `panel_user_types` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Süper Admin', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(2, 'Admin', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(3, 'Alt Kullanıcı', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_unit_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `variant_status_id` int NOT NULL DEFAULT '0',
  `ord` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `title`, `text`, `description`, `keywords`, `tags`, `brand_id`, `category_id`, `product_unit_id`, `status_id`, `variant_status_id`, `ord`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asdasd', '123', '123', '123', '123', 1, 1, 1, 1, 1, NULL, '2022-02-13 10:33:18', '2022-02-13 10:49:26', NULL),
(2, '23432234', NULL, '1', '1', '1', 1, 1, 2, 1, 1, NULL, '2022-02-13 10:34:24', '2022-02-13 10:52:45', NULL),
(3, '432432', '423', '32', '132', '12', 1, 1, 1, 1, 0, NULL, '2022-02-13 10:57:52', '2022-02-13 10:57:52', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_comments`
--

CREATE TABLE `product_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `variant_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `comment_type` int DEFAULT NULL,
  `star` int DEFAULT NULL,
  `comment_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_discount`
--

CREATE TABLE `product_discount` (
  `id` bigint UNSIGNED NOT NULL,
  `type_id` int DEFAULT NULL,
  `product_dtl_id` int DEFAULT NULL,
  `rate` double(8,2) DEFAULT NULL,
  `over_the_amount` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_discount`
--

INSERT INTO `product_discount` (`id`, `type_id`, `product_dtl_id`, `rate`, `over_the_amount`, `price`, `start_date`, `finish_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 5.00, NULL, NULL, NULL, NULL, '2022-02-13 10:33:18', '2022-02-13 10:33:18', NULL),
(2, 2, 1, 5.00, NULL, NULL, NULL, NULL, '2022-02-13 10:33:18', '2022-02-13 10:33:18', NULL),
(3, 3, 1, 5.00, NULL, NULL, NULL, NULL, '2022-02-13 10:33:18', '2022-02-13 10:33:18', NULL),
(4, 1, 2, 1.00, NULL, NULL, NULL, NULL, '2022-02-13 10:34:24', '2022-02-13 10:34:24', NULL),
(5, 2, 2, 1.00, NULL, NULL, NULL, NULL, '2022-02-13 10:34:24', '2022-02-13 10:34:24', NULL),
(6, 3, 2, 1.00, NULL, NULL, NULL, NULL, '2022-02-13 10:34:24', '2022-02-13 10:34:24', NULL),
(7, 1, 10, 2432.00, NULL, NULL, NULL, NULL, '2022-02-13 10:57:52', '2022-02-13 10:57:52', NULL),
(8, 2, 10, 432.00, NULL, NULL, NULL, NULL, '2022-02-13 10:57:52', '2022-02-13 10:57:52', NULL),
(9, 3, 10, 432.00, NULL, NULL, NULL, NULL, '2022-02-13 10:57:52', '2022-02-13 10:57:52', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_dtl`
--

CREATE TABLE `product_dtl` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_group_id` int DEFAULT NULL,
  `kdv` int DEFAULT NULL,
  `shipping_day` int DEFAULT NULL,
  `type_id` int NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int DEFAULT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `old_prices` json DEFAULT NULL,
  `currency_id` int NOT NULL,
  `stock_status_id` int NOT NULL DEFAULT '0',
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_dtl`
--

INSERT INTO `product_dtl` (`id`, `product_id`, `product_code`, `variant_code`, `variant_group_id`, `kdv`, `shipping_day`, `type_id`, `price`, `stock`, `shipping_price`, `old_prices`, `currency_id`, `stock_status_id`, `barcode`, `created_at`, `updated_at`) VALUES
(1, 1, '123123', NULL, NULL, 123, 123, 1, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:33:18', '2022-02-13 10:49:26'),
(2, 2, '12312312', NULL, NULL, 1, 1, 1, '12.13', 12312, '0.01', NULL, 2, 0, NULL, '2022-02-13 10:34:24', '2022-02-13 10:52:45'),
(3, 1, '123123', 'VR_62090cab5a394', 1, 123, 123, 2, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:50:35', '2022-02-13 10:50:35'),
(4, 1, '123123', 'VR_62090cab5b56e', 2, 123, 123, 2, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:50:35', '2022-02-13 10:50:35'),
(5, 1, '123123', 'VR_62090cab5c04a', 3, 123, 123, 2, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:50:35', '2022-02-13 10:50:35'),
(6, 1, '123123', 'VR_62090cab5d0b5', 4, 123, 123, 2, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:50:35', '2022-02-13 10:50:35'),
(7, 1, '123123', 'VR_62090cb9853ee', 5, 123, 123, 2, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:50:49', '2022-02-13 10:50:49'),
(8, 1, '123123', 'VR_62090cb986125', 6, 123, 123, 2, '1231.23', 12313, '1.23', NULL, 1, 0, NULL, '2022-02-13 10:50:49', '2022-02-13 10:50:49'),
(9, 2, '12312312', 'VR_62090d4678117', 7, 1, 1, 2, '12.13', 12312, '0.01', NULL, 2, 0, NULL, '2022-02-13 10:53:10', '2022-02-13 10:53:10'),
(10, 3, '1', NULL, NULL, 1243, 2432, 1, '0.24', 432432, '0.00', NULL, 2, 0, '1', '2022-02-13 10:57:52', '2022-02-13 10:57:52');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_units`
--

CREATE TABLE `product_units` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_units`
--

INSERT INTO `product_units` (`id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Adet', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(2, 'Paket', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(3, 'Kutu', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(4, 'Kilogram', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_variants`
--

INSERT INTO `product_variants` (`id`, `title`, `parent_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'uzunluk', 0, 1, '2022-02-13 10:49:43', '2022-02-13 10:49:43', NULL),
(2, 'genişlik', 0, 1, '2022-02-13 10:49:50', '2022-02-13 10:49:50', NULL),
(3, '1 metre', 1, 1, '2022-02-13 10:49:58', '2022-02-13 10:49:58', NULL),
(4, '2 metre', 1, 1, '2022-02-13 10:50:08', '2022-02-13 10:50:08', NULL),
(5, '10 cm', 2, 1, '2022-02-13 10:50:15', '2022-02-13 10:50:15', NULL),
(6, '20 cm', 2, 1, '2022-02-13 10:50:23', '2022-02-13 10:50:23', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_variant_group`
--

CREATE TABLE `product_variant_group` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_variant_group`
--

INSERT INTO `product_variant_group` (`id`, `name`, `product_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, '', 1, 1, '2022-02-13 10:50:49', '2022-02-13 10:50:49', NULL),
(6, '', 1, 1, '2022-02-13 10:50:49', '2022-02-13 10:50:49', NULL),
(7, '', 2, 1, '2022-02-13 10:53:10', '2022-02-13 10:53:10', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_variant_group_option`
--

CREATE TABLE `product_variant_group_option` (
  `id` bigint UNSIGNED NOT NULL,
  `variant_group_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_variant_group_option`
--

INSERT INTO `product_variant_group_option` (`id`, `variant_group_id`, `variant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 5, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 2, 5, NULL, NULL),
(5, 3, 3, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 4, 4, NULL, NULL),
(8, 4, 6, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 5, 5, NULL, NULL),
(11, 6, 3, NULL, NULL),
(12, 6, 6, NULL, NULL),
(13, 7, 3, NULL, NULL),
(14, 7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `status_list`
--

CREATE TABLE `status_list` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_type_id` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `status_list`
--

INSERT INTO `status_list` (`id`, `title`, `status_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aktif', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL),
(2, 'Pasif', 1, '2022-01-03 17:12:34', '2022-01-03 17:12:34', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `status_list_types`
--

CREATE TABLE `status_list_types` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `status_list_types`
--

INSERT INTO `status_list_types` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Genel', '2022-01-03 17:12:34', '2022-01-03 17:12:34'),
(2, 'Ürünler', '2022-01-03 17:12:34', '2022-01-03 17:12:34'),
(3, 'Kategoriler', '2022-01-03 17:12:34', '2022-01-03 17:12:34'),
(4, 'Markalar', '2022-01-03 17:12:34', '2022-01-03 17:12:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `discount_types`
--
ALTER TABLE `discount_types`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Tablo için indeksler `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `member_addresses`
--
ALTER TABLE `member_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `member_price_alarm`
--
ALTER TABLE `member_price_alarm`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `member_stock_alarm`
--
ALTER TABLE `member_stock_alarm`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders_cargo`
--
ALTER TABLE `orders_cargo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders_installment`
--
ALTER TABLE `orders_installment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_dtl`
--
ALTER TABLE `order_dtl`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_dtl_discount`
--
ALTER TABLE `order_dtl_discount`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `panel_users`
--
ALTER TABLE `panel_users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `panel_user_types`
--
ALTER TABLE `panel_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `product_comments`
--
ALTER TABLE `product_comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_discount`
--
ALTER TABLE `product_discount`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_dtl`
--
ALTER TABLE `product_dtl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `product_units`
--
ALTER TABLE `product_units`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_variant_group`
--
ALTER TABLE `product_variant_group`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_variant_group_option`
--
ALTER TABLE `product_variant_group_option`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `status_list`
--
ALTER TABLE `status_list`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `status_list_types`
--
ALTER TABLE `status_list_types`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `discount_types`
--
ALTER TABLE `discount_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `img`
--
ALTER TABLE `img`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `member_addresses`
--
ALTER TABLE `member_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `member_price_alarm`
--
ALTER TABLE `member_price_alarm`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `member_stock_alarm`
--
ALTER TABLE `member_stock_alarm`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `orders_cargo`
--
ALTER TABLE `orders_cargo`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `orders_installment`
--
ALTER TABLE `orders_installment`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order_dtl`
--
ALTER TABLE `order_dtl`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `order_dtl_discount`
--
ALTER TABLE `order_dtl_discount`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `panel_users`
--
ALTER TABLE `panel_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `panel_user_types`
--
ALTER TABLE `panel_user_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `product_comments`
--
ALTER TABLE `product_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `product_discount`
--
ALTER TABLE `product_discount`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `product_dtl`
--
ALTER TABLE `product_dtl`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `product_units`
--
ALTER TABLE `product_units`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `product_variant_group`
--
ALTER TABLE `product_variant_group`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `product_variant_group_option`
--
ALTER TABLE `product_variant_group_option`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `status_list`
--
ALTER TABLE `status_list`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `status_list_types`
--
ALTER TABLE `status_list_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
