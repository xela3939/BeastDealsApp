-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2025 at 09:13 PM
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
-- Database: `beastdealsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `deal_id`, `username`, `comment_text`, `comment_date`) VALUES
(1, 1, 'user1', 'hei', '2025-06-01 23:19:17'),
(2, 3, 'user1', 'Ordered the other day, hopefully they will send out befoore delivery date stated', '2025-06-12 20:06:36'),
(3, 3, 'user2', 'I WANT NITRO PLUS AT THIS PRICEEEEE', '2025-06-12 20:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `store` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `next_best_price` decimal(10,2) DEFAULT NULL,
  `voucher_code` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `image6` varchar(255) DEFAULT NULL,
  `image7` varchar(255) DEFAULT NULL,
  `image8` varchar(255) DEFAULT NULL,
  `posted_by` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `title`, `description`, `store`, `price`, `next_best_price`, `voucher_code`, `link`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `image8`, `posted_by`, `user_id`, `votes`, `start_date`, `expiry_date`, `created_at`, `username`) VALUES
(1, 'Optimum Nutrition Gold Standard 100% Whey Protein Powder', 'Optimum Nutrition’s Gold Standard 100% WHEY is the world’s best-selling protein powder* designed to support your fitness journey from day one\nFAST-ABSORBING whey protein with whey protein isolate as the main ingredient helps with muscle gain and supports recovery* after every training session\nThe ON whey protein formula is Informed Choice certified, contains naturally-occurring BCAAs and GLUTAMINE and is LOW IN SUGAR and fat', NULL, 23.80, NULL, NULL, 'https://www.amazon.co.uk/dp/B0015R3AH2?smid=A3P5ROKL5A1OLE&tag=pepperegc-21&ascsubtag=ppr-uk-2843336964&th=1', '1.jpg', '2.jpg', '3.jpg', '4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-11-12', '2025-06-01 23:17:01', 'user1'),
(3, 'Sapphire Pulse AMD Radeon RX 9060 XT', 'Bosch Multi-Material Drilling & Screwdriving Set 103 Pieces\n\nRobust, compact and easy to handle set for a variety of drilling and screwdriving applications. Offers a basic set of quality accessories.\n\nFor Use with 3-Jaw Chuck Machines on Rotary & Impact Modes\nSuitable for Wood, Plastic, Concrete, Brick, Light Building Materials, Multi-Layer Materials & Masonry', NULL, 319.00, NULL, NULL, 'https://www.amazon.co.uk/dp/B0F8C6MWSY?smid=A3P5ROKL5A1OLE&tag=pepperugc03-21&ascsubtag=ppr-uk-2846874497', '61O7CAzODtL._AC_SX679_.jpg', '71+LUR5dWVL._AC_SX466_.jpg', '611VtagFifL._AC_SX679_.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-12-24', '2025-06-12 20:05:49', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`) VALUES
(2, 'user', 'password'),
(3, 'User1', 'password'),
(4, 'user2', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `username`, `deal_id`, `added_at`) VALUES
(1, 'user1', 1, '2025-06-01 22:19:29'),
(2, 'user1', 2, '2025-06-01 22:22:34'),
(3, 'user', 1, '2025-06-12 08:53:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deal_id` (`deal_id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_wishlist` (`username`,`deal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`deal_id`) REFERENCES `deals` (`id`);

--
-- Constraints for table `deals`
--
ALTER TABLE `deals`
  ADD CONSTRAINT `deals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
