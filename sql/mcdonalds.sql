-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2017 at 02:23 AM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mcdonalds`
--

-- --------------------------------------------------------

--
-- Table structure for table `myItems`
--

CREATE TABLE `myItems` (
  `ID` int(7) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Calories` int(7) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Restaurant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `myItems`
--

INSERT INTO `myItems` (`ID`, `Name`, `Calories`, `Type`, `Restaurant`) VALUES
(1, 'Big Mac', 850, 'Sandwich', 'McDonalds'),
(2, 'Whopper', 800, 'Sandwich', 'Burger King'),
(3, 'Triple Cheese Burger', 1200, 'Sandwich', 'Wendys'),
(4, 'McFlurry - Oreo', 900, 'Dessert', 'McDonalds'),
(5, 'Lg - Sprite', 300, 'Drink', 'Burger King');
