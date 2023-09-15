-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 08:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_nasabah_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Id_bank` int(11) NOT NULL,
  `Nama_bank` varchar(20) DEFAULT NULL,
  `Alamat_kantor_pusat` varchar(30) DEFAULT NULL,
  `Nomor_direktur` int(30) DEFAULT NULL,
  `No_telepon_kantor_pusat` int(30) DEFAULT NULL,
  `Nomor_rekening` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direktur`
--

CREATE TABLE `direktur` (
  `Id_direktur` int(14) NOT NULL,
  `Nama_direktur` varchar(40) DEFAULT NULL,
  `Jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `Nomor_telepon` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `Id_nasabah` int(20) NOT NULL,
  `Nama` varchar(35) DEFAULT NULL,
  `Tanggal_lahir` date DEFAULT NULL,
  `Email` varchar(35) DEFAULT NULL,
  `Nomor_telepon` int(14) DEFAULT NULL,
  `Alamat` varchar(40) DEFAULT NULL,
  `Jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `Nomor_rekening` int(18) DEFAULT NULL,
  `Id_teller` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `Nomor_rekening` int(18) NOT NULL,
  `Saldo` int(18) DEFAULT NULL,
  `Jenis_rekening` enum('Giro','Deposito','Tabungan') DEFAULT NULL,
  `Tanggal_dibuka` date DEFAULT NULL,
  `Jumlah_transaksi` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teller`
--

CREATE TABLE `teller` (
  `Id_teller` int(14) NOT NULL,
  `Nama_teller` varchar(30) DEFAULT NULL,
  `Id_direktur` int(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Nomor_transaksi` int(20) NOT NULL,
  `Keterangan_transaksi` varchar(20) DEFAULT NULL,
  `Jenis_transaksi`  enum('tarik tunai','setor tunai', 'tranfer tunai'),  DEFAULT NULL,
  `Tanggal_transaksi` date DEFAULT NULL,
  `Jumlah_transaksi` int(125) DEFAULT NULL,
  `Saldo` int(125) DEFAULT NULL,
  `Nomor_rekening` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Id_bank`),
  ADD KEY `Nomor_rekening` (`Nomor_rekening`);

--
-- Indexes for table `direktur`
--
ALTER TABLE `direktur`
  ADD PRIMARY KEY (`Id_direktur`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`Id_nasabah`),
  ADD KEY `Nomor_rekening` (`Nomor_rekening`),
  ADD KEY `Id_teller` (`Id_teller`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`Nomor_rekening`);

--
-- Indexes for table `teller`
--
ALTER TABLE `teller`
  ADD PRIMARY KEY (`Id_teller`),
  ADD KEY `Id_direktur` (`Id_direktur`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Nomor_transaksi`),
  ADD KEY `Nomor_rekening` (`Nomor_rekening`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`Nomor_rekening`) REFERENCES `rekening` (`Nomor_rekening`);

--
-- Constraints for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD CONSTRAINT `nasabah_ibfk_1` FOREIGN KEY (`Nomor_rekening`) REFERENCES `rekening` (`Nomor_rekening`),
  ADD CONSTRAINT `nasabah_ibfk_2` FOREIGN KEY (`Id_teller`) REFERENCES `teller` (`Id_teller`);

--
-- Constraints for table `teller`
--
ALTER TABLE `teller`
  ADD CONSTRAINT `teller_ibfk_1` FOREIGN KEY (`Id_direktur`) REFERENCES `direktur` (`Id_direktur`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Nomor_rekening`) REFERENCES `rekening` (`Nomor_rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
