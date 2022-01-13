-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 07:50 PM
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
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `last_updated`) VALUES
(1, 'Nguyễn Nhật ', 'Ánh', '2021-12-16 15:42:49'),
(2, 'Lý Quí ', 'Trung', '2022-01-12 07:26:32'),
(3, 'Dương', ' Thụy', '2022-01-12 15:13:07'),
(4, 'Huấn', 'Hoa Hồng', '2022-01-12 15:13:04'),
(5, 'David J', 'Pollay', '2022-01-12 15:13:00'),
(6, 'Yi', 'Doo-woo', '2022-01-12 15:12:57'),
(12, 'Trần ', 'Dần', '2022-01-12 15:12:54'),
(13, 'Khá ', 'Bảnh', '2022-01-12 15:12:52'),
(14, 'Dũng ', 'Trọc', '2022-01-12 15:12:49'),
(15, 'Lê Tùng', 'Vân', '2022-01-12 15:12:46'),
(16, 'TEST', 'AUTHOR', '2022-01-12 15:13:18'),
(17, 'aa', 'aa', '2022-01-12 16:53:25'),
(18, 'test', '14/1', '2022-01-13 21:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `discount` float NOT NULL DEFAULT 0,
  `import_price` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_date` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `tittle`, `image`, `price`, `discount`, `import_price`, `quantity`, `content`, `publication_date`, `created_date`, `last_updated`) VALUES
(25, 'Đệ nhất kiếm tiền', 'assets/image/book/book20.png', 50000, 10000, 35000, 22, '                                        Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                                                                                                                                ', NULL, '2021-07-01 00:00:00', '2022-01-13 22:20:45'),
(26, 'Bài Học Diệu Kỳ Từ Chiếc Xe Rác (bản đặc biệt )', 'assets/image/book/book22.jpg\r\n', 91500, 35000, 50000, 38, 'Hạnh phúc không ở ngoài tầm tay\r\n\r\nPhép lịch sự không hề mất.\r\n\r\nCam kết nói Không với \"xe rác\" khiến cho hạnh phúc và phép lịch sự trở thành hiện thực. Điều này hỗ trợ điều kia trong một vòng tròn khép kín.\r\n\r\nMục lục\r\n\r\nCam kết thứ nhất: Hãy bỏ qua những \"chiếc xe rác\"\r\nCam kết thứ hai: Đừng tự \"vấy bẩn\" cuộc sống của mình\r\nCam kết thứ ba: Đừng biến mình thành \"chiếc xe rác\"\r\nCam kết thứ tư: Giúp người khác thôi \"xả rác\"\r\nCam kết thứ năm: Cuộc sống không có \"xe rác\"\r\nCam kết thứ sáu: Xây dựng một gia đình không có \"xe rác\"\r\nCam kết thứ bảy: Xây dựng môi trường làm việc không có \"xe rác\"                                                                                                        ', NULL, '2021-08-19 00:31:00', '2021-08-23 00:47:00'),
(27, 'Hòm thư số 110', 'assets/image/book/book23.png', 127500, 20000, 100000, 0, 'Tình yêu của anh nhón chân rón rén bước                                                                                                                                                                                                                                                                                                                                                         \r\nEm đã bước vào vườn hoa của anh rồi nhỉ.\r\nDù chưa được cho phép.\r\n\r\nỞ độ tuổi 30, bận bịu trong nhịp sống thường ngày quen thuộc khiến Jin Sol lẳng lặng đem cất những rung động tình yêu xa xỉ vào góc sâu trái tim. Mục tiêu cô đề ra là “Đừng để lòng vướng bận”. Song lẽ dĩ nhiên, trời chẳng chiều lòng người, đợt cải tổ nhân sự định kỳ của đài phát thanh đã mang đến cho cô một cộng sự khó nhằn - một nhà sản xuất chương trình còn sáng tác cả thơ. Để đối phó với anh ta, dường như mọi sự phòng bị là không đủ, hoặc chỉ một cốc smoothie đã đủ…\r\n\r\nViết về những con người gần gũi trong cuộc đời bình dị, những người lớn dù đã khoác lên mình lớp vỏ trưởng thành song vẫn còn vô số khuyết điểm cũng như nhược điểm, ngày ngày vẫn đối mặt với nỗi cô đơn trong chừng mực cho phép, đây là câu chuyện “thử yêu thêm lần nữa” của họ, của bạn và của tôi.                                                                                                                                                                                                                                                                                                                                                                     ', NULL, '2021-09-02 16:29:00', '2022-01-12 14:04:34'),
(31, 'Test2', 'assets/image/book/book-9(1).png', 180000, 50000, 120000, 0, '                                        Test book 2                                                                                                                                                                                                                                                                                                               ', NULL, '2021-09-14 07:09:00', '2022-01-12 14:11:26'),
(49, 'Test3', 'assets/image/book/book7.png', 250000, 16000, 220000, 0, '                                                                         Test Book so 3                                                                                                                                   ', NULL, '2021-09-23 13:17:00', '2021-09-24 13:17:00'),
(52, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, 25000, 560000, 15, 'Test Book 5                                                            ', NULL, '2021-10-10 16:47:00', '2021-10-12 12:29:00'),
(54, 'Test6', 'assets/image/book/book-10(1).png', 220000, 45000, 180000, 12, '                                                                    ', NULL, '2021-10-19 12:17:00', '2021-10-21 14:43:00'),
(55, 'Mắt biếc', 'assets/image/book/book1_gallery(1).jpg', 250000, 30000, 210000, 28, ' Một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn này. Một tác phẩm đang được dịch và giới thiệu tại Nhật Bản (theo thông tin từ các báo)… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc rất, rất buồn khi suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn (cái kết thúc không như mong đợi của mọi người). Cũng bởi, mắt biếc… năm xưa nay đâu (theo lời một bài hát)                                                                                                                                    ', NULL, '2021-10-26 11:21:00', '2021-10-27 01:18:00'),
(56, 'Test61', 'assets/image/book/book-10(1).png', 210000, 20000, 180000, 20, '                                                                                                                                                                                                                    ', NULL, '2021-10-29 08:29:00', '2021-10-29 13:15:00'),
(57, 'Test62', 'assets/image/book/book-5(1).png', 300000, 52000, 240000, 14, '                                                                                                                                                                                                                                                                                                                                                                    ', NULL, '2021-11-18 04:29:00', '2021-11-18 09:29:00'),
(58, 'Test68', 'assets/image/book/book-3(1).png', 290000, 50000, 240000, 16, '                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, '2021-11-29 10:24:00', '2021-11-30 07:32:00'),
(59, 'Test63', 'assets/image/book/book-1(1).png', 260000, 40000, 210000, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ', NULL, '2021-11-23 14:35:00', '2021-11-25 09:22:00'),
(60, 'Test66', 'assets/image/book/book-7(1).png', 270000, 50000, 215000, 14, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ', NULL, '2021-11-26 10:29:00', '2021-11-21 12:41:00'),
(61, 'Test67', 'assets/image/book/book-9(1).png', 280000, 50000, 220000, 20, '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', NULL, '2021-11-18 04:29:00', '2021-11-19 08:29:00'),
(62, 'Test Book5', 'assets/image/book/book-2(1).png', 699999, 60000, 630000, 23, '                                    Test Book 5                                                                                            ', NULL, '2021-12-04 07:18:22', '2021-12-07 07:38:22'),
(63, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, 0, 560000, 25, '                                    Test Book 5                                                                                            ', NULL, '2021-12-07 03:11:00', '2021-12-07 12:26:22'),
(64, 'Test5', 'assets/image/book/book7.png', 250000, 0, 240000, 0, '                                    Test Book so 3                                                                                                                                                                                                   ', NULL, '2021-12-07 03:36:22', '2021-12-07 12:18:22'),
(68, 'Đệ nhất kiếm tiền', 'assets/image/book/book5(1).png', 550000, 80000, 460000, 101, '                                                                                                                                                                                                                                                                                                Ra xã hội làm ăn bươn chải, liều thì ăn nhiều, không liều thì ăn ít. Muốn thành công thì phải chấp nhận trải qua đắng cay ngọt bùi. Làm ăn muốn kiếm kiếm được tiền thì phải chấp nhận mạo hiểm một chút nhưng trong tầm kiểm soát. Sau này chỉ có làm, chịu khó cần cù thì bù siêng năng , chỉ có làm thì mới có ăn.                                                                                                                                                                                                                                                                    ', NULL, '2021-12-02 08:18:22', '2021-12-07 13:18:22'),
(70, 'Test10', 'assets/image/book/book21(1).png', 240000, 80000, 150000, 0, '                                     T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T        T.T                                                                                                   ', NULL, '2021-12-30 06:26:22', '2021-12-07 08:06:22'),
(72, 'Test3', 'assets/image/book/book7.png', 250000, 70000, 175000, 0, '                                                                                                             Test Book so 3                                                                                                                                                                   ', NULL, '2021-12-07 04:29:22', '2021-12-07 18:28:22'),
(73, 'Test Book5', 'assets/image/book/book-2(1).png', 599999, 0, 560000, 22, '                                                                            Test Book 5                                                                                                                                ', NULL, '2021-12-14 16:45:22', '2021-12-15 19:37:22'),
(74, 'Test5', 'assets/image/book/book7.png', 250000, 10000, 220000, 6, '                                    Test Book so 3                                                                                                                                                                                                   ', NULL, '2021-11-10 10:18:22', '2021-12-22 11:26:22'),
(75, 'Test Book5', 'assets/image/book/book-2(1).png', 590000, 0, 540000, 25, '                                    Test Book 5                                                                                            ', NULL, '2021-12-09 08:18:22', '2021-12-10 01:31:22'),
(77, 'Test Book5', 'assets/image/book/book-2(1).png', 570000, 10000, 540000, 25, '                                    Test Book 5                                                                                            ', NULL, '2021-12-07 08:18:22', '2021-12-07 11:14:22'),
(78, 'Test Book5', 'assets/image/book/book-2(1).png', 560000, 0, 540000, 25, '                                    Test Book 5                                                                                            ', NULL, '2021-12-07 08:18:22', '2021-12-07 14:18:22'),
(79, 'Test Book51', 'assets/image/book/book-2(1).png', 550000, 0, 540000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-14 13:49:00', '2022-01-19 13:49:00'),
(80, 'Test Book52', 'assets/image/book/book-2(1).png', 540000, 0, 540000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(81, 'Test Book53', 'assets/image/book/book-1.png', 53000, 0, 40000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(82, 'Test Book54', 'assets/image/book/book3.png', 52000, 25000, 30000, 22, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(83, 'Test Book55', 'assets/image/book/book-2.png', 510000, 0, 460000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(84, 'Test Book56', 'assets/image/book/book-4.png', 50000, 20000, 25000, 13, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(85, 'Test Book57', 'assets/image/book/book-6.png', 699999, 0, 650000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(86, 'Test Book58', 'assets/image/book/book-8.png', 799999, 0, 780000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(87, 'Test Book59', 'assets/image/book/book-7.png', 899999, 0, 850000, 23, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(88, 'Test Book50', 'assets/image/book/book-3.png', 999999, 0, 950000, 25, '                                    Test Book 5                                                                                            ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(89, 'Cho tôi xin một vé đi tuổi thơ', 'assets/image/book/book2_.jpg', 200000, 50000, 150000, 14, 'TEST ADD REMOVE AUTHOR      \r\nTEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR                                                                                                                ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(90, 'Cho tôi xin một vé đi tuổi thơ phần 2', 'assets/image/book/book2_.jpg', 200000, 0, 178000, 0, 'TEST ADD REMOVE AUTHOR      \r\nTEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR      TEST ADD REMOVE AUTHOR       \r\nWHEN COPY                                                                                                                                                                                 ', NULL, '2022-01-12 13:49:00', '2022-01-12 13:49:00'),
(91, 'Test20', 'assets/image/book/motduatre(1).jpg', 250000, 50000, 220000, 17, 'TEST20                                                                    ', NULL, '2022-01-12 14:12:26', '2022-01-12 14:12:26'),
(92, 'Test14/1', 'assets/image/book/book2_.jpg', 200000, 20000, 165000, 10, 'test14/1                                ', NULL, '2022-01-13 21:47:39', '2022-01-13 21:47:39');

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
(6, 74),
(13, 91),
(18, 92);

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
(90, 2),
(91, 6),
(91, 7),
(92, 8);

-- --------------------------------------------------------

--
-- Table structure for table `books_library`
--

CREATE TABLE `books_library` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` date NOT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books_library`
--

INSERT INTO `books_library` (`id`, `book_id`, `path`, `created_time`, `last_updated`) VALUES
(36, 25, 'assets/image/book/book21(1).png', '0000-00-00', '0000-00-00'),
(38, 31, 'assets/image/book/book-9(1).png', '0000-00-00', '0000-00-00'),
(39, 31, 'assets/image/book/book-10(1).png', '0000-00-00', '0000-00-00'),
(58, 55, 'assets/image/book/book1(1).jpg', '0000-00-00', '0000-00-00'),
(59, 55, 'assets/image/book/book1_gallery(1)(1).jpg', '0000-00-00', '0000-00-00'),
(60, 55, 'assets/image/book/book1_gallery_(2)(1).jpg', '0000-00-00', '0000-00-00'),
(74, 26, 'assets/image/book/book2_.jpg', '0000-00-00', '0000-00-00'),
(75, 26, 'assets/image/book/book2_gallery_(2).jpg', '0000-00-00', '0000-00-00'),
(76, 26, 'assets/image/book/book2_gallery.jpg', '0000-00-00', '0000-00-00'),
(80, 89, 'assets/image/book/book-2(1).png', '0000-00-00', '0000-00-00'),
(81, 89, 'assets/image/book/book3(1).png', '0000-00-00', '0000-00-00'),
(82, 89, 'assets/image/book/book-3(1).png', '0000-00-00', '0000-00-00'),
(83, 90, 'assets/image/book/book-2(1).png', '0000-00-00', '0000-00-00'),
(84, 90, 'assets/image/book/book3(1).png', '0000-00-00', '0000-00-00'),
(85, 90, 'assets/image/book/book-3(1).png', '0000-00-00', '0000-00-00'),
(86, 27, 'assets/image/book/book-9(1)(1).png', '2022-01-12', '2022-01-12'),
(87, 91, 'assets/image/book/nhagiakim(1).jpg', '2022-01-12', '2022-01-12'),
(88, 92, 'assets/image/book/book1(1).jpg', '2022-01-13', '2022-01-13'),
(89, 92, 'assets/image/book/book-1(1).png', '2022-01-13', '2022-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `books_publishers`
--

CREATE TABLE `books_publishers` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `started_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_publishers`
--

INSERT INTO `books_publishers` (`id`, `book_id`, `publisher_id`, `started_date`) VALUES
(1, 25, 4, '2021-09-22'),
(2, 26, 2, '2021-10-18'),
(3, 26, 3, '2021-10-06'),
(4, 27, 9, '2021-11-10'),
(7, 27, 7, '2021-11-03'),
(8, 56, 1, '2021-12-01'),
(10, 56, 3, '2021-12-08'),
(14, 31, 3, '2022-01-11'),
(15, 31, 1, '2022-01-12'),
(16, 25, 1, '2022-01-12'),
(17, 92, 9, '2022-01-11'),
(18, 92, 5, '2022-01-12');

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
  `birthday` date DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `money_spent` float NOT NULL DEFAULT 0,
  `last_updated` datetime NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `first_name`, `last_name`, `avatar`, `birthday`, `phone`, `address`, `email`, `status`, `money_spent`, `last_updated`, `created_date`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Shop', 'Admin', './assets/image/user/admin(1).jpg', '0000-00-00', '00000000', '', 'bookshop@gmail.com', 1, 985000, '2022-01-12 10:39:31', '2001-01-01 00:00:00'),
(3, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '1st', 'assets/image/user/pic-1.png', '0000-00-00', '0123456789', 'DH Bach Khoa, Hai Ba Trung, Ha Noi', 'test@yahoo.com', 1, 732000, '2022-01-12 10:39:31', '2021-01-12 00:00:00'),
(7, 'test3', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '3rd', 'assets/image/user/pic-5.png', '0000-00-00', '088889999', 'Phường Bách Khoa, Hai Bà Trưng, Hà Nội', 'test3@gmail.com', 0, 0, '2022-01-12 10:39:31', '2021-12-17 00:00:00'),
(9, 'Bloger', 'e10adc3949ba59abbe56e057f20f883e', '', 'Blog', 'assets/image/user/pic-2.png', '0000-00-00', '0234987650', 'Tokyo,Japan', 'blogger@outlook.com', 1, 0, '2022-01-12 10:39:31', '2021-12-19 00:00:00'),
(10, 'Shiper', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'shipper', 'assets/image/user/pic-3.png', '0000-00-00', '0987654321', 'Nguyễn Xiển,Thanh Xuân, Hà Nội', 'shipper@outlook.com', 0, 0, '2022-01-12 10:39:31', '2022-01-24 00:00:00'),
(13, 'accountant', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'accountant', 'assets/image/user/pic-4.png', '0000-00-00', '044444444', 'Hà Nội', 'accountant@outlook.com', 1, 0, '2022-01-12 10:39:31', '2022-01-30 00:00:00'),
(16, 'test5', 'e10adc3949ba59abbe56e057f20f883e', 'Test', '5th', 'assets/image/user/scroll(1).png', '0000-00-00', '123456789', 'Hà Nội', '', 1, 1047000, '2022-01-12 15:11:47', '2021-12-30 00:00:00'),
(17, 'test6', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '6th', 'assets/image/user/pic-3(1).png', '0000-00-00', '', '', 'namnt0413@gmail.com', 0, 6383000, '2022-01-12 14:44:51', '2021-12-07 08:18:22'),
(18, 'test7', 'e10adc3949ba59abbe56e057f20f883e', 'Tester', '7th', './assets/image/user/pic-6(1)(1).png', '0000-00-00', '0367099786', 'Tokyo,Japan', 'test7@yahoo.com.vn', 1, 3596000, '2022-01-12 11:24:14', '2021-12-27 00:00:00'),
(20, 'test8', 'd41d8cd98f00b204e9800998ecf8427e', 'tester', 'số 8', 'assets/image/user/snake(1).png', '2019-06-06', '0987654321', 'Thanh Trì, Hà Nội', 'test8@gmail.com', 1, 0, '2022-01-12 13:45:36', '2021-12-21 00:00:00'),
(22, 'test11', 'e10adc3949ba59abbe56e057f20f883e', 'Asuna', 'Yuuki', 'assets/image/user/pic-4(1).png', '0000-00-00', '0367099786', 'Thanh Trì, Hà Nội', 'namnt0413@gmail.com.vn', 1, 0, '2022-01-12 10:39:31', '2021-12-27 00:00:00'),
(24, 'test_upload_image', 'e10adc3949ba59abbe56e057f20f883e', 'TEST', 'UPLOAD_IMAGE', 'assets/image/user/nam(1).jpg', '0000-00-00', '0123456789', 'Hà Nội', 'namnt0413@gmail.com', 0, 0, '2022-01-12 10:39:31', '2021-11-15 00:00:00'),
(25, 'namnt0413', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Tuấn ', 'Nam ', './assets/image/user/nam(1).jpg', '2001-04-13', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'namnt0413@gmail.com', 1, 2090000, '2022-01-12 11:22:23', '2021-12-28 00:00:00'),
(35, 'test12', 'e10adc3949ba59abbe56e057f20f883e', 'Developer', 'số 12', 'assets/image/user/su_tu(1).png', '2001-03-13', '0987654312', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'namnt0413@yahoo.com', 1, 150000, '2022-01-12 13:36:45', '2022-01-12 11:41:03'),
(37, 'aaaaaâ', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-01-12 17:09:21', '2022-01-12 17:09:21'),
(38, 'zzzzzzzzzz', 'e10adc3949ba59abbe56e057f20f883e', 'zzzzzzzz', 'zzzzzzzzz', NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-06 17:54:31', '2021-10-26 17:54:31'),
(39, 'xxxxxx', 'e10adc3949ba59abbe56e057f20f883e', 'xxxxxx', 'xxxxxxxxxx', NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-05 23:54:31', '2021-10-19 11:19:31'),
(40, 'ccccc', 'ccccc', 'cccccc', 'ccccccccc', NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-01-12 17:56:18', '2021-09-10 09:38:18'),
(41, 'vvvvvvv', 'vvvvvvvvv', 'vvvvvvvv', 'vvvvvvv', NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-10-30 15:00:18', '2021-10-01 17:12:18'),
(42, 'bbbbbbb', 'bbbbbbbb', 'bbbbbbbbbbb', 'bbbbbbbbbbbbb', NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-08-19 23:57:47', '2021-08-09 23:57:47'),
(43, 'nnnnnnnn', 'nnnnnnnnn', 'nnnnnnn', 'nnnnnn', NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-09-17 11:38:07', '2021-09-17 11:38:07'),
(44, 'test13/1', 'e10adc3949ba59abbe56e057f20f883e', 'test', '13/1', NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-01-13 21:42:13', '2022-01-13 21:42:13'),
(45, 'testaa', '123456', 'test', 'test', NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-01-13 15:45:16', '2022-01-13 15:45:16'),
(46, 'test14/1', 'e10adc3949ba59abbe56e057f20f883e', 'Test', '14/1', './assets/image/user/pic-3(1).png', '2022-01-13', '123456789', 'Hà Nội', 'namnt0413@gmail.com', 1, 951500, '2022-01-13 23:21:44', '2022-01-13 21:46:36');

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
(25, 17),
(25, 25),
(25, 46),
(26, 17),
(26, 25),
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
(82, 3),
(84, 1),
(84, 25),
(89, 25);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `last_updated`) VALUES
(1, 'Ngoại ngữ', '2022-01-12 15:13:35'),
(2, 'Kỹ năng sống', '2022-01-12 15:13:51'),
(3, 'Kinh tế ', '2022-01-12 15:13:48'),
(4, 'Thiếu nhi', '2022-01-12 15:13:45'),
(5, 'Trí tuệ', '2022-01-12 15:13:42'),
(6, 'Tâm lý, tình cảm', '2022-01-12 15:13:40'),
(7, 'Chính trị,pháp luật', '2022-01-12 15:13:35'),
(8, 'Học tập', '2022-01-12 15:13:32'),
(12, 'Ngôn tình', '2022-01-12 15:13:29'),
(13, 'TEST GENRES', '2022-01-12 15:13:59');

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
  `created_date` datetime NOT NULL,
  `required_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `fullname`, `phone`, `address`, `note`, `total`, `created_date`, `required_date`, `status`, `last_updated`) VALUES
(4, 3, 'Test', '0123456789', 'Tạ Quang Bửu, phường Bách Khoa, Hai Bà Trưng, Hà Nội', 'Giao hàng vào 24h ngày 25/12', 732000, '2021-12-24 08:12:00', NULL, 1, '2021-12-24 08:12:00'),
(7, 13, ' accountant', '044444444', '123 Trần Duy Hưng, Trung Hòa, Cầu Giấy, Hà Nội', 'Đóng gói bằng thùng, hộp bằng bìa cứng bên ngoài (trừ các sản phẩm khó bể vỡ và biến dạng như quần áo, vải, ...). \r\nĐối với hàng hóa dễ vỡ: cần được bọc kín, gia cố bằng mút, xốp, giấy báo bên trong hộp đóng gói để đảm bảo không bể vỡ trong suốt quá trình vận chuyển.\r\nĐối với hàng hóa có chứa chất lỏng: cần được bọc bằng bao bì chống thấm trước khi gói.\r\nĐối với hàng hóa đặc biệt như có chứa chất lỏng, hàng dễ vỡ, hàng dễ móp méo, …: phải được dán cảnh báo “Hàng dễ vỡ” bên ngoài bao bì đóng gói.', 8879998, '2021-11-11 11:29:00', NULL, 1, '2021-11-11 11:29:00'),
(8, 17, 'Tester 6th', '0987654321', '90 Nguyễn Tuân, Thanh Xuân, Hà Nội, Việt Nam', 'Quy cách đóng gói đối với sản phẩm là hàng dễ vỡ (sành sứ, thủy tinh, gương, kính, …):\r\nChuẩn bị nguyên vật liệu: Túi khí, băng keo, thùng carton, mút xốp, tem “Hàng dễ vỡ”.\r\n\r\nCác bước thực hiện:\r\nBước 1: Dùng xốp bọc kín từ 2 - 3 lớp và dùng băng keo để gia cố.\r\nBước 2: Đặt sản phẩm vào thùng carton, dùng mút xốp, tấm bọt khí… chèn cố định sản phẩm cho vừa khít, không còn khoảng trống so với thùng carton; sau đó dùng băng keo gia cố thùng carton.\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 5264997, '2021-09-16 16:40:16', NULL, 1, '2021-09-16 16:40:16'),
(9, 16, 'Test 5th', '0123456789', 'Mai Chí Thọ, Khu đô thị Việt Hưng, Giang Biên, Long Biên, Hà Nội', 'Quy cách đóng gói đối với hàng có chứa chất lỏng như sữa, nước giải khát, bia, rượu:\r\nChuẩn bị nguyên vật liệu: Tấm bọt khí, băng keo, thùng carton, tem “Hàng dễ vỡ”\r\n\r\nCác bước thực hiện:\r\n\r\nBước 1: Bọc kín sản phẩm bằng tấm bọt khí hoặc các vật liệu chống va đập và chống thấm nước.\r\nBước 2: Dùng băng keo để cố định sản phẩm\r\nBước 3: Dán tem “Hàng dễ vỡ” và phiếu giao nhận hàng bên ngoài thùng.', 1047000, '2022-01-07 12:49:33', NULL, 1, '2022-01-07 12:49:33'),
(18, 25, 'Nguyễn Tuấn  Nam', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'aaaaaaaaâ', 1500000, '2022-01-01 00:00:00', NULL, 1, '2022-01-01 00:00:00'),
(19, 35, 'Tester  số 12', '0123456789', 'Hà Nội', 'AAAAAAAAAAA', 150000, '2022-01-12 11:52:53', NULL, 1, '2022-01-12 11:52:53'),
(21, 17, 'Tester 6th', '0123456789', 'Hà Nội', 'TEST ORDER 2', 113000, '2022-01-12 14:53:32', NULL, 1, '2022-01-12 14:53:32'),
(22, 17, 'Tester 6th', '0123456789', 'Hà Nội', 'TEST 3 ', 215000, '2022-01-12 14:59:44', NULL, 1, '2022-01-12 14:59:44'),
(23, 17, 'Tester 6th', '0123456789', 'Hà Nội', 'TEST ORDER DETAIL 4', 790000, '2022-01-12 15:03:48', NULL, 1, '2022-01-12 15:03:48'),
(24, 25, 'Nguyễn Tuấn  Nam ', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', 'TEST UIF 13/1', 233500, '2022-01-13 16:24:19', NULL, 1, '2022-01-13 16:24:19'),
(25, 25, 'Nguyễn Tuấn  Nam ', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', '', 260000, '2022-01-13 16:25:26', NULL, 1, '2022-01-13 16:25:26'),
(26, 18, 'Tester 7th', '0367099786', 'Tokyo,Japan', '', 2515998, '2022-01-13 16:32:44', NULL, 1, '2022-01-13 16:32:44'),
(27, 18, 'Tester 7th', '0367099786', 'Tokyo,Japan', '', 1080000, '2022-01-13 16:33:34', NULL, 1, '2022-01-13 16:33:34'),
(28, 3, 'Tester 1st', '0123456789', 'DH Bach Khoa, Hai Ba Trung, Ha Noi', '', 904000, '2022-01-13 16:35:41', NULL, 1, '2022-01-13 16:35:41'),
(30, 1, 'Shop Admin', '00000000', 'aaaaaaaaaa', 'aaaaaaaaaaâ', 960000, '2022-01-13 16:41:34', NULL, 1, '2022-01-13 16:41:34'),
(31, 1, 'Shop Admin', '00000000', 'aaaaaaâ', 'aaaaaaaaâ', 25000, '2022-01-13 16:41:57', NULL, 1, '2022-01-13 16:41:57'),
(32, 46, 'Test 14/1', '123456789', 'aaaaaaaa', 'aaaaaa', 446500, '2021-08-10 12:19:03', NULL, 1, '2022-01-13 21:50:03'),
(33, 46, 'Test 14/1', '123456789', 'Hà Nội', '', 56500, '2022-01-13 22:00:19', NULL, 1, '2022-01-13 22:00:19'),
(34, 46, 'Test 14/1', '123456789', 'Hà Nội', 'aaaaa', 169500, '2022-01-13 22:01:14', NULL, 1, '2022-01-13 22:01:14'),
(36, 46, 'Test 14/1', '123456789', 'Hà Nội', '', 248000, '2022-01-13 22:03:05', NULL, 1, '2022-01-13 22:03:05'),
(37, 46, 'Test 14/1', '123456789', 'Hà Nội', '', 1000, '2022-01-13 22:19:14', NULL, 1, '2022-01-13 22:19:14'),
(38, 46, 'Test 14/1', '123456789', 'Hà Nội', '', 30000, '2022-01-13 22:19:50', NULL, 1, '2022-01-13 22:19:50'),
(56, 25, 'Nguyễn Tuấn  Nam ', '0367099786', 'Vĩnh Quỳnh, Thanh Trì, Hà Nội', '14/1 Test Money_spent', 96500, '2022-01-14 01:17:42', NULL, 1, '2022-01-14 01:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `import_price` float NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `book_id`, `quantity`, `price`, `discount`, `import_price`, `created_date`, `last_updated`) VALUES
(5, 4, 26, 8, 91500, 0, 87000, '2021-03-23 12:10:37', '0000-00-00 00:00:00'),
(14, 7, 25, 6, 500000, 0, 500000, '2021-04-16 14:25:27', '0000-00-00 00:00:00'),
(15, 7, 49, 7, 250000, 0, 250000, '2021-04-16 14:25:27', '0000-00-00 00:00:00'),
(16, 7, 55, 10, 250000, 0, 236000, '2021-04-16 14:25:27', '0000-00-00 00:00:00'),
(17, 7, 62, 2, 699999, 0, 680000, '2021-04-16 14:25:27', '0000-00-00 00:00:00'),
(19, 8, 26, 10, 91500, 0, 75000, '2021-05-25 11:15:29', '0000-00-00 00:00:00'),
(21, 8, 73, 3, 599999, 0, 530000, '2021-05-25 11:15:29', '0000-00-00 00:00:00'),
(22, 9, 27, 2, 127500, 0, 112000, '2021-06-21 08:56:22', '0000-00-00 00:00:00'),
(23, 9, 55, 2, 250000, 0, 215000, '2021-06-21 08:56:22', '0000-00-00 00:00:00'),
(24, 9, 70, 1, 240000, 0, 200000, '2021-06-21 08:56:22', '0000-00-00 00:00:00'),
(25, 9, 82, 1, 52000, 0, 50000, '2021-06-21 08:56:22', '0000-00-00 00:00:00'),
(42, 18, 25, 3, 500000, 0, 480000, '2021-07-15 23:45:06', '2021-07-15 23:45:06'),
(43, 19, 25, 3, 50000, 0, 42000, '2022-01-12 11:52:53', '2022-01-12 11:52:53'),
(45, 21, 26, 2, 91500, 0, 65000, '2022-01-12 14:53:32', '2022-01-12 14:53:32'),
(46, 22, 27, 2, 127500, 20000, 100000, '2022-01-12 14:59:44', '2022-01-12 14:59:44'),
(47, 23, 54, 2, 220000, 45000, 165000, '2022-01-12 15:03:48', '2022-01-12 15:03:48'),
(48, 23, 55, 2, 250000, 30000, 220000, '2022-01-12 15:03:48', '2022-01-12 15:03:48'),
(49, 24, 25, 2, 50000, 49000, 0, '2022-01-13 16:24:19', '2022-01-13 16:24:19'),
(50, 24, 26, 1, 91500, 35000, 50000, '2022-01-13 16:24:19', '2022-01-13 16:24:19'),
(51, 24, 54, 1, 220000, 45000, 180000, '2022-01-13 16:24:19', '2022-01-13 16:24:19'),
(52, 25, 31, 2, 180000, 50000, 120000, '2022-01-13 16:25:26', '2022-01-13 16:25:26'),
(53, 26, 31, 3, 180000, 50000, 110000, '2022-01-13 16:32:44', '2022-01-13 16:32:44'),
(54, 26, 52, 2, 599999, 25000, 565000, '2022-01-13 16:32:44', '2022-01-13 16:32:44'),
(55, 26, 57, 2, 300000, 52000, 240000, '2022-01-13 16:32:44', '2022-01-13 16:32:44'),
(56, 26, 58, 2, 290000, 50000, 230000, '2022-01-13 16:32:44', '2022-01-13 16:32:44'),
(57, 27, 58, 2, 290000, 50000, 0, '2022-01-13 16:33:34', '2022-01-13 16:33:34'),
(58, 27, 91, 3, 250000, 50000, 0, '2022-01-13 16:33:34', '2022-01-13 16:33:34'),
(59, 28, 60, 6, 270000, 50000, 0, '2022-01-13 16:35:41', '2022-01-13 16:35:41'),
(60, 28, 68, -1, 550000, 80000, 0, '2022-01-13 16:35:41', '2022-01-13 16:35:41'),
(61, 28, 82, 2, 52000, 25000, 0, '2022-01-13 16:35:41', '2022-01-13 16:35:41'),
(63, 30, 84, 2, 50000, 20000, 0, '2022-01-13 16:41:34', '2022-01-13 16:41:34'),
(64, 30, 89, 6, 200000, 50000, 0, '2022-01-13 16:41:34', '2022-01-13 16:41:34'),
(65, 31, 25, 25, 50000, 49000, 0, '2022-01-13 16:41:57', '2022-01-13 16:41:57'),
(66, 32, 26, 1, 91500, 35000, 0, '2022-01-13 21:50:03', '2022-01-13 21:50:03'),
(67, 32, 31, 3, 180000, 50000, 0, '2022-01-13 21:50:03', '2022-01-13 21:50:03'),
(68, 33, 26, 1, 91500, 35000, 0, '2022-01-13 22:00:19', '2022-01-13 22:00:19'),
(69, 34, 26, 3, 91500, 35000, 0, '2022-01-13 22:01:14', '2022-01-13 22:01:14'),
(71, 36, 57, 1, 300000, 52000, 0, '2022-01-13 22:03:05', '2022-01-13 22:03:05'),
(72, 37, 25, 1, 50000, 49000, 0, '2022-01-13 22:19:14', '2022-01-13 22:19:14'),
(73, 38, 25, 1, 50000, 20000, 0, '2022-01-13 22:19:50', '2022-01-13 22:19:50'),
(88, 56, 25, 1, 50000, 10000, 35000, '2022-01-14 01:17:42', '2022-01-14 01:17:42'),
(89, 56, 26, 1, 91500, 35000, 50000, '2022-01-14 01:17:42', '2022-01-14 01:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `last_updated`) VALUES
(1, 'Kim Đồng', '2022-01-12 15:43:56'),
(2, 'Tri thức', '2022-01-12 15:14:25'),
(3, 'Giáo dục', '2022-01-12 15:14:23'),
(4, 'Bách Khoa Hà Nội', '2022-01-12 15:14:18'),
(5, 'Thanh niên', '2022-01-12 15:14:20'),
(7, 'Lao động', '2022-01-12 15:14:15'),
(8, 'Hồng Đức', '2022-01-12 15:14:13'),
(9, 'Chính trị Quốc Gia', '2022-01-12 15:14:10'),
(10, 'Văn hóa', '2022-01-12 15:14:08'),
(11, 'TEST PUBLISHER', '2022-01-12 15:14:34');

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
  `created_date` datetime NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `customer_id`, `rating`, `tittle`, `content`, `created_date`, `last_updated`) VALUES
(3, 25, 1, NULL, 'Sách nhảm nhí', 'Sách có rất nhiều lỗi chính tả, câu cú không theo một quy chuẩn nào, \"thích là viết tắt, thích là viết hoa\".', '2021-12-09 08:19:00', '2021-12-09 08:19:00'),
(4, 25, 9, NULL, 'Sách hay, thú vị', '10 loại livestream để bán hàng hiệu quả nhất, trong đó có \"bí kíp\" là livestream cùng chuyên gia, người nổi tiếng...', '2021-12-15 04:18:00', '2021-12-15 04:18:00'),
(6, 25, 18, NULL, 'Sách hay', 'giúp toàn thể những người kinh doanh trong và ngoài nước thành công', '2021-11-17 22:50:09', '2021-11-17 22:50:09'),
(8, 55, 9, NULL, 'Đáng Đọc, Đáng Suy Ngẫm', 'Tôi biết đến Nguyễn Nhật Ánh là nhà văn tuổi thơ, từng trang sách của ông chứa đựng bao khát khao tuổi mới lớn, hoài bão , tương lai và có cả dư vị ngọt ngào của mối tình đầu. Nhưng có lẽ tôi quen với những truyện mang hơi hướng nhẹ nhàng, nên khi đọc sang Mắt biếc, tôi thấy ám ảnh. Đầu truyện là hình ảnh đẹp của dôi bạn trẻ qua con đường đầy sim, anh đàn cho cô nghe những bài tình ca tự sáng tác, khung cảnh ấy khiến cho người ta không thể quên.Và rằng ai cũng nghĩ anh sẽ bày tỏ lòng mình, hai người hạnh phúc đến cuối đời. Nhưng đến với Mắt biếc, ta sẽ thấy nhiều hơn thế, nó phản ánh chân thật tâm trạng của chàng trai, mối tình ấy chàng đã chôn chặt quá lâu khiến nó biến thành bi kịch.Tôi từng nghĩ nếu anh nói với cô từ sớm, lúc mà hai đứa chưa lên thành phố, thì mọi chuyện sẽ khác.Có lẽ hai đứa sẽ không bên nhau, và chuyện tình đó sẽ có kết thúc tốt đẹp hơn. Anh và cô hai con người trái ngược, một kẻ sống quá bình lặng, kẻ thì mãi mê chạy theo những giá trị ảo của đời. Đến cuối truyện, tôi thấy tội cho Trà Long, đáng lẽ em có hạnh phúc trọn vẹn sau bao biến cố gia đình.Ấy vậy mà ... Gấp lại trang sách, tôi thấy kết thúc thật đau nhưng đúng. Kẻ đi không vui, người ở lại thêm buồn. Cuốn sách này đáng để đặt trong tủ sách nhà bạn, bởi nó nhắc mỗi chúng ta về sai lầm của anh và cô, là nếu yêu thì nói chứ đừng giữ trong tim.', '2021-12-31 23:59:59', '2022-01-01 23:59:59'),
(10, 55, 13, NULL, 'Buồn ơi là buồn!', 'Hoàng Thị Thương Huyền  13/03/2015\r\nĐây là cuốn sách mà tôi yêu nhất của Nguyễn Nhật Ánh, lần đầu tiên tôi được đọc nó là vào hè năm tôi sắp lên lớp 11. Đến nay, đã là sinh viên năm thứ 4, tôi không nhớ nổi bao nhiêu lần tôi đã lần giở lại nó, bao nhiêu lần tôi khóc vì nó, bao nhiêu lần tôi đi tìm lại những người mà tôi thương trong đó. Tôi thương Ngạn vì một tình yêu mãi mãi không bao giờ được đáp lại, tôi thương Trà Long vì người mình thương mãi mãi xa xôi, tôi thương Hà Lan vì mãi mãi đánh mất tình yêu thật sự, mãi mãi đánh mất cuộc đời. Với tôi, đó là cuốn sách buồn nhất, lấy đi nhiều nước mắt nhất của Nguyễn Nhật Ánh. Nhưng, đó mới là cuộc sống, cuộc sống này đâu phải chỉ có màu hồng, đâu chỉ có niềm vui và nụ cười. Đâu đó, rất nhiều trong xã hội này, còn những góc khuất của tâm hồn, còn những sai lầm và còn những tình yêu mãi mãi nhưng vô vọng, đơn giản chỉ là cách ta lựa chọn xử sự với cuộc đời như thế nào thôi. Nhưng sự lựa chọn của Ngạn sao nghiệt ngã quá...', '2022-01-01 07:30:04', '2022-01-01 07:30:04'),
(12, 25, 22, NULL, '悪い本', '嫌いだ‼', '2022-01-06 11:13:49', '2022-01-06 11:13:49'),
(14, 26, 22, NULL, 'OK', 'OK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 26, 9, NULL, 'Test', 'Test ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 59, 18, NULL, 'Test sách cùng tác giả', 'OK chạy ổn', '2022-01-09 06:36:05', '2022-01-09 06:36:05'),
(18, 59, 18, NULL, 'Test sách cùng tác giả', 'OK chạy ổn', '2022-01-09 06:36:05', '2022-01-09 06:36:05'),
(19, 25, 25, NULL, 'â', 'â', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 90, 1, NULL, 'a', 'a', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 25, 18, NULL, 'aa', 'aa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 25, 18, NULL, 'aa', 'aa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 25, 18, NULL, 'aa', 'aa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 25, 18, NULL, 'bbbbb', 'bbbbbb', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 25, 35, NULL, 'Test ', 'Test lại Ngày tháng theo kiểu dữ liệu DATETIME', '2022-01-12 11:56:04', '2022-01-12 11:56:04'),
(26, 25, 46, NULL, 'test', 'test', '2022-01-13 21:52:20', '2022-01-13 21:52:20');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `books_publishers`
--
ALTER TABLE `books_publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
