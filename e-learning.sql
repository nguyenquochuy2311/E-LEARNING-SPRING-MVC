-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2021 at 12:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `phone_number`, `address`, `email`, `username`, `password`, `image`, `create_date`) VALUES
(1, 'admin', 'admin', '123456', 'hcm', 'admin@gmail.com', 'admin', '123456', '1.jpg', '2021-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `apply_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`id`, `student_id`, `job_id`, `cv`, `status`, `apply_date`) VALUES
(1, 1, 7, 'Elearning.pdf', 1, '2021-07-03'),
(2, 1, 6, 'Elearning.pdf', 1, '2021-07-03'),
(3, 1, 5, 'Elearning.pdf', 1, '2021-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `des`, `image`, `price`, `course_id`, `status`, `aid`, `create_date`) VALUES
(1, 'book 1', 'abcde', 'xcourse_12.png.pagespeed.ic.25NTcM097E.png', '0.00', 1, 1, 1, '2021-07-08'),
(2, 'book 2', 'qqqq', 'new_english_file_intermediate_multipack.jpg', '30000.00', 2, 1, 1, '2021-07-08'),
(3, 'book 3 ', 'abcde', 'oxford_word_skills_upper_intermediate___advanced_students.jpg', '54000.00', 2, 1, 1, '2021-07-08'),
(7, 'b', 'b', 'image', '120.00', 1, 1, NULL, '2021-07-18'),
(8, 'b', ' b', 'oxford_word_skills_upper_intermediate___advanced_students.jpg', '12.00', 3, 0, NULL, '2021-07-18'),
(9, 'sherlock holmes', 'abcde', NULL, '0.00', 4, 1, NULL, '2021-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `des`, `country`, `phone_number`, `email`, `image`, `address`, `username`, `password`, `aid`, `create_date`) VALUES
(1, 'bussiness 1', 'buniness busi1', 'vn', '02154782', NULL, NULL, NULL, 'b1', 'b1', NULL, '2021-07-03'),
(2, 'business 2', 'business 22222', 'korea', '02547862', NULL, NULL, NULL, 'b2', 'b3', NULL, '2021-07-03'),
(3, 'CJ OLIVENETWORKS VINA CO., LTD.', 'ÃÂ¢ÃÂÃÂ¢ VietnamÃÂ¢ÃÂÃÂs largest and one of the fastest growing software companies.', 'Vietnam', '02437689048', 'support@fpt-software.com', 'fpt-software.jpg', 'FPT Cau Giay Building, Duy Tan Street, Dich Vong Hau Ward, Cau Giay District, Hanoi City, Vietnam', 'fpt', 'fpt', 1, '2021-07-28'),
(4, 'MSI', 'adwadawd32112312adwadawdawdwa', 'Korea', '0453225232', 'msi@gmail.com', 'kms.png', 'HCM', 'msi', '12345', 1, '2021-07-28'),
(5, 'Nipa', 'adwadadacacwadada', 'Korea', '0453225232', 'nipa@gmail.com', 'kits.png', 'HN', 'nipa', '12345', 1, '2021-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `des`, `image`, `type`, `aid`, `create_date`) VALUES
(1, 'other', NULL, NULL, 0, 1, '2021-06-28'),
(8, 'Category Course 1', 'abc', NULL, 1, 1, '2021-07-16'),
(9, 'Category Course 2', 'bcd', NULL, 1, 1, '2021-07-16'),
(10, 'Category Course 3', 'aaa', NULL, 1, 1, '2021-07-16'),
(11, 'Accounting', NULL, NULL, 0, 1, '2021-07-28'),
(12, 'Advertising/Media', NULL, NULL, 0, 1, '2021-07-28'),
(13, 'Agriculture', NULL, NULL, 0, 1, '2021-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_id` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `finish_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `title`, `join_id`, `status`, `finish_date`) VALUES
(29, 'studentId-1_courseId-1.png', 10, 1, '2021-07-26'),
(30, 'studentId-1_courseId-3.png', 11, 1, '2021-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `des`, `price`, `image`, `cat_id`, `teacher_id`, `aid`, `status`, `create_date`) VALUES
(1, 'course 1', 'description course 1', '1.00', 'xcourse_01.png.pagespeed.ic.XTOvCuUmZu.png', 9, 4, 1, 1, '2021-06-28'),
(2, 'course 2', 'description course 2', '2.00', 'xcourse_02.png.pagespeed.ic.PL7Wu2UcSB.png', 9, 4, 1, 1, '2021-07-05'),
(3, 'course 3', 'description course 3', '3.00', 'xcourse_03.png.pagespeed.ic.8e1MyY5M7i.png', 9, 5, 1, 1, '2021-07-05'),
(4, 'course 4', 'description course 4', '4.00', 'xcourse_04.png.pagespeed.ic.2rIKmUwjA7.png', 8, 4, 1, 1, '2021-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `discuss`
--

CREATE TABLE `discuss` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  `join_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discuss`
--

INSERT INTO `discuss` (`id`, `content`, `student_id`, `teacher_id`, `datetime`, `join_id`) VALUES
(2, 'I have question, teacher', 1, NULL, '2021-07-27 13:41:31', 10),
(3, 'Yes, I\'m here', NULL, 4, '2021-07-27 13:41:51', 10),
(4, 'a', 1, NULL, '2021-07-28 08:26:18', 10);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT 0,
  `book_id` int(11) DEFAULT 0,
  `star` int(11) DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` text COLLATE utf8mb4_unicode_ci DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `title`, `content`, `course_id`, `book_id`, `star`, `status`, `create_date`) VALUES
(13, 1, 'title 1', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 3, NULL, 3, '1', '2021-07-26 21:13:51'),
(14, 1, 'title 1', 'fffffffffffffffffffffffffffffffffffff', 3, NULL, 5, '1', '2021-07-26 21:14:14'),
(15, 1, 'ffffffffffff', 'asdfasassaaaaaaaaaaaaaaaaaaaaaaaaaa', 3, NULL, 1, '1', '2021-07-26 21:14:48'),
(16, 1, 'title 1', 'fffffffffffffffffffffffff', 3, NULL, 5, '1', '2021-07-26 22:17:20'),
(17, 1, 'ddddooo', 'dfcc sfeijiviwg sdafjie', 3, NULL, 5, '1', '2021-07-27 08:18:27'),
(18, 1, 'khong co', 'ffffffffffffffffffffffffffffffff', 3, NULL, 4, '1', '2021-07-27 09:20:14'),
(19, 1, 'khong co', 'ssssssssssssssssssssss', 3, NULL, 4, '1', '2021-07-27 09:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT 0,
  `cat_id` int(11) DEFAULT 0,
  `salary` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workplaces` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`id`, `student_id`, `cat_id`, `salary`, `experience`, `workplaces`) VALUES
(5, 1, 11, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate(),
  `salary` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `name`, `des`, `business_id`, `cat_id`, `status`, `create_date`, `salary`, `experience`, `requirement`, `expiry_date`) VALUES
(1, 'job 1', '0', 1, NULL, 1, '2021-07-03', NULL, NULL, NULL, NULL),
(2, 'job 2', 'Developing user-friendly responsive web application with modern technologies (JavaScript/HTML5/CSS3 and framework(VueJS/ReactJS)) ', 1, NULL, NULL, '2021-07-03', NULL, NULL, NULL, NULL),
(3, 'job 3 ', '0', 2, NULL, NULL, '2021-07-03', NULL, NULL, NULL, NULL),
(4, 'Front-end Developer (HTML/CSS/JavaScript)', 'Developing user-friendly responsive web application with modern technologies (JavaScript/HTML5/CSS3 and framework(VueJS/ReactJS)) ', 3, 13, 1, '2021-07-28', '500$ upto 2000$', 'Intern', 'Have 3+ years of work experience in front-end development', '2021-07-23'),
(5, 'SQL Developer (Database)', 'Contribute to analyze and develop new database scripts, functions, stored procedures to support application development', 4, 11, 0, '2021-07-28', '500$ upto 2000$', '4 years', 'Educational background', '2021-07-30'),
(6, 'Front-end Software ', 'We are looking for a Front-end Developer to build and implement amazing and complex designs. You will work with other Developers and Product Managers throughout the software development life cycle.', 5, 11, 1, '2021-07-28', '500$ upto 2000$', '4 years', 'BSc/BA in Computer Science, Engineering, or a related field is a plus.', '2021-07-21'),
(7, 'Flutter Mobile Developer', 'Work hand-in-hand with the product manager and UI/UX designers on developing, testing, and maintaining mobile applications using Flutter for both iOS and Android.', 3, 12, 1, '2021-07-28', '500$ upto 2000$', '3 years', 'Bachelor\'s Degree in Computer Science or any related fields.', '2021-07-28'),
(8, 'Elearning', 'awfwaawfwa', 4, 13, 1, '2021-07-28', '500$ upto 2000$', '4 years', 'dawdadadada', '2021-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `joined`
--

CREATE TABLE `joined` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT 0,
  `course_id` int(11) DEFAULT NULL,
  `register_date` date DEFAULT curdate(),
  `expire_date` date DEFAULT NULL,
  `sum_process` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joined`
--

INSERT INTO `joined` (`id`, `student_id`, `course_id`, `register_date`, `expire_date`, `sum_process`) VALUES
(10, 1, 1, '2021-07-23', NULL, 100),
(11, 1, 3, '2021-07-26', NULL, 100);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate(),
  `lengths` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `title`, `video`, `des`, `status`, `course_id`, `teacher_id`, `create_date`, `lengths`) VALUES
(1, 'lesson-01', 'ocean.mp4', 'don\'t have', 1, 1, 4, '2021-07-12', '20:14'),
(2, 'lesson-02', 'video.mp4', 'don\'t have', 1, 1, 4, '2021-07-12', '32:20'),
(3, 'lesson-01', 'ocean.mp4', 'don\'t have', 1, 1, 4, '2021-07-13', '20:14'),
(4, 'lesson-03', 'ocean.mp4', 'don\'t have', 1, 1, 4, '2021-07-13', '23:20'),
(7, 'lesson-2', 'video.mp4', 'don\'t have', 1, 1, 4, '2021-07-20', '00:33'),
(8, 'lesson-01', 'ocean.mp4', 'don\'t have', 1, 4, 4, '2021-07-21', '00:33'),
(10, 'lesson-01', 'video1.mp4', 'don\'t have', 1, 3, 6, '2021-07-26', '03:03'),
(11, 'lesson-02', 'video2.mp4', 'don\'t have', 1, 3, 6, '2021-07-26', '00:33'),
(12, 'lesson-03', 'video3.mp4', 'don\'t have', 1, 3, 6, '2021-07-26', '04:41'),
(13, 'lesson-04', 'video4.mp4', 'don\'t have', 1, 3, 6, '2021-07-26', '04:01'),
(14, 'lesson-05', 'video5.mp4', 'don\'t have', 1, 3, 6, '2021-07-26', '03:59');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `content`, `course_id`, `create_date`) VALUES
(6, 'notice 1', 'content 1', 1, '2021-07-21'),
(7, 'notice 2', 'content 2', 1, '2021-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_no`, `amount`, `payment_date`, `status`) VALUES
(6, 'S8ULLz9SOKn5ZTOkFtwZ', '11.00', '2021-07-23 18:25:09', 1),
(7, 'mtZa0nVXE9ePidJlwG3R', '13.00', '2021-07-26 15:58:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` int(11) NOT NULL,
  `join_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`id`, `join_id`, `lesson_id`, `progress`, `status`, `last_date`) VALUES
(50, 10, 3, 100, 1, '2021-07-23'),
(51, 10, 1, 100, 1, '2021-07-23'),
(52, 10, 2, 100, 1, '2021-07-23'),
(53, 10, 7, 100, 1, '2021-07-23'),
(54, 10, 4, 50, 0, '2021-07-24'),
(55, 11, 10, 100, 1, '2021-07-26'),
(56, 11, 11, 100, 1, '2021-07-26'),
(57, 11, 12, 100, 1, '2021-07-26'),
(58, 11, 13, 100, 1, '2021-07-26'),
(59, 11, 14, 100, 1, '2021-07-26'),
(60, 10, 10, 100, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `des` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `title`, `des`, `file`, `course_id`, `create_date`) VALUES
(6, 'title 1 ', 'support student', 'harverst_reference.pdf', 1, '2021-07-21'),
(7, 'title 2', 'support student', 'oxford.pdf', 1, '2021-07-24');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `username`, `password`, `image`, `create_date`) VALUES
(1, 'huy', 'nguyen', '01234', 'test@gmail.com', 'hcm', 'abc123', '123456', 'dark.jpg', '2021-06-28'),
(18, 'vinh', 'da', '111111', 'vinh@test', 'hn', NULL, '123456', '', '2021-07-09'),
(37, 'adminwemaila', 'tran', '23232323', 'tes1t@gmail.com', 'hn', 'test123', '123456', NULL, '2021-07-15'),
(42, 'david', 'nguyen', NULL, 'david@gmail.com', NULL, 'david123', '123456', NULL, '2021-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `student_orders`
--

CREATE TABLE `student_orders` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_mount` decimal(15,2) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_orders`
--

INSERT INTO `student_orders` (`id`, `student_id`, `invoice_no`, `due_mount`, `book_id`, `course_id`, `order_date`, `status`) VALUES
(7, 1, 'S8ULLz9SOKn5ZTOkFtwZ', '11.00', NULL, 1, '2021-07-23 18:25:10', 1),
(8, 1, 'mtZa0nVXE9ePidJlwG3R', '13.00', NULL, 3, '2021-07-26 15:58:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `create_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `address`, `image`, `username`, `password`, `aid`, `create_date`) VALUES
(4, 'nguyen', 'tran', '1213', 'a@gmail.com', 'hcm', 'xstudent_05.png.pagespeed.ic.moTx3bMNF3.png', 'abcde', 'abcde', 1, '2021-07-21'),
(5, 'huy', 'nguyen', '1231', 'b@gmail.com', 'hn', '', 'efgh', 'efgh', 1, '2021-07-23'),
(6, 'five', 'teacher', '25438000', 'tee@gmail.com', '', 'xstudent_05.png.pagespeed.ic.moTx3bMNF3.png', NULL, '123', NULL, '2021-07-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_job_student_id_student_id` (`student_id`),
  ADD KEY `FK_job_business_id_business_id` (`job_id`) USING BTREE;

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_book_teacher_id_teacher_id` (`course_id`) USING BTREE,
  ADD KEY `FK_book_admin` (`aid`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_business_aid_admin_id` (`aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_categories_aid_teacher_id` (`aid`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__join` (`join_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_course_aid_admin_id` (`aid`),
  ADD KEY `FK_course_teacher_id_teacher_id` (`teacher_id`),
  ADD KEY `FK_course_cat_id_category_id` (`cat_id`);

--
-- Indexes for table `discuss`
--
ALTER TABLE `discuss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_discuss_class_id_class_id` (`join_id`) USING BTREE,
  ADD KEY `FK_discuss_student` (`student_id`),
  ADD KEY `FK_discuss_teacher` (`teacher_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK__course` (`course_id`),
  ADD KEY `FK_feedback_student` (`student_id`),
  ADD KEY `FK_feedback_book` (`book_id`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `FK__student` (`student_id`),
  ADD KEY `FK__category` (`cat_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_job_category` (`cat_id`),
  ADD KEY `FK_job_business` (`business_id`);

--
-- Indexes for table `joined`
--
ALTER TABLE `joined`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_class_course_id_course_id` (`course_id`),
  ADD KEY `FK_join_student` (`student_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lesson_course_id_course_id` (`course_id`),
  ADD KEY `FK_lesson_teacher_id_teacher_id` (`teacher_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_notice_course` (`course_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_progress_join` (`join_id`),
  ADD KEY `FK_progress_lesson` (`lesson_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reference_class_id_class_id` (`course_id`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_orders`
--
ALTER TABLE `student_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_student_orders_student_id_student_id` (`student_id`),
  ADD KEY `FK_student_orders_book` (`book_id`),
  ADD KEY `FK_student_orders_course` (`course_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_teacher_aid_admin_id` (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `discuss`
--
ALTER TABLE `discuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `interest`
--
ALTER TABLE `interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `joined`
--
ALTER TABLE `joined`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `student_orders`
--
ALTER TABLE `student_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `FK_apply_job` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_job_student_id_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_book_admin` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_book_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `FK_business_aid_admin_id` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_category_admin` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `FK__join` FOREIGN KEY (`join_id`) REFERENCES `joined` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_course_aid_admin_id` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_course_cat_id_category_id` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_course_teacher_id_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `discuss`
--
ALTER TABLE `discuss`
  ADD CONSTRAINT `FK_discuss_join_id_join_id` FOREIGN KEY (`join_id`) REFERENCES `joined` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_discuss_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_discuss_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `FK__course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_feedback_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE SET NULL,
  ADD CONSTRAINT `FK_feedback_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `FK__category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK__student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_job_business` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_job_category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `joined`
--
ALTER TABLE `joined`
  ADD CONSTRAINT `FK_joined_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_joined_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `FK_lesson_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_lesson_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `FK_notice_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `FK_progress_joined` FOREIGN KEY (`join_id`) REFERENCES `joined` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_progress_lesson` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `reference`
--
ALTER TABLE `reference`
  ADD CONSTRAINT `FK_reference_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `student_orders`
--
ALTER TABLE `student_orders`
  ADD CONSTRAINT `FK_student_orders_book` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student_orders_course` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_student_orders_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `FK_teacher_admin` FOREIGN KEY (`aid`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
