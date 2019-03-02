-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2018 at 04:24 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meal_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `chef_name` varchar(250) NOT NULL,
  `ingrediants` varchar(250) NOT NULL,
  `serves` varchar(250) NOT NULL,
  `time_prepared` varchar(100) NOT NULL,
  `good_till` varchar(250) NOT NULL,
  `cost_per_portion` double NOT NULL,
  `portion_left` varchar(250) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `uploaded_by` int(11) NOT NULL,
  `uploaded_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `chef_name`, `ingrediants`, `serves`, `time_prepared`, `good_till`, `cost_per_portion`, `portion_left`, `latitude`, `longitude`, `uploaded_by`, `uploaded_name`, `created_at`, `updated_at`) VALUES
(1, 'sadfasdf', 'fs2d', 'asfd', 'asdfasdf', '0000-00-00 00:00:00', '2', 33, '0', 24.3712545, 88.6058205, 1, 'dsaf', '2018-01-01 15:34:22', '2018-01-01 09:34:22'),
(2, 'kacchi biriani', 'Chilis', 'chal dal', 'me', '0000-00-00 00:00:00', '9:00', 90, '2', 24.3690972, 88.6289504, 4, 'shihna', '2018-01-02 17:31:06', '2018-01-02 11:31:06'),
(3, 'Kabab', 'sda fsdf ', 'dsfasdf', '4sdf', '0000-00-00 00:00:00', '44', 12, '4', 24.364843, 88.598796, 1, '1', '2018-01-02 16:18:50', '2018-01-02 10:18:50'),
(4, 'add', 'sdfasdf', '3', '444', '0000-00-00 00:00:00', '4444', 2, '4', 24.368580299999998, 88.6077627, 1, '1', '2018-01-01 10:02:26', '2018-01-01 10:02:26'),
(7, 'sdfsdfsadf', 'asfddsaf', 'sdf', 'sdf5', '5sadf', '5', 5, '5', 24.369375599999998, 88.6289504, 6, 'arafin', '2018-01-02 23:16:21', '2018-01-02 23:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food_id`, `buyer_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(10, 1, 1, 1, 33, '2017-12-30 12:22:18', '2017-12-30 12:22:18'),
(11, 1, 1, 1, 33, '2017-12-30 12:23:16', '2017-12-30 12:23:16'),
(12, 1, 1, 1, 33, '2018-01-01 09:34:22', '2018-01-01 09:34:22'),
(13, 3, 15, 1, 12, '2018-01-02 10:18:50', '2018-01-02 10:18:50'),
(14, 2, 6, 1, 90, '2018-01-02 11:29:56', '2018-01-02 11:29:56'),
(15, 2, 15, 1, 90, '2018-01-02 11:31:06', '2018-01-02 11:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nic` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nic`, `email`, `phone`, `password`, `description`, `address`, `updated_at`, `created_at`) VALUES
(1, '1', '3', 's@yahoo.com', '23', '202cb962ac59075b964b07152d234b70', '', '', '2017-12-24 16:03:39', '2017-12-24 03:48:04'),
(4, 'shihna', 'sdfasdf', 'a@yahoo.com', '34', 'bbf3d1c0ac5fbaf12f88a478a27adfae', '', '', '2017-12-31 12:43:05', '2017-12-30 23:58:39'),
(5, 'adfasdf', 'asdf sd fs', 'a@yahoo.com', '22 2222-22222', 'bbf3d1c0ac5fbaf12f88a478a27adfae', '', '', '2017-12-31 12:43:05', '2017-12-31 11:02:05'),
(6, 'arafin', 'asdf sd sd', 'sa@yahoo.com', '22 3333-33333', '68053af2923e00204c3ca7c6a3150cf7', 'sdfadsf', 'Raj', '2018-01-03 08:55:01', '2017-12-31 11:09:01'),
(15, 'dsafa', 'asdfsdaf', 'sas@yahoo.com', '33 3333-33333', '202cb962ac59075b964b07152d234b70', '', '', '2018-01-02 10:06:19', '2018-01-02 10:06:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
