-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 02:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

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
-- Table structure for table `auth_activation_attempts`
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
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Admin'),
(2, 'operator', 'Site Operator'),
(3, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 6),
(1, 7),
(3, 3),
(3, 8),
(3, 9),
(3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
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
-- Dumping data for table `auth_logins`
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
(12, '::1', 'rakhasatria@gmail.com', 10, '2023-01-02 19:26:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
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
-- Table structure for table `auth_tokens`
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
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(255) NOT NULL,
  `jam_datang` datetime DEFAULT NULL,
  `jam_berangakat` datetime DEFAULT NULL,
  `keterangan` text NOT NULL,
  `nama_kapal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `jam_datang`, `jam_berangakat`, `keterangan`, `nama_kapal`) VALUES
(13, '2023-01-20 08:14:00', '2023-02-01 08:14:00', 'Ambil brang', 'KAPAL SELAM'),
(14, '2023-01-26 08:15:00', '2023-01-11 08:15:00', 'Ambil Makanan', 'Kapal Besar'),
(15, '2023-02-04 08:18:00', '2023-01-12 08:18:00', 'dasdasdasd', 'KAPAL SELAMS');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
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
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1672554094, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `perusahaan`, `npwp`, `kontak`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ssss@gmail.com', 'admin123', 'PT SEJAHTRA ABADI', NULL, NULL, '$2y$10$oarc1OhZBom5JcBI9nNoyuN7CzdPqShFl6mX.s9TPnxvjIWn9PaE2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 00:23:21', '2023-01-01 00:23:21', NULL),
(2, 'sssss@gmail.com', 'admin231321', 'PT MANTAP JIWA ', NULL, NULL, '$2y$10$i/nBk.1rXdRPZGJbd47BLumbcg33acBFuM1aQ1x0OGgtJFI98HYMi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 00:24:57', '2023-01-01 00:24:57', NULL),
(3, 'pilyaixavier21@gmail.com', 'syrio22', 'PT BISA MAKAN', NULL, NULL, '$2y$10$nw6dDsgkdv0sxy5SBUb4LODWfJiI23Q5eO3aVGzVI1YubBWcKut6y', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 00:32:29', '2023-01-01 00:32:29', NULL),
(4, 'syriostwark@gmail.com', 'xavierp231', 'PT GURIH ABADI', NULL, NULL, '$2y$10$QvBYHpHMuHP2k9lrjyCIuutR2OP9/f748b3L4OD7f0gbd5feGPuu6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 00:38:46', '2023-01-01 00:38:46', NULL),
(5, 'as2syriostark@gmail.com', 'syrio213123', 'PT GATAU LAGI', NULL, NULL, '$2y$10$8QuLFgPDTp5eqmFIFQbBJeAbZD7TuInSmWnk0ygZgDptOtS8gHE4e', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 00:40:47', '2023-01-01 00:40:47', NULL),
(6, 'pilyassixavier21@gmail.com', 'xavierp21231221', 'bakircomp', 2147483647, 2147483647, '$2y$10$.PxMR1YVimsMf6LS/jPcOeMsO7EY8ZRV1w..pUZVQK/NKVYnllAEu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 00:43:02', '2023-01-01 00:43:02', NULL),
(7, 'pilyaixaviewwr21@gmail.com', 'xavierp4141', '', 0, 231312321, '$2y$10$KHJriMtUxZGszfsaktNcceNkzkPO0Y1frqyyJp4Y7j393i6vCMsLC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 05:47:22', '2023-01-01 05:47:22', NULL),
(8, 'syriostark21@gmail.com', 'xavierp44', 'jajangcamp', 2147483647, 2147483647, '$2y$10$JJNPM4MU.RslcEz1uo8efuVD4ThojCu7R0/bpVMzJ9ufdOIEWLFCm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 06:10:32', '2023-01-01 06:10:32', NULL),
(9, 'rakha@gmail.com', 'rakha212', 'testing', 2147483647, 2147483647, '$2y$10$uoJVRZfLwO2xGfEB/e0xVOtmpcAkqm3PggLLgqoAsVEQ1vjIb9x/O', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-01 23:50:18', '2023-01-01 23:50:18', NULL),
(10, 'rakhasatria@gmail.com', 'rakha', 'testing', 2147483647, 21521611, '$2y$10$QjR0Sd2sQcxHXx5fWDB4feYrX9/0sBKBfzpq75IwYXoqwA2jF2B8a', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-01-02 19:25:57', '2023-01-02 19:25:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
