-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2020 at 11:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cga_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'admin'),
(1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add student', 7, 'add_student'),
(26, 'Can change student', 7, 'change_student'),
(27, 'Can delete student', 7, 'delete_student'),
(28, 'Can view student', 7, 'view_student'),
(29, 'Can add result', 8, 'add_result'),
(30, 'Can change result', 8, 'change_result'),
(31, 'Can delete result', 8, 'delete_result'),
(32, 'Can view result', 8, 'view_result'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add question', 10, 'add_question'),
(38, 'Can change question', 10, 'change_question'),
(39, 'Can delete question', 10, 'delete_question'),
(40, 'Can view question', 10, 'view_question'),
(41, 'Can add job', 11, 'add_job'),
(42, 'Can change job', 11, 'change_job'),
(43, 'Can delete job', 11, 'delete_job'),
(44, 'Can view job', 11, 'view_job');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$4HzVYNmok2X9$66B5nHJ0L5nuJoqLPYUtGz/roijrYgteBs7pgfZEbz4=', '2020-07-28 08:57:25.579387', 1, 'superadmin', '', '', '', 1, 1, '2020-07-26 10:50:43.003018'),
(2, 'pbkdf2_sha256$180000$AJvrYi6tiQ9R$Dwvf5DJ5crwQGKZlYPdW6rZBycNZa/sE3AXbtOVo/ug=', '2020-08-06 09:53:35.502583', 0, 'virtuosityedus@gmail.com', '', '', 'virtuosityedus@gmail.com', 0, 1, '2020-07-26 10:57:23.887698'),
(3, 'pbkdf2_sha256$180000$sd2lpyjHOFPr$LVi2lj26YxJfx8YvuR05cp6F3+Im6Avpa6I+sLTXXjA=', '2020-08-06 09:52:24.209033', 0, 'shastriv19@gmail.com', 'Viral', 'Shastri', 'shastriv19@gmail.com', 0, 1, '2020-07-26 11:14:31.682375'),
(6, 'pbkdf2_sha256$180000$5Txuvn4XwQQP$USTCsivGFjJ72vY3ozRWsOZYjiXsCOiku6XfbEh/i+I=', '2020-07-27 20:35:20.993494', 0, 'maitry.j.1920@gmail.com', 'Jariwala', 'maitry', 'maitry.j.1920@gmail.com', 0, 1, '2020-07-27 20:34:34.885494'),
(7, 'pbkdf2_sha256$180000$cFbv0R77nlYh$p9DFN3kxUGa4HNjamHPwwN/Iv0KiUulhER9DOGlyrpY=', '2020-07-27 22:02:11.364065', 0, 'shanka1978@gmail.com', 'shantanu', 'kanade', 'shanka1978@gmail.com', 0, 1, '2020-07-27 22:02:00.029711'),
(8, 'pbkdf2_sha256$180000$zS9BLeRv32Fg$9YHHYsoTrnlj5IOONq3NczOty4fo/PqLwXRScv6038U=', '2020-07-27 23:03:16.441431', 0, 'anuradha3279@gmail.com', 'Anuradha', 'Shantanu Kanade', 'anuradha3279@gmail.com', 0, 1, '2020-07-27 23:03:04.191704'),
(9, 'pbkdf2_sha256$180000$8nMqSIRFJfgM$2Exe1c/nuvOAfA3RntBkcJyS9ZJoM9prxsudZ2ZQpuc=', '2020-07-28 00:29:48.031713', 0, 'satya4j@gmail.com', 'Satyajit', '', 'satya4j@gmail.com', 0, 1, '2020-07-28 00:29:39.158367'),
(10, 'pbkdf2_sha256$180000$K5HUnPjXWrWQ$nCIsGftPMYhbYkI9fQbA7MwRZN/MW9NAGNpi2XImIJc=', '2020-07-28 06:14:13.495312', 0, 'yogeshdk22@gmail.com', 'Yogesh', 'Dilip Kulkarni', 'yogeshdk22@gmail.com', 0, 1, '2020-07-28 06:13:41.165109'),
(11, 'pbkdf2_sha256$180000$WG14qzMXTsvT$OphVztMfG6GsTtD8uLqNby/2bae6+NX1oXgXr2o3k1c=', '2020-07-28 09:01:47.943249', 0, 'isprashmi@gmail.com', 'Rashmi', '', 'isprashmi@gmail.com', 0, 1, '2020-07-28 09:01:33.275576'),
(12, 'pbkdf2_sha256$180000$29aIwgtMFyJy$5uYnpkDdqZJs4KERYomGtgXZ2fo+bMnOOn9+hqzvgYg=', '2020-07-28 10:05:06.190684', 0, 'khandagalerohit@gmail.com', 'Rohit', 'Khandagale', 'khandagalerohit@gmail.com', 0, 1, '2020-07-28 10:04:44.312406'),
(13, 'pbkdf2_sha256$180000$vgtKQHzky2Gq$cG7X/i8u9BYBRsvSTzKbazp3ge3JQEJkzykIZiZZrBo=', '2020-07-28 10:17:52.011865', 0, 'sanch.sanchit@gmail.com', 'Sanchita', 'Nerlekar', 'sanch.sanchit@gmail.com', 0, 1, '2020-07-28 10:16:44.275014'),
(14, 'pbkdf2_sha256$180000$W8KUgnrGaHIe$UzAfv6hszwq0EDXEa3otmflTwIHtKeBg+E1YLjafUVM=', '2020-07-28 10:58:10.657534', 0, 'chinmaykulkarni112001@gmail.com', 'Chinmay', 'chintamani Kulkarni', 'chinmaykulkarni112001@gmail.com', 0, 1, '2020-07-28 10:57:28.628055'),
(15, 'pbkdf2_sha256$180000$J6CB7ApLaz7l$fKyY1Wtucpf98NMlm6Melthya5eg6a5EAbYZO5S5Ios=', '2020-07-28 13:50:29.186431', 0, 'ankitaashtekar9975@gmail.com', 'Harshali', 'Ashtekar', 'ankitaashtekar9975@gmail.com', 0, 1, '2020-07-28 13:25:20.693231'),
(16, 'pbkdf2_sha256$180000$UHB3B8dmfnUK$C15l4BDsRXhLnbdAKbxCMXEX/ek6IGHSeZv2K3FImoo=', '2020-07-28 13:46:43.271868', 0, 'sidmulmeena28@gmail.com', 'Samruddhi', 'Meena sidmul', 'sidmulmeena28@gmail.com', 0, 1, '2020-07-28 13:46:16.650571'),
(17, 'pbkdf2_sha256$180000$9njpfidSrFt3$GK/XwG6JDwphF4w8gf5S7G49IyGPFAlokh2KCB0hm7g=', '2020-07-28 14:07:28.190045', 0, 'kulkarnianeesh29@gmail.com', 'Aneesh', 'Kulkarni', 'kulkarnianeesh29@gmail.com', 0, 1, '2020-07-28 14:07:13.086393'),
(18, 'pbkdf2_sha256$180000$uKfJUkfFndfh$MeH5p22LcoYEn7Qx/pin37hlVrGNg8hutXbOKtfacnU=', '2020-07-28 14:35:59.299033', 0, 'nys101918@gmail.com', 'Swanand', 'Sawant', 'nys101918@gmail.com', 0, 1, '2020-07-28 14:35:39.439852'),
(19, 'pbkdf2_sha256$180000$zaR7OjM4uX0c$lvEDpdxeSkZOSnL00zbe8iI3c/9I+kGTvmaQ1vRqhww=', '2020-07-28 17:22:58.077053', 0, 'asdf@asdf.com', 'asdf', '', 'asdf@asdf.com', 0, 1, '2020-07-28 17:22:45.925270'),
(20, 'pbkdf2_sha256$180000$ycEhTSRL4iE7$3ngubpx+NfbnLXQH9TUKeNY1ipFopbXiFoi5WgoLxjs=', '2020-07-30 19:48:52.490846', 0, 'kulkarnisampada145@gmail.com', 'Sampada', '', 'kulkarnisampada145@gmail.com', 0, 1, '2020-07-30 19:48:36.692642'),
(21, 'pbkdf2_sha256$180000$rMhPMs6D0gDG$Q1itcY/vsHPNDvn5P3eZsKbpF9h/7509KG9EuSpAkMk=', '2020-07-30 22:51:48.328758', 0, 'shivendra567@gmail.com', 'Shivendra', 'kumar', 'shivendra567@gmail.com', 0, 1, '2020-07-30 22:51:39.507572'),
(22, 'pbkdf2_sha256$180000$gmEbtmDaTgkq$MiucwJVKuqhYKhn6xPvAXH3aHtVvsSRsqrkOHCJ9nvE=', '2020-07-30 23:00:53.319852', 0, 'pragateejain@icloud.com', 'Pragatee', 'jain', 'pragateejain@icloud.com', 0, 1, '2020-07-30 23:00:30.178644'),
(23, 'pbkdf2_sha256$180000$Sl7aMmInqPoQ$w7XmsxhKDjPhBJDzhGactdECBrXCXoK49sRe00PMPWw=', '2020-07-31 10:20:11.685609', 0, 'rajshrishinde77@gmail.com', 'Rajshri', 'Dnyaneshwar Shinde', 'rajshrishinde77@gmail.com', 0, 1, '2020-07-31 10:19:47.363872'),
(24, 'pbkdf2_sha256$180000$fA1myRR1QRZc$oJzanFgQ8MxsNwtJ4Oo4sVRJFNUHZuTyIG2D8+7/D5A=', '2020-07-31 14:40:42.686123', 0, 'sshejole15@gmail.com', 'Sakshi', 'Madhusudan Shejole', 'sshejole15@gmail.com', 0, 1, '2020-07-31 14:40:28.118336'),
(25, 'pbkdf2_sha256$180000$2y0KvdJUaoJN$D8ptoqJKLut5++CVj5c/tnAOKFCREm8n42CxdVMGv74=', '2020-07-31 17:05:38.774078', 0, 'sagarissc@gmail.com', 'Sagar', 'Prakash Patil', 'sagarissc@gmail.com', 0, 1, '2020-07-31 17:05:20.037212');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 2),
(2, 3, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1),
(20, 21, 1),
(21, 22, 1),
(22, 23, 1),
(23, 24, 1),
(24, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-26 10:53:54.538305', '1', 'user', 1, '[{\'added\': {}}]', 3, 1),
(2, '2020-07-26 10:53:59.345908', '2', 'admin', 1, '[{\'added\': {}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'question', 'category'),
(11, 'question', 'job'),
(10, 'question', 'question'),
(8, 'result', 'result'),
(6, 'sessions', 'session'),
(7, 'student', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-06 09:34:48.371010'),
(2, 'auth', '0001_initial', '2020-08-06 09:34:48.440817'),
(3, 'admin', '0001_initial', '2020-08-06 09:34:48.636359'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-06 09:34:48.684231'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-06 09:34:48.691212'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-06 09:34:48.743074'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-06 09:34:48.771997'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-06 09:34:48.782967'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-06 09:34:48.792941'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-06 09:34:48.815883'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-06 09:34:48.819868'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-06 09:34:48.827846'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-06 09:34:48.839815'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-06 09:34:48.849789'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-06 09:34:48.861756'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-06 09:34:48.872727'),
(17, 'question', '0001_initial', '2020-08-06 09:34:48.909629'),
(18, 'student', '0001_initial', '2020-08-06 09:34:48.990412'),
(19, 'result', '0001_initial', '2020-08-06 09:34:49.038284'),
(20, 'result', '0002_auto_20200725_1355', '2020-08-06 09:34:49.169932'),
(21, 'result', '0003_auto_20200725_1402', '2020-08-06 09:34:49.178908'),
(22, 'result', '0004_auto_20200725_1442', '2020-08-06 09:34:49.188881'),
(23, 'result', '0005_auto_20200725_1618', '2020-08-06 09:34:49.198856'),
(24, 'result', '0006_auto_20200726_1049', '2020-08-06 09:34:49.211829'),
(25, 'result', '0007_auto_20200805_1521', '2020-08-06 09:34:49.223798'),
(26, 'sessions', '0001_initial', '2020-08-06 09:34:49.235782');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ht69zqvt8ybczve2dmjt45jverb2wc58', 'NjQwZjQzMGFiN2Q1OWMzMWZjYjZjOTQ1MWY0NzVhNDU1MzQzMmY2Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMzhhZmRhMzM4MjgwYWZkY2MyMjc5MWJhODQyM2RmZmU4MGNhMjg5In0=', '2020-08-20 09:53:35.504579');

-- --------------------------------------------------------

--
-- Table structure for table `question_category`
--

CREATE TABLE `question_category` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` longtext NOT NULL,
  `CategoryDescription` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_category`
--

INSERT INTO `question_category` (`CategoryId`, `CategoryName`, `CategoryDescription`) VALUES
(1, 'Realistic', 'Realistic occupations frequently involve work activities that include practical, hands-on problems and solutions. They often deal with plants, animals, and real-world materials like wood, tools, and machinery. Many of the occupations require working outside, and do not involve a lot of paperwork or working closely with others.'),
(3, 'Investigative ', 'Investigative occupations frequently involve working with ideas, and require an extensive amount of thinking. These occupations can involve searching for facts and figuring out problems mentally.'),
(4, 'Artistic', 'Artistic occupations frequently involve working with forms, designs and patterns. They often require self-expression and the work can be done without following a clear set of rules.'),
(5, 'Social', 'Social occupations frequently involve working with, communicating with, and teaching people. These occupations often involve helping or providing service to others.'),
(6, 'Enterprising', 'Enterprising occupations frequently involve starting up and carrying out projects. These occupations can involve leading people and making many decisions. Sometimes they require risk taking and often deal with business.'),
(7, 'Conventional', 'Conventional occupations frequently involve following set procedures and routines. These occupations can include working with data and details more than with ideas. Usually there is a clear line of authority to follow.');

-- --------------------------------------------------------

--
-- Table structure for table `question_job`
--

CREATE TABLE `question_job` (
  `JobId` int(11) NOT NULL,
  `JobTitle` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_job`
--

INSERT INTO `question_job` (`JobId`, `JobTitle`) VALUES
(2, 'Agriculture'),
(3, 'Arch. & Construction'),
(4, 'Arts & Communications'),
(5, 'Health Science'),
(6, 'Hospitality & Tourism'),
(7, 'Information Technology'),
(8, 'Law & Public Safety'),
(9, 'Manufacturing'),
(10, 'Science, Tech & Math'),
(11, 'Transportation'),
(12, 'Education & Training'),
(13, 'Government'),
(14, 'Human Science'),
(15, 'Human Service'),
(16, 'Marketing & Sales'),
(17, 'Business & Management'),
(18, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `question_job_categories`
--

CREATE TABLE `question_job_categories` (
  `id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_job_categories`
--

INSERT INTO `question_job_categories` (`id`, `job_id`, `category_id`) VALUES
(2, 2, 1),
(3, 3, 1),
(4, 3, 7),
(5, 4, 1),
(6, 4, 4),
(7, 4, 6),
(8, 5, 1),
(9, 5, 3),
(10, 5, 5),
(11, 5, 7),
(12, 6, 1),
(13, 6, 6),
(14, 7, 1),
(15, 7, 3),
(16, 8, 1),
(17, 8, 5),
(18, 8, 6),
(19, 9, 1),
(20, 9, 7),
(21, 10, 1),
(22, 10, 3),
(23, 11, 1),
(24, 11, 7),
(25, 12, 4),
(26, 12, 5),
(27, 13, 5),
(28, 13, 6),
(29, 14, 5),
(30, 15, 5),
(31, 16, 5),
(32, 16, 7),
(33, 17, 6),
(34, 17, 7),
(35, 18, 6),
(36, 18, 7);

-- --------------------------------------------------------

--
-- Table structure for table `question_question`
--

CREATE TABLE `question_question` (
  `QuestionId` int(11) NOT NULL,
  `QuestionTitle` longtext NOT NULL,
  `CategoryId_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_question`
--

INSERT INTO `question_question` (`QuestionId`, `QuestionTitle`, `CategoryId_id`) VALUES
(16, 'I like to work on cars', 1),
(17, 'I like to build things', 1),
(18, 'I like to take care of animals', 1),
(19, 'I like to put things together or assemble models', 1),
(20, 'I like to cook', 1),
(21, 'I like to think things through before making decisions', 1),
(22, 'I like to work outdoors', 1),
(23, 'I like to do puzzles', 3),
(24, 'I like to do experiments', 3),
(25, 'I like to work on science projects', 3),
(26, 'I like to figure out how things work', 3),
(27, 'I like to analyze things like problems, situations or trends', 3),
(28, 'I like to work with numbers or charts', 3),
(29, 'I like to work on math problems', 3),
(30, 'I like to attend concerts, theaters, or art exhibits', 4),
(31, 'I like to read fiction, poetry or plays', 4),
(32, 'I like to do creative writing', 4),
(33, 'I like to be creative', 4),
(34, 'I like to play instruments or sing', 4),
(35, 'I like to act in plays', 4),
(36, 'I like to draw', 4),
(37, 'I like to work in teams', 5),
(38, 'I like to teach or train people', 5),
(39, 'I like to help people solve their problems', 5),
(40, 'I like to heal people', 5),
(41, 'I like to learn about other cultures', 5),
(42, 'I like to have discussions about issues like politics or current events', 5),
(43, 'I like to help people', 5),
(44, 'I like to give speeches', 6),
(45, 'I like to be a leader', 6),
(46, 'I like to dream about starting my own business', 6),
(47, 'I like to take on new responsibilities', 6),
(48, 'I like to sell things', 6),
(49, 'I like to influence or persuade people', 6),
(50, 'I like to set goals for myself', 6),
(51, 'I like to organize things like files, offices or activities', 7),
(52, 'I like to have clear instructions to follow', 7),
(53, 'I like to have my day structured', 7),
(54, 'I like to pay attention to details', 7),
(55, 'I like to do filing or typing', 7),
(56, 'I like to keep records of my work', 7),
(57, 'I like to work in an office', 7);

-- --------------------------------------------------------

--
-- Table structure for table `result_result`
--

CREATE TABLE `result_result` (
  `ResultId` int(11) NOT NULL,
  `AllCategories` varchar(250) DEFAULT NULL,
  `AllCategoriesScore` varchar(250) DEFAULT NULL,
  `ResultDate` datetime(6) NOT NULL,
  `StudentId_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result_result`
--

INSERT INTO `result_result` (`ResultId`, `AllCategories`, `AllCategoriesScore`, `ResultDate`, `StudentId_id`) VALUES
(8, '1,3,4,5,6,7', '7,14,21,28,35,25', '2020-07-27 13:09:31.954868', 1),
(9, '1,3,4,5,6,7', '26,26,27,24,23,26', '2020-07-27 20:14:26.854293', 4),
(10, '1,3,4,5,6,7', '26,35,22,23,22,21', '2020-07-27 21:14:45.142437', 5),
(11, '1,3,4,5,6,7', '29,30,32,31,35,34', '2020-07-27 23:07:48.658704', 6),
(12, '1,3,4,5,6,7', '31,32,23,35,34,30', '2020-07-27 23:09:52.265368', 7),
(13, '1,3,4,5,6,7', '24,31,22,30,32,28', '2020-07-27 23:09:52.265368', 8),
(14, '1,3,4,5,6,7', '22,18,15,27,27,33', '2020-07-28 08:30:43.546775', 9),
(15, '1,3,4,5,6,7', '26,25,23,29,27,25', '2020-07-28 08:30:43.546775', 10),
(16, '1,3,4,5,6,7', '23,24,22,24,25,34', '2020-07-28 08:30:43.546775', 11),
(17, '1,3,4,5,6,7', '23,23,27,32,31,35', '2020-07-28 08:30:43.546775', 12),
(18, '1,3,4,5,6,7', '25,23,23,23,20,33', '2020-07-28 08:30:43.546775', 13),
(19, '1,3,4,5,6,7', '25,35,25,31,34,31', '2020-07-28 08:30:43.546775', 14),
(20, '1,3,4,5,6,7', '22,26,23,15,21,22', '2020-07-28 08:30:43.546775', 13),
(21, '1,3,4,5,6,7', '24,27,15,34,32,25', '2020-07-28 08:30:43.546775', 15),
(22, '1,3,4,5,6,7', '27,35,30,33,21,31', '2020-07-28 14:20:42.516793', 16),
(23, '1,3,4,5,6,7', '21,24,17,22,24,28', '2020-07-28 14:20:42.516793', 17),
(24, '1,3,4,5,6,7', '19,32,32,28,29,23', '2020-07-30 10:29:29.796802', 18),
(25, '1,3,4,5,6,7', '22,31,17,28,27,22', '2020-07-30 22:09:32.921041', 19),
(26, '1,3,4,5,6,7', '28,28,26,33,32,28', '2020-07-30 22:09:32.921041', 20),
(27, '1,3,4,5,6,7', '30,30,27,32,23,27', '2020-07-30 22:09:32.921041', 21),
(28, '1,3,4,5,6,7', '27,34,30,30,28,19', '2020-07-30 22:09:32.921041', 22),
(29, '1,3,4,5,6,7', '29,30,22,32,32,30', '2020-07-30 22:09:32.921041', 23);

-- --------------------------------------------------------

--
-- Table structure for table `result_result_categories`
--

CREATE TABLE `result_result_categories` (
  `id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result_result_categories`
--

INSERT INTO `result_result_categories` (`id`, `result_id`, `category_id`) VALUES
(21, 8, 5),
(20, 8, 6),
(22, 8, 7),
(24, 9, 1),
(25, 9, 3),
(23, 9, 4),
(27, 10, 1),
(26, 10, 3),
(28, 10, 5),
(31, 11, 4),
(29, 11, 6),
(30, 11, 7),
(34, 12, 3),
(32, 12, 5),
(33, 12, 6),
(36, 13, 3),
(37, 13, 5),
(35, 13, 6),
(39, 14, 5),
(40, 14, 6),
(38, 14, 7),
(43, 15, 1),
(41, 15, 5),
(42, 15, 6),
(46, 16, 3),
(45, 16, 6),
(44, 16, 7),
(48, 17, 5),
(49, 17, 6),
(47, 17, 7),
(51, 18, 1),
(52, 18, 3),
(50, 18, 7),
(53, 19, 3),
(55, 19, 5),
(54, 19, 6),
(58, 20, 1),
(56, 20, 3),
(57, 20, 4),
(61, 21, 3),
(59, 21, 5),
(60, 21, 6),
(62, 22, 3),
(63, 22, 5),
(64, 22, 7),
(66, 23, 3),
(67, 23, 6),
(65, 23, 7),
(68, 24, 3),
(69, 24, 4),
(70, 24, 6),
(71, 25, 3),
(72, 25, 5),
(73, 25, 6),
(76, 26, 1),
(74, 26, 5),
(75, 26, 6),
(78, 27, 1),
(79, 27, 3),
(77, 27, 5),
(80, 28, 3),
(81, 28, 4),
(82, 28, 5),
(85, 29, 3),
(83, 29, 5),
(84, 29, 6);

-- --------------------------------------------------------

--
-- Table structure for table `student_student`
--

CREATE TABLE `student_student` (
  `StudentId` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Phone` varchar(150) DEFAULT NULL,
  `City` varchar(150) NOT NULL,
  `District` varchar(150) NOT NULL,
  `Pincode` varchar(150) NOT NULL,
  `Qualification` varchar(150) NOT NULL,
  `UserId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_student`
--

INSERT INTO `student_student` (`StudentId`, `Name`, `Phone`, `City`, `District`, `Pincode`, `Qualification`, `UserId_id`) VALUES
(1, 'Viral Shastri', '8469223098', 'surat', 'surat', '395002', 'Mca', 3),
(4, 'Jariwala maitry', '7069462749', 'Surat', 'Gujarat', '395003', '12th', 6),
(5, 'shantanu kanade', '7020802138', 'pune', 'pune', '411041', '10th', 7),
(6, 'Anuradha Shantanu Kanade', '9421100119', 'Pune', 'Pune', '411041', 'PhD', 8),
(7, 'Satyajit', '9860112306', 'Pune', 'Pune', '411030', 'MSc', 9),
(8, 'Yogesh Dilip Kulkarni', '9028086033', 'Pune', 'Pune', '411033', 'MCOM', 10),
(9, 'Rashmi', '9404233422', 'Pune', 'Pune', '411041', '12th', 11),
(10, 'Rohit Khandagale', '9922677787', 'Pune', 'Pune', '411041', 'Bcom', 12),
(11, 'Sanchita Nerlekar ', '9011488602', 'Pune', 'Pune', '411041', '12th', 13),
(12, 'Chinmay chintamani Kulkarni', '9423716960', 'Vita', 'Sangli', '415311', '12th', 14),
(13, 'Harshali Ashtekar', '8796775272', 'pune', 'pune', '411009', '10th', 15),
(14, 'Samruddhi Meena sidmul', '7588229360', 'Pune', 'Pune', '411030', '12th', 16),
(15, 'Aneesh Kulkarni ', '9604263575', 'Pune', 'Pune', '411037', 'BA', 17),
(16, 'Swanand Sawant', '9881909321', 'Chinchwad', 'Pune', '411033', '4th', 18),
(17, 'asdf', '9876543210', 'pune', 'pune', '411001', 'MA', 19),
(18, 'Sampada kulkarni', '9373594762', 'Pune', 'Pune', '411027', 'Dee', 20),
(19, 'Shivendra kumar', '9934618941', 'Pune', 'Pune', '411038', 'BCA', 21),
(20, 'Pragatee jain', '9899350672', 'Delhi', 'Delhi', '110008', 'Ba', 22),
(21, 'Rajshri Dnyaneshwar Shinde', '9850394492', 'Rahata', 'Rahata', '423107', 'MSc', 23),
(22, 'Sakshi Madhusudan Shejole', '9604904916', 'Akola', 'Akola', '444001', 'BE', 24),
(23, 'Sagar Prakash Patil', '8999160352', 'Jalgaon', 'Jalgaon', '425401', 'Msc', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `question_category`
--
ALTER TABLE `question_category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `question_job`
--
ALTER TABLE `question_job`
  ADD PRIMARY KEY (`JobId`);

--
-- Indexes for table `question_job_categories`
--
ALTER TABLE `question_job_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_job_Categories_job_id_category_id_1d672386_uniq` (`job_id`,`category_id`),
  ADD KEY `question_job_Categor_category_id_74388998_fk_question_` (`category_id`);

--
-- Indexes for table `question_question`
--
ALTER TABLE `question_question`
  ADD PRIMARY KEY (`QuestionId`),
  ADD KEY `question_question_CategoryId_id_125490bd_fk_question_` (`CategoryId_id`);

--
-- Indexes for table `result_result`
--
ALTER TABLE `result_result`
  ADD PRIMARY KEY (`ResultId`),
  ADD KEY `result_result_StudentId_id_57bca327_fk_student_student_StudentId` (`StudentId_id`);

--
-- Indexes for table `result_result_categories`
--
ALTER TABLE `result_result_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `result_result_Categories_result_id_category_id_70731326_uniq` (`result_id`,`category_id`),
  ADD KEY `result_result_Catego_category_id_73f924ad_fk_question_` (`category_id`);

--
-- Indexes for table `student_student`
--
ALTER TABLE `student_student`
  ADD PRIMARY KEY (`StudentId`),
  ADD UNIQUE KEY `UserId_id` (`UserId_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `question_category`
--
ALTER TABLE `question_category`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `question_job`
--
ALTER TABLE `question_job`
  MODIFY `JobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `question_job_categories`
--
ALTER TABLE `question_job_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `question_question`
--
ALTER TABLE `question_question`
  MODIFY `QuestionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `result_result`
--
ALTER TABLE `result_result`
  MODIFY `ResultId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `result_result_categories`
--
ALTER TABLE `result_result_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `student_student`
--
ALTER TABLE `student_student`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `question_job_categories`
--
ALTER TABLE `question_job_categories`
  ADD CONSTRAINT `question_job_Categor_category_id_74388998_fk_question_` FOREIGN KEY (`category_id`) REFERENCES `question_category` (`CategoryId`),
  ADD CONSTRAINT `question_job_Categories_job_id_d91d89e6_fk_question_job_JobId` FOREIGN KEY (`job_id`) REFERENCES `question_job` (`JobId`);

--
-- Constraints for table `question_question`
--
ALTER TABLE `question_question`
  ADD CONSTRAINT `question_question_CategoryId_id_125490bd_fk_question_` FOREIGN KEY (`CategoryId_id`) REFERENCES `question_category` (`CategoryId`);

--
-- Constraints for table `result_result`
--
ALTER TABLE `result_result`
  ADD CONSTRAINT `result_result_StudentId_id_57bca327_fk_student_student_StudentId` FOREIGN KEY (`StudentId_id`) REFERENCES `student_student` (`StudentId`);

--
-- Constraints for table `result_result_categories`
--
ALTER TABLE `result_result_categories`
  ADD CONSTRAINT `result_result_Catego_category_id_73f924ad_fk_question_` FOREIGN KEY (`category_id`) REFERENCES `question_category` (`CategoryId`),
  ADD CONSTRAINT `result_result_Catego_result_id_4b3ba05f_fk_result_re` FOREIGN KEY (`result_id`) REFERENCES `result_result` (`ResultId`);

--
-- Constraints for table `student_student`
--
ALTER TABLE `student_student`
  ADD CONSTRAINT `student_student_UserId_id_c9ae8b03_fk_auth_user_id` FOREIGN KEY (`UserId_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
