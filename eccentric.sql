-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 02:26 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eccentric`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `group_name`, `role`) VALUES
(1, 'admin1', 'admin1', 'hr', 'admin'),
(2, 'admin2', 'admin2', 'hr', 'admin'),
(3, 'leader1', 'leader1', 'software', 'leader'),
(4, 'leader2', 'leader2', 'website', 'leader'),
(5, 'developer1', 'developer1', 'software', 'developer'),
(6, 'developer2', 'developer2', 'software', 'developer'),
(7, 'developer3', 'developer3', 'website', 'developer'),
(8, 'developer4', 'developer4', 'website', 'developer'),
(9, 'client1', 'client1', 'client', 'client'),
(10, 'client2', 'client2', 'client', 'client'),
(11, 'client3', 'client3', 'client', 'client'),
(12, 'client4', 'client4', 'client', 'client'),
(13, 'developer5', 'developer5', 'software', 'developer'),
(14, 'leader3', 'leader', 'game', 'leader'),
(15, 'gamer1', 'gamer1', 'game', 'developer'),
(17, 'employee1', 'employee1', 'website', 'developer'),
(18, 'user1', 'user1', 'client', 'client');

-- --------------------------------------------------------

--
-- Table structure for table `view_by`
--

CREATE TABLE `view_by` (
  `id` int(11) NOT NULL,
  `f_work` int(11) NOT NULL,
  `group_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `view_by`
--

INSERT INTO `view_by` (`id`, `f_work`, `group_name`, `username`) VALUES
(1, 1, '', 'client1'),
(2, 1, '', 'developer1'),
(3, 2, '', 'developer1'),
(4, 1, '', 'developer5'),
(5, 2, '', 'developer5'),
(6, 1, '', 'developer1'),
(7, 2, '', 'developer1'),
(8, 1, '', 'developer1'),
(9, 2, '', 'developer1'),
(10, 1, 'software', 'developer1'),
(11, 2, 'software', 'developer1'),
(12, 1, 'client', 'client1'),
(13, 2, 'client', 'client2'),
(14, 1, 'software', 'developer1'),
(15, 2, 'software', 'developer1'),
(16, 3, 'website', 'developer3'),
(17, 3, 'website', 'developer3');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `client_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `work` text COLLATE utf8_unicode_ci NOT NULL,
  `group_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `leader_comments` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_approved` int(11) NOT NULL DEFAULT 0,
  `admin_by` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `leader_approved` int(11) NOT NULL DEFAULT 0,
  `leader_by` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `client_name`, `work`, `group_name`, `description`, `leader_comments`, `admin_approved`, `admin_by`, `leader_approved`, `leader_by`, `date`) VALUES
(1, 'client1', 'Billing Software ', 'software', 'Billing Software \r\nwith GST', 'billing', 1, 'admin1', 1, 'leader1', '2020-03-10 01:09:42'),
(2, 'client2', 'System Software', 'software', 'systm', 'System Software', 1, '0', 1, 'leader1', '2020-03-10 00:24:32'),
(3, 'user1', 'Blog Site', 'website', 'Web APP', 'web site', 1, 'admin1', 1, 'leader2', '2020-03-10 01:10:13'),
(4, 'client1', 'Pokemon game', 'game', 'Game', '', 0, '', 0, '', '2020-03-10 01:13:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `view_by`
--
ALTER TABLE `view_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `view_by`
--
ALTER TABLE `view_by`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
