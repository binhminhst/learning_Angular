-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2017 at 06:00 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name_product` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `price_product` float(10,2) NOT NULL,
  `pic_product` varchar(400) NOT NULL,
  `id_user` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name_product`, `note`, `price_product`, `pic_product`, `id_user`) VALUES
(1, 'Product1', 'Product1 Product1 Product1 Product1', 0.00, '', 1),
(2, 'Product2', 'Product2', 0.00, '', 1),
(3, 'Product3', 'Product3', 0.00, '', 2),
(4, 'Product4', 'Product4', 0.00, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(20) NOT NULL,
  `fab_ric` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `family` varchar(50) NOT NULL,
  `misa_code` varchar(20) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `silk_cotton` int(5) NOT NULL,
  `silk_cotton_out` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `fab_ric`, `type`, `family`, `misa_code`, `desc`, `price`, `silk_cotton`, `silk_cotton_out`) VALUES
(1, 'Silk', 'Bag', 'Accessorie', 'M001346_4TH', 'AMY-SILK--BLACK FOREST-', 2250000, 2, 0),
(2, 'Silk', 'Bag', 'Accessorie', 'M001346_4TH', 'AMY-SILK--LIGHT FOREST-', 2250000, 2, 0),
(3, 'Silk', 'Bag', 'Accessorie', 'M001348_4TH', 'AMY-SILK--SUMMER WINGS-', 2250000, 2, 0),
(4, 'Silk', 'Bag', 'Accessorie', 'M0016921_4TH', 'AMY-SILK--LUSH', 2250000, 2, 0),
(5, 'Silk', 'Bird cage', 'Accessorie', 'M001400_4TH', 'BIRD CAGE-SILK--A THOUSAND LIGHTS-', 1590000, 1, 0),
(6, 'Silk', 'Bird cage', 'Accessorie', 'M001397_4TH', 'BIRD CAGE-SILK--LIGHT FOREST-', 1590000, 1, 0),
(7, 'Silk', 'Bird cage', 'Accessorie', 'M001401_4TH', 'BIRD CAGE-SILK--YELLOW BAMBOO-', 1590000, 1, 0),
(8, 'Silk', 'Bird cage', 'Accessorie', 'M001400_4TH', 'BIRD CAGE-SILK--A THOUSAND LIGHTS-', 1590000, 1, 0),
(9, 'Silk', 'Bird cage', 'Accessorie', 'M001397_4TH', 'BIRD CAGE-SILK--LIGHT FOREST-', 1590000, 1, 0),
(10, 'Silk', 'Bird cage', 'Accessorie', 'M001401_4TH', 'BIRD CAGE-SILK--YELLOW BAMBOO-', 1590000, 1, 0),
(11, 'Silk', 'Necklace', 'Accessorie', 'M001383_4TH', 'CAMEO-SILK--A THOUSAND LIGHTS-', 810000, 5, 0),
(12, 'Silk', 'Necklace', 'Accessorie', 'M001378_4TH', 'CAMEO-SILK--BAMBOO CHIC-', 810000, 4, 0),
(13, 'Silk', 'Necklace', 'Accessorie', 'M001381_4TH', 'CAMEO-SILK--BLACK FOREST-', 810000, 5, 0),
(14, 'Silk', 'Necklace', 'Accessorie', 'M001380_4TH', 'CAMEO-SILK--JADE RIVER-', 810000, 4, 0),
(15, 'Silk', 'Necklace', 'Accessorie', 'M001382_4TH', 'CAMEO-SILK--LIGHT FOREST-', 810000, 4, 0),
(16, 'Silk', 'Necklace', 'Accessorie', 'M001379_4TH', 'CAMEO-SILK--SUMMER WINGS-', 810000, 3, 1),
(17, 'Silk', 'Necklace', 'Accessorie', 'M001377_4TH', 'CAMEO-SILK--YELLOW BAMBOO-', 810000, 5, 0),
(18, 'Silk', 'Key ring', 'Accessorie', 'M001313_4TH', 'ELLIOTT-SILK--BLACK FOREST-', 390000, 4, 0),
(19, 'Silk', 'Key ring', 'Accessorie', 'M001315_4TH', 'ELLIOTT-SILK--JADE RIVER-', 390000, 3, 0),
(20, 'Silk', 'Key ring', 'Accessorie', 'M001314_4TH', 'ELLIOTT-SILK--LIGHT FOREST-', 390000, 4, 0),
(21, 'Silk', 'Key ring', 'Accessorie', 'M001312_4TH', 'ELLIOTT-SILK--SUMMER WINGS-', 390000, 4, 0),
(22, 'Silk', 'Key ring', 'Accessorie', 'M001311_4TH', 'ELLIOTT-SILK--YELLOW BAMBOO-', 390000, 4, 0),
(23, 'Silk', 'Necklace ', 'Accessorie', 'M001384_4TH', 'JACKSON-SILK--BLACK-', 1350000, 2, 1),
(24, 'Silk', 'Necklace ', 'Accessorie', 'M001385_4TH', 'JACKSON-SILK--EBEN-', 1350000, 2, 1),
(25, 'Silk', 'Necklace ', 'Accessorie', 'M001386_4TH', 'JACKSON-SILK--CRUISE-', 1350000, 1, 2),
(26, 'Silk', 'Necklace ', 'Accessorie', 'M001387_4TH', 'JACKSON-SILK--JADE-', 1350000, 2, 1),
(27, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--A THOUSAND LIGHTS-', 1410000, 5, 0),
(28, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--AQUATIC LEAF-29 x 180 cm', 1410000, 4, 2),
(29, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--BAMBOO CHIC-', 1410000, 5, 0),
(30, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--BLACK FOREST-', 1410000, 5, 0),
(31, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--BLUE LANTERNS-', 1410000, 4, 2),
(32, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--DEEP WATER-', 1410000, 4, 2),
(33, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--DRAGONFLY-29 x 180 cm', 1410000, 1, 0),
(34, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--FEATHER-', 1410000, 4, 2),
(35, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--INDIGO RICE-29 x 180 cm', 1410000, 4, 2),
(36, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--JADE RIVER-', 1410000, 5, 0),
(37, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--LIGHT FOREST-', 1410000, 4, 0),
(38, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--LUSH-', 1410000, 6, 0),
(39, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--MOTHER FLOWER-29 x 180 cm', 1410000, 5, 0),
(40, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--RICE FIELD-29 x 180 cm', 1410000, 3, 2),
(41, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--SEED-29 x 180 cm', 1410000, 5, 0),
(42, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--SUMMER WINGS-', 1410000, 4, 0),
(43, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--WATER LILI-29 x 180 cm', 1410000, 7, 2),
(44, 'Silk', 'Scarf ', 'Accessorie', 'M001384_4TH', 'LOUISA-SILK--WATER MELON-29 x 180 cm', 1410000, 3, 0),
(45, 'Silk', 'Scarf ', 'Accessorie', 'M001387_4TH', 'LOUISA-SILK--YELLOW BAMBOO-', 1410000, 5, 0),
(46, 'Silk', 'Bag', 'Accessorie', 'M001335_4TH', 'MARIE JO-SILK--A THOUSAND LIGHTS-', 950000, 3, 0),
(47, 'Silk', 'Bag', 'Accessorie', 'M001340_4TH', 'MARIE JO-SILK--BAMBOO CHIC-', 950000, 2, 0),
(48, 'Silk', 'Bag', 'Accessorie', 'M001338_4TH', 'MARIE JO-SILK--BLACK FOREST-', 950000, 2, 0),
(49, 'Silk', 'Bag', 'Accessorie', 'M001336_4TH', 'MARIE JO-SILK--BLUE LANTERNS-', 950000, 2, 0),
(50, 'Silk', 'Bag', 'Accessorie', 'M001333_4TH', 'MARIE JO-SILK--JADE RIVER-', 950000, 2, 0),
(51, 'Silk', 'Bag', 'Accessorie', 'M001339_4TH', 'MARIE JO-SILK--LIGHT FOREST-', 950000, 2, 0),
(52, 'Silk', 'Bag', 'Accessorie', 'M001341_4TH', 'MARIE JO-SILK--ON MY WAY-', 950000, 3, 0),
(53, 'Silk', 'Bag', 'Accessorie', 'M001334_4TH', 'MARIE JO-SILK--SUMMER WINGS-', 950000, 2, 0),
(54, 'Silk', 'Bag', 'Accessorie', 'M001337_4TH', 'MARIE JO-SILK--YELLOW BAMBOO-', 950000, 3, 0),
(55, 'Silk', 'Bag', 'Accessorie', 'M001334_4TH', 'MARIE JO-SILK--LUSH-', 950000, 2, 1),
(56, 'Silk', 'Bag', 'Accessorie', 'M001337_4TH', 'MARIE JO-SILK--FEATHER-', 950000, 2, 0),
(57, 'Silk', 'Scarf', 'Accessorie', 'M001327B_4TH', 'TIMESQUARE-SILK--A THOUSAND LIGHTS-', 1410000, 9, 0),
(58, 'Silk', 'Scarf', 'Accessorie', 'M001328K_4TH', 'TIMESQUARE-SILK--BAMBOO CHIC-', 1410000, 3, 3),
(59, 'Silk', 'Scarf', 'Accessorie', 'M001467_4TH', 'TIMESQUARE-SILK--BANANA LEAF- (arrêt motif)', 1410000, 1, 0),
(60, 'Silk', 'Scarf', 'Accessorie', 'M001328G_4TH', 'TIMESQUARE-SILK--BLACK FOREST-', 1410000, 5, 0),
(61, 'Silk', 'Scarf', 'Accessorie', 'M001324_4TH', 'TIMESQUARE-SILK--BLUE LANTERNS-', 1410000, 5, 0),
(62, 'Silk', 'Scarf', 'Accessorie', 'M001589_5SI', 'TIMESQUARE-SILK--FEATHER-', 1410000, 9, 0),
(63, 'Silk', 'Scarf', 'Accessorie', 'M001326B_4TH', 'TIMESQUARE-SILK--INDIGO RICE-', 1410000, 6, 0),
(64, 'Silk', 'Scarf', 'Accessorie', 'M001326_4TH', 'TIMESQUARE-SILK--JADE RIVER-', 1410000, 3, 2),
(65, 'Silk', 'Scarf', 'Accessorie', 'M001325_4TH', 'TIMESQUARE-SILK--LIGHT FOREST-', 1410000, 5, 0),
(66, 'Silk', 'Scarf', 'Accessorie', 'M001588_5SI', 'TIMESQUARE-SILK--LUSH-', 1410000, 4, 0),
(67, 'Silk', 'Scarf', 'Accessorie', 'M001328C_4TH', 'TIMESQUARE-SILK--MOTHER FLOWER-', 1410000, 4, 0),
(68, 'Silk', 'Scarf', 'Accessorie', 'M001328_4TH', 'TIMESQUARE-SILK--ON MY WAY-', 1410000, 4, 0),
(69, 'Silk', 'Scarf', 'Accessorie', 'M001328D_4TH', 'TIMESQUARE-SILK--RICE FIELD-', 1410000, 5, 0),
(70, 'Silk', 'Scarf', 'Accessorie', 'M001328N_4TH', 'TIMESQUARE-SILK--SEEDS-', 1410000, 4, 0),
(71, 'Silk', 'Scarf', 'Accessorie', 'M001327_4TH', 'TIMESQUARE-SILK--SUMMER WINGS-', 1410000, 4, 0),
(72, 'Silk', 'Scarf', 'Accessorie', 'M001328L_4TH', 'TIMESQUARE-SILK--WATER LILI-', 1410000, 4, 0),
(73, 'Silk', 'Scarf', 'Accessorie', 'M001328M_4TH', 'TIMESQUARE-SILK--WATER MELON-', 1410000, 3, 2),
(74, 'Silk', 'Scarf', 'Accessorie', 'M001328H_4TH', 'TIMESQUARE-SILK--YELLOW BAMBOO-', 1410000, 5, 0),
(75, 'Silk', 'Scarf', 'Accessorie', 'M001328A_4TH', 'TIMESQUARE-SILK--AQUATIC LEAF-', 1410000, 4, 0),
(76, 'Silk', 'Wood fan', 'Accessorie', 'M001321_4TH', 'ZEPHIR-SILK--A THOUSAND LIGHTS-', 760000, 3, 0),
(77, 'Silk', 'Wood fan', 'Accessorie', 'M001319_4TH', 'ZEPHIR-SILK--BAMBOO CHIC-', 760000, 2, 0),
(78, 'Silk', 'Wood fan', 'Accessorie', 'M001318_4TH', 'ZEPHIR-SILK--BLACK FOREST-', 760000, 2, 0),
(79, 'Silk', 'Wood fan', 'Accessorie', 'M001317_4TH', 'ZEPHIR-SILK--BLUE LANTERNS-', 760000, 3, 0),
(80, 'Silk', 'Wood fan', 'Accessorie', 'M001320_4TH', 'ZEPHIR-SILK--JADE RIVER-', 760000, 2, 0),
(81, 'Silk', 'Wood fan', 'Accessorie', 'M001322_4TH', 'ZEPHIR-SILK--LIGHT FOREST-', 760000, 2, 0),
(82, 'Silk', 'Wood fan', 'Accessorie', 'M001323B_4TH', 'ZEPHIR-SILK--ON MY WAY-', 760000, 2, 0),
(83, 'Silk', 'Wood fan', 'Accessorie', 'M001316_4TH', 'ZEPHIR-SILK--SUMMER WINGS-', 760000, 2, 0),
(84, 'Silk', 'Wood fan', 'Accessorie', 'M001323_4TH', 'ZEPHIR-SILK--YELLOW BAMBOO-', 760000, 4, 0),
(85, 'Silk', 'Top SM', 'Fashion', 'M001283XS_4TH', 'ANOUK-SILK--JADE RIVER-XS', 2370000, 2, 0),
(86, 'Silk', 'Top SM', 'Fashion', 'M001283S_4TH', 'ANOUK-SILK--JADE RIVER-S', 2370000, 2, 0),
(87, 'Silk', 'Top SM', 'Fashion', 'M001283M_4TH', 'ANOUK-SILK--JADE RIVER-M', 2370000, 2, 0),
(88, 'Silk', 'Top SM', 'Fashion', 'M001263XS_4TH', 'BILLIE-SILK--LIGHT FOREST-XS', 2370000, 2, 0),
(89, 'Silk', 'Top SM', 'Fashion', 'M001263S_4TH', 'BILLIE-SILK--LIGHT FOREST-S', 2370000, 2, 0),
(90, 'Silk', 'Top SM', 'Fashion', 'M001263M_4TH', 'BILLIE-SILK--LIGHT FOREST-M', 2370000, 2, 0),
(91, 'Silk', 'Top ML', 'Fashion', 'M0016920XS_4TH', 'CHAMI-SILK--AQUATIC LEAF-XS', 2370000, 2, 0),
(92, 'Silk', 'Top ML', 'Fashion', 'M0016920S_4TH', 'CHAMI-SILK--AQUATIC LEAF-S', 2370000, 2, 0),
(93, 'Silk', 'Top ML', 'Fashion', 'M0016920M_4TH', 'CHAMI-SILK--AQUATIC LEAF-M', 2370000, 2, 0),
(94, 'Silk', 'Dress L', 'Fashion', 'M001025XS_3RD', 'CHAMI-SILK--AQUATIC LEAF-XS', 2370000, 2, 0),
(95, 'Silk', 'Dress L', 'Fashion', 'M001025S_3RD', 'CHAMI-SILK--AQUATIC LEAF-S', 2370000, 2, 0),
(96, 'Silk', 'Dress L', 'Fashion', 'M001025M_3RD', 'CHAMI-SILK--AQUATIC LEAF-M', 2370000, 2, 0),
(97, 'Silk', 'Dress C', 'Fashion', 'M001033XS_3RD', 'INDY-SILK-DRESSES-INDIGO RICE-XS', 2370000, 2, 0),
(98, 'Silk', 'Dress C', 'Fashion', 'M001033S_3RD', 'INDY-SILK-DRESSES-INDIGO RICE-S', 2370000, 2, 0),
(99, 'Silk', 'Dress C', 'Fashion', 'M001033M_3RD', 'INDY-SILK-DRESSES-INDIGO RICE-M', 2370000, 2, 0),
(100, 'Silk', 'Top MC', 'Fashion', 'M001147XS_3RD', 'IRIS-SILK--METROPOLIS-XS', 2370000, 2, 0),
(101, 'Silk', 'Top MC', 'Fashion', 'M001147S_3RD', 'IRIS-SILK--METROPOLIS-S', 2370000, 2, 0),
(102, 'Silk', 'Top MC', 'Fashion', 'M001147M_3RD', 'IRIS-SILK--METROPOLIS-M', 2370000, 2, 0),
(103, 'Cotton', 'Bag', 'Accessorie', 'M0016756_6TH', 'CAO-OCOTTON--GRAPHIC RICE-', 440000, 2, 0),
(104, 'Cotton', 'Bag', 'Accessorie', 'M0016757_6TH', 'CAO-OCOTTON--ASIAN PORCELAIN-', 440000, 5, 0),
(105, 'Cotton', 'Bag', 'Accessorie', 'M0016758_6TH', 'CAO-OCOTTON--RED RICE-', 440000, 5, 0),
(106, 'Cotton', 'Bag', 'Accessorie', 'M0016759_6TH', 'CAO-OCOTTON--HALONG SCALE-', 440000, 4, 0),
(107, 'Cotton', 'Bag', 'Accessorie', 'M0016761_6TH', 'CAO-OCOTTON--TRAVELLER\'S PALM-', 440000, 4, 0),
(108, 'Cotton', 'Bag', 'Accessorie', 'M0016762_6TH', 'CAO-OCOTTON--IN THE PADDY BLACK-', 440000, 2, 0),
(109, 'Cotton', 'Bag', 'Accessorie', 'M0016763_6TH', 'CAO-OCOTTON--IN THE WILD -', 440000, 2, 0),
(110, 'Cotton', 'Bag', 'Accessorie', 'M0016764_6TH', 'CAO-OCOTTON--BAMBOO WHISPER -', 440000, 2, 0),
(111, 'Cotton', 'Bag', 'Accessorie', 'M0016744_6TH', 'HO-OCOTTON--GRAPHIC RICE-', 1170000, 3, 0),
(112, 'Cotton', 'Bag', 'Accessorie', 'M0016745_6TH', 'HO-OCOTTON--HALONG SCALE-', 1170000, 1, 0),
(113, 'Cotton', 'Bag', 'Accessorie', 'M0016746_6TH', 'HO-OCOTTON--RED RICE-', 1170000, 2, 0),
(114, 'Cotton', 'Bag', 'Accessorie', 'M0016747_6TH', 'HO-OCOTTON--TRAVELLER\'S PALM-', 1170000, 2, 0),
(115, 'Cotton', 'Bag Pack', 'Accessorie', 'M0016752_6TH', 'LOI-OCOTTON--INTO THE WILD-', 2850000, 1, 0),
(116, 'Cotton', 'Bag Pack', 'Accessorie', 'M0016753_6TH', 'LOI-OCOTTON--GRAPHIC RICE-', 2850000, 2, 0),
(117, 'Cotton', 'Bag Pack', 'Accessorie', 'M0016754_6TH', 'LOI-OCOTTON--IN THE PADDY FIELD-', 2850000, 2, 0),
(118, 'Cotton', 'Bag Pack', 'Accessorie', 'M0016755_6TH', 'LOI-OCOTTON--KING FISHER-', 2850000, 2, 0),
(119, 'Cotton', 'Earing', 'Accessorie', 'M0016793_6TH', 'SHANGHAI-OCOTTON--CRUISE-', 990000, 6, 0),
(120, 'Cotton', 'Earing', 'Accessorie', 'M0016794_6TH', 'SHANGHAI-OCOTTON--SILVER-', 990000, 6, 0),
(121, 'Cotton', 'Earing', 'Accessorie', 'M0016795_6TH', 'SHANGHAI-OCOTTON--MINT-', 990000, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_active` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `phone`, `date_active`) VALUES
(1, 'test', '$2y$10$jRKqkl1aIEOIfp7Nv7RhVOkIeow.5Q9RLbUDMSd4KBFdtMnLwWU6m', 'test', 'test', 'test@gmail.com', '', '0000-00-00'),
(2, 'test2', '$2y$10$jRKqkl1aIEOIfp7Nv7RhVOkIeow.5Q9RLbUDMSd4KBFdtMnLwWU6m', 'test2', 'test2', 'test2@gmail.com', '', '0000-00-00'),
(3, 'test3', '$2y$10$jRKqkl1aIEOIfp7Nv7RhVOkIeow.5Q9RLbUDMSd4KBFdtMnLwWU6m', 'test3', 'test3', 'test3@gmail.com', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
