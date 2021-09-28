-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql202.byetcluster.com
-- Generation Time: Sep 28, 2021 at 01:41 PM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_29887245_srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'hariketsheth', '21232f297a57a5a743894a0e4a801fc3', '2021-09-28 15:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'SMS3012-009', 'A', '2021-09-28 10:34:30', '0000-00-00 00:00:00'),
(2, 'SMS2012-REDa', 'G', '2021-09-28 15:51:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(4, 1, 1, 2, 90, '2021-09-28 10:48:02', NULL),
(3, 1, 1, 1, 100, '2021-09-28 10:48:02', NULL),
(5, 1, 1, 5, 98, '2021-09-28 10:48:02', NULL),
(6, 1, 1, 6, 85, '2021-09-28 10:48:02', NULL),
(7, 1, 1, 4, 80, '2021-09-28 10:48:02', NULL),
(8, 1, 1, 3, 100, '2021-09-28 10:48:02', NULL),
(9, 3, 2, 4, 90, '2021-09-28 15:53:55', NULL),
(10, 3, 2, 3, 98, '2021-09-28 15:53:55', NULL),
(11, 4, 2, 4, 100, '2021-09-28 15:54:37', NULL),
(12, 4, 2, 3, 98, '2021-09-28 15:54:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Hariket Sukesh Kumar Sheth', '1975', 'sample1.test@xy.com', 'Male', 1, '2021-09-28 10:36:05', NULL, 1),
(2, 'Sample 2 ', '1909', 'dample2@ndd.com', 'Male', 1, '2021-09-28 10:37:00', NULL, 1),
(3, 'Sample G1', '1230', 'sample1@gmail.com', 'Male', 2, '2021-09-28 15:53:04', NULL, 1),
(4, 'Sample 2G', '1231', 'sample2@gmail.com', 'Female', 2, '2021-09-28 15:53:22', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 1, 1, 1, '2021-09-28 10:35:20', '2021-09-28 10:35:20'),
(2, 1, 2, 1, '2021-09-28 10:45:42', '2021-09-28 10:45:42'),
(3, 1, 3, 1, '2021-09-28 10:45:47', '2021-09-28 10:45:47'),
(4, 1, 4, 1, '2021-09-28 10:45:51', '2021-09-28 10:45:51'),
(5, 1, 5, 1, '2021-09-28 10:45:56', '2021-09-28 10:45:56'),
(6, 1, 6, 1, '2021-09-28 10:46:00', '2021-09-28 10:46:00'),
(7, 1, 3, 1, '2021-09-28 14:45:48', '2021-09-28 14:45:48'),
(8, 2, 4, 1, '2021-09-28 15:51:59', '2021-09-28 15:51:59'),
(9, 2, 3, 1, '2021-09-28 15:52:07', '2021-09-28 15:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`) VALUES
(1, 'Calculus', 'MAT1011', '2021-09-28 10:35:01'),
(2, 'Chemistry', 'CHY1701', '2021-09-28 10:44:30'),
(3, 'Software Engineering', 'CSE3001', '2021-09-28 10:44:44'),
(4, 'Network and Communications', 'CSE1004', '2021-09-28 10:44:59'),
(5, 'Computer Architecture and Organisation', 'CSE2001', '2021-09-28 10:45:14'),
(6, 'Database Management Systems', 'CSE2004', '2021-09-28 10:45:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
