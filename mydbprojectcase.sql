-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Mar 2024 pada 15.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydbprojectcase`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_publish`, `created_at`, `updated_at`) VALUES
(8, 'asperiores', 1, '2024-02-29 08:13:07', '2024-02-15 12:26:22'),
(9, 'et', 0, '2024-01-13 00:49:45', '2024-02-25 13:41:21'),
(10, 'voluptatem', 1, '2023-09-04 05:30:23', '2023-05-14 01:39:50'),
(11, 'et', 0, '2023-11-11 01:44:08', '2024-01-02 05:45:23'),
(12, 'voluptatem', 1, '2023-04-22 12:18:39', '2023-05-04 06:21:30'),
(13, 'officia', 1, '2023-07-31 06:59:11', '2024-03-22 06:12:40'),
(14, 'amet', 0, '2023-06-16 00:32:57', '2023-12-25 21:39:57'),
(15, 'dolorem', 0, '2023-11-20 23:27:53', '2023-04-26 17:36:58'),
(16, 'voluptatem', 1, '2023-05-15 02:26:28', '2023-10-12 05:36:45'),
(17, 'alias', 0, '2023-03-31 10:38:14', '2023-03-31 02:51:16'),
(18, 'qui', 0, '2023-12-27 18:15:02', '2023-05-27 13:56:01'),
(19, 'a', 0, '2023-10-20 16:15:43', '2024-01-31 03:55:17'),
(20, 'quas', 0, '2024-02-06 06:50:39', '2023-07-31 14:24:21'),
(21, 'qui', 0, '2024-03-21 20:22:16', '2024-02-06 15:15:44'),
(22, 'et', 1, '2023-10-22 03:59:41', '2023-07-07 14:31:32'),
(23, 'quas', 1, '2023-04-18 20:24:14', '2023-08-21 04:16:39'),
(24, 'delectus', 0, '2024-02-18 18:25:33', '2023-04-15 01:55:04'),
(25, 'quam', 0, '2023-09-01 18:16:50', '2023-10-11 14:46:20'),
(26, 'voluptatem', 1, '2023-10-13 05:21:15', '2024-03-06 06:18:15'),
(27, 'adipisci', 0, '2023-06-11 06:38:43', '2024-03-10 07:08:27'),
(28, 'tempora', 0, '2023-10-24 03:20:01', '2023-12-15 23:00:41'),
(29, 'ea', 1, '2024-03-25 20:31:51', '2023-05-28 14:12:34'),
(30, 'illo', 0, '2023-11-28 10:31:42', '2023-06-24 07:22:02'),
(31, 'hic', 1, '2023-08-12 13:06:15', '2023-12-07 11:13:57'),
(32, 'qui', 0, '2023-07-12 01:18:16', '2023-10-21 20:32:48'),
(33, 'architecto', 0, '2023-06-23 09:34:25', '2023-12-05 12:36:57'),
(34, 'optio', 0, '2023-06-12 00:27:26', '2024-03-26 23:13:17'),
(35, 'quaerat', 0, '2023-07-18 02:19:19', '2023-10-27 07:06:22'),
(36, 'in', 0, '2024-02-29 15:13:46', '2023-11-22 06:15:46'),
(37, 'cupiditate', 0, '2023-05-17 04:49:28', '2024-03-08 02:34:38'),
(38, 'dolor', 1, '2023-07-07 18:01:34', '2023-04-02 03:58:24'),
(39, 'ducimus', 1, '2023-05-07 17:01:52', '2024-02-09 11:47:53'),
(40, 'at', 1, '2023-12-30 10:36:40', '2024-01-15 09:38:38'),
(41, 'quo', 1, '2023-04-22 12:17:46', '2023-12-10 17:06:02'),
(42, 'aperiam', 0, '2023-04-13 20:18:57', '2023-12-11 00:53:20'),
(43, 'nisi', 1, '2024-02-01 08:28:23', '2023-06-15 11:34:00'),
(44, 'exercitationem', 1, '2024-03-07 13:57:12', '2023-04-01 05:16:36'),
(45, 'facilis', 0, '2023-07-15 04:22:12', '2023-07-06 17:49:47'),
(46, 'tenetur', 0, '2024-01-20 16:22:22', '2024-02-13 17:47:47'),
(47, 'earum', 0, '2023-06-20 08:26:20', '2023-10-10 22:52:47'),
(48, 'architecto', 0, '2023-09-12 23:24:08', '2023-10-23 21:09:53'),
(49, 'laboriosam', 0, '2024-02-13 02:41:01', '2023-10-28 17:21:08'),
(50, 'a', 1, '2024-03-04 03:28:32', '2023-11-24 12:54:01'),
(51, 'provident', 1, '2024-03-17 20:42:22', '2023-06-28 06:26:51'),
(52, 'velit', 0, '2024-02-02 05:25:14', '2023-08-16 17:49:27'),
(53, 'dolorum', 1, '2024-02-12 10:39:24', '2023-09-18 06:32:03'),
(54, 'ut', 0, '2023-05-22 09:17:25', '2023-08-12 07:44:52'),
(55, 'alias', 1, '2023-07-20 11:29:58', '2023-11-24 03:15:59'),
(56, 'aut', 1, '2024-02-05 03:14:01', '2023-11-27 06:35:42'),
(57, 'ea', 0, '2023-08-03 00:55:34', '2023-11-15 19:55:44'),
(58, 'deleniti', 0, '2023-04-04 14:35:57', '2023-04-10 19:33:00'),
(59, 'est', 0, '2023-08-03 14:06:08', '2024-01-27 11:52:39'),
(60, 'consequatur', 1, '2023-07-03 05:35:54', '2023-10-04 11:17:53'),
(61, 'labore', 1, '2023-08-25 14:47:41', '2023-12-15 10:42:24'),
(62, 'tenetur', 1, '2023-10-15 03:11:18', '2023-07-10 15:00:59'),
(63, 'quia', 0, '2023-11-16 04:00:39', '2023-11-29 02:36:11'),
(64, 'est', 0, '2023-12-13 11:42:42', '2023-07-04 17:01:09'),
(65, 'consectetur', 0, '2023-12-03 12:35:51', '2023-08-15 05:35:07'),
(66, 'ab', 1, '2023-10-09 09:10:32', '2024-01-19 17:52:38'),
(67, 'id', 0, '2023-07-06 18:29:00', '2023-09-18 13:05:22'),
(68, 'nesciunt', 0, '2024-02-23 15:11:01', '2023-07-29 11:23:42'),
(69, 'aut', 0, '2023-08-20 21:01:30', '2023-07-08 21:56:24'),
(70, 'id', 0, '2024-03-23 13:31:25', '2024-03-14 06:21:38'),
(71, 'animi', 0, '2023-11-17 00:02:33', '2023-05-05 09:38:05'),
(72, 'sint', 1, '2024-01-26 01:09:55', '2023-11-17 13:27:32'),
(73, 'provident', 1, '2024-01-26 17:57:50', '2023-08-07 09:42:49'),
(74, 'sint', 0, '2023-06-04 03:39:25', '2024-01-20 17:57:37'),
(75, 'laboriosam', 1, '2023-03-28 18:35:46', '2023-09-27 22:13:31'),
(76, 'doloribus', 1, '2024-01-18 01:11:10', '2023-10-02 05:28:03'),
(77, 'deserunt', 1, '2023-09-28 21:05:23', '2024-03-08 18:35:43'),
(78, 'ipsum', 1, '2023-12-04 04:16:44', '2023-06-03 22:37:03'),
(79, 'iusto', 0, '2024-01-05 15:58:15', '2024-03-02 17:59:56'),
(80, 'labore', 1, '2023-05-01 21:03:35', '2023-10-23 19:15:09'),
(81, 'rerum', 0, '2023-07-05 23:12:08', '2023-10-15 06:53:33'),
(82, 'aut', 1, '2023-11-20 01:12:22', '2023-11-07 12:46:34'),
(83, 'veritatis', 0, '2024-03-18 18:05:15', '2023-12-20 23:11:08'),
(84, 'dolorem', 0, '2023-10-01 11:44:36', '2023-12-02 01:49:33'),
(85, 'commodi', 1, '2023-10-13 18:01:10', '2023-07-31 21:53:11'),
(86, 'sunt', 0, '2023-08-16 04:43:45', '2023-12-24 04:48:56'),
(87, 'laborum', 0, '2023-11-11 12:12:14', '2023-11-25 05:25:09'),
(88, 'modi', 0, '2023-07-22 16:03:23', '2024-01-06 12:49:00'),
(89, 'ut', 1, '2023-06-12 17:09:06', '2023-08-30 13:13:43'),
(90, 'fuga', 0, '2024-01-29 22:17:35', '2023-07-21 10:39:38'),
(91, 'enim', 1, '2023-12-25 15:30:59', '2024-02-06 17:57:10'),
(92, 'tempora', 0, '2023-12-09 16:14:09', '2023-04-20 09:47:01'),
(93, 'illum', 0, '2024-02-24 10:46:31', '2023-08-26 10:28:49'),
(94, 'iure', 1, '2024-02-06 07:07:26', '2023-05-09 22:19:46'),
(95, 'perferendis', 1, '2023-08-02 05:52:01', '2023-04-12 13:58:07'),
(96, 'recusandae', 0, '2024-03-21 16:46:31', '2023-11-19 10:35:47'),
(97, 'maiores', 0, '2024-03-18 22:59:02', '2023-07-17 12:29:10'),
(98, 'quibusdam', 1, '2023-05-07 16:14:49', '2023-08-10 18:30:35'),
(99, 'laudantium', 1, '2023-04-05 12:43:29', '2023-11-03 03:21:03'),
(100, 'et', 0, '2023-08-22 16:45:52', '2023-10-01 13:51:13'),
(101, 'porro', 0, '2023-11-11 02:51:32', '2023-10-15 12:16:50'),
(102, 'natus', 1, '2024-01-11 12:58:19', '2024-02-23 04:46:00'),
(103, 'ut', 1, '2023-12-11 08:31:15', '2023-08-03 16:10:37'),
(104, 'dolor', 1, '2023-10-21 14:40:49', '2023-11-09 23:08:06'),
(106, 'Jes1', 0, '2024-03-27 06:21:07', '2024-03-27 06:21:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_22_091250_create_categories_table', 1),
(6, '2024_03_24_131637_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Haidar Shb', 'muhammadhaidarshb@gmail.com', NULL, '$2y$10$VHuG3UZ7RWPE6Vi.6hdxvO23Ylnk0FdsUT8IYkhaTZqG.srqM7xMG', NULL, '2024-03-27 05:30:02', '2024-03-27 05:30:02');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
