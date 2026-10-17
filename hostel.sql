-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2025 at 07:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'Admin@123', '2025-08-03 20:31:45', '2025-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complainthistory`
--

CREATE TABLE `complainthistory` (
  `id` int(11) NOT NULL,
  `complaintid` int(11) DEFAULT NULL,
  `compalintStatus` varchar(255) DEFAULT NULL,
  `complaintRemark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complainthistory`
--

INSERT INTO `complainthistory` (`id`, `complaintid`, `compalintStatus`, `complaintRemark`, `postingDate`) VALUES
(3, 2, 'In Process', '', '2025-08-11 11:58:58'),
(4, 4, 'Closed', 'The complain is taken into consideration and will take care of it\r\n', '2025-08-11 12:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `ComplainNumber` bigint(12) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintDoc` varchar(255) DEFAULT NULL,
  `complaintStatus` varchar(255) DEFAULT NULL,
  `registrationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `ComplainNumber`, `userId`, `complaintType`, `complaintDetails`, `complaintDoc`, `complaintStatus`, `registrationDate`) VALUES
(2, 745594434, 7, 'Room Related', 'The room is not clean.  ', NULL, 'In Process', '2025-08-11 11:57:54'),
(3, 488383374, 7, 'Electrical', 'The wires are not insulated and that is very hazardous for  the people staying in it ', NULL, NULL, '2025-08-11 12:00:13'),
(4, 617773409, 7, 'Food Related', 'the hygine of the canteen is not good ', NULL, 'Closed', '2025-08-11 12:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(9, '201', 'BBA(CA)', 'Bachlor\'s of Buisness Administration (Computer Application )', '2025-08-11 11:49:30'),
(10, '202', 'BBA', 'Bachelor\'s of Buisness Administration', '2025-08-11 11:49:58'),
(11, '203', 'BCA', 'Bachelor of Computer Applications', '2025-08-11 11:50:48'),
(12, '204', 'B.com', 'Bachlor\'s of commerce ', '2025-08-11 11:54:44'),
(13, '205', 'B.E', 'Bachlor\'s of Enigneering ', '2025-08-11 11:55:10'),
(14, '206', 'B.pharm ', 'Bachlor\'s of Pharmacy', '2025-08-11 11:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `AccessibilityWarden` varchar(255) DEFAULT NULL,
  `AccessibilityMember` varchar(255) DEFAULT NULL,
  `RedressalProblem` varchar(255) DEFAULT NULL,
  `Room` varchar(255) DEFAULT NULL,
  `Mess` varchar(255) DEFAULT NULL,
  `HostelSurroundings` varchar(255) DEFAULT NULL,
  `OverallRating` varchar(255) DEFAULT NULL,
  `FeedbackMessage` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `AccessibilityWarden`, `AccessibilityMember`, `RedressalProblem`, `Room`, `Mess`, `HostelSurroundings`, `OverallRating`, `FeedbackMessage`, `userId`, `postinDate`) VALUES
(2, 'Excellent', 'Very Good', 'Good', 'Average', 'Below Average', 'Below Average', 'Average', '', 7, '2025-08-11 11:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(7, 1002, 2, 4000, 1, '2025-02-23', 8, 'Bachlor\'s of Buisness Administration (Computer Application )', 1, 'Akhilesh', 'Sachin', 'Patil', 'Male', 8237869162, 'akhileshpatil230205@gmail.com', 9552246868, 'Sachin Patil', 'Father', 9552246868, 'Ashok 502 kubera sankul\r\nNear sanjeevani hospital, gadilat, hadapsar, pune', 'Pune', 'Maharashtra', 411028, 'Ashok 502 kubera sankul\r\nNear sanjeevani hospital, gadilat, hadapsar, pune', 'Pune', 'Maharashtra', 411028, '2025-08-11 11:57:28', NULL),
(8, 1001, 1, 5000, 0, '2025-11-23', 9, 'Bachlor\'s of commerce ', 2, 'Allen ', 'Thannikal ', 'Jose ', 'male', 9607850745, 'allenrocks2611@gmail.com', 9552246868, 'Jose tannikal', 'Father ', 8007646565, '4th floor B2- 304, Radhai Nagri, Society,1 Govind Gdn chowk, Sai Nagar park, Pimple saudagar ', 'Pune', 'Maharashtra', 411028, '4th floor B2- 304, Radhai Nagri, Society,1 Govind Gdn chowk, Sai Nagar park, Pimple saudagar ', 'Pune', 'Maharashtra', 411028, '2025-08-11 17:26:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(7, 1, 1001, 5000, '2025-08-11 11:47:03'),
(8, 2, 1002, 4000, '2025-08-11 11:47:18'),
(9, 3, 1003, 3000, '2025-08-11 11:47:27'),
(10, 4, 1004, 2000, '2025-08-11 11:47:36'),
(11, 5, 1005, 1000, '2025-08-11 11:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(3, 7, 'akhileshpatil230205@gmail.com', 0x3a3a31, '', '', '2025-08-11 11:46:29'),
(4, 7, 'akhileshpatil230205@gmail.com', 0x3a3a31, '', '', '2025-08-11 11:59:26'),
(5, 7, 'akhileshpatil230205@gmail.com', 0x3a3a31, '', '', '2025-08-11 17:22:12'),
(6, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-11 17:23:56'),
(7, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-13 19:02:09'),
(8, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-14 11:55:06'),
(9, 9, 'atharvabaing123@gmail.com', 0x3a3a31, '', '', '2025-08-14 11:58:13'),
(10, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-14 12:01:53'),
(11, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-14 12:08:21'),
(12, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-14 18:17:39'),
(13, 9, 'atharvabaing123@gmail.com', 0x3a3a31, '', '', '2025-08-14 18:19:28'),
(14, 8, 'allenrocks2611@gmail.com', 0x3a3a31, '', '', '2025-08-14 18:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(7, '01', 'Akhilesh', 'Sachin', 'Patil', 'male', 8237869162, 'akhileshpatil230205@gmail.com', 'Apatil_2302', '2025-08-11 11:46:02', '11-08-2025 05:33:35', NULL),
(8, '02', 'Allen ', 'Thannikal ', 'Jose ', 'male', 9607850745, 'allenrocks2611@gmail.com', 'Allen@2611', '2025-08-11 17:23:42', NULL, NULL),
(9, '03', 'Atharva ', 'D', 'Baing', 'male', 9324330898, 'atharvabaing123@gmail.com', 'Atharva@123', '2025-08-14 11:57:57', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complainthistory`
--
ALTER TABLE `complainthistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complainthistory`
--
ALTER TABLE `complainthistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
