-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2017 at 07:27 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `achiev_details`
--

CREATE TABLE IF NOT EXISTS `achiev_details` (
  `register_number` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `course` varchar(30) NOT NULL,
  `semister` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `discipline` varchar(30) NOT NULL,
  `venue` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `game_level` varchar(30) NOT NULL,
  `remarks` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `doc` varchar(500) NOT NULL,
  KEY `register_number` (`register_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achiev_details`
--

INSERT INTO `achiev_details` (`register_number`, `name`, `year`, `course`, `semister`, `college`, `discipline`, `venue`, `date`, `game_level`, `remarks`, `description`, `doc`) VALUES
('15255', 'mohit', 1990, 'BBA', 'sem1', 'jss', 'athletic', 'hubli', '0000-00-00', 'National', '2nd', '2nd', 'Tulips.jpg'),
('15255', 'mohit', 1990, 'BBA', 'sem1', 'jss', 'athletic', 'hubli', '0000-00-00', 'National', '2nd', '2nd', 'Penguins.jpg'),
('126343', 'jhdgvcdg', 1990, 'BBA', 'sem1', 'smi', 'deifhrgtfjnck', 'skdjefhtguf', '2017-04-21', 'National', '5', 'mcdfrugtnfv', ''),
('12CS1511', 'seema', 1990, 'BCA', 'sem1', 'JSS SMI ', 'running', 'dharwad', '2016-09-23', 'District', 'first ', 'ddssfdf', 'Koala.jpg'),
('12CS1512', 'vasudha', 2015, 'Msc[che]', 'sem6', 'JSS SMI ', 'valley ball', 'shimoga', '2015-12-12', 'District', 'second prize', 'axscf', 'Tulips.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `addteam_details`
--

CREATE TABLE IF NOT EXISTS `addteam_details` (
  `gender` varchar(10) NOT NULL,
  `discipline` varchar(30) NOT NULL,
  `select_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addteam_details`
--

INSERT INTO `addteam_details` (`gender`, `discipline`, `select_category`) VALUES
('Female', 'Wrestling', 'Individual Games'),
('Female', 'Wrestling', 'Individual Games'),
('Female', 'Basket Ball', 'Individual Games'),
('Female', 'foot ball', 'Group Games');

-- --------------------------------------------------------

--
-- Table structure for table `ggp_details`
--

CREATE TABLE IF NOT EXISTS `ggp_details` (
  `register_number` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` int(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `semister` varchar(30) NOT NULL,
  `discipline` varchar(30) NOT NULL,
  `college_name` varchar(30) NOT NULL,
  `contact_number` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `upload_photo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ggp_details`
--

INSERT INTO `ggp_details` (`register_number`, `name`, `father_name`, `mother_name`, `dob`, `age`, `gender`, `address`, `course`, `semister`, `discipline`, `college_name`, `contact_number`, `email_id`, `upload_photo`) VALUES
('10u1011', 'Player', 'arun', '', '2017-04-07', 23, 'male', 'dwd', 'BBA', '456', '', 'smi', '91745653454', 'arun11111@gmail.com', 'Penguins.jpg'),
('15255', 'mohit', 'raj', 'neha', '2017-04-13', 22, 'male', 'pune', 'BBA', '1sem', 'athletics', 'smi', '9234567888', 'mrj123@gmail.com', 'Lighthouse.jpg'),
('135465756', 'bharth', 'eshwar', 'roopa', '2017-04-13', 21, 'male', 'rone', 'BCOM', '6sem', 'cycling', 'jss', '8765433345', 'bhartjdkb', 'Penguins.jpg'),
('123t4563', 'rohit', 'raj', 'meera', '1993-02-15', 21, 'male', 'dwd', 'BBA', '6sem', 'Athletics', 'smi', '9725333336', 'rohit1234@gmail.com', 'Hydrangeas.jpg'),
('14u11014', 'anand', 'n', 'a', '1996-04-05', 21, 'male', 'dwd', 'BCA', '6sem', 'Cricket', 'smi', '9035262191', 'anandnb96@gmail.com', 'Penguins.jpg'),
('12CS1512', 'vasudha', 'f', 'm', '1995-08-13', 23, 'female', 'hubli', 'Msc[PHY]', '4sem', 'Valley Ball', 'SMI', '7760143639', 'vasuda@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `igp_details`
--

CREATE TABLE IF NOT EXISTS `igp_details` (
  `register_number` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `semister` varchar(20) NOT NULL,
  `college_name` varchar(30) NOT NULL,
  `discipline` varchar(30) NOT NULL,
  `contact_number` varchar(30) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `upload_photo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `igp_details`
--

INSERT INTO `igp_details` (`register_number`, `name`, `father_name`, `mother_name`, `dob`, `age`, `gender`, `address`, `course`, `semister`, `college_name`, `discipline`, `contact_number`, `email_id`, `upload_photo`) VALUES
('12CS1511', 'seema', 'f', 'm', '1996-12-12', '25', 'male', 'dwd', 'Msc[CS]', '4sem', 'SMI ', 'Athletics', '7760143639', 'seema@gmail.com', 'Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `utype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `utype`) VALUES
('user', '1111', 'user'),
('admin', '4321', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `reject_list`
--

CREATE TABLE IF NOT EXISTS `reject_list` (
  `id` varchar(40) NOT NULL,
  `reason` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reject_list`
--

INSERT INTO `reject_list` (`id`, `reason`) VALUES
('10u1011', 'xzzxzcx');

-- --------------------------------------------------------

--
-- Table structure for table `selection_list`
--

CREATE TABLE IF NOT EXISTS `selection_list` (
  `id` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selection_list`
--

INSERT INTO `selection_list` (`id`, `status`) VALUES
('12CS1511', 'selected'),
('10u1011', 'rejected'),
('15255', 'selected');

-- --------------------------------------------------------

--
-- Table structure for table `uniform_details`
--

CREATE TABLE IF NOT EXISTS `uniform_details` (
  `gender` varchar(20) NOT NULL,
  `game_category` varchar(30) NOT NULL,
  `discipline` varchar(30) NOT NULL,
  `register_number` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `date_of_issue` date NOT NULL,
  `issue_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uniform_details`
--

INSERT INTO `uniform_details` (`gender`, `game_category`, `discipline`, `register_number`, `name`, `course`, `college`, `date_of_issue`, `issue_status`) VALUES
('Female', 'group', 'BasketBall', '153758', 'manu', 'Msc[Phy]', 'smi', '2017-04-04', 'not given'),
('female', 'group', 'hockey', '1234567', 'radha', 'BCA', 'smi', '2017-04-13', 'given');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_details`
--

CREATE TABLE IF NOT EXISTS `upcoming_details` (
  `event_category` varchar(30) NOT NULL,
  `discipline` varchar(30) NOT NULL,
  `discipline_date` date NOT NULL,
  `venue` varchar(30) NOT NULL,
  `last_date_for_registration` int(11) NOT NULL,
  `condition_and_terms` varchar(30) NOT NULL,
  `selection_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming_details`
--

INSERT INTO `upcoming_details` (`event_category`, `discipline`, `discipline_date`, `venue`, `last_date_for_registration`, `condition_and_terms`, `selection_date`) VALUES
('Group Games', 'Athletics', '2017-04-15', 'panjab', 11, 'iihjfvbnccccmiomxopz', '2017-05-20');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
