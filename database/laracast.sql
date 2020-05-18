-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2020 at 05:51 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laracast`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `email_template_id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`email_template_id`, `from`, `email`, `phone`, `subject`, `email_content`) VALUES
(5, 'Jatin', 'jatinmohane73@gmail.com', '07228883394', 'http://localhost:8000/email-tamplate', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_02_104130_create_order_statuses_table', 1),
(5, '2020_04_02_123859_create_email_templates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_internal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `order_name`, `order_status`, `used_internal`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 'JwW7Hra6oq', 'J5yF7CTeAl', 'W9AMzpLzcA', 'YArTMqbR9q', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(2, '6dSqZhjZKG', 'JPA31LYAVj', 'XfRjzZ8eeD', 'iCJnWNttCY', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(3, 'eAvBNna6JD', 'aZEPdZ8ulx', 'Oedu1QEkMU', 'lewsaovRwb', '2020-04-03 05:06:48', '2020-04-06 06:50:43'),
(4, 'RfF4my31NH', 'wKsODbzmNj', '4ZpvHp2E0m', 'IL6fCZFWNO', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(5, 'I5KfsoDoZI', 'VaMbyrnzqk', 'ZUgnvSgB5D', 'xi0VrGPC8t', '2020-04-03 05:06:48', '2020-04-06 05:59:42'),
(6, '9i19wmowBD', 'O65iDLYBwG', 'XZgXTaABRp', 'HxFNwKL1lT', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(7, 'o6aT1iGvuR', 'NHirvP28jP', 'aZUlj3iP5O', 'c0HUNV47jI', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(8, 'FiQlExqXvK', 'OimKccbhw5', 'gfCBcHxvg0', 'OF2XMY9vOV', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(9, 'uqLH6YD3sa', 'pkPUUWgrCc', '7vPvsOIOoq', 'yv0i5UFD6A', '2020-04-03 05:06:48', '2020-04-03 05:06:48'),
(10, 'PM0zxKAuyu', 'z8iRQZmuVY', 'oBRQCEbtd0', 'xi3nTg5IkC', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(11, 'MoaWERL9sP', 'ejyMmU3ZPo', 'EpOcssBONW', 'BSGL51EDdG', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(12, '0QJhDBLVPX', 'nHkLUpxL5y', 'stDjbSrJwH', 'uhS6PVDiEy', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(15, 'as85fzQISU', 'CXWblX70IU', '43TPpxXihx', '21ntojo0zv', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(16, 'X8peZr3YEf', '0afk6D79OX', 'm8JI2K8JDC', 'WWe17DvfH2', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(17, 'PVKlQFaCiq', 'dy8ITWXCm0', 'D9i13IV57O', '6JSP3wvVHL', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(18, '43qA9ZUcWa', 'fA3MXfyn5A', '8rmztyvNzF', 'mScnrDNRPQ', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(19, 'raw6xW5hh8', 'gyWAoKCODK', 'kPjj003D4M', 'cFnmEltpK9', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(20, 'VriP0wetqC', 'UR9Xtrj4oG', 'SUmx1LLCIo', 'hZ5jiEOIdK', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(21, 'nFazWTnWpB', '9iOWQ70ESz', 'NysHF0Fbbh', 'AiLxGpJSYJ', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(22, 'HKfBHpyGAY', 'ax0rGnVoD5', 'aV6m1Pk1d6', 'sQgEWWPXq3', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(23, 'wfMHJmMj97', 'hkB0UIcfEL', 'iMtIUV5uJI', 'ja93ufWf2U', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(24, 'yB9Gqic5tl', 'aWPLoEBUND', 'cR7kFehHl0', 'IsHKdYzUOk', '2020-04-03 05:06:49', '2020-04-03 05:06:49'),
(25, 'SsEFahEoAp', 'IyZKPkYgvT', 'dGEuaJU1WX', '3kIu5Wl8hp', '2020-04-03 05:06:49', '2020-04-03 05:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
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
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `email_template_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
