-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 03:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profil_wananda`
--

-- --------------------------------------------------------

--
-- Table structure for table `profil_wananda`
--

CREATE TABLE `profil_wananda` (
  `nis` int(10) NOT NULL,
  `nama_lengkap` varchar(40) DEFAULT NULL,
  `tempat_tanggal_lahir` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_wananda`
--

INSERT INTO `profil_wananda` (`nis`, `nama_lengkap`, `tempat_tanggal_lahir`, `alamat`, `agama`, `jenis_kelamin`) VALUES
(123457890, 'WANANDA DILLA ZAHRA', 'SUBANG-14-01-06', 'KP.BABAKAN RAWA DESA BATUSARI KEC.DAWUAN', 'ISLAM', 'P');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profil_wananda`
--
ALTER TABLE `profil_wananda`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
