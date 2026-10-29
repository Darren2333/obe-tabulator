-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 03:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloom_taxonomy`
--

CREATE TABLE `bloom_taxonomy` (
  `bloom_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloom_taxonomy`
--

INSERT INTO `bloom_taxonomy` (`bloom_id`, `code`, `description`) VALUES
(1, 'R', 'Remembering'),
(2, 'U', 'Understanding'),
(3, 'AP', 'Applying'),
(4, 'A', 'Analyzing'),
(5, 'E', 'Evaluating'),
(6, 'C', 'Creating'),
(7, 'P', 'Psychomotor'),
(8, 'AF', 'Affective');

-- --------------------------------------------------------

--
-- Table structure for table `clo_performance`
--

CREATE TABLE `clo_performance` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `programme_code` varchar(20) NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `clo1` varchar(20) DEFAULT NULL,
  `clo2` varchar(20) DEFAULT NULL,
  `clo3` varchar(20) DEFAULT NULL,
  `clo4` varchar(20) DEFAULT NULL,
  `clo5` varchar(20) DEFAULT NULL,
  `clo6` varchar(20) DEFAULT NULL,
  `total_clo` int(11) DEFAULT NULL,
  `domain_r` varchar(20) DEFAULT NULL,
  `domain_u` varchar(20) DEFAULT NULL,
  `domain_ap` varchar(20) DEFAULT NULL,
  `domain_a` varchar(20) DEFAULT NULL,
  `domain_e` varchar(20) DEFAULT NULL,
  `domain_c` varchar(20) DEFAULT NULL,
  `domain_p` varchar(20) DEFAULT NULL,
  `domain_af` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clo_performance`
--

INSERT INTO `clo_performance` (`id`, `course_code`, `course_name`, `programme_code`, `lecturer_name`, `semester`, `student_name`, `student_id`, `clo1`, `clo2`, `clo3`, `clo4`, `clo5`, `clo6`, `total_clo`, `domain_r`, `domain_u`, `domain_ap`, `domain_a`, `domain_e`, `domain_c`, `domain_p`, `domain_af`) VALUES
(1, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(2, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(3, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(4, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(5, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(6, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(7, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(8, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(9, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(10, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(11, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(12, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(13, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(14, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(15, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(16, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(17, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(18, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(19, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(20, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(21, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(22, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(23, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(24, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(25, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(26, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(27, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(28, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(29, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(30, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(31, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(32, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(33, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(34, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(35, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(36, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(37, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(38, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 2, 'Achieved', 'Achieved', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(39, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', 'No', 'No', 'NA', 'NA', 'NA', 'NA', 0, 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `cluster_of_learning_outcome`
--

CREATE TABLE `cluster_of_learning_outcome` (
  `cluster_id` bigint(20) UNSIGNED NOT NULL,
  `cluster_code` varchar(5) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cluster_of_learning_outcome`
--

INSERT INTO `cluster_of_learning_outcome` (`cluster_id`, `cluster_code`, `description`) VALUES
(1, 'C1', 'Knowledge & understanding'),
(2, 'C2', 'Cognitive skills'),
(3, 'C3A', 'Practical skills'),
(4, 'C3B', 'Interpersonal skills'),
(5, 'C3C', 'Communucation skills'),
(6, 'C3D', 'Digital skills'),
(7, 'C3E', 'Numeracy skills'),
(8, 'C3F', 'Leadership, Autonomy & Responsibility'),
(9, 'C4A', 'Personal skills'),
(10, 'C4B', 'Entrepreneurial skills'),
(11, 'C5', 'Ethics & Professionalism');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`) VALUES
('BM2017', 'Principles of Entrepreneurship'),
('DE2004', 'Introduction to Public Speaking'),
('EB2031', 'Statistics'),
('EC2100', 'Understanding Computing'),
('EC2103', 'Computer Organisation'),
('EC2104', 'Structured Programming'),
('EC2106', 'Web Development'),
('EC2107', 'Calculus and Algebra'),
('EC2108', 'Introduction to Computer Network'),
('EC2109', 'Cybersecurity Fundamentals'),
('EC2302', 'Software Engineering'),
('EC2305', 'Discrete Math'),
('EC2306', 'Object Oriented Programming'),
('EC2308', 'Internet Programming'),
('EC2309', 'System Analysis and Design'),
('EC2310', 'Database Development'),
('EC2312', 'Operating System'),
('EC2314', 'Information System'),
('EC2315', 'Human Computer Interaction'),
('EC2320', 'Summative (Computing Project)'),
('EC2324', 'Introduction to Artificial Intelligence'),
('EC2325', 'Introduction to Cloud Computing'),
('EC2326', 'Introduction to IOT'),
('EC2330', 'Intership'),
('EC2331', 'Data Communication and Networking'),
('EC2332', 'Algorithms and Complexity'),
('EC2333', 'Programming With Python'),
('EC2334', 'System Fundamentals'),
('EC2335', 'Parallel and Distributed Computing'),
('EC2337', 'IT Project Management'),
('EC2338', 'Platform Based Development'),
('MPU2213', 'Bahasa Kebangsaan A');

-- --------------------------------------------------------

--
-- Table structure for table `course_learning_outcome`
--

CREATE TABLE `course_learning_outcome` (
  `clo_id` int(11) NOT NULL,
  `clo_code` varchar(10) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  `cluster_code` varchar(10) NOT NULL,
  `plo_code` varchar(10) NOT NULL,
  `bloom_taxonomy` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_learning_outcome`
--

INSERT INTO `course_learning_outcome` (`clo_id`, `clo_code`, `course_code`, `description`, `cluster_code`, `plo_code`, `bloom_taxonomy`) VALUES
(3, 'CLO1', 'EC2103', 'Explain the digital systems, memory data and program', 'C2', 'PLO1', 'U'),
(4, 'CLO2', 'EC2103', 'Draw logic gates and block diagram of a computer system', 'C3A', 'PLO2', 'AP');

-- --------------------------------------------------------

--
-- Table structure for table `course_programme`
--

CREATE TABLE `course_programme` (
  `course_code` varchar(10) NOT NULL,
  `programme_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_programme`
--

INSERT INTO `course_programme` (`course_code`, `programme_code`) VALUES
('BM2017', 'DCS'),
('BM2017', 'DIT'),
('DE2004', 'DCS'),
('DE2004', 'DIT'),
('EB2031', 'DCS'),
('EB2031', 'DIT'),
('EC2100', 'DCS'),
('EC2100', 'DIT'),
('EC2103', 'DCS'),
('EC2103', 'DIT'),
('EC2104', 'DCS'),
('EC2104', 'DIT'),
('EC2106', 'DCS'),
('EC2106', 'DIT'),
('EC2107', 'DCS'),
('EC2107', 'DIT'),
('EC2108', 'DCS'),
('EC2108', 'DIT'),
('EC2109', 'DCS'),
('EC2109', 'DIT'),
('EC2302', 'DCS'),
('EC2305', 'DCS'),
('EC2305', 'DIT'),
('EC2306', 'DCS'),
('EC2306', 'DIT'),
('EC2308', 'DCS'),
('EC2308', 'DIT'),
('EC2309', 'DCS'),
('EC2309', 'DIT'),
('EC2310', 'DCS'),
('EC2310', 'DIT'),
('EC2312', 'DCS'),
('EC2312', 'DIT'),
('EC2314', 'DIT'),
('EC2315', 'DCS'),
('EC2315', 'DIT'),
('EC2320', 'DCS'),
('EC2320', 'DIT'),
('EC2324', 'DCS'),
('EC2324', 'DIT'),
('EC2325', 'DIT'),
('EC2326', 'DIT'),
('EC2330', 'DCS'),
('EC2330', 'DIT'),
('EC2331', 'DIT'),
('EC2332', 'DCS'),
('EC2333', 'DCS'),
('EC2333', 'DIT'),
('EC2334', 'DCS'),
('EC2335', 'DCS'),
('EC2337', 'DIT'),
('EC2338', 'DCS'),
('MPU2213', 'DCS'),
('MPU2213', 'DIT');

-- --------------------------------------------------------

--
-- Table structure for table `plo_performance`
--

CREATE TABLE `plo_performance` (
  `plo_performance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `programme_code` varchar(20) NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `plo1` varchar(20) DEFAULT NULL,
  `plo2` varchar(20) DEFAULT NULL,
  `plo3` varchar(20) DEFAULT NULL,
  `plo4` varchar(20) DEFAULT NULL,
  `plo5` varchar(20) DEFAULT NULL,
  `plo6` varchar(20) DEFAULT NULL,
  `plo7` varchar(20) DEFAULT NULL,
  `plo8` varchar(20) DEFAULT NULL,
  `plo9` varchar(20) DEFAULT NULL,
  `plo10` varchar(20) DEFAULT NULL,
  `plo11` varchar(20) DEFAULT NULL,
  `plo12` varchar(20) DEFAULT NULL,
  `plo13` varchar(20) DEFAULT NULL,
  `plo14` varchar(20) DEFAULT NULL,
  `plo15` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plo_performance`
--

INSERT INTO `plo_performance` (`plo_performance_id`, `course_code`, `course_name`, `programme_code`, `lecturer_name`, `semester`, `student_name`, `student_id`, `plo1`, `plo2`, `plo3`, `plo4`, `plo5`, `plo6`, `plo7`, `plo8`, `plo9`, `plo10`, `plo11`, `plo12`, `plo13`, `plo14`, `plo15`) VALUES
(1, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', '0.00', '0.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(2, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', '0.00', '0.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(3, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', '0.00', '0.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(4, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', '83.33', '70.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(5, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', '66.67', '60.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(6, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', '33.33', '40.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(7, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'James', '001', '83.33', '70.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(8, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'May', '002', '66.67', '60.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(9, 'EC2103', 'Computer Organisation', 'DCS', 'Alex', '5 DEC', 'John', '003', '33.33', '40.00', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `programme_code` varchar(20) NOT NULL,
  `programme_name` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programme_code`, `programme_name`) VALUES
('DCS', 'Diploma In Computer Science'),
('DIT', 'Diploma In Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `programme_learning_outcome`
--

CREATE TABLE `programme_learning_outcome` (
  `plo_id` bigint(20) NOT NULL,
  `plo_code` varchar(5) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme_learning_outcome`
--

INSERT INTO `programme_learning_outcome` (`plo_id`, `plo_code`, `description`) VALUES
(1, 'PLO1', 'Explain concepts, principles and theories relating to Computer Science'),
(2, 'PLO2', 'Apply computing tools and techniques to solve well-defined and routine problems and develop solutions'),
(3, 'PLO3', 'Perform a range of support and development tasks on computing related to job functions'),
(4, 'PLO4', 'Demonstrate effective interaction with stakeholders and society in a work-related environment'),
(5, 'PLO5', 'Exhibit effective communication with stakeholders and society in a work-related environment'),
(6, 'PLO6', 'Use appropriate digital tools on computing related job functions'),
(7, 'PLO7', 'Apply appropriate numerical skills in computing related job functions'),
(8, 'PLO8', 'Demonstrate supervisory skills and responsibility in executing instructions related to job functions'),
(9, 'PLO9', 'Commit to principles of lifelong learning in academic and career  development'),
(10, 'PLO10', 'Demonstrate an entrepreneurial mindset in performing task'),
(11, 'PLO11', 'Commit to professional and ethical practices in executing instructions related to the job and organisational functions');

-- --------------------------------------------------------

--
-- Table structure for table `programme_plo`
--

CREATE TABLE `programme_plo` (
  `programme_code` varchar(20) NOT NULL,
  `plo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programme_plo`
--

INSERT INTO `programme_plo` (`programme_code`, `plo_id`) VALUES
('DCS', 1),
('DCS', 2),
('DCS', 3),
('DCS', 4),
('DCS', 5),
('DCS', 6),
('DCS', 7),
('DCS', 8),
('DCS', 9),
('DCS', 10),
('DCS', 11),
('DIT', 1),
('DIT', 2),
('DIT', 3),
('DIT', 4),
('DIT', 5),
('DIT', 6),
('DIT', 7),
('DIT', 8),
('DIT', 9),
('DIT', 10),
('DIT', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloom_taxonomy`
--
ALTER TABLE `bloom_taxonomy`
  ADD PRIMARY KEY (`bloom_id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `clo_performance`
--
ALTER TABLE `clo_performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `programme_code` (`programme_code`);

--
-- Indexes for table `cluster_of_learning_outcome`
--
ALTER TABLE `cluster_of_learning_outcome`
  ADD PRIMARY KEY (`cluster_id`),
  ADD UNIQUE KEY `cluster_code` (`cluster_code`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_learning_outcome`
--
ALTER TABLE `course_learning_outcome`
  ADD PRIMARY KEY (`clo_id`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `cluster_code` (`cluster_code`),
  ADD KEY `plo_code` (`plo_code`),
  ADD KEY `bloom_taxonomy` (`bloom_taxonomy`);

--
-- Indexes for table `course_programme`
--
ALTER TABLE `course_programme`
  ADD PRIMARY KEY (`course_code`,`programme_code`),
  ADD KEY `programme_code` (`programme_code`);

--
-- Indexes for table `plo_performance`
--
ALTER TABLE `plo_performance`
  ADD PRIMARY KEY (`plo_performance_id`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `programme_code` (`programme_code`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`programme_code`);

--
-- Indexes for table `programme_learning_outcome`
--
ALTER TABLE `programme_learning_outcome`
  ADD PRIMARY KEY (`plo_id`),
  ADD UNIQUE KEY `plo_code` (`plo_code`);

--
-- Indexes for table `programme_plo`
--
ALTER TABLE `programme_plo`
  ADD PRIMARY KEY (`programme_code`,`plo_id`),
  ADD KEY `plo_id` (`plo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloom_taxonomy`
--
ALTER TABLE `bloom_taxonomy`
  MODIFY `bloom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clo_performance`
--
ALTER TABLE `clo_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cluster_of_learning_outcome`
--
ALTER TABLE `cluster_of_learning_outcome`
  MODIFY `cluster_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `course_learning_outcome`
--
ALTER TABLE `course_learning_outcome`
  MODIFY `clo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plo_performance`
--
ALTER TABLE `plo_performance`
  MODIFY `plo_performance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clo_performance`
--
ALTER TABLE `clo_performance`
  ADD CONSTRAINT `clo_performance_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `clo_performance_ibfk_2` FOREIGN KEY (`programme_code`) REFERENCES `programme` (`programme_code`);

--
-- Constraints for table `course_learning_outcome`
--
ALTER TABLE `course_learning_outcome`
  ADD CONSTRAINT `course_learning_outcome_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `course_learning_outcome_ibfk_2` FOREIGN KEY (`cluster_code`) REFERENCES `cluster_of_learning_outcome` (`cluster_code`),
  ADD CONSTRAINT `course_learning_outcome_ibfk_3` FOREIGN KEY (`plo_code`) REFERENCES `programme_learning_outcome` (`plo_code`),
  ADD CONSTRAINT `course_learning_outcome_ibfk_4` FOREIGN KEY (`bloom_taxonomy`) REFERENCES `bloom_taxonomy` (`code`);

--
-- Constraints for table `course_programme`
--
ALTER TABLE `course_programme`
  ADD CONSTRAINT `course_programme_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `course_programme_ibfk_2` FOREIGN KEY (`programme_code`) REFERENCES `programme` (`programme_code`);

--
-- Constraints for table `plo_performance`
--
ALTER TABLE `plo_performance`
  ADD CONSTRAINT `course_code` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `programme_code` FOREIGN KEY (`programme_code`) REFERENCES `programme` (`programme_code`);

--
-- Constraints for table `programme_plo`
--
ALTER TABLE `programme_plo`
  ADD CONSTRAINT `programme_plo_ibfk_1` FOREIGN KEY (`programme_code`) REFERENCES `programme` (`programme_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programme_plo_ibfk_2` FOREIGN KEY (`plo_id`) REFERENCES `programme_learning_outcome` (`plo_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
