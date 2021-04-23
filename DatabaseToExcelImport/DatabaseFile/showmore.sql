-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 02:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `showmore`
--

-- --------------------------------------------------------

--
-- Table structure for table `showmoretbl`
--

CREATE TABLE `showmoretbl` (
  `ID` int(11) NOT NULL,
  `Data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showmoretbl`
--

INSERT INTO `showmoretbl` (`ID`, `Data`) VALUES
(1, 'PHP is Server side Scripting Language'),
(2, 'PHP is Server side Scripting Language'),
(3, 'PHP is Server side Scripting Language'),
(4, 'PHP is Server side Scripting Language'),
(5, 'PHP is Server side Scripting Language');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `showmoretbl`
--
ALTER TABLE `showmoretbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `showmoretbl`
--
ALTER TABLE `showmoretbl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
