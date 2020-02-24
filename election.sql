-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2015 at 09:11 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `election`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('vote', '123');

-- --------------------------------------------------------

--
-- Table structure for table `bussc`
--

CREATE TABLE IF NOT EXISTS `bussc` (
  `candidateID` int(10) NOT NULL AUTO_INCREMENT,
  `studnum` varchar(40) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `course` varchar(100) NOT NULL,
  `yearlvl` varchar(10) NOT NULL,
  `position` text NOT NULL,
  `partylist` varchar(25) NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`candidateID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bussc`
--

INSERT INTO `bussc` (`candidateID`, `studnum`, `fname`, `lname`, `gender`, `course`, `yearlvl`, `position`, `partylist`, `image`) VALUES
(4, '866', 'chadia', 'kamana', 'Female', 'Intara y''amajyepfo', '0301', 'Secretary', 'FPR', 0x4e47542d363030783435302e6a7067),
(5, '4566', 'HABIMANA', 'HEMEDY', 'Male', 'Umugi wa kigali', '0103', 'PRESIDENT', 'FPR', 0x4e47542d363030783435302e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `bussc_pos`
--

CREATE TABLE IF NOT EXISTS `bussc_pos` (
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  `pNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bussc_pos`
--

INSERT INTO `bussc_pos` (`pID`, `pNAME`) VALUES
(1, 'PRESIDENT'),
(2, 'UMUNSI');

-- --------------------------------------------------------

--
-- Table structure for table `canvass_buscc`
--

CREATE TABLE IF NOT EXISTS `canvass_buscc` (
  `candidateID` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(34) NOT NULL,
  `course` varchar(45) NOT NULL,
  `yearlvl` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `partylist` varchar(45) NOT NULL,
  `votecount` int(11) NOT NULL,
  PRIMARY KEY (`candidateID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canvass_buscc`
--


-- --------------------------------------------------------

--
-- Table structure for table `cell`
--

CREATE TABLE IF NOT EXISTS `cell` (
  `cell_id` int(11) NOT NULL AUTO_INCREMENT,
  `cell_name` varchar(11) NOT NULL,
  PRIMARY KEY (`cell_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cell`
--

INSERT INTO `cell` (`cell_id`, `cell_name`) VALUES
(1, 'Ngoma'),
(2, 'Butare');

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE IF NOT EXISTS `date` (
  `dateid` int(11) NOT NULL AUTO_INCREMENT,
  `datestart` datetime NOT NULL,
  `dateend` datetime NOT NULL,
  `org` varchar(10) NOT NULL,
  PRIMARY KEY (`dateid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`dateid`, `datestart`, `dateend`, `org`) VALUES
(5, '2015-05-05 08:00:00', '2016-11-25 12:00:00', 'bussc'),
(6, '2013-10-02 08:00:00', '2013-11-03 08:00:00', 'cas'),
(7, '2013-10-21 08:00:00', '2013-10-21 12:00:00', 'cbaa'),
(8, '2013-11-02 08:00:00', '2013-11-03 08:00:00', 'cede'),
(9, '2013-11-02 08:00:00', '2013-11-03 08:00:00', 'educ'),
(10, '2013-11-02 08:00:00', '2013-11-03 08:00:00', 'con'),
(11, '2013-11-02 08:00:00', '2013-11-03 08:00:00', 'shmt'),
(12, '2013-11-02 08:00:00', '2013-11-03 08:00:00', 'site'),
(13, '2013-10-17 11:58:12', '2013-10-19 11:58:20', 'stc');

-- --------------------------------------------------------

--
-- Table structure for table `deletecandidate`
--

CREATE TABLE IF NOT EXISTS `deletecandidate` (
  `delcan_id` int(11) NOT NULL,
  `studnum` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `partylist` varchar(90) NOT NULL,
  `yearlvl` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deletecandidate`
--


-- --------------------------------------------------------

--
-- Table structure for table `deletevoter`
--

CREATE TABLE IF NOT EXISTS `deletevoter` (
  `del_id` int(11) NOT NULL AUTO_INCREMENT,
  `studnum` varchar(20) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `course` varchar(100) NOT NULL,
  `yearlevel` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `datee` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `ddate` datetime NOT NULL,
  PRIMARY KEY (`del_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `deletevoter`
--


-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE IF NOT EXISTS `idea` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(100) NOT NULL,
  `idea` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`ID`, `fullname`, `idea`) VALUES
(1, 'snjhdf', 'hduwe'),
(2, '3', 'jhlc'),
(3, 'buregeya', 'jhlcj,blfv'),
(4, '', ''),
(5, '', ''),
(6, 'caaca', 'bibi we'),
(7, 'MURENZI', ' TUZATORA ABADUFITIYE AKAMARO');

-- --------------------------------------------------------

--
-- Table structure for table `res_bussc`
--

CREATE TABLE IF NOT EXISTS `res_bussc` (
  `can_voteid` int(11) NOT NULL AUTO_INCREMENT,
  `candidateID` int(11) NOT NULL,
  `candidate_name` varchar(40) NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY (`can_voteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `res_bussc`
--


-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE IF NOT EXISTS `sector` (
  `sec_id` int(4) NOT NULL AUTO_INCREMENT,
  `sec_name` varchar(25) NOT NULL,
  PRIMARY KEY (`sec_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`sec_id`, `sec_name`) VALUES
(1, 'Gisagara'),
(2, 'Rwamiko'),
(3, 'karongi'),
(4, 'nyamagabe');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE IF NOT EXISTS `site` (
  `candidateID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `course` varchar(50) NOT NULL,
  `yearlvl` varchar(10) NOT NULL,
  `position` text NOT NULL,
  `partylist` varchar(20) NOT NULL,
  `image` longblob NOT NULL,
  `studnum` varchar(40) NOT NULL,
  PRIMARY KEY (`candidateID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`candidateID`, `fname`, `mname`, `lname`, `gender`, `course`, `yearlvl`, `position`, `partylist`, `image`, `studnum`) VALUES
(1, 'John', '', 'Jade', 'Male', 'Bachelor of Science in Information Technology', '3rd Year', 'President', 'aklasan', 0x4368727973616e7468656d756d2e6a7067, '101-001');

-- --------------------------------------------------------

--
-- Table structure for table `stc`
--

CREATE TABLE IF NOT EXISTS `stc` (
  `candidateID` int(10) NOT NULL AUTO_INCREMENT,
  `studnum` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `course` varchar(100) NOT NULL,
  `yearlvl` varchar(40) NOT NULL,
  `position` varchar(40) NOT NULL,
  `partylist` varchar(40) NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`candidateID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stc`
--

INSERT INTO `stc` (`candidateID`, `studnum`, `fname`, `lname`, `gender`, `course`, `yearlvl`, `position`, `partylist`, `image`) VALUES
(1, '1019912', 'John', 'Ceena', 'Male', '1 year Automotive Servicing', '1st Year', 'President', 'COCO', 0x617072696c692e6a7067),
(2, '101', 'qwe', 'ty', 'Male', '1 year Automotive Servicing', '1st Year', 'President', 'lo', 0x617072696c692e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `voices`
--

CREATE TABLE IF NOT EXISTS `voices` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `voices`
--

INSERT INTO `voices` (`Id`, `Candidate`) VALUES
(1, 'Obama'),
(2, 'kagame'),
(3, 'Kigeri'),
(4, 'Kigeri'),
(5, 'kagame'),
(6, 'Obama'),
(7, 'Kigeri'),
(8, 'Kigeri'),
(9, 'kagame'),
(10, 'Obama'),
(11, 'kagame'),
(12, 'kagame'),
(13, 'Obama'),
(14, 'Obama'),
(15, 'Kigeri'),
(16, 'kagame'),
(17, 'kagame');

-- --------------------------------------------------------

--
-- Table structure for table `voted_bussc`
--

CREATE TABLE IF NOT EXISTS `voted_bussc` (
  `stud_voted` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) NOT NULL,
  `position` varchar(40) NOT NULL,
  PRIMARY KEY (`stud_voted`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `voted_bussc`
--


-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE IF NOT EXISTS `voter` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `VoterCard` varchar(20) NOT NULL,
  `Number_of_ID` varchar(20) NOT NULL,
  `Names` varchar(25) NOT NULL,
  `FatherNames` varchar(20) NOT NULL,
  `MotherNames` varchar(20) NOT NULL,
  `DoB` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `sec_name` varchar(20) NOT NULL,
  `cell_name` varchar(30) NOT NULL,
  `VotingCenter` varchar(20) NOT NULL,
  `pob` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`ID`, `VoterCard`, `Number_of_ID`, `Names`, `FatherNames`, `MotherNames`, `DoB`, `District`, `sec_name`, `cell_name`, `VotingCenter`, `pob`, `password`) VALUES
(1, '456', '1199080042434098', 'TUYISENGE Jean Claude', 'TWAGIRAYEZU Jean Cla', 'UWAMBAJIMANA Cesalie', '20/12/1990', '0202', 'Rwamiko', 'Butare', 'huye', 'huye', '123'),
(2, '789', '1199080042434124', 'ISHIMWE Di', 'NYIRAKAMANA', 'SENTORE', '11998', '0501', 'nyamagabe', 'Butare', 'NYAMAGANA', 'MUHANGA', '456');

-- --------------------------------------------------------

--
-- Table structure for table `yuovote`
--

CREATE TABLE IF NOT EXISTS `yuovote` (
  `votercardnumber` int(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`votercardnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yuovote`
--

INSERT INTO `yuovote` (`votercardnumber`, `password`) VALUES
(44444, '148'),
(563, '148'),
(11111, '148'),
(178888, '148'),
(345, '148'),
(3, '123'),
(111, '123'),
(2, '148'),
(0, '124'),
(147, '123'),
(159, '148'),
(9, '168'),
(4, '146'),
(5, '147'),
(12, '148'),
(110, '148'),
(101, '148'),
(113, '113');
