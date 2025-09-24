-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 02:52 AM
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
-- Database: `ace_express_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_schedule`
--

CREATE TABLE `bus_schedule` (
  `id` int(11) NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `departure_time` varchar(15) DEFAULT NULL,
  `arrival_time` varchar(15) DEFAULT NULL,
  `bus_number` varchar(20) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_schedule`
--

INSERT INTO `bus_schedule` (`id`, `route`, `departure_time`, `arrival_time`, `bus_number`, `driver_name`) VALUES
(1, 'Company A to City Center', '08:00 AM', '09:30 AM', 'B123', 'John Doe'),
(2, 'Company B to Suburb X', '09:15 AM', '10:45 AM', 'B456', 'Jane Smith'),
(3, 'Industrial Park to Downtown', '11:00 AM', '12:15 AM', 'B789', 'Mike Johnson'),
(4, 'University District to Airport', '01:30 PM', '03:00 PM', 'B101', 'Emily Davis'),
(5, 'Residential Area to Hospital', '04:45 PM', '05:30 PM', 'B234', 'David Lee'),
(6, 'Tech Park to City Center', '5:30 PM', '6:00 PM', 'B16', 'Sarah Miller'),
(7, 'Downtown to Airport', '6:45 PM', '7:30 PM', 'B17', 'David Lee'),
(8, 'University Campus to Train Station', '8:00 AM', '8:30 AM', 'B18', 'Michael Johnson'),
(9, 'Hospital District to Shopping Mall', '10:15 AM', '11:00 AM', 'B19', 'Emily Davis'),
(10, 'Industrial Zone to Residential Area', '4:30 PM', '5:15 PM', 'B20', 'John Doe'),
(11, 'Port Area to City Center', '7:45 AM', '8:30 AM', 'B21', 'Jane Smith'),
(12, 'Suburban Area to Business District', '9:00 AM', '9:45 AM', 'B22', 'Michael Johnson'),
(13, 'Government Complex to Sports Stadium', '1:30 PM', '2:15 PM', 'B23', 'Emily Davis'),
(14, 'Historical District to Art Gallery', '3:00 PM', '3:45 PM', 'B24', 'John Doe'),
(15, 'Commercial Zone to Recreational Park', '4:45 PM', '5:30 PM', 'B25', 'Jane Smith'),
(16, 'Tech Park to City Center', '5:30 PM', '6:00 PM', 'B26', 'Sarah Miller'),
(17, 'Downtown to Airport', '6:45 PM', '7:30 PM', 'B27', 'David Lee'),
(18, 'University Campus to Train Station', '8:00 AM', '8:30 AM', 'B28', 'Michael Johnson'),
(19, 'Hospital District to Shopping Mall', '10:15 AM', '11:00 AM', 'B29', 'Emily Davis'),
(35, 'HWT to Spanish Town Bus Terminal', '8:00 AM', '10:00 AM', 'B124', 'Winroy Jennings');

-- --------------------------------------------------------

--
-- Table structure for table `reserved_seats`
--

CREATE TABLE `reserved_seats` (
  `employee_id` varchar(50) NOT NULL,
  `bus_number` varchar(12) NOT NULL,
  `seat_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserved_seats`
--

INSERT INTO `reserved_seats` (`employee_id`, `bus_number`, `seat_number`) VALUES
('sallyhenderson', 'B123', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `employee_number` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `telephone` varchar(25) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `supervisor_firstname` varchar(50) NOT NULL,
  `supervisor_lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `employee_number`, `firstname`, `lastname`, `telephone`, `gender`, `address`, `password`, `department`, `supervisor_firstname`, `supervisor_lastname`) VALUES
(2, 'bobfisher', 'Bob', 'Fisher', '+1 876-123-4567', 'male', '456 Main Street, Ocho Rios, St. Ann, Jamaica', '123', 'Dispatcher', 'May', 'Weathers'),
(13, 'lisajohnson', 'Lisa', 'Johnson', '+1 876-123-4567', 'Male', 'Spanish Village', '123', 'Human Resource', 'Mary', 'Christy'),
(8, 'royjenkins', 'Roy', 'Jenkins', '+1 876-123-4567', 'Male', '789 Sunset Boulevard, Montego Bay, St. James, Jamaica', '123', 'Human Resource', 'Lisa', 'Simpsons'),
(3, 'sallyhenderson', 'Sally', 'Henderson ', '+1 876-123-4567', 'Female', '123 Harbour View Road, Kingston 11, Jamaica', '123', 'Finance', 'Bob', 'Simons'),
(14, 'torylanez', 'Tory', 'Lanez', '+1 876-123-4567', 'Male', 'Abc', '123', 'IT', 'Timmy', 'Turner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserved_seats`
--
ALTER TABLE `reserved_seats`
  ADD UNIQUE KEY `bus_number` (`bus_number`,`seat_number`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`employee_number`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
