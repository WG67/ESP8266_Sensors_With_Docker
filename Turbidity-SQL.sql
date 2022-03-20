-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2022 at 05:23 PM
-- Server version: 10.5.12-MariaDB-0+deb11u1
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Turbidity`
--

-- --------------------------------------------------------

--
-- Table structure for table `SensorData`
--

CREATE TABLE `SensorData` (
  `id` int(6) UNSIGNED NOT NULL,
  `sensor` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `value1` varchar(10) DEFAULT NULL,
  `value2` varchar(10) DEFAULT NULL,
  `value3` varchar(10) DEFAULT NULL,
  `reading_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SensorData`
--

INSERT INTO `SensorData` (`id`, `sensor`, `location`, `value1`, `value2`, `value3`, `reading_time`) VALUES
(423, 'Turbidity', 'Chain-Bridge', '156', '9', '', '2022-03-20 11:04:40'),
(424, 'Turbidity', 'Chain-Bridge', '125', '8', '', '2022-03-20 11:04:50'),
(425, 'Turbidity', 'Chain-Bridge', '173', '10', '', '2022-03-20 11:05:01'),
(426, 'Turbidity', 'Chain-Bridge', '147', '9', '', '2022-03-20 11:05:12'),
(427, 'Turbidity', 'Chain-Bridge', '107', '8', '', '2022-03-20 11:05:23'),
(428, 'Turbidity', 'Chain-Bridge', '181', '8', '', '2022-03-20 11:05:33'),
(429, 'Turbidity', 'Chain-Bridge', '126', '10', '', '2022-03-20 11:05:44'),
(430, 'Turbidity', 'Chain-Bridge', '190', '9', '', '2022-03-20 11:05:54'),
(431, 'Turbidity', 'Chain-Bridge', '179', '9', '', '2022-03-20 11:06:05'),
(432, 'Turbidity', 'Chain-Bridge', '112', '10', '', '2022-03-20 11:06:15'),
(433, 'Turbidity', 'Chain-Bridge', '152', '9', '', '2022-03-20 11:06:26'),
(434, 'Turbidity', 'Chain-Bridge', '108', '9', '', '2022-03-20 11:06:36'),
(435, 'Turbidity', 'Chain-Bridge', '188', '10', '', '2022-03-20 11:06:46'),
(436, 'Turbidity', 'Chain-Bridge', '109', '8', '', '2022-03-20 11:06:58'),
(437, 'Turbidity', 'Chain-Bridge', '182', '10', '', '2022-03-20 11:07:09'),
(438, 'Turbidity', 'Chain-Bridge', '146', '9', '', '2022-03-20 11:07:19'),
(439, 'Turbidity', 'Chain-Bridge', '120', '8', '', '2022-03-20 11:07:29'),
(440, 'Turbidity', 'Chain-Bridge', '152', '10', '', '2022-03-20 11:07:39'),
(441, 'Turbidity', 'Chain-Bridge', '178', '9', '', '2022-03-20 11:07:49'),
(442, 'Turbidity', 'Chain-Bridge', '114', '9', '', '2022-03-20 11:08:00'),
(443, 'Turbidity', 'Chain-Bridge', '184', '8', '', '2022-03-20 11:08:10'),
(444, 'Turbidity', 'Chain-Bridge', '119', '10', '', '2022-03-20 11:08:21'),
(445, 'Turbidity', 'Chain-Bridge', '114', '9', '', '2022-03-20 11:08:32'),
(446, 'Turbidity', 'Chain-Bridge', '147', '8', '', '2022-03-20 11:08:43'),
(447, 'Turbidity', 'Chain-Bridge', '184', '8', '', '2022-03-20 11:08:54'),
(448, 'Turbidity', 'Chain-Bridge', '156', '9', '', '2022-03-20 11:09:05'),
(449, 'Turbidity', 'Chain-Bridge', '135', '10', '', '2022-03-20 11:09:15'),
(450, 'Turbidity', 'Chain-Bridge', '105', '8', '', '2022-03-20 11:09:25'),
(451, 'Turbidity', 'Chain-Bridge', '177', '9', '', '2022-03-20 11:09:35'),
(452, 'Turbidity', 'Chain-Bridge', '179', '9', '', '2022-03-20 11:09:46'),
(453, 'Turbidity', 'Chain-Bridge', '113', '8', '', '2022-03-20 11:09:56'),
(454, 'Turbidity', 'Chain-Bridge', '107', '9', '', '2022-03-20 11:10:06'),
(455, 'Turbidity', 'Chain-Bridge', '151', '9', '', '2022-03-20 11:10:16'),
(456, 'Turbidity', 'Chain-Bridge', '131', '9', '', '2022-03-20 11:10:26'),
(457, 'Turbidity', 'Chain-Bridge', '110', '10', '', '2022-03-20 11:10:37'),
(458, 'Turbidity', 'Chain-Bridge', '102', '9', '', '2022-03-20 11:10:48'),
(459, 'Turbidity', 'Chain-Bridge', '180', '9', '', '2022-03-20 11:10:58'),
(460, 'Turbidity', 'Chain-Bridge', '192', '9', '', '2022-03-20 11:11:09'),
(461, 'Turbidity', 'Chain-Bridge', '171', '8', '', '2022-03-20 11:11:20'),
(462, 'Turbidity', 'Chain-Bridge', '125', '8', '', '2022-03-20 11:11:31'),
(463, 'Turbidity', 'Chain-Bridge', '196', '10', '', '2022-03-20 11:11:42'),
(464, 'Turbidity', 'Chain-Bridge', '188', '9', '', '2022-03-20 11:11:52'),
(465, 'Turbidity', 'Chain-Bridge', '168', '8', '', '2022-03-20 11:12:02'),
(466, 'Turbidity', 'Chain-Bridge', '140', '10', '', '2022-03-20 11:12:12'),
(467, 'Turbidity', 'Chain-Bridge', '174', '9', '', '2022-03-20 11:12:22'),
(468, 'Turbidity', 'Chain-Bridge', '190', '9', '', '2022-03-20 11:12:32'),
(469, 'Turbidity', 'Chain-Bridge', '101', '9', '', '2022-03-20 11:12:43'),
(470, 'Turbidity', 'Chain-Bridge', '105', '9', '', '2022-03-20 11:12:53'),
(471, 'Turbidity', 'Chain-Bridge', '197', '8', '', '2022-03-20 11:13:03'),
(472, 'Turbidity', 'Chain-Bridge', '188', '8', '', '2022-03-20 11:13:14'),
(473, 'Turbidity', 'Chain-Bridge', '151', '10', '', '2022-03-20 11:13:24'),
(474, 'Turbidity', 'Chain-Bridge', '145', '8', '', '2022-03-20 11:13:35'),
(475, 'Turbidity', 'Chain-Bridge', '118', '8', '', '2022-03-20 11:13:46'),
(476, 'Turbidity', 'Chain-Bridge', '121', '9', '', '2022-03-20 11:13:57'),
(477, 'Turbidity', 'Chain-Bridge', '138', '8', '', '2022-03-20 11:14:07'),
(478, 'Turbidity', 'Chain-Bridge', '186', '9', '', '2022-03-20 11:14:17'),
(479, 'Turbidity', 'Chain-Bridge', '121', '9', '', '2022-03-20 11:14:28'),
(480, 'Turbidity', 'Chain-Bridge', '147', '8', '', '2022-03-20 11:14:38'),
(481, 'Turbidity', 'Chain-Bridge', '141', '9', '', '2022-03-20 11:14:48'),
(482, 'Turbidity', 'Chain-Bridge', '193', '9', '', '2022-03-20 11:14:59'),
(483, 'Turbidity', 'Chain-Bridge', '134', '10', '', '2022-03-20 11:15:09'),
(484, 'Turbidity', 'Chain-Bridge', '139', '10', '', '2022-03-20 11:15:19'),
(485, 'Turbidity', 'Chain-Bridge', '101', '10', '', '2022-03-20 11:15:29'),
(486, 'Turbidity', 'Chain-Bridge', '152', '10', '', '2022-03-20 11:15:39'),
(487, 'Turbidity', 'Chain-Bridge', '198', '10', '', '2022-03-20 11:15:50'),
(488, 'Turbidity', 'Chain-Bridge', '156', '9', '', '2022-03-20 11:16:01'),
(489, 'Turbidity', 'Chain-Bridge', '127', '9', '', '2022-03-20 11:16:12'),
(490, 'Turbidity', 'Chain-Bridge', '122', '10', '', '2022-03-20 11:16:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SensorData`
--
ALTER TABLE `SensorData`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `SensorData`
--
ALTER TABLE `SensorData`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
