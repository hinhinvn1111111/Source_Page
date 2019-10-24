-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2019 lúc 05:13 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mozala`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baidang`
--

CREATE TABLE `baidang` (
  `ID` int(11) NOT NULL,
  `IDNguoiBanHang` int(11) NOT NULL,
  `TieuDe` text NOT NULL,
  `Anh` text NOT NULL,
  `NoiDung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluanbaidang`
--

CREATE TABLE `binhluanbaidang` (
  `STT` int(11) NOT NULL,
  `IDBaiDang` int(11) NOT NULL,
  `IDLogin` int(11) NOT NULL,
  `NoiDung` int(11) NOT NULL,
  `CheckLike` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluansp`
--

CREATE TABLE `binhluansp` (
  `STT` int(11) NOT NULL,
  `IDSP` int(11) NOT NULL,
  `IDLogin` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `Sao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID` int(11) NOT NULL,
  `TenDM` text NOT NULL,
  `ID_DMCha` int(11) NOT NULL,
  `Anh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`ID`, `TenDM`, `ID_DMCha`, `Anh`) VALUES
(1, 'Thiết bị điện tử', 0, ''),
(2, 'Phụ kiện điện tử', 0, ''),
(3, 'TV & thiết bị gia dụng', 0, ''),
(4, 'Sức khỏe & làm đẹp', 0, ''),
(5, 'Hàng mẹ, bé & đồ chơi', 0, ''),
(6, 'Siêu thị tạp hóa', 0, ''),
(7, 'Hàng gia dụng & đời sống', 0, ''),
(8, 'Thời trang nữ', 0, ''),
(9, 'Thời trang nam', 0, ''),
(10, 'Phụ kiện thời trang', 0, ''),
(11, 'Thể thao & du lịch', 0, ''),
(12, 'Ô tô, xe máy & thiết bị định vị', 0, ''),
(13, 'Điện thoại di động', 1, ''),
(14, 'Máy tính bảng', 1, ''),
(15, 'Laptop', 1, ''),
(16, 'Máy tính để bàn', 1, ''),
(17, 'Âm thanh', 1, ''),
(18, 'Máy chơi game', 1, ''),
(19, 'Camera hành động/ Máy quay', 1, ''),
(20, 'Camera giám sát', 1, ''),
(21, 'Camera kĩ thuật số', 1, ''),
(22, 'Thiết bị số', 1, ''),
(23, 'Phụ kiện di động', 2, ''),
(24, 'Phụ kiện máy tính', 2, ''),
(25, 'Thiết bị mạng', 2, ''),
(26, 'Linh kiện máy tính', 2, ''),
(27, 'Phụ kiện', 2, ''),
(28, 'Thiết bị đeo', 2, ''),
(29, 'Thiết bị lưu trữ', 2, ''),
(30, 'Phụ kiện máy chơi game', 2, ''),
(31, 'Máy in & máy scan', 2, ''),
(32, 'Phụ kiện máy tính bảng', 2, ''),
(33, 'Thiết bị TV & video', 3, ''),
(34, 'Phụ kiện TV', 3, ''),
(35, 'Dàn âm thanh gia đình', 3, ''),
(36, 'Điện gia dụng lớn', 3, ''),
(37, 'Điện gia dụng nhà bếp', 3, ''),
(38, 'Điều hòa & lọc không khí', 3, ''),
(39, 'Máy hút bụi & vệ sinh sàn', 3, ''),
(40, 'Bàn ủi & máy may', 3, ''),
(41, 'Thiết bị chăm sóc cá nhân', 3, ''),
(42, 'Bộ phận & thiết bị', 3, ''),
(43, 'Trang điểm ', 4, ''),
(44, 'Chăm sóc da', 4, ''),
(45, 'Chăm sóc tóc', 4, ''),
(46, 'Dụng cụ làm đẹp', 4, ''),
(47, 'Nước hoa', 4, ''),
(48, 'Chăm sóc cho nam giới', 4, ''),
(49, 'Chăm sóc cơ thể', 4, ''),
(50, 'Thực phẩm chức năng', 4, ''),
(51, 'Thiết bị y tế', 4, ''),
(52, 'Chăm sóc cá nhân', 4, ''),
(53, 'Chăm sóc trẻ sơ sinh, nhỏ', 5, ''),
(54, 'Đồ dùng bú sữa & ăn dặm', 5, ''),
(55, 'Quần áo & phụ kiện', 5, ''),
(56, 'Tã & dụng cụ vệ sinh', 5, ''),
(57, 'Tắm & chăm sóc cơ thể', 5, ''),
(58, 'Xe, ghế, địu và nôi', 5, ''),
(59, 'Đồ chơi trẻ sơ sinh, nhỏ', 5, ''),
(60, 'Nhân vật đồ chơi', 5, ''),
(61, 'Đồ chơi ngoài trời', 5, ''),
(62, 'Xe & điều khiển từ xa', 5, ''),
(63, 'Đồ ăn sáng', 6, ''),
(64, 'Thực phẩm khô và đóng hộp', 6, ''),
(65, 'Đồ uống', 6, ''),
(66, 'Đồ uống có cồn', 6, ''),
(67, 'Giặt ủi & vệ sinh nhà cửa', 6, ''),
(68, 'Kẹo & socola', 6, ''),
(69, 'Phụ kiện hút thuốc', 6, ''),
(70, 'Snank - đồ ăn vặt', 6, ''),
(71, 'Chăm sóc thú cưng', 6, ''),
(72, 'Bếp & phòng ăn', 7, ''),
(73, 'Đèn', 7, ''),
(74, 'Đồ dùng phòng ngủ', 7, ''),
(75, 'Đồ dùng phòng tắm', 7, ''),
(76, 'Đồ nội thất', 7, ''),
(77, 'Trang trí nhà cửa', 7, ''),
(78, 'Công cụ, DIY & ngoài trời', 7, ''),
(79, 'Văn phòng phẩm & thủ công', 7, ''),
(80, 'Sách', 7, ''),
(81, 'Nhạc cụ', 7, ''),
(82, 'Trang phục nữ', 8, ''),
(83, 'Giày nữ', 8, ''),
(84, 'Túi xách nữ', 8, ''),
(85, 'Phụ kiện nữ', 8, ''),
(86, 'Đồ ngủ & nội y', 8, ''),
(87, 'Phụ kiện bé gái', 8, ''),
(88, 'Túi trẻ em', 8, ''),
(89, 'Trang phục nam', 9, ''),
(90, 'Đồ lót nam', 9, ''),
(91, 'Giày nam', 9, ''),
(92, 'Túi xách nam', 9, ''),
(93, 'Phụ kiện nam', 9, ''),
(94, 'Trang phục bé trai', 9, ''),
(95, 'Giày bé trai', 9, ''),
(96, 'Phụ kiện bé trai', 9, ''),
(97, 'Túi trẻ em', 9, ''),
(98, 'Đồng hồ nữ', 10, ''),
(99, 'Đồng hồ nam', 10, ''),
(100, 'Đồng hồ trẻ em', 10, ''),
(101, 'Kính mắt', 10, ''),
(102, 'Kính thời trang', 10, ''),
(103, 'Kính áp tròng', 10, ''),
(104, 'Trang sức nữ', 10, ''),
(105, 'Trang sức nam', 10, ''),
(106, 'Phụ kiện', 10, ''),
(107, 'Vali & túi du lịch', 11, ''),
(108, 'Thể thao & thể hình', 11, ''),
(109, 'Hoạt động dã ngoại', 11, ''),
(110, 'Trang phục thể thao nam', 11, ''),
(111, 'Trang phục thể thao nữ', 11, ''),
(112, 'Thể thao dùng vợt', 11, ''),
(113, 'Thể thao đồng đội', 11, ''),
(114, 'Đấm bốc & võ thuật', 11, ''),
(115, 'Thể thao dưới nước', 11, ''),
(116, 'Phụ kiện thể thao', 11, ''),
(117, 'Xe máy', 12, ''),
(118, 'Ô tô', 12, ''),
(119, 'Dịch vụ chăm sóc xe', 12, ''),
(120, 'Đồ bảo hộ xe', 12, ''),
(121, 'Dầu nhớt xe', 12, ''),
(122, 'Phụ tùng phụ kiện xe', 12, ''),
(123, 'Chăm sóc ngoài ô tô', 12, ''),
(124, 'Dầu nhớt và phụ gia ô tô', 12, ''),
(125, 'Phụ kiện ô tô', 12, ''),
(126, 'Lắp đặt lốp & mâm ô tô', 12, ''),
(127, 'Laptop cơ bản', 15, 'https://vn-live-03.slatic.net/original/ddce99113303cf5742b0d7cc6a3798ba.jpg'),
(128, 'Dòng giải trí', 15, 'https://vn-live-03.slatic.net/original/fe10f43172765c9a7adc7a261cef396b.jpg'),
(129, 'Dòng 2-in-1', 15, 'https://vn-test-11.slatic.net/p/c25c06e1ff544bfd57c5ffd4e529c5aa.jpg'),
(130, 'Macbook', 15, 'https://vn-live-03.slatic.net/original/f215ba2ae9c7052641b103a670d4ff5f.jpg'),
(131, 'Chromebook', 15, 'https://vn-test-11.slatic.net/p/e13d4bfc56456894f31edcbfe5d12446.jpg'),
(132, 'Loa di động', 17, 'https://vn-live-03.slatic.net/original/9ba61176195d5b5b56070e961649b069.jpg'),
(133, 'Tai nghe nhét tai', 17, 'https://vn-live-03.slatic.net/original/fc3981a8b2b20031cd4773a87ed4b11e.jpg'),
(134, 'Tai nghe không dây', 17, 'https://vn-test-11.slatic.net/p/2/tai-nghe-bluetooth-nhet-tai-khong-day-m-165-cao-cap-6630-21729761-8b79ce51a23488fa8b21b178a76386c7-catalog_233.jpg'),
(135, 'Micro', 17, 'https://vn-test-11.slatic.net/p/2fa974317fafdcab452c487569193219.jpg'),
(136, 'Thiết bị nhận và Amplifier', 17, 'https://vn-live-02.slatic.net/original/c35d457dcaf8a30942408cdaaffd8086.jpg'),
(137, 'Phụ kiện âm thanh số và sân khấu', 17, 'https://vn-test-11.slatic.net/p/e54bac07ebb2ff1366726c52a7edfcb3.jpg'),
(138, 'Tai nghe over ear', 17, 'https://vn-test-11.slatic.net/p/70d77a82aab90fe6f7d2a61759479a4a.jpg'),
(139, 'Phụ kiện máy game', 18, 'https://vn-live-01.slatic.net/original/35dec64f56a74d9173f3ad220748eb64.jpg'),
(140, 'Máy chơi game', 18, 'https://vn-live-03.slatic.net/original/0bc47412a70f470dc8c636e7467096f3.jpg'),
(141, 'Game', 18, 'https://vn-live-03.slatic.net/original/1560e71f3d9045b3b811ec191e6d4523.jpg'),
(142, 'Camera thể thao & hành động', 19, 'https://vn-live-03.slatic.net/original/56ab97fdf504cbb5c4f3689f86d068dc.jpg'),
(143, 'Máy quay phim', 19, 'https://vn-live-01.slatic.net/original/f700b140a46b7240636399d70e504cca.jpg'),
(144, 'Máy quay phim chuyên nghiệp', 19, 'https://vn-live-03.slatic.net/original/285b8bafa76b1544043b1114388fb019.jpg'),
(145, 'Camera 360', 19, 'https://my-live.slatic.net/original/29fa4afc92faf0f312175145828716c5.jpg'),
(146, 'Camera IP kết nối Internet', 20, 'https://vn-test-11.slatic.net/p/5465ed250defc68f527a7760a7b3094a.jpg'),
(147, 'Camera an ninh CCTV', 20, 'https://vn-live-03.slatic.net/original/48bec2d74e68d6cc7deaadccf8d13f7b.jpg'),
(148, 'Dummy camera', 20, 'https://vn-test-11.slatic.net/p/2/battery-powered-practical-economic-dummy-cctv-security-camera-withactivation-light-silver-intl-4847-9406148-dc2a9e00cc74be70a5595e9b39f3179a-catalog_233.jpg'),
(149, 'Hệ thống an ninh CCTV', 20, 'https://vn-live-02.slatic.net/original/f89e30df314843bc16960edfdd38ec68.jpg'),
(150, 'Camera chống trộm ', 20, 'https://my-live-01.slatic.net/p/9918b323aa3136a8478f11c37d2aeb9f.jpg'),
(151, 'Hệ thống an ninh IP', 20, 'https://vn-live-02.slatic.net/original/bb62b70b10018042e6fbcb64430b4248.jpg'),
(152, 'Camera xe hơi', 20, 'https://vn-live-01.slatic.net/original/c6c1480bb741c8ad6509efa8721c288a.jpg'),
(153, 'Máy ảnh DSLR', 21, 'https://vn-test-11.slatic.net/p/2/nikon-d5-208mp-body-den-1907-2759552-4166a6db553784b176c9f72db9621de3-catalog_233.jpg'),
(154, 'Máy ảnh không gương lật', 21, 'https://vn-live-01.slatic.net/original/aa30541a6071009a550502d551a697c9.jpg'),
(155, 'Máy chụp lấy ngay & Phụ kiện', 21, 'https://vn-test-11.slatic.net/p/2/may-chup-anh-lay-lien-fuji-instax-mini-9-ice-blue-0866-9138687-b71c6cb9634395c63a6396e42c265114-catalog_233.jpg'),
(156, 'Máy ảnh du lịch', 21, 'https://vn-test-11.slatic.net/p/2/may-anh-nikon-coolpix-a10-digital-camera-3177-20840061-00b062cfbb571dbd3096ad00926d8eba-catalog_233.jpg'),
(157, 'Thuốc lá điện tử', 22, 'https://vn-test-11.slatic.net/p/2a3bc7e81c36198f9bee43b08a5c76a1.jpg'),
(158, 'Bộ đàm', 22, 'https://vn-live-01.slatic.net/original/bade9211697274048b27b6622c4887f1.jpg'),
(159, 'Thiết bị điều khiển qua App', 22, 'https://vn-live-01.slatic.net/original/1b79efc750daea4063255dbaba064f72.jpg'),
(160, 'Bút laser ', 22, 'https://vn-test-11.slatic.net/p/but-chieu-lazer-101-den-7460-2290372-3a207abb509084756586e5873b4dcf65-catalog_233.jpg'),
(161, 'Kim tự điển & máy thông dịch', 22, 'https://vn-live-01.slatic.net/original/ffe6ec87ae87069c475596837386ef5f.jpg'),
(162, 'Máy dò kim loại ', 22, 'https://vn-test-11.slatic.net/p/2/may-do-kim-loai-super-scanner-md-3003b1-4719-7895343-4a5691cf927530d0472d19c4dc4c2d2e-catalog_233.jpg'),
(163, 'Bộ sạc đa năng', 22, 'https://vn-live-01.slatic.net/original/7026d5fbeb7e72348ae78cb9c3303f7b.jpg'),
(164, 'Ốp lưng & bao da điện thoại', 23, 'https://vn-test-11.slatic.net/p/b9aa00cc80977ad35af01f19e698b6ef.jpg'),
(165, 'Sim & Thẻ cào', 23, 'https://vn-live-01.slatic.net/original/a80d4dddcc25449a65056abcc3a54060.jpg'),
(166, 'Pin sạc dự phòng', 23, 'https://vn-test-11.slatic.net/p/1e3d9492be31494c70455a7ed9f594ef.jpg'),
(167, 'Miếng dán màn hình điện thoại', 23, 'https://my-test-11.slatic.net/p/e96ecf21a76c1ad8eb7ffbbf47550ff9.jpg'),
(168, 'Cáp & Dock sạc', 23, 'https://my-test-11.slatic.net/p/61b34df2d44f38e7dca6ee26dd2d6b97.jpg'),
(169, 'Phụ kiện khác', 23, 'https://vn-test-11.slatic.net/p/136a2a4ad5bdabfb68d6d792ef60e8f3.jpg'),
(170, 'Bộ sạc có dây', 23, 'https://vn-test-11.slatic.net/p/4db963395db944a453f6a9fda50b292f.jpg'),
(171, 'Pin điện thoại', 23, 'https://vn-test-11.slatic.net/p/c936d9eef2032107f17d028245b88166.jpg'),
(172, 'Phụ kiện máy tính bảng', 23, 'https://vn-test-11.slatic.net/p/4f4569114edf96d43e8b43192ef37ef9.jpg'),
(173, 'Bộ sạc không dây', 23, 'https://vn-live-01.slatic.net/original/388fc40148d566523aa95259b5831dc6.jpg'),
(174, 'Chuột', 24, 'https://vn-live-01.slatic.net/original/d9e0f6ae1b5162253d702a220dbdfc29.jpg'),
(175, 'Âm thanh vi tính', 24, 'https://vn-test-11.slatic.net/p/abd36d4aa1da1da1b147ad8192a71245.jpg'),
(176, 'Phần mềm', 24, 'https://vn-live-01.slatic.net/original/97ddf9e3423e4d5a4a7368855acfa40a.jpg'),
(177, 'Thiết bị số', 24, 'https://vn-live-01.slatic.net/original/830c27c181e959750cb0b4f6e96543b2.jpg'),
(178, 'Adapter kết nối & Cáp', 24, 'https://vn-test-11.slatic.net/p/2/bo-chuyen-doi-usb-20-sang-lan-10100-mbps-cr110-20254-den-3631-8224382-5c9e37547b4534d99f9e1eb28417fde8-catalog_233.jpg'),
(179, 'Màn hình vi tính', 24, 'https://vn-test-11.slatic.net/p/67ab36f03480916f35f75eee7c6c0e87.jpg'),
(180, 'Miếng lót chuột', 24, 'https://vn-live-01.slatic.net/original/d15053b43c8293e8048b2d54339f4ee4.jpg'),
(181, 'Công cụ đồ họa', 24, 'https://vn-test-11.slatic.net/p/0af7b84c725d64843d173337edd37ea9.jpg'),
(182, 'Dây cáp & Adaptor', 24, 'https://vn-test-11.slatic.net/p/96596326d90804f60893e760eaf9a452.jpg'),
(183, 'Bộ phát sóng Wifi', 25, 'https://vn-test-11.slatic.net/p/f0f9834eaf5f21feecc25e041a67805c.jpg'),
(184, 'Bộ khuếch đại wifi', 25, 'https://vn-live-01.slatic.net/original/d0c9769bf8f17b967975e9abbec99906.jpg'),
(185, 'Router', 25, 'https://vn-test-11.slatic.net/p/cfa9031633d5aaebe617cf184d239900.jpg'),
(186, 'Thiết bị thu phát sóng di động', 25, 'https://vn-live-01.slatic.net/original/8b4ed455252925632136bba39f9acc11.jpg'),
(187, 'Bộ thu sóng Wifi', 25, 'https://vn-test-11.slatic.net/p/7c5a50ce2db48972f50ac8873baf0e0f.jpg'),
(188, 'Adapter mạng', 25, 'https://vn-live-01.slatic.net/original/1e19bdd62ca7f79bba74a2ce34ce456e.jpg'),
(189, 'Switch', 25, 'https://vn-live-01.slatic.net/original/6342bd576fca87250a6edc085a50821f.jpg'),
(190, 'Card mạng', 25, 'https://vn-test-11.slatic.net/p/7a352ab6f494163eb0a21c4b3628600f.jpg'),
(191, 'Modem', 25, 'https://vn-test-11.slatic.net/p/2/bo-fax-modem-56k-usb-dell-conexant-rd02-d400-den-2749-7853431-3908eacad77cb1ceb8bdfaed8dbf99a0-catalog_233.jpg'),
(192, 'Thiết bị phát wifi Airport ', 25, 'https://vn-live-01.slatic.net/original/d10e3e590a37c5514129917c70f9fb34.jpg'),
(193, 'Card màn hình', 26, 'https://vn-live-01.slatic.net/original/959caa234514abefd5d20cc90aafe8e4.jpg'),
(194, 'Case máy tính', 26, 'https://vn-test-11.slatic.net/p/278c28af7ff00248de3b191e4451c274.jpg'),
(195, 'Bo mạch chủ', 26, 'https://vn-live-01.slatic.net/original/406478e914d7945ea033ecb189dc6e0d.jpg'),
(196, 'Quạt & Hệ thống làm mát', 26, 'https://vn-test-11.slatic.net/p/7bb6beb3c7b449d53fd28780e2d5c005.jpg'),
(197, 'Bộ vi xử lý', 26, 'https://vn-live-01.slatic.net/original/dc29e880935f57b54ecf5cadb7eb27c1.jpg'),
(198, 'Ram máy tính', 26, 'https://vn-test-11.slatic.net/p/bedeae980368e10eacf4d8f982c284eb.jpg'),
(199, 'Card âm thanh', 26, 'https://vn-test-11.slatic.net/p/2/card-am-thanh-gan-ngoai-cho-may-tinh-k-mic-km720-8592-7583705-96189e5d85458e1c5077fefd95f7f433-catalog_233.jpg'),
(200, 'Nguồn máy tính', 26, 'https://vn-live-01.slatic.net/original/c01c0f10003858c018e823495b2a0f30.jpg'),
(201, 'Hệ thống tản nhiệt', 26, 'https://vn-live-01.slatic.net/original/75311f742f61534d1f33b46bd881feca.jpg'),
(202, 'Ổ đĩa quang', 26, 'https://vn-test-11.slatic.net/p/2/o-ghi-dia-dvd-rw-cong-usb-cam-ngoai-cho-laptop-1813-89266701-17a351beb66d210a9bd0f6798109c9d8-catalog_233.jpg'),
(203, 'Thẻ nhớ', 27, 'https://vn-live-01.slatic.net/original/4249c337df1256e28ca3c65b79d61c7b.jpg'),
(204, 'Ống kính', 27, 'https://vn-live-03.slatic.net/original/80c3ce4473a66cf5493f05fa43eed35c.jpg'),
(205, 'Tripod & Monopod', 27, 'https://vn-test-11.slatic.net/p/f5d4bdbce4708073209423d9b3d73d5e.jpg'),
(206, 'Pin', 27, 'https://vn-live-01.slatic.net/original/a807b0842e7481d1ee1ec2e73abe0fa1.jpg'),
(207, 'Túi đựng máy ảnh', 27, 'https://vn-test-11.slatic.net/p/d157d21f38c6b7d78c571105446ab859.jpg'),
(208, 'Sạc pin', 27, 'https://vn-live-01.slatic.net/original/c901fd47c65b00200977fc0c466efe0e.jpg'),
(209, 'Phụ kiện Camera Thể Thao & Hành Động', 27, 'https://vn-live-01.slatic.net/original/4a7d71e09e9e0224d1e801228b6a5df6.jpg'),
(210, 'Đèn flash', 27, 'https://vn-test-11.slatic.net/p/2/flash-godox-li-ion-ving-v850-ii-tang-kem-1-omni-bounce-5403-2863413-d2e82d405fc470468126954a798c60fd-catalog_233.jpg'),
(211, 'Tay cầm chống rung', 27, 'https://vn-live-01.slatic.net/original/8c1bbdfcd7a9a9fbfd2865d90c127c82.jpg'),
(212, 'Film máy ảnh chụp lấy ngay', 27, 'https://vn-live-01.slatic.net/original/3839c0a498503badeaeef55898e4faf1.jpg'),
(213, 'Đồng hồ thông minh', 28, 'https://vn-test-11.slatic.net/p/2/dong-ho-thong-minh-smart-watch-t9-7824-5099926-30dfb8dd325d11c7be45aa2627fc5a35-catalog_233.jpg'),
(214, 'Vòng theo dõi vận động', 28, 'https://vn-test-11.slatic.net/p/013926a9d07e6b688943d2babaaedc12.jpg'),
(215, 'Thiết bị thực tế ảo', 28, 'https://vn-live-01.slatic.net/original/c01b40f07f77f7aa3eba83077e235351.jpg'),
(216, 'Phụ kiện đồng hồ thông minh', 28, 'https://vn-live-01.slatic.net/original/f70f89c11f3de844c87cf7587a411e11.jpg'),
(217, 'Thiết bị giám sát thông minh', 28, 'https://vn-test-11.slatic.net/p/2/jingle-car-motor-gps-tracker-kids-pets-wallet-keys-alarm-locator-realtime-finder-device-2523-87787004-fdb74588479c8812577506e75308cd88-catalog_233.jpg'),
(218, 'Phụ kiện thiết bị theo dõi vận động', 28, 'https://vn-test-11.slatic.net/p/1dc7590386cc90851ead45e1c8954eeb.jpg'),
(219, 'Mắt kính thông minh', 28, 'https://vn-live-01.slatic.net/original/d0a162d38078af35a459292c3d489981.jpg'),
(220, 'Thiết bị điều khiển bằng cử chỉ', 28, 'https://vn-test-11.slatic.net/p/171022e8080113fb6178a7c2c16d2eef.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `STT` int(11) NOT NULL,
  `IDSP` int(11) NOT NULL,
  `IDLogin` int(11) NOT NULL,
  `isDelete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`STT`, `IDSP`, `IDLogin`, `isDelete`) VALUES
(1, 2, 2, 0),
(2, 7, 1, 0),
(3, 13, 2, 0),
(4, 15, 2, 0),
(5, 35, 2, 0),
(6, 94, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Pwd` text NOT NULL,
  `Role` int(11) NOT NULL,
  `Ten` text NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Tuoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `login`
--

INSERT INTO `login` (`ID`, `SDT`, `Pwd`, `Role`, `Ten`, `Email`, `Tuoi`) VALUES
(1, '12312', '123', 1, '123', '123@gmail.com', 12),
(2, '321', '321', 2, '321', '321@gmail.com', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoibanhang`
--

CREATE TABLE `nguoibanhang` (
  `ID` int(11) NOT NULL,
  `ThuongHieu` text NOT NULL,
  `DiaDiem` text NOT NULL,
  `IDLogin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `TenSP` text NOT NULL,
  `GiaSP` text NOT NULL,
  `Anh` text NOT NULL,
  `DacTinh` text NOT NULL,
  `DacDiemNoiBat` text NOT NULL,
  `MoTaSP` text NOT NULL,
  `IDDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `TenSP`, `GiaSP`, `Anh`, `DacTinh`, `DacDiemNoiBat`, `MoTaSP`, `IDDM`) VALUES
(2, 'Apple iPhone XR', '18890000 ', 'https://vn-live-01.slatic.net/original/940fdb5e04e72ae505dc11d9f067ef80.jpg', '- Thương hiệu Apple SKU 248170094_VNAMZ-324089924 \r\n- Dòng sản phẩm MRY42VN/A Loại bảo hành Bảo hành điện tử Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm 1 Sản phẩm, 1 tai nghe, 1 dây cáp, 1 củ sạc, 1 hướng dẫn sử dụng', '', '- Mã hàng VN/A dành cho thị trường Việt NamHàng mới 100%, chính hãng, nguyên seal\r\n- Thiết kế hoàn toàn bằng kính cường lực và thép không gỉ, chống nước và chống bụi\r\n- Chip Inteligent A12 Bionic chip mạnh mẽ và thông minh nhất từng có trên một chiếc điện thoại thông minh\r\n- Camera kép 12MP với OIS kép, chế độ chụp Chân dung, hiệu ứng Chiếu sáng chân dung và video 4K tốc độ tối đa 60fps\r\nXác thực bảo mật bằng Face ID thế hệ mới\r\nSạc không dây - hỗ trợ sạc nhanh\r\n', 13),
(3, 'SamsungGalaxy M20 ', '2350000 ', 'https://vn-test-11.slatic.net/p/169537320338c2fcf594fc11ec0e2cf9.jpg', '- Thương hiệu OEM SKU 274998290_VNAMZ-421984908 Dòng sản phẩm M20\r\n- Loại bảo hành Bảo hành điện tử Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	fullbox: nguyên hộp', '', '- Thông số kỹ thuậtMạng 2GCóMạng 3GCóMạng 4GCóSIM2 SIM 2 sóngKích Thước156.4 x 74.5 x 8.8 mmMàu SắcXanh / ĐenTrọng Lượng183gLoạiTFT, FHD+ (1080x2340)Màn Hình6.3 inchLoa NgoàiCóBộ Nhớ TrongRAM 3GB, ROM 32GBKhe Cắm Thẻ NhớmicroSD, hỗ trợ lên đến 512GB3.5mm jackCóBluetooth5.0WLAN802.11 b/g/nCamera chính13MP, f/1.9 + 5MP, f/2.2Camera Phụ8MP, f/2.0CPUExynos 7904, 8 nhân, 1.8GHzGPUMali-G71 MP2Bảo Hành12 thángKhác- Sạc nhanh\r\n- Bảo mật vân tayLoại Pin5000mAh, sạc nhanh siêu tốcHệ Điều HànhAndroid 8.0 (Oreo)', 13),
(4, 'Điện thoại Lenovo Z5 64GB Ram 6GB', '3570000 ', 'https://vn-test-11.slatic.net/p/c7db2f25bbd17db9e0f083b337cd6b4a.jpg', '- Thương hiệu Lenovo \r\n- SKU 231571121_VNAMZ-332462097 \r\n- Dòng sản phẩm Lenovo Z5 64GB \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm 1 thân máy, 1 bộ cáp sạc, 1 HDSD', '', '- Màn hình: IPS LCD , 6.2 \", 18,7:9 FHD+\r\n- Hệ điều hành: Android 8\r\n- Camera sau:16 MP + 8 MP\r\n- Camera trước: 8MP\r\n- CPU: Snapdragon 636\r\n- RAM: 6GB\r\n- Bộ nhớ trong: 64 GB\r\n- Thẻ nhớ: Micro SD lên tới 256GB\r\n- Thẻ SIM: 2 sim\r\n- Dung lượng pin: 3300 mAh\r\n- Ngôn ngữ : Tiếng anh , tiếng trung (Sản phẩm nguyên seal)', 13),
(5, 'Máy tính bảng Samsung Galaxy Tab A6 7.0\"', '3290000 ', 'https://vn-test-11.slatic.net/p/df533f7d5afef8898fd1e643deb359c6.jpg', '- Thương hiệu Samsung \r\n- SKU 252707136_VNAMZ-336011400\r\n- Dòng sản phẩm SM-T285\r\n- Camera trước 1-2 MP\r\n- Loại bảo hành Bảo hành điện tử \r\n- Độ phân giải HD+\r\n- Kích thước màn hình (inch) 7\r\n- Hệ điều hành Android 5.1 Lollipop\r\n- Kết nối Cellular Yes\r\n- Bộ nhớ mở rộng Yes \r\n- Camera sau 1 đến 5MP \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm Adapter x Sách hướng dẫn x Cáp Micro USB x Hộp máy', '', '- Áp dụng cho khách hàng thanh toán bằng thẻ HSBCÁp dụng cho đơn hàng trên 3 triệu\r\n- Màn hình Retina 9.7inch\r\n- Bộ vi xử lí A10 cho hiệu năng hoạt động mạnh mẽ\r\n- ROM 128GB\r\n- Trang bị khay nano-SIM trên iPad 2018 Wi-Fi + Cellular\r\n- Camera 8 MP, FaceTime với độ phân giải HD\r\n- Touch ID\r\n- Hỗ trợ bút Apple Pencil', 14),
(6, 'MTB - IPAD 2 WIFI ', '1998000 ', 'https://vn-test-11.slatic.net/p/416b767341dda5b9a28931303bec955c.jpg', '- Thương hiệu Nhập Mỹ \r\n- SKU 274848909_VNAMZ-421678374 \r\n- Dòng sản phẩm IPAD 2 \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm 1 MÁY, 1 XẠC', '', '- IPAD 2\r\n- Hệ điều hành: iOS 4, upgradable to iOS 8\r\n- Chip xử lý: Apple A5, Dual-core 1 GHz Cortex-A9\r\n- Màn hình: 9,7 inches LED-backlit IPS LCD capacitive touchscreen, 16M colors\r\n- Camera: 0.7 MP, 960 x 720 pixels, camera trước VGA\r\n- RAM: 512MB\r\n- Bộ nhớ trong: 16GB/32GB/64GB\r\n- Camera trước: 1.2 MP, 720p@30fps, face detection, FaceTime over Wi-Fi or Cellular\r\n- Kích thước: 241.2 x 185.7 x 8.8 mm\r\n- Nặng: 607 g\r\n- Pin: Li-Po 6930 mAh battery', 14),
(7, 'Asus Zenpad z10 wifi tặng bao da, thẻ nhớ, cài sẵn thẻ tiếng Anh123, Toán, Tv pro', '3388000 ', 'https://vn-test-11.slatic.net/p/588419bb84ebf93e811bcb10e6845123.jpg', '- Thương hiệu ASUS \r\n- SKU 256256804_VNAMZ-350653150 \r\n- Dòng sản phẩm Zenpad z10 \r\n- đặc điểm máy tính bảng TYPE-C,3D Touch,Bluetooth 4.0,Quick Charge \r\n- Camera trước 3-4 MP \r\n- Loại bảo hành Bằng Hóa đơn mua hàng Độ phân giải 2K UHD \r\n- Hệ điều hành Android Bộ nhớ RAM 3GB Kết nối Cellular No \r\n- Bộ nhớ mở rộng Yes \r\n- Camera sau 6 đến 10MP \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm	cáp, sạc, bao da, đế dựng, thẻ nhớ 16GB', '', '- Asus Zenpad z10\r\n- ASUS ZenPad Z10 nổi bật với một màn hình rộng 9.7 inch cùng vi xử lý mạnh mẽ, thiết kế siêu mỏng nhẹ cũng như sang trọng cùng vỏ nhôm nguyên khối.\r\n- Màn hình hiển thị sống động\r\n- Với công nghệASUSVisualMaster, thường dùng xử lý hình ảnh thông thường dành cho TV, ASUS ZenPad Z10 cho chất lượng hiển thị cao cấp, mang đến hình ảnh vô cùng thực tế.\r\n- Bạn có thể vô tư thưởng thức giải trí mọi nơi với độ phân giải 2K, góc nhìn rộng 178 độ cùngtấm nền IPStrên kích thước 9.7 inch rộng rãi.\r\n- Âm thanh mạnh mẽ\r\n- ASUS ZenPad Z10 có hệ thống loa stereo kép chuẩn DTS-HD, cung cấp âm thanh sống động, nhất là khi kết hợp cùngtai nghethì chất lượng mang lại dường như trong rạp hát, mạnh mẽ và chân thật.\r\n- Hiệu suất cao\r\n- ASUS ZenPad Z10 sử dụng chip xử lý Hexa-Core Snapdragon 650 với chip GPU Adreno 510, dung lượng bộ nhớRam 3 GB, bộ nhớ trong 32 GB, có thể mở rộng lên đến 128 GB vớithẻ nhớmicroSD. Wi-Fi 802.11 ac (2.4 / 5GHz), Bluetooth 4.1, GPS + GLONASS và USB Type-C.\r\n- Có thể nói hiện tại về hiệu suất và tiện ích, ZenPad Z10 dường như rất khó có đối thủ trong thị trường máy tính bảng. Máy sẵn sàng chơi tốt tất cả các game phổ biến hiện nay, đa nhiệm mượt mà, kết nối hiện đại, mang lại trải nghiệm tuyệt vời.\r\n- Thiết kế nhôm nguyên khối\r\n- Không chỉ dừng lại ở một màn hình lớn sắc nét, ASUS ZenPad Z10 còn có thiết kế mỏng đáng kinh ngạc, kiểu dáng unibody kim loại nguyên khối tuyệt đẹp, tất cả làm cho sản phẩm thật sang trọng nhưng nhiều tiện lợi cho di chuyển và mang theo bên mình.\r\n- Tính năng PixelMaster tăng độ sáng ảnh chụp\r\n- Mặc dù chỉ mang trên mình camera sau độ phân giải 8 MP, camera trước độ phân giải 5 MP, nhưng ASUS ZenPad Z10 vẫn có thể chụp ảnh tuyệt vời với máy ảnh cùng công nghệ PixelMaster. Các chế độ Low Light tăng độ sáng lên đến 400 phần trăm. Màu sắc và độ tương phản cũng được điều chỉnh tự động ở chế độ Low Light, chế độ HDR tăng cường pixel và cân bằng độ phơi sáng. Tất cả sẽ cho ra những khung hình thật sống động.\r\n', 14),
(8, 'Máy tính bảng Samsung Galaxy Tab A 7.0 T285 Wifi 4G 8GB (2016) (Đen)', '2990000 ', 'https://vn-test-11.slatic.net/p/2/may-tinh-bang-samsung-galaxy-tab-a-7-0-t285-wifi-4g-8gb-2016-den-hang-phan-phoi-chinh-thuc-0402-4102652-df7e88f9e089d864eccf811f0bbc5ebd-catalog_233.jpg', '- Thương hiệu Samsung \r\n- SKU SA937ELAA1IWV2VNAMZ-2476213 \r\n- Khả năng lưu trữ 8GB \r\n- Kích thước màn hình (inch) 7 \r\n- Bộ nhớ mở rộng No \r\n- Thời gian bảo hành 12 tháng \r\n- Dòng sản phẩm Lan Anh Mobile (Hà Nội)-T285 Black \r\n- Camera trước 1-2 MP \r\n- Loại bảo hành Bảo hành điện tử \r\n- Hệ điều hành Android \r\n- Bộ nhớ RAM 2GB \r\n- Camera sau 6 đến 10MP\r\n- Bộ sản phẩm gồm Thân máy, củ sạc, cáp USB, sách hướng dẫn.', '', '- Màn hình : 7 inch; 1280 x 800 Pixels\r\n- Vi xử lý CPU : Quad-core 1.5 GHz\r\n- RAM : 1.5 GB\r\n- Bộ nhớ trong : 8 GB\r\n- Camera : Chính 5.0 MP\r\n- Phụ: 2.0 MP\r\n- Kết nối : 2G; 3G; Wi-Fi; Bluetooth\r\n- Thời gian sử dụng : 8 giờ\r\n- Kích thước : 186.9 x 108.8 x 8.7 mm', 14),
(9, 'IPAD 1 WIFI-3G - Máy tính bảng nghe gọi được - Đủ màu', '1499000', 'https://vn-test-11.slatic.net/p/fd76e2079d1447a4a288feeb5f1dd219.jpg', '- Thương hiệu Điện thoại iphone \r\n- SKU 274746846_VNAMZ-421238948 \r\n- Dòng sản phẩm IPAD 1 3G \r\n- Loại bảo hành Bằng Phiếu bảo hành và Hóa đơn \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm 1 MÁY, 1 XẠC', '', '- IPAD 1 Wifi\r\n- Màn hình: LED, 9.7 inch with 1280×800 Pixel Display Resolution\r\n- Hệ điều hành: IOS 5.1.1\r\n- Vi xử lí CPU: 1 GHz, Apple A4\r\n- RAM: 512 MB\r\n- Bộ nhớ trong: 16 GB\r\n- Camera: không\r\n- Kết nối Wi-Fi: Chuẩn 802.11 b/g/n, Wi-Fi hotspot\r\n- Đàm thoại: có\r\n- Dung lượng pin: 6944 mAh\r\n- Trọng lượng: 0.6Kg ( 607 gram )\r\n- Tình trạng máy 97%\r\n- Màu sắc: Màu trắng/Đen', 14),
(11, 'Dell E6430 i5/Ram4G/HDD500G', '7399000 ', 'https://vn-live-01.slatic.net/original/9cb4ed779e38848b2d638dd101568c7f.jpg', '- Thương hiệu No Brand \r\n- SKU 251224951_VNAMZ-332776504 \r\n- MPN 6430 \r\n- GTIN dell \r\n- Dòng sản phẩm Dell E6430 i5/Ram4G/HDD500G Hàng Nhập Khẩu Japan 100% full box bảo hành 12 tháng 1 đổi 1 trong 30 ngày đầu không cần lý do \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Loại bộ vi xử lý Intel Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm 1x sản phẩm\r\n', '', 'Thông Số Kỹ Thuật :\r\n- CPU: intel Core i5 - 3320M processor ( 3M cache, upto 3.3GHz )\r\n- Ram: 4 GB DDRam 3.\r\n- HDD : 250GB cơ chạy êm, không bad.\r\n- Ổ đĩa: DVD Multi Record.\r\n- VGA: intel HD 4000 Graphics chạy mát rượi.\r\n- Màn hình: 14.0 inch Leb Backlit chóng chói, dùng lâu không bị mỏi mắt.\r\n- Wirless intel 6205AGN bắt sóng khỏe.\r\n- Phía trước: Card reader.\r\n- Bên trái: USB 2.0, VGA, jack audio.\r\n- Bên phải: Express card, DVD, 2 cổng USB 3.0, eSATA/USB..\r\n- Phía sau: HDMI, kensington, AC power, cổng Lan.', 15),
(13, 'Asus Vivobook X411UA-BV221T-S24 I3-7100U 4GB 240SS 14HD W10', '9990000 ', 'https://vn-live-01.slatic.net/original/d40bbdbb63e5f9ae1ba521574eb67cfc.jpg', '- Thương hiệu ASUS \r\n- SKU 249334914_VNAMZ-328370816 \r\n- Dòng sản phẩm Asus Vivobook X411UA-BV221T-S24 I3-7100U 4GB 240SS 14HD W10-Hàng nhập khẩu \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Loại bộ vi xử lý Intel Core i3-7100U \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	\r\n- Thùng máy gồm: Máy , pin sạc , cáp nguồn', '', '- CPU:Intel Core i3-7100U (2.4Ghz x 2) 3Mb SmartCache\r\n- RAM:4GB, DDR4 Bus 2133 MHz\r\n- Đĩa cứng:240GB - SSD\r\n- Màn hình:14 inch HD (1366 x 768)\r\n- Đồ họa:Intel® HD Graphics 620\r\n- HĐH:Windows 10 Home\r\n- Thương hiệu No Brand SKU 251224951_VNAMZ-332776504 MPN 6430 GTIN dell Dòng sản phẩm Dell E6430 i5/Ram4G/HDD500G Hàng Nhập Khẩu Japan 100% full box bảo hành 12 tháng 1 đổi 1 trong 30 ngày đầu không cần lý do Loại bảo hành Bằng Hóa đơn mua hàng Loại bộ vi xử lý Intel Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1x sản phẩm', 15),
(14, 'Laptop Xiaomi Mi Notebook Pro 15.6inch i5 8G (Xám) computer', '22990000 ', 'https://vn-test-11.slatic.net/p/b7f049e0e0a633ddfd736e17a18594ad.jpg', '- Thương hiệu Xiaomi \r\n- SKU 221986551_VNAMZ-279372902 \r\n- Dòng sản phẩm JYU4036CN \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Loại bộ vi xử lý Intel Core i5-8250U \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 x Laptop Xiaomi Mi Notebook Pro JYU4036CN Core i5-8250U/Win10 (15.6 inch) - Hàng Chính Hãng (Grey)', '', '- Chuẩn wifi 802.11ac nhanh gấp 6 lần\r\n- Công nghệ sạc Quick Charge 3.0 chỉ cần 30 phút sạc được 50% pin.\r\n- Card đồ họa NVIDIA GeForce MX150 cùng bộ nhớ 2GB\r\n- Loa Harman Infinity cho trải nghiệm âm thanh Cinema với âm thanh tần số thấp sâu hơn.\r\n- Màn hình 15.6 inch cùng độ phân giải Full HD.\r\n- Thương hiệu Xiaomi uy tín và thời thượng.', 15),
(15, 'Bộ máy tính chơi game công nghê intel 22nm RAM 8Gb,ổ SDD siêu nhanh , Màn hình 22 inch Full HD ', '5290000 ', 'https://vn-test-11.slatic.net/p/1a5410677274260eb91f2646afaeec16.jpg', '- Thương hiệu No Brand  \r\n- SKU 259670148_VNAMZ-362856659 \r\n- Dòng sản phẩm Game X-men 01 Nâng cấp \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Loại bộ vi xử lý Intel \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm	Thùng máy CPU, màn hình 22in Full HD siêu nét, bàn phím chuột led giả cơ và tặng 1 USB wifi', '', '- GAME X-MEN 01 ( Cây đen và trắng như hình ảnh chụp, màn hình đen)\r\n- Mainboard : Intel h81 (Haswell)\r\n- Cpu : Bộ xử lý chuỗi Intel® Pentium® G33203,00 GHz; 3MB SmartCache\r\n- Ram : 8Gb DRR 3\r\n- SDD: SSD 120G (Tốc độ truy xuất dữ liệu gấp 10 lần ổ HDD-7200V/P - Khởi động win chỉ từ 3-5s)\r\n- VGA: HD 7750 128 bit 1G D5 or NVIDIA GTX 650 128 bit 1G D5(Tối ưu trong tầm giá chơi mượt Pugb, Max Liên Minh)\r\n- Màn hình Led 22in Full HD siêu nét.\r\n- Chuột bàn phím Led giả cơ khuyến mại tặng kèm 1 USB tự động kết nối mạng wifi', 16),
(16, 'Bộ máy tính chơi Game PUBG, liên Minh.., làm việc, bán hàng (Đầy đủ CPU, màn hình 22in Full HD, tặng bàn phím, chuột led giả cơ, USB wifi tự động vào mạng', '4590000', 'https://vn-test-11.slatic.net/p/b11b5742a6a49d35433f3459d0f69429.jpg', '- Thương hiệu No Brand \r\n- SKU 247350826_VNAMZ-333073909 \r\n- Dòng sản phẩm Game X-men 01 Card đồ họa NVIDIA \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Kích thước màn hình 22 \r\n- Bộ nhớ hệ thống 4GB \r\n- Dung lượng ổ cứng 250GB \r\n- Bộ nhớ đồ họa 4GB Loại bộ vi xử lý Intel \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm	Thùng máy + màn hình 22 inch full hd + chuột bàn phím', '', '- GAME X-MEN 01( Full Đen như hình )\r\n- Mainboard : Intel h81 (Haswell)\r\n- Cpu : Bộ xử lý chuỗi Intel® Pentium® G3220 3,00 GHz; 3MB SmartCache\r\n- Ram : 4Gb DRR 3\r\n- Hdd : 250 Gb ( 7200 V/P)\r\n- VGA: HD 7750 128 bit 1G D5 hoặc NIVIA GTX650 128 bit 1G D5 (Tối ưu trong tầm giá chơi mượt Pugb, Max Liên Minh)\r\n- Màn hình: 22 inchđộ phân giải: 1920 * 1080 (Full HD)Tỷ lệ màn hình: 16: 9( Hãng: AoC,ViewSonic, Asus... )\r\nChuột bàn phím khuyến mại', 16),
(17, 'Tai Nghe Apple AirPods', '4100000', 'https://vn-test-11.slatic.net/p/2/tai-nghe-khong-day-apple-airpods-trang-1512459442-30858822-caf733d8f8c002984cb1bfad740ac441.jpg', '- Thương hiệu Apple \r\n- SKU AP069ELAADMISRVNAMZ-28194220 \r\n- Dòng sản phẩm Tai nghe không dây Apple AirPods \r\n- Loại bảo hành Bảo hành bởi trung tâm trong nước được hãng ủy quyền \r\n- Bluetooth YES \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	(VN) 1 x Ốp Lưng Apple AirPods (EN) 1 x Apple AirPods', '', '- Thiết kế bởi Apple\r\n- Âm bass sâu và phong phú\r\n- Tự động kết nối và khởi động\r\n- Cài đặt 1 lần cho tất cả các thiết bị Apple\r\n- Truy cập nhanh Siri chỉ với một cái nhấn\r\n- Tuổi thọ pin lên đến 24 giờ với 1 lần sạc\r\n- Âm thanh và giọng nói chất lượng cao', 17),
(18, 'Tai nghe Bluetooth JOWAY H09 Extra Bass, hỗ trợ đàm thoại 15h, nghe nhạc 14h, chống nước, mồ hôi, chống ồn cao cấp - Hãng phân phối chính thức', '335000 ', 'https://vn-test-11.slatic.net/p/fd80bf27e26f33ae8c4590c08e90fcc2.jpg', '- Thương hiệu Joway \r\n- SKU JO650ELAACZRX6VNAMZ-26735324 \r\nDòng sản phẩm H09 Hệ điều hành tương thích iOS \r\n- Loại bảo hành Bằng Phiếu bảo hành và Hóa đơn \r\n- Tính năng tai nghe Noise Isolating,Chống thấm mồ hôi,Khử /giảm tạp âm,Bluetooth / Không dây \r\n- Bluetooth YES \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	01 x tai nghe', '', '- Thương hiệu: JOWAY\r\n- Model: Joway H09\r\n- Bluetooth: chuẩn Bluetooth 4.1 mới nhất khoảng cách 10m\r\n- Tai nghe không dây, giúp dễ dàng vận động và di chuyển, không vướng víu\r\n- Chống thấm nước và mồ hôi\r\n- Chống ồn cao\r\n- Thích hợp cho các hoạt động thể thao\r\n- Không gây nhức tai nghe nghe lâu\r\n- Báo rung nhắc nhở khi có cuộc gọi đến\r\n- Thiết kế cong hợp thời trang\r\n- Tương thích với mọi thiết điện thoại bị có bluetooth\r\n- Tích hợp Microphone cho khả năng đàm thoại trực tiếp trên tai nghe\r\n- Pin: 160mAh\r\n- Thời gian sạc đầy: 1.5h\r\n- Thời gian đàm thoại liên tục:15h\r\n- Thời gian nghe nhạc liên tục:14h\r\n- Chính hãng JOWAY bảo hành 12 tháng 1 đổi 1', 17),
(19, 'Tay cầm chơi game Logitech F310 (Đen', '495000 ', 'https://vn-live-01.slatic.net/original/820657a06b4a9687a56cfaeb5f997b71.jpg', '- Thương hiệu Logitech \r\n- SKU 260275077_VNAMZ-364594917 \r\n- Dòng sản phẩm F310 \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	1 x bộ sản phẩm', '', '- Hàng chính hãng Logitech , chất lượng , độ bền cao\r\n- Tay bấm game có dây\r\n- Cổng kết nối USB 2.0\r\n- 8 nút hỗ trợ; 2 cần analog\r\n- Tay ốp cao su\r\n- Tương thích Windows 98/2000/xp/NT/Vista/7 + Mac\r\n- Độ nhạy cao', 18),
(20, 'Cần số xe hơi Logitech SHIFTER', '1449000 ', 'https://vn-live-01.slatic.net/original/7d7e072e04b498589a1b3dfe226f0b1d.jpg', '- Thương hiệu Logitech \r\n- SKU 260272373_VNAMZ-364599695 \r\n- Dòng sản phẩm SHIFTER \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 x bộ sản phẩm', '', '- Sang số thích hợp vào đúng thời điểm\r\n- Đua xe một cách thoải mái và tự tin\r\n- Duy trì tăng tốc qua mỗi số\r\n- Không trượt khi bạn chuyển số\r\n- Trọng lượng:0,72 kg(Không dây),0,76 kg(Có dây)\r\n- Các thành phần bằng thép và da mang lại sự thoải mái và bền bỉ', 18),
(21, 'Camera Samsung Gear 360 model 2017 (Trắng)', '4789000 ', 'https://vn-test-11.slatic.net/p/2/camera-samsung-gear-360-model-2017-trang-hang-phan-phoi-chinhthuc-1513175437-7665225-6b3273b2e99f74b0968f0f574e885b20-catalog_233.jpg', '- Thương hiệu Samsung \r\n- SKU SA937ELAA3405FVNAMZ-5423484 \r\n- Dòng sản phẩm Gear360 \r\n- Loại bảo hành Bảo hành điện tử \r\n- Độ phân giải video 1080p \r\n- Độ phân giải camera (MP) 25.9 \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1xSản phẩm\r\n', '', '- Chụp ảnh và quay phim 360 độ\r\n- Ống kính sáng f/2.0\r\n- Chống bụi kháng nước hoàn hảo\r\n- Video chất lượng cao 3840 x 1920\r\n- Hình ảnh độ phân giải 25.9MP\r\n- Chế độ 1 ống kính quay phim 180 độ và chụp ảnh', 19),
(22, 'SJCAM SJ360 360-Degree Action Camera 2K Wifi Panoramic VRv', '1200000 ', 'https://vn-live-01.slatic.net/original/c9ca353279c31be8374796f38414dc1a.jpg', '- Thương hiệu SJCAM \r\n- SKU 221105113_VNAMZ-277963519 \r\n- Dòng sản phẩm SJCAM SJ360 360-Degree Action Camera 2K Wifi Panoramic VR \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 12 tháng\r\nBộ sản phẩm gồm	1 Bộ', '', 'Chipset tốc độ cao Novatek 96660 để xử lý hình ảnh nhanh hơn Tốc độ. Kỹ thuật mã hóa hình ảnh H.264 đảm bảo camera để chụp ảnh có độ phân giải cao lưu trữ thấp ngay cả ở tốc độ bit thấpBảo hành : 12', 19),
(23, 'Camera chống trộm Xiaomi 360° 1080P Xiaomi QDJ4041GL (Trắng)-Chính hãng Xiaomi', '799000 ', 'https://vn-test-11.slatic.net/p/dc73dab9ccf0d4c74a69cd3970c6ffcf.jpg', '- Thương hiệu Xiaomi \r\n- SKU 250463077_VNAMZ-330834014 \r\n- Dòng sản phẩm QDJ4041GL \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 x Camera chống trộm Xiaomi 360° 1080P Xiaomi QDJ4041GL (Trắng) + 1 dây sạc USB + 1 đế gắn tường', '', '- Hồng ngoại quay ban đêm rất nhạy.\r\n- Xoay 360 độ góc lên và xuống tự do.\r\n- Độ phân giải 1080p.\r\n- Ứng dụng hỗ trợ Mihome trên tất cả smart điện thoại.\r\n- Cắm thẻ SD hỗ trợ 64GB.\r\n- Có thể kết nối thiết bị phát sóng wifi.', 20),
(24, 'Camera Thông Minh Mijia Basic 1080p', '599000 ', 'https://vn-test-11.slatic.net/p/702e336685694865279f814869d39a0a.jpg', '- Thương hiệu Xiaomi \r\n- SKU 270576546_VNAMZ-401534796 \r\n- Dòng sản phẩm SXJ02ZM \r\n- Loại bảo hành Bằng Thẻ bảo hành và Hóa đơn \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	Camera thông minh, dây sạc cổng Micro USB, sách hướng dẫn sử dụng', '', '- Độ phân giải full HD 1080p, xoay 360 độ, góc quay 130 độ hạn chế điểm mù, chế độ ghi hình 20fps.\r\n- Trang bị 10 đèn hồng ngoại 940nm giúp quay hình ảnh trong tầm nhìn 10m, hình ảnh ban đêm rõ nét như ban ngày.\r\n- Đàm thoại 2 chiều bằng điện thoại, hỗ trợ chế độ rảnh tay.\r\n- Trí tuệ nhân tạo AI cùng tính năng phát hiện chuyển động.\r\n- Kết nối mọi lúc mọi nơi bằng wifi.\r\n- Tính năng thu nhỏ cửa sổ trên ứng dụng giúp bạn vừa có thể làm việc lại vừa quan sát được khu vực lắp đặt máy quay. (Tính năng này chỉ hỗ trợ trên thiết bị Android)\r\n- Cùng lúc hiển thị nhiều camera trên một màn hình điện thoại.\r\n- Lưu trữ an toàn, ngăn chặn rò rĩ hình ảnh bằng thẻ nhớ Micro SD/Lưu trữ NAS/Lưu trữ đám mây', 20),
(25, 'SJCAM SJ360 360-Degree Action Camera 2K Wifi Panoramic VRv', '1200000 ', 'https://vn-live-01.slatic.net/original/c9ca353279c31be8374796f38414dc1a.jpg', '- Thương hiệu SJCAM \r\n- SKU 221105113_VNAMZ-277963519 \r\n- Dòng sản phẩm SJCAM SJ360 360-Degree Action Camera 2K Wifi Panoramic VR \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 Bộ', '', 'Chipset tốc độ cao Novatek 96660 để xử lý hình ảnh nhanh hơn Tốc độ. Kỹ thuật mã hóa hình ảnh H.264 đảm bảo camera để chụp ảnh có độ phân giải cao lưu trữ thấp ngay cả ở tốc độ bit thấpBảo hành : 12', 21),
(26, 'Camera hành trình SJCAM SJ360 (Đen) ', '2500000,8', 'https://vn-test-11.slatic.net/p/2/camera-hanh-trinh-sjcam-sj360-den-0307-80439633-86bc07d5360ec3d615ea64f8e1d43625-catalog_233.jpg', '- Thương hiệu SJCAM \r\n- SKU SJ486ELAAK2600VNAMZ-42311203 \r\n- Dòng sản phẩm SJ360 \r\n- Loại bảo hành Bằng Tem bảo hành Độ phân giải camera (MP) 12.0 \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 x Sản Phẩm', '', '- Nhà sản xuất: SJCAM\r\n- Modem: SJ360\r\n- Chức năng: Wi-Fi, quay vòng, tự động ngủ, hiệu ứng âm thanh\r\n- Cảm biến: Sony CMOS\r\n- Kích thước màn hình: 0,96 inch\r\n- Ống kính góc: 220 độ\r\n- Max. Pixel: 12MP\r\n- ISO: Auto, 100, 200, 400, 800, 1600\r\n- Giao diện: Mic, loa, micro USB, khe cắm thẻ nhớ TF\r\n- Dung lượng pin: 1300mAh', 21),
(27, 'Bút trình chiếu Logitech R500 - Đèn laze đỏ, Các nút bấm lập trình được, Bluetooth & kết nối không dây 2.4Ghz, Phạm vi 20m, Laze loại 2, USB dongle', '1199000,35', 'https://vn-live-01.slatic.net/original/6ecc18234936b13ed165732a6bee1577.jpg', '- Thương hiệu Logitech \r\n- SKU 260273274_VNAMZ-364597865 \r\n- Dòng sản phẩm R500 \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	Bút trình chiếu R500, USB Dongle, 1 pin AAA, Tài liệu hướng dẫn sử dụng', '', '- Thiết kế đẹp mắt, hiện đại\r\n- Có thể tự điều chỉnh các nút bấm bằng - ứng dụng Logitech Presentation App\r\n- Laze loại 2, hoạt động trong phạm vi 20m\r\n- Kết nối không dây 2.4GHz bằng đầu thu nano hoặc Bluetooth Smart\r\n- Dễ dàng tương thích với các hệ điều hành Windows, macOS, Chrome OS, iOS, Android hoặc Linux 2.6+\r\n- Bề mặt tiếp xúc bằng cao su mềm dễ cầm nắm', 22),
(28, 'Bút trình chiếu cao cấp Spotlight - Đèn laze kỹ thuật số, Nhấn mạnh, Phóng to, Đầu thu USB hoặc kết nối Bluetooth, Cắm vào là sử dụng ngay, Phạm vi hoạt động 30m', '2990000,35', 'https://vn-test-11.slatic.net/p/28e69157d3f61ca196ea49fefe9001a4.jpg', '- Thương hiệu Logitech \r\n- SKU 260262935_VNAMZ-364952461 \r\n- Dòng sản phẩm SPOTLIGHT \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 x bộ sản phẩm', '', '- Thiết bị trình chiếu không dây 30m\r\n- Kết nối Bluetooth hoặc Wireless 2.4GHz\r\n- Pin sạc 85mAh với thời lượng 3 tháng\r\n- Dùng trong 3 giờ chỉ với 1 phút sạc\r\n- 3 nút chức năng với nhiều tùy biến & có thể thay đổi thông qua App Logitech\r\n- Con trỏ chuột trên màn hình có thể bật Link Video hay Web\r\n- Hẹn giờ thông báo\r\n- Màu săc: Xám đen, Vàng', 22),
(29, 'Ốp lưng Nillkin dành cho Samsung Galaxy Samsung Galaxy J6 Plus Flip Case, QIN Series Da PU Lưng PC với Khe Cắm Thẻ Điện Thoại Túi Trường Hợp dành cho Samsung Galaxy Samsung Galaxy J6 + J6 Thủ', '248000,20', 'https://my-test-11.slatic.net/p/0c8c040a2ec13054c67c425daa79f26e.jpg', '- Thương hiệu Nillkin \r\n- SKU 248612202_VNAMZ-325466989 \r\n- Chức năng của ốp lưng/ bao da Chống sốc \r\n- Dòng sản phẩm Nillkin Qin series Flip Case \r\n- Chất liệu ốp lưng/bao da OTHER \r\n- Loại bảo hành No Warranty \r\n- Thương hiệu sản phẩm tương thích Samsung \r\n- Dòng sản phẩm tương thích 6 Mobile phones\r\n- Bộ sản phẩm gồm	1 x Nillkin Qin series Phone Case', '', '- Tương thích mẫu điện thoại: Samsung - Galaxy J6 + J6 Plus và J6 Prime (6.00 inch)\r\n- Vận chuyển từ: Trung Quốc\r\n- Chất liệu: Da PU\r\n- Lật và thu thập thiết kế, đa chức năng.\r\n- Bảo vệ điện thoại của bạn khỏi trầy xước và sốc.', 164),
(30, 'Ốp lưng OPPO A3S in hình nổi cực đẹp', '35000,46', 'https://vn-test-11.slatic.net/p/3c8e93ddfbd0733636a863e52b9c0ad3.jpg', '- Thương hiệu OEM \r\n- SKU 274810555_VNAMZ-421512231 \r\n- Chủ đề của ốp lưng Mẫu \r\n- Dòng sản phẩm Ốp lưng \r\n- Chức năng của ốp lưng/ bao da Chống mồ hôi,Chống sốc,Chống bụi \r\n- Chất liệu ốp lưng/bao da Silicone dẻo \r\n- Thương hiệu sản phẩm tương thích OPPO \r\n- Loại Ốp lưng/Bao da Ốp lưng', '', '- [Nhiều Mẫu] Ốp lưng OPPO A3S in hình nổi cực đẹp (cao su dẻo loại 1)\r\n- Bảo vệ chắc chắn cho chiếc điện thoại của bạn tránh khỏi va đập, rơi vỡ\r\n- Bảo vệ mặt sau và mặt trước cũng như viền xung quanh cho điện thoạiluôn luôn mới\r\n- Bảo vệ chắc chắn điện thoại khỏi những va đập trong quá trình sử dụng, chống trầy xước, chống bụi và đem lại cho bạn sự an tâm. Giữ điện thoại luôn mới, sử dụng được lâu dài hơn.\r\n- Những thiết kế trên ốp lưng vừa vặn, chuẩn xác 100% với những chi tiết thực của điện thoại như: nút bấm âm lượng, loa, vị trí máy ảnh, vị trí chân sạc hay tai nghe...\r\n- Không biến dạng khi bị tác động\r\n- Các góc cạnh thiết kế chính xác ôm khít tăng thêm sự chắc chắn cho máy\r\n- Các khe sạc, khe cắm tai nghe, lỗ camera được thiết kế chính xác không làm mất đi vẻ đẹp của máy\r\n- Dễ dàng tháo lắp với chỉ vài thao tác đơn giản', 164),
(31, 'Sim 4g viettel D500, trọn gói 1 năm, 4Gb tháng.', '350000,49', 'https://vn-test-11.slatic.net/p/c38596e47d07107934e0c200aa49b317.jpg', '- Thương hiệu Viettel \r\n- SKU 256940234_VNAMZ-353346957\r\n- Dòng sản phẩm Sim 4G Viettel ưu đãi 4Gb hàng tháng, trọn gói 1 năm không nạp tiền, không phát sinh cước', '', '- Sim 4g viettel D500 trọn gói 1 năm không nạp tiền, 4Gb mỗi tháng được cung cấp bởi AndyPham Shop ưu đãiTrọn gói 1 năm không phải nạp tiền, không phát sinh cước gia hạn.\r\n- Tặng 4Gb dung lượng truy cập internet tốc độ cao hàng tháng.\r\n- Dung lượng 4Gb tặng trong 12 tháng, không bảo lưu dung lượng nếu không sử dụng hết.\r\n- Hết dung lượng tốc độ cao, truy cập internet tốc độ thường 256Kbps/256Kbps.\r\nSim dcom chỉ truy cập internet không thể nghe gọi.\r\n- Sim 3in1 hỗ trợ được tất cả các thiết bị: smartphone, tablet, phát wifi, usb 3G,...\r\n- Kiểm tra dung lượng còn lại sau khi sử dụng: soạn KTTK gởi 191.\r\n- Hỗ trợ mua thêm dung lượng khi có nhu cầu, các gói hỗ trợ mua thêm dung lượng: MAX10, MAX20, MAX30, MAX50.', 165),
(32, 'SIM 4G MOBI TRỌN GÓI 1 NĂM KHÔNG NẠP TIỀN ( 4GB X 12 THÁNG)', '139000,29', 'https://vn-live-01.slatic.net/original/edaacc018a6a60491714ede1dc8cf6b0.jpg', '- Thương hiệu Mobifone \r\n- SKU 238319335_VNAMZ-304177401 \r\n- Dòng sản phẩm SIM 4G MOBI TRỌN GÓI 1 NĂM KHÔNG NẠP TIỀN ( 4GB X 12 THÁNG) \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 sim', '', '- THÔNG TINSIM 4G MOBI TRỌN GÓI 1 NĂM KHÔNG NẠP TIỀN ( 4GB X 12 THÁNG)\r\n- Dung lượng 48GB/năm ( Tặng 4Gb/ tháng liên tục)\r\n- MUA VỀ BỎ VÀO DÙNG NGAY, KHÔNG CẦN NẠP TIỀN, không mất thêm phí duy trì hàng tháng\r\n- Dùng hết tốc độ cao về tốc độ 256KB và không dùng không hạn chế dung lượng.\r\nSim 3 trong 1 ( MICRO, NANO) không cần cắt\r\n- Kiểm tra DATA: Bấm *901*7# hoặc tải ứng dụng MY MOBIFONE\r\n- Dùng được cho điện thoại, ipad, máy tính bảng, USB 3G Bộ phát Wifi…\r\n- Bảo hành 12 tháng', 165),
(33, 'Pin sạc dự phòng Xiaomi 2S 10000mAh', '380000,13', 'https://vn-test-11.slatic.net/p/546db4e656e90be2b81eea3cf205434d.jpg', '- Thương hiệu Xiaomi \r\n- SKU 221952555_VNAMZ-279305894 \r\n- Loại đầu vào Micro USB \r\n- Dòng sản phẩm 2S \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Tính năng pin sạc dự phong Fast Charging Loại Pin Lithium Polymer Brand Compatibility Xiaomi \r\n- Thời gian bảo hành 6 tháng\r\n- Bộ sản phẩm gồm	1 x Pin sạc dự phòng Xiaomi 2S 10000mAh', '', '- Dung lượng pin 10000mAh.\r\n- Thiết kế vỏ kim loại nguyên khối.\r\n- Lõi pin Lithium Polymer cao cấp.\r\n- Tự động điều chỉnh dòng điện thông minh.\r\n- 2 cổng ra, sạc cùng lúc 2 thiết bị.\r\n- Thương hiệu Xiaomi uy tín và thời thượng.', 166),
(34, 'Pin Sạc Dự Phòng YM-101 20000mAh Big dung lượng Sạc pin nhanh hiển thị pin điện tử kèm theo đèn pin 2 loại cổng vào android và IOS', '450000,46', 'https://vn-test-11.slatic.net/p/57ffe17169db7aa3368bbce432f1da86.jpg', '- Thương hiệu Cát Thái \r\n- SKU 266356558_VNAMZ-403960780 \r\n- Dòng sản phẩm Pin Sạc Dự Phòng YM-101 - 20000mAh \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 1 tháng', '', '- Model：YM-101\r\n- Loại pin: polymer (18650 Chip sạc 8 nhân)\r\n- Đèn Pin: đèn LED\r\n- Nguồn vào: 5V/1A\r\n- Nguồn ra: 5V1A/ 5V2.1A\r\n- Loại áp dụng： phổ thông thông dụng\r\n- Loại pin： Hình trụ nhôm\r\n- Chức năng bổ sung： Màn hình LCD hiển thị dung lượng pin và nguồn điện vào ra.\r\n- Màu: vàng hồng, đen, bạc', 166),
(35, 'Benks 2 cái Ống Kính KINGKONG Kính Cường Lực Bảo Vệ Cho iPhone XR 6.1 Kingkong Chống Trầy Xước Lưng Camera Len Phim bảo vệ Cho APPLE iPhone XR', '121000,39', 'https://my-test-11.slatic.net/p/fc1312abbead584ee0c868160dc399b3.jpg', '- Thương hiệu Benks \r\n- SKU 254402182_VNAMZ-343550089 \r\n- Dòng sản phẩm Benks 2Pcs Lens KINGKONG Tempered Glass Protector \r\n- Loại bảo hành No Warranty \r\n- Loại miếng dán màn hình Miếng dán kính cường lực\r\n- Bộ sản phẩm gồm	phone Lens Glass', '', '- Tên Thương hiệu: Benks\r\n- Sử dụng: Điện Thoại Di Động\r\n- Ốp gờ lên so với Phạm Vi Phủ Sóng: Có\r\n- Tính năng: Siêu mỏng, Dễ Dàng Lắp Đặt, Trầy Xước Chứng Minh\r\n- Đóng gói: Có\r\n- Với Gói Bán Lẻ: Có\r\n- Số mô hình: Cho iPhone XR 6.1\"\r\n- Loại: Camera Len Phim\r\n- Mẫu iPhone tương thích: iPhone XR\r\n- Điện Thoại tương thích Thương Hiệu: Apple iPhone\r\n- Loại: Bảo vệ ống kính\r\n- Sử dụng cho: cho iPhone XR len phim\r\n- Tính năng-1: Camera Len Phim\r\n- Tính năng-2: cho Iphone XR Camera sau bảo vệ\r\n- Tính năng-3 thành viên: Kingkong Chống Trầy Xước\r\n- Tính năng-4: Siêu mỏng, Dễ Dàng Lắp Đặt\r\n- Tính năng-5: HD Trong Suốt\r\n- Tính năng-6: Full, 0.15 mét tichness\r\n- Chất liệu: compesite temperd Kính', 167),
(36, 'Kính cường lực 10D full màn hình iphone 6,6s,7,8,x,xs max,6p,6sp,7p,8p,x,xs max,xs', '15000 ', 'https://vn-test-11.slatic.net/p/528283c937419383e8a3e21ae47e8cc7.jpg', '- Thương hiệu OEM \r\n- SKU 274098025_VNAMZ-419004861\r\n- Loại bảo hành No Warranty', '', '- Kính cường lực 10D dành cho IPHONE được làm từ chất liệu PLATINIUM cao cấp có độ cứng đạt chuẩn 9H giúp bảo vệ tuyệt đối cho màn hình cảm ứng khỏi những va chạm khó có thể tránh khỏi trong quá trình sử dụng.\r\n- Độ trong suốt gần như tuyệt đối không ảnh hưởng đến chất lượng hiển thị, cho hình ảnh chân thực, sắc nét y hệt màn hình gốc.\r\n- Bề mặt phủ lớp nano siêu bền , hạn chế vân tay và mồ hôi hiệu quả, giúp cho các thao tác cảm ứng trơn mượt, không hề bị rít tay và cũng dễ lau chùi hơn.', 167),
(37, 'TOPK AM30 90 Degree L Type Magnetic Cable , Nylon Braided LED Magnet Cable Micro type-c 8-pin 3in1 cable for xiaomi samsung iphone huawei', '193000,40', 'https://my-test-11.slatic.net/p/88a00674f6ead3701ab7e4995c6b103d.jpg', '- Thương hiệu TOPK \r\n- SKU 220991087_VNAMZ-277823817 \r\n- Chiều dài cáp (M) 1.0 \r\n- Dòng sản phẩm AM30 \r\n- Loại cáp Cáp sợi quang \r\n- Loại bảo hành No Warranty Kết nối MicroUSB \r\n- Thiết bị tương thích Apple,HTC,Nokia,Samsung\r\n- Bộ sản phẩm gồm	1 micro cable( Includes a magnetic micro plug)+1 type-c plug + 1 iphone plug', '', '- This cable only supports charging and does not support data transmission and fast charging.\r\n- Strong Magnetic Protection: The cable is connected to the plug for 1 second, and the magnetic effect is strong. no need worry about disconnecting or dropping off in charging your type c devices when no one\'s around.(Reversible magnetic connector charging).\r\n- Fast Charging Speed: up to 5V/2.4A, this magnetic type C charging cable has faster charger speed than other charger cable, full charge your MacBook less than 2 hours(with one 45W PD adapter), it is absolutely high quality and high efficiency.\r\n- Durable Materials: with high quality aluminum metal interface and nylon braided material cable, this magnetic c cable has high melting point, high strength, better wear resistance and anti-corrosive properties than other cable.\r\n- Compatible Devices: USB Type C laptops, such as New Macbook Pro/Macbook Air/Macbook, Chromebook Pixel, Samsung Galaxy Book, HP Spectrex360, Microsoft Surface Book, Lenovo ThinkPad, Dell XPS,etc. Type C Smartphones, such as Samsung S8, Huawei P9&P10, HTC10, LG Nexus 5X, Xiao MI 6s,etc.\r\n- 90 degree right angle elbow design, specially created for the game. Play games at the same time charging, barrier-free, easy to play games.\r\n- What\'s in box:1 micro cable( Includes a magnetic micro plug)+1 type-c plug + 1 iphone plug\r\n- Please contact us if you have any questions.If you like our products, please give us a five-star rating, thanks.', 168),
(38, 'Cáp sạc dây dù Hoco X14 dài 1M, 2M - cổng Lightning - sạc Iphone Ipad', '70000,54', 'https://vn-live-01.slatic.net/original/d3002edd4f08182abf733173344b12b1.jpg', '- Thương hiệu Hoco \r\n- SKU 246158982_VNAMZ-316084068 \r\n- Chiều dài cáp (M) 2 \r\n- Dòng sản phẩm Cáp Hoco X14 \r\n- Loại cáp Cáp \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thiết bị tương thích Apple\r\n- Kết nối Lightning Thời gian bảo hành 6 tháng\r\n- Bộ sản phẩm gồm	box, cáp', '', 'Model: Hoco X14Chiều dài cáp: 1 MétChuẩn giao tiếp: LightningDòng sạc tối đa: 5V-2.4AChất liệu: Dây dù, lõi đồng, hợp kim nhômDòng máy tương thích: iPhone 5/5s, iPhone 6/6s/6Plus/6s Plus, iPhone 7/7Plus, iPhone 8/8Plus, iPhone X, iPad, iPod Kết nối PC ok Bảo hành: 3 tháng 1 đổi 1', 168),
(39, 'Dây đeo cổ dùng cho điện thoại - dây ngẫu nhiên', '16000,38', 'https://vn-live-01.slatic.net/original/30da3eef8da855fc34df278e0f842a63.jpg', '- Thương hiệu eData \r\n- SKU 246736112_VNAMZ-317803394 \r\n- Dòng sản phẩm dây đeo điện thoại \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 1 tháng', '', 'Tránh rơi rớt khi sử dụng điện thoại.Mẫu mã đa dạng Hàng dày dặn chắc chắn', 168),
(40, 'Bộ nguồn sạc 5 cổng USB JOWAY JC27 cho điện thoại, máy tính bảng', '240000,20', 'https://vn-test-11.slatic.net/p/72a9fb00960364c6680481b01da60ddf.jpg', '- Thương hiệu Joway \r\n- SKU JO650ELAAKP03ZVNAMZ-43611014 \r\n- Dòng sản phẩm JC27 \r\n- Loại bảo hành Bằng Thẻ bảo hành và Hóa đơn sạc \r\n- USB nhiều cổng YES \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 x sản phẩm', '', '- 5 đầu ra USB giúp sạc cùng lúc nhiều thiết bị, bạn không phải chờ đợi thay phiên sạc từng thiết bị như trước nữa\r\n- Sử dụng IC thông minh tự điều chỉnh dòng phù hợp với thiết bị sạc, an toàn và tiện lợi, người dùng yên tâm hoàn toàn khi sử dụng\r\n- Nguồn điện sạc ra lên đến 4A, sạc nhanh hơn các thiết bị thông thường\r\n- Bề mặt sơn cao cấp chống bụi, chống xước\r\n- Kích thước 75,8 * 29,3 * 57,5mm nhỏ gọn dễ mang theo\r\n- Trọng lượng sản phẩm: 152g rất gọn nhẹ, có thể bỏ túi mang đi sử dụng ở nhiều nơi\r\n- Thiết kế độc đáo phù hợp với mọi lứa tuổi\r\n- Chính hãng JOWAY bảo hành 12 tháng 1 đổi 1\r\n- Đổi trả miễn phí trong 15 ngày đầu.', 170),
(41, 'Cốc sạc PISEN 2A TS-UC038 (Trắng) 1000000138', '135000 ', 'https://vn-test-11.slatic.net/p/coc-sac-pisen-2a-ts-uc038-trang-6314-8594122-f6d598e097aa5d022aeeb79036ccae0c-catalog_233.jpg', '- Thương hiệu Pisen \r\n- SKU 274752604_VNAMZ-421360069 \r\n- Dòng sản phẩm [Shop Hà Nội] Cốc sạc PISEN 2A TS-UC038 (Trắng) 1000000138 \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 củ sạc\r\n1 hộp đựng', '', '- Điện áp vào 100240V\r\n- Điện áp ra 1 cổng USB 5V 2A\r\n- Công suất 10W\r\n- Có chip IC thông minh bên trong; có thể tự nhận dạng thiết bị sạc và điều chỉnh sao cho mức điện áp phù hợp Giúp máy ổn định và bền hơn.', 170),
(42, 'Pin điện thoại 4C chống phù', '100000,40', 'https://vn-test-11.slatic.net/p/80004343fc002b617ee518ac27e6f028.jpg', '- Thương hiệu OEM \r\n- SKU 274216843_VNAMZ-419502810\r\n- Dòng sản phẩm OEM \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 sp', '', '- Chất liệu cao cấp\r\n- Độ bền cao\r\n- Dễ lắp đặt\r\n- Tương thích với các dòng máy 1202, 1661, 2220s, 2690, 3500, 6125, 6131, 6300.', 171),
(43, 'Pin cho điện thoại Samsung Galaxy Note 3 N9000', '236000 ', 'https://vn-test-11.slatic.net/p/2/pin-cho-dien-thoai-samsung-galaxy-note-3-n9000-6664-91613362-f112fc92e1d49576211269c62b34e09b-- catalog_233.jpg', '- Thương hiệu None \r\n- SKU NO007ELAAFODLVVNAMZ-32608912 \r\n- Dòng sản phẩm SSN9000Pin_11 \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng - trong nước \r\nDòng sản phẩm tương thích AIS Lava \r\n- Thời gian bảo hành 3 tháng\r\nBộ sản phẩm gồm	1 x Viên', '', '- Cam kết Pin Zin, Mới 100%\r\n- Dung lượng chuẩn, sạc nhanh đầy\r\n- Có 2 IC chống Phù, chống cháy nổ\r\n- Điện áp ổn định, tương thích cao', 171),
(44, 'Bao da dành cho iPad 2 3 4 Xoay 360 - Lopez Cute (Màu đen)', '129000,47', 'https://vn-test-11.slatic.net/p/2/bao-da-danh-cho-ipad-2-3-4-xoay-360-lopez-cute-den-4192-8519953-e2f23ea2227fddb9648982ca971e501b-catalog_233.jpg', '- Thương hiệu Lopez Cute \r\n- SKU 100324877_VNAMZ-312801276 \r\n- Dòng sản phẩm Bao da dành cho iPad 2 3 4 Xoay 360 \r\n- Loại bảo hành No Warranty \r\n- Loại Ốp lưng/Bao da Ốp lưng\r\n- Bộ sản phẩm gồm	1 x sản phẩm', '', '- Ốp nhựa cứng\r\n- Chất liệu da tổng hợp\r\n- Xoay 360 độ tiện dụng\r\n- Bao da iPad 2/3/4', 172),
(45, 'Bút Cảm Ứng 2 In 1 Dùng Cho Điện Thoại Máy Tính Bảng ( Màu Ngẫu Nhiên)', '19000,37', 'https://vn-live-01.slatic.net/original/f1c5f961e18d7abaa1abe6a1bb23258f.jpg', '- Thương hiệu OEM \r\n- SKU 222875702_VNAMZ-280668914 \r\n- Dòng sản phẩm Bút Viết Cảm Ứng 2 In 1 - Loại bảo hành No Warranty\r\n- Bộ sản phẩm gồm 1 Bút Viết Cảm Ứng 2 In 1 Dùng Cho Điện Thoại Máy Tính Bảng ( Màu Ngẫu Nhiên)', '', '- Thiết kế với kiểu dáng thời trang và độc đáo, ngoài chức năng cảm ứng bạn còn có thể sử dụng viết để ghi chép, ký tên rất tiện lợi.\r\n- Bút cảm ứng thiết kế bắt mắt, sang trọng\r\n- Bạn có thể sử dụng làm bút cảm ứng cho Ipad, Iphone, điện thoại, máy tính bảng đều được ...\r\n- Công nghệ hiện đại tạo độ chính xác tốt.\r\n- Ngoài chức năng cảm ứng bạn còn có thể sử dụng bút để ghi chép, ký tên như một cây bút thông thường\r\n- Dễ dàng thay thế bút khi hết mực\r\n- Sản phẩm được giao theo màu ngẫu nhiên.', 172),
(46, 'Sạc dự phòng không dây tiện lợi thiết kế nhỏ gọn thông minh', '230000,35', 'https://vn-test-11.slatic.net/p/a1a12bb30968e13c859fb5248a4c36c4.jpg', '- Thương hiệu No Brand \r\n- SKU 270010369_VNAMZ-415080977\r\n- Dòng sản phẩm Sạc', '', '- Sạc trực tiếp điện thoại không cần cáp\r\n- Sạc chỉ dành cho IP\r\n- Thiết kế nhỏ nhắn chỉ bằng thỏi son\r\n- Trọng lượng được tối ưu chỉ 75g', 173),
(47, 'Đế sạc nhanh không dây trên ô tô công xuất 10W tích hợp cảm biến thông minh chuẩn Qi cho iphone X , iphone 8, Samsung S7/9, Note5/8', '209000', 'https://vn-test-11.slatic.net/original/3ef6b50522ebce202ad120aaed34f083.jpg', '- Thương hiệu OEM \r\n- SKU 275480378_VNAMZ-423246856 \r\n- Dòng sản phẩm Đế sạc nhanh không dây trên ô tô \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	01 Giá sạc kiêm kẹp điện thoại + 01 miniUsb + 01 ốc vặn + 01 chốt kẹp khe điều hòa + 01 chốt dán cố định', '', '- Là loại đế sạc điện thoại không dây chuyên dùng trên oto, xe hơi.\r\n- Tích hợp Chip xử lý thông minh, đảm bao an toàn khi sử dụng.\r\n- Khi phát hiện bất kỳ dấu hiện không an toàn như quá nóng (> 60℃), quá tải (> 2A), đầy pin, sạc sẽ tự động dừng sạc để đảm bảo an toàn.\r\n- Thiết kế đẹp, sang trọng, có lót Silicone bên trong khiến bám chắc và bảo vệ điện thoại tốt hơn.\r\n- Tích hợp các công nghệ đời mới nhất. - Sạc nhanh vô đối.\r\n- Phù hợp với các dòng điện thoại có kích thước từ 4 - 6,5 inch.\r\n- Có tính năng khóa/ mở tự động mỗi khi người dùng để điện thoại lên giá đỡ hoặc nhấc điện thoại ra khỏi giá đỡ.\r\n- Có tính năng xoay 360º và điều chỉnh góc nhìn rộng hơn, thoải mái hơn.\r\n- Sản phẩm tốt nhiều khách hàng review cực cao (như hình).', 173),
(48, 'Chuột game Logitech G300S - Thiết kế đối xứng - 9 nút bấm có thể lập trình - Bộ nhớ có sẵn', '390000,20', 'https://vn-test-11.slatic.net/p/be767c3db05357e7a6511d8ed07cd2b2.jpg', '- Thương hiệu Logitech \r\n- SKU 260190369_VNAMZ-364395046 \r\n- Dòng sản phẩm G300s \r\n- Loại bảo hành Bảo hành điện tử \r\n- Tính năng của chuột Cổng USB,Có dây \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 x bộ sản phẩm', '', '- Độ phân giải 2500DPI có thể điều chỉnh từ 250\r\n- Đèn LED với tùy chọn 7 màu sắc khác nhau\r\n- 9 nút bấm có thể lập trình và lưu lại thành 3 profile\r\n- USB Report Rate 1000/second\r\n- Độ bền lên đến 10 triệu lần click\r\n- Thiết kế chuyên nghiệp, đẹp mắt, thoải mái khi điều khiển', 174),
(49, 'Chuột Game thủ DeTeK Divipad GearLord G502 có đèn LED đổi màu cực đẹp', '180000,39', 'https://vn-test-11.slatic.net/p/2/chuot-game-thu-detek-gearlord-g502-co-den-led-doi-mau-cuc-dep-5095-35073044-e06bef73710816cbec260a85f707850e-catalog_233.jpg', '- Thương hiệu Detek \r\n- SKU DE011ELAAQ7V7HVNAMZ-54430869 \r\n- Dòng sản phẩm G502 \r\n- Loại bảo hành Bằng Phiếu bảo hành và Hóa đơn \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm	1 x Sản phẩm', '', '- Thiết kế thanh lịch, tiện dụng, hoàn hảo và phù hợp với cả laptop hay PC\r\n- Dễ cài Đặt, dễ sử dụng.\r\n- Tương thích với nhiều dòng máy tính, laptop', 174),
(50, 'Loa Microlab M108', '510000,30', 'https://vn-test-11.slatic.net/p/abd36d4aa1da1da1b147ad8192a71245.jpg', '- Thương hiệu Microlab \r\n- SKU 259952341_VNAMZ-363754305 \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng', '', '- Công suất :11watt\r\n- Tần số đáp ứng :35Hz-20Hz\r\n- Tỉ số nén nhiễu S/N >75dB\r\n- Kích thước (WxHxD) :loa trầm 145x227x180mm, loa vệ tinh 96x136x94mm', 175),
(51, 'Loa Máy Tính Golden Field H302 (Đen)', '450000,5', 'https://vn-live-01.slatic.net/original/e042d6225deedbbf440e533ff98ebb86.jpg', '- Thương hiệu Golden Field \r\n- SKU 238057344_VNAMZ-303770675 \r\n- Dòng sản phẩm Loa Máy Tính Golden Field H302 (Đen) \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng', '', 'Giới thiệu sản phẩm Loa máy tính Golden Field H302 2.1 (Đen)Loa Golden Field H302  là dòng loa cao cấp với chất lượng âm thanh được đánh giá khá cao bởi người tiêu dùng. Chất lượng tốt cùng với mức giá cạnh tranh được, cung cấp trên thị trường thì đây sẽ là một sản phẩm bạn không nên bỏ qua nếu đang có nhu cầu sắm một bộ loa cho mình.Có thể nói, với cuộc sống đầy những lo toan bộn bề, áp lực học tập, áp lực công việc khiến con người trở nên căng thẳng và mệt mỏi hơn bao giờ hết. Và một phương pháp hiệu quả để giúp bạn lấy lại được tinh thần, giảm Stress và thư giãn hơn đó chính là nghe nhạc. Âm nhạc trở thành một phần không thể thiếu và nhu cầu nghe nhạc có ở mọi lúc mọi nơi. Bạn có thể nghe nhạc qua laptop, điện thoại, máy tính bảng, Mp3… Tuy nhiên, âm thanh cho ra từ các thiế bị trên thường khá nhỏ và chỉ phù hợp nhu cầu cá nhân. Vì vậy nếu bạn muốn nghe nhạc chia sẻ cùng nhiều người hơn thì những thiết bị trên không thể cung cấp đủ âm lượng được. Không phải lo lắng nhé. Dòng loa vi tính 2.1 Golden Field  cho bạn âm thanh tuyệt vời và  sống động.', 175),
(52, 'Phần mềm diệt virus Bitdefender Internet Security 2016 - 1PC/Year', '199000,25', 'https://vn-test-11.slatic.net/p/2/phan-mem-diet-virus-bitdefender-internet-security-2016-1pcyear-3970-5687072-ed681ab22cb04dd8842ba878e13ee86c-catalog_233.jpg', '- Thương hiệu Bitdefender \r\n- SKU BI149ELAA1M1EHVNAMZ-2649500 \r\n- Số đĩa 1 \r\n- Dòng sản phẩm Công ty cổ phần TPT (Cần Thơ)-Bitdefender Internet Security 2016 \r\n- Loại bảo hành No Warranty \r\n- Tựa sản phẩm Phần mềm diệt virus Bitdefender Internet Security 2016 - 1PC/Year\r\n- Bộ sản phẩm gồm	1x sản phẩm', '', '- Sản phẩm diệt virus tốt nhất năm.\r\n- Không làm giảm hiệu suất hoạt động của thiết bị – Giải thưởng vàng cho hiệu suất của hệ thống.\r\n- Tự động bảo vệ hoàn toàn.\r\n- Bảo mật nhận dạng cá nhân của bạn.\r\n- Tương thích với Windows 10.-', 176),
(53, 'Phần mềm diệt virus Kaspersky Internet Security 1PC', '312000,17', 'https://vn-test-11.slatic.net/p/4f52c6a526dc2dc8ab4fbf276187afd1.jpg', '- Thương hiệu Kaspersky \r\n- SKU KA881ELAUXZSVNAMZ-501515 \r\n- Dòng sản phẩm Công ty máy tính Nova-KASPERSKY-IN1PC \r\n- Loại bảo hành No Warranty\r\n- Bộ sản phẩm gồm 1 x hộp', '', '- Bảo vệ máy tính của bạn khỏi các mối đe dọa trên Internet ngày nay\r\n- Tăng tính bảo mật cho ngân hàng & mua sắm trực tuyến\r\n- Bảo vệ quyền riêng tư và thông tin cá nhân của bạn', 176),
(54, 'Kính lúp soi kẹp hàn mạch điện tử có đèn 5 led (TD)', '400000,43', 'https://vn-test-11.slatic.net/p/2/kinh-lup-soi-kep-han-mach-dien-tu-co-den-5-led-td-6908-61767893-76065c0900b9936da8bff36dd8135cf6-catalog_233.jpg', '- Thương hiệu OEM \r\n- SKU OE680ELAANQP2KVNAMZ-50136216 \r\n- Dòng sản phẩm Kính lúp soi kẹp hàn mạch điện tử có đèn 5 led (TD) \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 1 tháng\r\n- Bộ sản phẩm gồm	x cơ sở Đứng & LED Light1 x 90mm Đường kính ống kính2 x 34mm Đường kính ống kính1 x cắm Power adapter EU1 x tiếng Anh Hướng dẫn', '', '- Kính lúp dùng để kiểm tra các mạch điện tử chủ yếu có chíp dán \r\n- Kính lúp để đọc thông số IC và cũng có thể kẹp board mạch để hàn linh kiện điện tử \r\n- Kính lúp có đường kính : 65 mm \r\n- Kính lúp có đèn chiếu sáng giúp bạn có thể hàn linh kiện vào ban đêm', 177),
(55, 'Rệp nối cáp đồng và cáp mạng K1 (100 cái)', '59000,24', 'https://vn-live-01.slatic.net/original/182ecd577985ca9e9a762990f7fa350c.jpg', '- Thương hiệu No Brand \r\n- SKU 235176962_VNAMZ-299520748 \r\n- Dòng sản phẩm Rệp nối dây \r\n- Loại bảo hành No Warranty\r\n- Bộ sản phẩm gồm 1 x 100 hạt rệp', '', '- Rệp nối dây điện thoại, dây mạng : 2 Port, lưỡi cắt kép\r\n- Đường lõi đồng : 0.4mm-0.7mm\r\n- Đường kính vỏ lớn nhất : 1.5mm\r\n- Kích thước: 12*8*9(mm)', 177),
(56, 'Ugreen 8 in 1 USB-C Hub Multi-Port Type C Adapter (50538)', '1580000,24', 'https://vn-live-01.slatic.net/original/6562d8c4df238e44e7214615d13596cb.jpg', '- Thương hiệu UGREEN \r\n- 246336070_VNAMZ-316413034 \r\n- Cổng ra Video HDMI \r\n- Dòng sản phẩm Cáp USB Type C \r\n- Loại bảo hành Bảo hành điện tử \r\n- Loại cáp Ethernet,USB 2.0/3.0,RJ45 \r\n- Thời gian bảo hành 12 tháng', '', '- Kết nối đầu vào :USB type-C\r\n- Kết nối đầu ra :1xHDMI;1xLan Gigabit 100/1000Mbps ;1xCổng sạc USB type-C ;3xUSB 3.0 ;1xđọc thẻ SD/TF.\r\n- Kích thước :105mm x 50mm x 16mm\r\n- Hỗ trợ sạc cổngUSB type-Clên đến20V/3A', 178),
(57, 'Thiết bị chuyển đổi DisplayPort sang VGA (Trắng)', '162761,48', 'https://vn-test-11.slatic.net/p/2/thiet-bi-chuyen-doi-displayport-sang-vga-trang-2339-5726021-f21522a9b5a269a51b9758aecafbe100-catalog_233.jpg', '- Thương hiệu OEM \r\n- SKU CH380ELAZURNVNAMZ-812774 \r\n- Dòng sản phẩm The Gioi Phu Kien Online (Hà Nội)-MiniDis-VGA1 \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm 1 x Sản phẩm', '', 'Chất liệu cao cấpThiết kế hiện đạiĐáp ứng nhu cầu người sử dụngSản xuất tại Trung Quốc.', 178),
(58, 'Màn hình Meze 27 Inch - Độ phân giải 2K QHD - Tấm nền IPS (Bảo hành 2 năm)', '6000000,42', 'https://vn-test-11.slatic.net/p/4be1884a1673a7f55ceaffeb4831c783.jpg', '- Thương hiệu Meze \r\n- SKU 260158614_VNAMZ-364408700 \r\n- Dòng sản phẩm Màn hình 2K Full HD Meze 27 Inch \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Đặc điểm hiển thị QHD (2560 x 1440) \r\n- Kích thước màn hình 27 \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 x bộ sản phẩm', '', '- Thương hiệu : Meze\r\n- Màn hình : IPS\r\n- Kích thước màn hình : 27 Inch\r\n- Màn hình hiển thị : QHD 2K\r\n- Độ phân giải màn hình : 2560x1440 pixels\r\n- Kích thước : 610mm x 365mm x 460mm\r\n- Độ mỏng : 7mm, cạnh chắn 2mm\r\n- Tỷ lệ tương phản : 50.000.000:1\r\n- Bảo hành 2 năm TOÀN QUỐC\r\n', 179),
(59, 'Màn Hình 15.6 cho máy tính bàn Hàng nhập Mỹ ', '1191900,41', 'https://vn-live-01.slatic.net/original/b4118b74ecd1f3fbd145eb898286cd82.jpg', '- Thương hiệu OEM \r\n- SKU 246869268_VNAMZ-318236212 \r\n- Dòng sản phẩm Màn Hình Acer đồng bộ Hàng nhập Mỹ \r\n- Loại bảo hành Bằng Thẻ bảo hành và Hóa đơn \r\n- Thời gian bảo hành 12 tháng\r\nBộ sản phẩm gồm	1xSản phẩm', '', 'Màn Acer', 179),
(60, 'Bàn Di Chuột Chơi Game Cao Cấp Logitech G440 - Mousepad cứng', '680000,41', 'https://vn-live-01.slatic.net/original/6d55ed59ac0e868e0f7c075a644a9d03.jpg', '- Thương hiệu Logitech \r\n- SKU 260186572_VNAMZ-364387430 \r\n- Dòng sản phẩm G440 \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	1 x bộ sản phẩm', '', '- Chiều cao: 280 mm (11,03 in)\r\n- Chiều rộng: 340 mm (13,39 in)\r\n- Chiều dày: 3 mm (0,13 in )\r\n- Trọng lượng: khoảng 229 g (8,07 oz )', 180),
(61, 'Bàn di chuột TYLOO kích thước 32cm x24cm x4 ly khâu viền', '30000,50', 'https://vn-test-11.slatic.net/p/2/ban-di-chuot-tyloo-kich-thuoc-32cm-x24cm-x4-ly-khau-vien-6218-47833134-12ac7fada974ecf85c69699030546643-catalog_233.jpg', '- Thương hiệu TYLOO \r\n- SKU TY797ELAAPOIB6VNAMZ-53490348 \r\n- Dòng sản phẩm Bàn di chuột TYLOO \r\n- Loại bảo hành No Warranty', '', 'Bàn di chuột TYLOO kích thước 32cm x24cm x4 ly khâu viền ', 180);
INSERT INTO `sanpham` (`ID`, `TenSP`, `GiaSP`, `Anh`, `DacTinh`, `DacDiemNoiBat`, `MoTaSP`, `IDDM`) VALUES
(62, 'Bảng viết, bảng vẽ điện tử LCD thông minh, 8.5 inch, Pin dùng 2 năm.', '149000,44', 'https://vn-test-11.slatic.net/p/9f6e9cb8f50f70647b6aa38a62076477.jpg', '- Thương hiệu No Brand \r\n- SKU 265472299_VNAMZ-382118528 \r\n- Dòng sản phẩm bảng vẽ máy tính \r\n- Loại bảo hành No Warranty\r\n- Bộ sản phẩm gồm	1 sản phẩm', '', '- Bảng viết điện tử dễ sử dụng,bền đẹp.\r\n- Chất liệu thân thiện với môi trường, an toàn với trẻ nhỏ.\r\n- Ko có bụi độc hại gây bệnh về hô hấp.\r\n- Quà tặng cho con yêu thích thú.\r\n- Thiết kế nhỏ gọn, dễ dàng mang theo, sử dụng mọi lúc mọi nơi.\r\n- Giúp bé từ bỏ máy tính bảng và điện thoại.\r\n- Chỉ sử dụng 1 viên pin, thời gian sử dụng pin lên đến 2 năm, thay pin dễ dàng.\r\n- Xoá nhanh chỉ với 1 nút ấn.\r\n- Kích thước: 8,5 inch.\r\n- Bảng điện tử tự xóa là một thay thế sáng tạo cho giấy viết vừa tạo sự thân thiện với môi trường, bảo vệ tài nguyên rừng vì không cần dùng tới giấy.\r\n- Nó còn rất kinh tế với bạn mua 1 lần dùng mãi mãi.\r\n- Giúp bé từ bỏ máy tính bảng và điện thoại.\r\n- Góc học tập trở nên gọn gàng hơn khi nói không với giấy nháp.\r\n- Bé yêu thích ham mê học tập, thỏa sức vẽ vời sáng tạo trên mành hình LCD.\r\n- Made in Japan', 181),
(63, 'Huion H420 USB Drawing Writing Art Graphics Board Tablet 4x2.3inch Digital Pen(buy 1 get 4pcs pen nibs)', '980000,40', 'https://my-test-11.slatic.net/p/2/huion-h420-usb-drawing-writing-art-graphics-board-tablet-4x23inchdigital-pen-4865-55060572-085562c5b2822693fa473390bf1f12f5-catalog_233.jpg', '- Thương hiệu Huion \r\n- SKU BR258ELAA44HBXVNAMZ-7457217 \r\n- Dòng sản phẩm H420 \r\n- Loại bảo hành No Warranty\r\n- Bộ sản phẩm gồm	\r\n1 x Graphics drawing tablet\r\n1 x Digital pen\r\n1Bag x Accessories \r\n1 x USB cable\r\n1 x CD( please connect with us to get the link of CD) \r\n1 x English User Manual \r\nPackaged in paper box', '', '- Compatible with all major graphics application: including Corel Painter, CorelDraw, Adobe Photoshop, Adobe Illustrator, Adobe Fireworks, Macromedia Flash, Comic Studio, SAI, Infinite Stratos, 3D MAX, Autodesk MAYA, Pixologic ZBrush, etc.\r\n- Annotation/Annotate for Word: allow you to handwrite and annotate on Microsoft Word, Documents and save the files\r\n- Annotation for Picture/Text: you can catch up the pictures on the screen, and then put the annotations or insert the texts and pictures when doing the presentation, sending email or saving those pictures.\r\n- Commander: you can write down the command symbols directly on the digital pen tablet to manipulate the computer to execute commands or open files.', 181),
(64, 'Sạc Laptop HP 19v-4.74a đầu kim (Đen)', '169000,20', 'https://vn-live-01.slatic.net/original/c12df61e6f1703203ee926c3c4e235e3.jpg', '- Thương hiệu OEM \r\n- SKU 225028001_VNAMZ-283934231 \r\n- Dòng sản phẩm Sạc Laptop HP 19v-4.74a đầu kim (Đen) \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	Sạc +Hóa đơn', '', '- Điện áp vào AC100V240V , 50/60Hz\r\n- Điện áp ra DC19V\r\n- Dòng cung cấp 4.74A, 90W\r\n- Khích thước đầu sạc: 7.4mmx5.0mm\r\n- Chế độ tự ngắt khi điện áp quá tải\r\n- Sử dụng cho laptop HP\r\n- Đổi mới sản phẩm trong suốt thời gian bảo hành', 182),
(65, 'Sạc Macbook Pro 18.5V-4.62A - 85W magsafe 1 - OEM', '550000 ', 'https://vn-live-01.slatic.net/original/fde07a925514bb01b94cb824a517dec0.jpg', '- Thương hiệu None \r\n- SKU NO007ELAANI0OUVNAMZ-49683894 \r\n- Dòng sản phẩm Sạc Macbook Pro 85W, Magsafe 1 \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	Bộ Sạc Đầy Đủ', '', '- Điện áp vào : 100v – 240v\r\n- Điện áp ra : 18.5V-4.62A\r\n- Công suất : 85W\r\n- Loại chân cắm : Đầu Chữ L\r\n- Loại sản phẩm: Hàng linh kiện\r\n- Tình trạng: Mới 100%', 182),
(66, 'Bộ phát Wifi 300Mbps ToToLink N200RE-V3 (Trắng)', '299000,46', 'https://vn-live-01.slatic.net/original/de30e5a2c40fab85303ec101839f35a4.jpg', '- Thương hiệu TOTOLINK \r\n- SKU 212539923_VNAMZ-266204529\r\n- Dòng sản phẩm Bộ phát sóng Wifi \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 2 năm', '', '- HÀNG CHÍNH HÃNG (TOTOLINK VIETNAM)\r\n- Thương hiệu Totolink số 1 của Hàn Quốc\r\n- Sóng Wifi mạnh và cực kỳ ổn định\r\n- 2 anten 5dBi\r\n- Tốc độ 300Mbps\r\n- WiFi Schedule / Reboot Schedule\r\nVLAN IPTV\r\n- Chế độ Repeater', 183),
(67, 'Thiết Bị Phát Wifi Từ Sim 3G 4G Huawei GL10P - Kết Nối Nhiều Thiết Bị , Pin Bền, Màn Hình Cảm Ứng\r\n', '1000000,36', 'https://vn-live-01.slatic.net/original/df463cea08afb45de6023e25fd2ab3ae.jpg', '- Thương hiệu Huawei \r\n- SKU 248750620_VNAMZ-326740681 \r\n- Dòng sản phẩm Thiết Bị Phát Wifi Từ Sim 3G 4G Huawei GL10P - Kết Nối Nhiều Thiết Bị , Pin Bền, Màn Hình Cảm Ứng \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 12 tháng', '', '- Bộ phát wifi từ sim 3G/4G nhỏ gọn; tốc độ cao lên đến 43.2Mb/s\r\n- Kết nối với 10 thiết bị wifi cùng lúc\r\n- PIN 2400mAh, thời gian hoạt động liên tục lên tới 10 tiếng Thời gian chờ 600 giờ, pin ngoài có thể sạc hoặc thay thế dễ dàng\r\n- Kích thước nhỏ gọn, là sản phẩm cơ động tiện dụng hàng đầu trong các sản phẩm wifi. có khả năng gửi tin nhắn\r\n- Quản lý bằng ứng dụng trên mobile tiện lợi Hỗ trợ tất cả nhà mạng Việt Nam và thế giới\r\n- Hàng NHẬT BẢN Chất lượng cao\r\n- Sử dụng được tất cả các mạng như, vietnamobile,viettel , vinaphone, mobifone\r\n- Màn hình LCD 2.4inch\r\n- Có màn hình hiển thị sms , số thiết bị kết nối ..vv\r\n- Tần số 3G/4G: WCDMA HSPA + / HSPA / UMTS 2100/1900/850 MHzTần số 2G: GSM / GPRS / EDGE 1900/1800 / 900 / 850MHz\r\n- Bảo hành 12 tháng 1 đổi 1 bằng tem và hóa đơn mua hàng và tem bảo hành', 183),
(68, 'Kích sóng Wifi TOTOLINK EX200', '350000,44', 'https://vn-live-01.slatic.net/original/2a6544a68d4957e410f0e28ee8bf3133.jpg', '- Thương hiệu TOTOLINK \r\n- SKU 214596534_VNAMZ-268888823 \r\n- Dòng sản phẩm Khuyếch đại sóng wifi \r\n- Loại bảo hành Bằng hộp sản phẩm hoặc Số seri \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1*bộ mở rộng sóng EX200, 1*Hướng dẫn sử dụn', '', '- Phủ sóng đến mọi nơi\r\n- Tương thích chuẩn 802.11a/b/g/n\r\n- Tốc độ lên tới 300Mbps- 2 anten ngoài cho khả năng phát sóng mạnh\r\n- Thiết kế nhỏ gọn và hiện đại\r\n- Nút kết nối nhanh WPS để mở rộng sóng Wi-Fi dễ dàng\r\n- 1 Cổng RJ45 giúp kết nối có dây với các thiết bị khác\r\n- Tiết kiệm điện và bảo vệ môi trường', 184),
(69, 'Thiết bị Kích sóng WiFi Repeater TOTOLINK EX200 (Trắng) 1000000403', '265000,29', 'https://vn-test-11.slatic.net/p/2/thiet-bi-kich-song-wifi-repeater-totolink-ex200-trang-2674-5011438-29328d5a7f58448af5bce43a8cfc8410-catalog_233.jpg', '- Thương hiệu TOTOLINK \r\n- SKU TO549ELAA4YS1DVNAMZ-9151838 \r\n- Dòng sản phẩm khuếch đại sóng Tốc độ truyền (Mbps) 300 \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	:\r\n1 khuếch đại sóng\r\n1 khay\r\n2 sách hướng dẫn sử dụng', '', '- Thương hiệu Totolink nổi tiếng của Hàn Quốc\r\n- Sóng Wifi mạnh và cực kỳ ổn định\r\n- Đảm bảo hàng chính hãng\r\n- Dễ dàng WiFi mở rộng\r\n- Sử dụng thân thiện Setting Giao diện cho điện thoại thông minh\r\n- Kết nối với nguồn phát cực nhanh với nút nhấn WPS', 184),
(70, 'USB router phát wifi bỏ túi - màu đen', '150000,50', 'https://vn-test-11.slatic.net/p/2/original-360-portable-mini-pocket-wifi-3-wireless-network-router-black-intl-0952-0855752-378faf648fcea2be7fb6bef946e7982a-catalog_233.jpg', '- Thương hiệu Not Specified \r\n- SKU NO128ELAA1J7BWVNAMZ-2490312 \r\n- Dòng sản phẩm sportschannel-99950.03\r\n- Bộ sản phẩm gồm	1 x 360 Pocket WiFi 3', '', '- Tiêu thụ điện năng thấp\r\n- Kích thước nhỏ và trọng lượng nhẹ\r\n- Hỗ trợ 20 mhz/40 mhz băng thông\r\n- Hỗ trợ QoS-WMM, WMM-PS\r\n- Hỗ trợ Cisco CCX\r\n- Hỗ trợ Cơ Sở Hạ Tầng và ad-hoc\r\n- Giao thức Tiêu Chuẩn: IEEE 802.11n/g/b\r\n- Tự động phát hiện mạng và điều chỉnh transmisson tỷ lệ', 185),
(71, 'Router Wifi Xiaomi gen 4C', '290000 ', 'https://vn-live-01.slatic.net/original/042819c3ad085e54f93867b36f064d55.jpg', '- Thương hiệu Xiaomi \r\n- SKU 245322906_VNAMZ-314430239 \r\n- Dòng sản phẩm Router Wifi Xiaomi gen 4C \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Thời gian bảo hành 3 tháng\r\n- Bộ sản phẩm gồm	1 x sản phẩm', '', '- Kích thước: 200 x 134.86 x 178.98 mm.\r\n- Chip xử lý: MT7628DA\r\n- ROM: 16MB NorFlash.\r\n- RAM: 64MB DDR2.\r\n- Antenna: 4 x 5dBi (2x2).\r\n- Chuẩn WIFI: IEEE 802.11N\r\n- Tốc độ: 300Mbps\r\n- Băng tần hỗ trợ: 2.4G.\r\n- WAN: 1 x 10/100M\r\n- LAN: 2 x 10/100M\r\n- Bảo mật: WPA-PSK/ WPA-PSK2.\r\n- Điện áp: 5V-1A.\r\n- Bảo hành: 3 tháng', 185),
(72, 'TP-Link bộ phát Wi-Fi di động 4G LTE cho kết nối Wifi siêu nhanh - M7350', '1899000,24', 'https://vn-test-11.slatic.net/p/cba21f23c05d6eb687336609c29b8e52.jpg', '- Thương hiệu TP-Link \r\n- SKU TP081ELAA1DTG7VNAMZ-2176871 \r\n- Dòng sản phẩm TP-Link-M7350 - Bộ phát Wifi Di động 4G LTE \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 x Sản phẩm', '', '- Chính sách bảo hành 1 đổi 1 trong vòng 2 năm kể từ ngày mua\r\n- Hỗ trợ chuẩn 4G LTE với tốc độ tải xuống lên đến 150Mbps và tốc độ tải lên lên đến 50Mbps\r\n- Hỗ trợ 10 thiết bị kết nối cùng lúc\r\n- Thông tin trực quan với màn hình hiển thị tích hợp\r\n- Pin dung lượng 2000mAh cho 8 tiếng hoạt động liên tục\r\n- WiFi băng tần kép 2.4GHz hoặc 5GHz\r\n- Trang bị khe cắm thẻ nhớ micro SD hỗ trợ dung lượng lưu trữ lên đên 32G\r\n- Tự động nhận dạng và cấu hình thẻ SIM Việt Nam**Áp dụng cho thẻ SIM của Mobifone, Vinaphone và Viettel', 186),
(73, 'TP-Link TL-MR6400 - Bộ Phát Wifi Di Dộng 3G/4G', '2500000,17', 'https://vn-test-11.slatic.net/p/2/tp-link-tl-mr6400-bo-phat-wifi-di-dong-3g4g-2410-8532846-e308894cb886dbca76e75c88a9f2cb88-catalog_233.jpg', '- Thương hiệu TP-Link \r\n- SKU TP081ELAA3UXTIVNAMZ-6902595 \r\n- Dòng sản phẩm mr6400 \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	:\r\n1 x mr6400\r\n1 x adaptor\r\n1 x hộp + driver + hdsd', '', '- Chia sẻ mạng 4G LTE với nhiều thiết bị Wi-Fi và tận hưởng tốc độ download lên tới 150Mbps\r\n- Tốc độ Wi-Fi chuẩn N lên tới 300Mbps\r\n- Ăng ten tích hợp cung cấp kết nối Wi-Fi ổn định\r\n- Không yêu cầu cấu hình - chỉ cần gắn thẻ SIM và bật nguồn cho thiết bị để tận hưởng truy cập internet tốc độ cao\r\n- Cổng LAN/WAN tùy chọn được, linh hoạt, cho phép bạn lựa chọn các kiểu kết nối', 186),
(74, 'USB thu sóng Wifi 802.11N siêu nhỏ cực gọn tốc độ 150Mbps\r\n', '35000 ', 'https://vn-test-11.slatic.net/p/6b4e749ee3563efec80f3a6c9ed4bae5.jpg', '- Thương hiệu OEM \r\n- SKU 266704373_VNAMZ-387152343 \r\n- Dòng sản phẩm USB thu sóng Wifi 802.11N siêu nhỏ cực gọn tốc độ 150Mbps \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 10 tháng', '', '- Thiết kế siêu nhỏ\r\n- WiFi chuẩn N\r\n- tốc độ 150Mbps\r\n- Giải pháp gọn nhẹ cho PC của bạn\r\n- Hỗ trợ kết nối internet tốc độ cao\r\n- Thay thế Card mạng Wifi cho máy tính của bạn', 187),
(75, 'usb thu wifi cho pc 802 hổ trợ 1 ăng ten thu sóng cực mạnh tốc độ 150mp\r\n', '100000,50', 'https://vn-live-01.slatic.net/original/4ce6311384d21c2ca74b260c13232afb.jpg', '- Thương hiệu No Brand \r\n- SKU 250674676_VNAMZ-331485098 \r\n- Dòng sản phẩm usb thu wifi cho pc 802 hổ trợ 1 ăng ten thu sóng cực mạnh tốc độ 150mp \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 6 tháng\r\n- Bộ sản phẩm gồm	usb thu wifi cho pc 802 hổ trợ 1 ăng ten thu sóng cực mạnh tốc độ 150mp', '', '- Thiết bị thu wifi cho máy tính bàn, laptop tốc độ150Mb chuẩn N kết nối mạng không dây rất gọn gàng chứ không cần phải kéo dây mạng rất bất tiện và mất thẩm mỹ như trước. Không những thế USB thu wifi cũng có thể giúp bạn tiết kiệm chi phí thi công và tiền dây mạng mà kết nối mạng vẫn rất hiệu quả.  \r\n- Laptop bị hỏng card wifi cũng có thể dùng Usb thu sóng wifi này để kết nối mạng không dây', 187),
(76, 'USB Bluetooth kết nối Loa Thường thành loa không dây (Trắng)', '65800,9', 'https://vn-test-11.slatic.net/p/usb-bluetooth-ket-noi-loa-thuong-thanh-loa-khong-day-trang-1422-7305782-2a03e1e32ac4b00a13ce2593cdbbcdfc-catalog_233.jpg', '- Thương hiệu Dongle \r\n- SKU DO260ELAA1PME5VNAMZ-2852723 \r\n- Dòng sản phẩm USB Bluetooth Trắng \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 1 tháng\r\n- Bộ sản phẩm gồm	1 x USB Bluetooth, 1 x Cáp audio 3.5', '', '- Sản phẩm Bluetooth Music Receiver USB thế hệ 2: tạo bluetooth kết nối âm thanh được thiết siêu nhỏ\r\n- Để bạn có thể trải nghiệm âm thanh một cách hoàn hảo. \r\n- Siêu nhỏ; hiện đại và sang trọng với lớp vỏ ngoài bằng nhựa siêu bền', 188),
(77, 'Adapter BLS Card Mạng LAN USB 3.0 tới 10/100/1000 Mbps Gigabit RJ45-Quốc Tế', '297000,40', 'https://vn-test-11.slatic.net/p/2/usb-30-to-101001000mbps-gigabit-rj45-ethernet-lan-network-cardadapter-bls-intl-8056-6486956-db8fe69975e4e6c6dd30bcc9f5832610-catalog_233.jpg', '- Thương hiệu OEM \r\n- SKU OE680ELAA3XE5QVNAMZ-7036724 \r\n- Dòng sản phẩm 1buycart-DSWL0700 \r\n- Loại bảo hành No Warranty\r\n- Bộ sản phẩm gồm	 1 x Adapter USB3.0 Gigabit Ethernet', '', '- Be support cổng USB\r\n- Support cả 2 chức năng hát công and bán song công trọng tính năng truy cập Fast Ethernet\r\n- Support tất cả các mô hình tiết kiệm điện USB3.0\r\n- Support chức năng bật-tắc máy tính từ xa', 188),
(78, 'Switch 8 cổng 10/100Mpbs – S808 - TOTOLINK', '130000 ', 'https://vn-live-01.slatic.net/original/7ca23242a54eb0f35830fb4b5ab7d670.jpg', '- Thương hiệu TOTOLINK \r\n- SKU TO549ELAA1QE87VNAMZ-2897624 \r\n- Tốc độ kết nối 100Mbps \r\n- Dòng sản phẩm Switch Loại switch Unmanaged switch \r\n- Loại bảo hành Bằng hộp sản phẩm hoặc Số seri Số cổng ethernet 8 \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 S808 Desktop Switch, 1 Power Adapter, 1 Ethernet Cable, 1 Hướng dẫn sử dụng', '', '- Hỗ trợ IEEE 802.3x flow control for full duplex mode và tương thích ngược half-duplex mode\r\n- Hỗ trợ MAC address auto-learning and auto-aging\r\n- Đèn LED báo hiệu nguồn, kết nối và hoạt động\r\n- 8 cổng 10/100Mbps tự nhận tốc độ\r\n- Vỏ nhựa , để bàn hoặc treo tường\r\n- Cấp nguồn ngoài\r\n- Hiệu năng cao và tiết kiệm năng lượng', 189),
(79, 'TP-Link Bộ chia tín hiệu 8 cổng 10/100 Mbps Kiểm soát lưu lượng -TL-SF1008D', '179000 ', 'https://vn-test-11.slatic.net/p/26933c47efead9a95c289476bd414e68.jpg', '- Thương hiệu TP-Link \r\n- SKU BR105ELAA1DTH0VNAMZ-2176900 \r\n- Dòng sản phẩm TP-LINK-SF1008D \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 sản phẩm TL-SF1008D, sạc, cáp RJ45', '', '- Chính sách bảo hành 1 đổi 1 trong vòng 2 năm nếu có lỗi kĩ thuật kể từ ngày mua\r\n- 8 cổng RJ45 10/100Mbps với kỹ thuật chiếm quyền điều khiển cáp (Auto-Negotiation) và hỗ trợ tính năng MDI / MDIX\r\n- Công nghệ xanh giúp tiết kiệm điện năng lên đến 60%\r\n- Kiểm soát lưu lượng IEEE 802.3x mang lại khả năng chuyển tải dữ liệu đáng tin cậy\r\n- Hộp bằng nhựa; thiết kế để bàn\r\n- Chỉ cần cắm vào là xài; không cần phải tinh chỉnh cấu hình', 189),
(80, 'TP-Link Card mạng Wifi PCIe 10/100/1000Mbps Quản lý LAN thuận tiện - TG-3468', '250000,26', 'https://vn-test-11.slatic.net/p/10edb1c886bbe2bcd28208a27bb3d550.jpg', '- Thương hiệu TP-Link \r\n- SKU BR105ELAA1DTGSVNAMZ-2176892 \r\n- Dòng sản phẩm Card mạng TP-Link - TG3468 \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	 1 x sản phẩm Gigabit PCi Express TG-3468, 1 x Đĩa CD nguồn', '', '- Chính sách bảo hành 1 đổi 1 trong vòng 2 năm nếu có lỗi kĩ thuật kể từ ngày mua\r\n- Bộ chuyển đổi PCI Express tốc độ 10/100/1000Mbps\r\n- Giao diện PCI Express chuẩn 32 bit; tiết kiệm không gian\r\n- Mở máy từ xa, thuận tiện để quản lý LAN rộng khắp hơn', 190),
(81, 'Card mạng thu WiFi TPLink TL-WN781ND PCI-E 150Mbps', '269000 ', 'https://vn-test-11.slatic.net/p/card-mang-thu-wifi-tplink-tl-wn781nd-pci-e-150mbps-9406-5015921-9ca2dd2b8020d9b0c28889d89bb44dfd-catalog_233.jpg', '- Thương hiệu TP-Link \r\n- SKU TP705ELBBRB5VNAMZ-927699 \r\n- Dòng sản phẩm Thien Thao-TL-WN781ND \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	1 x sản phẩm', '', '- Card mạng wifi TP-Link TL-WN781ND được sử dụng cho máy tính để bàn\r\n- Card mạng wifi TP-Link TL-WN781ND không những tăng cường phạm vi kết nối mà còn nâng tốc độ truyền tải dữ liệu lên đến 150Mbps', 190),
(82, 'Modem Wifi Fpt', '800000 ', 'https://vn-test-11.slatic.net/p/ae92eb1622dda9dc621ade7172591b84.jpg', '- Thương hiệu FPT \r\n- SKU 258443767_VNAMZ-358641646 \r\n- Dòng sản phẩm Nhà Mạng FPT \r\n- Loại bảo hành Bảo hành điện tử \r\n- Thời gian bảo hành 12 tháng', '', '- Modem G97RG6M là dòng modem cáp quang GPON, điểm đặc biệt so với các dòng modem thông thường là modem cho phép sử dụng song song 2 băng tần, trong đó băng tần 2,4 Ghz dành cho các khu vực thông thoáng có thể truy cập wifi ở bán kính rất xa và mạnh, còn băng tần 5 Ghz chủ yếu dành cho các khu vực kín, nhà có tường dày, sóng WiFi có thể xuyên tường để khách hàng có thể dễ dàng truy cập internet.\r\n- Tốc độ truyền tải dữ liệu của Modem Wi-Fi chuẩn AC Wave 2 MU-MIMO có thể lên đến 867Mbps ở băng tần 5Ghz với độ rộng kênh 80Mhz, mạnh hơn khoảng 3 lần so với chuẩn Wi-Fi cũ cùng số lượng 2x2 Antenna; tốc độ lý thuyết thậm chí có thể đạt tối đa 6.77Gbps ở băng tần 5Ghz khi sử dụng 8x8 Antenna, tương ứng gấp 11.5 lần so với chuẩn 802.11n cũ.', 191),
(83, 'Tenda router 3 râu Modem Wifi 300M wireless nhập Khẩu PKCB PF79', '500000,40', 'https://vn-test-11.slatic.net/p/2/300mbps-wireless-wifi-modem-router-300m-6708-8985306-6e33e1afa3f05864949723a77fc2c3b6-catalog_233.jpg', '- Thương hiệu Tenda \r\nSKU TE355ELAA3LDBUVNAMZ-6374185 \r\nDòng sản phẩm Modems \r\nLoại bảo hành No Warranty\r\nBộ sản phẩm gồm	\r\n1 X Modem\r\n1 X Sạc', '', '- Thiết kế đơn giản, dễ cài đặt\r\n- Tính năng nâng cao tiên tiến\r\n- Vùng phủ sóng rộng và Tốc độ Cao', 191),
(84, 'Wi-Fi Di động 4G LTE TP-LINK M7200', '1299000,24', 'https://vn-live-01.slatic.net/original/2477f463d91d20d103742842b125e4da.jpg', '- Thương hiệu TP-Link \r\n- SKU 213888253_VNAMZ-267932023 \r\n- Dòng sản phẩm WIFI Di Động \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng', '', '- MUA HÀNG ITCHINHHANG - NƠI CHỈ BÁN HÀNG CHÍNH HÃNG\r\n- HÀNG CHÍNH HÃNG (TP-LINK VIỆT NAM)\r\nCổng : 1x cổng nguồn USB, 1x Khe cắm SIM\r\n- - Nút : Mở/Tắt nguồn\r\n- Nguồn : PIN 2000mAh\r\n- Dạng mạng : 4G FDD/LTE, 4G TDD/LTE, 3G DC/HSPA+\r\n- Loại ăng ten : ăng ten ngầm\r\n- Chuẩn Wifi  : IEEE 802.11b/g/n\r\nTốc độ Wifi : 300Mbps\r\nBăng tần : 2.4GHz\r\nLED hiển thị : có', 192),
(85, 'Bộ Phát WiFi Di Động 4G LTE + 3G Huawei E5771h PRO (Màu Trắng', '6000000,47', 'https://vn-test-11.slatic.net/p/2/bo-phat-wifi-di-dong-4g-lte-3g-huawei-e5771h-937-pro-vangchampagne-3408-1249262-93ebabe480780c63ac72f17221e4fc36-catalog_233.jpg', '- Thương hiệu Huawei \r\n- SKU HU500ELAA1KCVHVNAMZ-2556403 \r\n- Dòng sản phẩm ATC Viet Nam-Huawei E5771-937 Vàng Champagne \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	: Bộ Sản Phẩm FULL Box gồm 01 Huawei E5771h-937, cục sạc', '', '- Huawei E5771-937 là dòng Mobile WiFi PRThiết bị kết nối 4G LTE lên tới 150Mbps\r\n- Kết Nối 3G 43,2MbpsThời gian hoạt động liên tục lên tới 38hThời gian chờ lên tới 1000h\r\n- Pin dung lượng Lớn lên tới 9600mAh có thể dùng để sạc cho các thiết bị khác.Màu Trắng Sang Trọng', 192),
(86, 'Card màn hình Asus PH-GTX1660-6G', '6190000,7', 'https://vn-test-11.slatic.net/p/544892e5360b1373b0c912ed34508557.jpg', '- Thương hiệu ASUS \r\n- SKU 275666702_VNAMZ-423882121 \r\n- Dòng sản phẩm Card màn hình chipset card đồ hoạt NVIDIA \r\n- Loại bảo hành Bằng hộp sản phẩm hoặc Số seri \r\n- Nhà sản xuất Chipset NVIDIA rgb lighting No \r\n- Thời gian bảo hành 3 năm Wattage 1-100', '', '- PCI Express 3.0\r\n- OpenGLOpenGL®4.5\r\n- Bộ nhớGDDR5 6GB\r\n- Engine ClockChế độ OC - Xung Tăng cường GPU : 1815 MHZ , Xung Nền GPU : 1560 MHzChế độ Chơi Game - Xung Tăng cường GPU : 1785 MHZ , Xung Nền GPU : 1530 MHz\r\n- Lõi CUDA1408\r\n- Clock bộ nhớ8002 Mhz\r\n- Giao diện bộ nhớ192-bit\r\n- Độ phân giảiĐộ phân giải Kỹ thuật Số Tối đa:7680x4320\r\n- Giao diệnĐầu ra DVI : Có x 1 (Tự nhiên) (DVI-D)Đầu ra HDMI : Có x 1 (Tự nhiên) (HDMI 2.0b)Cổng hiển thị : Có x 1 (Tự nhiên) (DisplayPort 1.4)Hỗ trợ HDCP : Có\r\n- Maximum Display Support3\r\n- NVlink/ Crossfire SupportKhông\r\n- Recommended PSU450W\r\n- Power Connectors1 x 8-pin\r\n- Phụ kiện1 x CD1 x Hướng dẫn nhanh\r\n- Phần mềmASUS GPU Tweak II & Trình điều khiển\r\n- Kích thước6.85 \" x 4.76 \" x 1.54 \" Inch17.4 x 12.1 x3.9 centimét', 193),
(87, 'Card Màn Hình Zotac GTX 750 2Gb DDR5 Không Dùng Nguồn Phụ', '850000,24', 'https://vn-live-01.slatic.net/original/a2a68bc58144cca190063a64fcfa0a7e.jpg', '- Thương hiệu Zotac \r\n- SKU 249211501_VNAMZ-327920815 \r\n- Dòng sản phẩm GTX750 \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 9 tháng\r\n- Bộ sản phẩm gồm	Vga Đầu chuyển DVI-VGA', '', '- GPU GeForce® GTX 750\r\n- Nhân CUDA: 512\r\n- Memoria Video2GB GDDR5\r\n- Bus RAM128bit\r\n- Clock GPUBase: 1033 MHz\r\n- Boost: 1111 MHz\r\n- Xung bộ nhớ5000 MHz\r\n- PCI Express 3.0\r\n- Cổng xuất hìnhDLDVI VGA HDMI\r\n- Hỗ trợ HDCP: Yes\r\n- Đa màn hình: Triple Display\r\n- Công suất nguồn đề nghị: 300W\r\n- Tiêu thụ năng lượng: 55W\r\n- Công suất đầu vàoN/A\r\n- DirectX 12 API\r\n- OpenGL 4.4\r\n- Tản nhiệtFansink\r\n- Kích cỡ khe cắmDual slot SLI N/A\r\n- Hệ điều hành hỗ trợWindows 10 / 8 / 7 / Vista / XP\r\n- Chiều dài Card144.78mm x 111.15mm', 193),
(88, 'Vỏ Case 1STPLAYER RAINBOW R3 - Kính Cường Lực - Led RGB', '600000,17', 'https://vn-test-11.slatic.net/p/b6823c83c76bb1fe2c62bab943c33c2d.jpg', '- Thương hiệu No Brand \r\n- SKU 254839664_VNAMZ-346075466 \r\n- D- Thương hiệu No Brand \r\n- SKU 254839664_VNAMZ-346075466 \r\n- Dòng sản phẩm caseòng sản phẩm case', '', '\r\n- Chuẩn case: Micro Tower\r\n- Kích thước (Cao x Rộng x Dài): 42 x 18,5 x 38 cm\r\n- Màu sắc/Chất liệu/Cân nặng: Đen / Khung thép SPCC 0.5mm, vỏ Thép & Plastic/ Sơn tĩnh điện / Khối lượng tịnh: 4.5kg\r\n- Cổng giao tiếp mặt trước (x Số cổng): USB3.0 x 1, USB2.0 x 1, Audio & 1 Mic\r\n- Chuẩn main hỗ trợ: ATX ,Micro ATX\r\n- Khay gắn (xSố khay): HDD 2 x 3,5 \", SSD 2 x 2,5\"\r\n- Front hỗ trợ Radiator 240mm\r\n- Quạt làm mát:\r\n- Trước: 2*120mm (tùy chọn)\r\n- Sau: 1 fan 120mm (tùy chọn)\r\n- Top: 2 x Fan 120mm (tùy chọn)\"\r\n- Vỏ Case 1st Player Rainbow R3', 194),
(89, 'VỎ THÙNG MÁY Case 1STPLAYER FIRE BASE X7', '1520000,31', 'https://vn-live-01.slatic.net/original/98c298cc2939f4c9587b716e046927a5.jpg', '- Thương hiệu No Brand \r\n- SKU 214839344_VNAMZ-269206040 \r\n- Dòng sản phẩm Case 1STPLAYER FIRE BASE X7 \r\n- Loại ốp lưng Vỏ cứng \r\n- Loại bảo hành No Warranty \r\n- rgb lighting YES\r\n- Bộ sản phẩm gồm	Case 1STPLAYER FIRE BASE X7', '', '- Hãng sản xuất 1STPLAYER\r\n- Chủng loại Fire Base X7\r\n- Kích thước (rộng x dài x cao) 435mm x 201mm x 435mm\r\n- Chất liệu Kim loại\r\n- Màu Đen\r\n- Cổng giao tiếp mặt trước (x Số cổng): USB3.0 x 1, USB2.0 x 2, 1 HD Audio & 1 Mic \r\n- Chuẩn main hỗ trợ: E-ATX, ATX, micro ATX, Mini ITX \r\n- Khay gắn (xSố khay): HDD 3.5” x3 , SSD 2.5” x3, PCI x 7 \r\n- Front hỗ trợ Radiator 360mm \r\n- Hệ thống làm mát 3x120mm phía trước, 2x120mm trên nóc, 1x120mm phía sau\r\n- Tản nước tương thích Hỗ trợ RAD 360mm\r\n- Phụ kiện đi kèm Ốc vít, vỏ thùng\r\n- Chuẩn nguồn ATX\r\n- Khả năng tương thích Chiều dài VGA tối đa: 380mm\r\n- Chiều cao tản CPU tối đa: 160mm', 194),
(90, 'Main Gigabyte H81M-DS2 Mới 100% nguyên hộp - Bảo hành 36 tháng', '1250000,41', 'https://vn-live-01.slatic.net/original/406478e914d7945ea033ecb189dc6e0d.jpg', '- Thương hiệu Giga \r\n- SKU 219338252_VNAMZ-275349999 \r\n- Dòng sản phẩm Giga H81 \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 3 năm', '', '- Supports 4th Generation Intel® Core™ processors\r\n- GIGABYTE Ultra Durable™ 4 Plus Technology\r\n- GIGABYTE UEFI DualBIOS™\r\n- USB 3.0 ports with GIGABYTE 3x USB power\r\n- GIGABYTE On/Off Charge™ for USB devices\r\n- LAN with high ESD Protection\r\n- LPT, COM, D-SUB port on rear panel\r\n- All solid capacitors design', 195),
(91, 'Mainboard Gigabyte GA-B250M-Gaming 3', '2000000,25', 'https://vn-test-11.slatic.net/p/a5a4cc1290021948f6a9fe49c46a29bb.jpg', '- Thương hiệu Gigabyte \r\n- SKU 274718901_VNAMZ-421220922 \r\n- Dòng sản phẩm Mainboard Gigabyte GA \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	Mainboard Gigabyte GA-B250M-Gaming 3', '', 'CHI TIẾT SẢN PHẨMMain Giga B250 Gaming 3Main mớiBảo hành main 12 thángBảo hành12tháng cửa hàng (khôngbảo hànhsocket và cháy nổ)', 195),
(92, 'Quạt tản nhiệt CPU Cooler Master T20', '230000,15', 'https://vn-test-11.slatic.net/p/f7bfd089e4a14e9aa588e8d1b8733078.jpg', '- Thương hiệu COOLER MASTER \r\n- SKU 259943958_VNAMZ-363973365 \r\n- Dòng sản phẩm Quạt nhiệt quạt mát cho cpu \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	x 1 sản phẩm', '', '- Quạt tản nhiệt Cooler Master T20 (Led Đỏ) - Intel và AMD\r\n- Hỗ trợ Intel Socket: LGA 1156/1155/1151/1150/775\r\n- Hỗ trợ AMD : AM4 / AM3 + / AM3 / AM2 + / AM2 / FM2 + / FM2 / FM1\r\n- Vòng quay : 2200RPM±10%\r\n- Air Flow 31.7 CFM ± 10%\r\n- Noise Level : 30 dBA\r\n- Power Connector 3 Pin\r\n- ĐẶC ĐIỂM NỔI BẬT\r\n- Nhỏ gọn, dễ lắp ráp, dùng được cho tất cả các dòng máy.\r\n- Thiết kế 2 ống đồng tiếp xúc trực tiếp với bề mặt CPU giúp tản nhiệt hiệu quả', 196),
(93, 'Quạt Fan Case 8cm Arctic F8 PWM [ThermalVN] - Quạt quay 2000 RPM êm, Sức gió lớn, Giảm nhiệt mạnh mẽ', '149000 ', 'https://vn-test-11.slatic.net/p/2f20275a3936b7628902153bd59ae259.jpg', '- Thương hiệu Arctic \r\n- SKU 217657380_VNAMZ-272768403 \r\n- Dòng sản phẩm F8 PWM \r\n- Loại bảo hành Bằng hộp sản phẩm hoặc Số seri \r\n- Tốc độ quạt Medium rgb lighting No \r\n- Thời gian bảo hành 12 tháng', '', '- Fan 80 x 80 x 25\r\n- Air Flow: 31 CFM / 52.7 m³/h (@ 2,000 RPM)\r\n- Noise Level:0.3 Sone (@ 2,000 RPM)\r\n- PWM control signal 4-pin socket', 196),
(94, 'Bộ Vi xử lý Intel Core I3 540 3.1GHz (2 lõi- 4 luồng)', '2595650,37', 'https://vn-live-01.slatic.net/original/3cb319f3b3eeb24afcb98eaee513b19e.jpg', '- Thương hiệu Intel \r\n- SKU 251810972_VNAMZ-334061646 \r\n- Số lõi bộ xử vi lý Lõi kép \r\n- Dòng sản phẩm Bộ Vi Xử Lý \r\n- Loại bảo hành Bằng Tem bảo hành Bộ vi xử lý Intel Core i3 \r\n- Tốc độ bộ xử lý (GHz) 3 model chipset CPU Others \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	17 Bộ Vi Xử Lý Intel', '', '- Dòng CPU: Pentium\r\n- Tên CPU: Core I3 540\r\n- Chạy Socket: FCLGA1156\r\n- Cấu hình CPU tối đa: 1\r\n- Xung Nhịp CPU: 3.0GHz\r\n- Số nhâni: 2\r\n- Số luồng: 2\r\n- Bộ Nhợ Đệm của CPU: 6MB SmartCache\r\n- Bus Speed: 5 GT/s DMI\r\n- Đồ họa tích hợp: Intel® HD Graphics\r\n- Các loại bộ nhớ: DDR3 1333/1600\r\n- Dung lượng bộ nhớ tối đa (tùy vào loại bộ nhớ): 32 GB\r\n- Hỗ trợ Bộ nhớ ECC: Không\r\n- Kích thước: 37.5mm x 37.5mm', 197),
(95, 'CPU Intel Core i5 9400F 2.90Ghz Box new Turbo up to 4.10GHz / 9MB / 6 Cores, 6 Threads / Socket 1151 / Coffee Lake', '4600000,3', 'https://vn-test-11.slatic.net/p/0f652eb8dd3ea2e0094884c0b4d03768.jpg', '- Thương hiệu Intel \r\n- SKU 275714328_VNAMZ-423960704 \r\n- Dòng sản phẩm CPU \r\n- Loại bảo hành Bằng hộp sản phẩm hoặc Số seri \r\n- Bộ vi xử lý Intel Core i5 \r\n- Tốc độ bộ xử lý (GHz) 4.1 \r\n- rgb lighting No model chipset CPU Intel i5 \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	CPU+FAN', '', 'Thời gian Bảo hành36Thương hiệuIntelCPUCore i5-9400FSocketLGA 1151-v2Kiến trúcCoffee Lake (14 nm)Code nameCoffee LakeThế hệIntel Core thế hệ thứ 9DòngCore i5Tốc độ xử lý2.9 - 4.1 GHzSố nhân xử lý6Số luồng xử lý6Cache9MBTDP65WBộ nhớ hỗ trợDDR4 Dual channel', 197),
(96, 'Ram máy tính để bàn DDR4 Buss 2400 8GB Kingston HyperX Fury Bảo hành 36 tháng ,Lỗi đổi mới 100%', '929000,7', 'https://vn-test-11.slatic.net/p/d2e3d5f3e8aff2d04c83ef1f508f9b74.jpg', '- Thương hiệu Kingston \r\n- SKU 274388031_VNAMZ-420036134 \r\n- Loại bộ nhớ máy tính DDR4 \r\n- Dòng sản phẩm DDR4 2400 8GB HyperX Fury \r\n- Tốc độ kết nối 2400MHz \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Bộ nhớ hệ thống 8GB loại DDR DDR4 \r\n- rgb lighting No \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	Khay đựng ,sách hướng dẫn ,ram D4 ,tem bảo hành', '', 'Ram Kingston hyperX fury mới 100% ,bảo hành 36 tháng lỗi được đổi que mới', 198),
(97, 'Ram laptop Vaseky 8GB DDR4 bus 2666 MHz', '1900000,27', 'https://vn-test-11.slatic.net/p/133b229a757d3ac68c8f1017d0d338b5.jpg', '- Thương hiệu Vaseky \r\n- SKU 259700922_VNAMZ-363187928 \r\n- Dòng sản phẩm Ram laptop \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	x1 sp', '', '- Ram laptop Vaseky 8GB DDR4 bus 2666MHz\r\n- Tình trạng: Mới 100%\r\n- Hãng sản xuất: Vaserky\r\n- Tương thích với máy đang dùng bus: 2400,2666\r\n- Bộ sản phẩm đầy đủ: x 1 SP\r\n- Điện áp: 1.2V\r\n- Xuất xứ: China\r\n- Bảo hành: 3năm tại shop bằng tem và thẻ bảo hành\r\n- Dùng cho: Laptop, Macbook', 198),
(98, 'Focusrite Scarlett Solo USB Audio Interface (2nd Generation)', '2890000,16', 'https://vn-test-11.slatic.net/p/2/focusrite-scarlett-solo-usb-audio-interface-2nd-generation-9961-90748831-63d689a3ed3c5d5e5d786e31408b94d7-catalog_233.jpg', '- Thương hiệu Focusrite \r\n- SKU FO179ELAA89LIDVNAMZ-15908861 \r\n- Số kênh 2 \r\n- Dòng sản phẩm Thu âm, nghe nhạc \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	\r\n- Focusrite Scarlett Solo USB Audio Interface (2nd Generation)\r\nUSB Cable Code for Software Bundle', '', '- 2 Input / 2 Output\r\n- Single Scarlett Microphone Preamp\r\n- Single Instrument/Line Input with Switch\r\n- 48V Phantom Power\r\n- Powered via USB\r\n- Direct Monitor Switch\r\n- 24-Bit/192 kHz\r\n- Ableton Live Lite & Pro Tools First\r\n- Included Software Bundle\r\n- OS X and Windows Compatible', 199),
(99, 'Sound card thu âm V10', '690000,28', 'https://vn-live-01.slatic.net/original/5e5b81ac0d3606f6a3d7fa59b47ecccc.jpg', '- Thương hiệu No Brand \r\n- SKU 246040837_VNAMZ-315866737 \r\n- Dòng sản phẩm soundcard thu âm \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 6 tháng', '', '✔ Hỗ trợ 4 cơ chế hoạt động :Karaoke, MC , Video , thu âm✔Dễ dàng kết hợp với những Micro hiện nay✔Sound cardV10 (điều khiển từ xa remote, đầy đủ dây kết nối,live stream ,dây 3,5mm )✔Tích hợp thêm điều khiển từ xa để tinh chỉnh những hiệu ứng âm thanh trực tiếp✔ Tương thích nhiều thiết bị ,PC, Laptop , Smartphone, Máy tính bảng.✔Kết hợp trực tiếp nhiều hiệu ứng âm thanh khác nhau , điều chỉnh echo , treb , bass bằng núm xoay .✔ Pin Lithium gắn trong có thể hoạt động tối đa10-12hliên tục, công suất4W.', 199),
(100, 'Nguồn máy tính PSU RAIDMAX RX - 500XT 500W', '835000,16', 'https://vn-test-11.slatic.net/p/2/nguon-may-tinh-raidmax-rx-500xt-4605-6159474-76c4f3f85932d14c896c47f6e1966721-catalog_233.jpg', '- Thương hiệu Raidmax \r\n- SKU BR036ELAA2TSR0VNAMZ-4865474 \r\n- Dòng sản phẩm RAIDMAX RX - 500XT \r\n- Loại bảo hành Bảo hành bởi nhà bán hàng trong nước \r\n- Số cáp SATA 5 \r\n- Thời gian bảo hành 3 năm\r\n- Bộ sản phẩm gồm	1 x Bộ nguồn', '', '- Chuẩn nguồn ATX 12V\r\n- Công suất thực lên đến 75%\r\n- Hỗ trợ nhiều ổ cứng\r\n- Tuổi thọ lên đến hơn 100.000 giờ\r\n- Chức năng bảo vệ nguồn điện đầy đủ SCP, OVP và OPP.\r\n- Hệ thống quạt tản nhiệt 120mm\r\n- Màu sơn tĩnh điện đen tuyệt đẹp\r\n- Chính hãng thương hiệu RAIDMAX Hoa Kỳ (Bảo hành 1 đổi 1 mới 100% theo tiêu chuẩn của hãng)', 200),
(101, 'Nguồn máy tính văn phòng Goldtech ATXW500 FAN 12, bảo hành 1 năm', '230000,15', 'https://vn-live-01.slatic.net/original/e87f00ab93790a5c03c351558789b515.jpg', '- Thương hiệu No Brand \r\n- SKU 221049272_VNAMZ-277903523 \r\n- Dòng sản phẩm nguồn fan 12 dành cho máy cây \r\n- Loại bảo hành Bảo hành điện tử \r\n- rgb lighting No \r\n- Thời gian bảo hành 12 tháng', '', 'Công suất đường điện áp• Điện áp 3.3 V công suất 150W• Điện áp 5 V công suất 150W• Điện áp 12 V công suất 300W Tản nhiệt: • Hệ thống tản nhiệt gió: 01 quạt fan 12, hoạt động theo nguyên tắc thổi gió từ ngoài vào trong. Tuổi thọ làm việc: 400.000 giờ• Hệ thống tản nhiệt trên main: 02 Tấm tản nhiệt hợp kim nhôm, tán rộng, có định hướng đón gió từ quạt fan 12 để làm mát thiết bị. Lọc nhiễu Nguồn được thiết kế bộ lọc nhiều gồm:• Lọc nhiễu dòng điện đầu vào: Mục đích loại nhiễu trước khi biến đổi thành điện áp một chiều. sử dụng 02 tụ lọc nhiễu 470 và cuộn cảm loại bỏ toàn bộ nhiễu cao tần của lưới điện.• Lọc nhiễu trung gian: Sử dụng cuộn cảm và tụ lọc - biến đổi từ phần điện một chiều sang xoay chiều tần số cao• Lọc nhiễu đầu ra: Lọc nhiễu sau biến áp cao tần: sử dụng cuộn cảm và tụ lọc', 200),
(102, 'TẢN NHIỆT NƯỚC CPU AIO ID-COOLING ICEKIMO 120 GREEN', '1150000 ', 'https://vn-live-01.slatic.net/original/75311f742f61534d1f33b46bd881feca.jpg', '- Thương hiệu ID-Cooling \r\n- SKU ID145ELAANNJZDVNAMZ-49982863 \r\n- Model TẢN NHIỆT CPU ALL IN ONE \r\n- Loại bảo hành Bằng Phiếu bảo hành và Hóa đơn \r\n- Thời gian bảo hành 12 tháng', '', '- FrostFlow là dòng sản phẩm thuộc lớp cao cấp của ID Cooling được thiết kế hiệu led vòng khá đẹp và lạ mắt đi cùng với chất lượng linh kiện cao cấp từ Radiator cho đến bơm , quạt tản nhiệt . Cụ thể như sau\r\n- Bơm sử dụng Ceramic Bearing cho độ bền cao lên đến 50.000 giờ sử dụng . Công suất hoạt động lên đến 2500 vòng tương đương khoảng 100 lít / giờ với độ ồn chỉ có 25db(A) . Công nghệ Ceramic Bearing này chỉ được dùng trong các sản phẩm đắt tiền như Bơm Laing D5 nổi tiếng\r\n- Phần tiếp xúc của cpu được sử dụng 100% đồng nguyên chất cho khả năng tản nhiệt tốt kết hợp với các rãnh thoát nhiệt siêu nhuyễn giúp cho khả năng dẫn nhiệt tăng thêm 20%\r\n- Radiator sử dụng 100% nhôm có kích thước 154x120x27mm kết hợp với quạt hiệu năng cao SF-12025 tốc độ 2000 vòng cho lưu lượng gió lên đến 84.5CFM ở mức áp suất 3.2mmH2O', 201),
(103, 'Két nước tản nhiệt 8cm', '250000,20', 'https://vn-test-11.slatic.net/p/2/ket-nuoc-tan-nhiet-8cm-2708-10131382-41764a6e6688365a594156fea371d905-catalog_233.jpg', '- Thương hiệu OEM \r\n- SKU OE680ELAAGUUJ1VNAMZ-35071849 \r\n- Model Két nước tản nhiệt 8cm \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm	01 két tản nhiệt 8cm, bộ ốc vít kèm theo', '', '- Model: K8\r\n- Kích thước: 105 (L) x 80 (W) x 25.5 (H) MM\r\n- Mật độ lá tản: 18 dòng / inch\r\n- Ống dẫn chất lỏng: 8 ống\r\n- Xử lý bề mặt: Phủ sơn đen\r\n- Kích miệng ống: 9,5mm\r\n- Quạt gió: 80x80mm\r\n- Chất liệu: Nhôm\r\n- Bảo hành: 12 tháng', 201),
(104, 'Ổ cứng hdd 2t', '1650000,34', 'https://vn-test-11.slatic.net/p/2/o-cung-hdd-2t-2274-12021544-2beef38d2a189aaecdfcf099d1710c81-catalog_233.jpg', '- Thương hiệu WD \r\n- SKU WE145ELAAQI1P1VNAMZ-54924316 \r\n- Dòng sản phẩm o cung 2 tb \r\n- Loại bảo hành Bằng Tem bảo hành \r\n- Thời gian bảo hành 2 năm\r\n- Bộ sản phẩm gồm	o cung,', '', '- Ổ cứng tím chuyên dùng đầu ghi hình camera Western 2000GB (2TB) Ổ cứng  Ổ cứng  Ổ cứng hdd 2t\r\n- Chuẩn kết nối: SATA 3 (6Gb/s)\r\n- Dung lượng lưu trữ: 2TB (2,000,204 MB)\r\n- Kích thước / Loại: 3.5 inch\r\n- Công nghệ Advanced Format (AF): Có ', 202),
(105, 'Ổ cứng cho máy tính để bàn 250gb - hàng nhập khẩu OC 019', '319000,20', 'https://vn-test-11.slatic.net/p/2/o-cung-cho-may-tinh-bo-250gb-1293-8892865-25c7325449d0284d051b97c5103f67b1-catalog_233.jpg', '- Thương hiệu OEM \r\n- SKU 239683748_VNAMZ-306139869 \r\n- Dòng sản phẩm OC 019 \r\n- Loại bảo hành Bằng Hóa đơn mua hàng \r\n- Thời gian bảo hành 12 tháng\r\n- Bộ sản phẩm gồm 1 x Bộ sản phẩm', '', '- Thiết kế dành cho máy để bàn\r\n- Công nghệ NoTouch Ramp Load\r\n- Dung lượng: 250G\r\n- Chuẩn giao tiếp: SATA3 (6 Gb/s)\r\n- Bộ nhớ Cache: 64MB', 202);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baidang`
--
ALTER TABLE `baidang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDNguoiBanHang` (`IDNguoiBanHang`);

--
-- Chỉ mục cho bảng `binhluanbaidang`
--
ALTER TABLE `binhluanbaidang`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `IDBaiDang` (`IDBaiDang`),
  ADD KEY `IDLogin` (`IDLogin`);

--
-- Chỉ mục cho bảng `binhluansp`
--
ALTER TABLE `binhluansp`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `IDSP` (`IDSP`),
  ADD KEY `IDLogin` (`IDLogin`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `IDSP` (`IDSP`),
  ADD KEY `IDLogin` (`IDLogin`);

--
-- Chỉ mục cho bảng `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `SDT_UNIQUE` (`SDT`);

--
-- Chỉ mục cho bảng `nguoibanhang`
--
ALTER TABLE `nguoibanhang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDLogin` (`IDLogin`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDDM` (`IDDM`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baidang`
--
ALTER TABLE `baidang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluanbaidang`
--
ALTER TABLE `binhluanbaidang`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluansp`
--
ALTER TABLE `binhluansp`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `nguoibanhang`
--
ALTER TABLE `nguoibanhang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baidang`
--
ALTER TABLE `baidang`
  ADD CONSTRAINT `baidang_ibfk_1` FOREIGN KEY (`IDNguoiBanHang`) REFERENCES `nguoibanhang` (`ID`);

--
-- Các ràng buộc cho bảng `binhluanbaidang`
--
ALTER TABLE `binhluanbaidang`
  ADD CONSTRAINT `binhluanbaidang_ibfk_1` FOREIGN KEY (`IDBaiDang`) REFERENCES `baidang` (`ID`),
  ADD CONSTRAINT `binhluanbaidang_ibfk_2` FOREIGN KEY (`IDLogin`) REFERENCES `login` (`ID`);

--
-- Các ràng buộc cho bảng `binhluansp`
--
ALTER TABLE `binhluansp`
  ADD CONSTRAINT `binhluansp_ibfk_1` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluansp_ibfk_2` FOREIGN KEY (`IDLogin`) REFERENCES `login` (`ID`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`IDSP`) REFERENCES `sanpham` (`ID`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`IDLogin`) REFERENCES `login` (`ID`);

--
-- Các ràng buộc cho bảng `nguoibanhang`
--
ALTER TABLE `nguoibanhang`
  ADD CONSTRAINT `nguoibanhang_ibfk_1` FOREIGN KEY (`IDLogin`) REFERENCES `login` (`ID`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IDDM`) REFERENCES `danhmuc` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
