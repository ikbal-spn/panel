-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2023 at 11:40 AM
-- Server version: 10.3.38-MariaDB-0+deb10u1
-- PHP Version: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panel-edit`
--

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `code` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`code`, `createdBy`, `createdAt`) VALUES
('GOmEikR6umSKVOinpaog', 'admin', '2023-04-26 17:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `remembertoken` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `remembertoken`, `ip`, `browser`, `os`, `time`) VALUES
('admin', 'c1a517d41715b56b167c427c3e66d376', '127.0.0.1', 'Chrome', 'Windows 10', 'April 27 th, 13:13'),
('admin', 'ca6d3e19cc3007b5f334e482cb82ebaa', '127.0.0.1', 'Chrome', 'Windows 10', 'April 26 th, 21:57');

-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--

CREATE TABLE `shoutbox` (
  `uid` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoutbox`
--

INSERT INTO `shoutbox` (`uid`, `message`, `time`, `id`) VALUES
(1, 'ShoutBox flushed by an admin.', 'Apr 26, 7:58 pm', 25);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `code` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`code`, `createdBy`, `createdAt`) VALUES
('1m-seaTgRRIKtDReUHEszde', 'admin', '2023-04-26 17:54:55'),
('3m-3gwRSxnKmxgV2Bx6Put5', 'admin', '2023-04-26 17:54:57'),
('Trail-z5IbijJQZhW185yRD6S3', 'admin', '2023-04-26 17:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `status` int(1) NOT NULL DEFAULT 0,
  `version` float NOT NULL DEFAULT 0,
  `news` varchar(255) NOT NULL DEFAULT '0',
  `maintenance` int(1) NOT NULL DEFAULT 0,
  `frozen` int(1) NOT NULL DEFAULT 0,
  `freezingtime` int(13) NOT NULL,
  `invites` int(1) NOT NULL DEFAULT 1,
  `shoutbox` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`status`, `version`, `news`, `maintenance`, `frozen`, `freezingtime`, `invites`, `shoutbox`) VALUES
(0, 1, 'Welcome to znixv2-panel-edit by anditv21!', 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlogs`
--

CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlogs`
--

INSERT INTO `userlogs` (`id`, `username`, `action`, `browser`, `os`, `ip`, `time`) VALUES
(91, 'admin', 'Flushed all logs', 'Chrome', 'Windows 10', '127.0.0.1', 'April 26 th, 20:02'),
(92, 'admin', 'Deleted token c5d4873af74e5a9b4dfce396fe96bcfa', 'Chrome', 'Windows 10', '127.0.0.1', 'April 26 th, 20:02'),
(93, 'admin', 'Login', 'Chrome', 'Windows 10', '127.0.0.1', 'April 26 th, 20:02'),
(94, 'admin', 'Login', 'Chrome', 'Windows 10', '127.0.0.1', 'April 26 th, 21:56'),
(95, 'admin', 'Login', 'Chrome', 'Windows 10', '127.0.0.1', 'April 26 th, 21:57'),
(96, 'admin', 'Login', 'Chrome', 'Windows 10', '127.0.0.1', 'April 27 th, 13:13'),
(97, 'admin', 'Sub freezed by admin', 'Chrome', 'Windows 10', '127.0.0.1', 'April 27 th, 13:26'),
(98, 'admin', 'Sub unfreezed by admin', 'Chrome', 'Windows 10', 'Staff/System', 'April 27 th, 13:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hwid` varchar(255) DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT 0,
  `supp` int(1) NOT NULL DEFAULT 0,
  `sub` date DEFAULT NULL,
  `frozen` int(1) NOT NULL DEFAULT 0,
  `banned` int(1) NOT NULL DEFAULT 0,
  `invitedBy` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `lastIP` varchar(255) DEFAULT NULL,
  `currentLogin` datetime DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `banreason` varchar(255) DEFAULT NULL,
  `resetcount` int(10) DEFAULT 0,
  `lastreset` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `hwid`, `admin`, `supp`, `sub`, `frozen`, `banned`, `invitedBy`, `createdAt`, `lastIP`, `currentLogin`, `lastLogin`, `banreason`, `resetcount`, `lastreset`) VALUES
(1, 'admin', '$2y$10$7wOzYc.AXpXc1nE/b0IqLOsP2w1cK9LZXDUi6hoSyuWBDj3DoBjOK', NULL, 1, 1, '2023-07-15', 0, 0, '', '2022-07-05 22:04:37', '127.0.0.1', '2023-04-27 13:13:32', '2023-04-26 21:57:13', 'none', 11, '2023-04-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `remembertoken` (`remembertoken`);

--
-- Indexes for table `shoutbox`
--
ALTER TABLE `shoutbox`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`freezingtime`);

--
-- Indexes for table `userlogs`
--
ALTER TABLE `userlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `hwid` (`hwid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shoutbox`
--
ALTER TABLE `shoutbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userlogs`
--
ALTER TABLE `userlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
