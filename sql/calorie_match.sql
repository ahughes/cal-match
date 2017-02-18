-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2017 at 06:38 AM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `calorie_match`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(7) NOT NULL,
  `itemID` int(7) NOT NULL,
  `userID` int(7) NOT NULL,
  `paymentID` int(7) NOT NULL,
  `restaurantID` int(7) NOT NULL,
  `locationID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `itemID`, `userID`, `paymentID`, `restaurantID`, `locationID`) VALUES
(1, 1, 1, 1, 1, 1);

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
  `name` varchar(200) NOT NULL,
  `calories` int(7) NOT NULL,
  `price` decimal(7,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemID`, `restaurantID`, `name`, `calories`, `price`) VALUES
(1, 1, '1% Low Fat Milk Jug ', 100, '0'),
(2, 1, 'Blueberry Pomegranate Smoothie ', 220, '0'),
(3, 1, 'Coca-Cola Classic ', 210, '0'),
(4, 1, 'Dasani? Water ', 0, '0'),
(5, 1, 'Diet Coke ', 0, '0'),
(6, 1, 'Diet Dr Pepper ', 0, '0'),
(7, 1, 'Dr Pepper ', 210, '0'),
(8, 1, 'Fat Free Chocolate Milk Jug ', 130, '0'),
(9, 1, 'Hi-C Orange Lavaburst ', 240, '0'),
(10, 1, 'Iced Tea ', 0, '0'),
(11, 1, 'Mango Pineapple Smoothie ', 220, '0'),
(12, 1, 'McCaf? Classic Lemonade ', 100, '0'),
(13, 1, 'McCaf? Frozen Classic Lemonade ', 160, '0'),
(14, 1, 'McCaf? Frozen Strawberry Lemonade ', 180, '0'),
(15, 1, 'McCaf? Strawberry Lemonade ', 120, '0'),
(16, 1, 'Minute Maid Apple Juice Box ', 100, '0'),
(17, 1, 'Minute Maid? Orange Juice ', 190, '0'),
(18, 1, 'POWERade Mountain Berry Blast ', 150, '0'),
(19, 1, 'Red Flash Extra Small', 110, '0'),
(20, 1, 'Red Flash Large', 300, '0'),
(21, 1, 'Red Flash Medium', 220, '0'),
(22, 1, 'Red Flash Small', 150, '0'),
(23, 1, 'Sprite ', 210, '0'),
(24, 1, 'Strawberry Banana Smoothie ', 210, '0'),
(25, 1, 'Sweet Tea ', 180, '0'),
(26, 1, 'Bacon, Egg & Cheese Bagel ', 560, '0'),
(27, 1, 'Bacon, Egg & Cheese Bagel w/ Egg Whites ', 510, '0'),
(28, 1, 'Bacon, Egg & Cheese Biscuit ', 420, '0'),
(29, 1, 'Bacon, Egg & Cheese Biscuit w/ Egg Whites ', 360, '0'),
(30, 1, 'Bacon, Egg & Cheese McGriddles ', 420, '0'),
(31, 1, 'Bacon, Egg & Cheese McGriddles w/ Egg Whites ', 360, '0'),
(32, 1, 'Big Breakfast w/ Egg Whites ', 640, '0'),
(33, 1, 'Big Breakfast w/ Hotcakes & Egg Whites ', 990, '0'),
(34, 1, 'Big Breakfast with Hotcakes ', 1090, '0'),
(35, 1, 'Big Breakfast? ', 740, '0'),
(36, 1, 'Cinnamon Melts ', 460, '0'),
(37, 1, 'Egg McMuffin ', 300, '0'),
(38, 1, 'Egg White Delight McMuffin ', 250, '0'),
(39, 1, 'Fruit & Maple Oatmeal w/ Brown Sugar', 290, '0'),
(40, 1, 'Fruit & Maple Oatmeal w/o Brown Sugar', 260, '0'),
(41, 1, 'Hash Brown ', 150, '0'),
(42, 1, 'Hotcakes ', 350, '0'),
(43, 1, 'Hotcakes and Sausage ', 520, '0'),
(44, 1, 'Sausage Biscuit ', 430, '0'),
(45, 1, 'Sausage Biscuit w/ Egg Whites ', 460, '0'),
(46, 1, 'Sausage Biscuit with Egg ', 510, '0'),
(47, 1, 'Sausage Burrito ', 300, '0'),
(48, 1, 'Sausage McGriddles? ', 420, '0'),
(49, 1, 'Sausage McMuffin w/ Egg Whites ', 400, '0'),
(50, 1, 'Sausage McMuffin? ', 370, '0'),
(51, 1, 'Sausage McMuffin? with Egg ', 450, '0'),
(52, 1, 'Sausage, Egg & Cheese McGriddles ', 560, '0'),
(53, 1, 'Sausage, Egg & Cheese McGriddles w/ Egg Whites ', 500, '0'),
(54, 1, 'Southern Style Chicken Biscuit ', 410, '0'),
(55, 1, 'Steak & Egg Biscuit ', 540, '0'),
(56, 1, 'Steak & Egg McMuffin ', 430, '0'),
(57, 1, 'Steak Egg & Cheese Bagel ', 680, '0'),
(58, 1, 'Turkey Sausage Breakfast Bowl ', 240, '0'),
(59, 1, 'Artisan Grilled Chicken Sandwich ', 360, '0'),
(60, 1, 'Bacon & Cheese Sirloin Third Pound Burger ', 810, '0'),
(61, 1, 'Bacon Buffalo Ranch McChicken ', 420, '0'),
(62, 1, 'Bacon Cheddar McChicken ', 480, '0'),
(63, 1, 'Bacon Clubhouse Burger ', 720, '0'),
(64, 1, 'Bacon Clubhouse Chicken Sandwich w/ Crispy Chicken', 750, '0'),
(65, 1, 'Bacon Clubhouse Chicken Sandwich w/ Grilled Chicken', 590, '0'),
(66, 1, 'Bacon McDouble ', 460, '0'),
(67, 1, 'BBQ Ranch Burger ', 350, '0'),
(68, 1, 'Big Mac ', 540, '0'),
(69, 1, 'Buffalo Ranch McChicken ', 350, '0'),
(70, 1, 'Cheeseburger ', 300, '0'),
(71, 1, 'Daily Double ', 440, '0'),
(72, 1, 'Double Cheeseburger ', 440, '0'),
(73, 1, 'Double Quarter Pounder? with Cheese ', 740, '0'),
(74, 1, 'Filet-O-Fish? ', 380, '0'),
(75, 1, 'Grand Mac ', 860, '0'),
(76, 1, 'Grilled Onion Cheddar Burger ', 310, '0'),
(77, 1, 'Hamburger ', 250, '0'),
(78, 1, 'Jalapeno Double ', 430, '0'),
(79, 1, 'Lettuce & Tomato Sirloin Third Pound Burger ', 750, '0'),
(80, 1, 'Mac Jr ', 460, '0'),
(81, 1, 'McChicken ', 360, '0'),
(82, 1, 'McDouble ', 390, '0'),
(83, 1, 'McRib ', 500, '0'),
(84, 1, 'Old Bay Filet-O-Fish ', 390, '0'),
(85, 1, 'Premium Buttermilk Crispy Chicken Deluxe Sandwich ', 580, '0'),
(86, 1, 'Premium Crispy Chicken Deluxe Sandwich ', 530, '0'),
(87, 1, 'Premium McWrap Chicken & Bacon w/ Crispy Chicken', 600, '0'),
(88, 1, 'Premium McWrap Chicken & Bacon w/ Grilled Chicken', 440, '0'),
(89, 1, 'Premium McWrap Chicken & Ranch w/ Crispy Chicken', 590, '0'),
(90, 1, 'Premium McWrap Chicken & Ranch w/ Grilled Chicken', 430, '0'),
(91, 1, 'Premium McWrap Chicken Sweet Chili w/ Crispy Chicken', 520, '0'),
(92, 1, 'Premium McWrap Chicken Sweet Chili w/ Grilled Chicken', 360, '0'),
(93, 1, 'Premium McWrap Southwest Chicken w/ Crispy Chicken', 680, '0'),
(94, 1, 'Premium McWrap Southwest Chicken w/ Grilled Chicken', 520, '0'),
(95, 1, 'Quarter Pounder Bacon & Cheese ', 600, '0'),
(96, 1, 'Quarter Pounder Deluxe ', 540, '0'),
(97, 1, 'Quarter Pounder? with Cheese ', 510, '0'),
(98, 1, 'Southern Style Crispy Chicken Sandwich ', 420, '0'),
(99, 1, 'Steakhouse Sirloin Third Pound Burger ', 730, '0'),
(100, 1, 'Chicken McNuggets 10 Piece', 470, '0'),
(101, 1, 'Chicken McNuggets 20 Piece', 940, '0'),
(102, 1, 'Chicken McNuggets 4 Piece', 190, '0'),
(103, 1, 'Chicken McNuggets 40 piece', 1880, '0'),
(104, 1, 'Chicken McNuggets 6 Piece', 280, '0'),
(105, 1, 'Chicken Selects Premium Breast Strips - 3 piece ', 380, '0'),
(106, 1, 'Chipotle Barbeque Sauce ', 50, '0'),
(107, 1, 'Coffee Cream ', 20, '0'),
(108, 1, 'Creamy Ranch Sauce ', 110, '0'),
(109, 1, 'EQUAL? 0 Calorie Sweetener ', 0, '0'),
(110, 1, 'Grape Jam ', 35, '0'),
(111, 1, 'Honey ', 50, '0'),
(112, 1, 'Honey Mustard Sauce ', 60, '0'),
(113, 1, 'Hot Habanero Sauce ', 80, '0'),
(114, 1, 'Hotcake Syrup ', 180, '0'),
(115, 1, 'Ketchup Packet ', 10, '0'),
(116, 1, 'Marinara Sauce ', 15, '0'),
(117, 1, 'Newman\'s Own? Creamy Southwest Dressing ', 100, '0'),
(118, 1, 'Newman\'s Own? Low Fat Balsamic Vinaigrette ', 35, '0'),
(119, 1, 'Newman\'s Own? Low Fat Italian Dressing ', 50, '0'),
(120, 1, 'Newman\'s Own? Low Fat Sesame Ginger Dressing ', 90, '0'),
(121, 1, 'Newman\'s Own? Ranch Dressing ', 170, '0'),
(122, 1, 'Peanuts for Sundaes ', 45, '0'),
(123, 1, 'Salt Packet ', 0, '0'),
(124, 1, 'Spicy Buffalo Sauce ', 35, '0'),
(125, 1, 'SPLENDA? No Calorie Sweetener ', 0, '0'),
(126, 1, 'Strawberry Preserves ', 35, '0'),
(127, 1, 'Sugar Packet ', 15, '0'),
(128, 1, 'Sweet \'N Sour Sauce ', 50, '0'),
(129, 1, 'Sweet Chili Sauce ', 50, '0'),
(130, 1, 'Tangy Barbeque Sauce ', 50, '0'),
(131, 1, 'Tartar Sauce Cup ', 140, '0'),
(132, 1, 'Whipped Margarine ', 40, '0'),
(133, 1, 'Baked Hot Apple Pie ', 250, '0'),
(134, 1, 'Chocolate Chip Cookie ', 160, '0'),
(135, 1, 'Chocolate McCaf? Shake ', 560, '0'),
(136, 1, 'Chocolate Shamrock Shake Large', 830, '0'),
(137, 1, 'Chocolate Shamrock Shake Small', 510, '0'),
(138, 1, 'Fried Cherry Pie ', 230, '0'),
(139, 1, 'Hot Caramel Sundae ', 340, '0'),
(140, 1, 'Hot Fudge Sundae ', 330, '0'),
(141, 1, 'Kiddie Ice Cream Cone ', 45, '0'),
(142, 1, 'McCafe Shamrock Shake ', 530, '0'),
(143, 1, 'McFlurry w/ M&M\'s Candies ', 650, '0'),
(144, 1, 'McFlurry w/ OREO Cookies ', 510, '0'),
(145, 1, 'Oatmeal Raisin Cookie ', 150, '0'),
(146, 1, 'Pumpkin and Creme Pie ', 270, '0'),
(147, 1, 'Strawberry & Creme Pie ', 310, '0'),
(148, 1, 'Strawberry McCaf? Shake ', 550, '0'),
(149, 1, 'Strawberry Sundae ', 280, '0'),
(150, 1, 'Sweet Potato and Creme Pie ', 290, '0'),
(151, 1, 'Vanilla McCaf? Shake ', 530, '0'),
(152, 1, 'Vanilla Reduced Fat Ice Cream Cone ', 170, '0'),
(153, 1, 'Coffee ', 0, '0'),
(154, 1, 'Frappe Caramel ', 450, '0'),
(155, 1, 'Frappe Chocolate Chip ', 530, '0'),
(156, 1, 'Hot Chocolate Nonfat', 310, '0'),
(157, 1, 'Hot Chocolate Regular', 380, '0'),
(158, 1, 'Iced Coffee Caramel', 190, '0'),
(159, 1, 'Iced Coffee French Vanilla', 190, '0'),
(160, 1, 'Iced Coffee Hazelnut', 190, '0'),
(161, 1, 'Iced Coffee Regular', 200, '0'),
(162, 1, 'Iced Coffee Sugar Free French Vanilla', 90, '0'),
(163, 1, 'Iced Mocha Caramel', 300, '0'),
(164, 1, 'Iced Mocha Nonfat', 270, '0'),
(165, 1, 'Iced Mocha Nonfat Caramel', 230, '0'),
(166, 1, 'Iced Mocha Regular', 310, '0'),
(167, 1, 'Latte Caramel', 280, '0'),
(168, 1, 'Latte French Vanilla', 280, '0'),
(169, 1, 'Latte Hazelnut', 280, '0'),
(170, 1, 'Latte Regular', 180, '0'),
(171, 1, 'Latte Sugar Free French Vanilla', 160, '0'),
(172, 1, 'McCaf? Caramel Hot Chocolate w/ Nonfat Milk ', 260, '0'),
(173, 1, 'Mocha Caramel', 290, '0'),
(174, 1, 'Mocha Frappe', 450, '0'),
(175, 1, 'Mocha Nonfat', 280, '0'),
(176, 1, 'Mocha Nonfat Caramel', 240, '0'),
(177, 1, 'Mocha Regular', 330, '0'),
(178, 1, 'Mocha White Chocolate', 320, '0'),
(179, 1, 'Nonfat Latte Caramel', 220, '0'),
(180, 1, 'Nonfat Latte French Vanilla', 220, '0'),
(181, 1, 'Nonfat Latte Hazelnut', 220, '0'),
(182, 1, 'Nonfat Latte Regular', 110, '0'),
(183, 1, 'Nonfat Latte Sugar Free French Vanilla', 90, '0'),
(184, 1, 'Oreo Frapp? ', 540, '0'),
(185, 1, 'Shamrock Hot Chocolate Large', 280, '0'),
(186, 1, 'White Hot Chocolate ', 350, '0'),
(187, 1, 'Premium Asian Salad w/ Crispy Chicken', 410, '0'),
(188, 1, 'Premium Asian Salad w/ Grilled Chicken', 270, '0'),
(189, 1, 'Premium Asian Salad w/o Chicken', 140, '0'),
(190, 1, 'Premium Bacon Ranch Salad w/ Crispy Chicken', 390, '0'),
(191, 1, 'Premium Bacon Ranch Salad w/ Grilled Chicken', 230, '0'),
(192, 1, 'Premium Bacon Ranch Salad w/o Chicken', 140, '0'),
(193, 1, 'Premium Southwest Salad w/ Crispy Chicken', 450, '0'),
(194, 1, 'Premium Southwest Salad w/ Grilled Chicken', 290, '0'),
(195, 1, 'Premium Southwest Salad w/o Chicken', 140, '0'),
(196, 1, 'Mac Snack Wrap ', 330, '0'),
(197, 1, 'Ranch Snack Wrap w/ Crispy Chicken', 350, '0'),
(198, 1, 'Ranch Snack Wrap w/ Grilled Chicken', 270, '0'),
(199, 1, 'Apple Dippers ', 35, '0'),
(200, 1, 'Cuties ', 40, '0'),
(201, 1, 'French Fries Kids', 100, '0'),
(202, 1, 'French Fries Large', 500, '0'),
(203, 1, 'French Fries Medium', 380, '0'),
(204, 1, 'French Fries Small', 230, '0'),
(205, 1, 'Fruit \'n Yogurt Parfait ', 160, '0'),
(206, 1, 'Mozzarella Sticks ', 200, '0'),
(207, 1, 'Side Salad ', 20, '0'),
(208, 1, 'Strawberry Gogurt ', 50, '0'),
(209, 1, 'Yoplait Go-GURT Strawberry Banana Yogurt ', 50, '0'),
(210, 2, 'All Natural Lemonade, Small Cup ', 190, '0'),
(211, 2, 'Barq\'s Root Beer, Small Cup ', 180, '0'),
(212, 2, 'Brewed Sweetened Iced Tea ', 110, '0'),
(213, 2, 'Brewed Unsweetened Iced Tea ', 5, '0'),
(214, 2, 'Coca-Cola, Small Cup ', 200, '0'),
(215, 2, 'Coke Zero?, Small Cup ', 0, '0'),
(216, 2, 'Diet Coke, Small Cup ', 0, '0'),
(217, 2, 'Dr Pepper, Small Cup ', 160, '0'),
(218, 2, 'Fanta Orange, Small Cup ', 180, '0'),
(219, 2, 'Hi-C Flashin\' Fruit Punch, Small Cup ', 170, '0'),
(220, 2, 'Juicy Juice Apple Juice ', 90, '0'),
(221, 2, 'Minute Maid Light Lemonade, Small Cup ', 5, '0'),
(222, 2, 'Nestl? Pure Life Bottled Water ', 0, '0'),
(223, 2, 'Pibb Xtra, Small Cup ', 160, '0'),
(224, 2, 'Sprite, Small Cup ', 160, '0'),
(225, 2, 'Strawberry Iced Tea ', 50, '0'),
(226, 2, 'Strawberry Lemonade ', 200, '0'),
(227, 2, 'TruMoo Lowfat Chocolate Milk ', 140, '0'),
(228, 2, 'TruMoo Lowfat White Milk ', 100, '0'),
(229, 2, 'Artisan Egg Sandwich with All-Natural Sausage ', 500, '0'),
(230, 2, 'Artisan Egg Sandwich with Applewood Smoked Bacon ', 360, '0'),
(231, 2, 'Artisan Sandwich with Egg & Cheese ', 290, '0'),
(232, 2, 'Fresh-Baked Biscuit with All-Natural Sausage ', 570, '0'),
(233, 2, 'Fresh-Baked Biscuit with Applewood Smoked Bacon ', 410, '0'),
(234, 2, 'Fresh-Baked Biscuit with Egg & Cheese ', 360, '0'),
(235, 2, 'Honey Butter Chicken Biscuit ', 510, '0'),
(236, 2, 'Mornin\' Melt Panini with All-Natural Sausage ', 650, '0'),
(237, 2, 'Mornin\' Melt Panini with Egg & Cheese ', 450, '0'),
(238, 2, 'Mornin\' Melt? Panini with Applewood Smoked Bacon ', 520, '0'),
(239, 2, 'Orange Juice, Small ', 130, '0'),
(240, 2, 'Sausage & Egg Burrito ', 270, '0'),
(241, 2, 'Sausage Biscuit ', 460, '0'),
(242, 2, 'Sausage Gravy & Biscuit ', 460, '0'),
(243, 2, 'Seasoned Homestyle Potatoes ', 230, '0'),
(244, 2, 'Steel-Cut Oatmeal with Apples and Caramel ', 200, '0'),
(245, 2, 'Steel-Cut Oatmeal with Cranberries and Pecans ', 330, '0'),
(246, 2, 'Steel-Cut Oatmeal with Summer Berries ', 180, '0'),
(247, 2, 'Steel-Cut Oatmeal, Plain ', 150, '0'),
(248, 2, 'Caramel Iced Coffee, Small ', 80, '0'),
(249, 2, 'English Breakfast Premium Hot Tea, Small ', 0, '0'),
(250, 2, 'Lemongrass Green Premium Hot Tea, Small ', 0, '0'),
(251, 2, 'Mocha Iced Coffee, Small ', 100, '0'),
(252, 2, 'Original Redhead Hot Coffee, Decaffeinated, Small ', 10, '0'),
(253, 2, 'Original Redhead Hot Coffee, Small ', 10, '0'),
(254, 2, 'Redhead Roasters?Hot Coffee, Regular ', 0, '0'),
(255, 2, 'Skinny Vanilla Iced Coffee, Small ', 60, '0'),
(256, 2, 'Vanilla Iced Coffee, Small ', 90, '0'),
(257, 2, 'Barbecue Nugget Sauce ', 45, '0'),
(258, 2, 'Brown Sugar ', 40, '0'),
(259, 2, 'Buttery Best Spread ', 50, '0'),
(260, 2, 'Cheddar Cheese, Shredded ', 70, '0'),
(261, 2, 'Heartland Ranch Dipping Sauce ', 120, '0'),
(262, 2, 'Honey Mustard Nugget Sauce ', 80, '0'),
(263, 2, 'Hot Chili Seasoning Packet ', 5, '0'),
(264, 2, 'Hot Sauce ', 10, '0'),
(265, 2, 'Saltine Crackers ', 25, '0'),
(266, 2, 'Smoky BBQ Side Sauce ', 40, '0'),
(267, 2, 'Spicy BBQ Side Sauce ', 60, '0'),
(268, 2, 'Sweet & Sour Nugget Sauce ', 50, '0'),
(269, 2, 'Sweet BBQ Side Sauce ', 60, '0'),
(270, 2, 'Chicken Nuggets 10 Piece', 450, '0'),
(271, 2, 'Chicken Nuggets 4 Piece', 180, '0'),
(272, 2, 'Chicken Nuggets 6 Piece', 270, '0'),
(273, 2, 'Chicken Nuggets Kids\' Meal', 180, '0'),
(274, 2, 'Spicy Chicken Nuggets 10 Piece', 430, '0'),
(275, 2, 'Spicy Chicken Nuggets 4 Piece', 190, '0'),
(276, 2, 'Spicy Chicken Nuggets 6 Piece', 280, '0'),
(277, 2, 'Chocolate Chunk Cookie ', 390, '0'),
(278, 2, 'Double Chocolate Chip Cookie ', 350, '0'),
(279, 2, 'Espresso Chip Bar ', 290, '0'),
(280, 2, 'Oatmeal Bar ', 290, '0'),
(281, 2, 'Sugar Cookie ', 390, '0'),
(282, 2, 'Chocolate Frosty, Small ', 300, '0'),
(283, 2, 'Vanilla Frosty, Small ', 280, '0'),
(284, 2, 'Apple Balsamic Vinaigrette ', 80, '0'),
(285, 2, 'BBQ Ranch Dressing ', 100, '0'),
(286, 2, 'Classic Ranch ', 100, '0'),
(287, 2, 'Gourmet Croutons ', 80, '0'),
(288, 2, 'Honey Roasted Sunflower Seeds ', 45, '0'),
(289, 2, 'Italian Vinaigrette ', 70, '0'),
(290, 2, 'Lemon Garlic Caesar Dressing ', 110, '0'),
(291, 2, 'Light Classic Ranch ', 50, '0'),
(292, 2, 'Light Honey French Dressing ', 40, '0'),
(293, 2, 'Light Spicy Asian Chili Vinaigrette ', 45, '0'),
(294, 2, 'Pomegranate Vinaigrette Dressing ', 60, '0'),
(295, 2, 'Roasted Pecans ', 110, '0'),
(296, 2, 'Spicy Roasted Cashews ', 80, '0'),
(297, 2, 'Thousand Island ', 160, '0'),
(298, 2, 'Apple Pecan Chicken Salad Full', 340, '0'),
(299, 2, 'Apple Pecan Chicken Salad Half', 180, '0'),
(300, 2, 'Asian Cashew Chicken Salad Half', 110, '0'),
(301, 2, 'Asian Cashew Chicken Salad Whole', 210, '0'),
(302, 2, 'BBQ Ranch Chicken Salad Half', 210, '0'),
(303, 2, 'BBQ Ranch Chicken Salad Whole', 390, '0'),
(304, 2, 'Power Mediterranean Chicken Salad Half', 230, '0'),
(305, 2, 'Power Mediterranean Chicken Salad Whole', 430, '0'),
(306, 2, 'Spicy Chicken Caesar Salad Half', 250, '0'),
(307, 2, 'Spicy Chicken Caesar Salad Whole', 470, '0'),
(308, 2, 'Summer Berry Chicken Salad Full', 380, '0'),
(309, 2, 'Summer Berry Chicken Salad Half', 210, '0'),
(310, 2, 'Taco Salad Full Size', 660, '0'),
(311, 2, 'Taco Salad Half Size', 470, '0'),
(312, 2, 'Asiago Ranch Club w/ Homestyle Chicken', 690, '0'),
(313, 2, 'Asiago Ranch Club w/SpicyChicken', 710, '0'),
(314, 2, 'Asiago Ranch Club w/Ultimate Chicken Grill', 570, '0'),
(315, 2, 'Baconator Single ', 660, '0'),
(316, 2, 'Cheeseburger, Kids\' Meal ', 290, '0'),
(317, 2, 'Chicken Go Wrap w/ Grilled Chicken', 260, '0'),
(318, 2, 'Chicken Go Wrap w/ Homestyle Chicken', 320, '0'),
(319, 2, 'Chicken Go Wrap w/ Spicy Chicken', 340, '0'),
(320, 2, 'Crispy Chicken BLT ', 440, '0'),
(321, 2, 'Crispy Chicken Sandwich ', 380, '0'),
(322, 2, 'Dave\'s Double Cheeseburger ', 800, '0'),
(323, 2, 'Dave\'s Single Cheeseburger ', 580, '0'),
(324, 2, 'Dave\'s Triple Cheeseburger ', 1060, '0'),
(325, 2, 'Double Stack ', 400, '0'),
(326, 2, 'Grilled Chicken Sandwich ', 360, '0'),
(327, 2, 'Hamburger, Kids\' Meal ', 250, '0'),
(328, 2, 'Homestyle Chicken Fillet Sandwich ', 510, '0'),
(329, 2, 'Jalapeno Fresco Spicy Chicken Sandwich ', 590, '0'),
(330, 2, 'Jr. Bacon Cheeseburger (JBC) ', 380, '0'),
(331, 2, 'Jr. Cheeseburger ', 290, '0'),
(332, 2, 'Jr. Cheeseburger Deluxe ', 350, '0'),
(333, 2, 'Jr. Hamburger ', 250, '0'),
(334, 2, 'Kids Grilled Chicken Wrap ', 260, '0'),
(335, 2, 'Premium Cod Sandwich ', 480, '0'),
(336, 2, 'Son of Baconator ', 700, '0'),
(337, 2, 'Spicy Chicken Fillet Sandwich ', 530, '0'),
(338, 2, 'Spicy Sriracha Chicken Sandwich ', 670, '0'),
(339, 2, 'Ultimate Chicken Grill Sandwich ', 390, '0'),
(340, 2, 'Apple Slices ', 40, '0'),
(341, 2, 'Bacon & Cheese Baked Potato ', 540, '0'),
(342, 2, 'Bacon Sriracha Fries ', 600, '0'),
(343, 2, 'Broccoli & Cheese Baked Potato ', 440, '0'),
(344, 2, 'Caesar Side Salad ', 60, '0'),
(345, 2, 'Chili Large', 310, '0'),
(346, 2, 'Chili Small', 210, '0'),
(347, 2, 'Garden Side Salad ', 25, '0'),
(348, 2, 'Ghost Pepper Fries ', 520, '0'),
(349, 2, 'Ketchup Packet ', 10, '0'),
(350, 2, 'Natural-Cut Fries Large', 530, '0'),
(351, 2, 'Natural-Cut Fries Medium', 420, '0'),
(352, 2, 'Natural-Cut Fries Small', 320, '0'),
(353, 2, 'Natural-Cut Fries Value', 230, '0'),
(354, 2, 'Plain Baked Potato ', 270, '0'),
(355, 2, 'Sour Cream & Chives Baked Potato ', 320, '0'),
(356, 3, '1% Low Fat Chocolate Milk ', 160, '0'),
(357, 3, 'Barq\'s Root Beer ', 220, '0'),
(358, 3, 'Capri Sun? 100% Apple Juice ', 80, '0'),
(359, 3, 'Cherry Coke ', 200, '0'),
(360, 3, 'Chocolate Milk Shake ', 690, '0'),
(361, 3, 'Coca Cola Classic ', 190, '0'),
(362, 3, 'Diet Coke ', 0, '0'),
(363, 3, 'Dr. Pepper ', 190, '0'),
(364, 3, 'Fanta Orange ', 210, '0'),
(365, 3, 'Fat Free Milk ', 90, '0'),
(366, 3, 'Frozen Coke ', 110, '0'),
(367, 3, 'Frozen SURGE? Large', 120, '0'),
(368, 3, 'Frozen SURGE? Medium', 100, '0'),
(369, 3, 'Frozen SURGE? Small', 80, '0'),
(370, 3, 'Hi-C Fruit Punch ', 200, '0'),
(371, 3, 'Hot Chocolate ', 230, '0'),
(372, 3, 'Minute Maid Light Lemonade ', 10, '0'),
(373, 3, 'Minute Maid Orange Juice ', 140, '0'),
(374, 3, 'Peach Tea ', 100, '0'),
(375, 3, 'Sprite ', 190, '0'),
(376, 3, 'Strawberry Banana Smoothie ', 310, '0'),
(377, 3, 'Strawberry Milk Shake ', 610, '0'),
(378, 3, 'Sweet Tea ', 120, '0'),
(379, 3, 'Tropical Mango Smoothie ', 330, '0'),
(380, 3, 'Unsweetened Tea ', 0, '0'),
(381, 3, 'Vanilla Milk Shake ', 660, '0'),
(382, 3, 'Vault ', 210, '0'),
(383, 3, 'Bacon Cheddar Ranch Chicken Salad w/ crispy Chicken & Dressing', 720, '0'),
(384, 3, 'Bacon Cheddar Ranch Chicken Salad w/ grilled Chicken & Dressing', 590, '0'),
(385, 3, 'Chicken BLT Salad w/ Crispy Chicken', 690, '0'),
(386, 3, 'Chicken BLT Salad w/ Grilled Chicken', 550, '0'),
(387, 3, 'Chicken Caesar Salad w/ Crispy Chicken', 670, '0'),
(388, 3, 'Chicken Caesar Salad w/ Grilled Chicken', 530, '0'),
(389, 3, 'Chicken, Apple & Cranberry Salad w/ Crispy Chicken', 700, '0'),
(390, 3, 'Chicken, Apple & Cranberry Salad w/ Grilled Chicken', 560, '0'),
(391, 3, 'Garden Grilled Chicken Salad w/ Crispy Chicken, no dressing', 450, '0'),
(392, 3, 'Garden Grilled Chicken Salad w/ Grilled Chicken, no dressing', 320, '0'),
(393, 3, 'Side Caesar Salad with dressing ', 220, '0'),
(394, 3, 'Side Garden Salad and Avocado Ranch Dressing ', 230, '0'),
(395, 3, 'Bacon, Egg & Cheese Biscuit ', 470, '0'),
(396, 3, 'BK Breakfast Muffin Sandwich w/ Bacon, Egg, and Cheese ', 250, '0'),
(397, 3, 'BK Breakfast Muffin Sandwich w/ Egg and Cheese ', 220, '0'),
(398, 3, 'BK Breakfast Muffin Sandwich w/ Ham, Egg, and Cheese ', 250, '0'),
(399, 3, 'BK Breakfast Muffin Sandwich w/ Sausage and Cheese ', 330, '0'),
(400, 3, 'BK Breakfast Muffin Sandwich w/ Sausage, Egg, and Cheese ', 390, '0'),
(401, 3, 'Bk Ultimate Breakfast Platter ', 1450, '0'),
(402, 3, 'Cinnabon Roll ', 300, '0'),
(403, 3, 'Country Ham and Egg Biscuit ', 420, '0'),
(404, 3, 'CROISSAN\'WICH Bacon, Egg & Cheese ', 380, '0'),
(405, 3, 'CROISSAN\'WICH Egg & Cheese ', 320, '0'),
(406, 3, 'CROISSAN\'WICH Ham, Egg & Cheese ', 350, '0'),
(407, 3, 'CROISSAN\'WICH Sausage & Cheese ', 380, '0'),
(408, 3, 'CROISSAN\'WICH Sausage, Egg & Cheese ', 490, '0'),
(409, 3, 'DOUBLE CROISSAN\'WICH w/ Bacon, Egg, & Cheese ', 490, '0'),
(410, 3, 'DOUBLE CROISSAN\'WICH w/ Ham, Bacon, Egg, & Cheese ', 470, '0'),
(411, 3, 'DOUBLE CROISSAN\'WICH w/ Ham, Egg, & Cheese ', 390, '0'),
(412, 3, 'DOUBLE CROISSAN\'WICH w/ Ham, Sausage, Egg, & Cheese ', 570, '0'),
(413, 3, 'DOUBLE CROISSAN\'WICH w/ Sausage, Bacon, Egg, & Cheese ', 570, '0'),
(414, 3, 'DOUBLE CROISSAN\'WICH w/ Sausage, Egg, & Cheese ', 700, '0'),
(415, 3, 'Egg-normous Burrito ', 810, '0'),
(416, 3, 'French Toast Sticks 3 Piece', 230, '0'),
(417, 3, 'French Toast Sticks 5 Piece', 380, '0'),
(418, 3, 'Fully Loaded CROISSAN\'WICH? ', 570, '0'),
(419, 3, 'Ham, Egg, & Cheese Biscuit ', 420, '0'),
(420, 3, 'Hash Browns Large', 670, '0'),
(421, 3, 'Hash Browns Medium', 500, '0'),
(422, 3, 'Hash Browns Small', 250, '0'),
(423, 3, 'Kids Oatmeal ', 170, '0'),
(424, 3, 'King CROISSAN\'WICH? ', 700, '0'),
(425, 3, 'King CROISSAN\'WICH? w/ Ham & Sausage ', 530, '0'),
(426, 3, 'King CROISSAN\'WICH? w/ Sausage and Bacon ', 570, '0'),
(427, 3, 'Otis Spunkmeyer? Cinnamon Roll ', 280, '0'),
(428, 3, 'Pancake Platter w/ Sausage & 1 oz Breakfast Syrup ', 670, '0'),
(429, 3, 'Pancakes (3) and 1 oz breakfast syrup ', 500, '0'),
(430, 3, 'Quaker Oatmeal Maple and Brown Sugar Flavor', 270, '0'),
(431, 3, 'Quaker Oatmeal Original', 140, '0'),
(432, 3, 'Sausage Biscuit ', 420, '0'),
(433, 3, 'Sausage Breakfast Burrito ', 290, '0'),
(434, 3, 'Sausage, Egg, & Cheese Biscuit ', 570, '0'),
(435, 3, 'Southwestern Breakfast Burrito ', 580, '0'),
(436, 3, 'A.1.? Smoky Bacon TENDERCRISP? Sandwich ', 790, '0'),
(437, 3, 'Bacon Cheddar TENDERCRISP? Chicken Sandwich ', 740, '0'),
(438, 3, 'Big Fish Sandwich ', 530, '0'),
(439, 3, 'BK VEGGIE Burger ', 410, '0'),
(440, 3, 'Buffalo Chicken Fries ', 270, '0'),
(441, 3, 'Buffalo Chicken Strips 3 Piece', 380, '0'),
(442, 3, 'Buffalo Chicken Strips 5 Piece', 620, '0'),
(443, 3, 'Cheetos Chicken Fries ', 280, '0'),
(444, 3, 'Chicken Burger ', 480, '0'),
(445, 3, 'Chicken Fries ', 290, '0'),
(446, 3, 'Chicken Fries Rings ', 310, '0'),
(447, 3, 'Chicken Nuggets 20 Piece', 950, '0'),
(448, 3, 'Chicken Nuggets 4 Piece', 190, '0'),
(449, 3, 'Chicken Nuggets 6 Piece', 290, '0'),
(450, 3, 'Chicken Nuggets (10pc) ', 470, '0'),
(451, 3, 'Crispy Chicken Jr. ', 430, '0'),
(452, 3, 'Grilled Chili Cheese Dog ', 330, '0'),
(453, 3, 'Grilled Hot Dog ', 310, '0'),
(454, 3, 'Home-style Chicken Strips 2 Piece', 240, '0'),
(455, 3, 'Home-style Chicken Strips 3 Piece', 360, '0'),
(456, 3, 'Home-style Chicken Strips 5 Piece', 610, '0'),
(457, 3, 'Jalapeno Chicken Fries ', 300, '0'),
(458, 3, 'Original Chicken Sandwich ', 630, '0'),
(459, 3, 'Rodeo Crispy Chicken Sandwich ', 410, '0'),
(460, 3, 'Spicy Big Fish Sandwich ', 470, '0'),
(461, 3, 'Spicy Crispy Chicken Jr. ', 410, '0'),
(462, 3, 'TENDERCRISP Chicken Sandwich ', 750, '0'),
(463, 3, 'TENDERGRILL Chicken Sandwich ', 470, '0'),
(464, 3, 'YUMBO? Hot Ham & Cheese Sandwich ', 490, '0'),
(465, 3, 'BK Caramel Frappe ', 510, '0'),
(466, 3, 'BK Mocha Frappe ', 510, '0'),
(467, 3, 'Iced Coffee Caramel', 170, '0'),
(468, 3, 'Iced Coffee Regular', 160, '0'),
(469, 3, 'Iced Coffee Vanilla', 180, '0'),
(470, 3, 'Latte Caramel', 320, '0'),
(471, 3, 'Latte Mocha', 210, '0'),
(472, 3, 'Latte Regular', 180, '0'),
(473, 3, 'Latte Vanilla', 320, '0'),
(474, 3, 'Nonfat Latte Caramel', 300, '0'),
(475, 3, 'Nonfat Latte Mocha', 160, '0'),
(476, 3, 'Nonfat Latte Regular', 150, '0'),
(477, 3, 'Nonfat Latte Vanilla', 300, '0'),
(478, 3, 'Seattle\'s Best Coffee? - Decaf ', 0, '0'),
(479, 3, 'Seattle\'s Best Coffee? - Regular ', 0, '0'),
(480, 3, 'Blue Raspberry ICEE ', 120, '0'),
(481, 3, 'Butter Sugar Cookie ', 160, '0'),
(482, 3, 'Caramel Ice Cream Sundae ', 280, '0'),
(483, 3, 'Carnival Cookie ', 160, '0'),
(484, 3, 'Chocolate Chip Cookies (2) ', 330, '0'),
(485, 3, 'Chocolate Fudge Ice Cream Sundae ', 280, '0'),
(486, 3, 'Dr Pepper? Shake Large', 560, '0'),
(487, 3, 'Dr Pepper? Shake Medium', 450, '0'),
(488, 3, 'Dr Pepper? Shake Small', 330, '0'),
(489, 3, 'Dutch Apple Pie ', 320, '0'),
(490, 3, 'Ginger Spice Cookie ', 150, '0'),
(491, 3, 'HERSHEY\'S Ice Cream Sundae Pie ', 300, '0'),
(492, 3, 'Irish Mint Oreo? Shake Large', 770, '0'),
(493, 3, 'Irish Mint Oreo? Shake Medium', 610, '0'),
(494, 3, 'Irish Mint Oreo? Shake Small', 430, '0'),
(495, 3, 'Oatmeal Raisin Cookies (2) ', 310, '0'),
(496, 3, 'Oreo Shake ', 570, '0'),
(497, 3, 'Red Velvet Oreo? Shake Large', 800, '0'),
(498, 3, 'Red Velvet Oreo? Shake Medium', 630, '0'),
(499, 3, 'Red Velvet Oreo? Shake Small', 450, '0'),
(500, 3, 'Red, White & Blue Cookie ', 160, '0'),
(501, 3, 'Reese\'s Peanut Butter Cup Pie ', 310, '0'),
(502, 3, 'Snickers Pie ', 300, '0'),
(503, 3, 'Soft Serve Ice Cream Cone ', 160, '0'),
(504, 3, 'Soft Serve Ice Cream Cup ', 140, '0'),
(505, 3, 'Strawberry Ice Cream Sundae ', 190, '0'),
(506, 3, 'White Chocolate Macadamia Nut Cookies (2) ', 340, '0'),
(507, 3, 'A.1.? Ultimate Bacon Cheeseburger ', 850, '0'),
(508, 3, 'Bacon Cheeseburger ', 330, '0'),
(509, 3, 'Bacon Cheeseburger Deluxe ', 290, '0'),
(510, 3, 'Bacon King ', 1040, '0'),
(511, 3, 'BBQ Bacon King ', 1100, '0'),
(512, 3, 'Big King ', 530, '0'),
(513, 3, 'Cheeseburger ', 300, '0'),
(514, 3, 'Double Bacon Cheeseburger ', 520, '0'),
(515, 3, 'Double Cheeseburger ', 450, '0'),
(516, 3, 'Double Hamburger ', 360, '0'),
(517, 3, 'Extra Long BBQ Cheeseburger ', 590, '0'),
(518, 3, 'Extra Long Buttery Cheeseburger ', 710, '0'),
(519, 3, 'Extra Long Cheeseburger ', 580, '0'),
(520, 3, 'Extra Long Philly Cheeseburger ', 520, '0'),
(521, 3, 'Hamburger ', 260, '0'),
(522, 3, 'King Jr. Cheeseburger ', 310, '0'),
(523, 3, 'Rodeo Burger ', 310, '0'),
(524, 3, 'American Cheese (slice) ', 45, '0'),
(525, 3, 'Barbecue Dipping Sauce (1 oz) ', 40, '0'),
(526, 3, 'Breakfast Syrup (1 oz) ', 120, '0'),
(527, 3, 'Buffalo Dipping Sauce (1 oz) ', 80, '0'),
(528, 3, 'Dried Fruit Topping ', 90, '0'),
(529, 3, 'Garlic Parmesan Croutons ', 60, '0'),
(530, 3, 'Honey Mustard Dipping Sauce (1 oz) ', 90, '0'),
(531, 3, 'Ken\'s Apple Cider Vinaigrette ', 210, '0'),
(532, 3, 'Ken\'s Avocado Ranch Dressing ', 170, '0'),
(533, 3, 'Ken\'s Citrus Caesar Dressing ', 180, '0'),
(534, 3, 'KEN\'S Honey Mustard Dressing (2 oz) ', 270, '0'),
(535, 3, 'Ken\'s Lite Honey Balsamic ', 120, '0'),
(536, 3, 'Ketchup ', 10, '0'),
(537, 3, 'Mayonnaise ', 80, '0'),
(538, 3, 'Pickles (2) ', 0, '0'),
(539, 3, 'Ranch Dipping Sauce (1 oz) ', 140, '0'),
(540, 3, 'Strawberry or Grape Jam (packet) ', 30, '0'),
(541, 3, 'SunGlow Butter blend - 2 pats ', 70, '0'),
(542, 3, 'Thick cut bacon ', 70, '0'),
(543, 3, 'Zesty Onion Ring Dipping Sauce (1 oz) ', 150, '0'),
(544, 3, 'BK Fresh Apple Slices ', 25, '0'),
(545, 3, 'Cheesy Tots ', 310, '0'),
(546, 3, 'French Fries Large', 500, '0'),
(547, 3, 'French Fries Medium', 410, '0'),
(548, 3, 'French Fries Small', 340, '0'),
(549, 3, 'French Fries Value', 240, '0'),
(550, 3, 'Mac \'n Cheetos ', 310, '0'),
(551, 3, 'Motts\' Harvest Plus Applesauce ', 50, '0'),
(552, 3, 'Mozzarella Sticks (4 pc) ', 280, '0'),
(553, 3, 'Onion Rings Large', 500, '0'),
(554, 3, 'Onion Rings Medium', 410, '0'),
(555, 3, 'Onion Rings Small', 320, '0'),
(556, 3, 'Onion Rings Value', 150, '0'),
(557, 3, 'Satisfries French Fries Large', 410, '0'),
(558, 3, 'Satisfries French Fries Medium', 340, '0'),
(559, 3, 'Satisfries French Fries Small', 270, '0'),
(560, 3, 'Satisfries French Fries Value', 190, '0'),
(561, 3, 'Angriest WHOPPER? ', 830, '0'),
(562, 3, 'Bacon & Cheese Whopper ', 770, '0'),
(563, 3, 'DOUBLE WHOPPER w/ Cheese', 990, '0'),
(564, 3, 'DOUBLE WHOPPER w/o Cheese', 900, '0'),
(565, 3, 'Spicy BLT WHOPPER? ', 750, '0'),
(566, 3, 'TRIPLE WHOPPER w/ Cheese', 1230, '0'),
(567, 3, 'TRIPLE WHOPPER w/o Cheese', 1140, '0'),
(568, 3, 'WHOPPER w/ Cheese', 760, '0'),
(569, 3, 'WHOPPER w/o Cheese', 670, '0'),
(570, 3, 'WHOPPER JR. w/ Cheese', 380, '0'),
(571, 3, 'WHOPPER JR. w/o Cheese', 340, '0'),
(572, 3, 'Whopperito ', 570, '0'),
(573, 3, 'Caesar Chicken Wrap w/ Crispy Chicken', 460, '0'),
(574, 3, 'Caesar Chicken Wrap w/ Grilled Chicken', 370, '0'),
(575, 3, 'Chicken Apple and Cranberry Wrap w/ Crispy Chicken', 500, '0'),
(576, 3, 'Chicken Apple and Cranberry Wrap w/ Grilled Chicken', 410, '0'),
(577, 3, 'Chicken BLT Salad Wrap w/ Crispy Chicken', 490, '0'),
(578, 3, 'Chicken BLT Salad Wrap w/ Grilled Chicken', 400, '0'),
(579, 3, 'Honey Mustard Chicken Wrap w/ Crispy Chicken', 390, '0'),
(580, 3, 'Honey Mustard Chicken Wrap w/ Grilled Chicken', 370, '0'),
(581, 3, 'Ranch Chicken Wrap w/ Crispy Chicken', 370, '0'),
(582, 3, 'Ranch Chicken Wrap w/ Grilled Chicken', 350, '0');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationID` int(7) NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationID`, `zipcode`) VALUES
(1, '84120');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(7) NOT NULL,
  `creditcardID` int(7) NOT NULL,
  `userID` int(7) NOT NULL,
  `cardNum` varchar(16) NOT NULL,
  `cardExp` varchar(5) NOT NULL,
  `cardCode` varchar(4) NOT NULL,
  `locationID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `creditcardID`, `userID`, `cardNum`, `cardExp`, `cardCode`, `locationID`) VALUES
(1, 1, 1, '4891529075544322', '10/17', '243', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantID` int(7) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurantID`, `name`) VALUES
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
  `locationID` int(7) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `locationID`, `firstName`, `lastName`, `email`, `phone`) VALUES
(1, 1, 'Ala', 'Brown', 'alasii@hotmail.com', '8014289648');

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
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `restaurantID` (`restaurantID`),
  ADD KEY `locationID` (`locationID`);

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
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationID`);

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
  ADD PRIMARY KEY (`userID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD KEY `userID` (`userID`),
  ADD KEY `roleID` (`roleID`);
