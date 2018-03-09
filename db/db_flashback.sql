-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2018 at 05:44 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_flashback`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cast_id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(1, 'Bruce  Willis'),
(2, 'Alan Rickman'),
(3, 'Alexander Godunov'),
(4, 'Bonnie Bedelia'),
(5, 'Michael J Fox'),
(6, 'Christopher Lloyd'),
(7, 'Lea Tompson'),
(8, 'Cripsin Glover'),
(9, 'Harrison Ford'),
(10, 'Karen Allen'),
(11, 'Paul Freeman'),
(12, 'Ronald Lacey'),
(13, 'John Rhys-Davies'),
(14, 'Denholm Elliot'),
(15, 'Arnold Schwarzenegger'),
(16, 'Michael Beihn'),
(17, 'Linda Hamilton'),
(18, 'Paul Winfield'),
(19, 'Matthew Modine'),
(20, 'Vincent D\'Onofrio'),
(21, 'R. Lee Ermey'),
(22, 'Adam Baldwin'),
(23, 'Arliss Howard'),
(24, 'Dorian Harewood'),
(25, 'Kevyn Major Howard'),
(26, 'Ed O\'Ross'),
(27, 'Bill Murray'),
(28, 'Dan Aykroyd'),
(29, 'Sigourney Weaver'),
(30, 'Harold Ramis'),
(31, 'Rick Moranis'),
(32, 'Emilio Estevez'),
(33, 'Joss Ackland'),
(34, 'Lane Smith'),
(35, 'Tom Hanks'),
(36, 'Tim Allen'),
(37, 'Don Rickles'),
(38, 'Jim Varney'),
(39, 'Wallace Shawn'),
(40, 'John Ratzenberger'),
(41, 'Annie Potts'),
(42, 'John Morris'),
(43, 'Erik von Detten'),
(44, 'Matthew Broderick'),
(45, 'James Earl Jones'),
(46, 'Jeremy Irons'),
(47, 'Rowan Atkinson'),
(48, 'Moira Kelly'),
(49, 'Nathan Lane'),
(50, 'Ernie Sabella'),
(51, 'Robert Guillaume'),
(52, 'Johnathan Taylor Thomas'),
(53, 'Niketa Calame'),
(54, 'Whoopi Goldberg'),
(55, 'Cheech Marin'),
(56, 'Jim Cummings'),
(57, 'Madge Sinclair'),
(58, 'Chris Sarandon'),
(59, 'Danny Elfman'),
(60, 'Catherine O\'Hara'),
(61, 'William Hickey'),
(62, 'Glen Shadix'),
(63, 'Macaulay Culkin'),
(64, 'Joe Pesci'),
(65, 'Daniel Stern'),
(66, 'John Heard'),
(68, 'Rene Auberjonois'),
(69, 'Christopher Daniel Barnes'),
(70, 'Jodi Benson'),
(71, 'Pat Carrol'),
(72, 'Paul Reubans'),
(73, 'Elizabeth Daily'),
(74, 'Mark Holton'),
(75, 'Diane Salinger'),
(76, 'Drew Barrymore'),
(77, 'Dee Wallace'),
(78, 'Peter Coyote'),
(79, 'Henry Thomas'),
(80, 'Sean Astin'),
(81, 'Josh Brolin'),
(82, 'Jeff Cohen'),
(83, 'Corey Feldmen'),
(84, 'Cary Elwes'),
(85, 'Mandy Patinkin'),
(86, 'Christopher Guest'),
(87, 'Sterling Holloway'),
(88, 'Paul Winchell'),
(89, 'Junius Matthews'),
(90, 'Helen Reddy'),
(91, 'Jim Dale'),
(92, 'Mickey Rooney'),
(93, 'Jeff Conaway'),
(94, 'Angela Lansbury'),
(95, 'Bruce Forsyth'),
(96, 'David Tomlinson'),
(97, 'Gene Wilder'),
(98, 'Jack Albertson'),
(99, 'Roy Kinnear'),
(100, 'Phil Harris'),
(101, 'Eva Gabor'),
(102, 'Rod Taylor'),
(103, 'Cate Bauer'),
(104, 'Boris Karloff'),
(105, 'Julie Andrews'),
(106, 'Dick Van Dyke'),
(107, 'Christopher Plummer'),
(108, 'Russ Tamblyn'),
(109, 'Peter Sellers'),
(110, 'Bobby Driscoll'),
(111, 'Kathryn Beaumont'),
(112, 'Kirk Douglas'),
(113, 'James Mason'),
(114, 'Dorothy McGuire'),
(115, 'Fess Parker'),
(116, 'Ilene Woods'),
(117, 'Eleanor Audley');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Historical'),
(6, 'Horror'),
(7, 'Drama'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'Fantasy'),
(11, 'War'),
(13, 'Cartoon'),
(14, 'Family'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) CHARACTER SET utf8 NOT NULL,
  `movies_year` varchar(5) CHARACTER SET utf8 NOT NULL,
  `movies_runtime` varchar(25) CHARACTER SET utf8 NOT NULL,
  `movies_storyline` text CHARACTER SET utf8 NOT NULL,
  `movies_trailer` varchar(75) CHARACTER SET utf8 NOT NULL DEFAULT 'trailer_default.mp4',
  `movies_release` varchar(125) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'back2future.png', 'Back To The Future', '1985', '1hr  56mins', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'back2future.mp4', 'July 3, 1985'),
(2, 'raiders2.png', 'Indiana Jones : Raiders of the Lost Ark', '1981', '1hr 55mins', 'Archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before the Nazis.', 'raiders.mp4', 'June 12, 1981'),
(3, 'ghostbusters.png', 'GhostBusters', '1984', '1 hr 45mins', 'Three former parapsychology professors set up shop as a unique ghost removal service.', 'ghostbusters.mp4', 'June 8, 1984'),
(4, 'terminator.png', 'The Terminator', '1984', '1hr 47mins', 'A seemingly indestructible humanoid cyborg is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all costs.', 'terminator.mp4', 'October 26, 1984'),
(5, 'diehard.png', 'Die Hard', '1988', '2hrs 12mins', 'John McClane, officer of the NYPD, tries to save his wife Holly Gennaro and several others that were taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.', 'diehard.mp4', 'July 15, 1988'),
(6, 'fullmetaljacket.png', 'Full Metal Jacket', '1987', '1hr 56mins', 'A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.', 'fulmetaljacket.mp4', 'June 26th, 1987'),
(7, 'cinderella.png', 'Cinderella', '1950', '1hr 15mins', 'When Cinderella\'s cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother.', 'cinderella.mp4', 'March 5th, 1950'),
(8, 'oldyeller.png', 'Old Yeller', '1957', '1hr 19mins', 'A teenage boy grows to love a stray yellow dog while helping his mother and younger brother run their Texas homestead while their father is away on a cattle drive. First thought to be good-for-nothing mutt, Old Yeller is soon beloved by all.', 'oldyeller.mp4', 'December 25th, 1957'),
(9, '20000.png', '20,00 Leagues Under The See', '1954', '2hrs. 7mins', 'A ship sent to investigate a wave of mysterious sinkings encounters the advanced submarine, the Nautilus, commanded by Captain Nemo.', 'trailer_default.mp4', 'December 23, 1954'),
(10, 'peterpan.png', 'Peter Pan', '1953', '1hr 16mins', 'Wendy and her brothers are whisked away to the magical world of Neverland with the hero of their stories, Peter Pan.', 'peterpan.mp4', 'February 5th, 1953'),
(11, 'tomthumb.png', 'Tom Thumb', '1958', '1hr 38mins', 'Follows a boy, no bigger than a thumb, who manages to outwit two thieves determined to make a fortune from him.', 'tomthumb.mp4', 'December 22nd, 1958'),
(12, 'soundmusic.png', 'The Sound of Music', '1965', '2hrs, 54mins', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', 'soundmusic.mp4', 'March 2nd, 1965'),
(13, 'marypoppins.png', 'Mary Poppins', '1964', '2hrs 19mins', 'In turn of the century London, a magical nanny employs music and adventure to help two neglected children become closer to their father.', 'marypoppins.mp4', 'August 27th, 1964'),
(14, 'junglebook.png', 'The Jungle Book', '1967', '1hr 18mins', 'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.', 'junglebook.mp4', 'October 18th, 1967'),
(15, 'grinch.png', 'How The Grinch Stole Christmas', '1966', '26mins', 'A grumpy hermit hatches a plan to steal Christmas from the Whos of Whoville.', 'grinch.mp4', 'December 18th, 1966'),
(16, '101dalmations.png', '101 Dalmations', '1961', '1hr 19mins', 'When a litter of Dalmatian puppies are abducted by the minions of Cruella de Vil, the parents must find them before she uses them for a diabolical fashion statement.', '101dalmations.mp4', 'Jan 25th, 1961'),
(17, 'aristocats.png', 'The Aristocats', '1970', '1hr 18mins', 'With the help of a smooth talking tomcat, a family of Parisian felines set to inherit a fortune from their owner try to make it back home after a jealous butler kidnaps them and leaves them in the country.', 'aristocats.mp4', 'December 24th, 1970'),
(18, 'willywonka.png', 'Willy Wonka and the Chocolate Factory', '1971', '1hr 39mins', 'Charlie receives a golden ticket to a factory, his sweet tooth wants going into the lushing candy, it turns out there\'s an adventure in everything', 'willywonka.mp4', 'June 30th, 1971'),
(19, 'bedknobs.png', 'Bedknobs and Broomsticks', '1971', '2hrs, 19mins', 'An apprentice witch, three kids and a cynical conman search for the missing component to a magic spell useful to the defense of Britain.', 'bedknobs.mp4', 'December 13th, 1971'),
(20, 'petesdragon.png', 'Pete\'s Dragon', '1977', '2hrs 14mins', 'An orphan boy and his magical dragon come to town with his abusive adoptive parents in pursuit.', 'petesdragon.mp4', 'November 3rd, 1977'),
(21, 'winnietigger.png', 'Winnie The Pooh and Tigger Too', '1974', '25mins', 'Rabbit is tired of Tigger always bouncing him, so he gets Pooh and Piglet together to come up with an idea to get the bounce out of Tigger.', 'winnietiggert.mp4', 'December 20th, 2974'),
(22, 'princessbride.png', 'The Princess Bride', '1987', '1hr 38mins', 'While home sick in bed, a young boy\'s grandfather reads him a story called The Princess Bride.', 'princessbride.mp4', 'September 25th, 1987'),
(23, 'thegoonies.png', 'The Goonies', '1985', '1hr 54mins', 'In order to save their home from foreclosure, a group of misfits set out to find a pirate\'s ancient valuable treasure.', 'goonies.mp4', 'June 7th, 1985'),
(24, 'et.png', 'E.t the Extra-Terrestrial', '1982', '1hr 54mins', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'et.mp4', 'June 11th, 1982'),
(25, 'peewee.png', 'Pee Wee\'s Big Adventure', '1985', '1hr 31mins', 'When eccentric man-child Pee-Wee Herman gets his beloved bike stolen in broad daylight, he sets out across the U.S. on the adventure of his life.', 'peewee.mp4', 'August 9th, 1985'),
(26, 'littlemermaid.png', 'The Little Mermaid', '1989', '1hr 23mins', 'A mermaid princess makes a Faustian bargain with an unscrupulous sea-witch in order to meet a human prince on land.', 'trailer_default.mp4', 'Nob 17th, 1989'),
(27, 'homealone.png', 'Home Alone', '1990', '1hr 43mins', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 'homealone.mp4', 'November 16th, 1990'),
(28, 'nightmare.png', 'The Nightmare Before Christmas', '1993', '1hr 16mins', 'Jack Skellington, king of Halloween Town, discovers Christmas Town, but his attempts to bring Christmas to his home cause confusion.', 'nightmare.mp4', 'October 29th, 1993'),
(29, 'lionking.png', 'The Lion King', '1994', '1hr 28mins', 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 'lionking.mp4', 'June 15th, 1994'),
(30, 'toystory.png', 'Toy Story', '1995', '1hr 21mins', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'toystory.mp4', 'November 22th, 1994'),
(31, 'mightyducks.png', 'The Mighty Ducks', '1992', '1hr 44mins', 'A self-centered Minnesota lawyer is sentenced to community service coaching a rag tag youth hockey team.\r\n', 'mightyducks.mp4', 'October 2nd, 1992');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 9),
(2, 1, 10),
(3, 2, 1),
(4, 2, 2),
(5, 2, 10),
(6, 3, 6),
(7, 3, 9),
(8, 3, 10),
(9, 4, 1),
(10, 4, 9),
(11, 4, 10),
(12, 5, 1),
(13, 5, 4),
(15, 5, 4),
(16, 6, 1),
(17, 6, 7),
(18, 6, 11),
(19, 7, 7),
(20, 7, 10),
(21, 7, 13),
(22, 7, 14),
(23, 7, 15),
(24, 8, 2),
(25, 8, 7),
(26, 8, 5),
(27, 9, 7),
(28, 9, 10),
(29, 10, 2),
(30, 10, 10),
(31, 11, 7),
(32, 11, 10),
(33, 12, 5),
(34, 12, 7),
(35, 12, 8),
(36, 12, 14),
(37, 12, 15),
(38, 8, 14),
(39, 9, 14),
(40, 10, 14),
(41, 11, 14),
(42, 13, 14),
(43, 13, 8),
(44, 13, 10),
(45, 14, 14),
(46, 14, 2),
(47, 14, 7),
(48, 15, 14),
(49, 15, 3),
(50, 15, 10),
(51, 16, 14),
(52, 16, 4),
(53, 16, 7),
(54, 17, 14),
(55, 17, 3),
(56, 17, 2),
(57, 17, 8),
(58, 18, 14),
(59, 18, 10),
(60, 18, 3),
(61, 18, 8),
(62, 19, 14),
(63, 19, 10),
(64, 19, 3),
(65, 20, 14),
(66, 20, 1),
(67, 20, 10),
(68, 21, 14),
(70, 21, 14),
(71, 21, 3),
(72, 21, 13),
(73, 22, 14),
(74, 22, 10),
(75, 22, 15),
(76, 23, 14),
(77, 23, 1),
(78, 23, 2),
(79, 23, 10),
(80, 24, 14),
(81, 24, 7),
(82, 24, 9),
(83, 24, 10),
(84, 25, 14),
(85, 25, 3),
(86, 25, 2),
(87, 26, 14),
(88, 26, 7),
(89, 26, 8),
(90, 26, 10),
(91, 27, 14),
(92, 27, 1),
(93, 27, 2),
(94, 27, 3),
(95, 28, 14),
(96, 28, 10),
(97, 28, 13),
(98, 29, 14),
(99, 29, 7),
(100, 29, 8),
(101, 29, 13),
(102, 30, 14),
(103, 30, 13),
(104, 30, 3),
(105, 30, 2),
(106, 31, 14),
(107, 31, 16),
(108, 31, 3),
(109, 31, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_rating`
--

DROP TABLE IF EXISTS `tbl_mov_rating`;
CREATE TABLE IF NOT EXISTS `tbl_mov_rating` (
  `mov_rating_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `rating_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_rating`
--

INSERT INTO `tbl_mov_rating` (`mov_rating_id`, `movies_id`, `rating_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 3, 2),
(4, 4, 4),
(5, 5, 4),
(6, 6, 5),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 20, 1),
(22, 21, 1),
(23, 22, 2),
(24, 23, 2),
(25, 24, 2),
(26, 25, 2),
(27, 26, 1),
(28, 27, 2),
(29, 28, 2),
(30, 29, 1),
(31, 30, 1),
(32, 31, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_name` varchar(125) CHARACTER SET utf8 NOT NULL,
  `rating_desc` text NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rating`
--

INSERT INTO `tbl_rating` (`rating_id`, `rating_name`, `rating_desc`) VALUES
(1, 'G', 'General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	parental guidance.'),
(3, 'PG-13', 'Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. '),
(6, '14A', 'Suitable for viewers 14 years of age and older. Viewers under 14 must be accompanied by an adult. May contain violence, coarse language, sexually suggestive scenes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `urating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `urating_number` tinyint(5) NOT NULL,
  PRIMARY KEY (`urating_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pw` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_level` int(50) NOT NULL,
  `user_ip` varchar(50) NOT NULL,
  `user_firstlogin` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
