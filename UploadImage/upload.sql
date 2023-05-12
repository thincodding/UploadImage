-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 04:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upload`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `phones` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`id`, `name`, `photo`, `phones`, `email`) VALUES
(54, 'sokthin', '2023-03-27-03-07.jpg', '08884833', 'sokthin@gmail.com'),
(55, 'chan', '2023-03-27-03-26.jpg', '09948483', 'chan123@gmail.com'),
(56, 'thon', '2023-03-27-03-53.jpg', '099448483', 'thin@gmail.com'),
(57, 'peak', '2023-03-27-03-37.jpg', 'peak123@gmail.com', 'pheak@gmail.com'),
(58, 'kim hon', '2023-03-27-03-33.jpg', '0883833', 'kimhon@gmail.com'),
(59, 'kim hon', '2023-03-27-03-11.jpg', '0883833', 'kimhon@gmail.com'),
(60, 'nono', '2023-03-27-03-09.jpg', '0994848', 'nono123@gmail.com'),
(61, 'devid', '2023-03-27-03-31.jpg', '0848473', 'devid@gmail.com'),
(62, 'kim', '2023-03-27-03-19.jpg', '088477373', 'kim123@gmail.com'),
(63, 'KimHon', '2023-03-27-03-52.jpg', '08483733', 'KimHon123@gmail.com'),
(64, 'niki', '2023-03-27-03-01.jpg', '09388323', 'niki@gmail.com'),
(65, 'KATA', '2023-03-27-03-54.jpg', '0887350658', 'kata@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
