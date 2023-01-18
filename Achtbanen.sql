-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 10 jan 2023 om 06:09
-- Serverversie: 5.7.31
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php-pdo-crud-proeftoets`
--
CREATE DATABASE IF NOT EXISTS `php-pdo-crud-herkansing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php-pdo-crud-herkansing`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Achtbaan`
--

DROP TABLE IF EXISTS `Achtbaan`;
CREATE TABLE IF NOT EXISTS `Achtbaan` (
  `Id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NaamAchtbaan` varchar(255) NOT NULL,
  `NaamPretpark` varchar(255) NOT NULL,
  `Land` varchar(255) NOT NULL,
  `Topsnelheid` tinyint(4) UNSIGNED NOT NULL,
  `Hoogte` tinyint(4) UNSIGNED not null,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `RichestPeople`
--

INSERT INTO `Achtbaan` (`Id`, `NaamAchtbaan`, `NaamPretpark`, `Land`, `Topsnelheid`, `Hoogte`) VALUES
(1, 'Red Force', 'Ferrari Land', 'Spanje', 192, 112),
(2, 'Ring Racer', 'Circuit Nürnberg', 'Duitsland', 160, 110),
(3, 'Hyperion', 'EnergyLandia', 'Polen', 141, 77),
(4, 'Furios Baco', 'PortAventura', 'Spanje', 138, 23),
(5, 'Shambala', 'PortAventura', 'Spanje', 134, 102);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
