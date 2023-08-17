-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 12:51 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nis` varchar(4) NOT NULL,
  `id_semester` int(1) NOT NULL,
  `tanggal` date NOT NULL,
  `absen` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nis`, `id_semester`, `tanggal`, `absen`) VALUES
(2, '1001', 1, '2014-01-02', 'S'),
(3, '1005', 1, '2014-03-04', 'I'),
(4, '1008', 1, '2014-03-03', 'A'),
(5, '1010', 1, '2014-02-06', 'T'),
(6, '1123', 1, '2014-03-18', 'I'),
(7, '1115', 1, '2014-03-15', 'S'),
(8, '1078', 1, '2014-03-13', 'I'),
(9, '1016', 1, '2014-03-20', 'T'),
(10, '1098', 1, '2014-03-17', 'A'),
(11, '1088', 1, '2014-03-10', 'A'),
(12, '1055', 1, '2014-03-04', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `tgl`, `waktu`, `keterangan`, `id_user`) VALUES
(4, '2019-07-25', '07:21:53', 'Masuk', 6),
(5, '2019-07-26', '09:00:47', 'Masuk', 6),
(6, '2019-07-26', '16:01:03', 'Pulang', 6),
(7, '2019-07-25', '17:01:28', 'Pulang', 6),
(8, '2022-08-08', '22:09:12', 'Masuk', 13),
(9, '2022-08-08', '22:09:20', 'Pulang', 13),
(10, '2022-08-12', '09:12:36', 'Masuk', 13),
(11, '2022-08-12', '09:17:19', 'Pulang', 13),
(12, '2022-08-06', '08:21:07', 'Masuk', 13),
(13, '2022-08-06', '17:22:31', 'Pulang', 13),
(14, '2022-08-06', '17:24:17', 'Pulang', 13),
(15, '2022-08-09', '08:00:38', 'Masuk', 13),
(16, '2022-08-09', '17:00:20', 'Pulang', 13),
(17, '2022-08-09', '17:04:24', 'Pulang', 13),
(18, '2022-08-10', '08:01:33', 'Masuk', 13),
(19, '2022-08-10', '17:02:25', 'Pulang', 13),
(20, '2022-08-18', '18:15:20', 'Masuk', 13),
(21, '2022-08-18', '18:15:33', 'Pulang', 13),
(22, '2022-08-18', '18:15:45', 'Masuk', 13),
(23, '2022-08-18', '18:16:27', 'Masuk', 13),
(24, '2022-08-18', '18:18:17', 'Pulang', 13),
(25, '2022-08-19', '18:18:55', 'Masuk', 13),
(26, '2022-08-19', '18:19:05', 'Pulang', 13),
(27, '2022-08-03', '23:15:29', 'Masuk', 13),
(28, '2022-08-03', '23:17:23', 'Pulang', 13),
(29, '2022-09-02', '00:07:06', 'Masuk', 13),
(30, '2022-09-02', '00:07:24', 'Pulang', 13),
(31, '2022-12-06', '19:36:14', 'Masuk', 13),
(32, '2022-12-06', '19:36:29', 'Pulang', 13),
(33, '2022-12-06', '19:50:10', 'Masuk', 14),
(34, '2022-12-06', '19:50:23', 'Masuk', 14),
(35, '2022-12-06', '19:50:40', 'Pulang', 14),
(36, '2022-12-06', '19:55:08', 'Masuk', 15),
(37, '2022-12-06', '19:55:26', 'Pulang', 15),
(38, '2022-12-20', '09:32:36', 'Masuk', 16),
(39, '2022-12-20', '09:32:55', 'Pulang', 16),
(40, '2022-12-20', '09:36:59', 'Masuk', 14),
(41, '2022-12-20', '09:37:29', 'Pulang', 14),
(42, '2023-01-12', '13:58:09', 'Masuk', 16),
(43, '2023-06-17', '13:52:41', 'Masuk', 18),
(44, '2023-06-17', '13:53:55', 'Pulang', 18);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` smallint(3) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(7, 'Guru PNS'),
(8, 'Guru Honor');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id_jam` tinyint(1) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id_jam`, `start`, `finish`, `keterangan`) VALUES
(1, '09:40:00', '10:00:00', 'Masuk'),
(2, '17:00:00', '17:05:00', 'Pulang');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(2) NOT NULL,
  `kelas` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
('01', 'X'),
('02', 'XI'),
('03', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(1) NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id_semester`, `status`) VALUES
(1, 'Y'),
(2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kelas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `id_kelas`) VALUES
('1001', 'ABIMANYU KURNIADI', '03'),
('1002', 'ADININGSIH KARTIKA SARI', '03'),
('1003', 'ANDRI PURNOMO', '03'),
('1004', 'ARISMA BINTI AWALIYAH', '03'),
('1005', 'BETRI ARISTA OVIANA', '03'),
('1006', 'BRIANRAKA SONY MEI SEGA', '03'),
('1007', 'DEWI KARMILA', '03'),
('1008', 'DIMAS ESA DEWA', '03'),
('1009', 'DIMAS SEPTIAN EKA PUTRA', '03'),
('1010', 'DWI SISKA ANGGRAENI', '03'),
('1011', 'FAHMI ALFARIS HIDAYATULLAH', '03'),
('1012', 'FARIH YAHYA', '03'),
('1013', 'FATHCHUR ROJI', '03'),
('1014', 'FATHURROHMAH MAULIDAH', '03'),
('1015', 'FATOLA RUDIANZA', '03'),
('1016', 'FITRIANING WAHYU NUR SYAHADAH', '03'),
('1017', 'INDARTININGSIH', '03'),
('1018', 'INDRI RAHMAWATI', '03'),
('1019', 'KIKY FLORESTA BUNGA KIRANA', '03'),
('1020', 'MASRULI', '03'),
('1021', 'MEVINA MARSELLA LAUSANI', '03'),
('1022', 'NIKMATUL FITRIYAH', '03'),
('1023', 'NOVI DWI ARINTA', '03'),
('1024', 'NURINI WULANDARI', '03'),
('1025', 'RATNA FURI HANDAYANI', '03'),
('1026', 'RESTINING ANDITASARI', '03'),
('1027', 'RIESKA ELIAN ZULFIDA', '03'),
('1028', 'RIZAL AFANDY', '03'),
('1029', 'ROFY ANGGI PRATIWI', '03'),
('1030', 'SITI AISYA', '03'),
('1031', 'SITI ISMATUN ROHMANIYAH', '03'),
('1032', 'SITI KHOLIFAH', '03'),
('1033', 'TEGUH NOVRIYANTO', '03'),
('1034', 'TIKA MULYA RAHMAN', '03'),
('1035', 'ULIA NUR WULAN', '03'),
('1036', 'WAHYU PRATAMA', '03'),
('1037', 'WIDAHANA ARISAKTI OKTAVIA', '03'),
('1038', 'YONGKI DWI CAHYADI', '03'),
('1039', 'ZENY KURNIAWAN', '03'),
('1040', 'ZETTA KUSUMA PRAMUDITA', '03'),
('1041', 'DIMAS AGUNG PUJI ISWORO', '02'),
('1042', 'ADI SINDHU NURCAHYA', '02'),
('1043', 'AGUS SUPRIYANTO', '02'),
('1044', 'AJI SLAMET RAHARJO', '02'),
('1045', 'ALBASIT BHEKTI FIRMANSYAH', '02'),
('1046', 'AMANDA NIKE DWINTASARI', '02'),
('1047', 'ANDI MAHENDRA', '02'),
('1048', 'ARDHI KURNIAWAN', '02'),
('1049', 'DADANG SETIYOJADI', '02'),
('1050', 'DEWI SEPTIANI WULANDARI', '02'),
('1051', 'DIA WINDANA PUTRI', '02'),
('1052', 'DINI NURMAHA LENTRA', '02'),
('1053', 'DONI SAIFUL ARIFIN', '02'),
('1054', 'EBBY MAHENDRA PUTRA', '02'),
('1055', 'EKA KUSUMA WARDHANA', '02'),
('1056', 'EKA MARGARETA', '02'),
('1057', 'EKO PRASETYO', '02'),
('1058', 'FEBRIANTIKA CAHYA LESTARI', '02'),
('1059', 'FIRDA DWI ANGGRAENI', '02'),
('1060', 'FRANITHA FIDRIASTUTI BAWON', '02'),
('1061', 'IKE WULANDARI', '02'),
('1062', 'JANUAR GANGSAR SURYONO', '02'),
('1063', 'LINDA RIANI', '02'),
('1064', 'MOCHAMAD ARIF WICAKSONO', '02'),
('1065', 'MUH. CAHYA AFANDO', '02'),
('1066', 'MUHAMMAD SHOLEH', '02'),
('1067', 'NUR ARIFIN', '02'),
('1068', 'NUR LIYA AGUSTIN', '02'),
('1069', 'PRISKA MEIDYAN ANGGRAENI', '02'),
('1070', 'RATIH INGE ARYUNAH', '02'),
('1071', 'RENNDY PURNOMO', '02'),
('1072', 'RESTU WIDIASTANINGRUM', '02'),
('1073', 'RIKY INDARTA', '02'),
('1074', 'RILA NUR HANILAH', '02'),
('1075', 'RYAN NUR RAHMATULLAH', '02'),
('1076', 'SALSABILA', '02'),
('1077', 'SEPTIAN BAGUS LAKSONO', '02'),
('1078', 'SERLY ANDRIYANI', '02'),
('1079', 'TRI MARTINASARI', '02'),
('1080', 'WERDI CANDRA PRASETYO', '02'),
('1081', 'YOGA KOMARA PUTRA', '02'),
('1082', 'YULI DWI LESTARI', '02'),
('1083', 'ZAINURI HAPPY DWI ARISANDI', '02'),
('1084', 'ABDUL ROSYID ALFIANSYAH', '01'),
('1085', 'AKHMAD FANANI', '01'),
('1086', 'ANDI FAHMI MOCHTAR', '01'),
('1087', 'ARIS WAHYUDI', '01'),
('1088', 'ARTHA ADI NUGRAHA', '01'),
('1089', 'CHOIROTUN NISAH', '01'),
('1090', 'CHUSNUL KHOTIMAH', '01'),
('1091', 'DHENNY DWI HARIANTO P.', '01'),
('1092', 'DIANA DWI KUSUMANING TYAS', '01'),
('1093', 'EFA KHUSRINA', '01'),
('1094', 'EKA SRI WULANDARI', '01'),
('1095', 'FIRIDI OKTAVILUN ROCHMAN', '01'),
('1096', 'FUAD MUBAROK', '01'),
('1097', 'HATTA AGUSTA MAHARDIKA', '01'),
('1098', 'HERLI DWI WULAN', '01'),
('1099', 'IBNU JAMIL FAISHAL', '01'),
('1100', 'IMAM SANDI ROBI', '01'),
('1101', 'JEFRILYA', '01'),
('1102', 'KHOIRUN NIKMAH', '01'),
('1103', 'KIKI KURNIAWAN', '01'),
('1104', 'LINDA WAHYUNING UTAMI', '01'),
('1105', 'MUHAMMAD ROIS', '01'),
('1106', 'NOVIA YULISTIA INDRIANSYAH', '01'),
('1107', 'NOVITASARI', '01'),
('1108', 'NUR ENDAH PERMATASARI', '01'),
('1109', 'NURHAEMI ROHMAH', '01'),
('1110', 'PUPUT WULAN MANDIRI', '01'),
('1111', 'RANI INDAH DWIJAYANTI', '01'),
('1112', 'ROZY YUDHA YUDISTIRA', '01'),
('1113', 'SETYA SISWILUJENG', '01'),
('1114', 'SITI NURHIDAYAH', '01'),
('1115', 'SITI NURWIJAYANTI', '01'),
('1116', 'SWIT IVINTEN GIMIARCI', '01'),
('1117', 'SYAM HIDAYAT JATI', '01'),
('1118', 'SYLVIA RINJI WIDYANINGTYAS', '01'),
('1119', 'TITA TARWATI PURNAMASARI', '01'),
('1120', 'TRI ANI RESTUNINGSIH', '01'),
('1121', 'TUTUT IMAWULANDARI', '01'),
('1122', 'ULUL LAILATUL MARDIYAH', '01'),
('1123', 'VIKY FARISTIKA', '01');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(1) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` smallint(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT 'no-foto.png',
  `divisi` smallint(5) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` enum('Manager','Karyawan') NOT NULL DEFAULT 'Karyawan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nik`, `nama`, `telp`, `email`, `foto`, `divisi`, `username`, `password`, `level`) VALUES
(1, '', 'Ahmad Fadillah ', '08139212092', 'ahm.fadil@mail.com', '1659883686.jpg', NULL, 'admin', '$2y$10$R20g45jUe5GGKYO17rKNNOTfobvKHZmNyiIzOVYDotIimkr0QFO2G', 'Manager'),
(8, '8931289124891', 'Manager 1', '', '', 'no-foto.png', NULL, 'manager_1', '$2y$10$XtMY01KEOd5I065s8Exs0OcQ373RvRNG1JznORr6TmmBNWnZ3vjjK', 'Manager'),
(9, '1231231238900', 'Manager 2', '', '', 'no-foto.png', NULL, 'manager_2', '$2y$10$iJWUOXDznGEmxo.bqnhtmeFL51jN5130LfDlKg8VROfoEmlgC.cFW', 'Manager'),
(10, '908121310291', 'Manager 3', '', '', 'no-foto.png', NULL, 'manager_3', '$2y$10$uGsLvgl.6ji2iZ7tWkNvPelTwZdLQ6QA81Yawa20wsLairCXqV8BO', 'Manager'),
(11, '123801204012', 'Manager 4', '', '', 'no-foto.png', NULL, 'master_4', '$2y$10$Kot81WNqrho4WlcYI13kT.Y5V2sMg1ZSAXcITrp8cj3dqHpbl4vrS', 'Manager'),
(18, '1111111111111111', 'sita', '08111111', 'laumait@gmail.com', 'no-foto.png', 7, 'sita', '$2y$10$MweuuUD5R0ACzM4ED4GJa.Myq7pcjN6aeB7FE9ICMqanlEeXvQzKe', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_semester` (`id_semester`) USING BTREE,
  ADD KEY `nis` (`nis`) USING BTREE;

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_kelas` (`id_kelas`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `fk_absen_semester` FOREIGN KEY (`id_semester`) REFERENCES `semester` (`id_semester`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_absen_siswa` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_siswa_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
