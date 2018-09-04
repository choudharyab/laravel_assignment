-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2018 at 09:26 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `job` varchar(120) NOT NULL,
  `image_name` varchar(120) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 'Job1 ', 'job1.png', '2018-09-04', '2018-09-04'),
(2, 'Job2', 'job2.png', '2018-09-04', '2018-09-04'),
(3, 'Job3', 'job3.png', '2018-09-04', '2018-09-04'),
(4, 'Job4', 'job4.png', '2018-09-04', '2018-09-04'),
(5, 'Job6', 'job5.png', '2018-09-04', '2018-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `job_with_skills`
--

CREATE TABLE `job_with_skills` (
  `id` int(11) NOT NULL,
  `job_id` int(50) NOT NULL,
  `skill_id` int(50) NOT NULL,
  `related_skills` int(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_with_skills`
--

INSERT INTO `job_with_skills` (`id`, `job_id`, `skill_id`, `related_skills`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 0, '2018-09-04', '2018-09-04'),
(2, 1, 5, 0, '2018-09-04', '2018-09-04'),
(3, 1, 0, 1, '2018-09-04', '2018-09-04'),
(4, 1, 0, 2, '2018-09-04', '2018-09-04'),
(5, 2, 6, 0, '2018-09-04', '2018-09-04'),
(6, 2, 5, 0, '2018-09-04', '2018-09-04'),
(7, 2, 7, 0, '2018-09-04', '2018-09-04'),
(8, 3, 0, 4, '2018-09-04', '2018-09-04'),
(9, 4, 8, 0, '2018-09-04', '2018-09-04'),
(10, 5, 9, 0, '2018-09-04', '2018-09-04'),
(11, 5, 0, 3, '2018-09-04', '2018-09-04'),
(12, 6, 0, 3, '2018-09-04', '2018-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `related_skills`
--

CREATE TABLE `related_skills` (
  `id` int(11) NOT NULL,
  `skill_id` int(50) NOT NULL,
  `related_skill` varchar(120) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `related_skills`
--

INSERT INTO `related_skills` (`id`, `skill_id`, `related_skill`, `created_at`, `updated_at`) VALUES
(1, 7, 'jQuery ', '2018-09-04', '2018-09-04'),
(2, 5, 'Bootstrap', '2018-09-04', '2018-09-04'),
(3, 8, 'Django ', '2018-09-04', '2018-09-04'),
(4, 6, 'HTML5 ', '2018-09-04', '2018-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill` varchar(120) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `created_at`, `updated_at`) VALUES
(1, 'PHP ', '2018-09-04', '2018-09-04'),
(2, 'Java ', '2018-09-04', '2018-09-04'),
(3, '.Net ', '2018-09-04', '2018-09-04'),
(4, 'MySql ', '2018-09-04', '2018-09-04'),
(5, 'CSS ', '2018-09-04', '2018-09-04'),
(6, 'HTML', '2018-09-04', '2018-09-04'),
(7, 'JavaScript ', '2018-09-04', '2018-09-04'),
(8, 'Python ', '2018-09-04', '2018-09-04'),
(9, 'R', '2018-09-04', '2018-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `original_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `looking_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_institute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about_us` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scale_of_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `original_password`, `type`, `looking_for`, `remember_token`, `firstname`, `lastname`, `phone_no`, `location`, `company_institute`, `position`, `website`, `category`, `experience`, `about_us`, `scale_of_company`, `company_size`, `created_at`, `updated_at`) VALUES
(1, 'Anup Choudhary', 'anupc09@gmail.com', '$2y$10$NvlqPZFsXLy.u.Bpus4k9u7p4N5Ihbexws8X1Zh95XfciBjrwv212', '123456', '', '', NULL, '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL),
(2, 'Ram singh', 'ram@gmail.com', '$2y$12$1ey87wNcQqgfRDDofDwrJuMn3JSpAoAmv0m3gK1a9WlnjXMx.hGLW', 'test123', '', '', NULL, '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL),
(3, 'Sita singh', 'sita@gmail.com', '$2y$12$7gi8YHQQlFynGZ5RqMpwPucoBnVMvqCiQih6DOYXhv2o9R2znMaVC', 'sita@123', '', '', 'dcLebted5OhRndxLQo17e8vSzCZhBMqBTVNSlXdJvY7eKvOeIZIdZ6oi1Qxm', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, '2018-09-04 19:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `skill_id` int(50) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `user_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-09-04', '2018-09-04'),
(2, 1, 5, '2018-09-04', '2018-09-04'),
(3, 1, 6, '2018-09-04', '2018-09-04'),
(4, 2, 8, '2018-09-04', '2018-09-04'),
(5, 2, 9, '2018-09-04', '2018-09-04'),
(6, 3, 7, '2018-09-04', '2018-09-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_with_skills`
--
ALTER TABLE `job_with_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_skills`
--
ALTER TABLE `related_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `job_with_skills`
--
ALTER TABLE `job_with_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `related_skills`
--
ALTER TABLE `related_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
