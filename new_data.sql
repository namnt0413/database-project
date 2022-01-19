-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 19, 2022 lúc 10:50 AM
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
(7, 'Tô Hoài', '2022-01-19 11:55:23'),
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
(1, 'Nhà lãnh đạo không chức danh', 'assets/image/book/1_.png', 80000, 10000, 68000, 30, '                                                                                Làm thế nào để làm việc và tạo ảnh hưởng với mọi người như một siêu sao, bất chấp bạn đang ở vị trí nào\r\nMột phương pháp để nhận biết và nắm bắt cơ hội vào những thời điểm thay đổi\r\nNhững bí mật thật sự của sự đổi mới\r\nMột chiến lược tức thời để xây dựng đội nhóm tuyệt vời và trở thành một nhà cung cấp ngoạn mục của khách hàng\r\nNhững thủ thuật cứng rắn giúp trở nên mạnh mẽ cả về thể chất lẫn tinh thần để có thể đi đầu trong lĩnh vực của bạn\r\nNhững phương thức thực tế để đánh bại sự căng thẳng, xây dựng một ý chí bất bại, giải phóng năng lượng, và cân bằng cuộc sống cá nhân                                                                                                                                                                                                                          ', NULL, '2021-03-19 10:08:41', '2022-01-19 16:12:12'),
(2, 'Trên Đường Băng', 'assets/image/book/2.png', 100000, 12000, 80000, 32, '                                        Nếu như tuổi trẻ vẫn chưa bỏ bạn quá xa, hãy đọc cuốn sách này ít nhất một lần.Trên đường băng của (dượng) Tony (các bạn trẻ gọi Tony như thế, chính tác giả đã viết như vậy trong phần mở đầu) là một trong những quyển sách bán chạy nhất, nổi tiếng nhất, hoặc là các lí do khác .Nhưng mà bất kể vì lý do gì mà bạn đang tính là sẽ mua quyển sách này thì GOBE có thể chắc chắn rằng bạn đã không lãng phí tiền bạc của mình đâu .Làm thế nào vào được những trường Ivy League.Làm thế nào để xin được việc.Làm thế nào để có vốn khởi nghiệp                                                                                                            ', NULL, '2021-02-19 10:23:41', '2022-01-19 10:24:34'),
(3, 'Tuổi trẻ đáng giá bao nhiêu', 'assets/image/book/3.png', 90000, 5000, 75000, 15, ' “Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.\r\n\r\nBạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.\r\n\r\nBạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.\r\n\r\nSuy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.\r\n\r\nNên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.\r\n\r\nVì sau tất cả, chẳng ai quan tâm.”\r\n\r\n“Tôi đã đọc quyển sách này một cách thích thú. Có nhiều kiến thức và kinh nghiệm hữu ích, những điều mới mẻ ngay cả với người gần trung niên như tôi.\r\n\r\nTuổi trẻ đáng giá bao nhiêu? được tác giả chia làm 3 phần: HỌC, LÀM, ĐI.\r\n\r\nNhưng tôi thấy cuốn sách còn thể hiện một phần thứ tư nữa, đó là ĐỌC.\r\n\r\nHãy đọc sách, nếu bạn đọc sách một cách bền bỉ, sẽ đến lúc bạn bị thôi thúc không ngừng bởi ý muốn viết nên cuốn sách của riêng mình.\r\n\r\nNếu tôi còn ở tuổi đôi mươi, hẳn là tôi sẽ đọc Tuổi trẻ đáng giá bao nhiêu?                                                                                                             ', NULL, '2021-09-19 10:27:39', '2022-01-19 10:29:36'),
(4, 'Truyện Tây Bắc', 'assets/image/book/15.png', 119000, 20000, 90000, 47, '“Đọc Truyện Tây Bắc, chúng ta có cảm tưởng đó vừa là một bản cáo trạng, vừa là một khúc tình ca: cáo trạng đối với phong kiến miền núi và thực dân, tình ca ngợi khen cảnh đẹp, tập quán hay, tinh thần cách mạng, quan hệ giữa người và người Tây Bắc, như bản tình ca viết với một bút pháp trữ tình nồng đượm và nên thơ.\r\n\r\n”Giáo sư HUỲNH LÝ“\r\n\r\nTruyện Vợ chồng A Phủ cũng như tập Truyện Tây Bắc nói chung bộc lộ rõ nét phong cách của Tô Hoài: màu sắc dân tộc đậm đà; chất thơ, chất trữ tình đằm thắm, lời văn giàu tính tạo hình.”', NULL, '2021-08-19 10:32:51', '2022-01-19 16:08:10'),
(5, 'Tiếp Thị 4.0', 'assets/image/book/5.png', 100000, 10000, 80000, 25, '                                        Quyển cẩm nang vô cùng cần thiết cho những người làm tiếp thị trong thời đại số. Được viết bởi cha đẻ ngành tiếp thị hiện đại, cùng hai đồng tác giả là lãnh đạo của công ty MarkPlus, quyển sách sẽ giúp bạn lèo lái thế giới không ngừng kết nối và khách hàng không ngừng thay đổi để có được nhiều khách hàng hơn, xây dựng thương hiệu hiệu quả hơn, và cuối cùng kinh doanh thành công hơn. Ngày nay khách hàng không có nhiều thời gian và sự chú ý dành cho thương hiệu của bạn – và họ còn bị bao quanh bởi vô số các chọn lựa. Bạn phải tách khỏi đám đông, phải nổi trội, để gây sự chú ý và truyền đạt thông điệp mà khách hàng muốn nghe.                                                                                             ', NULL, '2021-07-19 10:36:19', '2022-01-19 10:37:22'),
(6, 'Bóc Phốt Tài Chính', 'assets/image/book/6.png', 149000, 12000, 100000, 25, 'Tác giả Nguyễn Trọng Nhân sinh ra ở Vũng Tàu, học ở Úc. Là một người tự nhận là viết vì rảnh, rảnh tới độ chủ đề nào cũng tham gia. Muốn chinh phục thế giới nhưng chưa nghĩ ra và không thể.\n\nTác giả bắt đầu với những bài viết trên Facebook. Mục đích ban đầu là để thỏa mãn bản thân chứ không mong muốn gì. Qua những bài viết chia sẻ kiến thức, kinh nghiệm của bản thân về tài chinh, chứng khoán tác giả muốn muốn lan tỏa đến nhiều người hơn, vậy là ý tưởng cho chủ đề “Bóc Phốt Tài Chính” ra đời.', NULL, '2021-06-19 10:39:59', '2022-01-19 16:08:51'),
(7, 'Dế Mèn Phiêu Lưu Ký', 'assets/image/book/16.jpg', 163000, 13000, 120000, 18, 'Trong hơn nửa thế kỉ, kể từ ngày đầu tiên ra mắt bạn đọc, năm 1941, \"Dế Mèn phiêu lưu ký\" là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài. Tác phẩm đã được tái bản nhiều lần và được dịch ra hơn 20 thứ tiếng trên toàn thế giới và luôn được các thế hệ độc giả nhỏ tuổi đón nhận. Tác phẩm đã được xuất bản với nhiều hình thức khác nhau. Trong đó cuốn \"Dế Mèn phiêu lưu ký\" gồm 52 trang, trên khổ giấy 21,5x28cm là một ấn phẩm đặc biệt phù hợp với các em nhi đồng vì cách kể gọn, dễ nắm bắt. Các tranh diễn hoạ 4 màu sinh động của hoạ sĩ Trương Qua sẽ khiến các em thấy như đang được xem một cuốn phim về chú Dế Mèn nổi tiếng vậy!                                                                                                                                                                                                                                                                         ', NULL, '2021-09-19 10:46:17', '2022-01-19 16:15:16'),
(8, 'Dạy Con Làm Giàu 2', 'assets/image/book/8.png', 250000, 20000, 200000, 42, '                                                                                 Bạn đang đi học? Bạn vừa ra trường và chưa có việc làm? Bạn đang làm việc với mức lương ổn định? Bạn đang làm cho một công ty tư nhân tư nhân? Bạn là một chủ doanh nghiệp nhỏ? Bạn muốn được thoải mái về tiền bạc ? “Dạy con làm giàu tập 2” sẽ là bước khởi đầu cho bạn - những quan điểm mới về đồng vốn và cách sử dụng tiền hiệu quả.                                                                                                                                                   ', NULL, '2021-10-19 10:54:05', '2022-01-19 16:09:32'),
(9, 'Nghĩ Giàu & Làm Giàu', 'assets/image/book/9.png', 108000, 30000, 70000, 40, '                                        Nghĩ giàu Làm giàu là một trong những cuốn sách bán chạy nhất trên thế giới mọi thời đại.\r\nNó đã được tái bản hơn 60 triệu bản và phát hành với hàng trăm ngôn ngữ trên thế giới, được công nhận là cuốn sách tạo ra nhiều triệu phú nhất                                                                                                                                                                        ', NULL, '2021-11-19 10:59:11', '2022-01-19 11:02:18'),
(10, 'Từ Tốt Đến Vĩ Đại', 'assets/image/book/10.png', 110500, 10000, 90000, 43, 'Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!                                                                                                                                               ', NULL, '2021-12-19 11:04:31', '2022-01-19 11:06:02'),
(11, 'Đời Ngắn Đừng Ngủ Dài', 'assets/image/book/11.png', 100000, 10000, 80000, 50, '                                        “Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”\r\n\r\nBằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm và suy ngẫm trong đời, Robin Sharma tiếp tục phong cách viết của ông từ cuốn sách Điều vĩ đại đời thường để mang đến cho độc giả những bài viết như lời tâm sự, vừa chân thành vừa sâu sắc.                                                                                                                       ', NULL, '2021-05-19 15:41:49', '2022-01-19 15:55:26'),
(12, '3 Người Thầy Vĩ Đại', 'assets/image/book/12.png', 163000, 20000, 120000, 90, '                                                                                 “Tôi đã nếm trải nhiều thất bại trong hành trình đi qua những tháng ngày của mình. Thế nhưng, mỗi chướng ngại cuối cùng đều lại chính là một bàn đạp đưa tôi gần hơn nữa tới chân lý trong tâm khảm và cuộc đời tốt đẹp nhất của mình.\r\n\r\nCho dù tôi có thu thập được bao nhiêu tài sản vật chất đi chăng nữa thì cái thằng người mà tôi nhìn thấy trong tấm gương phòng tắm mỗi buổi sáng vẫn y nguyên – tôi không hề hạnh phúc hơn và không hề cảm thấy tốt hơn tí nào. Suy ngẫm nhiều hơn về thực trạng cuộc sống của mình, tôi bắt đầu nhận thức được sự trống rỗng ngay trong tim mình. Tôi bắt đầu chú ý đến những tiếng thầm thì lặng lẽ của con tim, những điều chỉ dẫn tôi rời bỏ nghề nghiệp mình đã chọn và bắt đầu quá trình tìm kiếm tâm hồn một cách nghiêm túc. Tôi bắt đầu suy nghĩ về lý do tại sao tôi lại ở đây, trên hành tinh này, và nhiệm vụ cụ thể của tôi là gì. Tôi tự hỏi tại sao cuộc đời mình lại không có tác dụng và cần phải thực hiện những thay đổi sâu sắc nào để giúp mình đi đúng hướng. Tôi xem xét những niềm tin cốt lõi, những giả định, và những lăng kính mà mình nhìn ra thế giới, và tôi tự cam kết làm sạch những lăng kính không lành mạnh.”                                                                                                                                      ', NULL, '2021-04-19 15:54:20', '2022-01-19 15:56:45'),
(13, 'Tư Duy Làm Giàu', 'assets/image/book/13.png', 130000, 5000, 80000, 49, 'Tập hợp những bài diễn thuyết, bài báo, bài nói chuyện bất hủ của Napoleon Hill, tác giả được mệnh danh là người tạo ra các nhà triệu phú của thế giới, Tư duy làm giàu mang đến độc giả cái nhìn đa chiều hơn về nguyên tắc thành công, không chỉ trong kinh doanh mà còn trong các khía cạnh khác của đời sống.\r\n\r\nSẽ không quá lời khi nói rằng, Napoleon Hill (1883 - 1970) là tác giả có ảnh hưởng rộng rãi nhất, mạnh mẽ nhất trong lĩnh vực thành công cá nhân hơn bất cứ một nhân vật nào trong lịch sử. Với công trình kéo dài gần 30 năm mang tên Nghĩ giàu và làm giàu (Think and Grow Rich), ông được mệnh danh là “người tạo ra các nhà triệu phú của thế giới” bởi đã truyền nguồn cảm hứng và một triết lý thành công dựa trên phương pháp tư duy tích cực, hiệu quả và những phẩm chất tốt đẹp trong tính cách cho hàng triệu người trên thế giới. Bộ tác phẩm nghĩ giàu làm giàu của ông được xem là một trong những tác phẩm bán chạy nhất mọi thời đại.                                                                ', NULL, '2021-08-19 15:59:01', '2022-01-19 15:59:01'),
(14, 'Trên Hành Trình Tự Học', 'assets/image/book/14.jpg', 80000, 10000, 69000, 15, '                                        Sau thành công của Tuổi Trẻ Đáng Giá Bao Nhiêu, tác giả lên đường du học và nhìn lại quá trình học tập của mình từ khi ra trường cho đến hôm nay. Trên Hành Trình Tự Học là tập hợp những bài viết liên quan đến việc học.\r\n\r\nSách chia làm bốn phần chính: Học Để Biết, Học Để Làm, Học Để Chuyển Mình, Học Để Chung Sống. Mỗi phần đều được viết dựa trên kinh nghiệm của tác giả và từ những câu chuyện của những người bạn mà tác giả có dịp gặp gỡ, chia sẻ. Tác giả cũng xem xét về các khía cạnh khác nhau của sự học: cách học trực tuyến, học từ trường, từ gia đình… Song song đó là nhận định tổng quan về giá trị chung của việc học.                                                                                  ', NULL, '2021-08-18 16:02:40', '2022-01-19 16:03:20'),
(15, 'Điều Vĩ Đại Đời Thường', 'assets/image/book/17.jpg', 90000, 5000, 78000, 69, '                                        Hành trình trở nên vĩ đại khởi đầu từ những điều thật giản dị và gần gũi, cũng giống như hành trình vạn dặm khởi đầu từ một bước chân giản đơn. 101 câu chuyện và ý tưởng của tác giả trong quyển sách này chính là 101 bài học minh chứng cho triết lý đơn sơ ấy.\r\nKhông có cuộc sống nào là hoàn hảo, tất cả chúng ta phải đối mặt với nhiều thử thách, từ đơn giản đến nghiêm trọng… Nhưng chúng ta đều có quyền lựa chọn vượt lên mọi nghịch cảnh để vươn tới vị trí cao nhất và tốt nhất của cuộc sống.                                                                                 ', NULL, '2021-11-19 16:18:49', '2022-01-19 16:21:52'),
(16, 'Cà Phê Cùng Tony', 'assets/image/book/18.png', 90000, 20000, 68000, 30, '                                        Có đôi khi vào những tháng năm bắt đầu vào đời, giữa vô vàn ngả rẽ và lời khuyên, khi rất nhiều dự định mà thiếu đôi phần định hướng, thì CẢM HỨNG là điều quan trọng để bạn trẻ bắt đầu bước chân đầu tiên trên con đường theo đuổi giấc mơ của mình. Cà Phê Cùng Tony là tập hợp những bài viết của tác giả Tony Buổi Sáng. Đúng như tên gọi, mỗi bài nhẹ nhàng như một tách cà phê, mà bạn trẻ có thể nhận ra một chút gì của chính mình hay bạn bè mình trong đó: Từ chuyện lớn như định vị bản thân giữa bạn bè quốc tế, cho đến chuyện nhỏ như nên chú ý những phép tắc xã giao thông thường.                                                                                             ', NULL, '2021-12-19 16:21:20', '2022-01-19 16:22:30');

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
(1, 11),
(1, 12),
(1, 15),
(2, 2),
(2, 16),
(3, 3),
(3, 14),
(4, 8),
(5, 9),
(5, 13),
(6, 10),
(7, 4),
(7, 7),
(8, 5),
(9, 6);

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
(1, 4),
(2, 1),
(3, 4),
(4, 7),
(5, 3),
(6, 6),
(7, 7),
(8, 3),
(8, 6),
(9, 1),
(10, 6),
(11, 1),
(12, 4),
(12, 7),
(13, 3),
(13, 6),
(14, 4),
(14, 7),
(15, 4),
(16, 4),
(16, 7);

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
(8, 5, 'assets/image/book/5a.png', '2022-01-19', '2022-01-19'),
(9, 5, 'assets/image/book/5b.png', '2022-01-19', '2022-01-19'),
(10, 6, 'assets/image/book/6a.png', '2022-01-19', '2022-01-19'),
(11, 6, 'assets/image/book/6b.png', '2022-01-19', '2022-01-19'),
(14, 8, 'assets/image/book/8a.png', '2022-01-19', '2022-01-19'),
(15, 8, 'assets/image/book/8b.png', '2022-01-19', '2022-01-19'),
(16, 9, 'assets/image/book/9a.png', '2022-01-19', '2022-01-19'),
(17, 10, 'assets/image/book/10a.png', '2022-01-19', '2022-01-19'),
(18, 10, 'assets/image/book/10b.png', '2022-01-19', '2022-01-19'),
(19, 11, 'assets/image/book/11a.png', '2022-01-19', '2022-01-19'),
(20, 11, 'assets/image/book/11b.jpg', '2022-01-19', '2022-01-19'),
(21, 12, 'assets/image/book/12a.jpg', '2022-01-19', '2022-01-19'),
(22, 12, 'assets/image/book/12b.jpg', '2022-01-19', '2022-01-19'),
(23, 14, 'assets/image/book/14a.jpg', '2022-01-19', '2022-01-19'),
(24, 14, 'assets/image/book/14b.jpg', '2022-01-19', '2022-01-19'),
(25, 15, 'assets/image/book/17a.jpg', '2022-01-19', '2022-01-19'),
(26, 15, 'assets/image/book/17b.png', '2022-01-19', '2022-01-19');

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
(10, 4, '2021-03-03'),
(11, 3, '2020-07-10'),
(12, 1, '2021-06-13'),
(13, 4, '2020-03-10'),
(14, 3, '2019-02-06'),
(15, 1, '2021-03-06'),
(16, 9, '2019-02-13');

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
(1, 'admin', '96e79218965eb72c92a549dd5a330112', 'Shop', 'Admin', './assets/image/user/Book-Icon.png', '0000-00-00', '0964747288', 'Hà Nội', 'bookly@gmail.com', 1, 0, '2022-01-19 15:03:08', '2021-01-19 00:20:44'),
(2, 'phuongnh', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Hồng', 'Phương', './assets/image/user/thphuong(1).png', '0000-00-00', '02438692463', 'Hà Nội', 'phuongnh@gmail.com', 1, 2593500, '2022-01-19 16:37:04', '2021-02-19 11:07:32'),
(3, 'congvt', '96e79218965eb72c92a549dd5a330112', 'Vũ Tài', 'Công', 'assets/image/user/pic-1(1).png', '2020-02-01', '0989999123', 'Hải Dương', 'congvt@gmail.com', 1, 402000, '2022-01-19 14:23:07', '2021-03-19 11:18:42'),
(4, 'haiquang', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Quang', 'Hải', 'assets/image/user/pic-1(1).png', NULL, '0989999274', 'Yên Bái', 'haiquang@gamil.com', 1, 920000, '2021-04-19 11:38:50', '2021-04-19 11:38:50'),
(5, 'dungbt', '96e79218965eb72c92a549dd5a330112', 'Bùi Tiến', 'Dũng', 'assets/image/user/pic-5(1).png', '0000-00-00', '0989999273', 'Thanh Hóa', 'dungbt@gmail.com', 1, 0, '2022-01-19 15:15:02', '2021-05-19 11:49:52'),
(6, 'anleminh', '96e79218965eb72c92a549dd5a330112', 'Lê Minh', 'An', './assets/image/user/user(1).png', '2014-03-19', '0989999273', 'Thái bình', 'leminhan@gmail.com', 1, 318000, '2022-01-19 15:11:38', '2021-06-19 11:55:09'),
(7, 'minhlevu', '96e79218965eb72c92a549dd5a330112', 'Lê Vũ', 'Minh', 'assets/image/user/user(1).png', '0000-00-00', '0989999299', 'Ninh Bình', 'levuminh@gmail.com', 1, 0, '2022-01-19 15:14:42', '2021-07-19 06:00:40'),
(8, 'phuongnt', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Thanh', 'Phương', 'assets/image/user/pic-4(1).png', '0000-00-00', '0978999666', 'TP HCM', 'phuongnt@gmail.com', 1, 0, '2022-01-19 15:15:11', '2021-08-19 07:04:58'),
(9, 'duanlv', '96e79218965eb72c92a549dd5a330112', 'Lê Văn', 'Đức', 'assets/image/user/pic-1(1).png', NULL, '0989999273', 'Huế', 'duclv@gmail.com', 1, 286000, '2022-01-19 07:04:58', '2022-09-19 07:04:58'),
(10, 'thanhnv', '96e79218965eb72c92a549dd5a330112', 'Nguyễn Văn', 'Thanh', 'assets/image/user/pic-1(1).png', '0000-00-00', '0989999273', 'Đà Nẵng', 'thanhnv@gmail.com', 1, 0, '2022-01-19 15:15:26', '2021-10-19 07:07:51'),
(11, 'manhdd', '96e79218965eb72c92a549dd5a330112', 'Đỗ Duy', 'Mạnh', 'assets/image/user/user(1).png', '0000-00-00', '0989999273', 'Hà Giang', 'manhdd@gmail.com', 1, 0, '2022-01-19 15:14:20', '2021-11-19 07:07:51'),
(12, 'huypd', '96e79218965eb72c92a549dd5a330112', 'Phạm Đức', 'Huy', 'assets/image/user/pic-1(1)(1)(1).png', '0000-00-00', '0989999273', 'Nghệ An', 'huypd@gmail.com', 1, 0, '2022-01-19 14:24:45', '2021-12-19 07:07:51'),
(13, 'namnt', '4661e0c2a762a4872b22a1e822968755', 'Nguyễn Tuấn', 'Nam', './assets/image/user/user(1)(1).png', NULL, NULL, NULL, NULL, 1, 178000, '2022-01-19 16:29:41', '2022-01-19 15:27:39');

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
(7, 13),
(8, 12),
(9, 6),
(9, 11),
(9, 13),
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
(1, 'Tiểu thuyết', '2022-01-19 04:09:58'),
(2, 'Ngôn tình', '2022-01-19 04:09:58'),
(3, 'Kinh tế', '2022-01-19 04:09:58'),
(4, 'Kỹ năng sống', '2022-01-19 04:28:22'),
(5, 'Manga-Comic', '2022-01-19 04:28:22'),
(6, 'Kinh doanh', '2022-01-19 04:41:18'),
(7, 'Truyện ngắn', '2022-01-19 04:47:36'),
(8, 'Chính trị\r\n', '2022-01-19 09:46:54'),
(9, 'Tâm lý', '2022-01-19 09:46:54'),
(10, 'Ngoại ngữ', '2022-01-19 09:46:54');

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
(15, 9, 'Lê Văn Đức', '0989999273', 'Huế', '', 286000, '2021-02-19 18:20:48', NULL, 1, '2022-01-19 13:20:48'),
(16, 6, 'Lê Minh An', '0989999273', 'Thái bình', '', 170000, '2022-01-19 14:17:36', NULL, 1, '2022-01-19 14:17:36'),
(17, 2, 'Nguyễn Hồng Phương', '0385496431', 'Hà Nội', '', 176000, '2022-01-19 15:21:05', NULL, 1, '2022-01-19 15:21:05'),
(18, 13, 'Nguyễn Tuấn Nam', '0989788677', 'Hà Nội', '', 88000, '2022-01-19 15:28:20', NULL, 1, '2022-01-19 15:28:20'),
(19, 13, 'Nguyễn Tuấn Nam', '012345678', 'hà Nội', '', 90000, '2022-01-19 15:29:07', NULL, 1, '2022-01-19 15:29:07'),
(20, 2, 'Nguyễn Hồng Phương', '02438692463', 'Hà Nội', '', 85000, '2022-01-19 16:35:38', NULL, 1, '2022-01-19 16:35:38');

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
(26, 15, 4, 2, 119000, 20000, 90000),
(27, 16, 3, 2, 90000, 5000, 75000),
(28, 17, 2, 2, 100000, 12000, 80000),
(29, 18, 2, 1, 100000, 12000, 80000),
(30, 19, 5, 1, 100000, 10000, 80000),
(31, 20, 3, 1, 90000, 5000, 75000);

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
(10, 3, 12, NULL, '', 'Sách rất hay, Sẽ còn ủng hộ shop nhiều\r\n', '2022-01-19 13:19:37', '2022-01-19 13:19:37'),
(11, 2, 2, NULL, '', 'Sách rất hay, sẽ ủng hộ shop nhiều', '2022-01-19 15:20:09', '2022-01-19 15:20:09');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `books_library`
--
ALTER TABLE `books_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
