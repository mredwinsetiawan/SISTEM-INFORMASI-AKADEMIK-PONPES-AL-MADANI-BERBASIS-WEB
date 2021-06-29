-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 10.48
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_guru`
--

CREATE TABLE `absensi_guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kehadiran_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensi_guru`
--

INSERT INTO `absensi_guru` (`id`, `tanggal`, `guru_id`, `kehadiran_id`, `created_at`, `updated_at`) VALUES
(1, '2021-03-01', 1, 5, '2021-03-01 04:36:53', '2021-03-01 04:36:53'),
(2, '2021-03-02', 1, 6, '2021-03-02 15:15:18', '2021-03-02 15:15:18'),
(3, '2021-03-04', 2, 6, '2021-03-04 11:21:28', '2021-03-04 11:21:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_card` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_guru` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `kode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `id_card`, `nip`, `nama_guru`, `mapel_id`, `kode`, `jk`, `telp`, `tmp_lahir`, `tgl_lahir`, `foto`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, '00001', NULL, 'Sahrul Adi Amanatulloh', 2, '01', 'L', '081532794014', 'Tegal', '2000-06-27', 'uploads/guru/55392202032021_IMG-20200301-WA0008.jpg', '2021-03-02 15:39:08', '2021-03-02 15:39:55', NULL),
(3, '00002', NULL, 'Ilzam Kamal', 3, '02', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:32:45', '2021-03-10 03:32:45', NULL),
(4, '00003', NULL, 'Ahmad Wildan', 4, '03', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:33:43', '2021-03-10 03:33:43', NULL),
(5, '00004', NULL, 'D\'salm Khanif', 4, '04', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:34:12', '2021-03-10 03:34:12', NULL),
(6, '00005', NULL, 'Rahmat Maulana', 5, '05', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:34:51', '2021-03-10 03:34:51', NULL),
(7, '00006', NULL, 'Nysrotul Dilla', 5, '06', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:35:28', '2021-03-10 03:35:28', NULL),
(8, '00007', NULL, 'Ubeidi Mukhtarom', 18, '07', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:36:04', '2021-03-10 03:36:04', NULL),
(9, '00008', NULL, 'Agung Lukman', 6, '08', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:36:55', '2021-03-10 03:36:55', NULL),
(10, '00009', NULL, 'Fajar Sidiq Nur Aziz', 19, '09', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:37:42', '2021-03-10 03:37:42', NULL),
(11, '00010', NULL, 'Ahmad Seftyawan', 9, '10', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:38:28', '2021-03-10 03:38:28', NULL),
(12, '00011', NULL, 'Khuerul Khumedi', 10, '11', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:39:01', '2021-03-10 03:39:01', NULL),
(13, '00012', NULL, 'Muamar', 11, '12', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:39:35', '2021-03-10 03:39:35', NULL),
(14, '00013', NULL, 'Wafa Riski Azki', 14, '13', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:40:12', '2021-03-10 03:40:12', NULL),
(15, '00014', NULL, 'Khilyatul Azkia', 19, '14', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:41:34', '2021-03-10 03:41:34', NULL),
(16, '00015', NULL, 'Munib', 3, '15', 'L', '081532794014', 'Tegal', NULL, 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:42:18', '2021-03-10 03:42:18', NULL),
(17, '00016', NULL, 'Munib', 22, '16', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:42:45', '2021-03-10 03:42:45', NULL),
(18, '00017', NULL, 'Agus Hasan Munadi', 23, '17', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:43:26', '2021-03-10 03:43:26', NULL),
(19, '00018', NULL, 'Muamar', 41, '18', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:45:26', '2021-03-10 03:45:26', NULL),
(20, '00019', NULL, 'Wafa Riski Azki', 15, '19', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:45:49', '2021-03-10 03:45:49', NULL),
(21, '00020', NULL, 'Aenur Rofik', 24, '20', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:46:20', '2021-03-10 03:46:20', NULL),
(22, '00021', NULL, 'Khaeri Khusnandar', 25, '21', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:46:53', '2021-03-10 03:46:53', NULL),
(23, '00022', NULL, 'Siti Khoeriyah', 25, '22', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:47:23', '2021-03-10 03:47:23', NULL),
(25, '00023', NULL, 'Munib', 26, '23', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:50:01', '2021-03-10 03:50:01', NULL),
(26, '00024', NULL, 'Achmad Abdul Chamid', 27, '24', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:50:26', '2021-03-10 03:50:26', NULL),
(27, '00025', NULL, 'Agus Hasan Munadi', 28, '25', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:51:03', '2021-03-10 03:51:03', NULL),
(28, '00026', NULL, 'Muamar', 42, '26', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:51:33', '2021-03-10 03:51:33', NULL),
(29, '00027', NULL, 'Wafa Riski Azki', 16, '27', 'P', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/23171022042020_female.jpg', '2021-03-10 03:51:52', '2021-03-10 03:51:52', NULL),
(30, '00028', NULL, 'Ali Nur Sekha', 29, '28', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:52:52', '2021-03-10 03:52:52', NULL),
(31, '00029', NULL, 'Ahmad Seftyawan', 30, '29', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:53:24', '2021-03-10 03:53:24', NULL),
(32, '00030', NULL, 'Achmad Abdul Chamid', 33, '30', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:53:53', '2021-03-10 03:53:53', NULL),
(33, '00031', NULL, 'Muamar', 34, '31', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:54:26', '2021-03-10 03:54:26', NULL),
(34, '00032', NULL, 'Ali Nur Sekha', 35, '32', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:57:36', '2021-03-10 03:57:36', NULL),
(35, '00033', NULL, 'Ahmad Seftyawan', 36, '33', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:58:01', '2021-03-10 03:58:01', NULL),
(36, '00034', NULL, 'KH. Muhammad Tauhid', 37, '34', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:58:37', '2021-03-10 03:58:37', NULL),
(37, '00035', NULL, 'KH. Muhammad Tauhid', 38, '35', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:59:00', '2021-03-10 03:59:00', NULL),
(38, '00036', NULL, 'KH. Muhammad Tauhid', 39, '36', 'L', '081532794014', 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:59:27', '2021-03-10 03:59:27', NULL),
(39, '00037', NULL, 'KH. Muhammad Tauhid', 40, '37', 'L', NULL, 'Tegal', '2021-03-10', 'uploads/guru/35251431012020_male.jpg', '2021-03-10 03:59:45', '2021-03-10 03:59:45', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'Senin', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(2, 'Selasa', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(3, 'Rabu', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(4, 'Kamis', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(5, 'Ahad', '2021-03-01 04:13:12', '2021-03-01 04:13:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `ket`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Hadir', '3C0', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(2, 'Izin', '0CF', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(3, 'Bertugas Keluar', 'F90', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(4, 'Sakit', 'FF0', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(5, 'Terlambat', '7F0', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(6, 'Tanpa Keterangan', 'F00', '2021-03-01 04:13:12', '2021-03-01 04:13:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `paket_id`, `guru_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'KELAS 1A', 2, 2, '2021-03-10 04:04:58', '2021-03-10 04:04:58', NULL),
(7, 'KELAS 1B', 3, 13, '2021-03-10 04:05:25', '2021-03-10 04:05:25', NULL),
(8, 'KELAS 1C', 3, 14, '2021-03-10 04:06:06', '2021-03-10 04:06:06', NULL),
(9, 'KELAS 1D', 5, 23, '2021-03-10 04:06:35', '2021-03-10 04:06:35', NULL),
(10, 'KELAS 2A', 4, 18, '2021-03-10 04:06:55', '2021-03-10 04:06:55', NULL),
(11, 'KELAS 2B', 1, 21, '2021-03-10 04:07:12', '2021-03-10 04:07:12', NULL),
(12, 'KELAS 2C', 7, 5, '2021-03-10 04:08:25', '2021-03-10 04:08:25', NULL),
(13, 'KELAS 2D', 5, 15, '2021-03-10 04:08:56', '2021-03-10 04:08:56', NULL),
(14, 'KELAS 3A', 6, 3, '2021-03-10 04:09:37', '2021-03-10 04:09:37', NULL),
(15, 'KELAS 3B', 7, 4, '2021-03-10 04:09:55', '2021-03-10 04:09:55', NULL),
(16, 'KELAS 3C', 1, 9, '2021-03-10 04:10:10', '2021-03-10 04:10:10', NULL),
(17, 'KELAS 3D', 4, 6, '2021-03-10 04:10:32', '2021-03-10 04:10:32', NULL),
(18, 'KELAS 4A', 8, 35, '2021-03-10 04:11:00', '2021-03-10 04:11:00', NULL),
(19, 'KELAS 4B', 4, 12, '2021-03-10 04:11:27', '2021-03-10 04:11:27', NULL),
(23, 'KELAS ULYA', 7, 32, '2021-03-10 04:14:18', '2021-03-10 04:14:18', NULL),
(24, 'WUSTHO', 5, 22, '2021-03-10 04:15:39', '2021-03-10 04:15:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paket_id` int(11) NOT NULL,
  `kelompok` enum('A','B','C') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `nama_mapel`, `paket_id`, `kelompok`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Khulashoh Nurul Yakin Jilid 1', 1, 'A', '2021-03-02 15:36:33', '2021-03-10 03:48:50', NULL),
(3, 'Jurumiyah', 6, 'A', '2021-03-10 01:59:12', '2021-03-10 01:59:12', NULL),
(4, 'Lughoh', 7, 'A', '2021-03-10 02:00:20', '2021-03-10 02:00:20', NULL),
(5, 'Aqidatul Awam', 4, 'A', '2021-03-10 02:00:43', '2021-03-10 02:00:43', NULL),
(6, 'Mabadi Fiqih Jilid 1', 1, 'A', '2021-03-10 02:01:44', '2021-03-10 02:01:44', NULL),
(7, 'Mabadi Fiqih Jilid 2', 1, 'A', '2021-03-10 02:01:56', '2021-03-10 02:01:56', NULL),
(8, 'Mabadi Fiqih Jilid 3', 1, 'A', '2021-03-10 02:02:05', '2021-03-10 02:02:05', NULL),
(9, 'Amsilatu Tasrifiyah', 7, 'A', '2021-03-10 02:03:03', '2021-03-10 02:03:03', NULL),
(10, 'Jawahirul Kalamiyah', 4, 'A', '2021-03-10 02:03:31', '2021-03-10 02:03:31', NULL),
(11, 'Akhlaqul Lilbanin Jilid 1', 3, 'A', '2021-03-10 03:02:27', '2021-03-10 03:02:27', NULL),
(12, 'Mabadi Fiqih Jilid 2', 3, 'A', '2021-03-10 03:02:39', '2021-03-10 03:02:39', NULL),
(13, 'Mabadi Fiqih Jilid 3', 3, 'A', '2021-03-10 03:02:54', '2021-03-10 03:02:54', NULL),
(14, 'Akhlaqul Lilbanat Jilid 1', 3, 'A', '2021-03-10 03:03:15', '2021-03-10 03:03:15', NULL),
(15, 'Akhlaqul Lilbanat Jilid 2', 3, 'A', '2021-03-10 03:03:30', '2021-03-10 03:03:30', NULL),
(16, 'Akhlaqul Lilbanat Jilid 3', 3, 'A', '2021-03-10 03:03:50', '2021-03-10 03:03:50', NULL),
(17, 'Tuhfatul Athfal', 5, 'A', '2021-03-10 03:04:31', '2021-03-10 03:04:31', NULL),
(18, 'Alala', 3, 'A', '2021-03-10 03:04:48', '2021-03-10 03:04:48', NULL),
(19, 'Hidayatus Sibyan', 5, 'A', '2021-03-10 03:05:03', '2021-03-10 03:05:03', NULL),
(21, 'Khulashoh Nurul Yakin Jilid 2', 2, 'A', '2021-03-10 03:06:28', '2021-03-10 03:06:28', NULL),
(22, 'Nadhom Maksud', 7, 'A', '2021-03-10 03:07:19', '2021-03-10 03:07:19', NULL),
(23, 'Badaul Amali', 4, 'A', '2021-03-10 03:07:56', '2021-03-10 03:07:56', NULL),
(24, 'Safinatun Naja', 1, 'A', '2021-03-10 03:08:23', '2021-03-10 03:08:23', NULL),
(25, 'Fathul Mannan', 5, 'A', '2021-03-10 03:08:43', '2021-03-10 03:08:43', NULL),
(26, 'Qowa\'idul I\'rob', 6, 'A', '2021-03-10 03:09:11', '2021-03-10 03:09:11', NULL),
(27, 'Qowaidul I\'lal', 7, 'A', '2021-03-10 03:09:32', '2021-03-10 03:09:32', NULL),
(28, 'Husnul Hamidiyah', 4, 'A', '2021-03-10 03:09:57', '2021-03-10 03:09:57', NULL),
(29, 'Fathul Qorib', 1, 'A', '2021-03-10 03:10:19', '2021-03-10 03:10:19', NULL),
(30, 'Arbain Nawawi', 8, 'A', '2021-03-10 03:11:29', '2021-03-10 03:11:29', NULL),
(31, 'Khulashoh Nurul Yaqin Jilid 3', 2, 'A', '2021-03-10 03:11:54', '2021-03-10 03:11:54', NULL),
(33, 'Imrithi', 6, 'B', '2021-03-10 03:12:14', '2021-03-10 03:12:14', NULL),
(34, 'Riyadhus Sholihin', 3, 'B', '2021-03-10 03:12:37', '2021-03-10 03:12:37', NULL),
(35, 'Sulamutaufiq', 1, 'B', '2021-03-10 03:13:01', '2021-03-10 03:13:01', NULL),
(36, 'Nashoihul Ibad', 8, 'B', '2021-03-10 03:13:20', '2021-03-10 03:13:20', NULL),
(37, 'Alfiyah Ibnu Aqil', 6, 'C', '2021-03-10 03:30:03', '2021-03-10 03:30:03', NULL),
(38, 'Idhotun Nasyiin', 3, 'C', '2021-03-10 03:30:15', '2021-03-10 03:30:15', NULL),
(39, 'Fathul Mu\'in', 1, 'C', '2021-03-10 03:30:30', '2021-03-10 03:30:30', NULL),
(40, 'Mustholah Hadist Kuwait', 8, 'C', '2021-03-10 03:30:43', '2021-03-10 03:30:43', NULL),
(41, 'Akhlaqul Lilbanin Jilid 2', 3, 'A', '2021-03-10 03:44:49', '2021-03-10 03:44:49', NULL),
(42, 'Akhlaqul Lilbanin Jilid 3', 3, 'A', '2021-03-10 03:45:01', '2021-03-10 03:45:01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_12_092809_create_hari_table', 1),
(5, '2020_03_12_092854_create_guru_table', 1),
(6, '2020_03_12_092926_create_absensi_guru_table', 1),
(7, '2020_03_12_092941_create_jadwal_table', 1),
(8, '2020_03_12_092953_create_kehadiran_table', 1),
(9, '2020_03_12_093010_create_kelas_table', 1),
(10, '2020_03_12_093018_create_mapel_table', 1),
(11, '2020_03_12_093027_create_nilai_table', 1),
(12, '2020_03_12_093036_create_paket_table', 1),
(13, '2020_03_12_093050_create_pengumuman_table', 1),
(14, '2020_03_12_093102_create_rapot_table', 1),
(15, '2020_03_12_093117_create_ruang_table', 1),
(16, '2020_03_12_093130_create_siswa_table', 1),
(17, '2020_03_16_102220_create_ulangan_table', 1),
(18, '2020_04_07_094355_create_sikap_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` int(11) NOT NULL,
  `kkm` int(11) NOT NULL,
  `deskripsi_a` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_b` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_c` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi_d` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ket` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'Fiqih', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(2, 'Tarikh', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(3, 'Akhlak', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(4, 'Aqidah', '2021-03-01 04:13:12', '2021-03-01 04:13:12'),
(5, 'Tajwid', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(6, 'Nahwu', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(7, 'Shorof', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(8, 'Hadist', '2021-03-01 04:13:13', '2021-03-01 04:13:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opsi` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `opsi`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'pengumuman', '<p class=\"MsoNoSpacing\" align=\"center\" style=\"text-align: left; line-height: 150%;\"><b><span style=\"font-size:12.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">PROFIL\r\nPONDOK PESANTREN AL MADANI</span></b></p>', '2021-03-01 04:13:12', '2021-03-04 11:13:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rapot`
--

CREATE TABLE `rapot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `p_nilai` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_predikat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_nilai` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_predikat` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ruang` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id`, `nama_ruang`, `created_at`, `updated_at`) VALUES
(1, 'Ruang 01', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(2, 'Ruang 02', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(3, 'Ruang 03', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(4, 'Ruang 04', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(5, 'Ruang 05', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(6, 'Ruang 06', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(7, 'Ruang 07', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(8, 'Ruang 08', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(9, 'Ruang 09', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(10, 'Ruang 10', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(11, 'Ruang 11', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(12, 'Ruang 12', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(13, 'Ruang 13', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(14, 'Ruang 14', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(15, 'Ruang 15', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(16, 'Ruang 16', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(17, 'Ruang 17', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(18, 'Ruang 18', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(19, 'Ruang 19', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(20, 'Ruang 20', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(21, 'Ruang 21', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(22, 'Ruang 22', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(23, 'Ruang 23', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(24, 'Ruang 24', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(25, 'Ruang 25', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(26, 'Ruang 26', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(27, 'Ruang 27', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(28, 'Ruang 28', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(29, 'Ruang 29', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(30, 'Ruang 30', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(31, 'Ruang 31', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(32, 'Ruang 32', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(33, 'Ruang 33', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(34, 'Ruang 34', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(35, 'Ruang 35', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(36, 'Ruang 36', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(37, 'Ruang 37', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(38, 'Ruang 38', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(39, 'Ruang 39', '2021-03-01 04:13:13', '2021-03-01 04:13:13'),
(40, 'Ruang 40', '2021-03-01 04:13:13', '2021-03-01 04:13:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sikap`
--

CREATE TABLE `sikap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `sikap_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sikap_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_induk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_lahir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulangan`
--

CREATE TABLE `ulangan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `ulha_1` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_2` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uts` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ulha_3` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uas` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('Admin','Guru','Siswa','Operator') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `no_induk`, `id_card`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$MtuAJRuW7sOLDV9O8zlo1Ol70uyCaJRK8eXz1ERZjjgPE/fSimu7e', 'Admin', NULL, NULL, NULL, '2021-03-01 04:13:14', '2021-03-01 04:13:14', NULL),
(2, 'adi', 'sahruladiamanatulloh00@gmail.com', NULL, '$2y$10$HVJZqqFGaVXRVqbty6rSLeAdV8IpMzR.mDVBxGIE6KoZjAnBiO/k6', 'Operator', NULL, NULL, NULL, '2021-03-01 04:26:42', '2021-03-01 04:26:42', NULL),
(4, 'Sahrul Adi Amanatulloh', 'Amanatulloh00@gmail.com', NULL, '$2y$10$e77UvHe9G/Fp77bpOotlNuOBWb4Mek3MFQyxpPo8x8x7tgTaaRvYG', 'Guru', NULL, '00001', NULL, '2021-03-02 15:42:28', '2021-03-02 15:42:28', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rapot`
--
ALTER TABLE `rapot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sikap`
--
ALTER TABLE `sikap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi_guru`
--
ALTER TABLE `absensi_guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rapot`
--
ALTER TABLE `rapot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `sikap`
--
ALTER TABLE `sikap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ulangan`
--
ALTER TABLE `ulangan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
