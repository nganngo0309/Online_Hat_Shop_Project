-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2022 at 11:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_mu`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan1`
--

CREATE TABLE `binhluan1` (
  `mabl` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaybl` date NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binhluan1`
--

INSERT INTO `binhluan1` (`mabl`, `mahh`, `makh`, `ngaybl`, `noidung`) VALUES
(3, 3, 5, '2020-08-14', 'lịch sự, nhã nhặn'),
(19, 8, 18, '2022-01-17', '  ok'),
(20, 8, 21, '2022-03-05', '  đỉnh'),
(21, 78, 21, '2022-03-11', '  e5p'),
(22, 74, 21, '2022-03-12', '  alo\r\n'),
(23, 74, 22, '2022-03-13', '  đẹp');

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon1`
--

CREATE TABLE `cthoadon1` (
  `masohd` int(11) NOT NULL,
  `mahh` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `mausac` varchar(20) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cthoadon1`
--

INSERT INTO `cthoadon1` (`masohd`, `mahh`, `soluongmua`, `mausac`, `thanhtien`, `tinhtrang`) VALUES
(7, 3, 2, 'Màu Đen', 1090000, 0),
(7, 33, 20, 'Màu Đen', 1090000, 0),
(7, 45, 8, 'Màu Đen', 1090000, 0),
(7, 63, 15, 'Màu Đen', 1090000, 0),
(9, 3, 2, ' Màu Hồng', 1090000, 0),
(9, 5, 13, ' Màu Nâu', 1090000, 0),
(9, 32, 4, ' Màu Hồng', 1090000, 0),
(9, 37, 11, ' Màu Nâu', 1090000, 0),
(9, 46, 34, ' Màu vàng', 1090000, 0),
(9, 50, 13, ' Màu Trắng', 1090000, 0),
(9, 68, 15, ' Màu Trắng', 1090000, 0),
(9, 73, 30, ' Màu vàng', 1090000, 0),
(9, 74, 10, ' Màu Nâu', 1090000, 0),
(80, 74, 1, 'Màu Đen', 400000, 0),
(81, 3, 1, 'Màu Be', 545000, 0),
(82, 74, 1, 'Màu Đen', 400000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahh` int(11) NOT NULL,
  `tenhh` varchar(60) NOT NULL,
  `dongia` float NOT NULL,
  `giamgia` float NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `maloai` int(11) NOT NULL,
  `nhom` int(1) NOT NULL,
  `ngaylap` date NOT NULL,
  `mota` text NOT NULL,
  `soluongton` int(11) NOT NULL,
  `mausac` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`mahh`, `tenhh`, `dongia`, `giamgia`, `hinh`, `maloai`, `nhom`, `ngaylap`, `mota`, `soluongton`, `mausac`) VALUES
(2, 'MŨ BÈO THẮT NƠ TRẮNG ', 159000, 0, 'banhbeo1.jpg', 4, 5, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Vàng Nâu '),
(3, 'MŨ BERET THỜI THƯỢNG ', 545000, 300000, 'beret2.jfif', 1, 6, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Be'),
(4, 'MŨ LƯỠI CHAI UNISEX', 300000, 0, 'luoichai1.jpg', 5, 2, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Trắng '),
(5, 'MŨ BUCKET CHỮ HÁN ', 123000, 0, 'backet2.jpg', 7, 4, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(6, 'MŨ BUCKET CHỮ BASIC ', 150000, 90000, 'backet3.jpg', 7, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Đen'),
(7, 'MŨ BÈO NƠ VÀNG', 359000, 250000, 'beonovang.jfif', 4, 5, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Vàng Nâu '),
(8, 'MŨ BERET THANH LỊCH', 405000, 300000, 'beret3.jpg', 1, 6, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Đen'),
(9, 'MŨ LƯỠI CHAI CRUISE', 240000, 222000, 'cru.jfif', 5, 2, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, 'Màu Hồng'),
(10, 'MŨ BUCKET CARBATT', 123000, 0, 'backet4.jfif', 7, 4, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(31, 'MŨ BUCKET HOA CÚC', 500000, 480000, 'backet5.jfif', 7, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Đen'),
(32, 'MŨ BÈO DÂY NƠ MINI', 259000, 0, 'banhbeo3.jfif', 4, 5, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Hồng '),
(33, 'MŨ BERET SỌC ', 555000, 378000, 'beret4.jpg', 1, 6, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Nâu'),
(34, 'MŨ LƯỠI CHAI CUTE', 340000, 300000, 'luoichai2.jpg', 5, 2, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Hồng'),
(35, 'MŨ BUCKET MẶT CƯỜI', 643000, 0, 'backet6.jfif', 7, 4, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(36, 'MŨ BÈO MẶT CƯỜI', 367000, 300000, 'beo.jfif', 4, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Nâu '),
(37, 'MŨ LEN NHÚN SÀNH ĐIỆU ', 400000, 0, 'len5.jfif', 6, 1, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Xám '),
(38, 'MŨ LEN CHÙM ĐÁNG YÊU ', 285000, 0, 'len6.jpg', 6, 1, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu '),
(39, 'MŨ LƯỠI CHAI CHALLEN', 140000, 0, 'luoichai2.jpg', 5, 2, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, 'Màu Hồng'),
(40, 'MŨ BUCKET CARBATT', 123000, 0, 'backet4.jfif', 7, 4, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(41, 'MŨ BÁNH BÈO BASIC ', 235000, 200000, 'banhbeo6.jfif', 4, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Hồng'),
(42, 'MŨ BERET BASIC TRÒN ', 250000, 0, 'beret5.jfif', 1, 1, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen'),
(43, 'MŨ BERET THỜI TRANG ', 500000, 308000, 'beret6.jpg', 1, 6, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Nâu'),
(44, 'MŨ LƯỠI CHAI BẮN TIM', 400000, 0, 'luoichai4.jpg', 5, 0, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Hồng'),
(45, 'MŨ LEN NEWYORK', 403000, 0, 'backet6.jfif', 6, 0, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(46, 'NÓN LEN YELLOW-ICON', 307000, 0, 'len2.jpg', 6, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Trắng '),
(47, 'MŨ LEN KIỂU DÁNG NGẮN', 245000, 0, 'len8.jpg', 6, 1, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu '),
(48, 'MŨ LƯỠI CHAI CAUISE', 205000, 0, 'luoichai6.jfif', 5, 2, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Cam '),
(49, 'MŨ LƯỠI CHAI RETRO', 340000, 0, '1.jfif', 5, 0, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, 'Màu Đen'),
(50, 'MŨ LEN UZZI CO', 223000, 0, '2.jfif', 6, 0, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Nâu'),
(61, 'MŨ BẢO HIỂM CUTE', 667000, 0, 'bh1.jpg', 3, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Trắng '),
(62, 'MŨ BẢO HIỂM MENLY', 500000, 0, 'bh2.jpg', 3, 1, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(63, 'MŨ BẢO HIỂM CÁ MẬP ', 485000, 0, 'bh3.jpg', 3, 3, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Đen '),
(64, 'MŨ BẢO HIỂM CHẤT', 740000, 0, 'bh13.jpg', 3, 0, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, 'Màu Xám '),
(65, 'MŨ BẢO HIỂM SÀNH ĐIỆU', 423000, 0, 'bh14.jpg', 3, 0, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Trắng '),
(66, 'MŨ BẢO HIỂM CHẤT', 435000, 0, 'bh11.jpg', 3, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Cam '),
(67, 'MŨ BẢO HIỂM MIX KÍNH ', 550000, 0, 'bh15.jfif', 3, 1, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Be'),
(68, 'MŨ BẢO HIỂM PIKACHU', 500000, 0, 'bh7.jpg', 1, 6, '2020-08-08', '100% hàng mới, chất lượng cao\r\nLựa chọn màu sắc: như hình\r\nChất liệu: Cotton\r\nMùa thích hợp: xuân, hạ, thu, đông\r\nPhong cách: Hàn Quốc\r\nVải có khả năng thoáng khí tốt, thoải mái và thoáng khí, hiệu quả phần trên cơ thể tốt, kết cấu thoải mái và mềm mại, thấm hút mồ hôi và thoáng khí được thiết kế sạch sẽ và gọn gàng, làm nổi bật lớp cao cấp', 50, 'Màu Trắng'),
(69, 'MŨ BẢO HIỂM ROYAL', 450000, 0, 'bh9.jpg', 3, 0, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(70, 'MŨ BẢO HIỂM PITI', 503000, 0, 'bh8.jpg', 3, 0, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Trắng '),
(71, 'MŨ BUCKET DỄ THƯƠNG ', 350000, 0, 'backet7.jfif', 7, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Đen'),
(72, 'MŨ BÈO NƠ BẢN TO', 335000, 200000, 'banhbeo6.jpg', 4, 1, '2020-08-08', 'Sau tren mũ hoa cúc, mũ bò sữa , BAMY lại đưa đến các bạn bộ đôi mũ tik tok và tomy\r\n✔️ Chất liệu: Mũ bucket tiktok làm từ chất liệu vải Kaki 65/35 không xù, k bám bụi\r\n✔️ Viền mũ phối họa tiêt caro nâu sáng\r\n✔️ Thông số kích thước mũ: \r\n            Chu vi đầu: 60- 68cm\r\n            Sâu: 10cm\r\n            Vành: rộng 7cm, đường kính vàng ngoài: 30cm\r\n✔️ Nón bucket tiktok và tomy của BAMY thích hợp đội cho 4 mùa: Đi chơi, du lịch, pic nic, chụp ảnh, phối đồ kute\r\n✔️ Kiểu: Tiktok và Tomy\r\n✔️ Chống nắng, vải nhẹ, có quai giữ', 50, 'Màu Be'),
(73, 'MŨ LEN LOVELY', 203000, 0, 'lenhi.jpg', 6, 0, '2020-10-16', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Đen '),
(74, 'MŨ LEN STAR', 400000, 0, 'star.jpg', 6, 1, '2020-08-08', 'Sản phẩm: Mũ (nón) lưỡi chai K\r\nChất liệu: Khaki\r\nmàu sắc: Đen\r\nnam nữ đều dùng được\r\n- Mũ được làm bằng chất liệu vải kaki cao cấp \r\n- Hoạ tiết thêu tỉ mỉ và chi tiết \r\n- Lưỡi mũ có thể uốn dẻo tuỳ chỉnh kiểu theo ý thích \r\n- Dễ dàng kết hợp với các item. \r\n- Sản phẩm do shop tự chụp nên các bạn yên tâm về chất lượng \r\n\r\n Cam kết khi mua sản phẩm của Sico \r\n\r\nĐể KH yên tâm khi mua đồ tại #Sico Menswear\r\n\r\n▪️ Hàng không bền đẹp như quảng cáo, shop hoàn tiền 200% \r\n▪️ Nhận hàng ưng ý rồi mới thanh toán \r\n▪️ Giao hàng toàn quốc cực nhanh ', 50, ' Màu Xám '),
(78, 'MŨ BASIC ĐEN', 2000, 500, 'backet6.jfif', 7, 1, '2022-02-01', 'ẹp nhóa', 34, 'đen xì');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon1`
--

CREATE TABLE `hoadon1` (
  `masohd` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `ngaydat` date NOT NULL,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon1`
--

INSERT INTO `hoadon1` (`masohd`, `makh`, `ngaydat`, `tongtien`) VALUES
(7, 7, '2020-08-13', 2240000),
(9, 7, '2020-08-13', 2240000),
(10, 9, '2022-01-15', 1135000),
(11, 10, '2022-01-15', 250000),
(12, 10, '2022-01-15', 250000),
(13, 10, '2022-01-15', 250000),
(14, 10, '2022-01-15', 250000),
(15, 10, '2022-01-15', 250000),
(16, 10, '2022-01-15', 250000),
(17, 10, '2022-01-15', 5850000),
(18, 12, '2022-01-15', 5335000),
(19, 12, '2022-01-16', 159000),
(20, 12, '2022-01-16', 659000),
(21, 12, '2022-01-16', 659000),
(22, 12, '2022-01-16', 659000),
(23, 12, '2022-01-16', 659000),
(24, 12, '2022-01-16', 659000),
(25, 12, '2022-01-16', 659000),
(26, 12, '2022-01-16', 659000),
(27, 12, '2022-01-16', 659000),
(28, 12, '2022-01-16', 659000),
(29, 12, '2022-01-16', 659000),
(30, 12, '2022-01-16', 659000),
(31, 12, '2022-01-16', 659000),
(32, 12, '2022-01-16', 659000),
(33, 12, '2022-01-16', 659000),
(34, 12, '2022-01-16', 659000),
(35, 12, '2022-01-16', 659000),
(36, 12, '2022-01-16', 659000),
(37, 12, '2022-01-16', 659000),
(38, 12, '2022-01-16', 659000),
(39, 12, '2022-01-16', 659000),
(40, 12, '2022-01-16', 659000),
(41, 12, '2022-01-16', 659000),
(42, 12, '2022-01-17', 406000),
(43, 12, '2022-01-17', 556000),
(44, 12, '2022-01-17', 556000),
(45, 12, '2022-01-17', 706000),
(46, 12, '2022-01-17', 706000),
(47, 12, '2022-01-17', 706000),
(48, 12, '2022-01-17', 706000),
(49, 12, '2022-01-17', 706000),
(50, 12, '2022-01-17', 706000),
(51, 12, '2022-01-17', 706000),
(52, 12, '2022-01-17', 706000),
(53, 12, '2022-01-17', 706000),
(54, 12, '2022-01-17', 706000),
(55, 12, '2022-01-17', 706000),
(56, 12, '2022-01-17', 706000),
(57, 12, '2022-01-17', 706000),
(58, 12, '2022-01-17', 706000),
(59, 12, '2022-01-17', 706000),
(60, 12, '2022-01-17', 706000),
(61, 12, '2022-01-17', 706000),
(62, 12, '2022-01-17', 706000),
(63, 12, '2022-01-17', 706000),
(64, 12, '2022-01-17', 706000),
(65, 12, '2022-01-17', 706000),
(66, 12, '2022-01-17', 706000),
(67, 12, '2022-01-17', 203000),
(68, 12, '2022-01-17', 203000),
(69, 17, '2022-01-17', 359000),
(70, 18, '2022-01-17', 545000),
(71, 21, '2022-03-11', 525000),
(72, 21, '2022-03-11', 159000),
(73, 21, '2022-03-11', 518000),
(74, 21, '2022-03-11', 518000),
(75, 21, '2022-03-11', 995000),
(76, 21, '2022-03-11', 1145000),
(77, 21, '2022-03-11', 1145000),
(78, 21, '2022-03-11', 1145000),
(79, 21, '2022-03-11', 1145000),
(80, 22, '2022-03-13', 400000),
(81, 22, '2022-03-13', 545000),
(82, 24, '2022-03-14', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang1`
--

CREATE TABLE `khachhang1` (
  `makh` int(11) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(12) NOT NULL,
  `vaitro` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khachhang1`
--

INSERT INTO `khachhang1` (`makh`, `tenkh`, `username`, `matkhau`, `email`, `diachi`, `sodienthoai`, `vaitro`) VALUES
(5, 'an', 'an', '202cb962ac59075b964b07152d234b70', 'an@gmail.com', '', '', 0),
(7, 'Nguyên', 'nguyen', '202cb962ac59075b964b07152d234b70', 'nguyen@gmail.com', '', '', 0),
(9, 'Ngan Ngo', 'ngan ngo', '92daa86ad43a42f28f4bf58e94667c95', 'ngango03092002@gmail.com', 'o chi minh', '12345', 0),
(10, 'Ngân', 'ngan ngo', '827ccb0eea8a706c4c34a16891f84e7b', 'ngango03092002@gmail.com', 'o chi minh', '12345', 0),
(12, 'm', 'm', '6f8f57715090da2632453988d9a1501b', 'ngango03092002@gmail.com', 'm', '0', 0),
(13, 'n', 'n', '7b8b965ad4bca0e41ab51de7b31363a1', 'ngango03092002@gmail.com', 'o chi minh', '12345', 0),
(14, 'n', 'n', '7b8b965ad4bca0e41ab51de7b31363a1', 'ngango03092002@gmail.com', 'o chi minh', '12345', 0),
(15, 'nhom', 'm', 'c4ca4238a0b923820dcc509a6f75849b', 'ngango03092002@gmail.com', 'ngan', '0123', 0),
(16, 'hanh ', 'hanh ', '1679091c5a880faf6fb5e6087eb1b2dc', 'ngango03092002@gmail.com', 'o chi minh', '12345', 0),
(17, 'Ngô Ngọc Kim Ngân ', 'Ngân ', '202cb962ac59075b964b07152d234b70', 'ngango03092002@gmail.com', 'TP HỒ CHÍ MINH', '99999999999', 0),
(18, 'kimngan', 'kimngan', '202cb962ac59075b964b07152d234b70', 'ngango03092002@gmail.com', 'hcm', '123', 0),
(19, 'q', 'q', '7694f4a66316e53c8cdd9d9954bd611d', 'ngango03092002@gmail.com', 'q', '0792662048', 0),
(20, 'Ngan Ngo', 'ngan', 'd3ba7e80ca00fc04410686ba0d61f753', 'ngango03092002@gmail.com', 'q', '0792662048', 0),
(21, 'rating', 'rating', '2c5504ab9a86164db22a92dc8793843d', 'ngango03092002@gmail.com', 'rating', '0792662048', 0),
(22, 'annthuy', 'thuy', '202cb962ac59075b964b07152d234b70', 'annthuy212002@gmail.com', 'HCM', '0792662048', 0),
(23, 'Ngan Ngo', 'thuy', '202cb962ac59075b964b07152d234b70', 'ngangn@gmail.com', 'q', '0792662048', 0),
(24, 'Ngan Ngo', 'Ngan', '4df26b7d69a26516915261039bbb1cb6', 'nganngo03092002@gmail.com', 'HCM', '0792662048', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `idmenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `idmenu`) VALUES
(1, 'nón beret', 3),
(3, 'nón bảo hiểm ', 3),
(4, 'nón bánh bèo ', 3),
(5, 'nón lưỡi chai', 3),
(6, 'nón len', 3),
(7, 'nón bucket', 3),
(8, 'Dép quay kẹp', 6),
(9, 'Dé Thái', 6),
(10, 'Dép lào', 6),
(11, 'Dép Việt Nam', 6);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idmenu`, `name`, `link`) VALUES
(1, 'Trang Chủ', 'View/home.php'),
(3, 'Cửa hàng ', 'View/sanpham.php'),
(4, 'Đăng ký ', 'View/registration.php'),
(5, 'Liên Hệ', 'View/lienhe.php'),
(6, 'Đăng nhập ', 'View/login.php');

-- --------------------------------------------------------

--
-- Table structure for table `star_rating`
--

CREATE TABLE `star_rating` (
  `productid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `rating` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `star_rating`
--

INSERT INTO `star_rating` (`productid`, `username`, `rating`) VALUES
(74, 'rating', 4),
(74, 'rating', 5),
(74, 'rating', 5),
(74, 'rating', 5),
(74, 'rating', 2),
(74, 'rating', 1),
(74, 'rating', 5),
(74, 'rating', 5),
(3, 'rating', 3),
(3, 'rating', 3),
(3, 'rating', 4),
(3, 'rating', 5),
(3, 'rating', 5),
(3, 'rating', 4),
(74, 'rating', 5),
(74, 'rating', 2),
(74, 'rating', 2),
(74, 'rating', 5),
(74, 'rating', 5),
(74, 'rating', 5),
(74, 'rating', 5),
(74, 'rating', 5),
(73, 'rating', 3),
(73, 'rating', 5),
(8, 'rating', 2),
(8, 'rating', 3),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 3),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 3),
(8, 'rating', 3),
(8, 'rating', 4),
(8, 'rating', 4),
(8, 'rating', 5),
(6, 'rating', 2),
(6, 'rating', 3),
(6, 'rating', 5),
(3, 'rating', 4),
(3, 'rating', 5),
(3, 'rating', 5),
(78, 'rating', 3),
(78, 'rating', 4),
(74, 'thuy', 2),
(74, 'thuy', 3),
(7, 'Ngan', 3),
(3, 'Ngan', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan1`
--
ALTER TABLE `binhluan1`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `fk_bl_mahh` (`mahh`),
  ADD KEY `fk_bl_kh` (`makh`);

--
-- Indexes for table `cthoadon1`
--
ALTER TABLE `cthoadon1`
  ADD PRIMARY KEY (`masohd`,`mahh`),
  ADD KEY `fk_cthd_mahh` (`mahh`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahh`),
  ADD KEY `FK_hanghoa_maloai` (`maloai`);

--
-- Indexes for table `hoadon1`
--
ALTER TABLE `hoadon1`
  ADD PRIMARY KEY (`masohd`),
  ADD KEY `fk_hoadon_kh` (`makh`);

--
-- Indexes for table `khachhang1`
--
ALTER TABLE `khachhang1`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`),
  ADD KEY `FK_loai_menu` (`idmenu`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan1`
--
ALTER TABLE `binhluan1`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `mahh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `hoadon1`
--
ALTER TABLE `hoadon1`
  MODIFY `masohd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `khachhang1`
--
ALTER TABLE `khachhang1`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan1`
--
ALTER TABLE `binhluan1`
  ADD CONSTRAINT `fk_bl_kh` FOREIGN KEY (`makh`) REFERENCES `khachhang1` (`makh`),
  ADD CONSTRAINT `fk_bl_mahh` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`);

--
-- Constraints for table `cthoadon1`
--
ALTER TABLE `cthoadon1`
  ADD CONSTRAINT `fk_cthd_mahd` FOREIGN KEY (`masohd`) REFERENCES `hoadon1` (`masohd`),
  ADD CONSTRAINT `fk_cthd_mahh` FOREIGN KEY (`mahh`) REFERENCES `hanghoa` (`mahh`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `FK_hanghoa_maloai` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`);

--
-- Constraints for table `hoadon1`
--
ALTER TABLE `hoadon1`
  ADD CONSTRAINT `fk_hoadon_kh` FOREIGN KEY (`makh`) REFERENCES `khachhang1` (`makh`);

--
-- Constraints for table `loai`
--
ALTER TABLE `loai`
  ADD CONSTRAINT `FK_loai_menu` FOREIGN KEY (`idmenu`) REFERENCES `menu` (`idmenu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
