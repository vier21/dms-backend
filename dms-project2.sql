-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2023 pada 11.20
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms-project2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Admin'),
(2, 'operator', 'Site Operator'),
(3, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 7),
(3, 8),
(3, 11),
(3, 12),
(3, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'pilyassixavier21@gmail.com', 6, '2023-01-01 03:02:16', 1),
(2, '::1', 'syriostark21@gmail.com', 8, '2023-01-01 06:10:47', 1),
(3, '::1', 'syriostark21@gmail.com', 8, '2023-01-01 06:12:59', 1),
(4, '::1', 'syriostark21@gmail.com', 8, '2023-01-01 08:08:20', 1),
(5, '::1', 'rakha@gmail.com', NULL, '2023-01-01 23:51:27', 0),
(6, '::1', 'pilyassixavier21@gmail.com', 6, '2023-01-01 23:52:11', 1),
(7, '::1', 'pilyassixavier21@gmail.com', 6, '2023-01-02 00:05:56', 1),
(8, '::1', 'pilyassixavier21@gmail.com', 6, '2023-01-02 05:26:41', 1),
(9, '::1', 'pilyaixavier21@gmail.com', 3, '2023-01-02 06:54:40', 1),
(10, '::1', 'pilyaixavier21@gmail.com', 3, '2023-01-02 11:26:55', 1),
(11, '::1', 'pilyaixavier21@gmail.com', 3, '2023-01-02 19:11:37', 1),
(12, '::1', 'rakhasatria@gmail.com', 10, '2023-01-02 19:26:13', 1),
(13, '::1', 'rakhasatria@gmail.com', 10, '2023-01-02 19:36:51', 1),
(14, '::1', 'devopssyriostark21@gmail.com', NULL, '2023-01-05 08:38:57', 0),
(15, '::1', 'syriostark21@gmail.com', 8, '2023-01-05 08:39:11', 1),
(16, '::1', 'syriostark21@gmail.com', 8, '2023-01-06 09:23:58', 1),
(17, '::1', 'pilyaixaviewwr21@gmail.com', NULL, '2023-01-07 03:34:17', 0),
(18, '::1', 'pilyaixaviewwr21@gmail.com', NULL, '2023-01-07 03:34:25', 0),
(19, '::1', 'pilyaixaviewwr21@gmail.com', NULL, '2023-01-07 03:34:32', 0),
(20, '::1', 'pilyaixaviewwr21@gmail.com', NULL, '2023-01-07 03:34:42', 0),
(21, '::1', 'syriostark@gmail.com', NULL, '2023-01-07 03:34:53', 0),
(22, '::1', 'syriostark21@gmail.com', 8, '2023-01-07 03:35:03', 1),
(23, '::1', 'syriostark21@gmail.com', 8, '2023-01-07 03:45:12', 1),
(24, '::1', 'xavierpilyai219@gmail.com', 11, '2023-01-07 20:56:23', 1),
(25, '::1', 'xavierpilyai219@gmail.com', 11, '2023-01-08 00:45:57', 1),
(26, '::1', 'xavierpilyai219@gmail.com', 11, '2023-01-08 05:37:53', 1),
(27, '::1', 'syriostark21@gmail.com', 8, '2023-01-10 03:22:29', 1),
(28, '::1', 'xavierpilyai219@gmail.com', 11, '2023-01-10 10:48:42', 1),
(29, '::1', 'pilyassixavier21@gmail.com', NULL, '2023-01-10 11:24:51', 0),
(30, '::1', 'xavierpilyai219@gmail.com', 11, '2023-01-10 11:24:59', 1),
(31, '::1', 'xavierpilyai@gmail.com', 13, '2023-01-10 18:45:27', 1),
(32, '::1', 'xavierpilyai@gmail.com', 13, '2023-01-10 19:24:11', 1),
(33, '::1', 'syriostark21@gmail.com', NULL, '2023-01-11 04:17:01', 0),
(34, '::1', 'xavierpilyai219@gmail.com', 11, '2023-01-11 04:17:28', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(255) NOT NULL,
  `jam_datang` datetime DEFAULT NULL,
  `jam_berangakat` datetime DEFAULT NULL,
  `keterangan` text NOT NULL,
  `nama_kapal` varchar(255) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `jam_datang`, `jam_berangakat`, `keterangan`, `nama_kapal`, `id_user`) VALUES
(14, '2023-01-26 08:15:00', '2023-01-11 08:15:00', 'Ambil Makanan', 'Kapal Kecil', 7),
(15, '2023-02-04 08:18:00', '2023-01-12 08:18:00', 'dasdasdasd', 'KAPAL SELAMS', 8),
(24, '2023-01-07 18:33:00', '2023-01-19 19:48:18', 'sds', 'dsadas', 7),
(32, '2023-01-18 10:00:00', '2023-01-21 12:20:00', 'ambil organ tubuh', 'ST MARINAS', 11),
(33, '2023-01-19 10:24:00', '2023-01-31 10:24:00', 'ambil organ DALAM', 'KAPAL INDUK', 11),
(34, '2023-01-12 10:24:00', '2023-01-27 10:24:00', 'Jangkar Ketinggalann', 'ST MARINASd', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1672554094, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `perusahaan` varchar(255) DEFAULT NULL,
  `npwp` int(255) DEFAULT NULL,
  `kontak` int(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `perusahaan`, `npwp`, `kontak`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'pilyaixaviewwr21@gmail.com', 'xavierp4141', 'PT WALANG SANGITFF', 2312, 231312321, '$2y$10$KHJriMtUxZGszfsaktNcceNkzkPO0Y1frqyyJp4Y7j393i6vCMsLC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 05:47:22', '2023-01-01 05:47:22', NULL),
(8, 'syriostark21@gmail.com', 'xavierp44', 'jajangcamp', 2147483647, 2147483647, '$2y$10$JJNPM4MU.RslcEz1uo8efuVD4ThojCu7R0/bpVMzJ9ufdOIEWLFCm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 06:10:32', '2023-01-10 19:25:37', '2023-01-10 19:25:37'),
(11, 'xavierpilyai219@gmail.com', 'vier21', 'PT GAJAH BERDIRIA', 2147483647, 2147483647, '$2y$10$YhQTixISoq6TfwyPzbvSd.A.eU2PKwyvdbLs/Sb620Ims9nRB4tje', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-07 20:55:38', '2023-01-07 20:55:38', NULL),
(12, 'xavierpilyai219s@gmail.com', 'vier2125', 'PT GAJAH BERDIRIS', 2131232131, 123213421, '$2y$10$eQD0tjWSpb8ffRG0efNW/.RlgsFtYnOX6883qfy9kqQtyMOTK/9eW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-10 11:24:07', '2023-01-10 11:24:07', NULL),
(13, 'xavierpilyai@gmail.com', 'cacas5', 'PT MANTAP JIWA', 2147483647, 2147483647, '$2y$10$Oymptfcfa3r0AmzStTmqa.jm3zj65Bzx9g3/0mTNn3zsUocFfDYhm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-10 18:45:15', '2023-01-10 18:45:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `jadwal_user` (`id_user`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
