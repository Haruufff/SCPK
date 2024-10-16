-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2024 at 07:22 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahp_gamelab`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `rank` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`) VALUES
('A9', 'Kelompok 9', '', 0.52714041380157, 2),
('A8', 'Kelompok 8', '', 0.31811462531523, 17),
('A7', 'Kelompok 7', '', 0.25770385398814, 23),
('A6', 'Kelompok 6', '', 0.27681715178141, 20),
('A5', 'Kelompok 5', '', 0.4641319950645, 5),
('A4', 'Kelompok 4', '', 0.27149839809458, 21),
('A3', 'Kelompok 3', '', 0.4048849792799, 9),
('A2', 'Kelompok 2', '', 0.23224289506232, 25),
('A1', 'Kelompok 1', '', 0.32180739500559, 16),
('A10', 'Kelompok 10', '', 0.43024796639261, 7),
('A11', 'Kelompok 11', '', 0.36025601363144, 11),
('A12', 'Kelompok 12', '', 0.2685716647228, 22),
('A13', 'Kelompok 13', '', 0.31659929650528, 18),
('A14', 'Kelompok 14', '', 0.33267520574025, 14),
('A15', 'Kelompok 15', '', 0.25401108429778, 24),
('A16', 'Kelompok 16', '', 0.48914340890976, 3),
('A17', 'Kelompok 17', '', 0.56295423433452, 1),
('A18', 'Kelompok 18', '', 0.42201495375086, 8),
('A19', 'Kelompok 19', '', 0.33267520574025, 15),
('A20', 'Kelompok 20', '', 0.34347761242794, 12),
('A21', 'Kelompok 21', '', 0.45812070956269, 6),
('A22', 'Kelompok 22', '', 0.40186006513845, 10),
('A23', 'Kelompok 23', '', 0.33799395942708, 13),
('A24', 'Kelompok 24', '', 0.48914340890976, 4),
('A25', 'Kelompok 25', '', 0.31659929650528, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`) VALUES
('C1', 'Perencanaan dan Persiapan Project'),
('C2', 'Penerapan Project'),
('C3', 'Pengujian Responsivitas'),
('C4', 'Pengujian Fungsionalitas'),
('C5', 'Kolaborasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int NOT NULL,
  `kode_alternatif` varchar(255) DEFAULT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `kode_sub` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `kode_sub`) VALUES
(280, 'A25', 'C2', 'C2S2'),
(281, 'A3', 'C2', 'C2S3'),
(282, 'A4', 'C2', 'C2S3'),
(277, 'A22', 'C2', 'C2S3'),
(278, 'A23', 'C2', 'C2S1'),
(279, 'A24', 'C2', 'C2S2'),
(274, 'A2', 'C2', 'C2S2'),
(275, 'A20', 'C2', 'C2S1'),
(276, 'A21', 'C2', 'C2S3'),
(271, 'A17', 'C2', 'C2S1'),
(272, 'A18', 'C2', 'C2S2'),
(273, 'A19', 'C2', 'C2S1'),
(268, 'A14', 'C2', 'C2S1'),
(269, 'A15', 'C2', 'C2S3'),
(270, 'A16', 'C2', 'C2S2'),
(265, 'A11', 'C2', 'C2S2'),
(266, 'A12', 'C2', 'C2S1'),
(267, 'A13', 'C2', 'C2S2'),
(262, 'A9', 'C1', 'C1S1'),
(263, 'A1', 'C2', 'C2S1'),
(264, 'A10', 'C2', 'C2S1'),
(259, 'A6', 'C1', 'C1S2'),
(260, 'A7', 'C1', 'C1S2'),
(261, 'A8', 'C1', 'C1S2'),
(254, 'A24', 'C1', 'C1S1'),
(255, 'A25', 'C1', 'C1S2'),
(256, 'A3', 'C1', 'C1S1'),
(257, 'A4', 'C1', 'C1S2'),
(258, 'A5', 'C1', 'C1S1'),
(253, 'A23', 'C1', 'C1S2'),
(327, 'A22', 'C4', 'C4S1'),
(312, 'A9', 'C3', 'C3S1'),
(297, 'A18', 'C3', 'C3S3'),
(252, 'A22', 'C1', 'C1S1'),
(326, 'A21', 'C4', 'C4S4'),
(311, 'A8', 'C3', 'C3S1'),
(296, 'A17', 'C3', 'C3S1'),
(251, 'A21', 'C1', 'C1S1'),
(325, 'A20', 'C4', 'C4S2'),
(310, 'A7', 'C3', 'C3S3'),
(295, 'A16', 'C3', 'C3S1'),
(250, 'A20', 'C1', 'C1S2'),
(324, 'A2', 'C4', 'C4S4'),
(309, 'A6', 'C3', 'C3S2'),
(294, 'A15', 'C3', 'C3S3'),
(249, 'A2', 'C1', 'C1S3'),
(323, 'A19', 'C4', 'C4S3'),
(308, 'A5', 'C3', 'C3S1'),
(293, 'A14', 'C3', 'C3S1'),
(248, 'A19', 'C1', 'C1S2'),
(322, 'A18', 'C4', 'C4S1'),
(307, 'A4', 'C3', 'C3S1'),
(292, 'A13', 'C3', 'C3S1'),
(247, 'A18', 'C1', 'C1S1'),
(321, 'A17', 'C4', 'C4S1'),
(306, 'A3', 'C3', 'C3S3'),
(291, 'A12', 'C3', 'C3S3'),
(246, 'A17', 'C1', 'C1S1'),
(320, 'A16', 'C4', 'C4S3'),
(305, 'A25', 'C3', 'C3S1'),
(290, 'A11', 'C3', 'C3S1'),
(245, 'A16', 'C1', 'C1S1'),
(319, 'A15', 'C4', 'C4S2'),
(304, 'A24', 'C3', 'C3S1'),
(289, 'A10', 'C3', 'C3S3'),
(244, 'A15', 'C1', 'C1S2'),
(318, 'A14', 'C4', 'C4S3'),
(303, 'A23', 'C3', 'C3S2'),
(288, 'A1', 'C3', 'C3S1'),
(243, 'A14', 'C1', 'C1S2'),
(317, 'A13', 'C4', 'C4S4'),
(302, 'A22', 'C3', 'C3S3'),
(287, 'A9', 'C2', 'C2S1'),
(242, 'A13', 'C1', 'C1S2'),
(316, 'A12', 'C4', 'C4S3'),
(301, 'A21', 'C3', 'C3S1'),
(286, 'A8', 'C2', 'C2S3'),
(241, 'A12', 'C1', 'C1S2'),
(315, 'A11', 'C4', 'C4S1'),
(300, 'A20', 'C3', 'C3S1'),
(285, 'A7', 'C2', 'C2S1'),
(240, 'A11', 'C1', 'C1S2'),
(314, 'A10', 'C4', 'C4S3'),
(299, 'A2', 'C3', 'C3S2'),
(284, 'A6', 'C2', 'C2S3'),
(239, 'A10', 'C1', 'C1S1'),
(313, 'A1', 'C4', 'C4S4'),
(298, 'A19', 'C3', 'C3S1'),
(283, 'A5', 'C2', 'C2S2'),
(238, 'A1', 'C1', 'C1S2'),
(328, 'A23', 'C4', 'C4S2'),
(329, 'A24', 'C4', 'C4S3'),
(330, 'A25', 'C4', 'C4S4'),
(331, 'A3', 'C4', 'C4S3'),
(332, 'A4', 'C4', 'C4S3'),
(333, 'A5', 'C4', 'C4S2'),
(334, 'A6', 'C4', 'C4S2'),
(335, 'A7', 'C4', 'C4S4'),
(336, 'A8', 'C4', 'C4S2'),
(337, 'A9', 'C4', 'C4S1'),
(338, 'A1', 'C5', 'C5S2'),
(339, 'A10', 'C5', 'C5S2'),
(340, 'A11', 'C5', 'C5S1'),
(341, 'A12', 'C5', 'C5S2'),
(342, 'A13', 'C5', 'C5S1'),
(343, 'A14', 'C5', 'C5S2'),
(344, 'A15', 'C5', 'C5S1'),
(345, 'A16', 'C5', 'C5S1'),
(346, 'A17', 'C5', 'C5S1'),
(347, 'A18', 'C5', 'C5S2'),
(348, 'A19', 'C5', 'C5S2'),
(349, 'A2', 'C5', 'C5S1'),
(350, 'A20', 'C5', 'C5S2'),
(351, 'A21', 'C5', 'C5S1'),
(352, 'A22', 'C5', 'C5S2'),
(353, 'A23', 'C5', 'C5S1'),
(354, 'A24', 'C5', 'C5S1'),
(355, 'A25', 'C5', 'C5S1'),
(356, 'A3', 'C5', 'C5S1'),
(357, 'A4', 'C5', 'C5S2'),
(358, 'A5', 'C5', 'C5S2'),
(359, 'A6', 'C5', 'C5S1'),
(360, 'A7', 'C5', 'C5S2'),
(361, 'A8', 'C5', 'C5S1'),
(362, 'A9', 'C5', 'C5S2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_kriteria`
--

CREATE TABLE `tb_rel_kriteria` (
  `ID` int NOT NULL,
  `ID1` varchar(16) DEFAULT NULL,
  `ID2` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_kriteria`
--

INSERT INTO `tb_rel_kriteria` (`ID`, `ID1`, `ID2`, `nilai`) VALUES
(214, 'C2', 'C5', 3),
(213, 'C1', 'C5', 4),
(212, 'C5', 'C5', 1),
(211, 'C5', 'C4', 0.5),
(210, 'C5', 'C3', 0.333333333),
(209, 'C5', 'C2', 0.333333333),
(208, 'C5', 'C1', 0.25),
(207, 'C3', 'C4', 2),
(206, 'C2', 'C4', 2),
(205, 'C1', 'C4', 3),
(204, 'C4', 'C4', 1),
(203, 'C4', 'C3', 0.5),
(202, 'C4', 'C2', 0.5),
(201, 'C4', 'C1', 0.333333333),
(200, 'C2', 'C3', 2),
(199, 'C1', 'C3', 3),
(198, 'C3', 'C3', 1),
(197, 'C3', 'C2', 0.5),
(196, 'C3', 'C1', 0.333333333),
(195, 'C1', 'C2', 3),
(194, 'C2', 'C2', 1),
(193, 'C2', 'C1', 0.333333333),
(192, 'C1', 'C1', 1),
(215, 'C3', 'C5', 3),
(216, 'C4', 'C5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_sub`
--

CREATE TABLE `tb_rel_sub` (
  `ID` int NOT NULL,
  `ID1` varchar(255) DEFAULT NULL,
  `ID2` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_sub`
--

INSERT INTO `tb_rel_sub` (`ID`, `ID1`, `ID2`, `nilai`, `bobot`) VALUES
(1462, 'C5S2', 'C1S3', 1, NULL),
(1461, 'C5S2', 'C1S2', 1, NULL),
(1460, 'C5S2', 'C1S1', 1, NULL),
(1456, 'C4S1', 'C5S1', 1, NULL),
(1457, 'C4S2', 'C5S1', 1, NULL),
(1458, 'C4S3', 'C5S1', 1, NULL),
(1459, 'C4S4', 'C5S1', 1, NULL),
(1407, 'C4S4', 'C2S1', 1, NULL),
(1406, 'C4S4', 'C1S3', 1, NULL),
(1397, 'C2S3', 'C4S3', 1, NULL),
(1398, 'C2S4', 'C4S3', 1, NULL),
(1399, 'C3S1', 'C4S3', 1, NULL),
(1400, 'C3S2', 'C4S3', 1, NULL),
(1401, 'C3S3', 'C4S3', 1, NULL),
(1402, 'C4S1', 'C4S3', 3, NULL),
(1403, 'C4S2', 'C4S3', 2, NULL),
(1404, 'C4S4', 'C1S1', 1, NULL),
(1405, 'C4S4', 'C1S2', 1, NULL),
(1388, 'C4S3', 'C3S3', 1, NULL),
(1389, 'C4S3', 'C4S1', 0.333333333, NULL),
(1390, 'C4S3', 'C4S2', 0.5, NULL),
(1391, 'C4S3', 'C4S3', 1, NULL),
(1392, 'C1S1', 'C4S3', 1, NULL),
(1393, 'C1S2', 'C4S3', 1, NULL),
(1394, 'C1S3', 'C4S3', 1, NULL),
(1395, 'C2S1', 'C4S3', 1, NULL),
(1396, 'C2S2', 'C4S3', 1, NULL),
(1387, 'C4S3', 'C3S2', 1, NULL),
(1371, 'C2S1', 'C4S2', 1, NULL),
(1372, 'C2S2', 'C4S2', 1, NULL),
(1373, 'C2S3', 'C4S2', 1, NULL),
(1374, 'C2S4', 'C4S2', 1, NULL),
(1375, 'C3S1', 'C4S2', 1, NULL),
(1376, 'C3S2', 'C4S2', 1, NULL),
(1377, 'C3S3', 'C4S2', 1, NULL),
(1378, 'C4S1', 'C4S2', 2, NULL),
(1379, 'C4S3', 'C1S1', 1, NULL),
(1380, 'C4S3', 'C1S2', 1, NULL),
(1381, 'C4S3', 'C1S3', 1, NULL),
(1382, 'C4S3', 'C2S1', 1, NULL),
(1383, 'C4S3', 'C2S2', 1, NULL),
(1384, 'C4S3', 'C2S3', 1, NULL),
(1385, 'C4S3', 'C2S4', 1, NULL),
(1386, 'C4S3', 'C3S1', 1, NULL),
(1309, 'C1S2', 'C3S2', 1, NULL),
(1310, 'C1S3', 'C3S2', 1, NULL),
(1311, 'C2S1', 'C3S2', 1, NULL),
(1312, 'C2S2', 'C3S2', 1, NULL),
(1313, 'C2S3', 'C3S2', 1, NULL),
(1314, 'C2S4', 'C3S2', 1, NULL),
(1315, 'C3S1', 'C3S2', 2, NULL),
(1316, 'C3S3', 'C1S1', 1, NULL),
(1317, 'C3S3', 'C1S2', 1, NULL),
(1318, 'C3S3', 'C1S3', 1, NULL),
(1319, 'C3S3', 'C2S1', 1, NULL),
(1320, 'C3S3', 'C2S2', 1, NULL),
(1321, 'C3S3', 'C2S3', 1, NULL),
(1322, 'C3S3', 'C2S4', 1, NULL),
(1323, 'C3S3', 'C3S1', 0.333333333, NULL),
(1324, 'C3S3', 'C3S2', 0.5, NULL),
(1325, 'C3S3', 'C3S3', 1, NULL),
(1326, 'C1S1', 'C3S3', 1, NULL),
(1327, 'C1S2', 'C3S3', 1, NULL),
(1328, 'C1S3', 'C3S3', 1, NULL),
(1329, 'C2S1', 'C3S3', 1, NULL),
(1330, 'C2S2', 'C3S3', 1, NULL),
(1331, 'C2S3', 'C3S3', 1, NULL),
(1332, 'C2S4', 'C3S3', 1, NULL),
(1333, 'C3S1', 'C3S3', 3, NULL),
(1334, 'C3S2', 'C3S3', 2, NULL),
(1335, 'C4S1', 'C1S1', 1, NULL),
(1336, 'C4S1', 'C1S2', 1, NULL),
(1337, 'C4S1', 'C1S3', 1, NULL),
(1338, 'C4S1', 'C2S1', 1, NULL),
(1339, 'C4S1', 'C2S2', 1, NULL),
(1340, 'C4S1', 'C2S3', 1, NULL),
(1341, 'C4S1', 'C2S4', 1, NULL),
(1342, 'C4S1', 'C3S1', 1, NULL),
(1343, 'C4S1', 'C3S2', 1, NULL),
(1344, 'C4S1', 'C3S3', 1, NULL),
(1345, 'C4S1', 'C4S1', 1, NULL),
(1346, 'C1S1', 'C4S1', 1, NULL),
(1347, 'C1S2', 'C4S1', 1, NULL),
(1348, 'C1S3', 'C4S1', 1, NULL),
(1349, 'C2S1', 'C4S1', 1, NULL),
(1350, 'C2S2', 'C4S1', 1, NULL),
(1351, 'C2S3', 'C4S1', 1, NULL),
(1352, 'C2S4', 'C4S1', 1, NULL),
(1353, 'C3S1', 'C4S1', 1, NULL),
(1354, 'C3S2', 'C4S1', 1, NULL),
(1355, 'C3S3', 'C4S1', 1, NULL),
(1356, 'C4S2', 'C1S1', 1, NULL),
(1357, 'C4S2', 'C1S2', 1, NULL),
(1358, 'C4S2', 'C1S3', 1, NULL),
(1359, 'C4S2', 'C2S1', 1, NULL),
(1360, 'C4S2', 'C2S2', 1, NULL),
(1361, 'C4S2', 'C2S3', 1, NULL),
(1362, 'C4S2', 'C2S4', 1, NULL),
(1363, 'C4S2', 'C3S1', 1, NULL),
(1364, 'C4S2', 'C3S2', 1, NULL),
(1365, 'C4S2', 'C3S3', 1, NULL),
(1366, 'C4S2', 'C4S1', 0.5, NULL),
(1367, 'C4S2', 'C4S2', 1, NULL),
(1368, 'C1S1', 'C4S2', 1, NULL),
(1369, 'C1S2', 'C4S2', 1, NULL),
(1370, 'C1S3', 'C4S2', 1, NULL),
(1308, 'C1S1', 'C3S2', 1, NULL),
(1307, 'C3S2', 'C3S2', 1, NULL),
(1486, 'C4S1', 'C5S2', 1, NULL),
(1485, 'C3S3', 'C5S2', 1, NULL),
(1455, 'C3S3', 'C5S1', 1, NULL),
(1454, 'C3S2', 'C5S1', 1, NULL),
(1453, 'C3S1', 'C5S1', 1, NULL),
(1452, 'C2S4', 'C5S1', 1, NULL),
(1306, 'C3S2', 'C3S1', 0.5, NULL),
(1305, 'C3S2', 'C2S4', 1, NULL),
(1304, 'C3S2', 'C2S3', 1, NULL),
(1270, 'C2S2', 'C2S3', 2, NULL),
(1484, 'C3S2', 'C5S2', 1, NULL),
(1483, 'C3S1', 'C5S2', 1, NULL),
(1451, 'C2S3', 'C5S1', 1, NULL),
(1450, 'C2S2', 'C5S1', 1, NULL),
(1449, 'C2S1', 'C5S1', 1, NULL),
(1448, 'C1S3', 'C5S1', 1, NULL),
(1303, 'C3S2', 'C2S2', 1, NULL),
(1302, 'C3S2', 'C2S1', 1, NULL),
(1301, 'C3S2', 'C1S3', 1, NULL),
(1482, 'C2S4', 'C5S2', 1, NULL),
(1481, 'C2S3', 'C5S2', 1, NULL),
(1447, 'C1S2', 'C5S1', 1, NULL),
(1446, 'C1S1', 'C5S1', 1, NULL),
(1445, 'C5S1', 'C5S1', 1, NULL),
(1444, 'C5S1', 'C4S4', 1, NULL),
(1300, 'C3S2', 'C1S2', 1, NULL),
(1299, 'C3S2', 'C1S1', 1, NULL),
(1298, 'C2S4', 'C3S1', 1, NULL),
(1269, 'C2S1', 'C2S3', 3, NULL),
(1268, 'C1S3', 'C2S3', 1, NULL),
(1480, 'C2S2', 'C5S2', 1, NULL),
(1479, 'C2S1', 'C5S2', 1, NULL),
(1443, 'C5S1', 'C4S3', 1, NULL),
(1442, 'C5S1', 'C4S2', 1, NULL),
(1441, 'C5S1', 'C4S1', 1, NULL),
(1440, 'C5S1', 'C3S3', 1, NULL),
(1297, 'C2S3', 'C3S1', 1, NULL),
(1296, 'C2S2', 'C3S1', 1, NULL),
(1295, 'C2S1', 'C3S1', 1, NULL),
(1267, 'C1S2', 'C2S3', 1, NULL),
(1478, 'C1S3', 'C5S2', 1, NULL),
(1477, 'C1S2', 'C5S2', 1, NULL),
(1439, 'C5S1', 'C3S2', 1, NULL),
(1438, 'C5S1', 'C3S1', 1, NULL),
(1437, 'C5S1', 'C2S4', 1, NULL),
(1436, 'C5S1', 'C2S3', 1, NULL),
(1294, 'C1S3', 'C3S1', 1, NULL),
(1293, 'C1S2', 'C3S1', 1, NULL),
(1292, 'C1S1', 'C3S1', 1, NULL),
(1266, 'C1S1', 'C2S3', 1, NULL),
(1265, 'C2S3', 'C2S3', 1, NULL),
(1264, 'C2S3', 'C2S2', 0.5, NULL),
(1476, 'C1S1', 'C5S2', 1, NULL),
(1475, 'C5S2', 'C5S2', 1, NULL),
(1435, 'C5S1', 'C2S2', 1, NULL),
(1434, 'C5S1', 'C2S1', 1, NULL),
(1433, 'C5S1', 'C1S3', 1, NULL),
(1432, 'C5S1', 'C1S2', 1, NULL),
(1291, 'C3S1', 'C3S1', 1, NULL),
(1290, 'C3S1', 'C2S4', 1, NULL),
(1289, 'C3S1', 'C2S3', 1, NULL),
(1263, 'C2S3', 'C2S1', 0.333333333, NULL),
(1262, 'C2S3', 'C1S3', 1, NULL),
(1474, 'C5S2', 'C5S1', 0.333333333, NULL),
(1473, 'C5S2', 'C4S4', 1, NULL),
(1431, 'C5S1', 'C1S1', 1, NULL),
(1430, 'C4S3', 'C4S4', 3, NULL),
(1429, 'C4S2', 'C4S4', 3, NULL),
(1428, 'C4S1', 'C4S4', 4, NULL),
(1288, 'C3S1', 'C2S2', 1, NULL),
(1287, 'C3S1', 'C2S1', 1, NULL),
(1286, 'C3S1', 'C1S3', 1, NULL),
(1261, 'C2S3', 'C1S2', 1, NULL),
(1260, 'C2S3', 'C1S1', 1, NULL),
(1259, 'C2S1', 'C2S2', 2, NULL),
(1258, 'C1S3', 'C2S2', 1, NULL),
(1472, 'C5S2', 'C4S3', 1, NULL),
(1471, 'C5S2', 'C4S2', 1, NULL),
(1427, 'C3S3', 'C4S4', 1, NULL),
(1426, 'C3S2', 'C4S4', 1, NULL),
(1425, 'C3S1', 'C4S4', 1, NULL),
(1424, 'C2S4', 'C4S4', 1, NULL),
(1285, 'C3S1', 'C1S2', 1, NULL),
(1284, 'C3S1', 'C1S1', 1, NULL),
(1283, 'C2S3', 'C2S4', 3, NULL),
(1257, 'C1S2', 'C2S2', 1, NULL),
(1256, 'C1S1', 'C2S2', 1, NULL),
(1255, 'C2S2', 'C2S2', 1, NULL),
(1470, 'C5S2', 'C4S1', 1, NULL),
(1469, 'C5S2', 'C3S3', 1, NULL),
(1423, 'C2S3', 'C4S4', 1, NULL),
(1422, 'C2S2', 'C4S4', 1, NULL),
(1421, 'C2S1', 'C4S4', 1, NULL),
(1420, 'C1S3', 'C4S4', 1, NULL),
(1282, 'C2S2', 'C2S4', 3, NULL),
(1281, 'C2S1', 'C2S4', 4, NULL),
(1280, 'C1S3', 'C2S4', 1, NULL),
(1254, 'C2S2', 'C2S1', 0.5, NULL),
(1253, 'C2S2', 'C1S3', 1, NULL),
(1252, 'C2S2', 'C1S2', 1, NULL),
(1251, 'C2S2', 'C1S1', 1, NULL),
(1238, 'C1S1', 'C1S2', 3, NULL),
(1468, 'C5S2', 'C3S2', 1, NULL),
(1467, 'C5S2', 'C3S1', 1, NULL),
(1419, 'C1S2', 'C4S4', 1, NULL),
(1418, 'C1S1', 'C4S4', 1, NULL),
(1417, 'C4S4', 'C4S4', 1, NULL),
(1416, 'C4S4', 'C4S3', 0.333333333, NULL),
(1279, 'C1S2', 'C2S4', 1, NULL),
(1278, 'C1S1', 'C2S4', 1, NULL),
(1277, 'C2S4', 'C2S4', 1, NULL),
(1250, 'C1S3', 'C2S1', 1, NULL),
(1249, 'C1S2', 'C2S1', 1, NULL),
(1248, 'C1S1', 'C2S1', 1, NULL),
(1247, 'C2S1', 'C2S1', 1, NULL),
(1466, 'C5S2', 'C2S4', 1, NULL),
(1465, 'C5S2', 'C2S3', 1, NULL),
(1415, 'C4S4', 'C4S2', 0.333333333, NULL),
(1414, 'C4S4', 'C4S1', 0.25, NULL),
(1413, 'C4S4', 'C3S3', 1, NULL),
(1412, 'C4S4', 'C3S2', 1, NULL),
(1276, 'C2S4', 'C2S3', 0.333333333, NULL),
(1275, 'C2S4', 'C2S2', 0.333333333, NULL),
(1274, 'C2S4', 'C2S1', 0.25, NULL),
(1246, 'C2S1', 'C1S3', 1, NULL),
(1245, 'C2S1', 'C1S2', 1, NULL),
(1244, 'C2S1', 'C1S1', 1, NULL),
(1243, 'C1S2', 'C1S3', 2, NULL),
(1237, 'C1S2', 'C1S2', 1, NULL),
(1236, 'C1S2', 'C1S1', 0.333333333, NULL),
(1464, 'C5S2', 'C2S2', 1, NULL),
(1463, 'C5S2', 'C2S1', 1, NULL),
(1411, 'C4S4', 'C3S1', 1, NULL),
(1410, 'C4S4', 'C2S4', 1, NULL),
(1409, 'C4S4', 'C2S3', 1, NULL),
(1408, 'C4S4', 'C2S2', 1, NULL),
(1273, 'C2S4', 'C1S3', 1, NULL),
(1272, 'C2S4', 'C1S2', 1, NULL),
(1271, 'C2S4', 'C1S1', 1, NULL),
(1242, 'C1S1', 'C1S3', 4, NULL),
(1241, 'C1S3', 'C1S3', 1, NULL),
(1240, 'C1S3', 'C1S2', 0.5, NULL),
(1239, 'C1S3', 'C1S1', 0.25, NULL),
(1235, 'C1S1', 'C1S1', 1, NULL),
(1490, 'C5S1', 'C5S2', 3, NULL),
(1489, 'C4S4', 'C5S2', 1, NULL),
(1488, 'C4S3', 'C5S2', 1, NULL),
(1487, 'C4S2', 'C5S2', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub`
--

CREATE TABLE `tb_sub` (
  `kode_sub` varchar(255) NOT NULL,
  `kode_kriteria` varchar(255) DEFAULT NULL,
  `nama_sub` varchar(255) DEFAULT NULL,
  `nilai_sub` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sub`
--

INSERT INTO `tb_sub` (`kode_sub`, `kode_kriteria`, `nama_sub`, `nilai_sub`) VALUES
('C1S1', 'C1', 'perencanaan fitur dan web sudah sangat baik	', 0.62322472853221),
('C1S2', 'C1', 'Perencanaan fitur dan web cukup baik	', 0.23948760785326),
('C1S3', 'C1', 'Perencanaan Fitur dan web masih kurang dipersiapkan', 0.13728766361453),
('C2S1', 'C2', 'Menerapkan 85% - 100% materi ke project', 0.45976492618614),
('C2S2', 'C2', 'Menerapkan 70% - 80% materi ke project', 0.27234657792664),
('C2S3', 'C2', 'Menerapkan 30% - 65% materi ke project', 0.18026419801583),
('C2S4', 'C2', 'Menerapkan 5% - 25% materi ke project', 0.087624297871383),
('C3S1', 'C3', 'Sangat baik rensponsif dalam tampilan project', 0.5389610389941),
('C3S2', 'C3', 'Baik rensponsif dalam tampilan project', 0.29725829727483),
('C3S3', 'C3', 'Kurang rensponsif dalam tampilan project', 0.16378066373108),
('C4S1', 'C4', '10% fitur berjalan dengan baik project', 0.45976492618614),
('C4S2', 'C4', '50% fitur berjalan dengan baik project', 0.27234657792664),
('C4S3', 'C4', '80% fitur berjalan dengan baik project', 0.18026419801583),
('C4S4', 'C4', '100% fitur berjalan dengan baik project', 0.087624297871383),
('C5S1', 'C5', 'Komunikasi dalam pengerjaan capstone sudah baik', 0.75000000009375),
('C5S2', 'C5', 'Komunikasi dalam pengerjaan capstone kurang baik', 0.24999999990625);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user`, `pass`) VALUES
('admin', 'admin'),
('hafidhmaruf', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_sub`
--
ALTER TABLE `tb_sub`
  ADD PRIMARY KEY (`kode_sub`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `tb_rel_sub`
--
ALTER TABLE `tb_rel_sub`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1491;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
