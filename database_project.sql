-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 05:53 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `last_updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `last_updated`) VALUES
(1, 'Nguyễn Nhật ', 'Ánh', 1640189398),
(2, 'Lý Quí ', 'Trung', 1640189398),
(3, 'Dương', ' Thụy', 1640189398),
(4, 'Huấn', 'Hoa Hồng', 1640189398),
(5, 'David J', 'Pollay', 1640189398),
(6, 'Yi', 'Doo-woo', 1640189398),
(12, 'Trần ', 'Dần', 1641829610),
(13, 'Khá ', 'Bảnh', 1641829619),
(14, 'Dũng ', 'Trọc', 1641829628),
(15, 'Lê Tùng', 'Vân', 1641830732);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_date` int(11) DEFAULT NULL,
  `created_date` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `tittle`, `image`, `price`, `discount`, `quantity`, `content`, `publication_date`, `created_date`, `last_updated`) VALUES
(25, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 500000, 10000, 68, ' Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                    ', NULL, 1638703768, 1640189398),
(26, 'Bài Học Diệu Kỳ Từ Chiếc Xe Rác (bản đặc biệt )', 'assets/image/book/book22.jpg\r\n', 91500, 10000, 50, 'Hạnh phúc không ở ngoài tầm tay\r\n\r\nPhép lịch sự không hề mất.\r\n\r\nCam kết nói Không với \"xe rác\" khiến cho hạnh phúc và phép lịch sự trở thành hiện thực. Điều này hỗ trợ điều kia trong một vòng tròn khép kín.\r\n\r\nMục lục\r\n\r\nCam kết thứ nhất: Hãy bỏ qua những \"chiếc xe rác\"\r\nCam kết thứ hai: Đừng tự \"vấy bẩn\" cuộc sống của mình\r\nCam kết thứ ba: Đừng biến mình thành \"chiếc xe rác\"\r\nCam kết thứ tư: Giúp người khác thôi \"xả rác\"\r\nCam kết thứ năm: Cuộc sống không có \"xe rác\"\r\nCam kết thứ sáu: Xây dựng một gia đình không có \"xe rác\"\r\nCam kết thứ bảy: Xây dựng môi trường làm việc không có \"xe rác\"                                                                                                        ', NULL, 1638703084, 1641320239),
(27, 'Hòm thư số 110', 'assets/image/book/book23.png', 127500, 20000, 2, 'Tình yêu của anh nhón chân rón rén bước                                                                                                                                                                                                                                                                                                                                                         \r\nEm đã bước vào vườn hoa của anh rồi nhỉ.\r\nDù chưa được cho phép.\r\n\r\nỞ độ tuổi 30, bận bịu trong nhịp sống thường ngày quen thuộc khiến Jin Sol lẳng lặng đem cất những rung động tình yêu xa xỉ vào góc sâu trái tim. Mục tiêu cô đề ra là “Đừng để lòng vướng bận”. Song lẽ dĩ nhiên, trời chẳng chiều lòng người, đợt cải tổ nhân sự định kỳ của đài phát thanh đã mang đến cho cô một cộng sự khó nhằn - một nhà sản xuất chương trình còn sáng tác cả thơ. Để đối phó với anh ta, dường như mọi sự phòng bị là không đủ, hoặc chỉ một cốc smoothie đã đủ…\r\n\r\nViết về những con người gần gũi trong cuộc đời bình dị, những người lớn dù đã khoác lên mình lớp vỏ trưởng thành song vẫn còn vô số khuyết điểm cũng như nhược điểm, ngày ngày vẫn đối mặt với nỗi cô đơn trong chừng mực cho phép, đây là câu chuyện “thử yêu thêm lần nữa” của họ, của bạn và của tôi.                                                                                                                                                                                                                                                                                                                                 ', NULL, 1638703768, 1639143294),
(31, 'Test2', 'assets/image/book/book-9(1).png', 200000, 20000, 6, 'Test book 2                                                                                                                                                                                                   ', NULL, 1639135580, 1639143313),
(49, 'Test3', 'assets/image/book/book7.png', 250000, 12000, 0, '                                                                         Test Book so 3                                                                                                                                   ', NULL, 1639138068, 1639158955),
(52, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, 25000, 17, 'Test Book 5                                                            ', NULL, 1639138274, 1639143336),
(54, 'Test6', 'assets/image/book/book-10(1).png', 220000, 25000, 15, '                                                                    ', NULL, 1639143519, 1639143519),
(55, 'Mắt biếc', 'assets/image/book/book1_gallery(1).jpg', 250000, 30000, 30, ' Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn này. Một tác phẩm đang được dịch và giới thiệu tại Nhật Bản (theo thông tin từ các báo)… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc rất, rất buồn khi suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn (cái kết thúc không như mong đợi của mọi người). Cũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát)                                                                                                                                    ', NULL, 1639158555, 1640189415),
(56, 'Test61', 'assets/image/book/book-10(1).png', 210000, 20000, 20, '                                                                                                                                                                                                                    ', NULL, 1639246866, 1641400183),
(57, 'Test62', 'assets/image/book/book-5(1).png', 300000, 20000, 18, '                                                                                                                                                                                                                                                                                                                                                                    ', NULL, 1639246886, 1641400236),
(58, 'Test68', 'assets/image/book/book-3(1).png', 290000, 50000, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, 1639247086, 1641400603),
(59, 'Test63', 'assets/image/book/book-1(1).png', 260000, 40000, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, 1639247095, 1641400277),
(60, 'Test66', 'assets/image/book/book-7(1).png', 270000, 50000, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', NULL, 1639247102, 1641400310),
(61, 'Test67', 'assets/image/book/book-9(1).png', 280000, 50000, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, 1639247207, 1641400590),
(62, 'Test Book5', 'assets/image/book/book-2(1).png', 699999, 60000, 23, '                                    Test Book 5                                                                                            ', NULL, 1639247259, 1639247259),
(63, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639247264, 1639247264),
(64, 'Test5', 'assets/image/book/book7.png', 250000, 0, 0, '                                    Test Book so 3                                                                                                                                                                                                   ', NULL, 1639247268, 1639247268),
(68, 'Đệ nhất kiếm tiền', 'assets/image/book/book5(1).png', 550000, 80000, 100, '                                                                                                                                                                                                                                                                                                Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                                                                                    ', NULL, 1639247884, 1641096564),
(70, 'Test10', 'assets/image/book/book21(1).png', 240000, 80000, 0, '                                     T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T                                                                                                   ', NULL, 1639247956, 1639247956),
(72, 'Test3', 'assets/image/book/book7.png', 250000, 70000, 0, '                                                                                                             Test Book so 3                                                                                                                                                                   ', NULL, 1639248017, 1639248017),
(73, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, 0, 22, '                                                                            Test Book 5                                                                                                                                ', NULL, 1639285216, 1641400360),
(74, 'Test5', 'assets/image/book/book7.png', 250000, 60000, 6, '                                    Test Book so 3                                                                                                                                                                                                   ', NULL, 1639285220, 1639285220),
(75, 'Test Book5', 'assets/image/book/book-2(1).png', 590000, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285224, 1639285224),
(77, 'Test Book5', 'assets/image/book/book-2(1).png', 570000, 10000, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285234, 1639285234),
(78, 'Test Book5', 'assets/image/book/book-2(1).png', 560000, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285237, 1639285237),
(79, 'Test Book5', 'assets/image/book/book-2(1).png', 550000, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285241, 1639285241),
(80, 'Test Book5', 'assets/image/book/book-2(1).png', 540000, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285245, 1639285245),
(81, 'Test Book5', 'assets/image/book/book-2(1).png', 53000, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285248, 1639285248),
(82, 'Test Book5', 'assets/image/book/book-2(1).png', 52000, 0, 24, '                                    Test Book 5                                                                                            ', NULL, 1639285252, 1639285252),
(83, 'Test Book5', 'assets/image/book/book-2(1).png', 510000, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285255, 1639285255),
(84, 'Test Book5', 'assets/image/book/book-2(1).png', 50000, 20000, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285259, 1639285259),
(85, 'Test Book5', 'assets/image/book/book-2(1).png', 699999, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285263, 1639285263),
(86, 'Test Book5', 'assets/image/book/book-2(1).png', 799999, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285268, 1639285268),
(87, 'Test Book5', 'assets/image/book/book-2(1).png', 899999, 0, 23, '                                    Test Book 5                                                                                            ', NULL, 1639285272, 1639285272),
(88, 'Test Book5', 'assets/image/book/book-2(1).png', 999999, 0, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285276, 1639285276),
(89, 'Cho tôi xin một vé đi tuổi thơ', 'assets/image/book/book2_.jpg', 200000, 50000, 20, 'TEST ADD REMOVE AUTHOR      \r\nTEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR                                                                                                                ', NULL, 1641320349, 1641320404),
(90, 'Cho tôi xin một vé đi tuổi thơ phần 2', 'assets/image/book/book2_.jpg', 200000, 0, 0, 'TEST ADD REMOVE AUTHOR      \r\nTEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR       \r\nWHEN COPY                                                                                                                                                                                 ', NULL, 1641320545, 1641400547);

-- --------------------------------------------------------

--
-- Table structure for table `books_authors`
--

CREATE TABLE `books_authors` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_authors`
--

INSERT INTO `books_authors` (`author_id`, `book_id`) VALUES
(1, 26),
(1, 27),
(1, 31),
(1, 52),
(1, 54),
(1, 55),
(1, 59),
(1, 60),
(1, 72),
(1, 89),
(1, 90),
(2, 26),
(2, 27),
(2, 49),
(2, 52),
(2, 54),
(2, 64),
(3, 26),
(3, 49),
(3, 54),
(3, 60),
(4, 25),
(4, 54),
(4, 58),
(4, 61),
(4, 70),
(4, 73),
(5, 56),
(6, 57),
(6, 64),
(6, 74);

-- --------------------------------------------------------

--
-- Table structure for table `books_genres`
--

CREATE TABLE `books_genres` (
  `book_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_genres`
--

INSERT INTO `books_genres` (`book_id`, `genres_id`) VALUES
(25, 2),
(25, 3),
(25, 5),
(26, 6),
(26, 8),
(27, 6),
(31, 7),
(49, 1),
(52, 3),
(54, 5),
(55, 6),
(56, 2),
(57, 4),
(57, 5),
(58, 1),
(58, 6),
(59, 8),
(60, 3),
(61, 1),
(61, 8),
(64, 4),
(64, 6),
(68, 5),
(68, 8),
(70, 3),
(70, 7),
(72, 1),
(72, 4),
(73, 3),
(74, 5),
(89, 4),
(90, 2);

-- --------------------------------------------------------

--
-- Table structure for table `books_library`
--

CREATE TABLE `books_library` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_library`
--

INSERT INTO `books_library` (`id`, `book_id`, `path`, `created_time`, `last_updated`) VALUES
(36, 25, 'assets/image/book/book21(1).png', 1639120459, 1639120459),
(37, 25, 'assets/image/book/Huan-Hoa-Hong(1).jpg', 1639120459, 1639120459),
(38, 31, 'assets/image/book/book-9(1).png', 1639135580, 1639135580),
(39, 31, 'assets/image/book/book-10(1).png', 1639135580, 1639135580),
(58, 55, 'assets/image/book/book1(1).jpg', 1639158617, 1639158617),
(59, 55, 'assets/image/book/book1_gallery(1)(1).jpg', 1639158617, 1639158617),
(60, 55, 'assets/image/book/book1_gallery_(2)(1).jpg', 1639158617, 1639158617),
(74, 26, 'assets/image/book/book2_.jpg', 1641320002, 1641320002),
(75, 26, 'assets/image/book/book2_gallery_(2).jpg', 1641320002, 1641320002),
(76, 26, 'assets/image/book/book2_gallery.jpg', 1641320002, 1641320002),
(80, 89, 'assets/image/book/book-2(1).png', 1641320349, 1641320349),
(81, 89, 'assets/image/book/book3(1).png', 1641320349, 1641320349),
(82, 89, 'assets/image/book/book-3(1).png', 1641320349, 1641320349),
(83, 90, 'assets/image/book/book-2(1).png', 1641320545, 1641320545),
(84, 90, 'assets/image/book/book3(1).png', 1641320545, 1641320545),
(85, 90, 'assets/image/book/book-3(1).png', 1641320545, 1641320545);

-- --------------------------------------------------------

--
-- Table structure for table `books_publishers`
--

CREATE TABLE `books_publishers` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `started_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_publishers`
--

INSERT INTO `books_publishers` (`id`, `book_id`, `publisher_id`, `started_date`) VALUES
(1, 25, 4, 1638703768),
(2, 26, 2, 1642028400),
(3, 26, 3, 1641769200),
(4, 27, 1, 1641855600),
(7, 27, 1, 1641769200);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `money_spent` float DEFAULT NULL,
  `last_updated` int(11) NOT NULL,
  `created_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `first_name`, `last_name`, `avatar`, `birthday`, `phone`, `address`, `email`, `status`, `money_spent`, `last_updated`, `created_date`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Shop', 'Admin', './assets/image/user/admin(1).jpg', 0, '00000000', '', 'bookshop@gmail.com', 1, 0, 1640843922, 0),
(3, 'test', 'd41d8cd98f00b204e9800998ecf8427e', 'Tester', '1st', 'assets/image/user/pic-1.png', 951778800, '0123456789', 'DH Bach Khoa, Hai Ba Trung, Ha Noi', 'test@yahoo.com', 1, 0, 1638120004, 1638120004),
(7, 'test3', 'd41d8cd98f00b204e9800998ecf8427e', 'Tester', '3rd', 'assets/image/user/pic-5.png', 984006000, '088889999', 'Phường Bách Khoa, Hai Bà Trưng, Hà Nội', 'test3@gmail.com', 0, 500000, 1639112871, 1638355340),
(9, 'Bloger', '123456', '', 'Blog', 'assets/image/user/pic-2.png', 987112800, '0234987650', 'Tokyo,Japan', 'blogger@outlook.com', 1, 0, 1641489174, 1638355591),
(10, 'Shiper', 'd41d8cd98f00b204e9800998ecf8427e', NULL, 'shipper', 'assets/image/user/pic-3.png', 1638313200, '0987654321', 'Nguyễn Xiển,Thanh Xuân, Hà Nội', 'shipper@outlook.com', 0, 0, 1638514388, 1638355730),
(13, 'accountant', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'accountant', 'assets/image/user/pic-4.png', 1287525600, '044444444', 'Hà Nội', 'accountant@outlook.com', 1, 2000, 1638466621, 1638466542),
(16, 'test5', 'd41d8cd98f00b204e9800998ecf8427e', 'Test', '5th', NULL, 946681200, '123456789', 'Hà Nội', NULL, 1, 50000, 1639105572, 1639105572),
(17, 'test6', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '6th', 'assets/image/user/pic-3(1).png', 1641078000, '', '', 'namnt0413@gmail.com', 0, 1000, 1641097683, 1639105729),
(18, 'test7', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '7th', './assets/image/user/pic-6(1)(1).png', 168044400, '0367099786', 'Tokyo,Japan', 'test7@yahoo.com.vn', 1, 50000, 1641396607, 1639105906),
(20, 'test8', 'd41d8cd98f00b204e9800998ecf8427e', 'tester', 'số 8', NULL, 1640991600, '0123456789', 'Thanh Trì, Hà Nội', 'test8@gmail.com', 1, 8000000, 1639113129, 1639113048),
(22, 'test11', 'e10adc3949ba59abbe56e057f20f883e', 'Asuna', 'Yuuki', 'assets/image/user/pic-4(1).png', 987112800, '0367099786', 'Thanh Trì, Hà Nội', 'namnt0413@gmail.com.vn', 1, 0, 1641097923, 1640620841),
(24, 'test_upload_image', 'e10adc3949ba59abbe56e057f20f883e', 'TEST', 'UPLOAD_IMAGE', 'assets/image/user/nam(1).jpg', 1641078000, '0123456789', 'Hà Nội', 'namnt0413@gmail.com', 0, 1000000, 1641098124, 1641098047),
(25, 'namnt0413', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Tuấn ', 'Nam ', './assets/image/user/nam(1).jpg', 1641769200, '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'namnt0413@gmail.com', 1, 1000, 1641569397, 1641215570),
(27, 'namnt1304', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Tuấn', 'Nam', '', 1641769200, '0367099786', 'Trường Cán bộ quản lý Nông nghiệp và Phát triển nông thôn I', 'namnt0413@gmail.com.vn', 1, 0, 1641828283, 1641827536);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`book_id`, `customer_id`) VALUES
(31, 25),
(49, 25),
(54, 25),
(55, 25),
(56, 25),
(60, 25),
(64, 25),
(70, 25),
(72, 25),
(74, 25),
(75, 25),
(86, 25),
(89, 25);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `last_updated`) VALUES
(1, 'Ngoại ngữ', 1641320239),
(2, 'Kỹ năng sống', 1641320239),
(3, 'Kinh tế ', 1641320239),
(4, 'Thiếu nhi', 1641320239),
(5, 'Trí tuệ', 1641320239),
(6, 'Tâm lý, tình cảm', 1641320239),
(7, 'Chính trị,pháp luật', 1641320239),
(8, 'Học tập', 1641320239),
(12, 'Ngôn tình', 1641831924);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text DEFAULT NULL,
  `total` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  `required_date` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `fullname`, `phone`, `address`, `note`, `total`, `created_date`, `required_date`, `status`, `last_updated`) VALUES
(4, 3, 'Test', '0123456789', 'Tạ Quang Bửu, phường Bách Khoa, Hai Bà Trưng, Hà Nội', 'Giao hàng vào 24h ngày 25/12', 732000, 1640113652, NULL, 1, 1640113652),
(7, 13, ' accountant', '044444444', '123 Trần Duy Hưng, Trung Hòa, Cầu Giấy, Hà Nội', 'Đóng gói bằng thùng, hộp bằng bìa cứng bên ngoài (trừ các sản phẩm khó bể vỡ và biến dạng như quần áo, vải, ...). \r\nĐối với hàng hóa dễ vỡ: cần được bọc kín, gia cố bằng mút, xốp, giấy báo bên trong hộp đóng gói để đảm bảo không bể vỡ trong suốt quá trình vận chuyển.\r\nĐối với hàng hóa có chứa chất lỏng: cần được bọc bằng bao bì chống thấm trước khi gói.\r\nĐối với hàng hóa đặc biệt như có chứa chất lỏng, hàng dễ vỡ, hàng dễ móp méo, …: phải được dán cảnh báo “Hàng dễ vỡ” bên ngoài bao bì đóng gói.', 8879998, 1640196856, NULL, 1, 1640196856),
(8, 17, 'Tester 6th', '0987654321', '90 Nguyễn Tuân, Thanh Xuân, Hà Nội, Việt Nam', 'Quy cách đóng gói đối với sản phẩm là hàng dễ vỡ (sành sứ, thủy tinh, gương, kính, …):\r\nChuẩn bị nguyên vật liệu: Túi khí, băng keo, thùng carton, mút xốp, tem “Hàng dễ vỡ”.\r\n\r\nCác bước thực hiện:\r\nBước 1: Dùng xốp bọc kín từ 2 - 3 lớp và dùng băng keo để gia cố.\r\nBước 2: Đặt sản phẩm vào thùng carton, dùng mút xốp, tấm bọt khí… chèn cố định sản phẩm cho vừa khít, không còn khoảng trống so với thùng carton; sau đó dùng băng keo gia cố thùng carton.\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 5264997, 1640197019, NULL, 1, 1640197019),
(9, 16, 'Test 5th', '0123456789', 'Mai Chí Thọ, Khu đô thị Việt Hưng, Giang Biên, Long Biên, Hà Nội', 'Quy cách đóng gói đối với hàng có chứa chất lỏng như sữa, nước giải khát, bia, rượu:\r\nChuẩn bị nguyên vật liệu: Tấm bọt khí, băng keo, thùng carton, tem “Hàng dễ vỡ”\r\n\r\nCác bước thực hiện:\r\n\r\nBước 1: Bọc kín sản phẩm bằng tấm bọt khí hoặc các vật liệu chống va đập và chống thấm nước.\r\nBước 2: Dùng băng keo để cố định sản phẩm\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 1047000, 1640197134, NULL, 1, 1640197134),
(18, 25, 'Nguyễn Tuấn  Nam', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'aaaaaaaaâ', 1500000, 1641525186, NULL, 1, 1641525186);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `created_date` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `book_id`, `quantity`, `price`, `discount`, `created_date`, `last_updated`) VALUES
(5, 4, 26, 8, 91500, NULL, 1640113652, 1640113652),
(14, 7, 25, 6, 500000, NULL, 1640196856, 1640196856),
(15, 7, 49, 7, 250000, NULL, 1640196856, 1640196856),
(16, 7, 55, 10, 250000, NULL, 1640196856, 1640196856),
(17, 7, 62, 2, 699999, NULL, 1640196856, 1640196856),
(19, 8, 26, 10, 91500, NULL, 1640197019, 1640197019),
(21, 8, 73, 3, 599999, NULL, 1640197019, 1640197019),
(22, 9, 27, 2, 127500, NULL, 1640197134, 1640197134),
(23, 9, 55, 2, 250000, NULL, 1640197134, 1640197134),
(24, 9, 70, 1, 240000, NULL, 1640197134, 1640197134),
(25, 9, 82, 1, 52000, NULL, 1640197134, 1640197134),
(42, 18, 25, 3, 500000, NULL, 1641525186, 1641525186);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `last_updated`) VALUES
(1, 'Kim Đồng', 1638703768),
(2, 'Tri thức', 1638703768),
(3, 'Giáo dục', 1638703768),
(4, 'Bách Khoa Hà Nội', 1641831692),
(5, 'Thanh niên', 1641831869),
(7, 'Lao động', 1641831898),
(8, 'Hồng Đức', 1641831938),
(9, 'Chính trị Quốc Gia', 1641831948),
(10, 'Văn hóa', 1641831967);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `tittle` varchar(50) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `created_date` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `customer_id`, `rating`, `tittle`, `content`, `created_date`, `last_updated`) VALUES
(3, 25, 1, NULL, 'Sách nhảm nhí', 'Sách có rất nhiều lỗi chính tả, câu cú không theo một quy chuẩn nào, \"thích là viết tắt, thích là viết hoa\".', 1639248017, 1639248017),
(4, 25, 9, NULL, 'Sách hay, thú vị', '10 loại livestream để bán hàng hiệu quả nhất, trong đó có \"bí kíp\" là livestream cùng chuyên gia, người nổi tiếng...', 1639248017, 1639248017),
(6, 25, 18, NULL, 'Sách hay', 'giúp toàn thể những người kinh doanh trong và ngoài nước thành công', 1640885403, 1640885403),
(8, 55, 9, NULL, 'Đáng Đọc, Đáng Suy Ngẫm', 'Tôi biết đến Nguyễn Nhật Ánh là nhà văn tuổi thơ, từng trang sách của ông chứa đựng bao khát khao tuổi mới lớn, hoài bão , tương lai và có cả dư vị ngọt ngào của mối tình đầu. Nhưng có lẽ tôi quen với những truyện mang hơi hướng nhẹ nhàng, nên khi đọc sang Mắt biếc, tôi thấy ám ảnh. Đầu truyện là hình ảnh đẹp của dôi bạn trẻ qua con đường đầy sim, anh đàn cho cô nghe những bài tình ca tự sáng tác, khung cảnh ấy khiến cho người ta không thể quên.Và rằng ai cũng nghĩ anh sẽ bày tỏ lòng mình, hai người hạnh phúc đến cuối đời. Nhưng đến với Mắt biếc, ta sẽ thấy nhiều hơn thế, nó phản ánh chân thật tâm trạng của chàng trai, mối tình ấy chàng đã chôn chặt quá lâu khiến nó biến thành bi kịch.Tôi từng nghĩ nếu anh nói với cô từ sớm, lúc mà hai đứa chưa lên thành phố, thì mọi chuyện sẽ khác.Có lẽ hai đứa sẽ không bên nhau, và chuyện tình đó sẽ có kết thúc tốt đẹp hơn. Anh và cô hai con người trái ngược, một kẻ sống quá bình lặng, kẻ thì mãi mê chạy theo những giá trị ảo của đời. Đến cuối truyện, tôi thấy tội cho Trà Long, đáng lẽ em có hạnh phúc trọn vẹn sau bao biến cố gia đình.Ấy vậy mà ... Gấp lại trang sách, tôi thấy kết thúc thật đau nhưng đúng. Kẻ đi không vui, người ở lại thêm buồn. Cuốn sách này đáng để đặt trong tủ sách nhà bạn, bởi nó nhắc mỗi chúng ta về sai lầm của anh và cô, là nếu yêu thì nói chứ đừng giữ trong tim.', 1640887460, 1640887460),
(10, 55, 13, NULL, 'Buồn ơi là buồn!', 'Hoàng Thị Thương Huyền  13/03/2015\r\nĐây là cuốn sách mà tôi yêu nhất của Nguyễn Nhật Ánh, lần đầu tiên tôi được đọc nó là vào hè năm tôi sắp lên lớp 11. Đến nay, đã là sinh viên năm thứ 4, tôi không nhớ nổi bao nhiêu lần tôi đã lần giở lại nó, bao nhiêu lần tôi khóc vì nó, bao nhiêu lần tôi đi tìm lại những người mà tôi thương trong đó. Tôi thương Ngạn vì một tình yêu mãi mãi không bao giờ được đáp lại, tôi thương Trà Long vì người mình thương mãi mãi xa xôi, tôi thương Hà Lan vì mãi mãi đánh mất tình yêu thật sự, mãi mãi đánh mất cuộc đời. Với tôi, đó là cuốn sách buồn nhất, lấy đi nhiều nước mắt nhất của Nguyễn Nhật Ánh. Nhưng, đó mới là cuộc sống, cuộc sống này đâu phải chỉ có màu hồng, đâu chỉ có niềm vui và nụ cười. Đâu đó, rất nhiều trong xã hội này, còn những góc khuất của tâm hồn, còn những sai lầm và còn những tình yêu mãi mãi nhưng vô vọng, đơn giản chỉ là cách ta lựa chọn xử sự với cuộc đời như thế nào thôi. Nhưng sự lựa chọn của Ngạn sao nghiệt ngã quá...', 1640889092, 1640889092),
(12, 25, 22, NULL, '悪い本', '嫌いだ‼', 1641057722, 1641057722),
(14, 26, 22, NULL, 'OK', 'OK', 1641058026, 1641058026),
(15, 26, 9, NULL, 'Test', 'Test ', 1641058104, 1641058104),
(17, 59, 18, NULL, 'Test sách cùng tác giả', 'OK chạy ổn', 1641404506, 1641404506),
(18, 59, 18, NULL, 'Test sách cùng tác giả', 'OK chạy ổn', 1641404539, 1641404539),
(19, 25, 25, NULL, 'â', 'â', 1641525095, 1641525095),
(20, 90, 1, NULL, 'a', 'a', 1641741952, 1641741952),
(21, 25, 18, NULL, 'aa', 'aa', 1641808537, 1641808537),
(22, 25, 18, NULL, 'aa', 'aa', 1641808713, 1641808713),
(23, 25, 18, NULL, 'aa', 'aa', 1641808748, 1641808748),
(24, 25, 18, NULL, 'bbbbb', 'bbbbbb', 1641808892, 1641808892);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD UNIQUE KEY `author_id` (`author_id`,`book_id`),
  ADD KEY `books_authors_ibfk_2` (`book_id`);

--
-- Indexes for table `books_genres`
--
ALTER TABLE `books_genres`
  ADD UNIQUE KEY `book_id` (`book_id`,`genres_id`),
  ADD KEY `books_genres_ibfk_2` (`genres_id`);

--
-- Indexes for table `books_library`
--
ALTER TABLE `books_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`book_id`);

--
-- Indexes for table `books_publishers`
--
ALTER TABLE `books_publishers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD UNIQUE KEY `book_id` (`book_id`,`customer_id`),
  ADD KEY `favorites_ibfk_2` (`customer_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`book_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `books_publishers`
--
ALTER TABLE `books_publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_genres`
--
ALTER TABLE `books_genres`
  ADD CONSTRAINT `books_genres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_library`
--
ALTER TABLE `books_library`
  ADD CONSTRAINT `books_library_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_publishers`
--
ALTER TABLE `books_publishers`
  ADD CONSTRAINT `books_publishers_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_publishers_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
