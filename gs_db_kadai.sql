-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-14 23:06:00
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_kadai_image`
--

CREATE TABLE `gs_kadai_image` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(256) NOT NULL,
  `image_type` varchar(64) NOT NULL,
  `image_content` mediumblob NOT NULL,
  `image_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_kadai_image`
--

INSERT INTO `gs_kadai_image` (`image_id`, `image_name`, `image_type`, `image_content`, `image_size`, `created_at`) VALUES

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_kadai_table`
--

CREATE TABLE `gs_kadai_table` (
  `id` int(12) NOT NULL,
  `book_name` varchar(64) NOT NULL,
  `book_url` text NOT NULL,
  `book_comment` text NOT NULL,
  `reg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_kadai_table`
--

INSERT INTO `gs_kadai_table` (`id`, `book_name`, `book_url`, `book_comment`, `reg_date`) VALUES
(1, 'わたなべ', 'ここ', 'ここ', '2023-12-11 00:37:22'),
(2, 'a', 'a', 'aaa', '2023-12-11 23:40:56'),
(3, 'a', 'aa', 'aaaa', '2023-12-11 23:41:00'),
(4, 'sss', 'sss', 'ssss', '2023-12-11 23:41:32'),
(5, 'ss', 'sss', 'ssss', '2023-12-11 23:41:54'),
(6, 's', 'ssssss', 'ssdsadasd', '2023-12-11 23:43:26'),
(8, 'スノボ', 'https://www.murasaki.co.jp/brand/ridelifemag-murasaki-sports/shop/akita/c8b67e07-e04d-4ca2-8618-5bfce76863f5', '最新のスノボ情報', '2023-12-15 06:49:50');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_kadai_image`
--
ALTER TABLE `gs_kadai_image`
  ADD PRIMARY KEY (`image_id`);

--
-- テーブルのインデックス `gs_kadai_table`
--
ALTER TABLE `gs_kadai_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_kadai_image`
--
ALTER TABLE `gs_kadai_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `gs_kadai_table`
--
ALTER TABLE `gs_kadai_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;