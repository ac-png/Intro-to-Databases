-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 25, 2022 at 04:50 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DATABASE`
--
CREATE DATABASE IF NOT EXISTS `DATABASE` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `DATABASE`;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` int(11) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `supplier_id`) VALUES
(1, 'toys@gmail.com', 1),
(2, 'twholeseller@gmail.com', 1),
(3, 'kidtrans@gmail.com', 2),
(4, 'transport@gmail.com', 3),
(5, 'videogames@gmail.com', 5),
(6, 'outdoor@gmail.com', 4),
(7, 'ireout@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `type` enum('Summer','New Year','End of Line') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `start_date`, `end_date`, `type`) VALUES
(1, '2021-05-01', '2021-07-31', 'Summer'),
(2, '2021-12-27', '2022-01-05', 'New Year'),
(3, '2021-10-01', '2021-10-31', 'End of Line'),
(4, '2020-05-01', '2020-07-31', 'Summer'),
(5, '2020-12-27', '2021-01-05', 'New Year'),
(6, '2020-04-01', '2020-04-30', 'End of Line');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`) VALUES
(1, 'Toys Wholeseller', '6900 Coffeeport Rd, Brownsville, Texas(TX), 78521'),
(2, 'Kids Transport', '175 S 200th, Panguitch, Utah(UT), 84759'),
(3, 'Games for Everyone', '100 Park Rd, Hesston, Kansas(KS), 67062'),
(4, 'Outdoor Ireland', '124 Bertel Dr, Covington, Louisiana(LA), 70433'),
(5, 'Gaming International', '8213 Sargent Ave, Whittier, California(CA), 90605');

-- --------------------------------------------------------

--
-- Table structure for table `toy-promotions`
--

CREATE TABLE `toy-promotions` (
  `id` int(11) NOT NULL,
  `toy_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  `sale_price` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toy-promotions`
--

INSERT INTO `toy-promotions` (`id`, `toy_id`, `promotion_id`, `sale_price`) VALUES
(1, 2, 2, '20.99'),
(2, 6, 4, '89.99'),
(3, 12, 6, '75.00'),
(4, 7, 1, '15.00'),
(5, 10, 3, '20.00'),
(6, 15, 5, '14.99');

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `location` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toys`
--

INSERT INTO `toys` (`id`, `name`, `description`, `price`, `location`, `supplier_id`) VALUES
(1, 'Barbie House', 'Standing 43 inches tall and 41 inches wide, this dreamy dollhouse inspires 360-degree play with three floors and 10 indoor and outdoor living areas.', '50.99', 66, 1),
(2, 'Scooter', 'A light two-wheeled open motor vehicle on which the driver sits over an enclosed engine with their legs together and their feet resting on a floorboard.', '29.99', 37, 2),
(3, 'Catchphrase Board Game', 'Great new version of the picture-puzzle TV game show.', '10.99', 34, 3),
(4, 'Tent', 'A portable shelter made of cloth, supported by one or more poles and stretched tight by cords or loops attached to pegs driven into the ground.', '39.99', 21, 4),
(5, 'Mario Party', 'Up to four local players or computer-controlled characters compete in a board game interspersed with minigames.', '19.99', 7, 5),
(6, 'Lego Hogwarts', 'This highly detailed LEGO Harry Potter collectible has over 6,000 pieces and offers a rewarding build experience. It comes packed with highlights from the Harry Potter series.', '100.00', 85, 1),
(7, 'Skateboard', 'A short board mounted on small wheels that is used for coasting and for performing athletic stunts.', '20.00', 27, 2),
(8, 'Monopoly', 'Monopoly is a multi-player economics-themed board game.', '15.00', 54, 3),
(9, 'Soccer Ball', 'A football is the ball used in the sport of association football.', '15.00', 47, 4),
(10, 'Mario Kart', 'Players compete in go-kart races while using various power-up items.', '27.99', 3, 5),
(11, '100 Piece Jigsaw', 'Puzzle consisting of a picture printed on cardboard or wood and cut into various pieces of different shapes that have to be fitted together.', '59.99', 13, 1),
(12, 'Hover Board', 'A means of transport resembling a skateboard that travels above the surface of the ground, ridden in a standing position.', '80.00', 78, 2),
(13, 'Scrabble', 'Players build interlocking words crossword style on the Scrabble playing board.', '25.00', 1, 3),
(14, 'Hula Hoop Set', 'A large hoop spun round the body by gyrating the hips, for play or exercise.', '8.99', 32, 4),
(15, 'Just Dance', 'A dance rhythm game developed by Ubisoft.', '20.00', 98, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier` (`supplier_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toy-promotions`
--
ALTER TABLE `toy-promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion` (`promotion_id`),
  ADD KEY `toy` (`toy_id`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toy supplier` (`supplier_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD CONSTRAINT `supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `toy-promotions`
--
ALTER TABLE `toy-promotions`
  ADD CONSTRAINT `promotion` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`),
  ADD CONSTRAINT `toy` FOREIGN KEY (`toy_id`) REFERENCES `toys` (`id`);

--
-- Constraints for table `toys`
--
ALTER TABLE `toys`
  ADD CONSTRAINT `toy supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
