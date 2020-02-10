-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2017 at 06:41 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_name`
--

CREATE TABLE IF NOT EXISTS `wishlist_name` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist_name`
--

INSERT INTO `wishlist_name` (`id`, `pid`, `uid`, `timestamp`, `name`) VALUES
(1, 1, 6, '2017-10-30 16:36:45','DEFAULT'),
(2, 2, 6, '2017-10-30 16:38:07','DEFAULT');

--
-- Indexes for dumped tables
--


--
-- Indexes for table `wishlist_name`
--
ALTER TABLE `wishlist_name`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
