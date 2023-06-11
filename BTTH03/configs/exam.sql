-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2023 lúc 06:46 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `exam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `summary` text DEFAULT NULL,
  `content` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `date_post` datetime NOT NULL,
  `image` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `name`, `category`, `summary`, `content`, `author`, `date_post`, `image`) VALUES
(1, 'Tôi tài giỏi bạn cũng thế', 'Tôi tài giỏi bạn cũng thế', 'Tâm lý - Kỹ năng sống', 'Được đánh giá là cuốn sách không thể thiếu trong tủ sách của mỗi người. Đem đến những bài học bổ ích và giá trị thực tiễn khi áp dụng vào cuộc sống.', 'Một tác phẩm hướng dẫn phát triển bản thân được viết bởi Adam Khoo, một diễn giả, tác giả và nhà đào tạo nổi tiếng. Cuốn sách nhắm đến việc trang bị người đọc những nguyên tắc và kỹ năng cần thiết để nâng cao hiệu suất và đạt được thành công trong cuộc sống.', 'Adam Khoo', '2023-05-01 20:50:06', 'Toitaigioibancungthe.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
