-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2026 at 06:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kode` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kode`, `kategori`, `brand`) VALUES
(1, 'Makanan', 'Inafood'),
(6, 'Mie Indomie', 'Indomie'),
(7, 'Kopi ', 'Kapal Api'),
(9, 'Sabun ', 'Rinso'),
(10, 'Sabun Cair', 'Giv'),
(11, 'Sabun ', 'Daia'),
(15, 'Kopi ', 'Kapal Api'),
(18, 'Mie Indomie', 'Indomie'),
(19, 'Makanan', 'sayur'),
(22, 'Makanan', 'Indofood'),
(23, 'Minumana', 'Aqua'),
(24, 'Snack', 'Chitato'),
(25, 'Snack', 'Japota'),
(26, 'Pasta gigi', 'Pepsodent'),
(27, 'Pasta gigi', 'Close up'),
(28, 'Teh', 'Sariwangi'),
(29, 'mie', 'Indomie'),
(31, 'Mie', 'Sedaap');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode` int(11) NOT NULL,
  `kode_produk` int(11) NOT NULL COMMENT 'index',
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode`, `kode_produk`, `nama_produk`, `harga`, `stock`) VALUES
(9, 9, 'Sayang', 5000, 5),
(16, 7, 'kopikap', 1000, 6),
(30, 9, 'Lifeboy', 22000, 5),
(43, 15, 'Kopi Kapal Api 15 ml', 10000, 20),
(44, 24, 'Chotato rasa Rumput Jepang', 5000, 4),
(45, 25, 'Japota rasa Madu', 11000, 8),
(46, 28, 'Sariwangi Teh Melati', 7000, 12),
(47, 26, 'Pepsodent 12 ml', 19000, 35),
(48, 10, 'Sabun Nuvo 5 ml', 5000, 10),
(49, 19, 'Sayur Tempe', 10000, 2),
(50, 29, 'Mie Goreng Rasa Ayam Top', 3400, 14),
(51, 23, 'Aqua Tanggung', 6000, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `kode_produk` (`kode_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
