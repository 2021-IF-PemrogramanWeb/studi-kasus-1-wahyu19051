-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2021 pada 16.53
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootstrap`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `btable`
--

CREATE TABLE `btable` (
  `No` int(11) NOT NULL,
  `On` datetime NOT NULL,
  `Off` datetime NOT NULL,
  `Ack by` varchar(250) NOT NULL,
  `Reason` int(11) NOT NULL,
  `Description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `btable`
--

INSERT INTO `btable` (`No`, `On`, `Off`, `Ack by`, `Reason`, `Description`) VALUES
(1, '2021-11-01 21:56:49', '2021-11-02 21:56:49', 'Act: Audiyatra.\r\nDis: Rizaldy, Gatot.', 2, 'Interlock Hose Reel Rear'),
(2, '2021-11-04 20:07:59', '2021-11-04 22:07:59', 'Act: Norman', 3, 'Interlock Input Coupler Stow'),
(3, '2021-11-04 13:28:28', '2021-11-04 16:28:28', 'Act: Woman', 4, 'Interlock Input Hose Boom Stow'),
(4, '2021-11-04 09:28:59', '2021-11-04 11:28:59', 'Act: Man', 1, 'Interlock Hose Real Front'),
(5, '2021-11-01 21:56:49', '2021-11-02 21:56:49', 'Act: Rizaldy.\r\nDis: Man, Gatot.', 2, 'Interlock Hose Reel Rear'),
(6, '2021-11-01 21:56:49', '2021-11-03 21:56:49', 'Act: Woman.\r\nDis: Man.', 5, 'Interlock Platform Stow'),
(7, '2021-11-02 21:56:49', '2021-11-04 21:56:49', 'Act: Woman.', 6, 'Interlock Platform Nozzle Left'),
(8, '2021-11-01 21:56:49', '2021-11-04 21:56:49', 'Act: Man.', 7, 'Interlock Platform Nozzle Right'),
(9, '2021-10-31 09:28:59', '2021-11-01 11:28:59', 'Act: Han', 1, 'Interlock Hose Real Front'),
(10, '2021-10-30 09:28:59', '2021-11-02 11:28:59', 'Act: San', 1, 'Interlock Hose Real Front'),
(11, '2021-10-29 09:28:59', '2021-11-03 11:28:59', 'Act: Nan', 1, 'Interlock Hose Real Front'),
(12, '2021-10-28 09:28:59', '2021-11-04 11:28:59', 'Act: Woman', 2, 'Interlock Hose Real Rear'),
(13, '2021-10-27 20:07:59', '2021-10-30 22:07:59', 'Act: Kamaru', 3, 'Interlock Input Coupler Stow'),
(14, '2021-11-02 21:56:49', '2021-11-03 21:56:49', 'Act: Rizaldy.\r\nDis: Man, Woman.', 2, 'Interlock Hose Reel Rear'),
(15, '2021-10-28 09:28:59', '2021-10-30 11:28:59', 'Act: Wan', 1, 'Interlock Hose Real Front'),
(16, '2021-11-01 21:56:49', '2021-11-02 21:56:49', 'Act: Norman.\r\nDis: Man, Woman.', 9, 'Interlock Bonding Static Reel Front');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `btable`
--
ALTER TABLE `btable`
  ADD PRIMARY KEY (`No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
