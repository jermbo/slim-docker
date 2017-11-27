-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 27, 2017 at 12:13 PM
-- Server version: 5.7.20
-- PHP Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slimapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `Transaction_Date` date NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Debit` decimal(50,2) DEFAULT NULL,
  `Credit` decimal(50,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `Transaction_Date`, `Description`, `Category`, `Debit`, `Credit`) VALUES
(1, '2015-12-31', 'All Purpose Spray', 'Other Services', 100.84, NULL),
(2, '2016-01-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(3, '2016-01-05', 'Planet Express', 'Other Services', 14.95, NULL),
(4, '2016-01-08', 'MomCorp', 'Payment/Credit', NULL, 175.78),
(5, '2016-01-10', '30th Century Fox', 'Merchandise', 20.98, NULL),
(6, '2016-01-10', 'Human Broth', 'Merchandise', 68.85, NULL),
(7, '2016-01-11', 'MomCorp', 'Phone/Cable', 66.55, NULL),
(8, '2016-01-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(9, '2016-01-13', 'MomCorp', 'Other', 1.59, NULL),
(10, '2016-01-15', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(11, '2016-01-20', 'MomCorp', 'Payment/Credit', NULL, 207.97),
(12, '2016-01-22', '30th Century Fox', 'Merchandise', 113.24, NULL),
(13, '2016-01-25', 'MomCorp', 'Payment/Credit', NULL, 113.24),
(14, '2016-01-27', '30th Century Fox', 'Merchandise', 29.98, NULL),
(15, '2016-02-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(16, '2016-02-05', 'Planet Express', 'Other Services', 14.95, NULL),
(17, '2016-02-10', 'Human Broth', 'Merchandise', 26.80, NULL),
(18, '2016-02-11', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(19, '2016-02-11', 'MomCorp', 'Phone/Cable', 66.55, NULL),
(20, '2016-02-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(21, '2016-02-13', 'MomCorp', 'Other', 2.60, NULL),
(22, '2016-02-17', 'MomCorp', 'Payment/Credit', NULL, 265.86),
(23, '2016-02-19', '30th Century Fox', 'Merchandise', 30.94, NULL),
(24, '2016-02-23', '30th Century Fox', 'Merchandise', 26.94, NULL),
(25, '2016-02-25', 'BenderbrÃ¤u', 'Merchandise', 6.99, NULL),
(26, '2016-03-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(27, '2016-03-05', 'Planet Express', 'Other Services', 14.95, NULL),
(28, '2016-03-11', 'BenderbrÃ¤u', 'Merchandise', 22.99, NULL),
(29, '2016-03-11', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(30, '2016-03-11', 'MomCorp', 'Phone/Cable', 66.55, NULL),
(31, '2016-03-12', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(32, '2016-03-12', 'MomCorp', 'Other', 1.74, NULL),
(33, '2016-03-14', 'BenderbrÃ¤u', 'Merchandise', 13.90, NULL),
(34, '2016-03-15', 'MomCorp', 'Payment/Credit', NULL, 237.11),
(35, '2016-03-19', 'BenderbrÃ¤u', 'Merchandise', 65.46, NULL),
(36, '2016-03-21', 'Lightspeed Briefs', 'Merchandise', 12.72, NULL),
(37, '2016-03-30', 'Lightspeed Briefs', 'Merchandise', 26.39, NULL),
(38, '2016-04-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(39, '2016-04-04', 'MomCorp', 'Payment/Credit', NULL, 104.57),
(40, '2016-04-05', 'Planet Express', 'Other Services', 14.95, NULL),
(41, '2016-04-11', 'MomCorp', 'Phone/Cable', 66.55, NULL),
(42, '2016-04-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(43, '2016-04-15', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(44, '2016-04-16', 'Lightspeed Briefs', 'Merchandise', 27.85, NULL),
(45, '2016-04-22', 'Human Broth', 'Merchandise', 137.79, NULL),
(46, '2016-04-26', 'MomCorp', 'Payment/Credit', NULL, 357.13),
(47, '2016-05-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(48, '2016-05-05', 'Planet Express', 'Other Services', 14.95, NULL),
(49, '2016-05-11', 'MomCorp', 'Phone/Cable', 66.55, NULL),
(50, '2016-05-13', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(51, '2016-05-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(52, '2016-05-21', 'Lightspeed Briefs', 'Merchandise', 20.07, NULL),
(53, '2016-05-23', 'Lightspeed Briefs', 'Merchandise', 15.41, NULL),
(54, '2016-05-31', 'Hologram in Sauce', 'Merchandise', 12.65, NULL),
(55, '2016-05-31', 'Hologram in Sauce', 'Merchandise', 12.67, NULL),
(56, '2016-05-31', 'Lightspeed Briefs', 'Merchandise', 38.21, NULL),
(57, '2016-05-31', 'Lightspeed Briefs', 'Merchandise', 44.51, NULL),
(58, '2016-06-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(59, '2016-06-03', 'MomCorp', 'Payment/Credit', NULL, 335.01),
(60, '2016-06-05', 'Planet Express', 'Other Services', 14.95, NULL),
(61, '2016-06-05', 'Planet Express', 'Other Services', 12.85, NULL),
(62, '2016-06-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(63, '2016-06-24', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(64, '2016-06-30', 'Human Broth', 'Merchandise', 46.55, NULL),
(65, '2016-07-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(66, '2016-07-05', 'MomCorp', 'Payment/Credit', NULL, 184.34),
(67, '2016-07-05', 'Planet Express', 'Other Services', 14.95, NULL),
(68, '2016-07-07', 'Hologram in Sauce', 'Merchandise', 10.99, NULL),
(69, '2016-07-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(70, '2016-07-22', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(71, '2016-07-25', 'Stop-and-Drop Suicide Booth', 'Merchandise', 16.72, NULL),
(72, '2016-07-26', 'Stop-and-Drop Suicide Booth', 'Merchandise', 35.29, NULL),
(73, '2016-08-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(74, '2016-08-05', 'Planet Express', 'Other Services', 14.95, NULL),
(75, '2016-08-06', 'Bachelor Chow', 'Dining', 2.54, NULL),
(76, '2016-08-06', 'Bachelor Chow', 'Dining', 10.91, NULL),
(77, '2016-08-06', 'MomCorp', 'Payment/Credit', NULL, 262.88),
(78, '2016-08-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(79, '2016-08-19', 'Bachelor Chow', 'Dining', 17.66, NULL),
(80, '2016-08-19', 'Cavitar Toothpaste', 'Health Care', 45.00, NULL),
(81, '2016-08-21', 'Ronco Record Vault', 'Merchandise', 5.29, NULL),
(82, '2016-08-22', 'Admiral Crunch', 'Merchandise', 9.32, NULL),
(83, '2016-08-24', 'Human Broth', 'Dining', 12.25, NULL),
(84, '2016-08-30', 'Bachelor Chow', 'Dining', 37.32, NULL),
(85, '2016-08-30', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 32.88, NULL),
(86, '2016-08-31', 'Admiral Crunch', 'Merchandise', 112.13, NULL),
(87, '2016-09-01', 'Mom\'s Pecan Clusters', 'Dining', 17.48, NULL),
(88, '2016-09-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(89, '2016-09-03', 'MomCorp', 'Payment/Credit', NULL, 290.30),
(90, '2016-09-05', 'Hologram in Sauce', 'Merchandise', 8.29, NULL),
(91, '2016-09-05', 'Planet Express', 'Other Services', 14.95, NULL),
(92, '2016-09-06', 'Admiral Crunch', 'Merchandise', 7.19, NULL),
(93, '2016-09-06', 'Hologram in Sauce', 'Merchandise', 15.79, NULL),
(94, '2016-09-07', 'Stop-and-Drop Suicide Booth', 'Merchandise', 19.74, NULL),
(95, '2016-09-08', 'Mom\'s Pecan Clusters', 'Dining', 19.91, NULL),
(96, '2016-09-09', 'Bachelor Chow', 'Dining', 14.49, NULL),
(97, '2016-09-09', 'Mom\'s Pecan Clusters', 'Dining', 14.55, NULL),
(98, '2016-09-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(99, '2016-09-14', 'MomCorp', 'Payment/Credit', NULL, 197.38),
(100, '2016-09-15', 'Bachelor Chow', 'Dining', 7.15, NULL),
(101, '2016-09-15', 'Mom\'s Pecan Clusters', 'Dining', 12.17, NULL),
(102, '2016-09-16', 'Bachelor Chow', 'Dining', 15.97, NULL),
(103, '2016-09-16', 'Cavitar Toothpaste', 'Health Care', 40.00, NULL),
(104, '2016-09-16', 'Planet Express', 'Other Travel', 214.14, NULL),
(105, '2016-09-17', 'Bachelor Chow', 'Dining', 9.81, NULL),
(106, '2016-09-17', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 27.43, NULL),
(107, '2016-09-19', 'Hologram in Sauce', 'Merchandise', 45.28, NULL),
(108, '2016-09-19', 'Hologram in Sauce', 'Merchandise', 32.63, NULL),
(109, '2016-09-20', 'Mom\'s Pecan Clusters', 'Dining', 12.80, NULL),
(110, '2016-09-22', 'Bachelor Chow', 'Dining', 5.37, NULL),
(111, '2016-09-22', 'Good News', 'Dining', 9.49, NULL),
(112, '2016-09-22', 'Zuban cigars', 'Merchandise', 5.30, NULL),
(113, '2016-09-23', 'Bachelor Chow', 'Dining', 20.43, NULL),
(114, '2016-09-24', 'Froot Cup', 'Dining', 6.35, NULL),
(115, '2016-09-24', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 33.61, NULL),
(116, '2016-09-26', 'MomCorp', 'Payment/Credit', NULL, 457.97),
(117, '2016-09-28', 'Froot Cup', 'Dining', 6.22, NULL),
(118, '2016-09-28', 'Good News', 'Dining', 12.62, NULL),
(119, '2016-09-29', 'Kibbles \'N\' Snouts', 'Dining', 12.25, NULL),
(120, '2016-10-01', 'Kibbles \'N\' Snouts', 'Dining', 27.29, NULL),
(121, '2016-10-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(122, '2016-10-02', 'Zuban cigars', 'Merchandise', 35.38, NULL),
(123, '2016-10-03', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 22.95, NULL),
(124, '2016-10-03', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 52.00, NULL),
(125, '2016-10-05', 'Planet Express', 'Other Services', 14.95, NULL),
(126, '2016-10-08', 'Admiral Crunch', 'Merchandise', 49.92, NULL),
(127, '2016-10-08', 'All Purpose Spray', 'Other Services', 23.00, NULL),
(128, '2016-10-08', 'Kibbles \'N\' Snouts', 'Dining', 43.38, NULL),
(129, '2016-10-11', 'Good News', 'Dining', 15.01, NULL),
(130, '2016-10-13', 'Mom\'s Pecan Clusters', 'Dining', 12.17, NULL),
(131, '2016-10-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(132, '2016-10-14', 'Bachelor Chow', 'Dining', 11.53, NULL),
(133, '2016-10-14', 'Cavitar Toothpaste', 'Health Care', 40.00, NULL),
(134, '2016-10-15', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 31.90, NULL),
(135, '2016-10-15', 'Ronco Record Vault', 'Merchandise', 5.29, NULL),
(136, '2016-10-17', 'Human Broth', 'Dining', 10.87, NULL),
(137, '2016-10-21', 'All Purpose Spray', 'Other Services', 22.00, NULL),
(138, '2016-10-21', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 8.22, NULL),
(139, '2016-10-27', 'Bachelor Chow', 'Dining', 8.65, NULL),
(140, '2016-10-27', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 26.25, NULL),
(141, '2016-10-28', 'Mom\'s Pecan Clusters', 'Dining', 11.37, NULL),
(142, '2016-10-28', 'Ronco Record Vault', 'Merchandise', 12.00, NULL),
(143, '2016-10-29', 'Human Broth', 'Dining', 10.18, NULL),
(144, '2016-10-31', 'Bachelor Chow', 'Dining', 7.23, NULL),
(145, '2016-10-31', 'Kibbles \'N\' Snouts', 'Dining', 39.92, NULL),
(146, '2016-11-01', 'Bachelor Chow', 'Dining', 18.93, NULL),
(147, '2016-11-02', 'Admiral Crunch', 'Merchandise', 19.93, NULL),
(148, '2016-11-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(149, '2016-11-02', 'Mom\'s Pecan Clusters', 'Dining', 12.17, NULL),
(150, '2016-11-05', 'Good News', 'Dining', 53.63, NULL),
(151, '2016-11-05', 'Planet Express', 'Other Services', 14.95, NULL),
(152, '2016-11-06', 'Good News', 'Dining', 34.31, NULL),
(153, '2016-11-06', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 34.51, NULL),
(154, '2016-11-07', 'Admiral Crunch', 'Merchandise', 22.17, NULL),
(155, '2016-11-07', 'MomCorp', 'Payment/Credit', NULL, 200.00),
(156, '2016-11-09', 'Hologram in Sauce', 'Merchandise', 31.69, NULL),
(157, '2016-11-12', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(158, '2016-11-12', 'MomCorp', 'Fee/Interest Charge', 6.91, NULL),
(159, '2016-11-13', 'Admiral Crunch', 'Merchandise', 52.51, NULL),
(160, '2016-11-14', 'MomCorp', 'Payment/Credit', NULL, 500.00),
(161, '2016-11-18', 'Cavitar Toothpaste', 'Health Care', 40.00, NULL),
(162, '2016-11-26', 'Ronco Record Vault', 'Merchandise', 14.98, NULL),
(163, '2016-12-02', 'Dr. FlimFlam\'s miracle cream', 'Health Care', 59.99, NULL),
(164, '2016-12-05', 'Planet Express', 'Other Services', 14.95, NULL),
(165, '2016-12-08', 'Bachelor Chow', 'Dining', 67.41, NULL),
(166, '2016-12-08', 'Planet Express', 'Other Travel', 12.00, NULL),
(167, '2016-12-09', 'Planet Express', 'Other Travel', 12.00, NULL),
(168, '2016-12-10', 'Bachelor Chow', 'Dining', 17.96, NULL),
(169, '2016-12-10', 'Bachelor Chow', 'Dining', 36.00, NULL),
(170, '2016-12-13', 'MomCorp', 'Fee/Interest Charge', 5.00, NULL),
(171, '2016-12-13', 'MomCorp', 'Fee/Interest Charge', 5.86, NULL),
(172, '2016-12-14', 'MomCorp', 'Payment/Credit', NULL, 630.35),
(173, '2016-12-17', 'Bachelor Chow', 'Dining', 11.32, NULL),
(174, '2016-12-17', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 6.70, NULL),
(175, '2016-12-17', 'Zuban cigars', 'Merchandise', 65.57, NULL),
(176, '2016-12-17', 'Zuban cigars', 'Merchandise', 36.99, NULL),
(177, '2016-12-18', 'Bachelor Chow', 'Dining', 6.47, NULL),
(178, '2016-12-18', 'Froot Cup', 'Dining', 11.09, NULL),
(179, '2016-12-18', 'Hologram in Sauce', 'Merchandise', 20.88, NULL),
(180, '2016-12-18', 'Hologram in Sauce', 'Merchandise', 18.97, NULL),
(181, '2016-12-18', 'Zuban cigars', 'Merchandise', 69.00, NULL),
(182, '2016-12-19', 'Bachelor Chow', 'Dining', 17.35, NULL),
(183, '2016-12-23', 'Admiral Crunch', 'Merchandise', 183.87, NULL),
(184, '2016-12-23', 'Ronco Record Vault', 'Merchandise', 85.00, NULL),
(185, '2016-12-24', 'Mom\'s Old-Fashioned Robot Oil', 'Gas/Automotive', 38.27, NULL),
(186, '2016-12-29', 'Admiral Crunch', 'Merchandise', 87.94, NULL),
(187, '2016-12-30', 'Bachelor Chow', 'Dining', 7.41, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
