-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 11, 2023 at 06:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `akses` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `akses`) VALUES
(1, 'Joko', '123', 'A'),
(2, 'Susi', '123', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `no_tansaksi` int(15) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `kd_obat` int(11) NOT NULL,
  `jenis` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`kd_obat`, `jenis`) VALUES
(20000320, 'Paten'),
(20000321, 'Paten'),
(20000322, 'Organik'),
(20000323, 'Paten'),
(20000324, 'Organik'),
(20000325, 'Organik'),
(20000326, 'Paten'),
(20000327, 'Organik'),
(20000328, 'Organik'),
(20000329, 'Organik');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `kd_obat` int(11) DEFAULT NULL,
  `kategori` varchar(10) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty_stock` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama`, `kd_obat`, `kategori`, `harga`, `qty_stock`) VALUES
(5, 'Aknil', 20000320, 'Paten', 24000, 70),
(6, 'Anafen', 20000321, 'Paten', 32000, 98),
(7, 'Dofen', 20000326, 'Paten', 21000, 78),
(8, 'Fenris', 20000323, 'Paten', 22000, 75),
(9, 'Amoksilin', 20000322, 'Organik', 29000, 95),
(10, 'Lansoprazole', 20000324, 'Organik', 41000, 46),
(11, 'Clebropride Malate', 20000325, 'Organik', 13000, 75),
(12, 'Omeprazole', 20000327, 'Organik', 27000, 35),
(13, 'Ranitidine HCl', 20000328, 'Organik', 11000, 55),
(14, 'Magnesium Trisilicate', 20000329, 'Organik', 25000, 65);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(32) DEFAULT NULL,
  `jk` varchar(10) NOT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `jk`, `no_telp`, `alamat`) VALUES
(1, 'Alex', 'Laki-laki', '0812343210', 'Purwodeso, Sruweng, Kebumen'),
(2, 'Alberta', 'Perempuan', '0812343211', 'Tegalreja, Jagakarsa, Jakarta Timur'),
(3, 'Catherin', 'Perempuan', '0812343213', 'Tanggung, Butuh, Purworejo'),
(4, 'Gilbert', 'Laki-laki', '0812343214', 'Wanareja, Karang, Banjarnegara'),
(5, 'Gilberta', 'Perempuan', '0812343215', 'Wanareja, Karang, Banjarnegara'),
(6, 'Klise', 'Laki-laki', '0812343216', 'Derma, Kageria, Bekasi'),
(7, 'Sonia', 'Perempuan', '0812343217', 'Sugran, Adiluhur, Bogor'),
(8, 'Arthur', 'Laki-laki', '0812343218', 'Sindang, Mulya, Karawang'),
(9, 'Bennedict', 'Laki-laki', '0812343219', 'Deltamas, Cikarang, Bekasi'),
(10, 'Flugel', 'Laki-laki', '0812343200', 'Serang, Serang Baru, Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_transaksi` int(15) NOT NULL,
  `id` int(11) NOT NULL,
  `no_faktur` int(15) NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `total_penjualan` int(15) NOT NULL,
  `admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `temporary`
--

CREATE TABLE `temporary` (
  `id` int(11) NOT NULL,
  `no_faktur` int(15) NOT NULL,
  `id_obat` int(11) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no_tansaksi` (`no_tansaksi`),
  ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`kd_obat`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `fk_jenis` (`kd_obat`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `no_faktur` (`no_faktur`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `temporary`
--
ALTER TABLE `temporary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_temporary` (`id_obat`),
  ADD KEY `admin` (`admin`),
  ADD KEY `no_faktur` (`no_faktur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `kd_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20000330;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `no_transaksi` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temporary`
--
ALTER TABLE `temporary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`no_tansaksi`) REFERENCES `penjualan` (`no_transaksi`),
  ADD CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_jenis` FOREIGN KEY (`kd_obat`) REFERENCES `jenis` (`kd_obat`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`no_transaksi`) REFERENCES `detail` (`no_tansaksi`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id`) REFERENCES `temporary` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id`) REFERENCES `pelanggan` (`id_pelanggan`);

--
-- Constraints for table `temporary`
--
ALTER TABLE `temporary`
  ADD CONSTRAINT `fk_temporary` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`),
  ADD CONSTRAINT `temporary_ibfk_1` FOREIGN KEY (`admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `temporary_ibfk_2` FOREIGN KEY (`no_faktur`) REFERENCES `penjualan` (`no_faktur`),
  ADD CONSTRAINT `temporary_ibfk_3` FOREIGN KEY (`id`) REFERENCES `penjualan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
