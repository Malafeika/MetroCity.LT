-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 03, 2018 at 02:58 PM
-- Server version: 5.5.59
-- PHP Version: 5.4.45-0+deb7u12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `bannedplayers`
--

CREATE TABLE IF NOT EXISTS `bannedplayers` (
  `Admin` varchar(24) NOT NULL,
  `User` varchar(24) NOT NULL,
  `IP` varchar(16) NOT NULL,
  `BanReason` char(80) NOT NULL,
  `Time` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credithouses`
--

CREATE TABLE IF NOT EXISTS `credithouses` (
  `ID` int(6) NOT NULL,
  `Owner` varchar(24) NOT NULL,
  `EnterX` float NOT NULL,
  `EnterY` float NOT NULL,
  `EnterZ` float NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `GarageX` float NOT NULL,
  `GarageY` float NOT NULL,
  `GarageZ` float NOT NULL,
  `TimeLeft` int(32) NOT NULL,
  `Money` int(11) NOT NULL,
  `Drugs1` int(11) NOT NULL,
  `Drugs2` int(11) NOT NULL,
  `Drugs3` int(11) NOT NULL,
  `Drugs4` int(11) NOT NULL,
  `Locked` int(1) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `darbuinfo`
--

CREATE TABLE IF NOT EXISTS `darbuinfo` (
  `Darbas` varchar(24) NOT NULL,
  `KiekXP` int(11) NOT NULL,
  `ATeises` int(1) NOT NULL,
  `BTeises` int(11) NOT NULL,
  `CTeises` int(1) NOT NULL,
  `sPazymas` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `darbuinfo`
--

INSERT INTO `darbuinfo` (`Darbas`, `KiekXP`, `ATeises`, `BTeises`, `CTeises`, `sPazymas`) VALUES
('Policija', 100, 1, 1, 1, 1),
('Medikai', 0, 0, 0, 0, 0),
('Kurj', 0, 0, 0, 0, 0),
('Mechanikai', 0, 0, 0, 0, 0),
('Dyleriai', 0, 0, 0, 0, 0),
('Furistai', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dzinutes`
--

CREATE TABLE IF NOT EXISTS `dzinutes` (
  `KokioDarboZinute` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ArIjungtaZinute` int(1) NOT NULL,
  `ZinutesTekstas` varchar(70) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Dumping data for table `dzinutes`
--

INSERT INTO `dzinutes` (`KokioDarboZinute`, `ArIjungtaZinute`, `ZinutesTekstas`) VALUES
('Medicina', 1, '-'),
('Policija', 1, '-'),
('Taxi', 1, '-'),
('Mechanika', 1, '-'),
('Dyleriai', 1, 'TEST'),
('Rifa', 1, '-'),
('GroveStreet', 1, '-'),
('Armija', 1, '-'),
('Furistai', 1, '-'),
('Radistai', 1, '-'),
('Medicina', 1, '-'),
('Policija', 1, '-'),
('Taxi', 1, '-'),
('Mechanika', 1, '-'),
('Dyleriai', 1, 'TEST'),
('Rifa', 1, '-'),
('GroveStreet', 1, '-'),
('Armija', 1, '-'),
('Furistai', 1, '-'),
('Radistai', 1, '-');

-- --------------------------------------------------------

--
-- Table structure for table `garazai`
--

CREATE TABLE IF NOT EXISTS `garazai` (
  `GarageID` int(6) NOT NULL,
  `GarageOwner` varchar(24) NOT NULL,
  `GaragePosX` float NOT NULL,
  `GaragePosY` float NOT NULL,
  `GaragePosZ` float NOT NULL,
  `GarageTimeLeft` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gaujuinfo`
--

CREATE TABLE IF NOT EXISTS `gaujuinfo` (
  `ID` int(11) NOT NULL,
  `gIndeficationID` int(11) NOT NULL,
  `gTitle` varchar(128) NOT NULL,
  `gLeader` varchar(24) NOT NULL,
  `gChest` int(11) NOT NULL,
  `gPos_X` float NOT NULL,
  `gPos_Y` float NOT NULL,
  `gPos_Z` float NOT NULL,
  `gPoints` int(11) NOT NULL,
  `gClosed` int(11) NOT NULL,
  `gSkin` int(11) NOT NULL,
  `Ginklai1` int(11) NOT NULL,
  `Ginklai2` int(11) NOT NULL,
  `Ginklai3` int(11) NOT NULL,
  `Narkai1` int(11) NOT NULL,
  `Narkai2` int(11) NOT NULL,
  `Narkai3` int(11) NOT NULL,
  `Narkai4` int(11) NOT NULL,
  `gVirve` int(11) NOT NULL,
  `gIsodinti` int(11) NOT NULL,
  `gTele` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaujuinfo`
--

INSERT INTO `gaujuinfo` (`ID`, `gIndeficationID`, `gTitle`, `gLeader`, `gChest`, `gPos_X`, `gPos_Y`, `gPos_Z`, `gPoints`, `gClosed`, `gSkin`, `Ginklai1`, `Ginklai2`, `Ginklai3`, `Narkai1`, `Narkai2`, `Narkai3`, `Narkai4`, `gVirve`, `gIsodinti`, `gTele`) VALUES
(1, 1, 'El Monte Flores XII', 'Sumiyoshi_Kai', 0, -2524.28, -711.154, 139.41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gaujuzonos`
--

CREATE TABLE IF NOT EXISTS `gaujuzonos` (
  `gZoneID` int(6) NOT NULL,
  `gZoneOwner` varchar(24) NOT NULL,
  `gZoneYield` int(11) NOT NULL,
  `MinX` float NOT NULL,
  `MinY` float NOT NULL,
  `MaxX` float NOT NULL,
  `MaxY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
  `ID` int(4) NOT NULL,
  `Buyed` int(1) NOT NULL,
  `Locked` int(1) NOT NULL,
  `Owner` varchar(20) NOT NULL,
  `Cost` int(10) NOT NULL,
  `ExitX` float NOT NULL,
  `ExitY` float NOT NULL,
  `ExitZ` float NOT NULL,
  `ExitAngle` float NOT NULL,
  `hInt` int(4) NOT NULL,
  `IntX` float NOT NULL,
  `IntY` float NOT NULL,
  `IntZ` float NOT NULL,
  `IntAngle` float NOT NULL,
  `htVW` int(4) NOT NULL,
  `Money` int(10) NOT NULL,
  `ChestItemID_0` int(11) NOT NULL,
  `ChestItemAmmount_0` int(11) NOT NULL,
  `ChestItemID_1` int(11) NOT NULL,
  `ChestItemAmmount_1` int(11) NOT NULL,
  `ChestItemID_2` int(11) NOT NULL,
  `ChestItemAmmount_2` int(11) NOT NULL,
  `ChestItemID_3` int(11) NOT NULL,
  `ChestItemAmmount_3` int(11) NOT NULL,
  `ChestItemID_4` int(11) NOT NULL,
  `ChestItemAmmount_4` int(11) NOT NULL,
  `ChestItemID_5` int(11) NOT NULL,
  `ChestItemAmmount_5` int(11) NOT NULL,
  `ChestItemID_6` int(11) NOT NULL,
  `ChestItemAmmount_6` int(11) NOT NULL,
  `ChestItemID_7` int(11) NOT NULL,
  `ChestItemAmmount_7` int(11) NOT NULL,
  `ChestItemID_8` int(11) NOT NULL,
  `ChestItemAmmount_8` int(11) NOT NULL,
  `ChestItemID_9` int(11) NOT NULL,
  `ChestItemAmmount_9` int(11) NOT NULL,
  `ChestItemID_10` int(11) NOT NULL,
  `ChestItemAmmount_10` int(11) NOT NULL,
  `ChestItemID_11` int(11) NOT NULL,
  `ChestItemAmmount_11` int(11) NOT NULL,
  `ChestItemID_12` int(11) NOT NULL,
  `ChestItemAmmount_12` int(11) NOT NULL,
  `ChestItemID_13` int(11) NOT NULL,
  `ChestItemAmmount_13` int(11) NOT NULL,
  `ChestItemID_14` int(11) NOT NULL,
  `ChestItemAmmount_14` int(11) NOT NULL,
  `ChestItemID_15` int(11) NOT NULL,
  `ChestItemAmmount_15` int(11) NOT NULL,
  `ChestItemID_16` int(11) NOT NULL,
  `ChestItemAmmount_16` int(11) NOT NULL,
  `ChestItemID_17` int(11) NOT NULL,
  `ChestItemAmmount_17` int(11) NOT NULL,
  `ChestItemID_18` int(11) NOT NULL,
  `ChestItemAmmount_18` int(11) NOT NULL,
  `ChestItemID_19` int(11) NOT NULL,
  `ChestItemAmmount_19` int(11) NOT NULL,
  `ChestItemID_20` int(11) NOT NULL,
  `ChestItemAmmount_20` int(11) NOT NULL,
  `ChestItemID_21` int(11) NOT NULL,
  `ChestItemAmmount_21` int(11) NOT NULL,
  `ChestItemID_22` int(11) NOT NULL,
  `ChestItemAmmount_22` int(11) NOT NULL,
  `ChestItemID_23` int(11) NOT NULL,
  `ChestItemAmmount_23` int(11) NOT NULL,
  `ChestItemID_24` int(11) NOT NULL,
  `ChestItemAmmount_24` int(11) NOT NULL,
  `ChestItemID_25` int(11) NOT NULL,
  `ChestItemAmmount_25` int(11) NOT NULL,
  `ChestItemID_26` int(11) NOT NULL,
  `ChestItemAmmount_26` int(11) NOT NULL,
  `ChestItemID_27` int(11) NOT NULL,
  `ChestItemAmmount_27` int(11) NOT NULL,
  `ChestItemID_28` int(11) NOT NULL,
  `ChestItemAmmount_28` int(11) NOT NULL,
  `ChestItemID_29` int(11) NOT NULL,
  `ChestItemAmmount_29` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`ID`, `Buyed`, `Locked`, `Owner`, `Cost`, `ExitX`, `ExitY`, `ExitZ`, `ExitAngle`, `hInt`, `IntX`, `IntY`, `IntZ`, `IntAngle`, `htVW`, `Money`, `ChestItemID_0`, `ChestItemAmmount_0`, `ChestItemID_1`, `ChestItemAmmount_1`, `ChestItemID_2`, `ChestItemAmmount_2`, `ChestItemID_3`, `ChestItemAmmount_3`, `ChestItemID_4`, `ChestItemAmmount_4`, `ChestItemID_5`, `ChestItemAmmount_5`, `ChestItemID_6`, `ChestItemAmmount_6`, `ChestItemID_7`, `ChestItemAmmount_7`, `ChestItemID_8`, `ChestItemAmmount_8`, `ChestItemID_9`, `ChestItemAmmount_9`, `ChestItemID_10`, `ChestItemAmmount_10`, `ChestItemID_11`, `ChestItemAmmount_11`, `ChestItemID_12`, `ChestItemAmmount_12`, `ChestItemID_13`, `ChestItemAmmount_13`, `ChestItemID_14`, `ChestItemAmmount_14`, `ChestItemID_15`, `ChestItemAmmount_15`, `ChestItemID_16`, `ChestItemAmmount_16`, `ChestItemID_17`, `ChestItemAmmount_17`, `ChestItemID_18`, `ChestItemAmmount_18`, `ChestItemID_19`, `ChestItemAmmount_19`, `ChestItemID_20`, `ChestItemAmmount_20`, `ChestItemID_21`, `ChestItemAmmount_21`, `ChestItemID_22`, `ChestItemAmmount_22`, `ChestItemID_23`, `ChestItemAmmount_23`, `ChestItemID_24`, `ChestItemAmmount_24`, `ChestItemID_25`, `ChestItemAmmount_25`, `ChestItemID_26`, `ChestItemAmmount_26`, `ChestItemID_27`, `ChestItemAmmount_27`, `ChestItemID_28`, `ChestItemAmmount_28`, `ChestItemID_29`, `ChestItemAmmount_29`) VALUES
(0, 0, 1, 'Nera', 61794, -2623.27, 131.597, 7.2031, 89.4199, 4, 261.061, 1284.49, 1080.26, 90, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 0, 1, 'Nera', 50905, -2620.84, 121.351, 7.2031, 354.961, 4, 261.061, 1284.49, 1080.26, 90, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 1, 'Nera', 57127, -2620.35, 114.942, 5, 264.72, 4, 261.061, 1284.49, 1080.26, 90, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 1, 'Johan_Fozzy', 64211, -2620.7, 102.718, 7.1795, 352.756, 1, 223.142, 1287.25, 1082.14, 360, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 1, 'Nera', 59119, -2620.47, 96.5883, 5, 90.0466, 9, 260.8, 1237.6, 1084.26, 360, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 1, 'Nera', 59471, -2625.27, 79.0122, 7.2031, 270.047, 15, 295.201, 1472.56, 1080.26, 360, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 1, 'Nera', 60510, -2621.41, 71.6027, 4.3358, 267.54, 15, 295.201, 1472.56, 1080.26, 360, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 1, 'Nera', 62106, -2618.8, 57.473, 4.3358, 269.107, 15, 295.201, 1472.56, 1080.26, 360, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 1, 'Nera', 57476, -2689.58, 56.4011, 7.2031, 180.495, 1, 223.142, 1287.25, 1082.14, 360, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 1, 1, 'Domka_Quattro', 62543, -2691.44, 64.4166, 4.3358, 91.8209, 1, 223.142, 1287.25, 1082.14, 360, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 1, 'Nera', 62879, -2689.38, 75.4103, 7.2031, 2.2067, 11, 2282.97, -1140.09, 1050.9, 360, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 1, 'Nera', 62602, -2689.38, 95.9586, 7.2031, 181.412, 11, 2282.97, -1140.09, 1050.9, 360, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mturgus`
--

CREATE TABLE IF NOT EXISTS `mturgus` (
  `401` int(11) NOT NULL,
  `404` int(11) NOT NULL,
  `410` int(11) NOT NULL,
  `412` int(11) NOT NULL,
  `419` int(11) NOT NULL,
  `436` int(11) NOT NULL,
  `439` int(11) NOT NULL,
  `445` int(11) NOT NULL,
  `458` int(11) NOT NULL,
  `467` int(11) NOT NULL,
  `479` int(11) NOT NULL,
  `480` int(11) NOT NULL,
  `491` int(11) NOT NULL,
  `492` int(11) NOT NULL,
  `507` int(11) NOT NULL,
  `516` int(11) NOT NULL,
  `518` int(11) NOT NULL,
  `526` int(11) NOT NULL,
  `580` int(11) NOT NULL,
  `529` int(11) NOT NULL,
  `533` int(11) NOT NULL,
  `534` int(11) NOT NULL,
  `536` int(11) NOT NULL,
  `542` int(11) NOT NULL,
  `575` int(11) NOT NULL,
  `576` int(11) NOT NULL,
  `466` int(11) NOT NULL,
  `517` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mturgus`
--

INSERT INTO `mturgus` (`401`, `404`, `410`, `412`, `419`, `436`, `439`, `445`, `458`, `467`, `479`, `480`, `491`, `492`, `507`, `516`, `518`, `526`, `580`, `529`, `533`, `534`, `536`, `542`, `575`, `576`, `466`, `517`) VALUES
(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `narkotikaiginklai`
--

CREATE TABLE IF NOT EXISTS `narkotikaiginklai` (
  `DealersDocksHaveExstazi` int(11) NOT NULL,
  `DealersDocksHaveCocaine` int(11) NOT NULL,
  `DealersDocksHaveWeed` int(11) NOT NULL,
  `DealersDocksHaveHeroin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `narkotikaiginklai`
--

INSERT INTO `narkotikaiginklai` (`DealersDocksHaveExstazi`, `DealersDocksHaveCocaine`, `DealersDocksHaveWeed`, `DealersDocksHaveHeroin`) VALUES
(610, 521, 589, 616),
(610, 521, 589, 616);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `ID` int(6) NOT NULL AUTO_INCREMENT,
  `Vardas` varchar(21) NOT NULL,
  `Slaptazodis` varchar(50) NOT NULL,
  `pos_X` float NOT NULL,
  `pos_Y` float NOT NULL,
  `pos_Z` float NOT NULL,
  `Xp` int(10) NOT NULL,
  `MoneyPocket` int(10) NOT NULL,
  `MoneyBank` int(10) NOT NULL,
  `Alga` int(10) NOT NULL,
  `Wanted` int(5) NOT NULL,
  `Girtumas` int(5) NOT NULL,
  `Lead` int(3) NOT NULL,
  `pavdrk` int(2) NOT NULL,
  `Kalejime` int(10) NOT NULL,
  `Admin` int(1) NOT NULL,
  `EPriziuretojas` int(1) NOT NULL,
  `DPriziuretojas` int(1) NOT NULL,
  `APriziuretojas` int(1) NOT NULL,
  `VPriziuretojas` int(1) NOT NULL,
  `BANPriziuretojas` int(1) NOT NULL,
  `Vip` int(1) NOT NULL DEFAULT '0',
  `VipLaikas` int(15) NOT NULL,
  `AdminLaikas` int(15) NOT NULL,
  `GarazasSuNamuSav` int(1) NOT NULL,
  `Muted` int(15) NOT NULL,
  `MedicinosPazyma` int(15) NOT NULL,
  `BanLaikas` int(15) NOT NULL,
  `Papildimas` int(10) NOT NULL,
  `Telefonostat` int(1) NOT NULL,
  `Laikrodis` int(1) NOT NULL,
  `Telefonas` int(1) NOT NULL,
  `MP3` int(1) NOT NULL,
  `GPS` int(1) NOT NULL,
  `Kontoroje` int(1) NOT NULL,
  `Job` int(3) NOT NULL,
  `Drabuziai` int(3) NOT NULL,
  `Uniforma` int(3) NOT NULL,
  `Mobsas` int(10) NOT NULL,
  `KoksTelefonas` int(1) NOT NULL,
  `Pradirbo` int(10) NOT NULL,
  `Prazaide` int(10) NOT NULL,
  `Telefonobaterija` float NOT NULL,
  `Lytis` int(1) NOT NULL,
  `Interior` int(5) NOT NULL,
  `Kokainas` int(10) NOT NULL,
  `Ekstazi` int(10) NOT NULL,
  `Heroinas` int(10) NOT NULL,
  `World` int(5) NOT NULL,
  `Zole` int(10) NOT NULL,
  `NamoID` int(3) NOT NULL,
  `Surakintas` int(1) NOT NULL,
  `License` int(1) NOT NULL,
  `LicenseBike` int(1) NOT NULL,
  `LicenseFura` int(1) NOT NULL,
  `SuperGreitis` int(1) NOT NULL,
  `Uniformd` int(1) NOT NULL,
  `SusikuresKorta` int(1) NOT NULL,
  `Ikalintas` int(1) NOT NULL,
  `gLicenzija` int(1) NOT NULL,
  `Alkis` int(3) NOT NULL,
  `Turigaraza` int(2) NOT NULL,
  `Stazasteisesaugos` int(10) NOT NULL,
  `Stazastaxi` int(10) NOT NULL,
  `Stazasmediku` int(10) NOT NULL,
  `Stazasfuristu` int(10) NOT NULL,
  `Stazasmechaniku` int(10) NOT NULL,
  `Stazasdyleriu` int(10) NOT NULL,
  `Stazaspaprastodarbo` int(10) NOT NULL,
  `Stazasgauju` int(10) NOT NULL,
  `StazasRadistu` int(11) NOT NULL,
  `Vairavimobaud` int(1) NOT NULL,
  `Rangas` int(2) NOT NULL,
  `Ispejimai` int(1) NOT NULL,
  `Dispejimai` int(1) NOT NULL,
  `Aispejimai` int(1) NOT NULL,
  `Vispejimai` int(1) NOT NULL,
  `Kreditai` int(10) NOT NULL,
  `mNusipirktiCar` int(1) NOT NULL,
  `mNusipirktiNama` int(1) NOT NULL,
  `mNusipirktiVersla` int(1) NOT NULL,
  `mTeises` int(1) NOT NULL,
  `mMTeises` int(1) NOT NULL,
  `mFTeises` int(1) NOT NULL,
  `mGLicenzija` int(1) NOT NULL,
  `mUzsidirbt100k` int(1) NOT NULL,
  `mUzsidirbt500k` int(1) NOT NULL,
  `mUzsidirbt1m` int(1) NOT NULL,
  `mTureti300k` int(1) NOT NULL,
  `mTureti900k` int(1) NOT NULL,
  `mTureti5m` int(1) NOT NULL,
  `mButKalejme` int(1) NOT NULL,
  `mButDarbe` int(1) NOT NULL,
  `mButGaujoje` int(1) NOT NULL,
  `mdSuimtZmogu` int(1) NOT NULL,
  `mdDuotBauda` int(1) NOT NULL,
  `mdAtimtTeises` int(1) NOT NULL,
  `mdPatikrintiZmogu` int(1) NOT NULL,
  `mdFixCar` int(1) NOT NULL,
  `mdPiltDegalus` int(1) NOT NULL,
  `mdPaveztZmogu` int(1) NOT NULL,
  `mdNuveztKrovini` int(1) NOT NULL,
  `mdParduotGunu` int(1) NOT NULL,
  `mdParduotNarku` int(1) NOT NULL,
  `mdParduotiSveikPaz` int(1) NOT NULL,
  `mdPagydytiZmogu` int(1) NOT NULL,
  `GrybuKrepsiukas` int(1) NOT NULL,
  `KiekTuriGrybu` int(1) NOT NULL,
  `Meskere` int(1) NOT NULL,
  `Valas` int(1) NOT NULL,
  `Masalas` int(1) NOT NULL,
  `Ungurys` int(2) NOT NULL,
  `Karosas` int(2) NOT NULL,
  `Karpis` int(2) NOT NULL,
  `Karsis` int(2) NOT NULL,
  `Lydeka` int(2) NOT NULL,
  `BaninoPaprastai` int(15) NOT NULL,
  `BaninoLaikui` int(15) NOT NULL,
  `Uzbanintas` int(1) NOT NULL,
  `ArEmigruotas` int(1) NOT NULL,
  `KadaSuriso` int(15) NOT NULL,
  `KadaVeze` int(15) NOT NULL,
  `Beglys` int(1) NOT NULL,
  `Gang` int(11) NOT NULL,
  `Islead` int(11) NOT NULL,
  `pAlga` int(1) NOT NULL,
  `AlgosLaikas` int(11) NOT NULL,
  `NickBanai` int(1) NOT NULL,
  `ParduotiAK` int(10) NOT NULL,
  `ParduotiDGL` int(10) NOT NULL,
  `ParduotiSG` int(10) NOT NULL,
  `ParduotiSNP` int(10) NOT NULL,
  `Parduoti9MM` int(10) NOT NULL,
  `ParduotiTEC` int(10) NOT NULL,
  `ParduotiSMG` int(10) NOT NULL,
  `ParduotiSPAZ` int(10) NOT NULL,
  `Ginklas0` int(3) NOT NULL,
  `Ginklas1` int(3) NOT NULL,
  `Ginklas2` int(3) NOT NULL,
  `Ginklas3` int(3) NOT NULL,
  `Ginklas4` int(3) NOT NULL,
  `Ginklas5` int(3) NOT NULL,
  `Ginklas6` int(3) NOT NULL,
  `Ginklas7` int(3) NOT NULL,
  `Ginklas8` int(3) NOT NULL,
  `Ginklas9` int(3) NOT NULL,
  `Ginklas10` int(3) NOT NULL,
  `Ginklas11` int(3) NOT NULL,
  `Ginklas12` int(11) NOT NULL,
  `Ammo12` int(12) NOT NULL,
  `Ammo0` int(6) NOT NULL,
  `Ammo1` int(6) NOT NULL,
  `Ammo2` int(6) NOT NULL,
  `Ammo3` int(6) NOT NULL,
  `Ammo4` int(6) NOT NULL,
  `Ammo5` int(6) NOT NULL,
  `Ammo6` int(6) NOT NULL,
  `Ammo7` int(6) NOT NULL,
  `Ammo8` int(6) NOT NULL,
  `Ammo9` int(6) NOT NULL,
  `Ammo10` int(6) NOT NULL,
  `Ammo11` int(6) NOT NULL,
  `KiekTuriRepTasku` int(11) NOT NULL,
  `FondoPinigai` int(11) NOT NULL,
  `ZaidejoIspejimai` int(11) NOT NULL,
  `KelintaMisija` int(11) NOT NULL,
  `Zetonai` int(11) NOT NULL,
  `Salmas` int(11) NOT NULL,
  `gMember` int(11) NOT NULL,
  `PasikeitePass` int(11) NOT NULL,
  `Theory` int(11) NOT NULL,
  `Glasses` int(11) NOT NULL,
  `PasiemeAlga` int(11) NOT NULL,
  `KreditineKortele` int(11) NOT NULL,
  `HouseID` int(11) NOT NULL,
  `MobilePhone` int(11) NOT NULL,
  `PhoneStatus` int(11) NOT NULL,
  `PhoneMoney` float NOT NULL,
  `TelMokesciai` float NOT NULL,
  `Battery` int(11) NOT NULL,
  `Suristas` int(11) NOT NULL,
  `VisoPrazaide` int(11) NOT NULL,
  `MobilePhoneNumber` int(11) NOT NULL,
  `Sutartis` int(11) NOT NULL,
  `TransportoSlotas` int(11) NOT NULL,
  `Gyvybes` float NOT NULL,
  `Sarvai` float NOT NULL,
  `AdminWarns` int(11) NOT NULL,
  `Praktika` int(11) NOT NULL,
  `BPraktika` int(11) NOT NULL,
  `Sultys` int(11) NOT NULL,
  `Pizza` int(11) NOT NULL,
  `PardSaskaita` int(11) NOT NULL,
  `FishingLevel` int(11) NOT NULL,
  `Viela` int(11) NOT NULL,
  `Priziuretojas` int(11) NOT NULL,
  `Stazaskurj` int(11) NOT NULL,
  `SelectedHouse` int(11) NOT NULL,
  `AtsiemePriza` int(11) NOT NULL,
  `Surelis` int(11) NOT NULL,
  `Sokoladas` int(11) NOT NULL,
  `dViela` int(11) NOT NULL,
  `Aliuminis` int(11) NOT NULL,
  `Auksas` int(11) NOT NULL,
  `garageID` int(11) NOT NULL,
  `Stirna1` int(11) NOT NULL,
  `Stirna2` int(11) NOT NULL,
  `Stirna3` int(11) NOT NULL,
  `Stirna4` int(11) NOT NULL,
  `Stirna5` int(11) NOT NULL,
  `LastActive` varchar(32) NOT NULL,
  `bakelis` int(11) NOT NULL,
  `IvygdeEvent` int(11) NOT NULL,
  `Varis` int(11) NOT NULL,
  `Titanas` int(11) NOT NULL,
  `FishingExperience` int(11) NOT NULL,
  `Desra` int(11) NOT NULL,
  `Duona` int(11) NOT NULL,
  `KadaUzsiregino` varchar(32) NOT NULL,
  `KadaZaide` int(25) NOT NULL,
  `1stebuklas` int(1) NOT NULL,
  `2stebuklas` int(1) NOT NULL,
  `3stebuklas` int(1) NOT NULL,
  `4stebuklas` int(1) NOT NULL,
  `5stebuklas` int(1) NOT NULL,
  `6stebuklas` int(1) NOT NULL,
  `7stebuklas` int(1) NOT NULL,
  `TuriTaksiLic` int(1) NOT NULL,
  `Kauliukas` int(11) NOT NULL,
  `Ledai` int(11) NOT NULL,
  `Zalvaris` int(11) NOT NULL,
  `Sidabras` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`ID`, `Vardas`, `Slaptazodis`, `pos_X`, `pos_Y`, `pos_Z`, `Xp`, `MoneyPocket`, `MoneyBank`, `Alga`, `Wanted`, `Girtumas`, `Lead`, `pavdrk`, `Kalejime`, `Admin`, `EPriziuretojas`, `DPriziuretojas`, `APriziuretojas`, `VPriziuretojas`, `BANPriziuretojas`, `Vip`, `VipLaikas`, `AdminLaikas`, `GarazasSuNamuSav`, `Muted`, `MedicinosPazyma`, `BanLaikas`, `Papildimas`, `Telefonostat`, `Laikrodis`, `Telefonas`, `MP3`, `GPS`, `Kontoroje`, `Job`, `Drabuziai`, `Uniforma`, `Mobsas`, `KoksTelefonas`, `Pradirbo`, `Prazaide`, `Telefonobaterija`, `Lytis`, `Interior`, `Kokainas`, `Ekstazi`, `Heroinas`, `World`, `Zole`, `NamoID`, `Surakintas`, `License`, `LicenseBike`, `LicenseFura`, `SuperGreitis`, `Uniformd`, `SusikuresKorta`, `Ikalintas`, `gLicenzija`, `Alkis`, `Turigaraza`, `Stazasteisesaugos`, `Stazastaxi`, `Stazasmediku`, `Stazasfuristu`, `Stazasmechaniku`, `Stazasdyleriu`, `Stazaspaprastodarbo`, `Stazasgauju`, `StazasRadistu`, `Vairavimobaud`, `Rangas`, `Ispejimai`, `Dispejimai`, `Aispejimai`, `Vispejimai`, `Kreditai`, `mNusipirktiCar`, `mNusipirktiNama`, `mNusipirktiVersla`, `mTeises`, `mMTeises`, `mFTeises`, `mGLicenzija`, `mUzsidirbt100k`, `mUzsidirbt500k`, `mUzsidirbt1m`, `mTureti300k`, `mTureti900k`, `mTureti5m`, `mButKalejme`, `mButDarbe`, `mButGaujoje`, `mdSuimtZmogu`, `mdDuotBauda`, `mdAtimtTeises`, `mdPatikrintiZmogu`, `mdFixCar`, `mdPiltDegalus`, `mdPaveztZmogu`, `mdNuveztKrovini`, `mdParduotGunu`, `mdParduotNarku`, `mdParduotiSveikPaz`, `mdPagydytiZmogu`, `GrybuKrepsiukas`, `KiekTuriGrybu`, `Meskere`, `Valas`, `Masalas`, `Ungurys`, `Karosas`, `Karpis`, `Karsis`, `Lydeka`, `BaninoPaprastai`, `BaninoLaikui`, `Uzbanintas`, `ArEmigruotas`, `KadaSuriso`, `KadaVeze`, `Beglys`, `Gang`, `Islead`, `pAlga`, `AlgosLaikas`, `NickBanai`, `ParduotiAK`, `ParduotiDGL`, `ParduotiSG`, `ParduotiSNP`, `Parduoti9MM`, `ParduotiTEC`, `ParduotiSMG`, `ParduotiSPAZ`, `Ginklas0`, `Ginklas1`, `Ginklas2`, `Ginklas3`, `Ginklas4`, `Ginklas5`, `Ginklas6`, `Ginklas7`, `Ginklas8`, `Ginklas9`, `Ginklas10`, `Ginklas11`, `Ginklas12`, `Ammo12`, `Ammo0`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `KiekTuriRepTasku`, `FondoPinigai`, `ZaidejoIspejimai`, `KelintaMisija`, `Zetonai`, `Salmas`, `gMember`, `PasikeitePass`, `Theory`, `Glasses`, `PasiemeAlga`, `KreditineKortele`, `HouseID`, `MobilePhone`, `PhoneStatus`, `PhoneMoney`, `TelMokesciai`, `Battery`, `Suristas`, `VisoPrazaide`, `MobilePhoneNumber`, `Sutartis`, `TransportoSlotas`, `Gyvybes`, `Sarvai`, `AdminWarns`, `Praktika`, `BPraktika`, `Sultys`, `Pizza`, `PardSaskaita`, `FishingLevel`, `Viela`, `Priziuretojas`, `Stazaskurj`, `SelectedHouse`, `AtsiemePriza`, `Surelis`, `Sokoladas`, `dViela`, `Aliuminis`, `Auksas`, `garageID`, `Stirna1`, `Stirna2`, `Stirna3`, `Stirna4`, `Stirna5`, `LastActive`, `bakelis`, `IvygdeEvent`, `Varis`, `Titanas`, `FishingExperience`, `Desra`, `Duona`, `KadaUzsiregino`, `KadaZaide`, `1stebuklas`, `2stebuklas`, `3stebuklas`, `4stebuklas`, `5stebuklas`, `6stebuklas`, `7stebuklas`, `TuriTaksiLic`, `Kauliukas`, `Ledai`, `Zalvaris`, `Sidabras`) VALUES
(6, 'Tex_Tas', '13181A37A095FBFE7023540086029237', -1876.14, -1697.29, 24.9685, 250, 5744, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1524853412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, -1, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 79, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-28 21:47', 0, 0, 0, 0, 0, 0, 0, '2018-03-26 22:42', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Mantas_Quix', '7340ECD0B21F86163596A4BA49A15AB0', -2590.5, 606.465, 15.7526, 384, 629851, 0, 260, 0, 0, 11, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1548004416, 0, 0, 1522529274, 0, 0, 0, 1, 0, 0, 1, 0, 11, 289, 127, 0, 0, 0, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 29, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 30, 0, 38, 0, 43, 0, 0, 0, 0, 0, 0, 0, 50, 0, 100, 0, 745, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 6, 0, 0, 0, 77, 0, 71, 0, 0, 0, 99, 96, 0, 1, 1, 0, 0, 0, 1, 0, 4, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-04-02 15:55', 1, 0, 0, 0, 0, 0, 0, '2018-03-27 14:38', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Domka_Quattro', '93C79157012416C8589C64511460C1F8', -1994.84, 193.855, 27.7268, 2268, 1307406, 0, 950, 7, 0, 11, 1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1524680263, 0, 0, 1522352076, 0, 0, 0, 1, 0, 0, 1, 0, 0, 292, -1, 0, 0, 0, 116, 0, 0, 0, 70, 70, 70, 0, 70, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 99, 0, 0, 0, 0, 80, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 75, 3, 0, 2, 4, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 19023, 0, 0, -1, 1, 0, 0, 0, 91, 0, 292, 108640, 2, 1, 99, 0, 0, 1, 1, 6, 8, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-04-02 17:34', 1, 0, 0, 0, 3, 5, 0, '2018-03-26 21:15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'Admin_Bmw', 'C9C596D151B065DECDF1248483DA0BB5', -1962.1, 277.082, 35.4687, 102, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-27 14:49', 0, 0, 0, 0, 0, 0, 0, '2018-03-27 14:48', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Sumiyoshi_Kai', '8B16EFCE3997C5FDF7B85AA400C0720F', -2052.8, -70.2565, 35.0001, 1250, 13890224, 200, 3882, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1524749362, 0, 0, 1522416292, 0, 0, 0, 1, 0, 0, 1, 0, 11, 2, 127, 0, 0, 14, 218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 1, 4, 0, 20, 0, 0, 90, 20, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 30, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 1522255522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 25, 29, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 449, 498, 495, 499, 500, 0, 0, 0, 0, 0, 10, 0, 0, 8, 0, 1, 1, 0, 1, 0, 0, 0, -1, 5, 1, 0, 0, 37, 0, 218, 101790, 2, 0, 99, 100, 0, 1, 1, 0, 0, 0, 1, 0, 3, 235, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-29 19:21', 0, 0, 0, 0, 0, 0, 0, '2018-03-27 16:13', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Rhet_Smith', 'A364001149D7FF6BE13B6B811F9C3D00', -1918.12, 565.447, 35.1925, 240, 10001720, 0, 586, 0, 0, 5, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1524748442, 0, 0, 1522417016, 0, 0, 0, 0, 0, 0, 0, 0, 5, 98, 165, 0, 0, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 64, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 90, 43, 0, 1, 1, 0, 0, 0, 1, 0, 4, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-28 17:32', 0, 0, 0, 0, 0, 0, 0, '2018-03-27 16:11', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Emmet_Hudson', 'E968F0B7E6023D6395A96C63B5AB65D1', -2478.21, 321.707, 71.0095, 124, 8350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, -1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 12, 103098, 1, 0, 95, 3, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-28 19:40', 0, 0, 0, 0, 0, 0, 0, '2018-03-28 19:21', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Maska_Savas', 'D1F23AF5082D47BCABBF31F84A21F549', -896.066, 887.102, 575.229, 10322, 297478, 100200, 0, 0, 0, 2, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1525265714, 0, 0, 1522933602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, -1, 0, 0, 0, 65, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 25, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, -1, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 99, 100, 0, 1, 1, 0, 0, 0, 1, 0, 4, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-04-02 19:10', 0, 0, 0, 0, 6, 0, 0, '2018-03-27 17:53', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Darius_Minsk', '430D7E1B7455531378F4064DD8032151', -387.086, -1457.29, -36.4071, 1908, 13922020, 200, 7854, 0, 0, 3, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1524864514, 0, 0, 1522575975, 0, 0, 0, 1, 0, 0, 1, 0, 0, 188, -1, 0, 0, 0, 188, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 42, 0, 230, 0, 0, 135, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 30, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 25, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 25, 29, 31, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 472, 490, 0, 0, 0, 0, 0, 10, 1522274783, 0, 8, 0, 0, -1, 0, 1, 0, 0, 0, -1, 1, 1, 0, 0, 62, 0, 226, 0, 0, 0, 99, 0, 0, 1, 1, 2, 133, 0, 1, 0, 1, 60, -1, 0, 54, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-30 15:11', 0, 0, 0, 0, 0, 0, 0, '2018-03-28 19:39', 1522330206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'James_Gibson', '2CE2ABF44251545575E23BA7AA36BB0F', -1995.03, 131.947, 27.5178, 825, 108500, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 1524848799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, -1, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 100, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-28 20:30', 0, 0, 0, 0, 0, 0, 0, '2018-03-28 20:05', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Kalcor_Developer', '0E60D427634C8E9334846D011F9CF821', -2009.41, 164.403, 27.5391, 102, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188, -1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-29 19:32', 0, 0, 0, 0, 0, 0, 0, '2018-03-29 19:30', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Augusto_Braga', '75B00367EE034CDBDA477186DBDFBEB3', -1567.89, 706.38, 8.14928, 216, 10685, 0, 390, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1522599238, 0, 0, 0, 0, 0, 0, 0, 0, 11, 188, 127, 0, 0, 10, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 42, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 99, 43, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-30 19:40', 0, 0, 0, 0, 0, 0, 0, '2018-03-29 18:36', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Louis_Angelini', 'F54C61A8478C1C8247D5F702152EC3EB', -1989.2, 157.46, 27.7268, 100, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-30 18:38', 0, 0, 0, 0, 0, 0, 0, '2018-03-30 18:36', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'Rokas_Kviestas', '75B00367EE034CDBDA477186DBDFBEB3', -2012.96, 157.874, 28.3583, 100, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-03-30 19:17', 0, 0, 0, 0, 0, 0, 0, '2018-03-30 19:17', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'Maska_Samp', 'D1F23AF5082D47BCABBF31F84A21F549', -1992.24, 121.257, 27.7168, 100, 8000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 188, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '2018-04-02 15:47', 0, 0, 0, 0, 0, 0, 0, '2018-04-02 15:47', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rangai`
--

CREATE TABLE IF NOT EXISTS `rangai` (
  `RKint` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `RPavadinimas` varchar(24) NOT NULL,
  `RSkin` int(11) NOT NULL,
  `RMasina` int(11) NOT NULL,
  `RMasina1` int(11) NOT NULL,
  `RMasina2` int(11) NOT NULL,
  `RMasina3` int(11) NOT NULL,
  `RMasina4` int(11) NOT NULL,
  `Zenklas` int(11) NOT NULL,
  `RMasina5` int(11) NOT NULL,
  `RMasina6` int(11) NOT NULL,
  `RMasina7` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rangai`
--

INSERT INTO `rangai` (`RKint`, `RID`, `RPavadinimas`, `RSkin`, `RMasina`, `RMasina1`, `RMasina2`, `RMasina3`, `RMasina4`, `Zenklas`, `RMasina5`, `RMasina6`, `RMasina7`) VALUES
(1, 0, 'Pareigunas', 0, 420, 0, 523, 0, 497, 0, 415, 560, 0),
(1, 1, 'Vyr.Pareigûnas', 267, 597, 599, 523, 411, 497, 0, 415, 560, 0),
(1, 2, 'Inspektorius', 265, 420, 599, 523, 0, 497, 0, 415, 0, 0),
(1, 3, '• CÞV • agentas', 166, 420, 599, 523, 411, 497, 0, 415, 560, 0),
(2, 0, 'Rezidentas', 274, 416, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 'Karo medikas', 275, 416, 490, 417, 0, 0, 0, 0, 0, 0),
(2, 2, 'Daktaras', 276, 416, 490, 417, 0, 0, 0, 0, 0, 0),
(2, 3, 'Vyr. Medikas', 70, 416, 490, 417, 0, 0, 0, 0, 0, 0),
(13, 0, 'Naujokas', 255, 420, 438, 560, 0, 0, 0, 0, 0, 0),
(13, 1, 'Patyræs', 171, 420, 438, 560, 0, 0, 0, 0, 0, 0),
(13, 2, 'Duðmanas', 147, 420, 438, 560, 0, 0, 0, 0, 0, 0),
(13, 3, 'Valdþia.', 147, 420, 438, 560, 0, 0, 0, 0, 0, 0),
(4, 0, 'Praktikantas', 8, 525, 600, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 'Patyræs', 268, 525, 600, 0, 0, 0, 0, 0, 0, 0),
(4, 2, 'Ryèka', 268, 525, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 3, 'Kostë', 50, 525, 600, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 'Eilinis', 285, 475, 482, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 'Kapralas', 285, 475, 482, 0, 0, 0, 0, 0, 0, 0),
(5, 2, 'Majoras', 285, 475, 482, 0, 0, 0, 0, 0, 0, 0),
(5, 3, 'Pulkininkas', 286, 475, 482, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 'Praktikantas (1)', 128, 443, 0, 515, 403, 0, 0, 0, 0, 0),
(11, 1, 'Patyræs (2)', 133, 443, 514, 515, 0, 0, 0, 0, 0, 0),
(11, 2, 'Numylëtinis (3)', 125, 443, 514, 515, 0, 0, 0, 0, 0, 0),
(11, 3, 'Valdþia (4)', 127, 443, 0, 515, 0, 0, 0, 0, 0, 0),
(8, 0, 'Piristukinas', 117, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 1, 'Valerka', 111, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 2, 'Baryga', 124, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 3, 'Tëvas', 113, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 'Pasiuntinukas', 123, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 1, 'Gaujinis', 112, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 2, 'Krikstatevis', 294, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 3, 'Valdzia', 123, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 0, 'ALPHA', 285, 0, 0, 497, 528, 0, 0, 0, 482, 0),
(14, 1, 'BETA', 285, 0, 0, 497, 528, 0, 0, 490, 482, 0),
(14, 2, 'GAMA', 163, 0, 0, 0, 0, 427, 0, 490, 482, 528),
(14, 3, 'DELTA', 286, 0, 528, 497, 427, 402, 0, 490, 482, 0),
(1, 4, 'Generalinis Komisaras', 283, 597, 599, 523, 411, 497, 0, 415, 560, 522);

-- --------------------------------------------------------

--
-- Table structure for table `rekordoinfo`
--

CREATE TABLE IF NOT EXISTS `rekordoinfo` (
  `Rekordas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekordoinfo`
--

INSERT INTO `rekordoinfo` (`Rekordas`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `sandeliai`
--

CREATE TABLE IF NOT EXISTS `sandeliai` (
  `Shotgun` int(11) NOT NULL,
  `Ak47` int(11) NOT NULL,
  `Deagle` int(11) NOT NULL,
  `Heroine` int(11) NOT NULL,
  `Weed` int(11) NOT NULL,
  `Cocaine` int(11) NOT NULL,
  `Ekstazi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sandeliai`
--

INSERT INTO `sandeliai` (`Shotgun`, `Ak47`, `Deagle`, `Heroine`, `Weed`, `Cocaine`, `Ekstazi`) VALUES
(1622, 1687, 1533, 1000, 1000, 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sinfo`
--

CREATE TABLE IF NOT EXISTS `sinfo` (
  `AdminFondas` int(11) NOT NULL,
  `PolicijosPelnas` int(11) NOT NULL,
  `MechanikuPelnas` int(11) NOT NULL,
  `DyleriuPelnas` int(11) NOT NULL,
  `TaksistuPelnas` int(11) NOT NULL,
  `MedikuPelnas` int(11) NOT NULL,
  `ArmijaPelnas` int(11) NOT NULL,
  `GenovesePelnas` int(11) NOT NULL,
  `BrigadaPelnas` int(11) NOT NULL,
  `FuristuPelnas` int(11) NOT NULL,
  `RadistuPelnas` int(11) NOT NULL,
  `PolicijosBananai` int(11) NOT NULL,
  `PolicijosDeagle` int(11) NOT NULL,
  `PolicijosShotgun` int(11) NOT NULL,
  `PolicijosMP5` int(11) NOT NULL,
  `PolicijosM4` int(11) NOT NULL,
  `Navigacijos` int(11) NOT NULL,
  `Fotikai` int(11) NOT NULL,
  `Laikrodziai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sinfo`
--

INSERT INTO `sinfo` (`AdminFondas`, `PolicijosPelnas`, `MechanikuPelnas`, `DyleriuPelnas`, `TaksistuPelnas`, `MedikuPelnas`, `ArmijaPelnas`, `GenovesePelnas`, `BrigadaPelnas`, `FuristuPelnas`, `RadistuPelnas`, `PolicijosBananai`, `PolicijosDeagle`, `PolicijosShotgun`, `PolicijosMP5`, `PolicijosM4`, `Navigacijos`, `Fotikai`, `Laikrodziai`) VALUES
(5000151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles1`
--

CREATE TABLE IF NOT EXISTS `vehicles1` (
  `Transportas` varchar(24) NOT NULL,
  `Model` int(3) NOT NULL,
  `Pos_X` float NOT NULL,
  `Pos_Y` float NOT NULL,
  `Pos_Z` float NOT NULL,
  `Pos_A` float NOT NULL,
  `Rida` float NOT NULL,
  `FuelType` int(11) NOT NULL,
  `Fuel` float NOT NULL,
  `Color1` int(3) NOT NULL,
  `Color2` int(3) NOT NULL,
  `Paintjob` int(5) NOT NULL,
  `Tune0` int(11) NOT NULL,
  `Tune1` int(11) NOT NULL,
  `Tune2` int(11) NOT NULL,
  `Tune3` int(11) NOT NULL,
  `Tune4` int(11) NOT NULL,
  `Tune5` int(11) NOT NULL,
  `Tune6` int(11) NOT NULL,
  `Tune7` int(11) NOT NULL,
  `Tune8` int(11) NOT NULL,
  `Tune9` int(11) NOT NULL,
  `Tune10` int(11) NOT NULL,
  `Tune11` int(11) NOT NULL,
  `Tune12` int(11) NOT NULL,
  `Locked` int(2) NOT NULL,
  `NumberPlate` varchar(15) NOT NULL,
  `Sprogusi` int(2) NOT NULL,
  `Data` varchar(32) NOT NULL,
  `Kaina` int(11) NOT NULL,
  `vBakas` float NOT NULL,
  `vSanaudos` float NOT NULL,
  `vDujos` int(11) NOT NULL,
  `vIjungta` int(11) NOT NULL,
  `vDujuLikutis` float NOT NULL,
  `vDujuBakas` float NOT NULL,
  `vTA` int(11) NOT NULL,
  `IsInGarage` int(1) NOT NULL,
  `Draudimas` int(11) NOT NULL,
  `vTrunkItem_0` int(11) NOT NULL,
  `vTrunkAmmount_0` int(11) NOT NULL,
  `vTrunkItem_1` int(11) NOT NULL,
  `vTrunkAmmount_1` int(11) NOT NULL,
  `vTrunkItem_2` int(11) NOT NULL,
  `vTrunkAmmount_2` int(11) NOT NULL,
  `vTrunkItem_3` int(11) NOT NULL,
  `vTrunkAmmount_3` int(11) NOT NULL,
  `vTrunkItem_4` int(11) NOT NULL,
  `vTrunkAmmount_4` int(11) NOT NULL,
  `vTrunkItem_5` int(11) NOT NULL,
  `vTrunkAmmount_5` int(11) NOT NULL,
  `vTrunkItem_6` int(11) NOT NULL,
  `vTrunkAmmount_6` int(11) NOT NULL,
  `vTrunkItem_7` int(11) NOT NULL,
  `vTrunkAmmount_7` int(11) NOT NULL,
  `vTrunkItem_8` int(11) NOT NULL,
  `vTrunkAmmount_8` int(11) NOT NULL,
  `vTrunkItem_9` int(11) NOT NULL,
  `vTrunkAmmount_9` int(11) NOT NULL,
  `vTrunkItem_10` int(11) NOT NULL,
  `vTrunkAmmount_10` int(11) NOT NULL,
  `vTrunkItem_11` int(11) NOT NULL,
  `vTrunkAmmount_11` int(11) NOT NULL,
  `vTrunkItem_12` int(11) NOT NULL,
  `vTrunkAmmount_12` int(11) NOT NULL,
  `vTrunkItem_13` int(11) NOT NULL,
  `vTrunkAmmount_13` int(11) NOT NULL,
  `vTrunkItem_14` int(11) NOT NULL,
  `vTrunkAmmount_14` int(11) NOT NULL,
  `vTrunkItem_15` int(11) NOT NULL,
  `vTrunkAmmount_15` int(11) NOT NULL,
  `vTrunkItem_16` int(11) NOT NULL,
  `vTrunkAmmount_16` int(11) NOT NULL,
  `vTrunkItem_17` int(11) NOT NULL,
  `vTrunkAmmount_17` int(11) NOT NULL,
  `vTrunkItem_18` int(11) NOT NULL,
  `vTrunkAmmount_18` int(11) NOT NULL,
  `vTrunkItem_19` int(11) NOT NULL,
  `vTrunkAmmount_19` int(11) NOT NULL,
  `vVW` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles1`
--

INSERT INTO `vehicles1` (`Transportas`, `Model`, `Pos_X`, `Pos_Y`, `Pos_Z`, `Pos_A`, `Rida`, `FuelType`, `Fuel`, `Color1`, `Color2`, `Paintjob`, `Tune0`, `Tune1`, `Tune2`, `Tune3`, `Tune4`, `Tune5`, `Tune6`, `Tune7`, `Tune8`, `Tune9`, `Tune10`, `Tune11`, `Tune12`, `Locked`, `NumberPlate`, `Sprogusi`, `Data`, `Kaina`, `vBakas`, `vSanaudos`, `vDujos`, `vIjungta`, `vDujuLikutis`, `vDujuBakas`, `vTA`, `IsInGarage`, `Draudimas`, `vTrunkItem_0`, `vTrunkAmmount_0`, `vTrunkItem_1`, `vTrunkAmmount_1`, `vTrunkItem_2`, `vTrunkAmmount_2`, `vTrunkItem_3`, `vTrunkAmmount_3`, `vTrunkItem_4`, `vTrunkAmmount_4`, `vTrunkItem_5`, `vTrunkAmmount_5`, `vTrunkItem_6`, `vTrunkAmmount_6`, `vTrunkItem_7`, `vTrunkAmmount_7`, `vTrunkItem_8`, `vTrunkAmmount_8`, `vTrunkItem_9`, `vTrunkAmmount_9`, `vTrunkItem_10`, `vTrunkAmmount_10`, `vTrunkItem_11`, `vTrunkAmmount_11`, `vTrunkItem_12`, `vTrunkAmmount_12`, `vTrunkItem_13`, `vTrunkAmmount_13`, `vTrunkItem_14`, `vTrunkAmmount_14`, `vTrunkItem_15`, `vTrunkAmmount_15`, `vTrunkItem_16`, `vTrunkAmmount_16`, `vTrunkItem_17`, `vTrunkAmmount_17`, `vTrunkItem_18`, `vTrunkAmmount_18`, `vTrunkItem_19`, `vTrunkAmmount_19`, `vVW`) VALUES
('Domka_Quattro', 562, -1994.61, 192.201, 27.5379, 268.452, 87.3895, 0, 32.2587, 23, 38, -1, 0, 0, 0, 0, 0, 1010, 0, 0, 0, 1087, 0, 0, 0, 0, 'LRW:599', 0, '2018-03-29 19:12', 230000, 53.7, 2.2, 0, 0, 0, 0, 1522945026, 0, 1522599380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Sumiyoshi_Kai', 402, 0, 0, -23.7048, 270, 0, 0, 35.1, 67, 16, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Neregistruota', 0, '2018-03-29 19:20', 150000, 74.8, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('Maska_Savas', 415, -1620.04, 720.185, 14.2296, 266.363, 8.63598, 0, 55.8, 87, 98, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Neregistruota', 0, '2018-04-02 16:39', 110000, 55.8, 2.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles2`
--

CREATE TABLE IF NOT EXISTS `vehicles2` (
  `Transportas` varchar(24) NOT NULL,
  `Model` int(3) NOT NULL,
  `Pos_X` float NOT NULL,
  `Pos_Y` float NOT NULL,
  `Pos_Z` float NOT NULL,
  `Pos_A` float NOT NULL,
  `Rida` float NOT NULL,
  `FuelType` int(11) NOT NULL,
  `Fuel` float NOT NULL,
  `Color1` int(3) NOT NULL,
  `Color2` int(3) NOT NULL,
  `Paintjob` int(5) NOT NULL,
  `Tune0` int(11) NOT NULL,
  `Tune1` int(11) NOT NULL,
  `Tune2` int(11) NOT NULL,
  `Tune3` int(11) NOT NULL,
  `Tune4` int(11) NOT NULL,
  `Tune5` int(11) NOT NULL,
  `Tune6` int(11) NOT NULL,
  `Tune7` int(11) NOT NULL,
  `Tune8` int(11) NOT NULL,
  `Tune9` int(11) NOT NULL,
  `Tune10` int(11) NOT NULL,
  `Tune11` int(11) NOT NULL,
  `Tune12` int(11) NOT NULL,
  `Locked` int(2) NOT NULL,
  `NumberPlate` varchar(15) NOT NULL,
  `Sprogusi` int(2) NOT NULL,
  `Data` varchar(32) NOT NULL,
  `Kaina` int(11) NOT NULL,
  `vBakas` float NOT NULL,
  `vSanaudos` float NOT NULL,
  `vDujos` int(11) NOT NULL,
  `vIjungta` int(11) NOT NULL,
  `vDujuLikutis` float NOT NULL,
  `vDujuBakas` float NOT NULL,
  `vTA` int(11) NOT NULL,
  `IsInGarage` int(1) NOT NULL,
  `Draudimas` int(11) NOT NULL,
  `vTrunkItem_0` int(11) NOT NULL,
  `vTrunkAmmount_0` int(11) NOT NULL,
  `vTrunkItem_1` int(11) NOT NULL,
  `vTrunkAmmount_1` int(11) NOT NULL,
  `vTrunkItem_2` int(11) NOT NULL,
  `vTrunkAmmount_2` int(11) NOT NULL,
  `vTrunkItem_3` int(11) NOT NULL,
  `vTrunkAmmount_3` int(11) NOT NULL,
  `vTrunkItem_4` int(11) NOT NULL,
  `vTrunkAmmount_4` int(11) NOT NULL,
  `vTrunkItem_5` int(11) NOT NULL,
  `vTrunkAmmount_5` int(11) NOT NULL,
  `vTrunkItem_6` int(11) NOT NULL,
  `vTrunkAmmount_6` int(11) NOT NULL,
  `vTrunkItem_7` int(11) NOT NULL,
  `vTrunkAmmount_7` int(11) NOT NULL,
  `vTrunkItem_8` int(11) NOT NULL,
  `vTrunkAmmount_8` int(11) NOT NULL,
  `vTrunkItem_9` int(11) NOT NULL,
  `vTrunkAmmount_9` int(11) NOT NULL,
  `vTrunkItem_10` int(11) NOT NULL,
  `vTrunkAmmount_10` int(11) NOT NULL,
  `vTrunkItem_11` int(11) NOT NULL,
  `vTrunkAmmount_11` int(11) NOT NULL,
  `vTrunkItem_12` int(11) NOT NULL,
  `vTrunkAmmount_12` int(11) NOT NULL,
  `vTrunkItem_13` int(11) NOT NULL,
  `vTrunkAmmount_13` int(11) NOT NULL,
  `vTrunkItem_14` int(11) NOT NULL,
  `vTrunkAmmount_14` int(11) NOT NULL,
  `vTrunkItem_15` int(11) NOT NULL,
  `vTrunkAmmount_15` int(11) NOT NULL,
  `vTrunkItem_16` int(11) NOT NULL,
  `vTrunkAmmount_16` int(11) NOT NULL,
  `vTrunkItem_17` int(11) NOT NULL,
  `vTrunkAmmount_17` int(11) NOT NULL,
  `vTrunkItem_18` int(11) NOT NULL,
  `vTrunkAmmount_18` int(11) NOT NULL,
  `vTrunkItem_19` int(11) NOT NULL,
  `vTrunkAmmount_19` int(11) NOT NULL,
  `vVW` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles2`
--

INSERT INTO `vehicles2` (`Transportas`, `Model`, `Pos_X`, `Pos_Y`, `Pos_Z`, `Pos_A`, `Rida`, `FuelType`, `Fuel`, `Color1`, `Color2`, `Paintjob`, `Tune0`, `Tune1`, `Tune2`, `Tune3`, `Tune4`, `Tune5`, `Tune6`, `Tune7`, `Tune8`, `Tune9`, `Tune10`, `Tune11`, `Tune12`, `Locked`, `NumberPlate`, `Sprogusi`, `Data`, `Kaina`, `vBakas`, `vSanaudos`, `vDujos`, `vIjungta`, `vDujuLikutis`, `vDujuBakas`, `vTA`, `IsInGarage`, `Draudimas`, `vTrunkItem_0`, `vTrunkAmmount_0`, `vTrunkItem_1`, `vTrunkAmmount_1`, `vTrunkItem_2`, `vTrunkAmmount_2`, `vTrunkItem_3`, `vTrunkAmmount_3`, `vTrunkItem_4`, `vTrunkAmmount_4`, `vTrunkItem_5`, `vTrunkAmmount_5`, `vTrunkItem_6`, `vTrunkAmmount_6`, `vTrunkItem_7`, `vTrunkAmmount_7`, `vTrunkItem_8`, `vTrunkAmmount_8`, `vTrunkItem_9`, `vTrunkAmmount_9`, `vTrunkItem_10`, `vTrunkAmmount_10`, `vTrunkItem_11`, `vTrunkAmmount_11`, `vTrunkItem_12`, `vTrunkAmmount_12`, `vTrunkItem_13`, `vTrunkAmmount_13`, `vTrunkItem_14`, `vTrunkAmmount_14`, `vTrunkItem_15`, `vTrunkAmmount_15`, `vTrunkItem_16`, `vTrunkAmmount_16`, `vTrunkItem_17`, `vTrunkAmmount_17`, `vTrunkItem_18`, `vTrunkAmmount_18`, `vTrunkItem_19`, `vTrunkAmmount_19`, `vVW`) VALUES
('Sumiyoshi_Kai', 402, -2052.8, -70.2565, 35.0001, 92.0586, 0.754525, 0, 48.4, 115, 93, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'Neregistruota', 0, '2018-03-29 19:21', 150000, 59.7, 1.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles3`
--

CREATE TABLE IF NOT EXISTS `vehicles3` (
  `Transportas` varchar(24) NOT NULL,
  `Model` int(3) NOT NULL,
  `Pos_X` float NOT NULL,
  `Pos_Y` float NOT NULL,
  `Pos_Z` float NOT NULL,
  `Pos_A` float NOT NULL,
  `Rida` float NOT NULL,
  `FuelType` int(11) NOT NULL,
  `Fuel` float NOT NULL,
  `Color1` int(3) NOT NULL,
  `Color2` int(3) NOT NULL,
  `Paintjob` int(5) NOT NULL,
  `Tune0` int(11) NOT NULL,
  `Tune1` int(11) NOT NULL,
  `Tune2` int(11) NOT NULL,
  `Tune3` int(11) NOT NULL,
  `Tune4` int(11) NOT NULL,
  `Tune5` int(11) NOT NULL,
  `Tune6` int(11) NOT NULL,
  `Tune7` int(11) NOT NULL,
  `Tune8` int(11) NOT NULL,
  `Tune9` int(11) NOT NULL,
  `Tune10` int(11) NOT NULL,
  `Tune11` int(11) NOT NULL,
  `Tune12` int(11) NOT NULL,
  `Locked` int(2) NOT NULL,
  `NumberPlate` varchar(15) NOT NULL,
  `Sprogusi` int(2) NOT NULL,
  `Data` varchar(32) NOT NULL,
  `Kaina` int(11) NOT NULL,
  `vBakas` float NOT NULL,
  `vSanaudos` float NOT NULL,
  `vDujos` int(11) NOT NULL,
  `vIjungta` int(11) NOT NULL,
  `vDujuLikutis` float NOT NULL,
  `vDujuBakas` float NOT NULL,
  `vTA` int(11) NOT NULL,
  `IsInGarage` int(1) NOT NULL,
  `Draudimas` int(11) NOT NULL,
  `vTrunkItem_0` int(11) NOT NULL,
  `vTrunkAmmount_0` int(11) NOT NULL,
  `vTrunkItem_1` int(11) NOT NULL,
  `vTrunkAmmount_1` int(11) NOT NULL,
  `vTrunkItem_2` int(11) NOT NULL,
  `vTrunkAmmount_2` int(11) NOT NULL,
  `vTrunkItem_3` int(11) NOT NULL,
  `vTrunkAmmount_3` int(11) NOT NULL,
  `vTrunkItem_4` int(11) NOT NULL,
  `vTrunkAmmount_4` int(11) NOT NULL,
  `vTrunkItem_5` int(11) NOT NULL,
  `vTrunkAmmount_5` int(11) NOT NULL,
  `vTrunkItem_6` int(11) NOT NULL,
  `vTrunkAmmount_6` int(11) NOT NULL,
  `vTrunkItem_7` int(11) NOT NULL,
  `vTrunkAmmount_7` int(11) NOT NULL,
  `vTrunkItem_8` int(11) NOT NULL,
  `vTrunkAmmount_8` int(11) NOT NULL,
  `vTrunkItem_9` int(11) NOT NULL,
  `vTrunkAmmount_9` int(11) NOT NULL,
  `vTrunkItem_10` int(11) NOT NULL,
  `vTrunkAmmount_10` int(11) NOT NULL,
  `vTrunkItem_11` int(11) NOT NULL,
  `vTrunkAmmount_11` int(11) NOT NULL,
  `vTrunkItem_12` int(11) NOT NULL,
  `vTrunkAmmount_12` int(11) NOT NULL,
  `vTrunkItem_13` int(11) NOT NULL,
  `vTrunkAmmount_13` int(11) NOT NULL,
  `vTrunkItem_14` int(11) NOT NULL,
  `vTrunkAmmount_14` int(11) NOT NULL,
  `vTrunkItem_15` int(11) NOT NULL,
  `vTrunkAmmount_15` int(11) NOT NULL,
  `vTrunkItem_16` int(11) NOT NULL,
  `vTrunkAmmount_16` int(11) NOT NULL,
  `vTrunkItem_17` int(11) NOT NULL,
  `vTrunkAmmount_17` int(11) NOT NULL,
  `vTrunkItem_18` int(11) NOT NULL,
  `vTrunkAmmount_18` int(11) NOT NULL,
  `vTrunkItem_19` int(11) NOT NULL,
  `vTrunkAmmount_19` int(11) NOT NULL,
  `vVW` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verslai`
--

CREATE TABLE IF NOT EXISTS `verslai` (
  `ID` int(4) NOT NULL,
  `pBuyed` int(1) NOT NULL,
  `pOwner` varchar(20) NOT NULL,
  `pTitle` varchar(64) NOT NULL,
  `pPrice` int(11) NOT NULL,
  `pProfit` int(11) NOT NULL,
  `pEarning` int(11) NOT NULL,
  `pPos_X` float NOT NULL,
  `pPos_Y` float NOT NULL,
  `pPos_Z` float NOT NULL,
  `Data` varchar(32) NOT NULL,
  `pPelnas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verslai`
--

INSERT INTO `verslai` (`ID`, `pBuyed`, `pOwner`, `pTitle`, `pPrice`, `pProfit`, `pEarning`, `pPos_X`, `pPos_Y`, `pPos_Z`, `Data`, `pPelnas`) VALUES
(0, 1, 'Domka_Quattro', 'El.Parduotuvë', 260341, 4476, 137, -1968.2, 451.533, 35.1708, '2018-03-30 19:40', 0),
(1, 0, 'Nera', 'D.Parduotuvë', 255388, 0, 36, -1968.13, 436.556, 35.1709, '', 0),
(2, 0, 'Nera', 'M.Parduotuvë', 131448, 0, 18, -1967.99, 420.312, 35.1709, '', 0),
(3, 0, 'Nera', 'Savivaldybë', 272900, 0, 38, -2030.55, 433.275, 35.2129, '', 0),
(4, 0, 'Nera', 'Parduotuvë "AUÐRA"', 212807, 0, 30, -2035.85, 422.52, 35.2159, '', 0),
(5, 0, 'Nera', '"OPTIKA"', 200031, 0, 28, -2055.8, 406.982, 35.2159, '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
