-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:32 PM
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
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`) VALUES
(1, 'Nguyễn Nhật ', 'Ánh'),
(2, 'Lý Quí ', 'Trung'),
(3, 'Dương', ' Thụy'),
(4, 'Huấn', 'Hoa Hồng'),
(5, 'David J', 'Pollay'),
(6, 'Yi', 'Doo-woo');

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
  `discount` float DEFAULT NULL,
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
(25, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 500000, NULL, 74, ' Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                    ', NULL, 1638703768, 1640189398),
(26, 'Bài Học Diệu Kỳ Từ Chiếc Xe Rác (bản đặc biệt )', 'assets/image/book/book22.jpg\r\n', 91500, NULL, 13, '                                    Hạnh phúc không ở ngoài tầm tay\r\n\r\nPhép lịch sự không hề mất.\r\n\r\nCam kết nói Không với \"xe rác\" khiến cho hạnh phúc và phép lịch sự trở thành hiện thực. Điều này hỗ trợ điều kia trong một vòng tròn khép kín.\r\n\r\nMục lục\r\n\r\nCam kết thứ nhất: Hãy bỏ qua những \"chiếc xe rác\"\r\nCam kết thứ hai: Đừng tự \"vấy bẩn\" cuộc sống của mình\r\nCam kết thứ ba: Đừng biến mình thành \"chiếc xe rác\"\r\nCam kết thứ tư: Giúp người khác thôi \"xả rác\"\r\nCam kết thứ năm: Cuộc sống không có \"xe rác\"\r\nCam kết thứ sáu: Xây dựng một gia đình không có \"xe rác\"\r\nCam kết thứ bảy: Xây dựng môi trường làm việc không có \"xe rác\"                                ', NULL, 1638703084, 1639250890),
(27, 'Hòm thư số 110', 'assets/image/book/book23.png', 127500, NULL, 2, 'Tình yêu của anh nhón chân rón rén bước                                                                                                                                                                                                                                                                                                                                                         \r\nEm đã bước vào vườn hoa của anh rồi nhỉ.\r\nDù chưa được cho phép.\r\n\r\nỞ độ tuổi 30, bận bịu trong nhịp sống thường ngày quen thuộc khiến Jin Sol lẳng lặng đem cất những rung động tình yêu xa xỉ vào góc sâu trái tim. Mục tiêu cô đề ra là “Đừng để lòng vướng bận”. Song lẽ dĩ nhiên, trời chẳng chiều lòng người, đợt cải tổ nhân sự định kỳ của đài phát thanh đã mang đến cho cô một cộng sự khó nhằn - một nhà sản xuất chương trình còn sáng tác cả thơ. Để đối phó với anh ta, dường như mọi sự phòng bị là không đủ, hoặc chỉ một cốc smoothie đã đủ…\r\n\r\nViết về những con người gần gũi trong cuộc đời bình dị, những người lớn dù đã khoác lên mình lớp vỏ trưởng thành song vẫn còn vô số khuyết điểm cũng như nhược điểm, ngày ngày vẫn đối mặt với nỗi cô đơn trong chừng mực cho phép, đây là câu chuyện “thử yêu thêm lần nữa” của họ, của bạn và của tôi.                                                                                                                                                                                                                                                                                                                                 ', NULL, 1638703768, 1639143294),
(31, 'Test2', 'assets/image/book/book-9(1).png', 200000, NULL, 6, 'Test book 2                                                                                                                                                                                                   ', NULL, 1639135580, 1639143313),
(49, 'Test3', 'assets/image/book/book7.png', 250000, NULL, 0, '                                                                         Test Book so 3                                                                                                                                   ', NULL, 1639138068, 1639158955),
(52, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, NULL, 17, 'Test Book 5                                                            ', NULL, 1639138274, 1639143336),
(54, 'Test6', 'assets/image/book/book-10(1).png', 220000, NULL, 15, '                                                                    ', NULL, 1639143519, 1639143519),
(55, 'Mắt biếc', 'assets/image/book/book1_gallery(1).jpg', 250000, NULL, 33, ' Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn này. Một tác phẩm đang được dịch và giới thiệu tại Nhật Bản (theo thông tin từ các báo)… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc rất, rất buồn khi suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn (cái kết thúc không như mong đợi của mọi người). Cũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát)                                                                                                                                    ', NULL, 1639158555, 1640189415),
(56, 'Test6', 'assets/image/book/book-10(1).png', 210000, NULL, 20, '                                                                                                                                        ', NULL, 1639246866, 1639246866),
(57, 'Test6', 'assets/image/book/book-10(1).png', 300000, NULL, 18, '                                                                                                                                                                                                            ', NULL, 1639246886, 1639246886),
(58, 'Test6', 'assets/image/book/book-10(1).png', 290000, NULL, 20, '                                                                                                                                                                                                                                                                                ', NULL, 1639247086, 1639247086),
(59, 'Test6', 'assets/image/book/book-10(1).png', 260000, NULL, 20, '                                                                                                                                                                                                                                                                                                                                                    ', NULL, 1639247095, 1639247095),
(60, 'Test6', 'assets/image/book/book-10(1).png', 270000, NULL, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, 1639247102, 1639247102),
(61, 'Test6', 'assets/image/book/book-10(1).png', 280000, NULL, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, 1639247207, 1639247207),
(62, 'Test Book5', 'assets/image/book/book-2(1).png', 699999, NULL, 23, '                                    Test Book 5                                                                                            ', NULL, 1639247259, 1639247259),
(63, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639247264, 1639247264),
(64, 'Test5', 'assets/image/book/book7.png', 250000, NULL, 0, '                                    Test Book so 3                                                                                                                                                                                                   ', NULL, 1639247268, 1639247268),
(65, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 520000, NULL, 100, '                                                                                                                                                Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                    ', NULL, 1639247825, 1639247825),
(66, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 510000, NULL, 95, '                                                                                                                                                                                    Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                    ', NULL, 1639247832, 1639247832),
(67, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 500000, NULL, 98, '                                                                                                                                                                                                                        Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                    ', NULL, 1639247840, 1639247840),
(68, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 550000, NULL, 100, '                                                                                                                                                                                                                                                            Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                                                    ', NULL, 1639247884, 1639247884),
(69, 'Test10', 'assets/image/book/book21(1).png', 230000, NULL, 0, '                                     T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T                                                                                                   ', NULL, 1639247949, 1639247977),
(70, 'Test10', 'assets/image/book/book21(1).png', 240000, NULL, 0, '                                     T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T                                                                                                   ', NULL, 1639247956, 1639247956),
(71, 'Test10', 'assets/image/book/book21(1).png', 250000, NULL, 1, '                                                                                                             T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T                                                                                                                                                                   ', NULL, 1639247987, 1639248003),
(72, 'Test3', 'assets/image/book/book7.png', 250000, NULL, 0, '                                                                                                             Test Book so 3                                                                                                                                                                   ', NULL, 1639248017, 1639248017),
(73, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, NULL, 22, '                                    Test Book 5                                                                                            ', NULL, 1639285216, 1639285216),
(74, 'Test5', 'assets/image/book/book7.png', 250000, NULL, 0, '                                    Test Book so 3                                                                                                                                                                                                   ', NULL, 1639285220, 1639285220),
(75, 'Test Book5', 'assets/image/book/book-2(1).png', 590000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285224, 1639285224),
(76, 'Test Book5', 'assets/image/book/book-2(1).png', 580000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285229, 1639285229),
(77, 'Test Book5', 'assets/image/book/book-2(1).png', 570000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285234, 1639285234),
(78, 'Test Book5', 'assets/image/book/book-2(1).png', 560000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285237, 1639285237),
(79, 'Test Book5', 'assets/image/book/book-2(1).png', 550000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285241, 1639285241),
(80, 'Test Book5', 'assets/image/book/book-2(1).png', 540000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285245, 1639285245),
(81, 'Test Book5', 'assets/image/book/book-2(1).png', 53000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285248, 1639285248),
(82, 'Test Book5', 'assets/image/book/book-2(1).png', 52000, NULL, 24, '                                    Test Book 5                                                                                            ', NULL, 1639285252, 1639285252),
(83, 'Test Book5', 'assets/image/book/book-2(1).png', 510000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285255, 1639285255),
(84, 'Test Book5', 'assets/image/book/book-2(1).png', 50000, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285259, 1639285259),
(85, 'Test Book5', 'assets/image/book/book-2(1).png', 699999, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285263, 1639285263),
(86, 'Test Book5', 'assets/image/book/book-2(1).png', 799999, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285268, 1639285268),
(87, 'Test Book5', 'assets/image/book/book-2(1).png', 899999, NULL, 23, '                                    Test Book 5                                                                                            ', NULL, 1639285272, 1639285272),
(88, 'Test Book5', 'assets/image/book/book-2(1).png', 999999, NULL, 25, '                                    Test Book 5                                                                                            ', NULL, 1639285276, 1639285276);

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
(4, 25),
(5, 26),
(2, 27),
(4, 31),
(4, 49),
(6, 52),
(4, 54),
(5, 54),
(1, 55),
(4, 56),
(4, 57),
(4, 58),
(4, 59),
(4, 60),
(4, 61),
(6, 62),
(6, 63),
(4, 64),
(4, 65),
(4, 66),
(4, 67),
(4, 68),
(6, 69),
(6, 70),
(6, 71),
(4, 72),
(6, 73),
(4, 74),
(6, 75),
(6, 76),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88);

-- --------------------------------------------------------

--
-- Table structure for table `books_genres`
--

CREATE TABLE `books_genres` (
  `book_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(48, 49, 'assets/image/book/book3(1).png', 1639138120, 1639138120),
(49, 49, 'assets/image/book/book-4(1).png', 1639138120, 1639138120),
(58, 55, 'assets/image/book/book1(1).jpg', 1639158617, 1639158617),
(59, 55, 'assets/image/book/book1_gallery(1)(1).jpg', 1639158617, 1639158617),
(60, 55, 'assets/image/book/book1_gallery_(2)(1).jpg', 1639158617, 1639158617),
(65, 69, 'assets/image/book/book20(1).png', 1639247977, 1639247977),
(66, 69, 'assets/image/book/book21(1).png', 1639247977, 1639247977);

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

INSERT INTO `customers` (`id`, `username`, `password`, `first_name`, `last_name`, `birthday`, `phone`, `address`, `email`, `status`, `money_spent`, `last_updated`, `created_date`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Shop', 'Admin', 0, '00000000', '', 'bookshop@gmail.com', 1, 0, 1637421508, 0),
(2, 'namnt0413', 'f7a174303deddf385177363f75650ad0', 'Nguyễn Tuấn', 'Nam', 987112800, '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'namnt0413@gmail.com', 1, 0, 1638371670, 1638119155),
(3, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '1st', 951778800, '0123456789', 'DH Bach Khoa, Hai Ba Trung, Ha Noi', 'test@yahoo.com', 1, 0, 1638120004, 1638120004),
(7, 'test3', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '3rd', 984006000, '088889999', 'Phường Bách Khoa, Hai Bà Trưng, Hà Nội', 'test3@gmail.com', 0, 500000, 1639112871, 1638355340),
(9, 'Bloger', 'e10adc3949ba59abbe56e057f20f883e', '', 'Blog', 987112800, '0234987650', 'Tokyo,Japan', 'blogger@outlook.com', 1, 0, 1639253201, 1638355591),
(10, 'Shiper', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'shipper', 1638313200, '0987654321', 'Nguyễn Xiển,Thanh Xuân, Hà Nội', 'shipper@outlook.com', 0, 0, 1638514388, 1638355730),
(13, 'accountant', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'accountant', 1287525600, '044444444', 'Hà Nội', 'accountant@outlook.com', 1, 2000, 1638466621, 1638466542),
(14, 'test4', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Test4', 946681200, '123456789', 'Hà Nội', NULL, 1, 200000000, 1639105270, 1639105270),
(16, 'test5', 'e10adc3949ba59abbe56e057f20f883e', 'Test', '5th', 946681200, '123456789', 'Hà Nội', NULL, 1, 50000, 1639105572, 1639105572),
(17, 'test6', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '6th', -480560400, '', '', 'namnt0413@gmail.com', 1, 1000, 1639112488, 1639105729),
(18, 'test7', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '7th', 168044400, '0367099786', 'Tokyo,Japan', 'test7@yahoo.com.vn', 1, NULL, 1639105906, 1639105906),
(20, 'test8', 'e10adc3949ba59abbe56e057f20f883e', 'tester', 'số 8', 1640991600, '0123456789', 'Thanh Trì, Hà Nội', 'test8@gmail.com', 1, 8000000, 1639113129, 1639113048),
(21, 'test10', 'e10adc3949ba59abbe56e057f20f883e', 'Test', 'số 10', 1286661600, '01010101010', 'Hà Nội', 'test10@outlook.com', 1, 10, 1639113712, 1639113538);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(3, 2, 'Nguyễn Tuấn Nam', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'Ship ngay trong ngày 23/12', 1377500, 1640112184, NULL, 1, 1640112184),
(4, 3, 'Test', '0123456789', 'Tạ Quang Bửu, phường Bách Khoa, Hai Bà Trưng, Hà Nội', 'Giao hàng vào 24h ngày 25/12', 732000, 1640113652, NULL, 1, 1640113652),
(5, 2, 'Nguyễn Tuấn Nam', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'TEST lưu dữ liệu vào database', 2365498, 1640113966, NULL, 1, 1640113966),
(7, 13, ' accountant', '044444444', '123 Trần Duy Hưng, Trung Hòa, Cầu Giấy, Hà Nội', 'Đóng gói bằng thùng, hộp bằng bìa cứng bên ngoài (trừ các sản phẩm khó bể vỡ và biến dạng như quần áo, vải, ...). \r\nĐối với hàng hóa dễ vỡ: cần được bọc kín, gia cố bằng mút, xốp, giấy báo bên trong hộp đóng gói để đảm bảo không bể vỡ trong suốt quá trình vận chuyển.\r\nĐối với hàng hóa có chứa chất lỏng: cần được bọc bằng bao bì chống thấm trước khi gói.\r\nĐối với hàng hóa đặc biệt như có chứa chất lỏng, hàng dễ vỡ, hàng dễ móp méo, …: phải được dán cảnh báo “Hàng dễ vỡ” bên ngoài bao bì đóng gói.', 8879998, 1640196856, NULL, 1, 1640196856),
(8, 17, 'Tester 6th', '0987654321', '90 Nguyễn Tuân, Thanh Xuân, Hà Nội, Việt Nam', 'Quy cách đóng gói đối với sản phẩm là hàng dễ vỡ (sành sứ, thủy tinh, gương, kính, …):\r\nChuẩn bị nguyên vật liệu: Túi khí, băng keo, thùng carton, mút xốp, tem “Hàng dễ vỡ”.\r\n\r\nCác bước thực hiện:\r\nBước 1: Dùng xốp bọc kín từ 2 - 3 lớp và dùng băng keo để gia cố.\r\nBước 2: Đặt sản phẩm vào thùng carton, dùng mút xốp, tấm bọt khí… chèn cố định sản phẩm cho vừa khít, không còn khoảng trống so với thùng carton; sau đó dùng băng keo gia cố thùng carton.\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 5264997, 1640197019, NULL, 1, 1640197019),
(9, 16, 'Test 5th', '0123456789', 'Mai Chí Thọ, Khu đô thị Việt Hưng, Giang Biên, Long Biên, Hà Nội', 'Quy cách đóng gói đối với hàng có chứa chất lỏng như sữa, nước giải khát, bia, rượu:\r\nChuẩn bị nguyên vật liệu: Tấm bọt khí, băng keo, thùng carton, tem “Hàng dễ vỡ”\r\n\r\nCác bước thực hiện:\r\n\r\nBước 1: Bọc kín sản phẩm bằng tấm bọt khí hoặc các vật liệu chống va đập và chống thấm nước.\r\nBước 2: Dùng băng keo để cố định sản phẩm\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 1047000, 1640197134, NULL, 1, 1640197134),
(10, 21, 'Test số 10', '01010101010', '1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội', 'Chuẩn bị nguyên vật liệu: Tấm bọt khí, băng keo, thùng carton, mút xốp, tem “Hàng dễ vỡ”\r\n\r\nCác bước thực hiện:\r\n\r\nBước 1: Dùng xốp/ mút bọc xung quanh 2 mặt sản phẩm; sau đó dùng băng keo gia cố 2 mặt xốp/ mút.\r\nBước 2: Dùng giấy bọt khí bọc xung quanh và dán băng keo gia cố sản phẩm.\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 2099998, 1640197753, NULL, 1, 1640197753),
(11, 21, 'Test số 10', '01010101010', '1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội', 'không', 519000, 1640197781, NULL, 1, 1640197781),
(12, 21, 'Test số 10', '01010101010', '1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội', '', 450000, 1640197800, NULL, 1, 1640197800),
(13, 21, 'Test số 10', '01010101010', 'Hà Nội', '', 127500, 1640197808, NULL, 1, 1640197808),
(14, 21, 'Test số 10', '01010101010', 'Hà Nội', '', 1000000, 1640197820, NULL, 1, 1640197820),
(15, 21, 'Test số 10', '01010101010', '1 Đại Cồ Việt, Bách Khoa, Hai Bà Trưng, Hà Nội', 'Chuẩn bị nguyên vật liệu: Tấm bọt khí, băng keo, thùng carton, mút xốp, tem “Hàng dễ vỡ”\r\n\r\nCác bước thực hiện:\r\n\r\nBước 1: Dùng xốp/ mút bọc xung quanh 2 mặt sản phẩm; sau đó dùng băng keo gia cố 2 mặt xốp/ mút.\r\nBước 2: Dùng giấy bọt khí bọc xung quanh và dán băng keo gia cố sản phẩm.\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 4799997, 1640197851, NULL, 1, 1640197851);

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
(2, 3, 25, 2, 500000, NULL, 1640112184, 1640112184),
(3, 3, 27, 1, 127500, NULL, 1640112184, 1640112184),
(4, 3, 55, 1, 250000, NULL, 1640112184, 1640112184),
(5, 4, 26, 8, 91500, NULL, 1640113652, 1640113652),
(6, 5, 26, 2, 91500, NULL, 1640113966, 1640113966),
(7, 5, 27, 3, 127500, NULL, 1640113966, 1640113966),
(8, 5, 87, 2, 899999, NULL, 1640113966, 1640113966),
(14, 7, 25, 6, 500000, NULL, 1640196856, 1640196856),
(15, 7, 49, 7, 250000, NULL, 1640196856, 1640196856),
(16, 7, 55, 10, 250000, NULL, 1640196856, 1640196856),
(17, 7, 62, 2, 699999, NULL, 1640196856, 1640196856),
(18, 7, 69, 1, 230000, NULL, 1640196856, 1640196856),
(19, 8, 26, 10, 91500, NULL, 1640197019, 1640197019),
(20, 8, 66, 5, 510000, NULL, 1640197019, 1640197019),
(21, 8, 73, 3, 599999, NULL, 1640197019, 1640197019),
(22, 9, 27, 2, 127500, NULL, 1640197134, 1640197134),
(23, 9, 55, 2, 250000, NULL, 1640197134, 1640197134),
(24, 9, 70, 1, 240000, NULL, 1640197134, 1640197134),
(25, 9, 82, 1, 52000, NULL, 1640197134, 1640197134),
(26, 10, 31, 3, 200000, NULL, 1640197753, 1640197753),
(27, 10, 52, 2, 599999, NULL, 1640197753, 1640197753),
(28, 10, 57, 1, 300000, NULL, 1640197753, 1640197753),
(29, 11, 26, 1, 91500, NULL, 1640197781, 1640197781),
(30, 11, 27, 1, 127500, NULL, 1640197781, 1640197781),
(31, 11, 57, 1, 300000, NULL, 1640197781, 1640197781),
(32, 12, 31, 1, 200000, NULL, 1640197800, 1640197800),
(33, 12, 55, 1, 250000, NULL, 1640197800, 1640197800),
(34, 13, 27, 1, 127500, NULL, 1640197808, 1640197808),
(35, 14, 67, 2, 500000, NULL, 1640197820, 1640197820),
(36, 15, 25, 4, 500000, NULL, 1640197851, 1640197851),
(37, 15, 52, 3, 599999, NULL, 1640197851, 1640197851),
(38, 15, 55, 4, 250000, NULL, 1640197851, 1640197851);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`) VALUES
(1, 'Kim Đồng'),
(2, 'Tri thức'),
(3, 'Giáo dục'),
(4, 'Bách Khoa Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_date` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `author_id` (`author_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `books_genres`
--
ALTER TABLE `books_genres`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genres_id`);

--
-- Indexes for table `books_library`
--
ALTER TABLE `books_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`book_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

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
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
-- Constraints for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD CONSTRAINT `reviewers_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewers_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
