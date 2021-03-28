-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 08:01 AM
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
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '2017-01-24 16:21:18', '28-01-2021 01:37:02 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Fast Food', 'Fast food is a type of mass-produced food designed for commercial resale and with a strong priority placed on \"speed of service\" versus other relevant factors involved in culinary science. ', '2021-02-02 18:55:31', '03-02-2021 12:27:35 AM'),
(4, 'Dinner', 'Dinner time redirects here. For other uses, see Dinner Time. Dinner usually refers to what is in many Western cultures the largest and most formal meal of the day, which some Westerners eat in the evening. Historically the largest meal used to be eaten around midday, and called dinner.', '2021-02-02 16:35:05', NULL),
(5, 'Drinks', 'A drink (or beverage) is a liquid intended for human consumption. In addition to their basic function of satisfying thirst, drinks play important roles in human culture. Common types of drinks include plain drinking water, milk, coffee, tea, hot chocolate, juice and soft drinks.', '2021-02-02 19:30:54', NULL),
(6, 'Breakfast', 'Breakfast is the meal usually eaten in the morning, but is the first meal of the day after waking up. The word in English refers to breaking the fasting period of the previous night.', '2021-02-02 17:36:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(15, 4, '41', 2, '2021-01-02 20:23:34', 'COD', 'Delivered'),
(16, 4, '48', 1, '2021-02-02 20:23:34', 'COD', 'Delivered'),
(17, 4, '48', 3, '2021-02-03 05:10:14', 'Debit / Credit card', 'Delivered'),
(18, 4, '42', 1, '2021-02-03 06:32:18', 'COD', 'Delivered'),
(81, 4, '44', 1, '2021-02-04 10:27:01', 'COD', 'Delivered'),
(82, 4, '45', 1, '2021-02-06 03:50:10', 'COD', NULL),
(83, 4, '41', 1, '2021-02-06 05:32:11', 'COD', 'Delivered'),
(84, 4, '41', 1, '2021-02-10 15:54:49', 'Internet Banking', NULL),
(85, 4, '42', 1, '2021-02-10 16:29:50', 'Debit / Credit card', NULL),
(86, 4, '42', 1, '2021-02-16 03:00:14', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 7, 'Delivered', 'done', '2021-01-16 12:53:12'),
(12, 16, 'in Process', 'process', '2021-02-02 20:28:23'),
(13, 17, 'Delivered', 'done', '2021-02-03 05:11:14'),
(14, 16, 'Delivered', 'done', '2021-02-03 06:31:59'),
(16, 27, 'Delivered', 'Order Has been delivered', '2021-02-03 16:09:22'),
(17, 18, 'Delivered', 'done', '2021-02-04 09:53:46'),
(19, 81, 'Delivered', 'done', '2021-02-04 10:27:38'),
(20, 83, 'Delivered', 'done', '2021-02-06 05:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(41, 4, 4, 'Chingri Malai Curry', 'Chingri Malai Curry', 120, 150, '<div><b>Size: 1 kg (20 pieces)</b></div><div><b>per person: 2 pieces</b></div>', 'Chingri Malai Curry-3.jpg', 'Chingri Malai Curry-2.jpg', 'Chingri Malai Curry-1.jpg', 10, 'In Stock', '2021-02-02 16:49:47', NULL),
(42, 4, 4, 'Morog Polao', 'Morog Polao', 140, 180, '1/4 of ~800gm roast chicken + 140gm Premium Chinigura rice per person + 01 boiled egg (fried)													', 'morog.jpeg', 'Morog Polao.jpg', 'MorogPolao-2.jpg', 10, 'In Stock', '2021-03-02 17:02:50', NULL),
(43, 4, 4, 'Beef Tehari', 'Beef Tehari', 170, 200, '<div>165gm beef / ~13 pieces of BONELESS beef&nbsp;</div><div>140gm Premium Chinigura rice per person</div>													', 'beef-teheri.jpg', 'Mutton-Tehari.jpg', 'beef-tehari-1-1.jpg', 10, 'In Stock', '2021-02-02 17:07:31', NULL),
(44, 4, 6, 'Mutton Kacchi Biryani', 'Kacchi Biryani', 200, 240, '<div>Basmati Mutton Kacchi Biryani</div><div>Traditional mutton kacchi cooked in aromatic rice</div>													', 'Kachchi Biryani-2.jpg', 'Kachchi Biryani-1.jpg', 'Kachchi Biryani-3.png', 10, 'In Stock', '2021-02-02 17:20:09', NULL),
(45, 4, 6, 'White Rice (Kataribhog)', 'White Rice (Kataribhog)', 25, 35, '<div>White Rice (Kataribhog)</div><div>~165 gm premium Kataribhog rice per person</div>													', 'HTC-White-Rice-Lead-4.jpg', 'Perfect-White-Rice-Recipe.jpg', 'white-rice-1.jpg', 0, 'In Stock', '2021-02-02 17:25:14', NULL),
(46, 4, 6, 'Shahi Polao (Basmati)', 'Shahi Polao (Basmati)', 80, 100, '<div>Shahi Polao (Basmati)</div><div>140 gm Premium Basmati rice per person</div>													', 'Shahi Polao-1 .jpg', 'Shahi Polao-2 .jpeg', 'Shahi Polao -3.jpg', 0, 'In Stock', '2021-02-02 17:31:41', NULL),
(47, 6, 83, 'Paratha (20 Pcs)', 'Paratha (20 Pcs)', 240, 280, '<span style=\"color: rgb(36, 36, 36); font-family: Rubik, sans-serif; font-size: 14px;\">Paratha (20 pcs) MRP Price: TK 250/per pack Ingredients: Wheat flour, Salt, Sugar, Baking Powder and one or more Vegetable Oil. Cooking Instructions: Take out the Delifrost Paratha from the freezer and fry both sides on a pan (170?C) for 2 to 2:30 minutes.</span>													', 'goods-food-breakfast.png', 'Lachha-paratha.jpg', 'Paratha-1.jpg', 10, 'In Stock', '2021-02-02 17:49:52', NULL),
(48, 6, 84, 'Plain Paratha – AG Food', 'Plain Paratha Convenient – AG Food', 160, 200, '<div>Plain Paratha Convenient – AG Food</div><div>20 Pic Price: 200 tk</div><div>10 Pic Price: 100 tk</div>													', 'family Paratha.png', 'convenant.png', 'plain-paratha-10pcs.jpg', 0, 'In Stock', '2021-02-02 18:25:33', NULL),
(49, 6, 85, 'Lachha Paratha', 'Lachha Paratha', 40, 50, 'Lachha Paratha													', 'laccha-paratha-3.jpg', 'Lacha Paratha-2.jpg', 'lacha-paratha.jpg', 0, 'Out of Stock', '2021-02-02 18:32:24', NULL),
(50, 3, 86, 'All Season Gulliver Pizza (20 Inch)', 'Pizza Hut', 2500, 2800, '<span style=\"color: rgb(20, 24, 35); font-family: helvetica, arial, sans-serif; font-size: 14px;\">The Biggest Pizza in the country. Its a 20 inch Pizza where you can order up to 8 flavors</span>													', 'pizza-1.jpg', 'pizza-2.jpg', 'pizza-3.jpg', 20, 'In Stock', '2021-02-02 19:13:27', NULL),
(51, 3, 88, 'Sandwich', 'Sandwich', 130, 160, 'Sandwich', 'sandwich1.jpg', 'sandwich.jpg', '3.jpg', 10, 'In Stock', '2021-02-02 19:20:13', NULL),
(52, 3, 89, 'Tandoori Chicken', 'Tandoori Chicken', 45, 50, '<b>Tandoori Chicken													</b>', 'tandoori-chicken-1.jpg', 'chicken-tandoori-2.jpg', 'Tandoori-Chicken-3.jpg', 5, 'In Stock', '2021-02-02 19:22:18', NULL),
(53, 3, 90, 'Seekh Kabab', 'Seekh Kabab', 85, 100, 'Seekh Kabab													', 'Seekh Kabab-1.jpg', 'Seekh Kabab-2.jpg', 'seekh-kabab.jpg', 10, 'Out of Stock', '2021-02-02 19:23:25', NULL),
(54, 5, 91, 'Borhani', 'Borhani', 50, 80, 'Borhani													', 'borhani-2.jpg', 'Borhani.jpg', 'Borhani-3.jpg', 0, 'In Stock', '2021-02-11 19:27:45', NULL),
(55, 5, 92, 'Soft Drink', 'Soft Drink', 100, 120, 'Soft Drink: 2 Liter Price-100tk', '1212.jpeg', '112221.jpg', 'soft-drinks.jpg', 0, 'In Stock', '2021-02-11 19:32:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(31, 9, 'Kala bhuna(beef)', '2021-01-27 20:25:26', NULL),
(34, 9, 'Morog Polao', '2021-01-27 20:27:07', NULL),
(44, 10, 'Kachchi Biryani', '2021-01-27 20:34:23', NULL),
(53, 10, 'Chingri malai curry', '2021-01-27 20:40:16', NULL),
(57, 9, 'Roasted Beef Khichuri', '2021-01-27 20:42:13', NULL),
(58, 9, 'Beef Khichuri', '2021-01-27 20:42:46', NULL),
(60, 9, 'Fish and Rice', '2021-01-27 20:45:19', NULL),
(74, 5, 'Ube Ice Cream', '2021-02-02 16:20:27', NULL),
(77, 4, 'Chingri Malai Curry', '2021-02-02 16:44:57', NULL),
(78, 4, 'Morog Polao', '2021-02-02 17:01:23', NULL),
(79, 4, 'Tehari', '2021-02-02 17:03:51', NULL),
(80, 4, 'Kacchi Biryani', '2021-02-02 17:16:36', NULL),
(81, 4, 'White Rice', '2021-02-02 17:24:00', NULL),
(82, 4, 'Shahi Polao', '2021-02-02 17:30:23', NULL),
(83, 6, 'Paratha', '2021-02-02 17:43:15', NULL),
(84, 6, 'Plain Paratha', '2021-02-02 17:58:21', NULL),
(85, 6, 'Lacha Paratha', '2021-02-02 18:29:01', NULL),
(86, 3, 'Pizza', '2021-02-02 18:57:45', NULL),
(88, 3, 'Sandwich', '2021-02-02 19:14:26', NULL),
(89, 3, 'Tandoori Chicken', '2021-02-02 19:20:42', NULL),
(90, 3, 'Seekh Kabab', '2021-02-02 19:22:36', NULL),
(91, 5, 'Borhani', '2021-02-11 19:26:35', NULL),
(92, 5, 'Soft Drink', '2021-02-11 19:28:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(39, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-03 11:08:57', '03-02-2021 04:40:31 PM', 1),
(40, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-03 11:13:03', '03-02-2021 04:43:16 PM', 1),
(41, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-03 11:13:49', '03-02-2021 09:35:31 PM', 1),
(43, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-03 16:06:50', '03-02-2021 11:33:42 PM', 1),
(47, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-04 10:08:59', '04-02-2021 03:55:10 PM', 1),
(48, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-04 10:25:17', '04-02-2021 03:56:11 PM', 1),
(49, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-04 10:26:21', NULL, 1),
(50, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-06 03:49:48', NULL, 1),
(51, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-09 16:23:20', NULL, 1),
(52, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-10 15:54:14', '10-02-2021 09:59:29 PM', 1),
(53, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-10 16:29:39', NULL, 1),
(54, 'tanvirpoly@gmail.com', 0x3a3a3100000000000000000000000000, '2021-02-16 03:00:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `billingNumber` int(12) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `billingNumber`, `regDate`, `updationDate`) VALUES
(4, 'Tanvir Ahmed', 'tanvirpoly@gmail.com', 1753781569, '827ccb0eea8a706c4c34a16891f84e7b', 'AHMEDPUR, HALIMANAGAR', 'Dhaka', 'Comilla', 212, 'AHMEDPUR, HALIMANAGAR', 'Dhaka', 'Comilla', 212, 0, '2021-01-16 06:56:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 1, '2021-02-27 18:53:17'),
(2, 4, 14, '2021-01-28 16:36:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
