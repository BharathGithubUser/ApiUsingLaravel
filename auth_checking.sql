-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 02, 2018 at 03:37 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_checking`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000001_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bharath', 'b@g.c', '123456', '$2y$10$SlVrvKIh1g6pu8GIo2caXuCQK5IyS15QxBV8ojvy2oqSxZ7xo00.G', '92syf6sSIupWmnFydMbS7alzC75OkwuzXN32c9zootz78CoKgi8gF5VL1xMk', '2018-01-29 05:26:23', '2018-01-29 05:26:23'),
(2, 'Bharath', 'b@g.com', '123456789', '$2y$10$kSW0XA9d.RRU/hWFuv/r..QmtIuwKoAKPUBKqAFdu/uSgEld6946C', NULL, '2018-01-30 07:33:04', '2018-01-30 07:33:04'),
(3, 'Bharath', 'b@g.c1', '123456789', '$2y$10$rROtGmrOSjvG99TycAjeC.6JJVwJR3QkMRuSMLPdpnZhFobim6fkK', NULL, '2018-01-30 07:45:12', '2018-01-30 07:45:12'),
(4, 'Bharath', 'b@g.c2', '123456789', '$2y$10$bEWDguER9J8N7WGj9TKHO.UNhh4Q.9BuxFetITQ5IevjtDibslV1.', NULL, '2018-01-30 07:46:29', '2018-01-30 07:46:29'),
(5, 'Bharath', 'b@g.c3', '123456789', '$2y$10$wpIfu1q9dyWsTjbJV72pt.2dm0Q1mNA4K/ZavLRYZlcfF.XCXm.re', NULL, '2018-01-30 07:51:41', '2018-01-30 07:51:41'),
(6, 'Bharath', 'b@g.c4', '123456789', '$2y$10$hgf2MHxBOVthwnjXdbWOBOwkhc7pL7sh36V9EdoeNiY.Rg20e6hE2', NULL, '2018-01-30 07:52:31', '2018-01-30 07:52:31'),
(7, 'Bharath', 'b@g.c5', '123456789', '$2y$10$qFBdL.hR1ihIKVTyot7.UObn/V4ydnnf36vuI6UpfJaMAjly28Ssq', NULL, '2018-01-30 07:55:31', '2018-01-30 07:55:31'),
(8, 'Bharath', 'b@g.c6', '123456789', '$2y$10$HhA4wL4.MZXvrsHWHI1DsuOZHpIQzT2rkXjLZ1tB7f1O9HgiIaOqS', NULL, '2018-01-30 08:00:57', '2018-01-30 08:00:57'),
(9, 'Bharath', 'b@g.c7', '123456789', '$2y$10$qrDEp4GP9dm3me/atCzqU.FlnoAx2BKktr0CDpjhTRH49Vn0hRBVG', NULL, '2018-01-31 00:38:24', '2018-01-31 00:38:24'),
(10, 'Bharath', 'b@g.c8', '123456789', '$2y$10$jGfJuEano473lFuGUilerefLLmkU.QczWEPAeP3.oddLa.hm4hxou', NULL, '2018-01-31 00:39:15', '2018-01-31 00:39:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
