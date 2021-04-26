-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Apr 2021 pada 10.14
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ali`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `tgl_input_absensi` int(20) NOT NULL,
  `posisi_kerja_today` varchar(50) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `total_jam_kerja` int(50) NOT NULL,
  `lembur` varchar(50) NOT NULL,
  `upah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat_peg` varchar(50) NOT NULL,
  `posisi_kerja` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(25) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_posisi`
--

CREATE TABLE `data_posisi` (
  `id_posisi` int(10) NOT NULL,
  `jenis_posisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datetimepicker_id`
--

CREATE TABLE `datetimepicker_id` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_input_absensi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) DEFAULT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemetaan_sotk`
--

CREATE TABLE `pemetaan_sotk` (
  `id_pemetaan` int(11) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `posisi_kerja` varchar(50) NOT NULL,
  `gaji_pokok` varchar(255) NOT NULL,
  `upah_jam_lembur` varchar(255) NOT NULL,
  `tj_transport` varchar(255) NOT NULL,
  `uang_makan` varchar(255) NOT NULL,
  `gaji_harian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `data_posisi`
--
ALTER TABLE `data_posisi`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indexes for table `datetimepicker_id`
--
ALTER TABLE `datetimepicker_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemetaan_sotk`
--
ALTER TABLE `pemetaan_sotk`
  ADD PRIMARY KEY (`id_pemetaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_posisi`
--
ALTER TABLE `data_posisi`
  MODIFY `id_posisi` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `datetimepicker_id`
--
ALTER TABLE `datetimepicker_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pemetaan_sotk`
--
ALTER TABLE `pemetaan_sotk`
  MODIFY `id_pemetaan` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
