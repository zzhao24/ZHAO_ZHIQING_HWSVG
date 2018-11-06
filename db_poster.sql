-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2018 at 05:08 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_poster`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `boxid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `percentage` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `boxid`, `name`, `detail`, `percentage`) VALUES
(1, 'navigation', 'Navigation', 'The smart phones can also serve as a navigation to enable people when travel  and figure out the correct route more quickly at work.', '18%'),
(2, 'online-surfing', 'Online Surfing', 'The Internet allows people to keep up with the latest news and be entertained in stead of reading news paper.', '93%'),
(3, 'shopping', 'Shopping', 'Online shopping becomes very popular now days and makes a lot easier for people to shop at home.', '27%'),
(4, 'communication', 'Communication', 'The convenient connection between people, call at any time or send text message to communicate. Decreased the time for people to communicate with each other, became quicker.', '80%'),
(5, 'photography', 'Photography', 'People can take high their phones to complete their phones to complete works that previously had to be done on the SLR.', '46%'),
(6, 'relax', 'Relax', 'People can listen to music or watching movies through multimedia software to fully enjoy the convenience brought by smart phones.', '34%');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_usage`
--

DROP TABLE IF EXISTS `mobile_usage`;
CREATE TABLE IF NOT EXISTS `mobile_usage` (
  `id` tinyint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `yr` varchar(4) NOT NULL,
  `usg` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile_usage`
--

INSERT INTO `mobile_usage` (`id`, `yr`, `usg`) VALUES
(1, '1998', '1.1'),
(2, '2008', '3.5'),
(3, '2012', '8.7'),
(4, '2018', '15.8');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
