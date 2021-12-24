-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 12:15 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bandar_lampung`
--

CREATE TABLE `tb_bandar_lampung` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bandar_lampung`
--

INSERT INTO `tb_bandar_lampung` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 502.968, 100.54, 10.15),
(2017, 540.679, 100.5, 9.94),
(2018, 562.277, 93.04, 9.04),
(2019, 588.177, 91.24, 8.71),
(2020, 634.743, 93.74, 8.81);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lampung_barat`
--

CREATE TABLE `tb_lampung_barat` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lampung_barat`
--

INSERT INTO `tb_lampung_barat` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 371.926, 44.9, 15.1),
(2017, 382.576, 42.71, 14.3),
(2018, 391.444, 40.62, 13.5),
(2019, 400.662, 39.05, 12.9),
(2020, 443.313, 38.12, 12.5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lampung_selatan`
--

CREATE TABLE `tb_lampung_selatan` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lampung_selatan`
--

INSERT INTO `tb_lampung_selatan` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 356.457, 158.38, 16.2),
(2017, 360.594, 150.11, 15.2),
(2018, 375868, 148.54, 14.9),
(2019, 389236, 144.44, 14.3),
(2020, 422328, 143.33, 14.1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lampung_tengah`
--

CREATE TABLE `tb_lampung_tengah` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lampung_tengah`
--

INSERT INTO `tb_lampung_tengah` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 362.475, 165.67, 13.3),
(2017, 373.98, 162.38, 12.9),
(2018, 385.132, 160.12, 12.6),
(2019, 394.338, 153.84, 12),
(2020, 436.777, 152.28, 11.8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lampung_timur`
--

CREATE TABLE `tb_lampung_timur` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lampung_timur`
--

INSERT INTO `tb_lampung_timur` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 331.765, 172.61, 17),
(2017, 342.295, 167.64, 16.4),
(2018, 352.173, 162.94, 15.8),
(2019, 360.61, 158.9, 15.2),
(2020, 398.298, 153.57, 14.6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lampung_utara`
--

CREATE TABLE `tb_lampung_utara` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lampung_utara`
--

INSERT INTO `tb_lampung_utara` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 369.628, 139.5, 22.9),
(2017, 379.962, 131.78, 21.6),
(2018, 390.927, 128.02, 20.9),
(2019, 400.248, 122.65, 19.9),
(2020, 441.045, 119.35, 19.3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mesuji`
--

CREATE TABLE `tb_mesuji` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mesuji`
--

INSERT INTO `tb_mesuji` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 353.477, 15.74, 8),
(2017, 360.105, 15.16, 7.7),
(2018, 370.497, 15.01, 7.6),
(2019, 382.02, 14.94, 7.5),
(2020, 423.133, 14.72, 7.3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_metro`
--

CREATE TABLE `tb_metro` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_metro`
--

INSERT INTO `tb_metro` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 331.201, 16.26, 10.2),
(2017, 346.491, 16.06, 9.9),
(2018, 360.656, 15.06, 9.1),
(2019, 371.636, 14.49, 8.7),
(2020, 406.351, 14.31, 8.5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-5.38752092906703'),
('default_lng', '105.25975166406504'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesawaran`
--

CREATE TABLE `tb_pesawaran` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesawaran`
--

INSERT INTO `tb_pesawaran` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 330.874, 74.5, 17.3),
(2017, 347.215, 71.64, 16.5),
(2018, 360.909, 70.14, 16),
(2019, 372.649, 67.36, 15.2),
(2020, 403.441, 66.04, 14.8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesisir_barat`
--

CREATE TABLE `tb_pesisir_barat` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesisir_barat`
--

INSERT INTO `tb_pesisir_barat` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 371.724, 24.2, 15.9),
(2017, 390.885, 23.76, 15.6),
(2018, 393.302, 22.98, 15),
(2019, 407.29, 22.38, 14.5),
(2020, 441.917, 22.24, 14.3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pringsewu`
--

CREATE TABLE `tb_pringsewu` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pringsewu`
--

INSERT INTO `tb_pringsewu` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 379.279, 45.72, 11.7),
(2017, 398.83, 44.41, 11.3),
(2018, 408.174, 41.64, 10.5),
(2019, 422.691, 40.55, 10.2),
(2020, 458.627, 40.12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanggamus`
--

CREATE TABLE `tb_tanggamus` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tanggamus`
--

INSERT INTO `tb_tanggamus` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 332.302, 81.34, 14.1),
(2017, 341.443, 77.53, 13.3),
(2018, 351167, 73.77, 12.5),
(2019, 359580, 71.9, 12.1),
(2020, 397984, 70.37, 11.7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `lat`, `lng`) VALUES
(18, 'Lampung Barat', -5.109529, 104.146605),
(19, 'Tanggamus', -5.344554, 104.74163),
(20, 'Lampung Selatan', -5.562261, 105.547437),
(21, 'Lampung Timur', -5.113499, 105.688179),
(22, 'Lampung Tengah', -4.894598, 105.223433),
(23, 'Lampung Utara', -4.81339, 104.752094),
(24, 'Way Kanan', -4.443448, 104.629069),
(26, 'Tulang Bawang', -4.278797, 105.414426),
(27, 'Pesawaran', -5.593743, 105.116044),
(28, 'Pringsewu', -5.356572, 104.971769),
(29, 'Mesuji', -4.027742, 105.273053),
(31, 'Tulang Bawang Barat', -4.426993, 105.117986),
(32, 'Pesisir Barat', -5.449129, 104.188037),
(33, 'Bandar Lampung', -5.45, 105.26667),
(34, 'Metro', -5.115189, 105.308206),
(36, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tulang_bawang`
--

CREATE TABLE `tb_tulang_bawang` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tulang_bawang`
--

INSERT INTO `tb_tulang_bawang` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 362.185, 44.26, 10.2),
(2017, 373.681, 44.31, 10.1),
(2018, 384.465, 43.1, 9.7),
(2019, 393.676, 42.06, 9.4),
(2020, 438.744, 42.43, 9.3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tulang_bawang_barat`
--

CREATE TABLE `tb_tulang_bawang_barat` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tulang_bawang_barat`
--

INSERT INTO `tb_tulang_bawang_barat` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 358.939, 22.39, 8.4),
(2017, 370.332, 21.77, 8.1),
(2018, 384.933, 21.93, 8.1),
(2019, 391.096, 21.14, 7.8),
(2020, 432.693, 20.29, 7.4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'test', 'test'),
(3, 'sultan', 'sultan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_way_kanan`
--

CREATE TABLE `tb_way_kanan` (
  `id_kemiskinan` int(11) NOT NULL,
  `garis_kemiskinan` double DEFAULT NULL,
  `jumlah_penduduk_miskin` double DEFAULT NULL,
  `presentase_kemiskinan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_way_kanan`
--

INSERT INTO `tb_way_kanan` (`id_kemiskinan`, `garis_kemiskinan`, `jumlah_penduduk_miskin`, `presentase_kemiskinan`) VALUES
(2016, 313.733, 63.64, 14.6),
(2017, 323.691, 62, 14.1),
(2018, 333.033, 60.16, 13.5),
(2019, 341.012, 58.72, 13.1),
(2020, 377.712, 58.41, 12.9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bandar_lampung`
--
ALTER TABLE `tb_bandar_lampung`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_lampung_barat`
--
ALTER TABLE `tb_lampung_barat`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_lampung_selatan`
--
ALTER TABLE `tb_lampung_selatan`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_lampung_tengah`
--
ALTER TABLE `tb_lampung_tengah`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_lampung_timur`
--
ALTER TABLE `tb_lampung_timur`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_lampung_utara`
--
ALTER TABLE `tb_lampung_utara`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_mesuji`
--
ALTER TABLE `tb_mesuji`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_metro`
--
ALTER TABLE `tb_metro`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_pesawaran`
--
ALTER TABLE `tb_pesawaran`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_pesisir_barat`
--
ALTER TABLE `tb_pesisir_barat`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_pringsewu`
--
ALTER TABLE `tb_pringsewu`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_tanggamus`
--
ALTER TABLE `tb_tanggamus`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_tulang_bawang`
--
ALTER TABLE `tb_tulang_bawang`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_tulang_bawang_barat`
--
ALTER TABLE `tb_tulang_bawang_barat`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_way_kanan`
--
ALTER TABLE `tb_way_kanan`
  ADD PRIMARY KEY (`id_kemiskinan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
