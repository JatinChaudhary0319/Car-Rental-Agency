SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_model` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `price_per_day` float NOT NULL,
  `seating_capacity` int(2) NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_model`, `car_nameplate`, `car_img`, `price_per_day`, `seating_capacity`, `car_availability`) VALUES
(1, 'Tata', 'Nexon', 'UP13LA1236', 'assets/img/cars/Tata-nexon.png', 1299, 4, 'yes'),
(2, 'Mahindra', 'Bolero Neo', 'RJ05CA5566', 'assets/img/cars/Mahindra_Bolero_Neo.jpg', 2950, 5, 'yes'),
(3, 'Suzuki', 'Swift', 'HR13KL8964', 'assets/img/cars/Suzuki-Swift.jpg', 2200, 4, 'yes'),
(5, 'Audi', 'TT-RS', 'DL3JA4444', 'assets/img/cars/Audi-TT-RS.jpg', 6999, 4, 'yes'),
(6, 'Rolls Royace', 'Sweptail', 'UK5LO6971', 'assets/img/cars/rolls-royce_sweptail.jpg', 5579, 4, 'yes'),
(7, 'Mahindra', 'Scorpio', 'UP16AS3567', 'assets/img/cars/Mahindra-Scorpio.jpg', 2999, 5, 'yes'),
(8, 'Ferrari', 'Laferrari Aperta', 'TN17MS1997', 'assets/img/cars/ferrari-laferrari-aperta.jpg', 9999, 2, 'yes'),
(9, 'Mercedes', 'AMG G 65', 'GA3KA6969', 'assets/img/cars/mercedes-amg-g-65.jpg', 8900, 4, 'yes'),
(10, 'Rolls Royace', 'Phantom 300', 'MH5NV8888', 'assets/img/cars/rolls-royce-phantom-300.jpg', 8999, 4, 'yes'),
(11, 'Maruti', 'Wagon', 'GA08MX1997', 'assets/img/cars/Maruti-Wagon.jpg', 1999, 5, 'yes'),
(12, 'Hyundai', 'Veloster', 'BA20PA5685', 'assets/img/cars/hyundai0.png', 4490, 5, 'yes'),
(13, 'Jaguar', 'XF', 'GA8KH8866', 'assets/img/cars/jaguarxf.jpg', 6199, 4, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE IF NOT EXISTS `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(1, 'Jatin'),
(3, 'Jatin'),
(7, 'Jatin'),
(8, 'Jatin'),
(9, 'Jatin'),
(11, 'Jatin'),
(12, 'Jatin'),
(2, 'Priyanka'),
(4, 'Priyanka'),
(6, 'Priyanka'),
(10, 'Priyanka'),
(13, 'Priyanka');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('Jatin', 'Jatin Chaudhary', '9876555555', 'jatin@gmail.com', 'xyz', '87654321'),
('Priyanka', 'Priyanka Chopra', '9008877354', 'priyanka@gmail.com', 'abc', '87654321');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('antonio', 'Antonio M', '0785556580', 'antony@gmail.com', '2677  Burton Avenue', 'password'),
('christine', 'Christine', '8544444444', 'chr@gmail.com', '3701  Fairway Drive', 'password'),
('ethan', 'Ethan Hawk', '69741111110', 'thisisethan@gmail.com', '4554  Rowes Lane', 'password'),
('james', 'James Washington', '0258786969', 'james@gmail.com', '2316  Mayo Street', 'password'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737  Fowler Avenue', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Rental', 'rentall@gmail.com', 'Hope this works!');

-- --------------------------------------------------------
--
-- Table structure for table `rentedcars`
--

CREATE TABLE IF NOT EXISTS `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=574681260 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'ethan', 4, '2018-07-18', '2018-07-01', '2018-07-02', '2018-07-18', 11, 244, 1, 5884, 'R'),
(574681246, 'james', 6, '2018-07-18', '2018-06-01', '2018-06-28', '2018-07-18', 15, 69, 27, 5035, 'R'),
(574681247, 'antonio', 3, '2018-07-18', '2018-07-19', '2018-07-22', '2018-07-20', 13, 421, 3, 5473, 'R'),
(574681248, 'ethan', 1, '2018-07-20', '2018-07-28', '2018-07-29', '2018-07-20', 10, 69, 1, 690, 'R'),
(574681249, 'james', 1, '2018-07-23', '2018-07-24', '2018-07-25', '2018-07-23', 10, 500, 1, 5000, 'R'),
(574681250, 'lucas', 3, '2018-07-23', '2018-07-23', '2018-07-24', '2018-07-23', 2600, NULL, 1, 2600, 'R'),
(574681251, 'james', 10, '2018-07-23', '2018-07-25', '2018-07-30', '2018-07-23', 10, 60, 2, 600, 'R'),
(574681252, 'christine', 11, '2018-07-23', '2018-07-23', '2018-07-23', '2018-07-23', 13, 200, 0, 2600, 'R'),
(574681253, 'christine', 6, '2018-07-23', '2018-07-23', '2018-08-03', '2018-07-23', 2600, NULL, 11, 28600, 'R'),
(574681254, 'ethan', 12, '2018-07-23', '2018-07-23', '2018-07-26', '2018-07-23', 3200, NULL, 3, 9600, 'R'),
(574681255, 'christine', 8, '2018-07-23', '2018-07-23', '2018-08-08', '2018-07-23', 2400, NULL, 16, 38400, 'R'),
(574681257, 'james', 7, '2018-08-11', '2018-08-13', '2018-08-17', NULL, 14, NULL, NULL, NULL, 'NR'),
(574681258, 'lucas', 3, '2021-03-24', '2021-03-24', '2021-03-25', '2021-03-24', 2600, NULL, 1, 2600, 'R'),
(574681259, 'lucas', 13, '2021-03-24', '2021-03-24', '2021-03-26', '2021-03-24', 6100, NULL, 2, 12200, 'R');

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
 ADD PRIMARY KEY (`car_id`), ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
 ADD PRIMARY KEY (`car_id`), ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
 ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
 ADD PRIMARY KEY (`id`), ADD KEY `customer_username` (`customer_username`), ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=574681260;

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`);