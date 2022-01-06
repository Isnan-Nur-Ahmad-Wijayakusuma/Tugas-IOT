-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2021 pada 15.29
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
-- Database: `db_minapadi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `set_ph`
--

CREATE TABLE `set_ph` (
  `id` int(11) NOT NULL,
  `id_ikan` int(10) NOT NULL,
  `ph_min` int(6) NOT NULL,
  `ph_max` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `set_ph`
--

INSERT INTO `set_ph` (`id`, `id_ikan`, `ph_min`, `ph_max`) VALUES
(1, 1, 6, 7),
(2, 2, 6, 7),
(3, 3, 6, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ph`
--

CREATE TABLE `tb_ph` (
  `id` int(5) NOT NULL,
  `id_ikan` varchar(3) NOT NULL,
  `nama_ikan` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `ph` varchar(4) NOT NULL,
  `ph_setelah` varchar(4) NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `waktu_aksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ph`
--

INSERT INTO `tb_ph` (`id`, `id_ikan`, `nama_ikan`, `waktu`, `ph`, `ph_setelah`, `aksi`, `waktu_aksi`) VALUES
(44, '3', 'Ikan Mujair', '2021-11-20 16:45:48.047562', '7', '', '', ''),
(46, '2', 'Ikan Lele', '2021-11-21 11:24:07.436736', '11', '', '', ''),
(47, '1', 'Ikan Nila', '2021-11-21 11:32:03.346275', '7', '1', 'Ditambahkan', '2021-11-21T12:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_set_poin`
--

CREATE TABLE `tb_set_poin` (
  `id_ikan` int(20) NOT NULL,
  `nama_ikan` varchar(255) NOT NULL,
  `ph` varchar(255) NOT NULL,
  `suhu` varchar(255) NOT NULL,
  `ketinggian_air` varchar(255) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_set_poin`
--

INSERT INTO `tb_set_poin` (`id_ikan`, `nama_ikan`, `ph`, `suhu`, `ketinggian_air`, `waktu_input`) VALUES
(1, 'Ikan Nila', '6,6 - 7,4', '25 - 28', '35 - 50', '2021-11-12 20:26:05'),
(2, 'Ikan Lele', '5,5 - 7,5', '25 - 32', '30 - 45', '2021-11-12 20:26:15'),
(3, 'Ikan Mujair', '6,5 - 8', '24 - 30', '35 - 50', '2021-11-15 08:49:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_suhu`
--

CREATE TABLE `tb_suhu` (
  `id_suhu` int(5) NOT NULL,
  `id_ikan` varchar(3) NOT NULL,
  `nama_ikan` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `suhu` varchar(255) NOT NULL,
  `suhu_setelah` varchar(3) NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `waktu_aksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_suhu`
--

INSERT INTO `tb_suhu` (`id_suhu`, `id_ikan`, `nama_ikan`, `waktu`, `suhu`, `suhu_setelah`, `aksi`, `waktu_aksi`) VALUES
(3, 'N', '', '2021-11-13 18:23:39', '19', '', '', '0000-00-00 00:00:00'),
(4, 'N', '', '2021-11-14 14:36:05', '28', '14', 'ditambah', '2021-11-14 23:55:00'),
(5, '1', 'Ikan Nila', '2021-11-20 16:47:14', '14', '', '', '0000-00-00 00:00:00'),
(6, '2', 'Ikan Lele', '2021-11-20 16:48:51', '30', '11', 'Ditambahkan', '2021-11-21 12:25:00'),
(7, '3', 'Ikan Mujair', '2021-11-20 16:50:02', '22', '', '', '0000-00-00 00:00:00'),
(8, '1', 'Ikan Nila', '2021-11-21 11:33:20', '27', '', '', '0000-00-00 00:00:00'),
(9, '1', 'Ikan Nila', '2021-11-21 11:54:51', '27,5', '4,5', '', '2021-11-21 12:07:00'),
(10, '1', 'Ikan Nila', '2021-11-21 12:09:25', '26', '-4', '', '2021-11-21 12:09:00'),
(11, '2', 'Ikan Lele', '2021-11-21 12:27:30', '27', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tinggi_air`
--

CREATE TABLE `tb_tinggi_air` (
  `id_tinggi_air` int(5) NOT NULL,
  `id_ikan` varchar(3) NOT NULL,
  `nama_ikan` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  `tinggi_air` varchar(255) NOT NULL,
  `tinggi_air_setelah` varchar(5) NOT NULL,
  `aksi` varchar(255) NOT NULL,
  `waktu_aksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tinggi_air`
--

INSERT INTO `tb_tinggi_air` (`id_tinggi_air`, `id_ikan`, `nama_ikan`, `waktu`, `tinggi_air`, `tinggi_air_setelah`, `aksi`, `waktu_aksi`) VALUES
(6, '2', 'Ikan Lele', '2021-11-20 16:52:56', '40', '17', 'Ditambahkan', '2021-11-21 12:24:00'),
(7, '3', 'Ikan Mujair', '2021-11-20 16:54:17', '21', '', '', '0000-00-00 00:00:00'),
(8, '1', 'Ikan Nila', '2021-11-21 11:34:39', '47', '2', 'Ditambahkan', '2021-11-21 12:01:00'),
(9, '1', 'Ikan Nila', '2021-11-21 12:05:51', '40', '', '', '0000-00-00 00:00:00'),
(10, '2', 'Ikan Lele', '2021-11-21 12:28:55', '17', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'user', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `set_ph`
--
ALTER TABLE `set_ph`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_ph`
--
ALTER TABLE `tb_ph`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_set_poin`
--
ALTER TABLE `tb_set_poin`
  ADD PRIMARY KEY (`id_ikan`);

--
-- Indeks untuk tabel `tb_suhu`
--
ALTER TABLE `tb_suhu`
  ADD PRIMARY KEY (`id_suhu`);

--
-- Indeks untuk tabel `tb_tinggi_air`
--
ALTER TABLE `tb_tinggi_air`
  ADD PRIMARY KEY (`id_tinggi_air`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `set_ph`
--
ALTER TABLE `set_ph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_ph`
--
ALTER TABLE `tb_ph`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `tb_set_poin`
--
ALTER TABLE `tb_set_poin`
  MODIFY `id_ikan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_suhu`
--
ALTER TABLE `tb_suhu`
  MODIFY `id_suhu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_tinggi_air`
--
ALTER TABLE `tb_tinggi_air`
  MODIFY `id_tinggi_air` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
