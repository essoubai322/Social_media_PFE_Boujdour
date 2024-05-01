-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 06:01 PM
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
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(20, 'wow', 'ayoub_sebaai', 'ayoub_sebaai', '2024-04-26 12:27:25', 'no', 19),
(21, 'sounds good', 'driss_tawfik', 'ayoub_sebaai', '2024-04-26 12:37:13', 'no', 19),
(22, 'awah', 'ayoub_sebaai', 'driss_tawfik', '2024-04-26 17:56:47', 'no', 20),
(23, '', 'ayoub_sebaai', 'driss_tawfik', '2024-04-26 18:17:59', 'no', 20),
(24, '', 'ayoub_sebaai', 'driss_tawfik', '2024-04-26 18:18:00', 'no', 20),
(25, 'ewddsa', 'ayoub_sebaai', 'ayoub_sebaai', '2024-04-27 01:15:38', 'no', 21),
(26, 'dsadas', 'ayoub_sebaai', 'ayoub_sebaai', '2024-04-27 01:41:43', 'no', 21),
(27, 'wa3la zok kidayre ', 'brahim_amssayfe', 'ayoub_sebaai', '2024-04-30 08:44:53', 'no', 21),
(28, 'dir like w9', 'brahim_amssayfe', 'brahim_amssayfe', '2024-04-30 08:45:17', 'no', 31),
(29, 'hhhh', 'ayoub_sebaai', 'brahim_amssayfe', '2024-04-30 08:47:34', 'no', 31),
(30, 'w3la 9waadaaaa!!!', 'ayoub_sebaai', 'azzeddine_moubine', '2024-05-01 16:23:46', 'no', 32);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(6, 'driss_tawfik', 20),
(25, 'ayoub_sebaai', 31),
(65, 'brahim_amssayfe', 21),
(78, 'azzeddine_moubine', 21),
(79, 'ayoub_sebaai', 32);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(6, 'ayoub_sebaai', 'driss_tawfik', 'slm ajmi cv', '2024-04-26 12:41:44', 'yes', 'yes', 'no'),
(7, 'driss_tawfik', 'ayoub_sebaai', 'cv akhoya ', '2024-04-26 12:42:20', 'yes', 'yes', 'no'),
(8, 'driss_tawfik', 'ayoub_sebaai', 'si7r\r\n', '2024-04-26 12:42:49', 'yes', 'yes', 'no'),
(16, 'brahim_amssayfe', 'ayoub_sebaai', 'slm cv ', '2024-04-30 08:43:41', 'yes', 'yes', 'no'),
(17, 'ayoub_sebaai', 'brahim_amssayfe', 'aji n7wik \r\n', '2024-04-30 08:44:32', 'yes', 'yes', 'no'),
(18, 'brahim_amssayfe', 'ayoub_sebaai', 'ok \r\n', '2024-04-30 08:46:15', 'yes', 'yes', 'no'),
(19, 'ayoub_sebaai', 'brahim_amssayfe', 'hhhhhhhhh', '2024-04-30 09:08:53', 'no', 'yes', 'no'),
(21, 'azzeddine_moubine', 'ayoub_sebaai', 'dor t9wd\r\n', '2024-05-01 16:24:25', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(27, 'ayoub_sebaai', 'driss_tawfik', 'Driss Tawfik commented on your post', 'post.php?id=19', '2024-04-26 12:37:13', 'yes', 'yes'),
(28, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai commented on your post', 'post.php?id=20', '2024-04-26 17:56:47', 'no', 'no'),
(29, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 17:57:09', 'no', 'no'),
(30, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 17:57:11', 'no', 'no'),
(31, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 17:57:15', 'no', 'no'),
(32, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 17:57:17', 'no', 'no'),
(33, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 18:00:09', 'no', 'no'),
(34, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 18:00:13', 'no', 'no'),
(35, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 18:07:02', 'no', 'no'),
(36, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-04-26 18:07:22', 'no', 'no'),
(37, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai commented on your post', 'post.php?id=20', '2024-04-26 18:17:59', 'no', 'no'),
(38, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai commented on your post', 'post.php?id=20', '2024-04-26 18:18:00', 'no', 'no'),
(39, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-27 02:52:39', 'yes', 'yes'),
(40, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe commented on your post', 'post.php?id=21', '2024-04-30 08:44:53', 'yes', 'yes'),
(41, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 08:47:30', 'no', 'yes'),
(42, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai commented on your post', 'post.php?id=31', '2024-04-30 08:47:34', 'no', 'yes'),
(43, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 08:53:49', 'no', 'yes'),
(44, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:04:51', 'no', 'yes'),
(45, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:04:52', 'no', 'yes'),
(46, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:04:53', 'no', 'yes'),
(47, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:05:25', 'no', 'yes'),
(48, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:07:26', 'no', 'yes'),
(49, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:07:28', 'no', 'yes'),
(50, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:07:29', 'no', 'yes'),
(51, 'brahim_amssayfe', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=31', '2024-04-30 09:08:01', 'no', 'yes'),
(52, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:08:59', 'no', 'yes'),
(53, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:08:59', 'no', 'yes'),
(54, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:09:00', 'no', 'yes'),
(55, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:09:00', 'no', 'yes'),
(56, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:09:00', 'no', 'yes'),
(57, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:09:06', 'no', 'yes'),
(58, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:09:08', 'no', 'yes'),
(59, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-04-30 09:09:10', 'no', 'yes'),
(60, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:08:30', 'no', 'yes'),
(61, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:08:32', 'no', 'yes'),
(62, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:11:58', 'no', 'yes'),
(63, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:13:48', 'no', 'yes'),
(64, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:13:51', 'no', 'yes'),
(65, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:13:53', 'no', 'yes'),
(66, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:13:56', 'no', 'yes'),
(67, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:13:59', 'no', 'yes'),
(68, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 14:14:27', 'no', 'yes'),
(69, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 15:21:55', 'no', 'yes'),
(70, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-05-01 15:22:13', 'no', 'no'),
(71, 'ayoub_sebaai', 'brahim_amssayfe', 'Brahim Amssayfe liked your post', 'post.php?id=21', '2024-05-01 15:26:58', 'no', 'yes'),
(72, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-05-01 15:27:39', 'no', 'no'),
(73, 'driss_tawfik', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=20', '2024-05-01 15:54:50', 'no', 'no'),
(74, 'ayoub_sebaai', 'azzeddine_moubine', 'Azzeddine Moubine liked your post', 'post.php?id=21', '2024-05-01 16:23:16', 'no', 'yes'),
(75, 'azzeddine_moubine', 'ayoub_sebaai', 'Ayoub Sebaai liked your post', 'post.php?id=32', '2024-05-01 16:23:39', 'no', 'no'),
(76, 'azzeddine_moubine', 'ayoub_sebaai', 'Ayoub Sebaai commented on your post', 'post.php?id=32', '2024-05-01 16:23:46', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(14, 'thuram', 'ayoub_sebaai', 'none', '2024-04-26 12:22:09', 'no', 'yes', 0, 'assets/images/posts/662b8e61694262bc6b68d4898900be2cd48d28b326b70.jpg'),
(15, 'thuram', 'ayoub_sebaai', 'none', '2024-04-26 12:22:21', 'no', 'yes', 0, 'assets/images/posts/662b8e6d3cf282bc6b68d4898900be2cd48d28b326b70.jpg'),
(16, 'thuram', 'ayoub_sebaai', 'none', '2024-04-26 12:22:24', 'no', 'yes', 0, 'assets/images/posts/662b8e704abf52bc6b68d4898900be2cd48d28b326b70.jpg'),
(17, 'ddddd', 'ayoub_sebaai', 'none', '2024-04-26 12:26:19', 'no', 'yes', 0, 'assets/images/posts/662b8f5bb2a752bc6b68d4898900be2cd48d28b326b70.jpg'),
(18, 'ddddd', 'ayoub_sebaai', 'none', '2024-04-26 12:26:25', 'no', 'yes', 0, 'assets/images/posts/662b8f613f8442bc6b68d4898900be2cd48d28b326b70.jpg'),
(19, 'omg', 'ayoub_sebaai', 'none', '2024-04-26 12:27:17', 'no', 'yes', 0, 'assets/images/posts/662b8f95a51872bc6b68d4898900be2cd48d28b326b70.jpg'),
(20, '7ta ana', 'driss_tawfik', 'none', '2024-04-26 12:41:21', 'no', 'no', 1, 'assets/images/posts/662b92e1b82462bc6b68d4898900be2cd48d28b326b70.jpg'),
(21, 'hello world', 'ayoub_sebaai', 'none', '2024-04-27 01:15:21', 'no', 'no', 7, 'assets/images/posts/662c439990cba2bc6b68d4898900be2cd48d28b326b70.jpg'),
(22, 'koko', 'ayoub_sebaai', 'none', '2024-04-27 01:24:42', 'no', 'yes', 0, ''),
(23, 'tnakt', 'ayoub_sebaai', 'none', '2024-04-27 01:58:43', 'no', 'yes', 0, 'assets/images/posts/662c4dc3465052bc6b68d4898900be2cd48d28b326b70.jpg'),
(24, 'tnakt', 'ayoub_sebaai', 'none', '2024-04-27 01:58:46', 'no', 'yes', 0, 'assets/images/posts/662c4dc6550c22bc6b68d4898900be2cd48d28b326b70.jpg'),
(25, 'okoko', 'ayoub_sebaai', 'none', '2024-04-27 03:01:17', 'no', 'yes', 0, ''),
(26, 'okoko', 'ayoub_sebaai', 'none', '2024-04-27 03:02:03', 'no', 'yes', 0, ''),
(27, 'apa', 'ayoub_sebaai', 'none', '2024-04-27 03:16:56', 'no', 'yes', 0, 'assets/images/posts/662c60180bf07artworks-9b5uKQs6rEecP9Pc-XTz2SA-t500x500.jpg'),
(28, 'apa', 'ayoub_sebaai', 'none', '2024-04-27 03:16:59', 'no', 'yes', 0, 'assets/images/posts/662c601bb3abcartworks-9b5uKQs6rEecP9Pc-XTz2SA-t500x500.jpg'),
(29, 'apa', 'ayoub_sebaai', 'none', '2024-04-27 03:17:02', 'no', 'yes', 0, 'assets/images/posts/662c601e828deartworks-9b5uKQs6rEecP9Pc-XTz2SA-t500x500.jpg'),
(30, 'apa', 'ayoub_sebaai', 'none', '2024-04-27 03:17:04', 'no', 'yes', 0, 'assets/images/posts/662c602091bc8artworks-9b5uKQs6rEecP9Pc-XTz2SA-t500x500.jpg'),
(31, 'maradona ajmi', 'brahim_amssayfe', 'none', '2024-04-30 08:45:08', 'no', 'yes', 0, 'assets/images/posts/6630a18451552sticker-png-diego-maradona-topaz-thumbnail.png'),
(32, 'ha sb3 ja ws3 ws3', 'azzeddine_moubine', 'none', '2024-05-01 16:22:51', 'no', 'no', 1, 'assets/images/posts/66325e4b5312b660b649decd01.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(8, 'Ayoub', 'Sebaai', 'ayoub_sebaai', 'Apa@gmail.com', 'dcc1636470b3cf78676e9ebe79244157', '2024-04-26', 'assets/images/profile_pics/ayoub_sebaaic882b8062289361c59a3dd16832a7d6an.jpeg', 16, 7, 'no', ',driss_tawfik,brahim_amssayfe,azzeddine_moubine,'),
(9, 'Driss', 'Tawfik', 'driss_tawfik', 'Apapa@gmail.com', 'dcc1636470b3cf78676e9ebe79244157', '2024-04-26', 'assets/images/profile_pics/defaults/head_emerald.png', 1, 1, 'no', ',ayoub_sebaai,'),
(10, 'Brahim', 'Amssayfe', 'brahim_amssayfe', 'Brahim@gmail.com', 'dcc1636470b3cf78676e9ebe79244157', '2024-04-27', 'assets/images/profile_pics/brahim_amssayfe739a39882d8829f4587c321b78e1d81en.jpeg', 1, 0, 'no', ',ayoub_sebaai,'),
(11, 'Azzeddine', 'Moubine', 'azzeddine_moubine', 'Azzeddinemoubine01@gmail.com', 'e4c61804c30b251ebecb1b767a5ba942', '2024-05-01', 'assets/images/profile_pics/azzeddine_moubineca681558cc747b26e77651bf6ef94317n.jpeg', 1, 1, 'no', ',ayoub_sebaai,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
