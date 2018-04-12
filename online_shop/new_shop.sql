-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 07:15 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Apex', 'Comfortable wear', 1, '2018-01-30 09:17:07', '2018-04-06 11:26:17'),
(4, 'Dhakaia Saree', 'Bangladeshi Traditional Wear', 1, '2018-01-30 09:19:36', '2018-04-06 11:30:25'),
(10, 'Calvin Klein', 'cK', 1, '2018-01-30 09:29:15', '2018-04-06 11:27:26'),
(12, 'Bata', 'Comfortable Wear', 1, '2018-04-06 11:28:29', '2018-04-06 11:28:29'),
(13, 'US Polo', 'US Polo T-shirt', 1, '2018-04-10 05:16:42', '2018-04-10 05:16:42'),
(14, 'Guou', 'Ladies Watch brand from UK', 1, '2018-04-11 06:33:32', '2018-04-11 06:33:32'),
(15, 'Raymond', 'Raymond Clothing', 1, '2018-04-11 06:40:02', '2018-04-11 06:40:02'),
(16, 'Bata', 'Bata Shoes', 1, '2018-04-12 10:47:04', '2018-04-12 10:47:04'),
(17, 'Quartz', 'Quartz watch', 1, '2018-04-12 11:02:22', '2018-04-12 11:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'T shirt', 'All Size Available', 1, '2018-01-30 09:06:20', '2018-04-06 11:24:50'),
(5, 'Shoes', 'all size available', 1, '2018-01-30 09:07:26', '2018-01-30 09:07:26'),
(8, 'Saree', 'new', 1, '2018-01-30 09:12:26', '2018-01-30 09:12:26'),
(9, 'Watch', 'Wrist watch for men & women', 1, '2018-04-11 06:31:39', '2018-04-11 06:31:39'),
(10, 'Blazer', 'Men Formal wear', 1, '2018-04-11 06:39:08', '2018-04-11 06:39:08'),
(11, 'Shirt', 'All size', 1, '2018-04-12 11:11:06', '2018-04-12 11:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `email`, `password`, `phoneNo`, `address`, `created_at`, `updated_at`) VALUES
(1, 'akib', '', 'akib@gmail.com', '', '123456', 'shukrabad', NULL, NULL),
(2, 'afrin', '', 'afrin@gmail.com', '', '123456', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_24_151141_create_categories_table', 1),
(4, '2018_01_29_083422_create_brands_table', 1),
(5, '2018_01_29_092245_create_products_table', 1),
(6, '2018_02_05_175144_create_customers_table', 2),
(7, '2018_02_07_072912_create_orders_table', 3),
(8, '2018_02_07_072942_create_shippings_table', 3),
(9, '2018_02_07_074925_create_payments_table', 4),
(10, '2018_02_07_075125_create_order_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1250.00, 'Pending', NULL, NULL),
(2, 2, 5, 4995.00, 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(6, 6, 'Cash', 'Pending', '2018-02-11 11:34:36', '2018-02-11 11:34:36'),
(7, 7, 'Cash', 'Pending', '2018-02-11 14:03:09', '2018-02-11 14:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 8, 4, 'Saree-01', 4995.00, 5, 'Saree traditional wear bd', '<p>Saree traditional wear bdSaree traditional wear bdSaree traditional wear bd</p>', 'product-images/Saree-01.jpg', 1, '2018-04-10 05:14:22', '2018-04-10 05:14:22'),
(2, 4, 13, 'T-shirt 01', 1250.00, 22, '100% Cotton Original US Polo T-shirt', '<p>100% Cotton Original US Polo T-shirt 100% Cotton Original US Polo T-shirt</p>', 'product-images/T-shirt 01.jpg', 1, '2018-04-10 05:19:34', '2018-04-11 13:35:42'),
(3, 8, 4, 'Saree-02', 5250.00, 8, 'Deshi Tradition Wear', '<p>Deshi Tradition WearDeshi Tradition WearDeshi Tradition WearDeshi Tradition Wear</p>', 'product-images/Saree-02.jpg', 1, '2018-04-11 06:20:33', '2018-04-11 06:20:33'),
(4, 8, 4, 'Jamdani-01', 9500.00, 3, 'Dhakaia Jamdani', '<p>Dhakaia JamdaniDhakaia JamdaniDhakaia Jamdani</p>', 'product-images/Jamdani-01.jpg', 1, '2018-04-11 06:22:54', '2018-04-11 06:22:54'),
(5, 4, 10, 'Ck-01', 1500.00, 11, 'Calvin Klein t-shirt', '<p>Calvin Klein t-shirtCalvin Klein t-shirtCalvin Klein t-shirt</p>', 'product-images/Ck-01.jpg', 1, '2018-04-11 06:25:37', '2018-04-11 06:25:37'),
(6, 4, 13, 'T-shirt 02', 1250.00, 25, 'US Polo T-shirt', '<p>US Polo T-shirtUS Polo T-shirtUS Polo T-shirt</p>', 'product-images/T-shirt 02.jpg', 1, '2018-04-11 06:27:54', '2018-04-11 06:27:54'),
(7, 9, 14, 'Watch-01', 1750.00, 14, 'Wrist watch brown color', '<p>Wrist watch brown colorWrist watch brown colorWrist watch brown color</p>', 'product-images/Watch-01.jpg', 1, '2018-04-11 06:35:29', '2018-04-11 06:35:29'),
(8, 10, 15, 'Blazer-01', 4750.00, 16, 'Blazer Blazer', '<p>BlazerBlazerBlazerBlazer</p>', 'product-images/Blazer-01.jpg', 1, '2018-04-11 06:41:20', '2018-04-11 06:41:20'),
(9, 10, 15, 'Suit-01', 8900.00, 8, 'Coat & Pant', '<p>Coat &amp; PantCoat &amp; PantCoat &amp; PantCoat &amp; Pant</p>', 'product-images/Suit.jpg', 1, '2018-04-11 06:43:28', '2018-04-11 06:46:15'),
(10, 4, 10, 'Ck-02', 1650.00, 19, 'Full Sleeve', '<p>Full SleeveFull SleeveFull Sleeve</p>', 'product-images/Ck-02.jpg', 1, '2018-04-11 06:45:20', '2018-04-11 06:45:20'),
(11, 5, 1, 'Shoe-01', 1990.00, 6, 'Ladies Shoe', '<p>Ladies ShoeLadies ShoeLadies ShoeLadies ShoeLadies Shoe</p>', 'product-images/Shoe-01.jpg', 1, '2018-04-12 05:34:38', '2018-04-12 05:34:38'),
(12, 5, 1, 'Shoe-02', 2990.00, 15, 'Male Shoe', '<p>Male ShoeMale ShoeMale Shoe</p>', 'product-images/Shoe-02.jpg', 1, '2018-04-12 10:45:42', '2018-04-12 10:45:42'),
(13, 5, 12, 'Hill-01', 2750.00, 17, 'Ladies Hill', '<p>Ladies HillLadies HillLadies HillLadies Hill</p>', 'product-images/Hill-01.jpg', 1, '2018-04-12 10:48:19', '2018-04-12 10:48:19'),
(14, 5, 1, 'Loafer-01', 2750.00, 19, 'Gents Loafer', '<p>Gents LoaferGents LoaferGents Loafer</p>', 'product-images/Loafer-01.jpg', 1, '2018-04-12 10:51:28', '2018-04-12 10:51:28'),
(15, 9, 17, 'Watch-02', 2250.00, 18, 'Men\'s watch', '<p>Men&#39;s watchMen&#39;s watchMen&#39;s watchMen&#39;s watch</p>', 'product-images/Watch-02.jpg', 1, '2018-04-12 11:08:41', '2018-04-12 11:08:41'),
(16, 11, 15, 'Shirt 01', 2950.00, 25, 'Men\'s Shirt', '<p>Men&#39;s ShirtMen&#39;s ShirtMen&#39;s Shirt</p>', 'product-images/Shirt 01.jpg', 1, '2018-04-12 11:13:01', '2018-04-12 11:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(4, 'Akib', 'akib@gmail.com', '123456', 'shukrabad', '2018-02-11 11:34:30', '2018-02-11 11:34:30'),
(5, 'Afrin', 'afrin@gmail.com', '123456', 'shukrabad', '2018-02-11 14:03:04', '2018-02-11 14:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jamil', 'jamil@gmail.com', '$2y$10$lVRwnSUOfg7STZMx3IryVuav2rqU5Tt.Ew6p7W3elxSIinNs7jlqC', 'IZ0QA8ppDg85gCr6IrjX9I8fBMpvgucVHU4SE4mLWfVjSiQ3rnMLMdJa1BTb', '2018-01-30 08:53:55', '2018-01-30 08:53:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
