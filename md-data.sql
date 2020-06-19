-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2020 at 04:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absy`
--

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `Label`, `feedback`, `times_of_use`, `using_time`) VALUES
(1, 'AMKE101', NULL, 0, 0);

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`ID`, `Name`, `email`, `address`) VALUES
(1, 'Ahmed Kholio', 'a@kh.com', 'here'),
(2, 'Amr El-Absy', 'a@a.com', 'There');

--
-- Dumping data for table `doctor_phone`
--

INSERT INTO `doctor_phone` (`phone`, `ID`, `doctor_id`) VALUES
('01066486485', 1, 2),
('01554013086', 2, 2),
('01007801780', 3, 1);

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`ID`, `Name`, `email`, `phone`, `gender`, `address`) VALUES
(1, 'amr', 'ahmed@mekky.com', '010101010100', 'm', 'some where in between'),
(2, 'ahmed', 'z@3.com', '0120120120', 'f', 'I will not tell you');

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`ID`, `Name`, `mail`, `address`) VALUES
(1, 'Elhelal Hospital', 'h@h.com', 'on the moon'),
(2, 'El-Salam.com', 's@h.com', 'in the war');

--
-- Dumping data for table `placed_in`
--

INSERT INTO `placed_in` (`ID`, `device_id`, `place_id`) VALUES
(1, 1, 2);

--
-- Dumping data for table `place_phone`
--

INSERT INTO `place_phone` (`phone`, `ID`, `place_id`) VALUES
('299792458', 1, 1),
('06101973', 2, 2);

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`ID`, `type`, `date`, `symptoms`, `start_time`, `end_time`, `Preparation`, `patient_id`, `place_id`, `doctor_id`, `device_id`) VALUES
(7, 1, '2020-06-18', 'So5onia w Ko7a', '2020-06-18 03:10:00', '2020-06-18 03:35:00', 'make good preparation', 1, 2, 2, 1),
(10, 1, '2020-06-18', 'Hot', '2020-06-18 04:59:59', '2020-06-18 06:00:00', '', 1, 2, 1, 1);

--
-- Dumping data for table `works_in`
--

INSERT INTO `works_in` (`ID`, `doctor_id`, `place_id`) VALUES
(1, 1, 2),
(2, 2, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
