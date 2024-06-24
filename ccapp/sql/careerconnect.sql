-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 10:21 PM
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
-- Database: `careerconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `last_loggedin` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `admin_firstname` varchar(100) NOT NULL,
  `admin_lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `last_loggedin`, `date_updated`, `admin_firstname`, `admin_lastname`) VALUES
(2, 'admin@cc.com', 'scrypt:32768:8:1$kpDr5Qtyyp8K9OWi$c1c9b42c7af025a86b298e942855fc572f73712767e4184808bfe0477ee79086b09c1021a45ad954b99753ab1df12f676d12c9b032347797232ebe3c2263c6a9', '2024-06-03 21:26:51', '2024-06-03 21:26:24', 'Phil', 'Banks');

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('16edffa481cf');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `application_id` int(11) NOT NULL,
  `applied_on` datetime DEFAULT NULL,
  `application_jobseeker_cv` varchar(255) NOT NULL,
  `application_status` enum('Pending','Accepted','Declined') DEFAULT 'Pending',
  `application_jobid` int(11) DEFAULT NULL,
  `application_jobseekerid` int(11) DEFAULT NULL,
  `application_employerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `date_bookmarked` datetime DEFAULT NULL,
  `bookmark_jobid` int(11) DEFAULT NULL,
  `bookmark_jobseekerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Accounting, Banking and Insurance'),
(2, 'Administration'),
(3, 'Agriculture'),
(4, 'Business and Management'),
(5, 'Customer Service'),
(6, 'Design, Arts and Entertainment'),
(7, 'Egineering and Manufacturing'),
(8, 'Health and Wellbeing'),
(9, 'Hotels, Travel, Food and Restaurants'),
(10, 'Human Resources'),
(11, 'ICT and Software'),
(12, 'Media and Languages'),
(13, 'Slaes and Marketing'),
(14, 'Teaching, Research and Academy');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `employer_id` int(11) NOT NULL,
  `employer_firstname` varchar(200) NOT NULL,
  `employer_lastname` varchar(200) NOT NULL,
  `employer_email` varchar(200) NOT NULL,
  `employer_password` varchar(255) NOT NULL,
  `employer_phone` varchar(15) NOT NULL,
  `employer_company_name` varchar(255) NOT NULL,
  `employer_company_size` varchar(200) NOT NULL,
  `employer_company_address` text DEFAULT NULL,
  `employer_company_description` text DEFAULT NULL,
  `employer_company_logo` text DEFAULT NULL,
  `employer_company_email` varchar(255) DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `employer_stateid` int(11) DEFAULT NULL,
  `employer_lgaid` int(11) DEFAULT NULL,
  `employer_typeid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`employer_id`, `employer_firstname`, `employer_lastname`, `employer_email`, `employer_password`, `employer_phone`, `employer_company_name`, `employer_company_size`, `employer_company_address`, `employer_company_description`, `employer_company_logo`, `employer_company_email`, `date_registered`, `date_updated`, `employer_stateid`, `employer_lgaid`, `employer_typeid`) VALUES
(3, 'Peter', 'Gabriel', 'peter.gabe@yahoo.com', 'scrypt:32768:8:1$92EYXxSIIBdLm8K3$60c01cc673657a19bd1ca274e2698793999aded2258a5ea04f0b8d5e9814b0a76939ee9cedf6e4419305b99797ff714aece39bd6d84dd24a0a31d7ebafd74da8', '07063784762', 'Wind of Glory Ltd', '3', '11 Happy Street, Lulu', 'We are a dynamic technology company headquartered in Lagos, Nigeria. With a passionate team of skilled professionals, we specialize in developing cutting-edge software solutions for businesses across various industries. Our mission is to empower organizations by providing innovative tools that enhance productivity, streamline processes, and drive growth.', NULL, 'windofglory@gmail.com', '2024-05-30 11:26:42', '2024-05-30 11:26:42', 17, 309, 2),
(4, 'Michael', 'Jordan', 'michael@gmail.com', 'scrypt:32768:8:1$zwpIHYmL1S6W5uGs$7961791610df462bf066652c2d55b9b21522b4360e6e837b9fcaea6b213664ec591dacb4a86f12ffe1a61d7592f373fe6b5cc9f1ab5857fc2bc42f3175edd9f0', '09048466433', 'Winter Heavens', '3', NULL, NULL, NULL, NULL, '2024-06-05 05:52:40', '2024-06-05 05:52:40', 18, 338, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `sent_on` datetime DEFAULT NULL,
  `feedback_employerid` int(11) DEFAULT NULL,
  `feedback_jobseekerid` int(11) DEFAULT NULL,
  `feedback_applicationid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_type` varchar(25) NOT NULL,
  `job_mode` varchar(25) NOT NULL,
  `job_description` text NOT NULL,
  `job_responsibilities` text DEFAULT NULL,
  `job_qualification` text DEFAULT NULL,
  `job_vacancy` varchar(15) DEFAULT NULL,
  `job_salary` varchar(150) DEFAULT NULL,
  `job_status` enum('Available','Closed') DEFAULT 'Available',
  `posted_on` datetime DEFAULT NULL,
  `job_employerid` int(11) DEFAULT NULL,
  `job_categoryid` int(11) DEFAULT NULL,
  `job_stateid` int(11) DEFAULT NULL,
  `job_levelid` int(11) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `job_lgaid` int(11) DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `job_type`, `job_mode`, `job_description`, `job_responsibilities`, `job_qualification`, `job_vacancy`, `job_salary`, `job_status`, `posted_on`, `job_employerid`, `job_categoryid`, `job_stateid`, `job_levelid`, `language`, `job_lgaid`, `expires_on`) VALUES
(12, 'UI/UX Designer', 'Fulltime', 'Onsite', 'We are looking for a UI/UX designer, a multi-faceted professional who combines elements of visual design, psychology, and technology to create seamless user experiences', 'Gathering and evaluating user requirements, in collaboration with product managers and engineers/ Illustrating design ideas using storyboards, process flows and sitemaps/ Designing graphic user interface elements, like menus, tabs and widgets', 'Team spirit, strong communication skills to collaborate with various stakeholders/ Proven work experience as a UI/UX Designer or similar role/ BSc in Design, Computer Science or relevant field/ Good time-management skills', '2', '90000', 'Available', '2024-05-30 12:49:26', 3, 1, 17, 6, 'English, Hausa', 298, '2024-06-29 12:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekers`
--

CREATE TABLE `jobseekers` (
  `jobseeker_id` int(11) NOT NULL,
  `jobseeker_fname` varchar(100) NOT NULL,
  `jobseeker_lname` varchar(100) NOT NULL,
  `jobseeker_email` varchar(200) NOT NULL,
  `jobseeker_gender` enum('Male','Female') NOT NULL,
  `jobseeker_password` varchar(255) NOT NULL,
  `jobseeker_phone` varchar(15) DEFAULT NULL,
  `jobseeker_cv` text DEFAULT NULL,
  `jobseeker_dp` text DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `jobseeker_levelid` int(11) DEFAULT NULL,
  `jobseeker_stateid` int(11) DEFAULT NULL,
  `jobseeker_categoryid` int(11) DEFAULT NULL,
  `jobseeker_lgaid` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseekers`
--

INSERT INTO `jobseekers` (`jobseeker_id`, `jobseeker_fname`, `jobseeker_lname`, `jobseeker_email`, `jobseeker_gender`, `jobseeker_password`, `jobseeker_phone`, `jobseeker_cv`, `jobseeker_dp`, `date_registered`, `date_updated`, `jobseeker_levelid`, `jobseeker_stateid`, `jobseeker_categoryid`, `jobseeker_lgaid`, `dob`) VALUES
(4, 'Michael', 'Jordan', 'tom@appa.tv', 'Male', 'scrypt:32768:8:1$j44RYekjgjaSOV11$4c31d19195f562f65a5e9fa13f85c60a26656df1f5e31c7618b40d9b94779ac3cd16a812d865bee6d8577d81f4ec436328b1a47ea1afabb1fbc711b64924c4e7', '0908376745', '3164d6062dbe633a80c137d68474fbf1.pdf', '86e8250524cb402709ebb77419fd6eb4.jpeg', '2024-05-30 07:26:55', '2024-05-30 11:26:42', 6, 16, 4, 280, '2024-05-30'),
(5, 'Lois', 'Lane', 'lois@lane.eu', 'Female', 'scrypt:32768:8:1$iGCkTA5nymIXKoXY$43c3880c2fa28831b4220ee6ead531ff258013f36b8322c101452504f83763eaa07d05ed8934b8745aa2a8ba3012351cd439832b6971c6f0f35803102d859547', NULL, '861a600dd6f8101f05e0f8c779c0f929.pdf', NULL, '2024-06-04 23:45:48', '2024-06-05 05:52:40', 4, 15, 3, 257, NULL),
(7, 'Malachy', 'Jane', 'gloriabanks@gears.com', 'Male', 'scrypt:32768:8:1$YlgsWDKv2pYjzmwR$2fe3fd7f500638cb12bdf2e5499da2667944de9d8aad38410f50d93af7ad4d6f3042e1632f480b575415618e8e26eaee8b80febd3d10efc393b2f8e35039562a', '09075664567', NULL, 'f1b420ac463a034068e565c24d50ef4d.jpeg', '2024-06-24 11:46:50', '2024-06-24 11:58:26', 5, 15, 6, 258, '2015-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekerskills`
--

CREATE TABLE `jobseekerskills` (
  `jobseeker_skill_id` int(11) NOT NULL,
  `skill_skillid` int(11) DEFAULT NULL,
  `jobseeker_skill_jobseekerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseekerskills`
--

INSERT INTO `jobseekerskills` (`jobseeker_skill_id`, `skill_skillid`, `jobseeker_skill_jobseekerid`) VALUES
(1, 20, 5),
(2, 18, 5),
(3, 23, 5),
(4, 19, 5),
(5, 44, 7),
(6, 41, 7),
(7, 43, 7),
(8, 40, 7),
(9, 46, 7);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`) VALUES
(3, 'None'),
(4, 'Entry Level'),
(5, 'Junior'),
(6, 'Mid-Level'),
(7, 'Senior');

-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE `lga` (
  `lga_id` int(11) NOT NULL,
  `lga_name` varchar(100) NOT NULL,
  `lga_stateid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lga`
--

INSERT INTO `lga` (`lga_id`, `lga_name`, `lga_stateid`) VALUES
(1, 'Aba North', 1),
(2, 'Aba South', 1),
(3, 'Arochukwu', 1),
(4, 'Bende', 1),
(5, 'Isiala Ngwa South', 1),
(6, 'Ikwuano', 1),
(7, 'Isiala', 1),
(8, 'Ngwa North', 1),
(9, 'Isiala Ngwa South', 1),
(10, 'Isukwuato', 1),
(11, 'Ukwa West', 1),
(12, 'Ukwa West', 1),
(13, 'Umuahia', 1),
(14, 'Umuahia South', 1),
(15, 'Demsa', 2),
(16, 'Fufore', 2),
(17, 'Ganye', 2),
(18, 'Girei', 2),
(19, 'Gombi', 2),
(20, 'Jada', 2),
(21, 'Yola North', 2),
(22, 'Lamurde', 2),
(23, 'Madagali', 2),
(24, 'Maiha', 2),
(25, 'Mayo-Belwa', 2),
(26, 'Michika', 2),
(27, 'Mubi South', 2),
(28, 'Numna', 2),
(29, 'Shelleng', 2),
(30, 'Song', 2),
(31, 'Toungo', 2),
(32, 'Jimeta', 2),
(33, 'Yola South', 2),
(34, 'Hung', 2),
(35, 'Aguata', 4),
(36, 'Anambra', 4),
(37, 'Anambra west', 4),
(38, 'Anaocga', 4),
(39, 'Awka South', 4),
(40, 'Awka North', 4),
(41, 'Ogbaru', 4),
(42, 'Onitsha South', 4),
(43, 'Onitsha North', 4),
(44, 'Orumba North', 4),
(45, 'Orumba South', 4),
(46, 'Oyi', 4),
(47, 'Abak', 3),
(48, 'Eastern Obolo', NULL),
(49, 'Eket', 3),
(50, 'Essien Udim', NULL),
(51, 'Etimekpo', 3),
(52, 'Etinan', 3),
(53, 'Ibeno', 3),
(54, 'Ibesikpo Asutan', 3),
(55, 'Ibiono Ibom', 3),
(56, 'Ika', 3),
(57, 'Ikono', 3),
(58, 'Ikot Abasi', 3),
(59, 'Ikot Ekpene', 3),
(60, 'Ini', 3),
(61, 'Itu', 3),
(62, 'Mbo', 3),
(63, 'Mkpat Enin', 3),
(64, 'Nsit Ibom', 3),
(65, 'Nsit Ubium', 3),
(66, 'Obot Akara', 3),
(67, 'Okobo', 3),
(68, 'Onna', 3),
(69, 'Orukanam', 3),
(70, 'Oron', 3),
(71, 'Udung Uko', 3),
(72, 'Ukanafun', 3),
(73, 'Esit Eket', 3),
(74, 'Uruan', 3),
(75, 'Urue Offoung', 3),
(76, 'Oruko Ete', 3),
(77, 'Uyo', 3),
(78, 'Alkaleri', 5),
(79, 'Bauchi', 5),
(80, 'Bogoro', 5),
(81, 'Dazaro', 5),
(82, 'Dass', 5),
(83, 'Gamawa', 5),
(84, 'Ganjuwa', 5),
(85, 'Giade', 5),
(86, 'Jama`are', 5),
(87, 'Katagum', 5),
(88, 'Kirfi', 5),
(89, 'Misau', 5),
(90, 'Nigi', 5),
(91, 'Hira', 5),
(92, 'Tafawa Belewa', 5),
(93, 'Itas Gadua', 5),
(94, 'Toro', 5),
(95, 'Warji', 5),
(96, 'Zaki', 5),
(97, 'Dambam', 5),
(98, 'Brass', 6),
(99, 'Ekeremor', 6),
(100, 'Brass', 6),
(101, 'Ekeremor', 6),
(102, 'Kolok/Opokuma', 6),
(103, 'Nembe', 6),
(104, 'Ogbia', 6),
(105, 'Sagbama', 6),
(106, 'Southern Ijwa', 6),
(107, 'Yenagoa', 6),
(108, 'Membe', 6),
(109, 'Ador', 7),
(110, 'Agatu', NULL),
(111, 'Apa', 7),
(112, 'Buruku', NULL),
(113, 'Gboko', 7),
(114, 'Guma', 7),
(115, 'Gwer West', 7),
(116, 'Gwer East', 7),
(117, 'Kastina-ala', 7),
(118, 'Konshisha', 7),
(119, 'Kwande', 7),
(120, 'Logo', 7),
(121, 'Makurdi', 7),
(122, 'Obi', 7),
(123, 'Ogbadibo', 7),
(124, 'Ohimini', 7),
(125, 'Oju', 7),
(126, 'Okpokwu', 7),
(127, 'Oturkpo', 7),
(128, 'Tarka', 7),
(129, 'Ukum', 7),
(130, 'Vandeyka', 7),
(131, 'Abadan', 8),
(132, 'Askira/Uba', 8),
(133, 'Bama', 8),
(134, 'Chibok', 8),
(135, 'Damboa', 8),
(136, 'Dikwagubio', 8),
(137, 'Guzamala', 8),
(138, 'Gwoza', 8),
(139, 'Hawul', 8),
(140, 'Jere', 8),
(141, 'Kaga', 8),
(142, 'Kalka/Balge', 8),
(143, 'Konduga', 8),
(144, 'Kukawa', 8),
(145, 'Kwaya-ku', 8),
(146, 'Mafa', 8),
(147, 'Magumeri', 8),
(148, 'Maiduguri', 8),
(149, 'Marte', 8),
(150, 'Mobbar', 8),
(151, 'Monguno', 8),
(152, 'Ngala', 8),
(153, 'Nganzai', 8),
(154, 'Shani', 8),
(155, 'Abia', 9),
(156, 'Akampa', 9),
(157, 'Akpabuyo', 9),
(158, 'Bakassi', 9),
(159, 'Bekwara', 9),
(160, 'Biase', 9),
(161, 'Boki', 9),
(162, 'Calabar South', 9),
(163, 'Etung', 9),
(164, 'Ikom', 9),
(165, 'Obanliku', 9),
(166, 'Obubra', 9),
(167, 'Obudu', 9),
(168, 'Odukpani', 9),
(169, 'Ogoja', 9),
(170, 'Ugep North', 9),
(171, 'Yala', 9),
(172, 'Yarkur', 9),
(173, 'Aniocha South', 10),
(174, 'Anioha', NULL),
(175, 'Bomadi', 10),
(176, 'Burutu', NULL),
(177, 'Ethiope West', 10),
(178, 'Ethiope East', 10),
(179, 'Ika North-East', 10),
(180, 'Ika South', 10),
(181, 'Isoko South', 10),
(182, 'Isoko North', 10),
(183, 'Ndokwa West', 10),
(184, 'Ndokwa East', 10),
(185, 'Okpe', 10),
(186, 'Oshimili North', 10),
(187, 'Oshimili South', 10),
(188, 'Patani', 10),
(189, 'Sapele', 10),
(190, 'Udu', 10),
(191, 'Ughelli South', 10),
(192, 'Ughelli North', 10),
(193, 'Warri North', 10),
(194, 'Warri Central', 10),
(195, 'Ukwuani', 10),
(196, 'Warri South', 10),
(197, 'Abakaliki', 11),
(198, 'Afikpo South', NULL),
(199, 'Afikpo Notrh', NULL),
(200, 'Ebonyi', 11),
(201, 'Ezza', 11),
(202, 'Ezza South', 11),
(203, 'Ikwo', 11),
(204, 'Ishielu', 11),
(205, 'Ivo', 11),
(206, 'Ohaozara', 11),
(207, 'Ohaukwu', 11),
(208, 'Onicha', 11),
(209, 'Izzi', 11),
(210, 'Akoko-Edo', 12),
(211, 'Egor', 12),
(212, 'Essann East', 12),
(213, 'Egor', 12),
(214, 'Esan South-East', 12),
(215, 'Esan Central', 12),
(216, 'Esan West', 12),
(217, 'Etsako Central', 12),
(218, 'Etsako East', 12),
(219, 'Etsako', 12),
(220, 'Orhionwon', 12),
(221, 'Ivia North', 12),
(222, 'Ovia South-East', 12),
(223, 'Owan West', 12),
(224, 'Owan East', 12),
(225, 'Uhunwonde', 12),
(226, 'Ado Ekiti', 13),
(227, 'Effon Alaiye', 13),
(228, 'Ekiti South-East', 13),
(229, 'Ekiti West', 13),
(230, 'Ekiti East', 13),
(231, 'Emure/Ise', 13),
(232, 'Orun', 13),
(233, 'Ido', 13),
(234, 'Osi', 13),
(235, 'Ijero', 13),
(236, 'Llejemeje', 13),
(237, 'Iredondu', 13),
(238, 'Ise/Orun', 13),
(239, 'Moba', 13),
(240, 'Oye', 13),
(241, 'Aiyekire', 13),
(242, 'Agwu', 14),
(243, 'Aniri', 14),
(244, 'Enugu East', 14),
(245, 'Enugu South', 14),
(246, 'Enugu North', 14),
(247, 'Ezeagu', 14),
(248, 'Igbo Eze North', 14),
(249, 'Ogbo Etiti', 14),
(250, 'Nsukka', 14),
(251, 'Orji River', 14),
(252, 'Udenu', 14),
(253, 'Uzo Uwani', 14),
(254, 'Udi', 14),
(255, 'Akko', 15),
(256, 'Balanga', 15),
(257, 'Billiri', 15),
(258, 'Dukku', 15),
(259, 'Dunakaye', 15),
(260, 'Gombe', 15),
(261, 'Kaltungo', 15),
(262, 'Kwami', 15),
(263, 'Nafada/Bajoga', 15),
(264, 'Shomgom', 15),
(265, 'Yamaltu/Deba', 15),
(266, 'Aboh-Mbaise', 16),
(267, 'Ahiazu-Mbaise', 16),
(268, 'Ehime-Mbaino', 16),
(269, 'Ezinhite', 16),
(270, 'Ideato North', 16),
(271, 'Ideato South', 16),
(272, 'Ihitte/Uboma', 16),
(273, 'Ikeduru', 16),
(274, 'Isiala', 16),
(275, 'Isu', 16),
(276, 'Mbaitoli', 16),
(277, 'Ngor Okpala', 16),
(278, 'Njaba', 16),
(279, 'Nwangele', 16),
(280, 'Nkwere', 16),
(281, 'Obowo', 16),
(282, 'Aguta', 16),
(283, 'Ohaji Egbema', 16),
(284, 'Okigwe', 16),
(285, 'Onuimo', 16),
(286, 'Orlu', 16),
(287, 'Orsu', 16),
(288, 'Oru West', 16),
(289, 'Oru', 16),
(290, 'Owerri', 16),
(291, 'Owerri North', 16),
(292, 'Owerri South', 16),
(293, 'Auyo', 17),
(294, 'Babura', 17),
(295, 'Birnin-Kudu', 17),
(296, 'Birniwa', 17),
(297, 'Buji', 17),
(298, 'Duste', 17),
(299, 'Garki', 17),
(300, 'Gagarawa', 17),
(301, 'Gumel', 17),
(302, 'Guri', 17),
(303, 'Gwaram', 17),
(304, 'Gwiwa', 17),
(305, 'Hadeji', 17),
(306, 'Jahun', 17),
(307, 'Kafin-Hausa', 17),
(308, 'Kaugama', 17),
(309, 'Kazaure', 17),
(310, 'Kirikisamma', 17),
(311, 'Birnin-Magaji', 17),
(312, 'Maigatari', 17),
(313, 'Malamaduri', 17),
(314, 'Miga', 17),
(315, 'Ringim', 17),
(316, 'Roni', 17),
(317, 'Sule Tankarka', 17),
(318, 'Taura', 17),
(319, 'Yankwasi', 17),
(320, 'Brini Gwari', 18),
(321, 'Chukun', 18),
(322, 'Giwa', 18),
(323, 'Kajuru', 18),
(324, 'Igabi', 18),
(325, 'Ikara', 18),
(326, 'Jaba', 18),
(327, 'Jema`a', 18),
(328, 'Kachia', 18),
(329, 'Kaduna North', 18),
(330, 'Kaduna South', 18),
(331, 'Kagarok', 18),
(332, 'Kauru', 18),
(333, 'Kabau', 18),
(334, 'Kudan', 18),
(335, 'Kere', 18),
(336, 'Makarfi', 18),
(337, 'Sabongari', 18),
(338, 'Sanga', 18),
(339, 'Soba', 18),
(340, 'Zangon-Kataf', 18),
(341, 'Zaria', 18),
(342, 'Ajigi', 19),
(343, 'Albasu', 18),
(344, 'Bagwai', 19),
(345, 'Bebeji', 18),
(346, 'Bichi', 19),
(347, 'Bunkure', 19),
(348, 'Dala', 19),
(349, 'Dambatta', 19),
(350, 'Dawakin Kudu', 19),
(351, 'Dawakin Tofa', 19),
(352, 'Doguwa', 19),
(353, 'Fagge', 19),
(354, 'Gabasawa', 19),
(355, 'Garko', 19),
(356, 'Garun Mallam', 19),
(357, 'Gaya', 19),
(358, 'Gezawa', 19),
(359, 'Gwale', 19),
(360, 'Gwarzo', 19),
(361, 'Kano', 19),
(362, 'Karay', 19),
(363, 'Kibiya', 19),
(364, 'Kiru', 19),
(365, 'Kumbtso', 19),
(366, 'Kunch', 19),
(367, 'Kura', 19),
(368, 'Maidobi', 19),
(369, 'Makoda', 19),
(370, 'Mlnjibir Nassarawa', 19),
(371, 'Rano', 19),
(372, 'Rimin Gado', 19),
(373, 'Rogo', 19),
(374, 'Shanono', 19),
(375, 'Sumaila', 19),
(376, 'Takai', 19),
(377, 'Tarauni', 19),
(378, 'Tofa', 19),
(379, 'Tsanyawa', 19),
(380, 'Tudunwada', 19),
(381, 'Ungogo', 19),
(382, 'Warawa', 19),
(383, 'Wudil', 19),
(384, 'Bakori', 20),
(385, 'Batagarawa', 20),
(386, 'Batsari', 20),
(387, 'Baure', 20),
(388, 'Bindawa', 20),
(389, 'Charanchi', 20),
(390, 'Dan-Musa', 20),
(391, 'Dabdume/Danja', 20),
(392, 'Daura', 20),
(393, 'Dutsi', 20),
(394, 'Dustin`ma', 20),
(395, 'Faskar', 20),
(396, 'Funtua', 20),
(397, 'Ingawa', 20),
(398, 'Jibiya', 20),
(399, 'Kafur', 20),
(400, 'Kaita', 20),
(401, 'Kankara', 20),
(402, 'Kankiya', 20),
(403, 'Kastina', 20),
(404, 'Furfi', 20),
(405, 'Kusada Mai Aduwa', 20),
(406, 'Malumfashi', 20),
(407, 'Mani', 20),
(408, 'Mash', 20),
(409, 'Matazu', 20),
(410, 'Musawa', 20),
(411, 'Rimi', 20),
(412, 'Sabuwa', 20),
(413, 'Safana', 20),
(414, 'Sabdamu', 20),
(415, 'Zango', 20),
(416, 'Aliero', 21),
(417, 'Arewa Dandi', 21),
(418, 'Arugungu', 21),
(419, 'Augie', 21),
(420, 'Bagudo', 21),
(421, 'Birnin Kebbi', 21),
(422, 'Bunza', 21),
(423, 'Dandi', 21),
(424, 'Danko', 21),
(425, 'Fakai', 21),
(426, 'Gwandu', 21),
(427, 'Jeda', 21),
(428, 'Kalgo', 21),
(429, 'Koko-besse', 21),
(430, 'Maiyaama', 21),
(431, 'Ngaski', 21),
(432, 'Sakaba', 21),
(433, 'Shanga', 21),
(434, 'Suru', 21),
(435, 'Wasugu', 21),
(436, 'Yauri', 21),
(437, 'Zuru', 21),
(438, 'Adavi', 22),
(439, 'Ajaokuta', 22),
(440, 'Ankpa', 22),
(441, 'Bassa', 22),
(442, 'Dekina', 22),
(443, 'Yagba East', 22),
(444, 'Ibaji', 22),
(445, 'Idah', 22),
(446, 'Igalamela', 22),
(447, 'Ijumu', 22),
(448, 'Kabba bunu', 22),
(449, 'Kogi', 22),
(450, 'Mopa Muro', 22),
(451, 'Ofu', 22),
(452, 'Ogori Magongo', 22),
(453, 'Oheji', 22),
(454, 'Okene', 22),
(455, 'Olamaboro', 22),
(456, 'Omala', 22),
(457, 'Yagba West', 22),
(458, 'Asa', 23),
(459, 'Baruten', 23),
(460, 'Ede', 23),
(461, 'Ekiti', 23),
(462, 'Ifelodun', 23),
(463, 'Ilorin South', 23),
(464, 'Ilorin East', 23),
(465, 'Ilorin West', 23),
(466, 'Irepodun', 23),
(467, 'Isin', 23),
(468, 'Kaiama', 23),
(469, 'Moro', 23),
(470, 'Offa', 23),
(471, 'Oke Ero', 23),
(472, 'Oyun', 23),
(473, 'Pategi', 23),
(474, 'Agege', 24),
(475, 'Alimosho Ifelodun', 24),
(476, 'Alimosho', 24),
(477, 'Amuwo-Odofin', 24),
(478, 'Apapa', 24),
(479, 'Badagry', 24),
(480, 'Epe', 24),
(481, 'Eti-Osa', 24),
(482, 'Ibeju-Lekki', 24),
(483, 'Ifako/Ijaye', 24),
(484, 'Ikeja', 24),
(485, 'Ikorodu', 24),
(486, 'Kosofe', 24),
(487, 'Lagos Island', 24),
(488, 'Lagos Mainland', 24),
(489, 'Mushin', 24),
(490, 'Ojo', 24),
(491, 'Oshodi-Isolo', 24),
(492, 'Shomolu', 24),
(493, 'Surulere', 24),
(494, 'Akwanga', 25),
(495, 'Awe', 25),
(496, 'Doma', 25),
(497, 'Karu', 25),
(498, 'Kenan', 25),
(499, 'Keffi', 25),
(500, 'Konona', 25),
(501, 'Lafia', 25),
(502, 'Nassarawa', 25),
(503, 'Nassarawa/Eggon', 25),
(504, 'Obi', 25),
(505, 'Toto', 25),
(506, 'Wamba', 25),
(507, 'Agaie', 26),
(508, 'Agwara', 26),
(509, 'Bida', 26),
(510, 'Borgu', 26),
(511, 'Bosso', 26),
(512, 'Chanchanga', 26),
(513, 'Edati', 26),
(514, 'Gbako', 26),
(515, 'Gurara', 26),
(516, 'Kitcha', 26),
(517, 'Kontagora', 26),
(518, 'Lapai', 26),
(519, 'Lavun', 26),
(520, 'Magama', 26),
(521, 'Mariga', 26),
(522, 'Mokwa', 26),
(523, 'Moshegu', 26),
(524, 'Muya', 26),
(525, 'Paiko', 26),
(526, 'Rafi', 26),
(527, 'Shiroro', 26),
(528, 'Suleija', 26),
(529, 'Tawa-Wushishi', 26),
(530, 'Abeokuta South', 27),
(531, 'Abeokuta North', 27),
(532, 'Ado-odo/Otta', 27),
(533, 'Agbado South', 27),
(534, 'Agbado North', 27),
(535, 'Ewekoro', 27),
(536, 'Idarapo', 27),
(537, 'Ifo', 27),
(538, 'Ijebu East', 27),
(539, 'Ijebu North', 27),
(540, 'Ikenne', 27),
(541, 'Ilugun Alaro', 27),
(542, 'Imeko Afon', 27),
(543, 'Ipokia', 27),
(544, 'Obafemi/Owode', 27),
(545, 'Odeda', 27),
(546, 'Odugbolu', 27),
(547, 'Ogun Waterside', 27),
(548, 'Sagamu', 27),
(549, 'Akoko North', 28),
(550, 'Akoko North-East', 28),
(551, 'Akoko South-East', 28),
(552, 'Akoko South', 28),
(553, 'Akure North', 28),
(554, 'Akure', 28),
(555, 'Idanre', 28),
(556, 'Ifedore', 28),
(557, 'Ese Odo', 28),
(558, 'Ilaje', 28),
(559, 'Ilaje Oke-Igbo', 28),
(560, 'Irele', 28),
(561, 'Odigbo', 28),
(562, 'Okitipupa', 28),
(563, 'Ondo', 28),
(564, 'Ondo East', 28),
(565, 'Ose', 28),
(566, 'Owo', 28),
(567, 'Atakumosa West', 29),
(568, 'Akatumosa East', 29),
(569, 'Ayeda-Ade', 29),
(570, 'Ayedire', 29),
(571, 'Bolawaduro', 29),
(572, 'Boripe', 29),
(573, 'Ede', 29),
(574, 'Ede North', 29),
(575, 'Egbedore', 29),
(576, 'Ejigbo', 29),
(577, 'Ife North', 29),
(578, 'Ife Central', 29),
(579, 'Ife South', 29),
(580, 'Ife East', 29),
(581, 'Ifedayo', 29),
(582, 'Ifelodun', 29),
(583, 'Ilesha West', 29),
(584, 'Ila-Orangun', 29),
(585, 'Ilesha East', 29),
(586, 'Irepodun', 29),
(587, 'Irewole', 29),
(588, 'Isokan', 29),
(589, 'Iwo', 29),
(590, 'Obokun', 29),
(591, 'Odo-Otin', 29),
(592, 'Ola Oluwa', 29),
(593, 'Olorunda', 29),
(594, 'Oriade', 29),
(595, 'Orolu', 29),
(596, 'Osogbo', 29),
(597, 'Afijio', 30),
(598, 'Akinyele', 30),
(599, 'Attba', 30),
(600, 'Atigbo', 30),
(601, 'Egbeda', 30),
(602, 'Ibadan', 30),
(603, 'Ibadan North-East', 30),
(604, 'Ibadan Central', 30),
(605, 'Ibadan South-East', 30),
(606, 'Ibadan Soutj-West', 30),
(607, 'Ibarapa East', 30),
(608, 'Ibarapa North', 30),
(609, 'Ido', 30),
(610, 'Ifedapo', 30),
(611, 'Ifeloju', 30),
(612, 'Irepo', 30),
(613, 'Iseyin', 30),
(614, 'Itesiwaju', 30),
(615, 'Iwajowa', 30),
(616, 'Iwajowa Olorunshogo', 30),
(617, 'Kajola', 30),
(618, 'Lagelu', 30),
(619, 'Ogbomosho North', 30),
(620, 'Ogbomosho South', 30),
(621, 'Ogo Oluwa', 30),
(622, 'Oluyole', 30),
(623, 'Ona Ara', 30),
(624, 'Ore Lope', 30),
(625, 'Orire', 30),
(626, 'Oyo East', 30),
(627, 'Oyo West', 30),
(628, 'Saki East', 30),
(629, 'Saki West', 30),
(630, 'Surulere', 30),
(631, 'Barkin/Ladi', 31),
(632, 'Bassa', 31),
(633, 'Bokkos', 31),
(634, 'Jos North', 31),
(635, 'Jos East', 31),
(636, 'Jos South', 31),
(637, 'Kanam', 31),
(638, 'Kiyom', 31),
(639, 'Langtang North', 31),
(640, 'Langtang South', 31),
(641, 'Mungu', 31),
(642, 'Pankshin', 31),
(643, 'Qua`an Pan', 31),
(644, 'Shendam', 31),
(645, 'Wase', 31),
(646, 'Abua/Odial', 32),
(647, 'Ahoada East', 32),
(648, 'Ahoada West', 32),
(649, 'Akuku Toru', 32),
(650, 'Andoni', 32),
(651, 'Asari Toru', 32),
(652, 'Bonny', 32),
(653, 'Degema', 32),
(654, 'Eleme', 32),
(655, 'Emohua', 32),
(656, 'Etche', 32),
(657, 'Gokana', 32),
(658, 'Ikwere', 32),
(659, 'Oyigbo', 32),
(660, 'Khana', 32),
(661, 'Obior/Akpor', 32),
(662, 'Ogba East/Edoni', 32),
(663, 'Ogu/Bolo', 32),
(664, 'Okirika', 32),
(665, 'Omumma', 32),
(666, 'Opobo/Nkoro', 32),
(667, 'Portharcourt', 32),
(668, 'Tai', 32),
(669, 'Binji', 33),
(670, 'Bodinga', 33),
(671, 'Dange/Shuni', 33),
(672, 'Gada', 33),
(673, 'Goronyo', 33),
(674, 'Gudu', 33),
(675, 'Gwadabawa', 33),
(676, 'Illela', 33),
(677, 'Kebbe', 33),
(678, 'Kware', 33),
(679, 'Rabah', 33),
(680, 'Sabon-Birni', 33),
(681, 'Shagari', 33),
(682, 'Silame', 33),
(683, 'Sokoto South', 33),
(684, 'Sokoto North', 33),
(685, 'Tambuwal', 33),
(686, 'Tangaza', 33),
(687, 'Tureta', 33),
(688, 'Wamakko', 33),
(689, 'Wurno', 33),
(690, 'Yabo', 33),
(691, 'Akdo-Kola', 34),
(692, 'Bali', 34),
(693, 'Donga', 34),
(694, 'Gashaka', 34),
(695, 'Gassol', 34),
(696, 'Ibi', 34),
(697, 'Jalingo', 34),
(698, 'K/Lamido', 34),
(699, 'Kurmi', 34),
(700, 'Ian', 34),
(701, 'Sardauna', 34),
(702, 'Tarum', 34),
(703, 'Ussa', 34),
(704, 'Wukari', 34),
(705, 'Yorro', 34),
(706, 'Zing', 34),
(707, 'Borsari', 35),
(708, 'Damaturu', 35),
(709, 'Fika', 35),
(710, 'Fune', 35),
(711, 'Geidam', 35),
(712, 'Gogaram', 35),
(713, 'Gujba', 35),
(714, 'Gulani', 35),
(715, 'Jakusko', 35),
(716, 'Karasuwa', 35),
(717, 'Machina', 35),
(718, 'Nagere', 35),
(719, 'Nguru', 35),
(720, 'Potiskum', 35),
(721, 'Tarmua', 35),
(722, 'Yunusari', 35),
(723, 'Yususari', 35),
(724, 'Gashua', 35),
(725, 'Anka', 36),
(726, 'Bukkuyum', 36),
(727, 'Bungudu', 36),
(728, 'Tsafe', 36),
(729, 'Gummi', 36),
(730, 'Gusau', 36),
(731, 'Isa', 36),
(732, 'Kaura Namoda', 36),
(733, 'Maru', 36),
(734, 'Mradun', 36),
(735, 'Shinkafi', 36),
(736, 'Talata Mafara', 36),
(737, 'Zumi', 36),
(738, 'Abaji', 37),
(739, 'Abuja Municipal', 37),
(740, 'Bwari', 37),
(741, 'Gwagwalada', 37),
(742, 'Kuje', 37),
(743, 'Kwali', 37);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_categoryid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skill_id`, `skill_name`, `skill_categoryid`) VALUES
(1, 'Budgeting, financial planning,', 1),
(2, 'Reporting', 1),
(3, 'Accounting', 1),
(4, 'Auditing of accounts', 1),
(5, 'Bookkeeping', 1),
(6, 'Compliance', 1),
(7, 'Financial controlling', 1),
(8, 'Accounting IT-systems (use of)', 1),
(9, 'Reporting', 2),
(10, 'Document and archive management', 2),
(11, 'Office administration, management', 2),
(12, 'Answering telephones and call management', 2),
(13, 'Email correspondence', 2),
(14, 'Meeting preparation', 2),
(15, 'Financial controlling', 2),
(16, 'Office reception', 2),
(17, 'Documentation and record keeping', 2),
(18, 'Crop harvesting', 3),
(19, 'Fertilizer', 3),
(20, 'Irrigation and watering', 3),
(21, 'Pest and disease control', 3),
(22, 'Planting', 3),
(23, 'Soil management', 3),
(24, 'Soil analysis', 3),
(25, 'Project management', 4),
(26, 'Reporting', 4),
(27, 'Office administtration, management', 4),
(28, 'Leadership skills', 4),
(29, 'Ability to coordinate', 4),
(30, 'Customer support, CRM systems', 4),
(31, 'Communication', 4),
(32, 'Planning', 4),
(33, 'Customer service', 5),
(34, 'Billing', 5),
(35, 'Account management', 5),
(36, 'Customer comfort and saftey', 5),
(37, 'After sales', 5),
(38, 'Customer support, CRM systems', 5),
(39, 'Troubleshooting', 5),
(40, 'Computer aided design', 6),
(41, 'Multimedia', 6),
(42, 'Editing', 6),
(43, 'Design thinking', 6),
(44, 'Creativity', 6),
(45, 'Graphic Design', 6),
(46, 'Design research', 6),
(47, 'Creative design', 6),
(48, 'Event management', 6),
(49, 'Performance monitoring and evaluation', 7),
(50, 'Electrical installation', 7),
(51, 'Document and archive management', 7),
(52, 'Quality management', 7),
(53, 'Product management', 7),
(54, 'Quality control and supervison', 7),
(55, 'Stock and inventory management', 7),
(56, 'Troubleshooting', 7),
(57, 'Engineering', 7),
(58, 'Cardiology', 8),
(59, 'Gynecology', 8),
(60, 'Hygienics', 8),
(61, 'Nursing', 8),
(62, 'Midwifing', 8),
(63, 'Infection control', 8),
(64, 'Psychiatry', 8),
(65, 'Pediatry', 8),
(66, 'Customer service', 9),
(67, 'Cleaning', 9),
(68, 'Quality control (food production)', 9),
(69, 'First aid', 9),
(70, 'Cooking, food preparation', 9),
(71, 'Customer comfort and safety', 9),
(72, 'Reception', 9),
(73, 'Travel planning and reservation', 9),
(74, 'Employee guidelines and onboarding', 10),
(75, 'Human resource and personal development', 10),
(76, 'Organise and manage recuitment processes', 10),
(77, 'Talent management and planning', 10),
(78, 'Compensation and benefits', 10),
(79, 'Employee control', 10),
(80, 'Conflit and crisis magement', 10),
(81, 'Employee relations and consultations', 10),
(82, 'File management and data backup', 11),
(83, 'Email and internet', 11),
(84, 'Databas query languages', 11),
(85, 'IT equipment installatin and configuration', 11),
(86, 'IT support', 11),
(87, 'Project implementation', 11),
(88, 'Programming', 11),
(89, 'Data analysis', 11),
(90, 'Web development', 11),
(91, 'Internal communication', 12),
(92, 'Written communication ', 12),
(93, 'Stakeholder communication', 12),
(94, 'Presentation skills', 12),
(95, 'Journalism', 12),
(96, 'Digital content developmennt and editing', 12),
(97, 'New writing and production', 12),
(98, 'Market research', 13),
(99, 'Business to Business sales', 13),
(100, 'Account management', 13),
(101, 'Sales performance tracking and reporting', 13),
(102, 'Digital content developement and editing', 13),
(103, 'Sales strategy', 13),
(104, 'Customer support, CRM systems', 13),
(105, 'Marketing', 13),
(106, 'Communication', 13),
(107, 'Secondary school teaching', 14),
(108, 'Data collection', 14),
(109, 'Educational testing', 14),
(110, 'Trainig delivery', 14),
(111, 'Training program planning', 14),
(112, 'Exam preparation and grading', 14),
(113, 'Research planning', 14),
(114, 'Teaching', 14),
(115, 'Data analysis', 14);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa-Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross River'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'Gombe'),
(16, 'Imo'),
(17, 'Jigawa'),
(18, 'Kaduna'),
(19, 'Kano'),
(20, 'Katsina'),
(21, 'Kebbi'),
(22, 'Kogi'),
(23, 'Kwara'),
(24, 'Lagos'),
(25, 'Nassarawa'),
(26, 'Niger'),
(27, 'Ogun'),
(28, 'Ondo'),
(29, 'Osun'),
(30, 'Oyo'),
(31, 'Plateau'),
(32, 'Rivers'),
(33, 'Sokoto'),
(34, 'Taraba'),
(35, 'Yobe'),
(36, 'Zamfara'),
(37, 'FCT Abuja');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'Entrepreneurship'),
(2, 'Corporation'),
(3, 'Education'),
(4, 'Public Sector');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `application_employerid` (`application_employerid`),
  ADD KEY `application_jobid` (`application_jobid`),
  ADD KEY `application_jobseekerid` (`application_jobseekerid`);

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`),
  ADD KEY `bookmark_jobid` (`bookmark_jobid`),
  ADD KEY `bookmark_jobseekerid` (`bookmark_jobseekerid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`employer_id`),
  ADD UNIQUE KEY `employer_email` (`employer_email`),
  ADD UNIQUE KEY `employer_company_email` (`employer_company_email`),
  ADD KEY `employer_stateid` (`employer_stateid`),
  ADD KEY `employer_typeid` (`employer_typeid`),
  ADD KEY `employer_lgaid` (`employer_lgaid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `feedback_applicationid` (`feedback_applicationid`),
  ADD KEY `feedback_employerid` (`feedback_employerid`),
  ADD KEY `feedback_jobseekerid` (`feedback_jobseekerid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `job_categoryid` (`job_categoryid`),
  ADD KEY `job_employerid` (`job_employerid`),
  ADD KEY `job_levelid` (`job_levelid`),
  ADD KEY `job_stateid` (`job_stateid`),
  ADD KEY `job_lgaid` (`job_lgaid`);

--
-- Indexes for table `jobseekers`
--
ALTER TABLE `jobseekers`
  ADD PRIMARY KEY (`jobseeker_id`),
  ADD UNIQUE KEY `jobseeker_email` (`jobseeker_email`),
  ADD KEY `jobseeker_categoryid` (`jobseeker_categoryid`),
  ADD KEY `jobseeker_levelid` (`jobseeker_levelid`),
  ADD KEY `jobseeker_stateid` (`jobseeker_stateid`),
  ADD KEY `jobseeker_lgaid` (`jobseeker_lgaid`);

--
-- Indexes for table `jobseekerskills`
--
ALTER TABLE `jobseekerskills`
  ADD PRIMARY KEY (`jobseeker_skill_id`),
  ADD KEY `jobseeker_skill_jobseekerid` (`jobseeker_skill_jobseekerid`),
  ADD KEY `skill_skillid` (`skill_skillid`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `lga`
--
ALTER TABLE `lga`
  ADD PRIMARY KEY (`lga_id`),
  ADD KEY `lga_stateid` (`lga_stateid`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skill_id`),
  ADD KEY `skill_categoryid` (`skill_categoryid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobseekers`
--
ALTER TABLE `jobseekers`
  MODIFY `jobseeker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobseekerskills`
--
ALTER TABLE `jobseekerskills`
  MODIFY `jobseeker_skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lga`
--
ALTER TABLE `lga`
  MODIFY `lga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_ibfk_1` FOREIGN KEY (`application_employerid`) REFERENCES `employers` (`employer_id`),
  ADD CONSTRAINT `application_ibfk_2` FOREIGN KEY (`application_jobid`) REFERENCES `jobs` (`job_id`),
  ADD CONSTRAINT `application_ibfk_3` FOREIGN KEY (`application_jobseekerid`) REFERENCES `jobseekers` (`jobseeker_id`);

--
-- Constraints for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD CONSTRAINT `bookmark_ibfk_1` FOREIGN KEY (`bookmark_jobid`) REFERENCES `jobs` (`job_id`),
  ADD CONSTRAINT `bookmark_ibfk_2` FOREIGN KEY (`bookmark_jobseekerid`) REFERENCES `jobseekers` (`jobseeker_id`);

--
-- Constraints for table `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `employers_ibfk_1` FOREIGN KEY (`employer_stateid`) REFERENCES `state` (`state_id`),
  ADD CONSTRAINT `employers_ibfk_2` FOREIGN KEY (`employer_typeid`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `employers_ibfk_3` FOREIGN KEY (`employer_lgaid`) REFERENCES `lga` (`lga_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`feedback_applicationid`) REFERENCES `application` (`application_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`feedback_employerid`) REFERENCES `employers` (`employer_id`),
  ADD CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`feedback_jobseekerid`) REFERENCES `jobseekers` (`jobseeker_id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`job_categoryid`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `jobs_ibfk_2` FOREIGN KEY (`job_employerid`) REFERENCES `employers` (`employer_id`),
  ADD CONSTRAINT `jobs_ibfk_3` FOREIGN KEY (`job_levelid`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `jobs_ibfk_4` FOREIGN KEY (`job_stateid`) REFERENCES `state` (`state_id`),
  ADD CONSTRAINT `jobs_ibfk_5` FOREIGN KEY (`job_lgaid`) REFERENCES `lga` (`lga_id`);

--
-- Constraints for table `jobseekers`
--
ALTER TABLE `jobseekers`
  ADD CONSTRAINT `jobseekers_ibfk_1` FOREIGN KEY (`jobseeker_categoryid`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `jobseekers_ibfk_2` FOREIGN KEY (`jobseeker_levelid`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `jobseekers_ibfk_3` FOREIGN KEY (`jobseeker_stateid`) REFERENCES `state` (`state_id`),
  ADD CONSTRAINT `jobseekers_ibfk_4` FOREIGN KEY (`jobseeker_lgaid`) REFERENCES `lga` (`lga_id`);

--
-- Constraints for table `jobseekerskills`
--
ALTER TABLE `jobseekerskills`
  ADD CONSTRAINT `jobseekerskills_ibfk_1` FOREIGN KEY (`jobseeker_skill_jobseekerid`) REFERENCES `jobseekers` (`jobseeker_id`),
  ADD CONSTRAINT `jobseekerskills_ibfk_2` FOREIGN KEY (`skill_skillid`) REFERENCES `skills` (`skill_id`);

--
-- Constraints for table `lga`
--
ALTER TABLE `lga`
  ADD CONSTRAINT `lga_ibfk_1` FOREIGN KEY (`lga_stateid`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`skill_categoryid`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
