-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2022 at 02:56 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorial`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(100) DEFAULT '',
  `content` text,
  `link` varchar(255) DEFAULT '',
  `img` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `link`, `img`) VALUES
(1, '\n      Google Sheets: Free Online Spreadsheet Editor | Google Workspace\n    ', 'Use Google Sheets to create and edit online spreadsheets. Get insights together with secure sharing in real-time and from any device.', 'https://www.google.com/sheets/about/', 'https://kstatic.googleusercontent.com/files/adf55cdf4c7f8fb38efbf8df6c2792660fbeff2d05be05f2ec8e9c265a179b51c64b9679d8aee00e09cad19ce419d90a2d999b82cea4200abbe78c73e6bfaacf'),
(2, 'Gmail: Free, Private & Secure Email | Google Workspace', 'Discover how Gmail keeps your account & emails encrypted, private and under your control with the largest secure email service in the world.', 'https://www.google.com/intl/en-GB/gmail/about/', 'https://www.google.com/gmail/about/static-2.0/images/share-facebook.jpg'),
(3, 'Dropbox - Dropbox Business', 'Store, sync, and share files securely with Dropbox Business, a cloud storage solution loved by employees and trusted by IT teams.', 'https://www.dropbox.com/business/landing-t61fl?_tk=paid_sem_goog_biz_b', 'https://cfl.dropboxstatic.com/static/images/logo_catalog/dropbox_webclip_200_vis.png'),
(4, 'T20 World Cup Cricket Score, Schedule, Latest News, Stats & Videos | Cricbuzz.com', 'Get the T20 World Cup Live Cricket Score, Scorecard, Schedules of International and Domestic cricket matches along with Latest News, Videos and ICC Cricket Rankings of Players on Cricbuzz.', 'https://www.cricbuzz.com/', 'https://www.cricbuzz.com//images/cb_logo.svg'),
(5, 'Live cricket scores, match schedules, latest cricket news, cricket videos', 'Find Live Cricket Scores, Match updates, Fixtures, Results, News, Articles, Video highlights only at ESPNcricinfo. Read Ball by Ball Commentary, Series schedule of all ICC International & Domestic Cricket Team Matches Online.', 'https://www.espncricinfo.com/', 'https://www.espncricinfo.com/static/images/espncricinfo-og.png'),
(6, ' Google Maps ', '', 'https://www.google.com/maps', 'https://maps.google.com/maps/api/staticmap?center=30.8982948%2C75.8710272&zoom=14&size=256x256&language=en&sensor=false&client=google-maps-frontend&signature=_on2FUV_vuN6imjBgqqnD9hJpUk'),
(7, 'Vully 50 Triangle Soft calf Black Size 35', 'The classic vully boots in soft calf leather.', 'https://www.anoncph.com/shop-all/931-5060-vully-calf-black.html', 'https://www.anoncph.com/2438-large_default/vully-calf-black.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
