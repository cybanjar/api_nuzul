-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 10:54 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-nuzul`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_10_19_052409_create_surah_table', 1),
(3, '2020_10_19_122614_create_users_table', 2),
(4, '2020_11_25_032745_create_profile_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `alamat`, `notelp`, `created_at`, `updated_at`) VALUES
(1, 'Sarah', 'Brebes', '02124540', '2020-11-25 08:46:49', '2020-11-25 08:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `surah`
--

CREATE TABLE `surah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `surat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `because` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sanad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isnad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surah`
--

INSERT INTO `surah` (`id`, `surat`, `ayah`, `because`, `index`, `sanad`, `isnad`, `created_at`, `updated_at`) VALUES
(1, 'Al-Fatiha', '1', 'Imam As suyuthi tidak menerangkan penjelasan apapun dalam bukunya terkait Sebab turun surat al-fatihah sengaja tidak memberikan penjelasan', 'ummul quran', 'At-Tirmidzi', '', '2020-10-19 09:54:09', '2020-10-19 11:00:24'),
(2, 'Al-Baqarah', '2', 'Asbannuzulnya', 'ummul quran', 'At-Tirmidzi', '', '2020-10-19 09:55:31', '2020-10-19 12:23:39'),
(4, 'An-Nissa', '3', 'Wanita', '', 'Abu Hurairah', '', '2020-11-25 03:05:23', '2020-11-25 03:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'sarah@gmail.com', '$2y$10$aGFqNMLDrrijglDq0SKRZ.L3RB07mRbQBRZPKGF.ACi/HAIYUe2RS', NULL, '2020-10-19 14:33:55', '2020-10-19 14:33:55'),
(2, 'admin@gmail.com', '$2y$10$5mKyWEMsIW0qP8.jfCndHOGK7n8ohIua6DL8B8dP6crIOqjIPWnwW', 'c8fe0810fb7cbe768491332554465d6eaa5241436511852d6a8032bea8f3ad4cb46d59c03ebc960c', '2020-10-19 14:34:52', '2020-12-07 09:27:57'),
(3, 'admi@gmail.com', '$2y$10$4wbeXwFdoy.l5f/E.G4bbuNeT/4Gcqdg3H2Qz7q8vsmmi8tolA0lu', '67a3b37cda48db8676e31eeac7ee394fa87367d2c7a2c421a34defda30e97aec20bd10c246c1b4b8', '2020-11-25 02:21:36', '2020-11-25 02:33:45'),
(4, 'irfan@gmail.com', '$2y$10$XrIqanrh9Sc4RxDZN5BeQustxtH9C8ziVotRhHtxFzmuw5b8AlNYi', 'd09ded98d9470553088f89a753048f8d29a4c8187f3d6d72bdf39850abcca8739161a1a4bdb5bbd8', '2020-11-25 02:45:09', '2020-11-25 02:45:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_nama_unique` (`nama`);

--
-- Indexes for table `surah`
--
ALTER TABLE `surah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surah`
--
ALTER TABLE `surah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
