-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2023 at 08:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_level`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_opd`
--

CREATE TABLE `data_opd` (
  `id` int(11) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `output` varchar(255) NOT NULL,
  `capaian_k` int(10) NOT NULL,
  `capaian_rp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_opd`
--

INSERT INTO `data_opd` (`id`, `kegiatan`, `output`, `capaian_k`, `capaian_rp`) VALUES
(1, 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH KABUPATEN', 'Cakupan Pelayanan Administrasi Pemerintahan, Pembangunan dan Kemasyarakatan', 45, 98);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'superadmin', 'admin', '12345', 'admin'),
(2, 'pegawai', 'opd', '12345', 'opd'),
(3, 'bupati', 'bupati', '12345', 'bupati');

-- --------------------------------------------------------

--
-- Table structure for table `userdb`
--

CREATE TABLE `userdb` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdb`
--

INSERT INTO `userdb` (`id`, `username`, `password`, `level`) VALUES
(1, 'Superadmin', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin'),
(2, 'Dinas Kominfo', '827ccb0eea8a706c4c34a16891f84e7b', 'OPD'),
(3, 'Bupati', '827ccb0eea8a706c4c34a16891f84e7b', 'bupati'),
(4, 'Dinas PUPR', '827ccb0eea8a706c4c34a16891f84e7b', 'OPD'),
(9, 'Dinas ketapang', '827ccb0eea8a706c4c34a16891f84e7b', 'OPD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_opd`
--
ALTER TABLE `data_opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdb`
--
ALTER TABLE `userdb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_opd`
--
ALTER TABLE `data_opd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userdb`
--
ALTER TABLE `userdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
