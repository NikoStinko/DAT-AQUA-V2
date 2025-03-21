-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 30 Avril 2024 à 10:15
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `dataviz`
--
CREATE DATABASE IF NOT EXISTS `dataviz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dataviz`;

-- --------------------------------------------------------

--
-- Structure de la table `capteur_conductivimetre`
--

CREATE TABLE `capteur_conductivimetre` (
  `Id_mesure` int(11) NOT NULL,
  `Temp (°C)` float NOT NULL,
  `Conductivite (µs/cm)` float NOT NULL,
  `Tension_sonde (mv)` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `capteur_conductivimetre`
--

TRUNCATE TABLE `capteur_conductivimetre`;
--
-- Contenu de la table `capteur_conductivimetre`
--

INSERT INTO `capteur_conductivimetre` (`Id_mesure`, `Temp (°C)`, `Conductivite (µs/cm)`, `Tension_sonde (mv)`) VALUES
(1, 999, 0, 12.25),
(2, 999, 0, 12.25),
(3, 999, 0, 14.7),
(4, 999, 0, 13.47),
(5, 19.66, 0, 14.7),
(6, 19.56, 0, 13.47),
(7, 18.31, 0, 86.97),
(8, 18.37, 0, 83.29),
(9, 18.56, 0, 80.84),
(10, 18.5, 0, 85.74),
(11, 18.5, 0, 83.29),
(12, 18.5, 0, 84.52),
(13, 18.5, 0, 90.64),
(14, 18.56, 0, 90.64),
(15, 18.56, 0, 83.29),
(16, 18.62, 0, 84.52),
(17, 18.91, 0, 14.7),
(18, 19.12, 0, 88.19),
(19, 19.19, 0, 78.39),
(20, 17.94, 0, 12.25),
(21, 17.5, 0, 143.31),
(22, 17.22, 0, 12.25),
(23, 17.25, 0, 15.92),
(24, 17.22, 0, 19.6),
(25, 17.25, 0, 13.47),
(26, 17.31, 0, 167.81),
(27, 17.69, 0, 170.26),
(28, 18.06, 0, 160.46),
(29, 18.16, 0, 12.25),
(30, 17.91, 0, 13.47),
(31, 17.72, 0, 13.47),
(32, 17.62, 0, 12.25),
(33, 18.06, 0, 134.74),
(34, 17.84, 0, 13.47),
(35, 17.69, 0, 14.7),
(36, 17.5, 0, 11.02),
(37, 17.41, 0, 11.02),
(38, 17.31, 0, 12.25),
(39, 17.25, 0, 12.25),
(40, 17.12, 0, 15.92),
(41, 17.09, 0, 14.7),
(42, 17, 0, 14.7),
(43, 16.94, 0, 15.92),
(44, 16.84, 0, 14.7),
(45, 16.75, 0, 17.15),
(46, 16.72, 0, 14.7),
(47, 16.62, 0, 18.37),
(48, 16.59, 0, 12.25),
(49, 16.56, 0, 13.47),
(50, 16.5, 0, 12.25),
(51, 16.5, 0, 14.7),
(52, 16.47, 0, 12.25),
(53, 16.44, 0, 12.25),
(54, 16.37, 0, 15.92),
(55, 16.37, 0, 15.92),
(56, 16.37, 0, 13.47),
(57, 16.37, 0, 15.92),
(58, 16.34, 0, 14.7),
(59, 16.34, 0, 11.02),
(60, 16.37, 0, 14.7),
(61, 16.34, 0, 14.7),
(62, 16.34, 0, 19.6),
(63, 16.31, 0, 13.47),
(64, 16.31, 0, 15.92),
(65, 16.31, 0, 13.47),
(66, 16.28, 0, 12.25),
(67, 16.25, 0, 13.47),
(68, 16.25, 0, 14.7),
(69, 16.19, 0, 13.47),
(70, 16.19, 0, 12.25),
(71, 16.19, 0, 14.7),
(72, 16.16, 0, 15.92),
(73, 16.12, 0, 13.47),
(74, 16.12, 0, 13.47),
(75, 16.12, 0, 13.47),
(76, 16.06, 0, 14.7),
(77, 16.06, 0, 14.7),
(78, 16.03, 0, 15.92),
(79, 16.03, 0, 13.47),
(80, 16.03, 0, 13.47),
(81, 16, 0, 14.7),
(82, 16, 0, 14.7),
(83, 16.06, 0, 14.7),
(84, 16.12, 0, 9.8),
(85, 16.25, 0, 15.92),
(86, 16.31, 0, 14.7),
(87, 16.37, 0, 13.47),
(88, 16.44, 0, 13.47),
(89, 16.5, 0, 14.7),
(90, 16.5, 0, 13.47),
(91, 16.56, 0, 14.7),
(92, 16.56, 0, 11.02),
(93, 16.56, 0, 14.7),
(94, 15.81, 0, 13.47),
(95, 16.16, 0, 166.59),
(96, 16.22, 0, 12.25),
(97, 16.19, 0, 14.7),
(98, 16.22, 0, 86.97),
(99, 16.22, 0, 13.47),
(100, 16.25, 0, 93.09),
(101, 16.31, 0, 85.74),
(102, 16.37, 0, 109.02),
(103, 16.44, 0, 107.79),
(104, 16.81, -2008.23, 82.07),
(105, 16.87, -1974.12, 83.29),
(106, 16.94, -1940.1, 84.52),
(107, 16.97, -2062.86, 79.62),
(108, 17.03, -1842.77, 88.19),
(109, 17.03, -1997.78, 82.07),
(110, 17.06, -2027.28, 80.84),
(111, 17.06, -2058.26, 79.62),
(112, 17.12, -1962.4, 83.29),
(113, 17.12, -1436.52, 104.12);

-- --------------------------------------------------------

--
-- Structure de la table `capteur_o2`
--

CREATE TABLE `capteur_o2` (
  `Id_mesure` int(11) NOT NULL,
  `Temp (°C)` float NOT NULL,
  `O2` float NOT NULL,
  `Tension_sonde (mv)` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `capteur_o2`
--

TRUNCATE TABLE `capteur_o2`;
--
-- Contenu de la table `capteur_o2`
--

INSERT INTO `capteur_o2` (`Id_mesure`, `Temp (°C)`, `O2`, `Tension_sonde (mv)`) VALUES
(1, 999, 0, 11.02),
(2, 999, 0, 11.02),
(3, 999, 0, 11.02),
(4, 999, 0, 12.25),
(5, 19.75, 0, 12.25),
(6, 19.56, 0, 11.02),
(7, 18.31, 0, 55.12),
(8, 18.37, 0, 46.55),
(9, 18.56, 0, 47.77),
(10, 18.5, 0, 52.67),
(11, 18.5, 0, 47.77),
(12, 18.53, 0, 45.32),
(13, 18.5, 0, 46.55),
(14, 18.56, 0, 53.9),
(15, 18.56, 0, 49),
(16, 18.62, 0, 41.65),
(17, 18.94, 0, 12.25),
(18, 19.03, 0, 51.45),
(19, 19.09, 0, 50.22),
(20, 17.84, 0, 9.8),
(21, 17.56, 0, 83.29),
(22, 17.22, 0, 12.25),
(23, 17.25, 0, 11.02),
(24, 17.22, 0, 9.8),
(25, 17.25, 0, 11.02),
(26, 17.31, 0, 121.27),
(27, 17.72, 0, 120.04),
(28, 17.97, 0, 91.87),
(29, 18.16, 0, 11.02),
(30, 17.97, 0, 13.47),
(31, 17.75, 0, 9.8),
(32, 17.62, 0, 8.57),
(33, 18.09, 0, 90.64),
(34, 17.84, 0, 8.57),
(35, 17.66, 0, 13.47),
(36, 17.5, 0, 15.92),
(37, 17.44, 0, 13.47),
(38, 17.31, 0, 12.25),
(39, 17.25, 0, 11.02),
(40, 17.16, 0, 11.02),
(41, 17.09, 0, 11.02),
(42, 17, 0, 9.8),
(43, 16.94, 0, 12.25),
(44, 16.84, 0, 11.02),
(45, 16.78, 0, 12.25),
(46, 16.72, 0, 9.8),
(47, 16.66, 0, 9.8),
(48, 16.59, 0, 13.47),
(49, 16.56, 0, 11.02),
(50, 16.5, 0, 18.37),
(51, 16.47, 0, 17.15),
(52, 16.44, 0, 12.25),
(53, 16.41, 0, 13.47),
(54, 16.37, 0, 9.8),
(55, 16.37, 0, 13.47),
(56, 16.37, 0, 15.92),
(57, 16.34, 0, 11.02),
(58, 16.34, 0, 13.47),
(59, 16.34, 0, 9.8),
(60, 16.34, 0, 8.57),
(61, 16.34, 0, 8.57),
(62, 16.34, 0, 11.02),
(63, 16.31, 0, 11.02),
(64, 16.31, 0, 11.02),
(65, 16.31, 0, 9.8),
(66, 16.28, 0, 11.02),
(67, 16.25, 0, 11.02),
(68, 16.25, 0, 13.47),
(69, 16.22, 0, 7.35),
(70, 16.19, 0, 12.25),
(71, 16.19, 0, 12.25),
(72, 16.16, 0, 17.15),
(73, 16.12, 0, 8.57),
(74, 16.12, 0, 11.02),
(75, 16.12, 0, 9.8),
(76, 16.06, 0, 12.25),
(77, 16.06, 0, 12.25),
(78, 16.03, 0, 11.02),
(79, 16.03, 0, 11.02),
(80, 16.03, 0, 9.8),
(81, 16, 0, 11.02),
(82, 16, 0, 12.25),
(83, 16.06, 0, 12.25),
(84, 16.12, 0, 9.8),
(85, 16.25, 0, 8.57),
(86, 16.28, 0, 11.02),
(87, 16.37, 0, 14.7),
(88, 16.44, 0, 11.02),
(89, 16.44, 0, 12.25),
(90, 16.5, 0, 9.8),
(91, 16.5, 0, 9.8),
(92, 16.56, 0, 9.8),
(93, 16.56, 0, 13.47),
(94, 15.66, 0, 9.8),
(95, 16.12, 0, 111.47),
(96, 16.19, 0, 11.02),
(97, 16.22, 0, 12.25),
(98, 16.19, 0, 50.22),
(99, 16.22, 0, 11.02),
(100, 16.25, 0, 49),
(101, 16.31, 0, 46.55),
(102, 16.37, 0, 60.02),
(103, 16.44, 0, 69.82),
(104, 16.81, 4.04, 579.38),
(105, 16.87, 3.94, 568.36),
(106, 16.94, 3.84, 557.33),
(107, 16.97, 3.91, 564.68),
(108, 17, 3.88, 562.23),
(109, 17.03, 3.77, 549.98),
(110, 17.06, 3.71, 543.86),
(111, 17.09, 3.67, 538.96),
(112, 17.12, 4.76, 656.55),
(113, 17.12, 3.92, 565.91);

-- --------------------------------------------------------

--
-- Structure de la table `capteur_ph`
--

CREATE TABLE `capteur_ph` (
  `Id_mesure` int(11) NOT NULL,
  `Temp (°C)` float NOT NULL,
  `PH` float NOT NULL,
  `Tension_sonde (mv)` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `capteur_ph`
--

TRUNCATE TABLE `capteur_ph`;
--
-- Contenu de la table `capteur_ph`
--

INSERT INTO `capteur_ph` (`Id_mesure`, `Temp (°C)`, `PH`, `Tension_sonde (mv)`) VALUES
(1, 999, 0, 1222.46),
(2, 999, 0, 1221.23),
(3, 999, 0, 1222.46),
(4, 999, 0, 1223.68),
(5, 19.16, 0, 1222.46),
(6, 19.56, 0, 1222.46),
(7, 18.25, 0, 1201.64),
(8, 18.34, 0, 1210.21),
(9, 18.53, 0, 1222.46),
(10, 18.5, 0, 1193.06),
(11, 18.5, 0, 1208.98),
(12, 18.5, 0, 1202.86),
(13, 18.5, 0, 1210.21),
(14, 18.56, 0, 1211.43),
(15, 18.56, 0, 1205.31),
(16, 18.56, 0, 1208.98),
(17, 18.94, 0, 1217.56),
(18, 18.87, 0, 1212.66),
(19, 19.03, 0, 1207.76),
(20, 17.59, 8.9, 1246.96),
(21, 17.75, 8.96, 1237.16),
(22, 17.25, 8.91, 1244.51),
(23, 17.22, 8.9, 1246.96),
(24, 17.25, 8.92, 1243.28),
(25, 17.25, 0, 1217.56),
(26, 17.28, 0, 1189.39),
(27, 17.44, 0, 1210.21),
(28, 17.69, 0, 1226.13),
(29, 18.03, 0, 1245.73),
(30, 17.94, 0, 1248.18),
(31, 17.75, 0, 1246.96),
(32, 17.69, 0, 1249.41),
(33, 18.09, 0, 1237.16),
(34, 17.91, 8.91, 1245.73),
(35, 17.66, 8.87, 1251.86),
(36, 17.5, 8.91, 1245.73),
(37, 17.41, 8.92, 1243.28),
(38, 17.31, 8.89, 1249.41),
(39, 17.25, 8.91, 1245.73),
(40, 17.16, 8.9, 1246.96),
(41, 17.06, 8.92, 1243.28),
(42, 17, 8.92, 1244.51),
(43, 16.94, 8.89, 1248.18),
(44, 16.81, 8.9, 1246.96),
(45, 16.75, 8.9, 1246.96),
(46, 16.75, 8.95, 1239.61),
(47, 16.62, 8.95, 1239.61),
(48, 16.62, 8.92, 1243.28),
(49, 16.56, 8.94, 1240.83),
(50, 16.5, 8.92, 1243.28),
(51, 16.47, 8.91, 1245.73),
(52, 16.44, 8.95, 1239.61),
(53, 16.41, 8.93, 1242.06),
(54, 16.37, 8.92, 1243.28),
(55, 16.34, 8.92, 1244.51),
(56, 16.34, 8.96, 1237.16),
(57, 16.31, 8.92, 1243.28),
(58, 16.34, 8.94, 1240.83),
(59, 16.31, 8.95, 1238.38),
(60, 16.31, 8.93, 1242.06),
(61, 16.31, 8.94, 1240.83),
(62, 16.31, 8.9, 1246.96),
(63, 16.31, 8.94, 1240.83),
(64, 16.31, 8.93, 1242.06),
(65, 16.28, 8.94, 1240.83),
(66, 16.25, 8.86, 1254.31),
(67, 16.25, 8.93, 1242.06),
(68, 16.25, 8.94, 1240.83),
(69, 16.19, 8.92, 1243.28),
(70, 16.19, 8.91, 1245.73),
(71, 16.19, 8.92, 1244.51),
(72, 16.12, 8.95, 1239.61),
(73, 16.12, 8.87, 1251.86),
(74, 16.12, 8.92, 1244.51),
(75, 16.12, 8.94, 1240.83),
(76, 16.06, 8.94, 1240.83),
(77, 16.06, 8.92, 1243.28),
(78, 16, 8.91, 1245.73),
(79, 16, 8.95, 1238.38),
(80, 16, 8.96, 1237.16),
(81, 16, 8.94, 1240.83),
(82, 16, 8.93, 1242.06),
(83, 16, 8.92, 1243.28),
(84, 16.12, 8.94, 1240.83),
(85, 16.19, 8.95, 1239.61),
(86, 16.25, 8.92, 1244.51),
(87, 16.31, 8.95, 1239.61),
(88, 16.37, 8.94, 1240.83),
(89, 16.47, 8.91, 1245.73),
(90, 16.5, 8.93, 1242.06),
(91, 16.5, 8.92, 1243.28),
(92, 16.56, 8.93, 1242.06),
(93, 16.56, 8.94, 1240.83),
(94, 16.53, 8.93, 1242.06),
(95, 16.12, 8.62, 1292.28),
(96, 16.19, 8.42, 1324.13),
(97, 16.19, 8.42, 1324.13),
(98, 16.19, 8.46, 1318),
(99, 16.22, 0, 1326.58),
(100, 16.25, 0, 1319.23),
(101, 16.31, 0, 1316.78),
(102, 16.37, 0, 1315.55),
(103, 16.44, 8.47, 1316.78),
(104, 16.81, 8.33, 1338.82),
(105, 16.87, 8.28, 1347.4),
(106, 16.91, 8.28, 1346.17),
(107, 16.97, 8.32, 1341.27),
(108, 17, 8.27, 1348.62),
(109, 17, 8.29, 1344.95),
(110, 17.06, 8.27, 1348.62),
(111, 17.06, 8.19, 1360.87),
(112, 17.12, 8.31, 1342.5),
(113, 17.12, 8.28, 1347.4);

-- --------------------------------------------------------

--
-- Structure de la table `capteur_redox`
--

CREATE TABLE `capteur_redox` (
  `Id_mesure` int(11) NOT NULL,
  `Temp (°C)` float NOT NULL,
  `Redox (mV)` float NOT NULL,
  `Tension_sonde (mv)` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `capteur_redox`
--

TRUNCATE TABLE `capteur_redox`;
--
-- Contenu de la table `capteur_redox`
--

INSERT INTO `capteur_redox` (`Id_mesure`, `Temp (°C)`, `Redox (mV)`, `Tension_sonde (mv)`) VALUES
(1, 999, 0, 2689.9),
(2, 999, 0, 2692.35),
(3, 999, 0, 2691.12),
(4, 999, 0, 2691.12),
(5, 19.53, 0, 2691.12),
(6, 19.53, 0, 2692.35),
(7, 18.28, 0, 2682.55),
(8, 18.34, 0, 2681.32),
(9, 18.56, 0, 2672.75),
(10, 18.5, 0, 2677.65),
(11, 18.5, 0, 2681.32),
(12, 18.5, 0, 2688.67),
(13, 18.5, 0, 2681.32),
(14, 18.56, 0, 2678.87),
(15, 18.56, 0, 2678.87),
(16, 18.59, 0, 2676.43),
(17, 18.94, 0, 2692.35),
(18, 18.97, 0, 2682.55),
(19, 19.06, 0, 2672.75),
(20, 17.75, 0, 2710.72),
(21, 17.66, 0, 2699.7),
(22, 17.25, 0, 2705.82),
(23, 17.25, 0, 2708.27),
(24, 17.22, 0, 2708.27),
(25, 17.25, 0, 2707.05),
(26, 17.31, 0, 2696.02),
(27, 17.59, 0, 2696.02),
(28, 17.81, 0, 2698.47),
(29, 18.09, 0, 2705.82),
(30, 17.97, 0, 2704.6),
(31, 17.75, 0, 2700.92),
(32, 17.66, 0, 2708.27),
(33, 18.09, 0, 2697.25),
(34, 17.91, 0, 2702.15),
(35, 17.66, 0, 2707.05),
(36, 17.53, 0, 2703.37),
(37, 17.44, 0, 2703.37),
(38, 17.34, 0, 2704.6),
(39, 17.25, 0, 2704.6),
(40, 17.16, 0, 2704.6),
(41, 17.06, 0, 2704.6),
(42, 17, 0, 2705.82),
(43, 16.94, 0, 2703.37),
(44, 16.84, 0, 2703.37),
(45, 16.78, 0, 2709.5),
(46, 16.72, 0, 2702.15),
(47, 16.66, 0, 2703.37),
(48, 16.62, 0, 2699.7),
(49, 16.56, 0, 2705.82),
(50, 16.5, 0, 2702.15),
(51, 16.47, 0, 2707.05),
(52, 16.44, 0, 2704.6),
(53, 16.41, 0, 2704.6),
(54, 16.37, 0, 2714.4),
(55, 16.37, 0, 2714.4),
(56, 16.37, 0, 2704.6),
(57, 16.37, 0, 2702.15),
(58, 16.34, 0, 2703.37),
(59, 16.37, 0, 2702.15),
(60, 16.37, 0, 2707.05),
(61, 16.37, 0, 2703.37),
(62, 16.34, 0, 2704.6),
(63, 16.31, 0, 2704.6),
(64, 16.31, 0, 2716.85),
(65, 16.28, 0, 2707.05),
(66, 16.25, 0, 2700.92),
(67, 16.25, 0, 2704.6),
(68, 16.22, 0, 2708.27),
(69, 16.22, 0, 2704.6),
(70, 16.19, 0, 2702.15),
(71, 16.19, 0, 2710.72),
(72, 16.16, 0, 2697.25),
(73, 16.12, 0, 2710.72),
(74, 16.09, 0, 2705.82),
(75, 16.12, 0, 2702.15),
(76, 16.06, 0, 2700.92),
(77, 16.06, 0, 2702.15),
(78, 16.03, 0, 2707.05),
(79, 16.03, 0, 2703.37),
(80, 16.03, 0, 2705.82),
(81, 16, 0, 2705.82),
(82, 16, 0, 2708.27),
(83, 16.06, 0, 2700.92),
(84, 16.12, 0, 2705.82),
(85, 16.25, 0, 2704.6),
(86, 16.31, 0, 2702.15),
(87, 16.34, 0, 2702.15),
(88, 16.37, 0, 2699.7),
(89, 16.47, 0, 2705.82),
(90, 16.5, 0, 2709.5),
(91, 16.5, 0, 2703.37),
(92, 16.56, 0, 2703.37),
(93, 16.56, 0, 2708.27),
(94, 16.06, 0, 2704.6),
(95, 16.12, 0, 2697.25),
(96, 16.19, 0, 2704.6),
(97, 16.22, 0, 2702.15),
(98, 16.22, 0, 2694.8),
(99, 16.22, 0, 2702.15),
(100, 16.25, 0, 2697.25),
(101, 16.31, 0, 2694.8),
(102, 16.37, 0, 2693.57),
(103, 16.44, 0, 2687.45),
(104, 16.81, 0, 2707.05),
(105, 16.87, 0, 2711.95),
(106, 16.94, 0, 2709.5),
(107, 16.97, 0, 2711.95),
(108, 17, 0, 2710.72),
(109, 17.03, 0, 2709.5),
(110, 17.06, 0, 2720.52),
(111, 17.09, 0, 2710.72),
(112, 17.12, 0, 2693.57),
(113, 17.12, 0, 2713.17);

-- --------------------------------------------------------

--
-- Structure de la table `mesure`
--

CREATE TABLE `mesure` (
  `Id_mesure` int(11) NOT NULL,
  `Date et Heure` datetime NOT NULL,
  `Vbatt (V)` float NOT NULL,
  `Cadence` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `mesure`
--

TRUNCATE TABLE `mesure`;
--
-- Contenu de la table `mesure`
--

INSERT INTO `mesure` (`Id_mesure`, `Date et Heure`, `Vbatt (V)`, `Cadence`) VALUES
(1, '2023-11-28 17:41:42', 0.58, 15),
(2, '2023-11-28 17:48:48', 0.54, 15),
(3, '2023-11-28 17:53:42', 0.55, 15),
(4, '2023-11-28 18:02:41', 0.55, 15),
(5, '2023-11-28 18:10:53', 0.54, 15),
(6, '2023-11-28 18:15:50', 0.55, 15),
(7, '2023-11-29 12:12:47', 12.05, 15),
(8, '2023-11-29 12:17:47', 12.16, 15),
(9, '2023-11-29 12:32:47', 12.22, 15),
(10, '2023-11-29 12:47:47', 12.07, 15),
(11, '2023-11-29 13:02:47', 12.05, 15),
(12, '2023-11-29 13:17:47', 12.03, 15),
(13, '2023-11-29 13:32:47', 12.03, 15),
(14, '2023-11-29 13:47:47', 12.07, 15),
(15, '2023-11-29 14:02:47', 12.18, 15),
(16, '2023-11-29 14:17:47', 12.02, 15),
(17, '2023-11-29 15:09:47', 0.55, 15),
(18, '2023-11-29 15:17:47', 12.07, 15),
(19, '2023-11-29 15:32:47', 12.13, 15),
(20, '2024-01-29 16:26:13', 12.1, 15),
(21, '2024-01-29 16:32:49', 12, 15),
(22, '2024-01-29 16:47:47', 12.02, 15),
(23, '2024-01-29 16:57:10', 12.03, 15),
(24, '2024-01-29 17:02:47', 12.08, 15),
(25, '2024-01-29 17:12:48', 0.6, 15),
(26, '2024-01-29 17:17:47', 12.07, 15),
(27, '2024-01-29 17:23:34', 12.03, 15),
(28, '2024-01-29 17:27:03', 12.07, 15),
(29, '2024-01-29 17:33:10', 0.62, 15),
(30, '2024-01-29 17:38:22', 12.07, 15),
(31, '2024-01-29 17:44:20', 12.09, 15),
(32, '2024-01-29 17:47:47', 12.05, 15),
(33, '2024-01-29 18:02:47', 11.94, 15),
(34, '2024-01-29 18:10:21', 12.15, 15),
(35, '2024-01-29 18:17:47', 12.03, 15),
(36, '2024-01-29 18:32:47', 12.03, 15),
(37, '2024-01-29 18:47:47', 11.97, 15),
(38, '2024-01-29 19:02:47', 12.08, 15),
(39, '2024-01-29 19:17:47', 11.99, 15),
(40, '2024-01-29 19:32:47', 12.08, 15),
(41, '2024-01-29 19:47:47', 11.97, 15),
(42, '2024-01-29 20:02:47', 12.07, 15),
(43, '2024-01-29 20:17:47', 12.08, 15),
(44, '2024-01-29 20:32:47', 12.1, 15),
(45, '2024-01-29 20:47:47', 12.18, 15),
(46, '2024-01-29 21:02:47', 12.04, 15),
(47, '2024-01-29 21:17:47', 12.03, 15),
(48, '2024-01-29 21:32:47', 12.08, 15),
(49, '2024-01-29 21:47:47', 12.22, 15),
(50, '2024-01-29 22:02:47', 12.05, 15),
(51, '2024-01-29 22:17:47', 12.02, 15),
(52, '2024-01-29 22:32:47', 12.04, 15),
(53, '2024-01-29 22:47:47', 12.08, 15),
(54, '2024-01-29 23:02:47', 12.08, 15),
(55, '2024-01-29 23:17:47', 11.97, 15),
(56, '2024-01-29 23:32:47', 12.07, 15),
(57, '2024-01-29 23:47:47', 12.04, 15),
(58, '2024-01-30 00:02:47', 12.08, 15),
(59, '2024-01-30 00:17:47', 12.09, 15),
(60, '2024-01-30 00:32:47', 12.1, 15),
(61, '2024-01-30 00:47:47', 12.04, 15),
(62, '2024-01-30 01:02:47', 12.04, 15),
(63, '2024-01-30 01:17:47', 12.07, 15),
(64, '2024-01-30 01:32:47', 12.03, 15),
(65, '2024-01-30 01:47:47', 12.16, 15),
(66, '2024-01-30 02:02:47', 11.96, 15),
(67, '2024-01-30 02:17:47', 12.08, 15),
(68, '2024-01-30 02:32:47', 12.03, 15),
(69, '2024-01-30 02:47:47', 12.11, 15),
(70, '2024-01-30 03:02:47', 12.09, 15),
(71, '2024-01-30 03:17:46', 12.03, 15),
(72, '2024-01-30 03:32:46', 12.05, 15),
(73, '2024-01-30 03:47:47', 12.07, 15),
(74, '2024-01-30 04:02:47', 12.05, 15),
(75, '2024-01-30 04:17:47', 12.05, 15),
(76, '2024-01-30 04:32:47', 12.09, 15),
(77, '2024-01-30 04:47:47', 11.99, 15),
(78, '2024-01-30 05:02:47', 12.05, 15),
(79, '2024-01-30 05:17:47', 12.1, 15),
(80, '2024-01-30 05:32:47', 12.05, 15),
(81, '2024-01-30 05:47:47', 12.09, 15),
(82, '2024-01-30 06:02:47', 12.08, 15),
(83, '2024-01-30 06:17:47', 12.15, 15),
(84, '2024-01-30 06:32:47', 12.08, 15),
(85, '2024-01-30 06:47:47', 12.09, 15),
(86, '2024-01-30 07:02:47', 11.99, 15),
(87, '2024-01-30 07:17:47', 12.19, 15),
(88, '2024-01-30 07:32:47', 12.09, 15),
(89, '2024-01-30 07:47:47', 12.16, 15),
(90, '2024-01-30 08:02:47', 12.07, 15),
(91, '2024-01-30 08:17:47', 12.07, 15),
(92, '2024-01-30 08:32:47', 12.07, 15),
(93, '2024-01-30 08:47:47', 12.14, 15),
(94, '2024-01-30 09:02:47', 12.11, 15),
(95, '2024-01-30 09:06:29', 12.13, 15),
(96, '2024-01-30 09:25:05', 0.61, 15),
(97, '2024-01-30 09:32:14', 12, 15),
(98, '2024-01-30 09:35:58', 12.05, 15),
(99, '2024-01-30 09:42:07', 12.07, 15),
(100, '2024-01-30 09:47:47', 12.03, 15),
(101, '2024-01-30 10:02:47', 12.05, 15),
(102, '2024-01-30 10:08:48', 11.92, 15),
(103, '2024-01-30 10:32:47', 12.04, 15),
(104, '2024-01-30 11:47:47', 12.05, 15),
(105, '2024-01-30 12:02:47', 12.2, 15),
(106, '2024-01-30 12:17:47', 12.16, 15),
(107, '2024-01-30 12:32:47', 12.04, 15),
(108, '2024-01-30 12:47:47', 12.03, 15),
(109, '2024-01-30 13:02:47', 12.05, 15),
(110, '2024-01-30 13:17:47', 12.07, 15),
(111, '2024-01-30 13:32:47', 12.05, 15),
(112, '2024-01-30 13:47:47', 11.88, 15),
(113, '2024-01-30 14:02:47', 12.03, 15);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `capteur_conductivimetre`
--
ALTER TABLE `capteur_conductivimetre`
  ADD PRIMARY KEY (`Id_mesure`);

--
-- Index pour la table `capteur_o2`
--
ALTER TABLE `capteur_o2`
  ADD PRIMARY KEY (`Id_mesure`);

--
-- Index pour la table `capteur_ph`
--
ALTER TABLE `capteur_ph`
  ADD PRIMARY KEY (`Id_mesure`);

--
-- Index pour la table `capteur_redox`
--
ALTER TABLE `capteur_redox`
  ADD PRIMARY KEY (`Id_mesure`);

--
-- Index pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD PRIMARY KEY (`Id_mesure`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `capteur_conductivimetre`
--
ALTER TABLE `capteur_conductivimetre`
  MODIFY `Id_mesure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `capteur_o2`
--
ALTER TABLE `capteur_o2`
  MODIFY `Id_mesure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `capteur_ph`
--
ALTER TABLE `capteur_ph`
  MODIFY `Id_mesure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `capteur_redox`
--
ALTER TABLE `capteur_redox`
  MODIFY `Id_mesure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `mesure`
--
ALTER TABLE `mesure`
  MODIFY `Id_mesure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
