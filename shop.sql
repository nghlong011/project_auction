-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2021 lúc 11:28 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bids`
--

CREATE TABLE `bids` (
  `ItemID` int(5) NOT NULL,
  `BidderID` int(4) NOT NULL,
  `BidAmount` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bids`
--

INSERT INTO `bids` (`ItemID`, `BidderID`, `BidAmount`) VALUES
(35, 1, 590000),
(59, 1, 30000000),
(59, 1, 32000000),
(68, 1, 3780000),
(59, 1, 33000000),
(70, 1, 2400000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CategoryID` int(10) NOT NULL,
  `Category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CategoryID`, `Category`) VALUES
(1, 'Thiết bị điện tử'),
(2, 'Đồng hồ'),
(3, 'Điện thoại'),
(4, 'Thời trang'),
(5, 'Quần áo'),
(6, 'Giày'),
(7, 'Phòng bếp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbackprofile`
--

CREATE TABLE `feedbackprofile` (
  `FeedbackID` int(6) NOT NULL,
  `InvoiceNumber` int(6) NOT NULL,
  `Positive` tinyint(1) NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `ItemID` int(10) NOT NULL,
  `ItemName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `SellerID` int(10) DEFAULT NULL,
  `StartingPrice` int(6) NOT NULL,
  `ExpectedPrice` int(6) NOT NULL,
  `CurrentPrice` int(6) DEFAULT NULL,
  `PhotosID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryID` int(10) NOT NULL,
  `EndTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`ItemID`, `ItemName`, `SellerID`, `StartingPrice`, `ExpectedPrice`, `CurrentPrice`, `PhotosID`, `Description`, `CategoryID`, `EndTime`) VALUES
(29, 'Apple iPad 2 16GB', NULL, 12000000, 16000000, 13000000, 'img/phone1.jpg', '\r\nApple iPad 2 16GB, Wi-Fi, 9,7 inch - Đen\r\n\r\nSự miêu tả\r\n\r\nIpad này ở trong tình trạng tốt\r\nIPad được kiểm tra đầy đủ và hoạt động hoàn hảo. Pin vẫn đang sạc.\r\nSẽ cho thấy một số vết xước nhỏ, ding hoặc vết lõm nhưng không có gì lớn. Chúng tôi sẽ cho nó 7-8 trên 10\r\nIpad không có trong gói bán lẻ ban đầu. Nó được đóng gói lại trong hộp riêng của chúng tôi.\r\nNó đi kèm với Cáp và Bộ chuyển đổi Tường được Chứng nhận của Apple (Thương hiệu có thể là Apple, Belkin hoặc Rocket-Fish)\r\nĐây là mô hình Wifi. Không cần thẻ Sim.\r\nHướng dẫn sử dụng không được bao gồm và có thể được tải xuống từ trang web của Apple\r\nChúng tôi cung cấp bảo hành 60 ngày\r\n\r\nNhững gì có trong gói?\r\n\r\nApple iPad 2 16GB, Wi-Fi, 9,7 inch - Đen\r\nBộ sạc / Bộ chuyển đổi trên tường được Apple chứng nhận\r\nCáp đồng bộ / dữ liệu được chứng nhận của Apple', 3, '2021-11-02 15:00:00'),
(30, 'Điện thoại thông minh Samsung Galaxy S4 i545 4G LT', NULL, 2150000, 2300000, 2150000, 'img/phone3.jpg', 'Các tính năng nổi bật:\r\n\r\nMàn hình cảm ứng đa điểm điện dung 5 inch Super AMOLED với kính cường lực bảo vệ Corning Gorilla Glass 3\r\n\r\nBộ xử lý Krait 300 lõi tứ 1,9 GHz, Chipset: Qualcomm APQ864T Snapdragon 6, Đồ họa Adreno 320\r\n\r\nMáy ảnh 13 Megapixel (4128 x 3096 pixel) w / Tự động lấy nét, đèn flash LED + Mặt trước 2', 3, '2020-09-08 00:00:00'),
(31, 'Samsung Galaxy S4 MINI i257 ', NULL, 18000000, 21600000, 18000000, 'img/phone4.jpg', '“Điện thoại di động này là MỚI Trong tình trạng khác, có nghĩa là không có hộp bán lẻ vì nó được nhận với số lượng lớn. Về mặt thẩm mỹ, điện thoại di động ở tình trạng hoàn hảo hoặc gần như hoàn hảo, Màn hình hoàn hảo, có thể có một chút vết xước nhỏ có thể nhìn thấy hoặc không nhìn thấy trên vỏ sau khi vận chuyển, v.v., Điện thoại di động được kiểm tra hoạt động tốt. Điện thoại di động được MỞ KHÓA và sẵn sàng cho tất cả các nhà cung cấp dịch vụ GSM như AT&T, T-Mobile Straight Talk, MetroPCS, v.v. trên thế giới. Nó không hoạt động với bất kỳ nhà cung cấp dịch vụ CDMA nào như Verizon, Sprint, Boost Mobile. Vui lòng liên hệ với chúng tôi nếu có bất kỳ câu hỏi nào. ”', 3, '2020-09-23 00:00:00'),
(32, 'Apple Iphone 6 Grigio 64Gb', NULL, 5900000, 6390000, 5900000, 'img/phone5.jpg', '“\r\nApple Iphone 6 Grigio 64Gb in buono stato, con custodia e pellicole apply….\r\n\r\nĐiện thoại di động này ở dạng MỚI Tình trạng khác, nghĩa là không có hộp bán lẻ vì nó được nhận với số lượng lớn. Về mặt thẩm mỹ, điện thoại di động ở tình trạng hoàn hảo hoặc gần như hoàn hảo, Màn hình hoàn hảo, có thể có một chút vết xước nhỏ có thể nhìn thấy hoặc không nhìn thấy trên vỏ sau khi vận chuyển, v.v., Điện thoại di động được kiểm tra hoạt động tốt. Điện thoại di động được MỞ KHÓA và sẵn sàng cho tất cả các nhà cung cấp dịch vụ GSM như AT&T, T-Mobile Straight Talk, MetroPCS, v.v. trên thế giới. Nó không hoạt động với bất kỳ nhà cung cấp dịch vụ CDMA nào như Verizon, Sprint, Boost Mobile. Vui lòng liên hệ với chúng tôi nếu có bất kỳ câu hỏi nào. ”', 3, '2020-09-16 00:00:00'),
(33, 'UTStarcom CDM7126 - Đen bạc', NULL, 15000000, 18200000, 15000000, 'img/phone6.jpg', '\r\nThông tin sản phẩm\r\nKiểu dáng đẹp, nhỏ gọn và mạnh mẽ, điện thoại di động Cricket UTStarcom CDM7126 màu bạc và đen là sự lựa chọn tuyệt vời cho những người dùng tìm kiếm độ tin cậy và hiệu suất. Điện thoại di động UTStarcom này có màn hình màu tuyệt đẹp, thiết kế kiểu nắp gập, hỗ trợ ba băng tần và pin Li-ion với thời gian thoại lên đến 311 phút và thời gian chờ lên đến 248 giờ. Lướt web nhanh chóng, kết nối nhiều thiết bị thông qua công nghệ Bluetooth và tận hưởng tải mọi thứ từ nhạc chuông đến trò chơi cho đến ứng dụng qua điện thoại di động này. Người dùng sẽ được giải trí hàng giờ với các trò chơi và ứng dụng Cricket có trên điện thoại di động UTStarcom này. Chức năng loa ngoài, quay số kích hoạt bằng giọng nói và nhập văn bản tiên đoán đều giúp giao tiếp dễ dàng hơn, trong khi các ứng dụng máy tính, báo thức và lịch giúp người dùng giữ đúng lịch trình và làm việc hiệu quả. Điện thoại di động UTStarcom CDM7126 giữ các số liên lạc được sắp xếp trong một danh bạ dễ truy cập. Với trọng lượng chỉ 3 oz và cao 3,6 inch, rộng 1,9 inch và sâu 0,7 inch, điện thoại di động UTStarcom này dễ dàng nhét vào túi, ví và cặp.', 3, '2021-09-01 00:00:00'),
(34, 'Ulefone Paris X Android 5.1', NULL, 13000000, 19200000, 13000000, 'img/phone7.jpg', 'Đặc trưng:\r\n \r\nAndroid 5.1 (Lollipop) với bộ xử lý Quad-Core 1.0GHz MT6735P và RAM 2GB + ROM 16GB\r\nHỗ trợ mạng 2G: GSM 850/900/1800/1900 MHz\r\nHỗ trợ mạng 3G: WCDMA 900/2100 MHz\r\nHỗ trợ mạng 4G: FDD-LTE Band 1/3/7/20 (2100/1800/2600 / 800MHz)\r\nhai sim hai sóng\r\nMàn hình điện dung IPS 10 điểm cảm ứng 5,0 inch, với độ phân giải màn hình HD 1280 * 720\r\nCamera sau 8.0MP (nội suy 13.0MP) với đèn pin và lấy nét tự động.\r\nCamera trước 5.0 MP (nội suy 8.0MP), làm cho những bức ảnh selfie của bạn trở nên đặc biệt hơn\r\nUltra Experience - Cập nhật không dây. Được cài đặt sẵn Android 5.1 O.S. Lollipop, tải xuống nhiều ứng dụng trên Cửa hàng Play phổ biến. Hỗ trợ cập nhật hệ thống không dây, giải pháp một cửa, không đau khi sử dụng Ulefone ParisX của bạn.\r\nHỗ trợ hầu hết các trò chơi và ứng dụng Android định dạng APK.', 3, '2016-10-04 00:00:00'),
(35, 'Tông đơ điện Makita N3701 6mm (1/4 \")', NULL, 560000, 840000, 590000, 'img/elec1.jpg', '\r\nThông tin chi tiết sản phẩm\r\n\r\nSố mô hình: N3701\r\nLoại sản phẩm: 1/4 \"Tông đơ\r\nCông suất đầu vào: 440W\r\nTrọng lượng: 1,7kg\r\nTốc độ không tải: 30.000 vòng / phút\r\nDây cấp nguồn: 2,5m\r\nCơ sở: 82 x 90mm\r\nChiều dài tổng thể: 220mm\r\nKích thước Collet: 6mm (1/4 \")\r\nĐiện áp: 220V (Loại có dây / phích cắm C)\r\nVui lòng kiểm tra xem điện áp ghi trên mục có tương ứng với điện áp chính trong nhà bạn không.', 1, '2021-09-24 00:00:00'),
(36, 'Tông đơ DeWALT DWE 6000 1/4 \"(6mm)', NULL, 210000, 290000, 210000, 'img/elec2.jpg', 'MỚI DeWALT DWE 6000 1/4 \"(6mm) Công cụ tông đơ (AC 220V) Đồ gỗ\r\n(Không bao gồm bit)\r\n\r\n■ Thông số kỹ thuật\r\n▶ Loại sản phẩm: 1/4 \"Tông đơ\r\n▶ Điện áp: 220V 390W (Loại phích cắm C)\r\n▶ Công suất Collet: 6mm (1/4 \")\r\n▶ Trọng lượng: 2.1kg\r\n▶ Tốc độ không tải: 30.000 vòng / phút\r\n▶ Kích thước Dài: 110mm x Cao: 205mm\r\n▶ Loại phích cắm: Loại C\r\n', 1, '2021-09-27 00:00:00'),
(37, 'Rockwell HD Block Planer Mẫu 167', NULL, 2100000, 2900000, 2100000, 'img/elec3.jpg', ' Chúng tôi luôn cố gắng cung cấp dịch vụ tốt nhất và sản phẩm chất lượng cao cho mọi khách hàng và mục tiêu của chúng tôi là đảm bảo bạn có trải nghiệm mua sắm thú vị với chúng tôi. Nếu có bất kỳ vấn đề, sự cố hoặc trải nghiệm khó chịu nào, vui lòng liên hệ với chúng tôi để giải quyết bất kỳ vấn đề nào trước khi để lại cho chúng tôi phản hồi tiêu cực hoặc mở bất kỳ tranh chấp nào trên eBay hoặc PayPal. Chúng tôi hứa sẽ cố gắng hết sức để giải quyết vấn đề và thường đó là những gì chúng tôi làm. Hãy cho chúng tôi cơ hội để giải quyết mọi vấn đề vì giao tiếp tốt luôn là cách tốt nhất để giải quyết mọi vấn đề. Nếu bạn hài lòng với dịch vụ của chúng tôi, xin vui lòng để lại cho chúng tôi 5 sao phản hồi tích cực. Ý kiến ​​của bạn và sự công nhận của bạn sẽ khiến chúng tôi tự tin hơn để phát triển doanh nghiệp tốt hơn và phục vụ bạn tốt hơn. Chúng tôi sẽ để lại một phản hồi tích cực sau khi nhận được thanh toán đầy đủ. Tất cả các tin nhắn, email hoặc câu hỏi sẽ được trả lời trong vòng 1 ngày làm việc. Nếu bạn không nhận được phản hồi của chúng tôi, vui lòng gửi lại email của bạn và chúng tôi sẽ trả lời bạn trong thời gian sớm nhất. Chúng tôi chỉ chấp nhận thanh toán qua PayPal. Vì vậy, vui lòng kiểm tra xem bạn có tài khoản PayPal hay không trước khi mua. Chúng tôi cung cấp chính sách hoàn lại tiền trong 30 ngày đảm bảo hoàn trả. Vận chuyển & Hoàn tiền', 1, '2021-09-29 00:00:00'),
(38, 'MÁY NHIỆT KỸ THUẬT SỐ HỒNG NGOẠI LASER', NULL, 3400000, 4200000, 3400000, 'img/elec4.jpg', 'Chúng tôi luôn cố gắng cung cấp dịch vụ tốt nhất và sản phẩm chất lượng cao cho mọi khách hàng và mục tiêu của chúng tôi là đảm bảo bạn có trải nghiệm mua sắm thú vị với chúng tôi. Nếu có bất kỳ vấn đề, sự cố hoặc trải nghiệm khó chịu nào, vui lòng liên hệ với chúng tôi để giải quyết bất kỳ vấn đề nào trước khi để lại cho chúng tôi phản hồi tiêu cực hoặc mở bất kỳ tranh chấp nào trên eBay hoặc PayPal. Chúng tôi hứa sẽ cố gắng hết sức để giải quyết vấn đề và thường đó là những gì chúng tôi làm. Hãy cho chúng tôi cơ hội để giải quyết mọi vấn đề vì giao tiếp tốt luôn là cách tốt nhất để giải quyết mọi vấn đề. Nếu bạn hài lòng với dịch vụ của chúng tôi, xin vui lòng để lại cho chúng tôi 5 sao phản hồi tích cực. Ý kiến ​​của bạn và sự công nhận của bạn sẽ khiến chúng tôi tự tin hơn để phát triển doanh nghiệp tốt hơn và phục vụ bạn tốt hơn. Chúng tôi sẽ để lại một phản hồi tích cực sau khi nhận được thanh toán đầy đủ. Tất cả các tin nhắn, email hoặc câu hỏi sẽ được trả lời trong vòng 1 ngày làm việc. Nếu bạn không nhận được phản hồi của chúng tôi, vui lòng gửi lại email của bạn và chúng tôi sẽ trả lời bạn trong thời gian sớm nhất. Chúng tôi chỉ chấp nhận thanh toán qua PayPal. Vì vậy, vui lòng kiểm tra xem bạn có tài khoản PayPal hay không trước khi mua. Chúng tôi cung cấp chính sách hoàn lại tiền trong 30 ngày đảm bảo hoàn trả. Vận chuyển & Hoàn tiền', 1, '2021-09-30 00:00:00'),
(39, 'Đèn pin Makita ML 100 10.8V ML100', NULL, 4100000, 5100000, 4100000, 'img/elec5.jpg', ' Chúng tôi luôn cố gắng cung cấp dịch vụ tốt nhất và sản phẩm chất lượng cao cho mọi khách hàng và mục tiêu của chúng tôi là đảm bảo bạn có trải nghiệm mua sắm thú vị với chúng tôi. Nếu có bất kỳ vấn đề, sự cố hoặc trải nghiệm khó chịu nào, vui lòng liên hệ với chúng tôi để giải quyết bất kỳ vấn đề nào trước khi để lại cho chúng tôi phản hồi tiêu cực hoặc mở bất kỳ tranh chấp nào trên eBay hoặc PayPal. Chúng tôi hứa sẽ cố gắng hết sức để giải quyết vấn đề và thường đó là những gì chúng tôi làm. Hãy cho chúng tôi cơ hội để giải quyết mọi vấn đề vì giao tiếp tốt luôn là cách tốt nhất để giải quyết mọi vấn đề. Nếu bạn hài lòng với dịch vụ của chúng tôi, xin vui lòng để lại cho chúng tôi 5 sao phản hồi tích cực. Ý kiến ​​của bạn và sự công nhận của bạn sẽ khiến chúng tôi tự tin hơn để phát triển doanh nghiệp tốt hơn và phục vụ bạn tốt hơn. Chúng tôi sẽ để lại một phản hồi tích cực sau khi nhận được thanh toán đầy đủ. Tất cả các tin nhắn, email hoặc câu hỏi sẽ được trả lời trong vòng 1 ngày làm việc. Nếu bạn không nhận được phản hồi của chúng tôi, vui lòng gửi lại email của bạn và chúng tôi sẽ trả lời bạn trong thời gian sớm nhất. Chúng tôi chỉ chấp nhận thanh toán qua PayPal. Vì vậy, vui lòng kiểm tra xem bạn có tài khoản PayPal hay không trước khi mua. Chúng tôi cung cấp chính sách hoàn lại tiền trong 30 ngày đảm bảo hoàn trả. Vận chuyển & Hoàn tiền', 1, '2021-09-28 00:00:00'),
(40, 'MÁY PHÁT ĐIỆN INVERTER MONO STAR MIG', NULL, 56800000, 63000000, 56800000, 'img/elec6.jpg', ' Chúng tôi luôn cố gắng cung cấp dịch vụ tốt nhất và sản phẩm chất lượng cao cho mọi khách hàng và mục tiêu của chúng tôi là đảm bảo bạn có trải nghiệm mua sắm thú vị với chúng tôi. Nếu có bất kỳ vấn đề, sự cố hoặc trải nghiệm khó chịu nào, vui lòng liên hệ với chúng tôi để giải quyết bất kỳ vấn đề nào trước khi để lại cho chúng tôi phản hồi tiêu cực hoặc mở bất kỳ tranh chấp nào trên eBay hoặc PayPal. Chúng tôi hứa sẽ cố gắng hết sức để giải quyết vấn đề và thường đó là những gì chúng tôi làm. Hãy cho chúng tôi cơ hội để giải quyết mọi vấn đề vì giao tiếp tốt luôn là cách tốt nhất để giải quyết mọi vấn đề. Nếu bạn hài lòng với dịch vụ của chúng tôi, xin vui lòng để lại cho chúng tôi 5 sao phản hồi tích cực. Ý kiến ​​của bạn và sự công nhận của bạn sẽ khiến chúng tôi tự tin hơn để phát triển doanh nghiệp tốt hơn và phục vụ bạn tốt hơn. Chúng tôi sẽ để lại một phản hồi tích cực sau khi nhận được thanh toán đầy đủ. Tất cả các tin nhắn, email hoặc câu hỏi sẽ được trả lời trong vòng 1 ngày làm việc. Nếu bạn không nhận được phản hồi của chúng tôi, vui lòng gửi lại email của bạn và chúng tôi sẽ trả lời bạn trong thời gian sớm nhất. Chúng tôi chỉ chấp nhận thanh toán qua PayPal. Vì vậy, vui lòng kiểm tra xem bạn có tài khoản PayPal hay không trước khi mua. Chúng tôi cung cấp 30 days money back guarantee return policy. Shipping & Refund', 1, '2021-09-22 00:00:00'),
(41, 'Áo phông bản giới hạn', NULL, 1200000, 1600000, 1200000, 'img/cl1.jpg', 'Áo phông Huấn luyện / Nhân quả đích thực dành cho nam giới\r\nĐược trang bị chất liệu cotton Blend Lycra\r\n\r\n\r\n\r\n\r\n        Sự miêu tả\r\nLàm từ 90% cotton 10 & Elestine\r\nMáy giặt được\r\nVật liệu trang bị\r\nCó sẵn trong S, M, L, XL, Kích thước\r\nLý tưởng cho đào tạo hoặc mặc thường ngày\r\nBạn chống lại chính mình Logo lớn\r\nDanimal Mang biểu trưng ở bên và sau\r\nĐược sử dụng bởi các nhà xây dựng cơ thể chuyên nghiệp hàng đầu ở Vương quốc Anh\r\nChuyển phát nhanh', 5, '2021-09-24 00:00:00'),
(42, 'Áo sơ mi caro bản giới hạn', NULL, 1200000, 1600000, 1200000, 'img/cl2.jpg', 'Áo phông Huấn luyện / Nhân quả đích thực dành cho nam giới\r\nĐược trang bị chất liệu cotton Blend Lycra\r\n\r\n\r\n\r\n\r\n        Sự miêu tả\r\nLàm từ 90% cotton 10 & Elestine\r\nMáy giặt được\r\nVật liệu trang bị\r\nCó sẵn trong S, M, L, XL, Kích thước\r\nLý tưởng cho đào tạo hoặc mặc thường ngày\r\nBạn chống lại chính mình Logo lớn\r\nDanimal Mang biểu trưng ở bên và sau\r\nĐược sử dụng bởi các nhà xây dựng cơ thể chuyên nghiệp hàng đầu ở Vương quốc Anh\r\nChuyển phát nhanh', 5, '2021-09-30 00:00:00'),
(43, 'Áo thu đông bản sự kiện', NULL, 2400000, 3100000, 2400000, 'img/cl4.jpg', 'Áo đấu phong cách khúc côn cầu của KISS\r\n\r\nMục là từ năm 1997 nhưng chưa bao giờ mặc và trong tình trạng tuyệt vời! Đến từ một gia đình không khói thuốc.\r\n\r\nJersey được dán nhãn một kích cỡ phù hợp với tất cả trên thẻ.\r\n\r\nNếu bạn có bất kì câu hỏi nào, xin vui lòng hỏi!', 5, '2021-09-22 00:00:00'),
(44, 'Áo phông sự kiện hòa nhạc', NULL, 900000, 1500000, 900000, 'img/cl5.jpg', 'KISS Psycho Circus Larger Than Life Mexico 1999 Concert All Over Art T-Shirt XLarge với số đo vòng ngực 44 \"(từ nách đến nách sau đó gấp đôi) và chiều dài từ cổ áo đến viền là 30\". Mang và Rửa sạch từ nhà không khói thuốc miễn phí vật nuôi. Không có lỗ hoặc vết bẩn.', 5, '2021-09-29 00:00:00'),
(45, 'Quần tây nâu size 152 cho bé trai', NULL, 900000, 1500000, 900000, 'img/cl6.jpg', 'KISS Psycho Circus Larger Than Life Mexico 1999 Concert All Over Art T-Shirt XLarge với số đo vòng ngực 44 \"(từ nách đến nách sau đó gấp đôi) và chiều dài từ cổ áo đến viền là 30\". Mang và Rửa sạch từ nhà không khói thuốc vật nuôi miễn phí. Không có lỗ hoặc vết bẩn.', 5, '2021-09-23 00:00:00'),
(46, 'SỰ TIẾN HÓA TENNIS CỦA T-SHIRT MAN MENS', NULL, 900000, 1500000, 900000, 'img/cl7.jpg', 'KISS Psycho Circus Larger Than Life Mexico 1999 Concert All Over Art T-Shirt XLarge với số đo vòng ngực 44 \"(từ nách đến nách sau đó gấp đôi) và chiều dài từ cổ áo đến viền là 30\". Mang và Rửa sạch từ nhà không khói thuốc miễn phí vật nuôi. Không có lỗ hoặc vết bẩn.', 5, '2021-09-11 00:00:00'),
(47, 'Mặt dây chuyền trang sức thời trang bằng đồng', NULL, 500000, 750000, 500000, 'img/fs1.jpg', 'Nếu bạn nhận được sản phẩm bị lỗi hoặc chúng tôi gửi cho bạn sản phẩm sai, hoặc mặt hàng không như mô tả,\r\n  hoặc mặt hàng bị hư hỏng vì vận chuyển quốc tế, đừng lo lắng, xin vui lòng liên hệ với chúng tôi, chúng tôi chấp nhận hoàn lại tiền,\r\n  hoặc đổi hàng. Bất kỳ mặt hàng không nhận được gây ra bởi địa chỉ không hợp lệ đã đăng ký trên PayPal đều không có trong của chúng tôi\r\n  hoàn trả đầy đủ hoặc chính sách thay thế.', 4, '2021-09-30 00:00:00'),
(48, 'Bạc Phụ nữ Pha lê Rhinestone khối', NULL, 500000, 750000, 500000, 'img/fs2.jpg', ' Nếu bạn nhận được sản phẩm bị lỗi hoặc chúng tôi gửi cho bạn sản phẩm sai, hoặc mặt hàng không như mô tả,\r\n  hoặc mặt hàng bị hư hỏng vì vận chuyển quốc tế, đừng lo lắng, xin vui lòng liên hệ với chúng tôi, chúng tôi chấp nhận hoàn lại tiền,\r\n  hoặc đổi hàng. Bất kỳ mặt hàng không nhận được gây ra bởi địa chỉ không hợp lệ đã đăng ký trên PayPal đều không có trong của chúng tôi\r\n  hoàn trả đầy đủ hoặc chính sách thay thế.', 4, '2021-09-23 00:00:00'),
(49, 'Cỏ bốn lá màu xanh lá cây thực sự', NULL, 600000, 1000000, 670000, 'img/fs3.jpg', ' Nếu bạn nhận được sản phẩm bị lỗi hoặc chúng tôi gửi cho bạn sản phẩm sai, hoặc mặt hàng không như mô tả,\r\n  hoặc mặt hàng bị hư hỏng vì vận chuyển quốc tế, đừng lo lắng, xin vui lòng liên hệ với chúng tôi, chúng tôi chấp nhận hoàn lại tiền,\r\n  hoặc đổi hàng. Bất kỳ mặt hàng không nhận được gây ra bởi địa chỉ không hợp lệ đã đăng ký trên PayPal đều không có trong của chúng tôi\r\n  hoàn trả đầy đủ hoặc chính sách thay thế.', 4, '2021-09-28 00:00:00'),
(50, 'Vòng cổ choker mặt dây chuyền giọt nước', NULL, 600000, 1000000, 600000, 'img/fs4.jpg', ' Nếu bạn nhận được sản phẩm bị lỗi hoặc chúng tôi gửi cho bạn sản phẩm sai, hoặc mặt hàng không như mô tả,\r\n  hoặc mặt hàng bị hư hỏng vì vận chuyển quốc tế, đừng lo lắng, xin vui lòng liên hệ với chúng tôi, chúng tôi chấp nhận hoàn lại tiền,\r\n  hoặc đổi hàng. Bất kỳ mặt hàng không nhận được gây ra bởi địa chỉ không hợp lệ đã đăng ký trên PayPal đều không có trong của chúng tôi\r\n  hoàn trả đầy đủ hoặc chính sách thay thế.\r\n', 4, '2021-09-04 00:00:00'),
(51, 'Vòng cổ choker mặt dây chuyền giọt nước', NULL, 600000, 900000, 600000, 'img/fs5.jpg', ' Nếu bạn nhận được sản phẩm bị lỗi hoặc chúng tôi gửi cho bạn sản phẩm sai, hoặc mặt hàng không như mô tả,\r\n  hoặc mặt hàng bị hư hỏng vì vận chuyển quốc tế, đừng lo lắng, xin vui lòng liên hệ với chúng tôi, chúng tôi chấp nhận hoàn lại tiền,\r\n  hoặc đổi hàng. Bất kỳ mặt hàng không nhận được gây ra bởi địa chỉ không hợp lệ đã đăng ký trên PayPal đều không có trong của chúng tôi\r\n  hoàn trả đầy đủ hoặc chính sách thay thế.', 4, '2021-09-30 00:00:00'),
(52, 'Mặt dây chuyền quyến rũ DOLLAR POUCH', NULL, 600000, 900000, 600000, 'img/fs6.jpg', ' Nếu bạn nhận được sản phẩm bị lỗi hoặc chúng tôi gửi cho bạn sản phẩm sai, hoặc mặt hàng không như mô tả,\r\n  hoặc mặt hàng bị hư hỏng vì vận chuyển quốc tế, đừng lo lắng, xin vui lòng liên hệ với chúng tôi, chúng tôi chấp nhận hoàn lại tiền,\r\n  hoặc đổi hàng. Bất kỳ mặt hàng không nhận được gây ra bởi địa chỉ không hợp lệ đã đăng ký trên PayPal đều không có trong của chúng tôi\r\n  hoàn trả đầy đủ hoặc chính sách thay thế.', 4, '2021-09-26 00:00:00'),
(53, 'Bộ lọc vòi Bộ lọc nước Vòi', NULL, 250000, 520000, 250000, 'img/kt1.jpg', 'Đặc trưng:\r\n100% thương hiệu mới, chất lượng cao\r\n\r\nMàu sắc: Ngẫu nhiên\r\n\r\nThông số kỹ thuật:\r\nChất liệu: Sponge\r\n\r\nGói bao gồm:\r\n1 bộ lọc bọt biển X', 7, '2021-09-01 00:00:00'),
(54, 'Máy cắt khoai tây chiên mới lạ Cắt thành từng dải', NULL, 360000, 520000, 412000, 'img/kt2.jpg', 'Đặc trưng:\r\n100% thương hiệu mới, chất lượng cao\r\n\r\nMàu sắc: Ngẫu nhiên\r\n\r\nThông số kỹ thuật:\r\nChất liệu: Sponge\r\n\r\nGói bao gồm:\r\n1 bộ lọc bọt biển X', 7, '2021-09-30 00:00:00'),
(55, 'Bộ đồ dùng đồ dùng nấu ăn trong nhà bếp', NULL, 250000, 360000, 250000, 'img/kt3.jpg', 'SỰ PHÙ HỢP THUẬT NGỮ của một thiết kế cổ điển sẽ mang lại nét sang trọng với chức năng cho ngôi nhà của bạn. Bộ sản phẩm bao gồm Muôi, Muỗng đặc, Nĩa đựng thịt, Dao trộn / Thìa có rãnh và Dụng cụ hớt váng.', 7, '2021-09-22 00:00:00'),
(56, 'Máy gọt khoai tây rau củ quả', NULL, 200000, 390000, 200000, 'img/kt4.jpg', 'Mã số: K3247XX\r\nTình trạng: 100% thương hiệu mới và chất lượng cao\r\nChất liệu: Thép không gỉ + nhựa\r\nMàu sắc: Màu ngẫu nhiên\r\nKích thước: 19,5 * 8 * 5cm / 7,67 * 3,14 * 1,96 inch\r\nGói bao gồm: 1x Máy gọt trái cây rau củ\r\n\r\nĐặc trưng:\r\n(1) Được làm bằng thép không gỉ và nhựa chất lượng cao --- bền\r\n(2) Đây là một máy gọt đa chức năng với các lưỡi có thể xoay 360 độ.\r\n(3) Nó có 3 loại lưỡi dao có thể bào thực phẩm thành các loại hình dạng khác nhau.\r\n(4) Trọng lượng nhẹ, dễ sử dụng và làm sạch', 7, '2021-09-15 00:00:00'),
(57, 'Hình dạng lá nhà bếp Rửa gạo', NULL, 350000, 580000, 350000, 'img/kt5.jpg', 'Mã số: K3247XX\r\nTình trạng: 100% thương hiệu mới và chất lượng cao\r\nChất liệu: Thép không gỉ + nhựa\r\nMàu sắc: Màu ngẫu nhiên\r\nKích thước: 19,5 * 8 * 5cm / 7,67 * 3,14 * 1,96 inch\r\nGói bao gồm: 1x Máy gọt trái cây rau củ\r\n\r\nĐặc trưng:\r\n(1) Được làm bằng thép không gỉ và nhựa chất lượng cao --- bền\r\n(2) Đây là một máy gọt đa chức năng với các lưỡi có thể xoay 360 độ.\r\n(3) Nó có 3 loại lưỡi dao có thể bào thực phẩm thành các loại hình dạng khác nhau.\r\n(4) Trọng lượng nhẹ, dễ sử dụng và làm sạch', 7, '2021-09-30 00:00:00'),
(58, 'Dụng cụ cắt rau củ quả Dao kéo', NULL, 350000, 580000, 350000, 'img/kt6.jpg', 'Mã số: K3247XX\r\nTình trạng: 100% thương hiệu mới và chất lượng cao\r\nChất liệu: Thép không gỉ + nhựa\r\nMàu sắc: Màu ngẫu nhiên\r\nKích thước: 19,5 * 8 * 5cm / 7,67 * 3,14 * 1,96 inch\r\nGói bao gồm: 1x Máy gọt trái cây rau củ\r\n\r\nĐặc trưng:\r\n(1) Được làm bằng thép không gỉ và nhựa chất lượng cao --- bền\r\n(2) Đây là một máy gọt đa chức năng với các lưỡi có thể xoay 360 độ.\r\n(3) Nó có 3 loại lưỡi dao có thể bào thực phẩm thành các loại hình dạng khác nhau.\r\n(4) Trọng lượng nhẹ, dễ sử dụng và làm sạch', 7, '2021-11-29 00:00:00'),
(59, 'Đồng hồ nam phiên bản sự kiện 10 tuổi rolex', NULL, 25000000, 36000000, 33000000, 'img/wt1.jpg', 'thông số kỹ thuật\r\nThương hiệu: CHENXI\r\nLoại sản phẩm: Đồng hồ đeo tay thạch anh\r\nChất liệu vỏ: Thép không gỉ\r\nLoại vật liệu cửa sổ quay số: Kính\r\nĐộ sâu kháng nước: 3Bar\r\nPhong trào: Quartz\r\nĐường kính quay số: 4 mm', 2, '2021-09-16 00:00:00'),
(60, 'Đồng hồ đeo tay thạch anh', NULL, 23000000, 36000000, 23000000, 'img/wt2.jpg', 'thông số kỹ thuật\r\nThương hiệu: CHENXI\r\nLoại sản phẩm: Đồng hồ đeo tay thạch anh\r\nChất liệu vỏ: Thép không gỉ\r\nLoại vật liệu cửa sổ quay số: Kính\r\nĐộ sâu kháng nước: 3Bar\r\nPhong trào: Quartz\r\nĐường kính quay số: 4 mm', 2, '2021-09-16 00:00:00'),
(61, 'Đồng hồ đeo tay thạch anh cổ điển', NULL, 26000000, 36000000, 26000000, 'img/wt3.jpg', 'thông số kỹ thuật\r\nThương hiệu: CHENXI\r\nLoại sản phẩm: Đồng hồ đeo tay thạch anh\r\nChất liệu vỏ: Thép không gỉ\r\nLoại vật liệu cửa sổ quay số: Kính\r\nĐộ sâu kháng nước: 3Bar\r\nPhong trào: Quartz\r\nĐường kính quay số: 4 mm', 2, '2021-09-08 00:00:00'),
(62, 'Đồng hồ da màu đen thạch anh', NULL, 15000000, 36000000, 15000000, 'img/wt4.jpg', 'thông số kỹ thuật\r\nThương hiệu: CHENXI\r\nLoại sản phẩm: Đồng hồ đeo tay thạch anh\r\nChất liệu vỏ: Thép không gỉ\r\nLoại vật liệu cửa sổ quay số: Kính\r\nĐộ sâu kháng nước: 3Bar\r\nPhong trào: Quartz\r\nĐường kính quay số: 4 mm', 2, '2021-09-26 00:00:00'),
(63, 'Đồng hồ Stainless Steel da', NULL, 31000000, 36000000, 31000000, 'img/wt5.jpg', 'thông số kỹ thuật\r\nThương hiệu: CHENXI\r\nLoại sản phẩm: Đồng hồ đeo tay thạch anh\r\nChất liệu vỏ: Thép không gỉ\r\nLoại vật liệu cửa sổ quay số: Kính\r\nĐộ sâu kháng nước: 3Bar\r\nPhong trào: Quartz\r\nĐường kính quay số: 4 mm', 2, '2021-09-23 00:00:00'),
(64, 'Quà tặng đồng hồ đeo tay bằng da mặt số thạch anh', NULL, 39000000, 45000000, 39000000, 'img/wt6.jpg', 'thông số kỹ thuật\r\nThương hiệu: CHENXI\r\nLoại sản phẩm: Đồng hồ đeo tay thạch anh\r\nChất liệu vỏ: Thép không gỉ\r\nLoại vật liệu cửa sổ quay số: Kính\r\nĐộ sâu kháng nước: 3Bar\r\nPhong trào: Quartz\r\nĐường kính quay số: 4 mm', 2, '2021-09-08 00:00:00'),
(65, 'Giày chạy bộ Nike nam Flyknit Max Air', NULL, 3100000, 3600000, 3100000, 'img/sh1.jpg', 'Giày chạy bộ cao cấp Nike nam Flyknit Max Air mới\r\n\r\n(Mới với Hộp)\r\n\r\nPhong cách # 620469-404\r\n\r\nMàu: Blue / Blck / Concord / Crimson\r\n\r\nKích thước: 11,5 US, 13 US\r\n\r\nGiữ lại ở mức 3600000\r\n\r\n \r\nMUA CHÚNG VỚI GIÁ 3100000\r\n\r\nPHÍ VẬN CHUYỂN / XỬ LÝ ĐƯỢC MIỄN PHÍ QUA CÁC CÔNG DỤNG TẠI MỸ. BỔ SUNG PHÍ VẬN CHUYỂN QUỐC TẾ.\r\n\r\nTÔI SẼ VẬN CHUYỂN NGAY SAU KHI THANH TOÁN ĐƯỢC THỰC HIỆN. TÔI CHẤP NHẬN PAYPAL,', 6, '2021-09-30 00:00:00'),
(66, 'Giày chạy bộ bản giới hạn sự kiện', NULL, 2600000, 3600000, 2600000, 'img/sh2.jpg', 'Giày chạy bộ cao cấp Nike nam Flyknit Max Air mới\r\n\r\n(Mới với Hộp)\r\n\r\nPhong cách # 620469-404\r\n\r\nMàu: Đen / Trắng / Xám\r\n\r\nKích thước: 11,5 US, 13 US\r\n\r\nGiữ lại ở mức 3600000\r\n\r\n \r\nMUA CHÚNG VỚI GIÁ 2600000\r\n\r\nPHÍ VẬN CHUYỂN / XỬ LÝ ĐƯỢC MIỄN PHÍ QUA CÁC CÔNG DỤNG TẠI Việt Nam. BỔ SUNG PHÍ VẬN CHUYỂN QUỐC TẾ.\r\n\r\nTÔI SẼ VẬN CHUYỂN NGAY SAU KHI THANH TOÁN ĐƯỢC THỰC HIỆN. TÔI CHẤP NHẬN PAYPAL,', 6, '2016-09-29 00:00:00'),
(67, 'Giày chạy bộ phiên bản cổ điển', NULL, 2900000, 3600000, 2900000, 'img/sh3.jpg', 'Giày chạy bộ cao cấp Nike nam Flyknit Max Air mới\r\n\r\n(Mới với Hộp)\r\n\r\nPhong cách # 620469-404\r\n\r\nMàu: Xanh\r\n\r\nKích thước: 11,5 US, 13 US\r\n\r\nGiữ lại ở mức 3600000\r\n\r\n \r\nMUA CHÚNG VỚI GIÁ 2900000\r\n\r\nPHÍ VẬN CHUYỂN / XỬ LÝ ĐƯỢC MIỄN PHÍ QUA CÁC CÔNG DỤNG TẠI Việt Nam. BỔ SUNG PHÍ VẬN CHUYỂN QUỐC TẾ.\r\n\r\nTÔI SẼ VẬN CHUYỂN NGAY SAU KHI THANH TOÁN ĐƯỢC THỰC HIỆN. TÔI CHẤP NHẬN PAYPAL,', 6, '2021-09-23 00:00:00'),
(68, 'Boot gia cao cấp giới hạn', NULL, 3700000, 5100000, 3780000, 'img/sh4.jpg', 'Giày chạy bộ cao cấp Nike nam Flyknit Max Air mới\r\n\r\n(Mới với Hộp)\r\n\r\nPhong cách # 620469-404\r\n\r\nMàu: Đen xám\r\n\r\nKích thước: 11,5 US, 13 US\r\n\r\nGiữ lại ở mức 5100000\r\n\r\n \r\nMUA CHÚNG VỚI GIÁ 3780000\r\n\r\nPHÍ VẬN CHUYỂN / XỬ LÝ ĐƯỢC MIỄN PHÍ QUA CÁC CÔNG DỤNG TẠI Việt Nam. BỔ SUNG PHÍ VẬN CHUYỂN QUỐC TẾ.\r\n\r\nTÔI SẼ VẬN CHUYỂN NGAY SAU KHI THANH TOÁN ĐƯỢC THỰC HIỆN. TÔI CHẤP NHẬN PAYPAL,', 6, '2021-09-16 00:00:00'),
(69, 'Giày cao gót show diễn BP', NULL, 2100000, 2600000, 2100000, 'img/sh5.jpg', 'Giày chạy bộ cao cấp Nike nam Flyknit Max Air mới\r\n\r\n(Mới với Hộp)\r\n\r\nPhong cách # 620469-404\r\n\r\nMàu: Màu pha\r\n\r\nKích thước: 11,5 US, 13 US\r\n\r\nGiữ lại ở mức 2600000\r\n\r\n \r\nMUA CHÚNG VỚI GIÁ 2100000\r\n\r\nPHÍ VẬN CHUYỂN / XỬ LÝ ĐƯỢC MIỄN PHÍ QUA CÁC CÔNG DỤNG TẠI Việt Nam. BỔ SUNG PHÍ VẬN CHUYỂN QUỐC TẾ.\r\n\r\nTÔI SẼ VẬN CHUYỂN NGAY SAU KHI THANH TOÁN ĐƯỢC THỰC HIỆN. TÔI CHẤP NHẬN PAYPAL,', 6, '2021-09-05 00:00:00'),
(70, 'Sandal phiên bản sự kiện ', NULL, 1900000, 3000000, 2400000, 'img/sh6.jpg', 'Giày chạy bộ cao cấp Nike nam Flyknit Max Air mới\r\n\r\n(Mới với Hộp)\r\n\r\nPhong cách # 620469-404\r\n\r\nMàu: Vàng / Đen\r\n\r\nKích thước: 11,5 US, 13 US\r\n\r\nGiữ lại ở mức 3000000\r\n\r\n \r\nMUA CHÚNG VỚI GIÁ 1900000\r\n\r\nPHÍ VẬN CHUYỂN / XỬ LÝ ĐƯỢC MIỄN PHÍ QUA CÁC CÔNG DỤNG TẠI Việt Nam. BỔ SUNG PHÍ VẬN CHUYỂN QUỐC TẾ.\r\n\r\nTÔI SẼ VẬN CHUYỂN NGAY SAU KHI THANH TOÁN ĐƯỢC THỰC HIỆN. TÔI CHẤP NHẬN PAYPAL,', 6, '2021-11-02 00:00:00'),
(73, 'iphone', 1, 11111, 1111111, 11111, 'img/iphone1.jpg', '', 1, '2021-11-03 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `MessageID` int(6) NOT NULL,
  `SenderID` int(6) NOT NULL,
  `ReceiverID` int(6) NOT NULL,
  `Topic` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Body` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `solditems`
--

CREATE TABLE `solditems` (
  `InvoiceNumber` int(6) NOT NULL,
  `ItemID` int(6) NOT NULL,
  `BuyerID` int(6) NOT NULL,
  `Date` datetime NOT NULL,
  `FinalValue` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `Username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contact_No` int(10) NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `FName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `LName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `active` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Contact_No`, `Address`, `FName`, `LName`, `status`, `active`, `email`) VALUES
(6, 'long', '$2y$10$cuY.udIqpavOoI0E7Gc9zOkTwq8bHRWj8IsGLZDkmacbgxLWRD06i', 843906364, '123', 'Nguyễn', 'Long', 1, 'c19f679268a96abf88145774923c7559', 'nghlong011@gmail.com'),
(9, 'admin', '$2y$10$xjRTNfp6ssx2qZvIXxqHZ.SZfOiILXaUfBVWr4Tcg5SRBqaf28e0y', 843906364, '123', 'Nguyễn', 'Long', 1, '449acb870ffacf72f526fc2d9449b3b0', 'hoanglonglong197@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserID` (`UserID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `ItemID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
