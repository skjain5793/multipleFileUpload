-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2017 at 09:56 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rajdhaniflorist`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(255) NOT NULL,
  `aboutUs` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `aboutUs`) VALUES
(1, 'This is about us text just fro testing ..');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `bid` int(255) NOT NULL,
  `banner_images` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`bid`, `banner_images`) VALUES
(3, 'a:2:{i:0;s:14:"banner-002.jpg";i:1;s:14:"banner-005.jpg";}');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `meta_tag` varchar(2000) NOT NULL,
  `meta_description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `category`, `meta_tag`, `meta_description`) VALUES
(1, 'category 1', '', ''),
(2, 'c2', '', ''),
(3, 'c1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `created`, `modified`, `status`) VALUES
(1, 'Test User', 'testuser@gmail.com', '9999999999', 'New York, NY, USA', '2016-08-17 08:21:25', '2016-08-17 08:21:25', '1');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(255) NOT NULL,
  `item_image` varchar(2000) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `item_title` varchar(100) NOT NULL,
  `item_price` varchar(50) NOT NULL,
  `item_stock` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_image`, `alt`, `item_title`, `item_price`, `item_stock`) VALUES
(2, '', '', 'item1', '30', '5'),
(3, '', '', 'item2', '40', '13'),
(4, '', '', 'item3', '10', ''),
(5, '', '', 'item4', '20', '5');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `total_price`, `created`, `modified`, `status`) VALUES
(0, 1, 88.00, '2017-04-13 10:44:55', '2017-04-13 10:44:55', '1'),
(0, 1, 8.00, '2017-04-13 10:49:22', '2017-04-13 10:49:22', '1');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(0, 0, 13, 1),
(0, 0, 11, 1),
(0, 0, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(50) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `image_gallery` varchar(2000) NOT NULL,
  `actual_price` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `short_description` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `item1_title` varchar(100) NOT NULL,
  `item1_quantity` varchar(50) NOT NULL,
  `item2_title` varchar(100) NOT NULL,
  `item2_quantity` varchar(50) NOT NULL,
  `item3_title` varchar(100) NOT NULL,
  `item3_quantity` varchar(50) NOT NULL,
  `item4_title` varchar(100) NOT NULL,
  `item4_quantity` varchar(50) NOT NULL,
  `addoption` varchar(100) NOT NULL,
  `meta_tag` varchar(2000) NOT NULL,
  `meta_description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `sid`, `name`, `image`, `alt`, `image_gallery`, `actual_price`, `price`, `short_description`, `description`, `item1_title`, `item1_quantity`, `item2_title`, `item2_quantity`, `item3_title`, `item3_quantity`, `item4_title`, `item4_quantity`, `addoption`, `meta_tag`, `meta_description`) VALUES
(5, '8', 'new ', '9.jpg', '', '', '10', 8, '', 'This is editted product for testing ..', '', '', '', '0', '', '', '', '', 'best_selling', '', ''),
(7, '6', 'p1', '6.jpg', '', '', '100', 90, '', 'whwhvxv', '', '', '', '0', '', '', '', '', 'best_selling', '', ''),
(8, '6', 'p2', '10.jpg', '', '', '100', 60, '', 'ftxtxtx', '', '', '', '0', '', '', '', '', 'best_selling', '', ''),
(9, '3', 'product carnation', '10.jpg', '', '', '100', 80, 'editted short description', 'product complete description', '', '', '', '0', '', '', '', '', 'best_selling', '', ''),
(11, '6', '3.jpg', '9.jpg', '', 'a:3:{i:0;s:5:"1.jpg";i:1;s:5:"2.jpg";i:2;s:5:"3.jpg";}', '100', 80, 'short', 'full', '', '', '', '0', '', '', '', '', 'best_selling', '', ''),
(13, '6', 'poduct5', '10.jpg', '', 'a:4:{i:0;s:5:"8.jpg";i:1;s:5:"9.jpg";i:2;s:6:"10.jpg";i:3;s:6:"11.jpg";}', '10', 8, 'short description', 'full descritpion', '', '', '', '0', '', '', '', '', 'best_selling', '', ''),
(14, '5', 'product', '13.jpg', '', 'a:1:{i:0;s:5:"3.jpg";}', '100', 80, 'sd', 'd', 'item1', '1', 'item1', '1', '', '', '', '', '', '', ''),
(15, '3', 'testing', '5.jpg', '', 'a:2:{i:0;s:5:"9.jpg";i:1;s:6:"10.jpg";}', '100', 80, 'short', 'full', 'item1', '1', 'item2', '1', 'item3', '1', 'item4', '1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rid` int(255) NOT NULL,
  `pid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `datetime` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rid`, `pid`, `name`, `email`, `rating`, `comment`, `datetime`) VALUES
(6, '9', 'test', 'test@gmail.com', '4', 'good', '2017-04-12 12:00:29'),
(11, '9', 'test', 'test@gmail.com', '4', 'good', '2017-04-12 12:09:01'),
(12, '9', 'test', 'test@gmail.com', '4', 'good', '2017-04-12 12:11:14'),
(18, '9', 'sanjeev', 'sanjeev@gmail.com', '5', 'best', '2017-04-12 12:37:29'),
(19, '9', 'sanjeev', 'sanjeev@gmail.com', '5', 'best', '2017-04-12 12:37:40'),
(20, '9', 'sanjeev', 'sanjeev@gmail.com', '5', 'best', '2017-04-12 12:38:28'),
(21, '9', 'sanjeev', '', '5', 'best', '2017-04-12 12:40:55'),
(22, '8', 'test', 'test@gmail.com', '5', 'Good', '2017-04-12 18:19:03'),
(23, '13', 'test', 'test@gmail.com', '4', 'good', '2017-04-12 18:25:16'),
(24, '13', 'Test', 'test@email.com', '3', 'Best', '2017-04-12 18:27:06'),
(25, '14', 'Test', 'test@gmail.com', '3', 'Good', '2017-04-18 11:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(255) NOT NULL,
  `slide_images` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_images`) VALUES
(2, 'a:2:{i:0;s:9:"Asics.jpg";i:1;s:11:"Babolat.jpg";}');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(255) NOT NULL,
  `fb_link` varchar(100) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `google_plus_link` varchar(100) NOT NULL,
  `rss_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `sid` int(255) NOT NULL,
  `cid` varchar(10) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `meta_tag` varchar(2000) NOT NULL,
  `meta_description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`sid`, `cid`, `subcategory`, `meta_tag`, `meta_description`) VALUES
(1, '1', 'Veriety', '', ''),
(2, 'c1', 'Rose', '', ''),
(3, '2', 'Carnation', '', ''),
(4, 'c1', 'Gerbera', '', ''),
(5, '1', 'Taste', '', ''),
(6, '3', 's1', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `bid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
