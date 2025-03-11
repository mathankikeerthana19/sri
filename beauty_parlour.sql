-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 12:54 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty_parlour`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `service` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `specialRequest` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `phone`, `service`, `date`, `time`, `specialRequest`, `created_at`) VALUES
(1, 'mahes', '8769959435', 'Skin Treatments', '2025-04-11', '4PM-6PM', 'nothing', '2025-03-06 10:12:41'),
(2, 'mahes', '8769959435', 'Hairstyling', '2025-03-21', '1PM-3PM', '', '2025-03-06 10:33:46'),
(3, 'mahes', '8769959435', 'Mehendi', '2025-03-20', '7PM-9PM', '', '2025-03-06 10:42:11'),
(4, 'jenisha', '9967588434', 'Hairstyling', '2025-06-13', '1PM-3PM', '', '2025-03-06 10:44:43'),
(5, 'jeny', '8976895667', 'Skin Treatments', '2025-10-15', '4PM-6PM', '', '2025-03-06 10:50:37'),
(6, 'sri', '6789566789', 'Hairstyling', '2025-03-27', '4PM-6PM', '', '2025-03-06 11:43:06'),
(7, 'megala', '8870434386', 'Mehendi', '2025-07-13', '7PM-9PM', 'nothing', '2025-03-06 11:54:30'),
(8, 'subasri', '9952234736', 'Hairstyling', '2025-03-13', '10AM-12PM', '', '2025-03-06 12:01:36'),
(9, 'priya', '9876544676', 'Mehendi', '2025-03-14', '10AM-12PM', '', '2025-03-06 12:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `service`, `message`, `submission_date`) VALUES
(1, 'Ramalakshmi', 'ramalaxmi2004@gmail.com', 'Mehendi', 'Very nice', '2025-02-25 12:20:31'),
(2, 'Keerthana', 'keerthana@gmail.com', 'Hairstyling', 'Good', '2025-02-25 12:21:23'),
(3, 'Sri', 'sri@gmail.com', 'Hairstyling', 'good', '2025-02-25 12:24:50'),
(4, 'Sri', 'sri@gmail.com', 'Hairstyling', 'good', '2025-02-25 12:25:47'),
(5, 'Sri', 'sri@gmail.com', 'Mehendi', 'ggg', '2025-02-25 12:32:07'),
(6, 'Sri', 'sri@gmail.com', 'Mehendi', 'vvv', '2025-02-25 12:33:27'),
(7, 'Sri', 'sri@gmail.com', 'Hairstyling', 'vv', '2025-02-25 12:45:59'),
(8, 'Riya', 'riya200@gmail.com', 'Bridal Makeup', 'good', '2025-03-01 11:33:17'),
(9, 'krithika', 'krithi@gmail.com', 'Hairstyling', 'good', '2025-03-03 09:43:43'),
(10, 'ranjini', 'ranjini@gmail.com', 'Bridal Makeup', 'good', '2025-03-06 09:05:13'),
(11, 'mahes', 'mahes@gmail.com', 'Hairstyling', 'good', '2025-03-06 10:25:57'),
(12, 'keerthana', 'keerthana@gmail.com', 'Mehendi', 'good', '2025-03-06 11:24:29'),
(13, 'mahes', 'mahes@gmail.com', 'Skin Treatments', 'good', '2025-03-06 11:25:49'),
(14, 'megala', 'megala@gmail.com', 'Mehendi', 'very good', '2025-03-06 11:55:43'),
(15, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:55:58'),
(16, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:56:15'),
(17, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:56:33'),
(18, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:56:48'),
(19, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:58:24'),
(20, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:58:35'),
(21, 'megala', 'megala@gmail.com', 'Mehendi', 'good', '2025-03-06 11:59:54'),
(22, 'subasri', 'subasri@gmail.com', 'Hairstyling', 'good', '2025-03-06 12:01:57'),
(23, 'subasri', 'subasri@gmail.com', 'Hairstyling', 'good', '2025-03-06 12:03:31'),
(24, 'priya', 'priya@gmail.com', 'Mehendi', 'good', '2025-03-06 12:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(25) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`) VALUES
('rishi', 'rishi@gmail.com', '$2y$10$RSmu4tlrt/c38SAQHr'),
('rishi', 'rishi@gmail.com', '$2y$10$kJj15ZZIcqESOudCHg'),
('divya', 'divya@gmail.com', '$2y$10$SaaAWSUrip9ecfUbHb'),
('menaga', 'menaga@gmail.com', '$2y$10$6aFUfxz0eeL.uKpXvM'),
('menaga', 'menaga@gmail.com', '$2y$10$UmGPvALAAiO7u5riHd'),
('menaga', 'menaga@gmail.com', '$2y$10$j.CTqJxWAtuNdtIaLk'),
('jack', 'jack@gmail.com', '$2y$10$CWXJxApp0QHb.L4dia'),
('jack', 'jack@gmail.com', '$2y$10$Ne3S8hzMC3QTQIP9l0'),
('ranjini', 'ranjini@gmail.com', '$2y$10$t3JVBmlqpYyFE1Zz9B'),
('shreya', 'shreya@gmail.com', '$2y$10$4kkhsvdoLAGInqv./J'),
('aarthi', 'aarthi@gmail.com', '$2y$10$7bGweHsVO7Sy72mGLD'),
('aarthi', 'aarthi@gmail.com', '$2y$10$hN7e9YxdR104zC4i35'),
('mahes', 'mahes@gmail.com', '$2y$10$3O4grq8ElcTpPybrnN'),
('mahes', 'mahes@gmail.com', '$2y$10$kfXNukjnYbKYC2u67y'),
('mahes', 'mahes@gmail.com', '$2y$10$FCNTrEO9t3bk8WDwu/'),
('mahes', 'mahes@gmail.com', '$2y$10$TDOMHNYft4sDiWUpcE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
