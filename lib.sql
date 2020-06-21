-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 21 Juin 2020 à 18:13
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `lib`
--

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `b_id` varchar(255) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `authorname` varchar(50) NOT NULL,
  `copies` varchar(20) NOT NULL,
  `avl_cpy` int(100) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `path` varchar(200) NOT NULL,
  `number_of_state` int(100) DEFAULT NULL,
  `current_state` int(100) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `b_id` (`b_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `book`
--

INSERT INTO `book` (`b_id`, `booksname`, `authorname`, `copies`, `avl_cpy`, `dept`, `file_name`, `path`, `number_of_state`, `current_state`) VALUES
('CS001MOUAIDVRL', 'TesterMOUA123', 'CS001MOUAversion', '1', 1, 'Coran', 'CS001MOUAIDVRL.pdf', 'ebooks/CS001MOUAIDVRL.pdf', 2, 1),
('C000TesterMOUABL', 'TesterMOUABL', 'TesterMOUABL', '1', 1, 'religion', 'C000TesterMOUABL.docx', 'ebooks/C000TesterMOUABL.docx', 2, 1),
('C00TesterMOUABL', 'TesterMOUABL', 'CS001MOUA', '1', 1, 'religion', 'C00TesterMOUABL.docx', 'ebooks/C00TesterMOUABL.docx', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `state_book`
--

CREATE TABLE IF NOT EXISTS `state_book` (
  `emailid` varchar(200) NOT NULL,
  `book_1_id` varchar(100) NOT NULL,
  `book_1` varchar(100) NOT NULL,
  `recive_date_1` varchar(100) NOT NULL,
  `submisson_date_1` varchar(100) NOT NULL,
  `book_2_id` varchar(100) DEFAULT NULL,
  `book_2` varchar(100) DEFAULT NULL,
  `recive_date_2` varchar(100) DEFAULT NULL,
  `submisson_date_2` varchar(100) DEFAULT NULL,
  `book_state` int(100) DEFAULT NULL,
  `validation_state` int(100) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `state_book`
--

INSERT INTO `state_book` (`emailid`, `book_1_id`, `book_1`, `recive_date_1`, `submisson_date_1`, `book_2_id`, `book_2`, `recive_date_2`, `submisson_date_2`, `book_state`, `validation_state`) VALUES
('b@gmail.com', 'CS001', 'learning Python', '13-07-2018', '28-07-2018', 'CS001', 'learning Python', '13-07-2018', '28-07-2018', NULL, NULL),
('lopa@gmail.com', 'CS001', 'learning Python', '13-07-2018', '28-07-2018', 'CS031', 'learning java', '13-07-2018', '28-07-2018', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_registration`
--

CREATE TABLE IF NOT EXISTS `user_registration` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `roll` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'student',
  `gender` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roll` (`roll`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `user_registration`
--

INSERT INTO `user_registration` (`id`, `roll`, `type`, `gender`, `name`, `dept`, `year`, `emailid`, `password`) VALUES
(1, '001', 'admin', 'm', 'admin', 'blank', 'blank', 'admin001', 'admin123'),
(2, '11100116031', 'student', 'm', 'purnendu', 'cse', '3rd_year', 'das@gmail.com', 'anku'),
(3, '11100116032', 'student', 'm', 'purnendu', 'me', '1st_year', 'purnendu@gmail.com', 'anku'),
(4, '11100116028', 'student', 'f', 'Lopamudra Roy', 'cse', '3rd_year', 'lopa@gmail.com', '123'),
(5, '11100116001', 'student', 'f', 'Zeba Washima', 'cse', '2nd_year', 'zeba@gmail.com', '123'),
(6, '11100116045', 'student', 'm', 'Bibhas Gayen', 'cse', '4th_year', 'bivas@gmail.com', '123'),
(7, '11100116066', 'student', 'm', 'atanu jana', 'cse', '1st_year', 'atanu@gmail.com', '123'),
(8, '11100116052', 'student', 'm', 'aniruddha maity', 'cse', '4th_year', 'ani@gmail.com', '123'),
(9, '11100116033', 'student', 'f', 'peu barman', 'cse', '2nd_year', 'peu@gmail.com', '123'),
(10, '11100116039', 'student', 'm', 'Bibhas Gayen', 'cse', '3rd_year', 'b@gmail.com', '123'),
(13, 'informatique', 'student', 'm', 'Ahmed Moustaid', 'rien', 'NA', 'itmoustaid@gmail.com', 'Maloman2012');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
