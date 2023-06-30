-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 10:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projec66_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '0000-00-00', '0000-00-00', 2, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '0000-00-00', '0000-00-00', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '0000-00-00', '0000-00-00', 2, '2017-06-26 21:10:06'),
(69, ' bluestar1411718@gmail.com', 1, '2020-11-29', '2020-11-30', 1, '2020-11-30 06:55:56'),
(71, ' bluestar1411718@gmail.com', 1, '2021-01-02', '2021-01-04', 1, '2021-01-02 07:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(8, 'Hyundai', '2020-11-25 17:57:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

CREATE TABLE `tbllocation` (
  `id` int(10) NOT NULL,
  `locat` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`id`, `locat`, `PostingDate`) VALUES
(0, '', '2020-11-25 18:59:23'),
(1, 'Bangalore', '2020-11-25 18:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><strong>In addition to the vehicle are the following is included in the car rental: All tires, tools, documents, accessories as well as equipment.&nbsp; The renter<br>agrees to all conditions and terms printed on this contract and to the<br>information written on the contract with the same number and date as these car rental terms.</strong><br><br><strong>1.</strong>&nbsp;The renter fully agrees to the terms and conditions of this contract and has received a copy thereof.<br><br><strong>2.</strong>&nbsp;The renter has received the mentioned vehicle and its accessories in proper and safe condition.<br><br><strong>3.</strong>&nbsp;The renter agrees to return the vehicle to the lessor on the agreed date and place, as written in the contract, or earlier if the lessor so insists. Should the vehicle not be returned on the agreed time, a fee equal to 1/3 of the daily rate shall be charged for each hour of delay.<br><br><strong>4.</strong>&nbsp;Liability and driver insurance are according to Icelandic law. Third party liability insurance shall be equivalent to the amount stipulated by the car\'s insurance company at each time. The renters own liability for damages on the car is limited to the worth of the car. The renter can limit his liability by purchasing a collision damage waiver (CDW) for a fixed amount which is determined each time by the lessor.&nbsp; The driver liability in excess of ISK 220,000,- for 2wd and 330,000,- for 4wd and vans.<br><br><strong>5.</strong>&nbsp;The collision damage waiver (CDW) does not cover:<br>a) Damages done on purpose or by total carelessness of the driver.<br>b) Damages caused when the driver is intoxicated, under the influence of drugs, or by any other cause which renders him unfit to safely drive a vehicle.<br>c) Damages to the engine caused by water, such as when crossing un-bridged rivers or driving in water.<br>d) Damages which occur while the car is being raced or test-driven.<br>e) Damages caused through war activity, mutiny, riots, and uproar or by sabotage.<br>f) Burns on seats, carpets or floor mats.<br>g) Damages to wheels, tires, springs, batteries, glass (lights &amp; windows), and radio as well as damages caused by theft of certain parts of the vehicle.<br>h) Damages caused by driving on bumpy roads on parts such as:<br>transmission, drive shafts, or other parts in or on the vehicle\'s under wagon. Damages which occur on the under wagon when the vehicle hits the uneven road, such as ridges left by road planers, or rocks stuck in the road or the roadside. Same applies to damages which occur when loose rocks or other items hit the vehicle while it is being driven.<br>i) Damages caused when the vehicle is driven where driving is forbidden, also by driving off-road, on trails not marked on charts as normal roads, on snow piles, on ice, over un-bridged rivers or streams, on beaches, in dirt or on any other kind of off-roads.<br>j) Damages when sand, gravel, ash, lava or other earth materials are blown on the vehicle.<br>k) Should the vehicle be moved by sea, damages caused to it by the ocean water will not be paid.<br>l) Damages caused by the wind blowing up the door while opening it.<br>m) Other cases are referred to the general conditions of the comprehensive vehicle insurance.</p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\">&nbsp;</p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\"><strong>6.&nbsp;</strong>SUPER CDW<strong>:</strong>&nbsp;CDW covers damages to the rental vehicle; it waives liability in case of any damages to the vehicle in excess of ISK 220.000 for 2wd and ISK 330.000 for 4wd and vans. But when you take Super CDW you change that to ISK 100.000 for 2wd and 160.000 ISK for 4wd and vans. Super CDW is available for ISK 1.300,- per day. But no insurance covers damages to the underside of the car.<br><br><strong>7.</strong>&nbsp;The car must be operated and driven with great care. The renter shall be liable for all damage to the car and injury sustained by passengers caused by collision or accident, which is not paid by the insurance company of the vehicle.<br><br><strong>8.</strong>&nbsp;In case of a collision or accident, the renter must report it instantly to law enforcement authorities and to the lessor, and must not leave the scene of the accident or collision until such action has been taken and after the police has arrived on the scene.<br><br><strong>9.</strong>&nbsp;Renter shall return the vehicle to the office of the lessor which has been agreed upon at the beginning of the rental period, along with all tires, tools, accessories and equipment in same condition as it was when received, though ordinary wear and tear is accepted. Lessor may repossess the vehicle without notice at any time if it is illegally parked, used in violation of law, against the terms of this agreement or is apparently abandoned.<br><br><strong>10.</strong>&nbsp;Under no circumstances is it permitted to use the vehicle, operate or drive:<br>a) In violation of Icelandic law, or the conditions and terms of this contract.<br>b) For the transportation of passengers or property against payment.<br>c) To propel or tow any vehicle, trailer or other objects.<br>d) By any person other than the renter signing this contract, unless by written consent of lessor.<br>e) Off-roads, that is roads that are not marked as normal driving roads on a road map.<br><br><strong>11.</strong>&nbsp;Any violation of Icelandic law, or of any of the terms or conditions of this contract, by the renter or any other driver which the renter has granted permission to operate or drive the vehicle, renders the renter is fully responsible for all damages done to the vehicle what ever the cause may be.<br><br><strong>12.</strong>&nbsp;The number of kilometers (km) the vehicle is driven while this contract is valid is decided by reading the standard km reading device (speedometer) attached to the vehicle by the manufacturer. Renter shall report immediately if the speedometer is not working or seizes to function during the rental period.<br><br><strong>13.</strong>&nbsp;Lessor shall not be liable for disappearance or damage to any property left, stored or transported by renter or other persons, in or on the vehicle, either before or after it has been returned to lessor.<br><br><strong>14.</strong>&nbsp;Renter agrees to pay lessor on demand:<br>a) Deposit of the probable rental cost.<br>b) All expenses incurred by lessor in returning the vehicle back to lessor\'s station, if it has been left somewhere else, regardless of condition of the vehicle, roads or weather.<br>c) A sum equal to the value of all the tires (regardless of road conditions), the tools and accessories which have been damaged, lost or stolen from the vehicle.<br><br><strong>15.</strong>&nbsp;Renter is not authorized to have the vehicle or its accessories repaired or altered. The renter shall not permit any lien to be placed upon the vehicle without lessors prior consent. Renter shall pay all unauthorized charges in connection with the use, repairs, or safekeeping of the vehicle.<br><br><strong>16.</strong>&nbsp;The rental fee is paid up front. Discount agreed upon from that fee will be discontinued on the 10th day of the following month. From that day highest possible monthly interest will be added to the whole sum. VAT&nbsp; will be added to the discontinued discount.If it is written in the rental contract that discount is to be granted from the rental fee, this discount will be discontinued if renter causes injuries to another party or damages the vehicle and is not 100% in the right.<br><br><strong>17.</strong>&nbsp;Renter agrees to pay all costs which lessor may incur in collecting payment by law. Renters self risk with Gravel Protection is 20.000isk.<br><br><strong>18.</strong>&nbsp;Any legal proceedings arising from this contract shall be conducted before the Reykjavik Municipal Court without prior submission to a board of conciliation.<br><br><strong>19.</strong>&nbsp;All car must be retuned with full tank of gas . Service for refuel is 2.500 kr.<br><br><strong>20.</strong>&nbsp;Renter agrees to pay all costs to Lessor incurred in collecting payment from Renter. A credit card number or imprint is taken at start of all rentals for security reasons. It may be used to pay all extra charges, including extra kilometre\'s, extra days, extra insurance, parking fines, refilling gasoline, damages or any cost due to the car rental as a result of the renters use of the car.<br><br><strong>CANCELLATION POLICY:</strong><br>If you cancel 15 days or more before pick up time:<br><strong>- you pay nothing or you get 100% refund of what you have already paid.</strong></p><p style=\"color: rgb(0, 0, 0); font-family: Arimo, sans-serif; font-size: 16px;\">If you cancel 14 days before pickup time:<br><strong>- you pay 20% of the total or you get 80% refund if you have already paid.</strong><br>If you cancel 48 hrs. before pick up time or a no-show:<br><strong>- you pay 80% of the total or you get 20% refund if you have already paid.</strong></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<h1 style=\"margin-top: 10px; font-size: 24px; color: rgb(28, 21, 100); font-family: century_gothicregular !important;\">Privacy Policy</h1><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: tahoma, Helvetica, Arial, sans-serif; font-size: 14px;\">This policy was last updated on 28 Nov 2020<strong>.</strong><br></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: tahoma, Helvetica, Arial, sans-serif; font-size: 14px;\"><strong><br></strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: tahoma, Helvetica, Arial, sans-serif; font-size: 14px;\"><strong>we thrive to provide u privacy.</strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: tahoma, Helvetica, Arial, sans-serif; font-size: 14px;\"><strong>we do not share customer details to any outsiders.</strong></p><p style=\"margin-bottom: 10px; color: rgb(51, 51, 51); font-family: tahoma, Helvetica, Arial, sans-serif; font-size: 14px;\"><br></p>\r\n										'),
(3, 'About Us ', 'aboutus', '<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">This page was developed by a team of 4 members&nbsp;</span></div><div style=\"text-align: justify;\">name&nbsp;</div><div style=\"text-align: justify;\">name&nbsp</div><div style=\"text-align: justify;\">name&nbsp</div><div style=\"text-align: justify;\">name&nbsp;</div><div style=\"text-align: justify;\">These 4 people fought hard for all customers to have a great experience while using this webpage.</div><div style=\"text-align: justify;\">this is part of our for project which will fetch us 30 marks for this subject.</div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 0),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2017-06-18 07:46:05', 0),
(3, 'cb.en.u4cse19311@cb.students.amrita.edu', 'asdfghjkmnbvcxerthgbv', '2020-11-24 18:33:15', 1),
(4, 'chennuruchinnu0987@gmail.com', 'hi hello bugg', '2020-11-27 14:04:10', 1),
(5, 'chennuruchinnu0987@gmail.com', 'hello this is sai!', '2020-11-29 09:41:31', 1),
(6, ' bluestar1411718@gmail.com', 'hi hello there', '2020-11-30 07:00:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `fullnamer` varchar(50) DEFAULT NULL,
  `licenceNumber` char(25) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `code` mediumint(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `fullnamer`, `licenceNumber`, `ContactNo`, `dob`, `EmailId`, `Password`, `code`, `status`, `RegDate`, `UpdationDate`, `Address`, `City`, `Country`) VALUES
(5, 'sai123', 'saisrujan', '11111111111', '8688435229', '2001-09-18', 'chennuruchinnu0987@gmail.com', 'hello@123', 478717, 'verified', '2020-11-26 14:17:14', '2021-01-02 08:05:50', 'ydefksnvknksnvk.s', 'ooooooooooo', '1111111111'),
(23, 'lokesh123', 'sailokesh', '111111111111', '8688435229', '2000-09-19', 'bluestar1411718@gmail.com', 'hello@123', 0, 'verified', '2021-01-02 07:53:50', '2021-01-02 08:07:54', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `location`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Innova Crysta', 5, 'Our top car and branded new  one. ', 1500, 'Diesel', 'Tirupati', 2019, 7, 'innova1.jpg', 'innova2.jpg', 'innova3.jpg', 'innova5.jpg', '', 1, NULL, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, 1, '2017-06-19 11:46:23', '2020-11-28 10:01:58'),
(2, 'BMW X4', 2, 'it is a luxury cars designed for VIP\'s and VVIP\'s', 1800, 'Diesel', 'Chennai', 2019, 4, 'bmw1.jpg', 'bmw2.jpg', 'bmw3.jpg', 'bmw4.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 16:16:17', '2020-11-28 10:04:20'),
(3, 'sunny', 4, 'it is a moderate car with good features', 800, 'Petrol', 'Hyderabad', 2016, 4, 'sunny1.jpg', 'sunny2.jpg', 'sunny3.jpg', 'sunny4.jpg', '', 1, NULL, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, '2017-06-19 16:18:20', '2020-11-28 10:04:32'),
(4, 'Swift Dzire', 1, 'A car which is most used by middle class families and used for small round trips', 500, 'Petrol', 'Vellore', 2015, 4, 'swift1.jpg', 'swift2.jpg', 'swift3.jpg', 'swift4.jpg', '', NULL, 1, 1, NULL, 1, 1, 1, NULL, 1, NULL, NULL, 1, '2017-06-19 16:18:43', '2020-11-28 10:04:41'),
(5, 'Verna', 8, 'Most Versatile car and used for long journeys. recommended by all youth of our nation.', 1000, 'Diesel', 'Coimbatore', 2018, 5, 'verna1.jpg', 'verna2.jpg', 'verna3.jpg', 'verna4.jpg', NULL, 1, NULL, NULL, 1, 1, 1, 1, NULL, 1, 1, NULL, 1, '2017-06-20 17:57:09', '2020-11-28 10:04:51'),
(6, 'Q4', 3, 'It is also an luxury vehicle that has capacity to carry at most 7 people', 1500, 'Petrol', 'Rajamundry', 2017, 7, 'Q41.jpg', 'q42.jpg', 'q43.jpg', 'Q44.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-11-25 18:14:09', '2020-11-28 10:05:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
