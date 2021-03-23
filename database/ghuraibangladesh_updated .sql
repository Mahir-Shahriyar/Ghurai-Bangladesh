-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 08:28 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghuraibangladesh`
--
DROP DATABASE if exists ghuraibangladesh;
CREATE DATABASE ghuraibangladesh;
USE ghuraibangladesh;
-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `booking_for_person` int(10) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `HotelHotel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_for_person`, `person_email`, `HotelHotel_id`) VALUES
(1000000, 2, 'mehab@gmail.com', 11111);

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `destination_id` int(10) NOT NULL,
  `destination_name` varchar(30) NOT NULL,
  `local_transport` varchar(30) NOT NULL,
  `local_transport_fare` int(10) NOT NULL,
  `tour_guide` varchar(30) NOT NULL,
  `Regionregion_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`destination_id`, `destination_name`, `local_transport`, `local_transport_fare`, `tour_guide`, `Regionregion_id`) VALUES
(55551, 'saintmartin', 'ship', 12, 'r@gmail.com', 101),
(55552, 'himchori', 'auto', 4, 'r@gmail.com', 101),
(55553, 'marine drive', 'auto', 4, 'r@gmail.com', 101),
(55554, 'kaptai lake', 'boat', 4, 'n@gmail.com', 104),
(55555, 'lake view', 'auto', 5, 'n@gmail.com', 104),
(55556, 'Hanging Bridge', 'auto', 5, 'n@gmail.com', 104),
(55557, 'kochikhali', 'boat', 3, 's@gmail.com', 106),
(55558, 'mandarbaria', 'boat', 4, 's@gmail.com', 106),
(55559, 'jamtola beach', 'boat', 4, 's@gmail.com', 106),
(55560, 'Bisanakandi', 'auto', 7, 'rj@gmail.com', 102),
(55561, 'Jaflong', 'auto', 8, 'rj@gmail.com', 102),
(55562, 'ratargul swamp forest', 'auto', 5, 'rj@gmail.com', 102),
(55563, 'boga lake', 'boat', 3, 'b@gmail.com', 105),
(55564, 'nafakhum waterfalls', 'auto', 4, 'b@gmail.com', 105),
(55565, 'keokradong', 'auto', 4, 'b@gmail.com', 105),
(55566, 'Tazing dong', 'boat', 4, 'b@gmail.com', 105),
(55567, 'Chimbuk hill', 'auto', 4, 'b@gmail.com', 105),
(55568, 'ruiluipara', 'auto', 3, 'rj@gmail.com', 103),
(55569, 'sajek valley', 'auto', 4, 'rj@gmail.com', 103),
(55570, 'Lushai Heritage Village', 'auto', 4, 'rj@gmail.com', 103);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` int(10) NOT NULL,
  `hotel_type` varchar(30) NOT NULL,
  `hotel_location` varchar(30) NOT NULL,
  `hotel_rent` int(10) NOT NULL,
  `HotelHotel_id` int(10) NOT NULL,
  `Regionregion_id` int(10) NOT NULL,
  `hotel_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `hotel_type`, `hotel_location`, `hotel_rent`, `HotelHotel_id`, `Regionregion_id`, `hotel_name`) VALUES
(11111, '5-star', 'Cox\'s Bazar', 35, 0, 101, 'Sea Crown'),
(11112, '5-star', 'Sylhet', 27, 0, 102, 'Rose View'),
(11113, '4-star', 'Sajek', 50, 0, 103, 'Salka Eco Resort'),
(11114, '4-star', 'Bandorban', 30, 0, 105, 'Hill View');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(10) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_password` varchar(30) NOT NULL,
  `person_role` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `person_name`, `person_email`, `person_phone`, `person_password`, `person_role`) VALUES
(1, 'Mehab', 'mehab@gmail.com', '01112221112', '1111', 0),
(2, 'Nirob', 'n@gmail.com', '999-000-111', '1234', 1),
(3, 'Rokib', 'r@gmail.com', '999-000-222', '1234', 1),
(4, 'Riaj', 'rj@gmail.com', '999-000-333', '1234', 1),
(5, 'Akash', 'a@gmail.com', '999-000-444', '1234', 1),
(6, 'Siam', 's@gmail.com', '999-000-555', '1234', 1),
(7, 'Bimal', 'b@gmail.com', '999-000-666', '1234', 1),
(8, 'Hero', 'hero@gmail.com', '12345678', '1111', 0),
(9, 'jui', 'jui@email.com', '12345678', '1122', 0);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(10) NOT NULL,
  `region_name` varchar(30) DEFAULT NULL,
  `HotelHotel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `HotelHotel_id`) VALUES
(101, 'Cox\'s Bazaar', 0),
(102, 'Sylhet', 0),
(103, 'Sajek', 0),
(104, 'Rangamati', 0),
(105, 'Bandorban', 0),
(106, 'Sundarban', 0);

-- --------------------------------------------------------

--
-- Table structure for table `region_booking`
--

CREATE TABLE `region_booking` (
  `Regionregion_id` int(10) NOT NULL,
  `Bookingbooking_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region_booking`
--

INSERT INTO `region_booking` (`Regionregion_id`, `Bookingbooking_id`) VALUES
(101, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(10) NOT NULL,
  `transport_type` varchar(30) NOT NULL,
  `transport_class` varchar(30) NOT NULL,
  `transport_rent` int(10) NOT NULL,
  `Regionregion_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `transport_type`, `transport_class`, `transport_rent`, `Regionregion_id`) VALUES
(22221, 'BUS', 'AC', 17, 101),
(22222, 'BUS', 'NON_AC', 10, 101),
(22223, 'AIR', 'BUSINESS', 70, 101),
(22224, 'AIR', 'ECONOMY', 60, 101),
(22225, 'BUS', 'NON_AC', 8, 102),
(22226, 'AIR', 'ECONOMY', 59, 102),
(22227, 'BUS', 'NON_AC', 13, 104),
(22228, 'BUS', 'AC', 18, 104),
(22229, 'SHIP', 'NON_AC(Cabin)', 10, 106),
(22230, 'SHIP', 'AC(Cabin)', 13, 106),
(22231, 'SHIP', 'VIP', 85, 106),
(22232, 'BUS', 'NON_AC', 12, 105),
(22233, 'BUS', 'AC', 18, 105),
(22234, 'BUS', 'NON_AC', 11, 103),
(22235, 'BUS', 'AC', 15, 103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FKBooking956763` (`HotelHotel_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`destination_id`),
  ADD KEY `FKDestinatio431438` (`Regionregion_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`),
  ADD KEY `FKHotel324684` (`Regionregion_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `person_email` (`person_email`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `region_booking`
--
ALTER TABLE `region_booking`
  ADD PRIMARY KEY (`Regionregion_id`,`Bookingbooking_id`),
  ADD KEY `FKRegion_Boo630931` (`Bookingbooking_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`),
  ADD KEY `FKTransport626330` (`Regionregion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000001;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `destination_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55571;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Hotel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11115;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22236;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FKBooking956763` FOREIGN KEY (`HotelHotel_id`) REFERENCES `hotel` (`Hotel_id`);

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `FKDestinatio431438` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FKHotel324684` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `region_booking`
--
ALTER TABLE `region_booking`
  ADD CONSTRAINT `FKRegion_Boo568837` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`),
  ADD CONSTRAINT `FKRegion_Boo630931` FOREIGN KEY (`Bookingbooking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `FKTransport626330` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 04:07 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghuraibangladesh`
--
DROP DATABASE if exists ghuraibangladesh;
CREATE DATABASE ghuraibangladesh;
USE ghuraibangladesh;
-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `booking_for_person` int(10) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `HotelHotel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_for_person`, `person_email`, `HotelHotel_id`) VALUES
(1000000, 2, 'mehab@gmail.com', 11111);

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `destination_id` int(10) NOT NULL,
  `destination_name` varchar(30) NOT NULL,
  `local_transport` varchar(30) NOT NULL,
  `local_transport_fare` int(10) NOT NULL,
  `tour_guide` varchar(30) NOT NULL,
  `Regionregion_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`destination_id`, `destination_name`, `local_transport`, `local_transport_fare`, `tour_guide`, `Regionregion_id`) VALUES
(55551, 'saintmartin', 'ship', 12, 'r@gmail.com', 101),
(55552, 'himchori', 'auto', 4, 'r@gmail.com', 101),
(55553, 'marine drive', 'auto', 4, 'r@gmail.com', 101),
(55554, 'kaptai lake', 'boat', 4, 'n@gmail.com', 104),
(55555, 'lake view', 'auto', 5, 'n@gmail.com', 104),
(55556, 'Hanging Bridge', 'auto', 5, 'n@gmail.com', 104),
(55557, 'kochikhali', 'boat', 3, 's@gmail.com', 106),
(55558, 'mandarbaria', 'boat', 4, 's@gmail.com', 106),
(55559, 'jamtola beach', 'boat', 4, 's@gmail.com', 106),
(55560, 'Bisanakandi', 'auto', 7, 'rj@gmail.com', 102),
(55561, 'Jaflong', 'auto', 8, 'rj@gmail.com', 102),
(55562, 'ratargul swamp forest', 'auto', 5, 'rj@gmail.com', 102),
(55563, 'boga lake', 'boat', 3, 'b@gmail.com', 105),
(55564, 'nafakhum waterfalls', 'auto', 4, 'b@gmail.com', 105),
(55565, 'keokradong', 'auto', 4, 'b@gmail.com', 105),
(55566, 'Tazing dong', 'boat', 4, 'b@gmail.com', 105),
(55567, 'Chimbuk hill', 'auto', 4, 'b@gmail.com', 105),
(55568, 'ruiluipara', 'auto', 3, 'rj@gmail.com', 103),
(55569, 'sajek valley', 'auto', 4, 'rj@gmail.com', 103),
(55570, 'Lushai Heritage Village', 'auto', 4, 'rj@gmail.com', 103);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` int(10) NOT NULL,
  `hotel_type` varchar(30) NOT NULL,
  `hotel_location` varchar(30) NOT NULL,
  `hotel_rent` int(10) NOT NULL,
  `HotelHotel_id` int(10) NOT NULL,
  `Regionregion_id` int(10) NOT NULL,
  `hotel_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `hotel_type`, `hotel_location`, `hotel_rent`, `HotelHotel_id`, `Regionregion_id`, `hotel_name`) VALUES
(11111, '5-star', 'Cox\'s Bazar', 35, 0, 101, 'Sea Crown'),
(11112, '5-star', 'Sylhet', 27, 0, 102, 'Rose View'),
(11113, '4-star', 'Sajek', 50, 0, 103, 'Salka Eco Resort'),
(11114, '4-star', 'Bandorban', 30, 0, 105, 'Hill View');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(10) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_role` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `person_name`, `person_email`, `person_phone`, `person_role`) VALUES
(1, 'Mehab', 'mehab@gmail.com', '01112221112', 0),
(2, 'Nirob', 'n@gmail.com', '999-000-111', 1),
(3, 'Rokib', 'r@gmail.com', '999-000-222', 1),
(4, 'Riaj', 'rj@gmail.com', '999-000-333', 1),
(5, 'Akash', 'a@gmail.com', '999-000-444', 1),
(6, 'Siam', 's@gmail.com', '999-000-555', 1),
(7, 'Bimal', 'b@gmail.com', '999-000-666', 1);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(10) NOT NULL,
  `region_name` varchar(30) DEFAULT NULL,
  `HotelHotel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `HotelHotel_id`) VALUES
(101, 'Cox\'s Bazaar', 0),
(102, 'Sylhet', 0),
(103, 'Sajek', 0),
(104, 'Rangamati', 0),
(105, 'Bandorban', 0),
(106, 'Sundarban', 0);

-- --------------------------------------------------------

--
-- Table structure for table `region_booking`
--

CREATE TABLE `region_booking` (
  `Regionregion_id` int(10) NOT NULL,
  `Bookingbooking_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region_booking`
--

INSERT INTO `region_booking` (`Regionregion_id`, `Bookingbooking_id`) VALUES
(101, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(10) NOT NULL,
  `transport_type` varchar(30) NOT NULL,
  `transport_class` varchar(30) NOT NULL,
  `transport_rent` int(10) NOT NULL,
  `Regionregion_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `transport_type`, `transport_class`, `transport_rent`, `Regionregion_id`) VALUES
(22221, 'BUS', 'AC', 17, 101),
(22222, 'BUS', 'NON_AC', 10, 101),
(22223, 'AIR', 'BUSINESS', 70, 101),
(22224, 'AIR', 'ECONOMY', 60, 101),
(22225, 'BUS', 'NON_AC', 8, 102),
(22226, 'AIR', 'ECONOMY', 59, 102),
(22227, 'BUS', 'NON_AC', 13, 104),
(22228, 'BUS', 'AC', 18, 104),
(22229, 'SHIP', 'NON_AC(Cabin)', 10, 106),
(22230, 'SHIP', 'AC(Cabin)', 13, 106),
(22231, 'SHIP', 'VIP', 85, 106),
(22232, 'BUS', 'NON_AC', 12, 105),
(22233, 'BUS', 'AC', 18, 105),
(22234, 'BUS', 'NON_AC', 11, 103),
(22235, 'BUS', 'AC', 15, 103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FKBooking956763` (`HotelHotel_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`destination_id`),
  ADD KEY `FKDestinatio431438` (`Regionregion_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`),
  ADD KEY `FKHotel324684` (`Regionregion_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `person_email` (`person_email`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `region_booking`
--
ALTER TABLE `region_booking`
  ADD PRIMARY KEY (`Regionregion_id`,`Bookingbooking_id`),
  ADD KEY `FKRegion_Boo630931` (`Bookingbooking_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`),
  ADD KEY `FKTransport626330` (`Regionregion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000001;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `destination_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55571;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Hotel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11115;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22236;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FKBooking956763` FOREIGN KEY (`HotelHotel_id`) REFERENCES `hotel` (`Hotel_id`);

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `FKDestinatio431438` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FKHotel324684` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `region_booking`
--
ALTER TABLE `region_booking`
  ADD CONSTRAINT `FKRegion_Boo568837` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`),
  ADD CONSTRAINT `FKRegion_Boo630931` FOREIGN KEY (`Bookingbooking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `FKTransport626330` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 06:37 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghuraibangladesh`
--
DROP DATABASE if exists ghuraibangladesh;
CREATE DATABASE ghuraibangladesh;
USE ghuraibangladesh;
-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `booking_for_person` int(10) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `HotelHotel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_for_person`, `person_email`, `HotelHotel_id`) VALUES
(1000000, 2, 'mehab@gmail.com', 11111);

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `destination_id` int(10) NOT NULL,
  `destination_name` varchar(30) NOT NULL,
  `local_transport` varchar(30) NOT NULL,
  `local_transport_fare` int(10) NOT NULL,
  `tour_guide` varchar(30) NOT NULL,
  `Regionregion_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`destination_id`, `destination_name`, `local_transport`, `local_transport_fare`, `tour_guide`, `Regionregion_id`) VALUES
(55551, 'saintmartin', 'ship', 12, 'r@gmail.com', 101),
(55552, 'himchori', 'auto', 4, 'r@gmail.com', 101),
(55553, 'marine drive', 'auto', 4, 'r@gmail.com', 101),
(55554, 'kaptai lake', 'boat', 4, 'n@gmail.com', 104),
(55555, 'lake view', 'auto', 5, 'n@gmail.com', 104),
(55556, 'Hanging Bridge', 'auto', 5, 'n@gmail.com', 104),
(55557, 'kochikhali', 'boat', 3, 's@gmail.com', 106),
(55558, 'mandarbaria', 'boat', 4, 's@gmail.com', 106),
(55559, 'jamtola beach', 'boat', 4, 's@gmail.com', 106),
(55560, 'Bisanakandi', 'auto', 7, 'rj@gmail.com', 102),
(55561, 'Jaflong', 'auto', 8, 'rj@gmail.com', 102),
(55562, 'ratargul swamp forest', 'auto', 5, 'rj@gmail.com', 102),
(55563, 'boga lake', 'boat', 3, 'b@gmail.com', 105),
(55564, 'nafakhum waterfalls', 'auto', 4, 'b@gmail.com', 105),
(55565, 'keokradong', 'auto', 4, 'b@gmail.com', 105),
(55566, 'Tazing dong', 'boat', 4, 'b@gmail.com', 105),
(55567, 'Chimbuk hill', 'auto', 4, 'b@gmail.com', 105);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` int(10) NOT NULL,
  `hotel_type` varchar(30) NOT NULL,
  `hotel_location` varchar(30) NOT NULL,
  `hotel_rent` int(10) NOT NULL,
  `HotelHotel_id` int(10) NOT NULL,
  `Regionregion_id` int(10) NOT NULL,
  `hotel_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `hotel_type`, `hotel_location`, `hotel_rent`, `HotelHotel_id`, `Regionregion_id`, `hotel_name`) VALUES
(11111, '5-star', 'Cox\'s Bazar', 35, 0, 101, 'Sea Crown'),
(11112, '5-star', 'Sylhet', 27, 0, 102, 'Rose View'),
(11113, '4-star', 'Sajek', 50, 0, 103, 'Salka Eco Resort'),
(11114, '4-star', 'Bandorban', 30, 0, 105, 'Hill View');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(10) NOT NULL,
  `person_name` varchar(30) NOT NULL,
  `person_email` varchar(30) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_role` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `person_name`, `person_email`, `person_phone`, `person_role`) VALUES
(1, 'Mehab', 'mehab@gmail.com', '01112221112', 0),
(2, 'Nirob', 'n@gmail.com', '999-000-111', 1),
(3, 'Rokib', 'r@gmail.com', '999-000-222', 1),
(4, 'Riaj', 'rj@gmail.com', '999-000-333', 1),
(5, 'Akash', 'a@gmail.com', '999-000-444', 1),
(6, 'Siam', 's@gmail.com', '999-000-555', 1),
(7, 'Bimal', 'b@gmail.com', '999-000-666', 1);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(10) NOT NULL,
  `region_name` varchar(30) DEFAULT NULL,
  `HotelHotel_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `HotelHotel_id`) VALUES
(101, 'Cox\'s Bazaar', 0),
(102, 'Sylhet', 0),
(103, 'Sajek', 0),
(104, 'Rangamati', 0),
(105, 'Bandorban', 0),
(106, 'Sundarban', 0);

-- --------------------------------------------------------

--
-- Table structure for table `region_booking`
--

CREATE TABLE `region_booking` (
  `Regionregion_id` int(10) NOT NULL,
  `Bookingbooking_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region_booking`
--

INSERT INTO `region_booking` (`Regionregion_id`, `Bookingbooking_id`) VALUES
(101, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(10) NOT NULL,
  `transport_type` varchar(30) NOT NULL,
  `transport_class` varchar(30) NOT NULL,
  `transport_rent` int(10) NOT NULL,
  `Regionregion_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transport_id`, `transport_type`, `transport_class`, `transport_rent`, `Regionregion_id`) VALUES
(22221, 'BUS', 'AC', 17, 101),
(22222, 'BUS', 'NON_AC', 10, 101),
(22223, 'AIR', 'BUSINESS', 70, 101),
(22224, 'AIR', 'ECONOMY', 60, 101),
(22225, 'BUS', 'NON_AC', 8, 102),
(22226, 'AIR', 'ECONOMY', 59, 102),
(22227, 'BUS', 'NON_AC', 13, 104),
(22228, 'BUS', 'AC', 18, 104),
(22229, 'SHIP', 'NON_AC(Cabin)', 10, 106),
(22230, 'SHIP', 'AC(Cabin)', 13, 106),
(22231, 'SHIP', 'VIP', 85, 106),
(22232, 'BUS', 'NON_AC', 12, 105),
(22233, 'BUS', 'AC', 18, 105),
(22234, 'BUS', 'NON_AC', 11, 103),
(22235, 'BUS', 'AC', 15, 103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `FKBooking956763` (`HotelHotel_id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`destination_id`),
  ADD KEY `FKDestinatio431438` (`Regionregion_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`),
  ADD KEY `FKHotel324684` (`Regionregion_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `person_email` (`person_email`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `region_booking`
--
ALTER TABLE `region_booking`
  ADD PRIMARY KEY (`Regionregion_id`,`Bookingbooking_id`),
  ADD KEY `FKRegion_Boo630931` (`Bookingbooking_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`),
  ADD KEY `FKTransport626330` (`Regionregion_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000001;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `destination_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55568;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Hotel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11115;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22236;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FKBooking956763` FOREIGN KEY (`HotelHotel_id`) REFERENCES `hotel` (`Hotel_id`);

--
-- Constraints for table `destination`
--
ALTER TABLE `destination`
  ADD CONSTRAINT `FKDestinatio431438` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FKHotel324684` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);

--
-- Constraints for table `region_booking`
--
ALTER TABLE `region_booking`
  ADD CONSTRAINT `FKRegion_Boo568837` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`),
  ADD CONSTRAINT `FKRegion_Boo630931` FOREIGN KEY (`Bookingbooking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `FKTransport626330` FOREIGN KEY (`Regionregion_id`) REFERENCES `region` (`region_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
