-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 19, 2022 lúc 08:10 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `last_updated`) VALUES
(1, 'Robin Sharma', '2022-01-19 17:18:30'),
(2, 'Tony Buổi Sáng', '2022-01-19 05:55:23'),
(3, 'Rosie Nguyễn', '2022-01-19 09:07:23'),
(4, 'Robert T Kiyosaki', '2022-01-19 09:41:23'),
(5, 'Napoleon Hill', '2022-01-19 13:55:23'),
(6, 'Jim Collins', '2022-01-19 16:55:23'),
(7, 'Diệp Tiểu Ngư', '2022-01-19 11:55:23'),
(8, 'Philip Kotler', '2022-01-19 08:55:23'),
(9, 'Nguyễn Trọng Nhân', '2022-01-19 11:55:23'),
(10, 'Jack D Schwager', '2022-01-19 10:55:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
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
-- Cấu trúc bảng cho bảng `books`
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
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `tittle`, `image`, `price`, `discount`, `import_price`, `quantity`, `content`, `publication_date`, `created_date`, `last_updated`) VALUES
(1, 'Nhà lãnh đạo không chức danh', 'assets/image/book/1.png', 80000, 10000, 68000, 30, 'Làm thế nào để làm việc và tạo ảnh hưởng với mọi người như một siêu sao, bất chấp bạn đang ở vị trí nào\r\nMột phương pháp để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổi\r\nNhững bí mật thật sự của sự đổi mới\r\nMột chiến lược tức thời để xây dựng đội nhóm tuyệt vời và trở thành một nhà cung cấp ngoạn mục của khách hàng\r\nNhững thủ thuật cứng rắn giúp trở nên mạnh mẽ cả về thể chất lẫn tinh thần để có thể đi đầu trong lĩnh vực của bạn\r\nNhững phương thức thực tế để đánh bại sự căng thẳng, xây dựng một ý chí bất bại, giải phóng năng lượng, và cân bằng cuộc sống cá nhân                                                                                                                                                  ', NULL, '2021-03-19 10:08:41', '2022-01-19 10:19:37'),
(2, 'Trên Đường Băng', 'assets/image/book/2.png', 100000, 12000, 80000, 35, '                                        Nếu như tuổi trẻ vẫn chưa bỏ bạn quá xa, hãy đọc cuốn sách này ít nhất một lần.Trên đường băng của (dượng) Tony (các bạn trẻ gọi Tony như thế, chính tác giả đã viết như vậy trong phần mở đầu) là một trong những quyển sách bán chạy nhất, nổi tiếng nhất, hoặc là các lí do khác .Nhưng mà bất kể vì lý do gì mà bạn đang tính là sẽ mua quyển sách này thì GOBE có thể chắc chắn rằng bạn đã không lãng phí tiền bạc của mình đâu .Làm thế nào vào được những trường Ivy League.Làm thế nào để xin được việc.Làm thế nào để có vốn khởi nghiệp                                                                                                            ', NULL, '2021-02-19 10:23:41', '2022-01-19 10:24:34'),
(3, 'Tuổi trẻ đáng giá bao nhiêu', 'assets/image/book/3.png', 90000, 5000, 75000, 18, ' “Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\n\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\n\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.\r\n\r\nSuy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.\r\n\r\nNên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.\r\n\r\nVì sau tất cả, chẳng ai quan tâm.”\r\n\r\n“Tôi đã đọc quyển sách này một cách thích thú. Có nhiều kiến thức và kinh nghiệm hữu ích, những điều mới mẻ ngay cả với người gần trung niên như tôi.\r\n\r\nTuổi trẻ đáng giá bao nhiêu? được tác giả chia làm 3 phần: HỌC, LÀM, ĐI.\r\n\r\nNhưng tôi thấy cuốn sách còn thể hiện một phần thứ tư nữa, đó là ĐỌC.\r\n\r\nHãy đọc sách, nếu bạn đọc sách một cách bền bỉ, sẽ đến lúc bạn bị thôi thúc không ngừng bởi ý muốn viết nên cuốn sách của riêng mình.\r\n\r\nNếu tôi còn ở tuổi đôi mươi, hẳn là tôi sẽ đọc Tuổi trẻ đáng giá bao nhiêu?                                                                                                             ', NULL, '2021-09-19 10:27:39', '2022-01-19 10:29:36'),
(4, 'Content Bạc Tỷ', 'assets/image/book/4.png', 119000, 20000, 90000, 47, '                                        Kinh doanh muốn phát triển lâu dài thì content phải có hiệu quả. Content hiệu quả là content có thể hái ra tiền. Rất nhiều content được chú trọng từng câu chữ với những câu văn bay bổng nhưng lại không thể mang lại hấp dẫn đối với người đọc. Viết content cũng giống việc móc nối các thông tin lại với nhau, “Content bạc tỷ” sẽ chỉ ra cho bạn 4 bước cụ thể để xây dựng chiến dịch viết một bài quảng cáo chuyên nghiệp: “Nói những gì – Nói với ai – Nói ở đâu – Nói thế nào”. Nói một cách dễ hiểu hơn thì chính là xem khách hàng là đối tượng để tán gẫu, chúng ta áp dụng đúng bốn điều trên sẽ khiến cuộc trò chuyện đạt được hiệu quả cao hơn.                                                                                                           ', NULL, '2021-08-19 10:32:51', '2022-01-19 10:33:39'),
(5, 'Tiếp Thị 4.0', 'assets/image/book/5.png', 100000, 10000, 80000, 26, '                                        Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. Ngày nay khách hàng không có nhiều thời gian và sự chú ý dành cho thương hiệu của bạn – và họ còn bị bao quanh bởi vô số các chọn lựa. Bạn phải tách khỏi đám đông, phải nổi trội, để gây sự chú ý và truyền đạt thông điệp mà khách hàng muốn nghe.                                                                                             ', NULL, '2021-07-19 10:36:19', '2022-01-19 10:37:22'),
(6, 'Bóc Phốt Tài Chính', 'assets/image/book/6.png', 149000, 12000, 100000, 25, '                                        - Lương thấp không bao giờ nuôi được đam mê\r\n\r\n- Thế hệ trẻ bỏ việc văn phòng để chạy Grab, thực tế hay hiểu sai?\r\n\r\n- Con gái yêu vì tiền là thực dụng hay lẽ thường?\r\n\r\nPhong cách viết đơn giản và dễ tiếp cận, “Bóc phốt tài chính” chính xác đã “lột trần” những khái niệm từ đơn giản cho đến phức tạp nhất trong lĩnh vực tài chính. Đây là cuốn sách dành cho tất cả mọi người, dù bạn là sinh viên, nhân viên hay làm trong những lĩnh vực ít tiếp xúc với chứng khoán thì vẫn hiểu được nội dung của cuốn sách. Những câu chuyện được tác giả “gần gũi hoá” trở nên thực tế và phản ánh đúng thực trạng đời sống hiện nay dưới góc nhìn tài chính.                                                                                           ', NULL, '2021-06-19 10:39:59', '2022-01-19 10:42:04'),
(7, 'Phù Thủy Sàn Chứng Khoán', 'assets/image/book/7(1).png', 163000, 13000, 120000, 18, 'Sách-Phù thuỷ sàn chứng khoán\r\nCuốn sách gồm một loạt các cuộc phỏng vấn với các nhà giao dịch thành công và nổi tiếng nhất, với nhiều chi tiết nhất về câu chuyện thành công và những bí mật kinh nghiệm chuyên môn của họ.                                                                                                                                                                        ', NULL, '2021-09-19 10:46:17', '2022-01-19 10:50:50'),
(8, 'Dạy Con Làm Giàu 2', 'assets/image/book/8.png', 250000, 20000, 200000, 42, '                                         Bạn đang đi học? Bạn vừa ra trường và chưa có việc làm? Bạn đang làm việc với mức lương ổn định? Bạn đang làm cho một công ty tư nhân tư nhân? Bạn là một chủ doanh nghiệp nhỏ? Bạn muốn được thoải mái về tiền bạc ? “Dạy con làm giàu tập 2” sẽ là bước khởi đầu cho bạn - những quan điểm mới về đồng vốn và cách sử dụng tiền hiệu quả.                                                                                                               ', NULL, '2021-10-19 10:54:05', '2022-01-19 10:56:38'),
(9, 'Nghĩ Giàu & Làm Giàu', 'assets/image/book/9.png', 108000, 30000, 70000, 40, '                                        Nghĩ giàu Làm giàu là một trong những cuốn sách bán chạy nhất trên thế giới mọi thời đại.\r\nNó đã được tái bản hơn 60 triệu bản và phát hành với hàng trăm ngôn ngữ trên thế giới, được công nhận là cuốn sách tạo ra nhiều triệu phú nhất                                                                                                                                                                        ', NULL, '2021-11-19 10:59:11', '2022-01-19 11:02:18'),
(10, 'Từ Tốt Đến Vĩ Đại', 'assets/image/book/10.png', 110500, 10000, 90000, 43, 'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!                                                                                                                                               ', NULL, '2021-12-19 11:04:31', '2022-01-19 11:06:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books_authors`
--

CREATE TABLE `books_authors` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `books_authors`
--

INSERT INTO `books_authors` (`author_id`, `book_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 8),
(5, 9),
(6, 10),
(7, 4),
(8, 5),
(9, 6),
(10, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books_genres`
--

CREATE TABLE `books_genres` (
  `book_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `books_genres`
--

INSERT INTO `books_genres` (`book_id`, `genres_id`) VALUES
(1, 1),
(2, 1),
(3, 4),
(4, 3),
(5, 3),
(6, 6),
(7, 7),
(8, 1),
(9, 1),
(10, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books_library`
--

CREATE TABLE `books_library` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` date NOT NULL,
  `last_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `books_library`
--

INSERT INTO `books_library` (`id`, `book_id`, `path`, `created_time`, `last_updated`) VALUES
(1, 1, 'assets/image/book/1a.png', '2022-01-19', '2022-01-19'),
(2, 1, 'assets/image/book/1b.png', '2022-01-19', '2022-01-19'),
(3, 2, 'assets/image/book/2a.png', '2022-01-19', '2022-01-19'),
(4, 2, 'assets/image/book/2b.png', '2022-01-19', '2022-01-19'),
(5, 3, 'assets/image/book/3a.png', '2022-01-19', '2022-01-19'),
(6, 3, 'assets/image/book/3b.png', '2022-01-19', '2022-01-19'),
(7, 4, 'assets/image/book/4a.png', '2022-01-19', '2022-01-19'),
(8, 5, 'assets/image/book/5a.png', '2022-01-19', '2022-01-19'),
(9, 5, 'assets/image/book/5b.png', '2022-01-19', '2022-01-19'),
(10, 6, 'assets/image/book/6a.png', '2022-01-19', '2022-01-19'),
(11, 6, 'assets/image/book/6b.png', '2022-01-19', '2022-01-19'),
(12, 7, 'assets/image/book/7a(1).png', '2022-01-19', '2022-01-19'),
(13, 7, 'assets/image/book/7b(1).png', '2022-01-19', '2022-01-19'),
(14, 8, 'assets/image/book/8a.png', '2022-01-19', '2022-01-19'),
(15, 8, 'assets/image/book/8b.png', '2022-01-19', '2022-01-19'),
(16, 9, 'assets/image/book/9a.png', '2022-01-19', '2022-01-19'),
(17, 10, 'assets/image/book/10a.png', '2022-01-19', '2022-01-19'),
(18, 10, 'assets/image/book/10b.png', '2022-01-19', '2022-01-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books_publishers`
--

CREATE TABLE `books_publishers` (
  `book_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `started_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `books_publishers`
--

INSERT INTO `books_publishers` (`book_id`, `publisher_id`, `started_date`) VALUES
(1, 4, '2019-12-20'),
(2, 1, '2021-07-01'),
(3, 8, '2016-11-10'),
(4, 3, '2018-11-11'),
(5, 1, '2021-01-01'),
(6, 7, '2020-07-15'),
(7, 10, '2021-08-05'),
(8, 1, '2021-06-06'),
(9, 9, '2019-10-10'),
(10, 4, '2021-03-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
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
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `first_name`, `last_name`, `avatar`, `birthday`, `phone`, `address`, `email`, `status`, `money_spent`, `last_updated`, `created_date`) VALUES
(1, 'admin', 'fbf17d2aaa8998f26d73fd9eebce1607', 'Shop', 'Admin', './assets/image/user/Book-Icon.png', '0000-00-00', '0964747288', 'Hà Nội', 'bookly@gmail.com', 1, 0, '2021-01-19 11:14:57', '2021-01-19 00:20:44'),
(2, 'phuongnh', 'e13dd027be0f2152ce387ac0ea83d863', 'Nguyễn Hồng', 'Phương', './assets/image/user/avatar-03.jpg', '0000-00-00', '0385496431', 'Hà Nội', 'phuongnh@gmail.com', 1, 2332500, '2021-02-19 11:09:39', '2021-02-19 11:07:32'),
(3, 'congvt', 'e82c4b19b8151ddc25d4d93baf7b908f', 'Vũ Tài', 'Công', './assets/image/user/avatar-03.jpg', NULL, '0989999123', 'Hải Dương', 'congvt@gmail.com', 1, 402000, '2021-03-19 11:18:42', '2021-03-19 11:18:42'),
(4, 'haiquang', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Quang', 'Hải', './assets/image/user/avatar-03.jpg', NULL, '0989999274', 'Yên Bái', 'haiquang@gamil.com', 1, 920000, '2021-04-19 11:38:50', '2021-04-19 11:38:50'),
(5, 'dungbt', '96e79218965eb72c92a549dd5a330112', 'Bùi Tiến', 'Dũng', './assets/image/user/avatar-02.jpg', NULL, '0989999273', 'Thanh Hóa', 'dungbt@gmail.com', 1, 697000, '2021-05-19 11:51:26', '2021-05-19 11:49:52'),
(6, 'anleminh', '96e79218965eb72c92a549dd5a330112', 'Lê Minh', 'An', './assets/image/user/avatar-06.jpg', '2014-03-19', '0989999273', 'Thái bình', 'leminhan@gmail.com', 1, 148000, '2022-06-19 11:57:41', '2021-06-19 11:55:09'),
(7, 'minhlevu', '96e79218965eb72c92a549dd5a330112', 'Lê Vũ', 'Minh', './assets/image/user/avatar-06.jpg', NULL, '0989999299', 'Ninh Bình', 'levuminh@gmail.com', 1, 210000, '2022-07-19 06:00:40', '2021-07-19 06:00:40'),
(8, 'phuongnt', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Thanh', 'Phương', './assets/image/user/avatar-02.jpg', NULL, '0978999666', 'TP HCM', 'phuongnt@gmail.com', 1, 0, '2022-01-19 07:04:58', '2021-08-19 07:04:58'),
(9, 'duanlv', '96e79218965eb72c92a549dd5a330112', 'Lê Văn', 'Đức', './assets/image/user/avatar-03.jpg', NULL, '0989999273', 'Huế', NULL, 1, 286000, '2022-01-19 07:04:58', '2022-09-19 07:04:58'),
(10, 'thanhnv', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Văn', 'Thanh', './assets/image/user/avatar-03.jpg', NULL, '0989999273', 'Đà Nẵng', NULL, 1, 0, '2022-01-19 07:07:51', '2021-10-19 07:07:51'),
(11, 'manhdd', '96e79218965eb72c92a549dd5a330112', 'Đỗ Duy', 'Mạnh', './assets/image/user/avatar-03.jpg', NULL, '0989999273', 'Hà Giang', NULL, 1, 893000, '2022-01-19 07:07:51', '2021-11-19 07:07:51'),
(12, 'huypd', '96e79218965eb72c92a549dd5a330112', 'Phạm Đức', 'Huy', './assets/image/user/avatar-03.jpg', NULL, '0989999273', 'Nghệ An', NULL, 1, 976000, '2022-01-19 07:07:51', '2021-12-19 07:07:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `book_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`book_id`, `customer_id`) VALUES
(1, 6),
(1, 7),
(2, 2),
(2, 3),
(2, 5),
(2, 9),
(3, 5),
(3, 12),
(4, 5),
(4, 9),
(6, 5),
(6, 11),
(7, 11),
(8, 12),
(9, 6),
(9, 11),
(10, 5),
(10, 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `name`, `last_updated`) VALUES
(1, 'Bài học kinh doanh', '2022-01-19 04:09:58'),
(2, 'Quản trị-Lãnh đạo', '2022-01-19 04:09:58'),
(3, 'Marketing-Bán hàng', '2022-01-19 04:09:58'),
(4, 'Phát triển bản thân', '2022-01-19 04:28:22'),
(5, 'Kỹ năng sống', '2022-01-19 04:28:22'),
(6, 'Phân tích kinh doanh', '2022-01-19 04:41:18'),
(7, 'Đầu tư', '2022-01-19 04:47:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
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
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `fullname`, `phone`, `address`, `note`, `total`, `created_date`, `required_date`, `status`, `last_updated`) VALUES
(1, 2, 'Nguyễn Hồng Phương', '0989999999', 'Hà Nội ', 'giao hàng vào giờ hành chính', 406000, '2022-01-19 07:11:13', NULL, 1, '2022-01-19 11:11:13'),
(2, 3, 'Vũ Tài Công', '0123456789', 'Hải Phòng', '', 402000, '2021-12-19 08:20:33', NULL, 1, '2022-01-19 11:20:33'),
(3, 2, 'Nguyễn Hồng Phương', '0989999999', 'Hà Nội', '', 426500, '2021-11-19 11:23:57', NULL, 1, '2022-01-19 11:23:57'),
(4, 2, 'Nguyễn Hồng Phương', '0989999999', 'Hà Nội', '', 1500000, '2021-10-19 16:24:31', NULL, 1, '2022-01-19 11:24:31'),
(5, 4, 'Phạm Văn Cương', '0388499767', 'Nam Định', 'giao hàng vào buổi sáng', 920000, '2022-09-19 07:40:14', NULL, 1, '2022-01-19 11:40:14'),
(6, 5, 'Nguyễn Thanh Huyền', '0989976499', 'Thanh Hóa', '', 338000, '2022-08-19 11:51:58', NULL, 1, '2022-01-19 11:51:58'),
(7, 5, 'Nguyễn Thanh Huyền', '0367898001', 'Thanh Hóa', '', 359000, '2022-07-19 08:54:45', NULL, 1, '2022-01-19 11:54:45'),
(8, 6, 'Lê Minh An', '0398999378', 'Thái Bình', '', 148000, '2022-06-19 15:56:57', NULL, 1, '2022-01-19 11:56:57'),
(9, 7, 'Lê Vũ Minh', '0989999299', 'Ninh Bình', '', 210000, '2022-05-19 12:05:37', NULL, 1, '2022-01-19 12:05:37'),
(10, 11, 'Đỗ Duy Mạnh', '0989999273', 'Hà Giang', '', 600000, '2022-04-19 13:15:38', NULL, 1, '2022-01-19 13:15:38'),
(11, 11, 'Đỗ Duy Mạnh', '0989999273', 'Hà Giang', '', 137000, '2022-03-19 13:15:48', NULL, 1, '2022-01-19 13:15:48'),
(12, 11, 'Đỗ Duy Mạnh', '0989999273', 'Hà Giang', '', 156000, '2021-02-19 13:16:03', NULL, 1, '2022-01-19 13:16:03'),
(13, 12, 'Phạm Đức Huy', '0989999273', 'Nghệ An', 'Giao hàng buổi chiều', 690000, '2021-01-19 19:18:19', NULL, 1, '2022-01-19 13:18:19'),
(14, 12, 'Phạm Đức Huy', '0989999273', 'Nghệ An', '', 286000, '2021-03-19 13:19:44', NULL, 1, '2022-01-19 13:19:44'),
(15, 9, 'Lê Văn Đức', '0989999273', 'Huế', '', 286000, '2021-02-19 18:20:48', NULL, 1, '2022-01-19 13:20:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `import_price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `book_id`, `quantity`, `price`, `discount`, `import_price`) VALUES
(1, 1, 2, 2, 100000, 12000, 80000),
(2, 1, 8, 1, 250000, 20000, 200000),
(3, 2, 1, 1, 80000, 10000, 68000),
(4, 2, 2, 2, 100000, 12000, 80000),
(5, 2, 9, 2, 108000, 30000, 70000),
(6, 3, 4, 1, 119000, 20000, 90000),
(7, 3, 5, 1, 100000, 10000, 80000),
(8, 3, 6, 1, 149000, 12000, 100000),
(9, 3, 10, 1, 110500, 10000, 90000),
(10, 4, 7, 10, 163000, 13000, 120000),
(11, 5, 8, 4, 250000, 20000, 200000),
(12, 6, 6, 1, 149000, 12000, 100000),
(13, 6, 10, 2, 110500, 10000, 90000),
(14, 7, 3, 1, 90000, 5000, 75000),
(15, 7, 6, 2, 149000, 12000, 100000),
(16, 8, 1, 1, 80000, 10000, 68000),
(17, 8, 9, 1, 108000, 30000, 70000),
(18, 9, 1, 3, 80000, 10000, 68000),
(19, 10, 7, 4, 163000, 13000, 120000),
(20, 11, 6, 1, 149000, 12000, 100000),
(21, 12, 9, 2, 108000, 30000, 70000),
(22, 13, 8, 3, 250000, 20000, 200000),
(23, 14, 3, 1, 90000, 5000, 75000),
(24, 14, 10, 2, 110500, 10000, 90000),
(25, 15, 2, 1, 100000, 12000, 80000),
(26, 15, 4, 2, 119000, 20000, 90000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `last_updated`) VALUES
(1, 'NXB Trẻ', '2022-01-19 04:13:13'),
(2, 'NXB Hội Nhà Văn', '2022-01-19 04:13:13'),
(3, 'NXB Hà Nội', '2022-01-19 04:13:13'),
(4, 'NXB Tổng Hợp', '2022-01-19 04:13:13'),
(5, 'NXB Lao Động', '2022-01-19 04:13:13'),
(6, 'NXB Công Thương', '2022-01-19 04:15:38'),
(7, 'NXB Bách Khoa', '2022-01-19 04:15:38'),
(8, 'NXB Kim Đồng', '2022-01-19 04:15:38'),
(9, 'NXB Thanh Niên', '2022-01-19 04:15:38'),
(10, 'NXB Giáo Dục', '2022-01-19 04:15:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
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
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `customer_id`, `rating`, `tittle`, `content`, `created_date`, `last_updated`) VALUES
(1, 2, 4, NULL, '', 'Sách Hay, Rất bổ ích\r\n', '2022-01-19 11:43:26', '2022-01-19 11:43:26'),
(2, 1, 4, NULL, '', 'Sách giao nhanh, đúng giờ hành chính\r\nGiá cả hợp lí', '2022-01-19 11:44:01', '2022-01-19 11:44:01'),
(3, 8, 4, NULL, '', 'Sách hơi mắc, tuy nhiên nội dung rất hay và hữu ích. \r\nSẽ ủng hộ shop nhiêu hơn\r\n', '2022-01-19 11:44:43', '2022-01-19 11:44:43'),
(4, 6, 5, NULL, '', 'Sách giá rẻ, Nội dung hay', '2022-01-19 11:51:08', '2022-01-19 11:51:08'),
(5, 10, 5, NULL, '', 'Bìa sách khá mỏng, Shop tư vấn nhiệt tình', '2022-01-19 11:54:12', '2022-01-19 11:54:12'),
(6, 9, 6, NULL, '', 'Sách Có nhiều ví dụ thực tiễn rất thiết thực', '2022-01-19 11:55:54', '2022-01-19 11:55:54'),
(7, 1, 6, NULL, '', 'Giao hàng Nhanh, Sách rất hay', '2022-01-19 11:56:35', '2022-01-19 11:56:35'),
(8, 1, 7, NULL, '', 'Đã mua của shop 3 lần nhưng lần nào cũng rất hài lòng\r\n', '2022-01-19 12:05:23', '2022-01-19 12:05:23'),
(9, 10, 12, NULL, '', 'Nội dung sách rất hay', '2022-01-19 13:18:59', '2022-01-19 13:18:59'),
(10, 3, 12, NULL, '', 'Sách rất hay, Sẽ còn ủng hộ shop nhiều\r\n', '2022-01-19 13:19:37', '2022-01-19 13:19:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books_authors`
--
ALTER TABLE `books_authors`
  ADD UNIQUE KEY `author_id` (`author_id`,`book_id`),
  ADD KEY `books_authors_ibfk_2` (`book_id`);

--
-- Chỉ mục cho bảng `books_genres`
--
ALTER TABLE `books_genres`
  ADD UNIQUE KEY `book_id` (`book_id`,`genres_id`),
  ADD KEY `books_genres_ibfk_2` (`genres_id`);

--
-- Chỉ mục cho bảng `books_library`
--
ALTER TABLE `books_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`book_id`);

--
-- Chỉ mục cho bảng `books_publishers`
--
ALTER TABLE `books_publishers`
  ADD UNIQUE KEY `book_id_2` (`book_id`,`publisher_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD UNIQUE KEY `book_id` (`book_id`,`customer_id`),
  ADD KEY `favorites_ibfk_2` (`customer_id`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`book_id`);

--
-- Chỉ mục cho bảng `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books_authors`
--
ALTER TABLE `books_authors`
  ADD CONSTRAINT `books_authors_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_authors_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `books_genres`
--
ALTER TABLE `books_genres`
  ADD CONSTRAINT `books_genres_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `books_library`
--
ALTER TABLE `books_library`
  ADD CONSTRAINT `books_library_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `books_publishers`
--
ALTER TABLE `books_publishers`
  ADD CONSTRAINT `books_publishers_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_publishers_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
