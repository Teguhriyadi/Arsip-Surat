-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2022 pada 07.35
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bagian`
--

CREATE TABLE `tbl_bagian` (
  `id_bagian` int(10) NOT NULL,
  `nama_bagian` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bagian`
--

INSERT INTO `tbl_bagian` (`id_bagian`, `nama_bagian`, `id_user`) VALUES
(1, 'waww', 6),
(3, 'yahoo', 6),
(6, 'Tata Usaha', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lampiran`
--

CREATE TABLE `tbl_lampiran` (
  `id_lampiran` int(10) NOT NULL,
  `token_lampiran` varchar(100) NOT NULL,
  `nama_berkas` text DEFAULT NULL,
  `ukuran` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_lampiran`
--

INSERT INTO `tbl_lampiran` (`id_lampiran`, `token_lampiran`, `nama_berkas`, `ukuran`) VALUES
(31, 'd23257d581d8765e4032b873589842b2', '20161003_134340.jpg', '175.98'),
(30, '7f754e483ab80366dd2fa48da9ddf8be', '1.png', '97.33'),
(29, 'f80d6dcd3750f67b1eded82f07d6e20a', '20161019_112001.jpg', '388.21'),
(28, 'f03c289269fffc7c29a4a0349bc10430', '1.png', '97.33'),
(26, 'b479223266020b24f1648387d775cecf', 'logox2.png', '4.43'),
(27, 'd3cacce6ba0093cf489d8313d91a22eb', 'logox3.png', '4.43'),
(32, '625ce12ce467c0cdf1ec172d35a89e34', 'diagram_pertek.odt', '16.57'),
(33, 'e23efa6c99f3d3ca903c5fb534a46d74', 'Absensi_kehadiran_juin,_juli,_ags,_sep.xlsx', '24.07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_memo`
--

CREATE TABLE `tbl_memo` (
  `id_memo` int(10) NOT NULL,
  `judul_memo` text DEFAULT NULL,
  `memo` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_memo`
--

INSERT INTO `tbl_memo` (`id_memo`, `judul_memo`, `memo`, `id_user`) VALUES
(2, 'waw', 'wiw', 6),
(3, 'DATA LAPORAN AKHIR TAHUN ', 'JANGAN LUPA DI PROSES ', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ns`
--

CREATE TABLE `tbl_ns` (
  `id_ns` int(10) NOT NULL,
  `separator` text DEFAULT NULL,
  `no_posisi` text DEFAULT NULL,
  `no` text DEFAULT NULL,
  `org_posisi` text DEFAULT NULL,
  `org` text DEFAULT NULL,
  `bag_posisi` text DEFAULT NULL,
  `bag` text DEFAULT NULL,
  `subbag_posisi` text DEFAULT NULL,
  `subbag` text DEFAULT NULL,
  `bln_posisi` text DEFAULT NULL,
  `bln` text DEFAULT NULL,
  `thn_posisi` text DEFAULT NULL,
  `thn` text DEFAULT NULL,
  `reset_no` text DEFAULT NULL,
  `prefix` text DEFAULT NULL,
  `prefix_posisi` enum('kiri','kanan') DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `jenis_ns` enum('semua','sm','sk','disposisi') DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ns`
--

INSERT INTO `tbl_ns` (`id_ns`, `separator`, `no_posisi`, `no`, `org_posisi`, `org`, `bag_posisi`, `bag`, `subbag_posisi`, `subbag`, `bln_posisi`, `bln`, `thn_posisi`, `thn`, `reset_no`, `prefix`, `prefix_posisi`, `no_surat`, `ket`, `jenis_ns`, `id_user`, `tgl_ns`) VALUES
(1, '.', '1', '005', '2', 'waw', '', '', '', '', '4', 'X', '3', '2017', 'thn', 'yahoo', '', '005.waw.2017.X.yahoo', 'dkfhdf', 'sm', 6, NULL),
(2, '/', '2', '005', '1', 'ukm', '', '', '', '', '3', 'X', '4', '2017', 'thn', 'hay', 'kanan', 'ukm/005/X/2017/hay', '-', 'sk', 6, NULL),
(4, '/', '2', '001', '3', 'iptek', '', '', '', '', '4', 'X', '1', '2017', 'thn', '', '', '2017/001/iptek/X', '-', 'semua', 6, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sk`
--

CREATE TABLE `tbl_sk` (
  `id_sk` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `pengirim` text NOT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `id_bagian` int(10) NOT NULL,
  `token_lampiran` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` text NOT NULL,
  `peringatan` int(1) NOT NULL,
  `tgl_sk` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sk`
--

INSERT INTO `tbl_sk` (`id_sk`, `no_surat`, `tgl_ns`, `pengirim`, `penerima`, `perihal`, `id_bagian`, `token_lampiran`, `id_user`, `dibaca`, `disposisi`, `peringatan`, `tgl_sk`) VALUES
(15, 'SKm/001', '19-10-2017', '', '', 'asdf', 0, 'f80d6dcd3750f67b1eded82f07d6e20a', 6, 1, '', 0, '19-10-2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sm`
--

CREATE TABLE `tbl_sm` (
  `id_sm` int(10) NOT NULL,
  `no_surat` text DEFAULT NULL,
  `tgl_ns` varchar(12) DEFAULT NULL,
  `no_asal` text DEFAULT NULL,
  `tgl_no_asal` varchar(12) DEFAULT NULL,
  `pengirim` text DEFAULT NULL,
  `penerima` text DEFAULT NULL,
  `perihal` text DEFAULT NULL,
  `token_lampiran` varchar(100) DEFAULT NULL,
  `dibaca` int(1) NOT NULL,
  `disposisi` int(1) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `tgl_sm` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sm`
--

INSERT INTO `tbl_sm` (`id_sm`, `no_surat`, `tgl_ns`, `no_asal`, `tgl_no_asal`, `pengirim`, `penerima`, `perihal`, `token_lampiran`, `dibaca`, `disposisi`, `id_user`, `tgl_sm`) VALUES
(15, '004.waw.2017.X.yahoo', '19-10-2017', 'SKm/002', '19-10-2017', '-', '6', 'ad', '7f754e483ab80366dd2fa48da9ddf8be', 1, 0, 6, '19-10-2017'),
(16, 'SKm/002', '19-10-2017', 'SKm/002', '19-10-2017', '-', '5', 'dwwx', 'd23257d581d8765e4032b873589842b2', 1, 0, 5, '19-10-2017'),
(17, 'SKm/003', '14-11-2022', 'SKm/003', '14-11-2022', '-', 'Aria Pratama', 'Perizinan', '625ce12ce467c0cdf1ec172d35a89e34', 1, 0, 0, '14-11-2022'),
(18, 'SKm/004', '15-11-2022', 'SKm/004', '15-11-2022', '-', 'Mila Staff', 'Pelaporan Perizinan', 'e23efa6c99f3d3ca903c5fb534a46d74', 1, 0, 0, '15-11-2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `level` enum('s_admin','admin','user') DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `tgl_daftar` varchar(20) DEFAULT NULL,
  `terakhir_login` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `alamat`, `telp`, `pengalaman`, `level`, `status`, `tgl_daftar`, `terakhir_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Aria Pratama', 'ariapratama850@gmail.com', 'Gunung Semeru DXI No.74 Perumnas', '081280696486', 'It Consultant', 's_admin', 'aktif', '07-10-2017 17:03:12', '23-11-2022 13:26:41'),
(5, 'admin2', 'c84258e9c39059a89ab77d846ddab909', '-', '-', '-', '-', '-', 'admin', 'aktif', '07-10-2017 17:30:08', '15-11-2022 22:07:06'),
(6, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Mila Staff', 'mila@gmail.com', '-', '-', '-', 'user', 'aktif', '07-10-2017 17:31:54', '20-11-2022 19:48:36');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indeks untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indeks untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  ADD PRIMARY KEY (`id_memo`);

--
-- Indeks untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  ADD PRIMARY KEY (`id_ns`);

--
-- Indeks untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indeks untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  ADD PRIMARY KEY (`id_sm`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_bagian`
--
ALTER TABLE `tbl_bagian`
  MODIFY `id_bagian` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_lampiran`
--
ALTER TABLE `tbl_lampiran`
  MODIFY `id_lampiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_memo`
--
ALTER TABLE `tbl_memo`
  MODIFY `id_memo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_ns`
--
ALTER TABLE `tbl_ns`
  MODIFY `id_ns` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_sk`
--
ALTER TABLE `tbl_sk`
  MODIFY `id_sk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_sm`
--
ALTER TABLE `tbl_sm`
  MODIFY `id_sm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
