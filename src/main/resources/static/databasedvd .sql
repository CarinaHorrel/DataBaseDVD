-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2017 at 10:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasedvd`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`id`, `first_name`, `last_name`) VALUES
(1, 'Maria', 'Bello'),
(2, 'Monica', 'Bellucci'),
(3, 'Halle', 'Berry'),
(4, 'Lorraine', 'Bracco'),
(5, 'Amy', 'Brenneman'),
(6, 'Evelyne', 'Brochu'),
(7, 'George', 'Clooney'),
(8, 'Kevin', 'Costner'),
(9, 'Tom', 'Cruise'),
(10, 'Dana', 'Delany'),
(11, 'Andy', 'Garcia'),
(12, 'Richard', 'Gere'),
(13, 'Ashley', 'Judd'),
(14, 'Lisa', 'Ling'),
(15, 'Heath', 'Ledger'),
(16, 'Laura', 'Linney'),
(17, 'Matthew', 'McConaughey'),
(18, 'Elizabeth', 'Mitchell'),
(19, 'Lena', 'Olin'),
(20, 'Al', 'Pacino'),
(21, 'Natalie', 'Portman'),
(22, 'Julia', 'Roberts'),
(23, 'Elisabeth', 'Shue'),
(24, 'Meryl', 'Streep'),
(25, 'John', 'Travolta'),
(26, 'Lindsay', 'Wagner'),
(27, 'Paul', 'Walker'),
(28, 'Denzel', ' Washington'),
(29, 'Signourney', 'Weaver'),
(31, 'Bruce', 'Willis'),
(32, 'Robin', 'Wright'),
(67, 'qqqqqqqqqq', 'qqqqqqqqq'),
(68, 'Dana', '');

-- --------------------------------------------------------

--
-- Table structure for table `dvd`
--

CREATE TABLE `dvd` (
  `id` bigint(20) NOT NULL,
  `bonus` bit(1) NOT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvd`
--

INSERT INTO `dvd` (`id`, `bonus`, `origin`, `remarks`, `title`, `year`) VALUES
(1, b'1', ' ', '  ', 'Lights Out', 2016),
(2, b'1', 'DVD', '  ', 'The Confirmation', 2016),
(3, b'1', 'DVD', '  ', 'The 5th Wave', 2016),
(4, b'1', 'DVD', '  ', 'Bravetown/Strings', 2015),
(5, b'1', 'DVD', '  ', 'Demonic ', 2015),
(6, b'1', 'DVDR', '  ', 'McFarland, USA', 2015),
(7, b'1', 'DVDR', '  ', 'Big Driver', 2014),
(8, b'1', 'DVD', '  ', 'Third Person', 2013),
(9, b'1', 'DVDR', '  ', 'Prisoners', 2013),
(10, b'1', 'DVD', '  ', 'Grown Ups 2', 2013),
(11, b'1', 'DVD', '  ', 'Carjacked', 2011),
(12, b'1', 'DVD', '  ', 'Abduction', 2011),
(13, b'1', 'DVD', '  ', 'Beautiful Boy', 2010),
(14, b'1', 'DVD', '  ', 'Grown Ups', 2010),
(15, b'1', 'DVD', '  ', 'The Company Men', 2010),
(16, b'1', 'DVD', '  ', 'The Private Lives of Pippa Lee', 2009),
(17, b'1', 'DVD', '  ', 'The Mummy: Tomb of the Dragon Emperor', 2008),
(18, b'1', 'DVD', 'NTSC Decrypted version available ', 'Downloading Nancy', 2008),
(19, b'1', 'DVD', 'NTSC Decrypted version available ', 'The Yellow Handkerchief', 2008),
(20, b'1', 'DVD', '  ', 'The Jane Austen Book Club', 2007),
(21, b'1', 'DVD', '  ', 'Nothing Is Private/Towelhead', 2007),
(22, b'1', 'DVD', '  ', 'Butterfly on a Wheel', 2007),
(23, b'1', 'DVD', '  ', 'Flicka', 2006),
(24, b'1', 'DVD', '2-DVDs ', 'World Trade Center', 2006),
(25, b'1', 'DVD', '  ', 'Thank You for Smoking', 2005),
(26, b'1', 'DVD', '  ', 'A History of Violence', 2005),
(27, b'1', 'DVD', '  ', 'The Dark', 2005),
(28, b'1', 'DVD', 'No dutch subtitles ', 'The Sisters', 2005),
(29, b'1', 'DVD', '  ', 'Assault on Precinct 13', 2005),
(30, b'1', 'DVDR', '  ', 'Silver City', 2004),
(31, b'1', 'DVD', '  ', 'Secret Window', 2004),
(32, b'1', 'DVD', '  ', 'The Cooler', 2003),
(33, b'1', 'DVD', '  ', '100 Mile Rule', 2002),
(34, b'1', 'DVD', '  ', 'Auto Focus', 2002),
(35, b'1', 'DVD', 'No dutch subtitles ', 'Duets', 2000),
(36, b'1', 'DVD', '  ', 'Coyote Ugly', 2000),
(37, b'1', 'DVD', '  ', 'Sam the Man', 2000),
(38, b'1', 'DVD', '  ', 'Payback', 1999),
(39, b'1', 'DVD', '  ', 'Permanent Midnight', 1998),
(40, b'1', 'DVD', ' ', 'The Brothers Grimm', 2005),
(41, b'1', 'DVD', ' ', 'She Hate Me', 2004),
(42, b'1', 'DVDR', ' ', 'The Passion of the Christ', 2004),
(43, b'1', 'TV', ' ', 'The Matrix Revolutions', 2003),
(44, b'1', 'TV', ' ', 'The Matrix Reloaded', 2003),
(45, b'1', 'DVD', ' ', 'Tears of the Sun', 2003),
(46, b'1', 'DVD', ' ', 'Irréversible', 2002),
(47, b'1', 'DVD', ' ', 'Astérix & Obélix: Mission Cléopâtre', 2002),
(48, b'1', 'DVD', ' ', 'Brotherhood of the Wolf', 2001),
(49, b'1', 'DVD', ' ', 'Malèna', 2000),
(50, b'1', 'DVD', ' ', 'Under Suspicion', 2000),
(51, b'1', 'TV', ' ', 'L appartement', 1996),
(52, b'1', 'DVD', ' 2-DVD', 'Dracula', 1992),
(53, b'1', 'DVDR', ' ', 'The Call', 2013),
(54, b'1', 'DVDR', ' ', 'Dark Tide', 2012),
(55, b'1', 'DVDR', '', 'New Year s Eve', 2011),
(56, b'1', 'DVDR', ' ', 'Frankie and Alice', 2010),
(57, b'1', 'DVD ', ' ', 'Things We Lost in the Fire', 2007),
(58, b'1', 'DVD ', ' ', 'Perfect Stranger', 2007),
(59, b'1', 'DVD ', ' ', 'Their Eyes Were Watching God', 2005),
(60, b'1', 'TV ', ' ', 'Catwoman', 2004),
(61, b'1', 'TV ', ' ', 'Gothika', 2003),
(62, b'1', 'DVD ', '2-DVDs ', 'Die Another Day', 2002),
(63, b'1', 'DVD ', ' ', 'Monster s Ball', 2001),
(64, b'1', 'DVD ', ' ', 'Swordfish', 2001),
(65, b'1', 'TV ', ' ', 'Race the Sun', 1996),
(66, b'1', 'DVD ', ' ', 'Executive Decision', 1996),
(67, b'1', 'TV ', ' ', 'Boomerang', 1992),
(68, b'1', 'DVD ', ' ', 'The Last Boy Scout', 1991),
(69, b'1', 'DVD', ' ', 'Riding in Cars with Boys', 2001),
(70, b'1', 'DVD', 'No subtitles ', 'Custody of the Heart', 2000),
(71, b'1', 'DVD', ' ', 'Ladies Room', 1999),
(72, b'1', 'DVD', 'NTSC Decrypted version available ', 'Silent Cradle', 1997),
(73, b'1', 'DVD', 'No subtitles ', 'The Basketball Diaries', 1995),
(74, b'1', 'DVD', 'No subtitles ', 'Getting Gotti', 1994),
(75, b'1', 'DVD', 'NTSC Decrypted version available ', 'Being Human', 1994),
(76, b'1', 'DVD', 'NTSC Decrypted version available ', 'Traces of Red', 1992),
(77, b'1', 'DVD', ' ', 'Radio Flyer', 1992),
(78, b'1', 'DVDR', ' ', 'Medicine Man', 1992),
(79, b'1', 'DVDR', ' ', 'Switch', 1991),
(80, b'1', 'DVD', ' ', 'Talent for the Game', 1991),
(81, b'1', 'DVD', ' ', 'Goodfellas', 1990),
(82, b'1', 'DVD', 'No subtitles ', 'Up to Date/ In una notte di chiaro di luna', 1989),
(83, b'1', 'DVD', ' ', 'Someone to Watch Over Me', 1987),
(103, b'1', 'DVD', ' ', '88 Minutes', 2007),
(104, b'1', 'DVD', ' ', 'Nine Lives', 2005),
(105, b'1', 'DVD', ' ', 'Off the Map', 2003),
(106, b'1', 'DVD', ' ', 'Things You Can Tell Just by Looking at Her', 2000),
(107, b'1', 'DVD', 'No dutch subtitles', 'Your Friends & Neighbors', 1998),
(108, b'1', 'DVD', ' ', 'Lesser Prophets', 1997),
(109, b'1', 'DVD', ' ', 'Fear', 1996),
(110, b'1', 'DVD', ' ', 'Heat', 1995),
(111, b'1', 'DVD', ' ', 'Bye Bye Love', 1995);

-- --------------------------------------------------------

--
-- Table structure for table `dvd_actors`
--

CREATE TABLE `dvd_actors` (
  `dvd_id` bigint(20) NOT NULL,
  `actors_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvd_actors`
--

INSERT INTO `dvd_actors` (`dvd_id`, `actors_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 4),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4),
(77, 4),
(78, 4),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(20, 5),
(103, 5),
(104, 5),
(105, 5),
(106, 5),
(107, 5),
(108, 5),
(109, 5),
(110, 5),
(111, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dvd_genres`
--

CREATE TABLE `dvd_genres` (
  `dvd_id` bigint(20) NOT NULL,
  `genres_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_import`
--

CREATE TABLE `file_import` (
  `id` bigint(20) NOT NULL,
  `blob_csv` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` bigint(20) NOT NULL,
  `genre_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genre_name`) VALUES
(1, 'Drama'),
(2, 'Romance'),
(3, 'Crime'),
(4, 'Thriller'),
(5, 'Mystery'),
(6, 'Adventure'),
(7, 'Family'),
(8, 'Action'),
(9, 'War'),
(10, 'Adventure'),
(11, 'Horror'),
(12, 'Sci-Fi'),
(13, 'History'),
(14, 'Comedy'),
(15, 'War'),
(16, 'Family'),
(17, 'Biography'),
(18, 'Music'),
(19, 'Musical'),
(20, 'Fantasy'),
(21, 'Sport'),
(22, 'Western'),
(23, 'History'),
(26, 'srh wh24'),
(27, 'Warfgggggggggggggggggggggggggt   6uu  t');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dvd`
--
ALTER TABLE `dvd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ledc510bx03rbjl99nsfo3cjg` (`title`);

--
-- Indexes for table `dvd_actors`
--
ALTER TABLE `dvd_actors`
  ADD KEY `FK2yo7m47947ppsdllylf5khvs1` (`actors_id`),
  ADD KEY `FK95xbbg7u34q8i8vlrq1rgmwec` (`dvd_id`);

--
-- Indexes for table `dvd_genres`
--
ALTER TABLE `dvd_genres`
  ADD KEY `FK51fjxghi23iovircv5dppmxp4` (`genres_id`),
  ADD KEY `FK8sxa583q993twy6q615u093e3` (`dvd_id`);

--
-- Indexes for table `file_import`
--
ALTER TABLE `file_import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `dvd`
--
ALTER TABLE `dvd`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `file_import`
--
ALTER TABLE `file_import`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dvd_actors`
--
ALTER TABLE `dvd_actors`
  ADD CONSTRAINT `FK2yo7m47947ppsdllylf5khvs1` FOREIGN KEY (`actors_id`) REFERENCES `actor` (`id`),
  ADD CONSTRAINT `FK95xbbg7u34q8i8vlrq1rgmwec` FOREIGN KEY (`dvd_id`) REFERENCES `dvd` (`id`);

--
-- Constraints for table `dvd_genres`
--
ALTER TABLE `dvd_genres`
  ADD CONSTRAINT `FK51fjxghi23iovircv5dppmxp4` FOREIGN KEY (`genres_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK8sxa583q993twy6q615u093e3` FOREIGN KEY (`dvd_id`) REFERENCES `dvd` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
