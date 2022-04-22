-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.7.3-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- jsp-kangmin 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `jsp-kangmin` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `jsp-kangmin`;

-- 테이블 jsp-kangmin.file_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `file_mst` (
  `file_code` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`file_code`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 jsp-kangmin.file_mst:~10 rows (대략적) 내보내기
DELETE FROM `file_mst`;
/*!40000 ALTER TABLE `file_mst` DISABLE KEYS */;
INSERT INTO `file_mst` (`file_code`, `file_name`, `create_date`, `update_date`) VALUES
	(5, '0053bd1ecc2549b193be69dfafe6658d_auth_main.png', '2022-04-18 12:38:51', '2022-04-18 12:38:51'),
	(6, 'ffe16df4c17f4b178bb298854dc199ba_download.png', '2022-04-18 12:38:51', '2022-04-18 12:38:51'),
	(7, '704ff7ed1f8947cf92caf256af66327e_instagram.jpg', '2022-04-18 12:38:51', '2022-04-18 12:38:51'),
	(8, 'c30a9c13c1e843caad7cbdf96cba4e34_instagram_logo.png', '2022-04-18 12:38:51', '2022-04-18 12:38:51'),
	(9, 'a95173dd450144fc8a8eac13f017e123_instagram.jpg', '2022-04-18 12:49:19', '2022-04-18 12:49:19'),
	(10, 'acac4db2720f4c71849342fcd73a9fb9_', '2022-04-18 12:51:14', '2022-04-18 12:51:14'),
	(11, 'c19313d3485f4de8aa813a616adb37d6_download.png', '2022-04-18 12:53:15', '2022-04-18 12:53:15'),
	(12, '52be8494c2b6421a94a5a6e2bcd408f3_instagram.jpg', '2022-04-18 12:53:15', '2022-04-18 12:53:15'),
	(13, 'feba848eb08f46b58288e21f168da835_instagram_logo.png', '2022-04-18 12:53:15', '2022-04-18 12:53:15'),
	(14, 'edd48c1b9ebe4a84b741426a1058bba6_test1.jpg', '2022-04-18 12:53:15', '2022-04-18 12:53:15');
/*!40000 ALTER TABLE `file_mst` ENABLE KEYS */;

-- 테이블 jsp-kangmin.user_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_code` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`user_code`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 jsp-kangmin.user_mst:~2 rows (대략적) 내보내기
DELETE FROM `user_mst`;
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`user_code`, `username`, `password`, `name`, `email`, `create_date`, `update_date`) VALUES
	(2, 'bbb', '1234', '강민2', 'aaa@a.com', '2022-04-11 10:39:09', '2022-04-11 10:39:11'),
	(3, 'aaa1', 'ds', 'dd', 'sdf', '2022-04-12 12:56:27', '2022-04-12 12:56:27'),
	(4, 'aaa', '1234', '강민2', 'aaa@a.com2', '2022-04-15 12:33:49', '2022-04-15 12:33:49');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
