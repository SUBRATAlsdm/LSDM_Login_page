-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 12:59 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsdm_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `StudentID` varchar(30) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `AdmissionDate` date NOT NULL,
  `CurrentCoursesEnrolled` varchar(100) NOT NULL,
  `CourseFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `StudentID`, `FullName`, `Email`, `PhoneNumber`, `Address`, `DateOfBirth`, `Gender`, `Nationality`, `AdmissionDate`, `CurrentCoursesEnrolled`, `CourseFees`) VALUES
(1, 'S100001', 'John Smith', 'john.smith@example.com', '123-456-7890', '123 Main St, Cityville', '1998-03-15', 'Male', 'USA', '2022-09-01', 'Computer Science', 5000),
(2, 'S100002', 'Jane Doe', 'jane.doe@example.com', '987-654-3210', '456 Oak St, Townsville', '1999-05-22', 'Female', 'Canada', '2022-09-01', 'Biology', 4800),
(3, 'S100003', 'Bob Johnson', 'bob.johnson@example.com', '555-123-7890', '789 Pine St, Villagetown', '2000-02-08', 'Male', 'Australia', '2022-09-01', 'History', 4500),
(4, 'S100004', 'Emily Davis', 'emily.davis@example.com', '555-789-0123', '321 Elm St, Hamletville', '1997-11-30', 'Female', 'Germany', '2022-09-01', 'Chemistry', 5200),
(5, 'S100005', 'Michael Lee', 'michael.lee@example.com', '222-444-6666', '555 Maple St, Suburbia', '2001-08-20', 'Male', 'USA', '2022-09-01', 'Physics', 4900),
(6, 'S100006', 'Sophie Wang', 'sophie.wang@example.com', '111-333-5555', '888 Cedar St, Cityscape', '2000-06-12', 'Female', 'China', '2022-09-01', 'Computer Engineering', 5300),
(7, 'S100007', 'Daniel Kim', 'daniel.kim@example.com', '777-888-9999', '222 Pine St, Metropolis', '1999-09-05', 'Male', 'South Korea', '2022-09-01', 'Electrical Engineering', 5100),
(8, 'S100008', 'Mia Johnson', 'mia.johnson@example.com', '444-666-8888', '444 Oak St, Countryside', '2000-12-17', 'Female', 'USA', '2022-09-01', 'Psychology', 4700),
(9, 'S100009', 'Christopher Miller', 'christopher.miller@example.com', '666-999-1111', '999 Elm St, Townsville', '1998-07-25', 'Male', 'Canada', '2022-09-01', 'Environmental Science', 4900),
(10, 'S100010', 'Olivia Martinez', 'olivia.martinez@example.com', '111-222-3333', '777 Maple St, Cityville', '2002-02-03', 'Female', 'Mexico', '2022-09-01', 'Political Science', 4600),
(11, 'S100011', 'Ethan Chen', 'ethan.chen@example.com', '888-111-2222', '333 Cedar St, Hamletville', '1999-04-08', 'Male', 'China', '2022-09-01', 'Mechanical Engineering', 5200),
(12, 'S100012', 'Isabella Wong', 'isabella.wong@example.com', '555-777-9999', '666 Oak St, Cityscape', '2001-01-30', 'Female', 'Hong Kong', '2022-09-01', 'Economics', 4800),
(13, 'S100013', 'Aiden Rodriguez', 'aiden.rodriguez@example.com', '222-333-4444', '111 Pine St, Suburbia', '2000-08-12', 'Male', 'Spain', '2022-09-01', 'Marketing', 4700),
(14, 'S100014', 'Ava Patel', 'ava.patel@example.com', '999-111-2222', '555 Elm St, Metropolis', '1998-06-28', 'Female', 'India', '2022-09-01', 'Computer Science', 5000),
(15, 'S100015', 'Caleb Brown', 'caleb.brown@example.com', '333-444-5555', '777 Cedar St, Countryside', '2002-03-05', 'Male', 'USA', '2022-09-01', 'Finance', 4900),
(16, 'S100016', 'Ella Kim', 'ella.kim@example.com', '444-555-6666', '888 Oak St, Cityville', '1999-10-22', 'Female', 'South Korea', '2022-09-01', 'Biomedical Engineering', 5300),
(17, 'S100017', 'Henry Nguyen', 'henry.nguyen@example.com', '777-888-9999', '666 Maple St, Townsville', '2001-07-15', 'Male', 'Vietnam', '2022-09-01', 'Physics', 5200),
(18, 'S100018', 'Grace Wilson', 'grace.wilson@example.com', '555-666-7777', '444 Pine St, Cityscape', '1998-12-03', 'Female', 'USA', '2022-09-01', 'Political Science', 4600),
(26, 'S100019', 'Liam Jackson', 'liam.jackson@example.com', '111-222-3333', '123 Elm St, Cityville', '2000-05-14', 'Male', 'UK', '2022-09-01', 'Computer Engineering', 5200),
(27, 'S100020', 'Sophia Martinez', 'sophia.martinez@example.com', '555-666-7777', '456 Pine St, Countryside', '1999-11-28', 'Female', 'USA', '2022-09-01', 'Psychology', 4700),
(28, 'S100021', 'Noah Kim', 'noah.kim@example.com', '999-111-2222', '789 Oak St, Cityscape', '2001-08-07', 'Male', 'South Korea', '2022-09-01', 'Electrical Engineering', 5100),
(29, 'S100022', 'Emma Nguyen', 'emma.nguyen@example.com', '444-555-6666', '321 Maple St, Metropolis', '2000-03-19', 'Female', 'Vietnam', '2022-09-01', 'Biology', 4800),
(30, 'S100023', 'Jackson Brown', 'jackson.brown@example.com', '777-888-9999', '555 Cedar St, Townsville', '2002-01-02', 'Male', 'Australia', '2022-09-01', 'Chemistry', 5200),
(31, 'S100024', 'Olivia Lee', 'olivia.lee@example.com', '222-333-4444', '888 Oak St, Countryside', '1998-07-11', 'Female', 'Canada', '2022-09-01', 'History', 4500),
(32, 'S100019', 'Liam Jackson', 'liam.jackson@example.com', '111-222-3333', '123 Elm St, Cityville', '2000-05-14', 'Male', 'UK', '2022-09-01', 'Computer Engineering', 5200),
(33, 'S100020', 'Sophia Martinez', 'sophia.martinez@example.com', '555-666-7777', '456 Pine St, Countryside', '1999-11-28', 'Female', 'USA', '2022-09-01', 'Psychology', 4700),
(34, 'S100021', 'Noah Kim', 'noah.kim@example.com', '999-111-2222', '789 Oak St, Cityscape', '2001-08-07', 'Male', 'South Korea', '2022-09-01', 'Electrical Engineering', 5100),
(35, 'S100022', 'Emma Nguyen', 'emma.nguyen@example.com', '444-555-6666', '321 Maple St, Metropolis', '2000-03-19', 'Female', 'Vietnam', '2022-09-01', 'Biology', 4800),
(36, 'S100023', 'Jackson Brown', 'jackson.brown@example.com', '777-888-9999', '555 Cedar St, Townsville', '2002-01-02', 'Male', 'Australia', '2022-09-01', 'Chemistry', 5200),
(37, 'S100024', 'Olivia Lee', 'olivia.lee@example.com', '222-333-4444', '888 Oak St, Countryside', '1998-07-11', 'Female', 'Canada', '2022-09-01', 'History', 4500),
(38, 'S100025', 'William Garcia', 'william.garcia@example.com', '111-222-3333', '123 Pine St, Suburbia', '1999-12-05', 'Male', 'Spain', '2022-09-01', 'Computer Science', 5000),
(39, 'S100026', 'Sophie Patel', 'sophie.patel@example.com', '555-666-7777', '456 Elm St, Metropolis', '2000-02-18', 'Female', 'India', '2022-09-01', 'Physics', 5200),
(40, 'S100027', 'James Wilson', 'james.wilson@example.com', '999-111-2222', '789 Cedar St, Countryside', '2001-09-30', 'Male', 'USA', '2022-09-01', 'Mechanical Engineering', 5300),
(41, 'S100028', 'Olivia Kim', 'olivia.kim@example.com', '444-555-6666', '321 Oak St, Cityville', '2000-05-12', 'Female', 'South Korea', '2022-09-01', 'Political Science', 4600),
(42, 'S100029', 'Benjamin Nguyen', 'benjamin.nguyen@example.com', '777-888-9999', '555 Maple St, Cityscape', '1998-10-22', 'Male', 'Vietnam', '2022-09-01', 'Economics', 4800),
(43, 'S100030', 'Chloe Smith', 'chloe.smith@example.com', '222-333-4444', '888 Pine St, Townsville', '2001-06-15', 'Female', 'Australia', '2022-09-01', 'Chemistry', 5200),
(44, 'S100031', 'Mia Davis', 'mia.davis@example.com', '111-222-3333', '123 Cedar St, Cityville', '2000-08-10', 'Female', 'USA', '2022-09-01', 'Computer Engineering', 5100),
(45, 'S100032', 'Aiden Kim', 'aiden.kim@example.com', '555-666-7777', '456 Elm St, Countryside', '2001-12-22', 'Male', 'South Korea', '2022-09-01', 'Psychology', 4700),
(46, 'S100033', 'Olivia Johnson', 'olivia.johnson@example.com', '999-111-2222', '789 Pine St, Metropolis', '2002-03-18', 'Female', 'Canada', '2022-09-01', 'Finance', 4900),
(47, 'S100034', 'Liam Nguyen', 'liam.nguyen@example.com', '444-555-6666', '321 Oak St, Cityscape', '1999-06-05', 'Male', 'Vietnam', '2022-09-01', 'Political Science', 4600),
(48, 'S100035', 'Sophia Brown', 'sophia.brown@example.com', '777-888-9999', '555 Maple St, Suburbia', '2001-02-12', 'Female', 'Australia', '2022-09-01', 'Mechanical Engineering', 5300),
(49, 'S100036', 'Ethan Martinez', 'ethan.martinez@example.com', '222-333-4444', '888 Elm St, Townsville', '2000-11-28', 'Male', 'Mexico', '2022-09-01', 'Biomedical Engineering', 5000),
(50, 'S100037', 'Mason Smith', 'mason.smith@example.com', '111-222-3333', '123 Pine St, Cityscape', '2000-09-15', 'Male', 'USA', '2022-09-01', 'Computer Science', 5000),
(51, 'S100038', 'Scarlett Garcia', 'scarlett.garcia@example.com', '555-666-7777', '456 Cedar St, Metropolis', '1999-05-28', 'Female', 'Spain', '2022-09-01', 'Physics', 5200),
(52, 'S100039', 'Henry Kim', 'henry.kim@example.com', '999-111-2222', '789 Oak St, Countryside', '2001-11-30', 'Male', 'South Korea', '2022-09-01', 'Electrical Engineering', 5100),
(53, 'S100040', 'Sophie Nguyen', 'sophie.nguyen@example.com', '444-555-6666', '321 Elm St, Cityville', '2000-04-02', 'Female', 'Vietnam', '2022-09-01', 'Biology', 4800),
(54, 'S100041', 'Jack Martinez', 'jack.martinez@example.com', '777-888-9999', '555 Maple St, Townsville', '2002-01-15', 'Male', 'Mexico', '2022-09-01', 'Chemistry', 5200),
(55, 'S100042', 'Ava Brown', 'ava.brown@example.com', '222-333-4444', '888 Cedar St, Cityscape', '1998-07-01', 'Female', 'Australia', '2022-09-01', 'History', 4500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'subbu', 'subbu'),
(2, 'testName_1', 'test1@pass'),
(3, 'Subrata', 'Subrata'),
(4, 'Admin', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
