-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2015 at 06:21 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vietpro_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_status` int(4) NOT NULL,
  `cat_date` int(11) NOT NULL,
  `parent` int(10) NOT NULL,
  `cat_url` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_status`, `cat_date`, `parent`, `cat_url`) VALUES
(2, 'Thiết kế website', 1, 0, 0, 0),
(3, 'Đồ họa', 1, 0, 0, 0),
(4, 'Lập trình PHP nâng cao', 1, 1413599381, 0, 0),
(15, 'do hoa 1', 1, 0, 2, 0),
(16, 'do hoa 2', 1, 0, 2, 0),
(17, 'lap trinh 69', 1, 0, 4, 0),
(19, 'Tin tuc trong ngay', 1, 1436149533, 0, 0),
(20, 'cxcxcxcx', 1, 1436239125, 4, 0),
(21, 'yeu nhau di', 0, 1436239251, 17, 0),
(22, 'te le hot me', 1, 1436256174, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_category` int(11) NOT NULL,
  `news_image` varchar(100) NOT NULL,
  `news_status` tinyint(4) NOT NULL,
  `news_detail` longtext NOT NULL,
  `news_date` int(11) NOT NULL,
  `news_intro` text NOT NULL,
  `news_url` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_category`, `news_image`, `news_status`, `news_detail`, `news_date`, `news_intro`, `news_url`) VALUES
(8, 'Lập trình hướng đối tượng', 4, 'huong-dan-cai-dat-codeigniter-theo-mo-hinh-mvc-11.png', 1, '<p>Trong loạt b&agrave;i hướng đối tượng trước, ch&uacute;ng ta đ&atilde; c&oacute; dịp đi qua những kiến thức cơ bản v&agrave; nắm bắt những phương thức magic v&agrave; sự kế thừa trong hướng đối tượng. Ở b&agrave;i n&agrave;y ch&uacute;ng t&ocirc;i tiếp tục đưa tới cho bạn đọc những g&oacute;c cạnh ri&ecirc;ng biệt buộc lập tr&igrave;nh vi&ecirc;n phải tu&acirc;n thủ khi l&agrave;m việc theo m&ocirc; h&igrave;nh đội nh&oacute;m.   Ghi ch&uacute; m&atilde; lệnh với DocBlocks  Tuy l&agrave; một phần kh&ocirc;ng ch&iacute;nh thức của Lập Tr&igrave;nh Hướng Đối Tượng, nhưng c&aacute;c kiểu mẫu DocBlock comment được chấp nhận rộng r&atilde;i như một phương ph&aacute;p ch&uacute; th&iacute;ch trong c&aacute;c class. Ngo&agrave;i việc cung cấp một chuẩn comment cho c&aacute;c lập tr&igrave;nh vi&ecirc;n sử dụng khi lập tr&igrave;nh, n&oacute; c&ograve;n được sự chấp thuận v&agrave; hỗ trợ bởi nhiều nh&agrave; ph&aacute;t triển c&ocirc;ng cụ hỗ trợ lập tr&igrave;nh phổ biến như Eclipse v&agrave; NetBeans, v&agrave; sẽ được sử dụng để tạo ra c&aacute;c đoạn code hint (gợi &yacute; m&atilde; lệnh).</p>', 1413789631, 'Trong loạt bài hướng đối tượng trước, chúng ta đã có dịp đi qua những kiến thức cơ bản và nắm bắt những phương thức magic và sự kế thừa trong hướng đối tượng. Ở bài này chúng tôi tiếp tục đưa tới cho bạn đọc những góc cạnh riêng biệt buộc lập trình viên phải tuân thủ khi làm việc theo mô hình đội nhóm.\r\n ', ''),
(2, 'Học lập trình PHP như thế nào?', 4, 'huong-dan-cai-dat-codeigniter-theo-mo-hinh-mvc-12.png', 1, '<p>Ở b&agrave;i trước, ch&uacute;ng ta đ&atilde; t&igrave;m hiểu những kiến thức rất cơ bản về m&ocirc; h&igrave;nh lập tr&igrave;nh hướng đối tượng. Trong b&agrave;i lần n&agrave;y, ch&uacute;ng ta sẽ t&igrave;m hiểu về c&aacute;c phương thức magic. Một trong những yếu tố gi&uacute;p cho hướng đối tượng trở n&ecirc;n linh hoạt hơn rất nhiều.   Phương Thức Magic Trong OOP  Để gi&uacute;p cho việc sử dụng c&aacute;c object trở n&ecirc;n thuận tiện hơn, PHP đ&atilde; cung cấp một số phương thức magic, ch&uacute;ng thường được gọi khi c&oacute; những action nhất định thường xuy&ecirc;n xảy ra trong c&aacute;c object. Điều n&agrave;y cho ph&eacute;p lập tr&igrave;nh vi&ecirc;n thực thi một số t&aacute;c vụ hữu &iacute;ch dễ d&agrave;ng.  Sử dụng Constructors (h&agrave;m dựng) v&agrave; Destructors (h&agrave;m hủy)  Khi một object được khởi tạo, n&oacute; thường k&egrave;m theo nhu cầu thiết lập một v&agrave;i thứ ngo&agrave;i lề. Để xử l&yacute; điều n&agrave;y, PHP cung cấp phương thức magic__construct(), phương thức n&agrave;y sẽ tự động được gọi ngay khi một object mới được khởi tạo.  Để minh họa cho kh&aacute;i niệm constructor, ch&uacute;ng ta sẽ th&ecirc;m một h&agrave;m dựng (constructor) v&agrave;oMyclassc&oacute; nhiệm vụ xuất ra một th&ocirc;ng tin bất kỳ (do ch&uacute;ng ta thiết lập) ngay khi c&oacute; một object thể hiện của class được khởi tạo.</p>', 1413773064, 'Ở bài trước, chúng ta đã tìm hiểu những kiến thức rất cơ bản về mô hình lập trình hướng đối tượng. Trong bài lần này, chúng ta sẽ tìm hiểu về các phương thức magic. Một trong những yếu tố giúp cho hướng đối tượng trở nên linh hoạt hơn rất nhiều.', ''),
(7, 'Tìm hiểu mô hình trừu tượng', 4, 'indexd1.jpg', 0, '<p>Phương thức v&agrave; lớp trừu tượng   Lớp trừu tượng l&agrave; lớp sẽ chứa c&aacute;c phương thức trừu tượng. V&agrave; c&aacute;c lớp kế thừa lớp trừu tượng sẽ phải định nghĩa c&aacute;c phương thức trừu tượng ấy. Để tu&acirc;n thủ một r&agrave;ng buộc về mặt tổ chức của m&ocirc; h&igrave;nh trừu tượng.   Để định nghĩa một lớp, một phương thức l&agrave; trừu tượng ta c&oacute; c&uacute; ph&aacute;p:      Sự trừu tượng c&oacute; thể được hiểu đơn giản như sau:  Giả sử, kiến tr&uacute;c để x&acirc;y dựng 1 chiếc xe sẽ bao gồm: B&aacute;nh xe, y&ecirc;n xe, thắng.  Như vậy, những m&ocirc; h&igrave;nh xe m&aacute;y, xe đạp, xe hơi cũng được gọi l&agrave; xe khi ch&uacute;ng thỏa m&atilde;n những yếu tố m&agrave; kiến tr&uacute;c một chiếc xe quy định. Diễn giải lại điều ở tr&ecirc;n bằng h&igrave;nh ảnh để thấy r&otilde; điều đ&oacute;: Lập tr&igrave;nh hướng đối tượng - t&igrave;m hiểu m&ocirc; h&igrave;nh trừu tượng Qua biểu đồ n&agrave;y ch&uacute;ng ta thầy rằng, khi chiếc xe đạp, xe m&aacute;y, xe hơi kế thừa m&ocirc; h&igrave;nh xe. N&oacute; sẽ phải định nghĩa 3 phương thức trừu tượng l&agrave; banhxe(), yenxe(),thangxe(). D&ugrave; rằng ở mỗi thể loại xe đều c&oacute; những đặc th&ugrave; ri&ecirc;ng biệt.   Như vậy c&oacute; thể hiểu, m&ocirc; h&igrave;nh trừu tượng trong thực tế được sử dụng để quản l&yacute; m&ocirc; h&igrave;nh m&atilde; nguồn. N&oacute; định ra một quy định cơ bản, v&agrave; y&ecirc;u cầu bất kể một lớp n&agrave;o, hoặc phương thức n&agrave;o khi muốn l&agrave;m việc với n&oacute;, th&igrave; buộc phải định nghĩa theo c&aacute;c quy tắc m&agrave; n&oacute; đ&atilde; đặt ra. Nhằm đảm bảo t&iacute;nh nhất qu&aacute;n v&agrave; dễ kiểm so&aacute;t m&atilde; nguồn hơn đối với c&aacute;c dự &aacute;n c&oacute; quy m&ocirc; lớn v&agrave; phức tạp.   Tuy nhi&ecirc;n, v&igrave; lớp trừu tượng vẫn được xem l&agrave; một lớp. Thế n&ecirc;n, ngo&agrave;i chức năng quy định lớp trừu tượng ra, th&igrave; n&oacute; vẫn c&oacute; thể khởi tạo c&aacute;c thuộc t&iacute;nh hoặc phương thức kh&aacute;c để phục vụ cho việc sử dụng của những phương thức kế thừa n&oacute;.</p>', 1413789508, 'Sau loạt bài về kiến thức cơ bản như tìm hiểu khái niệm, phương thức magic, sự kế thừa, các uy tắc chung. Trong bài này, chúng ta sẽ tiếp tục mở rộng các kiến thức trong lập trình hướng đối tượng. Cụ thể, chúng ta sẽ cùng phân tích và tím hiểu về mô hình trừu tượng trong hướng đối tượng.', ''),
(9, 'Tìm hiểu các phương thức magic', 4, 'indexd11.jpg', 0, '<p>Ở b&agrave;i trước, ch&uacute;ng ta đ&atilde; t&igrave;m hiểu những kiến thức rất cơ bản về m&ocirc; h&igrave;nh lập tr&igrave;nh hướng đối tượng. Trong b&agrave;i lần n&agrave;y, ch&uacute;ng ta sẽ t&igrave;m hiểu về c&aacute;c phương thức magic. Một trong những yếu tố gi&uacute;p cho hướng đối tượng trở n&ecirc;n linh hoạt hơn rất nhiều.   Phương Thức Magic Trong OOP  Để gi&uacute;p cho việc sử dụng c&aacute;c object trở n&ecirc;n thuận tiện hơn, PHP đ&atilde; cung cấp một số phương thức magic, ch&uacute;ng thường được gọi khi c&oacute; những action nhất định thường xuy&ecirc;n xảy ra trong c&aacute;c object. Điều n&agrave;y cho ph&eacute;p lập tr&igrave;nh vi&ecirc;n thực thi một số t&aacute;c vụ hữu &iacute;ch dễ d&agrave;ng.  Sử dụng Constructors (h&agrave;m dựng) v&agrave; Destructors (h&agrave;m hủy)  Khi một object được khởi tạo, n&oacute; thường k&egrave;m theo nhu cầu thiết lập một v&agrave;i thứ ngo&agrave;i lề. Để xử l&yacute; điều n&agrave;y, PHP cung cấp phương thức magic__construct(), phương thức n&agrave;y sẽ tự động được gọi ngay khi một object mới được khởi tạo.  Để minh họa cho kh&aacute;i niệm constructor, ch&uacute;ng ta sẽ th&ecirc;m một h&agrave;m dựng (constructor) v&agrave;oMyclassc&oacute; nhiệm vụ xuất ra một th&ocirc;ng tin bất kỳ (do ch&uacute;ng ta thiết lập) ngay khi c&oacute; một object thể hiện của class được khởi tạo.</p>', 1413789681, 'Ở bài trước, chúng ta đã tìm hiểu những kiến thức rất cơ bản về mô hình lập trình hướng đối tượng. Trong bài lần này, chúng ta sẽ tìm hiểu về các phương thức magic. Một trong những yếu tố giúp cho hướng đối tượng trở nên linh hoạt hơn rất nhiều.', ''),
(13, 'Tự học thiết kế website', 2, 'thudmbt1.png', 0, '<p>Ở b&agrave;i trước, ch&uacute;ng ta đ&atilde; t&igrave;m hiểu những kiến thức rất cơ bản về m&ocirc; h&igrave;nh  lập tr&igrave;nh hướng đối tượng. Trong b&agrave;i lần n&agrave;y, ch&uacute;ng ta sẽ t&igrave;m hiểu về  c&aacute;c phương thức magic. Một trong những yếu tố gi&uacute;p cho hướng đối tượng  trở n&ecirc;n linh hoạt hơn rất nhiều.   Phương Thức Magic Trong OOP  Để gi&uacute;p cho việc sử dụng c&aacute;c object trở n&ecirc;n thuận tiện hơn, PHP đ&atilde; cung  cấp một số phương thức magic, ch&uacute;ng thường được gọi khi c&oacute; những action  nhất định thường xuy&ecirc;n xảy ra trong c&aacute;c object. Điều n&agrave;y cho ph&eacute;p lập  tr&igrave;nh vi&ecirc;n thực thi một số t&aacute;c vụ hữu &iacute;ch dễ d&agrave;ng.  Sử dụng Constructors (h&agrave;m dựng) v&agrave; Destructors (h&agrave;m hủy)  Khi một object được khởi tạo, n&oacute; thường k&egrave;m theo nhu cầu thiết lập một  v&agrave;i thứ ngo&agrave;i lề. Để xử l&yacute; điều n&agrave;y, PHP cung cấp phương thức  magic__construct(), phương thức n&agrave;y sẽ tự động được gọi ngay khi một  object mới được khởi tạo.  Để minh họa cho kh&aacute;i niệm constructor, ch&uacute;ng ta sẽ th&ecirc;m một h&agrave;m dựng  (constructor) v&agrave;oMyclassc&oacute; nhiệm vụ xuất ra một th&ocirc;ng tin bất kỳ (do  ch&uacute;ng ta thiết lập) ngay khi c&oacute; một object thể hiện của class được khởi  tạo.</p>', 1414026528, 'Tóm tắt', ''),
(14, 'Học thiết kế web cho người không biết lập trình', 2, 'web.jpg', 1, '<p><strong>&ldquo;Học thiết kế web cho người kh&ocirc;ng biết lập tr&igrave;nh&rdquo; l&agrave; kh&oacute;a học  được thiết kế đặc biệt d&agrave;nh cho những người kh&ocirc;ng biết &nbsp;lập tr&igrave;nh, kỹ  thuật m&aacute;y t&iacute;nh&hellip; sử dụng CMS WordPress.&nbsp;Chỉ cần 2 ng&agrave;y cuối tuần, bạn sẽ  th&agrave;nh chuy&ecirc;n gia. Tự tay x&acirc;y dựng những website đầy gi&aacute; trị với c&aacute;c t&iacute;nh  năng cao cấp.</strong></p>\r\n<p><strong>Bạn muốn l&agrave;m được landing page b&aacute;n h&agrave;ng giống website n&agrave;y?</strong></p>', 1414027840, '', ''),
(15, 'Hướng dẫn truy xuất dữ liệu từ XML bằng PHP', 4, 'thudmbt.png', 1, '<p>PHP N&acirc;ng Cao &ndash; B&agrave;i trước th&igrave; ch&uacute;ng ta đ&atilde; t&igrave;m hiểu  C&aacute;ch tạo một t&agrave;i liệu XML. Tiếp theo b&agrave;i h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c  bạn d&ugrave;ng PHP để truy xuất lấy dữ liệu từ một t&agrave;i &hellip;</p>\r\n<div class="info-conten">\r\n<p>&ndash; B&agrave;i trước th&igrave; ch&uacute;ng ta đ&atilde; t&igrave;m hiểu Tiếp theo b&agrave;i h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c bạn d&ugrave;ng PHP để truy xuất lấy dữ liệu từ một t&agrave;i liệu XML như thể n&agrave;o.</p>\r\n<p>Để c&aacute;c bạn dễ h&igrave;nh dung hơn th&igrave; m&igrave;nh sẽ đưa ra một v&igrave; dụ minh họa cụ  thể như sau. Ở đ&acirc;y m&igrave;nh sẽ kh&ocirc;ng n&oacute;i lại cụ thể c&aacute;c kiến thức về XML nếu  bạn n&agrave;o chưa r&otilde; th&igrave; c&oacute; thể xem lại c&aacute;c b&agrave;i viết trước của m&igrave;nh nh&eacute;.</p>\r\n<p>Trước ti&ecirc;n c&aacute;c bạn tạo cho m&igrave;nh một file <strong>test.xml</strong> trong thư mục <strong>\\wamp\\www</strong>. Với nội dung đoạn m&atilde; như sau.</p>\r\n</div>', 1414028161, '', ''),
(16, 'Hướng dẫn truy xuất dữ liệu từ XML', 4, 'thumb.php_.png', 0, '<h2 class="summary">\r\n<p>PHP N&acirc;ng Cao &ndash; B&agrave;i trước th&igrave; ch&uacute;ng ta đ&atilde; t&igrave;m hiểu  C&aacute;ch tạo một t&agrave;i liệu XML. Tiếp theo b&agrave;i h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c  bạn d&ugrave;ng PHP để truy xuất lấy dữ liệu từ một t&agrave;i &hellip;</p>\r\n</h2>\r\n<p>&ndash; B&agrave;i trước th&igrave; ch&uacute;ng ta đ&atilde; t&igrave;m hiểu&nbsp; Tiếp theo b&agrave;i h&ocirc;m nay m&igrave;nh sẽ hướng dẫn c&aacute;c bạn d&ugrave;ng PHP để truy xuất lấy dữ liệu từ một t&agrave;i liệu XML như thể n&agrave;o.</p>\r\n<p>Để c&aacute;c bạn dễ h&igrave;nh dung hơn th&igrave; m&igrave;nh sẽ đưa ra một v&igrave; dụ minh họa cụ  thể như sau. Ở đ&acirc;y m&igrave;nh sẽ kh&ocirc;ng n&oacute;i lại cụ thể c&aacute;c kiến thức về XML nếu  bạn n&agrave;o chưa r&otilde; th&igrave; c&oacute; thể xem lại c&aacute;c b&agrave;i viết trước của m&igrave;nh nh&eacute;.</p>\r\n<p>Trước ti&ecirc;n c&aacute;c bạn tạo cho m&igrave;nh một file <strong>test.xml</strong> trong thư mục <strong>\\wamp\\www</strong>. Với nội dung đoạn m&atilde; như sau.</p>', 1414028378, '', ''),
(22, '10 kỹ năng quan trọng mọi nhà thiết kế đồ hoạ cần có', 3, 'ky_nang_nha_thiet_ke_do_hoa_06(6).jpg', 0, '<p>Ng&agrave;y nay, c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Internet đ&atilde; tạo n&ecirc;n những thay đổi  s&acirc;u sắc trong c&aacute;ch thức xử l&yacute; c&ocirc;ng việc của ch&uacute;ng ta. Trong doanh  nghiệp, sự thay đổi lớn nhất, dễ nhận thấy nhất l&agrave; c&aacute;ch thức quảng b&aacute;  h&igrave;nh ảnh, sản phẩm, dịch vụ đến kh&aacute;ch h&agrave;ng, đối t&aacute;c; c&aacute;ch thức thu thập  th&ocirc;ng tin, giao dịch với kh&aacute;ch h&agrave;ng, đối t&aacute;c trong v&agrave; ngo&agrave;i nước th&ocirc;ng  qua Internet v&agrave; Website.</p>\r\n<p>Chuy&ecirc;n ng&agrave;nh Thiết kế lập tr&igrave;nh Website trang bị cho người học kiến  thức nền tảng v&agrave; n&acirc;ng cao về những giải ph&aacute;p to&agrave;n diện, ph&ugrave; hợp nhất với  doanh nghiệp. Chuy&ecirc;n ng&agrave;nh n&agrave;y kh&ocirc;ng chỉ tập trung v&agrave;o t&iacute;nh kỹ thuật  khi x&acirc;y dựng Website, m&agrave; c&ograve;n trau chuốt về giao diện, gi&uacute;p x&acirc;y dựng bộ  mặt chuy&ecirc;n nghiệp cho Website v&agrave; c&aacute;c ứng dụng Web. B&ecirc;n cạnh đ&oacute;, phi&ecirc;n  bản WebEngineering.2014 c&ograve;n mở rộng ứng dụng c&aacute;c xu thế mới về Mobile  Web, HTML5, CSS3 v&agrave; tối ưu h&oacute;a cho thiết bị di động, nhằm đ&aacute;p ứng nhu  cầu thực tiễn về ph&aacute;t triển ứng dụng di động của c&aacute;c doanh nghiệp.</p>', 1414032096, '', ''),
(29, 'Học đồ họa như thế nào?', 2, 'ky_nang_nha_thiet_ke_do_hoa_101.jpg', 0, '<p>Ngày nay, công nghệ thông tin và Internet đã tạo nên những thay đổi  sâu sắc trong cách thức xử lý công việc của chúng ta. Trong doanh  nghiệp, sự thay đổi lớn nhất, dễ nhận thấy nhất là cách thức quảng bá  hình ảnh, sản phẩm, dịch vụ đến khách hàng, đối tác; cách thức thu thập  thông tin, giao dịch với khách hàng, đối tác trong và ngoài nước thông  qua Internet và Website.</p>\r\n<p>Chuyên ngành Thiết kế lập trình Website trang bị cho người học kiến  thức nền tảng và nâng cao về những giải pháp toàn diện, phù hợp nhất với  doanh nghiệp. Chuyên ngành này không chỉ tập trung vào tính kỹ thuật  khi xây dựng Website, mà còn trau chuốt về giao diện, giúp xây dựng bộ  mặt chuyên nghiệp cho Website và các ứng dụng Web. Bên cạnh đó, phiên  bản WebEngineering.2014 còn mở rộng ứng dụng các xu thế mới về Mobile  Web, HTML5, CSS3 và tối ưu hóa cho thiết bị di động, nhằm đáp ứng nhu  cầu thực tiễn về phát triển ứng dụng di động của các doanh nghiệp.</p>', 1414033209, '', ''),
(33, 'Học lập trình PHP như thế nào?', 4, 'anh1.png', 1, '<p>Ng&agrave;y nay, c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Internet đ&atilde; tạo n&ecirc;n những thay đổi s&acirc;u sắc trong c&aacute;ch thức xử l&yacute; c&ocirc;ng việc của ch&uacute;ng ta. Trong doanh nghiệp, sự thay đổi lớn nhất, dễ nhận thấy nhất l&agrave; c&aacute;ch thức quảng b&aacute; h&igrave;nh ảnh, sản phẩm, dịch vụ đến kh&aacute;ch h&agrave;ng, đối t&aacute;c; c&aacute;ch thức thu thập th&ocirc;ng tin, giao dịch với kh&aacute;ch h&agrave;ng, đối t&aacute;c trong v&agrave; ngo&agrave;i nước th&ocirc;ng qua Internet v&agrave; Website.</p>\r\n\r\n<p>Chuy&ecirc;n ng&agrave;nh Thiết kế lập tr&igrave;nh Website trang bị cho người học kiến thức nền tảng v&agrave; n&acirc;ng cao về những giải ph&aacute;p to&agrave;n diện, ph&ugrave; hợp nhất với doanh nghiệp. Chuy&ecirc;n ng&agrave;nh n&agrave;y kh&ocirc;ng chỉ tập trung v&agrave;o t&iacute;nh kỹ thuật khi x&acirc;y dựng Website, m&agrave; c&ograve;n trau chuốt về giao diện, gi&uacute;p x&acirc;y dựng bộ mặt chuy&ecirc;n nghiệp cho Website v&agrave; c&aacute;c ứng dụng Web. B&ecirc;n cạnh đ&oacute;, phi&ecirc;n bản WebEngineering.2014 c&ograve;n mở rộng ứng dụng c&aacute;c xu thế mới về Mobile Web, HTML5, CSS3 v&agrave; tối ưu h&oacute;a cho thiết bị di động, nhằm đ&aacute;p ứng nhu cầu thực tiễn về ph&aacute;t triển ứng dụng di động của c&aacute;c doanh nghiệp.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1419492538, '', ''),
(26, 'Khóa học Thiết kế website cho người không chuyên', 2, 'indexd.jpg', 0, '<p>C&aacute;ch đ&acirc;y 5 năm, t&ocirc;i c&oacute; nhờ một anh bạn đến sửa m&aacute;y t&iacute;nh cho t&ocirc;i. Sau  khi anh n&agrave;y ngồi click chuột v&agrave;i ph&aacute;t, m&aacute;y đ&atilde; sửa xong v&agrave; thu của t&ocirc;i  50.000 VND.</p>\r\n<p>T&ocirc;i bảo: &ldquo;Click chuột c&oacute; v&agrave;i c&aacute;i m&agrave; thu 50.000 VND, l&agrave;m d&acirc;n c&ocirc;ng nghệ như anh sướng nhỉ.&rdquo;</p>', 1414032938, '', ''),
(27, 'Học thiết kế website để làm gì?', 2, 'ky_nang_nha_thiet_ke_do_hoa_06(6)1.jpg', 0, '<p>Ng&agrave;y nay, c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Internet đ&atilde; tạo n&ecirc;n những thay đổi  s&acirc;u sắc trong c&aacute;ch thức xử l&yacute; c&ocirc;ng việc của ch&uacute;ng ta. Trong doanh  nghiệp, sự thay đổi lớn nhất, dễ nhận thấy nhất l&agrave; c&aacute;ch thức quảng b&aacute;  h&igrave;nh ảnh, sản phẩm, dịch vụ đến kh&aacute;ch h&agrave;ng, đối t&aacute;c; c&aacute;ch thức thu thập  th&ocirc;ng tin, giao dịch với kh&aacute;ch h&agrave;ng, đối t&aacute;c trong v&agrave; ngo&agrave;i nước th&ocirc;ng  qua Internet v&agrave; Website.</p>\r\n<p>Chuy&ecirc;n ng&agrave;nh Thiết kế lập tr&igrave;nh Website trang bị cho người học kiến  thức nền tảng v&agrave; n&acirc;ng cao về những giải ph&aacute;p to&agrave;n diện, ph&ugrave; hợp nhất với  doanh nghiệp. Chuy&ecirc;n ng&agrave;nh n&agrave;y kh&ocirc;ng chỉ tập trung v&agrave;o t&iacute;nh kỹ thuật  khi x&acirc;y dựng Website, m&agrave; c&ograve;n trau chuốt về giao diện, gi&uacute;p x&acirc;y dựng bộ  mặt chuy&ecirc;n nghiệp cho Website v&agrave; c&aacute;c ứng dụng Web. B&ecirc;n cạnh đ&oacute;, phi&ecirc;n  bản WebEngineering.2014 c&ograve;n mở rộng ứng dụng c&aacute;c xu thế mới về Mobile  Web, HTML5, CSS3 v&agrave; tối ưu h&oacute;a cho thiết bị di động, nhằm đ&aacute;p ứng nhu  cầu thực tiễn về ph&aacute;t triển ứng dụng di động của c&aacute;c doanh nghiệp.</p>', 1414033007, '', ''),
(28, 'Học thiết kế web b', 15, 'thumbnail.png', 0, '<p>Ngày nay, công nghệ thông tin và Internet đã tạo nên những thay đổi sâu sắc trong cách thức xử lý công việc của chúng ta. Trong doanh nghiệp, sự thay đổi lớn nhất, dễ nhận thấy nhất là cách thức quảng bá hình ảnh, sản phẩm, dịch vụ đến khách hàng, đối tác; cách thức thu thập thông tin, giao dịch với khách hàng, đối tác trong và ngoài nước thông qua Internet và Website.</p>\r\n\r\n<p>Chuyên ngành Thiết kế lập trình Website trang bị cho người học kiến thức nền tảng và nâng cao về những giải pháp toàn diện, phù hợp nhất với doanh nghiệp. Chuyên ngành này không chỉ tập trung vào tính kỹ thuật khi xây dựng Website, mà còn trau chuốt về giao diện, giúp xây dựng bộ mặt chuyên nghiệp cho Website và các ứng dụng Web. Bên cạnh đó, phiên bản WebEngineering.2014 còn mở rộng ứng dụng các xu thế mới về Mobile Web, HTML5, CSS3 và tối ưu hóa cho thiết bị di động, nhằm đáp ứng nhu cầu thực tiễn về phát triển ứng dụng di động của các doanh nghiệp.</p>\r\n', 1436113500, '', ''),
(23, ' Một số ứng dụng của đồ họa máy tính', 3, 'ky_nang_nha_thiet_ke_do_hoa_10.jpg', 0, '<p>Ng&agrave;y nay, c&ocirc;ng nghệ th&ocirc;ng tin v&agrave; Internet đ&atilde; tạo n&ecirc;n những thay đổi  s&acirc;u sắc trong c&aacute;ch thức xử l&yacute; c&ocirc;ng việc của ch&uacute;ng ta. Trong doanh  nghiệp, sự thay đổi lớn nhất, dễ nhận thấy nhất l&agrave; c&aacute;ch thức quảng b&aacute;  h&igrave;nh ảnh, sản phẩm, dịch vụ đến kh&aacute;ch h&agrave;ng, đối t&aacute;c; c&aacute;ch thức thu thập  th&ocirc;ng tin, giao dịch với kh&aacute;ch h&agrave;ng, đối t&aacute;c trong v&agrave; ngo&agrave;i nước th&ocirc;ng  qua Internet v&agrave; Website.</p>\r\n<p>Chuy&ecirc;n ng&agrave;nh Thiết kế lập tr&igrave;nh Website trang bị cho người học kiến  thức nền tảng v&agrave; n&acirc;ng cao về những giải ph&aacute;p to&agrave;n diện, ph&ugrave; hợp nhất với  doanh nghiệp. Chuy&ecirc;n ng&agrave;nh n&agrave;y kh&ocirc;ng chỉ tập trung v&agrave;o t&iacute;nh kỹ thuật  khi x&acirc;y dựng Website, m&agrave; c&ograve;n trau chuốt về giao diện, gi&uacute;p x&acirc;y dựng bộ  mặt chuy&ecirc;n nghiệp cho Website v&agrave; c&aacute;c ứng dụng Web. B&ecirc;n cạnh đ&oacute;, phi&ecirc;n  bản WebEngineering.2014 c&ograve;n mở rộng ứng dụng c&aacute;c xu thế mới về Mobile  Web, HTML5, CSS3 v&agrave; tối ưu h&oacute;a cho thiết bị di động, nhằm đ&aacute;p ứng nhu  cầu thực tiễn về ph&aacute;t triển ứng dụng di động của c&aacute;c doanh nghiệp.</p>', 1414032173, '', ''),
(47, 'Học codeigniter frame chuẩn ', 4, 'excel1.png', 0, '<p>Noi dung bai viet</p>\r\n', 1419513277, '', 'hoc-codeigniter-frame-chuan-'),
(48, 'te le 2345 555', 0, '11393226_379553262235835_959650407214124459_n.jpg', 1, 'fdfdfdfdfd', 1436007001, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `price` float NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `name_c` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `price`, `content`, `name_c`) VALUES
(1, 'PHP and MySQL Web Development', 'php-001.jpg', 54000, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', ''),
(2, 'PHP 6 and MySQL 5 for Dynamic Web Sites', 'php002.jpg', 49000, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', ''),
(4, 'PHP Solutions: Dynamic Web Design Made Easy', 'php004.jpg', 75000, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', ''),
(5, 'Beginning PHP and MySQL: From Novice to Professional', 'php005.jpg', 54000, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', ''),
(6, 'Programming PHP', 'php006.jpg', 39000, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', ''),
(8, 'PHP Cookbook: Solutions and Examples for PHP Programmers', 'php008.jpg', 46000, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', ''),
(11, 'php1', NULL, 11000, '', ''),
(12, 'php12', NULL, 12000, '', ''),
(13, 'php13', NULL, 14000, '', ''),
(14, 'php14', NULL, 15000, '', ''),
(15, 'php15', NULL, 16000, '', ''),
(16, 'php16', NULL, 17000, '', ''),
(10, 'Murachs PHP and MySQL', 'php010.jpg', 54800, 'Duis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. \r\n\r\nDuis autem vel eum iriure dolor in hendreri in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adi piscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\nUt wisi enim ad minim veniam. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_status` tinyint(4) NOT NULL,
  `user_password` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_status`, `user_password`) VALUES
(1, 'admin', 'admin@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'admin121', 'test1@gmail.com', 0, '1f32aa4c9a1d2ea010adcf2348166a04'),
(3, 'admin123456', 'test1@gmail.com', 0, 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'admin122', 'test1@gmail.com', 0, '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'phong', 'phong@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE IF NOT EXISTS `useronline` (
`id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `local` varchar(100) NOT NULL,
  `tgtmp` int(15) NOT NULL,
  `status` tinyint(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=672 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useronline`
--

INSERT INTO `useronline` (`id`, `ip`, `local`, `tgtmp`, `status`) VALUES
(671, '127.0.0.1', '/blog/index.php', 1427787470, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uservisit`
--

CREATE TABLE IF NOT EXISTS `uservisit` (
`id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uservisit`
--

INSERT INTO `uservisit` (`id`, `ip`) VALUES
(62, '127.0.0.1'),
(61, '127.0.0.1'),
(60, '127.0.0.1'),
(59, '127.0.0.1'),
(58, '127.0.0.1'),
(57, '127.0.0.1'),
(56, '127.0.0.1'),
(55, '127.0.0.1'),
(54, '127.0.0.1'),
(53, '127.0.0.1'),
(52, '127.0.0.1'),
(51, '127.0.0.1'),
(50, '127.0.0.1'),
(49, '127.0.0.1'),
(48, '127.0.0.1'),
(47, '127.0.0.1'),
(46, '127.0.0.1'),
(45, '127.0.0.1'),
(44, '127.0.0.1'),
(43, '127.0.0.1'),
(42, '127.0.0.1'),
(41, '127.0.0.1'),
(40, '127.0.0.1'),
(63, '127.0.0.1'),
(64, '127.0.0.1'),
(65, '127.0.0.1'),
(66, '127.0.0.1'),
(67, '127.0.0.1'),
(68, '127.0.0.1'),
(69, '127.0.0.1'),
(70, '127.0.0.1'),
(71, '127.0.0.1'),
(72, '127.0.0.1'),
(73, '127.0.0.1'),
(74, '127.0.0.1'),
(75, '127.0.0.1'),
(76, '127.0.0.1'),
(77, '127.0.0.1'),
(78, '127.0.0.1'),
(79, '127.0.0.1'),
(80, '127.0.0.1'),
(81, '127.0.0.1'),
(82, '127.0.0.1'),
(83, '127.0.0.1'),
(84, '127.0.0.1'),
(85, '127.0.0.1'),
(86, '127.0.0.1'),
(87, '127.0.0.1'),
(88, '127.0.0.1'),
(89, '127.0.0.1'),
(90, '127.0.0.1'),
(91, '127.0.0.1'),
(92, '127.0.0.1'),
(93, '127.0.0.1'),
(94, '127.0.0.1'),
(95, '127.0.0.1'),
(96, '127.0.0.1'),
(97, '127.0.0.1'),
(98, '127.0.0.1'),
(99, '127.0.0.1'),
(100, '127.0.0.1'),
(101, '127.0.0.1'),
(102, '127.0.0.1'),
(103, '127.0.0.1'),
(104, '127.0.0.1'),
(105, '127.0.0.1'),
(106, '127.0.0.1'),
(107, '127.0.0.1'),
(108, '127.0.0.1'),
(109, '127.0.0.1'),
(110, '127.0.0.1'),
(111, '127.0.0.1'),
(112, '127.0.0.1'),
(113, '127.0.0.1'),
(114, '127.0.0.1'),
(115, '127.0.0.1'),
(116, '127.0.0.1'),
(117, '127.0.0.1'),
(118, '127.0.0.1'),
(119, '127.0.0.1'),
(120, '127.0.0.1'),
(121, '127.0.0.1'),
(122, '127.0.0.1'),
(123, '127.0.0.1'),
(124, '127.0.0.1'),
(125, '127.0.0.1'),
(126, '127.0.0.1'),
(127, '127.0.0.1'),
(128, '127.0.0.1'),
(129, '127.0.0.1'),
(130, '127.0.0.1'),
(131, '127.0.0.1'),
(132, '127.0.0.1'),
(133, '127.0.0.1'),
(134, '127.0.0.1'),
(135, '127.0.0.1'),
(136, '127.0.0.1'),
(137, '127.0.0.1'),
(138, '127.0.0.1'),
(139, '127.0.0.1'),
(140, '127.0.0.1'),
(141, '127.0.0.1'),
(142, '127.0.0.1'),
(143, '127.0.0.1'),
(144, '127.0.0.1'),
(145, '127.0.0.1'),
(146, '127.0.0.1'),
(147, '127.0.0.1'),
(148, '127.0.0.1'),
(149, '127.0.0.1'),
(150, '127.0.0.1'),
(151, '127.0.0.1'),
(152, '127.0.0.1'),
(153, '127.0.0.1'),
(154, '127.0.0.1'),
(155, '127.0.0.1'),
(156, '127.0.0.1'),
(157, '127.0.0.1'),
(158, '127.0.0.1'),
(159, '127.0.0.1'),
(160, '127.0.0.1'),
(161, '127.0.0.1'),
(162, '127.0.0.1'),
(163, '127.0.0.1'),
(164, '127.0.0.1'),
(165, '127.0.0.1'),
(166, '127.0.0.1'),
(167, '127.0.0.1'),
(168, '127.0.0.1'),
(169, '127.0.0.1'),
(170, '127.0.0.1'),
(171, '127.0.0.1'),
(172, '127.0.0.1'),
(173, '127.0.0.1'),
(174, '127.0.0.1'),
(175, '127.0.0.1'),
(176, '127.0.0.1'),
(177, '127.0.0.1'),
(178, '127.0.0.1'),
(179, '127.0.0.1'),
(180, '127.0.0.1'),
(181, '127.0.0.1'),
(182, '127.0.0.1'),
(183, '127.0.0.1'),
(184, '127.0.0.1'),
(185, '127.0.0.1'),
(186, '127.0.0.1'),
(187, '127.0.0.1'),
(188, '127.0.0.1'),
(189, '127.0.0.1'),
(190, '127.0.0.1'),
(191, '127.0.0.1'),
(192, '127.0.0.1'),
(193, '127.0.0.1'),
(194, '127.0.0.1'),
(195, '127.0.0.1'),
(196, '127.0.0.1'),
(197, '127.0.0.1'),
(198, '127.0.0.1'),
(199, '127.0.0.1'),
(200, '127.0.0.1'),
(201, '127.0.0.1'),
(202, '127.0.0.1'),
(203, '127.0.0.1'),
(204, '127.0.0.1'),
(205, '127.0.0.1'),
(206, '127.0.0.1'),
(207, '127.0.0.1'),
(208, '127.0.0.1'),
(209, '127.0.0.1'),
(210, '127.0.0.1'),
(211, '127.0.0.1'),
(212, '127.0.0.1'),
(213, '127.0.0.1'),
(214, '127.0.0.1'),
(215, '127.0.0.1'),
(216, '127.0.0.1'),
(217, '127.0.0.1'),
(218, '127.0.0.1'),
(219, '127.0.0.1'),
(220, '127.0.0.1'),
(221, '127.0.0.1'),
(222, '127.0.0.1'),
(223, '127.0.0.1'),
(224, '127.0.0.1'),
(225, '127.0.0.1'),
(226, '127.0.0.1'),
(227, '127.0.0.1'),
(228, '127.0.0.1'),
(229, '127.0.0.1'),
(230, '127.0.0.1'),
(231, '127.0.0.1'),
(232, '127.0.0.1'),
(233, '127.0.0.1'),
(234, '127.0.0.1'),
(235, '127.0.0.1'),
(236, '127.0.0.1'),
(237, '127.0.0.1'),
(238, '127.0.0.1'),
(239, '127.0.0.1'),
(240, '127.0.0.1'),
(241, '127.0.0.1'),
(242, '127.0.0.1'),
(243, '127.0.0.1'),
(244, '127.0.0.1'),
(245, '127.0.0.1'),
(246, '127.0.0.1'),
(247, '127.0.0.1'),
(248, '127.0.0.1'),
(249, '127.0.0.1'),
(250, '127.0.0.1'),
(251, '127.0.0.1'),
(252, '127.0.0.1'),
(253, '127.0.0.1'),
(254, '127.0.0.1'),
(255, '127.0.0.1'),
(256, '127.0.0.1'),
(257, '127.0.0.1'),
(258, '127.0.0.1'),
(259, '127.0.0.1'),
(260, '127.0.0.1'),
(261, '127.0.0.1'),
(262, '127.0.0.1'),
(263, '127.0.0.1'),
(264, '127.0.0.1'),
(265, '127.0.0.1'),
(266, '127.0.0.1'),
(267, '127.0.0.1'),
(268, '127.0.0.1'),
(269, '127.0.0.1'),
(270, '127.0.0.1'),
(271, '127.0.0.1'),
(272, '127.0.0.1'),
(273, '127.0.0.1'),
(274, '127.0.0.1'),
(275, '127.0.0.1'),
(276, '127.0.0.1'),
(277, '127.0.0.1'),
(278, '127.0.0.1'),
(279, '127.0.0.1'),
(280, '127.0.0.1'),
(281, '127.0.0.1'),
(282, '127.0.0.1'),
(283, '127.0.0.1'),
(284, '127.0.0.1'),
(285, '127.0.0.1'),
(286, '127.0.0.1'),
(287, '127.0.0.1'),
(288, '127.0.0.1'),
(289, '127.0.0.1'),
(290, '127.0.0.1'),
(291, '127.0.0.1'),
(292, '127.0.0.1'),
(293, '127.0.0.1'),
(294, '127.0.0.1'),
(295, '127.0.0.1'),
(296, '127.0.0.1'),
(297, '127.0.0.1'),
(298, '127.0.0.1'),
(299, '127.0.0.1'),
(300, '127.0.0.1'),
(301, '127.0.0.1'),
(302, '127.0.0.1'),
(303, '127.0.0.1'),
(304, '127.0.0.1'),
(305, '127.0.0.1'),
(306, '127.0.0.1'),
(307, '127.0.0.1'),
(308, '127.0.0.1'),
(309, '127.0.0.1'),
(310, '127.0.0.1'),
(311, '127.0.0.1'),
(312, '127.0.0.1'),
(313, '127.0.0.1'),
(314, '127.0.0.1'),
(315, '127.0.0.1'),
(316, '127.0.0.1'),
(317, '127.0.0.1'),
(318, '127.0.0.1'),
(319, '127.0.0.1'),
(320, '127.0.0.1'),
(321, '127.0.0.1'),
(322, '127.0.0.1'),
(323, '127.0.0.1'),
(324, '127.0.0.1'),
(325, '127.0.0.1'),
(326, '127.0.0.1'),
(327, '127.0.0.1'),
(328, '127.0.0.1'),
(329, '127.0.0.1'),
(330, '127.0.0.1'),
(331, '127.0.0.1'),
(332, '127.0.0.1'),
(333, '127.0.0.1'),
(334, '127.0.0.1'),
(335, '127.0.0.1'),
(336, '127.0.0.1'),
(337, '127.0.0.1'),
(338, '127.0.0.1'),
(339, '127.0.0.1'),
(340, '127.0.0.1'),
(341, '127.0.0.1'),
(342, '127.0.0.1'),
(343, '127.0.0.1'),
(344, '127.0.0.1'),
(345, '127.0.0.1'),
(346, '127.0.0.1'),
(347, '127.0.0.1'),
(348, '127.0.0.1'),
(349, '127.0.0.1'),
(350, '127.0.0.1'),
(351, '127.0.0.1'),
(352, '127.0.0.1'),
(353, '127.0.0.1'),
(354, '127.0.0.1'),
(355, '127.0.0.1'),
(356, '127.0.0.1'),
(357, '127.0.0.1'),
(358, '127.0.0.1'),
(359, '127.0.0.1'),
(360, '127.0.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservisit`
--
ALTER TABLE `uservisit`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=672;
--
-- AUTO_INCREMENT for table `uservisit`
--
ALTER TABLE `uservisit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=361;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
