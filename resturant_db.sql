-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 05:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resturant_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_api_key`
--

CREATE TABLE `master_api_key` (
  `id` int(11) NOT NULL,
  `api_key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_api_key`
--

INSERT INTO `master_api_key` (`id`, `api_key`) VALUES
(1, 14598822),
(2, 7522892);

-- --------------------------------------------------------

--
-- Table structure for table `master_resturant`
--

CREATE TABLE `master_resturant` (
  `id` int(8) NOT NULL,
  `rid` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `rating` float(3,1) NOT NULL,
  `ETA` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_resturant`
--

INSERT INTO `master_resturant` (`id`, `rid`, `name`, `location`, `rating`, `ETA`, `img`) VALUES
(1, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(2, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 20, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(3, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(4, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(5, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(6, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(7, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(8, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(9, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(10, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(11, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(12, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(13, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(14, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(15, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(16, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(17, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(18, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(19, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(20, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(21, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(22, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(23, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(24, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(25, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(26, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(27, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(28, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(29, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(30, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(31, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(32, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 25, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(33, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(34, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(35, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(36, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(37, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(38, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(39, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(40, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(41, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(42, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(43, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(44, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(45, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 15, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(46, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(47, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(48, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(49, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(50, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(51, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(52, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(53, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(54, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(55, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(56, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 15, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(57, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(58, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(59, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(60, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(61, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(62, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(63, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(64, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(65, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(66, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(67, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(68, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(69, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(70, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(71, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(72, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(73, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(74, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(75, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 40, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(76, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(77, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(78, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(79, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(80, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(81, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(82, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(83, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(84, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(85, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(86, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(87, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(88, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(89, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(90, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(91, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(92, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(93, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(94, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(95, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(96, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(97, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(98, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(99, 256, 'DYWDEDVE', 'DGYEVDBJHUEIOIDHE', 5.0, 30, 'https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/content9442.jpg'),
(100, 265, 'KGUDVEVDE', 'KDUEFEVDHEHDY@Y', 4.3, 30, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(101, 285, 'KGUDVHFEVDE', 'KDUEFEVDHEHDY@J', 5.0, 30, 'https://cdn.downtoearth.org.in/library/large/2019-05-31/0.68487000_1559290735_70-20190615-dte-english.jpg'),
(102, 225, 'KGUREDSSFEVDE', 'KFSCVBYFWVEW@', 4.6, 45, 'https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg'),
(103, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.2, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg'),
(104, 123, 'XYZ', 'hgdyfedgeuiyekhic', 4.5, 25, 'https://b.zmtcdn.com/data/pictures/8/18981028/6ccd2ae1bd6a16d05d8a7635ef13d502.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `master_tags`
--

CREATE TABLE `master_tags` (
  `id` int(11) NOT NULL,
  `rid` int(8) NOT NULL,
  `tag` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_tags`
--

INSERT INTO `master_tags` (`id`, `rid`, `tag`) VALUES
(1, 123, 'vegiees'),
(2, 123, 'healthy'),
(3, 123, 'crunchy'),
(4, 123, 'fastfood'),
(5, 256, 'crunchy'),
(23, 256, 'american'),
(25, 265, 'vegiees'),
(26, 265, 'healthy'),
(27, 285, 'american'),
(28, 285, 'pastry'),
(29, 225, 'nonveg'),
(30, 225, 'chinese'),
(31, 225, 'american');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_api_key`
--
ALTER TABLE `master_api_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_resturant`
--
ALTER TABLE `master_resturant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tags`
--
ALTER TABLE `master_tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_api_key`
--
ALTER TABLE `master_api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_resturant`
--
ALTER TABLE `master_resturant`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `master_tags`
--
ALTER TABLE `master_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
