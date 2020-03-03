-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 03:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_rental_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcarlist`
--

CREATE TABLE `tblcarlist` (
  `CarListID` int(4) NOT NULL,
  `Car_Manufacturer` varchar(20) NOT NULL,
  `Car_Model` varchar(50) NOT NULL,
  `Car_Year` int(4) NOT NULL,
  `Car_Type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcarlist`
--

INSERT INTO `tblcarlist` (`CarListID`, `Car_Manufacturer`, `Car_Model`, `Car_Year`, `Car_Type`) VALUES
(8, 'Toyota', 'Fortuner', 2018, 'SUV'),
(9, 'Nissan', 'Terra ', 2019, 'SUV'),
(10, 'Hyundai', 'Accent', 2019, 'Sedan'),
(11, 'Suzuki', 'Swift ', 2019, 'Hatchback'),
(12, 'Ford', 'Focus ', 2018, 'Sedan'),
(13, 'Suzuki', 'APV ', 2019, 'AUV'),
(14, 'Honda', 'Civic', 2018, 'Sedan'),
(15, 'Mitsubishi', 'Montero', 2020, 'SUV'),
(16, 'Nissan', 'Super Grandia', 2020, 'Van');

-- --------------------------------------------------------

--
-- Table structure for table `tblcars`
--

CREATE TABLE `tblcars` (
  `CarID` int(5) NOT NULL,
  `Car` varchar(25) NOT NULL,
  `Transmission` varchar(25) NOT NULL,
  `Car_Color` varchar(50) NOT NULL,
  `Car_Plate_Number` varchar(50) NOT NULL,
  `Car_Availability` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcars`
--

INSERT INTO `tblcars` (`CarID`, `Car`, `Transmission`, `Car_Color`, `Car_Plate_Number`, `Car_Availability`) VALUES
(10004, 'Nissan Terra  2019', 'Automatic', 'White', 'ABM 213', 'YES'),
(10005, 'Suzuki Swift  2019', 'Manual', 'Green', 'WA 4818', 'YES'),
(10006, 'Mitsubishi Montero 2020', 'Manual', 'Silver', 'WRX 781', 'YES'),
(10007, 'Hyundai Accent 2019', 'Manual', 'Grey', 'ASF 1234', 'YES'),
(10008, 'Nissan Super Grandia 2020', 'Automatic', 'White', 'ABM 234', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CustomerID` int(5) NOT NULL,
  `Customer_Firstname` varchar(50) NOT NULL,
  `Customer_Lastname` varchar(50) NOT NULL,
  `Valid_ID` varchar(50) NOT NULL,
  `ID_Number` varchar(50) NOT NULL,
  `Contact_Number` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CustomerID`, `Customer_Firstname`, `Customer_Lastname`, `Valid_ID`, `ID_Number`, `Contact_Number`, `Email`) VALUES
(20000, 'Carl', 'Aguilar', 'Passport', 'VAD2331451', '09234541234', 'carl@gmail.com'),
(20001, 'Francis', 'Kongssz', 'Driver License ', 'VAD2331451213', '09231423422', 'kfc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbldriver`
--

CREATE TABLE `tbldriver` (
  `DriverID` int(5) NOT NULL,
  `Driver_Firstname` varchar(50) NOT NULL,
  `Driver_Lastname` varchar(50) NOT NULL,
  `Driver_Availability` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldriver`
--

INSERT INTO `tbldriver` (`DriverID`, `Driver_Firstname`, `Driver_Lastname`, `Driver_Availability`) VALUES
(40000, 'Francisco', 'Aguilars', ''),
(40001, 'Carl', 'Kongs', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblincident`
--

CREATE TABLE `tblincident` (
  `IncidentID` int(5) NOT NULL,
  `ReservationID` int(5) NOT NULL,
  `Type_of_Incident` varchar(50) NOT NULL,
  `Incident_Description` blob NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Date_of_Incident` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `ReservationID` int(5) NOT NULL,
  `CustomerID` int(5) NOT NULL,
  `CarID` int(5) NOT NULL,
  `Date_Reserved` date NOT NULL,
  `Return_Date` date NOT NULL,
  `DriverID` int(5) NOT NULL,
  `Starting_Route` varchar(50) NOT NULL,
  `Ending_Route` varchar(50) NOT NULL,
  `Starting_Car_Mileage` int(11) NOT NULL,
  `Returning_Car_Mileage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcarlist`
--
ALTER TABLE `tblcarlist`
  ADD PRIMARY KEY (`CarListID`);

--
-- Indexes for table `tblcars`
--
ALTER TABLE `tblcars`
  ADD PRIMARY KEY (`CarID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tbldriver`
--
ALTER TABLE `tbldriver`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indexes for table `tblincident`
--
ALTER TABLE `tblincident`
  ADD PRIMARY KEY (`IncidentID`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`ReservationID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcarlist`
--
ALTER TABLE `tblcarlist`
  MODIFY `CarListID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcars`
--
ALTER TABLE `tblcars`
  MODIFY `CarID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CustomerID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20005;

--
-- AUTO_INCREMENT for table `tbldriver`
--
ALTER TABLE `tbldriver`
  MODIFY `DriverID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40003;

--
-- AUTO_INCREMENT for table `tblincident`
--
ALTER TABLE `tblincident`
  MODIFY `IncidentID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `ReservationID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30000;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
