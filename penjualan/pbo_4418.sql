-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 09:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo_4418`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(30) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(5) NOT NULL,
  `stok_min` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `satuan`, `harga`, `harga_beli`, `stok`, `stok_min`) VALUES
('001', 'durian', 'Kg', 29000, 0, 5, 2),
('002', 'mangga', 'Kg', 15000, 12000, 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `djual`
--

CREATE TABLE `djual` (
  `no_jual` varchar(10) NOT NULL,
  `kd_brg` char(6) NOT NULL,
  `harga_jual` float NOT NULL,
  `jml_jual` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `djual`
--

INSERT INTO `djual` (`no_jual`, `kd_brg`, `harga_jual`, `jml_jual`) VALUES
('1', '001', 29000, 2),
('1', '001', 29000, 1),
('2', '001', 29000, 1),
('2', '002', 15000, 4),
('3', '002', 15000, 1),
('3', '001', 29000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE `jual` (
  `no_jual` varchar(10) NOT NULL,
  `kd_kons` char(6) NOT NULL,
  `tgl_jual` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`no_jual`, `kd_kons`, `tgl_jual`) VALUES
('1', 'k01', '2024-07-04'),
('2', 'k01', '2024-07-05'),
('3', 'k01', '2024-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `kd_kons` varchar(6) NOT NULL,
  `nm_kons` varchar(30) NOT NULL,
  `alm_kons` varchar(50) NOT NULL,
  `kota_kons` varchar(20) NOT NULL,
  `kd_pos` varchar(5) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`kd_kons`, `nm_kons`, `alm_kons`, `kota_kons`, `kd_pos`, `phone`, `email`) VALUES
('k01', 'jon', 'jl', 'smg', '12345', '01937291', 'j@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `role`, `password`) VALUES
(0, 'gaby', 'gabriella', 'admin', '86ff11bd7933c00a2aaa8efafa4e5266c45b26b0'),
(1, 'fani', 'fanii', 'user', '12dea96fec20593566ab75692c9949596833adc9'),
(2, 'admin', 'gabriellaa', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(3, 'user', 'inifani', 'user', '12dea96fec20593566ab75692c9949596833adc9'),
(4, 'user1', 'user1', 'pengguna', '12dea96fec20593566ab75692c9949596833adc9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`no_jual`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
