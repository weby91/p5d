-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Inang: localhost:3306
-- Waktu pembuatan: 11 Okt 2016 pada 21.16
-- Versi Server: 10.0.27-MariaDB
-- Versi PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `gkrgedon_telegram`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Logs`
--

CREATE TABLE IF NOT EXISTS `Logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bot` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `chat_id` int(14) NOT NULL,
  `type` varchar(30) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `chat_type` varchar(10) DEFAULT NULL,
  `content` varchar(250) NOT NULL,
  `date` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bot` (`bot`,`action`,`chat_id`,`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Dumping data untuk tabel `Logs`
--

INSERT INTO `Logs` (`id`, `bot`, `action`, `chat_id`, `type`, `message_id`, `first_name`, `last_name`, `chat_type`, `content`, `date`, `created_date`) VALUES
(1, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', '/git', '1476152867', '0000-00-00 00:00:00'),
(2, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 12\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476152867', '0000-00-00 00:00:00'),
(3, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', 'hi', '1476153000', '0000-00-00 00:00:00'),
(4, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 13\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153000', '0000-00-00 00:00:00'),
(5, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', '/git', '1476153331', '0000-00-00 00:00:00'),
(6, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 17\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153331', '0000-00-00 00:00:00'),
(7, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', 'welcome', '1476153451', '0000-00-00 00:00:00'),
(8, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', '/test', '1476153325', '0000-00-00 00:00:00'),
(9, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 24\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153451', '0000-00-00 00:00:00'),
(10, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', '/test', '1476153005', '0000-00-00 00:00:00'),
(11, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 15\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153325', '0000-00-00 00:00:00'),
(12, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 14\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153005', '0000-00-00 00:00:00'),
(13, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', 'hi', '1476153461', '0000-00-00 00:00:00'),
(14, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 27\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153461', '0000-00-00 00:00:00'),
(15, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, '', 'hello', '1476153484', '0000-00-00 00:00:00'),
(16, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, '', 'stdClass Object\n(\n    [message_id] => 33\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476153484', '0000-00-00 00:00:00'),
(17, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/start', '1476154398', '0000-00-00 00:00:00'),
(18, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476154398', '0000-00-00 00:00:00'),
(19, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/help', '1476154421', '0000-00-00 00:00:00'),
(20, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Try to use inline mode...', '1476154421', '0000-00-00 00:00:00'),
(21, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '@hi', '1476154564', '0000-00-00 00:00:00'),
(22, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, NULL, 'stdClass Object\n(\n    [message_id] => 39\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476154564', '0000-00-00 00:00:00'),
(23, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, NULL, 'stdClass Object\n(\n    [message_id] => 41\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476155020', '0000-00-00 00:00:00'),
(24, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/welcome', '1476155400', '0000-00-00 00:00:00'),
(25, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476155400', '0000-00-00 00:00:00'),
(26, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '<b>a', '1476155924', '0000-00-00 00:00:00'),
(27, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, NULL, 'stdClass Object\n(\n    [message_id] => 46\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476155924', '0000-00-00 00:00:00'),
(28, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '<b>a</b>', '1476155928', '0000-00-00 00:00:00'),
(29, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, NULL, 'stdClass Object\n(\n    [message_id] => 47\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476155928', '0000-00-00 00:00:00'),
(30, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/welcome', '1476156336', '0000-00-00 00:00:00'),
(31, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476156336', '0000-00-00 00:00:00'),
(32, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/welcome', '1476156425', '0000-00-00 00:00:00'),
(33, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476156425', '0000-00-00 00:00:00'),
(34, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/WELCOME', '1476156529', '0000-00-00 00:00:00'),
(35, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476156529', '0000-00-00 00:00:00'),
(36, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/welcome', '1476157549', '0000-00-00 00:00:00'),
(37, 'downtownbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476157549', '0000-00-00 00:00:00'),
(38, 'downtownbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, 'h', '1476158378', '0000-00-00 00:00:00'),
(39, 'downtownbot', 'sent', 251248601, 'error', NULL, NULL, NULL, NULL, 'stdClass Object\n(\n    [message_id] => 6\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] => ', '1476158378', '0000-00-00 00:00:00'),
(40, 'pancasila5dbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/welcome', '1476160144', '2016-10-11 11:29:12'),
(41, 'pancasila5dbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476160144', '2016-10-11 11:29:12'),
(42, 'pancasila5dbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, 'HI', '1476160176', '2016-10-11 11:29:43'),
(43, 'pancasila5dbot', 'sent', 251248601, 'WEDEWW', NULL, NULL, NULL, NULL, 'stdClass Object\n(\n    [message_id] => 15\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =>', '1476160176', '2016-10-11 11:29:43'),
(44, 'pancasila5dbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, 'hi', '1476160274', '2016-10-11 11:31:15'),
(45, 'pancasila5dbot', 'recv', 251248601, 'text', NULL, NULL, NULL, NULL, '/start', '1476160311', '2016-10-11 11:31:59'),
(46, 'pancasila5dbot', 'sent', 251248601, 'text', NULL, NULL, NULL, NULL, 'Welcome...', '1476160311', '2016-10-11 11:31:59'),
(47, 'pancasila5dbot', 'recv', 0, 'text', NULL, 'Webster', NULL, NULL, '/hi', '1476161110', '2016-10-11 11:45:18'),
(48, 'pancasila5dbot', 'sent', 0, 'text', NULL, 'Webster', NULL, NULL, 'Welcome...', '1476161110', '2016-10-11 11:45:18'),
(49, 'pancasila5dbot', 'recv', 0, 'text', 35, 'Webster', 'Tulai', 'private', '/hi', '1476161351', '2016-10-11 11:49:19'),
(50, 'pancasila5dbot', 'sent', 0, 'text', 35, 'Webster', 'Tulai', 'private', 'Welcome...', '1476161351', '2016-10-11 11:49:19'),
(51, 'pancasila5dbot', 'recv', 0, 'text', 37, 'Webster', 'Tulai', 'private', '/hi', '1476161506', '2016-10-11 11:51:54'),
(52, 'pancasila5dbot', 'sent', 0, 'text', 37, 'Webster', 'Tulai', 'private', 'Welcome...', '1476161506', '2016-10-11 11:51:54'),
(53, 'pancasila5dbot', 'recv', 0, 'text', 39, 'Webster', 'Tulai', 'private', '/hi', '1476161558', '2016-10-11 11:52:46'),
(54, 'pancasila5dbot', 'sent', 0, 'text', 39, 'Webster', 'Tulai', 'private', 'Welcome...', '1476161558', '2016-10-11 11:52:46'),
(55, 'pancasila5dbot', 'recv', 0, 'text', 43, 'Webster', 'Tulai', 'private', '/hi', '1476161791', '2016-10-11 11:56:39'),
(56, 'pancasila5dbot', 'sent', 0, 'text', 43, 'Webster', 'Tulai', 'private', 'Welcome...', '1476161791', '2016-10-11 11:56:39'),
(57, 'pancasila5dbot', 'recv', 251248601, 'text', 45, 'Webster', 'Tulai', 'private', '/hi', '1476161870', '2016-10-11 11:57:58'),
(58, 'pancasila5dbot', 'sent', 251248601, 'text', 45, 'Webster', 'Tulai', 'private', 'Welcome...', '1476161870', '2016-10-11 11:57:58'),
(59, 'pancasila5dbot', 'recv', 251248601, 'text', 47, 'Webster', 'Tulai', 'private', '/hi', '1476161885', '2016-10-11 11:58:13'),
(60, 'pancasila5dbot', 'sent', 251248601, 'text', 47, 'Webster', 'Tulai', 'private', 'Welcome...', '1476161885', '2016-10-11 11:58:13'),
(61, 'pancasila5dbot', 'recv', 251248601, 'text', 49, 'Webster', 'Tulai', 'private', '/play', '1476162775', '2016-10-11 12:12:57'),
(62, 'pancasila5dbot', 'recv', 251248601, 'text', 50, 'Webster', 'Tulai', 'private', '/play', '1476162817', '2016-10-11 12:13:44'),
(63, 'pancasila5dbot', 'sent', 251248601, 'text', 50, 'Webster', 'Tulai', 'private', '<b> </b> ingin memulai permainan. Silahkan ajak 2 temanmu lagi', '1476162817', '2016-10-11 12:13:44'),
(64, 'pancasila5dbot', 'recv', 251248601, 'text', 187, 'Webster', 'Tulai', 'private', '/write', '1476174631', '2016-10-11 15:30:41'),
(65, 'pancasila5dbot', 'sent', 251248601, 'text', 187, 'Webster', 'Tulai', 'private', 'Write your message and press enter...', '1476174631', '2016-10-11 15:30:41'),
(66, 'pancasila5dbot', 'recv', 251248601, 'text', 189, 'Webster', 'Tulai', 'private', 'p', '1476174642', '2016-10-11 15:30:49'),
(67, 'pancasila5dbot', 'sent', 251248601, 'text', 189, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476174642', '2016-10-11 15:30:49'),
(68, 'pancasila5dbot', 'recv', 251248601, 'text', 191, 'Webster', 'Tulai', 'private', '/play', '1476174746', '2016-10-11 15:32:36'),
(69, 'pancasila5dbot', 'sent', 251248601, 'text', 191, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476174746', '2016-10-11 15:32:36'),
(70, 'pancasila5dbot', 'recv', 251248601, 'text', 193, 'Webster', 'Tulai', 'private', 'y', '1476174760', '2016-10-11 15:32:48'),
(71, 'pancasila5dbot', 'sent', 251248601, 'text', 193, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476174760', '2016-10-11 15:32:48'),
(72, 'pancasila5dbot', 'recv', 251248601, 'text', 195, 'Webster', 'Tulai', 'private', '/play', '1476174865', '2016-10-11 15:34:33'),
(73, 'pancasila5dbot', 'sent', 251248601, 'text', 195, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476174865', '2016-10-11 15:34:33'),
(74, 'pancasila5dbot', 'recv', 251248601, 'text', 202, 'Webster', 'Tulai', 'private', 'a', '1476178623', '2016-10-11 16:37:11'),
(75, 'pancasila5dbot', 'sent', 251248601, 'text', 202, 'Webster', 'Tulai', 'private', '<b>Tulai Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476178623', '2016-10-11 16:37:11'),
(76, 'pancasila5dbot', 'recv', 251248601, 'text', 199, 'Webster', 'Tulai', 'private', '/play', '1476178405', '2016-10-11 16:37:39'),
(77, 'pancasila5dbot', 'sent', 251248601, 'text', 199, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476178405', '2016-10-11 16:37:39'),
(78, 'pancasila5dbot', 'recv', 251248601, 'text', 197, 'Webster', 'Tulai', 'private', 'a', '1476177866', '2016-10-11 16:37:47'),
(79, 'pancasila5dbot', 'sent', 251248601, 'text', 197, 'Webster', 'Tulai', 'private', '<b>Tulai Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476177866', '2016-10-11 16:37:47'),
(80, 'pancasila5dbot', 'recv', 251248601, 'text', 201, 'Webster', 'Tulai', 'private', '/play', '1476178476', '2016-10-11 16:37:49'),
(81, 'pancasila5dbot', 'sent', 251248601, 'text', 201, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476178476', '2016-10-11 16:37:49'),
(82, 'pancasila5dbot', 'recv', 251248601, 'text', 200, 'Webster', 'Tulai', 'private', 'a', '1476178421', '2016-10-11 16:37:57'),
(83, 'pancasila5dbot', 'sent', 251248601, 'text', 200, 'Webster', 'Tulai', 'private', '<b>Tulai Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476178421', '2016-10-11 16:37:57'),
(84, 'pancasila5dbot', 'recv', 251248601, 'text', 198, 'Webster', 'Tulai', 'private', '/play', '1476177877', '2016-10-11 16:37:58'),
(85, 'pancasila5dbot', 'sent', 251248601, 'text', 198, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476177877', '2016-10-11 16:37:58'),
(86, 'pancasila5dbot', 'recv', 251248601, 'text', 209, 'Webster', 'Tulai', 'private', 'a', '1476179187', '2016-10-11 16:46:36'),
(87, 'pancasila5dbot', 'sent', 251248601, 'text', 209, 'Webster', 'Tulai', 'private', '<b>Tulai Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476179187', '2016-10-11 16:46:36'),
(88, 'pancasila5dbot', 'recv', 251248601, 'text', 211, 'Webster', 'Tulai', 'private', '/play', '1476179257', '2016-10-11 16:47:44'),
(89, 'pancasila5dbot', 'sent', 251248601, 'text', 211, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476179257', '2016-10-11 16:47:44'),
(90, 'pancasila5dbot', 'recv', 251248601, 'text', 213, 'Webster', 'Tulai', 'private', 'yes', '1476179271', '2016-10-11 16:47:58'),
(91, 'pancasila5dbot', 'sent', 251248601, 'text', 213, 'Webster', 'Tulai', 'private', '<b>waiting_for_input Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476179271', '2016-10-11 16:47:58'),
(92, 'pancasila5dbot', 'recv', 251248601, 'text', 215, 'Webster', 'Tulai', 'private', '/play', '1476180462', '2016-10-11 17:07:51'),
(93, 'pancasila5dbot', 'sent', 251248601, 'text', 215, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476180462', '2016-10-11 17:07:51'),
(94, 'pancasila5dbot', 'recv', 251248601, 'text', 217, 'Webster', 'Tulai', 'private', 'a', '1476180492', '2016-10-11 17:08:12'),
(95, 'pancasila5dbot', 'recv', 251248601, 'text', 218, 'Webster', 'Tulai', 'private', '/play@pancasila5dbot', '1476180510', '2016-10-11 17:08:38'),
(96, 'pancasila5dbot', 'sent', 251248601, 'text', 218, 'Webster', 'Tulai', 'private', 'Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka', '1476180510', '2016-10-11 17:08:38'),
(97, 'pancasila5dbot', 'recv', 251248601, 'text', 220, 'Webster', 'Tulai', 'private', '1', '1476180564', '2016-10-11 17:09:24'),
(98, 'pancasila5dbot', 'recv', 251248601, 'text', 221, 'Webster', 'Tulai', 'private', '1', '1476180594', '2016-10-11 17:09:54'),
(99, 'pancasila5dbot', 'recv', 251248601, 'text', 222, 'Webster', 'Tulai', 'private', 'a', '1476180709', '2016-10-11 17:11:50'),
(100, 'pancasila5dbot', 'recv', 251248601, 'text', 223, 'Webster', 'Tulai', 'private', 'a', '1476180849', '2016-10-11 17:14:10'),
(101, 'pancasila5dbot', 'recv', 251248601, 'text', 224, 'Webster', 'Tulai', 'private', 'a', '1476180927', '2016-10-11 17:15:29'),
(102, 'pancasila5dbot', 'recv', 251248601, 'text', 225, 'Webster', 'Tulai', 'private', 'a', '1476181045', '2016-10-11 17:17:27'),
(103, 'pancasila5dbot', 'recv', 251248601, 'text', 226, 'Webster', 'Tulai', 'private', 'a', '1476181253', '2016-10-11 17:21:01'),
(104, 'pancasila5dbot', 'recv', 251248601, 'text', 227, 'Webster', 'Tulai', 'private', '/play@pancasila5dbot', '1476181272', '2016-10-11 17:21:20'),
(105, 'pancasila5dbot', 'sent', 251248601, 'text', 227, 'Webster', 'Tulai', 'private', 'Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka', '1476181272', '2016-10-11 17:21:20'),
(106, 'pancasila5dbot', 'recv', 251248601, 'text', 229, 'Webster', 'Tulai', 'private', 'lima', '1476181285', '2016-10-11 17:21:34'),
(107, 'pancasila5dbot', 'sent', 251248601, 'text', 229, 'Webster', 'Tulai', 'private', 'Silahkan masukkan dalam bentuk angka', '1476181285', '2016-10-11 17:21:34'),
(108, 'pancasila5dbot', 'recv', 251248601, 'text', 231, 'Webster', 'Tulai', 'private', '2', '1476181298', '2016-10-11 17:21:45'),
(109, 'pancasila5dbot', 'sent', 251248601, 'text', 231, 'Webster', 'Tulai', 'private', 'Silahkan masukkan dalam bentuk angka', '1476181298', '2016-10-11 17:21:45'),
(110, 'pancasila5dbot', 'recv', 251248601, 'text', 233, 'Webster', 'Tulai', 'private', '5', '1476181341', '2016-10-11 17:22:28'),
(111, 'pancasila5dbot', 'sent', 251248601, 'text', 233, 'Webster', 'Tulai', 'private', 'Silahkan masukkan dalam bentuk angka', '1476181341', '2016-10-11 17:22:29'),
(112, 'pancasila5dbot', 'recv', 251248601, 'text', 235, 'Webster', 'Tulai', 'private', '2', '1476181408', '2016-10-11 17:23:35'),
(113, 'pancasila5dbot', 'sent', 251248601, 'text', 235, 'Webster', 'Tulai', 'private', 'Angka minimum adalah <b>2</b>. Silahkan masukkan angka lebih besar dari 2', '1476181408', '2016-10-11 17:23:35'),
(114, 'pancasila5dbot', 'recv', 251248601, 'text', 237, 'Webster', 'Tulai', 'private', '5', '1476181424', '2016-10-11 17:23:51'),
(115, 'pancasila5dbot', 'sent', 251248601, 'text', 237, 'Webster', 'Tulai', 'private', 'Minimum angka yang telah dipilih yaitu 5<br /><b>Permainan dimulai!</b>', '1476181424', '2016-10-11 17:23:51'),
(116, 'pancasila5dbot', 'recv', 251248601, 'text', 238, 'Webster', 'Tulai', 'private', '5', '1476181524', '2016-10-11 17:25:32'),
(117, 'pancasila5dbot', 'sent', 251248601, 'text', 238, 'Webster', 'Tulai', 'private', 'Minimum angka yang telah dipilih yaitu 5', '1476181524', '2016-10-11 17:25:32'),
(118, 'pancasila5dbot', 'recv', 251248601, 'text', 240, 'Webster', 'Tulai', 'private', '5', '1476181624', '2016-10-11 17:27:13'),
(119, 'pancasila5dbot', 'sent', 251248601, 'text', 240, 'Webster', 'Tulai', 'private', 'Minimum angka yang telah dipilih yaitu 5<br><b>Permainan dimulai!</b>', '1476181624', '2016-10-11 17:27:13'),
(120, 'pancasila5dbot', 'recv', 251248601, 'text', 241, 'Webster', 'Tulai', 'private', 'a', '1476181668', '2016-10-11 17:27:56'),
(121, 'pancasila5dbot', 'sent', 251248601, 'text', 241, 'Webster', 'Tulai', 'private', 'Silahkan masukkan dalam bentuk angka', '1476181668', '2016-10-11 17:27:56'),
(122, 'pancasila5dbot', 'recv', 251248601, 'text', 243, 'Webster', 'Tulai', 'private', '5', '1476181678', '2016-10-11 17:28:07'),
(123, 'pancasila5dbot', 'sent', 251248601, 'text', 243, 'Webster', 'Tulai', 'private', 'Minimum angka yang telah dipilih yaitu 5<br><b>Permainan dimulai!</b>', '1476181678', '2016-10-11 17:28:07'),
(124, 'pancasila5dbot', 'recv', 251248601, 'text', 244, 'Webster', 'Tulai', 'private', '5', '1476181712', '2016-10-11 17:28:32'),
(125, 'pancasila5dbot', 'recv', 251248601, 'text', 245, 'Webster', 'Tulai', 'private', '5', '1476181856', '2016-10-11 17:31:04'),
(126, 'pancasila5dbot', 'sent', 251248601, 'text', 245, 'Webster', 'Tulai', 'private', 'Minimum angka yang telah dipilih yaitu 5\n<b>Permainan dimulai!</b>', '1476181856', '2016-10-11 17:31:04'),
(127, 'pancasila5dbot', 'recv', -169138549, 'text', 250, '', '', 'group', '/play@pancasila5dbot', '1476181929', '2016-10-11 17:32:17'),
(128, 'pancasila5dbot', 'sent', -169138549, 'text', 250, '', '', 'group', '<b> </b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476181929', '2016-10-11 17:32:17'),
(129, 'pancasila5dbot', 'recv', -169138549, 'text', 252, '', '', 'group', '/play@pancasila5dbot', '1476181953', '2016-10-11 17:32:41'),
(130, 'pancasila5dbot', 'sent', -169138549, 'text', 252, '', '', 'group', 'Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka', '1476181953', '2016-10-11 17:32:41'),
(131, 'pancasila5dbot', 'recv', -169138549, 'text', 254, '', '', 'group', '/play@pancasila5dbot', '1476182198', '2016-10-11 17:36:47'),
(132, 'pancasila5dbot', 'sent', -169138549, 'text', 254, '', '', 'group', 'Silahkan masukkan dalam bentuk angka', '1476182198', '2016-10-11 17:36:47'),
(133, 'pancasila5dbot', 'recv', -169138549, 'text', 256, '', '', 'group', '/play@pancasila5dbot', '1476182268', '2016-10-11 17:37:55'),
(134, 'pancasila5dbot', 'sent', -169138549, 'text', 256, '', '', 'group', 'Silahkan masukkan dalam bentuk angka', '1476182268', '2016-10-11 17:37:55'),
(135, 'pancasila5dbot', 'recv', -169138549, 'text', 258, '', '', 'group', '/play@pancasila5dbot', '1476182337', '2016-10-11 17:39:05'),
(136, 'pancasila5dbot', 'sent', -169138549, 'text', 258, '', '', 'group', 'Silahkan masukkan dalam bentuk z', '1476182337', '2016-10-11 17:39:05'),
(137, 'pancasila5dbot', 'recv', 251248601, 'text', 260, 'Webster', 'Tulai', 'private', '5', '1476182506', '2016-10-11 17:41:54'),
(138, 'pancasila5dbot', 'sent', 251248601, 'text', 260, 'Webster', 'Tulai', 'private', 'Minimum angka yang telah dipilih yaitu 5', '1476182506', '2016-10-11 17:41:54'),
(139, 'pancasila5dbot', 'recv', -169138549, 'text', 262, '', '', 'group', '/help', '1476182604', '2016-10-11 17:43:32'),
(140, 'pancasila5dbot', 'sent', -169138549, 'text', 262, '', '', 'group', 'Silahkan masukkan dalam bentuk angka', '1476182604', '2016-10-11 17:43:32'),
(141, 'pancasila5dbot', 'recv', -169138549, 'text', 264, '', '', 'group', '/cancel@pancasila5dbot', '1476182637', '2016-10-11 17:44:04'),
(142, 'pancasila5dbot', 'sent', -169138549, 'text', 264, '', '', 'group', 'Silahkan masukkan dalam bentuk angka', '1476182637', '2016-10-11 17:44:04'),
(143, 'pancasila5dbot', 'recv', -169138549, 'text', 266, '', '', 'group', '/play@pancasila5dbot', '1476183134', '2016-10-11 17:52:23'),
(144, 'pancasila5dbot', 'sent', -169138549, 'text', 266, '', '', 'group', '<b> </b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476183134', '2016-10-11 17:52:23'),
(145, 'pancasila5dbot', 'recv', -169138549, 'text', 268, '', '', 'group', '/play@pancasila5dbot', '1476183252', '2016-10-11 17:54:21'),
(146, 'pancasila5dbot', 'sent', -169138549, 'text', 268, '', '', 'group', 'Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka', '1476183252', '2016-10-11 17:54:21'),
(147, 'pancasila5dbot', 'recv', -169138549, 'text', 270, '', '', 'group', '/5', '1476183294', '2016-10-11 17:55:02'),
(148, 'pancasila5dbot', 'sent', -169138549, 'text', 270, '', '', 'group', 'stdClass Object\n(\n    [message_id] => 270\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =', '1476183294', '2016-10-11 17:55:02'),
(149, 'pancasila5dbot', 'recv', -169138549, 'text', 272, '', '', 'group', '2', '1476183472', '2016-10-11 17:58:01'),
(150, 'pancasila5dbot', 'sent', -169138549, 'text', 272, '', '', 'group', 'stdClass Object\n(\n    [message_id] => 272\n    [from] => stdClass Object\n        (\n            [id] => 251248601\n            [first_name] => Webster\n            [last_name] => Tulai\n        )\n\n    [chat] => stdClass Object\n        (\n            [id] =', '1476183472', '2016-10-11 17:58:01'),
(151, 'pancasila5dbot', 'recv', -169138549, 'text', 274, '', '', 'group', '2', '1476183483', '2016-10-11 17:58:11'),
(152, 'pancasila5dbot', 'sent', -169138549, 'text', 274, '', '', 'group', 'Angka minimum adalah <b>2</b>. Silahkan masukkan angka lebih besar dari 2', '1476183483', '2016-10-11 17:58:11'),
(153, 'pancasila5dbot', 'recv', -169138549, 'text', 276, '', '', 'group', 'ahai', '1476183496', '2016-10-11 17:58:24'),
(154, 'pancasila5dbot', 'sent', -169138549, 'text', 276, '', '', 'group', 'Silahkan masukkan dalam bentuk angka', '1476183496', '2016-10-11 17:58:24'),
(155, 'pancasila5dbot', 'recv', -169138549, 'text', 277, '', '', 'group', '5', '1476183497', '2016-10-11 17:58:26'),
(156, 'pancasila5dbot', 'sent', -169138549, 'text', 277, '', '', 'group', 'Minimum angka yang telah dipilih yaitu 5\n<b>Permainan dimulai!</b>', '1476183497', '2016-10-11 17:58:26'),
(157, 'pancasila5dbot', 'recv', -169138549, 'text', 280, '', '', 'group', 'kenaaaa deh', '1476183510', '2016-10-11 17:58:30'),
(158, 'pancasila5dbot', 'recv', -169138549, 'text', 281, '', '', 'group', 'ðŸ™ˆ', '1476183518', '2016-10-11 17:58:38'),
(159, 'pancasila5dbot', 'recv', -169138549, 'text', 282, '', '', 'group', 'Ini kamu ngapain deh', '1476183521', '2016-10-11 17:58:41'),
(160, 'pancasila5dbot', 'recv', -169138549, 'text', 283, '', '', 'group', 'aku lg test bot', '1476183530', '2016-10-11 17:58:50'),
(161, 'pancasila5dbot', 'recv', -169138549, 'text', 284, '', '', 'group', 'haha', '1476183531', '2016-10-11 17:58:52'),
(162, 'pancasila5dbot', 'recv', -169138549, 'text', 285, '', '', 'group', '/play@pancasila5dbot', '1476183540', '2016-10-11 17:59:07'),
(163, 'pancasila5dbot', 'sent', -169138549, 'text', 285, '', '', 'group', '<b> </b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476183540', '2016-10-11 17:59:07'),
(164, 'pancasila5dbot', 'recv', -169138549, 'text', 287, '', '', 'group', 'ah', '1476183548', '2016-10-11 17:59:15'),
(165, 'pancasila5dbot', 'recv', -169138549, 'text', 288, '', '', 'group', '/play@pancasila5dbot', '1476183556', '2016-10-11 17:59:24'),
(166, 'pancasila5dbot', 'sent', -169138549, 'text', 288, '', '', 'group', 'Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka', '1476183556', '2016-10-11 17:59:24'),
(167, 'pancasila5dbot', 'recv', -169138549, 'text', 290, '', '', 'group', 'tiga', '1476183571', '2016-10-11 17:59:38'),
(168, 'pancasila5dbot', 'sent', -169138549, 'text', 290, '', '', 'group', 'Silahkan masukkan dalam bentuk angka', '1476183571', '2016-10-11 17:59:38'),
(169, 'pancasila5dbot', 'recv', -169138549, 'text', 292, '', '', 'group', '7', '1476183586', '2016-10-11 17:59:58'),
(170, 'pancasila5dbot', 'sent', -169138549, 'text', 292, '', '', 'group', 'Minimum angka yang telah dipilih yaitu 7\n<b>Permainan dimulai!</b>', '1476183586', '2016-10-11 17:59:58'),
(171, 'pancasila5dbot', 'recv', -169138549, 'text', 294, '', '', 'group', 'ahaiii', '1476183602', '2016-10-11 18:00:02'),
(172, 'pancasila5dbot', 'recv', 251248601, 'text', 295, 'Webster', 'Tulai', 'private', '/play', '1476187565', '2016-10-11 19:06:14'),
(173, 'pancasila5dbot', 'sent', 251248601, 'text', 295, 'Webster', 'Tulai', 'private', '<b>Webster Tulai</b> ingin memulai permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.', '1476187565', '2016-10-11 19:06:14'),
(174, 'pancasila5dbot', 'recv', 251248601, 'text', 296, 'Webster', 'Tulai', 'private', 'a', '1476187573', '2016-10-11 19:06:22'),
(175, 'pancasila5dbot', 'recv', 251248601, 'text', 298, 'Webster', 'Tulai', 'private', 'a', '1476188123', '2016-10-11 19:45:26'),
(176, 'pancasila5dbot', 'recv', 251248601, 'text', 299, 'Webster', 'Tulai', 'private', '/play', '1476188149', '2016-10-11 19:45:34'),
(177, 'pancasila5dbot', 'recv', 251248601, 'text', 301, 'Webster', 'Tulai', 'private', 'y', '1476189923', '2016-10-11 19:45:35'),
(178, 'pancasila5dbot', 'recv', 251248601, 'text', 300, 'Webster', 'Tulai', 'private', '/help', '1476188153', '2016-10-11 19:45:35'),
(179, 'pancasila5dbot', 'recv', 251248601, 'text', 302, 'Webster', 'Tulai', 'private', '/help', '1476189937', '2016-10-11 19:45:45'),
(180, 'pancasila5dbot', 'recv', 251248601, 'text', 303, 'Webster', 'Tulai', 'private', '/welcome', '1476189950', '2016-10-11 19:45:58'),
(181, 'pancasila5dbot', 'recv', 251248601, 'text', 304, 'Webster', 'Tulai', 'private', '/play@pancasila5dbot', '1476189981', '2016-10-11 19:46:29'),
(182, 'pancasila5dbot', 'sent', 251248601, 'text', 304, 'Webster', 'Tulai', 'private', 'Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka', '1476189981', '2016-10-11 19:46:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Rooms`
--

CREATE TABLE IF NOT EXISTS `Rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `join_date` datetime NOT NULL,
  `chat_id` int(11) NOT NULL,
  `player_state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Scores`
--

CREATE TABLE IF NOT EXISTS `Scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `round_one` int(11) NOT NULL,
  `round_two` int(11) NOT NULL,
  `round_three` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `States`
--

CREATE TABLE IF NOT EXISTS `States` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bot` varchar(100) NOT NULL,
  `chat` int(11) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `chat_type` varchar(10) DEFAULT NULL,
  `content` varchar(250) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bot` (`bot`,`chat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `States`
--

INSERT INTO `States` (`id`, `bot`, `chat`, `state`, `message_id`, `first_name`, `last_name`, `chat_type`, `content`, `date`, `created_date`) VALUES
(1, 'pancasila5dbot', 251248601, 'waiting_for_number', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(3, 'pancasila5dbot', -169138549, 'playing', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
