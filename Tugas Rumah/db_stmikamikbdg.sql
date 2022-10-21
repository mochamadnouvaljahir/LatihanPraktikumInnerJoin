-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2022 pada 08.46
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
-- Database: `db_stmikamikbdg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ambil_mk`
--

CREATE TABLE `ambil_mk` (
  `nim` int(6) NOT NULL,
  `kode_mk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ambil_mk`
--

INSERT INTO `ambil_mk` (`nim`, `kode_mk`) VALUES
(111, 'PTI123'),
(104, 'PTI333'),
(101, 'PTI447'),
(104, 'PTI777'),
(123, 'PTI999'),
(103, 'TIK333');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `id_dep` int(5) NOT NULL,
  `nama_dep` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`id_dep`, `nama_dep`) VALUES
(10, 'Penelitian'),
(11, 'Pemasaran'),
(12, 'SDM'),
(13, 'Keuangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `Nama` varchar(30) NOT NULL,
  `id_dep` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`Nama`, `id_dep`) VALUES
('Agus', 10),
('Budi', 16),
('Citra', 12),
('Dani', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan2`
--

CREATE TABLE `karyawan2` (
  `Nama` varchar(30) NOT NULL,
  `id_dep` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan2`
--

INSERT INTO `karyawan2` (`Nama`, `id_dep`) VALUES
('Dani', 17),
('Anisa', 18),
('Bagus', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(6) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'Jl.Kenangan'),
(102, 'Budi', 'L', 'Jl.Jombang'),
(103, 'Wati', 'P', 'Jl.Surabaya'),
(104, 'Ika', 'P', 'Jl.Jombang'),
(105, 'Tono', 'L', 'Jl.Jakarta'),
(106, 'Iwan', 'L', 'Jl.Bandung'),
(107, 'Sari', 'P', 'Jl.Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(5) NOT NULL,
  `semester` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI123', 'Grafika Multimedia', 3, 5),
('PTI333', 'Basis Data Terdistribusi', 3, 5),
('PTI447', 'Praktikum Basis Data', 1, 3),
('PTI777', 'Sistem Informasi', 2, 3),
('TIK123', 'Jaringan Komputer', 2, 5),
('TIK333', 'Sistem Operasi', 3, 5),
('TIK342', 'Praktikum Basis Data', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ambil_mk`
--
ALTER TABLE `ambil_mk`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
