-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 29, 2017 at 10:49 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caloriematch`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(7) NOT NULL,
  `itemID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `itemID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `creditcard`
--

CREATE TABLE `creditcard` (
  `creditcardID` int(7) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `creditcard`
--

INSERT INTO `creditcard` (`creditcardID`, `name`) VALUES
(1, 'Visa'),
(2, 'American Express'),
(3, 'Mastercard');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemID` int(7) NOT NULL,
  `restaurantID` int(7) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `calories` int(7) NOT NULL,
  `price` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemID`, `restaurantID`, `name`, `calories`, `price`) VALUES
(1, 1, '1% Low Fat Milk Jug ', 100, '3.00'),
(2, 1, 'Blueberry Pomegranate Smoothie ', 220, '4.00'),
(3, 1, 'Coca-Cola Classic ', 210, '1.00'),
(4, 1, 'Dasani Water ', 0, '5.00'),
(5, 1, 'Diet Coke ', 0, '0.89'),
(6, 1, 'Diet Dr Pepper ', 0, '6.00'),
(7, 1, 'Dr Pepper ', 210, '1.09'),
(8, 1, 'Fat Free Chocolate Milk Jug ', 130, '1.00'),
(9, 1, 'Hi-C Orange Lavaburst ', 240, '3.00'),
(10, 1, 'Iced Tea ', 0, '1.00'),
(11, 1, 'Mango Pineapple Smoothie ', 220, '5.33'),
(12, 1, 'McCafe Classic Lemonade ', 100, '0.99'),
(13, 1, 'McCafe Frozen Classic Lemonade ', 160, '1.00'),
(14, 1, 'McCafe Frozen Strawberry Lemonade ', 180, '5.80'),
(15, 1, 'McCafe Strawberry Lemonade ', 120, '5.00'),
(16, 1, 'Minute Maid Apple Juice Box ', 100, '3.00'),
(17, 1, 'Minute Maid Orange Juice ', 190, '0.49'),
(18, 1, 'POWERade Mountain Berry Blast ', 150, '4.00'),
(19, 1, 'Red Flash Extra Small', 110, '6.00'),
(20, 1, 'Red Flash Large', 300, '2.33'),
(21, 1, 'Red Flash Medium', 220, '0.69'),
(22, 1, 'Red Flash Small', 150, '3.00'),
(23, 1, 'Sprite ', 210, '2.00'),
(24, 1, 'Strawberry Banana Smoothie ', 210, '6.00'),
(25, 1, 'Sweet Tea ', 180, '0.99'),
(26, 1, 'Bacon, Egg & Cheese Bagel ', 560, '1.40'),
(27, 1, 'Bacon, Egg & Cheese Bagel w/ Egg Whites ', 510, '1.00'),
(28, 1, 'Bacon, Egg & Cheese Biscuit ', 420, '0.82'),
(29, 1, 'Bacon, Egg & Cheese Biscuit w/ Egg Whites ', 360, '2.17'),
(30, 1, 'Bacon, Egg & Cheese McGriddles ', 420, '5.00'),
(31, 1, 'Bacon, Egg & Cheese McGriddles w/ Egg Whites ', 360, '5.00'),
(32, 1, 'Big Breakfast w/ Egg Whites ', 640, '4.40'),
(33, 1, 'Big Breakfast w/ Hotcakes & Egg Whites ', 990, '2.00'),
(34, 1, 'Big Breakfast with Hotcakes ', 1090, '2.00'),
(35, 1, 'Big Breakfast', 740, '2.00'),
(36, 1, 'Cinnamon Melts ', 460, '5.75'),
(37, 1, 'Egg McMuffin ', 300, '6.00'),
(38, 1, 'Egg White Delight McMuffin ', 250, '6.00'),
(39, 1, 'Fruit & Maple Oatmeal w/ Brown Sugar', 290, '3.00'),
(40, 1, 'Fruit & Maple Oatmeal w/o Brown Sugar', 260, '6.00'),
(41, 1, 'Hash Brown ', 150, '0.49'),
(42, 1, 'Hotcakes ', 350, '3.00'),
(43, 1, 'Hotcakes and Sausage ', 520, '3.75'),
(44, 1, 'Sausage Biscuit ', 430, '2.33'),
(45, 1, 'Sausage Biscuit w/ Egg Whites ', 460, '6.00'),
(46, 1, 'Sausage Biscuit with Egg ', 510, '6.00'),
(47, 1, 'Sausage Burrito ', 300, '4.17'),
(48, 1, 'Sausage McGriddles', 420, '2.50'),
(49, 1, 'Sausage McMuffin w/ Egg Whites ', 400, '1.20'),
(50, 1, 'Sausage McMuffin', 370, '2.33'),
(51, 1, 'Sausage McMuffin with Egg ', 450, '3.33'),
(52, 1, 'Sausage, Egg & Cheese McGriddles ', 560, '5.00'),
(53, 1, 'Sausage, Egg & Cheese McGriddles w/ Egg Whites ', 500, '2.00'),
(54, 1, 'Southern Style Chicken Biscuit ', 410, '5.40'),
(55, 1, 'Steak & Egg Biscuit ', 540, '2.00'),
(56, 1, 'Steak & Egg McMuffin ', 430, '6.00'),
(57, 1, 'Steak Egg & Cheese Bagel ', 680, '5.00'),
(58, 1, 'Turkey Sausage Breakfast Bowl ', 240, '5.40'),
(59, 1, 'Artisan Grilled Chicken Sandwich ', 360, '4.00'),
(60, 1, 'Bacon & Cheese Sirloin Third Pound Burger ', 810, '4.00'),
(61, 1, 'Bacon Buffalo Ranch McChicken ', 420, '1.24'),
(62, 1, 'Bacon Cheddar McChicken ', 480, '6.00'),
(63, 1, 'Bacon Clubhouse Burger ', 720, '1.60'),
(64, 1, 'Bacon Clubhouse Chicken Sandwich w/ Crispy Chicken', 750, '5.67'),
(65, 1, 'Bacon Clubhouse Chicken Sandwich w/ Grilled Chicken', 590, '6.00'),
(66, 1, 'Bacon McDouble ', 460, '0.99'),
(67, 1, 'BBQ Ranch Burger ', 350, '3.20'),
(68, 1, 'Big Mac ', 540, '3.00'),
(69, 1, 'Buffalo Ranch McChicken ', 350, '0.49'),
(70, 1, 'Cheeseburger ', 300, '6.00'),
(71, 1, 'Daily Double ', 440, '1.17'),
(72, 1, 'Double Cheeseburger ', 440, '1.80'),
(73, 1, 'Double Quarter Pounder with Cheese ', 740, '4.40'),
(74, 1, 'Filet-O-Fish', 380, '6.00'),
(75, 1, 'Grand Mac ', 860, '1.80'),
(76, 1, 'Grilled Onion Cheddar Burger ', 310, '2.00'),
(77, 1, 'Hamburger ', 250, '1.20'),
(78, 1, 'Jalapeno Double ', 430, '6.00'),
(79, 1, 'Lettuce & Tomato Sirloin Third Pound Burger ', 750, '1.00'),
(80, 1, 'Mac Jr ', 460, '2.00'),
(81, 1, 'McChicken ', 360, '1.83'),
(82, 1, 'McDouble ', 390, '6.00'),
(83, 1, 'McRib ', 500, '2.00'),
(84, 1, 'Old Bay Filet-O-Fish ', 390, '3.00'),
(85, 1, 'Premium Buttermilk Crispy Chicken Deluxe Sandwich ', 580, '3.00'),
(86, 1, 'Premium Crispy Chicken Deluxe Sandwich ', 530, '5.00'),
(87, 1, 'Premium McWrap Chicken & Bacon w/ Crispy Chicken', 600, '5.00'),
(88, 1, 'Premium McWrap Chicken & Bacon w/ Grilled Chicken', 440, '1.60'),
(89, 1, 'Premium McWrap Chicken & Ranch w/ Crispy Chicken', 590, '2.00'),
(90, 1, 'Premium McWrap Chicken & Ranch w/ Grilled Chicken', 430, '2.25'),
(91, 1, 'Premium McWrap Chicken Sweet Chili w/ Crispy Chicken', 520, '3.00'),
(92, 1, 'Premium McWrap Chicken Sweet Chili w/ Grilled Chicken', 360, '1.09'),
(93, 1, 'Premium McWrap Southwest Chicken w/ Crispy Chicken', 680, '6.00'),
(94, 1, 'Premium McWrap Southwest Chicken w/ Grilled Chicken', 520, '2.67'),
(95, 1, 'Quarter Pounder Bacon & Cheese ', 600, '2.33'),
(96, 1, 'Quarter Pounder Deluxe ', 540, '3.00'),
(97, 1, 'Quarter Pounder with Cheese ', 510, '2.00'),
(98, 1, 'Southern Style Crispy Chicken Sandwich ', 420, '2.00'),
(99, 1, 'Steakhouse Sirloin Third Pound Burger ', 730, '5.50'),
(100, 1, 'Chicken McNuggets 10 Piece', 470, '1.60'),
(101, 1, 'Chicken McNuggets 20 Piece', 940, '1.00'),
(102, 1, 'Chicken McNuggets 4 Piece', 190, '4.00'),
(103, 1, 'Chicken McNuggets 40 piece', 1880, '2.40'),
(104, 1, 'Chicken McNuggets 6 Piece', 280, '3.67'),
(105, 1, 'Chicken Selects Premium Breast Strips - 3 piece ', 380, '3.40'),
(106, 1, 'Chipotle Barbeque Sauce ', 50, '5.67'),
(107, 1, 'Coffee Cream ', 20, '3.00'),
(108, 1, 'Creamy Ranch Sauce ', 110, '6.00'),
(109, 1, 'EQUAL 0 Calorie Sweetener ', 0, '0.99'),
(110, 1, 'Grape Jam ', 35, '1.16'),
(111, 1, 'Honey ', 50, '1.40'),
(112, 1, 'Honey Mustard Sauce ', 60, '4.00'),
(113, 1, 'Hot Habanero Sauce ', 80, '1.29'),
(114, 1, 'Hotcake Syrup ', 180, '1.29'),
(115, 1, 'Ketchup Packet ', 10, '0.82'),
(116, 1, 'Marinara Sauce ', 15, '2.00'),
(117, 1, 'Newman\'s Own Creamy Southwest Dressing ', 100, '4.75'),
(118, 1, 'Newman\'s Own Low Fat Balsamic Vinaigrette ', 35, '6.00'),
(119, 1, 'Newman\'s Own Low Fat Italian Dressing ', 50, '3.00'),
(120, 1, 'Newman\'s Own Low Fat Sesame Ginger Dressing ', 90, '3.40'),
(121, 1, 'Newman\'s Own Ranch Dressing ', 170, '3.20'),
(122, 1, 'Peanuts for Sundaes ', 45, '4.50'),
(123, 1, 'Salt Packet ', 0, '1.75'),
(124, 1, 'Spicy Buffalo Sauce ', 35, '0.49'),
(125, 1, 'SPLENDA No Calorie Sweetener ', 0, '5.20'),
(126, 1, 'Strawberry Preserves ', 35, '1.00'),
(127, 1, 'Sugar Packet ', 15, '0.66'),
(128, 1, 'Sweet \'N Sour Sauce ', 50, '4.50'),
(129, 1, 'Sweet Chili Sauce ', 50, '5.25'),
(130, 1, 'Tangy Barbeque Sauce ', 50, '1.00'),
(131, 1, 'Tartar Sauce Cup ', 140, '3.17'),
(132, 1, 'Whipped Margarine ', 40, '1.32'),
(133, 1, 'Baked Hot Apple Pie ', 250, '4.75'),
(134, 1, 'Chocolate Chip Cookie ', 160, '2.33'),
(135, 1, 'Chocolate McCafe Shake ', 560, '6.00'),
(136, 1, 'Chocolate Shamrock Shake Large', 830, '6.00'),
(137, 1, 'Chocolate Shamrock Shake Small', 510, '4.80'),
(138, 1, 'Fried Cherry Pie ', 230, '1.20'),
(139, 1, 'Hot Caramel Sundae ', 340, '1.75'),
(140, 1, 'Hot Fudge Sundae ', 330, '6.00'),
(141, 1, 'Kiddie Ice Cream Cone ', 45, '3.33'),
(142, 1, 'McCafe Shamrock Shake ', 530, '4.50'),
(143, 1, 'McFlurry w/ M&M\'s Candies ', 650, '4.50'),
(144, 1, 'McFlurry w/ OREO Cookies ', 510, '5.00'),
(145, 1, 'Oatmeal Raisin Cookie ', 150, '3.50'),
(146, 1, 'Pumpkin and Creme Pie ', 270, '3.00'),
(147, 1, 'Strawberry & Creme Pie ', 310, '4.00'),
(148, 1, 'Strawberry McCafe Shake ', 550, '2.80'),
(149, 1, 'Strawberry Sundae ', 280, '5.00'),
(150, 1, 'Sweet Potato and Creme Pie ', 290, '2.00'),
(151, 1, 'Vanilla McCafe Shake ', 530, '5.00'),
(152, 1, 'Vanilla Reduced Fat Ice Cream Cone ', 170, '2.00'),
(153, 1, 'Coffee ', 0, '5.00'),
(154, 1, 'Frappe Caramel ', 450, '4.00'),
(155, 1, 'Frappe Chocolate Chip ', 530, '5.00'),
(156, 1, 'Hot Chocolate Nonfat', 310, '5.00'),
(157, 1, 'Hot Chocolate Regular', 380, '3.00'),
(158, 1, 'Iced Coffee Caramel', 190, '6.00'),
(159, 1, 'Iced Coffee French Vanilla', 190, '2.00'),
(160, 1, 'Iced Coffee Hazelnut', 190, '4.83'),
(161, 1, 'Iced Coffee Regular', 200, '5.00'),
(162, 1, 'Iced Coffee Sugar Free French Vanilla', 90, '5.67'),
(163, 1, 'Iced Mocha Caramel', 300, '4.00'),
(164, 1, 'Iced Mocha Nonfat', 270, '4.00'),
(165, 1, 'Iced Mocha Nonfat Caramel', 230, '3.33'),
(166, 1, 'Iced Mocha Regular', 310, '1.17'),
(167, 1, 'Latte Caramel', 280, '6.00'),
(168, 1, 'Latte French Vanilla', 280, '1.60'),
(169, 1, 'Latte Hazelnut', 280, '1.75'),
(170, 1, 'Latte Regular', 180, '1.00'),
(171, 1, 'Latte Sugar Free French Vanilla', 160, '2.00'),
(172, 1, 'McCafe Caramel Hot Chocolate w/ Nonfat Milk ', 260, '1.00'),
(173, 1, 'Mocha Caramel', 290, '1.33'),
(174, 1, 'Mocha Frappe', 450, '3.20'),
(175, 1, 'Mocha Nonfat', 280, '1.75'),
(176, 1, 'Mocha Nonfat Caramel', 240, '1.00'),
(177, 1, 'Mocha Regular', 330, '4.00'),
(178, 1, 'Mocha White Chocolate', 320, '4.33'),
(179, 1, 'Nonfat Latte Caramel', 220, '2.00'),
(180, 1, 'Nonfat Latte French Vanilla', 220, '4.00'),
(181, 1, 'Nonfat Latte Hazelnut', 220, '4.00'),
(182, 1, 'Nonfat Latte Regular', 110, '0.69'),
(183, 1, 'Nonfat Latte Sugar Free French Vanilla', 90, '5.67'),
(184, 1, 'Oreo Frappe ', 540, '2.00'),
(185, 1, 'Shamrock Hot Chocolate Large', 280, '3.83'),
(186, 1, 'White Hot Chocolate ', 350, '2.00'),
(187, 1, 'Premium Asian Salad w/ Crispy Chicken', 410, '2.00'),
(188, 1, 'Premium Asian Salad w/ Grilled Chicken', 270, '1.00'),
(189, 1, 'Premium Asian Salad w/o Chicken', 140, '2.80'),
(190, 1, 'Premium Bacon Ranch Salad w/ Crispy Chicken', 390, '1.29'),
(191, 1, 'Premium Bacon Ranch Salad w/ Grilled Chicken', 230, '3.00'),
(192, 1, 'Premium Bacon Ranch Salad w/o Chicken', 140, '0.99'),
(193, 1, 'Premium Southwest Salad w/ Crispy Chicken', 450, '2.20'),
(194, 1, 'Premium Southwest Salad w/ Grilled Chicken', 290, '2.80'),
(195, 1, 'Premium Southwest Salad w/o Chicken', 140, '2.50'),
(196, 1, 'Mac Snack Wrap ', 330, '4.80'),
(197, 1, 'Ranch Snack Wrap w/ Crispy Chicken', 350, '4.00'),
(198, 1, 'Ranch Snack Wrap w/ Grilled Chicken', 270, '3.67'),
(199, 1, 'Apple Dippers ', 35, '0.49'),
(200, 1, 'Cuties ', 40, '3.00'),
(201, 1, 'French Fries Kids', 100, '1.00'),
(202, 1, 'French Fries Large', 500, '3.00'),
(203, 1, 'French Fries Medium', 380, '2.00'),
(204, 1, 'French Fries Small', 230, '0.74'),
(205, 1, 'Fruit \'n Yogurt Parfait ', 160, '5.17'),
(206, 1, 'Mozzarella Sticks ', 200, '2.50'),
(207, 1, 'Side Salad ', 20, '1.00'),
(208, 1, 'Strawberry Gogurt ', 50, '1.67'),
(209, 1, 'Yoplait Go-GURT Strawberry Banana Yogurt ', 50, '1.25'),
(210, 2, 'All Natural Lemonade, Small Cup ', 190, '5.50'),
(211, 2, 'Barq\'s Root Beer, Small Cup ', 180, '2.00'),
(212, 2, 'Brewed Sweetened Iced Tea ', 110, '3.60'),
(213, 2, 'Brewed Unsweetened Iced Tea ', 5, '1.67'),
(214, 2, 'Coca-Cola, Small Cup ', 200, '1.00'),
(215, 2, 'Coke Zero, Small Cup ', 0, '4.50'),
(216, 2, 'Diet Coke, Small Cup ', 0, '4.33'),
(217, 2, 'Dr Pepper, Small Cup ', 160, '4.67'),
(218, 2, 'Fanta Orange, Small Cup ', 180, '1.29'),
(219, 2, 'Hi-C Flashin\' Fruit Punch, Small Cup ', 170, '3.67'),
(220, 2, 'Juicy Juice Apple Juice ', 90, '2.00'),
(221, 2, 'Minute Maid Light Lemonade, Small Cup ', 5, '6.00'),
(222, 2, 'Nestle Pure Life Bottled Water ', 0, '3.00'),
(223, 2, 'Pibb Xtra, Small Cup ', 160, '4.40'),
(224, 2, 'Sprite, Small Cup ', 160, '5.00'),
(225, 2, 'Strawberry Iced Tea ', 50, '5.20'),
(226, 2, 'Strawberry Lemonade ', 200, '2.00'),
(227, 2, 'TruMoo Lowfat Chocolate Milk ', 140, '5.17'),
(228, 2, 'TruMoo Lowfat White Milk ', 100, '3.25'),
(229, 2, 'Artisan Egg Sandwich with All-Natural Sausage ', 500, '3.25'),
(230, 2, 'Artisan Egg Sandwich with Applewood Smoked Bacon ', 360, '2.00'),
(231, 2, 'Artisan Sandwich with Egg & Cheese ', 290, '1.00'),
(232, 2, 'Fresh-Baked Biscuit with All-Natural Sausage ', 570, '1.00'),
(233, 2, 'Fresh-Baked Biscuit with Applewood Smoked Bacon ', 410, '0.66'),
(234, 2, 'Fresh-Baked Biscuit with Egg & Cheese ', 360, '6.00'),
(235, 2, 'Honey Butter Chicken Biscuit ', 510, '1.00'),
(236, 2, 'Mornin\' Melt Panini with All-Natural Sausage ', 650, '1.00'),
(237, 2, 'Mornin\' Melt Panini with Egg & Cheese ', 450, '5.00'),
(238, 2, 'Mornin\' Melt Panini with Applewood Smoked Bacon ', 520, '2.00'),
(239, 2, 'Orange Juice, Small ', 130, '0.49'),
(240, 2, 'Sausage & Egg Burrito ', 270, '2.75'),
(241, 2, 'Sausage Biscuit ', 460, '2.00'),
(242, 2, 'Sausage Gravy & Biscuit ', 460, '2.00'),
(243, 2, 'Seasoned Homestyle Potatoes ', 230, '1.00'),
(244, 2, 'Steel-Cut Oatmeal with Apples and Caramel ', 200, '5.33'),
(245, 2, 'Steel-Cut Oatmeal with Cranberries and Pecans ', 330, '2.50'),
(246, 2, 'Steel-Cut Oatmeal with Summer Berries ', 180, '5.00'),
(247, 2, 'Steel-Cut Oatmeal, Plain ', 150, '1.17'),
(248, 2, 'Caramel Iced Coffee, Small ', 80, '1.29'),
(249, 2, 'English Breakfast Premium Hot Tea, Small ', 0, '2.00'),
(250, 2, 'Lemongrass Green Premium Hot Tea, Small ', 0, '4.33'),
(251, 2, 'Mocha Iced Coffee, Small ', 100, '4.00'),
(252, 2, 'Original Redhead Hot Coffee, Decaffeinated, Small ', 10, '4.00'),
(253, 2, 'Original Redhead Hot Coffee, Small ', 10, '1.00'),
(254, 2, 'Redhead Roasters Hot Coffee, Regular ', 0, '3.00'),
(255, 2, 'Skinny Vanilla Iced Coffee, Small ', 60, '5.00'),
(256, 2, 'Vanilla Iced Coffee, Small ', 90, '5.50'),
(257, 2, 'Barbecue Nugget Sauce ', 45, '0.89'),
(258, 2, 'Brown Sugar ', 40, '5.00'),
(259, 2, 'Buttery Best Spread ', 50, '2.50'),
(260, 2, 'Cheddar Cheese, Shredded ', 70, '1.50'),
(261, 2, 'Heartland Ranch Dipping Sauce ', 120, '1.17'),
(262, 2, 'Honey Mustard Nugget Sauce ', 80, '1.00'),
(263, 2, 'Hot Chili Seasoning Packet ', 5, '2.50'),
(264, 2, 'Hot Sauce ', 10, '5.80'),
(265, 2, 'Saltine Crackers ', 25, '1.83'),
(266, 2, 'Smoky BBQ Side Sauce ', 40, '3.00'),
(267, 2, 'Spicy BBQ Side Sauce ', 60, '4.75'),
(268, 2, 'Sweet & Sour Nugget Sauce ', 50, '3.00'),
(269, 2, 'Sweet BBQ Side Sauce ', 60, '1.00'),
(270, 2, 'Chicken Nuggets 10 Piece', 450, '4.00'),
(271, 2, 'Chicken Nuggets 4 Piece', 180, '5.50'),
(272, 2, 'Chicken Nuggets 6 Piece', 270, '0.49'),
(273, 2, 'Chicken Nuggets Kids\' Meal', 180, '3.33'),
(274, 2, 'Spicy Chicken Nuggets 10 Piece', 430, '1.00'),
(275, 2, 'Spicy Chicken Nuggets 4 Piece', 190, '2.50'),
(276, 2, 'Spicy Chicken Nuggets 6 Piece', 280, '2.00'),
(277, 2, 'Chocolate Chunk Cookie ', 390, '2.67'),
(278, 2, 'Double Chocolate Chip Cookie ', 350, '2.00'),
(279, 2, 'Espresso Chip Bar ', 290, '4.00'),
(280, 2, 'Oatmeal Bar ', 290, '1.75'),
(281, 2, 'Sugar Cookie ', 390, '3.83'),
(282, 2, 'Chocolate Frosty, Small ', 300, '1.09'),
(283, 2, 'Vanilla Frosty, Small ', 280, '2.00'),
(284, 2, 'Apple Balsamic Vinaigrette ', 80, '4.00'),
(285, 2, 'BBQ Ranch Dressing ', 100, '4.67'),
(286, 2, 'Classic Ranch ', 100, '2.00'),
(287, 2, 'Gourmet Croutons ', 80, '6.00'),
(288, 2, 'Honey Roasted Sunflower Seeds ', 45, '5.00'),
(289, 2, 'Italian Vinaigrette ', 70, '4.40'),
(290, 2, 'Lemon Garlic Caesar Dressing ', 110, '2.00'),
(291, 2, 'Light Classic Ranch ', 50, '2.33'),
(292, 2, 'Light Honey French Dressing ', 40, '3.50'),
(293, 2, 'Light Spicy Asian Chili Vinaigrette ', 45, '5.00'),
(294, 2, 'Pomegranate Vinaigrette Dressing ', 60, '1.32'),
(295, 2, 'Roasted Pecans ', 110, '4.80'),
(296, 2, 'Spicy Roasted Cashews ', 80, '6.00'),
(297, 2, 'Thousand Island ', 160, '4.00'),
(298, 2, 'Apple Pecan Chicken Salad Full', 340, '3.00'),
(299, 2, 'Apple Pecan Chicken Salad Half', 180, '3.00'),
(300, 2, 'Asian Cashew Chicken Salad Half', 110, '4.00'),
(301, 2, 'Asian Cashew Chicken Salad Whole', 210, '2.20'),
(302, 2, 'BBQ Ranch Chicken Salad Half', 210, '3.00'),
(303, 2, 'BBQ Ranch Chicken Salad Whole', 390, '3.50'),
(304, 2, 'Power Mediterranean Chicken Salad Half', 230, '4.00'),
(305, 2, 'Power Mediterranean Chicken Salad Whole', 430, '5.50'),
(306, 2, 'Spicy Chicken Caesar Salad Half', 250, '4.00'),
(307, 2, 'Spicy Chicken Caesar Salad Whole', 470, '1.00'),
(308, 2, 'Summer Berry Chicken Salad Full', 380, '3.00'),
(309, 2, 'Summer Berry Chicken Salad Half', 210, '3.67'),
(310, 2, 'Taco Salad Full Size', 660, '3.00'),
(311, 2, 'Taco Salad Half Size', 470, '1.33'),
(312, 2, 'Asiago Ranch Club w/ Homestyle Chicken', 690, '2.00'),
(313, 2, 'Asiago Ranch Club w/SpicyChicken', 710, '3.25'),
(314, 2, 'Asiago Ranch Club w/Ultimate Chicken Grill', 570, '2.00'),
(315, 2, 'Baconator Single ', 660, '2.00'),
(316, 2, 'Cheeseburger, Kids\' Meal ', 290, '4.00'),
(317, 2, 'Chicken Go Wrap w/ Grilled Chicken', 260, '5.50'),
(318, 2, 'Chicken Go Wrap w/ Homestyle Chicken', 320, '2.00'),
(319, 2, 'Chicken Go Wrap w/ Spicy Chicken', 340, '3.00'),
(320, 2, 'Crispy Chicken BLT ', 440, '3.00'),
(321, 2, 'Crispy Chicken Sandwich ', 380, '5.00'),
(322, 2, 'Dave\'s Double Cheeseburger ', 800, '1.83'),
(323, 2, 'Dave\'s Single Cheeseburger ', 580, '5.00'),
(324, 2, 'Dave\'s Triple Cheeseburger ', 1060, '0.74'),
(325, 2, 'Double Stack ', 400, '3.60'),
(326, 2, 'Grilled Chicken Sandwich ', 360, '2.00'),
(327, 2, 'Hamburger, Kids\' Meal ', 250, '5.00'),
(328, 2, 'Homestyle Chicken Fillet Sandwich ', 510, '3.00'),
(329, 2, 'Jalapeno Fresco Spicy Chicken Sandwich ', 590, '5.00'),
(330, 2, 'Jr. Bacon Cheeseburger (JBC) ', 380, '5.25'),
(331, 2, 'Jr. Cheeseburger ', 290, '4.00'),
(332, 2, 'Jr. Cheeseburger Deluxe ', 350, '5.00'),
(333, 2, 'Jr. Hamburger ', 250, '2.33'),
(334, 2, 'Kids Grilled Chicken Wrap ', 260, '4.33'),
(335, 2, 'Premium Cod Sandwich ', 480, '4.50'),
(336, 2, 'Son of Baconator ', 700, '1.50'),
(337, 2, 'Spicy Chicken Fillet Sandwich ', 530, '5.00'),
(338, 2, 'Spicy Sriracha Chicken Sandwich ', 670, '4.00'),
(339, 2, 'Ultimate Chicken Grill Sandwich ', 390, '3.20'),
(340, 2, 'Apple Slices ', 40, '4.33'),
(341, 2, 'Bacon & Cheese Baked Potato ', 540, '2.00'),
(342, 2, 'Bacon Sriracha Fries ', 600, '5.00'),
(343, 2, 'Broccoli & Cheese Baked Potato ', 440, '5.00'),
(344, 2, 'Caesar Side Salad ', 60, '2.80'),
(345, 2, 'Chili Large', 310, '1.00'),
(346, 2, 'Chili Small', 210, '4.00'),
(347, 2, 'Garden Side Salad ', 25, '3.00'),
(348, 2, 'Ghost Pepper Fries ', 520, '5.00'),
(349, 2, 'Ketchup Packet ', 10, '3.33'),
(350, 2, 'Natural-Cut Fries Large', 530, '0.74'),
(351, 2, 'Natural-Cut Fries Medium', 420, '6.00'),
(352, 2, 'Natural-Cut Fries Small', 320, '1.67'),
(353, 2, 'Natural-Cut Fries Value', 230, '2.00'),
(354, 2, 'Plain Baked Potato ', 270, '3.67'),
(355, 2, 'Sour Cream & Chives Baked Potato ', 320, '1.60'),
(356, 3, '1% Low Fat Chocolate Milk ', 160, '2.67'),
(357, 3, 'Barq\'s Root Beer ', 220, '4.83'),
(358, 3, 'Capri Sun 100% Apple Juice ', 80, '5.83'),
(359, 3, 'Cherry Coke ', 200, '6.00'),
(360, 3, 'Chocolate Milk Shake ', 690, '5.00'),
(361, 3, 'Coca Cola Classic ', 190, '1.29'),
(362, 3, 'Diet Coke ', 0, '3.50'),
(363, 3, 'Dr. Pepper ', 190, '2.00'),
(364, 3, 'Fanta Orange ', 210, '1.33'),
(365, 3, 'Fat Free Milk ', 90, '2.00'),
(366, 3, 'Frozen Coke ', 110, '1.00'),
(367, 3, 'Frozen SURGE Large', 120, '5.50'),
(368, 3, 'Frozen SURGE Medium', 100, '2.00'),
(369, 3, 'Frozen SURGE Small', 80, '2.00'),
(370, 3, 'Hi-C Fruit Punch ', 200, '5.83'),
(371, 3, 'Hot Chocolate ', 230, '6.00'),
(372, 3, 'Minute Maid Light Lemonade ', 10, '5.33'),
(373, 3, 'Minute Maid Orange Juice ', 140, '2.00'),
(374, 3, 'Peach Tea ', 100, '5.00'),
(375, 3, 'Sprite ', 190, '1.00'),
(376, 3, 'Strawberry Banana Smoothie ', 310, '3.00'),
(377, 3, 'Strawberry Milk Shake ', 610, '5.00'),
(378, 3, 'Sweet Tea ', 120, '2.00'),
(379, 3, 'Tropical Mango Smoothie ', 330, '4.33'),
(380, 3, 'Unsweetened Tea ', 0, '4.00'),
(381, 3, 'Vanilla Milk Shake ', 660, '3.33'),
(382, 3, 'Vault ', 210, '1.75'),
(383, 3, 'Bacon Cheddar Ranch Chicken Salad w/ crispy Chicken & Dressing', 720, '5.80'),
(384, 3, 'Bacon Cheddar Ranch Chicken Salad w/ grilled Chicken & Dressing', 590, '4.33'),
(385, 3, 'Chicken BLT Salad w/ Crispy Chicken', 690, '2.00'),
(386, 3, 'Chicken BLT Salad w/ Grilled Chicken', 550, '2.00'),
(387, 3, 'Chicken Caesar Salad w/ Crispy Chicken', 670, '4.00'),
(388, 3, 'Chicken Caesar Salad w/ Grilled Chicken', 530, '2.50'),
(389, 3, 'Chicken, Apple & Cranberry Salad w/ Crispy Chicken', 700, '4.60'),
(390, 3, 'Chicken, Apple & Cranberry Salad w/ Grilled Chicken', 560, '5.33'),
(391, 3, 'Garden Grilled Chicken Salad w/ Crispy Chicken, no dressing', 450, '2.00'),
(392, 3, 'Garden Grilled Chicken Salad w/ Grilled Chicken, no dressing', 320, '4.50'),
(393, 3, 'Side Caesar Salad with dressing ', 220, '6.00'),
(394, 3, 'Side Garden Salad and Avocado Ranch Dressing ', 230, '2.83'),
(395, 3, 'Bacon, Egg & Cheese Biscuit ', 470, '4.00'),
(396, 3, 'BK Breakfast Muffin Sandwich w/ Bacon, Egg, and Cheese ', 250, '1.25'),
(397, 3, 'BK Breakfast Muffin Sandwich w/ Egg and Cheese ', 220, '3.25'),
(398, 3, 'BK Breakfast Muffin Sandwich w/ Ham, Egg, and Cheese ', 250, '0.49'),
(399, 3, 'BK Breakfast Muffin Sandwich w/ Sausage and Cheese ', 330, '5.00'),
(400, 3, 'BK Breakfast Muffin Sandwich w/ Sausage, Egg, and Cheese ', 390, '2.67'),
(401, 3, 'Bk Ultimate Breakfast Platter ', 1450, '3.00'),
(402, 3, 'Cinnabon Roll ', 300, '6.00'),
(403, 3, 'Country Ham and Egg Biscuit ', 420, '3.00'),
(404, 3, 'CROISSAN\'WICH Bacon, Egg & Cheese ', 380, '2.80'),
(405, 3, 'CROISSAN\'WICH Egg & Cheese ', 320, '1.00'),
(406, 3, 'CROISSAN\'WICH Ham, Egg & Cheese ', 350, '5.00'),
(407, 3, 'CROISSAN\'WICH Sausage & Cheese ', 380, '4.00'),
(408, 3, 'CROISSAN\'WICH Sausage, Egg & Cheese ', 490, '3.67'),
(409, 3, 'DOUBLE CROISSAN\'WICH w/ Bacon, Egg, & Cheese ', 490, '0.82'),
(410, 3, 'DOUBLE CROISSAN\'WICH w/ Ham, Bacon, Egg, & Cheese ', 470, '1.60'),
(411, 3, 'DOUBLE CROISSAN\'WICH w/ Ham, Egg, & Cheese ', 390, '3.80'),
(412, 3, 'DOUBLE CROISSAN\'WICH w/ Ham, Sausage, Egg, & Cheese ', 570, '3.00'),
(413, 3, 'DOUBLE CROISSAN\'WICH w/ Sausage, Bacon, Egg, & Cheese ', 570, '2.00'),
(414, 3, 'DOUBLE CROISSAN\'WICH w/ Sausage, Egg, & Cheese ', 700, '5.00'),
(415, 3, 'Egg-normous Burrito ', 810, '3.83'),
(416, 3, 'French Toast Sticks 3 Piece', 230, '4.00'),
(417, 3, 'French Toast Sticks 5 Piece', 380, '1.16'),
(418, 3, 'Fully Loaded CROISSAN\'WICH', 570, '0.99'),
(419, 3, 'Ham, Egg, & Cheese Biscuit ', 420, '2.00'),
(420, 3, 'Hash Browns Large', 670, '5.00'),
(421, 3, 'Hash Browns Medium', 500, '4.00'),
(422, 3, 'Hash Browns Small', 250, '4.00'),
(423, 3, 'Kids Oatmeal ', 170, '2.33'),
(424, 3, 'King CROISSAN\'WICH', 700, '3.00'),
(425, 3, 'King CROISSAN\'WICH w/ Ham & Sausage ', 530, '5.00'),
(426, 3, 'King CROISSAN\'WICH w/ Sausage and Bacon ', 570, '0.99'),
(427, 3, 'Otis Spunkmeyer Cinnamon Roll ', 280, '2.17'),
(428, 3, 'Pancake Platter w/ Sausage & 1 oz Breakfast Syrup ', 670, '1.33'),
(429, 3, 'Pancakes (3) and 1 oz breakfast syrup ', 500, '1.50'),
(430, 3, 'Quaker Oatmeal Maple and Brown Sugar Flavor', 270, '5.00'),
(431, 3, 'Quaker Oatmeal Original', 140, '6.00'),
(432, 3, 'Sausage Biscuit ', 420, '4.75'),
(433, 3, 'Sausage Breakfast Burrito ', 290, '3.00'),
(434, 3, 'Sausage, Egg, & Cheese Biscuit ', 570, '5.00'),
(435, 3, 'Southwestern Breakfast Burrito ', 580, '1.00'),
(436, 3, 'A.1. Smoky Bacon TENDERCRISP Sandwich ', 790, '2.40'),
(437, 3, 'Bacon Cheddar TENDERCRISP Chicken Sandwich ', 740, '3.00'),
(438, 3, 'Big Fish Sandwich ', 530, '4.20'),
(439, 3, 'BK VEGGIE Burger ', 410, '2.00'),
(440, 3, 'Buffalo Chicken Fries ', 270, '1.75'),
(441, 3, 'Buffalo Chicken Strips 3 Piece', 380, '2.00'),
(442, 3, 'Buffalo Chicken Strips 5 Piece', 620, '6.00'),
(443, 3, 'Cheetos Chicken Fries ', 280, '0.69'),
(444, 3, 'Chicken Burger ', 480, '6.00'),
(445, 3, 'Chicken Fries ', 290, '5.80'),
(446, 3, 'Chicken Fries Rings ', 310, '5.17'),
(447, 3, 'Chicken Nuggets 20 Piece', 950, '3.40'),
(448, 3, 'Chicken Nuggets 4 Piece', 190, '5.00'),
(449, 3, 'Chicken Nuggets 6 Piece', 290, '1.40'),
(450, 3, 'Chicken Nuggets (10pc) ', 470, '4.60'),
(451, 3, 'Crispy Chicken Jr. ', 430, '6.00'),
(452, 3, 'Grilled Chili Cheese Dog ', 330, '1.00'),
(453, 3, 'Grilled Hot Dog ', 310, '2.00'),
(454, 3, 'Home-style Chicken Strips 2 Piece', 240, '1.00'),
(455, 3, 'Home-style Chicken Strips 3 Piece', 360, '1.33'),
(456, 3, 'Home-style Chicken Strips 5 Piece', 610, '1.00'),
(457, 3, 'Jalapeno Chicken Fries ', 300, '5.33'),
(458, 3, 'Original Chicken Sandwich ', 630, '3.00'),
(459, 3, 'Rodeo Crispy Chicken Sandwich ', 410, '5.00'),
(460, 3, 'Spicy Big Fish Sandwich ', 470, '2.40'),
(461, 3, 'Spicy Crispy Chicken Jr. ', 410, '1.16'),
(462, 3, 'TENDERCRISP Chicken Sandwich ', 750, '2.00'),
(463, 3, 'TENDERGRILL Chicken Sandwich ', 470, '1.24'),
(464, 3, 'YUMBO Hot Ham & Cheese Sandwich ', 490, '6.00'),
(465, 3, 'BK Caramel Frappe ', 510, '3.83'),
(466, 3, 'BK Mocha Frappe ', 510, '3.00'),
(467, 3, 'Iced Coffee Caramel', 170, '5.00'),
(468, 3, 'Iced Coffee Regular', 160, '6.00'),
(469, 3, 'Iced Coffee Vanilla', 180, '5.80'),
(470, 3, 'Latte Caramel', 320, '2.00'),
(471, 3, 'Latte Mocha', 210, '2.00'),
(472, 3, 'Latte Regular', 180, '1.00'),
(473, 3, 'Latte Vanilla', 320, '3.20'),
(474, 3, 'Nonfat Latte Caramel', 300, '3.00'),
(475, 3, 'Nonfat Latte Mocha', 160, '4.00'),
(476, 3, 'Nonfat Latte Regular', 150, '4.00'),
(477, 3, 'Nonfat Latte Vanilla', 300, '1.00'),
(478, 3, 'Seattle\'s Best Coffee - Decaf ', 0, '1.00'),
(479, 3, 'Seattle\'s Best Coffee - Regular ', 0, '2.33'),
(480, 3, 'Blue Raspberry ICEE ', 120, '6.00'),
(481, 3, 'Butter Sugar Cookie ', 160, '2.00'),
(482, 3, 'Caramel Ice Cream Sundae ', 280, '3.00'),
(483, 3, 'Carnival Cookie ', 160, '6.00'),
(484, 3, 'Chocolate Chip Cookies (2) ', 330, '4.00'),
(485, 3, 'Chocolate Fudge Ice Cream Sundae ', 280, '3.00'),
(486, 3, 'Dr Pepper Shake Large', 560, '1.50'),
(487, 3, 'Dr Pepper Shake Medium', 450, '1.67'),
(488, 3, 'Dr Pepper Shake Small', 330, '5.00'),
(489, 3, 'Dutch Apple Pie ', 320, '0.49'),
(490, 3, 'Ginger Spice Cookie ', 150, '4.33'),
(491, 3, 'HERSHEY\'S Ice Cream Sundae Pie ', 300, '4.00'),
(492, 3, 'Irish Mint Oreo Shake Large', 770, '4.80'),
(493, 3, 'Irish Mint Oreo Shake Medium', 610, '4.00'),
(494, 3, 'Irish Mint Oreo Shake Small', 430, '3.00'),
(495, 3, 'Oatmeal Raisin Cookies (2) ', 310, '1.75'),
(496, 3, 'Oreo Shake ', 570, '1.00'),
(497, 3, 'Red Velvet Oreo Shake Large', 800, '6.00'),
(498, 3, 'Red Velvet Oreo Shake Medium', 630, '3.00'),
(499, 3, 'Red Velvet Oreo Shake Small', 450, '4.20'),
(500, 3, 'Red, White & Blue Cookie ', 160, '3.33'),
(501, 3, 'Reese\'s Peanut Butter Cup Pie ', 310, '4.00'),
(502, 3, 'Snickers Pie ', 300, '2.00'),
(503, 3, 'Soft Serve Ice Cream Cone ', 160, '0.82'),
(504, 3, 'Soft Serve Ice Cream Cup ', 140, '1.60'),
(505, 3, 'Strawberry Ice Cream Sundae ', 190, '3.80'),
(506, 3, 'White Chocolate Macadamia Nut Cookies (2) ', 340, '3.00'),
(507, 3, 'A.1. Ultimate Bacon Cheeseburger ', 850, '2.00'),
(508, 3, 'Bacon Cheeseburger ', 330, '5.00'),
(509, 3, 'Bacon Cheeseburger Deluxe ', 290, '3.83'),
(510, 3, 'Bacon King ', 1040, '4.00'),
(511, 3, 'BBQ Bacon King ', 1100, '1.16'),
(512, 3, 'Big King ', 530, '0.99'),
(513, 3, 'Cheeseburger ', 300, '2.00'),
(514, 3, 'Double Bacon Cheeseburger ', 520, '5.00'),
(515, 3, 'Double Cheeseburger ', 450, '4.00'),
(516, 3, 'Double Hamburger ', 360, '4.00'),
(517, 3, 'Extra Long BBQ Cheeseburger ', 590, '2.33'),
(518, 3, 'Extra Long Buttery Cheeseburger ', 710, '3.00'),
(519, 3, 'Extra Long Cheeseburger ', 580, '5.00'),
(520, 3, 'Extra Long Philly Cheeseburger ', 520, '0.99'),
(521, 3, 'Hamburger ', 260, '2.17'),
(522, 3, 'King Jr. Cheeseburger ', 310, '1.33'),
(523, 3, 'Rodeo Burger ', 310, '1.50'),
(524, 3, 'American Cheese (slice) ', 45, '5.00'),
(525, 3, 'Barbecue Dipping Sauce (1 oz) ', 40, '6.00'),
(526, 3, 'Breakfast Syrup (1 oz) ', 120, '4.75'),
(527, 3, 'Buffalo Dipping Sauce (1 oz) ', 80, '3.00'),
(528, 3, 'Dried Fruit Topping ', 90, '5.00'),
(529, 3, 'Garlic Parmesan Croutons ', 60, '1.00'),
(530, 3, 'Honey Mustard Dipping Sauce (1 oz) ', 90, '2.40'),
(531, 3, 'Ken\'s Apple Cider Vinaigrette ', 210, '3.00'),
(532, 3, 'Ken\'s Avocado Ranch Dressing ', 170, '4.20'),
(533, 3, 'Ken\'s Citrus Caesar Dressing ', 180, '2.00'),
(534, 3, 'KEN\'S Honey Mustard Dressing (2 oz) ', 270, '1.75'),
(535, 3, 'Ken\'s Lite Honey Balsamic ', 120, '2.00'),
(536, 3, 'Ketchup ', 10, '6.00'),
(537, 3, 'Mayonnaise ', 80, '0.69'),
(538, 3, 'Pickles (2) ', 0, '0.82'),
(539, 3, 'Ranch Dipping Sauce (1 oz) ', 140, '1.60'),
(540, 3, 'Strawberry or Grape Jam (packet) ', 30, '3.80'),
(541, 3, 'SunGlow Butter blend - 2 pats ', 70, '3.00'),
(542, 3, 'Thick cut bacon ', 70, '2.00'),
(543, 3, 'Zesty Onion Ring Dipping Sauce (1 oz) ', 150, '5.00'),
(544, 3, 'BK Fresh Apple Slices ', 25, '3.83'),
(545, 3, 'Cheesy Tots ', 310, '4.00'),
(546, 3, 'French Fries Large', 500, '1.16'),
(547, 3, 'French Fries Medium', 410, '0.99'),
(548, 3, 'French Fries Small', 340, '2.00'),
(549, 3, 'French Fries Value', 240, '5.00'),
(550, 3, 'Mac \'n Cheetos ', 310, '4.00'),
(551, 3, 'Motts\' Harvest Plus Applesauce ', 50, '4.00'),
(552, 3, 'Mozzarella Sticks (4 pc) ', 280, '2.33'),
(553, 3, 'Onion Rings Large', 500, '3.00'),
(554, 3, 'Onion Rings Medium', 410, '5.00'),
(555, 3, 'Onion Rings Small', 320, '0.99'),
(556, 3, 'Onion Rings Value', 150, '2.17'),
(557, 3, 'Satisfries French Fries Large', 410, '1.33'),
(558, 3, 'Satisfries French Fries Medium', 340, '1.50'),
(559, 3, 'Satisfries French Fries Small', 270, '5.00'),
(560, 3, 'Satisfries French Fries Value', 190, '6.00'),
(561, 3, 'Angriest WHOPPER ', 830, '4.75'),
(562, 3, 'Bacon & Cheese Whopper ', 770, '3.00'),
(563, 3, 'DOUBLE WHOPPER w/ Cheese', 990, '5.00'),
(564, 3, 'DOUBLE WHOPPER w/o Cheese', 900, '1.00'),
(565, 3, 'Spicy BLT WHOPPER ', 750, '2.40'),
(566, 3, 'TRIPLE WHOPPER w/ Cheese', 1230, '3.00'),
(567, 3, 'TRIPLE WHOPPER w/o Cheese', 1140, '4.20'),
(568, 3, 'WHOPPER w/ Cheese', 760, '2.00'),
(569, 3, 'WHOPPER w/o Cheese', 670, '1.75'),
(570, 3, 'WHOPPER JR. w/ Cheese', 380, '2.00'),
(571, 3, 'WHOPPER JR. w/o Cheese', 340, '6.00'),
(572, 3, 'Whopperito ', 570, '0.69'),
(573, 3, 'Caesar Chicken Wrap w/ Crispy Chicken', 460, '5.00'),
(574, 3, 'Caesar Chicken Wrap w/ Grilled Chicken', 370, '0.99'),
(575, 3, 'Chicken Apple and Cranberry Wrap w/ Crispy Chicken', 500, '2.17'),
(576, 3, 'Chicken Apple and Cranberry Wrap w/ Grilled Chicken', 410, '1.33'),
(577, 3, 'Chicken BLT Salad Wrap w/ Crispy Chicken', 490, '1.50'),
(578, 3, 'Chicken BLT Salad Wrap w/ Grilled Chicken', 400, '5.00'),
(579, 3, 'Honey Mustard Chicken Wrap w/ Crispy Chicken', 390, '6.00'),
(580, 3, 'Honey Mustard Chicken Wrap w/ Grilled Chicken', 370, '4.75'),
(581, 3, 'Ranch Chicken Wrap w/ Crispy Chicken', 370, '3.00'),
(582, 3, 'Ranch Chicken Wrap w/ Grilled Chicken', 350, '2.53');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(7) NOT NULL,
  `creditcardID` int(7) NOT NULL,
  `userID` int(7) NOT NULL,
  `cardNum` varchar(16) NOT NULL,
  `cardExp` varchar(50) NOT NULL,
  `cardCode` varchar(4) NOT NULL,
  `locationID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` int(7) NOT NULL,
  `restaurantName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `restaurantName`) VALUES
(1, 'McDonald\'s'),
(2, 'Wendy\'s'),
(3, 'Burger King');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(7) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `type`) VALUES
(1, 'Admin'),
(2, 'Basic'),
(3, 'Premium');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(7) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `userID` int(7) NOT NULL,
  `roleID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`userID`, `roleID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(2, 2),
(3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creditcard`
--
ALTER TABLE `creditcard`
  ADD PRIMARY KEY (`creditcardID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `restaurantID` (`restaurantID`),
  ADD KEY `restaurantID_2` (`restaurantID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `creditcardID` (`creditcardID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD KEY `userID` (`userID`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
