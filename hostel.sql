-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 05:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `mobileNo` varchar(10) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`mobileNo`, `month`, `amount`) VALUES
('1234567890', 'Nov-2020', '6000'),
('9835582545', 'Nov-2020', '6000');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `number` varchar(10) NOT NULL,
  `activate` varchar(50) NOT NULL,
  `roomStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`number`, `activate`, `roomStatus`) VALUES
('001', 'Yes', 'Not Booked'),
('002', 'Yes', 'Not Booked'),
('003', 'Yes', 'Not Booked'),
('004', 'Yes', 'Not Booked'),
('005', 'Yes', 'Booked'),
('006', 'Yes', 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `mobileNo` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `father` varchar(200) NOT NULL,
  `mother` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `college` varchar(100) NOT NULL,
  `aadhaar` varchar(12) NOT NULL,
  `roomNo` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`mobileNo`, `name`, `father`, `mother`, `email`, `address`, `college`, `aadhaar`, `roomNo`, `status`) VALUES
('9786235672', 'Simran Rathod', 'Nilesh', 'Radhika', 'simran456@gmail.com', 'Surat , Gujarat', 'K.C. College', '723569735', '005', 'living'),
('9835475893', 'Sonalika Bhide', 'Aatmaram', 'Madhavi', 'sonu123@gmail.com', 'Gokuldham Society', 'M.K. Gandhi', '872458628904', '002', 'Left'),
('9835582545', 'Rishika Bhat', 'Maharaj Krishan', 'Sanjota', 'rishika.bhat_19@sakec.ac.in', 'Nagrota , Jammu', 'SAKEC', '897634275461', '001', 'Living');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`mobileNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
