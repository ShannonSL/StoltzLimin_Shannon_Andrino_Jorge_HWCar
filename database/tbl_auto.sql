-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2018 at 01:30 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_car`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_auto`
--

DROP TABLE IF EXISTS `tbl_auto`;
CREATE TABLE IF NOT EXISTS `tbl_auto` (
  `auto_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auto_make` varchar(80) NOT NULL,
  `auto_model` varchar(120) NOT NULL,
  `auto_video` varchar(200) NOT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_auto`
--

INSERT INTO `tbl_auto` (`auto_id`, `auto_make`, `auto_model`, `auto_video`) VALUES
(1, 'Bugatti', 'Veyron', 'car_commerical.mp4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
