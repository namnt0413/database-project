-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 01:19 PM
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
  `fullname` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `fullname`, `company_name`) VALUES
(1, 'Nguyễn Nhật Ánh', NULL),
(2, 'Lý Quí Trung', NULL),
(3, 'Dương Thụy', NULL);

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
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `discount` float DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_date` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `tittle`, `author_id`, `image`, `price`, `discount`, `quantity`, `content`, `publication_date`, `publisher_id`, `created_time`, `last_updated`) VALUES
(14, 'Mắt biếc', 1, 'assets/image/book/book1_gallery.jpg', 200000, NULL, 100, 'Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn này. Một tác phẩm đang được dịch và giới thiệu tại Nhật Bản (theo thông tin từ các báo)… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc rất, rất buồn khi suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn (cái kết thúc không như mong đợi của mọi người). Cũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát)', NULL, NULL, 1638694263, 1638694263),
(15, 'Cho tôi xin một vé đi tuổi thơ', 3, 'assets/image/book/book2_.jpg', 465000, NULL, 80, 'Truyện Cho tôi xin một vé đi tuổi thơ là một trong những tác phẩm bán chạy nhất nhà văn Nguyễn Nhật Ánh. Nhà văn mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.', NULL, NULL, 1638703084, 1638703084),
(16, 'Test', 2, 'assets/image/book/book-1(1).png', 250000, NULL, 0, '                                                                        Sản phẩm Test                                                                ', NULL, NULL, 1638703260, 1638705352),
(20, 'Mắt biếc', 1, 'assets/image/book/book1(1).jpg', 1000000, NULL, 100, 'Test Thêm sách', NULL, NULL, 1638703768, 1638703812),
(21, 'Test', 2, 'assets/image/book/book-4(1).png', 250000, NULL, 1, '                                                                        Sản phẩm Test \r\nSản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test         Sản phẩm Test                                                                                                        ', NULL, NULL, 1638704938, 1638705615);

-- --------------------------------------------------------

--
-- Table structure for table `books_genres`
--

CREATE TABLE `books_genres` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
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
(4, 14, 'assets/image/book/book1_gallery_(2).jpg', 1638694263, 1638694263),
(5, 14, 'assets/image/book/book1_gallery.jpg', 1638694263, 1638694263),
(6, 14, 'assets/image/book/book1.jpg', 1638694263, 1638694263),
(7, 15, 'assets/image/book/book2_.jpg', 1638703084, 1638703084),
(8, 15, 'assets/image/book/book2_gallery_(2).jpg', 1638703084, 1638703084),
(9, 15, 'assets/image/book/book2_gallery.jpg', 1638703084, 1638703084),
(10, 16, 'assets/image/book/book-2(1).png', 1638703260, 1638703260),
(11, 16, 'assets/image/book/book3.png', 1638703260, 1638703260),
(12, 16, 'assets/image/book/book-3(1).png', 1638703260, 1638703260),
(20, 20, 'assets/image/book/book1_gallery_(2).jpg', 1638703768, 1638703768),
(21, 20, 'assets/image/book/book1_gallery.jpg', 1638703768, 1638703768),
(22, 21, 'assets/image/book/book-5.png', 1638704938, 1638704938),
(23, 21, 'assets/image/book/book-2(1).png', 1638704938, 1638704938),
(24, 21, 'assets/image/book/book3.png', 1638704938, 1638704938),
(25, 21, 'assets/image/book/book-3(1).png', 1638704938, 1638704938);

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
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `required_time` int(11) NOT NULL,
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
  `book_discount` float NOT NULL,
  `created_time` int(11) NOT NULL,
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
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_updated` int(11) NOT NULL,
  `created_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `birthday`, `phone`, `address`, `status`, `last_updated`, `created_time`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'administrator', 0, '00000000', '', 1, 1637421508, 0),
(2, 'namnt0413', 'f7a174303deddf385177363f75650ad0', 'Nguyễn Tuấn Nam', 987112800, '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 1, 1638371670, 1638119155),
(3, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', 951778800, '0123456789', 'DH Bach Khoa, Hai Ba Trung, Ha Noi', 1, 1638120004, 1638120004),
(7, 'test3', 'e10adc3949ba59abbe56e057f20f883e', 'Tester 3th', 946681200, '088889999', 'Phường Bách Khoa, Hai Bà Trưng, Hà Nội', 0, 1638466451, 1638355340),
(9, 'Bloger', 'e10adc3949ba59abbe56e057f20f883e', 'Người quản lý Blog', 979254000, '0234987650', 'Tokyo,Japan', 1, 1638371204, 1638355591),
(10, 'Shiper', 'e10adc3949ba59abbe56e057f20f883e', 'Người giao hàng', 1638313200, '0987654321', 'Nguyễn Xiển,Thanh Xuân, Hà Nội', 0, 1638514388, 1638355730),
(13, 'accountant', 'e10adc3949ba59abbe56e057f20f883e', 'Kế toán', 1287525600, '044444444', 'Hà Nội', 1, 1638466621, 1638466542);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount` (`discount`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indexes for table `books_genres`
--
ALTER TABLE `books_genres`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `books_library`
--
ALTER TABLE `books_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`book_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`book_id`),
  ADD KEY `book_discount` (`book_discount`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_genres`
--
ALTER TABLE `books_genres`
  ADD CONSTRAINT `books_genres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_library`
--
ALTER TABLE `books_library`
  ADD CONSTRAINT `books_library_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_details_ibfk_3` FOREIGN KEY (`book_discount`) REFERENCES `books` (`discount`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
