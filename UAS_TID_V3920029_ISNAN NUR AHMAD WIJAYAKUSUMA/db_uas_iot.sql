-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2021 pada 15.17
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas_iot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suhu`
--

CREATE TABLE `tb_suhu` (
  `id_suhu` int(12) NOT NULL,
  `suhu` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_suhu`
--

INSERT INTO `tb_suhu` (`id_suhu`, `suhu`, `date`) VALUES
(1, 34, '2021-12-22 14:01:24'),
(2, 0, '2021-12-22 14:03:30'),
(3, 33, '2021-12-22 14:03:59'),
(4, 56, '2021-12-22 14:04:03'),
(5, 56, '2021-12-22 14:04:09'),
(6, 56, '2021-12-22 14:04:15'),
(7, 56, '2021-12-22 14:04:20'),
(8, 44, '2021-12-22 14:04:24'),
(9, 41, '2021-12-22 14:04:30'),
(10, 41, '2021-12-22 14:04:36'),
(11, 41, '2021-12-22 14:04:41'),
(12, 41, '2021-12-22 14:04:45'),
(13, 41, '2021-12-22 14:04:51'),
(14, 41, '2021-12-22 14:04:56'),
(15, 41, '2021-12-22 14:05:01'),
(16, 41, '2021-12-22 14:05:05'),
(17, 41, '2021-12-22 14:05:10'),
(18, 41, '2021-12-22 14:05:15'),
(19, 41, '2021-12-22 14:05:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_suhu`
--
ALTER TABLE `tb_suhu`
  ADD PRIMARY KEY (`id_suhu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_suhu`
--
ALTER TABLE `tb_suhu`
  MODIFY `id_suhu` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
