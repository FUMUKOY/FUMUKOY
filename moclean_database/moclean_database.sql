-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 09:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supershop_rdb`
--
CREATE DATABASE IF NOT EXISTS `moclean` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `moclean`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL COMMENT 'ADMINS ID',
  `admin_name` varchar(64) NOT NULL,
  `admin_email` varchar(64) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_password` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `admin_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `admin_type` enum('Root Admin','Content Manager','Sales Manager','Technical Operator') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES(1, 'Allan foulo', 'Allan@al.net', 'ADMINIMAGE_20221125011656_allan .jpg', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', 'Root Admin', '2020-07-06 02:18:04', NULL);
INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES(2, 'KatlegoBlessing Mashile', 'hz3zcnxz2@vossie.net', 'ADMINIMAGE_20221125012213_kat.jpg', '04974f51537a701bcdf340064418a10d3895dde1', 'Active', 'Root Admin', '2020-07-06 02:18:44', NULL);
INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES(3, 'Munashe Madzivire', 'jztbw4bt8@vossie.net', 'ADMINIMAGE_20221125012346_mo.jpg', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', 'Content Manager', '2020-07-06 02:19:40', NULL);
INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES(4, 'McMarsh Dzwimbu', 'gkggt1z71@vossie.net', 'ADMINIMAGE_20221125012058_mcac.jpg', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', 'Technical Operator', '2020-07-06 02:22:32', NULL);
INSERT INTO `admins` (`id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`, `admin_status`, `admin_type`, `created_at`, `updated_at`) VALUES(6, 'Masego Kamogelo Mashigo', 'zlhprt8h2@vossie.net', 'ADMINIMAGE_20221125012452_9d112652-0698-4eb5-a0b9-6665494dfeee.jpg', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', 'Sales Manager', '2022-11-25 01:24:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL COMMENT 'CATEGORIES ID',
  `category_name` varchar(64) NOT NULL,
  `category_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES(1, 'Car Cleaning Supplies', 'Active', NULL, NULL);
INSERT INTO `categories` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES(2, 'Bathroom Suplies', 'Active', NULL, NULL);
INSERT INTO `categories` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES(3, 'Multipurpose Cleaning Supplies', 'Active', NULL, NULL);
INSERT INTO `categories` (`id`, `category_name`, `category_status`, `created_at`, `updated_at`) VALUES(4, 'Kitchen Cleaning Supplies', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL COMMENT 'CONTACTS ID',
  `contacts_name` varchar(64) NOT NULL,
  `contacts_email` varchar(64) NOT NULL,
  `contacts_phone` varchar(32) NOT NULL,
  `contacts_overview` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contacts_name`, `contacts_email`, `contacts_phone`, `contacts_overview`, `created_at`, `updated_at`) VALUES(1, 'Jhon Doe', 'jhondoe@hotmail.com', '01645770422', 'Hi there,\r\nAll in all it was a really easy approach to creating your online store. I have complete control over how and what I want placed within my site, with the additional benefit of being able to change anything as and when I want.', '2020-07-06 10:20:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL COMMENT 'CUSTOMERS ID',
  `customer_name` varchar(128) NOT NULL,
  `customer_email` varchar(64) NOT NULL,
  `customer_mobile` varchar(16) NOT NULL,
  `customer_address` varchar(256) NOT NULL,
  `customer_password` varchar(128) NOT NULL,
  `customer_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(1, 'Md. Kabir Khan', 'kabirkhan@gmail.com', '01645770422', 'Rampura-1219, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:40:58', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(2, 'Jhon Doe', 'jhondoe@gmail.com', '01645770422', 'Panthapath-1205, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:54:22', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(3, 'Al Mamun Roni', 'almamunroni@gmail.com', '01645770422', 'Chasara-1405, Narayanganj, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 08:57:10', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(4, 'Nirjhor Anjum', 'nirjhorsir@gmail.com', '01645770422', 'Dhaka-1206, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:37:53', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(8, 'Jobayer Tuser', 'jobayertuser@gmail.com', '01645770422', 'Mohammadpur-1216, Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:48:31', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(9, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:53:19', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(13, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:55:57', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(14, 'Ahsan Habib', 'ahsanhabib@gmail.com', '01645770422', 'Dhaka, Bangladesh', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'Active', '2020-07-06 09:56:40', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(15, 'A F', 'abc@gail.com', '0123456789', '44 Alsation road', '8ca23c3de062c79c383435787534301e7b22cc47', 'Active', '2022-11-24 19:27:59', NULL);
INSERT INTO `customers` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `customer_address`, `customer_password`, `customer_status`, `created_at`, `updated_at`) VALUES(16, 'Adam Black', 'jaylnnoelworks@gmail.com', '0123456789', '44 alsation road', '8cb2237d0679ca88db6464eac60da96345513964', 'Active', '2022-11-24 19:30:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL COMMENT 'DELIVERIES ID',
  `customer_id` int(11) NOT NULL,
  `shipping_charge` enum('50','120') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
  `id` int(11) NOT NULL COMMENT 'DISCOUNT ID',
  `discount_code` varchar(256) NOT NULL,
  `price_discount_amount` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` int(11) NOT NULL COMMENT 'INVOICE ID',
  `invoice_id` varchar(128) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_amount` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL COMMENT 'NEWSLETTER ID',
  `newsletter_email` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'ORDERS ID',
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `sub_total` double NOT NULL,
  `tax` double NOT NULL,
  `delivery_charge` int(11) NOT NULL,
  `discount_amount` double NOT NULL,
  `grand_total` double NOT NULL,
  `payment_method` enum('SSL COMMERZ','PayPal','Cash On Delivery') NOT NULL DEFAULT 'Cash On Delivery',
  `transaction_id` varchar(256) NOT NULL,
  `transaction_status` enum('Paid','Unpaid') NOT NULL DEFAULT 'Paid',
  `order_item_status` enum('Pending','Processing','Completed','Cancelled') NOT NULL DEFAULT 'Pending',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL COMMENT 'ORDER ITEMS ID',
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `prod_quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL COMMENT 'PAGES ID',
  `page_title` text NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'PRODUCTS ID',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `product_summary` text NOT NULL,
  `product_details` text NOT NULL,
  `product_master_image` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `product_discount_price` double NOT NULL,
  `discount_start` datetime NOT NULL,
  `discount_ends` datetime NOT NULL,
  `product_status` enum('In Stock','Out of Stock') NOT NULL DEFAULT 'In Stock',
  `product_featured` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `product_tags` varchar(512) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `products_image_one` text DEFAULT NULL,
  `products_image_two` text DEFAULT NULL,
  `products_image_three` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(1, 2, 3, ' Bubble Bath', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Bubble_Bath.PNG', 1, 47, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'bubble bath, bubbles, baths', '2020-07-06 04:27:43', NULL, 'Bubble_Bath.PNG', 'Bubble_Bath.PNG', 'Bubble_Bath.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(10, 4, 2, 'Oven cleaner', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.\r\n\r\n\r\n\r\nUltrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.\r\nEuismod nisi porta lorem mollis aliquam ut porttitor.\r\nInteger feugiat scelerisque varius morbi enim nunc faucibus a.\r\nAc felis donec et odio. Duis convallis convallis tellus id interdum velit.\r\nPlacerat orci nulla pellentesque dignissim enim sit amet venenatis.', 'Oven_Cleaner.PNG', 1, 24, 0, '2022-11-24 19:12:58', '2022-11-24 19:12:58', 'In Stock', 'YES', 'oven,cleaning,', NULL, NULL, 'Oven_Cleaner.PNG', 'Oven_Cleaner.PNG', 'Oven_Cleaner.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(16, 4, 2, 'Oven cleaner', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.\r\n\r\n\r\n\r\nUltrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.\r\nEuismod nisi porta lorem mollis aliquam ut porttitor.\r\nInteger feugiat scelerisque varius morbi enim nunc faucibus a.\r\nAc felis donec et odio. Duis convallis convallis tellus id interdum velit.\r\nPlacerat orci nulla pellentesque dignissim enim sit amet venenatis.', 'Oven_Cleaner.PNG', 1, 24, 0, '2022-11-24 19:12:58', '2022-11-24 19:12:58', 'In Stock', 'YES', 'oven,cleaning,', NULL, NULL, 'Oven_Cleaner.PNG', 'Oven_Cleaner.PNG', 'Oven_Cleaner.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(39, 1, 1, 'Car Wash & Wax', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Car_Wash_&_Wax.PNG', 1, 40, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'car,wax,car_wash,', '2020-07-06 04:28:35', NULL, 'Car_Wash_&_Wax.PNG', 'Car_Wash_&_Wax.PNG', 'Car_Wash_&_Wax.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(45, 1, 1, 'Tyre Shine', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Tyre_Shine.PNG', 1, 253, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'tyre ,tyreshine ,wheels,', '2020-07-06 04:37:56', NULL, 'Tyre_Shine.PNG', 'Tyre_Shine.PNG', 'Tyre_Shine.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(48, 3, 1, 'Bleach', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Bleach.PNG', 1, 20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'bleach', '2020-07-06 04:45:36', NULL, 'Bleach.PNG', 'Bleach.PNG', 'Bleach.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(64, 3, 4, 'Multipurpose Degreaser', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', 'Multipurpose_Degreaser.PNG', 1, 44, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'degreaser', '2020-07-06 05:02:38', NULL, 'Multipurpose_Degreaser.PNG', 'Multipurpose_Degreaser.PNG', 'Multipurpose_Degreaser.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(65, 2, 1, 'Pine Gel', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Pine_Gel.PNG', 2, 68, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'pine,pinegel,gel', '2020-07-06 05:04:45', NULL, 'Pine_Gel.PNG', 'Pine_Gel.PNG', 'Pine_Gel.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(66, 3, 4, 'Thick Bleach', '									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>								', '									<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>								', 'Thick_Bleach.PNG', 1, 20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'thick,bleach', '2020-07-06 05:05:36', NULL, 'Thick_Bleach.PNG', 'Thick_Bleach.PNG', 'Thick_Bleach.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(67, 4, 2, 'Dish Washing', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Dishwashing_750ml.PNG', 1, 20, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'dishwashing,liquid,dish,washing', '2020-07-06 05:06:19', NULL, 'Dishwashing_750ml.PNG', 'Dishwashing_750ml.PNG', 'Dishwashing_750ml.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(68, 4, 2, 'Handy Andy 2L', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Handy_Andy 2 L.PNG', 1, 32, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'handy,andy,cleaning,smooth,surface', '2020-07-06 05:07:13', NULL, 'Handy_Andy 2 L.PNG', 'Handy_Andy 2 L.PNG', 'Handy_Andy 2 L.PNG');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `product_summary`, `product_details`, `product_master_image`, `product_quantity`, `product_price`, `product_discount_price`, `discount_start`, `discount_ends`, `product_status`, `product_featured`, `product_tags`, `created_at`, `updated_at`, `products_image_one`, `products_image_two`, `products_image_three`) VALUES(69, 4, 2, 'Dish Washing 2L', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br></p>', '<p>Tortor at risus viverra adipiscing at in tellus integer feugiat. Ultrices in iaculis nunc sed augue lacus viverra vitae. A diam sollicitudin tempor id eu nisl nunc. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Quis auctor elit sed vulputate mi sit amet mauris commodo. Risus nullam eget felis eget nunc.</p><p><br></p><ul><li>Ultrices in iaculis nunc sed. Imperdiet massa tincidunt nunc pulvinar sapien et.</li><li>Euismod nisi porta lorem mollis aliquam ut porttitor.</li><li>Integer feugiat scelerisque varius morbi enim nunc faucibus a.</li><li>Ac felis donec et odio. Duis convallis convallis tellus id interdum velit.</li><li>Placerat orci nulla pellentesque dignissim enim sit amet venenatis.</li></ul>', 'Dishwashing_liquid_2L.PNG', 1, 44, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'In Stock', 'YES', 'dish,washing,', '2020-07-06 05:08:03', NULL, 'Dishwashing_liquid_2L.PNG', 'Dishwashing_liquid_2L.PNG', 'Dishwashing_liquid_2L.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
CREATE TABLE `shippings` (
  `id` int(11) NOT NULL COMMENT 'SHIPPING ID',
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shipcstmr_name` varchar(128) NOT NULL,
  `shipcstmr_mobile` varchar(32) NOT NULL,
  `shipcstmr_profession` varchar(256) DEFAULT NULL,
  `shipcstmr_streetadd` varchar(256) NOT NULL,
  `shipcstmr_city` varchar(64) NOT NULL,
  `shipcstmr_zip` varchar(6) NOT NULL,
  `shipcstmr_country` varchar(64) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopcarts`
--

DROP TABLE IF EXISTS `shopcarts`;
CREATE TABLE `shopcarts` (
  `id` int(11) NOT NULL COMMENT 'SHOPCARTS ID',
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL COMMENT 'SLIDER ID',
  `slider_title` varchar(128) NOT NULL,
  `slider_file` text NOT NULL,
  `slider_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `slider_sequence` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slider_title`, `slider_file`, `slider_status`, `slider_sequence`, `created_at`, `updated_at`) VALUES(7, 'Mo_Clean', 'SLIDER_20221125013655_70fb9449-b220-4bd2-9e89-2878edc616a5.jpg', 'Active', 1, NULL, NULL);
INSERT INTO `slides` (`id`, `slider_title`, `slider_file`, `slider_status`, `slider_sequence`, `created_at`, `updated_at`) VALUES(8, 'kiki', 'SLIDER_20221125014010_mcac.jpg', 'Active', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL COMMENT 'SUBCATEGORIES ID',
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(128) NOT NULL,
  `subcategory_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `subcategory_banner` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_status`, `subcategory_banner`, `created_at`, `updated_at`) VALUES(1, 1, 'Car', 'Active', 'SUBCATBANNER__20221125014232_eugene-chystiakov-rbXzG9aAxVA-unsplash.jpg', '2020-07-06 02:42:41', NULL);
INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_status`, `subcategory_banner`, `created_at`, `updated_at`) VALUES(2, 4, 'Kitchen', 'Active', 'SUBCATBANNER__20221124234752_sven-brandsma-3hEGHI4b4gg-unsplash.jpg', '2020-07-06 02:44:06', NULL);
INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_status`, `subcategory_banner`, `created_at`, `updated_at`) VALUES(3, 2, 'Bathroom', 'Active', 'SUBCATBANNER__20221125013242_beks-mu-2tEdrFYjfMY-unsplash.jpg', '2020-07-06 02:44:37', NULL);
INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_status`, `subcategory_banner`, `created_at`, `updated_at`) VALUES(4, 3, 'Multipurpose', 'Active', 'SUBCATBANNER__20221125014627_nathan-dumlao-j5tFG39qYKw-unsplash.jpg', '2020-07-06 02:45:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `shipping_id` (`shipping_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ADMINS ID', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CATEGORIES ID', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CONTACTS ID', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'CUSTOMERS ID', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DELIVERIES ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'DISCOUNT ID';

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'INVOICE ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'NEWSLETTER ID';

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ORDERS ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ORDER ITEMS ID', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PAGES ID';

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PRODUCTS ID', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SHIPPING ID', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shopcarts`
--
ALTER TABLE `shopcarts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SHOPCARTS ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SLIDER ID', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'SUBCATEGORIES ID', AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shippings_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `shopcarts`
--
ALTER TABLE `shopcarts`
  ADD CONSTRAINT `shopcarts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `shopcarts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
