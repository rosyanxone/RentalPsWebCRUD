-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 04:48 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentalps-web`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tahun` int(11) NOT NULL,
  `platform` varchar(80) NOT NULL,
  `console_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `nama`, `tahun`, `platform`, `console_id`) VALUES
(1, 'Metal Gear Solid: The Legacy Collection', 2013, 'Ps 3', 1),
(2, 'Grand Theft Auto V: Special Edition', 2013, 'Ps 3 Ps 4 Ps 5 Xbox One Xbox One X ', 1),
(3, 'Gwent: Iron Judgment', 2019, 'Xbox One Xbox One X ', 2),
(4, 'Darkest Dungeon: The Crimson Court', 2017, 'Ps 4 Xbox One ', 1),
(5, 'Hitman: Game of the Year Edition', 2017, 'Ps 4 Ps 5 Xbox One Xbox One X ', 2),
(6, 'The Witcher 3: Wild Hunt - Game of the Year Edition', 2016, 'Ps 4 Xbox One ', 2),
(7, 'CrossCode', 2018, 'Ps 4 Ps 5 Xbox One Xbox One X ', 2),
(8, 'The Last of Us', 2013, 'Ps 3 Ps 4 Ps 5 ', 1),
(9, 'The Last of Us Part II', 2020, 'Ps 4 Ps 5 ', 1),
(10, 'Cuphead: The Delicious Last Course', 2022, 'Ps 4 Ps 5 Xbox One Xbox One X ', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_console` (`console_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`console_id`) REFERENCES `consoles` (`console_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
