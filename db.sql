-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.4-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- jacob 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jacob` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jacob`;

-- 테이블 jacob.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `b_idx` int(10) NOT NULL AUTO_INCREMENT,
  `b_content` varchar(255) NOT NULL,
  `b_title` varchar(255) NOT NULL,
  `b_date` datetime NOT NULL,
  `b_hit` int(11) NOT NULL DEFAULT 0,
  `b_group` varchar(255) NOT NULL,
  `b_order` varchar(255) NOT NULL,
  `b_depth` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `u_idx` int(10) NOT NULL,
  PRIMARY KEY (`b_idx`),
  KEY `FK_board_user` (`u_idx`),
  CONSTRAINT `FK_board_user` FOREIGN KEY (`u_idx`) REFERENCES `user` (`u_idx`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.board:~87 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`b_idx`, `b_content`, `b_title`, `b_date`, `b_hit`, `b_group`, `b_order`, `b_depth`, `filename`, `u_idx`) VALUES
	(10, 'fdasfasdfsafasfasfda', 'power235', '2022-03-21 15:25:44', 0, '10', '1', '0', '', 10),
	(11, 'fadfasdfasbvxnxcvnxc', 'zdzdzd', '2022-03-21 15:25:44', 0, '10', '4', '1', '', 10),
	(12, 'fadfasdfasbvxnxcvnxc', 'popopo', '2022-03-21 15:25:44', 0, '10', '2', '1', '', 10),
	(13, 'fadfasdfasbvxnxcvnxc', 'popopo', '2022-03-21 15:25:44', 0, '10', '3', '2', '', 10),
	(18, 'fsadfasdfasdfasdfa', 'fads', '2022-03-21 15:25:44', 0, '18', '1', '0', '', 10),
	(19, 'fsadfasdfasdfasdfa', 'fads2', '2022-03-21 15:25:44', 0, '19', '1', '0', '', 10),
	(20, 'fghj', 'ffff', '2022-03-21 15:25:44', 0, '20', '1', '0', '', 10),
	(21, 'fghj', 'ffff', '2022-03-21 15:25:44', 0, '21', '1', '0', '', 10),
	(24, 'fsdafsadfas', 'fdasfasdf', '2022-03-21 15:25:44', 0, '24', '1', '0', '', 10),
	(25, 'fsdafsadfas', 'fdasfasdf', '2022-03-21 15:25:44', 0, '25', '1', '0', '', 10),
	(27, 'gfsdgsfgsfdgsdf', 'gfdsg', '2022-03-21 15:25:44', 0, '27', '1', '0', '', 10),
	(31, 'gfsdgsfgsfdgsdf', 'gfdsg', '2022-03-21 15:25:44', 0, '31', '1', '0', '', 10),
	(32, 'dfgdsfg', 'asdfsda', '2022-03-21 15:25:44', 0, '32', '1', '0', '', 10),
	(33, 'gfsdgsfgsfdgsdf', 'gfdsg', '2022-03-21 15:25:44', 0, '33', '1', '0', '', 10),
	(35, 'dfasfdsafas', 'fdasfasdf', '2022-03-21 15:25:44', 0, '35', '1', '0', '', 29),
	(37, 'fdasfasdfas', 'fdafasdf', '2022-03-21 15:25:44', 0, '37', '1', '0', '', 29),
	(39, 'fdasfasdfafas', 'daf', '2022-03-21 15:25:44', 0, '39', '1', '0', '', 29),
	(45, '저거너거', '이거이거', '2022-03-21 15:25:44', 0, '45', '1', '0', '', 29),
	(47, '123', '123', '2022-03-21 15:25:44', 0, '47', '1', '0', '', 29),
	(49, '1234', '1234', '2022-03-21 15:25:44', 0, '49', '1', '0', '', 29),
	(51, '나로코', '코로나', '2022-03-21 15:25:44', 0, '51', '1', '0', '', 29),
	(53, 'sadfsdaf', 'test1111', '2022-03-21 15:25:44', 0, '0', '1', '0', '', 10),
	(54, '4321', 'test123', '2022-03-21 15:25:44', 0, '0', '1', '0', '', 10),
	(55, '4321', 'test123', '2022-03-21 15:25:44', 0, '0', '1', '0', '', 10),
	(56, '4321', 'test123', '2022-03-21 15:25:44', 0, '0', '1', '0', '', 10),
	(61, '어려워어려워', '테스트', '2022-03-21 15:25:44', 0, '61', '1', '0', '', 29),
	(62, '왜', '어려워?', '2022-03-21 15:25:44', 0, '61', '2', '1', '', 29),
	(64, '어렵지', '어려워', '2022-03-21 15:25:44', 0, '61', '3', '1', '', 29),
	(66, 'hgjkhgjk', 'hgghk', '2022-03-23 14:20:17', 0, '10', '1', '0', '', 13),
	(67, '나는 1234야', '1234', '2022-03-23 14:26:08', 0, '10', '1', '0', '', 13),
	(68, '나는 4321이야', '4321', '2022-03-23 14:26:46', 0, '10', '1', '0', '', 13),
	(69, 'ㅕㅑㅐㅛㅐㅛㅕㅑㅏ', 'ㄻㄹ', '2022-03-23 14:27:25', 0, '18', '1', '0', '', 13),
	(70, 'ㄻㄴㅇㄻㄴㅇㄻㄴㄹㅇ', 'ㄻㄻㄻㅇㄴ', '2022-03-23 14:30:34', 0, '10', '4', '1', '', 13),
	(71, 'ㄹㅇㄴㅁㄻㄴㅇㄻㄴ', 'ㄹㅇㅁㄻㄴㅇㄹ', '2022-03-23 14:31:50', 0, '24', '1', '0', '', 13),
	(72, '그러다 다 죽어', '그만해', '2022-03-23 14:32:20', 0, '10', '4', '1', '', 13),
	(73, 'ㄹㄴㅇㅁㄻㄴㅇㄻㄴㅇㄹ', 'ㅇㄻㄴㅇㄻ', '2022-03-23 14:35:35', 0, '10', '4', '1', '', 13),
	(82, 'ㄻㄴㄻㄴㄻㄴㄹ', 'ㄻㄻㅇㄴㄻㄴㅇ', '2022-03-23 14:51:09', 0, '74', '1', '0', '', 17),
	(86, '테스트1 4/7', '테스트1', '2022-03-23 15:01:53', 0, '86', '1', '0', '', 17),
	(97, '111', '테스트1-1', '2022-03-23 15:33:44', 0, '86', '9', '1', '', 17),
	(98, '2222', '테스트1-2', '2022-03-23 15:34:06', 0, '86', '6', '1', '', 17),
	(99, '3333', '테스트1-3', '2022-03-23 15:34:36', 0, '86', '4', '1', '', 17),
	(100, '12121212', '테스트1-2-1', '2022-03-23 15:35:08', 0, '86', '7', '2', '', 17),
	(101, '321321321', '테스트1-2-2', '2022-03-23 15:35:49', 0, '86', '8', '3', '', 17),
	(102, '답글달기 테스트진행합니다', 'test', '2022-03-24 15:24:50', 0, '102', '1', '0', '', 13),
	(103, 'rwerwerew', 'rew', '2022-03-28 14:36:22', 0, '103', '1', '0', '', 13),
	(104, 'test', '4/7', '2022-04-07 12:44:08', 0, '86', '5', '2', '', 17),
	(105, 'test123', '4/7', '2022-04-07 12:47:02', 0, '86', '3', '1', '', 17),
	(106, 'test777', '4/7', '2022-04-07 12:47:29', 0, '86', '2', '1', '', 17),
	(109, '4/14', '4/14', '2022-04-14 12:57:26', 0, '109', '1', '0', '', 10),
	(110, 'tes', 'tes', '2022-04-14 13:15:46', 0, '110', '1', '0', '', 10),
	(111, 'test 4/14 두번째', 'test 4/14', '2022-04-14 13:20:57', 0, '111', '1', '0', '', 10),
	(112, 'ㄱㄷㅈ', 'ㄱㄷㅈ', '2022-04-19 15:45:06', 0, '112', '1', '0', '', 10),
	(114, 'yrdy', 'yrdy', '2022-04-20 13:56:15', 0, '114', '1', '0', '', 10),
	(115, 'tastaseasdfsa', 'tesatsta', '2022-04-20 14:18:26', 0, '115', '1', '0', '', 10),
	(116, 'tasetas', 'teat', '2022-04-20 14:31:01', 0, '116', '1', '0', '', 10),
	(190, 'ㄱ', 'ㄱㄱ', '2022-04-27 15:50:19', 0, '190', '1', '0', 'logo02.png', 10),
	(191, 'egasgasdfasdncxbzx', 'ewqewqe', '2022-04-29 13:01:31', 0, '191', '1', '0', 'clock.jpg', 10),
	(192, 'egasgasdfasdncxbzx', 'ewqewqe', '2022-04-29 13:04:31', 0, '192', '1', '0', 'clock.jpg', 10),
	(193, 'power235', 'power', '2022-04-29 13:07:12', 0, '193', '1', '0', 'clock.jpg', 10),
	(208, 'fsdafdsafsadf', 'fdasfasd', '2022-04-29 14:03:37', 0, '208', '1', '0', 'book.java.jpg', 10),
	(209, 'fsadgashgvcbvxc', 'gafads', '2022-04-29 14:05:15', 0, '209', '1', '0', 'sdf2.txt', 10),
	(210, 'lkjlhklkjlhjk', 'rewrwe', '2022-04-29 14:13:46', 0, '210', '1', '0', 'sdf7.txt', 10),
	(211, 'hslkhjkjhjfg', 'reqewrqwer', '2022-04-29 14:23:58', 0, '211', '1', '0', '니맘대로해라.jpg, ', 10),
	(212, '777777777777', 'f', '2022-04-29 14:53:05', 0, '212', '1', '0', 'sdf8.txt', 10),
	(213, 'yyyyyy', 'yyy', '2022-04-29 14:55:39', 0, '213', '1', '0', 'logo03.jpg', 10),
	(214, 'tretretert', 'tre', '2022-04-29 14:57:13', 0, '214', '1', '0', 'P1238.png', 10),
	(215, 'tretretert', 'tre', '2022-04-29 14:57:47', 0, '215', '1', '0', 'P1238.png', 10),
	(216, 'ahfsdgdv', 'rew', '2022-04-29 15:45:02', 0, '216', '1', '0', 'introduct1.jpg', 10),
	(217, 'pppppppppopopopopopo', 'rewrew', '2022-05-02 13:06:09', 0, '217', '1', '0', 'P1234.jpg', 10),
	(218, '5/2 test', '5/2', '2022-05-02 13:08:46', 0, '218', '1', '0', 'DB_SQL설치.txt', 10),
	(219, 'popopopopopo', 'prprprprprrp', '2022-05-02 13:11:27', 0, '219', '1', '0', '202205021311274647', 10),
	(220, 'popopopoppoppopopop', 'popopopopopo', '2022-05-02 13:14:20', 0, '220', '1', '0', '202205021314207594', 10),
	(221, '321321', '321', '2022-05-02 13:26:14', 0, '221', '1', '0', '202205021325028792', 10),
	(222, 'rewrewrwerwe', 'rew', '2022-05-02 13:40:55', 0, '222', '1', '0', '202205021340438126', 10),
	(223, 'sdfgsdgfsdgsdfgsdfg', 'gfsdgfdsg', '2022-05-02 13:43:42', 0, '223', '1', '0', '202205021343425693', 10),
	(224, 'fggggggggggggggggggggg', 'ffffffffff', '2022-05-02 14:04:56', 0, '224', '1', '0', '202205021404561629', 10),
	(225, 'rewrewrew', 'rew', '2022-05-02 14:17:58', 0, '225', '1', '0', '202205021417588087', 10),
	(226, 'ncvbnvcbxcvb', 'fdafdasfa', '2022-05-02 14:20:24', 0, '226', '1', '0', '202205021420245580', 10),
	(227, '5/2 2:21', '5/2 2:21', '2022-05-02 14:21:39', 0, '227', '1', '0', '202205021421393727', 10),
	(228, '한번더', '한번더', '2022-05-02 14:23:50', 0, '228', '1', '0', '202205021423297914', 10),
	(229, 'gksqjsej', 'Ekrgksqjsej', '2022-05-02 14:26:57', 0, '229', '1', '0', '202205021426381848', 10),
	(230, 'gfsdgsdfgsdfg', 'fdafhhhhhhh', '2022-05-02 14:34:35', 0, '230', '1', '0', '202205021434358346jpg', 10),
	(231, 'power235', 'power235', '2022-05-02 14:39:35', 0, '231', '1', '0', '202205021439356143202205021439356143', 10),
	(232, 'hhhhhhhhhhhhhhhhhhhh', 'gggggggggg', '2022-05-02 14:44:37', 0, '232', '1', '0', '202205021444377009', 10),
	(233, 'bbbb', 'bbb', '2022-05-02 14:56:24', 0, '233', '1', '0', '202205021455469763', 10),
	(234, 'rewrewtre', 'rerewq', '2022-05-02 15:05:14', 0, '234', '1', '0', '202205021505068153', 10),
	(235, 'tttttt', 'ttt', '2022-05-02 15:06:41', 0, '235', '1', '0', '202205021506416875.txt', 10);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 jacob.boardfile 구조 내보내기
CREATE TABLE IF NOT EXISTS `boardfile` (
  `f_idx` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) DEFAULT NULL,
  `orgfilename` varchar(255) DEFAULT NULL,
  `b_idx` int(11) NOT NULL,
  PRIMARY KEY (`f_idx`),
  KEY `FK_file_jacob.board` (`b_idx`),
  CONSTRAINT `FK_file_jacob.board` FOREIGN KEY (`b_idx`) REFERENCES `board` (`b_idx`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7789 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.boardfile:~27 rows (대략적) 내보내기
/*!40000 ALTER TABLE `boardfile` DISABLE KEYS */;
INSERT INTO `boardfile` (`f_idx`, `filename`, `orgfilename`, `b_idx`) VALUES
	(56, NULL, 'P1238.png', 215),
	(63, NULL, 'introduct1.jpg', 216),
	(64, 'P1234.jpg', 'clock1.jpg', 217),
	(65, 'DB_SQL설치.txt', 'clock1.jpg', 218),
	(66, '202205021311274647', 'buta01.png', 219),
	(67, '202205021314207594', 'clock.jpg', 220),
	(68, '202205021340438126', 'DB_SQL설치.txt', 222),
	(7769, '202205021420245580', 'clock1.jpg', 226),
	(7770, '202205021420245580', 'clock1.jpg', 226),
	(7771, '202205021421393727', 'buta01.png', 227),
	(7772, '202205021421393727', 'buta01.png', 227),
	(7773, '202205021423054373', 'DB_SQL설치.txt', 228),
	(7774, '202205021423297914', 'DB_SQL설치.txt', 228),
	(7775, '202205021426304415', 'samsung1.jpg', 229),
	(7776, '202205021426381848', 'sdf5.txt', 229),
	(7777, '202205021434352849jpg', 'sdf2.txt', 230),
	(7778, '202205021434358346jpg', 'sdf.txt', 230),
	(7779, '202205021439359439202205021439359439', 'Apple Watch.jpg', 231),
	(7780, '202205021439356143202205021439356143', '2021022201002364800209141.jpg', 231),
	(7781, '202205021444202064', 'clock1.jpg', 232),
	(7782, '202205021444377009', 'P1234.jpg', 232),
	(7783, '202205021455203636', '203826_204548_3226.png', 233),
	(7784, '202205021455469763', 'Apple Watch.jpg', 233),
	(7785, '202205021504337286jpg', 'Apple Watch1.jpg', 234),
	(7786, '202205021505068153jpg', 'ticket0.jpg', 234),
	(7787, '202205021506416034.png', 'P12381.png', 235),
	(7788, '202205021506416875.txt', 'sdf7.txt', 235);
/*!40000 ALTER TABLE `boardfile` ENABLE KEYS */;

-- 테이블 jacob.comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `comment` (
  `c_idx` int(10) NOT NULL AUTO_INCREMENT,
  `c_content` varchar(255) NOT NULL,
  `c_date` datetime NOT NULL,
  `c_group` int(11) NOT NULL DEFAULT 0,
  `c_order` int(11) NOT NULL DEFAULT 0,
  `c_depth` int(11) NOT NULL DEFAULT 0,
  `b_idx` int(11) NOT NULL,
  `u_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_idx`),
  KEY `b_idx` (`b_idx`),
  KEY `u_idx` (`u_idx`),
  CONSTRAINT `FK_comment_board` FOREIGN KEY (`b_idx`) REFERENCES `board` (`b_idx`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_comment_user` FOREIGN KEY (`u_idx`) REFERENCES `user` (`u_idx`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.comment:~29 rows (대략적) 내보내기
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`c_idx`, `c_content`, `c_date`, `c_group`, `c_order`, `c_depth`, `b_idx`, `u_idx`) VALUES
	(1, 'fdsafafasdfsadfsdaf', '2022-03-28 14:55:20', 1, 1, 0, 86, NULL),
	(2, '테스트테스트', '2022-03-28 15:09:30', 2, 1, 0, 86, NULL),
	(4, '3/29 test', '2022-03-29 13:10:04', 4, 1, 0, 45, NULL),
	(5, '3/28 test', '2022-03-29 14:11:59', 5, 1, 0, 45, NULL),
	(6, '3/29 test3', '2022-03-29 14:58:27', 6, 1, 0, 45, NULL),
	(7, '3/29 test3', '2022-03-29 15:27:52', 7, 1, 0, 45, NULL),
	(8, '번호 86번 댓글달기', '2022-03-29 15:42:19', 8, 1, 0, 45, NULL),
	(9, '3/30 test', '2022-03-30 13:14:37', 9, 1, 0, 62, NULL),
	(10, '3/30 86번 댓글', '2022-03-30 15:41:24', 10, 1, 0, 86, NULL),
	(11, 'test', '2022-03-31 13:21:30', 11, 1, 0, 86, NULL),
	(12, '3/31 test2', '2022-03-31 13:36:33', 12, 1, 0, 86, NULL),
	(13, '3/31 test2', '2022-03-31 14:03:13', 13, 1, 0, 101, NULL),
	(20, '86번 test3', '2022-03-31 14:35:12', 20, 1, 0, 86, NULL),
	(21, '4/1만우절', '2022-04-01 13:59:31', 21, 1, 0, 86, NULL),
	(23, 'test4/4', '2022-04-04 13:36:56', 23, 1, 0, 86, NULL),
	(24, 'test4/4 2', '2022-04-04 13:39:39', 24, 1, 0, 86, NULL),
	(38, '월화수목금토일', '2022-04-05 14:08:37', 3, 2, 1, 86, NULL),
	(39, '일토금목수화월', '2022-04-05 14:19:16', 3, 2, 1, 86, NULL),
	(41, '어떤 test????', '2022-04-05 14:38:39', 11, 2, 1, 86, NULL),
	(42, '여러분의 댓글을 달아주세요', '2022-04-05 14:39:32', 42, 1, 0, 99, NULL),
	(43, '왜요??', '2022-04-05 14:39:39', 42, 2, 1, 99, NULL),
	(44, '왜왜요요??', '2022-04-05 14:39:48', 42, 3, 2, 99, NULL),
	(45, '4/7 뿡이: 사랑해요', '2022-04-05 15:14:41', 45, 1, 0, 86, NULL),
	(100, '저두요', '2022-04-06 15:24:53', 45, 3, 2, 86, NULL),
	(144, 'test1234', '2022-04-07 15:53:37', 144, 1, 0, 86, NULL),
	(146, 'lasttest', '2022-04-07 15:54:53', 146, 1, 0, 86, NULL),
	(153, '4/8 first test', '2022-04-08 12:48:13', 153, 1, 0, 86, NULL),
	(154, '4/8 second test', '2022-04-08 12:52:00', 154, 1, 0, 86, NULL),
	(155, '4/8 third ', '2022-04-08 13:01:09', 155, 1, 0, 86, NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 테이블 jacob.lc_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_auth` (
  `u_id` varchar(50) NOT NULL,
  `u_auth` varchar(50) NOT NULL,
  PRIMARY KEY (`u_id`,`u_auth`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.lc_auth:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_auth` DISABLE KEYS */;
INSERT INTO `lc_auth` (`u_id`, `u_auth`) VALUES
	('dlwoguq', 'ROLE_USER'),
	('jacob', 'ROLE_USER'),
	('test', 'ROLE_USER'),
	('user', 'ROLE_ADMIN');
/*!40000 ALTER TABLE `lc_auth` ENABLE KEYS */;

-- 테이블 jacob.lc_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_board` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(50) DEFAULT NULL,
  `b_content` text DEFAULT NULL,
  `b_writer` varchar(50) DEFAULT NULL,
  `b_datetime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.lc_board:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_board` DISABLE KEYS */;
INSERT INTO `lc_board` (`b_id`, `b_title`, `b_content`, `b_writer`, `b_datetime`) VALUES
	(1, '제목1', '내용1', '테스트', '2022-05-03 15:36:42'),
	(2, '제목2', '내용2', '테스트2', '2022-05-03 15:37:28'),
	(3, '제목3', '내용3', '테스트3', '2022-05-03 15:37:31'),
	(4, '제목4', '내용4', '테스트4', '2022-05-03 15:37:34');
/*!40000 ALTER TABLE `lc_board` ENABLE KEYS */;

-- 테이블 jacob.lc_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_user` (
  `u_id` varchar(50) NOT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_datetime` datetime DEFAULT current_timestamp(),
  `u_isAccountNonExpired` tinyint(4) DEFAULT NULL,
  `u_isAccountNonLocked` tinyint(4) DEFAULT NULL,
  `u_isCredentialNonExpired` tinyint(4) DEFAULT NULL,
  `u_isEnabled` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.lc_user:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_user` DISABLE KEYS */;
INSERT INTO `lc_user` (`u_id`, `u_password`, `u_name`, `u_datetime`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialNonExpired`, `u_isEnabled`) VALUES
	('user', '$2a$10$Og3CcCTYXz0s7Kjz2QfP4e6i2OJYf4dxkl9MhJzTVIHqM.2sWPlLW', 'dlguwqo', '2022-05-04 15:18:56', 1, 1, 1, 1),
	('jacob', '$2a$10$.RvtxpHD35LHUeK14bNkCefKWmBm3wV/FqRPOl3yyy71VM4NukJzy', '재협', '2022-05-09 15:44:53', 1, 1, 1, 1);
/*!40000 ALTER TABLE `lc_user` ENABLE KEYS */;

-- 테이블 jacob.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 jacob.spring_session:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
	('4f91ae5b-aede-4e19-865a-59ae777bf9cf', '96c98df2-b966-4c1c-b4c5-4eb693c9b7ac', 1652077409884, 1652077740379, 7200, 1652084940379, NULL);
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;

-- 테이블 jacob.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 jacob.spring_session_attributes:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;

-- 테이블 jacob.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `u_idx` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(255) NOT NULL,
  `u_pw` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_tel` varchar(255) NOT NULL,
  `u_level` varchar(255) NOT NULL,
  `u_age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- 테이블 데이터 jacob.user:~23 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`u_idx`, `u_id`, `u_pw`, `u_name`, `u_tel`, `u_level`, `u_age`) VALUES
	(10, 'bbbb', '222', '이모씨', '010-2222 -2222', 'yes', '37'),
	(11, 'ccc', '34343', '강하다', '010-2121-3232', 'no', '58'),
	(12, 'dfdf', '545', '홍길동', '010-2829-4767', 'no', '44'),
	(13, 'zyzy', '252d', '대한민국', '010-4747-3634', 'no', '88'),
	(15, 'baba', 'cfdfd', '바비', '010-8787-1111', 'no', '56'),
	(16, 'wew', 'qqqq', '박찬호', '010-7777-3232', 'no', '23'),
	(17, 'a1', '5555', '강호동', '010-4343-4444', 'no', '32'),
	(18, 'b1', '1111', '박길동', '010-3333-7777', 'no', '49'),
	(19, 'bb1', '2222', '고길동', '010-4444-6666', 'no', '61'),
	(20, 'ccc3', 'c1c1', '최길동', '010-1111-3333', 'no', '74'),
	(21, 'lcomputer', '1234', '엘컴퓨터학원', '010-3333-1111', 'no', '32'),
	(22, 'a22', '123', 'a222', '1-2-3', 'no', '11'),
	(25, 'pwoer', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(26, 'pwoer1', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(27, 'pwoer12', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(28, 'pwoer123', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(29, 'power', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(30, 'power1', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(31, 'power12', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(32, 'power123', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(33, 'power1234', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(34, 'power235', '1231', 'asdf', '111-2323-2323', 'no', '123'),
	(36, '312', '321', '엘컴퓨터학원', '11-11-11', 'no', '32');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
