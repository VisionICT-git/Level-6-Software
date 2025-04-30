-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 03:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppcakes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake_info`
--

CREATE TABLE `cake_info` (
  `cake_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cake_name` varchar(50) DEFAULT NULL,
  `cake_desc` varchar(1000) DEFAULT NULL,
  `flavours` varchar(200) DEFAULT NULL,
  `icing` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_info`
--

INSERT INTO `cake_info` (`cake_id`, `cat_id`, `cake_name`, `cake_desc`, `flavours`, `icing`) VALUES
(1, 2, 'Rainbow Bright', 'Two tier rainbow panel and smooth pink polka dot with white chocolate drip. Rainbow coloured cake layers also available.', 'Chocolate Mud', 'Fondant, Chocolate drip'),
(2, 2, 'Ironman', 'Two tier brightly coloured cake with sculpted fondant ironman mask.', 'Chocolate, Vanilla, Lemon', 'Fondant'),
(3, 2, 'Unicorn', 'Two tier angelic unicorn with purple chocolate drip and unicorn horn and ears sculpted from fondant.', 'Chocolate, Vanilla, Lemon', 'Buttercream, Chocolate drip'),
(4, 2, 'Piped flowers', 'Beautiful sparkly bright blue cake with elegantly piped flowers.', 'Chocolate, Vanilla, Lemon', 'Buttercream'),
(5, 2, 'Sea Shore', 'Two tier fondant with seashells and flowers airbrushed with edible paint.', 'Chocolate, Vanilla, Lemon', 'Fondant'),
(6, 1, 'Classic Garden', 'Beautiful three tier semi naked wedding cake with edible gold foil and dried flowers.', 'Chocolate, Carrot, Lemon & Poppy seed', 'Buttercream'),
(7, 1, 'Just Married', 'Three tier drip wedding cake with edible gold foil, adorned with macaroons and fresh flowers.', 'Chocolate, Vanilla, Carrot, Lemon & Poppy seed', 'Fondant, Chocolate drip'),
(8, 1, 'Calming cream', 'Three tier ribbed buttercream cake with fresh flowers.', 'Chocolate, Vanilla, Carrot, Lemon & Poppy seed', 'Buttercream'),
(14, 1, 'Just White', 'Two tiers, elegant in all white fondant covered with hand made flowers and piped swirls.', 'Chocolate, Vanilla, Carrot, Lemon & Poppy seed', 'Fondant, Buttercream piping'),
(15, 1, 'Caramel Stack', 'Two tall tiers semi naked smoothed with buttercream and decorated with fresh roses, gold foil and dripped in caramel glaze.', 'Chocolate, Caramel, Carrot', 'Buttercream'),
(16, 3, 'Blooming', 'Two tier gold/chocolate layers with beautifully decorated chocolate panels and an opening white chocolate flower bud.', 'Chocolate Mud', 'Buttercream, Chocolate'),
(18, 3, 'Gold Rush', 'Two tier cake covered in gold coloured icing, gold roses, a bit of sparkle and contrasting white flowers made from fondant.', 'Chocolate, Vanilla, Lemon', 'Buttercream, Fondant'),
(19, 3, 'Simply beautiful', 'Single tier semi naked cake with edible silver foil, pink chocolate drizzle and fresh flowers.', 'Chocolate, Vanilla, Lemon', 'Buttercream, Chocolate drip'),
(20, 3, 'Cherry Blossom', 'Tall single tier with cherry blossom branch and cluster.', 'Chocolate, Vanilla', 'Fondant'),
(21, 3, 'Vanilla delight', 'Single tier fluffy vanilla cake layers with a silky buttercream.', 'Vanilla', 'Buttercream'),
(22, 2, 'Stanley Stegosaurus', 'Stanley is a great cake for young kids who love dinosaurs. The cake is covered in bright fondant, piped buttercream grass and includes dinosaur poop!', 'Chocolate, Vanilla, Lemon', 'Fondant, Buttercream piping'),
(23, 3, 'Engagement', 'I made this two tier engagement cake for a couple who love farm life.\r\nCovered in fondant with white chocolate panels it tasted as delicious as it looked!', 'Chocolate, Vanilla, Lemon', 'Fondant, Chocolate'),
(24, 1, 'Stunning in Silver', 'Elegantly beautiful two tier wedding cake with edible gold foil and dried flowers. Simple and delicious!', 'Chocolate, Vanilla, Carrot, Lemon & Poppy seed', 'Buttercream');

-- --------------------------------------------------------

--
-- Table structure for table `category_option`
--

CREATE TABLE `category_option` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `cat_heading` varchar(100) DEFAULT NULL,
  `cat_desc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_option`
--

INSERT INTO `category_option` (`cat_id`, `category`, `cat_heading`, `cat_desc`) VALUES
(1, 'Wedding', 'Wedding Cakes', 'Wedding cakes aren\'t just wedding cakes, they\'re statements of every kind.<br>\r\nAdd a personal touch to your wedding day. '),
(2, 'Birthday', 'Birthday Cakes', 'A birthday cake is one piece of the party you cannot do without, and blowing out the candles on your birthday cake is an annual rite of passage - every person is unique, why shouldn\'t their cake be?'),
(3, 'Special Occasion', 'Cakes for Special Occasions', 'Important occasions like birthdays, anniversaries and dinner parties call for something special like a beautifully-made cake. <br>A party without cake is really just a meeting.');

-- --------------------------------------------------------

--
-- Table structure for table `co_info`
--

CREATE TABLE `co_info` (
  `info_id` int(11) NOT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `co_email` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `cakep_heading` varchar(100) DEFAULT NULL,
  `cakep_parag` varchar(2000) DEFAULT NULL,
  `about_heading` varchar(100) DEFAULT NULL,
  `about_desc` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_info`
--

INSERT INTO `co_info` (`info_id`, `facebook`, `instagram`, `phone`, `co_email`, `location`, `cakep_heading`, `cakep_parag`, `about_heading`, `about_desc`) VALUES
(1, 'https://www.facebook.com/penelope.peirce', 'https://instagram.com/pennyp18?igshid=gumq1gcky84z', '0275412623', 'PennyPicklesCakes@gmail.com', 'Hamilton, NZ', 'Beautiful Cakes for Beautiful Occasions', 'All of our cakes are completely customisable, please use the cakes shown for your inspiration.<br>\r\nPrices roughly start at $85 and will vary depending on design and size/servings required.\r\nAll elements of these cakes including the flavors and designs must be finalised with full payment at least 7 days prior. <br>Thank you for your understanding.', 'I sugar coat everything!', 'Hi I\'m Penny, thanks for visiting my website.<br>\r\n<br>\r\nCake decorating started as a hobby, making cakes for my family and friends to celebrate their special day. I work full-time in a corporate environment, being able to make these beautiful delicious creations on the side is very rewarding for me. <br> \r\n<br>\r\nYes, I bake and decorate all of the cakes myself.<br>\r\n<br>\r\nI hope you enjoy browsing my galleries of past work. Whatever you wish for your upcoming occasion, I can design the cake that is right for you. \r\nSend through your order, enquiry, or friendly hello via the contact form.');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `cake_id` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `img_desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `cake_id`, `img_name`, `img_desc`) VALUES
(7, 1, 'rain1.jpg', NULL),
(9, 1, 'rain2.jpg', NULL),
(10, 2, 'iron1.jpg', NULL),
(11, 2, 'iron2.jpg', NULL),
(12, 3, 'unic1.JPG', NULL),
(13, 3, 'unic2.JPG', NULL),
(14, 4, 'bdayflowers1.jpg', NULL),
(15, 4, 'bdayflowers2.jpg', NULL),
(16, 5, 'sea1.jpg', NULL),
(17, 5, 'sea2.jpg', NULL),
(18, 6, 'Wedding1.jpg', NULL),
(19, 6, 'Wedding2.jpg', NULL),
(21, 8, 'rib1.jpg', NULL),
(22, 14, 'white1.jpg', NULL),
(23, 14, 'white2.jpg', NULL),
(24, 15, 'tallwed1.jpg', NULL),
(25, 15, 'tallwed2.jpg', NULL),
(29, 16, 'flower1.jpg', NULL),
(30, 18, 'gold1.jpg', NULL),
(31, 18, 'gold2.jpg', NULL),
(32, 19, 'simple1.jpg', NULL),
(33, 19, 'simple2.jpg', NULL),
(34, 20, 'cherry1.jpg', NULL),
(35, 20, 'cherry2.jpg', NULL),
(36, 21, 'vanilla1.jpg', NULL),
(37, 21, 'vanilla2.jpg', NULL),
(38, 7, 'just_m1.jpg', NULL),
(39, 7, 'just_m2.jpg', NULL),
(40, 22, 'steg1.jpg', NULL),
(41, 22, 'steg2.jpg', NULL),
(42, 23, 'Eng1.jpg', NULL),
(43, 23, 'Eng2.jpg', NULL),
(44, 24, 'silvW1.jpg', NULL),
(45, 24, 'silvW2.jpg', NULL),
(46, 24, 'silvW3.jpg', NULL),
(47, 24, 'silvW4.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `test_id` int(11) NOT NULL,
  `test_name` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `test_desc` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`test_id`, `test_name`, `date`, `test_desc`) VALUES
(1, 'Susan Boyle', '2019-10-16 10:24:44', 'Thank you for our daughter\'s beautiful cake!\r\nI just wanted to say thank you for our daughter\'s beautiful cake, it looked and tasted amazing, everyone loved the Tom and Jerry theme i think it stole the show.'),
(2, 'Tom', '2019-08-19 10:25:40', 'I just wanted to get in touch to thank you for the incredible cake we received yesterday for our organisations 30th Anniversary. We had so many compliments about the cake and the taste was just perfect. Honestly exceeded our expectations. Thank you all so much.'),
(3, 'Deborah', '2020-02-22 10:25:40', 'Just a quick note to thank you for the fabulous beehive cake that you made for my wife’s 50th birthday. It was everything we wanted and was admired by everyone who came to her party on Saturday. I really appreciate all your help with this.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `password`) VALUES
(9, 'admin', 'admin@ppcakes', '$2y$10$XYJDJApsv7UE5Vnhojd6tuIYG1V.Enn9zjLnswESKMY2Z1IU8ctN6'),
(10, 'delete', 'delete@d', '$2y$10$UrhytZYp2D6Dq5DXmohc/uiNfmjBzJk0pjMnPN5zRwhD4qdBYqVea'),
(13, 'Another Admin', 'admin2@ppcakes', '$2y$10$1.0NJcfZbH16IiwH0VFgheXPJ30ohJxjwR.cR3Iz/h.W8AUVOU0xS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake_info`
--
ALTER TABLE `cake_info`
  ADD PRIMARY KEY (`cake_id`),
  ADD UNIQUE KEY `cake_id` (`cake_id`),
  ADD KEY `cake_info_ibfk_1` (`cat_id`);

--
-- Indexes for table `category_option`
--
ALTER TABLE `category_option`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_id` (`cat_id`);

--
-- Indexes for table `co_info`
--
ALTER TABLE `co_info`
  ADD PRIMARY KEY (`info_id`),
  ADD UNIQUE KEY `info_id` (`info_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `image_id` (`image_id`),
  ADD KEY `cake_id` (`cake_id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`test_id`),
  ADD UNIQUE KEY `test_id` (`test_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake_info`
--
ALTER TABLE `cake_info`
  MODIFY `cake_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `category_option`
--
ALTER TABLE `category_option`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `co_info`
--
ALTER TABLE `co_info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cake_info`
--
ALTER TABLE `cake_info`
  ADD CONSTRAINT `cake_info_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category_option` (`cat_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`cake_id`) REFERENCES `cake_info` (`cake_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
