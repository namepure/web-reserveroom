-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 03:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(5) NOT NULL COMMENT 'booking id ',
  `room_id` int(5) NOT NULL COMMENT 'room id of booking',
  `user_id` int(5) NOT NULL COMMENT 'id of user',
  `date` date NOT NULL COMMENT 'date of booking',
  `status` int(5) NOT NULL COMMENT '0 => disapprove  , 1 => approve,2 => pending',
  `time` varchar(30) NOT NULL COMMENT 'time of booking',
  `description` varchar(255) NOT NULL COMMENT 'Reason',
  `approve_name` varchar(30) NOT NULL COMMENT 'lecturer who approve'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `room_id`, `user_id`, `date`, `status`, `time`, `description`, `approve_name`) VALUES
(49, 1, 2, '2023-11-19', 0, '08:00-10:00', 'Room has Disable', ''),
(50, 1, 4, '2023-11-19', 0, '10:00-12:00', 'Room has Disable', ''),
(51, 1, 5, '2023-11-19', 0, '15:00-17:00', 'Room has Disable', ''),
(52, 4, 6, '2023-11-19', 1, '13:00-15:00', '', 'lecturer1'),
(54, 1, 2, '2023-11-20', 1, '13:00-15:00', '', 'Nat '),
(55, 4, 2, '2023-11-22', 0, '08:00-10:00', 'TestLec', 'Nat '),
(56, 1, 2, '2023-11-23', 0, '15:00-17:00', '12321', 'Nat '),
(57, 1, 2, '2023-11-23', 1, '08:00-10:00', '', 'Nat '),
(58, 1, 4, '2023-11-23', 0, '10:00-12:00', 'd123213', 'Nat '),
(59, 4, 4, '2023-11-23', 1, '08:00-10:00', '', 'Nat '),
(60, 4, 2, '2023-11-29', 0, '08:00-10:00', 'TestLec', 'Nat '),
(69, 4, 2, '2023-11-30', 1, '10:00-12:00', '', 'Pure');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(5) NOT NULL COMMENT 'room id',
  `roomname` varchar(20) NOT NULL COMMENT 'room name ',
  `capacity` int(5) NOT NULL COMMENT 'Capacity of room',
  `roomStatus` int(5) NOT NULL COMMENT '0 => disable ,1 => available',
  `build` varchar(5) NOT NULL COMMENT 'room building'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `roomname`, `capacity`, `roomStatus`, `build`) VALUES
(1, '106', 40, 1, 'E8'),
(2, '202', 40, 0, 'S1'),
(3, '406', 40, 0, 'S7'),
(4, '411', 40, 1, 'S7'),
(101, '101', 40, 0, 'C1'),
(102, '102', 40, 1, 'C2'),
(103, '103', 40, 1, 'C3'),
(104, '104', 40, 1, 'C4'),
(105, '105', 40, 0, 'E1'),
(106, '106', 40, 1, 'E2'),
(107, '107', 40, 1, 'E3'),
(108, '108', 40, 0, 'E4'),
(109, '109', 40, 1, 'S7'),
(110, '110', 40, 1, 'S7'),
(111, '111', 40, 0, 'S7'),
(146, '111', 30, 0, 'S3'),
(147, '102', 30, 0, 'S7'),
(148, '116', 40, 0, 'E2'),
(149, '105', 40, 0, 'S2'),
(150, '111', 40, 1, 'E3');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL COMMENT 'id of user',
  `student_id` varchar(10) NOT NULL COMMENT 'student id of user',
  `name` varchar(30) NOT NULL COMMENT 'name of user',
  `username` varchar(20) NOT NULL COMMENT 'username of user',
  `password` varchar(100) NOT NULL COMMENT 'password of user',
  `role` int(5) NOT NULL COMMENT '0 => user , 1 => lecturer, 2=> staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `student_id`, `name`, `username`, `password`, `role`) VALUES
(1, '1111111111', 'Nat', 'admin', '$2b$10$DseJnaPtnIm.QMsGSsN1IeocKdenY8Mb.L2YyCuz9L5KY4QWMjSni', 2),
(2, '0000000000', 'NART', 'user1', '$2b$10$DJ6QtMygWXVc3nMSzkc26.BUb7MrUh3o47nAoCftcLeDdP.NEu2NC', 0),
(3, '2222222222', 'Nat ', 'lecturer1', '$2b$10$MN5GYSWeunY.r6x36xtbSOXxmj.Byy3xuZDYNQi10LKXyUya5Htt2', 1),
(4, '1234567890', 'USER TEST', 'user2', '$2b$10$wOZ2qGBwdLathaQa0O6OquXZcZ4UNNoq5e4jOnK8BdWmHrujb9Qk6', 0),
(5, '1111111112', 'NAT', 'user3', '$2b$10$nFf1dWEqNR.W.1RzsD4W/.kIXo/tgAyoRG.YKHpMNJR.F.BVCG97.', 0),
(6, '2131313131', 'NAT1', 'user4', '$2b$10$KVe5gU0CD5G1xgI7XBTNHOXurC7bHWL8OraC1s4trUnksH93L/kiS', 0),
(7, '1234511132', 'NAT TY', 'user5', '$2b$10$JN5RuBPsjI6CoiurJZVtD.3KmdpTp1wfWsI8m..dM/2kg0ZgdkJwa', 0),
(8, '1234511181', 'NAT', 'user6', '$2b$10$1q5lWMpaiprWKdH/znuUqe09PkJRegfYSHsBr7mtBdYV2tGLo0.Ju', 0),
(9, '1111575747', 'Pure', 'lecturer2', '$2b$10$X738f4h3XRxJLaClooxzbO7WFggjbp6U9HQyEsYhS2bPSKxwo7Rd.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'booking id ', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'room id', AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id of user', AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
