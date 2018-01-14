-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 07:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(11) NOT NULL,
  `UserName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PassWord` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `UserName`, `PassWord`, `SDT`, `Email`, `DiaChi`, `CreatedDate`, `ModifiedDate`) VALUES
(1, 'admin', '123', '0968281847', 'k3d4tj1176@gmail.com', 'KTX khu B DHQG', '2017-12-11 15:37:13', '2017-12-11 15:37:13'),
(2, 'user ', '123', '01634222395', 'thanthoai@gmail.com', 'TP Quảng Ngãi', '2017-12-27 21:27:33', '2017-12-27 21:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Image_Url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`ID`, `ProductName`, `Price`, `Image_Url`, `UserName`, `CreatedDate`, `soluong`, `size`) VALUES
(23, 'Giày Thể Thao Nam Cao Cấp', 600000, 'https://image.robins.vn/xMVZpaaKbVhjlF2omwXmwDinX2k=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4572-754537-4.jpg', 'admin', '2018-01-15 00:34:01', 2, 40);

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
  `Statuss` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl_1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl_2` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl_3` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl_4` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Introduce` varchar(9999) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `ProductName`, `Price`, `Category`, `ImageUrl`, `Gender`, `Place`, `Shiping`, `Discount`, `Statuss`, `ImageUrl_1`, `ImageUrl_2`, `ImageUrl_3`, `ImageUrl_4`, `Introduce`) VALUES
(1, 'Giày Thể Thao Cao Cấp', 600000, 'Giày Thể Thao', 'https://image.robins.vn/FjPeptN2Gs_QSVqnjFe-Y3kyo9Y=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4149-594566-4.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Mới', 'https://image.robins.vn/LDIyaB-KED_9UX-QDpaOnehrEG4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1892-594566-1.jpg', 'https://image.robins.vn/Vxf4VWpxp5ANcnVezoSUPziGeZw=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4147-594566-2.jpg', 'https://image.robins.vn/hTpEmBhYRPiBBGudeQBr0yHBW5g=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4148-594566-3.jpg', 'https://image.robins.vn/hNNGyqrl_XTMfEG5BIA7gDEJ4L4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4150-594566-5.jpg', 'Sản phẩm có độ bền cao Chất liệu cao cấp. Kiểu dáng đơn giản nhưng không kém phầm sang trọng. Đường may tỉ mỉ'),
(3, 'Giày Thể Thao Nam Cao Cấp', 600000, 'Giày Thể Thao', 'https://image.robins.vn/xMVZpaaKbVhjlF2omwXmwDinX2k=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4572-754537-4.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/vdp2RL9RLlULQ5nwXTena5oMXNU=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4572-754537-3.jpg', 'https://image.robins.vn/pgtE3cZgnBV-hVMUplLUpjf12Ig=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4571-754537-2.jpg', 'https://image.robins.vn/_0SdffVEnotoZdCjPRQ-srIUdjs=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4570-754537-1.jpg', 'https://image.robins.vn/6n_M88PP91W__D3UOOVz-kn2hyQ=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4573-754537-5.jpg', 'Chất liệu lưới Air Mesh Đế phylon siêu nhẹ, đàn hồi tốt Bề mặt ngoài của đế có rãnh chống trơn trượt Tính năng nổi bật - Đường may tỉ mỉ. - Miếng lót êm chân - Đế giày chống trượt'),
(4, 'Giày Thể Thao Nam Hunter Originals', 650000, 'Giày Thể Thao', 'https://image.robins.vn/6yfzPAKpWt8LpatQ1oiacWVVR-A=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4132-171996-4.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/XLE7uEny6jz3A17B7QOsSfr_oz4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4132-171996-3.jpg', 'https://image.robins.vn/3VIObu4x7ny5yzZlx35giowmc6w=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4131-171996-2.jpg', 'https://image.robins.vn/CtxNPdLTxta-s-ETFneRtacPaBE=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4130-171996-1.jpg', 'https://image.robins.vn/cpR6c79pLTX9JS5hiZ7u9Kx2j7w=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4133-171996-5.jpg', 'Đế phylon cao cấp siêu nhẹ, đàn hồi tốt đem lại cảm giác êm ái khi di chuyển.  Cấu trúc lưới Airmesh thông thoáng tạo cảm giác mát mẻ cho đôi chân.  Đế tiếp đất từ chất liệu cao su cao cấp cùng thiết kế rãnh ngang tăng độ bám khi di chuyển trên mọi địa hình.'),
(5, 'Giày Nam Kinsale Lace-Up', 948000, 'Giày Thể Thao', 'https://image.robins.vn/eCptiC4MZnBBWxP4Q7lYyKmOzmI=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/crocs-9544-701086-1.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng', 'https://image.robins.vn/27VPWaZMKSxL6BSyJqq42Ws4OeQ=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/crocs-9545-701086-2.jpg', 'https://image.robins.vn/ou-BSn2mfcKeZihRR-lMp90xCT4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/crocs-9545-701086-3.jpg', 'https://image.robins.vn/919nwhIt-eEM7x1fEngZU-maapA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/crocs-9546-701086-4.jpg', 'https://image.robins.vn/UJ1p2MfKMG6bhcMtUQ2P3AYK75g=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/crocs-9546-701086-5.jpg', 'ROBINS đảm bảo sản phẩm chính hãng Cổ điển và lịch lãm với giày thể thao thiết kế bởi Crocs. Giày có màu sắc trơn, được làm từ chất liệu cao cấp mềm mại khiến bạn luôn thấy tự tin và đầy thoải mái.'),
(6, 'Giày Thể Thao Nam - Hunter Feast', 680000, 'Giày Thể Thao', 'https://image.robins.vn/PyOIl0MzeUcL_2l71uMohh30Mtg=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6385-620557-1.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng', 'https://image.robins.vn/MpY5TUCKxSeaoBvLy5ElEYJUWxc=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6386-620557-2.jpg', 'https://image.robins.vn/qCZcZaTREBS0eMsdfULfuGh9d6M=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6387-620557-3.jpg', 'https://image.robins.vn/xsE1MJQPoLx-lYSJSG3lLuSorMA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6388-620557-4.jpg', 'https://image.robins.vn/346echU9mreqatBxlEyPJGlhQA4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6388-620557-5.jpg', ' Thiết kế của Hunter tập trung chủ yếu ở phong cách trẻ trung, năng động và tạo sự ấn tượng trong phong cách thời trang. Điểm thu hút chính là bản thân giày có trọng lượng nhẹ, thân giày ôm sát bàn chân tạo cảm giác thoải mái khi di chuyển, nhẹ như bay trong không trung.'),
(7, 'Giày Sneaker Nam Tăng Chiều Cao 5Cm Sintintoshoe', 404000, 'Giày Thể Thao', 'https://image.robins.vn/bKtx2Wiq5sa9vYhdd7j_3ZCmeXI=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-6671-733817-1.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng', 'https://image.robins.vn/jkR-NBGdum26r7silNSBQCHkqZk=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-6672-733817-2.jpg', 'https://image.robins.vn/yFt_tV2aFkHdrZkv7dxQ4NLyhYw=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-6673-733817-3.jpg', 'https://image.robins.vn/aPMqJRFDmIYUFOHM4G9-OO6gYPk=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-6673-733817-4.jpg', 'https://image.robins.vn/Wyw-aGZG_n6vmss3Tud5Z1eOTnU=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-6674-733817-5.jpg', 'Giày SNEAKER NAM tăng chiều cao TINTO giúp tăng chiều cao tức thì, được thiết kế sành điệu, nam tính với chất liệu cao cấp mang lại cảm giác thoải mái hơn, tự tin hơn khi mang vào chân.'),
(8, 'Giày Nam Cột Dây Thời Trang', 639560, 'Giày Thể Thao', 'https://image.robins.vn/RqPoM2tENSwJ_nbNBuzzenV4EgE=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4202-999737-1.jpg', 'Nam', 'Hà Nội', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng', 'https://image.robins.vn/jJGA3X_bCMqLTVI2w1QfGQ1074g=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4203-999737-3.jpg', 'https://image.robins.vn/aGGARu_YCuA2WgIM--KWbRnq4JA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4204-999737-4.jpg', 'https://image.robins.vn/a7hJXWF94mdLwbD2qyrR5YJhyQY=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4203-999737-2.jpg', 'https://image.robins.vn/eu825jEBq_nJbWAekZcO4EmhXqw=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4204-999737-5.jpg', 'Thu hút sự chú ý của mọi người với thời trang thanh lịch đến từ thương hiệu Everest. Thiết kế đơn giản cổ điển nhưng mang theo các đường nét hiện đại vô cùng nổi bật nhờ chất lượng được kiểm duyệt kĩ lưỡng .'),
(9, 'Giày Sneaker Nam', 545000, 'Giày Thể Thao', 'https://image.robins.vn/LYi2GuhiuGOhu-aLU8zABpRYlOA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-1730-579486-1.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Đã Dùng', 'https://image.robins.vn/UJfNdc3_TdjhNBdLE8F1u_sQPwg=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-1731-579486-2.jpg', 'https://image.robins.vn/JNKq59GIQGmVHAZmCpdlyVfFJ6s=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-1731-579486-3.jpg', 'https://image.robins.vn/sj9-Uegk82CEcUpSxer3wiTrKH8=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-1732-579486-4.jpg', 'https://image.robins.vn/SEPWTrtk5FG33deJcWad5oNlYuE=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/tinto-1732-579486-5.jpg', '- Chất liệu: VẢI MỀM, THOÁNG, CHẤT LIỆU CAO CẤP - Đế cao su thiên nhiên, nhẹ bám tốt, chịu mài mòn cao - Mũi giày tròn. - Giày có kích cỡ đúng tiêu chuẩn - Kiểu dáng đa phong cách - Đường may tinh tế sắc sảo.'),
(10, 'Giày Thể Thao Hunter Cao Cấp', 650000, 'Giày Thể Thao', 'https://image.robins.vn/Q8DHpvVGQgGL0H7birfYBoUY4QM=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5715-194566-4.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/caO-UgyF6rwCioIETBMVcfMJmRc=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5716-194566-5.jpg', 'https://image.robins.vn/amA2NaFIPqttSHGP5OBu5aUMFIQ=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5717-194566-6.jpg', 'https://image.robins.vn/rrKQeNBzNqL9ogWQOCNiwjpZvB0=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1898-194566-1.jpg', 'https://image.robins.vn/ZpkyrHbZN6ntG68WorE9Sx6n05U=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5714-194566-2.jpg', 'Chất liệu lưới cao cấp, áp dụng công nghệ Air Mesh thông thoáng, tạo cảm giác mát mẻ cho đôi chân và ngăn chặn tình trạng ẩm ướt khó chịu khi hoạt động trong thời gian dài.'),
(11, 'Giày Thể Thao Vải Thoáng Khí', 220000, 'Giày Thể Thao', 'https://image.robins.vn/yRQxKTPRCLvohks68tJdfLWa6GM=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/vizi-shoes-7885-445686-1.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/3crun7DvnujLsu8KfDiwXvjZlZE=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/vizi-shoes-7885-445686-2.jpg', 'https://image.robins.vn/R26R6iOSRacSXZDFjJl0UjmJrKc=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/vizi-shoes-7886-445686-3.jpg', 'https://image.robins.vn/09pEieycekyVMaJZE8d55wWx51Q=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/vizi-shoes-7887-445686-4.jpg', 'https://image.robins.vn/BTLdDxup5n5mPxv90Mc-1Jb05wU=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/vizi-shoes-7887-445686-5.jpg', 'Thông tin sản phẩm giày vải thể thao mã T93: - Kiểu dáng: Giày thể thao Vải Thoáng Phong Cách Hàn Quốc - Chất liệu: Vải Thoáng - Đặc điểm chung: Giày thể thao kiểu dáng Hàn Quốc cá tính.'),
(12, 'Giày Nam Cột Dây Thời Trang', 650000, 'Giày Thể Thao', 'https://image.robins.vn/RqPoM2tENSwJ_nbNBuzzenV4EgE=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4202-999737-1.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/a7hJXWF94mdLwbD2qyrR5YJhyQY=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4203-999737-2.jpg', 'https://image.robins.vn/jJGA3X_bCMqLTVI2w1QfGQ1074g=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4203-999737-3.jpg', 'https://image.robins.vn/aGGARu_YCuA2WgIM--KWbRnq4JA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4204-999737-4.jpg', 'https://image.robins.vn/eu825jEBq_nJbWAekZcO4EmhXqw=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/everest-4204-999737-5.jpg', 'Thu hút sự chú ý của mọi người với thời trang thanh lịch đến từ thương hiệu Everest. Thiết kế đơn giản cổ điển nhưng mang theo các đường nét hiện đại vô cùng nổi bật nhờ chất lượng được kiểm duyệt kĩ lưỡng .'),
(13, 'Giày Thể Thao Hunter Nam - Bst Summer', 680000, 'Giày Thể Thao', 'https://image.robins.vn/PqXLRFOMcse_r0szx3_5bMMj4U8=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1896-494917-5.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/MTT8FZTvcdMXjo1kdxRXTKc47X4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1895-494917-4.jpg', 'https://image.robins.vn/Q0T2Eg6UAV6QN6Ps2euDbqoZHBk=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1895-494917-3.jpg', 'https://image.robins.vn/nl5E9DiICKoQB_bbB56G3GFdt9Y=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1894-494917-2.jpg', 'https://image.robins.vn/CvIzwSIBBqeRML6LlKJ3n-B5HTw=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-1893-494917-1.jpg', 'Lấy ý tưởng từ chính sự sinh động của tuổi trẻ, thiết kế mới thuộc bộ sưu tập mùa hè được cách điệu thêm phần vệt phát quang trên thân giày tạo điểm nhấn đặc biệt cá tính.'),
(14, 'Giày Thể Thao Nam - BST Back To Scholl', 680000, 'Giày Thể Thao', 'https://image.robins.vn/P8uKZozfadDYMtKkAPiPT_6U1rQ=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6208-120557-4.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/z6TWQCXP7WCFZT8K5wvNQNNu8hE=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6205-120557-1.jpg', 'https://image.robins.vn/A02LY1t9Z0IbdYfVC_xncGyalTY=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6206-120557-2.jpg', 'https://image.robins.vn/8OxFPwyMTmOfaqFooaANxilFUqQ=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6207-120557-3.jpg', 'https://image.robins.vn/-op-awUffAqqhYQv_Ez-kTEMhI0=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-6208-120557-5.jpg', 'Thiết kế giày thể thao Hunter nhẹ như bay mang phong cách hiện đại và chất lượng, phù hợp với các bạn nam trẻ trung, năng động. '),
(15, 'Giày Thể Thao Hunter Cao Cấp', 650000, 'Giày Thể Thao', 'https://image.robins.vn/UHFEgOx46kK6LezcV6cNaNMJfiU=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4762-094566-4.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/T66bymlJrX5224mKBWEEMt973q4=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4763-094566-5.jpg', 'https://image.robins.vn/A8KWyKSyo6zI6hMJj9__CHvFWFU=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4764-094566-6.jpg', 'https://image.robins.vn/OgOhDWWyxvK-XjLlQPupCaAO3B8=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4765-094566-7.jpg', 'https://image.robins.vn/-xJzLKjJUIWD4RHZ_jeYyibvnW0=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4765-094566-8.jpg', 'Chất liệu lưới cao cấp, áp dụng công nghệ Air Mesh thông thoáng, tạo cảm giác mát mẻ cho đôi chân và ngăn chặn tình trạng ẩm ướt khó chịu khi hoạt động trong thời gian dài.'),
(16, 'Giày Thể Thao Nam Cao Cấp', 590000, 'Giày Thể Thao', 'https://image.robins.vn/2xqb68vGCc-kiPThYheqdDvv8AQ=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5709-988507-6.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/kw3haqFt_biUvbpciE19QxccLZA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5707-988507-2.jpg', 'https://image.robins.vn/WPKpsvTvidgwFHdyLQZtqofcwDA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5708-988507-3.jpg', 'https://image.robins.vn/zus1HGNU0vCW-xxa_qi35sqLmBw=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5708-988507-4.jpg', 'https://image.robins.vn/SwKAo54ThT6bZNZQI4D_tB5Bm30=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-5709-988507-5.jpg', 'Chất liệu lưới cao cấp, áp dụng công nghệ Air Mesh thông thoáng, tạo cảm giác mát mẻ cho đôi chân và ngăn chặn tình trạng ẩm ướt khó chịu khi hoạt động trong thời gian dài.'),
(17, 'Giày Thể Thao Gtt Hunter Feast Summer Vibes 2', 650000, 'Giày Thể Thao', 'https://image.robins.vn/ipUE3j2aOrbvYXx96KRjB5vp3_w=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4121-871996-4.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/BxfcQzuyuUmmgQ2gu95jKYCUaSg=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4120-871996-3.jpg', 'https://image.robins.vn/MbW4zBEIjiWpRINvjGRVtGcsjhs=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4119-871996-2.jpg', 'https://image.robins.vn/hsWSk0JX2eXBklDcVQtCdBbQe_E=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4119-871996-1.jpg', 'https://image.robins.vn/cmbchihXh9v0jaxYYNd0v8Qmzy0=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4121-871996-5.jpg', 'Áp dụng công nghệ quai dệt mới có tên gọi Liteknit, có lỗ thoát khí giúp tạo sự thông thoáng. Bên cạnh đó, giày có kiểu dáng và cấu trúc mới đáp ứng các yêu cầu năng động giới trẻ, phù hợp với các hoạt động thể thao và sử dụng thường nhật. '),
(18, 'Giày Nam Da Bò Cổ Trung', 579000, 'Giày Thể Thao', 'https://image.robins.vn/5qcFFWRRdnvdPJXYeMDbsMclRqk=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/huy-hoang-1819-823416-1.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/t4VZjnaa_w7U3i0jE-AwZbPPE2g=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/huy-hoang-1819-823416-2.jpg', 'https://image.robins.vn/CSkRANUFNBZ2mRaXbr9URLJeGgA=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/huy-hoang-1820-823416-3.jpg', 'https://image.robins.vn/YANo9FwXnui79FCi7nyMwMhpA0o=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/huy-hoang-1820-823416-4.jpg', 'https://image.robins.vn/VZUlD3g8Rlidg0RSpspSqq9u6H8=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/huy-hoang-1821-823416-5.jpg', '- Tên sản phẩm: HZ7763 - Giày nam Huy Hoàng cổ trung màu nâu- Giày tây nam Huy Hoàng được làm từ chất liệu da bò thật 100% nên càng sử dụng lâu bề mặt da sẽ càng bóng đẹp tự nhiên. '),
(19, 'Giày Thể Thao Nam Hunter Lightknit Summer Vibes', 650000, 'Giày Thể Thao', 'https://image.robins.vn/mX_x3ivVoTENhfC3koJ9YKgMcPk=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4113-471996-1.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/XjKj4MfvOUOCxPqdwCm8ooTbIz0=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4114-471996-2.jpg', 'https://image.robins.vn/nchTxBqn_a9u6B7kz1yhEYxSOVg=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4115-471996-3.jpg', 'https://image.robins.vn/G6MRJrm3jo5dxLmDc_J71KQqfGY=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4116-471996-5.jpg', 'https://image.robins.vn/vMyq61nITsdbhehkhmNdhuPe7xk=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/bitis-4116-471996-6.jpg', 'So với sản phẩm trước, phiên bản mới có sự thay đổi ở chất liệu quai dệt. Áp dụng công nghệ quai dệt mới có tên gọi Liteknit, có lỗ thoát khí giúp tạo sự thông thoáng.  Bên cạnh đó, giày có kiểu dáng và cấu trúc mới đáp ứng các yêu cầu năng động giới trẻ, '),
(20, 'Giày Thể Thao Nam', 339000, 'Giày Thể Thao', 'https://image.robins.vn/nhOEq4W6Z1Y9_j2pI-tY4lRfXZs=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/hung-cuong-5469-530396-1.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', 'https://image.robins.vn/tMBSO6zZZ7P-GT5rf6WaRm2frXI=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/hung-cuong-5470-530396-2.jpg', 'https://image.robins.vn/WG2RKDjHgKRXEwWD0bVeoj52OXI=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/hung-cuong-3354-530396-3.jpg', 'https://image.robins.vn/w7QMPvaqBfJXVNSGBjYXA8kjLTY=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/hung-cuong-3355-530396-4.jpg', 'https://image.robins.vn/Ni6RI2W6p173rnymdivnOexaNro=/fit-in/762x1100/filters:quality(90):fill(ffffff)/http://static-catalog.robins.vn/p/hung-cuong-3355-530396-5.jpg', ''),
(21, 'Giày Thể Thao 21', 310000, 'Giày Thể Thao', 'img/21.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(22, 'Giày Thể Thao 22', 320000, 'Giày Thể Thao', 'img/22.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(23, 'Giày Thể Thao 23', 330000, 'Giày Thể Thao', 'img/23.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(24, 'Giày Thể Thao 24', 340000, 'Giày Thể Thao', 'img/24.jpg', 'Nam', 'Đà Nẵng', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(25, 'Giày Thể Thao 25', 350000, 'Giày Thể Thao', 'img/25.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(26, 'Giày Thể Thao 26', 360000, 'Giày Thể Thao', 'img/26.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng tiết Kiệm', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(27, 'Giày Thể Thao 27', 370000, 'Giày Thể Thao', 'img/27.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(28, 'Giày Thể Thao 28', 380000, 'Giày Thể Thao', 'img/28.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(29, 'Giày Thể Thao 29', 390000, 'Giày Thể Thao', 'img/29.jpg', 'Nam', 'Cần Thơ', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(30, 'Giày Thể Thao 30', 400000, 'Giày Thể Thao', 'img/30.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(31, 'Giày Thể Thao 31', 410000, 'Giày Thể Thao', 'img/31.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(32, 'Giày Thể Thao 32', 420000, 'Giày Thể Thao', 'img/32.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(33, 'Giày Thể Thao 33', 430000, 'Giày Thể Thao', 'img/33.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(34, 'Giày Thể Thao 34', 440000, 'Giày Thể Thao', 'img/34.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(35, 'Giày Thể Thao 35', 450000, 'Giày Thể Thao', 'img/35.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(36, 'Giày Thể Thao 36', 460000, 'Giày Thể Thao', 'img/36.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(37, 'Giày Thể Thao 37', 470000, 'Giày Thể Thao', 'img/37.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(38, 'Giày Thể Thao 38', 480000, 'Giày Thể Thao', 'img/38.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(39, 'Giày Thể Thao 39', 490000, 'Giày Thể Thao', 'img/39.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(40, 'Giày Thể Thao 40', 500000, 'Giày Thể Thao', 'img/40.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(41, 'Giày Thể Thao 41', 510000, 'Giày Thể Thao', 'img/41.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(42, 'Giày Thể Thao 42', 520000, 'Giày Thể Thao', 'img/42.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(43, 'Giày Thể Thao 43', 530000, 'Giày Thể Thao', 'img/43.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(44, 'Giày Thể Thao 44', 540000, 'Giày Thể Thao', 'img/44.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(45, 'Giày Thể Thao 45', 550000, 'Giày Thể Thao', 'img/45.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(46, 'Giày Thể Thao 46', 560000, 'Giày Thể Thao', 'img/46.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(47, 'Giày Thể Thao 47', 570000, 'Giày Thể Thao', 'img/47.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(48, 'Giày Thể Thao 48', 580000, 'Giày Thể Thao', 'img/48.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Miễn Phí Vận Chuyển', 'Mới', NULL, NULL, NULL, NULL, NULL),
(49, 'Giày Thể Thao 49', 590000, 'Giày Thể Thao', 'img/49.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(50, 'Giày Thể Thao 50', 600000, 'Giày Thể Thao', 'img/50.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(51, 'Giày Thể Thao 51', 610000, 'Giày Thể Thao', 'img/51.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(52, 'Giày Thể Thao 52', 620000, 'Giày Thể Thao', 'img/52.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(53, 'Giày Thể Thao 53', 630000, 'Giày Thể Thao', 'img/53.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(54, 'Giày Thể Thao 54', 640000, 'Giày Thể Thao', 'img/54.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(55, 'Giày Thể Thao 55', 650000, 'Giày Thể Thao', 'img/55.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(56, 'Giày Thể Thao 56', 660000, 'Giày Thể Thao', 'img/56.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(57, 'Giày Thể Thao 57', 670000, 'Giày Thể Thao', 'img/57.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(58, 'Giày Thể Thao 58', 680000, 'Giày Thể Thao', 'img/58.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(59, 'Giày Thể Thao 59', 690000, 'Giày Thể Thao', 'img/59.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(60, 'Giày Thể Thao 60', 700000, 'Giày Thể Thao', 'img/60.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(61, 'Giày Thể Thao 61', 710000, 'Giày Thể Thao', 'img/61.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(62, 'Giày Thể Thao 62', 720000, 'Giày Thể Thao', 'img/62.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(63, 'Giày Thể Thao 63', 730000, 'Giày Thể Thao', 'img/63.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(64, 'Giày Thể Thao 64', 740000, 'Giày Thể Thao', 'img/64.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(65, 'Giày Thể Thao 65', 750000, 'Giày Thể Thao', 'img/65.jpg', 'Nữ', 'Cần Thơ', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(66, 'Giày Thể Thao 66', 760000, 'Giày Thể Thao', 'img/66.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(67, 'Giày Thể Thao 67', 770000, 'Giày Thể Thao', 'img/67.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(68, 'Giày Thể Thao 68', 780000, 'Giày Thể Thao', 'img/68.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(69, 'Giày Thể Thao 69', 790000, 'Giày Thể Thao', 'img/69.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(70, 'Giày Thể Thao 70', 800000, 'Giày Thể Thao', 'img/70.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(71, 'Giày Thể Thao 71', 810000, 'Giày Thể Thao', 'img/71.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(72, 'Giày Thể Thao 72', 820000, 'Giày Thể Thao', 'img/72.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(73, 'Giày Thể Thao 73', 830000, 'Giày Thể Thao', 'img/73.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(74, 'Giày Thể Thao 74', 840000, 'Giày Thể Thao', 'img/74.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(75, 'Giày Thể Thao 75', 850000, 'Giày Thể Thao', 'img/75.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(76, 'Giày Thể Thao 76', 860000, 'Giày Thể Thao', 'img/76.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(77, 'Giày Thể Thao 77', 870000, 'Giày Thể Thao', 'img/77.jpg', 'Nữ', 'Cần Thơ', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(78, 'Giày Thể Thao 78', 880000, 'Giày Thể Thao', 'img/78.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(79, 'Giày Thể Thao 79', 890000, 'Giày Thể Thao', 'img/79.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(80, 'Giày Thể Thao 80', 900000, 'Giày Thể Thao', 'img/80.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(81, 'Giày Thể Thao 81', 910000, 'Giày Thể Thao', 'img/81.jpg', 'Nữ', 'Đà Nẵng', 'Viettel Post', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(82, 'Giày Thể Thao 82', 920000, 'Giày Thể Thao', 'img/82.jpg', 'Nữ', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(83, 'Giày Thể Thao 83', 930000, 'Giày Thể Thao', 'img/83.jpg', 'Nữ', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(84, 'Giày Thể Thao 84', 940000, 'Giày Thể Thao', 'img/84.jpg', 'Nữ', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(85, 'Giày Thể Thao 85', 950000, 'Giày Thể Thao', 'img/85.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(86, 'Giày Thể Thao 86', 960000, 'Giày Thể Thao', 'img/86.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(87, 'Giày Thể Thao 87', 970000, 'Giày Thể Thao', 'img/87.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(88, 'Giày Thể Thao 88', 980000, 'Giày Thể Thao', 'img/88.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(89, 'Giày Thể Thao 89', 990000, 'Giày Thể Thao', 'img/89.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(90, 'Giày Thể Thao 90', 100000, 'Giày Thể Thao', 'img/90.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(91, 'Giày Thể Thao 91', 100000, 'Giày Thể Thao', 'img/91.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(92, 'Giày Thể Thao 92', 100000, 'Giày Thể Thao', 'img/92.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(93, 'Giày Thể Thao 93', 100000, 'Giày Thể Thao', 'img/93.jpg', 'Trẻ Em', 'Đà Nẵng', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(94, 'Giày Thể Thao 94', 100000, 'Giày Thể Thao', 'img/94.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(95, 'Giày Thể Thao 95', 100000, 'Giày Thể Thao', 'img/95.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Mới', NULL, NULL, NULL, NULL, NULL),
(96, 'Giày Thể Thao 96', 100000, 'Giày Thể Thao', 'img/96.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(97, 'Giày Thể Thao 97', 100000, 'Giày Thể Thao', 'img/97.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(98, 'Giày Thể Thao 98', 100000, 'Giày Thể Thao', 'img/98.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(99, 'Giày Thể Thao 99', 100000, 'Giày Thể Thao', 'img/99.jpg', 'Trẻ Em', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(100, 'Giày Thể Thao 100', 200000, 'Giày Thể Thao', 'img/100.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(101, 'Giày Thể Thao 101', 200000, 'Giày Thể Thao', 'img/101.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(102, 'Giày Thể Thao 102', 200000, 'Giày Thể Thao', 'img/102.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(103, 'Giày Thể Thao 103', 200000, 'Giày Thể Thao', 'img/103.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(104, 'Giày Thể Thao 104', 200000, 'Giày Thể Thao', 'img/104.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(105, 'Giày Thể Thao 105', 200000, 'Giày Thể Thao', 'img/105.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(106, 'Giày Thể Thao 106', 200000, 'Giày Thể Thao', 'img/106.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(107, 'Giày Thể Thao 107', 200000, 'Giày Thể Thao', 'img/107.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(108, 'Giày Thể Thao 108', 200000, 'Giày Thể Thao', 'img/108.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(109, 'Giày Thể Thao 109', 200000, 'Giày Thể Thao', 'img/109.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(110, 'Giày Thể Thao 110', 300000, 'Giày Thể Thao', 'img/110.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(111, 'Giày Thể Thao 111', 300000, 'Giày Thể Thao', 'img/111.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(112, 'Giày Thể Thao 112', 300000, 'Giày Thể Thao', 'img/112.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(113, 'Giày Thể Thao 113', 300000, 'Giày Thể Thao', 'img/113.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(114, 'Giày Thể Thao 114', 300000, 'Giày Thể Thao', 'img/114.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(115, 'Giày Thể Thao 115', 300000, 'Giày Thể Thao', 'img/115.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(116, 'Giày Thể Thao 116', 300000, 'Giày Thể Thao', 'img/116.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(117, 'Giày Thể Thao 117', 300000, 'Giày Thể Thao', 'img/117.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Đang Giảm Giá', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(118, 'Giày Thể Thao 118', 300000, 'Giày Thể Thao', 'img/118.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(119, 'Giày Thể Thao 119', 300000, 'Giày Thể Thao', 'img/119.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(120, 'Giày Thể Thao 120', 400000, 'Giày Thể Thao', 'img/120.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(121, 'Giày Thể Thao 121', 400000, 'Giày Thể Thao', 'img/121.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(122, 'Giày Thể Thao 122', 400000, 'Giày Thể Thao', 'img/122.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(123, 'Giày Thể Thao 123', 400000, 'Giày Thể Thao', 'img/123.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(124, 'Giày Thể Thao 124', 400000, 'Giày Thể Thao', 'img/124.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(125, 'Giày Thể Thao 125', 400000, 'Giày Thể Thao', 'img/125.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(126, 'Giày Thể Thao 126', 400000, 'Giày Thể Thao', 'img/126.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(127, 'Giày Thể Thao 127', 400000, 'Giày Thể Thao', 'img/127.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(128, 'Giày Thể Thao 128', 400000, 'Giày Thể Thao', 'img/128.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(129, 'Giày Thể Thao 129', 400000, 'Giày Thể Thao', 'img/129.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(130, 'Giày Thể Thao 130', 500000, 'Giày Thể Thao', 'img/130.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(131, 'Giày Thể Thao 131', 500000, 'Giày Thể Thao', 'img/131.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(132, 'Giày Thể Thao 132', 500000, 'Giày Thể Thao', 'img/132.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(133, 'Giày Thể Thao 133', 500000, 'Giày Thể Thao', 'img/133.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(134, 'Giày Thể Thao 134', 500000, 'Giày Thể Thao', 'img/134.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(135, 'Giày Thể Thao 135', 500000, 'Giày Thể Thao', 'img/135.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(136, 'Giày Thể Thao 136', 500000, 'Giày Thể Thao', 'img/136.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(137, 'Giày Thể Thao 137', 500000, 'Giày Thể Thao', 'img/137.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(138, 'Giày Thể Thao 138', 500000, 'Giày Thể Thao', 'img/138.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(139, 'Giày Thể Thao 139', 500000, 'Giày Thể Thao', 'img/139.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(140, 'Giày Thể Thao 140', 600000, 'Giày Thể Thao', 'img/140.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(141, 'Giày Thể Thao 141', 600000, 'Giày Thể Thao', 'img/141.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(142, 'Giày Thể Thao 142', 600000, 'Giày Thể Thao', 'img/142.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(143, 'Giày Thể Thao 143', 600000, 'Giày Thể Thao', 'img/143.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(144, 'Giày Thể Thao 144', 600000, 'Giày Thể Thao', 'img/144.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(145, 'Giày Thể Thao 145', 600000, 'Giày Thể Thao', 'img/145.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(146, 'Giày Thể Thao 146', 600000, 'Giày Thể Thao', 'img/146.jpg', 'Nam', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(147, 'Giày Thể Thao 147', 600000, 'Giày Thể Thao', 'img/147.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(148, 'Giày Thể Thao 148', 600000, 'Giày Thể Thao', 'img/148.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(149, 'Giày Thể Thao 149', 600000, 'Giày Thể Thao', 'img/149.jpg', 'Nam', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(150, 'Giày Thể Thao 150', 700000, 'Giày Thể Thao', 'img/150.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(151, 'Giày Thể Thao 151', 700000, 'Giày Thể Thao', 'img/151.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(152, 'Giày Thể Thao 152', 700000, 'Giày Thể Thao', 'img/152.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(153, 'Giày Thể Thao 153', 700000, 'Giày Thể Thao', 'img/153.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(154, 'Giày Thể Thao 154', 700000, 'Giày Thể Thao', 'img/154.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(155, 'Giày Thể Thao 155', 700000, 'Giày Thể Thao', 'img/155.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(156, 'Giày Thể Thao 156', 700000, 'Giày Thể Thao', 'img/156.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(157, 'Giày Thể Thao 157', 700000, 'Giày Thể Thao', 'img/157.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(158, 'Giày Thể Thao 158', 700000, 'Giày Thể Thao', 'img/158.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(159, 'Giày Thể Thao 159', 700000, 'Giày Thể Thao', 'img/159.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(160, 'Giày Thể Thao 160', 800000, 'Giày Thể Thao', 'img/160.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Tiết Kiệm', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(161, 'Giày Thể Thao 161', 800000, 'Giày Thể Thao', 'img/161.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(162, 'Giày Thể Thao 162', 800000, 'Giày Thể Thao', 'img/162.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(163, 'Giày Thể Thao 163', 800000, 'Giày Thể Thao', 'img/163.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(164, 'Giày Thể Thao 164', 800000, 'Giày Thể Thao', 'img/164.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(165, 'Giày Thể Thao 165', 800000, 'Giày Thể Thao', 'img/165.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(166, 'Giày Thể Thao 166', 800000, 'Giày Thể Thao', 'img/166.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(167, 'Giày Thể Thao 167', 800000, 'Giày Thể Thao', 'img/167.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(168, 'Giày Thể Thao 168', 800000, 'Giày Thể Thao', 'img/168.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(169, 'Giày Thể Thao 169', 800000, 'Giày Thể Thao', 'img/169.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(170, 'Giày Thể Thao 170', 900000, 'Giày Thể Thao', 'img/170.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(171, 'Giày Thể Thao 171', 900000, 'Giày Thể Thao', 'img/171.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(172, 'Giày Thể Thao 172', 900000, 'Giày Thể Thao', 'img/172.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(173, 'Giày Thể Thao 173', 900000, 'Giày Thể Thao', 'img/173.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(174, 'Giày Thể Thao 174', 900000, 'Giày Thể Thao', 'img/174.jpg', 'Nữ', 'TP HCM', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(175, 'Giày Thể Thao 175', 900000, 'Giày Thể Thao', 'img/175.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(176, 'Giày Thể Thao 176', 900000, 'Giày Thể Thao', 'img/176.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(177, 'Giày Thể Thao 177', 900000, 'Giày Thể Thao', 'img/177.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(178, 'Giày Thể Thao 178', 900000, 'Giày Thể Thao', 'img/178.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(179, 'Giày Thể Thao 179', 900000, 'Giày Thể Thao', 'img/179.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(180, 'Giày Thể Thao 180', 1000000, 'Giày Thể Thao', 'img/180.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(181, 'Giày Thể Thao 181', 1000000, 'Giày Thể Thao', 'img/181.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(182, 'Giày Thể Thao 182', 1000000, 'Giày Thể Thao', 'img/182.jpg', 'Nữ', 'Hà Nội', 'Giao Hàng Nhanh', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(183, 'Giày Thể Thao 183', 1000000, 'Giày Thể Thao', 'img/183.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(184, 'Giày Thể Thao 184', 1000000, 'Giày Thể Thao', 'img/184.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(185, 'Giày Thể Thao 185', 1000000, 'Giày Thể Thao', 'img/185.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(186, 'Giày Thể Thao 186', 1000000, 'Giày Thể Thao', 'img/186.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(187, 'Giày Thể Thao 187', 1000000, 'Giày Thể Thao', 'img/187.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(188, 'Giày Thể Thao 188', 1000000, 'Giày Thể Thao', 'img/188.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(189, 'Giày Thể Thao 189', 1000000, 'Giày Thể Thao', 'img/189.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(190, 'Giày Thể Thao 190', 1100000, 'Giày Thể Thao', 'img/190.jpg', 'Nữ', 'Hà Nội', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(191, 'Giày Thể Thao 191', 1100000, 'Giày Thể Thao', 'img/191.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(192, 'Giày Thể Thao 192', 1100000, 'Giày Thể Thao', 'img/192.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Mới', NULL, NULL, NULL, NULL, NULL),
(193, 'Giày Thể Thao 193', 1100000, 'Giày Thể Thao', 'img/193.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(194, 'Giày Thể Thao 194', 1100000, 'Giày Thể Thao', 'img/194.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(195, 'Giày Thể Thao 195', 1100000, 'Giày Thể Thao', 'img/195.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(196, 'Giày Thể Thao 196', 1100000, 'Giày Thể Thao', 'img/196.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(197, 'Giày Thể Thao 197', 1100000, 'Giày Thể Thao', 'img/197.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(198, 'Giày Thể Thao 198', 1100000, 'Giày Thể Thao', 'img/198.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL),
(199, 'Giày Thể Thao 199', 1100000, 'Giày Thể Thao', 'img/199.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `products` (`ID`, `ProductName`, `Price`, `Category`, `ImageUrl`, `Gender`, `Place`, `Shiping`, `Discount`, `Statuss`, `ImageUrl_1`, `ImageUrl_2`, `ImageUrl_3`, `ImageUrl_4`, `Introduce`) VALUES
(200, 'Giày Thể Thao 200', 1100000, 'Giày Thể Thao', 'img/200.jpg', 'Nữ', 'TP HCM', 'Viettel Post', 'Bán Buôn/Sỉ', 'Đã Dùng', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
