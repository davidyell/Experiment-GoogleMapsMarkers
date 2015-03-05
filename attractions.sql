-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2015 at 09:45 AM
-- Server version: 5.5.41-0ubuntu0.12.04.1
-- PHP Version: 5.5.22-1+deb.sury.org~precise+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `northeast-holiday`
--

-- --------------------------------------------------------

--
-- Table structure for table `attractions`
--

CREATE TABLE IF NOT EXISTS `attractions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `rating` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `attractions`
--

INSERT INTO `attractions` (`id`, `name`, `type`, `area`, `price`, `rating`, `website`, `address`) VALUES
(1, 'Lindisfarne ', 'Beach', 'North', 5.40, 93, 'https://www.lindisfarne.org.uk/general/opening.htm  http://www.newcastlegateshead.com/things-to-do/lindisfarne-priory-p765751', 'Holy Island, Berwick upon Tweed, Northumberland, TD15 2RX'),
(2, 'Kielder Water', 'Outdoors', 'North', 0.00, 89, 'http://images.visitkielder.com/downloads/kielder-trails-guide137.pdf', 'Hexham, Northumberland NE48'),
(3, 'Farne Islands Boat Tour (Seahouses)', 'Outdoors', 'North', 35.00, 98, 'http://www.farne-islands.com/trips/holyisland.htm', 'Seahouses, NE68 7RN'),
(4, 'Angel of the North ', 'Monument', 'Central', 0.00, 78, 'http://www.gateshead.gov.uk/Leisure%20and%20Culture/attractions/Angel/Home.aspx', 'Durham Road, Low Eighton, Gateshead, Tyne and Wear NE9 6AA'),
(5, 'Bessie Surtees House', 'Musuem', 'Central', 0.00, 80, 'http://www.english-heritage.org.uk/daysout/properties/bessie-surtees-house/', '44 Sandhill, Newcastle upon Tyne, Tyne and Wear NE1 3JF'),
(6, 'Castle Keep', 'Castle', 'Central', 4.00, 90, 'http://www.newcastlegateshead.com/things-to-do/castle-keep-p23031', 'Castle Garth, Newcastle upon Tyne, Tyne and Wear NE1 1RQ'),
(7, 'Great North Museum: Hancock', 'Musuem', 'Central', 0.00, 82, 'http://www.twmuseums.org.uk/great-north-museum.html', 'Barras Bridge, Newcastle upon Tyne NE2 4PT'),
(8, 'Laing Art Gallery  ', 'Art Gallery', 'Central', 0.00, 91, 'http://www.twmuseums.org.uk/laing-art-gallery/collections.html', 'New Bridge Street, Newcastle upon Tyne NE1 8AG'),
(9, 'The Victoria Tunnel', 'Musuem', 'Central', 6.00, 98, 'http://www.newcastlegateshead.com/things-to-do/the-victoria-tunnel-p360881', 'The Ouseburn Trust, Arch 6, Stepney Bank, Ouseburn Valley, Newcastle Upon Tyne, Tyne and Wear, NE1 2NP '),
(10, 'Alnwick Castle', 'Castle', 'North', 14.50, 84, 'http://www.alnwickcastle.com/', 'Alnwick, Northumberland NE66 1NQ'),
(11, 'Bamburgh Castle', 'Castle', 'North', 10.50, 89, 'http://www.bamburghcastle.com/', 'Bamburgh, Northumberland NE69 7DF'),
(12, 'Belsay Hall Castle & Gardens', 'Castle', 'North', 8.00, 90, 'http://www.english-heritage.org.uk/daysout/properties/belsay-hall-castle-and-gardens/', 'Belsay, Northumberland NE20 0DX'),
(13, 'Cragside House', 'Castle', 'North', 16.50, 96, 'http://www.nationaltrust.org.uk/cragside/', 'Rothbury, Morpeth, Northumberland, NE65 7PX'),
(14, 'Housesteads (Roman)', 'Roman', 'North', 6.40, 87, 'http://www.visithadrianswall.co.uk/things-to-do/housesteads-roman-fort-p721991', 'Hadrian''s Wall, Haydon Bridge, Northumberland, NE47 6NN'),
(15, 'Sycamore gap  (Roman)', 'Roman', 'North', 0.00, 100, 'http://www.nationaltrust.org.uk/article-1355859991507/', 'Pennine Way, Northumberland National Park'),
(16, 'Beamish Museum', 'Museum', 'South', 18.50, 94, 'http://www.beamish.org.uk/', 'Beamish, County Durham DH9 0RG'),
(17, 'Durham Cathedral', 'Cathedral', 'South', 0.00, 97, 'http://www.durhamcathedral.co.uk/', 'Durham DH1 3EH'),
(18, 'Durham Oriental Museum', 'Museum', 'South', 1.50, 94, 'http://www.newcastlegateshead.com/things-to-do/durham-oriental-museum-p686951', 'Durham University, Elvet Hill, Durham, Co Durham, DH1 3TH'),
(19, 'Penshaw Monument', 'Monument', 'South', 0.00, 79, 'http://www.nationaltrust.org.uk/article-1356393583065/', 'Chester Road, Penshaw, Tyne & Wear DH4 7NJ'),
(20, 'Tanfield Railway', 'Railway', 'South', 9.00, 89, 'http://www.tanfieldrailway.co.uk/findus.php', 'The Engine Shed, Newcastle upon Tyne NE16 5ET'),
(21, 'Jesmond Dene', 'Outdoors', 'Central', 0.00, 95, 'http://www.newcastlegateshead.com/things-to-do/jesmond-dene-p520261', 'Newcastle upon Tyne, Tyne and Wear NE3'),
(22, 'Bolam Lake Country Park', 'Outdoors', 'North', 0.00, 83, 'http://www.northumberland.gov.uk/default.aspx?page=1894', 'Newcastle upon Tyne, NE20 0HE'),
(23, 'Vindolanda (Roman)', 'Roman', 'North', 10.50, 96, 'http://www.visithadrianswall.co.uk/things-to-do/roman-vindolanda-p715631', 'Chesterholm Museum, Bardon Mill, Northumberland, NE47 7JN'),
(24, 'Barnard Castle ', 'Castle', 'South', 4.60, 84, 'http://www.english-heritage.org.uk/daysout/properties/barnard-castle/', 'County Durham DL12'),
(25, 'The Bowes Museum', 'Museum', 'South', 9.50, 92, 'http://thebowesmuseum.org.uk/', 'Barnard Castle, Co Durham DL12 8NP'),
(26, 'Washington Wetland Centre', 'Outdoors', 'South', 8.91, 91, 'http://www.wwt.org.uk/wetland-centres/washington/', 'Pattinson Road, Washington, Tyne and Wear NE38 8LE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
