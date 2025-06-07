-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2025 at 01:04 PM
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
-- Database: `historyofpakistan`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrativeterm`
--

CREATE TABLE `administrativeterm` (
  `AdministrativeTermid` int(11) NOT NULL,
  `Assemblyterm` varchar(100) DEFAULT NULL,
  `Governmentlevel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrativeterm`
--

INSERT INTO `administrativeterm` (`AdministrativeTermid`, `Assemblyterm`, `Governmentlevel`) VALUES
(1, 'First Constituent Assembly (1947-1954)', 'Federal'),
(2, 'Second Constituent Assembly (1955-1956)', 'Federal'),
(3, 'First National Assembly (1972-1977)', 'Federal'),
(4, 'Second National Assembly (1985-1988)', 'Federal'),
(5, 'Third National Assembly (1988-1990)', 'Federal'),
(6, 'Fourth National Assembly (1990-1993)', 'Federal'),
(7, 'Fifth National Assembly (1993-1997)', 'Federal'),
(8, 'Sixth National Assembly (1997-1999)', 'Federal'),
(9, 'Seventh National Assembly (2002-2007)', 'Federal'),
(10, 'Eighth National Assembly (2008-2013)', 'Federal'),
(11, 'Ninth National Assembly (2013-2018)', 'Federal'),
(12, 'Tenth National Assembly (2018-2023)', 'Federal'),
(13, 'Eleventh National Assembly (2024-2029)', 'Federal'),
(14, 'First Senate (1973-1976)', 'Federal'),
(15, 'Second Senate (1976-1979)', 'Federal'),
(16, 'Third Senate (1979-1982)', 'Federal'),
(17, 'Fourth Senate (1982-1985)', 'Federal'),
(18, 'Fifth Senate (1985-1988)', 'Federal'),
(19, 'Sixth Senate (1988-1991)', 'Federal'),
(20, 'Seventh Senate (1991-1994)', 'Federal'),
(21, 'Eighth Senate (1994-1997)', 'Federal'),
(22, 'Ninth Senate (1997-2000)', 'Federal'),
(23, 'Tenth Senate (2000-2003)', 'Federal'),
(24, 'Eleventh Senate (2003-2006)', 'Federal'),
(25, 'Twelfth Senate (2006-2009)', 'Federal'),
(26, 'Thirteenth Senate (2009-2012)', 'Federal'),
(27, 'Fourteenth Senate (2012-2015)', 'Federal'),
(28, 'Fifteenth Senate (2015-2018)', 'Federal'),
(29, 'Sixteenth Senate (2018-2021)', 'Federal'),
(30, 'Seventeenth Senate (2021-2024)', 'Federal'),
(31, 'Eighteenth Senate (2024-2027)', 'Federal'),
(32, 'Punjab Provincial Assembly 1970-1977', 'Provincial'),
(33, 'Punjab Provincial Assembly 1985-1988', 'Provincial'),
(34, 'Punjab Provincial Assembly 1988-1990', 'Provincial'),
(35, 'Punjab Provincial Assembly 1990-1993', 'Provincial'),
(36, 'Punjab Provincial Assembly 1993-1997', 'Provincial'),
(37, 'Punjab Provincial Assembly 1997-1999', 'Provincial'),
(38, 'Punjab Provincial Assembly 2002-2007', 'Provincial'),
(39, 'Punjab Provincial Assembly 2008-2013', 'Provincial'),
(40, 'Punjab Provincial Assembly 2013-2018', 'Provincial'),
(41, 'Punjab Provincial Assembly 2018-2023', 'Provincial'),
(42, 'Punjab Provincial Assembly 2024-2029', 'Provincial'),
(43, 'Sindh Provincial Assembly 1970-1977', 'Provincial'),
(44, 'Sindh Provincial Assembly 1985-1988', 'Provincial'),
(45, 'Sindh Provincial Assembly 1988-1990', 'Provincial'),
(46, 'Sindh Provincial Assembly 1990-1993', 'Provincial'),
(47, 'Sindh Provincial Assembly 1993-1997', 'Provincial'),
(48, 'Sindh Provincial Assembly 1997-1999', 'Provincial'),
(49, 'Sindh Provincial Assembly 2002-2007', 'Provincial'),
(50, 'Sindh Provincial Assembly 2008-2013', 'Provincial'),
(51, 'Sindh Provincial Assembly 2013-2018', 'Provincial'),
(52, 'Sindh Provincial Assembly 2018-2023', 'Provincial'),
(53, 'Sindh Provincial Assembly 2024-2029', 'Provincial'),
(54, 'NWFP Provincial Assembly 1970-1977', 'Provincial'),
(55, 'NWFP Provincial Assembly 1985-1988', 'Provincial'),
(56, 'NWFP Provincial Assembly 1988-1990', 'Provincial'),
(57, 'NWFP Provincial Assembly 1990-1993', 'Provincial'),
(58, 'NWFP Provincial Assembly 1993-1997', 'Provincial'),
(59, 'NWFP Provincial Assembly 1997-1999', 'Provincial'),
(60, 'NWFP Provincial Assembly 2002-2007', 'Provincial'),
(61, 'Khyber Pakhtunkhwa Provincial Assembly 2008-2013', 'Provincial'),
(62, 'Khyber Pakhtunkhwa Provincial Assembly 2013-2018', 'Provincial'),
(63, 'Khyber Pakhtunkhwa Provincial Assembly 2018-2023', 'Provincial'),
(64, 'Khyber Pakhtunkhwa Provincial Assembly 2024-2029', 'Provincial'),
(65, 'Balochistan Provincial Assembly 1970-1977', 'Provincial'),
(66, 'Balochistan Provincial Assembly 1985-1988', 'Provincial'),
(67, 'Balochistan Provincial Assembly 1988-1990', 'Provincial'),
(68, 'Balochistan Provincial Assembly 1990-1993', 'Provincial'),
(69, 'Balochistan Provincial Assembly 1993-1997', 'Provincial'),
(70, 'Balochistan Provincial Assembly 1997-1999', 'Provincial'),
(71, 'Balochistan Provincial Assembly 2002-2007', 'Provincial'),
(72, 'Balochistan Provincial Assembly 2008-2013', 'Provincial'),
(73, 'Balochistan Provincial Assembly 2013-2018', 'Provincial'),
(74, 'Balochistan Provincial Assembly 2018-2023', 'Provincial'),
(75, 'Balochistan Provincial Assembly 2024-2029', 'Provincial'),
(76, 'East Pakistan Provincial Assembly 1970-1971', 'Provincial'),
(77, 'First Constituent Assembly (1947-1954)', 'Federal'),
(78, 'Second Constituent Assembly (1955-1956)', 'Federal'),
(79, 'First National Assembly (1972-1977)', 'Federal'),
(80, 'Second National Assembly (1985-1988)', 'Federal'),
(81, 'Third National Assembly (1988-1990)', 'Federal'),
(82, 'Fourth National Assembly (1990-1993)', 'Federal'),
(83, 'Fifth National Assembly (1993-1997)', 'Federal'),
(84, 'Sixth National Assembly (1997-1999)', 'Federal'),
(85, 'Seventh National Assembly (2002-2007)', 'Federal'),
(86, 'Eighth National Assembly (2008-2013)', 'Federal'),
(87, 'Ninth National Assembly (2013-2018)', 'Federal'),
(88, 'Tenth National Assembly (2018-2023)', 'Federal'),
(89, 'Eleventh National Assembly (2024-2029)', 'Federal'),
(90, 'First Senate (1973-1976)', 'Federal'),
(91, 'Second Senate (1976-1979)', 'Federal'),
(92, 'Third Senate (1979-1982)', 'Federal'),
(93, 'Fourth Senate (1982-1985)', 'Federal'),
(94, 'Fifth Senate (1985-1988)', 'Federal'),
(95, 'Sixth Senate (1988-1991)', 'Federal'),
(96, 'Seventh Senate (1991-1994)', 'Federal'),
(97, 'Eighth Senate (1994-1997)', 'Federal'),
(98, 'Ninth Senate (1997-2000)', 'Federal'),
(99, 'Tenth Senate (2000-2003)', 'Federal'),
(100, 'Eleventh Senate (2003-2006)', 'Federal'),
(101, 'Twelfth Senate (2006-2009)', 'Federal'),
(102, 'Thirteenth Senate (2009-2012)', 'Federal'),
(103, 'Fourteenth Senate (2012-2015)', 'Federal'),
(104, 'Fifteenth Senate (2015-2018)', 'Federal'),
(105, 'Sixteenth Senate (2018-2021)', 'Federal'),
(106, 'Seventeenth Senate (2021-2024)', 'Federal'),
(107, 'Eighteenth Senate (2024-2027)', 'Federal'),
(108, 'Punjab Provincial Assembly 1970-1977', 'Provincial'),
(109, 'Punjab Provincial Assembly 1985-1988', 'Provincial'),
(110, 'Punjab Provincial Assembly 1988-1990', 'Provincial'),
(111, 'Punjab Provincial Assembly 1990-1993', 'Provincial'),
(112, 'Punjab Provincial Assembly 1993-1997', 'Provincial'),
(113, 'Punjab Provincial Assembly 1997-1999', 'Provincial'),
(114, 'Punjab Provincial Assembly 2002-2007', 'Provincial'),
(115, 'Punjab Provincial Assembly 2008-2013', 'Provincial'),
(116, 'Punjab Provincial Assembly 2013-2018', 'Provincial'),
(117, 'Punjab Provincial Assembly 2018-2023', 'Provincial'),
(118, 'Punjab Provincial Assembly 2024-2029', 'Provincial'),
(119, 'Sindh Provincial Assembly 1970-1977', 'Provincial'),
(120, 'Sindh Provincial Assembly 1985-1988', 'Provincial'),
(121, 'Sindh Provincial Assembly 1988-1990', 'Provincial'),
(122, 'Sindh Provincial Assembly 1990-1993', 'Provincial'),
(123, 'Sindh Provincial Assembly 1993-1997', 'Provincial'),
(124, 'Sindh Provincial Assembly 1997-1999', 'Provincial'),
(125, 'Sindh Provincial Assembly 2002-2007', 'Provincial'),
(126, 'Sindh Provincial Assembly 2008-2013', 'Provincial'),
(127, 'Sindh Provincial Assembly 2013-2018', 'Provincial'),
(128, 'Sindh Provincial Assembly 2018-2023', 'Provincial'),
(129, 'Sindh Provincial Assembly 2024-2029', 'Provincial'),
(130, 'NWFP Provincial Assembly 1970-1977', 'Provincial'),
(131, 'NWFP Provincial Assembly 1985-1988', 'Provincial'),
(132, 'NWFP Provincial Assembly 1988-1990', 'Provincial'),
(133, 'NWFP Provincial Assembly 1990-1993', 'Provincial'),
(134, 'NWFP Provincial Assembly 1993-1997', 'Provincial'),
(135, 'NWFP Provincial Assembly 1997-1999', 'Provincial'),
(136, 'NWFP Provincial Assembly 2002-2007', 'Provincial'),
(137, 'Khyber Pakhtunkhwa Provincial Assembly 2008-2013', 'Provincial'),
(138, 'Khyber Pakhtunkhwa Provincial Assembly 2013-2018', 'Provincial'),
(139, 'Khyber Pakhtunkhwa Provincial Assembly 2018-2023', 'Provincial'),
(140, 'Khyber Pakhtunkhwa Provincial Assembly 2024-2029', 'Provincial'),
(141, 'Balochistan Provincial Assembly 1970-1977', 'Provincial'),
(142, 'Balochistan Provincial Assembly 1985-1988', 'Provincial'),
(143, 'Balochistan Provincial Assembly 1988-1990', 'Provincial'),
(144, 'Balochistan Provincial Assembly 1990-1993', 'Provincial'),
(145, 'Balochistan Provincial Assembly 1993-1997', 'Provincial'),
(146, 'Balochistan Provincial Assembly 1997-1999', 'Provincial'),
(147, 'Balochistan Provincial Assembly 2002-2007', 'Provincial'),
(148, 'Balochistan Provincial Assembly 2008-2013', 'Provincial'),
(149, 'Balochistan Provincial Assembly 2013-2018', 'Provincial'),
(150, 'Balochistan Provincial Assembly 2018-2023', 'Provincial'),
(151, 'Balochistan Provincial Assembly 2024-2029', 'Provincial'),
(152, 'East Pakistan Provincial Assembly 1970-1971', 'Provincial'),
(153, 'First Constituent Assembly (1947-1954)', 'Federal'),
(154, 'Second Constituent Assembly (1955-1956)', 'Federal'),
(155, 'First National Assembly (1972-1977)', 'Federal'),
(156, 'Second National Assembly (1985-1988)', 'Federal'),
(157, 'Third National Assembly (1988-1990)', 'Federal'),
(158, 'Fourth National Assembly (1990-1993)', 'Federal'),
(159, 'Fifth National Assembly (1993-1997)', 'Federal'),
(160, 'Sixth National Assembly (1997-1999)', 'Federal'),
(161, 'Seventh National Assembly (2002-2007)', 'Federal'),
(162, 'Eighth National Assembly (2008-2013)', 'Federal'),
(163, 'Ninth National Assembly (2013-2018)', 'Federal'),
(164, 'Tenth National Assembly (2018-2023)', 'Federal'),
(165, 'Eleventh National Assembly (2024-2029)', 'Federal'),
(166, 'First Senate (1973-1976)', 'Federal'),
(167, 'Second Senate (1976-1979)', 'Federal'),
(168, 'Third Senate (1979-1982)', 'Federal'),
(169, 'Fourth Senate (1982-1985)', 'Federal'),
(170, 'Fifth Senate (1985-1988)', 'Federal'),
(171, 'Sixth Senate (1988-1991)', 'Federal'),
(172, 'Seventh Senate (1991-1994)', 'Federal'),
(173, 'Eighth Senate (1994-1997)', 'Federal'),
(174, 'Ninth Senate (1997-2000)', 'Federal'),
(175, 'Tenth Senate (2000-2003)', 'Federal'),
(176, 'Eleventh Senate (2003-2006)', 'Federal'),
(177, 'Twelfth Senate (2006-2009)', 'Federal'),
(178, 'Thirteenth Senate (2009-2012)', 'Federal'),
(179, 'Fourteenth Senate (2012-2015)', 'Federal'),
(180, 'Fifteenth Senate (2015-2018)', 'Federal'),
(181, 'Sixteenth Senate (2018-2021)', 'Federal'),
(182, 'Seventeenth Senate (2021-2024)', 'Federal'),
(183, 'Eighteenth Senate (2024-2027)', 'Federal'),
(184, 'Punjab Provincial Assembly 1970-1977', 'Provincial'),
(185, 'Punjab Provincial Assembly 1985-1988', 'Provincial'),
(186, 'Punjab Provincial Assembly 1988-1990', 'Provincial'),
(187, 'Punjab Provincial Assembly 1990-1993', 'Provincial'),
(188, 'Punjab Provincial Assembly 1993-1997', 'Provincial'),
(189, 'Punjab Provincial Assembly 1997-1999', 'Provincial'),
(190, 'Punjab Provincial Assembly 2002-2007', 'Provincial'),
(191, 'Punjab Provincial Assembly 2008-2013', 'Provincial'),
(192, 'Punjab Provincial Assembly 2013-2018', 'Provincial'),
(193, 'Punjab Provincial Assembly 2018-2023', 'Provincial'),
(194, 'Punjab Provincial Assembly 2024-2029', 'Provincial'),
(195, 'Sindh Provincial Assembly 1970-1977', 'Provincial'),
(196, 'Sindh Provincial Assembly 1985-1988', 'Provincial'),
(197, 'Sindh Provincial Assembly 1988-1990', 'Provincial'),
(198, 'Sindh Provincial Assembly 1990-1993', 'Provincial'),
(199, 'Sindh Provincial Assembly 1993-1997', 'Provincial'),
(200, 'Sindh Provincial Assembly 1997-1999', 'Provincial'),
(201, 'Sindh Provincial Assembly 2002-2007', 'Provincial'),
(202, 'Sindh Provincial Assembly 2008-2013', 'Provincial'),
(203, 'Sindh Provincial Assembly 2013-2018', 'Provincial'),
(204, 'Sindh Provincial Assembly 2018-2023', 'Provincial'),
(205, 'Sindh Provincial Assembly 2024-2029', 'Provincial'),
(206, 'NWFP Provincial Assembly 1970-1977', 'Provincial'),
(207, 'NWFP Provincial Assembly 1985-1988', 'Provincial'),
(208, 'NWFP Provincial Assembly 1988-1990', 'Provincial'),
(209, 'NWFP Provincial Assembly 1990-1993', 'Provincial'),
(210, 'NWFP Provincial Assembly 1993-1997', 'Provincial'),
(211, 'NWFP Provincial Assembly 1997-1999', 'Provincial'),
(212, 'NWFP Provincial Assembly 2002-2007', 'Provincial'),
(213, 'Khyber Pakhtunkhwa Provincial Assembly 2008-2013', 'Provincial'),
(214, 'Khyber Pakhtunkhwa Provincial Assembly 2013-2018', 'Provincial'),
(215, 'Khyber Pakhtunkhwa Provincial Assembly 2018-2023', 'Provincial'),
(216, 'Khyber Pakhtunkhwa Provincial Assembly 2024-2029', 'Provincial'),
(217, 'Balochistan Provincial Assembly 1970-1977', 'Provincial'),
(218, 'Balochistan Provincial Assembly 1985-1988', 'Provincial'),
(219, 'Balochistan Provincial Assembly 1988-1990', 'Provincial'),
(220, 'Balochistan Provincial Assembly 1990-1993', 'Provincial'),
(221, 'Balochistan Provincial Assembly 1993-1997', 'Provincial'),
(222, 'Balochistan Provincial Assembly 1997-1999', 'Provincial'),
(223, 'Balochistan Provincial Assembly 2002-2007', 'Provincial'),
(224, 'Balochistan Provincial Assembly 2008-2013', 'Provincial'),
(225, 'Balochistan Provincial Assembly 2013-2018', 'Provincial'),
(226, 'Balochistan Provincial Assembly 2018-2023', 'Provincial'),
(227, 'Balochistan Provincial Assembly 2024-2029', 'Provincial'),
(228, 'East Pakistan Provincial Assembly 1970-1971', 'Provincial');

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `Constituencycode` varchar(50) NOT NULL,
  `CityName` varchar(255) DEFAULT NULL,
  `provinceid` int(11) DEFAULT NULL,
  `assemblyType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`Constituencycode`, `CityName`, `provinceid`, `assemblyType`) VALUES
('EP-1', 'Dhaka', 6, 'National Assembly'),
('EP-10', 'Sylhet', 6, 'National Assembly'),
('EP-11', 'Sylhet', 6, 'National Assembly'),
('EP-12', 'Rajshahi', 6, 'National Assembly'),
('EP-13', 'Rajshahi', 6, 'National Assembly'),
('EP-14', 'Khulna', 6, 'National Assembly'),
('EP-15', 'Khulna', 6, 'National Assembly'),
('EP-16', 'Barisal', 6, 'National Assembly'),
('EP-17', 'Barisal', 6, 'National Assembly'),
('EP-18', 'Comilla', 6, 'National Assembly'),
('EP-19', 'Comilla', 6, 'National Assembly'),
('EP-2', 'Dhaka', 6, 'National Assembly'),
('EP-20', 'Mymensingh', 6, 'National Assembly'),
('EP-3', 'Dhaka', 6, 'National Assembly'),
('EP-4', 'Dhaka', 6, 'National Assembly'),
('EP-5', 'Dhaka', 6, 'National Assembly'),
('EP-6', 'Chittagong', 6, 'National Assembly'),
('EP-7', 'Chittagong', 6, 'National Assembly'),
('EP-8', 'Chittagong', 6, 'National Assembly'),
('EP-9', 'Chittagong', 6, 'National Assembly'),
('FATA-1', 'Bajaur', 7, 'National Assembly'),
('FATA-2', 'Mohmand', 7, 'National Assembly'),
('FATA-3', 'Khyber', 7, 'National Assembly'),
('FATA-4', 'Orakzai', 7, 'National Assembly'),
('FATA-5', 'Kurram', 7, 'National Assembly'),
('FATA-6', 'North Waziristan', 7, 'National Assembly'),
('FATA-7', 'South Waziristan', 7, 'National Assembly'),
('MR-1', 'Punjab', 2, 'Minority Reserved'),
('MR-10', 'Sindh', 3, 'Minority Reserved'),
('MR-11', 'KPK', 4, 'Minority Reserved'),
('MR-12', 'Balochistan', 5, 'Minority Reserved'),
('MR-2', 'Punjab', 2, 'Minority Reserved'),
('MR-3', 'Punjab', 2, 'Minority Reserved'),
('MR-4', 'Punjab', 2, 'Minority Reserved'),
('MR-5', 'Punjab', 2, 'Minority Reserved'),
('MR-6', 'Punjab', 2, 'Minority Reserved'),
('MR-7', 'Punjab', 2, 'Minority Reserved'),
('MR-8', 'Sindh', 3, 'Minority Reserved'),
('MR-9', 'Sindh', 3, 'Minority Reserved'),
('NA-1', 'Chitral', 4, 'National Assembly'),
('NA-10', 'Battagram', 4, 'National Assembly'),
('NA-100', 'Faisalabad', 2, 'National Assembly'),
('NA-101', 'Faisalabad', 2, 'National Assembly'),
('NA-102', 'Faisalabad', 2, 'National Assembly'),
('NA-103', 'Faisalabad', 2, 'National Assembly'),
('NA-104', 'Toba Tek Singh', 2, 'National Assembly'),
('NA-105', 'Toba Tek Singh', 2, 'National Assembly'),
('NA-106', 'Jhang', 2, 'National Assembly'),
('NA-107', 'Jhang', 2, 'National Assembly'),
('NA-108', 'Chiniot', 2, 'National Assembly'),
('NA-109', 'Sargodha', 2, 'National Assembly'),
('NA-11', 'Kohistan', 4, 'National Assembly'),
('NA-110', 'Sargodha', 2, 'National Assembly'),
('NA-111', 'Sargodha', 2, 'National Assembly'),
('NA-112', 'Khushab', 2, 'National Assembly'),
('NA-113', 'Khushab', 2, 'National Assembly'),
('NA-114', 'Mianwali', 2, 'National Assembly'),
('NA-115', 'Mianwali', 2, 'National Assembly'),
('NA-116', 'Bhakkar', 2, 'National Assembly'),
('NA-117', 'Bhakkar', 2, 'National Assembly'),
('NA-118', 'Sahiwal', 2, 'National Assembly'),
('NA-119', 'Sahiwal', 2, 'National Assembly'),
('NA-12', 'Tor Ghar', 4, 'National Assembly'),
('NA-120', 'Pakpattan', 2, 'National Assembly'),
('NA-121', 'Vehari', 2, 'National Assembly'),
('NA-122', 'Vehari', 2, 'National Assembly'),
('NA-123', 'Multan', 2, 'National Assembly'),
('NA-124', 'Multan', 2, 'National Assembly'),
('NA-125', 'Multan', 2, 'National Assembly'),
('NA-126', 'Multan', 2, 'National Assembly'),
('NA-127', 'Multan', 2, 'National Assembly'),
('NA-128', 'Lodhran', 2, 'National Assembly'),
('NA-129', 'Khanewal', 2, 'National Assembly'),
('NA-13', 'Mansehra', 4, 'National Assembly'),
('NA-130', 'Khanewal', 2, 'National Assembly'),
('NA-131', 'Bahawalpur', 2, 'National Assembly'),
('NA-132', 'Bahawalpur', 2, 'National Assembly'),
('NA-133', 'Bahawalpur', 2, 'National Assembly'),
('NA-134', 'Bahawalnagar', 2, 'National Assembly'),
('NA-135', 'Bahawalnagar', 2, 'National Assembly'),
('NA-136', 'Rahim Yar Khan', 2, 'National Assembly'),
('NA-137', 'Rahim Yar Khan', 2, 'National Assembly'),
('NA-138', 'Rahim Yar Khan', 2, 'National Assembly'),
('NA-139', 'Dera Ghazi Khan', 2, 'National Assembly'),
('NA-14', 'Mansehra', 4, 'National Assembly'),
('NA-140', 'Dera Ghazi Khan', 2, 'National Assembly'),
('NA-141', 'Dera Ghazi Khan', 2, 'National Assembly'),
('NA-142', 'Layyah', 2, 'National Assembly'),
('NA-143', 'Muzaffargarh', 2, 'National Assembly'),
('NA-144', 'Muzaffargarh', 2, 'National Assembly'),
('NA-145', 'Muzaffargarh', 2, 'National Assembly'),
('NA-146', 'Rajanpur', 2, 'National Assembly'),
('NA-147', 'Rajanpur', 2, 'National Assembly'),
('NA-148', 'Karachi', 3, 'National Assembly'),
('NA-149', 'Karachi', 3, 'National Assembly'),
('NA-15', 'Abbottabad', 4, 'National Assembly'),
('NA-150', 'Karachi', 3, 'National Assembly'),
('NA-151', 'Karachi', 3, 'National Assembly'),
('NA-152', 'Karachi', 3, 'National Assembly'),
('NA-153', 'Karachi', 3, 'National Assembly'),
('NA-154', 'Karachi', 3, 'National Assembly'),
('NA-155', 'Karachi', 3, 'National Assembly'),
('NA-156', 'Karachi', 3, 'National Assembly'),
('NA-157', 'Karachi', 3, 'National Assembly'),
('NA-158', 'Karachi', 3, 'National Assembly'),
('NA-159', 'Karachi', 3, 'National Assembly'),
('NA-16', 'Abbottabad', 4, 'National Assembly'),
('NA-160', 'Karachi', 3, 'National Assembly'),
('NA-161', 'Karachi', 3, 'National Assembly'),
('NA-162', 'Karachi', 3, 'National Assembly'),
('NA-163', 'Karachi', 3, 'National Assembly'),
('NA-164', 'Karachi', 3, 'National Assembly'),
('NA-165', 'Karachi', 3, 'National Assembly'),
('NA-166', 'Karachi', 3, 'National Assembly'),
('NA-167', 'Karachi', 3, 'National Assembly'),
('NA-168', 'Karachi', 3, 'National Assembly'),
('NA-169', 'Thatta', 3, 'National Assembly'),
('NA-17', 'Haripur', 4, 'National Assembly'),
('NA-170', 'Sujawal', 3, 'National Assembly'),
('NA-171', 'Badin', 3, 'National Assembly'),
('NA-172', 'Badin', 3, 'National Assembly'),
('NA-173', 'Tando Allahyar', 3, 'National Assembly'),
('NA-174', 'Tando Mohammad Khan', 3, 'National Assembly'),
('NA-175', 'Matiari', 3, 'National Assembly'),
('NA-176', 'Hyderabad', 3, 'National Assembly'),
('NA-177', 'Hyderabad', 3, 'National Assembly'),
('NA-178', 'Hyderabad', 3, 'National Assembly'),
('NA-179', 'Tharparkar', 3, 'National Assembly'),
('NA-18', 'Haripur', 4, 'National Assembly'),
('NA-180', 'Umerkot', 3, 'National Assembly'),
('NA-181', 'Mirpurkhas', 3, 'National Assembly'),
('NA-182', 'Sanghar', 3, 'National Assembly'),
('NA-183', 'Sanghar', 3, 'National Assembly'),
('NA-184', 'Naushahro Feroze', 3, 'National Assembly'),
('NA-185', 'Shaheed Benazirabad', 3, 'National Assembly'),
('NA-186', 'Shaheed Benazirabad', 3, 'National Assembly'),
('NA-187', 'Dadu', 3, 'National Assembly'),
('NA-188', 'Dadu', 3, 'National Assembly'),
('NA-189', 'Jamshoro', 3, 'National Assembly'),
('NA-19', 'Swabi', 4, 'National Assembly'),
('NA-190', 'Larkana', 3, 'National Assembly'),
('NA-191', 'Larkana', 3, 'National Assembly'),
('NA-192', 'Shikarpur', 3, 'National Assembly'),
('NA-193', 'Shikarpur', 3, 'National Assembly'),
('NA-194', 'Jacobabad', 3, 'National Assembly'),
('NA-195', 'Kashmore', 3, 'National Assembly'),
('NA-196', 'Kandhkot', 3, 'National Assembly'),
('NA-197', 'Sukkur', 3, 'National Assembly'),
('NA-198', 'Sukkur', 3, 'National Assembly'),
('NA-199', 'Khairpur', 3, 'National Assembly'),
('NA-2', 'Chitral', 4, 'National Assembly'),
('NA-20', 'Swabi', 4, 'National Assembly'),
('NA-200', 'Khairpur', 3, 'National Assembly'),
('NA-201', 'Ghotki', 3, 'National Assembly'),
('NA-202', 'Ghotki', 3, 'National Assembly'),
('NA-203', 'Quetta', 5, 'National Assembly'),
('NA-204', 'Quetta', 5, 'National Assembly'),
('NA-205', 'Quetta', 5, 'National Assembly'),
('NA-206', 'Pishin', 5, 'National Assembly'),
('NA-207', 'Killa Abdullah', 5, 'National Assembly'),
('NA-208', 'Chaman', 5, 'National Assembly'),
('NA-209', 'Ziarat', 5, 'National Assembly'),
('NA-21', 'Mardan', 4, 'National Assembly'),
('NA-210', 'Sibi', 5, 'National Assembly'),
('NA-211', 'Harnai', 5, 'National Assembly'),
('NA-212', 'Kohlu', 5, 'National Assembly'),
('NA-213', 'Dera Bugti', 5, 'National Assembly'),
('NA-214', 'Nasirabad', 5, 'National Assembly'),
('NA-215', 'Jafarabad', 5, 'National Assembly'),
('NA-216', 'Jhal Magsi', 5, 'National Assembly'),
('NA-217', 'Kachhi', 5, 'National Assembly'),
('NA-218', 'Loralai', 5, 'National Assembly'),
('NA-219', 'Musakhel', 5, 'National Assembly'),
('NA-22', 'Mardan', 4, 'National Assembly'),
('NA-220', 'Barkhan', 5, 'National Assembly'),
('NA-221', 'Zhob', 5, 'National Assembly'),
('NA-222', 'Sherani', 5, 'National Assembly'),
('NA-223', 'Killa Saifullah', 5, 'National Assembly'),
('NA-224', 'Mastung', 5, 'National Assembly'),
('NA-225', 'Kalat', 5, 'National Assembly'),
('NA-226', 'Khuzdar', 5, 'National Assembly'),
('NA-227', 'Lasbela', 5, 'National Assembly'),
('NA-228', 'Hub', 5, 'National Assembly'),
('NA-229', 'Kharan', 5, 'National Assembly'),
('NA-23', 'Charsadda', 4, 'National Assembly'),
('NA-230', 'Washuk', 5, 'National Assembly'),
('NA-231', 'Chagai', 5, 'National Assembly'),
('NA-232', 'Nushki', 5, 'National Assembly'),
('NA-233', 'Panjgur', 5, 'National Assembly'),
('NA-234', 'Kech', 5, 'National Assembly'),
('NA-235', 'Gwadar', 5, 'National Assembly'),
('NA-236', 'Lahore', 2, 'National Assembly'),
('NA-237', 'Karachi', 3, 'National Assembly'),
('NA-238', 'Faisalabad', 2, 'National Assembly'),
('NA-239', 'Rawalpindi', 2, 'National Assembly'),
('NA-24', 'Charsadda', 4, 'National Assembly'),
('NA-240', 'Multan', 2, 'National Assembly'),
('NA-241', 'Gujranwala', 2, 'National Assembly'),
('NA-242', 'Peshawar', 4, 'National Assembly'),
('NA-243', 'Quetta', 5, 'National Assembly'),
('NA-244', 'Islamabad', 1, 'National Assembly'),
('NA-245', 'Sialkot', 2, 'National Assembly'),
('NA-246', 'Sargodha', 2, 'National Assembly'),
('NA-247', 'Bahawalpur', 2, 'National Assembly'),
('NA-248', 'Sukkur', 3, 'National Assembly'),
('NA-249', 'Larkana', 3, 'National Assembly'),
('NA-25', 'Peshawar', 4, 'National Assembly'),
('NA-250', 'Mardan', 4, 'National Assembly'),
('NA-251', 'Mingora', 4, 'National Assembly'),
('NA-252', 'Kohat', 4, 'National Assembly'),
('NA-253', 'Bannu', 4, 'National Assembly'),
('NA-254', 'Dera Ismail Khan', 4, 'National Assembly'),
('NA-255', 'Abbottabad', 4, 'National Assembly'),
('NA-256', 'Mansehra', 4, 'National Assembly'),
('NA-257', 'Swabi', 4, 'National Assembly'),
('NA-258', 'Charsadda', 4, 'National Assembly'),
('NA-259', 'Nowshera', 4, 'National Assembly'),
('NA-26', 'Peshawar', 4, 'National Assembly'),
('NA-260', 'Haripur', 4, 'National Assembly'),
('NA-261', 'Turbat', 5, 'National Assembly'),
('NA-262', 'Khuzdar', 5, 'National Assembly'),
('NA-263', 'Gwadar', 5, 'National Assembly'),
('NA-264', 'Zhob', 5, 'National Assembly'),
('NA-265', 'Loralai', 5, 'National Assembly'),
('NA-266', 'Sibi', 5, 'National Assembly'),
('NA-27', 'Peshawar', 4, 'National Assembly'),
('NA-28', 'Peshawar', 4, 'National Assembly'),
('NA-29', 'Khyber', 4, 'National Assembly'),
('NA-3', 'Dir Upper', 4, 'National Assembly'),
('NA-30', 'Nowshera', 4, 'National Assembly'),
('NA-31', 'Nowshera', 4, 'National Assembly'),
('NA-32', 'Kurram', 4, 'National Assembly'),
('NA-33', 'Orakzai', 4, 'National Assembly'),
('NA-34', 'Hangu', 4, 'National Assembly'),
('NA-35', 'Kohat', 4, 'National Assembly'),
('NA-36', 'Kohat', 4, 'National Assembly'),
('NA-37', 'Karak', 4, 'National Assembly'),
('NA-38', 'Bannu', 4, 'National Assembly'),
('NA-39', 'Bannu', 4, 'National Assembly'),
('NA-4', 'Dir Lower', 4, 'National Assembly'),
('NA-40', 'North Waziristan', 4, 'National Assembly'),
('NA-41', 'South Waziristan', 4, 'National Assembly'),
('NA-42', 'Lakki Marwat', 4, 'National Assembly'),
('NA-43', 'Dera Ismail Khan', 4, 'National Assembly'),
('NA-44', 'Dera Ismail Khan', 4, 'National Assembly'),
('NA-45', 'Tank', 4, 'National Assembly'),
('NA-46', 'Islamabad', 1, 'National Assembly'),
('NA-47', 'Islamabad', 1, 'National Assembly'),
('NA-48', 'Islamabad', 1, 'National Assembly'),
('NA-49', 'Rawalpindi', 2, 'National Assembly'),
('NA-5', 'Malakand', 4, 'National Assembly'),
('NA-50', 'Rawalpindi', 2, 'National Assembly'),
('NA-51', 'Rawalpindi', 2, 'National Assembly'),
('NA-52', 'Rawalpindi', 2, 'National Assembly'),
('NA-53', 'Rawalpindi', 2, 'National Assembly'),
('NA-54', 'Rawalpindi', 2, 'National Assembly'),
('NA-55', 'Rawalpindi', 2, 'National Assembly'),
('NA-56', 'Attock', 2, 'National Assembly'),
('NA-57', 'Attock', 2, 'National Assembly'),
('NA-58', 'Chakwal', 2, 'National Assembly'),
('NA-59', 'Talagang', 2, 'National Assembly'),
('NA-6', 'Buner', 4, 'National Assembly'),
('NA-60', 'Jhelum', 2, 'National Assembly'),
('NA-61', 'Jhelum', 2, 'National Assembly'),
('NA-62', 'Gujrat', 2, 'National Assembly'),
('NA-63', 'Gujrat', 2, 'National Assembly'),
('NA-64', 'Gujranwala', 2, 'National Assembly'),
('NA-65', 'Gujranwala', 2, 'National Assembly'),
('NA-66', 'Gujranwala', 2, 'National Assembly'),
('NA-67', 'Gujranwala', 2, 'National Assembly'),
('NA-68', 'Hafizabad', 2, 'National Assembly'),
('NA-69', 'Mandi Bahauddin', 2, 'National Assembly'),
('NA-7', 'Swat', 4, 'National Assembly'),
('NA-70', 'Sialkot', 2, 'National Assembly'),
('NA-71', 'Sialkot', 2, 'National Assembly'),
('NA-72', 'Sialkot', 2, 'National Assembly'),
('NA-73', 'Narowal', 2, 'National Assembly'),
('NA-74', 'Lahore', 2, 'National Assembly'),
('NA-75', 'Lahore', 2, 'National Assembly'),
('NA-76', 'Lahore', 2, 'National Assembly'),
('NA-77', 'Lahore', 2, 'National Assembly'),
('NA-78', 'Lahore', 2, 'National Assembly'),
('NA-79', 'Lahore', 2, 'National Assembly'),
('NA-8', 'Swat', 4, 'National Assembly'),
('NA-80', 'Lahore', 2, 'National Assembly'),
('NA-81', 'Lahore', 2, 'National Assembly'),
('NA-82', 'Lahore', 2, 'National Assembly'),
('NA-83', 'Lahore', 2, 'National Assembly'),
('NA-84', 'Lahore', 2, 'National Assembly'),
('NA-85', 'Lahore', 2, 'National Assembly'),
('NA-86', 'Lahore', 2, 'National Assembly'),
('NA-87', 'Lahore', 2, 'National Assembly'),
('NA-88', 'Sheikhupura', 2, 'National Assembly'),
('NA-89', 'Sheikhupura', 2, 'National Assembly'),
('NA-9', 'Shangla', 4, 'National Assembly'),
('NA-90', 'Sheikhupura', 2, 'National Assembly'),
('NA-91', 'Nankana Sahib', 2, 'National Assembly'),
('NA-92', 'Kasur', 2, 'National Assembly'),
('NA-93', 'Kasur', 2, 'National Assembly'),
('NA-94', 'Okara', 2, 'National Assembly'),
('NA-95', 'Okara', 2, 'National Assembly'),
('NA-96', 'Faisalabad', 2, 'National Assembly'),
('NA-97', 'Faisalabad', 2, 'National Assembly'),
('NA-98', 'Faisalabad', 2, 'National Assembly'),
('NA-99', 'Faisalabad', 2, 'National Assembly'),
('PB-1', 'Quetta', 5, 'Provincial Assembly'),
('PB-10', 'Chaman', 5, 'Provincial Assembly'),
('PB-11', 'Ziarat', 5, 'Provincial Assembly'),
('PB-12', 'Sibi', 5, 'Provincial Assembly'),
('PB-13', 'Sibi', 5, 'Provincial Assembly'),
('PB-14', 'Harnai', 5, 'Provincial Assembly'),
('PB-15', 'Kohlu', 5, 'Provincial Assembly'),
('PB-16', 'Dera Bugti', 5, 'Provincial Assembly'),
('PB-17', 'Nasirabad', 5, 'Provincial Assembly'),
('PB-18', 'Jafarabad', 5, 'Provincial Assembly'),
('PB-19', 'Jhal Magsi', 5, 'Provincial Assembly'),
('PB-2', 'Quetta', 5, 'Provincial Assembly'),
('PB-20', 'Kachhi', 5, 'Provincial Assembly'),
('PB-21', 'Loralai', 5, 'Provincial Assembly'),
('PB-22', 'Loralai', 5, 'Provincial Assembly'),
('PB-23', 'Musakhel', 5, 'Provincial Assembly'),
('PB-24', 'Barkhan', 5, 'Provincial Assembly'),
('PB-25', 'Zhob', 5, 'Provincial Assembly'),
('PB-26', 'Zhob', 5, 'Provincial Assembly'),
('PB-27', 'Sherani', 5, 'Provincial Assembly'),
('PB-28', 'Killa Saifullah', 5, 'Provincial Assembly'),
('PB-29', 'Killa Saifullah', 5, 'Provincial Assembly'),
('PB-3', 'Quetta', 5, 'Provincial Assembly'),
('PB-30', 'Mastung', 5, 'Provincial Assembly'),
('PB-31', 'Kalat', 5, 'Provincial Assembly'),
('PB-32', 'Kalat', 5, 'Provincial Assembly'),
('PB-33', 'Khuzdar', 5, 'Provincial Assembly'),
('PB-34', 'Khuzdar', 5, 'Provincial Assembly'),
('PB-35', 'Lasbela', 5, 'Provincial Assembly'),
('PB-36', 'Lasbela', 5, 'Provincial Assembly'),
('PB-37', 'Hub', 5, 'Provincial Assembly'),
('PB-38', 'Kharan', 5, 'Provincial Assembly'),
('PB-39', 'Washuk', 5, 'Provincial Assembly'),
('PB-4', 'Quetta', 5, 'Provincial Assembly'),
('PB-40', 'Chagai', 5, 'Provincial Assembly'),
('PB-41', 'Nushki', 5, 'Provincial Assembly'),
('PB-42', 'Panjgur', 5, 'Provincial Assembly'),
('PB-43', 'Kech', 5, 'Provincial Assembly'),
('PB-44', 'Kech', 5, 'Provincial Assembly'),
('PB-45', 'Gwadar', 5, 'Provincial Assembly'),
('PB-5', 'Quetta', 5, 'Provincial Assembly'),
('PB-6', 'Quetta', 5, 'Provincial Assembly'),
('PB-7', 'Pishin', 5, 'Provincial Assembly'),
('PB-8', 'Pishin', 5, 'Provincial Assembly'),
('PB-9', 'Killa Abdullah', 5, 'Provincial Assembly'),
('PK-1', 'Chitral', 4, 'Provincial Assembly'),
('PK-10', 'Swat', 4, 'Provincial Assembly'),
('PK-11', 'Swat', 4, 'Provincial Assembly'),
('PK-12', 'Swat', 4, 'Provincial Assembly'),
('PK-13', 'Swat', 4, 'Provincial Assembly'),
('PK-14', 'Shangla', 4, 'Provincial Assembly'),
('PK-15', 'Battagram', 4, 'Provincial Assembly'),
('PK-16', 'Kohistan', 4, 'Provincial Assembly'),
('PK-17', 'Tor Ghar', 4, 'Provincial Assembly'),
('PK-18', 'Mansehra', 4, 'Provincial Assembly'),
('PK-19', 'Mansehra', 4, 'Provincial Assembly'),
('PK-2', 'Chitral', 4, 'Provincial Assembly'),
('PK-20', 'Mansehra', 4, 'Provincial Assembly'),
('PK-21', 'Abbottabad', 4, 'Provincial Assembly'),
('PK-22', 'Abbottabad', 4, 'Provincial Assembly'),
('PK-23', 'Abbottabad', 4, 'Provincial Assembly'),
('PK-24', 'Haripur', 4, 'Provincial Assembly'),
('PK-25', 'Haripur', 4, 'Provincial Assembly'),
('PK-26', 'Haripur', 4, 'Provincial Assembly'),
('PK-27', 'Swabi', 4, 'Provincial Assembly'),
('PK-28', 'Swabi', 4, 'Provincial Assembly'),
('PK-29', 'Swabi', 4, 'Provincial Assembly'),
('PK-3', 'Dir Upper', 4, 'Provincial Assembly'),
('PK-30', 'Mardan', 4, 'Provincial Assembly'),
('PK-4', 'Dir Upper', 4, 'Provincial Assembly'),
('PK-5', 'Dir Lower', 4, 'Provincial Assembly'),
('PK-6', 'Dir Lower', 4, 'Provincial Assembly'),
('PK-7', 'Malakand', 4, 'Provincial Assembly'),
('PK-8', 'Buner', 4, 'Provincial Assembly'),
('PK-9', 'Buner', 4, 'Provincial Assembly'),
('PP-1', 'Attock', 2, 'Provincial Assembly'),
('PP-10', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-11', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-12', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-13', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-14', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-15', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-16', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-17', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-18', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-19', 'Rawalpindi', 2, 'Provincial Assembly'),
('PP-2', 'Attock', 2, 'Provincial Assembly'),
('PP-20', 'Gujrat', 2, 'Provincial Assembly'),
('PP-21', 'Gujrat', 2, 'Provincial Assembly'),
('PP-22', 'Gujrat', 2, 'Provincial Assembly'),
('PP-23', 'Gujrat', 2, 'Provincial Assembly'),
('PP-24', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-25', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-26', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-27', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-28', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-29', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-3', 'Attock', 2, 'Provincial Assembly'),
('PP-30', 'Gujranwala', 2, 'Provincial Assembly'),
('PP-31', 'Hafizabad', 2, 'Provincial Assembly'),
('PP-32', 'Hafizabad', 2, 'Provincial Assembly'),
('PP-33', 'Mandi Bahauddin', 2, 'Provincial Assembly'),
('PP-34', 'Mandi Bahauddin', 2, 'Provincial Assembly'),
('PP-35', 'Sialkot', 2, 'Provincial Assembly'),
('PP-36', 'Sialkot', 2, 'Provincial Assembly'),
('PP-37', 'Sialkot', 2, 'Provincial Assembly'),
('PP-38', 'Sialkot', 2, 'Provincial Assembly'),
('PP-39', 'Sialkot', 2, 'Provincial Assembly'),
('PP-4', 'Chakwal', 2, 'Provincial Assembly'),
('PP-40', 'Narowal', 2, 'Provincial Assembly'),
('PP-41', 'Narowal', 2, 'Provincial Assembly'),
('PP-42', 'Lahore', 2, 'Provincial Assembly'),
('PP-43', 'Lahore', 2, 'Provincial Assembly'),
('PP-44', 'Lahore', 2, 'Provincial Assembly'),
('PP-45', 'Lahore', 2, 'Provincial Assembly'),
('PP-46', 'Lahore', 2, 'Provincial Assembly'),
('PP-47', 'Lahore', 2, 'Provincial Assembly'),
('PP-48', 'Lahore', 2, 'Provincial Assembly'),
('PP-49', 'Lahore', 2, 'Provincial Assembly'),
('PP-5', 'Chakwal', 2, 'Provincial Assembly'),
('PP-50', 'Lahore', 2, 'Provincial Assembly'),
('PP-6', 'Talagang', 2, 'Provincial Assembly'),
('PP-7', 'Jhelum', 2, 'Provincial Assembly'),
('PP-8', 'Jhelum', 2, 'Provincial Assembly'),
('PP-9', 'Jhelum', 2, 'Provincial Assembly'),
('PS-1', 'Karachi', 3, 'Provincial Assembly'),
('PS-10', 'Karachi', 3, 'Provincial Assembly'),
('PS-11', 'Karachi', 3, 'Provincial Assembly'),
('PS-12', 'Karachi', 3, 'Provincial Assembly'),
('PS-13', 'Karachi', 3, 'Provincial Assembly'),
('PS-14', 'Karachi', 3, 'Provincial Assembly'),
('PS-15', 'Karachi', 3, 'Provincial Assembly'),
('PS-16', 'Karachi', 3, 'Provincial Assembly'),
('PS-17', 'Karachi', 3, 'Provincial Assembly'),
('PS-18', 'Karachi', 3, 'Provincial Assembly'),
('PS-19', 'Karachi', 3, 'Provincial Assembly'),
('PS-2', 'Karachi', 3, 'Provincial Assembly'),
('PS-20', 'Karachi', 3, 'Provincial Assembly'),
('PS-21', 'Hyderabad', 3, 'Provincial Assembly'),
('PS-22', 'Hyderabad', 3, 'Provincial Assembly'),
('PS-23', 'Hyderabad', 3, 'Provincial Assembly'),
('PS-24', 'Hyderabad', 3, 'Provincial Assembly'),
('PS-25', 'Badin', 3, 'Provincial Assembly'),
('PS-26', 'Badin', 3, 'Provincial Assembly'),
('PS-27', 'Thatta', 3, 'Provincial Assembly'),
('PS-28', 'Sujawal', 3, 'Provincial Assembly'),
('PS-29', 'Tando Allahyar', 3, 'Provincial Assembly'),
('PS-3', 'Karachi', 3, 'Provincial Assembly'),
('PS-30', 'Tando Mohammad Khan', 3, 'Provincial Assembly'),
('PS-4', 'Karachi', 3, 'Provincial Assembly'),
('PS-5', 'Karachi', 3, 'Provincial Assembly'),
('PS-6', 'Karachi', 3, 'Provincial Assembly'),
('PS-7', 'Karachi', 3, 'Provincial Assembly'),
('PS-8', 'Karachi', 3, 'Provincial Assembly'),
('PS-9', 'Karachi', 3, 'Provincial Assembly'),
('WR-1', 'Punjab', 2, 'Women Reserved'),
('WR-10', 'Punjab', 2, 'Women Reserved'),
('WR-11', 'Punjab', 2, 'Women Reserved'),
('WR-12', 'Punjab', 2, 'Women Reserved'),
('WR-13', 'Punjab', 2, 'Women Reserved'),
('WR-14', 'Punjab', 2, 'Women Reserved'),
('WR-15', 'Punjab', 2, 'Women Reserved'),
('WR-16', 'Punjab', 2, 'Women Reserved'),
('WR-17', 'Punjab', 2, 'Women Reserved'),
('WR-18', 'Punjab', 2, 'Women Reserved'),
('WR-19', 'Punjab', 2, 'Women Reserved'),
('WR-2', 'Punjab', 2, 'Women Reserved'),
('WR-20', 'Punjab', 2, 'Women Reserved'),
('WR-21', 'Punjab', 2, 'Women Reserved'),
('WR-22', 'Punjab', 2, 'Women Reserved'),
('WR-23', 'Punjab', 2, 'Women Reserved'),
('WR-24', 'Punjab', 2, 'Women Reserved'),
('WR-25', 'Punjab', 2, 'Women Reserved'),
('WR-26', 'Punjab', 2, 'Women Reserved'),
('WR-27', 'Punjab', 2, 'Women Reserved'),
('WR-28', 'Punjab', 2, 'Women Reserved'),
('WR-29', 'Punjab', 2, 'Women Reserved'),
('WR-3', 'Punjab', 2, 'Women Reserved'),
('WR-30', 'Punjab', 2, 'Women Reserved'),
('WR-31', 'Punjab', 2, 'Women Reserved'),
('WR-32', 'Punjab', 2, 'Women Reserved'),
('WR-33', 'Punjab', 2, 'Women Reserved'),
('WR-34', 'Punjab', 2, 'Women Reserved'),
('WR-35', 'Punjab', 2, 'Women Reserved'),
('WR-36', 'Sindh', 3, 'Women Reserved'),
('WR-37', 'Sindh', 3, 'Women Reserved'),
('WR-38', 'Sindh', 3, 'Women Reserved'),
('WR-39', 'Sindh', 3, 'Women Reserved'),
('WR-4', 'Punjab', 2, 'Women Reserved'),
('WR-40', 'Sindh', 3, 'Women Reserved'),
('WR-41', 'Sindh', 3, 'Women Reserved'),
('WR-42', 'Sindh', 3, 'Women Reserved'),
('WR-43', 'Sindh', 3, 'Women Reserved'),
('WR-44', 'Sindh', 3, 'Women Reserved'),
('WR-45', 'Sindh', 3, 'Women Reserved'),
('WR-46', 'Sindh', 3, 'Women Reserved'),
('WR-47', 'Sindh', 3, 'Women Reserved'),
('WR-48', 'Sindh', 3, 'Women Reserved'),
('WR-49', 'Sindh', 3, 'Women Reserved'),
('WR-5', 'Punjab', 2, 'Women Reserved'),
('WR-50', 'KPK', 4, 'Women Reserved'),
('WR-51', 'KPK', 4, 'Women Reserved'),
('WR-52', 'KPK', 4, 'Women Reserved'),
('WR-53', 'KPK', 4, 'Women Reserved'),
('WR-54', 'KPK', 4, 'Women Reserved'),
('WR-55', 'KPK', 4, 'Women Reserved'),
('WR-56', 'KPK', 4, 'Women Reserved'),
('WR-57', 'KPK', 4, 'Women Reserved'),
('WR-58', 'Balochistan', 5, 'Women Reserved'),
('WR-59', 'Balochistan', 5, 'Women Reserved'),
('WR-6', 'Punjab', 2, 'Women Reserved'),
('WR-60', 'Balochistan', 5, 'Women Reserved'),
('WR-7', 'Punjab', 2, 'Women Reserved'),
('WR-8', 'Punjab', 2, 'Women Reserved'),
('WR-9', 'Punjab', 2, 'Women Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `electionid` int(11) NOT NULL,
  `electiondate` date DEFAULT NULL,
  `ElectionType` varchar(50) NOT NULL,
  `AssemblyType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`electionid`, `electiondate`, `ElectionType`, `AssemblyType`) VALUES
(1, '1947-08-14', 'Constituent Assembly Election', 'Constituent Assembly'),
(2, '1951-03-15', 'Constituent Assembly Election', 'Constituent Assembly'),
(3, '1955-03-10', 'Provincial Assembly Election', 'Provincial Assembly'),
(4, '1956-03-23', 'Constituent Assembly Election', 'Constituent Assembly'),
(5, '1962-02-15', 'Presidential Election', 'National Assembly'),
(6, '1965-02-25', 'Presidential Election', 'National Assembly'),
(7, '1965-03-25', 'General Election', 'National Assembly'),
(8, '1969-12-07', 'General Election', 'National Assembly'),
(9, '1970-12-07', 'General Election', 'National Assembly'),
(10, '1977-03-07', 'General Election', 'National Assembly'),
(11, '1985-02-25', 'General Election', 'National Assembly'),
(12, '1988-11-16', 'General Election', 'National Assembly'),
(13, '1990-10-24', 'General Election', 'National Assembly'),
(14, '1993-10-06', 'General Election', 'National Assembly'),
(15, '1997-02-03', 'General Election', 'National Assembly'),
(16, '2002-10-10', 'General Election', 'National Assembly'),
(17, '2008-02-18', 'General Election', 'National Assembly'),
(18, '2013-05-11', 'General Election', 'National Assembly'),
(19, '2018-07-25', 'General Election', 'National Assembly'),
(20, '2024-02-08', 'General Election', 'National Assembly');

-- --------------------------------------------------------

--
-- Table structure for table `electionresult`
--

CREATE TABLE `electionresult` (
  `ResultID` int(11) NOT NULL,
  `ElectionID` int(11) DEFAULT NULL,
  `PoliticianID` int(11) DEFAULT NULL,
  `Constituencycode` varchar(50) DEFAULT NULL,
  `PartyID` int(11) DEFAULT NULL,
  `VotesReceived` int(11) DEFAULT NULL,
  `ResultStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electionresult`
--

INSERT INTO `electionresult` (`ResultID`, `ElectionID`, `PoliticianID`, `Constituencycode`, `PartyID`, `VotesReceived`, `ResultStatus`) VALUES
(121, 9, 9, 'NA-249', 1, 45678, 'Won'),
(122, 9, 2, 'EP-1', 22, 32145, 'Won'),
(123, 9, 11, 'NA-190', 1, 28976, 'Won'),
(124, 9, 1, 'NA-191', 1, 41230, 'Won'),
(125, 9, 3, 'NA-92', 1, 38567, 'Won'),
(352, 10, 9, 'NA-249', 1, 52348, 'Won'),
(704, 9, 4, 'EP-2', 22, 35412, 'Won'),
(705, 9, 5, 'EP-3', 22, 42189, 'Won'),
(706, 9, 6, 'NA-206', 1, 29834, 'Won'),
(707, 9, 7, 'NA-25', 1, 33567, 'Won'),
(708, 9, 8, 'NA-121', 22, 27891, 'Won'),
(710, 10, 1, 'NA-190', 1, 48765, 'Won'),
(711, 10, 3, 'NA-92', 1, 45123, 'Won'),
(712, 10, 6, 'NA-206', 1, 38902, 'Won'),
(713, 10, 7, 'NA-25', 1, 41567, 'Won'),
(714, 10, 8, 'NA-121', 22, 25678, 'Lost'),
(715, 10, 4, 'NA-190', 22, 23456, 'Lost'),
(716, 10, 5, 'NA-191', 1, 39876, 'Won'),
(717, 10, 10, 'NA-92', 1, 44321, 'Won'),
(718, 10, 13, 'NA-149', 22, 28765, 'Lost'),
(719, 11, 10, 'NA-191', 22, 36789, 'Won'),
(720, 11, 1, 'NA-92', 22, 32456, 'Won'),
(721, 11, 2, 'NA-190', 22, 29876, 'Won'),
(722, 11, 3, 'NA-25', 22, 27543, 'Won'),
(723, 11, 4, 'NA-206', 22, 24678, 'Won'),
(724, 11, 5, 'NA-95', 22, 31245, 'Won'),
(725, 11, 6, 'NA-191', 22, 28976, 'Won'),
(726, 11, 7, 'NA-80', 22, 33567, 'Won'),
(727, 11, 8, 'NA-121', 22, 26789, 'Won'),
(728, 11, 13, 'NA-139', 22, 30145, 'Won'),
(729, 12, 11, 'NA-249', 1, 54321, 'Won'),
(730, 12, 12, 'NA-74', 2, 48976, 'Won'),
(731, 12, 1, 'NA-190', 1, 42567, 'Won'),
(732, 12, 2, 'NA-92', 2, 39876, 'Won'),
(733, 12, 3, 'NA-191', 1, 36789, 'Won'),
(734, 12, 4, 'NA-74', 2, 35412, 'Won'),
(735, 12, 5, 'NA-25', 13, 28976, 'Won'),
(736, 12, 6, 'NA-149', 14, 31245, 'Won'),
(737, 12, 7, 'NA-191', 1, 33567, 'Won'),
(738, 12, 8, 'NA-92', 2, 37891, 'Won'),
(739, 13, 12, 'NA-74', 2, 56789, 'Won'),
(740, 13, 11, 'NA-249', 1, 45123, 'Won'),
(741, 13, 1, 'NA-92', 2, 51234, 'Won'),
(742, 13, 2, 'NA-75', 2, 48765, 'Won'),
(743, 13, 3, 'NA-190', 1, 41567, 'Won'),
(744, 13, 4, 'NA-76', 2, 44321, 'Won'),
(745, 13, 5, 'NA-149', 14, 33456, 'Won'),
(746, 13, 6, 'NA-25', 13, 29876, 'Won'),
(747, 13, 7, 'NA-77', 2, 39789, 'Won'),
(748, 13, 8, 'NA-191', 1, 35678, 'Won'),
(749, 14, 11, 'NA-249', 1, 58976, 'Won'),
(750, 14, 12, 'NA-74', 2, 52345, 'Won'),
(751, 14, 1, 'NA-190', 1, 49876, 'Won'),
(752, 14, 2, 'NA-191', 1, 46789, 'Won'),
(753, 14, 3, 'NA-92', 2, 43567, 'Won'),
(754, 14, 4, 'NA-191', 1, 41234, 'Won'),
(755, 14, 5, 'NA-74', 2, 38976, 'Won'),
(756, 14, 6, 'NA-149', 14, 35412, 'Won'),
(757, 14, 7, 'NA-25', 13, 31789, 'Won'),
(758, 14, 8, 'NA-206', 1, 37654, 'Won'),
(759, 15, 12, 'NA-74', 2, 67890, 'Won'),
(760, 15, 11, 'NA-249', 1, 41234, 'Won'),
(761, 15, 1, 'NA-92', 2, 61245, 'Won'),
(762, 15, 2, 'NA-75', 2, 58976, 'Won'),
(763, 15, 3, 'NA-76', 2, 55123, 'Won'),
(764, 15, 4, 'NA-77', 2, 52789, 'Won'),
(765, 15, 5, 'NA-190', 1, 38567, 'Won'),
(766, 15, 6, 'NA-149', 14, 33456, 'Won'),
(767, 15, 7, 'NA-78', 2, 49876, 'Won'),
(768, 15, 8, 'NA-25', 13, 28943, 'Won'),
(769, 16, 13, 'NA-206', 3, 45678, 'Won'),
(770, 16, 14, 'NA-62', 3, 52134, 'Won'),
(771, 16, 15, 'NA-149', 3, 48976, 'Won'),
(772, 16, 1, 'NA-92', 3, 46789, 'Won'),
(773, 16, 2, 'NA-190', 1, 39876, 'Won'),
(774, 16, 3, 'NA-75', 3, 44321, 'Won'),
(775, 16, 4, 'NA-149', 14, 31245, 'Won'),
(776, 16, 5, 'NA-25', 11, 27891, 'Won'),
(777, 16, 6, 'NA-77', 3, 41567, 'Won'),
(778, 16, 7, 'NA-25', 13, 25678, 'Won'),
(779, 17, 16, 'NA-123', 1, 61234, 'Won'),
(780, 17, 12, 'NA-74', 2, 54789, 'Won'),
(781, 17, 1, 'PS-1', 1, 58976, 'Won'),
(782, 17, 2, 'PP-42', 2, 52345, 'Won'),
(783, 17, 3, 'PS-5', 1, 49123, 'Won'),
(784, 17, 4, 'PP-10', 2, 46789, 'Won'),
(785, 17, 5, 'PK-25', 13, 33456, 'Won'),
(786, 17, 6, 'PS-2', 14, 29876, 'Won'),
(787, 17, 7, 'PS-25', 1, 43567, 'Won'),
(788, 17, 8, 'PP-45', 2, 41234, 'Won'),
(789, 18, 12, 'NA-75', 2, 72345, 'Won'),
(790, 18, 20, 'NA-114', 4, 45678, 'Won'),
(792, 18, 1, 'PP-46', 2, 66789, 'Won'),
(886, 18, 2, 'PP-47', 2, 63245, 'Won'),
(887, 18, 3, 'PK-26', 4, 41234, 'Won'),
(888, 18, 4, 'PS-21', 1, 38976, 'Won'),
(889, 18, 5, 'PP-11', 2, 59876, 'Won'),
(890, 18, 6, 'PK-27', 4, 35678, 'Won'),
(891, 18, 7, 'PS-3', 14, 28945, 'Won'),
(892, 19, 20, 'NA-115', 4, 84532, 'Won'),
(893, 19, 21, 'NA-76', 2, 67890, 'Won'),
(894, 19, 1, 'PK-28', 4, 76543, 'Won'),
(895, 19, 2, 'PP-48', 4, 73214, 'Won'),
(896, 19, 3, 'NA-46', 4, 69876, 'Won'),
(897, 19, 4, 'PP-12', 2, 58976, 'Won'),
(898, 19, 5, 'PK-29', 4, 65432, 'Won'),
(899, 19, 6, 'PS-22', 1, 41234, 'Won'),
(900, 19, 7, 'PP-49', 4, 62789, 'Won'),
(901, 19, 8, 'PS-4', 16, 33456, 'Won'),
(902, 20, 21, 'NA-77', 2, 89765, 'Won'),
(903, 20, 1, 'PK-30', 22, 78432, 'Won'),
(904, 20, 2, 'PP-13', 2, 72189, 'Won'),
(905, 20, 3, 'PP-50', 22, 69876, 'Won'),
(906, 20, 4, 'PS-1', 1, 54321, 'Won'),
(907, 20, 5, 'PK-21', 22, 67234, 'Won'),
(908, 20, 6, 'PP-14', 2, 63578, 'Won'),
(909, 20, 7, 'PK-22', 2, 61452, 'Won'),
(910, 20, 8, 'PS-24', 1, 48976, 'Won'),
(911, 20, 10, 'PS-6', 16, 35789, 'Won');

-- --------------------------------------------------------

--
-- Table structure for table `politicalparty`
--

CREATE TABLE `politicalparty` (
  `PartyId` int(11) NOT NULL,
  `partyName` varchar(255) NOT NULL,
  `Abbreviation` varchar(20) NOT NULL,
  `foundingDate` date DEFAULT NULL,
  `electionSymbol` varchar(100) DEFAULT NULL,
  `Ideology` varchar(255) DEFAULT NULL,
  `head` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `politicalparty`
--

INSERT INTO `politicalparty` (`PartyId`, `partyName`, `Abbreviation`, `foundingDate`, `electionSymbol`, `Ideology`, `head`) VALUES
(1, 'Pakistan Peoples Party', 'PPP', '1967-11-30', 'Arrow', 'Centre-left, Social democracy', 'Zulfiqar Ali Bhutto'),
(2, 'Pakistan Muslim League (Nawaz)', 'PML-N', '1993-04-30', 'Lion', 'Centre-right, Conservatism', 'Nawaz Sharif'),
(3, 'Pakistan Muslim League (Q)', 'PML-Q', '2002-10-20', 'Tiger', 'Centre-right, Conservatism', 'Chaudhry Shujaat Hussain'),
(4, 'Pakistan Tehreek-e-Insaf', 'PTI', '1996-04-25', 'Bat', 'Centre-right, Populism', 'Imran Khan'),
(5, 'Pakistan Peoples Party (Shaheed Bhutto)', 'PPP-SB', '2012-02-27', 'Arrow', 'Centre-left, Social democracy', 'Ghinwa Bhutto'),
(6, 'Pakistan Peoples Party (Parliamentarians)', 'PPP-P', '2002-10-20', 'Arrow', 'Centre-left, Social democracy', 'Amin Fahim'),
(7, 'Pakistan Peoples Party (Workers)', 'PPP-W', '2014-04-06', 'Arrow', 'Centre-left, Social democracy', 'Safdar Ali Abbasi'),
(8, 'Pakistan Muslim League (Functional)', 'PML-F', '1965-10-05', 'Star', 'Centre-right, Conservatism', 'Pir Pagara Syed Sibghatullah Shah Rashidi'),
(9, 'Pakistan Muslim League (Junejo)', 'PML-J', '1988-05-29', 'Star', 'Centre-right, Conservatism', 'Hamid Nasir Chattha'),
(10, 'Pakistan Muslim League (Zia)', 'PML-Z', '2002-10-20', 'Star', 'Centre-right, Conservatism', 'Ijaz ul Haq'),
(11, 'Jamiat Ulema-e-Islam (F)', 'JUI-F', '1945-07-26', 'Book', 'Far-right, Islamism', 'Fazlur Rehman'),
(12, 'Jamiat Ulema-e-Islam (Sami)', 'JUI-S', '1988-05-29', 'Book', 'Far-right, Islamism', 'Samiul Haq'),
(13, 'Awami National Party', 'ANP', '1986-12-06', 'Hut', 'Centre-left, Secularism', 'Asfandyar Wali Khan'),
(14, 'Muttahida Qaumi Movement', 'MQM', '1984-03-18', 'Kite', 'Centre-right, Ethnic nationalism', 'Khalid Maqbool Siddiqui'),
(15, 'Muttahida Qaumi Movement (London)', 'MQM-L', '1992-08-23', 'Kite', 'Centre-right, Ethnic nationalism', 'Altaf Hussain'),
(16, 'Muttahida Qaumi Movement (Pakistan)', 'MQM-P', '2016-03-03', 'Kite', 'Centre-right, Ethnic nationalism', 'Khalid Maqbool Siddiqui'),
(17, 'Jamaat-e-Islami Pakistan', 'JIP', '1941-08-26', 'Scales', 'Far-right, Islamism', 'Siraj-ul-Haq'),
(18, 'Tehreek-e-Insaf Nazriati Group', 'PTI-NG', '2012-12-12', 'Bat', 'Centre-right, Populism', 'Akhtar Iqbal Dar'),
(19, 'Tehreek-e-Insaf Gulalai', 'PTI-G', '2017-08-01', 'Bat', 'Centre-right, Populism', 'Ayesha Gulalai Wazir'),
(20, 'National Awami Party (Bhashani)', 'NAP-B', '1957-11-30', 'Sheaf of Paddy', 'Left-wing, Socialism', 'Abdul Hamid Khan Bhashani'),
(21, 'National Awami Party (Wali)', 'NAP-W', '1967-11-30', 'Sheaf of Paddy', 'Left-wing, Socialism', 'Khan Abdul Wali Khan'),
(22, 'Tehreek-e-Istiqlal', 'TeI', '1970-02-01', 'Sword', 'Centre-right, Secularism', 'Asghar Khan');

-- --------------------------------------------------------

--
-- Table structure for table `politicalposition`
--

CREATE TABLE `politicalposition` (
  `PositionId` int(11) NOT NULL,
  `positionName` varchar(255) NOT NULL,
  `JurisdictionLevel` varchar(50) NOT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `politicalposition`
--

INSERT INTO `politicalposition` (`PositionId`, `positionName`, `JurisdictionLevel`, `IsActive`) VALUES
(1, 'President of Pakistan', 'Federal', 1),
(2, 'Prime Minister of Pakistan', 'Federal', 1),
(3, 'Deputy Prime Minister', 'Federal', 0),
(4, 'Federal Minister', 'Federal', 1),
(5, 'Minister of State', 'Federal', 1),
(6, 'Parliamentary Secretary', 'Federal', 1),
(7, 'Advisor to Prime Minister', 'Federal', 1),
(8, 'Special Assistant to Prime Minister', 'Federal', 1),
(9, 'Attorney General of Pakistan', 'Federal', 1),
(10, 'Secretary to Government of Pakistan', 'Federal', 1),
(11, 'Speaker National Assembly', 'Federal', 1),
(12, 'Deputy Speaker National Assembly', 'Federal', 1),
(13, 'Chairman Senate', 'Federal', 1),
(14, 'Deputy Chairman Senate', 'Federal', 1),
(15, 'Member National Assembly', 'Federal', 1),
(16, 'Senator', 'Federal', 1),
(17, 'Leader of the House (National Assembly)', 'Federal', 1),
(18, 'Leader of the Opposition (National Assembly)', 'Federal', 1),
(19, 'Leader of the House (Senate)', 'Federal', 1),
(20, 'Leader of the Opposition (Senate)', 'Federal', 1),
(21, 'Chief Whip (National Assembly)', 'Federal', 1),
(22, 'Chief Whip (Senate)', 'Federal', 1),
(23, 'Chief Justice of Pakistan', 'Federal', 1),
(24, 'Justice Supreme Court of Pakistan', 'Federal', 1),
(25, 'Chief Justice Federal Shariat Court', 'Federal', 1),
(26, 'Justice Federal Shariat Court', 'Federal', 1),
(27, 'Governor Punjab', 'Provincial', 1),
(28, 'Governor Sindh', 'Provincial', 1),
(29, 'Governor Khyber Pakhtunkhwa', 'Provincial', 1),
(30, 'Governor Balochistan', 'Provincial', 1),
(31, 'Chief Minister Punjab', 'Provincial', 1),
(32, 'Chief Minister Sindh', 'Provincial', 1),
(33, 'Chief Minister Khyber Pakhtunkhwa', 'Provincial', 1),
(34, 'Chief Minister Balochistan', 'Provincial', 1),
(35, 'Provincial Minister', 'Provincial', 1),
(36, 'Provincial Advisor', 'Provincial', 1),
(37, 'Provincial Secretary', 'Provincial', 1),
(38, 'Speaker Provincial Assembly Punjab', 'Provincial', 1),
(39, 'Speaker Provincial Assembly Sindh', 'Provincial', 1),
(40, 'Speaker Provincial Assembly Khyber Pakhtunkhwa', 'Provincial', 1),
(41, 'Speaker Provincial Assembly Balochistan', 'Provincial', 1),
(42, 'Deputy Speaker Provincial Assembly Punjab', 'Provincial', 1),
(43, 'Deputy Speaker Provincial Assembly Sindh', 'Provincial', 1),
(44, 'Deputy Speaker Provincial Assembly Khyber Pakhtunkhwa', 'Provincial', 1),
(45, 'Deputy Speaker Provincial Assembly Balochistan', 'Provincial', 1),
(46, 'Member Provincial Assembly Punjab', 'Provincial', 1),
(47, 'Member Provincial Assembly Sindh', 'Provincial', 1),
(48, 'Member Provincial Assembly Khyber Pakhtunkhwa', 'Provincial', 1),
(49, 'Member Provincial Assembly Balochistan', 'Provincial', 1),
(50, 'Leader of the House (Provincial Assembly)', 'Provincial', 1),
(51, 'Leader of the Opposition (Provincial Assembly)', 'Provincial', 1),
(52, 'Chief Justice High Court Punjab', 'Provincial', 1),
(53, 'Chief Justice High Court Sindh', 'Provincial', 1),
(54, 'Chief Justice High Court Peshawar', 'Provincial', 1),
(55, 'Chief Justice High Court Balochistan', 'Provincial', 1),
(56, 'Justice High Court Punjab', 'Provincial', 1),
(57, 'Justice High Court Sindh', 'Provincial', 1),
(58, 'Justice High Court Peshawar', 'Provincial', 1),
(59, 'Justice High Court Balochistan', 'Provincial', 1),
(60, 'Chief Commissioner Islamabad', 'Federal', 1),
(61, 'Deputy Commissioner Islamabad', 'Federal', 1),
(62, 'Mayor Islamabad', 'Local', 1),
(63, 'President Azad Jammu & Kashmir', 'Regional', 1),
(64, 'Prime Minister Azad Jammu & Kashmir', 'Regional', 1),
(65, 'Speaker Legislative Assembly AJK', 'Regional', 1),
(66, 'Member Legislative Assembly AJK', 'Regional', 1),
(67, 'Governor Gilgit-Baltistan', 'Regional', 1),
(68, 'Chief Minister Gilgit-Baltistan', 'Regional', 1),
(69, 'Speaker Legislative Assembly GB', 'Regional', 1),
(70, 'Member Legislative Assembly GB', 'Regional', 1),
(71, 'District Nazim', 'Local', 0),
(72, 'District Naib Nazim', 'Local', 0),
(73, 'Deputy Commissioner', 'Local', 1),
(74, 'District Police Officer', 'Local', 1),
(75, 'Chairman District Council', 'Local', 1),
(76, 'Vice Chairman District Council', 'Local', 1),
(77, 'Member District Council', 'Local', 1),
(78, 'Tehsil Nazim', 'Local', 0),
(79, 'Tehsil Naib Nazim', 'Local', 0),
(80, 'Chairman Tehsil Council', 'Local', 1),
(81, 'Vice Chairman Tehsil Council', 'Local', 1),
(82, 'Member Tehsil Council', 'Local', 1),
(83, 'Town Nazim', 'Local', 0),
(84, 'Town Naib Nazim', 'Local', 0),
(85, 'Chairman Union Council', 'Local', 1),
(86, 'Vice Chairman Union Council', 'Local', 1),
(87, 'Member Union Council', 'Local', 1),
(88, 'Mayor', 'Local', 1),
(89, 'Deputy Mayor', 'Local', 1),
(90, 'Chairman Municipal Committee', 'Local', 1),
(91, 'Vice Chairman Municipal Committee', 'Local', 1),
(92, 'Member Municipal Committee', 'Local', 1),
(93, 'Chairman Town Committee', 'Local', 1),
(94, 'Member Town Committee', 'Local', 1),
(95, 'Chief of Army Staff', 'Federal', 1),
(96, 'Chief of Naval Staff', 'Federal', 1),
(97, 'Chief of Air Staff', 'Federal', 1),
(98, 'Chairman Joint Chiefs of Staff Committee', 'Federal', 1),
(99, 'Defence Minister', 'Federal', 1),
(100, 'Defence Secretary', 'Federal', 1),
(101, 'Chief Election Commissioner', 'Federal', 1),
(102, 'Member Election Commission', 'Federal', 1),
(103, 'Provincial Election Commissioner', 'Provincial', 1),
(104, 'Auditor General of Pakistan', 'Federal', 1),
(105, 'Chairman Public Accounts Committee', 'Federal', 1),
(106, 'Ombudsman', 'Federal', 1),
(107, 'Provincial Ombudsman', 'Provincial', 1),
(108, 'Governor State Bank of Pakistan', 'Federal', 1),
(109, 'Chairman Securities and Exchange Commission', 'Federal', 1),
(110, 'Chairman Federal Board of Revenue', 'Federal', 1),
(111, 'Finance Minister', 'Federal', 1),
(112, 'Provincial Finance Minister', 'Provincial', 1),
(113, 'Chairman Water and Power Development Authority', 'Federal', 1),
(114, 'Chairman Pakistan Railway', 'Federal', 1),
(115, 'Chairman Higher Education Commission', 'Federal', 1),
(116, 'Director General Inter-Services Intelligence', 'Federal', 1),
(117, 'Director General Intelligence Bureau', 'Federal', 1),
(118, 'Provincial Police Officer', 'Provincial', 1),
(119, 'Home Secretary Provincial', 'Provincial', 1),
(120, 'Chief Secretary Provincial', 'Provincial', 1),
(121, 'Chairman Provincial Public Service Commission', 'Provincial', 1),
(122, 'Speaker Constituent Assembly', 'Federal', 0),
(123, 'President Constituent Assembly', 'Federal', 0),
(124, 'Member Constituent Assembly', 'Federal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `politician`
--

CREATE TABLE `politician` (
  `politicianid` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `DateofBirth` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `placeofbirth` varchar(255) DEFAULT NULL,
  `Biography` text DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT 1,
  `photourl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `politician`
--

INSERT INTO `politician` (`politicianid`, `FirstName`, `LastName`, `DateofBirth`, `Gender`, `placeofbirth`, `Biography`, `IsActive`, `photourl`) VALUES
(1, 'Liaqat ali', 'Khan', '1895-10-01', 'M', 'Karnal(India)', 'Pakistan’s first prime minister.', 0, 'https://en.wikipedia.org/wiki/Liaquat_Ali_Khan#/media/File:Liaquat_Ali_Khan_1945.jpg'),
(2, 'Sir Khawaja', 'Nizamuddin', '1894-07-19', 'M', 'Dhaka(Bangladesh)', 'Second Prime Minister of Pakistan.', 0, 'https://en.wikipedia.org/wiki/Khawaja_Nazimuddin#/media/File:Khawaja_Nazimuddin.jpg'),
(3, 'Muhammad Ali', 'Bogra', '1909-10-19', 'M', 'Bogra(Bangal)', 'Third Prime Minister of Pakistan.', 0, 'https://en.wikipedia.org/wiki/Mohammad_Ali_Bogra#/media/File:Mohammad_Ali_Bogra_portrait_(cropped).jpg'),
(4, 'Chaudhry Muhammad', 'Ali', '1905-07-15', 'M', 'Jalandhar (Punjab)', 'Fourth Prime Minister and constitution maker.', 0, 'https://en.wikipedia.org/wiki/Chaudhri_Muhammad_Ali#/media/File:Mohamad_Ali,_primeiro-ministro_do_Paquist%C3%A3o,_sem_data.tif'),
(5, 'Huseyn Shaheed', 'Suhrawardy', '1892-09-08', 'M', 'Midnapore, Bengal Presidency, British India', 'Fifth Prime Minister and key Bengali leader.', 0, 'https://en.wikipedia.org/wiki/Huseyn_Shaheed_Suhrawardy#/media/File:Huseyn_Shaheed_Suhrawardy.png'),
(6, 'Ibrahim Ismail', 'Chundrigar', '1897-09-15', 'M', 'Godhra, Bombay Presidency, British India', 'Briefly 6th Prime Minister in 1957.', 0, 'https://en.wikipedia.org/wiki/I._I._Chundrigar#/media/File:Ibrahim_Ismail_Chundrigar.jpg'),
(7, 'Feroz Khan', 'Noon', '1893-05-07', 'M', 'Hamoka, Punjab, British India', '7th Prime Minister and founding father.', 0, 'https://en.wikipedia.org/wiki/Feroz_Khan_Noon#/media/File:Feroz_Khan_Noon.jpg'),
(8, 'Nurul', 'Amin', '1893-07-15', 'M', 'Shahbazpur, Bengal Presidency, British India', '8th Prime Minister and Vice President.', 0, 'https://simple.wikipedia.org/wiki/Nurul_Amin#/media/File:Nurul_amin.jpg'),
(9, 'Zulfikar Ali', 'Bhutto', '1928-01-05', 'M', 'Ratodero Taluka, Sind Division, Bombay Presidency', '9th Prime Minister and founder of PPP.', 0, 'https://en.wikipedia.org/wiki/Zulfikar_Ali_Bhutto#/media/File:Z_A_Bhutto_(President_of_Pakistan).jpg'),
(10, 'Mohammad Khan', 'Junejo', '1932-08-18', 'M', 'Sindhri, Sind Division, Bombay Presidency, British India', '10th Prime Minister under Zia-ul-Haq.', 0, 'https://en.wikipedia.org/wiki/Muhammad_Khan_Junejo#/media/File:Muhammad_Khan_Junejo.jpg'),
(11, 'Benazir', 'Bhutto', '1953-06-21', 'F', 'Karachi, Federal Capital Territory, Pakistan', 'First female Prime Minister of Pakistan.', 0, 'https://en.wikipedia.org/wiki/Benazir_Bhutto#/media/File:Oliver_Mark_-_Benazir_Bhutto,_Dubai_2006_(cropped).jpg'),
(12, 'Nawaz', 'Sharif', '1949-12-25', 'M', 'Lahore, Punjab, Pakistan', 'Three-time Prime Minister and PML(N) leader.', 0, 'https://en.wikipedia.org/wiki/Nawaz_Sharif#/media/File:PrimeMinisterNawazSharif.jpg'),
(13, 'Zafarullah', 'Jamali', '1944-01-01', 'M', 'Jaffarabad, Balochistan, British India', 'Only elected PM from Balochistan.', 0, 'https://en.wikipedia.org/wiki/Zafarullah_Khan_Jamali#/media/File:Zafarullah_Khan_Jamali_(cropped).jpg'),
(14, 'Chaudhry', 'Shujaat Hussain', '1946-01-27', 'M', 'Gujrat, Punjab, British India', 'Former PM and PML(Q) president.', 0, 'https://en.wikipedia.org/wiki/Shujaat_Hussain#/media/File:Pakistan_delegation_(cropped).jpg'),
(15, 'Shaukat', 'Aziz', '1949-03-06', 'M', 'Karachi, Federal Capital Territory, Pakistan', '15th Prime Minister and Finance Minister.', 0, 'https://en.wikipedia.org/wiki/Shaukat_Aziz#/media/File:Shaukat_Aziz.jpg'),
(16, 'Yousaf', 'Raza Gillani', '1952-06-09', 'M', 'Multan, Punjab, Pakistan', '16th Prime Minister and Senate Chairman.', 0, 'https://en.wikipedia.org/wiki/Yusuf_Raza_Gilani#/media/File:Yousaf_Raza_Gilani_2010_(cropped).jpg'),
(17, 'Raja', 'Pervaiz Ashraf', '1950-12-26', 'M', 'Sanghar, Sindh, Pakistan', '17th Prime Minister and former National Assembly Speaker.', 0, 'https://en.wikipedia.org/wiki/Raja_Pervaiz_Ashraf#/media/File:Raja_Pervez_Ashraf.jpg'),
(19, 'Shahid Khaqan', 'Abbasi', '1958-12-27', 'M', 'Murree, Punjab, Pakistan', 'Prime Minister 2017-2018 and party president.', 0, 'https://en.wikipedia.org/wiki/Shahid_Khaqan_Abbasi#/media/File:Shahid_Khaqan_Abbasi_(cropped).jpg'),
(20, 'Imran', 'Khan', '1952-10-05', 'M', 'Lahore, West Punjab, Dominion of Pakistan', 'Former cricketer and 19th Prime Minister.', 0, 'https://en.wikipedia.org/wiki/Imran_Khan#/media/File:Imran_Khan_(June_2023).jpg'),
(21, 'Shehbaz', 'Sharif', '1951-09-23', 'M', 'Lahore, Punjab, Pakistan', 'Current Prime Minister and PML(N) president.', 1, 'https://en.wikipedia.org/wiki/Shehbaz_Sharif#/media/File:Shehbaz_Sharif_cropped.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `provinceregion`
--

CREATE TABLE `provinceregion` (
  `ProvinceId` int(11) NOT NULL,
  `ProvinceName` varchar(100) NOT NULL,
  `RegionType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinceregion`
--

INSERT INTO `provinceregion` (`ProvinceId`, `ProvinceName`, `RegionType`) VALUES
(1, 'Islamabad Capital Territory', 'Federal Territory'),
(2, 'Punjab', 'Province'),
(3, 'Sindh', 'Province'),
(4, 'Khyber Pakhtunkhwa', 'Province'),
(5, 'Balochistan', 'Province'),
(6, 'Former East Pakistan', 'Province (Historical)'),
(7, 'FATA (Historical)', 'Federal Territory (Historical)');

-- --------------------------------------------------------

--
-- Table structure for table `tenure`
--

CREATE TABLE `tenure` (
  `TenureID` int(11) NOT NULL,
  `PoliticianID` int(11) DEFAULT NULL,
  `PositionID` int(11) DEFAULT NULL,
  `PartyID` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `ProvinceID` int(11) DEFAULT NULL,
  `Constituencycode` varchar(50) DEFAULT NULL,
  `AdministrativeTermID` int(11) DEFAULT NULL,
  `AppointmentReason` varchar(100) DEFAULT NULL,
  `ReasonForLeaving` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenure`
--

INSERT INTO `tenure` (`TenureID`, `PoliticianID`, `PositionID`, `PartyID`, `StartDate`, `EndDate`, `ProvinceID`, `Constituencycode`, `AdministrativeTermID`, `AppointmentReason`, `ReasonForLeaving`) VALUES
(73, 1, 1, NULL, '1947-08-15', '1951-10-16', 1, 'NA-244', 1, 'First PM of Pakistan', 'Assassinated'),
(74, 2, 1, NULL, '1951-10-17', '1953-04-17', 1, 'EP-2', 2, 'Appointed after assassination', 'Dismissed by Governor General'),
(75, 3, 1, NULL, '1953-04-17', '1955-08-12', 1, 'EP-6', 3, 'Appointed by Governor General', 'Dismissed'),
(76, 4, 1, NULL, '1955-08-12', '1956-09-12', 1, 'NA-249', 4, 'Parliamentary appointment', 'Resigned'),
(77, 5, 1, NULL, '1956-09-12', '1957-10-18', 1, 'EP-1', 5, 'Coalition leader', 'Lost parliamentary support'),
(78, 6, 1, NULL, '1957-10-18', '1957-12-16', 1, 'NA-244', 6, 'Parliamentary appointment', 'Lost confidence vote'),
(79, 7, 1, NULL, '1957-12-16', '1958-10-07', 1, 'NA-247', 7, 'Coalition appointment', 'Martial Law imposed'),
(80, 8, 1, NULL, '1971-12-07', '1971-12-20', 6, 'EP-2', 8, 'Emergency appointment', 'Fall of Dhaka'),
(81, 9, 1, 1, '1973-08-14', '1977-07-05', 1, 'NA-249', 9, 'Constitutional PM', 'Military coup'),
(82, 10, 1, 9, '1985-03-23', '1988-05-29', 1, 'NA-210', 10, 'Zia era appointment', 'Dismissed by President'),
(83, 11, 1, 1, '1988-12-02', '1990-08-06', 1, 'NA-249', 11, 'Election victory', 'Dismissed by President'),
(84, 12, 1, 2, '1990-11-06', '1993-07-18', 1, 'NA-237', 12, 'Election victory', 'Dismissed by President'),
(85, 11, 1, 1, '1993-10-19', '1996-11-05', 1, 'NA-249', 13, 'Election victory', 'Dismissed for corruption'),
(86, 12, 1, 2, '1997-02-17', '1999-10-12', 1, 'NA-237', 14, 'Election victory', 'Military coup'),
(87, 13, 1, 3, '2002-11-23', '2004-06-26', 1, 'NA-243', 15, 'Post-Musharraf election', 'Resigned under pressure'),
(88, 14, 1, 3, '2004-06-30', '2004-08-20', 1, 'NA-262', 16, 'Interim appointment', 'Temporary role'),
(89, 15, 1, 3, '2004-08-20', '2007-11-15', 1, 'NA-237', 17, 'Musharraf appointee', 'End of term'),
(90, 16, 1, 1, '2008-03-25', '2012-06-19', 1, 'NA-240', 18, 'PPP election victory', 'Disqualified by SC'),
(91, 17, 1, 1, '2012-06-22', '2013-03-24', 1, 'NA-238', 19, 'PPP appointment', 'End of government'),
(92, 12, 1, 2, '2013-06-05', '2017-07-28', 1, 'NA-237', 20, 'Third election victory', 'Panama Papers disqualification'),
(94, 1, 1, NULL, '1947-08-15', '1951-10-16', 1, 'NA-244', 1, 'First PM of Pakistan', 'Assassinated'),
(95, 2, 1, NULL, '1951-10-17', '1953-04-17', 1, 'EP-2', 2, 'Appointed after assassination', 'Dismissed by Governor General'),
(96, 3, 1, NULL, '1953-04-17', '1955-08-12', 1, 'EP-6', 3, 'Appointed by Governor General', 'Dismissed'),
(97, 4, 1, NULL, '1955-08-12', '1956-09-12', 1, 'NA-249', 4, 'Parliamentary appointment', 'Resigned'),
(98, 5, 1, NULL, '1956-09-12', '1957-10-18', 1, 'EP-1', 5, 'Coalition leader', 'Lost parliamentary support'),
(99, 6, 1, NULL, '1957-10-18', '1957-12-16', 1, 'NA-244', 6, 'Parliamentary appointment', 'Lost confidence vote'),
(100, 7, 1, NULL, '1957-12-16', '1958-10-07', 1, 'NA-247', 7, 'Coalition appointment', 'Martial Law imposed'),
(101, 8, 1, NULL, '1971-12-07', '1971-12-20', 6, 'EP-2', 8, 'Emergency appointment', 'Fall of Dhaka'),
(102, 9, 1, 1, '1973-08-14', '1977-07-05', 1, 'NA-249', 9, 'Constitutional PM', 'Military coup'),
(103, 10, 1, 9, '1985-03-23', '1988-05-29', 1, 'NA-210', 10, 'Zia era appointment', 'Dismissed by President'),
(104, 11, 1, 1, '1988-12-02', '1990-08-06', 1, 'NA-249', 11, 'Election victory', 'Dismissed by President'),
(105, 12, 1, 2, '1990-11-06', '1993-07-18', 1, 'NA-237', 12, 'Election victory', 'Dismissed by President'),
(106, 11, 1, 1, '1993-10-19', '1996-11-05', 1, 'NA-249', 13, 'Election victory', 'Dismissed for corruption'),
(107, 12, 1, 2, '1997-02-17', '1999-10-12', 1, 'NA-237', 14, 'Election victory', 'Military coup'),
(108, 13, 1, 3, '2002-11-23', '2004-06-26', 1, 'NA-243', 15, 'Post-Musharraf election', 'Resigned under pressure'),
(109, 14, 1, 3, '2004-06-30', '2004-08-20', 1, 'NA-262', 16, 'Interim appointment', 'Temporary role'),
(110, 15, 1, 3, '2004-08-20', '2007-11-15', 1, 'NA-237', 17, 'Musharraf appointee', 'End of term'),
(111, 16, 1, 1, '2008-03-25', '2012-06-19', 1, 'NA-240', 18, 'PPP election victory', 'Disqualified by SC'),
(112, 17, 1, 1, '2012-06-22', '2013-03-24', 1, 'NA-238', 19, 'PPP appointment', 'End of government'),
(113, 12, 1, 2, '2013-06-05', '2017-07-28', 1, 'NA-237', 20, 'Third election victory', 'Panama Papers disqualification'),
(115, 2, 1, NULL, '1951-10-17', '1953-04-17', 1, 'EP-2', 2, 'Appointed after assassination', 'Dismissed by Governor General'),
(116, 3, 1, NULL, '1953-04-17', '1955-08-12', 1, 'EP-6', 3, 'Appointed by Governor General', 'Dismissed'),
(117, 4, 1, NULL, '1955-08-12', '1956-09-12', 1, 'NA-249', 4, 'Parliamentary appointment', 'Resigned'),
(118, 5, 1, NULL, '1956-09-12', '1957-10-18', 1, 'EP-1', 5, 'Coalition leader', 'Lost parliamentary support'),
(119, 6, 1, NULL, '1957-10-18', '1957-12-16', 1, 'NA-244', 6, 'Parliamentary appointment', 'Lost confidence vote'),
(120, 7, 1, NULL, '1957-12-16', '1958-10-07', 1, 'NA-247', 7, 'Coalition appointment', 'Martial Law imposed'),
(121, 8, 1, NULL, '1971-12-07', '1971-12-20', 6, 'EP-2', 8, 'Emergency appointment', 'Fall of Dhaka'),
(122, 9, 1, 1, '1973-08-14', '1977-07-05', 1, 'NA-249', 9, 'Constitutional PM', 'Military coup'),
(123, 10, 1, 9, '1985-03-23', '1988-05-29', 1, 'NA-210', 10, 'Zia era appointment', 'Dismissed by President'),
(124, 11, 1, 1, '1988-12-02', '1990-08-06', 1, 'NA-249', 11, 'Election victory', 'Dismissed by President'),
(125, 12, 1, 2, '1990-11-06', '1993-07-18', 1, 'NA-237', 12, 'Election victory', 'Dismissed by President'),
(126, 11, 1, 1, '1993-10-19', '1996-11-05', 1, 'NA-249', 13, 'Election victory', 'Dismissed for corruption'),
(127, 12, 1, 2, '1997-02-17', '1999-10-12', 1, 'NA-237', 14, 'Election victory', 'Military coup'),
(128, 13, 1, 3, '2002-11-23', '2004-06-26', 1, 'NA-243', 15, 'Post-Musharraf election', 'Resigned under pressure'),
(129, 14, 1, 3, '2004-06-30', '2004-08-20', 1, 'NA-262', 16, 'Interim appointment', 'Temporary role'),
(130, 15, 1, 3, '2004-08-20', '2007-11-15', 1, 'NA-237', 17, 'Musharraf appointee', 'End of term'),
(131, 16, 1, 1, '2008-03-25', '2012-06-19', 1, 'NA-240', 18, 'PPP election victory', 'Disqualified by SC'),
(132, 17, 1, 1, '2012-06-22', '2013-03-24', 1, 'NA-238', 19, 'PPP appointment', 'End of government'),
(133, 12, 1, 2, '2013-06-05', '2017-07-28', 1, 'NA-237', 20, 'Third election victory', 'Panama Papers disqualification'),
(135, 12, 1, 2, '2013-06-05', '2017-07-28', 1, 'NA-237', 20, 'Third election victory', 'Panama Papers disqualification'),
(137, 12, 1, 2, '2013-06-05', '2017-07-28', 1, 'NA-237', 20, 'Third election victory', 'Panama Papers disqualification'),
(139, 20, 1, 2, '2024-03-04', NULL, 1, 'NA-237', 24, '2024 Election coalition', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_electionresults`
-- (See below for the actual view)
--
CREATE TABLE `view_electionresults` (
`electionid` int(11)
,`electiondate` date
,`ElectionType` varchar(50)
,`ResultID` int(11)
,`VotesReceived` int(11)
,`ResultStatus` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_politicianparty_election`
-- (See below for the actual view)
--
CREATE TABLE `view_politicianparty_election` (
`politicianid` int(11)
,`FirstName` varchar(100)
,`LastName` varchar(100)
,`partyName` varchar(255)
,`Abbreviation` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_politicianposition`
-- (See below for the actual view)
--
CREATE TABLE `view_politicianposition` (
`politicianid` int(11)
,`FirstName` varchar(100)
,`LastName` varchar(100)
,`positionName` varchar(255)
,`JurisdictionLevel` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_politicianprovince`
-- (See below for the actual view)
--
CREATE TABLE `view_politicianprovince` (
`politicianid` int(11)
,`FirstName` varchar(100)
,`LastName` varchar(100)
,`ProvinceName` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_provinceconstituency`
-- (See below for the actual view)
--
CREATE TABLE `view_provinceconstituency` (
`ProvinceName` varchar(100)
,`Constituencycode` varchar(50)
,`CityName` varchar(255)
,`assemblyType` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `view_electionresults`
--
DROP TABLE IF EXISTS `view_electionresults`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_electionresults`  AS SELECT `e`.`electionid` AS `electionid`, `e`.`electiondate` AS `electiondate`, `e`.`ElectionType` AS `ElectionType`, `er`.`ResultID` AS `ResultID`, `er`.`VotesReceived` AS `VotesReceived`, `er`.`ResultStatus` AS `ResultStatus` FROM (`election` `e` join `electionresult` `er` on(`er`.`ElectionID` = `e`.`electionid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_politicianparty_election`
--
DROP TABLE IF EXISTS `view_politicianparty_election`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_politicianparty_election`  AS SELECT `p`.`politicianid` AS `politicianid`, `p`.`FirstName` AS `FirstName`, `p`.`LastName` AS `LastName`, `pr`.`partyName` AS `partyName`, `pr`.`Abbreviation` AS `Abbreviation` FROM ((`electionresult` `er` join `politician` `p` on(`er`.`PoliticianID` = `p`.`politicianid`)) join `politicalparty` `pr` on(`er`.`PartyID` = `pr`.`PartyId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_politicianposition`
--
DROP TABLE IF EXISTS `view_politicianposition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_politicianposition`  AS SELECT `p`.`politicianid` AS `politicianid`, `p`.`FirstName` AS `FirstName`, `p`.`LastName` AS `LastName`, `pos`.`positionName` AS `positionName`, `pos`.`JurisdictionLevel` AS `JurisdictionLevel` FROM ((`tenure` `t` join `politician` `p` on(`t`.`PoliticianID` = `p`.`politicianid`)) join `politicalposition` `pos` on(`t`.`PositionID` = `pos`.`PositionId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_politicianprovince`
--
DROP TABLE IF EXISTS `view_politicianprovince`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_politicianprovince`  AS SELECT `p`.`politicianid` AS `politicianid`, `p`.`FirstName` AS `FirstName`, `p`.`LastName` AS `LastName`, `pr`.`ProvinceName` AS `ProvinceName` FROM ((`tenure` `t` join `politician` `p` on(`t`.`PoliticianID` = `p`.`politicianid`)) join `provinceregion` `pr` on(`t`.`ProvinceID` = `pr`.`ProvinceId`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_provinceconstituency`
--
DROP TABLE IF EXISTS `view_provinceconstituency`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_provinceconstituency`  AS SELECT `pr`.`ProvinceName` AS `ProvinceName`, `c`.`Constituencycode` AS `Constituencycode`, `c`.`CityName` AS `CityName`, `c`.`assemblyType` AS `assemblyType` FROM (`constituency` `c` join `provinceregion` `pr` on(`c`.`provinceid` = `pr`.`ProvinceId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrativeterm`
--
ALTER TABLE `administrativeterm`
  ADD PRIMARY KEY (`AdministrativeTermid`);

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
  ADD PRIMARY KEY (`Constituencycode`),
  ADD KEY `provinceid` (`provinceid`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`electionid`);

--
-- Indexes for table `electionresult`
--
ALTER TABLE `electionresult`
  ADD PRIMARY KEY (`ResultID`),
  ADD KEY `ElectionID` (`ElectionID`),
  ADD KEY `PoliticianID` (`PoliticianID`),
  ADD KEY `Constituencycode` (`Constituencycode`),
  ADD KEY `PartyID` (`PartyID`);

--
-- Indexes for table `politicalparty`
--
ALTER TABLE `politicalparty`
  ADD PRIMARY KEY (`PartyId`),
  ADD UNIQUE KEY `partyName` (`partyName`),
  ADD UNIQUE KEY `Abbreviation` (`Abbreviation`);

--
-- Indexes for table `politicalposition`
--
ALTER TABLE `politicalposition`
  ADD PRIMARY KEY (`PositionId`),
  ADD UNIQUE KEY `positionName` (`positionName`);

--
-- Indexes for table `politician`
--
ALTER TABLE `politician`
  ADD PRIMARY KEY (`politicianid`);

--
-- Indexes for table `provinceregion`
--
ALTER TABLE `provinceregion`
  ADD PRIMARY KEY (`ProvinceId`),
  ADD UNIQUE KEY `ProvinceName` (`ProvinceName`);

--
-- Indexes for table `tenure`
--
ALTER TABLE `tenure`
  ADD PRIMARY KEY (`TenureID`),
  ADD KEY `PoliticianID` (`PoliticianID`),
  ADD KEY `PositionID` (`PositionID`),
  ADD KEY `PartyID` (`PartyID`),
  ADD KEY `ProvinceID` (`ProvinceID`),
  ADD KEY `Constituencycode` (`Constituencycode`),
  ADD KEY `AdministrativeTermID` (`AdministrativeTermID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrativeterm`
--
ALTER TABLE `administrativeterm`
  MODIFY `AdministrativeTermid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `electionid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `electionresult`
--
ALTER TABLE `electionresult`
  MODIFY `ResultID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=912;

--
-- AUTO_INCREMENT for table `politicalparty`
--
ALTER TABLE `politicalparty`
  MODIFY `PartyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `politicalposition`
--
ALTER TABLE `politicalposition`
  MODIFY `PositionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=860;

--
-- AUTO_INCREMENT for table `politician`
--
ALTER TABLE `politician`
  MODIFY `politicianid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `provinceregion`
--
ALTER TABLE `provinceregion`
  MODIFY `ProvinceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tenure`
--
ALTER TABLE `tenure`
  MODIFY `TenureID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `constituency`
--
ALTER TABLE `constituency`
  ADD CONSTRAINT `constituency_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `provinceregion` (`ProvinceId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `electionresult`
--
ALTER TABLE `electionresult`
  ADD CONSTRAINT `electionresult_ibfk_1` FOREIGN KEY (`ElectionID`) REFERENCES `election` (`electionid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `electionresult_ibfk_2` FOREIGN KEY (`PoliticianID`) REFERENCES `politician` (`politicianid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `electionresult_ibfk_3` FOREIGN KEY (`Constituencycode`) REFERENCES `constituency` (`Constituencycode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `electionresult_ibfk_4` FOREIGN KEY (`PartyID`) REFERENCES `politicalparty` (`PartyId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tenure`
--
ALTER TABLE `tenure`
  ADD CONSTRAINT `tenure_ibfk_1` FOREIGN KEY (`PoliticianID`) REFERENCES `politician` (`politicianid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenure_ibfk_2` FOREIGN KEY (`PositionID`) REFERENCES `politicalposition` (`PositionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenure_ibfk_3` FOREIGN KEY (`PartyID`) REFERENCES `politicalparty` (`PartyId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenure_ibfk_4` FOREIGN KEY (`ProvinceID`) REFERENCES `provinceregion` (`ProvinceId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenure_ibfk_5` FOREIGN KEY (`Constituencycode`) REFERENCES `constituency` (`Constituencycode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tenure_ibfk_6` FOREIGN KEY (`AdministrativeTermID`) REFERENCES `administrativeterm` (`AdministrativeTermid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
