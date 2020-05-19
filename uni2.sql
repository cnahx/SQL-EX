-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 11:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `select unit`
--

-- --------------------------------------------------------

--
-- Table structure for table `class info`
--

CREATE TABLE `class info` (
  `id` int(200) NOT NULL,
  `date` date NOT NULL,
  `clock` time(6) NOT NULL,
  `class type` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class info`
--

INSERT INTO `class info` (`id`, `date`, `clock`, `class type`) VALUES
(1, '2020-05-12', '12:30:00.000000', 'andishe');

-- --------------------------------------------------------

--
-- Table structure for table `grade info`
--

CREATE TABLE `grade info` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `family` varchar(100) NOT NULL,
  `unit number` int(100) NOT NULL,
  `grade` int(100) NOT NULL,
  `average` int(100) NOT NULL,
  `name of lesson` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade info`
--

INSERT INTO `grade info` (`id`, `name`, `family`, `unit number`, `grade`, `average`, `name of lesson`) VALUES
(1, 'armin', 'madani', 3, 20, 19, 'riyazi mohandesi');

-- --------------------------------------------------------

--
-- Table structure for table `professors info`
--

CREATE TABLE `professors info` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `family` varchar(50) NOT NULL,
  `Date of birth` date NOT NULL,
  `gender` varchar(40) NOT NULL,
  `marital status` varchar(40) NOT NULL,
  `phone number` int(40) NOT NULL,
  `home number` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professors info`
--

INSERT INTO `professors info` (`id`, `name`, `family`, `Date of birth`, `gender`, `marital status`, `phone number`, `home number`) VALUES
(1, 'ahmad', 'rezae far', '1990-06-02', 'male ', 'single', 918544565, 715454665);

-- --------------------------------------------------------

--
-- Table structure for table `select unit`
--

CREATE TABLE `select unit` (
  `id` int(200) NOT NULL,
  `Number of units` int(100) NOT NULL,
  `Number of units obtained` int(100) NOT NULL,
  `Number of units dropped` int(100) NOT NULL,
  `Number of units passed` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students info`
--

CREATE TABLE `students info` (
  `id` int(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `family` varchar(50) NOT NULL,
  `father name` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `mobile number` bigint(30) NOT NULL,
  `home number` bigint(30) NOT NULL,
  `Date of birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students info`
--

INSERT INTO `students info` (`id`, `name`, `family`, `father name`, `gender`, `mobile number`, `home number`, `Date of birth`) VALUES
(1, 'ali ', 'mohammadi', 'ahmad', 'male', 917455464, 74665498, '1990-05-12'),
(2, 'alireza', 'mohseni', 'mohammad', 'male', 914522564, 71322564, '1994-05-11'),
(3, 'ali mohammad', 'bahram zade ', 'pedram', 'male', 91425564, 98876554, '1996-05-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class info`
--
ALTER TABLE `class info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade info`
--
ALTER TABLE `grade info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professors info`
--
ALTER TABLE `professors info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `select unit`
--
ALTER TABLE `select unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students info`
--
ALTER TABLE `students info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class info`
--
ALTER TABLE `class info`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grade info`
--
ALTER TABLE `grade info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `professors info`
--
ALTER TABLE `professors info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `select unit`
--
ALTER TABLE `select unit`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students info`
--
ALTER TABLE `students info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
