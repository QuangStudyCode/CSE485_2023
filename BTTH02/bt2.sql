-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2023 lúc 06:03 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bt2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `ID_GV` int(11) NOT NULL,
  `TenGV` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `ThongTinLienHe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`ID_GV`, `TenGV`, `Email`, `ThongTinLienHe`) VALUES
(1, 'Trần Văn D', 'trand@gmail.com', '0123456789'),
(2, 'Nguyễn Thị E', 'nguyenthe@hotmail.com', '0987654321'),
(3, 'Lê Minh F', 'leminh@yahoo.com', '0912345678');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `ID_KH` int(11) NOT NULL,
  `MaKH` varchar(255) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`ID_KH`, `MaKH`, `TieuDe`, `MoTa`) VALUES
(1, 'CSE101', 'Lập trình C++', 'Khóa học giúp người học hiểu về ngôn ngữ lập trình C++'),
(2, 'CSE102', 'Cấu trúc dữ liệu', 'Khóa học giúp người học hiểu về cấu trúc dữ liệu'),
(3, 'CSE201', 'Lập trình hướng đối tượng', 'Khóa học giúp người học hiểu về lập trình hướng đối tượng'),
(4, 'CSE202', 'Mạngmáy tính', 'Khóa học giúp người học hiểu về mạng máy tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `ID_Lop` int(11) NOT NULL,
  `ID_KH` int(11) NOT NULL,
  `ID_GV` int(11) NOT NULL,
  `KhoangThoiGian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MSV` int(11) NOT NULL,
  `TenSv` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  `ThongTinLienHe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MSV`, `TenSv`, `NgaySinh`, `Email`, `ThongTinLienHe`) VALUES
(1, 'Nguyễn Văn A', '1990-01-01', 'ava.nguyen@gmail.com', '0123456789'),
(2, 'Trần Thị B', '1991-02-02', 'tranb@gmail.com', '0987654321'),
(3, 'Lê Hoàng C', '1992-03-03', 'hoanglc@hotmail.com', '0912345678');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suthamdu`
--

CREATE TABLE `suthamdu` (
  `ID_ST` int(11) NOT NULL,
  `Ngay` date NOT NULL,
  `ID_KH` int(11) NOT NULL,
  `MSV` int(11) NOT NULL,
  `TrangThai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID_ND` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `VaiTro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `uyquyen`
--

CREATE TABLE `uyquyen` (
  `ID_UQ` int(11) NOT NULL,
  `ID_ND` int(11) NOT NULL,
  `ID_GV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`ID_GV`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`ID_KH`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`ID_Lop`),
  ADD KEY `ID_KH` (`ID_KH`),
  ADD KEY `ID_GV` (`ID_GV`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MSV`);

--
-- Chỉ mục cho bảng `suthamdu`
--
ALTER TABLE `suthamdu`
  ADD PRIMARY KEY (`ID_ST`),
  ADD KEY `ID_KH` (`ID_KH`),
  ADD KEY `MSV` (`MSV`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID_ND`);

--
-- Chỉ mục cho bảng `uyquyen`
--
ALTER TABLE `uyquyen`
  ADD PRIMARY KEY (`ID_UQ`),
  ADD KEY `ID_ND` (`ID_ND`),
  ADD KEY `ID_GV` (`ID_GV`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `ID_GV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `ID_KH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `ID_Lop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `MSV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `suthamdu`
--
ALTER TABLE `suthamdu`
  MODIFY `ID_ST` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID_ND` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `uyquyen`
--
ALTER TABLE `uyquyen`
  MODIFY `ID_UQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`ID_KH`) REFERENCES `khoahoc` (`ID_KH`),
  ADD CONSTRAINT `lophoc_ibfk_2` FOREIGN KEY (`ID_GV`) REFERENCES `giangvien` (`ID_GV`);

--
-- Các ràng buộc cho bảng `suthamdu`
--
ALTER TABLE `suthamdu`
  ADD CONSTRAINT `suthamdu_ibfk_1` FOREIGN KEY (`ID_KH`) REFERENCES `khoahoc` (`ID_KH`),
  ADD CONSTRAINT `suthamdu_ibfk_2` FOREIGN KEY (`MSV`) REFERENCES `sinhvien` (`MSV`);

--
-- Các ràng buộc cho bảng `uyquyen`
--
ALTER TABLE `uyquyen`
  ADD CONSTRAINT `uyquyen_ibfk_1` FOREIGN KEY (`ID_ND`) REFERENCES `users` (`ID_ND`),
  ADD CONSTRAINT `uyquyen_ibfk_2` FOREIGN KEY (`ID_GV`) REFERENCES `giangvien` (`ID_GV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
