-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2022 pada 07.46
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `nip` int(5) NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `ruangan` varchar(10) NOT NULL,
  `jml_mhs` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ambil_mk`
--

INSERT INTO `ambil_mk` (`nip`, `kd_mk`, `ruangan`, `jml_mhs`) VALUES
(1, 'IS101', 'I7312', 30),
(3, 'PTI101', 'H5211', 40),
(2, 'PTI102', 'H5212', 45),
(2, 'PTI103', 'H5206', 40);

-- --------------------------------------------------------

--
-- Struktur dari tabel `instruktur`
--

CREATE TABLE `instruktur` (
  `nip` int(5) NOT NULL,
  `nama_ins` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `asal_kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `instruktur`
--

INSERT INTO `instruktur` (`nip`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
(1, 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
(2, 'Saichul Firtian A', 'Ilmu Komputer', 'Malang'),
(3, 'Annafia Oktafian', 'Ilmu Komputer', 'Klaten'),
(4, 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kd_mk`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia', 3),
('PTI101', 'Algoritma Dan Pemograman', 3),
('PTI102', 'Basis Data', 3),
('PTI103', 'Visual Basic', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD PRIMARY KEY (`kd_mk`);

--
-- Indeks untuk tabel `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_mk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `nip` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
