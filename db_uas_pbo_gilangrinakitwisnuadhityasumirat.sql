-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2026 at 02:55 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_pbo_gilangrinakitwisnuadhityasumirat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mahasiswa`
--

CREATE TABLE `tabel_mahasiswa` (
  `id_mahasiswa` int NOT NULL,
  `nama_mahasiswa` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `nim` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `semester` int NOT NULL,
  `trif_ukt_nominal` decimal(12,2) NOT NULL,
  `jenis_pembiayaan` enum('Mandiri','Bidikmisi','Prestasi') COLLATE utf8mb4_general_ci NOT NULL,
  `golongan_ukt` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_wali` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomor_kip_kuliah` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dana_saku_subsidi` decimal(12,2) DEFAULT NULL,
  `nama_instansi_beasiswa` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `minimal_ipk_syarat` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_mahasiswa`
--

INSERT INTO `tabel_mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `nim`, `semester`, `trif_ukt_nominal`, `jenis_pembiayaan`, `golongan_ukt`, `nama_wali`, `nomor_kip_kuliah`, `dana_saku_subsidi`, `nama_instansi_beasiswa`, `minimal_ipk_syarat`) VALUES
(1, 'Sinta Maharani', 'TRPL1A-001', 2, 7500000.00, 'Mandiri', 'Golongan 5', NULL, NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'TRPL1A-002', 4, 6500000.00, 'Mandiri', 'Golongan 4', NULL, NULL, NULL, NULL, NULL),
(3, 'Citra Dewi', 'TRPL1A-003', 2, 7500000.00, 'Mandiri', 'Golongan 5', NULL, NULL, NULL, NULL, NULL),
(4, 'Dimas Prayoga', 'TRPL1A-004', 6, 5500000.00, 'Mandiri', 'Golongan 3', NULL, NULL, NULL, NULL, NULL),
(5, 'Eka Putri Rahayu', 'TRPL1A-005', 4, 6000000.00, 'Mandiri', 'Golongan 4', NULL, NULL, NULL, NULL, NULL),
(6, 'Farhan Maulana', 'TRPL1A-006', 2, 8000000.00, 'Mandiri', 'Golongan 6', NULL, NULL, NULL, NULL, NULL),
(7, 'Gita Ayu Lestari', 'TRPL1A-007', 4, 7000000.00, 'Mandiri', 'Golongan 5', NULL, NULL, NULL, NULL, NULL),
(8, 'Hendra Wijaya', 'TRPL1A-008', 6, 4500000.00, 'Mandiri', 'Golongan 2', NULL, NULL, NULL, NULL, NULL),
(9, 'Indah Permatasari', 'TRPL1A-009', 2, 8500000.00, 'Mandiri', 'Golongan 7', NULL, NULL, NULL, NULL, NULL),
(10, 'Joko Prasetyo', 'TRPL1A-010', 2, 2500000.00, 'Bidikmisi', NULL, 'Suyanto', 'KIP-2024-00101', 700000.00, NULL, NULL),
(11, 'Kartika Sari', 'TRPL1A-011', 4, 2500000.00, 'Bidikmisi', NULL, 'Sumarni', 'KIP-2024-00102', 700000.00, NULL, NULL),
(12, 'Lukman Hakim', 'TRPL1A-012', 2, 2500000.00, 'Bidikmisi', NULL, 'Abdul Rohman', 'KIP-2024-00103', 750000.00, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `uq_nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_mahasiswa`
--
ALTER TABLE `tabel_mahasiswa`
  MODIFY `id_mahasiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
