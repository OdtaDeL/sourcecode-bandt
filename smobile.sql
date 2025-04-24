-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2024 lúc 06:44 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `smobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_taikhoan`, `id_sanpham`, `noidung`) VALUES
(19, 15, 3, 'Sản phẩm dùng rất tốt.'),
(20, 15, 4, 'Sản phẩm đẹp. Tính năng phù hợp với nhu cầu cá nhân. Đặc biệt camera chụp rất đẹp.'),
(21, 1, 10, 'đã mua hàng ở cửa hàng mình nhiều lần. Rất ưng ý.'),
(22, 1, 16, 'Tôi rất thích thiết kế của sản phẩm này. Xứng danh sản phẩm top đầu của Samsung\r\n'),
(23, 13, 8, 'Một sản phẩm thật tuyệt vời'),
(25, 5, 5, 'Cấu Hình tốt mọi người nên mua'),
(26, 18, 5, 'xịn quá\r\n'),
(27, 5, 3, '1'),
(28, 5, 3, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`id`, `id_donhang`, `id_sanpham`, `soluong`, `gia`) VALUES
(37, 43, 5, 1, 7490000),
(38, 43, 4, 1, 9190000),
(41, 45, 9, 2, 11790000),
(42, 46, 17, 2, 4990000),
(43, 46, 18, 2, 9200000),
(45, 48, 11, 1, 29190000),
(47, 50, 17, 3, 4990000),
(48, 50, 10, 1, 27000000),
(50, 51, 3, 1, 39490000),
(55, 49, 19, 1, 10020000),
(56, 53, 3, 1, 39490000),
(57, 49, 3, 1, 39490000),
(58, 54, 3, 1, 39490000),
(59, 55, 4, 1, 9190000),
(60, 55, 10, 1, 27000000),
(61, 56, 3, 1, 39490000),
(62, 57, 3, 1, 39490000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(11) NOT NULL,
  `danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `danhmuc`) VALUES
(1, 'Apple'),
(3, 'Samsung'),
(4, 'Xiaomi'),
(5, 'Oppo'),
(6, 'Nokia'),
(7, 'Realme'),
(8, 'Vsmart'),
(9, 'ASUS'),
(16, 'Vivo'),
(18, 'A1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `diachi` text DEFAULT NULL,
  `thoigian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_taikhoan`, `tongtien`, `status`, `diachi`, `thoigian`) VALUES
(43, 15, 16680000, 3, 'Quận 1, Tphcm', '05-02-2022 21:08:43'),
(45, 16, 23580000, 3, 'quận 3', '10-03-2022 21:46:44'),
(46, 13, 28380000, 4, '120 cmt8 quận 10', '29-10-2021 02:09:03'),
(48, 13, 29190000, 1, 'quận 6', '06-05-2022 02:12:00'),
(49, 5, 49510000, 1, ' TPHCM', '25-04-2024 21:54:22'),
(50, 15, 41970000, 2, 'quận 7', '07-05-2022 13:55:09'),
(51, 18, 39490000, 3, 'quận 12', '08-05-2022 20:01:14'),
(52, 15, 0, 0, NULL, NULL),
(53, 1, 39490000, 1, 'tphcm', '25-04-2024 20:31:37'),
(54, 5, 39490000, 1, 'hh', '25-04-2024 23:57:02'),
(55, 5, 0, 0, NULL, NULL),
(56, 20, 39490000, 1, ' b', '26-04-2024 09:38:33'),
(57, 13, 39490000, 1, 'n', '26-04-2024 14:11:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `masx` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `manhinh` varchar(255) NOT NULL,
  `hedieuhanh` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `camera` varchar(255) NOT NULL,
  `pin` int(11) NOT NULL,
  `ram` int(11) NOT NULL,
  `bonho` varchar(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh1` text NOT NULL,
  `anh2` text NOT NULL,
  `anh3` text NOT NULL,
  `chitiet` text NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_danhmuc`, `masx`, `ten`, `manhinh`, `hedieuhanh`, `cpu`, `camera`, `pin`, `ram`, `bonho`, `gia`, `anh1`, `anh2`, `anh3`, `chitiet`, `mota`, `luotxem`, `status`) VALUES
(3, 1, 1, 'iPhone 13 Pro Max 512GB - Xanh lá | Chính hãng VN/A', '6.7 inches', 'IOS', 'A15 Bionic', 'Camera góc rộng: 12MP, ƒ/1.5Camera góc siêu rộng: 12MP, ƒ/1.8Camera tele: 12MP, ƒ/2.8Carmera trước: 12MP, ƒ/2.2', 4350, 6, '512GB', 39490000, 'product01.png', 'product02.png', 'product03.png', 'Đúng như dự kiến, Apple mới đây đã giới thiệu tuỳ chọn màu sắc mới của iPhone 13 và iPhone 13 Pro. Mặc dù có cùng tên gọi là màu xanh, tuy nhiên tông màu của hai phiên bản tiêu chuẩn và Pro không hoàn toàn giống nhau và khác nhau một chút.\r\nCụ thể, iPhone 13 và 13 mini sẽ có tên là “Green” (Xanh), còn hai bản Pro sẽ là “Alpine Green” (Xanh Alpine), trong đó màu xanh của bản Pro sẽ có tông nhạt hơn so với màu xanh trên các bản tiêu chuẩn. Tất nhiên, về chất liệu hoàn thiện, với iPhone 13 và 13 mini, máy được hoàn thiện từ nhôm ở khung viền và mặt lưng kính, còn các bản Pro sẽ là khung viền thép không gỉ và mặt lưng kính nhám mờ.\r\nTuỳ chọn màu xanh mới sẽ bổ sung thêm vào các tuỳ chọn màu sắc hiện tại của iPhone 13 series, gồm năm màu của iPhone 13 và 13 mini, bốn màu của iPhone 13 Pro và Pro Max.\r\n', 'Tuỳ chọn màu sắc mới của dòng iPhone 13 series mang tới một tông màu độc đáo hơn với mức giá không đổi.', 1571, 0),
(4, 5, 1, 'OPPO Reno7 Z (5G)', '6.43 inches', 'Android 11 - ColorOS 12', 'Snapdragon 695 5G 8 nhân', 'Cụm 3 camera Chính 64 MP & Phụ 2 MP, 2 MP Camera trước	16 MP', 4500, 8, '128GB', 9190000, 'OPPO Reno7 Z (5G) 1.webp', 'OPPO Reno7 Z (5G) 2.webp', 'OPPO Reno7 Z (5G) 3.jpg', 'Điện thoại OPPO Reno7 Z 5G - Siêu chụp ảnh, siêu mạnh mẽ\r\nThời gian qua giới công nghệ đang dần chú ý đến những chi tiết hé lộ của OPPO Reno7 Z chiếc smartphone 5G mới nhất của OPPO thuộc phân khúc tầm trung nhưng chứa đựng cấu hình không thua gì điện thoại phân khúc cao cấp sẽ khuấy động làng công nghệ trong năm 2022.\r\n\r\nThiết kế ấn tượng cuốn hút đa góc cạnh\r\nĐiện thoại OPPO Reno 7Z 5G được ra mắt thuộc dòng Reno7 series mới đây của hãng OPPO. Vì thuộc cùng \"họ hàng\" Reno7, nên máy có ngoại hình khá giống với Reno 7 (bản Trung Quốc) trước đó, với khung viền vuông dát phẳng cùng thân hình vừa tay cầm giúp làm nên chất lượng toàn bộ thân máy. Và chất liệu nguyên khối làm nên khung viền máy cũng góp phần gia tăng độ bền cho sản phẩm.\r\n\r\nKiểu dáng của OPPO Reno7 Z 5G thể hiện nên tính linh hoạt cao. Dù được làm nên từ chất liệu bền bỉ, tổng thể thân máy lại có trọng lượng nhẹ tay giúp tạo độ thoải mái khi bạn cầm máy ngay trên tay. Độ mỏng gọn gàng của thân máy không chỉ tăng thêm độ sang trọng cho bề ngoài, mà còn giúp bạn cầm giữ máy trên tay cực kỳ chắc chắn, hạn chế rơi vỡ.', 'Trải nghiệm mượt mà các tác vụ - Bộ xử lý Snapdragon 695 mạnh mẽ RAM 8 GB\r\nNăng lượng bất tận cả ngày - Dung lượng pin lớn 4500 mAh và sạc nhanh 60W\r\nTrọn vẹn từng khoảnh khắc - Cụm 3 camera sau cảm biến lên đến 64MP, chụp chân dung chuyên nghiệp\r\nMàn hình hiển thị sắc nét, màu sắc sống động - Màn hình AMOLED 6.43\"\", tần số quét 60 Hz', 285, 0),
(5, 4, 1, 'Xiaomi Mi 11 Lite 5G', '6.55 inches', 'Android 11, MIUI 12', 'Snapdragon 780G (5 nm)', 'Camera chính: 64 MP, f/1.8 Camera góc rộng: 8 MP, f/2.2, 119˚ Camera cận cảnh: 5 MP, f/2.4 Camera trước	20 MP, f/2.5', 4250, 8, '128 GB', 7490000, 'Xiaomi Mi 11 Lite 5G 1.webp', 'Xiaomi Mi 11 Lite 5G 2.webp', 'Xiaomi Mi 11 Lite 5G 3.webp', 'So sánh nhanh Xiaomi Mi 11 Lite 5G và phiên bản 4G\r\nMi 11 Lite 5G và 4G là bộ đôi vừa được Xiaomi trình làng. So sánh nhanh thì cả hai máy sở hữu cùng kích thước màn hình, thông số cụm camera sau và dung lượng pin. Nhưng bên cạnh đó thì phiên bản 5G vẫn còn một số điểm khác biệt so với bản 4G.\r\n\r\n', 'Không gian hiển thị thoải mái, chuyển động mượt - Màn hình tràn viền 6,55 inch, tần số quét 90Hz, HDR10+\r\nHiệu năng mạnh mẽ, ổn định - Chip Snapdragon 780G trên 5nm, 128GB bộ nhớ và 8GB RAM\r\nCamera chụp ảnh ấn tượng - Cụm 3 camera sau 64MP, chụp đêm rõ nét\r\nSạc nhanh, trải nghiệm suốt ngày dài - Dung lượng pin 4250 mAh và hỗ trợ sạc nhanh 33W', 140, 0),
(8, 5, 1, 'OPPO Find X3 Pro 5G', '6.7 inches', 'ColorOS 11.2, nền tảng Android 11', 'Snapdragon 888 (5 nm)', '	Camera chính: 50 MP, f/1.8, 1/1.56\", 1.0µm, PDAF, OIS Camera tele: 13 MP, f/2.4, 52mm PDAF, zoom quang 5x Camera góc rộng: 50 MP, f/2.2, 110˚, 1/1.56\", 1.0µm, omnidirectional PDAF Camera macro: 3 MP, f/3.0 Camera trước	32 MP, f/2.4, 26mm (wide), 1/2.8\", ', 4500, 12, '256  GB', 18790000, 'OPPO Find X3 Pro 5G 1.webp', 'OPPO Find X3 Pro 5G 2.webp', 'OPPO Find X3 Pro 5G 3.webp', 'Đánh giá Oppo Find X3 Pro 5G – Hiệu năng dẫn đầu, màn hình chiếm trọn\r\nFind X là dòng sản phẩm được OPPO chăm chút nhiều nhất, đặc biệt là những công nghệ hoàn toàn hiện đại. Bằng chứng Find X3 Pro mang đến vẻ ngoài mới, camera selfie được ẩn dưới màn hình, cùng cấu hình mạnh mẽ đến từ chip Snapdragon 865.\r\n\r\nHoàn thiện nguyên khối, màn hình 2K rực rỡ\r\nĐiện thoại Oppo Find X3 Pro 5G gây ấn tượng mạnh bởi thiết kế sang trọng với các góc được làm bo cong. Bên cạnh đó, toàn bộ thân máy được làm từ nhôm nguyên khối đem đến khả năng chống chọi lực va đập hiệu quả.', 'Thiết kế hoàn thiện nguyên khối, bền bỉ - Thiết kế nhôm nguyên khối sang trọng, chống chọi lực va đập hiệu quả\r\nMàn hình sắc nét, hiển thị màu sắc rực rỡ - Màn hình 6.7\" AMOLED đạt chuẩn 2K, 120Hz, hiển thị 1 tỷ màu\r\nCấu hình mạnh mẽ, chiến game cực đỉnh - Bộ vi xử lý Snapdragon 888, 12GB RAM và 256GB bộ nhớ trong\r\nCamera chụp ảnh ấn tượng, chống rung ổn định - Bộ 4 camera lên đến 50MP, hỗ trợ HDR và tối ưu chụp đêm sắc nét\r\nDung lượng pin khá lớn đi kèm nhiều tiện ích - Viên pin dung lượng 4500 mAh, sạc nhanh 65W, sạc không dây 30W', 94, 0),
(9, 1, 1, 'iPhone 11 64GB I Chính hãng VN/A', '6.1 inches', 'iOS 13', 'A13 Bionic', 'Camera kép 12MP: - Camera góc rộng: ƒ/1.8 aperture - Camera siêu rộng: ƒ/2.4 aperture Camera trước	12 MP, ƒ/2.2 aperture', 3110, 4, '64GB', 11790000, 'iPhone 11 64GB _ 4.webp', 'iPhone 11 64GB _ 2.webp', 'iPhone 11 64GB _ 3.webp', 'Tin tức mới nhất về điện thoại iPhone 11\r\n(Cập nhật ngày 20/4/2022)\r\n\r\nĐầu quý 2 năm 2022, thị trường công nghệ bắt đầu nhộn nhịp trở lại, các đại lý bán lẻ đặc biệt là CellphoneS tung ra nhiều chương trình ưu đãi giảm giá hấp dẫn. Trong đó không thể không nhắc đến chính là iPhone 11 giảm cực sốc so với thời điểm trước đó.\r\n\r\nCụ thể, giá iPhone 11 đã giảm về mức chỉ quanh 12 triệu đồng, khiến nhu cầu mua sắm tăng chóng mặt so với các tháng trước. Không những vậy, khách hàng còn nhận được ưu đãi hấp dẫn khi thu cũ lên đời tại CellphoneS, đồng thời còn được giảm giá thêm khi thanh toán qua ví Moca hay thẻ tín dụng VP Bank. \r\n\r\niPhone 11 được nâng cấp gì so với iPhone XR?\r\nSo với iPhone XR thì siêu phẩm Apple năm 2019 có nhiều nâng cấp đáng giá, trong đó nổi bật là con chip xử lý, bộ nhớ RAM, dung lượng pin, đặc biệt là camera trước và sau. Dưới đây là bảng so sánh thông số kỹ thuật của iPhone 11 và XR', 'Apple luôn làm hài lòng tín đồ iFan với các dòng iPhone trong từng phân khúc giá. Đặc biệt, phiên bản iPhone 11 vừa ra mắt nhưng đã chiếm lĩnh được thị trường smartphone trên toàn thế giới với giá cả phải chăng. Cùng tìm hiểu chi tiết rõ hơn qua bài viết sau đây để có quyết định có nên mua hay không nhé!', 24, 0),
(10, 1, 8, 'iPhone 12 Pro Max 128GB I Chính hãng VN/A', '6.7 inches', 'iOS 14.1', 'Apple A14 Bionic (5 nm)', '12 MP, f/2.2, 23mm (wide), 1/3.6', 3452, 6, '128GB', 27000000, 'iPhone 12 Pro Max 128GB _ 4.webp', 'iPhone 12 Pro Max 128GB _ 1.jpg', 'iPhone 12 Pro Max 128GB _ 2.jpg', 'Điện thoại iPhone 12 Pro Max: Nâng tầm đẳng cấp sử dụng\r\nCứ mỗi năm, đến dạo cuối tháng 8 và gần đầu tháng 9 thì mọi thông tin sôi sục mới về chiếc iPhone mới lại xuất hiện. Apple năm nay lại ra thêm một chiếc iPhone mới với tên gọi mới là iPhone 12 Pro Max, đây là một dòng điện thoại mới và mạnh mẽ nhất của nhà Apple năm nay. Mời bạn tham khảo thêm một số mô tả sản phẩm bên dưới để bạn có thể ra quyết định mua sắm.\r\n\r\nMàn hình 6.7 inches Super Retina XDR\r\nNăm nay, công nghệ màn hình trên 12 Pro Max cũng được đổi mới và trang bị tốt hơn cùng kích thước lên đến 6.7 inch, lớn hơn so với điện thoại iPhone 12 thường. Với công nghệ màn hình OLED cho khả năng hiển thị hình ảnh lên đến 2778 x 1284 pixels. Bên cạnh đó, màn hình này còn cho độ sáng tối đa cao nhất lên đến 800 nits, luôn đảm bảo cho bạn một độ sáng cao và dễ nhìn nhất ngoài nắng.', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 6GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp ảnh siêu đỉnh - Night Mode , thuật toán Deep Fusion, Smart HDR 3, camera LiDar\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', 18, 0),
(11, 3, 9, 'Samsung Galaxy S22 Ultra (8GB - 128GB)', '6.8 inches', 'Android 12, One UI 4.1', 'Qualcomm Snapdragon 8 Gen 1 (4 nm)', '108 MP, f/1.8 góc rộng 10 MP, f/4.9 10 MP, f/2.4 12 MP, f/2.2 góc siêu rộng Camera trước	40 MP, f/2.2', 5000, 8, '128', 29190000, 'Samsung Galaxy S22 Ultra 1.webp', 'Samsung Galaxy S22 Ultra 2.webp', 'Samsung Galaxy S22 Ultra 3.webp', 'Thông tin mới nhất về Samsung Galaxy S22 Ultra 5G\r\nĐúng như theo các đồn đoán trước đó, mẫu flagship mới của Samsung được ra mắt với tên gọi là Galaxy S22 Ultra. Mẫu điện thoại cao cấp đến từ Samsung này có nhiều thay đổi trong thiết kế và cấu hình. Vậy S22 Ultra có gì mới, giá bao nhiêu và có nên mua không? Hãy cùng tìm hiểu ngay sau đây.\r\nNhững thông tin mới nhất về Galaxy S22 Ultra - chiếc flagship mới nhất đến từ hãng công nghệ Hàn Quốc đang khiến giới công nghệ háo hức. Những nâng cấp lớn về hiệu năng, dung lượng pin, và trên hết là camera sau chính là những điểm khiến nó trở thành siêu phẩm trong phân khúc cao cấp. Dưới đây là những thông tin cần biết về dòng điện thoại vừa ra mắt của Samsung.\r\n\r\nSamsung S22 Ultra chiếm tới 80% tổng số đơn đặt hàng trước\r\n(Cập nhật 19/02)\r\n\r\nTuy chưa chính thức mở bán nhưng Samsung S22 Ultra và hai người anh em đã được Samsung cho phép đặt hàng trước. Và kết quả S22 Ultra là mẫu điện thoại bán chạy nhất trong bộ ba vừa ra mắt, chiếm tới 80% tổng số đơn đặt trước. Với nhiều tính năng giống dòng Note, S22 Ultra có tỉ lệ đặt cao hơn từ 4-6 lần tổng số đơn của S22 và S22 Plus.\r\n\r\nCó gì bên trong hộp Samsung galaxy S22 Ultra?\r\nBên trong hộp Samsung S22 Ultra có gì? Cũng như nhiều phiên bản trước, hộp đựng Samsung Galaxy S22 sở hữu một thiết kế theo phong cách tối giản với tone màu chủ đạo là đen. Ngay sau nắp hộp là chiếc điện thoại Samsung S22 Ultra được nhiều người dùng mong chờ.\r\n\r\nPhía dưới nữa là các phụ kiện quen thuộc không thể thiếu như cáp sạc, sách hướng dẫn sử dụng, que chọc sim. Toàn bộ các phụ kiện này được bọc kỹ trong một lớp giấy cứng. Samsung S22 Ultra sẽ không có củ sạc, tương tự nhiều flagship hiện nay.', 'Vi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm)\r\nCamera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh\r\nS Pen đầu tiên trên Galaxy S - Độ trễ thấp, dễ thao tác\r\nDung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 45W', 15, 0),
(12, 6, 9, 'Nokia G21', '6.5 inches', 'Android 11, 2 năm nâng cấp hệ điều hành. 3 năm cập nhật bảo mật', 'Unisoc T606 (12 nm)', 'Chính 50 MP & Phụ 2 MP, 2 MP Camera trước	8 MP', 5050, 4, '128 GB', 3990000, 'Nokia G21 1.jpg', 'Nokia G21 2.jpg', 'Nokia G21 3.webp', 'Điện thoại Nokia G21 - Cấu hình tuyệt vời dành cho mọi người\r\nDù nằm trong phân khúc phổ thông, Nokia G21 sở hữu loạt thông số ấn tượng như camera 50 MP, màn hình lớn sắc nét, vi xử lý tốt cùng pin \"trâu\" giúp cho đây là sản phẩm smartphone dễ tiếp cận và phù hợp cho tất cả người dùng công nghệ.\r\n\r\nThiết kế đẹp tinh tế, màn hình 6.5 inch quan sát sắc nét\r\nNokia G21 mang vẻ ngoài tinh tế với ngôn ngữ thiết kế đậm chất Bắc Âu đặc trưng của hãng. Lớp vỏ máy được chế tạo từ vật liệu vừa bền bỉ, vừa đạt trọng lượng nhẹ giúp cho máy linh hoạt khi cầm trên tay. Mặt lưng bo cong với nhiều tùy chọn màu sắc giúp điện thoại toát lên nét đẹp bắt mắt trên tay bạn.', 'Không gian giải trí bất tận - Màn hình lớn 6.5\" IPS LCD, tần số quét 90 Hz\r\nHiệu năng ổn định, xử lí các tác vụ thông thường - Chipset Unisoc T606 (12 nm), RAM 4 GB\r\nBa camera siêu nét đến 50 MP chụp trọn cảnh quan cùng nhiều chế độ chụp\r\nDung lượng pin 5050mAh đủ nguồn năng lượng dùng cả ngày, sạc nhanh 18W', 10, 0),
(13, 6, 19, 'Nokia 5.4', '6.39 inches', 'Android 10', 'Qualcomm SM6115 Snapdragon 662 (11 nm)', '48 MP, f/1.8, (wide), PDAF 5 MP, 13mm (ultrawide) 2 MP, (macro) 2 MP, (depth) Camera trước	16 MP, f/2.0, (wide)', 4000, 4, '128 GB', 3990000, 'Nokia 5.4 1.webp', 'Nokia 5.4 2.jpg', 'Nokia 5.4 3.jpg', 'Điện thoại Nokia 5.4 – Màn hình lớn, hiệu năng lớn\r\nNokia chắc chắn là một trong những thương hiệu không còn xa lạ với người dùng Việt Nam nữa phải không nào. Nokia gần đây hãng vừa tiếp tục viết tiếp câu chuyện về một huyền thoại khi cho ra mắt thị trường chiếc Nokia 5.4 với nhiều nâng cấp cùng cấu hình mạnh mẽ. Hứa hẹn sẽ làm hài lòng tất cả những người sử dụng, ngay cả những người khó tính nhất.\r\n\r\nThiết kế nguyên khối bền bỉ, màn hình IPS LCD 6.39 inch sắc nét\r\nMặc dù là một chiếc smartphone được sản xuất cho phân khúc thị trường tầm trung nhưng điện thoại Nokia 5.4 vẫn mang trong mình thiết kế không hề lỗi thời và kém sang chút nào. Sở hữu thiết kế lấy cảm ứng từ Phần Lan, mặt lưng làm từ nhựa phủ bóng giả kính vô cùng sang trọng và bắt mắt.\r\n\r\nMáy có kích thước vô cùng nhỏ gọn cho người dùng dễ dàng cầm nắm khi sử dụng. Ngoài ra nhà sản xuất còn cho ra mắt 2 phiên bản màu xanh thiên hà và tím hoàng hôn cho người dùng thêm nhiều sự lựa chọn.\r\n\r\n', 'Chơi game, duyệt web thả ga - Màn hình đục lỗi 6.39inch rộng lớn, độ phân giải HD+ sắc nét\r\nBắt trọn thế giới muôn màu - Camera 4 ống kính 48MP và camera trước 16MP\r\nThời lượng pin lên đến 2 ngày - Pin lớn 4000mAh, công nghệ pin thích ứng hỗ trợ bởi AI\r\nHiệu năng ổn định, vận hành mượt mà - Snapdragon 662 hỗ trợ AI cho xử lý các tác vụ', 3, 0),
(14, 1, 19, 'iPhone SE 2022 | Chính hãng VN/A', '4.7 inches', 'iOS 15', 'Chip A15 Bionic 6 nhân', 'Camera góc rộng: 12MP, ƒ/1.8 Camera trước	7MP, ƒ/2.2', 1820, 4, '64 GB', 12490000, 'iPhone SE 2022 1.webp', 'iPhone SE 2022 2.webp', 'iPhone SE 2022 3.webp', 'Thông tin mới nhất về điện thoại iPhone SE 2022\r\n\r\nNhững thông tin mới nhất về các dòng iPhone vừa ra mắt luôn mang được sự mong chờ và nhiều sự háo hức của người hâm mộ. Có thể nói rằng chiếc iPhone SE là dòng smartphone kích thước nhỏ, mang đến sự cơ động nhưng sở hữu cấu hình mạnh mẽ. Song liệu thế hệ thứ 3 có những điểm nào nổi bật, iPhone SE 2022 có giá bao nhiêu và khi nào ra mắt? Hãy cùng chúng tôi tìm hiểu nhé!\r\n\r\niPhone SE 2022 được nâng cấp gì so với iPhone SE 2020?\r\n(Cập nhật 29/03/2022)\r\n\r\nSở hữu một vẻ ngoài có nhiều tương tự, vậy điện thoại iPhone SE 2022 với iPhone SE 2020 có gì giống và khác?', 'Hiệu năng vượt trội với vi xử lý mới nhất - Chip Apple A15 tiên tiến nhất, cân mọi tác vụ\r\nTận hưởng không gian hiển thị sắc nét - Màn hình Liquid Retina nhỏ gọn 4.7 inch tỷ lệ 16:9\r\nGiải trí trọn vẹn ngày dài - Viên pin có nhiều cải tiến giúp bạn không còn lo lắng khi sử dụng\r\nCamera ghi trọn mọi khoảnh khắc - Camera đơn 12 MP f/1.8 hỗ trợ công nghệ Deep Fusion', 0, 0),
(15, 3, 12, 'Samsung Galaxy Note 20 Ultra 5G', '6.9 inches', 'Android 10, One UI 2.1', 'Exynos 990 (7 nm+)', '108 MP, f/1.8, 26mm (wide), 1/1.33\", 0.8µm, PDAF, Laser AF, OIS 12 MP, f/3.0, 103mm (periscope telephoto), 1.0µm, PDAF, OIS, 5x optical zoom, 50x hybrid zoom 12 MP, f/2.2, 13mm (ultrawide), 1/2.55\", 1.4µm Camera trước	10 MP, f/2.2, 26mm (wide), 1/3.2\", 1.', 4500, 12, '256 GB', 18990000, 'Samsung Galaxy Note 20 Ultra 5G 1.webp', 'Samsung Galaxy Note 20 Ultra 5G 2.webp', 'Samsung Galaxy Note 20 Ultra 5G 3.jpg', 'Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội\r\nBên cạnh biên bản Galaxy Note 20 thường, Samsung còn cho ra mắt Note 20 Ultra 5G cho khả năng kết nối dữ liệu cao cùng thiết kế nguyên khối sang trọng, bắt mắt. Đây sẽ là sự lựa chọn hoàn hảo dành cho bạn để sử dụng mà không bị lỗi thời sau thời gian dài ra mắt.\r\n\r\nNgoài ra, bạn có thể tham khảo Galaxy Z Fold 3 5G nếu bạn cần sự khác biệt và khẳng định đẳng cấp.\r\n\r\nThiết kế khung nhôm nguyên khối, mặt sau kính cường lực sang trọng\r\nLà một sản phẩm có kích thước màn hình lớn vì vậy Samsung đã trang bị cho Galaxy Note 20 Ultra 5G  với công nghệ kết nối dữ liệu mạnh mẽ cùng thiết kế nguyên khối. Giúp các linh kiện bên trong điện thoại được cố định chắc chắn đảm bảo mọi thứ bên trong luôn được an toàn. Không những vậy khung nhôm tạo trên những đường viền cực kỳ sang trọng và bắt mắt khi nhìn vào.\r\n\r\n', 'Sang trọng, cao cấp - Màu sắc độc đáo và cuốn hút\r\nChụp ảnh chuyên nghiệp - Bộ 3 camera hỗ trợ Zoom xa đến 30X\r\nGhi chú nhanh chóng, chính xác với bút S- Pen thế hệ mới\r\nChơi game đỉnh cao - Exynos 990 7nm mạnh mẽ, hiệu năng xử lý vượt trội', 14, 0),
(16, 3, 12, 'Samsung Galaxy Z Flip3 5G', '6.7 inches', 'Android 11', 'Snapdragon 888 8 (5nm)', 'Camera góc siêu rộng: 12MP, f/2.2, Dual Pixel AF, OIS Camera góc rộng: 12MP, f/1.8 Camera trước	Góc rộng 10MP, f/2.4', 3300, 8, '128 GB', 18790000, 'Samsung Galaxy Z Flip3 5G 1.webp', 'Samsung Galaxy Z Flip3 5G 2.webp', 'Samsung Galaxy Z Flip3 5G 3.webp', 'Samsung Galaxy Z Flip 3 (5G) – Điện thoại màn hình gập độc đáo\r\nBên cạnh các siêu phẩm của dòng S hay dòng Note thì Samsung còn trình làng một dòng điện thoại siêu đặc biệt. Và cho đến 2021 hãng đã phát triển đến thế hệ thứ ba, với tên gọi Galaxy Z Flip 3. Ngoài sở hữu thiết kế gập độc đáo thì nó còn sở hữu tính năng gì mới hãy cùng chúng tôi xem qua bài viết bên dưới đây nhé.\r\n\r\nZ Flip 3 5G đã được Samsung trình làng cùng với điện thoại Galaxy Z Fold 3 5G tại sự kiện ra mắt trực tuyến Unpacked diễn ra vào ngày 11/8.\r\n\r\nThiết kế đậm chất đặc trưng, màn hình dẻo tiên phong\r\nSamsung Galaxy Z Flip 3 sở hữu một phong cách thiết kế gập vỏ sò cùng khung nhôm aluminum chắc chắn. Khi gấp gọn, điện thoại chỉ có kích thước 4.2 inch vô cùng nhỏ gọn nhưng mở râ lại là một chiếc điện thoại thông minh màn hình lớn mang lại khả năng khám phá không giới hạn. Màn hình ngoài của thiết bị được trang bị mặt kính Gorilla Glass siêu bền bỉ.', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp - Thiết kế gập mở vỏ sò, khung nhôm aluminum chắc chắn\r\nMàn hình kép ấn tượng - Màn hình chính: 6.7\", màn hình phụ: 1.9\" AMOLED\r\nHệ thống camera siêu ấn tượng - Bộ 3 ống kính camera 12MP, camera selfie sắc nét\r\nHiệu năng ấn tượng, làm chủ tốc độ - Snapdragon 888 kết hợp RAM 8GB, hỗ trợ 5G', 7, 1),
(17, 6, 18, 'Nokia G50 (5G)', '6.82 inches', 'Android 11 (64bit)| 2 năm cập nhật bảo mật hàng tháng', 'Snapdragon 480 8 nhân 5G', 'Camera góc rộng: 48 MP, PDAF Camera góc siêu rộng: 5 MP Camera cận cảnh: 2 MP Camera cảm biến độ sâu: 2 MP Camera trước	16 MP', 5000, 6, '128 GB', 4990000, 'Nokia G50 (5G) 1.jpeg', 'Nokia G50 (5G) 2.webp', 'Nokia G50 (5G) 3.webp', 'Đánh giá Nokia G50 - Thỏa sức lướt mạng 5G siêu tốc\r\nHãng điện thoại lừng danh Nokia vẫn chưa ngừng cuộc chơi trong thị phần smartphone. Bằng chứng là việc hãng vừa tung ra thị trường sản phẩm mới mang tên Nokia G50 - hỗ trợ mạng 5G với mức giá phổ thông cho tất cả người yêu công nghệ.\r\n\r\nPhong cách độc đáo, màn hình hiển thị rộng\r\nĐiện thoại Nokia G50 5G tiếp tục đi theo ngôn ngữ thiết kế đã làm nên thành công của dòng smartphone Nokia G - phong cách độc đáo. Từng đường nét trên chiếc smartphone này mang hình dáng tối giản, tinh tế và thời thượng, với lựa chọn màu Ocean Blue và màu Midnight Sun bắt mắt. Đồng thời, điện thoại Nokia cũng có thân máy bền bỉ, mỏng gọn và nhẹ nhàng trên tay giúp người dùng sử dụng thoải mái.', 'Màn hình giải trí siêu lớn - Màn hinh rộng 6.82\" HD+, viền mỏng\r\nBắt trọn mọi khoảnh khắc - Bộ 3 camera sau 48 MP sắc nét, đa dạng chế độ chụp\r\nCấu hình ổn định, trải nghiệm giải trí mượt mà - Chip Snapdragon 480, kết nối 5G\r\nThời lượng sử dụng pin lâu - Viên phim 5000 mAh, sạc nhanh 18 W', 12, 0),
(18, 4, 10, 'Xiaomi Redmi Note 11 Pro Plus 5G', '6.67 inches', 'Android 11, MIUI 12.5', 'MediaTek Dimensity 920 5G (6 nm)', 'Camera góc rộng: 108 MP, f/1.9, PDAF Camera góc siêu rộng: 8 MP Camera macro: 2 MP, f/2.4 Camera trước	16 MP', 4500, 8, '256 GB', 9200000, 'Xiaomi Redmi Note 11 Pro Plus 5G 1.webp', 'Xiaomi Redmi Note 11 Pro Plus 5G 2.webp', 'Xiaomi Redmi Note 11 Pro Plus 5G 3.webp', 'Xiaomi Redmi Note 11 Pro Plus – Cấu hình mạnh mẽ, camera ấn tượng\r\nRedmi Note 11 Pro Plus chính là mẫu smartphone tầm trung tiếp theo được Xiaomi cho ra mắt với giá hấp dẫn cùng với thiết kế mới tinh tế, cấu hình mạnh mẽ và cụm camera chất lượng cao cho trải nghiệm nhiếp ảnh đầy hứa hẹn.\r\n\r\nThiết kế phẳng, vuông vắn hơn với cụm camera tinh tế, nhiều màu sắc độc đáo\r\nĐiện thoại Redmi Note 11 Pro+ có thiết kế thanh lịch và vuông vắn hơn, mặt trước và sau được vát phẳng hơn mang đến kiểu dáng hiện đại, hợp xu hướng. Bốn góc của smartphone vẫn được bo cong để hài hòa với tổng thể, mềm mại cũng như cầm nắm thoải mái.', 'Đón đầu thử thách, bứt phá mọi tựa game - Chip MediaTek Dimensity 920 5G 8 nhân siêu mạnh mẽ\r\nKhông gian giải trí đỉnh cao - Màn hình AMOLED 6.67 inch sắc nét, tần số quét 120Hz mượt mà\r\nSạc nhanh thần tốc, tràn đầy năng lượng - Dung lượng pin lớn 4500mAh, sạc nhanh đến 120W\r\nTrải nghiệm nhiếp ảnh cực đỉnh - Camera chính 108MP, hỗ trợ nhiều chế độ chụp linh hoạt', 3, 0),
(19, 1, 19, 'Apple iPhone 8 64GB Chính hãng', '4.7 inches', '11', 'Apple A11 Bionic APL1W72', '12 MP (f/1.8, 28mm), tự động lấy nét nhận diện theo giai đoạn, OIS, 4 LED flash (2 tone) Camera trước	7 MP, f/2.2, 1080p@30fps, 720p@240fps, nhận diện khuôn mặt, HDR, panorama', 1821, 4, '64 GB', 10020000, 'Apple iPhone 8 64GB 1.webp', 'Apple iPhone 8 64GB 2.jpg', 'Apple iPhone 8 64GB 3.jpg', 'ại sao người dùng nên chọn mua iPhone 8 64GB chính hãng VN/A?\r\nLý do để người dùng lựa chọn chiếc iPhone 8 chính hãng VN/A vì đây là chiếc điện thoại có giá thành hợp lý và chất lượng đảm bảo. Đây là sản phẩm hàng chính hãng được Apple sản xuất cho thị trường Việt Nam, do đại lý Apple được ủy quyền tại Việt Nam phân phối. Chất lượng hàng hóa của iPhone 8 64GB chính hãng VN/A được đảm bảo theo đúng tiêu chuẩn nhà sản xuất. Đặc biệt, tại hệ thống CellphoneS có dịch vụ đổi mới 30 ngày sau khi mua sản phẩm, bảo hiểm 1 năm hoặc hơn tại các trung tâm bảo hành ủy quyền.\r\n\r\nNgoài ra, với bộ nhớ trong 64GB vừa đủ dùng, iPhone 8 64GB VN/A hứa hẹn sẽ đem đến cho người dùng khả năng lưu trữ dung lượng thoải mái, từ hình ảnh, tài liệu, các phần mềm tiện ích,... đều có thể dễ dàng lưu giữ trong chiếc điện thoại, đáp ứng mọi nhu cầu của người dùng.\r\n\r\nThiết kế chất liệu kính, các góc bo cong mềm mại -  tăng khả năng chống trầy xước\r\nĐiện thoại iPhone 8 chính hãng là một chiếc máy đơn giản nhưng vẫn hài hoà trong từng đường nét. Khung kim loại cứng cáp, mặt lưng kính bóng bẩy cùng các góc bo cong mềm mại, một thiết kế không nổi bật nhưng dễ dàng thao tác.', 'Apple đã nâng cấp cho dòng iPhone cao cấp của mình bằng bộ đôi iPhone 8/ 8 Plus tại sự kiện giới thiệu iPhone mới gây được khá nhiều sự chú ý. Với các nâng cấp nhẹ về mặt cấu hình và thiết kế thì iPhone 8 64GB chính hãng VN/A xứng danh là chiếc điện thoại flagship đáng để sở hữu nhất.', 4, 0),
(20, 5, 12, 'OPPO A95', '6.43 inches', 'ColorOS 11.1, Android 11', 'Qualcomm® Snapdragon™ 662', 'Camera chính: 48MP, f/1.7, AF Camera chân dung: 2MP, f/2.4 Camera macro: 2MP, f/2.4 Camera trước	16MP, f/2.4', 5000, 8, '128 GB', 6290000, 'OPPO A95 1.webp', 'OPPO A95 2.webp', 'OPPO A95 3.webp', 'Đánh giá OPPO A95 – Thiết kế sang trọng, hiệu năng ổn định\r\nMới đây, Oppo vừa tiết lộ thông tin sẽ cho ra mắt một “tân binh mới” thuộc dòng A của hãng đó là Oppo A95. Nếu bạn đang tìm kiếm cho mình chiếc điện thoại thông minh mang tính đột phá so với các dòng cũ thì với chiếc máy này, hãng đã tập trung nâng cao hiệu suất tối đa và đường nét thiết kế sang trọng, tinh tế hơn thì đây sẽ là lựa chọn thông minh dành cho bạn.\r\n\r\nMàn hình Super AMOLED FullHD+ 6.43 inches, hiển thị sắc nét\r\nĐiện thoại OPPO A95 được trang bị màn hình AMOLED có độ hiển thị màu sắc rực rỡ nịnh mắt, có độ tương phản cao. Cùng với đó là nhiều tính năng bảo vệ mắt giúp hạn chế mỏi mắt sau thời gian sử dụng lướt web, Facebook hay Instagram.', 'Thiết kế mỏng nhẹ hiện đại - Mỏng chỉ 7.95mm, nhẹ chỉ 175g, màu sắc sành điệu\r\nHiển thị sắc nét mọi khung hình - Màn hình Super AMOLED FullHD+ 6.43\"\r\nVi xử lý mạnh mẽ - Chip Snapdragon 662, RAM 8GB\r\nTrọn vẹn từng khoảng khắc - Cụm camera sau lên đến 48MP, xoá phông chuyên nghiệp', 0, 0),
(21, 4, 13, 'Xiaomi POCO X3 Pro', '6.67 inches', 'Android 11, MIUI 12', 'Snapdragon 860 (7 nm)', '48MP + 8MP + 2MP + 2MP Camera trước	20MP, f/2.2', 5160, 8, '256 GB', 7560000, 'Xiaomi POCO X3 Pro 1.jpg', 'Xiaomi POCO X3 Pro 2.jpg', 'Xiaomi POCO X3 Pro 3.jpg', 'Điện thoại Xiaomi POCO X3 Pro – Điện thoại thông minh màn hình lớn\r\nPOCO X3 Pro là sản phẩm mới ra mắt với thiết kế khá độc đáo. Sản phẩm Pocophone này với cụm camera độc đáo, nhiều màu sắc lựa chọn cùng một cấu hình mạnh hứa hẹn sẽ mang lại trải nghiệm dùng ấn tượng.\r\n\r\nMàn hình kích thước lớn, mặt kính Gorilla Glass6\r\nMáy sở hữu thiết kế so với phiên bản POCO X3. Máy với phiền viền được làm cong 2,5D mang lại khả năng cầm nắm thoải mái.\r\n\r\nMàn hình Xiaomi POCO X3 Pro có kích thước 6,67 inch với độ phân giải FHD+. Màn với tỉ lệ 20:9 cùng khung viền mỏng mang lại không gian hiển thị lớn. Với độ sáng 386 ppi cùng tỉ lệ tương phản lớn 1500:1 cùng tần số quét lớn lên đến 120Hz mang lại khả năng hiển thị cao, chi tiết rõ ràng.', 'Hiệu năng chuẩn Flagship - Snapdragon 860 8 nhân mạnh mẽ, RAM 6G, bộ nhớ UFS 3 1 truy xuất nhanh\r\nVuốt chạm mượt mà, hiển thị chất lượng - Màn hình 6 67 inch FullHD+ tần số quét 120Hz, hỗ trợ HDR10\r\nSử dụng liên tục, không cần chờ đợi - Sạc nhanh siêu tốc 33W, dung lượng pin lớn 5160mAh\r\nSẵn sàng ghi lại khung hình chất lượng - Bộ tứ camera 48MP tích hợp AI thông minh\r\nÂm thanh sống động, chân thực - Loa kép chất lượng, hỗ trợ âm thanh chất lượng cao, bộ rung thế hệ mới', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `anh` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `ten`, `link`, `anh`, `mota`) VALUES
(1, ' iPhone 13 Series ', 'detail.php?id=3', 'banner_img.png', 'chính thức mở bán iPhone 13 series bản Xanh lá: Apple chỉ đổi màu máy, nhưng được săn đón rất nhiều!!!'),
(8, 'Nokia G21', 'detail.php?id=12', 'banner1_img.png', 'Nokia G21 ra mắt với màn hình LCD 90Hz, camera 50MP và thời lượng pin ba ngày'),
(9, 'S22 Series', 'detail.php?id=11', 'banner3_img.png', 'S22 series 2022: Flagship dẫn đầu công nghệ với sự kết hợp camera Mắt thần bóng đêm và siêu phẩm S Pen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(55) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `anh` text NOT NULL,
  `sdt` text NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `hoten`, `anh`, `sdt`, `diachi`, `phanquyen`, `status`) VALUES
(1, 'nguyenvana@gmail.com', 'nguyenvana', 'Nguyễn Văn A', '', '0983428914', 'quận 6', 0, 1),
(5, 'admin', 'admin', 'Tiến Nguyễn', 'avatar-nam.jpg', '0763732400', 'TPHCM', 1, 0),
(13, 'levanb@gmail.com', 'levanb', 'Lê Văn B', 'comment_3.png', '0987346849', 'quận 5', 0, 0),
(15, 'doubled@gmail.com', 'doubled', 'DoubleD', 'comment_2.png', '0989994981', 'cmt8 quận 10', 0, 0),
(16, 'phungvanc@gmail.com', 'phungvanc', 'Phùng Văn C', '', '0977146357', 'gò vấp', 0, 0),
(18, 'kienltk710@gmail.com', 'ltkdt12343', 'Le Kien', '', '0947028450', '', 0, 0),
(20, 'tn6609092@email.com', '123', 'Tiến', '', '0933974285', '', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tlbinhluan`
--

CREATE TABLE `tlbinhluan` (
  `id` int(11) NOT NULL,
  `id_binhluan` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tlbinhluan`
--

INSERT INTO `tlbinhluan` (`id`, `id_binhluan`, `noidung`) VALUES
(13, 19, 'Cảm ơn bạn đã bình luận về sản phẩm ạ. Chúc bạn một ngày tốt lành'),
(14, 20, 'Cảm ơn bạn đã bình luận.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id sản phẩm` (`id_sanpham`),
  ADD KEY `id tài khoản` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_donhang` (`id_donhang`),
  ADD KEY `Fk_id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_takhoan` (`id_taikhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id danh mục` (`id_danhmuc`),
  ADD KEY `mã sản xuất` (`masx`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id bình luận` (`id_binhluan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_id_sanpham_bl` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_id_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `Fk_id_donhang` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_id_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `id danh mục` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_dm`);

--
-- Các ràng buộc cho bảng `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD CONSTRAINT `id bình luận` FOREIGN KEY (`id_binhluan`) REFERENCES `binhluan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
