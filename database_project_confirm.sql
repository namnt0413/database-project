-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 01:15 PM
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
(20, 'Mắt biếc', 'assets/image/book/book1(1).jpg', 1000000, NULL, 100, 'Test Thêm sách', NULL, 1638703768, 1638703812),
(24, 'Mắt biếc', 'assets/image/book/book-1(1).png', 200000, NULL, 100, '                                                                    asdasdasdads\r\nadadas\r\nasdasdad', NULL, 1638715409, 1638715409),
(25, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 500000, NULL, 100, '                                                                                                            Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                    ', NULL, 1638703768, 1639123028),
(26, 'Bài Học Diệu Kỳ Từ Chiếc Xe Rác', 'assets/image/book/book22.jpg\r\n', 91500, NULL, 50, 'Hạnh phúc không ở ngoài tầm tay\r\n\r\nPhép lịch sự không hề mất.\r\n\r\nCam kết nói Không với \"xe rác\" khiến cho hạnh phúc và phép lịch sự trở thành hiện thực. Điều này hỗ trợ điều kia trong một vòng tròn khép kín.\r\n\r\nMục lục\r\n\r\nCam kết thứ nhất: Hãy bỏ qua những \"chiếc xe rác\"\r\nCam kết thứ hai: Đừng tự \"vấy bẩn\" cuộc sống của mình\r\nCam kết thứ ba: Đừng biến mình thành \"chiếc xe rác\"\r\nCam kết thứ tư: Giúp người khác thôi \"xả rác\"\r\nCam kết thứ năm: Cuộc sống không có \"xe rác\"\r\nCam kết thứ sáu: Xây dựng một gia đình không có \"xe rác\"\r\nCam kết thứ bảy: Xây dựng môi trường làm việc không có \"xe rác\"', NULL, 1638703084, 1638703084),
(27, 'Hòm thư số 110', 'assets/image/book/book23.png', 127500, NULL, 0, '                                                                                                                                                                                                                                                                                                                                    Tình yêu của anh nhón chân rón rén bước\r\nEm đã bước vào vườn hoa của anh rồi nhỉ.\r\nDù chưa được cho phép.\r\n\r\nỞ độ tuổi 30, bận bịu trong nhịp sống thường ngày quen thuộc khiến Jin Sol lẳng lặng đem cất những rung động tình yêu xa xỉ vào góc sâu trái tim. Mục tiêu cô đề ra là “Đừng để lòng vướng bận”. Song lẽ dĩ nhiên, trời chẳng chiều lòng người, đợt cải tổ nhân sự định kỳ của đài phát thanh đã mang đến cho cô một cộng sự khó nhằn - một nhà sản xuất chương trình còn sáng tác cả thơ. Để đối phó với anh ta, dường như mọi sự phòng bị là không đủ, hoặc chỉ một cốc smoothie đã đủ…\r\n\r\nViết về những con người gần gũi trong cuộc đời bình dị, những người lớn dù đã khoác lên mình lớp vỏ trưởng thành song vẫn còn vô số khuyết điểm cũng như nhược điểm, ngày ngày vẫn đối mặt với nỗi cô đơn trong chừng mực cho phép, đây là câu chuyện “thử yêu thêm lần nữa” của họ, của bạn và của tôi.                                                                                                                                                                                                                                                                                                 ', NULL, 1638703768, 1639123712),
(29, 'Hòm thư số 110', 'assets/image/book/book23.png', 127500, NULL, 0, '                                                                                                                                                                                                                                                                                                                                                                        Tình yêu của anh nhón chân rón rén bước\r\nEm đã bước vào vườn hoa của anh rồi nhỉ.\r\nDù chưa được cho phép.\r\n\r\nỞ độ tuổi 30, bận bịu trong nhịp sống thường ngày quen thuộc khiến Jin Sol lẳng lặng đem cất những rung động tình yêu xa xỉ vào góc sâu trái tim. Mục tiêu cô đề ra là “Đừng để lòng vướng bận”. Song lẽ dĩ nhiên, trời chẳng chiều lòng người, đợt cải tổ nhân sự định kỳ của đài phát thanh đã mang đến cho cô một cộng sự khó nhằn - một nhà sản xuất chương trình còn sáng tác cả thơ. Để đối phó với anh ta, dường như mọi sự phòng bị là không đủ, hoặc chỉ một cốc smoothie đã đủ…\r\n\r\nViết về những con người gần gũi trong cuộc đời bình dị, những người lớn dù đã khoác lên mình lớp vỏ trưởng thành song vẫn còn vô số khuyết điểm cũng như nhược điểm, ngày ngày vẫn đối mặt với nỗi cô đơn trong chừng mực cho phép, đây là câu chuyện “thử yêu thêm lần nữa” của họ, của bạn và của tôi.                                                                                                                                                                                                                                                                                                                                 ', NULL, 1639135419, 1639135419),
(31, 'Test2', 'assets/image/book/book-9(1).png', 200000, NULL, 1, '                                                                                                             Test book 2                                                                                                                                                                   ', NULL, 1639135580, 1639135984),
(49, 'Test3', 'assets/image/book/book7.png', 250000, NULL, 0, '                                     Test Book so 3                                                                                                   ', NULL, 1639138068, 1639138120),
(51, 'Test5', 'assets/image/book/book7.png', 250000, NULL, 0, '                                                                         Test Book so 3                                                                                                                                   ', NULL, 1639138177, 1639138177),
(52, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, NULL, 25, '                                        Test Book 5                            ', NULL, 1639138274, 1639138274),
(53, 'Test Book 6', 'assets/image/book/book-5(1)(1).png', 200000, NULL, 0, '                                                       Test Book 6             ', NULL, 1639138500, 1639138500);

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
(1, 20),
(5, 26),
(2, 27),
(4, 31),
(4, 49),
(4, 51),
(6, 52),
(2, 53);

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
(20, 20, 'assets/image/book/book1_gallery_(2).jpg', 1638703768, 1638703768),
(21, 20, 'assets/image/book/book1_gallery.jpg', 1638703768, 1638703768),
(33, 24, 'assets/image/book/book2_gallery.jpg', 1638715409, 1638715409),
(34, 24, 'assets/image/book/book-2(1).png', 1638715409, 1638715409),
(35, 24, 'assets/image/book/book3(1).png', 1638715409, 1638715409),
(36, 25, 'assets/image/book/book21(1).png', 1639120459, 1639120459),
(37, 25, 'assets/image/book/Huan-Hoa-Hong(1).jpg', 1639120459, 1639120459),
(38, 31, 'assets/image/book/book-9(1).png', 1639135580, 1639135580),
(39, 31, 'assets/image/book/book-10(1).png', 1639135580, 1639135580),
(48, 49, 'assets/image/book/book3(1).png', 1639138120, 1639138120),
(49, 49, 'assets/image/book/book-4(1).png', 1639138120, 1639138120),
(50, 49, 'assets/image/book/book5(1).png', 1639138120, 1639138120);

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
(9, 'Bloger', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Blog', 987112800, '0234987650', 'Tokyo,Japan', 'blogger@outlook.com', 1, 0, 1638898379, 1638355591),
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
  `customer_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  `required_date` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
