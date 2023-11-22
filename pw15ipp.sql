-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 11:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw15ipp`
--

-- --------------------------------------------------------

--
-- Table structure for table `pgwbidang`
--

CREATE TABLE `pgwbidang` (
  `id_pgw` int(11) NOT NULL,
  `nama_pgw` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `jabatan` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pgwbidang`
--

INSERT INTO `pgwbidang` (`id_pgw`, `nama_pgw`, `nip`, `pangkat`, `jabatan`, `status`) VALUES
(6, 'Denni Agustri Siregar, Ak.', '19760803 199811 1 001', 'Pembina Tingkat I, IV/b', 'Koordinator Pengawas Bidang IPP', 'korwas'),
(7, 'Puja Permana Mangunjaya, S.E.', '19650630 198603 1 001', 'Pembina Tingkat I, IV/b', 'Auditor Madya', 'dalnis'),
(8, 'Rokhman, Ak.', '19751211 199601 1 001', 'Pembina Tingkat I, IV/b ', 'Auditor Madya', 'dalnis'),
(9, 'I Gede Agus Subakti Wijaya, S.E.', '19700821 199303 1 001', 'Penata Tingkat I, III/d', 'Auditor Muda', 'katim'),
(10, 'Ariferdina Ambudi, S.S.T., M.Si.', '19850412 200701 1 002', 'Penata, III/c', 'Auditor Muda', 'katim'),
(11, 'Gilang Andika, S.E.', '19870401 200911 1 001', 'Penata, III/c', 'Auditor Muda', 'katim'),
(12, 'Ridha Cahya Utama', '19891214 201902 1 002', 'Penata Muda Tingkat I, III/b', 'Auditor Pertama', 'katim'),
(13, 'Pebriani Kristina Br Sembiring, S.E.', '19900225 201402 2 002', 'Penata Muda Tingkat I, III/b', 'Auditor Pertama', 'katim'),
(14, 'Yuliana Indriani, S.E.', '19900729 201801 2 001', 'Penata Muda Tingkat I, III/b', 'Auditor Pertama', 'katim'),
(15, 'Surya Darma', '19870202 200901 1 001', 'Penata Muda Tingkat I, III/b', 'Auditor Pelaksana Lanjutan', 'katim'),
(16, 'Abdul Rahmat Dwicaksono', '19960419 201801 1 001', 'Pengatur Tingkat I, II/d', 'Auditor Pelaksana', 'tim'),
(17, 'Irmaria Septiani Panggabean', '19950906 201801 2 003', 'Pengatur Tingkat I, II/d', 'Auditor Pelaksana', 'tim'),
(18, 'Fadilla Fanni', '19991101 202101 2 002', 'Pengatur, II/c', 'Auditor Pelaksana', 'tim'),
(19, 'Hima Yulianti, A.Md.A.Pj.', '19990623 202202 2 002', 'Calon Pegawai Negeri Sipil, II/c', 'Calon Auditor Pelaksana', 'tim'),
(20, 'Nares Ufairah Maheswari, A.Md.A.Pj.', '19991113 202202 2 001', 'Calon Pegawai Negeri Sipil, II/c', 'Calon Auditor Pelaksana', 'tim'),
(21, 'Farah Hania Rohmatillah, A.Md.A.Pj.', '20000522 202202 2 003', 'Calon Pegawai Negeri Sipil, II/c', 'Calon Auditor Pelaksana', 'tim'),
(22, 'Chika Salsabila, A.Md.A.Pj.', '20001108 202202 2 002', 'Calon Pegawai Negeri Sipil, II/c', 'Calon Auditor Pelaksana', 'tim'),
(23, 'Almirah Melati Meiriska', '20020510 202202 2 001', 'Calon Pegawai Negeri Sipil, II/c', 'Calon Auditor Pelaksana', 'tim');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggaran`
--

CREATE TABLE `tb_anggaran` (
  `id_anggaran` int(11) NOT NULL,
  `id_tugas` bigint(111) DEFAULT NULL,
  `nama_peg` varchar(255) DEFAULT NULL,
  `anggaran` varchar(255) DEFAULT NULL,
  `jumlah_hp` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bidang`
--

CREATE TABLE `tb_bidang` (
  `id_bidang` int(11) NOT NULL,
  `nama_bidang` varchar(255) NOT NULL,
  `kode_bidang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_bidang`
--

INSERT INTO `tb_bidang` (`id_bidang`, `nama_bidang`, `kode_bidang`) VALUES
(1, 'Umum', 'BU'),
(2, 'IPP', 'IPP'),
(3, 'APD', '03'),
(4, 'AN', '04'),
(5, 'INV', '05'),
(6, 'P3A', '06');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cs`
--

CREATE TABLE `tb_cs` (
  `id_cs` int(11) NOT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `nama_peg` varchar(255) DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `hp_anggaran` varchar(255) DEFAULT NULL,
  `anggaran` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_cs`
--

INSERT INTO `tb_cs` (`id_cs`, `id_tugas`, `nama_peg`, `hp`, `hp_anggaran`, `anggaran`, `ket`) VALUES
(3, 29, ' Muhammad Umar', '2', '2', '1500000', NULL),
(4, 29, ' Muhammad Dadang Isnandar', '3', '2', '1500000', NULL),
(5, 30, ' Indra Kurniawan', '7', '5', '6000000', NULL),
(6, 30, ' Cucu Supangkat', '7', '5', '6000000', NULL),
(7, 30, ' Tia Astuti Widianti', '7', '7', '8000000', NULL),
(8, 30, ' Jessyca Bertha Panjaitan', '7', '7', '8000000', NULL),
(9, 31, ' Indra Kurniawan', '3', '2', '1500000', NULL),
(10, 31, ' Sidik Murdoko', '3', '2', '1500000', NULL),
(11, 31, ' Whibei Paradise Suwardi', '3', '2', '1500000', NULL),
(12, 31, ' Mutia Qonita', '3', '2', '1500000', NULL),
(13, 32, ' Indra Kurniawan', '10', '0', '0', NULL),
(14, 32, ' Sidik Murdoko', '20', '0', '0', NULL),
(15, 32, ' Agus Budi Laksono', '20', '0', '0', NULL),
(16, 32, ' Whibei Paradise Suwardi', '20', '0', '0', NULL),
(17, 32, ' Uce Binsar Sahat Maruli Sitinjak', '20', '0', '0', NULL),
(18, 32, ' Yuliana Indriani', '20', '0', '0', NULL),
(19, 32, ' Jessyca Bertha Panjaitan', '20', '0', '0', NULL),
(20, 32, ' Syahrul Hidayatullah', '20', '0', '0', NULL),
(21, 32, ' Irmaria Septiani Panggabean', '20', '0', '0', NULL),
(22, 32, ' Agya Ilham Musyaffa', '20', '0', '0', NULL),
(23, 32, ' Fadel Kurniawan', '20', '0', '0', NULL),
(24, 32, ' Rizky Aditya Rahman', '20', '0', '0', NULL),
(25, 32, ' Tia Astuti Widianti', '20', '0', '0', NULL),
(26, 32, ' Brigida', '20', '0', '0', NULL),
(27, 32, ' Rania Nazli', '20', '0', '0', NULL),
(28, 32, ' Eka Edina Tarigan', '20', '0', '0', NULL),
(29, 32, ' Mutia Qonita', '20', '0', '0', NULL),
(32, 34, ' Rurie Wiedya Rahayu', '10', '0', '0', NULL),
(33, 34, ' Tri Setya Aulia', '10', '0', '0', NULL),
(34, 33, ' Untung Subagyo', '7', '0', '0', NULL),
(35, 33, ' Lia Amalia', '7', '0', '0', NULL),
(36, 33, ' Esra Siagian', '7', '0', '', NULL),
(37, 33, ' Putri Mas Hindola Sirait', '7', '0', '0', NULL),
(38, 38, ' Denni Agustri Siregar', '12', '0', '0', NULL),
(39, 38, ' Puja Permana Mangunjaya', '12', '0', '0', NULL),
(40, 38, ' Pebriani Kristina Br Sembiring', '12', '0', '0', NULL),
(41, 38, ' Ariferdina Ambudi', '12', '0', '0', NULL),
(42, 38, ' Ridha Cahya Utama', '12', '0', '0', NULL),
(43, 38, ' Abdul Rahmat Dwicaksono', '12', '0', '0', NULL),
(44, 38, ' Fadilla Fanni', '12', '0', '0', NULL),
(45, 38, ' Hima Yulianti', '12', '0', '0', NULL),
(46, 39, ' Untung Subagyo', '26', '-', '-', NULL),
(47, 39, ' Lia Amalia', '65', '-', '-', NULL),
(48, 39, ' Riky Setiawan', '65,0', '-', '-', NULL),
(49, 39, ' Riris Duma Agustina Hutasoit', '65,0', '-', '-', NULL),
(50, 39, ' Umi Hasanah', '65,0', '-', '-', NULL),
(51, 39, ' Putri Mas Hindola Sirait', '65,0', '-', '-', NULL),
(52, 39, ' Adhe Repsi Hanantajaya', '65,0', '-', '-', NULL),
(53, 39, ' Astri Tristiyani Fadhilah', '65,0', '-', '-', NULL),
(54, 39, ' Anggita Mazmur Afrida Siregar', '65,0', '-', '-', NULL),
(55, 39, ' Esra Siagian', '65,0', '-', '-', NULL),
(57, 41, ' Muhammad Dadang Isnandar', '3', '3', '-', NULL),
(58, 42, ' Indra Kurniawan', '5', '-', '-', NULL),
(59, 42, ' Sidik Murdoko', '5', '-', '-', NULL),
(60, 42, ' Agus Budi Laksono', '5', '-', '-', NULL),
(61, 42, ' Fadel Kurniawan', '5', '-', '-', NULL),
(62, 42, ' Prima Rendra Aris Sukmana', '5', '-', '-', NULL),
(63, 42, ' Mutia Qonita', '5', '-', '-', NULL),
(64, 40, ' Indra Kurniawan', '21', '-', '', NULL),
(65, 40, ' Karlie', '21', '-', '', NULL),
(66, 40, ' Fadel Kurniawan', '21', '-', '', NULL),
(67, 40, ' Farel Indra', '21', '-', '', NULL),
(68, 40, ' Brigida', '21', '-', '', NULL),
(69, 43, ' Indra Kurniawan', '21', '', '', NULL),
(70, 43, ' Cucu Supangkat', '21', '', '', NULL),
(71, 43, ' Tia Astuti Widianti', '21', '', '', NULL),
(72, 43, ' Hanif Abdullah', '21', '', '', NULL),
(73, 43, ' Eka Edina Tarigan', '21', '', '', NULL),
(74, 44, ' Suyadi', '10', '', '', NULL),
(75, 44, ' John Michel', '10', '', '', NULL),
(76, 44, ' Whibei Paradise Suwardi', '10', '', '', NULL),
(77, 44, ' Muhammad Umar', '10', '', '', NULL),
(78, 44, ' Jessyca Bertha Panjaitan', '10', '', '', NULL),
(79, 44, ' Agya Ilham Musyaffa', '10', '', '', NULL),
(80, 44, ' Kezia Putri Claudia Tobing', '10', '', '', NULL),
(81, 47, ' Nadiyatussilmi', '3', '', '', NULL),
(82, 47, '', '', '', '', NULL),
(83, 48, ' Untung Subagyo', '15', '', '', NULL),
(84, 48, ' Riodi Irvanza Halim', '15', '', '', NULL),
(85, 49, ' Abdul Karim', '5', '2', '1500000', NULL),
(87, 50, ' Risparanto', '1', '1', '150000', NULL),
(88, 50, ' Indra Wahyudi', '1', '1', '150000', NULL),
(89, 52, ' Denni Agustri Siregar', '6', '', '', NULL),
(90, 52, ' I Gede Agus Subakti Wijaya', '9', '6', '900.000', NULL),
(91, 52, ' Gilang Andika', '15', '13', '1.950.000', NULL),
(92, 52, ' Daniel Owen Setiawan', '15', '13', '1.950.000', NULL),
(93, 55, ' Denni Agustri Siregar', '7', '', '', NULL),
(94, 55, ' I Gede Agus Subakti Wijaya', '10', '', '', NULL),
(96, 56, ' Sidik Murdoko', '79', '', '', NULL),
(97, 57, ' Indra Kurniawan', '29', '', '', NULL),
(98, 57, ' Karlie', '37', '', '', NULL),
(99, 57, ' Sidik Murdoko', '79', '', '', NULL),
(100, 57, ' Sofia Mariani', '79', '', '', NULL),
(101, 57, ' Dean Imanullah Ibrahim', '79', '', '', NULL),
(102, 57, ' Brigida', '79', '', '', NULL),
(103, 58, ' Indra Kurniawan', '3', '', '', NULL),
(104, 58, ' Karlie', '4', '', '', NULL),
(105, 58, ' Syahrul Hidayatullah', '4', '', '', NULL),
(106, 58, ' Prima Rendra Aris Sukmana', '4', '', '', NULL),
(107, 59, ' Denni Agustri Siregar', '4', '', '', NULL),
(108, 59, ' I Gede Agus Subakti Wijaya', '7', '', '', NULL),
(114, 59, ' Ariferdina Ambudi', '13', '', '', NULL),
(115, 59, ' Pebriani Kristina Br Sembiring', '13', '', '', NULL),
(116, 59, ' Fadilla Fanni', '13', '', '', NULL),
(117, 59, ' Farah Hania Rohmatillah', '13', '', '', NULL),
(118, 59, ' Chika Salsabila', '13', '', '', NULL),
(119, 60, ' Abdul Karim', '8', '4', '5510000', NULL),
(120, 60, ' Iqram Ifrizal', '8', '4', '3390000', NULL),
(121, 55, ' Pebriani Kristina Br Sembiring', '20', '', '', NULL),
(122, 55, ' Chika Salsabila', '20', '', '', NULL),
(123, 61, ' Denni Agustri Siregar', '6', '', '', NULL),
(124, 61, ' Ridha Cahya Utama', '13', '', '', NULL),
(125, 61, ' Surya Darma', '13', '', '', NULL),
(126, 61, ' Nares Ufairah Maheswari', '13', '', '', NULL),
(127, 61, ' Almirah Melati Meiriska', '13', '', '', NULL),
(128, 63, ' Untung Subagyo', '26,0', '', '', NULL),
(129, 63, ' Esra Siagian', '45,5', '', '', NULL),
(130, 63, ' Astri Tristiyani Fadhilah', '45,5', '', '', NULL),
(131, 64, ' Suyadi', '3', '', '', NULL),
(132, 64, ' John Michel', '3', '', '', NULL),
(133, 64, ' Ari Kristian Ginting', '5', '', '', NULL),
(134, 64, ' Tasyavira Niken Hernanda', '5', '', '', NULL),
(135, 64, ' Kezia Putri Claudia Tobing', '5', '', '', NULL),
(136, 51, ' Suyadi', '4', '', '', NULL),
(137, 51, ' Agung Wahyu Pranoto', '5', '', '', NULL),
(138, 51, ' Muhammad Dadang Isnandar', '10', '', '', NULL),
(139, 51, ' Ridha Cahya Utama', '10', '', '', NULL),
(140, 51, ' Ari Kristian Ginting', '10', '', '', NULL),
(143, 41, ' Muhammad Umar', '3', '', '', NULL),
(144, 66, ' Suyadi', '11', '3', '450000', NULL),
(145, 66, ' Agung Wahyu Pranoto', '14', '2', '300000', NULL),
(146, 66, ' Whibei Paradise Suwardi', '20', '5', '750000', NULL),
(147, 66, ' Muhammad Umar', '20', '5', '750000', NULL),
(148, 66, ' Kezia Putri Claudia Tobing', '20', '4', '600000', NULL),
(149, 66, ' Tasyavira Niken Hernanda', '20', '5', '750000', NULL),
(150, 66, ' Suyadi', '', '3', '450000', NULL),
(151, 66, ' Agung Wahyu Pranoto', '', '3', '870000', NULL),
(152, 66, ' Whibei Paradise Suwardi', '', '5', '1450000', NULL),
(153, 66, ' Muhammad Umar', '', '5', '1450000', NULL),
(154, 66, ' Kezia Putri Claudia Tobing', '', '5', '1450000', NULL),
(155, 66, ' Tasyavira Niken Hernanda', '', '5', '1450000', NULL),
(156, 67, ' Suyadi', '2', '', '', NULL),
(157, 67, ' John Michel', '3', '', '', NULL),
(158, 67, ' Jevi Herlangga', '4', '', '', NULL),
(159, 67, ' M. Hafiz', '4', '', '', NULL),
(160, 67, ' Tasyavira Niken Hernanda', '4', '', '', NULL),
(161, 68, ' Suyadi', '3', '', '', NULL),
(162, 68, ' Agung Wahyu Pranoto', '3', '', '', NULL),
(163, 68, ' Ari Kristian Ginting', '5', '', '', NULL),
(164, 68, ' Tasyavira Niken Hernanda', '5', '', '', NULL),
(165, 68, ' Kezia Putri Claudia Tobing', '5', '', '', NULL),
(166, 69, ' Suyadi', '10', '', '', NULL),
(167, 69, ' John Michel', '5', '', '', NULL),
(168, 69, ' Muhammad Dadang Isnandar', '10', '', '', NULL),
(169, 69, ' M. Hafiz', '10', '', '', NULL),
(170, 69, ' Ari Kristian Ginting', '10', '', '', NULL),
(171, 69, ' Tasyavira Niken Hernanda', '10', '', '', NULL),
(172, 61, ' Imamuddin', '7', '', '', NULL),
(173, 54, ' Indra Kurniawan', '14', '', '', NULL),
(174, 54, ' Karlie', '16', '', '', NULL),
(175, 54, ' Agus Budi Laksono', '79', '', '', NULL),
(176, 54, ' Syahrul Hidayatullah', '79', '', '', NULL),
(177, 54, ' Agya Ilham Musyaffa', '79', '', '', NULL),
(178, 54, ' Farel Indra', '79', '', '', NULL),
(179, 65, ' Suyadi', '1', '', '', NULL),
(180, 65, ' Muhammad Dadang Isnandar', '3', '', '', NULL),
(181, 65, ' Muhammad Umar', '3', '', '', NULL),
(182, 70, ' Suyadi', '1', '', '', NULL),
(183, 70, ' Rheynhard Poltak ALex Prima Ujung', '3', '2', '8590000', NULL),
(184, 70, ' Muhammad Umar', '3', '3', '450.000', NULL),
(185, 71, ' Suyadi', '1', '3', '450000', NULL),
(186, 71, ' John Michel', '3', '3', '450000', NULL),
(187, 73, ' Denni Agustri Siregar', '7', '0', '0', NULL),
(188, 73, ' Puja Permana Mangunjaya', '10', '3', '2080000', NULL),
(189, 73, ' Pebriani Kristina Br Sembiring', '20', '6', '4460000', NULL),
(190, 73, ' Chika Salsabila', '20', '3', '3880000', NULL),
(191, 73, ' Mutia Qonita', '20', '6', '4460000', NULL),
(192, 75, ' Untung Subagyo', '19,5', '', '', NULL),
(193, 75, ' Lia Amalia', '19,5', '', '', NULL),
(194, 74, ' Denni Agustri Siregar', '7', '0', '0', NULL),
(195, 75, ' Esra Siagian', '32,5', '', '', NULL),
(196, 74, ' Puja Permana Mangunjaya', '10', '0', '0', NULL),
(197, 75, ' Putri Mas Hindola Sirait', '32,5', '', '', NULL),
(198, 74, ' Pebriani Kristina Br Sembiring', '20', '4', '600000', NULL),
(199, 74, ' Chika Salsabila', '20', '2', '300000', NULL),
(200, 74, ' Mutia Qonita', '20', '4', '600000', NULL),
(201, 76, ' Denni Agustri Siregar', '7', '0', '0', NULL),
(202, 76, ' Puja Permana Mangunjaya', '10', '2', '1720000', NULL),
(203, 76, ' Sofia Mariani', '20', '7', '5520000', NULL),
(204, 76, ' Farel Indra', '20', '7', '5520000', NULL),
(205, 77, ' Denni Agustri Siregar', '7', '0', '0', NULL),
(206, 78, ' Untung Subagyo', '32,5', '6', '6.410.000', NULL),
(207, 77, ' Puja Permana Mangunjaya', '10', '2', '1770000', NULL),
(208, 77, ' Hanif Abdullah', '20', '7', '9720000', NULL),
(209, 77, ' Anggita Mazmur Afrida Siregar', '20', '7', '5520000', NULL),
(210, 79, ' Denni Agustri Siregar', '8', '0', '0', NULL),
(211, 79, ' Puja Permana Mangunjaya', '8', '0', '0', NULL),
(212, 79, ' Rurie Wiedya Rahayu', '15', '6', '9455000', NULL),
(213, 79, ' Ezra Mega Utari Situmorang', '15', '6', '5455000', NULL),
(214, 79, ' Nadya Fairuz Fachri Naibaho', '15', '6', '2160000', NULL),
(215, 80, ' Denni Agustri Siregar', '4,5', '0', '0', NULL),
(216, 80, ' Puja Permana Mangunjaya', '7,5', '0', '0', NULL),
(217, 80, ' Ariferdina Ambudi', '15', '12', '1800000', NULL),
(218, 80, ' Fadilla Fanni', '15', '12', '1800000', NULL),
(219, 80, ' Farah Hania Rohmatillah', '15', '12', '1800000', NULL),
(220, 81, ' Denni Agustri Siregar', '6', '0', '0', NULL),
(221, 81, ' I Gede Agus Subakti Wijaya', '9', '6', '900000', NULL),
(222, 81, ' Gilang Andika', '15', '13', '1950000', NULL),
(223, 81, ' Daniel Owen Setiawan', '15', '13', '1950000', NULL),
(224, 82, ' Denni Agustri Siregar', '4', '0', '0', NULL),
(225, 82, ' Puja Permana Mangunjaya', '6,5', '0', '0', NULL),
(226, 82, ' Yuliana Indriani', '13', '0', '0', NULL),
(227, 82, ' Hima Yulianti', '13', '0', '0', NULL),
(228, 83, ' Denni Agustri Siregar', '8', '0', '0', NULL),
(230, 83, ' I Gede Agus Subakti Wijaya', '12', '6', '900000', NULL),
(231, 83, ' Abdul Rahmat Dwicaksono', '20', '12', '1800000', NULL),
(232, 83, ' Irmaria Septiani Panggabean', '20', '12', '1800000', NULL),
(233, 83, ' Nadira Imani Raisurya Purba', '20', '12', '1800000', NULL),
(234, 84, ' Puja Permana Mangunjaya', '3', '3', '2898000', NULL),
(235, 85, ' Denni Agustri Siregar', '7', '0', '0', NULL),
(236, 85, ' I Gede Agus Subakti Wijaya', '10', '0', '0', NULL),
(237, 85, ' Pebriani Kristina Br Sembiring', '20', '0', '0', NULL),
(238, 85, ' Chika Salsabila', '20', '0', '0', NULL),
(239, 86, ' Denni Agustri Siregar', '4', '0', '0', NULL),
(241, 86, ' I Gede Agus Subakti Wijaya', '7', '0', '0', NULL),
(242, 86, ' Ariferdina Ambudi', '13', '0', '0', NULL),
(243, 86, ' Pebriani Kristina Br Sembiring', '13', '0', '0', NULL),
(244, 86, ' Fadilla Fanni', '13', '0', '0', NULL),
(245, 86, ' Farah Hania Rohmatillah', '13', '0', '0', NULL),
(246, 86, ' Chika Salsabila', '13', '0', '0', NULL),
(247, 78, ' Lia Amalia', '45,5', '', '', NULL),
(248, 78, ' Riky Setiawan', '130,0', '6', '6.410.000', NULL),
(249, 78, ' Anggita Mazmur Afrida Siregar', '130,0', '6', '3.910.000', NULL),
(250, 87, ' Untung Subagyo', '32,5', '3', '450.000', NULL),
(251, 87, ' Esra Siagian', '65', '5', '750.000', NULL),
(252, 87, ' Putri Mas Hindola Sirait', '65', '5', '750.000', NULL),
(253, 88, ' Untung Subagyo', '39', '', '', NULL),
(254, 88, ' Esra Siagian', '104', '', '', NULL),
(255, 88, ' Putri Mas Hindola Sirait', '104', '', '', NULL),
(259, 90, ' Bambang Ari Setiono', '1', '', '', NULL),
(260, 90, ' Indra Kurniawan', '1', '', '', NULL),
(261, 90, ' Whibei Paradise Suwardi', '1', '', '', NULL),
(262, 91, ' Indra Kurniawan', '5', '', '', NULL),
(263, 91, ' Cucu Supangkat', '10', '', '', NULL),
(264, 91, ' Tia Astuti Widianti', '15', '', '', NULL),
(265, 91, ' Farel Indra', '15', '', '', NULL),
(266, 91, ' Brigida', '15', '', '', NULL),
(267, 91, ' Rania Nazli', '15', '', '', NULL),
(268, 92, ' Indra Kurniawan', '6', '', '', NULL),
(269, 92, ' Karlie', '10', '', '', NULL),
(270, 92, ' Rizky Aditya Rahman', '15', '', '', NULL),
(271, 92, ' Prima Rendra Aris Sukmana', '15', '', '', NULL),
(272, 92, ' Simon Hanimawan', '15', '', '', NULL),
(273, 93, ' Suyadi', '1', '', '', NULL),
(274, 93, ' Agung Wahyu Pranoto', '2', '', '', NULL),
(275, 93, ' Muhammad Dadang Isnandar', '3', '', '', NULL),
(276, 93, ' Whibei Paradise Suwardi', '3', '', '', NULL),
(277, 93, ' Tasyavira Niken Hernanda', '3', '', '', NULL),
(278, 94, ' Indra Kurniawan', '9', '', '', NULL),
(279, 94, ' Karlie', '12', '', '', NULL),
(280, 94, ' Rizky Aditya Rahman', '15', '3', '870000', NULL),
(281, 94, ' Prima Rendra Aris Sukmana', '15', '3', '870000', NULL),
(282, 94, ' Simon Hanimawan', '15', '3', '870000', NULL),
(283, 95, ' Indra Kurniawan', '9', '', '', NULL),
(284, 95, ' Karlie', '12', '6', '4410000', NULL),
(285, 95, ' Prima Rendra Aris Sukmana', '15', '6', '5310000', NULL),
(286, 95, ' Rizky Aditya Rahman', '15', '6', '5310000', NULL),
(287, 95, ' Simon Hanimawan', '15', '6', '2160000', NULL),
(288, 96, ' Karlie', '2', '', '', NULL),
(289, 96, ' Syahrul Hidayatullah', '5', '', '', NULL),
(290, 96, ' Dean Imanullah Ibrahim', '5', '', '', NULL),
(291, 96, ' Simon Hanimawan', '5', '', '', NULL),
(292, 98, ' Indra Kurniawan', '9', '', '', NULL),
(293, 98, ' Karlie', '12', '', '', NULL),
(294, 98, ' Prima Rendra Aris Sukmana', '15', '', '', NULL),
(295, 98, ' Rizky Aditya Rahman', '15', '', '', NULL),
(296, 98, ' Simon Hanimawan', '15', '', '', NULL),
(297, 99, ' Indra Kurniawan', '2', '', '', NULL),
(298, 99, ' Karlie', '4', '', '', NULL),
(299, 99, ' Syahrul Hidayatullah', '5', '', '', NULL),
(300, 99, ' Rania Nazli', '5', '', '', NULL),
(301, 100, ' Indra Kurniawan', '7', '', '', NULL),
(302, 100, ' Karlie', '10', '', '', NULL),
(303, 100, ' Sidik Murdoko', '14', '4', '1160000', NULL),
(304, 100, ' Dean Imanullah Ibrahim', '14', '4', '1160000', NULL),
(305, 100, ' Brigida', '14', '4', '1160000', NULL),
(306, 101, ' Indra Kurniawan', '7', '', '', NULL),
(307, 101, ' Karlie', '10', '', '', NULL),
(308, 101, ' Sidik Murdoko', '14', '6', '5395000', NULL),
(309, 101, ' Dean Imanullah Ibrahim', '14', '6', '5395000', NULL),
(310, 101, ' Brigida', '14', '6', '4195000', NULL),
(311, 102, ' Indra Kurniawan', '7', '', '', NULL),
(312, 102, ' Karlie', '10', '', '', NULL),
(313, 102, ' Sidik Murdoko', '14', '', '', NULL),
(314, 102, ' Dean Imanullah Ibrahim', '14', '', '', NULL),
(315, 102, ' Brigida', '14', '', '', NULL),
(316, 103, ' Indra Kurniawan', '3', '', '', NULL),
(317, 103, ' Karlie', '4', '', '', NULL),
(318, 103, ' Syahrul Hidayatullah', '4', '', '', NULL),
(319, 103, ' Prima Rendra Aris Sukmana', '4', '', '', NULL),
(320, 104, ' Indra Kurniawan', '6', '', '', NULL),
(321, 104, ' Karlie', '9', '', '', NULL),
(322, 104, ' Agus Budi Laksono', '17', '7', '6120000', NULL),
(323, 104, ' Rania Nazli', '17', '7', '6120000', NULL),
(324, 104, ' Riyan Priambodo', '17', '7', '4620000', NULL),
(325, 105, ' Suyadi', '1', '', '', NULL),
(326, 105, ' Muhammad Dadang Isnandar', '3', '', '', NULL),
(327, 105, ' Muhammad Umar', '3', '', '', NULL),
(328, 106, ' Cucu Supangkat', '8', '', '', NULL),
(329, 106, ' Agus Budi Laksono', '14', '', '', NULL),
(330, 106, ' Syahrul Hidayatullah', '14', '', '', NULL),
(331, 106, ' Brigida', '14', '', '', NULL),
(332, 106, ' Rania Nazli', '14', '', '', NULL),
(333, 106, ' Simon Hanimawan', '14', '', '', NULL),
(334, 107, ' Cucu Supangkat', '7', '', '', NULL),
(335, 107, ' Karlie', '9', '', '', NULL),
(336, 107, ' Sidik Murdoko', '14', '', '', NULL),
(337, 107, ' Sofia Mariani', '14', '', '', NULL),
(338, 107, ' Dean Imanullah Ibrahim', '14', '', '', NULL),
(339, 107, ' Brigida', '14', '', '', NULL),
(340, 108, ' Cucu Supangkat', '8', '', '', NULL),
(341, 108, ' Yeti Nurul Islamiyah', '14', '', '', NULL),
(342, 108, ' Prima Rendra Aris Sukmana', '14', '', '', NULL),
(343, 108, ' Eka Edina Tarigan', '14', '', '', NULL),
(344, 109, ' Cucu Supangkat', '8', '', '', NULL),
(345, 109, ' Tia Astuti Widianti', '14', '', '', NULL),
(346, 109, ' Rizky Aditya Rahman', '14', '', '', NULL),
(347, 109, ' Rania Nazli', '14', '', '', NULL),
(348, 109, ' Simon Hanimawan', '14', '', '', NULL),
(349, 109, ' Ananda Putra Perdana', '14', '', '', NULL),
(350, 110, ' Karlie', '3', '3', '7338000', NULL),
(351, 111, ' Indra Kurniawan', '3', '', '', NULL),
(352, 111, ' Cucu Supangkat', '3', '', '', NULL),
(353, 111, ' Yeti Nurul Islamiyah', '9', '', '', NULL),
(354, 111, ' Prima Rendra Aris Sukmana', '9', '6', '7060000', NULL),
(355, 111, ' Rizky Aditya Rahman', '9', '6', '7060000', NULL),
(356, 111, ' Eka Edina Tarigan', '9', '', '', NULL),
(357, 111, ' Simon Hanimawan', '9', '6', '2160000', NULL),
(358, 112, ' Indra Kurniawan', '6', '', '', NULL),
(359, 112, ' Karlie', '9', '3', '2130000', NULL),
(360, 112, ' Syahrul Hidayatullah', '17', '7', '6570000', NULL),
(361, 112, ' Muhammad Rifqi Setyanto', '17', '7', '5370000', NULL),
(362, 112, ' M. Hafiz', '17', '7', '5370000', NULL),
(363, 113, ' Indra Kurniawan', '5', '', '', NULL),
(364, 113, ' Cucu Supangkat', '10', '', '', NULL),
(365, 113, ' Yeti Nurul Islamiyah', '20', '', '', NULL),
(366, 113, ' Tia Astuti Widianti', '20', '', '', NULL),
(367, 113, ' Eka Edina Tarigan', '20', '', '', NULL),
(368, 114, ' Indra Kurniawan', '3', '', '', NULL),
(369, 114, ' Cucu Supangkat', '5', '', '', NULL),
(370, 114, ' Sofia Mariani', '10', '', '', NULL),
(371, 114, ' Farel Indra', '10', '', '', NULL),
(372, 115, ' Indra Kurniawan', '3', '', '', NULL),
(373, 115, ' Cucu Supangkat', '4', '', '', NULL),
(374, 115, ' Sofia Mariani', '10', '', '', NULL),
(375, 115, ' Farel Indra', '10', '', '', NULL),
(376, 116, ' Indra Kurniawan', '29', '', '', NULL),
(377, 116, ' Cucu Supangkat', '37', '', '', NULL),
(378, 116, ' Tia Astuti Widianti', '79', '', '', NULL),
(379, 116, ' Rizky Aditya Rahman', '79', '', '', NULL),
(380, 116, ' Rania Nazli', '79', '', '', NULL),
(381, 116, ' Simon Hanimawan', '79', '', '', NULL),
(382, 116, ' Ananda Putra Perdana', '79', '', '', NULL),
(383, 117, ' Indra Kurniawan', '14', '', '', NULL),
(384, 117, ' Cucu Supangkat', '16', '', '', NULL),
(385, 117, ' Yeti Nurul Islamiyah', '79', '', '', NULL),
(386, 117, ' Chusnul Chotimah Safitri', '79', '', '', NULL),
(387, 117, ' Jessyca Bertha Panjaitan', '79', '', '', NULL),
(388, 117, ' Prima Rendra Aris Sukmana', '79', '', '', NULL),
(389, 117, ' Eka Edina Tarigan', '79', '', '', NULL),
(390, 118, ' Indra Kurniawan', '14', '', '', NULL),
(391, 118, ' Cucu Supangkat', '16', '', '', NULL),
(392, 118, ' Yeti Nurul Islamiyah', '79', '', '', NULL),
(393, 118, ' Chusnul Chotimah Safitri', '79', '', '', NULL),
(394, 118, ' Jessyca Bertha Panjaitan', '79', '', '', NULL),
(395, 118, ' Prima Rendra Aris Sukmana', '79', '', '', NULL),
(396, 118, ' Eka Edina Tarigan', '79', '', '', NULL),
(397, 119, ' Indra Kurniawan', '29', '', '', NULL),
(398, 119, ' Cucu Supangkat', '37', '', '', NULL),
(399, 119, ' Tia Astuti Widianti', '79', '', '', NULL),
(400, 119, ' Rizky Aditya Rahman', '79', '', '', NULL),
(401, 119, ' Rania Nazli', '79', '', '', NULL),
(402, 119, ' Simon Hanimawan', '79', '', '', NULL),
(403, 119, ' Ananda Putra Perdana', '79', '', '', NULL),
(404, 120, ' Indra Kurniawan', '14', '', '', NULL),
(405, 120, ' Cucu Supangkat', '16', '', '', NULL),
(406, 120, ' Yeti Nurul Islamiyah', '79', '', '', NULL),
(407, 120, ' Chusnul Chotimah Safitri', '79', '', '', NULL),
(408, 120, ' Jessyca Bertha Panjaitan', '79', '', '', NULL),
(409, 120, ' Prima Rendra Aris Sukmana', '79', '', '', NULL),
(410, 120, ' Eka Edina Tarigan', '79', '', '', NULL),
(411, 121, ' Indra Kurniawan', '29', '', '', NULL),
(412, 121, ' Cucu Supangkat', '37', '', '', NULL),
(413, 121, ' Tia Astuti Widianti', '79', '', '', NULL),
(414, 121, ' Rizky Aditya Rahman', '79', '', '', NULL),
(415, 121, ' Rania Nazli', '79', '', '', NULL),
(416, 121, ' Simon Hanimawan', '79', '', '', NULL),
(417, 121, ' Ananda Putra Perdana', '79', '', '', NULL),
(418, 122, ' Indra Kurniawan', '3', '', '', NULL),
(419, 122, ' Cucu Supangkat', '4', '', '', NULL),
(420, 122, ' Sofia Mariani', '10', '', '', NULL),
(421, 122, ' Farel Indra', '10', '', '', NULL),
(422, 123, ' Indra Kurniawan', '29', '', '', NULL),
(423, 123, ' Karlie', '37', '', '', NULL),
(424, 123, ' Sidik Murdoko', '79', '', '', NULL),
(425, 123, ' Sofia Mariani', '79', '', '', NULL),
(426, 123, ' Dean Imanullah Ibrahim', '79', '', '', NULL),
(427, 123, ' Brigida', '79', '', '', NULL),
(428, 124, ' Indra Kurniawan', '14', '', '', NULL),
(429, 124, ' Karlie', '16', '', '', NULL),
(430, 124, ' Agus Budi Laksono', '79', '', '', NULL),
(431, 124, ' Syahrul Hidayatullah', '79', '', '', NULL),
(432, 124, ' Agya Ilham Musyaffa', '79', '', '', NULL),
(433, 124, ' Farel Indra', '79', '', '', NULL),
(434, 125, ' Indra Kurniawan', '29', '', '', NULL),
(435, 125, ' Karlie', '37', '', '', NULL),
(436, 125, ' Sidik Murdoko', '79', '', '', NULL),
(437, 125, ' Sofia Mariani', '79', '', '', NULL),
(438, 125, ' Dean Imanullah Ibrahim', '79', '', '', NULL),
(439, 125, ' Brigida', '79', '', '', NULL),
(440, 126, ' Indra Kurniawan', '14', '', '', NULL),
(441, 126, ' Karlie', '16', '', '', NULL),
(442, 126, ' Agus Budi Laksono', '79', '', '', NULL),
(443, 126, ' Syahrul Hidayatullah', '79', '', '', NULL),
(444, 126, ' Agya Ilham Musyaffa', '79', '', '', NULL),
(445, 126, ' Farel Indra', '79', '', '', NULL),
(446, 127, ' Untung Subagyo', '32,5', '', '', NULL),
(447, 127, ' Riky Setiawan', '97,5', '', '', NULL),
(448, 127, ' Anggita Mazmur Afrida Siregar', '97,5', '', '', NULL),
(449, 128, ' Suyadi', '11', '5', '750000', NULL),
(450, 128, ' Agung Wahyu Pranoto', '14', '5', '750000', NULL),
(451, 128, ' Whibei Paradise Suwardi', '20', '5', '750000', NULL),
(452, 128, ' Muhammad Dadang Isnandar', '20', '9', '1350000', NULL),
(453, 128, ' Agya Ilham Musyaffa', '20', '9', '1350000', NULL),
(454, 128, ' Ari Kristian Ginting', '20', '9', '1350000', NULL),
(455, 128, ' Jessyca Bertha Panjaitan', '20', '9', '1350000', NULL),
(456, 128, ' Muhammad Umar', '20', '5', '750000', NULL),
(457, 128, ' M. Hafiz', '20', '9', '1350000', NULL),
(458, 128, ' Kezia Putri Claudia Tobing', '20', '5', '750000', NULL),
(459, 128, ' Tasyavira Niken Hernanda', '20', '5', '750000', NULL),
(460, 129, ' Suyadi', '3', '', '', NULL),
(461, 129, ' M. Hafiz', '3', '', '', NULL),
(462, 130, ' Abdul Karim', '6', '0', '0', NULL),
(463, 130, ' Eny Rumiatun', '6', '3', '3500000', NULL),
(464, 130, ' Chusnul Chotimah Safitri', '10', '5', '3890000', NULL),
(465, 130, ' Ezra Mega Utari Situmorang', '10', '5', '3890000', NULL),
(466, 132, ' Abdul Karim', '2', '2', '5752000', NULL),
(467, 131, ' Karlie', '37', '', '', NULL),
(468, 131, ' Sidik Murdoko', '71', '', '', NULL),
(469, 131, ' Sofia Mariani', '71', '', '', NULL),
(470, 131, ' Dean Imanullah Ibrahim', '71', '', '', NULL),
(471, 131, ' Brigida', '71', '', '', NULL),
(472, 135, ' Abdul Karim', '7', '2', '580000', NULL),
(473, 135, ' Eny Rumiatun', '10', '2', '580000', NULL),
(474, 135, ' Maftuh Rahmah Hanifa', '18', '7', '2030000', NULL),
(475, 135, ' Nadiyatussilmi', '18', '7', '2030000', NULL),
(476, 135, ' Yolanda Sandra Maharaja', '18', '7', '2030000', NULL),
(477, 139, ' Cucu Supangkat', '36', '', '', NULL),
(478, 139, ' Yeti Nurul Islamiyah', '71', '', '', NULL),
(479, 139, ' Chusnul Chotimah Safitri', '71', '', '', NULL),
(480, 139, ' Jessyca Bertha Panjaitan', '71', '', '', NULL),
(481, 139, ' Prima Rendra Aris Sukmana', '71', '', '', NULL),
(482, 139, ' Eka Edina Tarigan', '71', '', '', NULL),
(487, 141, ' Abdul Karim', '2', '0', '0', NULL),
(488, 142, ' Cucu Supangkat', '5', '5', '4800000', NULL),
(489, 142, ' Tia Astuti Widianti', '8', '5', '4800000', NULL),
(490, 142, ' Ananda Putra Perdana', '8', '5', '3600000', NULL),
(491, 141, ' Eny Rumiatun', '2', '0', '0', NULL),
(492, 141, ' Hendrikus Tri Wahyu Susetyo', '3', '0', '0', NULL),
(493, 141, 'Chusnul Chotimah Safitri', '3', '0', '0', NULL),
(494, 141, ' Maftuh Rahmah Hanifa', '3', '0', '0', NULL),
(495, 141, ' Rurie Wiedya Rahayu', '3', '0', '0', NULL),
(496, 141, ' Putut Anom Rianto', '3', '0', '0', NULL),
(497, 141, ' Muhammad Rifqi Setyanto', '3', '0', '0', NULL),
(498, 141, ' Nadiyatussilmi', '3', '0', '0', NULL),
(499, 141, ' Tri Setya Aulia', '3', '0', '0', NULL),
(500, 141, ' Nadira Imani Raisurya Purba', '3', '0', '0', NULL),
(501, 141, ' Nadya Fairuz Fachri Naibaho', '3', '0', '0', NULL),
(502, 141, ' Yolanda Sandra Maharaja', '3', '0', '0', NULL),
(504, 141, ' Ezra Mega Utari Situmorang', '3', '0', '0', NULL),
(505, 141, ' Riyan Priambodo', '3', '0', '0', NULL),
(506, 143, ' Abdul Karim', '5', '0', '0', NULL),
(508, 143, ' Eny Rumiatun', '7', '0', '0', NULL),
(509, 143, ' Muhammad Dadang Isnandar', '10', '0', '0', NULL),
(510, 143, ' Nadiyatussilmi', '10', '0', '0', NULL),
(511, 143, ' Riyan Priambodo', '10', '0', '0', NULL),
(512, 140, ' Abdul Karim', '5', '1', '150000', NULL),
(513, 140, ' Hendrikus Tri Wahyu Susetyo', '5', '12', '1200000', NULL),
(515, 140, ' Nadya Fairuz Fachri Naibaho', '10', '12', '1200000', NULL),
(516, 140, ' Rurie Wiedya Rahayu', '10', '12', '1200000', NULL),
(517, 34, ' Abdul Karim', '10', '0', '0', NULL),
(518, 144, ' Abdul Karim', '4', '4', '9107000', NULL),
(519, 144, ' Hendrikus Tri Wahyu Susetyo', '4', '4', '7214000', NULL),
(520, 145, ' Abdul Karim', '5', '3', '870000', NULL),
(522, 145, ' Hendrikus Tri Wahyu Susetyo', '5', '3', '870000', NULL),
(523, 145, ' Eny Rumiatun', '13', '12', '3480000', NULL),
(524, 145, ' Yolanda Sandra Maharaja', '13', '12', '3480000', NULL),
(525, 145, ' Nadya Fairuz Fachri Naibaho', '13', '12', '3480000', NULL),
(526, 145, ' Riyan Priambodo', '13', '12', '3480000', NULL),
(527, 134, ' Zulkifli', '5', '0', '0', NULL),
(528, 134, ' Achmad Mubarok', '5', '0', '0', NULL),
(529, 134, ' Fany Widiarestiana', '5', '0', '0', NULL),
(530, 136, ' Riodi Irvanza Halim', '12', '0', '0', NULL),
(531, 136, ' Ananda Putra Perdana', '12', '0', '0', NULL),
(532, 137, ' Risparanto', '7', '0', '0', NULL),
(533, 137, ' Zulkifli', '7', '0', '0', NULL),
(534, 138, ' Untung Subagyo', '6', '0', '0', NULL),
(535, 138, ' Suyadi', '6', '0', '0', NULL),
(536, 146, ' Riodi Irvanza Halim', '7', '0', '0', NULL),
(537, 146, ' Ananda Putra Perdana', '7', '0', '0', NULL),
(538, 147, ' Denni Agustri Siregar', '39', '0', '0', NULL),
(539, 147, ' Indra Kurniawan', '39', '0', '0', NULL),
(540, 148, ' Agus Budi Laksono', '6', '0', '0', NULL),
(541, 149, ' Fadilla Fanni', '7', '0', '0', NULL),
(542, 149, ' Chika Salsabila', '7', '0', '0', NULL),
(543, 151, ' Bambang Ari Setiono', '3', '3', ' 6944332', NULL),
(544, 152, ' Reza Wardhana', '1', '1', '150000', NULL),
(545, 152, '', '1', '1', '150000', NULL),
(546, 157, ' Cucu Supangkat', '5', '', '', NULL),
(547, 157, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(548, 157, ' Tia Astuti Widianti', '10', '', '', NULL),
(549, 157, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(550, 157, ' Eka Edina Tarigan', '10', '', '', NULL),
(551, 158, ' Untung Subagyo', '49,5', '', '', NULL),
(552, 158, ' Umi Hasanah', '130,0', '', '', NULL),
(553, 158, ' Putri Mas Hindola Sirait', '130,0', '', '', NULL),
(554, 158, ' Astri Tristiyani Fadhilah', '130,0', '', '', NULL),
(555, 159, ' Untung Subagyo', '65,0', '', '', NULL),
(556, 159, ' Esra Siagian', '136,5', '', '', NULL),
(557, 159, ' Riodi Irvanza Halim', '136,5', '', '', NULL),
(558, 160, ' Suyadi', '4', '', '', NULL),
(559, 160, ' Agung Wahyu Pranoto', '6', '', '', NULL),
(560, 160, ' Muhammad Dadang Isnandar', '10', '', '', NULL),
(561, 160, ' Jessyca Bertha Panjaitan', '10', '', '', NULL),
(562, 160, ' M. Hafiz', '10', '', '', NULL),
(563, 160, ' Ari Kristian Ginting', '10', '', '', NULL),
(564, 160, ' Tasyavira Niken Hernanda', '10', '', '', NULL),
(565, 161, ' Untung Subagyo', '32,5', '', '', NULL),
(566, 161, ' Riky Setiawan', '130.0', '', '', NULL),
(567, 161, ' Anggita Mazmur Afrida Siregar', '130,0', '', '', NULL),
(571, 163, ' Abdul Karim', '10', '8', '2320000', NULL),
(572, 163, ' Hendrikus Tri Wahyu Susetyo', '15', '13', '3770000', NULL),
(573, 163, ' Putut Anom Rianto', '25', '18', '5220000', NULL),
(574, 163, 'Nadiyatussilmi', '25', '18', '5220000', NULL),
(575, 164, ' Puja Permana Mangunjaya', '3', '0', '0', NULL),
(579, 166, ' Dwito Santoso', '2', '', '', NULL),
(580, 166, ' Cucu Supangkat', '3', '', '', NULL),
(581, 166, ' Yeti Nurul Islamiyah', '5', '', '', NULL),
(582, 166, ' Eka Edina Tarigan', '5', '', '', NULL),
(583, 167, ' Dwito Santoso', '2', '', '', NULL),
(584, 167, ' Cucu Supangkat', '3', '', '', NULL),
(585, 167, ' Sofia Mariani', '5', '', '', NULL),
(586, 167, ' Brigida', '5', '', '', NULL),
(587, 165, ' Bambang Ari Setiono', '2', '', '', NULL),
(588, 165, ' Untung Subagyo', '2', '', '', NULL),
(589, 165, ' Riky Setiawan', '2', '', '', NULL),
(590, 165, ' Umi Hasanah', '2', '', '', NULL),
(591, 165, ' Astri Tristiyani Fadhilah', '2', '', '', NULL),
(592, 165, ' Anggita Mazmur Afrida Siregar', '2', '', '', NULL),
(593, 165, ' Reza Wardhana', '2', '', '', NULL),
(594, 162, ' Dwito Santoso', '5', '', '', NULL),
(595, 162, ' Cucu Supangkat', '5', '', '', NULL),
(596, 162, ' Tia Astuti Widianti', '5', '', '', NULL),
(597, 162, ' Ananda Putra Perdana', '5', '', '', NULL),
(598, 157, ' Dwito Santoso', '3', '', '', NULL),
(599, 139, ' Dwito Santoso', '24', '', '', NULL),
(600, 131, ' Dwito Santoso', '29', '', '', NULL),
(601, 164, ' Imamuddin', '4', '0', '0', NULL),
(602, 164, ' Gilang Andika', '5', '5', '6300000', NULL),
(603, 164, ' Hima Yulianti', '5', '5', '3700000', NULL),
(604, 164, ' Daniel Owen Setiawan', '5', '5', '3700000', NULL),
(605, 168, ' Untung Subagyo', '19,5', '', '', NULL),
(606, 168, ' Yudistira Andi Permadi', '45,5', '', '', NULL),
(607, 168, ' Umi Hasanah', '65,0', '', '', NULL),
(608, 168, ' Astri Tristiyani Fadhilah', '65,0', '', '', NULL),
(609, 168, ' Anggita Mazmur Afrida Siregar', '65,0', '', '', NULL),
(610, 169, ' Untung Subagyo', '3', '3', '', NULL),
(611, 169, ' Umi Hasanah', '3', '3', '', NULL),
(616, 172, ' Abdul Karim', '14', '10', '1500000', NULL),
(617, 172, ' Hendrikus Tri Wahyu Susetyo', '20', '16', '2400000', NULL),
(618, 172, ' Putut Anom Rianto', '25', '20', '3000000', NULL),
(619, 172, ' Muhammad Rifqi Setyanto', '25', '20', '3000000', NULL),
(620, 172, ' Nadiyatussilmi', '25', '20', '3000000', NULL),
(621, 173, ' Untung Subagyo', '45,5', '', '', NULL),
(622, 173, ' Darmago Hadiono', '78,0', '', '', NULL),
(623, 173, ' Andi Afriany Hasyim', '130,0', '', '', NULL),
(624, 173, ' Astri Tristiyani Fadhilah', '130,0', '', '', NULL),
(625, 173, ' Riodi Irvanza Halim', '130,0', '', '', NULL),
(626, 174, ' Dwito Santoso', '3', '', '', NULL),
(627, 174, ' Darmago Hadiono', '3', '', '', NULL),
(628, 187, ' Untung Subagyo', '26.0', '', '', NULL),
(629, 187, ' Andi Afriany Hasyim', '65.0', '', '', NULL),
(630, 187, ' Astri Tristiyani Fadhilah', '65,0', '', '', NULL),
(631, 188, ' Untung Subagyo', '32.5', '', '', NULL),
(632, 188, ' Andi Afriany Hasyim', '97,5', '', '', NULL),
(633, 188, ' Astri Tristiyani Fadhilah', '97,5', '', '', NULL),
(634, 159, ' Andi Afriany Hasyim', '136,5', '6', '', NULL),
(635, 159, ' Yudistira Andi Permadi', '97,5', '6', '', NULL),
(636, 158, ' Yudistira Andi Permadi', '91.0', '', '', NULL),
(637, 189, ' Untung Subagyo', '19,5', '', '', NULL),
(638, 189, ' Yudistira Andi Permadi', '45,5', '6', '6.410.000', NULL),
(639, 189, ' Andi Afriany Hasyim', '45,5', '6', '4.050.000', NULL),
(640, 189, ' Esra Siagian', '45,5', '6', '3.750.000', NULL),
(641, 189, ' Riodi Irvanza Halim', '45,5', '6', '3.750.000', NULL),
(642, 190, ' Suyadi', '1', '', '', NULL),
(643, 190, ' Whibei Paradise Suwardi', '3', '', '', NULL),
(644, 190, ' Muhammad Umar', '3', '', '', NULL),
(645, 191, ' Untung Subagyo', '32,5', '', '', NULL),
(646, 191, ' Darmago Hadiono', '45,5', '', '', NULL),
(647, 191, ' Andi Afriany Hasyim', '84,5', '', '', NULL),
(648, 191, ' Putri Mas Hindola Sirait', '84,5', '', '', NULL),
(649, 193, ' Abdul Karim', '20', '0', '', NULL),
(650, 193, ' Hendrikus Tri Wahyu Susetyo', '30', '12', '1800000', NULL),
(651, 193, ' Angga Sakti Setyawan', '46', '18', '2700000', NULL),
(652, 193, ' Maftuh Rahmah Hanifa', '46', '18', '2700000', NULL),
(653, 193, ' Nadira Imani Raisurya Purba', '46', '18', '2700000', NULL),
(654, 193, ' Riyan Priambodo', '46', '18', '2700000', NULL),
(655, 194, ' Suyadi', '5', '3', '2080000', NULL),
(656, 194, ' Boyke Syafril', '7', '3', '2980000', NULL),
(657, 194, ' Muhammad Dadang Isnandar', '10', '3', '2980000', NULL),
(658, 194, ' Ari Kristian Ginting', '10', '3', '2080000', NULL),
(659, 194, ' Kezia Putri Claudia Tobing', '10', '3', '2080000', NULL),
(660, 192, ' Suyadi', '10', '', '', NULL),
(661, 192, ' Boyke Syafril', '15', '', '', NULL),
(662, 192, ' Muhammad Dadang Isnandar', '30', '', '', NULL),
(663, 192, ' Ridha Cahya Utama', '30', '', '', NULL),
(664, 192, ' Ari Kristian Ginting', '30', '', '', NULL),
(665, 195, ' Iqram Ifrizal', '2', '2', '300000', NULL),
(666, 195, '', '2', '2', '300000', NULL),
(667, 155, ' Agung Wahyu Pranoto', '3', '3', '4394868', NULL),
(668, 156, ' Yusuf Agin Widianto', '7', '7', '0', NULL),
(669, 170, ' Angga Sakti Setyawan', '11', '11', '0', NULL),
(670, 171, ' Bambang Ari Setiono', '6', '6', '0', NULL),
(671, 175, ' Indra Wahyudi', '10', '10', '0', NULL),
(672, 176, ' Zulkifli', '6', '6', '0', NULL),
(673, 177, ' Denni Agustri Siregar', '24', '24', '0', NULL),
(674, 178, ' Iqram Ifrizal', '4', '4', '6171781', NULL),
(675, 179, ' Risparanto', '3', '3', '4999697', NULL),
(676, 180, ' Chika Salsabila', '4', '4', '5244280', NULL),
(677, 181, ' Indra Wahyudi', '6', '6', '0', NULL),
(678, 182, ' Mayang Sari', '1', '1', '150000', NULL),
(679, 182, ' Lola Maharani', '1', '1', '150000', NULL),
(680, 182, ' Safira Dian Fadillah', '1', '1', '150000', NULL),
(681, 182, '', '1', '1', '150000', NULL),
(682, 183, '', '1', '1', '150000', NULL),
(683, 183, '', '1', '1', '150000', NULL),
(684, 185, '', '1', '1', '150000', NULL),
(685, 196, ' Suyadi', '1', '', '', NULL),
(686, 196, ' Muhammad Dadang Isnandar', '3', '', '', NULL),
(687, 196, ' M. Hafiz', '3', '2', '300000', NULL),
(688, 197, ' Untung Subagyo', '19,5', '', '', NULL),
(689, 197, ' Untung Subagyo', '19,5', '', '', NULL),
(690, 197, ' Darmago Hadiono', '19,5', '', '', NULL),
(691, 197, ' Esra Siagian', '26,0', '', '', NULL),
(692, 197, ' Astri Tristiyani Fadhilah', '26,0', '', '', NULL),
(693, 198, ' Suyadi', '3', '', '', NULL),
(694, 198, ' Boyke Syafril', '3', '', '', NULL),
(695, 198, ' Whibei Paradise Suwardi', '5', '', '', NULL),
(696, 198, ' M. Hafiz', '5', '', '', NULL),
(697, 198, ' Kezia Putri Claudia Tobing', '5', '', '', NULL),
(698, 199, ' I Gede Agus Subakti Wijaya', '5', '4', '5640000', NULL),
(699, 199, ' Ridha Cahya Utama', '5', '4', '3240000', NULL),
(700, 199, ' Nares Ufairah Maheswari', '5', '4', '3240000', NULL),
(701, 199, ' Almirah Melati Meiriska', '5', '4', '3240000', NULL),
(702, 200, ' Darmago Hadiono', '3', '4', '3990000', NULL),
(703, 200, ' Indra Wahyudi', '5', '4', '2490000', NULL),
(704, 200, ' Ariferdina Ambudi', '5', '4', '2490000', NULL),
(705, 200, ' Farah Hania Rohmatillah', '5', '4', '2490000', NULL),
(706, 201, ' Zulkifli', '3', '4', '3740000', NULL),
(707, 201, ' Surya Darma', '5', '4', '2340000', NULL),
(708, 201, ' Irmaria Septiani Panggabean', '5', '4', '2340000', NULL),
(709, 202, ' Puja Permana Mangunjaya', '3', '4', '4740000', NULL),
(710, 202, ' Imamuddin', '4', '4', '2940000', NULL),
(711, 202, ' Abdul Rahmat Dwicaksono', '5', '4', '2940000', NULL),
(712, 202, ' Daniel Owen Setiawan', '5', '4', '2940000', NULL),
(713, 203, ' Imamuddin', '4', '0', '0', NULL),
(714, 203, ' Pebriani Kristina Br Sembiring', '8', '9', '1350000', NULL),
(715, 203, ' Yuliana Indriani', '8', '9', '1350000', NULL),
(716, 203, ' Hima Yulianti', '8', '9', '1350000', NULL),
(717, 203, ' Chika Salsabila', '8', '9', '1350000', NULL),
(718, 203, ' Safira Dian Fadillah', '8', '9', '1350000', NULL),
(719, 204, ' Untung Subagyo', '19,5', '8', '', NULL),
(720, 204, ' Yudistira Andi Permadi', '45,5', '8', '', NULL),
(721, 204, ' Riky Setiawan', '52,0', '8', '', NULL),
(722, 204, ' Riodi Irvanza Halim', '52,0', '8', '', NULL),
(723, 205, ' Untung Subagyo', '19,5', '8', '', NULL),
(724, 205, ' Yudistira Andi Permadi', '45,5', '8', '', NULL),
(725, 205, ' Riky Setiawan', '52,0', '8', '', NULL),
(726, 205, ' Anggita Mazmur Afrida Siregar', '52,0', '8', '', NULL),
(727, 206, ' Untung Subagyo', '19,5', '', '', NULL),
(728, 206, ' Yudistira Andi Permadi', '26', '', '', NULL),
(729, 206, ' Esra Siagian', '39', '', '', NULL),
(730, 206, ' Riodi Irvanza Halim', '39', '', '', NULL),
(731, 44, ' Suyadi', '4', '4', '8860000', NULL),
(732, 44, ' Agung Wahyu Pranoto', '4', '4', '8074000', NULL),
(733, 44, ' Whibei Paradise Suwardi', '4', '4', '8074000', NULL),
(734, 44, ' M. Hafiz', '4', '4', '8074000', NULL),
(735, 44, ' Kezia Putri Claudia Tobing', '4', '4', '8074000', NULL),
(736, 44, ' Tasyavira Niken Hernanda', '4', '4', '8074000', NULL),
(737, 44, ' Fany Widiarestiana', '4', '4', '8074000', NULL),
(738, 208, ' Untung Subagyo', '19,5', '', '', NULL),
(739, 208, ' Yudistira Andi Permadi', '45,5', '', '', NULL),
(740, 208, ' Umi Hasanah', '65,0', '', '', NULL),
(741, 208, ' Astri Tristiyani Fadhilah', '65,5', '', '', NULL),
(742, 208, ' Anggita Mazmur Afrida Siregar', '65,0', '', '', NULL),
(743, 192, ' Suyadi', '10', '', '', NULL),
(744, 192, ' Boyke Syafril', '15', '5', '3200000', NULL),
(745, 192, ' Muhammad Dadang Isnandar', '30', '5', '6200000', NULL),
(746, 192, ' Ridha Cahya Utama', '30', '5', '3200000', NULL),
(747, 192, ' Ari Kristian Ginting', '30', '5', '3200000', NULL),
(748, 209, ' Dwito Santoso', '3', '', '', NULL),
(749, 209, ' Cucu Supangkat', '5', '', '', NULL),
(750, 209, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(751, 209, ' Tia Astuti Widianti', '10', '', '', NULL),
(752, 209, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(753, 209, ' Brigida', '10', '', '', NULL),
(754, 209, ' Eka Edina Tarigan', '10', '', '', NULL),
(755, 209, ' Ananda Putra Perdana', '10', '', '', NULL),
(756, 210, ' Dwito Santoso', '3', '', '', NULL),
(757, 210, ' Cucu Supangkat', '5', '', '', NULL),
(758, 210, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(759, 210, ' Tia Astuti Widianti', '10', '', '', NULL),
(760, 210, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(761, 210, ' Brigida', '10', '', '', NULL),
(762, 210, ' Eka Edina Tarigan', '10', '', '', NULL),
(763, 210, ' Ananda Putra Perdana', '10', '', '', NULL),
(764, 211, ' Dwito Santoso', '3', '', '', NULL),
(765, 211, ' Cucu Supangkat', '5', '', '', NULL),
(766, 211, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(767, 211, ' Tia Astuti Widianti', '10', '', '', NULL),
(768, 211, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(769, 211, ' Brigida', '10', '', '', NULL),
(770, 211, ' Eka Edina Tarigan', '10', '', '', NULL),
(771, 211, ' Ananda Putra Perdana', '10', '', '', NULL),
(772, 212, ' Dwito Santoso', '3', '', '', NULL),
(773, 212, ' Cucu Supangkat', '6', '', '', NULL),
(774, 212, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(775, 212, ' Tia Astuti Widianti', '10', '', '', NULL),
(776, 212, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(777, 212, 'Brigida', '10', '', '', NULL),
(778, 212, ' Eka Edina Tarigan', '10', '', '', NULL),
(779, 212, ' Ananda Putra Perdana', '10', '', '', NULL),
(780, 213, ' Dwito Santoso', '3', '', '', NULL),
(781, 213, ' Karlie', '5', '', '', NULL),
(782, 213, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(783, 213, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(784, 213, ' Tia Astuti Widianti', '10', '', '', NULL),
(785, 213, ' Brigida', '10', '', '', NULL),
(786, 213, ' Eka Edina Tarigan', '10', '', '', NULL),
(787, 213, ' Ananda Putra Perdana', '10', '', '', NULL),
(788, 214, ' Dwito Santoso', '3', '', '', NULL),
(789, 214, ' Karlie', '5', '', '', NULL),
(790, 214, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(791, 214, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(792, 214, ' Tia Astuti Widianti', '10', '', '', NULL),
(793, 214, ' Brigida', '10', '', '', NULL),
(794, 214, ' Eka Edina Tarigan', '10', '', '', NULL),
(795, 214, ' Ananda Putra Perdana', '10', '', '', NULL),
(796, 215, ' Dwito Santoso', '3', '', '', NULL),
(797, 215, ' Karlie', '6', '', '', NULL),
(798, 215, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(799, 215, ' Tia Astuti Widianti', '10', '', '', NULL),
(800, 215, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(801, 215, ' Brigida', '10', '', '', NULL),
(802, 215, ' Eka Edina Tarigan', '10', '', '', NULL),
(803, 215, ' Ananda Putra Perdana', '10', '', '', NULL),
(804, 216, ' Dwito Santoso', '3', '', '', NULL),
(805, 216, ' Karlie', '5', '', '', NULL),
(806, 216, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(807, 216, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(808, 216, ' Tia Astuti Widianti', '10', '', '', NULL),
(809, 216, 'Brigida', '10', '', '', NULL),
(810, 216, ' Eka Edina Tarigan', '10', '', '', NULL),
(811, 216, ' Ananda Putra Perdana', '10', '', '', NULL),
(812, 217, ' Dwito Santoso', '3', '', '', NULL),
(813, 217, ' Karlie', '5', '', '', NULL),
(814, 217, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(815, 217, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(816, 217, 'Tia Astuti Widianti', '10', '', '', NULL),
(817, 217, ' Brigida', '10', '', '', NULL),
(818, 217, ' Eka Edina Tarigan', '10', '', '', NULL),
(819, 217, ' Ananda Putra Perdana', '10', '', '', NULL),
(820, 218, ' Dwito Santoso', '3', '', '', NULL),
(821, 218, ' Karlie', '5', '', '', NULL),
(822, 218, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(823, 218, 'Yeti Nurul Islamiyah', '10', '', '', NULL),
(824, 218, ' Tia Astuti Widianti', '10', '', '', NULL),
(825, 218, 'Brigida', '10', '', '', NULL),
(826, 218, ' Eka Edina Tarigan', '10', '', '', NULL),
(827, 218, ' Ananda Putra Perdana', '10', '', '', NULL),
(828, 207, ' Suyadi', '4', '4', '8860000', NULL),
(829, 207, ' Agung Wahyu Pranoto', '4', '4', '8074000', NULL),
(830, 207, ' Whibei Paradise Suwardi', '4', '4', '8074000', NULL),
(831, 207, ' M. Hafiz', '4', '4', '8074000', NULL),
(832, 207, ' Kezia Putri Claudia Tobing', '4', '4', '8074000', NULL),
(833, 207, ' Tasyavira Niken Hernanda', '4', '4', '8074000', NULL),
(834, 207, ' Fany Widiarestiana', '4', '4', '8074000', NULL),
(835, 207, ' Jessyca Bertha Panjaitan', '4', '4', '8074000', NULL),
(836, 219, ' Dwito Santoso', '3', '', '', NULL),
(837, 219, ' Cucu Supangkat', '6', '', '', NULL),
(838, 219, ' Tia Astuti Widianti', '10', '', '', NULL),
(839, 219, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(840, 219, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(841, 219, ' Brigida', '10', '', '', NULL),
(842, 219, ' Eka Edina Tarigan', '10', '', '', NULL),
(843, 219, ' Ananda Putra Perdana', '10', '', '', NULL),
(844, 220, ' Dwito Santoso', '3', '', '', NULL),
(845, 220, ' Cucu Supangkat', '6', '', '', NULL),
(846, 220, ' Tia Astuti Widianti', '10', '', '', NULL),
(847, 220, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(848, 220, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(849, 220, ' Brigida', '10', '', '', NULL),
(850, 220, ' Eka Edina Tarigan', '10', '', '', NULL),
(851, 220, ' Ananda Putra Perdana', '10', '', '', NULL),
(852, 221, ' Dwito Santoso', '3', '', '', NULL),
(853, 221, ' Cucu Supangkat', '6', '', '', NULL),
(854, 221, ' Tia Astuti Widianti', '10', '', '', NULL),
(855, 221, ' Yeti Nurul Islamiyah', '10', '', '', NULL),
(856, 221, ' Prima Rendra Aris Sukmana', '10', '', '', NULL),
(857, 221, ' Brigida', '10', '', '', NULL),
(858, 221, ' Eka Edina Tarigan', '10', '', '', NULL),
(859, 221, ' Ananda Putra Perdana', '10', '', '', NULL),
(860, 222, ' Denni Agustri Siregar', '4', '0', '0', NULL),
(861, 222, ' Imamuddin', '8', '8', '3130000', NULL),
(862, 222, ' Ariferdina Ambudi', '16', '15', '7700000', NULL),
(863, 222, ' Hima Yulianti', '16', '15', '5500000', NULL),
(864, 222, ' Farah Hania Rohmatillah', '16', '15', '5500000', NULL),
(865, 223, ' Suyadi', '3', '', '', NULL),
(866, 223, ' Boyke Syafril', '5', '', '', NULL),
(869, 223, ' Yudistira Andi Permadi', '7', '2', '300000', NULL),
(870, 223, ' Jessyca Bertha Panjaitan', '7', '2', '300000', NULL),
(871, 223, ' Jessyca Bertha Panjaitan', '7', '2', '300000', NULL),
(872, 224, ' Suyadi', '3', '', '', NULL),
(873, 224, ' Agung Wahyu Pranoto', '5', '3', '450000', NULL),
(874, 224, ' Yudistira Andi Permadi', '7', '3', '450000', NULL),
(875, 224, ' Jessyca Bertha Panjaitan', '7', '3', '450000', NULL),
(876, 224, ' Kezia Putri Claudia Tobing', '7', '3', '450000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_peg` int(11) NOT NULL,
  `nama_peg` varchar(255) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `jabatan` varchar(255) NOT NULL,
  `kelompok` varchar(25) NOT NULL,
  `anggaran` varchar(255) NOT NULL,
  `status` enum('Aktif','Non-aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_peg`, `nama_peg`, `nip`, `id_bidang`, `jabatan`, `kelompok`, `anggaran`, `status`) VALUES
(1, 'Bambang Ari Setiono', '196610011987031001', 1, 'Kepala Perwakilan BPKP Provinsi Kalimantan Tengah', 'Struktural', '', 'Aktif'),
(2, 'Risparanto', '197006261991031002', 1, 'Kepala Bagian Umum', 'Struktural', '', 'Aktif'),
(3, 'Denni Agustri Siregar', '197608031998111001', 1, 'Auditor Madya selaku Koordinator Pengawasan Kelompok Jabatan Fungsional Auditor Bidang Pengawasan Instansi Pemerintah Pusat', 'Struktural', '', 'Aktif'),
(4, 'Indra Kurniawan', '197706121998111001', 1, 'Auditor Madya selaku Koordinator Pengawasan Kelompok Jabatan Fungsional Auditor Bidang Akuntabilitas Pemerintah Daerah', 'Struktural', '', 'Aktif'),
(5, 'Abdul Karim', '197710311998111001', 1, 'Auditor Madya selaku Koordinator Pengawasan Kelompok Jabatan Fungsional Auditor Bidang Akuntan Negara', 'Struktural', '', 'Aktif'),
(6, 'Suyadi', '197307171994021001', 1, 'Auditor Madya selaku Koordinator Pengawasan Kelompok Jabatan Fungsional Auditor Bidang Investigasi', 'Struktural', '', 'Aktif'),
(7, 'Untung Subagyo', '196805191988031001', 1, 'Auditor Madya selaku Koordinator Pengawasan Kelompok Jabatan Fungsional Auditor Bidang Program dan Pelaporan serta Pembinaan APIP', 'Struktural', '', 'Aktif'),
(8, 'Agung Wahyu Pranoto', '198508082007011002', 1, 'Auditor Muda selaku Subkoordinator Kepegawaian', 'Struktural', '', 'Aktif'),
(9, 'Indra Wahyudi', '197407161999031001', 1, 'Analis Pengelolaan Keuangan APBN Ahli Muda selaku Subkoordinator Keuangan', 'Struktural', '', 'Aktif'),
(10, 'Zulkifli', '197804262003121001', 1, 'Pengelola Pengadaan Barang/Jasa Ahli Muda selaku Subkoordinator Pengelolaan Barang Milik Negara, Rumah Tangga, dan Kearsipan', 'Struktural', '', 'Aktif'),
(11, 'Puja Permana Mangunjaya', '196506301986031001', 1, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(12, 'Cucu Supangkat', '196508181986031003', 1, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(13, 'Karlie', '196605281991021002', 1, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(14, 'Rokhman', '197512111996011001', 1, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(15, 'Lia Amalia', '197701311998112001', 1, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(16, 'Eny Rumiatun', '196705311993032001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(17, 'I Gede Agus Subakti Wijaya', '197008211993031001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(18, 'Hendrikus Tri Wahyu Susetyo', '197807132003121001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(19, 'Ariferdina Ambudi', '198504122007011002', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(20, 'Sidik Murdoko', '198505042008011002', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(21, 'Gilang Andika', '198704012009111001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(22, 'Agus Budi Laksono', '198708162010121001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(23, 'Esra Siagian', '198709042014022002', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(24, 'Yeti Nurul Islamiyah', '198906102014022006', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(25, 'Riky Setiawan', '198910022014021006', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(26, 'John Michel', '198912112012101001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(27, 'Muhammad Dadang Isnandar', '199009172012101001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(28, 'Uce Binsar Sahat Maruli Sitinjak', '199010242012101001', 1, 'Auditor Muda', 'Fungsional', '', 'Aktif'),
(29, 'Ridha Cahya Utama', '198912142019021002', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(30, 'Pebriani Kristina Br Sembiring', '199002252014022002', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(31, 'Whibei Paradise Suwardi', '199003232012101002', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(32, 'Yuliana Indriani', '199007292018012001', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(33, 'Riris Duma Agustina Hutasoit', '199008312012102001', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(34, 'Jevi Herlangga', '199012212012101001', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(35, 'Chusnul Chotimah Safitri', '199107292019022006', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(36, 'Aulya Dwi Wulandari', '199302122014022002', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(37, 'Umi Hasanah', '199307072019022005', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(38, 'Sofia Mariani', '199309092018012003', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(39, 'Maftuh Rahmah Hanifa', '199408182018012002', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(40, 'Tia Astuti Widianti', '199501172019022004', 1, 'Auditor Pertama', 'Fungsional', '2400000', 'Aktif'),
(41, 'Rurie Wiedya Rahayu', '199610042019022005', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(42, 'Fadel Kurniawan', '199702122019021002', 1, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(43, 'Putut Anom Rianto', '197606241998111001', 1, 'Auditor Penyelia', 'Fungsional', '', 'Aktif'),
(44, 'Angga Sakti Setyawan', '198508202008011002', 1, 'Auditor Penyelia', 'Fungsional', '', 'Aktif'),
(45, 'Surya Darma', '198702022009011001', 1, 'Auditor Mahir', 'Fungsional', '', 'Aktif'),
(46, 'Putri Mas Hindola Sirait', '199111282019022007', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(47, 'Hanif Abdullah', '199411072018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(48, 'Irmaria Septiani Panggabean', '199509062018012003', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(49, 'Farel Indra', '199511072018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(50, 'Muhammad Umar', '199512142018011002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(51, 'Syahrul Hidayatullah', '199601212018011003', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(52, 'Dean Imanullah Ibrahim', '199604122018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(53, 'Abdul Rahmat Dwicaksono', '199604192018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(54, 'Prima Rendra Aris Sukmana', '199605262018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(55, 'Jessyca Bertha Panjaitan', '199605262018012002', 1, 'Auditor Terampil', 'Fungsional', '1700000', 'Aktif'),
(56, 'Adhe Repsi Hanantajaya', '199605302018121001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(57, 'M. Hafiz', '199607312018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(58, 'Muhammad Rifqi Setyanto', '199609182018011002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(59, 'Agya Ilham Musyaffa', '199610042018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(60, 'Ari Kristian Ginting', '199612212018011001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(61, 'Alfita Iriandini Annisa', '199703292018012001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(62, 'Rizky Aditya Rahman', '199706032018121002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(63, 'Nadiyatussilmi', '199711302019122001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(64, 'Tri Setya Aulia', '199805032018121002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(65, 'Brigida', '199904092022022002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(66, 'Astri Tristiyani Fadhilah', '199905272022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(67, 'Hima Yulianti', '199906232022022002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(68, 'Fadilla Fanni', '199911012021012002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(69, 'Nares Ufairah Maheswari', '199911132022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(70, 'Rania Nazli', '200002022022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(71, 'Anggita Mazmur Afrida Siregar', '200004152022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(72, 'Eka Edina Tarigan', '200005112022022002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(73, 'Farah Hania Rohmatillah', '200005222022022003', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(74, 'Tasyavira Niken Hernanda', '200008052022022002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(75, 'Kezia Putri Claudia Tobing', '200008102022022002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(76, 'Nadira Imani Raisurya Purba', '200010152022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(77, 'Chika Salsabila', '200011082022022002', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(78, 'Nadya Fairuz Fachri Naibaho', '200011202022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(79, 'Yolanda Sandra Maharaja', '200011242022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(80, 'Mutia Qonita', '200011282022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(81, 'Ezra Mega Utari Situmorang', '200108172022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(82, 'Almirah Melati Meiriska', '200205102022022001', 1, 'Auditor Terampil', 'Fungsional', '', 'Aktif'),
(83, 'Riyan Priambodo', '200101292023021005', 1, 'Calon Auditor Terampil', 'Fungsional', '', 'Aktif'),
(84, 'Simon Hanimawan', '200102072023021007', 1, 'Calon Auditor Terampil', 'Fungsional', '', 'Aktif'),
(85, 'Daniel Owen Setiawan', '200104302023021002', 1, 'Calon Auditor Terampil', 'Fungsional', '', 'Aktif'),
(86, 'Riodi Irvanza Halim', '200108292023021003', 1, 'Calon Auditor Terampil', 'Fungsional', '', 'Aktif'),
(87, 'Ananda Putra Perdana', '200109272023021001', 1, 'Calon Auditor Terampil', 'Fungsional', '', 'Aktif'),
(88, 'Fany Widiarestiana', '199305292019022003', 1, 'Arsiparis Terampil', 'Fungsional', '', 'Aktif'),
(89, 'Achmad Mubarok', '199503172019021001', 1, 'Arsiparis Terampil', 'Fungsional', '', 'Aktif'),
(90, 'Yusuf Agin Widianto', '199208222018011001', 1, 'Pranata Komputer Terampil', 'Fungsional', '', 'Aktif'),
(91, 'El- Mira Tsalatsa Maghfira', '199609092019022001', 1, 'Pranata SDM Aparatur Terampil', 'Fungsional', '', 'Aktif'),
(92, 'Lola Maharani', '199404122018012003', 1, 'Pranata Keuangan APBN Mahir', 'Fungsional', '', 'Aktif'),
(93, 'Fadila Pratiwi', '199602062020122012', 1, 'Sekretaris', 'Fungsional', '', 'Aktif'),
(94, 'Mayang Sari', '199403292018012004', 1, 'Bendahara', 'Fungsional', '', 'Aktif'),
(95, 'Reza Wardhana', '199211292019021002', 1, 'Pengolah Data Penyuluhan dan Layanan Informasi', 'Fungsional', '', 'Aktif'),
(96, 'Safira Dian Fadillah', '200008142019122002', 1, 'Verifikator Keuangan', 'Fungsional', '', 'Aktif'),
(97, 'Iqram Ifrizal', '199507122019021002', 1, 'Pengelola Barang Milik Negara', 'Fungsional', '', 'Aktif'),
(98, 'Wanda Dwi Utomo', '199310122020121007', 1, 'Pengelola Instalasi Air dan Listrik', 'Fungsional', '', 'Aktif'),
(99, 'Imamuddin', '197104091993021001', 2, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(100, 'Rheynhard Poltak ALex Prima Ujung', '198905042010121001', 5, 'Auditor Pertama', 'Fungsional', '', 'Aktif'),
(101, 'Parluhutan Sinaga', '196602241993031001', 5, 'Auditor Madya', 'Fungsional', '', 'Aktif'),
(102, 'Dwito Santoso', '196710261988031001', 3, 'Auditor Madya selaku Koordinator Pengawasan Kelompok Jabatan Fungsional Auditor Bidang APD', 'Struktural', '', 'Aktif'),
(103, 'Andi Afriany Hasyim', '198004202005012001', NULL, 'Auditor Muda', 'Fungsional', '0', 'Aktif'),
(105, 'Yudistira Andi Permadi', '19841225 200701 1 004', NULL, 'Auditor Muda selaku Pengendali Teknis', 'Fungsional', '0', 'Aktif'),
(106, 'Darmago Hadiono', '19671116 198803 1 001', NULL, 'Auditor Madya selaku Pengendali Teknis', 'Fungsional', '0', 'Aktif'),
(107, 'Boyke Syafril', '19711003 199803 1 001', NULL, 'Auditor Muda', 'Fungsional', '0', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penugasan`
--

CREATE TABLE `tb_penugasan` (
  `id_tugas` int(11) NOT NULL,
  `id_bidang` int(11) NOT NULL,
  `jenis_tugas` varchar(255) NOT NULL,
  `nomor_st` varchar(255) DEFAULT NULL,
  `tgl_sima` date DEFAULT NULL,
  `tanggal_st` date DEFAULT NULL,
  `ketua_tim` varchar(255) NOT NULL,
  `anggota_tim` text DEFAULT NULL,
  `awal_tugas` date NOT NULL,
  `akhir_tugas` date NOT NULL,
  `hp_tugas` varchar(25) NOT NULL,
  `perihal` longtext NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `sumber_dana` varchar(255) DEFAULT NULL,
  `proses_lap` varchar(25) DEFAULT NULL,
  `tgl_sima_lap` date DEFAULT NULL,
  `nomor_laporan` varchar(255) DEFAULT NULL,
  `tgl_laporan` varchar(25) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `approve` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_penugasan`
--

INSERT INTO `tb_penugasan` (`id_tugas`, `id_bidang`, `jenis_tugas`, `nomor_st`, `tgl_sima`, `tanggal_st`, `ketua_tim`, `anggota_tim`, `awal_tugas`, `akhir_tugas`, `hp_tugas`, `perihal`, `tujuan`, `sumber_dana`, `proses_lap`, `tgl_sima_lap`, `nomor_laporan`, `tgl_laporan`, `status`, `ket`, `approve`) VALUES
(29, 5, 'PKPT', 'PE.03.02/ST-1/PW15/5/2023', NULL, '2023-01-02', 'Jevi Herlangga', NULL, '2023-01-02', '2023-01-04', '3', 'Memberikan keterangan ahli pada sidang pengadilan perkara Dugaan Tindak Pidana Korupsi Pengelolaan Dana Desa di Desa Kaburan Kecamatan Pasak Talawang Kabupaten Kapuas Tahun Anggaran 2017, 2018, dan 2019 a.n. terdakwa Tumon Abdurahman bin Dicang', 'kapuas', 'APBN', NULL, NULL, 'PE.03.03/LHP-4/PW15/5/2023', '2023-01-05', '4', 'Sudah', 'Sudah'),
(30, 3, 'PKPT', 'OT.04/ST-2/PW15/3/2023', NULL, '2023-01-02', 'Tia Astuti Widianti', NULL, '2023-01-02', '2023-01-10', '7', 'Melakukan menyusun Laporan Pembinaan Penyelenggaraan SPIP dan Penerapan Manajemen Risiko pada Perwakilan BPKP Provinsi Kalimantan Tengah Triwulan IV Tahun 2022', 'palangka_raya', 'APBN', NULL, NULL, NULL, NULL, '0', 'Sudah', 'Sudah'),
(31, 3, 'PKPT', 'PE.07.02/ST-4/PW15/3/2023', '2023-02-22', '2023-01-03', 'Sidik Murdoko', NULL, '2023-01-10', '2023-01-12', '3', 'Menjadi Narasumber dalam Bimbingan Teknis Penyusunan Laporan Keuangan SKPD dan Laporan Keuangan Pemerintah Daerah Tahun 2022 dengan Aplikasi FMIS di Lingkungan Pemerintah Kota Palangka Raya', 'palangka_raya', 'Mitra', NULL, '2023-02-22', 'PE.07.03/LHP-45/PW15/3/2023', '2023-02-21', '4', 'Sudah', 'Sudah'),
(32, 3, 'PKPT', 'TI.00.00/ST-5/PW15/3/2023', '2023-08-01', '2023-01-03', 'Sidik Murdoko', NULL, '2023-01-03', '2023-01-31', '20', 'Melakukan Penyusunan Profil Pemerintah Daerah di Wilayah Kerja Perwakilan BPKP Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', NULL, NULL, 'TI.00.00/LPP-3/PW15.3/2023', '2023-03-02', '4', 'Sudah', 'Sudah'),
(33, 6, 'PKAU', NULL, NULL, NULL, 'Esra Siagian', NULL, '2023-01-05', '2023-01-13', '7', 'Melakukan kegiatan Penyusunan Laporan Realisasi Hasil Pemantauan Pelaksanaan Rencana Pembangunan PP 39 Tahun 2006 Perwakilan BPKP Provinsi Kalimantan Tengah sampai dengan Triwulan IV Tahun 2022\r\n', 'palangka_raya', 'APBN', NULL, NULL, NULL, NULL, '4', 'TL', 'Sudah'),
(34, 4, 'PKPT', 'PE.08.02/ST-16/PW15/4/2023', '2023-02-02', '2023-01-06', 'Rurie Wiedya Rahayu', NULL, '2023-01-09', '2023-01-20', '10', 'Melaksanakan Pendampingan Penilaian dan Penetapan Penerapan BLUD Puskesmas se-Kabupaten Sukamara', 'palangka_raya', 'APBN', NULL, '2023-02-02', 'PE.08.03/LHP-39/PW15/4/2023', '2023-01-20', '4', 'Sudah', 'Sudah'),
(38, 2, 'PKPT', 'PE.11.02/ST-28/PW15/2/2023', '2023-01-16', '2023-01-16', 'Pebriani Kristina Br Sembiring', NULL, '2023-01-16', '2023-01-31', '12', 'Melaksanakan Monitoring Pelaksanaan Stock Opname Vaksin Covid-19 di Provinsi Kalimantan Tengah per 31 Desember 2022', 'palangka_raya', 'APBN', NULL, '2023-03-21', 'PE.11.03/LHP-20/PW15/2/2023', '2023-01-31', '4', 'TL', 'Sudah'),
(39, 6, 'PKPT', NULL, NULL, NULL, 'Esra Siagian', NULL, '2023-01-24', '2023-02-06', '10', 'Melaksanakan Fasilitas Penilaian DUPAK Inspektorat Kabupaten Kapuas, Barito Timur, Gunung Mas, Kotawaringin Timur, Lamandau, dan Sukamara', 'kantor_bpkp', 'Tanpa Dana', '4', NULL, NULL, NULL, '4', 'Lainnya', 'Sudah'),
(40, 3, 'PKPT', NULL, NULL, NULL, 'Fadel Kurniawan', NULL, '2023-01-31', '2023-02-28', '21', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Daerah Tahun 2023 pada Kabupaten Sukamara', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, NULL, NULL, '', 'Lainnya', 'Sudah'),
(41, 5, 'PKPT', NULL, NULL, NULL, 'Muhammad Dadang Isnandar', NULL, '2023-01-27', '2023-01-31', '3', 'Memberikan keterangan ahli di hadapan Penyidik terkait Kasus Dugaan Tindak Pidana Korupsi Penyimpangan Pengelolaan Anggaran Alokasi Dana Desa (ADD) dan Dana Desa (DD) Tahun Anggaran 2020 Desa Topalan, Kecamatan Menthobi Raya, Kabupaten Lamandau', 'kantor_bpkp', 'Tanpa Dana', '4', NULL, NULL, NULL, '', 'Lainnya', 'Sudah'),
(42, 3, 'PKPT', NULL, NULL, NULL, 'Sidik Murdoko', NULL, '2023-01-30', '2023-02-03', '5', 'Menjadi Narasumber dalam Bimbingan Teknis Penyusunan Laporan Penyusutan Aset Tetap Tahun 2022 dengan SIMDA BMD dan Penyusunan Laporan Keuangan Satuan Kerja Perangkat Daerah (SKPD) 2022 dengan FMIS pada Pemerintah Kabupaten Seruyan', 'seruyan', 'Mitra', '4', NULL, NULL, NULL, '', 'DL', 'Sudah'),
(43, 3, 'PKPT', 'PE.09.02/ST-653/PW15/3/2023', '2023-09-15', '2023-08-25', 'Tia Astuti Widianti', NULL, '2023-01-31', '2023-02-28', '21', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Daerah Tahun 2023 pada Kabupaten Barito Selatan', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(44, 5, 'PKPT', NULL, NULL, NULL, 'Whibei Paradise Suwardi', NULL, '2023-01-30', '2023-02-10', '10', 'Melakukan telaah atas kasus Dugaan Tindak Pidana Korupsi atas Peningkatan Fasilitas Sarana Air Bersih (SAB) Non Standar Perpipaan pada Satuan Pemukiman Transmigrasi Kahingai, Kecamatan Belantikan Raya, Kabupaten Lamandau Tahun Anggaran 2021', 'kantor_bpkp', 'Tanpa Dana', '4', NULL, NULL, NULL, '', 'Lainnya', 'Sudah'),
(45, 1, 'PKAU', 'RT.00/ST-228/PW15/1/2023', '2023-03-31', '2023-08-29', 'Wanda Dwi Utomo', NULL, '2023-03-29', '2023-03-31', '3', 'Melakukan Penyediaan Dukungan Sarpras Pengawasan atas Akuntabilitas Penanganan Covid-19 (Inakesda)', 'palangka_raya', 'Nihil', '0', '2023-03-31', 'RT.00/LPP-30/PW15.1/2023', '2023-04-03', '', 'Sudah', 'Sudah'),
(46, 2, 'PKPT', 'PE.11.02/ST-62/PW15/2/2023', '2023-02-13', '2023-02-02', 'Yuliana Indriani', NULL, '2023-02-02', '2023-03-30', '39', 'Melakukan Pemantauan Harga Minyak Goreng di Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'TL', 'Sudah'),
(48, 6, 'PKPT', 'PE.09.02/ST-664/PW15/6/2023', '2023-08-31', '2023-08-28', 'Umi Hasanah', NULL, '2023-08-28', '2023-09-15', '15', 'Evaluasi atas Hasil Penilaian Mandiri Kapabilitas APIP pada Inspektorat Kabupaten Barito Utara', 'barito_utara', 'Tanpa Dana', '0', NULL, 'PE.09.03/LHP-368/PW15/6/2023', '2023-09-13', '', 'Sudah', 'Sudah'),
(51, 5, 'PKPT', 'PE.06.02/ST-594/PW15/5/2023', '2023-08-16', '2023-08-04', 'Muhammad Dadang Isnandar', NULL, '2023-08-11', '2023-08-25', '10', 'Melakukan telaah atas kasus dugaan tindak pidana korupsi dalam pengadaan bahan bakar batubara untuk PT PLN (persero) yang berasal dari wilayah penambangan kalimantan tengah tahun 2022', 'palangka_raya', 'Tanpa Dana', '0', NULL, 'PE.06.03LHP-25/PW15.5/2023', '2023-09-07', '0', 'Sudah', 'Sudah'),
(52, 2, 'PKPT', 'PE.09.02/ST-630/PW15/2/2023', '2023-08-21', '2023-08-18', 'Gilang Andika', NULL, '2023-08-21', '2023-09-08', '15', 'Evaluasi Kemudahan Perizinan Berusaha Tahun 2023', 'palangka_raya', 'APBN', '0', '2023-09-20', 'PE.09.03/LHP-369/PW15/2/2023', '2023-09-13', '', 'Sudah', 'Sudah'),
(54, 3, 'PKPT', 'PE.09.02/ST-662/PW15/3/2023', '2023-09-24', '2023-08-28', 'Agus Budi Laksono', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Barito Utara Tahun 2023', 'barito_utara', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(55, 2, 'PKPT', 'PE.12.02/ST-669/PW15/2/2023', '2023-09-04', '2023-08-29', 'Pebriani Kristina Br Sembiring', NULL, '2023-08-30', '2023-09-26', '20', 'Reviu RAB Usulan Dana Siap Pakai (DSP) Penanganan Kebakaran Hutan dan Lahan di Wilayah Provinsi Kalimantan Tengah', 'palangka_raya', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(57, 3, 'PKPT', 'PE.09.02/ST-658/PW15/3/2023', '2023-09-15', '2023-08-28', 'Sidik Murdoko', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Lamandau Tahun 2023', 'lamandau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(58, 3, 'PKAU', 'OT.04/ST-619/PW15/3/2023', '2023-08-25', '2023-08-15', 'Syahrul Hidayatullah', NULL, '2023-08-15', '2023-08-18', '4', 'Melakukan Penyusunan Laporan Bulanan Bidang APD dan P3A Perwakilan BPKP Provinsi Kalimantan Tengah Periode Bulan Juli 2023', 'kantor_bpkp', 'Tanpa Dana', '4', '2023-08-25', 'OT.04/LPP-321/PW15/3/2023', '2023-08-21', '', 'Sudah', 'Sudah'),
(59, 2, 'PKPT', 'PE.12.02/ST-670/PW15/2/2023', '2023-09-04', '2023-08-29', 'Ariferdina Ambudi', NULL, '2023-08-30', '2023-09-15', '13', 'Reviu atas Tata Kelola Kesiapan Penyelenggaraan Pemilu Tahun 2024 pada Badan Pengawas  Pemilu (Bawaslu) Provinsi Kalimantan Tengah, Bawaslu Kota Palangka Raya dan Bawaslu Kabupaten Kotawaringin Timur', 'palangka_raya', 'APBN', '0', '2023-09-22', 'PE.12.03/LHP-370/PW15/2/2023; PE.12.03/LHP-380/PW15/2/2023; PE.12.03/LHP-383/PW15/2/2023', '2023-09-13', '', 'Sudah', 'Sudah'),
(60, 4, 'PKPT', 'TI.00.00/ST-671/PW15/4/2023', '2023-08-29', '2023-08-29', 'Abdul Karim', NULL, '2023-08-30', '2023-09-08', '8', 'Pengumpulan data dan Informasi atas Pengaduan Masyarakat Melalui Aplikasi SP4AN-LAPOR pada Pemerintah Kabupaten Kotawaringin Barat', 'kobar', 'APBN', '', '2023-09-06', 'TI.00.00/LPP-22/PW15.4/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(61, 2, 'PKPT', 'PE.12.02/ST-673/PW15/2/2023', '2023-09-04', '2023-08-30', 'Ridha Cahya Utama', NULL, '2023-08-30', '2023-09-15', '13', 'Reviu atas Tata Kelola Kesiapan Penyelenggaraan Pemilu Tahun 2024 pada KPU Provinsi Kalimantan Tengah, KPU Kota Palangka Raya, dan KPU Kabupaten Kotawaringin Timur.', 'palangka_raya', 'APBN', '0', NULL, 'PE.12.03/LHP-382/PW15/2/2023; PE.12.03/LHP-396/PW15/2/2023; PE.12.03/LHP-403/PW15/2/2023', '2023-09-15', '', 'Sudah', 'Sudah'),
(63, 6, 'PKPT', 'OT.04/ST-674/PW15/6/2023', '2023-09-08', '2023-08-30', 'Esra Siagian', NULL, '2023-08-31', '2023-09-08', '7', 'Penyusunan Laporan Realisasi Hasil Pemantauan Pelaksanaan Rencana Pembangunan PP39 Tahun 2006 Perwakilan BPKP Provinsi Kalimantan Tengah periode Bulan Agustus 2023', 'kantor_bpkp', 'Tanpa Dana', '0', '2023-09-29', 'OT.04/LPP-19/PW15.6/2023', '2023-09-07', '', 'Sudah', 'Sudah'),
(64, 5, 'PKAU', 'OT.04/ST-577/PW15/5/2023', '2023-08-16', '2023-08-01', 'Ari Kristian Ginting', NULL, '2023-08-01', '2023-08-07', '5', ' Melakukan Penyusunan Laporan Hasil Pengawasan Bidang Investigasi Perwakilan BPKP Provinsi Kalimantan Tengah Periode Sampai dengan bulan juli tahun 2023', 'palangka_raya', 'Tanpa Dana', '4', '2023-08-16', 'OT.04/LPP-307/PW15/5/2023', '2023-08-07', '', 'Sudah', 'Sudah'),
(65, 5, 'PKPT', 'PE.03.02/ST-625/PW15/5/2023', '2023-08-23', '2023-08-16', 'Muhammad Dadang Isnandar', NULL, '2023-08-21', '2023-08-23', '3', 'Memberikan keterangan ahli di hadapan Penyidik terkait Kasus Dugaan Tindak Pidana Korupsi Penyimpangan Pengelolaan Anggaran Alokasi Dana Desa (ADD) dan Dana Desa (DD) Tahun Anggaran 2020 Desa Topalan, Kecamatan Menthobi Raya, Kabupaten Lamandau yang diduga dilakukan oleh Uyu bin G. Rintis\r\n', 'kantor_bpkp', 'Tanpa Dana', '0', '2023-09-08', 'PE.03.03/LHP-336/PW15/5/2022', '2023-08-24', '', 'Sudah', 'Sudah'),
(66, 5, 'PKPT', 'PE.09.02/ST-633/PW15/5/2023', '2023-08-22', '2023-08-21', 'Whibei Paradise Suwardi', NULL, '2023-08-21', '2023-09-15', '20', 'Melakukan Evaluasi Hambatan Kelancaran Pembangunan Lintas Sektorasl atas Infrastruktur Energi di Wilayah Provinsi Kalimantan Tengah Tahun 2023', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(67, 5, 'PKPT', 'PE.03.02/ST-639/PW15/5/2023', '2023-08-29', '2023-08-22', 'Jevi Herlangga', NULL, '2023-08-22', '2023-08-25', '4', 'Perpanjangan Waktu Audit Penghitungan Kerugian Keuangan Negara atas Kasus DTPK atas penggunaan anggaran dana desa (DD), Alokasi dana desa (ADD) dan pendapatan asli desa (PAD) Desa sulung, kecamatan arut selatan kabupaten kotawaringin barat tahun anggaran 2019 dan 2020 serta sisa lebih perhitungan anggaran (Silpa) desa sulung , kecamatan arut selatan kabupaten kotawaringin barat tahun anggaran 2019 dan 2020', 'kantor_bpkp', 'Tanpa Dana', '4', '2023-09-08', 'PE.03.03/SR/LHP-333/PW15/5/2023', '2023-08-23', '', 'Sudah', 'Sudah'),
(68, 5, 'PKAU', 'OT.04/ST-666/PW15/5/2023', NULL, '2023-08-28', 'Ari Kristian Ginting', NULL, '2023-08-28', '2023-09-01', '5', 'Melakukan Penyusunan Laporan Hasil Pengawasan Bidang Investigasi Perwakilan BPKP Provinsi Kalimantan Tengah Periode sampai dengan bulan agustus tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '4', NULL, 'OT.04/LPP-342/PW15/5/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(69, 5, 'PKPT', NULL, NULL, NULL, 'Muhammad Dadang Isnandar', NULL, '2023-01-30', '2023-02-11', '10', 'Melakukan Telaah atas Kasus Dugaan Tindak Pidana Korupsi pada Paket Pekerjaan Pembuatan Kontainer Lapak PKL Yos Sudarso Palangka Raya TA 2018 Melalui Dinas Perumahan Rakyat dan Kawasan Permukiman Kota Palangka Raya', 'kantor_bpkp', 'Tanpa Dana', '4', NULL, NULL, NULL, '', 'Lainnya', 'Sudah'),
(70, 5, 'PKPT', NULL, NULL, NULL, 'Rheynhard Poltak ALex Prima Ujung', NULL, '2023-02-08', '2023-02-10', '3', 'memberikan keterangan ahli pada sidang pengadilan perkara Dugaan Penyalahgunaan Anggaran Pembangunan Unit Sekolah Baru (USB) SMKN 3 Kumai Kabupaten Kotawaringin Barat pada Dinas Pendidikan Provinsi Kalimantan Tengah Tahun Anggaran 2017 atas nama terdakwa Jainuri Bin Tabat Kaderi dan Irwan Budianur, ST bin Drs. H. Hatmansyah.', 'palangka_raya', 'APBN', '4', NULL, NULL, NULL, '', 'DL', 'Sudah'),
(71, 5, 'PKPT', NULL, NULL, NULL, 'John Michel', NULL, '2023-02-06', '2023-02-08', '3', 'memberikan keterangan ahli pada sidang pengadilan perkara Dugaan Tindak Pidana Korupsi Penjualan Beras dari PT Pertani (Persero) Cabang Kalimantan Tengah kepada Koperasi Sunan Manyuru Pontianak Periode Tahun 2016 s.d. 2017 atas nama terdakwa Hubertus Telajan bin Hubertus Temparang dan Aloysius Kok, S.Th., MM. als. Pastor Kok Anak dari Hubertus Temparang', 'palangka_raya', 'APBN', '4', NULL, NULL, NULL, '', 'TL', 'Sudah'),
(72, 5, 'PKAU', NULL, NULL, NULL, 'Jevi Herlangga', NULL, '2023-02-06', '2023-02-10', '5', 'Melakukan Penyusunan Laporan Hasil Pengawasan Bidang Investigasi Perwakilan BPKP Provinsi Kalimantan Tengah Periode sampai dengan bulan januari tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '4', NULL, NULL, NULL, '', 'Lainnya', 'Sudah'),
(73, 2, 'PKPT', 'PE.09.02/ST-587/PW15/2/2023', '2023-08-07', '2023-08-03', 'Pebriani Kristina Br Sembiring', NULL, '2023-08-03', '2023-08-31', '20', 'Evaluasi Peningkatan Sarana, Prasarana\r\nPendidikan dan Resiliensi Pendidikan Tahun\r\n2023 di Dinas Pendidikan Provinsi Kalimantan\r\nTengah dan Dinas Pendidikan Kabupaten\r\nKapuas', 'kapuas', 'APBN', '0', NULL, 'PE.09.03/LHP-406/PW15/2/2023', '2023-09-25', '0', 'Sudah', 'Sudah'),
(74, 2, 'PKPT', 'PE.09.02/ST-587/PW15/2/2023', '2023-08-07', '2023-08-03', 'Pebriani Kristina Br Sembiring', NULL, '2023-08-30', '2023-08-31', '20', 'Evaluasi Peningkatan Sarana, Prasarana\r\nPendidikan dan Resiliensi Pendidikan Tahun\r\n2023 di Dinas Pendidikan Provinsi Kalimantan\r\nTengah dan Dinas Pendidikan Kabupaten\r\nKapuas', 'palangka_raya', 'APBN', '0', NULL, 'PE.09.03/LHP-407/PW15/2/2023', '2023-09-25', '0', 'Sudah', 'Sudah'),
(75, 6, 'PKAU', 'OT.04/ST-570/PW15/6/2023', NULL, '2023-07-28', 'Esra Siagian', NULL, '2023-07-31', '2023-08-04', '5', 'Inputting Data Realisasi Hasil Pemantauan Pelaksanaan Rencana Pembangunan PP39 Perwakilan BPKP Provinsi Kalimantan Tengah s.d. Bulan Juli Tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(76, 2, 'PKPT', 'PE.09.02/ST-592/PW15/2/2023', '2023-08-07', '2023-08-04', 'Sofia Mariani', NULL, '2023-08-04', '2023-08-31', '19', 'Evaluasi atas Peningkatan Sarana, Prasarana,\r\ndan Resiliensi Pendidikan Madrasah Tahun 2023', 'barito_utara', 'APBN', '0', '2023-09-22', 'PE.09.03/LHP-386/PW15/2/2023', '2023-09-18', '', 'Sudah', 'Sudah'),
(77, 2, 'PKPT', 'PE.09.02/ST-593/PW15/2/2023', '2023-08-07', '2023-08-04', 'Hanif Abdullah', NULL, '2023-08-04', '2023-08-31', '19', 'Evaluasi atas Peningkatan Sarana, Prasarana,\r\ndan Resiliensi Pendidikan Madrasah Tahun 2023', 'murung_raya', 'APBN', '0', '2023-09-22', 'PE.09.03/LHP-387/PW15/2/2023', '2023-09-18', '', 'Sudah', 'Sudah'),
(78, 6, 'PKPT', 'PE.09.02/ST-572/PW15/6/2023', '2023-08-04', '2023-07-31', 'Riky Setiawan', NULL, '2023-07-31', '2023-08-28', '20', 'Evaluasi atas Penilaian Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Sukamara', 'sukamara', 'APBN', '0', NULL, 'PE.09.03/LHP-376/PW15/6/2023', '2023-09-14', '', 'Sudah', 'Sudah'),
(79, 2, 'PKPT', 'PE.09.02/ST-617/PW15/2/2023', '2023-08-18', '2023-08-15', 'Rurie Wiedya Rahayu', NULL, '2023-08-15', '2023-09-05', '15', 'Evaluasi Pengembangan Kawasan Ekonomi Khusus/Kawasan Industri pada Kawasan Industri Surya Borneo Tahun 2023', 'kobar', 'APBN', '0', '2023-09-08', 'PE.09.03/LHP-346/PW15/2/2023', '2023-09-05', '', 'Sudah', 'Sudah'),
(80, 2, 'PKPT', 'PE.12.02/ST-629/PW15/2/2023', '2023-08-22', '2023-08-18', 'Ariferdina Ambudi', NULL, '2023-08-21', '2023-09-08', '15', 'Reviu Tata Kelola Proyek Strategis Nasional (PSN) atas Reforma Agraria Penataan Aset dan Penataan Akses Triwulan III Tahun 2023\r\npada Kantor Wilayah Badan Pertanahan Nasional Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', '2023-09-12', 'PE.12.03/LHP-352/PW15/2/2023', '2023-09-08', '', 'Sudah', 'Sudah'),
(82, 2, 'PKPT', 'PE.12.02/ST-631/PW15/2/2023', '2023-09-12', '2023-08-18', 'Yuliana Indriani', NULL, '2023-08-21', '2023-09-06', '13', 'Reviu Tata Kelola atas Proyek Strategis Nasional (PSN) Triwulan III Tahun 2023 pada Program Peningkatan Penyediaan Pangan Nasional (Food Estate) dengan cut off progres per tanggal 25 Agustus 2023', 'kantor_bpkp', 'Tanpa Dana', '0', '2023-09-20', 'PE.12.03/LHP-350/PW15/2/2023', '2023-09-07', '', 'Sudah', 'Sudah'),
(83, 2, 'PKPT', 'PE.09.02/ST-636/PW15/2/2023', '2023-08-21', '2023-08-21', 'Abdul Rahmat Dwicaksono', NULL, '2023-08-21', '2023-09-15', '20', 'Evaluasi Kinerja Pendidikan Tinggi pada Institut Agama Islam Negeri\r\n(IAIN) Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, 'PE.09.03/LHP-381/PW15/2/2023', '2023-09-19', '', 'Sudah', 'Sudah'),
(84, 2, 'PKPT', 'PE.11.02/ST-638/PW15/2/2023', '2023-08-22', '2023-08-22', 'Puja Permana Mangunjaya', NULL, '2023-08-23', '2023-09-25', '3', 'Monitoring atas Penugasan Pengawasan atas Agenda Prioritas Ketahanan Pangan & Evaluasi Pengembangan Kawasan Ekonomi Industri pada Kawasan Surya Borneo', 'kobar', 'APBN', '3', '2023-09-07', 'PE.11.03/LPP-20/PW15.2/2023', '2023-08-30', '', 'Sudah', 'Sudah'),
(87, 6, 'PKPT', 'PE.09.02/ST-603/PW15/6/2023', '2023-08-09', '2023-08-07', 'Esra Siagian', NULL, '2023-08-07', '2023-08-21', '10', 'Evaluasi atas Penilaian Kapabilitas APIP Level 3 pada Inspektorat Kota Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, 'PE.09.03/LHP-375/PW15/6/2023', '2023-09-14', '', 'Sudah', 'Sudah'),
(88, 6, 'PKPT', 'PE.09.02/ST-645/PW15/6/2023', '2023-08-31', '2023-08-25', 'Esra Siagian', NULL, '2023-08-25', '2023-09-15', '16', 'Evaluasi atas Penilaian Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Kotawaringin Barat', 'kantor_bpkp', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(91, 3, 'PKPT', 'PE.10.02/ST-586/PW15/3/2023', '2023-08-16', '2023-08-03', 'Tia Astuti Widianti', NULL, '2023-08-04', '2023-09-08', '15', 'Melakukan Pemantauan Tindak Lanjut Hasil Pengawasan atas Program Peningkatan Penggunaan Produk Dalam Negeri (P3DN) se-Wilayah Provinsi Kalimantan Tengah Tahun 2023', 'palangka_raya', 'APBN', '0', NULL, 'PE.10.03/LHP-391/PW15/3/2023', '2023-09-18', '', 'Sudah', 'Sudah'),
(92, 3, 'PKPT', 'PE.11.02/ST-607/PW15/3/2023', '2023-09-29', '2023-08-09', 'Rizky Aditya Rahman', NULL, '2023-08-10', '2023-08-31', '15', 'Monitoring atas Efektivitas Penggunaan Transfer ke Daerah Tahun 2023 pada Pemerintah Daerah se-Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', NULL, 'PE.11.03/LHP-388/PW15/3/2023', '2023-09-18', '', 'Sudah', 'Sudah'),
(93, 5, 'PKPT', 'HM.03.02/ST-680/PW15/5/2023', NULL, '2023-09-04', 'Muhammad Dadang Isnandar', NULL, '2023-09-06', '2023-09-08', '3', 'Melakukan Rapat Koordinasi Program Pemberantasan Korupsi Terintegrasi di Wilayah Provinsi Kalimantan Tengah dengan Tema \" Penguatan Sinergitas Penegakan Hukum Tipikor\"', 'palangka_raya', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(94, 3, 'PKPT', 'PE.09.02/ST-608/PW15/3/2023', '2023-08-10', '2023-08-09', 'Rizky Aditya Rahman', NULL, '2023-08-10', '2023-08-31', '15', 'Melakukan Evaluasi atas Efektivitas Penggunaan Transfer ke Daerah di Provinsi Kalimantan Tengah Tahun 2022-2023', 'palangka_raya', 'APBN', '0', '2023-09-29', 'PE.09.03/LHP-401/PW15/3/2023', '2023-09-22', '', 'Sudah', 'Sudah'),
(95, 3, 'PKPT', 'PE.09.02/ST-609/PW15/3/2023', '2023-08-10', '2023-08-09', 'Prima Rendra Aris Sukmana', NULL, '2023-08-10', '2023-08-31', '15', 'Melakukan Evaluasi atas Efektivitas Penggunaan Transfer ke Daerah di Kabupaten Kapuas Tahun 2022-2023', 'kapuas', 'APBN', '0', NULL, 'PE.09.03/LHP-394/PW15/3/2023', '2023-09-19', '', 'Sudah', 'Sudah'),
(96, 3, 'PKAU', 'OT.04/ST-681/PW15/3/2023', '2023-10-02', '2023-09-04', 'Syahrul Hidayatullah', NULL, '2023-09-04', '2023-09-08', '5', 'Melakukan Penyusunan Laporan Bulanan Bidang APD dan P3A Perwakilan BPKP Provinsi Kalimantan Tengah Periode Bulan Agustus 2023', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, 'OT.04/LPP-347/PW15/3/2023', '2023-09-06', '4', 'Sudah', 'Sudah'),
(98, 3, 'PKPT', 'PE.09.02/ST-610/PW15/3/2023', '2023-08-10', '2023-08-09', 'Prima Rendra Aris Sukmana', NULL, '2023-08-10', '2023-08-31', '15', 'Melakukan Evaluasi atas Efektivitas Penggunaan Transfer ke Daerah di Kabupaten Murung Raya Tahun 2022-2023', 'murung_raya', 'APBN', '0', NULL, 'PE.09.03/LHP-402/PW15/3/2023', '2023-09-22', '', 'Sudah', 'Sudah'),
(99, 3, 'PKPT', 'PE.07.02/ST-611/PW15/3/2023', '2023-08-16', '2023-08-09', 'Syahrul Hidayatullah', NULL, '2023-08-09', '2023-08-15', '5', 'Melakukan Pelatihan Penggunaan Aplikasi Siskeudes pada Admin Kabupaten Barito Timur', 'barito_timur', 'APBN', '0', '2023-09-06', 'PE.07.03/LPP-21/PW15.3/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(100, 3, 'PKPT', 'PE.10.02/ST-613/PW15/3/2023', '2023-08-14', '2023-08-11', 'Sidik Murdoko', NULL, '2023-08-14', '2023-09-01', '14', 'Melakukan Pengawasan Tata Kelola Cadangan Pangan pada Pemerintah Provinsi Kalimantan Tengah Tahun 2023', 'palangka_raya', 'APBN', '4', '2023-09-06', 'PE.10.03/LHP-341/PW15/3/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(101, 3, 'PKPT', 'PE.10.02/ST-614/PW15/3/2023', '2023-08-14', '2023-08-11', 'Sidik Murdoko', NULL, '2023-08-14', '2023-09-01', '14', 'Melakukan Pengawasan Tata Kelola Cadangan Pangan pada Pemerintah Kabupaten Kotawaringin Timur Tahun 2023', 'kotim', 'APBN', '0', '2023-09-07', 'PE.10.03/LHP-343/PW15/3/2023', '2023-09-04', '4', 'Sudah', 'Sudah'),
(102, 3, 'PKPT', 'PE.10.02/ST-615/PW15/3/2023', '2023-08-14', '2023-08-11', 'Sidik Murdoko', NULL, '2023-08-14', '2023-09-01', '14', 'Melakukan Pemantauan Tata Kelola Cadangan Pangan pada Pemerintah Daerah se-Wilayah Kalimantan Tengah', 'palangka_raya', 'Tanpa Dana', '4', '2023-09-06', 'PE.10.03/LPP-18/PW15.3/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(103, 3, 'PKAU', 'OT.04/ST-619/PW15/3/2023', '2023-08-25', '2023-08-15', 'Syahrul Hidayatullah', NULL, '2023-08-15', '2023-08-18', '4', 'Melakukan Penyusunan Laporan Bulanan Bidang APD dan P3A Perwakilan BPKP Provinsi Kalimantan Tengah Periode Bulan Juli 2023', 'kantor_bpkp', 'Tanpa Dana', '4', '2023-08-25', 'OT.04/LPP-321/PW15/3/2023', '2023-08-21', '', 'Sudah', 'Sudah'),
(104, 3, 'PKPT', 'PE.09.02/ST-621/PW15/3/2023', '2023-08-18', '2023-08-16', 'Agus Budi Laksono', NULL, '2023-08-16', '2023-09-08', '17', 'Melakukan Evaluasi Akuntabilitas Keuangan Desa Triwulan III Tahun 2023 pada Kabupaten Barito Timur', 'barito_timur', 'APBN', '0', NULL, 'PE.09.03/LHP-374/PW15/3/2023', '2023-09-14', '', 'Sudah', 'Sudah'),
(105, 5, 'PKPT', 'PE.03.02/ST-703/PW15/5/2023', '2023-09-11', '2023-09-07', 'Muhammad Dadang Isnandar', NULL, '2023-09-07', '2023-09-11', '3', 'Memberikan keterangan ahli tambahan di hadapan penyidik terkait kasus dugaan tindak pidana korupsi pada pengadaan bibit ternak ayam petelur dara dan pakan ternak ayam petelur di dinas pertanian dan ketahanan pangan kabupaten barito timur tahun anggaran 2020', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(106, 3, 'PKPT', 'PE.12.02/ST-687/PW15/3/2023', NULL, '2023-09-05', 'Agus Budi Laksono', NULL, '2023-09-05', '2023-09-22', '14', 'Reviu Penyerapan Anggaran dan PBJ Daerah Triwulan III Tahun 2023', 'palangka_raya', 'APBN', '0', NULL, 'PE.12.03/LHP-390/PW15/3/2023', '2023-09-18', '', 'Sudah', 'Sudah'),
(107, 3, 'PKPT', 'PE.12.02/ST-688/PW15/3/2023', NULL, '2023-09-05', 'Sidik Murdoko', NULL, '2023-09-05', '2023-09-22', '14', 'Spending Review Sektor Pendidikan Tahun 2020 - 2023 pada Pemerintah Kabupaten Sukamara', 'sukamara', 'APBN', '0', NULL, 'PE.12.03/LHP-399/PW15/3/2023', '2023-09-21', '', 'Sudah', 'Sudah'),
(108, 3, 'PKPT', 'PE.12.02/ST-689/PW15/3/2023', NULL, '2023-09-05', 'Yeti Nurul Islamiyah', NULL, '2023-09-05', '2023-09-22', '14', 'Spending Review Sektor Pendidikan Tahun 2020 - 2023 pada Pemerintah Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', NULL, 'PE.12.03/LHP-411/PW15/3/2023', '2023-09-29', '', 'Sudah', 'Sudah'),
(109, 3, 'PKPT', 'PE.12.02/ST-690/PW15/3/2023', NULL, '2023-09-05', 'Tia Astuti Widianti', NULL, '2023-09-05', '2023-09-22', '14', 'Spending Review Sektor Pendidikan Tahun 2020 - 2023 pada Pemerintah Kota Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(110, 3, 'PKPT', 'HM.02.00/ST-622/PW15/3/2023', '2023-08-16', '2023-08-16', 'Karlie', NULL, '2023-08-21', '2023-08-23', '3', 'Melakukan Koordinasi Penugasan Desa Triwulan III Tahun 2023', 'jakarta', 'APBN', '4', '2023-09-11', 'HM.02.00/LPP-20/PW15.3/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(111, 3, 'PKPT', 'PE.07.02/ST-623/PW15/3/2023', '2023-08-16', '2023-08-16', 'Yeti Nurul Islamiyah', NULL, '2023-08-16', '2023-08-29', '9', 'Melakukan Pendampingan Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Murung Raya', 'murung_raya', 'APBN', '4', '2023-08-28', 'PE.07.03/LHP-339/PW15/3/2023', '2023-08-28', '', 'Sudah', 'Sudah'),
(112, 3, 'PKPT', 'PE.09.02/ST-624/PW15/3/2023', '2023-09-18', '2023-08-16', 'Syahrul Hidayatullah', NULL, '2023-08-16', '2023-09-08', '17', 'Melakukan Evaluasi Akuntabilitas Keuangan Desa Triwulan III Tahun 2023 pada Kabupaten Barito Selatan', 'barito_selatan', 'APBN', '0', '2023-10-02', 'PE.09.03/LHP-373/PW15/3/2023', '2023-09-14', '', 'Sudah', 'Sudah'),
(113, 3, 'PKPT', 'PE.09.02/ST-634/PW15/3/2023', NULL, '2023-08-21', 'Yeti Nurul Islamiyah', NULL, '2023-08-21', '2023-09-15', '20', 'Melakukan Pengawasan Pengelolaan Risiko Strategis Nasional Sektor Ketahanan Energi pada Pemerintah Provinsi Kalimantan Tengah sampai dengan Tahun 2023', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(114, 3, 'PKPT', 'PE.09.02/ST-646/PW15/3/2023', '2023-09-12', '2023-08-25', 'Sofia Mariani', NULL, '2023-08-28', '2023-09-08', '10', 'Melakukan Evaluasi Pelaksanaan Pengendalian Inflasi Daerah Periode Triwulan III Tahun 2023 pada Pemerintah Kota Palangka Raya', 'palangka_raya', 'APBN', '0', '2023-09-20', 'PE.09.03/LHP-355/PW15/3/2023', '2023-09-11', '', 'Sudah', 'Sudah'),
(115, 3, 'PKPT', 'PE.09.02/ST-647/PW15/3/2023', '2023-09-12', '2023-08-25', 'Sofia Mariani', NULL, '2023-08-28', '2023-09-08', '10', 'Melakukan Evaluasi Pelaksanaan Pengendalian Inflasi Daerah Periode Triwulan III Tahun 2023 pada Pemerintah Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', '2023-09-20', 'PE.09.03/LHP-353/PW15/3/2023', '2023-09-08', '', 'Sudah', 'Sudah'),
(116, 3, 'PKPT', 'PE.09.02/ST-649/PW15/3/2023', '2023-09-25', '2023-08-25', 'Tia Astuti Widianti', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Seruyan Tahun 2023', 'seruyan', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(117, 3, 'PKPT', 'PE.09.02/ST-650/PW15/3/2023', '2023-09-22', '2023-08-25', 'Yeti Nurul Islamiyah', NULL, '2023-08-28', '2023-12-15', '779', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Pulang Pisau Tahun 2023', 'pulang_pisau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(118, 3, 'PKPT', 'PE.09.02/ST-651/PW15/3/2023', '2023-09-15', '2023-08-25', 'Yeti Nurul Islamiyah', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Katingan Tahun 2023', 'katingan', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(119, 3, 'PKPT', 'PE.09.02/ST-652/PW15/3/2023', '2023-09-15', '2023-08-25', 'Tia Astuti Widianti', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Barito Timur Tahun 2023', 'barito_timur', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(120, 3, 'PKPT', 'PE.09.02/ST-654/PW15/3/2023', '2023-09-24', '2023-08-25', 'Yeti Nurul Islamiyah', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Kapuas Tahun 2023', 'kapuas', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(121, 3, 'PKPT', 'PE.09.02/ST-655/PW15/3/2023', '2023-09-25', '2023-08-25', 'Tia Astuti Widianti', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kota Palangka Raya Tahun 2023', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(122, 3, 'PKPT', 'PE.11.02/ST-656/PW15/3/2023', '2023-09-12', '2023-08-25', 'Sofia Mariani', NULL, '2023-08-28', '2023-09-08', '10', 'Melakukan Monitoring dan Analisis Pelaksanaan Pengendalian Inflasi Daerah Periode Triwulan III Tahun 2023 pada Pemerintah Daerah se-Provinsi Kalimantan Tengah', 'palangka_raya', 'Tanpa Dana', '0', '2023-09-20', 'PE.11.03/LHP-371/PW15/3/2023', '2023-09-13', '', 'Sudah', 'Sudah'),
(123, 3, 'PKPT', 'PE.09.02/ST-659/PW15/3/2023', '2023-09-15', '2023-08-28', 'Sidik Murdoko', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Kotawaringin Barat Tahun 2023 ', 'kobar', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(124, 3, 'PKPT', 'PE.09.02/ST-660/PW15/3/2023', '2023-09-24', '2023-08-28', 'Agus Budi Laksono', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Murung Raya Tahun 2023', 'murung_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(125, 3, 'PKPT', 'PE.09.02/ST-661/PW15/3/2023', '2023-09-15', '2023-08-28', 'Sidik Murdoko', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Kotawaringin Timur Tahun 2023', 'kotim', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(126, 3, 'PKPT', 'PE.09.02/ST-663/PW15/3/2023', '2023-09-24', '2023-08-28', 'Agus Budi Laksono', NULL, '2023-08-28', '2023-12-15', '79', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Kabupaten Gunung Mas Tahun 2023', 'gunung_mas', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(127, 6, 'PKPT', 'PE.09.02/ST-684/PW15/6/2023', '2023-09-08', '2023-09-05', 'Riky Setiawan', NULL, '2023-09-05', '2023-09-25', '15', 'Evaluasi atas Penilaian Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Pulang Pisau', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(128, 5, 'PKPT', 'PE.04.02/ST-667/PW15/5/2023', '2023-09-05', '2023-08-28', 'Whibei Paradise Suwardi', NULL, '2023-08-28', '2023-09-22', '20', 'Audit Tujuan Tertentu atas Peningkatan Tata Kelola Industri Kelapa Sawit dan Optimalisasi Penerimaan Negara Pada Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(129, 5, 'PKPT', 'PE.03.02/ST-665/PW15/5/2023', '2023-09-05', '2023-08-28', 'Suyadi', NULL, '2023-08-29', '2023-08-31', '3', 'Memberikan keterangan ahli di hadapan penyidik terkait Kasus Dugaan Tindak Pidana Korupsi atas Penggunaan Anggaran Dana Desa (DD), Alokasi Dana Desa (ADD) dan Pendapatan Asli Desa (PAD) Desa Sulung, Kecamatan Arut Selatan Kabupaten Kotawaringin Barat Tahun Anggaran 2020 dan 2021 serta Sisa Lebih Perhitungan Anggaran (SiLPA) Desa Sulung, Kecamatan Arut Selatan Kabupaten Kotawaringin Barat Tahun Anggaran 2019 dan 2020', 'kantor_bpkp', 'Tanpa Dana', '0', '2023-09-11', 'PE.03.03/LHP-348/PW15/5/2023', '2023-09-06', '', 'Sudah', 'Sudah'),
(130, 4, 'PKPT', 'PE.09.02/ST-583/PW15/4/2023', '2023-08-04', '2023-08-03', 'Chusnul Chotimah Safitri', NULL, '2023-08-07', '2023-08-21', '10', 'Perpanjangan waktu penugasan evaluasi  tingkat maturitas penerapan manajemen risiko pada RSUD dr. Murjani Sampit', 'kotim', 'APBN', '', '2023-09-19', 'PE.09.03/LHP-362/PW15/4/2023', '2023-09-11', '', 'Sudah', 'Sudah'),
(131, 3, 'PKPT', 'PE.09.02/ST-693/PW15/3/2023', '2023-09-24', '2023-09-06', 'Sidik Murdoko', NULL, '2023-09-07', '2023-12-15', '71', 'Melakukan Evaluasi Perencanaan dan Penganggaran Sektor Pengentasan Kemiskinan, Penanganan Stunting dan Pemberdayaan UMKM pada Pemerintah Kabupaten Sukamara Tahun 2023', 'sukamara', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(132, 4, 'PKPT', 'HM.02.00/ST-597/PW15/4/2023', '2023-08-08', '2023-08-07', 'Abdul Karim', NULL, '2023-08-09', '2023-08-10', '2', 'Konsultasi dan koordinasi penugasan Bidang Akuntan Negara ke Kedeputian Akuntan Negara', 'jakarta', 'APBN', '', '2023-08-31', 'HM.02.00/LPP-19/PW15.4/2023', '2023-08-29', '', 'Sudah', 'Sudah'),
(133, 0, '', NULL, NULL, NULL, '', NULL, '0000-00-00', '0000-00-00', '', '', '', '', '', NULL, NULL, NULL, '', '', 'Belum'),
(134, 1, 'PKAU', 'TU.01/ST-578/PW15/1/2023', NULL, '2023-08-01', 'Zulkifli', NULL, '2023-08-01', '2023-08-07', '5', 'Melakukan Kegiatan Penyusunan Laporan Kearsipan Semester I Tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, 'TU.01/LPP-311/PW15/1/2023', '2023-08-11', '', 'Sudah', 'Sudah'),
(135, 4, 'PKPT', 'PE.09.02/ST-600/PW15/4/2023', '2023-09-11', '2023-08-07', 'Maftuh Rahmah Hanifa', NULL, '2023-08-07', '2023-08-31', '18', 'Evaluasi dukungan atas tata kelola cadangan pangan pemerintah pada perum BULOG Kantor wilayah kalimantan tengah yahun 2022 dan semester I Tahun 2023 dalam rangka mendukung program ketahanan pangan nasional', 'palangka_raya', 'APBN', '', '2023-08-31', 'PE.09.03/LHP-338/PW15/4/2023', '2023-08-28', '', 'Sudah', 'Sudah'),
(136, 1, 'PKAU', 'DL.03.02/ST-579/PW15/1/2023', NULL, '2023-08-01', 'Riodi Irvanza Halim', NULL, '2023-08-04', '2023-08-17', '12', 'Mengikuti Pelatihan Fungsional Auditor Terampil', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(137, 1, 'PKAU', 'DL.01.02/ST-580/PW15/1/2023', NULL, '2023-08-01', 'Risparanto', NULL, '2023-08-07', '2023-08-13', '7', 'Mengikuti Pelatihan dan Sertifikasi Certified Contract Management Specialist (CCMs) Batch 2 BPKP Tahun 2023 ', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(138, 1, 'PKAU', 'DL.04.02/ST-581/PW15/1/2023', NULL, '2023-08-01', 'Untung Subagyo', NULL, '2023-08-06', '2023-08-11', '6', 'Mengikuti Pembelajaran Tatap Muka II Pelatihan Kepemimpinan Administrator Tahun 2023', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(139, 3, 'PKPT', 'PE.09.02/ST-694/PW15/3/2023', '2023-09-15', '2023-09-06', 'Yeti Nurul Islamiyah', NULL, '2023-09-07', '2023-12-15', '71', 'Melakukan Evaluasi Perencanaan dan Penganggaran Pemerintah Provinsi Kalimantan Tengah Tahun 2023 pada Sektor Pengentasan Kemiskinan, Penanganan Stunting dan Pemberdayaan UMKM', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(140, 4, 'PKPT', 'PE.13.02/ST-601/PW15/4/2023', '2023-08-11', '2023-08-07', 'Rurie Wiedya Rahayu', NULL, '2023-08-07', '2023-08-21', '10', 'Sosialisasi dan aktivasi aplikasi forsa BLUD Rumah sakit jiwa kalawa atei provinsi kalimantan tengah', 'palangka_raya', 'Mitra', '', '2023-09-20', 'PE.13.03/LHP-361/PW15/4/2023', '2023-09-11', '', 'Sudah', 'Sudah'),
(141, 4, 'PKPT', 'PE.07.02/ST-599/PW15/4/2023', '2023-08-14', '2023-08-07', 'Abdul Karim', NULL, '2023-08-07', '2023-08-09', '3', 'Fasilitator dalam kegiatan rapat koordinasi keuangan dan kinerja interim badan usaha jasa air di provinsi kalimantan tengah', 'kantor_bpkp', 'Tanpa Dana', '', '2023-09-07', 'PE.07.03/LPP-20/PW15.4/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(143, 4, 'PKPT', 'PE.09.02/ST-598/PW15/4/2023', '2023-08-16', '2023-08-07', 'Muhammad Dadang Isnandar', NULL, '2023-08-11', '2023-08-25', '10', 'Pemantauan tindak lanjut hasil pengawasan atas program P3DN Tahun 2023 pada PDAM kabupaten pulang pisau bank kalteng, bumd aneka usaha dan blud rumah sakit di wilayah kalimantan tengah tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '', '2023-09-08', 'PE.09.03/LHP-344/PW15/4/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(144, 4, 'PKPT', 'RT.02/ST-635/PW15/4/2023', '2023-08-21', '2023-08-21', 'Hendrikus Tri Wahyu Susetyo', NULL, '2023-08-22', '2023-08-25', '4', 'Focus Group Discussion Bidang Akuntan Negara', '', 'APBN', '', '2023-09-07', 'RT.02/LPP-21/PW15.4/2023', '2023-09-04', '', 'Sudah', 'Sudah'),
(145, 4, 'PKPT', 'PE.12.02/ST-695/PW15/4/2023', '2023-09-19', '2023-09-06', 'Eny Rumiatun', NULL, '2023-09-06', '2023-09-22', '13', 'Reviu atas pelaksanaan program kredit usaha rakyat (KUR) dan penyaluran subsidi bunga/subsidi margin KUR Periode tahun 2018-2022 pada bank mandiri cabang palangka raya', 'palangka_raya', 'APBN', '', '2023-10-02', 'PE.12.03/LHP-412/PW15/4/2023', '2023-09-29', '', 'Sudah', 'Sudah'),
(146, 1, 'PKAU', 'DL.01.02/ST-584/PW15/1/2023', NULL, '2023-08-03', 'Riodi Irvanza Halim', NULL, '2023-08-18', '2023-08-24', '7', 'Mengikuti Pembelajaran Tatap Muka Pelatihan Dasar CPNS Angkatan II Tahun 2023 ', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '0', 'Sudah', 'Sudah'),
(147, 1, 'PKAU', 'DL.01.02/ST-585/PW15/1/2023', NULL, '2023-08-03', 'Denni Agustri Siregar', NULL, '2023-08-08', '2023-09-15', '39', 'Mengikuti Pembelajaran Jarak Jauh Pelatihan Kepemimpinan Administrator Tahun 2023 ', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(148, 1, 'PKAU', 'DL.04.02/ST-589/PW15/1/2023', NULL, '2023-08-04', 'Agus Budi Laksono', NULL, '2023-08-06', '2023-08-11', '6', 'Mengikuti Pelatihan dan Sertifikasi Certified Government Accounting Expert (CGAE) Pusat Level 1 – Batch 2 ', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(149, 1, 'PKAU', 'DL.04.02/ST-590/PW15/1/2023', NULL, '2023-08-04', 'Fadilla Fanni', NULL, '2023-08-06', '2023-08-12', '7', 'Mengikuti Pelatihan Audit PNBP Pertambangan Batubara Batch II bagi Pegawai di Lingkungan BPKP ', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(150, 1, 'PKAU', 'PL.02.04/ST-591/PW15/1/2023', '2023-08-07', '2023-08-04', '', NULL, '2023-08-07', '2023-08-07', '1', 'Melakukan Perpanjangan pajak kendaraan bermotor roda 2 (dua) nomor polisi KH 3474 TY, KH 3475 TY, dan KH 3476 TY', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(151, 1, 'PKAU', 'DL.01.02/ST-596/PW15/1/2023', '2023-08-07', '2023-08-07', 'Bambang Ari Setiono', NULL, '2023-08-08', '2023-08-10', '3', 'Seminar Aksi Perubahan Kinerja Organisasi', 'bogor', '', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(152, 1, 'PKAU', 'KU.00.03/ST-602/PW15/1/2023', '2023-08-08', '2023-08-07', 'Reza Wardhana', NULL, '2023-08-09', '2023-08-09', '1', 'Melakukan Konsultasi Mengenai Pemrosesan SKPP Online untuk Pegawai Pindah di lingkungan Perwakilan BPKP Provinsi Kalimantan Tengah', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(153, 1, 'PKAU', 'HM.02.00/ST-605/PW15/1/2023', '2023-08-08', '2023-08-07', '', NULL, '2023-08-09', '2023-08-10', '2', 'Melakukan Konsultasi dan Koordinasi Penugasan Bidang Akuntan Negara ke Kedeputian Akuntan Negara', 'jakarta', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(154, 1, 'PKAU', 'DL.04.02/ST-618/PW15/1/2023', NULL, '2023-08-15', '', NULL, '2023-08-20', '2023-08-25', '6', 'Mengikuti Pelatihan dan Sertifikasi Kompetensi Pengadaan Barang dan Jasa Level-1 (PBJ L-1) untuk Pegawai Pemerintah Non Pegawai Negeri (PPNPN) di Lingkungan BPKP ', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(155, 1, 'PKAU', 'DL.00.02/ST-627/PW15/1/2023', NULL, '2023-08-18', 'Agung Wahyu Pranoto', NULL, '2023-08-21', '2023-08-23', '3', '\"Mengikuti Evaluasi Aktualisasi Pelatihan Dasar CPNS Angkatan II Tahun 2023 ', 'bogor', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(156, 1, 'PKAU', 'DL.04.02/ST-628/PW15/1/2023', NULL, '2023-08-18', 'Yusuf Agin Widianto', NULL, '2023-08-20', '2023-08-26', '7', 'Mengikuti Kegiatan Pelatihan Pengolahan Data Hasil Pengawasan di Lingkungan BPKP ', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(157, 3, 'PKPT', 'PE.10.02/ST-697/PW15/3/2023', NULL, '2023-09-07', 'Yeti Nurul Islamiyah', NULL, '2023-09-07', '2023-09-20', '10', 'Pengawasan Pengelolaan Risiko Strategis Nasional Sektor Ketahanan Pangan pada Pemerintah Provinsi Kalimantan Tengah sampai dengan Tahun 2023', 'palangka_raya', 'APBN', '0', NULL, 'PE.10.03/LHP-389/PW15/3/2023', '2023-09-18', '', 'Sudah', 'Sudah'),
(158, 6, 'PKPT', 'PE.09.02/ST-699/PW15/6/2023', '2023-09-11', '2023-09-07', 'Umi Hasanah', NULL, '2023-09-07', '2023-10-05', '20', 'Evaluasi atas Hasil Penilaian Mandiri Kapabilitas APIP pada Inspektorat Kabupaten Gunung Mas', 'gunung_mas', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(159, 6, 'PKPT', 'PE.09.02/ST-698/PW15/6/2023', '2023-09-08', '2023-09-07', 'Esra Siagian', NULL, '2023-09-07', '2023-10-06', '21', 'Evaluasi atas Hasil Penilaian Mandiri Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Barito Selatan', 'barito_selatan', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(160, 5, 'PKPT', 'PE.13.02/ST-700/PW15/5/2023', '2023-09-11', '2023-09-07', 'Muhammad Dadang Isnandar', NULL, '2023-09-11', '2023-09-22', '10', 'Melakukan Kegiatan Peningkatan Efektivitas Pengendalian Korupsi (EPK) pada Pemerintah Kabupaten Kotawaringin Barat', 'kobar', 'Tanpa Dana', '0', NULL, 'PE.13.03/LHP-409/PW15/5/2023', '2023-09-29', '', 'Sudah', 'Sudah'),
(161, 6, 'PKPT', 'PE.09.02/ST-702/PW15/6/2023', '2023-09-29', '2023-09-07', 'Riky Setiawan', NULL, '2023-09-07', '2023-10-06', '21', 'Evaluasi atas Penilaian Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Lamandau', 'lamandau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(162, 3, 'PKPT', 'PE.07.02/ST-705/PW15/3/2023', NULL, '2023-09-08', 'Tia Astuti Widianti', NULL, '2023-09-18', '2023-09-22', '5', 'Fasilitasi Penjaminan Kualitas Maturitas SPIP Tahun 2023 pada Kabupaten Barito Selatan', 'barito_selatan', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(164, 2, 'PKPT', 'PE.09.02/ST-707/PW15/2/2023', '2023-09-12', '2023-09-12', 'Gilang Andika', NULL, '2023-09-12', '2023-09-16', '5', 'Konfirmasi & Pemeriksaan Fisik atas Pengadaan Alat Antropometri dan alat USG 2D Tahap 1 oleh Kementerian Kesehatan Tahun Anggaran 2023 pada Kabupaten Katingan, Kotawaringin Timur, Kotawaringin Barat, dan Lamandau', 'kotim', 'APBN', '0', '2023-09-22', 'PE.09.03/LHP-398/PW15/2/2023', '2023-09-21', '', 'Sudah', 'Sudah'),
(165, 6, 'PKAU', 'DL.04.02/ST-708/PW15/2/2023', NULL, '2023-09-12', 'Riky Setiawan', NULL, '2023-09-14', '2023-09-14', '1', 'Menyelenggarakan Workshop Aplikasi Simp-Tesa (Aplikasi Telaah Sejawat)', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(166, 3, 'PKPT', 'PE.10.02/ST-713/PW15/3/2023', NULL, '2023-09-13', 'Yeti Nurul Islamiyah', NULL, '2023-09-13', '2023-09-19', '5', 'Melakukan Pemantauan Tindak Lanjut Hasil Evaluasi Optimalisasi Pendapatan Asli Daerah (OPAD) pada Kabupaten Pulang Pisau Tahun 2023', 'pulang_pisau', 'APBN', '0', NULL, 'PE.10.03/LHP-378/PW15/3/2023', '2023-09-15', '', 'Sudah', 'Sudah'),
(167, 3, 'PKPT', 'PE.10.02/ST-714/PW15/3/2023', '2023-10-02', '2023-09-13', 'Sofia Mariani', NULL, '2023-09-13', '2023-09-19', '5', 'Melakukan Pemantauan Tindak Lanjut Hasil Evaluasi Optimalisasi Pendapatan Asli Daerah (OPAD) pada Kabupaten Kotawaringin Barat Tahun 2023', 'kobar', 'APBN', '0', NULL, 'PE.10.03/LHP-379/PW15/3/2023', '2023-09-15', '', 'Sudah', 'Sudah'),
(168, 6, 'PKPT', 'PE.10.02/ST-712/PW15/6/2023', '2023-09-29', '2023-09-13', 'Umi Hasanah', NULL, '2023-09-22', '2023-10-06', '10', 'Melaksanakan Penyusunan Laporan Kinerja Triwulan III Tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(169, 6, 'PKPT', 'DL.04.02/ST-711/PW15/6/2023', '2023-09-13', '2023-09-13', 'Umi Hasanah', NULL, '2023-09-14', '2023-09-16', '3', 'Mengikuti Focus Group Discussion Pengembangan Kompetensi APIP Tahun 2024', 'jakarta', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(170, 1, 'PKAU', 'DL.04.02/ST-640/PW15/1/2023', NULL, '2023-08-23', 'Angga Sakti Setyawan', NULL, '2023-08-23', '2023-09-06', '11', 'Mengikuti Pelatihan Fungsional Auditor Ahli Pertama Tahun 2023', 'palangka_raya', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(171, 1, 'PKAU', 'DL.04.02/ST-641/PW15/1/2023', NULL, '2023-08-24', 'Bambang Ari Setiono', NULL, '2023-08-28', '2023-09-02', '6', 'Mengikuti Diklat dan Sertifikasi Certified Internal Audit Executive (CIAE) Batch X di Lingkungan BPKP', 'jakarta', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(172, 4, 'PKPT', 'PE.09.02/ST-718/PW15/4/2023', '2023-09-18', '2023-09-14', 'Putut Anom Rianto', NULL, '2023-09-14', '2023-10-19', '25', 'Evaluasi atas kegiatan prioritas nasional penyediaan akses air minum perpipaan perkotaan yang layak dan aman pada provinsi kalimantan tengah tahun 2023', 'palangka_raya', 'APBN', '', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(173, 6, 'PKPT', 'PE.10.02/ST-721/PW15/6/2023', '2023-09-29', '2023-09-18', 'Andi Afriany Hasyim', NULL, '2023-09-18', '2023-10-16', '20', 'Pelaksanaan Pemetaan Pengelolaan Jabatan Fungsional Auditor (JFA) pada Inspektorat se-Provinsi Kalimantan Tengah', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(174, 3, 'PKPT', 'DL.04.00/ST-720/PW15/3/2023', '2023-10-02', '2023-09-18', 'Darmago Hadiono', NULL, '2023-09-19', '2023-09-22', '3', 'Mengikuti Rapat Koordinasi Verifikasi dan Quality Assurance Monitoring Center for Prevention (MCP) Tahun 2023', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(175, 1, 'PKAU', 'DL.04.02/ST-643/PW15/1/2023', NULL, '2023-08-25', 'Indra Wahyudi', NULL, '2023-08-28', '2023-09-08', '10', 'Mengikuti Pelatihan Brevet AB - Batch 3', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(176, 1, 'PKAU', 'DL.01.02/ST-675/PW15/1/2023', NULL, '2023-08-30', 'Zulkifli', NULL, '2023-09-03', '2023-09-08', '6', 'Mengikuti Pembelajaran Tatap Muka II Pelatihan Kepemimpinan Pengawas Tahun 2023', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(177, 1, 'PKAU', 'DL.01.02/ST-676/PW15/1/2023', NULL, '2023-08-30', 'Denni Agustri Siregar', NULL, '2023-09-05', '2023-09-28', '24', 'Mengikuti Pembelajaran Tatap Muka I Kepemimpinan Administrator Batch II Tahun 2023', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(178, 1, 'PKAU', 'PL.00/ST-677/PW15/1/2023', '2023-09-01', '2023-08-30', 'Iqram Ifrizal', NULL, '2023-09-04', '2023-09-07', '4', 'Mengikuti kegiatan Pembahasan dan Penelitian Penyusunan Rencana Kebutuhan Barang Milik Negara (RKBMN) untuk Rencana Kerja Anggaran Kementerian/Lembaga (RKA-KL) Tahun Anggaran 2025', 'bogor', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(179, 1, 'PKAU', 'DL.01.02/ST-679/PW15/1/2023', '2023-09-04', '2023-09-04', 'Risparanto', NULL, '2023-09-05', '2023-09-07', '3', 'Menghadiri Seminar Aksi Perubahan Kualitas Pelayanan Publik', 'bogor', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(180, 1, 'PKAU', 'DL.04.02/ST-682/PW15/1/2023', '2023-09-05', '2023-09-04', 'Chika Salsabila', NULL, '2023-09-06', '2023-09-09', '4', 'Mengikuti Workshop Media Komunikasi Berbasis Data dalam Pengelolaan Branding Organisasi', 'jakarta', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(181, 1, 'PKAU', 'DL.04.02/ST-685/PW15/1/2023', NULL, '2023-09-05', 'Indra Wahyudi', NULL, '2023-09-10', '2023-09-15', '6', 'Mengikuti Pelatihan dan Sertifikasi Brevet AB Batch 3', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(182, 1, 'PKAU', 'KP.05.03/ST-686/PW15/1/2023', '2023-09-11', '2023-09-05', 'Mayang Sari', NULL, '2023-09-06', '2023-09-06', '1', 'Melakukan Konsultasi terkait JKN KIS dengan Status Non-Aktif pada Tanggungan PPNPN dan Pelaporan PPNPN Baru ke BPJS Kesehatan Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(183, 1, 'PKAU', 'KP.01.02/ST-692/PW15/1/2023', '2023-09-11', '2023-09-06', '', NULL, '2023-09-07', '2023-09-07', '1', 'Melakukan koordinasi bantuan Rohaniwan dalam acara pelantikan Pejabat Fungsional Auditor', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(184, 1, 'PKAU', 'DL.04.02/ST-710/PW15/1/2023', NULL, '2023-09-13', 'Agung Wahyu Pranoto', NULL, '2023-09-13', '2023-10-04', '22', 'Mengikuti Pelatihan MOOC (Massive Open Online Course) Antigratifikasi, Benturan Kepentingan, dan Whistleblowing System bagi Pegawai di lingkungan BPKP', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(185, 1, 'PKAU', 'PL.06/ST-716/PW15/1/2023', '2023-09-14', '2023-09-14', '', NULL, '2023-09-14', '2023-09-14', '1', 'Melakukan Perpanjangan pajak kendaraan bermotor roda 4 (empat) nomor polisi KH 63 dan KH 1961 AU.', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(186, 1, 'PKAU', 'DL.04.02/ST-717/PW15/1/2023', NULL, '2023-09-14', 'Riky Setiawan', NULL, '2023-09-17', '2023-09-23', '7', 'Mengikuti Pelatihan dan Sertifikasi Certified Risk Management Professional (CRMP) Batch 3 BPKP Tahun 2023', 'bogor', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(187, 6, 'PKPT', 'PE.09.02/ST-604/PW15/6/2023', '2023-08-09', '2023-08-07', 'Andi Afriany Hasyim', NULL, '2023-08-07', '2023-08-21', '10', 'Evaluasi atas Penilaian Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Katingan', 'katingan', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(188, 6, 'PKPT', 'PE.09.02/ST-648/PW15/6/2023', '2023-08-31', '2023-08-25', 'Andi Afriany Hasyim', NULL, '2023-08-24', '2023-09-14', '15', 'Evaluasi atas Hasil Penilaian Mandiri Kapabilitas APIP Level 3 pada Inspektorat Kabupaten Kotawaringin Timur', 'kotim', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah');
INSERT INTO `tb_penugasan` (`id_tugas`, `id_bidang`, `jenis_tugas`, `nomor_st`, `tgl_sima`, `tanggal_st`, `ketua_tim`, `anggota_tim`, `awal_tugas`, `akhir_tugas`, `hp_tugas`, `perihal`, `tujuan`, `sumber_dana`, `proses_lap`, `tgl_sima_lap`, `nomor_laporan`, `tgl_laporan`, `status`, `ket`, `approve`) VALUES
(189, 6, 'PKPT', 'PE.11.02/ST-701/PW15/6/2023', '2023-09-08', '2023-09-07', 'Andi Afriany Hasyim', NULL, '2023-09-08', '2023-09-18', '7', 'Monitoring Temuan Hasil Pemeriksaan pada Inspektorat Kabupaten Barito Selatan', 'barito_selatan', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(190, 5, 'PKPT', 'PE.03.02/ST-723/PW15/5/2023', NULL, '2023-09-19', 'Whibei Paradise Suwardi', NULL, '2023-09-20', '2023-09-20', '3', 'Memberikan Tambahan Keterangan Ahli di Hadapan Penyidik terkait Kasus Dugaan Tindak Pidana Korupsi atas Peningkatan Fasilitas Sarana Air Bersih (SAB) Non Standar Perpipaan pada Satuan Pemukiman Transmigrasi Kahingai, Kecamatan Belantikan Raya, kabupaten Lamandau Tahun Anggaran 2021', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(191, 6, 'PKPT', 'OT.04/ST-724/PW15/6/2023', NULL, '2023-09-19', 'Untung Subagyo', NULL, '2023-09-19', '2023-10-06', '13', 'Monitoring Manajemen Resiko Perwakilan BPKP Provinsi Kalimantan Tengah pada Triwulan III Tahun 2023.', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(192, 5, 'PKPT', 'PE.03.02/ST-726/PW15/5/2023', '2023-09-27', '2023-09-20', 'Muhammad Dadang Isnandar', NULL, '2023-09-25', '2023-11-06', '30', 'Audit Penghitungan Kerugian Keuangan Negara atas Dugaan Tindak Pidana Korupsi Pengadaan Bahan Bakar Batubara untuk PT PLN (persero) yang berasal dari wilayah penambangan kalimantan tengah tahun 2022', 'barito_timur', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(193, 4, 'PKPT', 'PE.11.02/ST-728/PW15/4/2023', '2023-09-29', '2023-09-20', 'Angga Sakti Setyawan', NULL, '2023-09-21', '2023-11-20', '46', 'Monitoring atas program penyaluran beras CBP SPHP Tahun 2023 di kalimantan  tengah', 'palangka_raya', 'APBN', '', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(194, 5, 'PKPT', 'PE.03.02/ST-730/PW15/5/2023', '2023-09-22', '2023-09-21', 'Muhammad Dadang Isnandar', NULL, '2023-09-25', '2023-10-09', '10', 'Melakukan Coaching Clinic atas Pelaksanaan Audit Perhitungan Kerugian Keuangan Negara atas Dugaan Tindak Pidana Korupsi Pengelolaan Dana Desa Sebangau Jaya', 'pulang_pisau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(195, 1, 'PKAU', 'PL.05/ST-727/PW15/1/2023', '2023-09-22', '2023-09-20', 'Iqram Ifrizal', NULL, '2023-09-21', '2023-09-22', '2', 'Melakukan konsultansi Alih Status Pengguna BMN dan Pencatatan Aset Konstruksi Dalam Pengerjaan (KDP) untuk menjadi Aset Tetap Definitif ke KPKNL Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(196, 5, 'PKPT', 'PE.03.02/ST-731/PW15/5/2023', '2023-09-27', '2023-09-21', 'Muhammad Dadang Isnandar', NULL, '2023-09-25', '2023-09-27', '3', 'Memberikan keterangan ahli pada sidang pengadilan perkara dugaan tindak pidana korupsi Penggunaan Anggaran Pendapatan Belanja Desa (APBDesa) Desa Kalang Dohong, Kecamatan Laung Tahup , Kabupaten Murung Raya Tahun Anggaran 2019 dan 20220 terdakwa Ahmad Sariadi Als Atak Senso Bin Muhammadiyah', 'pulang_pisau', 'APBN', '0', NULL, 'PE.03.03/LHP-410/PW15/5/2023', '2023-09-29', '', 'Sudah', 'Belum'),
(197, 6, 'PKPT', 'PE.11.02/ST-734/PW15/6/2023', NULL, '2023-09-22', 'Untung Subagyo', NULL, '2023-09-22', '2023-09-27', '4', 'Melakukan Pemantauan Tindak Lanjut atas hasil Pengawasan Berkelanjutan atas Dukungan Pengawasan BPKP sampai dengan Triwulan III Tahun 2023 Inspektorat BPKP sesuai Surat Nomor PE.09/S-820/IN/2/2023 tanggal 19 September 2023.', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(198, 5, 'PKAU', 'OT.04/ST-733/PW15/5/2023', NULL, '2023-09-22', 'Whibei Paradise Suwardi', NULL, '2023-09-25', '2023-10-02', '5', 'Melakukan Penyusunan Laporan Hasil Pengawasan Bidang Investigasi Perwakilan BPKP Provinsi Kalimantan Tengah Periode Sampai dengan Bulan September Tahun 2023', 'palangka_raya', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(199, 2, 'PKPT', 'PE.11.02/ST-740/PW15/2/2023', '2023-09-25', '2023-09-22', 'Ridha Cahya Utama', NULL, '2023-09-25', '2023-09-29', '5', 'Monitoring Tindak Lanjut atas Laporan Hasil Pengawasan BPKP Provinsi Kalimantan Tengah Tahun 2022-2023 (Semester I) & Survei Pendahuluan atas Program Pengadaan ASN, Pengendalian Kemiskinan Ekstrem, Hibah Air Minum Pedesaan dan Hibah Air Limbah Setempat (ALS) pada Kabupaten Kotawaringin Timur', 'kotim', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(200, 2, 'PKPT', 'PE.11.02/ST-737/PW15/2/2023', '2023-09-25', '2023-09-22', 'Indra Wahyudi', NULL, '2023-09-25', '2023-09-29', '5', 'Monitoring Tindak Lanjut atas Laporan Hasil Pengawasan BPKP Provinsi Kalimantan Tengah Tahun 2022-2023 (Semester I) & Survei Pendahuluan atas Program Pengadaan ASN, Pengendalian Kemiskinan Ekstrem, Hibah Air Minum Pedesaan dan Hibah Air Limbah Setempat (ALS) pada Kabupaten Katingan', 'katingan', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(201, 2, 'PKPT', 'PE.11.02/ST-741/PW15/2/2023', '2023-09-25', '2023-09-22', 'Surya Darma', NULL, '2023-09-25', '2023-09-29', '5', 'Monitoring Tindak Lanjut atas Laporan Hasil Pengawasan BPKP Provinsi Kalimantan Tengah Tahun 2022-2023 (Semester I) & Survei Pendahuluan atas Program Pengadaan ASN, Pengendalian Kemiskinan Ekstrem, Hibah Air Minum Pedesaan dan Hibah Air Limbah Setempat (ALS) pada Kabupaten Pulang Pisau', 'pulang_pisau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(202, 2, 'PKPT', 'PE.11.02/ST-738/PW15/2/2023', '2023-09-25', '2023-09-22', 'Abdul Rahmat Dwicaksono', NULL, '2023-09-25', '2023-09-29', '5', 'Monitoring Tindak Lanjut atas Laporan Hasil Pengawasan BPKP Provinsi Kalimantan Tengah Tahun 2022-2023 (Semester I) & Survei Pendahuluan atas Program Pengadaan ASN, Pengendalian Kemiskinan Ekstrem, Hibah Air Minum Pedesaan dan Hibah Air Limbah Setempat (ALS) pada Kabupaten Kapuas', 'kapuas', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(203, 2, 'PKPT', 'PE.11.02/ST-739/PW15/2/2023', '2023-09-25', '2023-09-22', 'Pebriani Kristina Br Sembiring', NULL, '2023-09-25', '2023-10-06', '9', 'Monitoring Tindak Lanjut atas Laporan Hasil Pengawasan BPKP Provinsi Kalimantan Tengah Tahun 2022-2023 (Semester I) & Survei Pendahuluan atas Program Pengadaan ASN, Pengendalian Kemiskinan Ekstrem, Hibah Air Minum Pedesaan dan Hibah Air Limbah Setempat (ALS) ', 'palangka_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(204, 6, 'PKPT', 'OT.04/ST-745/PW15/6/2023', '2023-09-29', '2023-09-25', 'Riky Setiawan', NULL, '2023-09-25', '2023-10-05', '8', 'Melaksanakan Monitoring PK APIP Triwulan III Tahun 2023.', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(205, 6, 'PKPT', 'OT.04/ST-746/PW15/6/2023', '2023-09-29', '2023-09-25', 'Riky Setiawan', NULL, '2023-09-25', '2023-10-05', '8', 'Monitoring Siswaskeudes Triwulan III Tahun 2023.', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, 'OT.04/LHP-414/PW15/6/2023', '2023-10-02', '', 'Sudah', 'Sudah'),
(206, 6, 'PKPT', 'OT.04/ST-750/PW15/6/2023', '2023-09-29', '2023-09-26', 'Esra Siagian', NULL, '2023-09-29', '2023-10-06', '6', 'Penyusunan Laporan Realisasi Hasil Pemantauan Pelaksanaan Rencana Pembangunan PP 39 Tahun 2006 Perwakilan BPKP Provinsi Kalimantan tengah Periode Triwulan III Tahun 2023.', 'kantor_bpkp', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Sudah'),
(207, 5, 'PKPT', 'PE.03.02/ST-754/PW15/5/2023', '2023-10-03', '2023-09-29', 'Whibei Paradise Suwardi', NULL, '2023-10-04', '2023-10-07', '4', 'Konsultasi dan Koordinasi Pengawasan', 'jakarta', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(209, 3, 'PKPT', 'PE.09.02/ST-759/PW15/3/2023', NULL, '2023-10-02', 'Yeti Nurul Islamiyah', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Seruyan', 'seruyan', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(210, 3, 'PKPT', 'PE.09.02/ST-756/PW15/3/2023', NULL, '2023-10-02', 'Yeti Nurul Islamiyah', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Provinsi Kalimantan Tengah', 'palangka_raya', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(211, 3, 'PKPT', 'PE.09.02/ST-757/PW15/3/2023', NULL, '2023-10-02', 'Yeti Nurul Islamiyah', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Katingan', 'katingan', 'Tanpa Dana', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(212, 3, 'PKPT', 'PE.09.02/ST-760/PW15/3/2023', NULL, '2023-10-02', 'Yeti Nurul Islamiyah', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Murung Raya', 'murung_raya', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(213, 3, 'PKPT', 'PE.09.02/ST-765/PW15/3/2023', NULL, '2023-10-02', 'Prima Rendra Aris Sukmana', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Gunung Mas', 'gunung_mas', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(214, 3, 'PKPT', 'PE.09.02/ST-763/PW15/3/2023', NULL, '2023-10-02', 'Prima Rendra Aris Sukmana', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Kotawaringin Timur', 'kotim', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(215, 3, 'PKPT', 'PE.09.02/ST-758/PW15/3/2023', NULL, '2023-10-02', 'Yeti Nurul Islamiyah', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Kapuas', 'kapuas', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(216, 3, 'PKPT', 'PE.09.02/ST-762/PW15/3/2023', NULL, '2023-10-02', 'Prima Rendra Aris Sukmana', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Pulang Pisau', 'pulang_pisau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(217, 3, 'PKPT', 'PE.09.02/ST-764/PW15/3/2023', NULL, '2023-10-02', 'Prima Rendra Aris Sukmana', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Barito Selatan', 'barito_selatan', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(218, 3, 'PKPT', 'PE.09.02/ST-761/PW15/3/2023', NULL, '2023-10-02', 'Prima Rendra Aris Sukmana', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Lamandau', 'lamandau', 'APBN', '0', NULL, '', NULL, '', 'Sudah', 'Belum'),
(219, 3, 'PKPT', NULL, NULL, NULL, 'Tia Astuti Widianti', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Sukamara', 'sukamara', 'APBN', '0', NULL, NULL, NULL, '', 'DL', 'Belum'),
(220, 3, 'PKPT', NULL, NULL, NULL, 'Tia Astuti Widianti', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kota Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, NULL, NULL, '', 'DLDK', 'Belum'),
(221, 3, 'PKPT', NULL, NULL, NULL, 'Tia Astuti Widianti', NULL, '2023-10-02', '2023-10-13', '10', 'Evaluasi atas Penilaian Mandiri Maturitas SPIP Terintegrasi Tahun 2023 pada Pemerintah Kabupaten Kotawaringin Barat', 'kobar', 'APBN', '0', NULL, NULL, NULL, '', 'DL', 'Belum'),
(222, 2, 'PKPT', NULL, NULL, NULL, 'Ariferdina Ambudi', NULL, '2023-10-02', '2023-10-23', '16', 'Audit Kinerja Kegiatan Penyediaan Sarana dan Prasarana Sanitasi di Lembaga Pendidikan Keagamaan (LPK) pada Provinsi Kalimantan Tengah', 'kotim', 'Mitra', '0', NULL, NULL, NULL, '', 'DL', 'Belum'),
(223, 5, 'PKPT', NULL, NULL, NULL, 'Yudistira Andi Permadi', NULL, '2023-10-09', '2023-10-17', '7', 'Peningkatan Efektivitas Pengendalian Korupsi (EPK) pada Pemerintah Kota Palangka Raya', 'palangka_raya', 'APBN', '0', NULL, NULL, NULL, '', 'TL', 'Belum'),
(224, 5, 'PKPT', NULL, NULL, NULL, 'Yudistira Andi Permadi', NULL, '2023-10-09', '2023-10-17', '7', 'Peningkatan Efektivitas Pengendalian Korupsi (EPK) pada Bank Kalteng', 'palangka_raya', 'APBN', '0', NULL, NULL, NULL, '', 'TL', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `id_bidang` varchar(25) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(25) DEFAULT NULL,
  `log_history` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `nama_lengkap`, `id_bidang`, `password`, `level`, `log_history`) VALUES
(1, 'sekbag_umum', 'Sekretaris Bagian Umum', '1', '62051676ed771f70c4a1ec753288aaaf', '4', NULL),
(2, 'sekbid_ipp', 'Sekretaris Bidang IPP', '2', '0de944eee23f1e378265a608705a83dc', '4', NULL),
(3, 'sekbid_apd', 'Sekretaris Bidang APD', '3', '34c4a6d7bb0efa65bbde60fa15a69e7d', '4', NULL),
(4, 'sekbid_an', 'Sekretaris Bidang AN', '4', '9b90d2abb83fe10c2df71976c7c31b04', '4', NULL),
(5, 'sekbid_inves', 'Sekretaris Bidang Investigasi', '5', '38f9faf4ac36315d72c76ea77b2180ca', '4', NULL),
(6, 'sekbid_p3a', 'Sekretaris Bidang P3A', '6', '111080a05ae7e2cee1253e530f9149cb', '3', NULL),
(7, 'korwas', 'Koordinator Pengawasan', '', 'a77d8c01a8ec6c965a654da73d15741a', '2', NULL),
(8, 'sekper_kalteng', 'Sekretaris Perwakilan', '', 'af4df1a46a4286a93b76385e9d189ffe', '2', NULL),
(9, 'admin', 'admin', '', '21232f297a57a5a743894a0e4a801fc3', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teamrank`
--

CREATE TABLE `teamrank` (
  `id_rank` int(11) NOT NULL,
  `all_anggota` varchar(100) NOT NULL,
  `jenisdl` varchar(10) NOT NULL,
  `hari_tugas` int(255) NOT NULL,
  `anggaran` bigint(20) NOT NULL,
  `id_tugas_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `kategori` varchar(255) NOT NULL,
  `nost` varchar(100) NOT NULL,
  `namast` mediumtext NOT NULL,
  `tglst` date NOT NULL,
  `startst` date NOT NULL,
  `endst` date NOT NULL,
  `ketua` varchar(100) NOT NULL,
  `anggota1` varchar(100) NOT NULL,
  `hari_tugas1` int(255) NOT NULL,
  `anggaran1` bigint(255) NOT NULL,
  `anggota2` varchar(100) NOT NULL,
  `hari_tugas2` int(255) NOT NULL,
  `anggaran2` bigint(255) NOT NULL,
  `anggota3` varchar(100) NOT NULL,
  `hari_tugas3` int(255) NOT NULL,
  `anggaran3` bigint(255) NOT NULL,
  `jenisdl` varchar(10) NOT NULL,
  `stattugas` text NOT NULL,
  `nolap` varchar(100) NOT NULL,
  `filest` varchar(100) DEFAULT NULL,
  `filekm` varchar(100) DEFAULT NULL,
  `filelap` varchar(100) DEFAULT NULL,
  `tgllap` date NOT NULL,
  `id` int(11) NOT NULL,
  `simpulan` longtext NOT NULL,
  `saran` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`kategori`, `nost`, `namast`, `tglst`, `startst`, `endst`, `ketua`, `anggota1`, `hari_tugas1`, `anggaran1`, `anggota2`, `hari_tugas2`, `anggaran2`, `anggota3`, `hari_tugas3`, `anggaran3`, `jenisdl`, `stattugas`, `nolap`, `filest`, `filekm`, `filelap`, `tgllap`, `id`, `simpulan`, `saran`) VALUES
('audit', 'TEST/01/01', 'Tugas Tugas Tugasku', '2023-02-06', '2023-02-06', '2023-02-06', 'Ridha Cahya Utama', 'Almirah Melati Meiriska', 5, 100000, 'Chika Salsabila, A.Md.A.Pj.', 5, 100000, 'Hima Yulianti, A.Md.A.Pj.', 5, 0, 'dldk', 'belum', '', NULL, NULL, NULL, '0000-00-00', 18, '', ''),
('monit', 'PE.11.02/S-113/PW15/2/2023', 'Monitoring Pelaksanaan Stock Opname Vaksin Covid-19 di Provinsi Kalimantan Tengah per 31 Desember 2022', '2023-01-16', '2023-01-16', '2023-01-31', 'Pebriani Kristina Br Sembiring, S.E.', 'Abdul Rahmat Dwicaksono', 0, 0, '', 0, 0, '', 0, 0, '', 'dl1', '', NULL, NULL, NULL, '0000-00-00', 19, '', ''),
('monit', 'PE.11.02/ST-28/PW15/2/2023', 'Monitoring Pelaksanaan Stock Opname Vaksin Covid-19 di Provinsi Kalimantan Tengah per 31 Desember 2022', '2023-01-16', '2023-01-16', '2023-01-31', 'Ariferdina Ambudi, S.S.T., M.Si.', 'Fadilla Fanni', 0, 0, '', 0, 0, '', 0, 0, '', 'belum', '', NULL, NULL, NULL, '0000-00-00', 20, '', ''),
('monit', 'PE.11.02/ST-28/PW15/2/2023', 'Monitoring Pelaksanaan Stock Opname Vaksin Covid-19 di Provinsi Kalimantan Tengah per 31 Desember 2022', '2023-01-16', '2023-01-16', '2023-01-31', 'Ridha Cahya Utama', 'Hima Yulianti, A.Md.A.Pj.', 0, 0, '', 0, 0, '', 0, 0, '', 'dl1', '', NULL, NULL, NULL, '0000-00-00', 21, '', ''),
('monit', 'PE.11.02/ST-62/PW15/2/2023', 'Pemantauan Harga Minyak Goreng di Provinsi Kalimantan Tengah', '2023-02-02', '2023-02-02', '2023-03-30', 'Yuliana Indriani, S.E.', 'Hima Yulianti, A.Md.A.Pj.', 0, 0, 'Chika Salsabila, A.Md.A.Pj.', 0, 0, '', 0, 0, '', 'dl1', '', NULL, NULL, NULL, '0000-00-00', 22, '', ''),
('-Pilih-', '', '', '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0, 0, '', 0, 0, '', 0, 0, '', 'belum', '', NULL, NULL, NULL, '0000-00-00', 24, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_ipp`
--

CREATE TABLE `users_ipp` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_ipp`
--

INSERT INTO `users_ipp` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$KqVNAqY4Sa2qQ3g9qCjxMu1IFtenXPYdaC9mWdqGVHv52TF1OaS/K'),
(2, 'mela', '$2y$10$qYI8v1nxVXZlZON//stzme2k9vwafX3JuKBXLFLjSblYo6QCAloX2'),
(3, 'adminmela', '$2y$10$dPfoQst.uGo6ocyCCYICted3bOfQ.EwQNP.BmHHSc3P5nOzmgfZBa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pgwbidang`
--
ALTER TABLE `pgwbidang`
  ADD PRIMARY KEY (`id_pgw`);

--
-- Indexes for table `tb_anggaran`
--
ALTER TABLE `tb_anggaran`
  ADD PRIMARY KEY (`id_anggaran`);

--
-- Indexes for table `tb_bidang`
--
ALTER TABLE `tb_bidang`
  ADD PRIMARY KEY (`id_bidang`);

--
-- Indexes for table `tb_cs`
--
ALTER TABLE `tb_cs`
  ADD PRIMARY KEY (`id_cs`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_peg`);

--
-- Indexes for table `tb_penugasan`
--
ALTER TABLE `tb_penugasan`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `teamrank`
--
ALTER TABLE `teamrank`
  ADD PRIMARY KEY (`id_rank`),
  ADD KEY `id_tugas_fk` (`id_tugas_fk`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_ipp`
--
ALTER TABLE `users_ipp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pgwbidang`
--
ALTER TABLE `pgwbidang`
  MODIFY `id_pgw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_anggaran`
--
ALTER TABLE `tb_anggaran`
  MODIFY `id_anggaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_bidang`
--
ALTER TABLE `tb_bidang`
  MODIFY `id_bidang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_cs`
--
ALTER TABLE `tb_cs`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=877;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id_peg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `tb_penugasan`
--
ALTER TABLE `tb_penugasan`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teamrank`
--
ALTER TABLE `teamrank`
  MODIFY `id_rank` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users_ipp`
--
ALTER TABLE `users_ipp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teamrank`
--
ALTER TABLE `teamrank`
  ADD CONSTRAINT `teamrank_ibfk_1` FOREIGN KEY (`id_tugas_fk`) REFERENCES `users_ipp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
