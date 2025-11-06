-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2025 pada 01.52
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman_prasarana`
--

CREATE TABLE `detail_peminjaman_prasarana` (
  `id_detail_prasarana` varchar(20) NOT NULL,
  `id_peminjaman` varchar(20) NOT NULL,
  `id_pengembalian` varchar(20) NOT NULL,
  `id_prasarana` varchar(20) NOT NULL,
  `luas` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_peminjaman_sarana`
--

CREATE TABLE `detail_peminjaman_sarana` (
  `id_detail_sarana` varchar(20) NOT NULL,
  `id_peminjaman` varchar(20) NOT NULL,
  `id_pengembalian` varchar(20) NOT NULL,
  `id_sarana` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_satuan` varchar(20) NOT NULL,
  `tempat_penyimpanan` varchar(255) NOT NULL,
  `kondisi_peminjaman` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penerimaan_barang`
--

CREATE TABLE `detail_penerimaan_barang` (
  `id_detail_penerimaan` varchar(20) NOT NULL,
  `id_penerimaan` varchar(20) DEFAULT NULL,
  `id_sarana` varchar(20) DEFAULT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_satuan` varchar(20) DEFAULT NULL,
  `harga_beli` int(20) DEFAULT NULL,
  `jumlah_diterima` int(11) DEFAULT 1,
  `kondisi_diterima` enum('Baik','Rusak Ringan','Rusak Parah') DEFAULT 'Baik',
  `umur_ekonomis` int(11) NOT NULL,
  `nilai_residu` int(20) NOT NULL,
  `tanggal_mulai_penyusutan` date NOT NULL,
  `nilai_penyusutan_tahunan` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_penerimaan_barang`
--

INSERT INTO `detail_penerimaan_barang` (`id_detail_penerimaan`, `id_penerimaan`, `id_sarana`, `kode_barang`, `id_kategori`, `id_satuan`, `harga_beli`, `jumlah_diterima`, `kondisi_diterima`, `umur_ekonomis`, `nilai_residu`, `tanggal_mulai_penyusutan`, `nilai_penyusutan_tahunan`, `created_at`, `updated_at`) VALUES
('DTR00001', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000001', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00002', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000002', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00003', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000003', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00004', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000004', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00005', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000005', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00006', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000006', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00007', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000007', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00008', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000008', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00009', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000009', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00010', 'PNM251025001', 'BRGSAR00001', 'BRGKOM000010', 'KTGBRGSR0001', 'STNBRG000001', 20000000, 1, 'Baik', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('DTR00011', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000011', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00012', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000012', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00013', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000013', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00014', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000014', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00015', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000015', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00016', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000016', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00017', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000017', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00018', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000018', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00019', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000019', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00020', 'PNM251025002', 'BRGSAR00001', 'BRGKOM000020', 'KTGBRGSR0001', 'STNBRG000001', 25000000, 1, 'Baik', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('DTR00021', 'PNM251025003', 'BRGSAR00001', 'BRGKOM000021', 'KTGBRGSR0001', 'STNBRG000001', 5000000, 1, 'Baik', 5, 500000, '2025-10-25', 900000, '2025-10-25 08:58:27', '2025-10-25 08:58:27'),
('DTR00022', 'PNM251025003', 'BRGSAR00001', 'BRGKOM000022', 'KTGBRGSR0001', 'STNBRG000001', 5000000, 1, 'Baik', 5, 500000, '2025-10-25', 900000, '2025-10-25 08:58:27', '2025-10-25 08:58:27'),
('DTR00023', 'PNM251025003', 'BRGSAR00001', 'BRGKOM000023', 'KTGBRGSR0001', 'STNBRG000001', 5000000, 1, 'Baik', 5, 500000, '2025-10-25', 900000, '2025-10-25 08:58:27', '2025-10-25 08:58:27'),
('DTR00024', 'PNM251025003', 'BRGSAR00001', 'BRGKOM000024', 'KTGBRGSR0001', 'STNBRG000001', 5000000, 1, 'Baik', 5, 500000, '2025-10-25', 900000, '2025-10-25 08:58:27', '2025-10-25 08:58:27'),
('DTR00025', 'PNM251025003', 'BRGSAR00001', 'BRGKOM000025', 'KTGBRGSR0001', 'STNBRG000001', 5000000, 1, 'Baik', 5, 500000, '2025-10-25', 900000, '2025-10-25 08:58:27', '2025-10-25 08:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengeluaran_barang`
--

CREATE TABLE `detail_pengeluaran_barang` (
  `id_detail_pengeluaran` varchar(12) NOT NULL,
  `id_pengeluaran` varchar(12) NOT NULL,
  `id_sarana` varchar(12) NOT NULL,
  `kode_barang` varchar(12) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_satuan` varchar(12) DEFAULT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `tempat_penyimpanan` varchar(255) DEFAULT NULL,
  `umur_ekonomis` int(11) DEFAULT NULL,
  `nilai_residu` int(11) DEFAULT NULL,
  `tanggal_mulai_penyusutan` date DEFAULT NULL,
  `nilai_penyusutan_tahunan` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_pengeluaran_barang`
--

INSERT INTO `detail_pengeluaran_barang` (`id_detail_pengeluaran`, `id_pengeluaran`, `id_sarana`, `kode_barang`, `nama_barang`, `id_satuan`, `jumlah`, `harga_beli`, `tempat_penyimpanan`, `umur_ekonomis`, `nilai_residu`, `tanggal_mulai_penyusutan`, `nilai_penyusutan_tahunan`, `created_at`, `updated_at`) VALUES
('DPB0001', 'PGL251025001', '', 'BRGKOM000020', 'Komputer', 'STNBRG000001', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-25 09:47:38', '2025-10-25 09:47:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_sarana`
--

CREATE TABLE `detail_sarana` (
  `id_detail_sarana` varchar(20) NOT NULL,
  `id_sarana` varchar(20) DEFAULT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `id_penerimaan` varchar(20) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `kondisi` enum('Baik','Rusak Ringan','Rusak Parah') DEFAULT NULL,
  `tempat_penyimpanan` varchar(255) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status_sarana` enum('Tersedia','Dipinjam','Pending') NOT NULL DEFAULT 'Tersedia',
  `umur_ekonomis` int(11) NOT NULL,
  `nilai_residu` int(20) NOT NULL,
  `tanggal_mulai_penyusutan` date NOT NULL,
  `nilai_penyusutan_tahunan` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_sarana`
--

INSERT INTO `detail_sarana` (`id_detail_sarana`, `id_sarana`, `kode_barang`, `id_penerimaan`, `harga_beli`, `kondisi`, `tempat_penyimpanan`, `jumlah`, `status_sarana`, `umur_ekonomis`, `nilai_residu`, `tanggal_mulai_penyusutan`, `nilai_penyusutan_tahunan`, `created_at`, `updated_at`) VALUES
('', 'BRGSAR00001', 'BRGKOM000021', '', 0, 'Baik', 'Gudang', NULL, 'Tersedia', 0, 0, '0000-00-00', 0, '2025-10-25 09:47:38', '2025-10-25 09:47:38'),
('DTS0001', 'BRGSAR00001', 'BRGKOM000001', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0002', 'BRGSAR00001', 'BRGKOM000002', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0003', 'BRGSAR00001', 'BRGKOM000003', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0004', 'BRGSAR00001', 'BRGKOM000004', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0005', 'BRGSAR00001', 'BRGKOM000005', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0006', 'BRGSAR00001', 'BRGKOM000006', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0007', 'BRGSAR00001', 'BRGKOM000007', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0008', 'BRGSAR00001', 'BRGKOM000008', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0009', 'BRGSAR00001', 'BRGKOM000009', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0010', 'BRGSAR00001', 'BRGKOM000010', 'PNM251025001', 20000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 3000000, '2025-10-25 08:55:11', '2025-10-25 08:55:11'),
('DTS0011', 'BRGSAR00001', 'BRGKOM000011', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0012', 'BRGSAR00001', 'BRGKOM000012', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0013', 'BRGSAR00001', 'BRGKOM000013', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0014', 'BRGSAR00001', 'BRGKOM000014', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0015', 'BRGSAR00001', 'BRGKOM000015', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0016', 'BRGSAR00001', 'BRGKOM000016', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0017', 'BRGSAR00001', 'BRGKOM000017', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0018', 'BRGSAR00001', 'BRGKOM000018', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16'),
('DTS0019', 'BRGSAR00001', 'BRGKOM000019', 'PNM251025002', 25000000, 'Baik', 'Gudang Elektronik', 1, 'Tersedia', 5, 5000000, '2025-10-25', 4000000, '2025-10-25 08:57:16', '2025-10-25 08:57:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(12) NOT NULL,
  `nama_kategori` enum('Sarana','Prasarana') NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `jenis`, `keterangan`, `created_at`, `updated_at`) VALUES
('KTGBRGPR0001', 'Prasarana', 'Gudang', 'ssss', '2025-10-23 02:52:00', '2025-10-23 02:52:00'),
('KTGBRGPR0002', 'Prasarana', 'kantor', '', '2025-10-23 02:52:10', '2025-10-23 02:52:10'),
('KTGBRGSR0001', 'Sarana', 'Elektronik', 'KOMPUTER DKK\\r\\n', '2025-10-23 14:42:34', '2025-10-23 14:42:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` varchar(20) NOT NULL,
  `id_pengguna` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_peminjaman` enum('Terverifikasi','Belum Verifikasi','Ditolak') DEFAULT 'Belum Verifikasi',
  `keterangan_peminjam` text NOT NULL,
  `keterangan_admin` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerimaan`
--

CREATE TABLE `penerimaan` (
  `id_penerimaan` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_penerimaan` date DEFAULT NULL,
  `nama_kategori` enum('Sarana','Prasarana') NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `tempat_transit` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerimaan`
--

INSERT INTO `penerimaan` (`id_penerimaan`, `nama_barang`, `foto`, `tanggal_penerimaan`, `nama_kategori`, `jenis`, `tempat_transit`, `keterangan`, `created_at`, `updated_at`) VALUES
('PNM251025001', 'Komputer', 'penerimaan_PNM251025001_1761382494.jpg', '2025-10-25', 'Sarana', 'Elektronik', 'Gudang Elektronik', 'dadadad', '2025-10-25 08:54:54', '2025-10-25 08:54:54'),
('PNM251025002', 'Komputer', 'penerimaan_PNM251025002_1761382612.png', '2025-10-25', 'Sarana', 'Elektronik', 'Gudang Elektronik', 'afbdfg', '2025-10-25 08:56:52', '2025-10-25 08:56:52'),
('PNM251025003', 'Komputer', 'penerimaan_PNM251025003_1761382707.jpg', '2025-10-25', 'Sarana', 'Elektronik', 'Gudang Elektronik', 'aghf', '2025-10-25 08:58:27', '2025-10-25 08:58:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` varchar(12) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `alasan_pengeluaran` varchar(12) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tanggal_pengeluaran`, `alasan_pengeluaran`, `keterangan`, `created_at`, `updated_at`) VALUES
('PGL251025001', '2025-10-25', 'Rusak Berat', 'ff', '2025-10-25 09:27:47', '2025-10-25 09:47:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` varchar(20) NOT NULL,
  `id_peminjaman` varchar(20) NOT NULL,
  `kategori` enum('Sarana','Prasarana') NOT NULL DEFAULT 'Prasarana',
  `id_pengguna` varchar(20) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_pengembalian` enum('Terverifikasi','Belum Verifikasi') DEFAULT 'Belum Verifikasi',
  `status_ketepatan` enum('Tepat Waktu','Terlambat') DEFAULT 'Tepat Waktu',
  `keterangan_peminjam` text NOT NULL,
  `keterangan_admin` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat` text DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `nip_pengguna` varchar(30) DEFAULT NULL,
  `role_pengguna` enum('Kepala Sekolah','Guru','Admin') DEFAULT 'Guru',
  `foto` varchar(255) DEFAULT NULL,
  `status_verifikasi` enum('Terverifikasi','Belum Terverifikasi') DEFAULT 'Belum Terverifikasi',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `password`, `email`, `no_hp`, `nama`, `jenis_kelamin`, `alamat`, `jabatan`, `nip_pengguna`, `role_pengguna`, `foto`, `status_verifikasi`, `created_at`, `updated_at`) VALUES
('PGNADM000001', 'aziz', '$2y$10$3waN6E2KnAIYZJWV82F7I.wQB877jKx3bgsJB1a15IvrTjMzAh9ma', 'admin@gmail.com', '012345678910', 'MOH. ABDUL AZIZ', 'Laki-Laki', 'Djakarta', 'Kepala Kurikulum', '012345678910', 'Admin', 'user_PGN0003_1759155170.png', 'Terverifikasi', '2025-09-21 03:58:14', '2025-10-23 10:33:50'),
('PGNGUR000001', 'zyandru', '$2y$10$nr5htHaO6ORvhNBonI31.OpIqwPhAFZYgjjOp15FSo50d/0sLHUY2', 'kepalasekolah@gmail.com', '012345678910', 'Zyandru Kautsar', 'Laki-Laki', 'sss', 'Naoimi', '11111', 'Guru', '', 'Terverifikasi', '2025-10-19 08:10:26', '2025-10-24 06:28:47'),
('PGNKPS000001', 'kautsar', '$2y$10$fpxvVEYXQZWaY8SoNBpU4eb8nB/WLo8Lzek0TKGoMeaSojZ2X3Pku', 'guru@gmail.com', '012345678910', 'Muhammad Zyandru Kautsar', 'Laki-Laki', 'Bandung', 'Kepala Lab Komputer', '012345678910', 'Kepala Sekolah', 'user_PGN0006_1760015122.jpg', 'Terverifikasi', '2025-09-30 23:11:04', '2025-10-23 21:41:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prasarana`
--

CREATE TABLE `prasarana` (
  `id_prasarana` varchar(20) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama_prasarana` varchar(255) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `kondisi` enum('Baik','Rusak Ringan','Rusak Parah') NOT NULL,
  `status_prasarana` enum('Dipinjam','Tersedia','Pending') NOT NULL DEFAULT 'Tersedia',
  `luas` int(11) DEFAULT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prasarana`
--

INSERT INTO `prasarana` (`id_prasarana`, `kategori`, `jenis`, `nama_prasarana`, `foto`, `kondisi`, `status_prasarana`, `luas`, `keterangan`, `created_at`, `updated_at`) VALUES
('BRGPRAS00001', 'Prasarana', 'kantor', 'Gudang Elektronik', '', 'Baik', 'Tersedia', 5, '5555', '2025-10-23 03:20:21', '2025-10-23 03:20:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sarana`
--

CREATE TABLE `sarana` (
  `id_sarana` varchar(20) NOT NULL,
  `id_kategori` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_satuan` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sarana`
--

INSERT INTO `sarana` (`id_sarana`, `id_kategori`, `foto`, `nama_barang`, `id_satuan`, `created_at`, `updated_at`) VALUES
('BRGSAR00001', 'KTGBRGSR0001', 'penerimaan_PNM251025003_1761382707.jpg', 'Komputer', 'STNBRG000001', '2025-10-25 08:54:54', '2025-10-25 08:58:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` varchar(12) NOT NULL,
  `nama_satuan` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`, `keterangan`, `created_at`, `updated_at`) VALUES
('STNBRG000001', 'Unit', 'untuk satuan unit', '2025-10-23 02:50:06', '2025-10-23 02:51:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_peminjaman_prasarana`
--
ALTER TABLE `detail_peminjaman_prasarana`
  ADD PRIMARY KEY (`id_detail_prasarana`),
  ADD KEY `detail_peminjaman_prasarana_ibfk_1` (`id_peminjaman`);

--
-- Indeks untuk tabel `detail_peminjaman_sarana`
--
ALTER TABLE `detail_peminjaman_sarana`
  ADD PRIMARY KEY (`id_detail_sarana`),
  ADD KEY `detail_peminjaman_sarana_ibfk_1` (`id_peminjaman`);

--
-- Indeks untuk tabel `detail_penerimaan_barang`
--
ALTER TABLE `detail_penerimaan_barang`
  ADD PRIMARY KEY (`id_detail_penerimaan`);

--
-- Indeks untuk tabel `detail_pengeluaran_barang`
--
ALTER TABLE `detail_pengeluaran_barang`
  ADD PRIMARY KEY (`id_detail_pengeluaran`);

--
-- Indeks untuk tabel `detail_sarana`
--
ALTER TABLE `detail_sarana`
  ADD PRIMARY KEY (`id_detail_sarana`),
  ADD KEY `detail_sarana_ibfk_1` (`id_sarana`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `penerimaan`
--
ALTER TABLE `penerimaan`
  ADD PRIMARY KEY (`id_penerimaan`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `fk_pengembalian_peminjaman` (`id_peminjaman`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `prasarana`
--
ALTER TABLE `prasarana`
  ADD PRIMARY KEY (`id_prasarana`);

--
-- Indeks untuk tabel `sarana`
--
ALTER TABLE `sarana`
  ADD PRIMARY KEY (`id_sarana`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_peminjaman_prasarana`
--
ALTER TABLE `detail_peminjaman_prasarana`
  ADD CONSTRAINT `detail_peminjaman_prasarana_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_peminjaman_sarana`
--
ALTER TABLE `detail_peminjaman_sarana`
  ADD CONSTRAINT `detail_peminjaman_sarana_ibfk_1` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_sarana`
--
ALTER TABLE `detail_sarana`
  ADD CONSTRAINT `detail_sarana_ibfk_1` FOREIGN KEY (`id_sarana`) REFERENCES `sarana` (`id_sarana`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `fk_pengembalian_peminjaman` FOREIGN KEY (`id_peminjaman`) REFERENCES `peminjaman` (`id_peminjaman`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
