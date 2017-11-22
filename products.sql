-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2017 at 07:08 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopgiaythethao`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Place` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Shiping` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Discount` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Statuss` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `ProductName`, `Price`, `Category`, `ImageUrl`, `Gender`, `Place`, `Shiping`, `Discount`, `Statuss`) VALUES
(1, 'Giày Thể Thao 1', 110000, 'Giày Thể Thao', 'img/1.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Mới'),
(2, 'Giày Thể Thao 2', 120000, 'Giày Thể Thao', 'img/2.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(3, 'Giày Thể Thao 3', 130000, 'Giày Thể Thao', 'img/3.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(4, 'Giày Thể Thao 4', 140000, 'Giày Thể Thao', 'img/4.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(5, 'Giày Thể Thao 5', 150000, 'Giày Thể Thao', 'img/5.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(6, 'Giày Thể Thao 6', 160000, 'Giày Thể Thao', 'img/6.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(7, 'Giày Thể Thao 7', 170000, 'Giày Thể Thao', 'img/7.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(8, 'Giày Thể Thao 8', 180000, 'Giày Thể Thao', 'img/8.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(9, 'Giày Thể Thao 9', 190000, 'Giày Thể Thao', 'img/9.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(10, 'Giày Thể Thao 10', 200000, 'Giày Thể Thao', 'img/10.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(11, 'Giày Thể Thao 11', 210000, 'Giày Thể Thao', 'img/11.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(12, 'Giày Thể Thao 12', 220000, 'Giày Thể Thao', 'img/12.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(13, 'Giày Thể Thao 13', 230000, 'Giày Thể Thao', 'img/13.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(14, 'Giày Thể Thao 14', 240000, 'Giày Thể Thao', 'img/14.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(15, 'Giày Thể Thao 15', 250000, 'Giày Thể Thao', 'img/15.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(16, 'Giày Thể Thao 16', 260000, 'Giày Thể Thao', 'img/16.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(17, 'Giày Thể Thao 17', 270000, 'Giày Thể Thao', 'img/17.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(18, 'Giày Thể Thao 18', 280000, 'Giày Thể Thao', 'img/18.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(19, 'Giày Thể Thao 19', 290000, 'Giày Thể Thao', 'img/19.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(20, 'Giày Thể Thao 20', 300000, 'Giày Thể Thao', 'img/20.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(21, 'Giày Thể Thao 21', 310000, 'Giày Thể Thao', 'img/21.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(22, 'Giày Thể Thao 22', 320000, 'Giày Thể Thao', 'img/22.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(23, 'Giày Thể Thao 23', 330000, 'Giày Thể Thao', 'img/23.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(24, 'Giày Thể Thao 24', 340000, 'Giày Thể Thao', 'img/24.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(25, 'Giày Thể Thao 25', 350000, 'Giày Thể Thao', 'img/25.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(26, 'Giày Thể Thao 26', 360000, 'Giày Thể Thao', 'img/26.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới'),
(27, 'Giày Thể Thao 27', 370000, 'Giày Thể Thao', 'img/27.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(28, 'Giày Thể Thao 28', 380000, 'Giày Thể Thao', 'img/28.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(29, 'Giày Thể Thao 29', 390000, 'Giày Thể Thao', 'img/29.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(30, 'Giày Thể Thao 30', 400000, 'Giày Thể Thao', 'img/30.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(31, 'Giày Thể Thao 31', 410000, 'Giày Thể Thao', 'img/31.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(32, 'Giày Thể Thao 32', 420000, 'Giày Thể Thao', 'img/32.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(33, 'Giày Thể Thao 33', 430000, 'Giày Thể Thao', 'img/33.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(34, 'Giày Thể Thao 34', 440000, 'Giày Thể Thao', 'img/34.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng'),
(35, 'Giày Thể Thao 35', 450000, 'Giày Thể Thao', 'img/35.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(36, 'Giày Thể Thao 36', 460000, 'Giày Thể Thao', 'img/36.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(37, 'Giày Thể Thao 37', 470000, 'Giày Thể Thao', 'img/37.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(38, 'Giày Thể Thao 38', 480000, 'Giày Thể Thao', 'img/38.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(39, 'Giày Thể Thao 39', 490000, 'Giày Thể Thao', 'img/39.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(40, 'Giày Thể Thao 40', 500000, 'Giày Thể Thao', 'img/40.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(41, 'Giày Thể Thao 41', 510000, 'Giày Thể Thao', 'img/41.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(42, 'Giày Thể Thao 42', 520000, 'Giày Thể Thao', 'img/42.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(43, 'Giày Thể Thao 43', 530000, 'Giày Thể Thao', 'img/43.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(44, 'Giày Thể Thao 44', 540000, 'Giày Thể Thao', 'img/44.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(45, 'Giày Thể Thao 45', 550000, 'Giày Thể Thao', 'img/45.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(46, 'Giày Thể Thao 46', 560000, 'Giày Thể Thao', 'img/46.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(47, 'Giày Thể Thao 47', 570000, 'Giày Thể Thao', 'img/47.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(48, 'Giày Thể Thao 48', 580000, 'Giày Thể Thao', 'img/48.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới'),
(49, 'Giày Thể Thao 49', 590000, 'Giày Thể Thao', 'img/49.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(50, 'Giày Thể Thao 50', 600000, 'Giày Thể Thao', 'img/50.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(51, 'Giày Thể Thao 51', 610000, 'Giày Thể Thao', 'img/51.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(52, 'Giày Thể Thao 52', 620000, 'Giày Thể Thao', 'img/52.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(53, 'Giày Thể Thao 53', 630000, 'Giày Thể Thao', 'img/53.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(54, 'Giày Thể Thao 54', 640000, 'Giày Thể Thao', 'img/54.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(55, 'Giày Thể Thao 55', 650000, 'Giày Thể Thao', 'img/55.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(56, 'Giày Thể Thao 56', 660000, 'Giày Thể Thao', 'img/56.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(57, 'Giày Thể Thao 57', 670000, 'Giày Thể Thao', 'img/57.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(58, 'Giày Thể Thao 58', 680000, 'Giày Thể Thao', 'img/58.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(59, 'Giày Thể Thao 59', 690000, 'Giày Thể Thao', 'img/59.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(60, 'Giày Thể Thao 60', 700000, 'Giày Thể Thao', 'img/60.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(61, 'Giày Thể Thao 61', 710000, 'Giày Thể Thao', 'img/61.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(62, 'Giày Thể Thao 62', 720000, 'Giày Thể Thao', 'img/62.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(63, 'Giày Thể Thao 63', 730000, 'Giày Thể Thao', 'img/63.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(64, 'Giày Thể Thao 64', 740000, 'Giày Thể Thao', 'img/64.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(65, 'Giày Thể Thao 65', 750000, 'Giày Thể Thao', 'img/65.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(66, 'Giày Thể Thao 66', 760000, 'Giày Thể Thao', 'img/66.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(67, 'Giày Thể Thao 67', 770000, 'Giày Thể Thao', 'img/67.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(68, 'Giày Thể Thao 68', 780000, 'Giày Thể Thao', 'img/68.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(69, 'Giày Thể Thao 69', 790000, 'Giày Thể Thao', 'img/69.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(70, 'Giày Thể Thao 70', 800000, 'Giày Thể Thao', 'img/70.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(71, 'Giày Thể Thao 71', 810000, 'Giày Thể Thao', 'img/71.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(72, 'Giày Thể Thao 72', 820000, 'Giày Thể Thao', 'img/72.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(73, 'Giày Thể Thao 73', 830000, 'Giày Thể Thao', 'img/73.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(74, 'Giày Thể Thao 74', 840000, 'Giày Thể Thao', 'img/74.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(75, 'Giày Thể Thao 75', 850000, 'Giày Thể Thao', 'img/75.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(76, 'Giày Thể Thao 76', 860000, 'Giày Thể Thao', 'img/76.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới'),
(77, 'Giày Thể Thao 77', 870000, 'Giày Thể Thao', 'img/77.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng'),
(78, 'Giày Thể Thao 78', 880000, 'Giày Thể Thao', 'img/78.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng'),
(79, 'Giày Thể Thao 79', 890000, 'Giày Thể Thao', 'img/79.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng'),
(80, 'Giày Thể Thao 80', 900000, 'Giày Thể Thao', 'img/80.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng'),
(81, 'Giày Thể Thao 81', 910000, 'Giày Thể Thao', 'img/81.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng'),
(82, 'Giày Thể Thao 82', 920000, 'Giày Thể Thao', 'img/82.jpg', 'Nữ', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(83, 'Giày Thể Thao 83', 930000, 'Giày Thể Thao', 'img/83.jpg', 'Nữ', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(84, 'Giày Thể Thao 84', 940000, 'Giày Thể Thao', 'img/84.jpg', 'Nữ', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(85, 'Giày Thể Thao 85', 950000, 'Giày Thể Thao', 'img/85.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(86, 'Giày Thể Thao 86', 960000, 'Giày Thể Thao', 'img/86.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(87, 'Giày Thể Thao 87', 970000, 'Giày Thể Thao', 'img/87.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(88, 'Giày Thể Thao 88', 980000, 'Giày Thể Thao', 'img/88.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(89, 'Giày Thể Thao 89', 990000, 'Giày Thể Thao', 'img/89.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(90, 'Giày Thể Thao 90', 100000, 'Giày Thể Thao', 'img/90.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(91, 'Giày Thể Thao 91', 100000, 'Giày Thể Thao', 'img/91.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(92, 'Giày Thể Thao 92', 100000, 'Giày Thể Thao', 'img/92.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(93, 'Giày Thể Thao 93', 100000, 'Giày Thể Thao', 'img/93.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(94, 'Giày Thể Thao 94', 100000, 'Giày Thể Thao', 'img/94.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới'),
(95, 'Giày Thể Thao 95', 100000, 'Giày Thể Thao', 'img/95.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Mới'),
(96, 'Giày Thể Thao 96', 100000, 'Giày Thể Thao', 'img/96.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(97, 'Giày Thể Thao 97', 100000, 'Giày Thể Thao', 'img/97.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(98, 'Giày Thể Thao 98', 100000, 'Giày Thể Thao', 'img/98.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(99, 'Giày Thể Thao 99', 100000, 'Giày Thể Thao', 'img/99.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(100, 'Giày Thể Thao 100', 200000, 'Giày Thể Thao', 'img/100.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(101, 'Giày Thể Thao 101', 200000, 'Giày Thể Thao', 'img/101.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(102, 'Giày Thể Thao 102', 200000, 'Giày Thể Thao', 'img/102.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(103, 'Giày Thể Thao 103', 200000, 'Giày Thể Thao', 'img/103.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(104, 'Giày Thể Thao 104', 200000, 'Giày Thể Thao', 'img/104.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(105, 'Giày Thể Thao 105', 200000, 'Giày Thể Thao', 'img/105.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(106, 'Giày Thể Thao 106', 200000, 'Giày Thể Thao', 'img/106.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(107, 'Giày Thể Thao 107', 200000, 'Giày Thể Thao', 'img/107.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(108, 'Giày Thể Thao 108', 200000, 'Giày Thể Thao', 'img/108.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(109, 'Giày Thể Thao 109', 200000, 'Giày Thể Thao', 'img/109.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(110, 'Giày Thể Thao 110', 300000, 'Giày Thể Thao', 'img/110.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(111, 'Giày Thể Thao 111', 300000, 'Giày Thể Thao', 'img/111.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(112, 'Giày Thể Thao 112', 300000, 'Giày Thể Thao', 'img/112.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(113, 'Giày Thể Thao 113', 300000, 'Giày Thể Thao', 'img/113.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(114, 'Giày Thể Thao 114', 300000, 'Giày Thể Thao', 'img/114.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(115, 'Giày Thể Thao 115', 300000, 'Giày Thể Thao', 'img/115.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng'),
(116, 'Giày Thể Thao 116', 300000, 'Giày Thể Thao', 'img/116.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Đã Dùng'),
(117, 'Giày Thể Thao 117', 300000, 'Giày Thể Thao', 'img/117.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Đã Dùng'),
(118, 'Giày Thể Thao 118', 300000, 'Giày Thể Thao', 'img/118.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(119, 'Giày Thể Thao 119', 300000, 'Giày Thể Thao', 'img/119.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(120, 'Giày Thể Thao 120', 400000, 'Giày Thể Thao', 'img/120.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(121, 'Giày Thể Thao 121', 400000, 'Giày Thể Thao', 'img/121.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(122, 'Giày Thể Thao 122', 400000, 'Giày Thể Thao', 'img/122.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(123, 'Giày Thể Thao 123', 400000, 'Giày Thể Thao', 'img/123.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(124, 'Giày Thể Thao 124', 400000, 'Giày Thể Thao', 'img/124.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(125, 'Giày Thể Thao 125', 400000, 'Giày Thể Thao', 'img/125.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(126, 'Giày Thể Thao 126', 400000, 'Giày Thể Thao', 'img/126.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(127, 'Giày Thể Thao 127', 400000, 'Giày Thể Thao', 'img/127.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(128, 'Giày Thể Thao 128', 400000, 'Giày Thể Thao', 'img/128.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(129, 'Giày Thể Thao 129', 400000, 'Giày Thể Thao', 'img/129.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(130, 'Giày Thể Thao 130', 500000, 'Giày Thể Thao', 'img/130.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(131, 'Giày Thể Thao 131', 500000, 'Giày Thể Thao', 'img/131.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(132, 'Giày Thể Thao 132', 500000, 'Giày Thể Thao', 'img/132.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(133, 'Giày Thể Thao 133', 500000, 'Giày Thể Thao', 'img/133.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(134, 'Giày Thể Thao 134', 500000, 'Giày Thể Thao', 'img/134.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(135, 'Giày Thể Thao 135', 500000, 'Giày Thể Thao', 'img/135.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(136, 'Giày Thể Thao 136', 500000, 'Giày Thể Thao', 'img/136.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(137, 'Giày Thể Thao 137', 500000, 'Giày Thể Thao', 'img/137.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(138, 'Giày Thể Thao 138', 500000, 'Giày Thể Thao', 'img/138.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(139, 'Giày Thể Thao 139', 500000, 'Giày Thể Thao', 'img/139.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(140, 'Giày Thể Thao 140', 600000, 'Giày Thể Thao', 'img/140.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(141, 'Giày Thể Thao 141', 600000, 'Giày Thể Thao', 'img/141.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(142, 'Giày Thể Thao 142', 600000, 'Giày Thể Thao', 'img/142.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(143, 'Giày Thể Thao 143', 600000, 'Giày Thể Thao', 'img/143.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(144, 'Giày Thể Thao 144', 600000, 'Giày Thể Thao', 'img/144.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(145, 'Giày Thể Thao 145', 600000, 'Giày Thể Thao', 'img/145.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(146, 'Giày Thể Thao 146', 600000, 'Giày Thể Thao', 'img/146.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(147, 'Giày Thể Thao 147', 600000, 'Giày Thể Thao', 'img/147.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(148, 'Giày Thể Thao 148', 600000, 'Giày Thể Thao', 'img/148.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(149, 'Giày Thể Thao 149', 600000, 'Giày Thể Thao', 'img/149.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(150, 'Giày Thể Thao 150', 700000, 'Giày Thể Thao', 'img/150.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(151, 'Giày Thể Thao 151', 700000, 'Giày Thể Thao', 'img/151.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(152, 'Giày Thể Thao 152', 700000, 'Giày Thể Thao', 'img/152.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(153, 'Giày Thể Thao 153', 700000, 'Giày Thể Thao', 'img/153.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(154, 'Giày Thể Thao 154', 700000, 'Giày Thể Thao', 'img/154.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(155, 'Giày Thể Thao 155', 700000, 'Giày Thể Thao', 'img/155.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(156, 'Giày Thể Thao 156', 700000, 'Giày Thể Thao', 'img/156.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(157, 'Giày Thể Thao 157', 700000, 'Giày Thể Thao', 'img/157.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(158, 'Giày Thể Thao 158', 700000, 'Giày Thể Thao', 'img/158.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(159, 'Giày Thể Thao 159', 700000, 'Giày Thể Thao', 'img/159.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(160, 'Giày Thể Thao 160', 800000, 'Giày Thể Thao', 'img/160.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới'),
(161, 'Giày Thể Thao 161', 800000, 'Giày Thể Thao', 'img/161.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(162, 'Giày Thể Thao 162', 800000, 'Giày Thể Thao', 'img/162.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(163, 'Giày Thể Thao 163', 800000, 'Giày Thể Thao', 'img/163.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(164, 'Giày Thể Thao 164', 800000, 'Giày Thể Thao', 'img/164.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(165, 'Giày Thể Thao 165', 800000, 'Giày Thể Thao', 'img/165.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(166, 'Giày Thể Thao 166', 800000, 'Giày Thể Thao', 'img/166.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(167, 'Giày Thể Thao 167', 800000, 'Giày Thể Thao', 'img/167.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(168, 'Giày Thể Thao 168', 800000, 'Giày Thể Thao', 'img/168.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(169, 'Giày Thể Thao 169', 800000, 'Giày Thể Thao', 'img/169.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(170, 'Giày Thể Thao 170', 900000, 'Giày Thể Thao', 'img/170.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(171, 'Giày Thể Thao 171', 900000, 'Giày Thể Thao', 'img/171.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(172, 'Giày Thể Thao 172', 900000, 'Giày Thể Thao', 'img/172.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(173, 'Giày Thể Thao 173', 900000, 'Giày Thể Thao', 'img/173.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(174, 'Giày Thể Thao 174', 900000, 'Giày Thể Thao', 'img/174.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(175, 'Giày Thể Thao 175', 900000, 'Giày Thể Thao', 'img/175.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(176, 'Giày Thể Thao 176', 900000, 'Giày Thể Thao', 'img/176.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(177, 'Giày Thể Thao 177', 900000, 'Giày Thể Thao', 'img/177.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(178, 'Giày Thể Thao 178', 900000, 'Giày Thể Thao', 'img/178.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(179, 'Giày Thể Thao 179', 900000, 'Giày Thể Thao', 'img/179.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(180, 'Giày Thể Thao 180', 1000000, 'Giày Thể Thao', 'img/180.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(181, 'Giày Thể Thao 181', 1000000, 'Giày Thể Thao', 'img/181.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(182, 'Giày Thể Thao 182', 1000000, 'Giày Thể Thao', 'img/182.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới'),
(183, 'Giày Thể Thao 183', 1000000, 'Giày Thể Thao', 'img/183.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(184, 'Giày Thể Thao 184', 1000000, 'Giày Thể Thao', 'img/184.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(185, 'Giày Thể Thao 185', 1000000, 'Giày Thể Thao', 'img/185.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(186, 'Giày Thể Thao 186', 1000000, 'Giày Thể Thao', 'img/186.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(187, 'Giày Thể Thao 187', 1000000, 'Giày Thể Thao', 'img/187.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(188, 'Giày Thể Thao 188', 1000000, 'Giày Thể Thao', 'img/188.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(189, 'Giày Thể Thao 189', 1000000, 'Giày Thể Thao', 'img/189.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(190, 'Giày Thể Thao 190', 1100000, 'Giày Thể Thao', 'img/190.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(191, 'Giày Thể Thao 191', 1100000, 'Giày Thể Thao', 'img/191.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(192, 'Giày Thể Thao 192', 1100000, 'Giày Thể Thao', 'img/192.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới'),
(193, 'Giày Thể Thao 193', 1100000, 'Giày Thể Thao', 'img/193.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(194, 'Giày Thể Thao 194', 1100000, 'Giày Thể Thao', 'img/194.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(195, 'Giày Thể Thao 195', 1100000, 'Giày Thể Thao', 'img/195.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(196, 'Giày Thể Thao 196', 1100000, 'Giày Thể Thao', 'img/196.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(197, 'Giày Thể Thao 197', 1100000, 'Giày Thể Thao', 'img/197.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(198, 'Giày Thể Thao 198', 1100000, 'Giày Thể Thao', 'img/198.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(199, 'Giày Thể Thao 199', 1100000, 'Giày Thể Thao', 'img/199.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng'),
(200, 'Giày Thể Thao 200', 1100000, 'Giày Thể Thao', 'img/200.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng')
;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
