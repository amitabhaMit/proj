-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 04:12 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `_key` varchar(500) NOT NULL,
  `value` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `_key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'website_name', 'DTech System', '2020-01-03 02:08:25', '2020-01-03 13:08:10'),
(2, 'email', 'muktisms@muktifresh.org', '2020-01-03 02:08:25', '2020-01-03 13:08:10'),
(3, 'phone', '', '2020-01-03 02:08:25', '2020-01-03 13:08:10'),
(5, 'favicon', 'logo.png', '2020-01-03 02:37:05', '2020-01-03 02:37:05'),
(6, 'logo', 'logo.png', '2020-01-03 13:08:10', '2020-01-03 13:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `empid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empid`, `name`) VALUES
(1, 'AAA'),
(2, 'BBB'),
(3, 'CCC');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `usr_fullname` varchar(500) CHARACTER SET latin1 NOT NULL,
  `usr_email` varchar(500) CHARACTER SET latin1 NOT NULL,
  `date_verify` date NOT NULL,
  `i_image` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(500) CHARACTER SET latin1 NOT NULL,
  `usr_group` int(10) NOT NULL,
  `usr_contact` varchar(20) CHARACTER SET latin1 NOT NULL,
  `usr_contact_verify` tinyint(4) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `modified_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usr_fullname`, `usr_email`, `date_verify`, `i_image`, `usr_password`, `usr_group`, `usr_contact`, `usr_contact_verify`, `is_active`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Subhamay Bose', 'subhamaybose@gmail.com', '0000-00-00', '', '$P$BHhGx9PgOUXfc08NbhnB4uGdAvgiVc/', 1, '9681726905', 0, 1, 'subhamaybose@gmail.com', '2019-10-18 15:38:45', '2020-05-04 16:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(10) NOT NULL,
  `group_name` varchar(200) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `modified_by` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `group_name`, `is_active`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, 'subhamaybose@gmail.com', '2020-02-18 07:38:26', '2020-02-18 07:38:26'),
(2, 'Teacher', 1, 'subhamaybose@gmail.com', '2020-02-19 08:33:05', '2020-02-19 08:39:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
