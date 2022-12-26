-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 01:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `child e-immunization`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_details`
--

CREATE TABLE `child_details` (
  `child_ID` varchar(10) NOT NULL,
  `child_name` varchar(30) NOT NULL,
  `child_gender` varchar(10) NOT NULL,
  `child_birth` date NOT NULL,
  `child_age` varchar(20) NOT NULL,
  `child_weight` varchar(20) NOT NULL,
  `child_height` varchar(10) NOT NULL,
  `child_vaccines` varchar(40) NOT NULL,
  `vaccine_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registration_login`
--

CREATE TABLE `registration_login` (
  `reg_ID` int(8) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `reg_email` varchar(20) NOT NULL,
  `reg_phone` int(10) NOT NULL,
  `reg_address` varchar(40) NOT NULL,
  `reg_gender` varchar(10) NOT NULL,
  `reg_username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_details`
--
ALTER TABLE `child_details`
  ADD PRIMARY KEY (`child_ID`);

--
-- Indexes for table `registration_login`
--
ALTER TABLE `registration_login`
  ADD PRIMARY KEY (`reg_ID`),
  ADD UNIQUE KEY `reg_email` (`reg_email`),
  ADD UNIQUE KEY `reg_phone` (`reg_phone`),
  ADD UNIQUE KEY `reg_username` (`reg_username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
