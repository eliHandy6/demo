-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 05:53 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanya`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Date` date NOT NULL,
  `Productname` varchar(255) NOT NULL,
  `Quanity` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Date`, `Productname`, `Quanity`, `Price`) VALUES
('2019-05-19', '56', '56', '86'),
('2019-05-14', 'GGG', '787', '864'),
('2019-04-28', 'KDF', '300', '15'),
('2019-05-18', 'KORIANDA', '12', '45'),
('2019-05-07', 'Sugar', '45', '56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Others') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(2, 'zack', 'nekesa', '$2y$10$ya8nWKxxkG9QaedhocfnfuuCoVH/vTuXAZ1.WhPNpyurWDNo43boa', 'Admin', '2019-05-11', '2019-05-11 00:00:00', ''),
(3, 'zack', 'ogoma', '$2y$10$Wg7w70zjv0/.iAoRsHIl/eFVYJ58dttIlE/eM63xQrQgdjqoF5bZi', 'Admin', '2019-05-11', '2019-05-11 10:05:06', ''),
(4, 'maria', 'mlokosi', '$2y$10$ffdFu2Wgb.Ifyen6sXrD5enZj0Y3I25is8vpT07ngsJ7fLcoVA0Y.', 'Others', '2019-05-13', '2019-05-13 00:00:00', ''),
(5, 'madia', 'mlokozi', '$2y$10$g7zH4xtmxWEHHK7lzl9.re0EehpMNmrD0Pm2SRUE0b.fOzeJbbCD6', 'Others', '2019-05-13', '2019-05-13 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Productname`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
