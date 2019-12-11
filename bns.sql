-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2019 at 04:51 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `craigslist`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `email_id` varchar(30) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`email_id`, `password`) VALUES
('abcd@gmail.com', 'ca716576d0be1835dc104c0d754338d44b001f6b'),
('abhilashadevkar@gmail.com', '24809df1b22e9426f3728eb79417dd75600c3500'),
('admin@bns.com', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
('krishan.kumar@utDallas.edu', 'daad568c68bf176607dff3214e0187d97af5923f'),
('swapnil.bansal1@gmail.com', '1a496fd7cb70f3a653ebcf0a5c51d36b8522806d');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email_id` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `rating` int(1) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email_id`, `firstname`, `lastname`, `phone_no`, `street`, `city`, `state`, `country`, `rating`, `isAdmin`, `zipcode`, `is_deleted`) VALUES
('abcd@gmail.com', 'abcd', 'abcd', '12456734334', '7421 Frankford Rd', 'Dallas', 'TX', 'United States', 0, 0, '75252', NULL),
('abhilashadevkar@gmail.com', 'Abhilasha', 'Devkar', '4697336827', 'Pearl Apartments', 'Dallas', 'TX', 'US', 0, 0, '75080', NULL),
('admin@bns.com', 'Admin', 'Admin', '000000000', '800 W Campbell Rd', 'Richradson', 'TX', 'US', 0, 1, '75080', NULL),
('krishan.kumar@utDallas.edu', 'Krishan', 'Kumar', '2145173549', 'Ashwood Apartments', 'Dallas', 'TX ', 'US', 0, 0, '75080', NULL),
('swapnil.bansal1@gmail.com', 'Swapnil', 'Bansal', '2145173549', 'Marquis at Waterview', 'Dallas', 'TX', 'US', 0, 0, '75080', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `utility_id` bigint(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `isAvailable` tinyint(1) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `description` varchar(1500) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`utility_id`, `name`, `category_id`, `isAvailable`, `email_id`, `city`, `street`, `state`, `country`, `rating`, `price`, `post_date`, `description`, `is_deleted`, `timestamp`) VALUES
(1, 'Item', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 601, '2019-11-25', 'Living Room', 0, '2019-12-05 00:22:28'),
(2, 'Tresom', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 419, '2019-11-25', 'Drainage of Right Brachial Vei', 1, '2019-11-25 07:02:15'),
(3, 'Ventosanzap', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 338, '2019-11-25', 'Reattachment of Large Intestin', 1, '2019-11-25 07:02:15'),
(4, 'Stim', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 142, '2019-11-25', 'Introduction of Other Therapeu', 0, '2019-11-25 07:02:15'),
(5, 'Namfix', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 677, '2019-11-25', 'Revision of Other Device in He', 1, '2019-11-25 07:02:15'),
(6, 'Greenlam', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 854, '2019-11-25', 'Destruction of Lower Esophagus', 1, '2019-11-25 07:02:15'),
(7, 'Duobam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 281, '2019-11-25', 'Bypass Left Kidney Pelvis to L', 0, '2019-11-25 07:02:15'),
(8, 'Wrapsafe', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 802, '2019-11-25', 'Excision of Tibial Nerve, Perc', 0, '2019-11-25 07:02:15'),
(9, 'Bitwolf', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 175, '2019-11-25', 'Drainage of Left Lower Leg Ten', 0, '2019-11-25 07:02:15'),
(10, 'Subin', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 731, '2019-11-25', 'Range of Motion and Joint Mobi', 0, '2019-11-25 07:02:15'),
(11, 'Greenlam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 577, '2019-11-25', 'Removal of Synthetic Substitut', 0, '2019-11-25 07:02:15'),
(12, 'Matsoft', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 869, '2019-11-25', 'Bypass Right Hepatic Duct to C', 1, '2019-11-25 07:02:15'),
(13, 'Keylex', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 227, '2019-11-25', 'Occlusion of Small Intestine w', 1, '2019-11-25 07:02:15'),
(14, 'Ventosanzap', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 527, '2019-11-25', 'Dilation of Left Axillary Arte', 0, '2019-11-25 07:02:15'),
(15, 'Alphazap', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 965, '2019-11-25', 'Replacement of Right Posterior', 0, '2019-11-25 07:02:15'),
(16, 'Fix San', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 809, '2019-11-25', 'Division of Lumbar Nerve, Perc', 1, '2019-11-25 07:02:15'),
(17, 'Quo Lux', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 857, '2019-11-25', 'Removal of Nonautologous Tissu', 0, '2019-11-25 07:02:15'),
(18, 'Lotlux', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 408, '2019-11-25', 'Destruction of Right Spermatic', 0, '2019-11-25 07:02:15'),
(19, 'Redhold', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 452, '2019-11-25', 'Supplement Left Femoral Shaft ', 0, '2019-11-25 07:02:15'),
(20, 'Keylex', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 278, '2019-11-25', 'Fluoroscopy of Ileal Diversion', 0, '2019-11-25 07:02:15'),
(21, 'Bitwolf', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 930, '2019-11-25', 'Drainage of Lumbar Vertebra wi', 0, '2019-11-25 07:02:15'),
(22, 'Konklux', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 947, '2019-11-25', 'Release Right Upper Leg Subcut', 0, '2019-11-25 07:02:15'),
(23, 'Mat Lam Tam', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 627, '2019-11-25', 'Revision of Drainage Device in', 0, '2019-11-25 07:02:15'),
(24, 'Quo Lux', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 333, '2019-11-25', 'Alteration of Left Shoulder Re', 0, '2019-11-25 07:02:15'),
(25, 'Biodex', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 844, '2019-11-25', 'Insertion of Radioactive Eleme', 0, '2019-11-25 07:02:15'),
(26, 'Wrapsafe', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 392, '2019-11-25', 'Introduction of Local Anesthet', 0, '2019-11-25 07:02:15'),
(27, 'Sub-Ex', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 458, '2019-11-25', 'Reattachment of Right Abdomen ', 0, '2019-11-25 07:02:15'),
(28, 'Rank', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 258, '2019-11-25', 'Resection of Right Ureter, Ope', 0, '2019-11-25 07:02:15'),
(29, 'Solarbreeze', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 415, '2019-11-25', 'Insertion of Cardiac Lead into', 0, '2019-11-25 07:02:15'),
(30, 'Konklab', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 38, '2019-11-25', 'Supplement Right Abdomen Tendo', 0, '2019-11-25 07:02:15'),
(31, 'Viva', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 901, '2019-11-25', 'Insertion of Bone Growth Stimu', 0, '2019-11-25 07:02:15'),
(32, 'Lotstring', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 912, '2019-11-25', 'Revision of Synthetic Substitu', 0, '2019-11-25 07:02:15'),
(33, 'Job', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 755, '2019-11-25', 'Drainage of Left Finger Phalan', 0, '2019-11-25 07:02:15'),
(34, 'Daltfresh', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 975, '2019-11-25', 'Drainage of Right Finger Phala', 0, '2019-11-25 07:02:15'),
(35, 'Hatity', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 552, '2019-11-25', 'Supplement Left Vocal Cord wit', 0, '2019-11-25 07:02:15'),
(36, 'Treeflex', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 78, '2019-11-25', 'Ultrasonography of Penile Arte', 0, '2019-11-25 07:02:15'),
(37, 'Flexidy', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 792, '2019-11-25', 'Destruction of Right Abdomen M', 0, '2019-11-25 07:02:15'),
(38, 'Alpha', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 169, '2019-11-25', 'Occlusion of Left Foot Vein wi', 0, '2019-11-25 07:02:15'),
(39, 'Fix San', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 422, '2019-11-25', 'Release Right Tarsal, Open App', 1, '2019-11-25 07:02:15'),
(40, 'Kanlam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 757, '2019-11-25', 'Replacement of Left Upper Arm ', 0, '2019-11-25 07:02:15'),
(41, 'Holdlamis', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 817, '2019-11-25', 'Excision of Face, Percutaneous', 0, '2019-11-25 07:02:15'),
(42, 'Cookley', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 913, '2019-11-25', 'Dilation of Right Common Iliac', 0, '2019-11-25 07:02:15'),
(43, 'Tresom', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 93, '2019-11-25', 'Extraction of Oculomotor Nerve', 0, '2019-11-25 07:02:15'),
(44, 'Aerified', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 687, '2019-11-25', 'Revision of Synthetic Substitu', 0, '2019-11-25 07:02:15'),
(45, 'Trippledex', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 356, '2019-11-25', 'Release Left Frontal Bone, Ope', 1, '2019-11-25 07:02:15'),
(46, 'Tin', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 399, '2019-11-25', 'Contact Radiation of Abdomen', 0, '2019-11-25 07:02:15'),
(47, 'Stim', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 337, '2019-11-25', 'Revision of External Fixation ', 0, '2019-11-25 07:02:15'),
(48, 'Treeflex', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 142, '2019-11-25', 'Dilation of Hepatic Artery wit', 0, '2019-11-25 07:02:15'),
(49, 'Temp', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 710, '2019-11-25', 'Pheresis of Leukocytes, Multip', 1, '2019-11-25 07:02:15'),
(50, 'Tres-Zap', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 716, '2019-11-25', 'Supplement Jejunum with Autolo', 0, '2019-11-25 07:02:15'),
(51, 'Stringtough', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 865, '2019-11-25', 'Computerized Tomography (CT Sc', 0, '2019-11-25 07:02:15'),
(52, 'Bitchip', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 684, '2019-11-25', 'Supplement Lumbosacral Disc wi', 0, '2019-11-25 07:02:15'),
(53, 'Flowdesk', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 984, '2019-11-25', 'Excision of Left Vertebral Vei', 0, '2019-11-25 07:02:15'),
(54, 'Sonair', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 408, '2019-11-25', 'Revision of Extraluminal Devic', 0, '2019-11-25 07:02:15'),
(55, 'Bigtax', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 180, '2019-11-25', 'Dilation of Ampulla of Vater w', 0, '2019-11-25 07:02:15'),
(56, 'Daltfresh', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 278, '2019-11-25', 'Dilation of Coronary Artery, O', 0, '2019-11-25 07:02:15'),
(57, 'Cardify', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 851, '2019-11-25', 'Fusion of Right Metatarsal-Pha', 0, '2019-11-25 07:02:15'),
(58, 'Cardify', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 715, '2019-11-25', 'Respiratory System, Fragmentat', 0, '2019-11-25 07:02:15'),
(59, 'Bytecard', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 845, '2019-11-25', 'Supplement Right Maxilla with ', 1, '2019-11-25 07:02:15'),
(60, 'Treeflex', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 416, '2019-11-25', 'Supplement Left Hand Artery wi', 0, '2019-11-25 07:02:15'),
(61, 'Mat Lam Tam', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 232, '2019-11-25', 'Repair Vagina, Via Natural or ', 1, '2019-11-25 07:02:15'),
(62, 'Cardify', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 215, '2019-11-25', 'Bypass Left Temporal Artery to', 0, '2019-11-25 07:02:15'),
(63, 'Asoka', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 690, '2019-11-25', 'Revision of Nonautologous Tiss', 1, '2019-11-25 07:02:15'),
(64, 'Sub-Ex', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 534, '2019-11-25', 'Removal of Internal Fixation D', 1, '2019-11-25 07:02:15'),
(65, 'Kanlam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 121, '2019-11-25', 'Supplement Left Internal Mamma', 0, '2019-11-25 07:02:15'),
(66, 'Kanlam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 329, '2019-11-25', 'Repair Eye in Products of Conc', 0, '2019-11-25 07:02:15'),
(67, 'Redhold', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 413, '2019-11-25', 'Fusion of Lumbar Vertebral Joi', 0, '2019-11-25 07:02:15'),
(68, 'Swapnil Pro', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 1000000, '2019-11-25', 'AI Specialist', 0, '2018-04-23 07:47:18'),
(69, 'Bitchip', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 313, '2019-11-25', 'Removal of Radioactive Element', 0, '2019-11-25 07:02:15'),
(70, 'Cardify', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 5, '2019-11-25', 'Revision of Synthetic Substitu', 0, '2019-11-25 07:02:15'),
(71, 'Regrant', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 788, '2019-11-25', 'Excision of Right Diaphragm, P', 0, '2019-11-25 07:02:15'),
(72, 'Temp', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 401, '2019-11-25', 'Extirpation of Matter from Rad', 0, '2019-11-25 07:02:15'),
(73, 'Solarbreeze', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 798, '2019-11-25', 'Low Dose Rate (LDR) Brachyther', 0, '2019-11-25 07:02:15'),
(74, 'Keylex', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 300, '2019-11-25', 'Bypass Cerebral Ventricle to B', 1, '2019-11-25 07:02:15'),
(75, 'Tin', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 883, '2019-11-25', 'Introduction of Anti-inflammat', 1, '2019-11-25 07:02:15'),
(76, 'Matsoft', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 592, '2019-11-25', 'Removal of Synthetic Substitut', 1, '2019-11-25 07:02:15'),
(77, 'Tampflex', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 254, '2019-11-25', 'Repair Left Upper Lung Lobe, O', 0, '2019-11-25 07:02:15'),
(78, 'Voyatouch', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 447, '2019-11-25', 'Map Basal Ganglia, Percutaneou', 1, '2019-11-25 07:02:15'),
(79, 'Namfix', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 386, '2019-11-25', 'Excision of Left Hand Subcutan', 0, '2019-11-25 07:02:15'),
(80, 'Overhold', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 485, '2019-11-25', 'Extirpation of Matter from Olf', 0, '2019-11-25 07:02:15'),
(81, 'Voyatouch', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 41, '2019-11-25', 'Restriction of Right Common Ca', 0, '2019-11-25 07:02:15'),
(82, 'Zathin', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 702, '2019-11-25', 'Release Left External Carotid ', 0, '2019-11-25 07:02:15'),
(83, 'Zontrax', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 953, '2019-11-25', 'Revision of Extraluminal Devic', 0, '2019-11-25 07:02:15'),
(84, 'Asoka', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 232, '2019-11-25', 'Introduction of Other Anti-inf', 0, '2019-11-25 07:02:15'),
(85, 'Sub-Ex', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 947, '2019-11-25', 'Revision of Artificial Sphinct', 1, '2019-11-25 07:02:15'),
(86, 'Quo Lux', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 533, '2019-11-25', 'Bypass Left Ureter to Left Ure', 1, '2019-11-25 07:02:15'),
(87, 'Daltfresh', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 519, '2019-11-25', 'Dilation of Left Internal Mamm', 0, '2019-11-25 07:02:15'),
(88, 'Holdlamis', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 947, '2019-11-25', 'Excision of Left Peroneal Arte', 0, '2019-11-25 07:02:15'),
(89, 'Subin', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 383, '2019-11-25', 'Drainage of Spleen, Open Appro', 0, '2019-11-25 07:02:15'),
(90, 'Zoolab', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 835, '2019-11-25', 'Repair Head, Open Approach', 1, '2019-11-25 07:02:15'),
(91, 'Flowdesk', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 600, '2019-11-25', 'Insertion of Monitoring Device', 0, '2019-11-25 07:02:15'),
(92, 'Sub-Ex', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 165, '2019-11-25', 'Removal of Autologous Tissue S', 1, '2019-11-25 07:02:15'),
(93, 'Prodder', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 959, '2019-11-25', 'Revision of External Fixation ', 0, '2019-11-25 07:02:15'),
(94, 'Voyatouch', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 8, '2019-11-25', 'Restriction of Left Femoral Ve', 0, '2019-11-25 07:02:15'),
(95, 'Andalax', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 481, '2019-11-25', 'Supplement Left Metacarpal wit', 0, '2019-11-25 07:02:15'),
(96, 'Cookley', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 282, '2019-11-25', 'Supplement Left Axillary Arter', 0, '2019-11-25 07:02:15'),
(97, 'Bytecard', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 416, '2019-11-25', 'Drainage of Right Lower Extrem', 0, '2019-11-25 07:02:15'),
(98, 'Hatity', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 489, '2019-11-25', 'Dilation of Innominate Artery,', 0, '2019-11-25 07:02:15'),
(99, 'Andalax', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 623, '2019-11-25', 'Release Right Kidney Pelvis, O', 0, '2019-11-25 07:02:15'),
(100, 'It', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 497, '2019-11-25', 'Computerized Tomography (CT Sc', 0, '2019-11-25 07:02:15'),
(101, 'Cookley', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 29, '2019-11-25', 'Transfer Femoral Nerve to Tibi', 0, '2019-11-25 07:02:15'),
(102, 'Zamit', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 637, '2019-11-25', 'Supplement Left Internal Iliac', 0, '2019-11-25 07:02:15'),
(103, 'Latlux', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 861, '2019-11-25', 'Release Colic Vein, Percutaneo', 0, '2019-11-25 07:02:15'),
(104, 'Trippledex', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 285, '2019-11-25', 'Insertion of Neurostimulator L', 0, '2019-11-25 07:02:15'),
(105, 'Pannier', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 35, '2019-11-25', 'Bypass Right Fallopian Tube to', 0, '2019-11-25 07:02:15'),
(106, 'Fintone', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 734, '2019-11-25', 'Bypass Common Bile Duct to Com', 0, '2019-11-25 07:02:15'),
(107, 'Veribet', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 821, '2019-11-25', 'Transfer Hypoglossal Nerve to ', 0, '2019-11-25 07:02:15'),
(108, 'Aerified', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 816, '2019-11-25', 'Supplement Atrial Septum with ', 0, '2019-11-25 07:02:15'),
(109, 'Cardguard', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 389, '2019-11-25', 'Bypass Abdominal Aorta to Mese', 0, '2019-11-25 07:02:15'),
(110, 'Konklab', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 683, '2019-11-25', 'Release Right External Iliac A', 0, '2019-11-25 07:02:15'),
(111, 'Tin', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 713, '2019-11-25', 'Bypass Bilateral Vas Deferens ', 0, '2019-11-25 07:02:15'),
(112, 'Viva', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 546, '2019-11-25', 'Bypass Esophagus to Cutaneous ', 0, '2019-11-25 07:02:15'),
(113, 'Cardify', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 650, '2019-11-25', 'Drainage of Left Sacroiliac Jo', 0, '2019-11-25 07:02:15'),
(114, 'Ventosanzap', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 410, '2019-11-25', 'Repair Left Elbow Joint, Percu', 0, '2019-11-25 07:02:15'),
(115, 'Y-find', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 404, '2019-11-25', 'Bypass Right Pleural Cavity to', 0, '2019-11-25 07:02:15'),
(116, 'Stronghold', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 595, '2019-11-25', 'Resection of Left Lower Eyelid', 0, '2019-11-25 07:02:15'),
(117, 'Namfix', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 278, '2019-11-25', 'Supplement Skull with Nonautol', 0, '2019-11-25 07:02:15'),
(118, 'Home Ing', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 619, '2019-11-25', 'Destruction of Stomach, Pyloru', 0, '2019-11-25 07:02:15'),
(119, 'Wrapsafe', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 145, '2019-11-25', 'Supplement Right Frontal Bone ', 0, '2019-11-25 07:02:15'),
(120, 'Otcom', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 493, '2019-11-25', 'Insertion of Monitoring Device', 0, '2019-11-25 07:02:15'),
(121, 'Wrapsafe', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 780, '2019-11-25', 'Drainage of Right Inguinal Reg', 0, '2019-11-25 07:02:15'),
(122, 'Matsoft', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 893, '2019-11-25', 'Drainage of Left Acromioclavic', 1, '2019-11-25 07:02:15'),
(123, 'Fix San', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 625, '2019-11-25', 'Excision of Uterus, Percutaneo', 0, '2019-11-25 07:02:15'),
(124, 'Cardguard', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 915, '2019-11-25', 'Reposition Left Subclavian Vei', 0, '2019-11-25 07:02:15'),
(125, 'Otcom', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 783, '2019-11-25', 'Drainage of Left Temporomandib', 0, '2019-11-25 07:02:15'),
(126, 'Lotlux', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 479, '2019-11-25', 'Bypass Left Hypogastric Vein t', 0, '2019-11-25 07:02:15'),
(127, 'Alpha', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 397, '2019-11-25', 'Repair Right Pleura, Percutane', 1, '2019-11-25 07:02:15'),
(128, 'Home Ing', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 613, '2019-11-25', 'Replacement of Right Subclavia', 0, '2019-11-25 07:02:15'),
(129, 'Pannier', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 19, '2019-11-25', 'Bypass Right Common Iliac Arte', 0, '2019-11-25 07:02:15'),
(130, 'Y-find', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 350, '2019-11-25', 'Removal of External Fixation D', 0, '2019-11-25 07:02:15'),
(131, 'Y-Solowarm', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 436, '2019-11-25', 'Supplement Nasal Turbinate wit', 0, '2019-11-25 07:02:15'),
(132, 'Kanlam', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 275, '2019-11-25', 'Excision of Right Atrium, Perc', 0, '2019-11-25 07:02:15'),
(133, 'Zaam-Dox', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 257, '2019-11-25', 'Drainage of Left Trunk Tendon,', 0, '2019-11-25 07:02:15'),
(134, 'Ronstring', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 762, '2019-11-25', 'Occlusion of Right Cephalic Ve', 0, '2019-11-25 07:02:15'),
(135, 'Lotstring', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 73, '2019-11-25', 'Release Right Colic Artery, Op', 1, '2019-11-25 07:02:15'),
(136, 'Job', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 572, '2019-11-25', 'Insertion of Other Device into', 0, '2019-11-25 07:02:15'),
(137, 'Span', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 199, '2019-11-25', 'Dilation of Right External Car', 0, '2019-11-25 07:02:15'),
(138, 'Asoka', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 821, '2019-11-25', 'Supplement Head with Nonautolo', 0, '2019-11-25 07:02:15'),
(139, 'Fix San', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 845, '2019-11-25', 'Drainage of Femoral Nerve with', 0, '2019-11-25 07:02:15'),
(140, 'Lotstring', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 883, '2019-11-25', 'Excision of Right Parietal Bon', 0, '2019-11-25 07:02:15'),
(141, 'Flowdesk', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 522, '2019-11-25', 'Dilation of Left Common Iliac ', 1, '2019-11-25 07:02:15'),
(142, 'Mat Lam Tam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 621, '2019-11-25', 'Repair Left Ethmoid Bone, Open', 0, '2019-11-25 07:02:15'),
(143, 'Zaam-Dox', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 730, '2019-11-25', 'Repair Hyoid Bone, Percutaneou', 0, '2019-11-25 07:02:15'),
(144, 'Temp', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 247, '2019-11-25', 'Beam Radiation of Liver using ', 1, '2019-11-25 07:02:15'),
(145, 'It', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 557, '2019-11-25', 'Extirpation of Matter from Rig', 0, '2019-11-25 07:02:15'),
(146, 'Keylex', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 943, '2019-11-25', 'Repair Left Inguinal Region, O', 0, '2019-11-25 07:02:15'),
(147, 'Voltsillam', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 379, '2019-11-25', 'Drainage of Right Lower Lobe B', 0, '2019-11-25 07:02:15'),
(148, 'Y-find', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 920, '2019-11-25', 'Resection of Uvula, Open Appro', 1, '2019-11-25 07:02:15'),
(149, 'Alphazap', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 698, '2019-11-25', 'Bypass Right Subclavian Artery', 0, '2019-11-25 07:02:15'),
(150, 'Zamit', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 717, '2019-11-25', 'Bypass Left Popliteal Artery t', 0, '2019-11-25 07:02:15'),
(151, 'Flexidy', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 122, '2019-11-25', 'Bypass Right Internal Iliac Ar', 1, '2019-11-25 07:02:15'),
(152, 'Bamity', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 838, '2019-11-25', 'Repair Face Subcutaneous Tissu', 0, '2019-11-25 07:02:15'),
(153, 'Ronstring', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 182, '2019-11-25', 'Supplement Left Atrium with No', 1, '2019-11-25 07:02:15'),
(154, 'Keylex', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 10, '2019-11-25', 'Supplement Cervical Vertebral ', 0, '2019-11-25 07:02:15'),
(155, 'Veribet', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 314, '2019-11-25', 'Extirpation of Matter from Lef', 0, '2019-11-25 07:02:15'),
(156, 'Y-find', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 279, '2019-11-25', 'Removal of Synthetic Substitut', 0, '2019-11-25 07:02:15'),
(157, 'Duobam', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 714, '2019-11-25', 'Extirpation of Matter from Lum', 0, '2019-11-25 07:02:15'),
(158, 'Domainer', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 246, '2019-11-25', 'Bypass Jejunum to Descending C', 1, '2019-11-25 07:02:15'),
(159, 'Matsoft', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 117, '2019-11-25', 'Drainage of Right Lower Femur,', 0, '2019-11-25 07:02:15'),
(160, 'Bamity', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 959, '2019-11-25', 'High Dose Rate (HDR) Brachythe', 0, '2019-11-25 07:02:15'),
(161, 'Stronghold', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 168, '2019-11-25', 'Lower Veins, Repair', 1, '2019-11-25 07:02:15'),
(162, 'Stim', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 371, '2019-11-25', 'Repair Left External Jugular V', 0, '2019-11-25 07:02:15'),
(163, 'Job', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 460, '2019-11-25', 'Detachment at Right Upper Leg,', 0, '2019-11-25 07:02:15'),
(164, 'Duobam', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 996, '2019-11-25', 'Restriction of Right Greater S', 0, '2019-11-25 07:02:15'),
(165, 'Rank', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 994, '2019-11-25', 'Supplement Ileocecal Valve wit', 0, '2019-11-25 07:02:15'),
(166, 'Zathin', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 293, '2019-11-25', 'Revision of Bone Growth Stimul', 1, '2019-11-25 07:02:15'),
(167, 'Zontrax', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 431, '2019-11-25', 'Drainage of Multiple Parathyro', 0, '2019-11-25 07:02:15'),
(168, 'Zaam-Dox', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 117, '2019-11-25', 'Destruction of Hepatic Vein, O', 0, '2019-11-25 07:02:15'),
(169, 'Tampflex', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 93, '2019-11-25', 'Dilation of Right Common Iliac', 0, '2019-11-25 07:02:15'),
(170, 'Y-find', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 534, '2019-11-25', 'Excision of Left Thyroid Gland', 1, '2019-11-25 07:02:15'),
(171, 'Opela', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 17, '2019-11-25', 'Destruction of Upper Esophagus', 1, '2019-11-25 07:02:15'),
(172, 'Y-find', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 698, '2019-11-25', 'Change Drainage Device in Mese', 0, '2019-11-25 07:02:15'),
(173, 'Subin', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 308, '2019-11-25', 'Bypass Right Fallopian Tube to', 0, '2019-11-25 07:02:15'),
(174, 'Zamit', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 125, '2019-11-25', 'Chiropractic Manipulation of T', 0, '2019-11-25 07:02:15'),
(175, 'It', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 35, '2019-11-25', 'Restriction of Left Large Inte', 0, '2019-11-25 07:02:15'),
(176, 'Fixflex', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 578, '2019-11-25', 'Drainage of Right Ulnar Artery', 0, '2019-11-25 07:02:15'),
(177, 'Zamit', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 206, '2019-11-25', 'Drainage of Right Upper Eyelid', 0, '2019-11-25 07:02:15'),
(178, 'Rank', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 813, '2019-11-25', 'Removal of Nonautologous Tissu', 0, '2019-11-25 07:02:15'),
(179, 'Namfix', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 939, '2019-11-25', 'Bypass Right Ventricle to Left', 0, '2019-11-25 07:02:15'),
(180, 'Toughjoyfax', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 350, '2019-11-25', 'Revision of Radioactive Elemen', 0, '2019-11-25 07:02:15'),
(181, 'Job', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 808, '2019-11-25', 'Replacement of Left Metatarsal', 1, '2019-11-25 07:02:15'),
(182, 'Biodex', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 647, '2019-11-25', 'Beam Radiation of Kidney using', 0, '2019-11-25 07:02:15'),
(183, 'Pannier', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 630, '2019-11-25', 'Destruction of Left Axillary V', 0, '2019-11-25 07:02:15'),
(184, 'Lotlux', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 223, '2019-11-25', 'Resection of Left Upper Arm Mu', 0, '2019-11-25 07:02:15'),
(185, 'Opela', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 431, '2019-11-25', 'Supplement Aortic Valve with S', 1, '2019-11-25 07:02:15'),
(186, 'Bitchip', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 924, '2019-11-25', 'Insertion of Tissue Expander i', 1, '2019-11-25 07:02:15'),
(187, 'Domainer', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 485, '2019-11-25', 'Bypass Abdominal Aorta to Bila', 1, '2018-04-23 06:20:57'),
(188, 'Bamity', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 446, '2019-11-25', 'Transfer Accessory Nerve to Va', 0, '2019-11-25 07:02:15'),
(189, 'Konklab', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 244, '2019-11-25', 'Bypass Left Vertebral Vein to ', 0, '2019-11-25 07:02:15'),
(190, 'Fintone', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 746, '2019-11-25', 'Destruction of Accessory Pancr', 1, '2019-11-25 07:02:15'),
(191, 'Stim', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 460, '2019-11-25', 'Dilation of Left Thyroid Arter', 0, '2019-11-25 07:02:15'),
(192, 'Sub-Ex', 1, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 4, 91, '2019-11-25', 'Alteration of Right Lower Eyel', 1, '2019-11-25 07:02:15'),
(193, 'Mat Lam Tam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 960, '2019-11-25', 'Destruction of Right Lower Ext', 0, '2019-11-25 07:02:15'),
(194, 'Gembucket', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 1, 591, '2019-11-25', 'Fluoroscopy of Sacroiliac Join', 0, '2019-11-25 07:02:15'),
(195, 'Y-Solowarm', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 875, '2019-11-25', 'Replacement of Right Nipple wi', 0, '2019-11-25 07:02:15'),
(196, 'Voltsillam', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 956, '2019-11-25', 'Drainage of Right Superior Par', 0, '2019-11-25 07:02:15'),
(197, 'Duobam', 1, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 114, '2019-11-25', 'Drainage of Right Fibula, Perc', 0, '2019-11-25 07:02:15'),
(198, 'Sonsing', 2, 1, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 5, 896, '2019-11-25', 'Motor Function Treatment of In', 0, '2019-11-25 06:50:33'),
(199, 'Tin', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 3, 454, '2019-11-25', 'Revision of Autologous Tissue ', 0, '2019-11-25 07:02:15'),
(200, 'Sub-Ex', 2, 0, 'admin@bns.com', 'Dallas', '800 W Campbell Rd', 'TX', 'US', 2, 724, '2019-11-25', 'Tinnitus Masker Assessment usi', 0, '2019-11-25 07:02:15'),
(201, 'jarvis', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 300, NULL, 'Electronics', 1, '2019-12-04 03:03:11'),
(202, 'jarvis', 1, 1, 'abhilashadevkar@gmail.com', 'LOS ANGELES', '1172 W 30TH ST, 1172', 'CA', 'United States', NULL, 200, NULL, 'electronics', 1, '2019-12-04 03:04:07'),
(203, 'dghfdv', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 6476, NULL, 'ghjf', 1, '2019-12-04 04:11:31'),
(204, 'asd', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 123, NULL, 'rwstgdfg', 1, '2019-12-04 04:35:50'),
(205, 'fgdfg', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 234, NULL, 'rewfd', 1, '2019-12-04 04:42:15'),
(206, 'dfs', 2, 1, 'abhilashadevkar@gmail.com', 'LOS ANGELES', '1172 W 30TH ST, 1172', 'CA', 'United States', NULL, 32, NULL, 'sdf', 1, '2019-12-04 04:42:45'),
(207, 'fr', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 32, NULL, 'ew', 1, '2019-12-04 04:43:10'),
(208, 'prod1', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 223, NULL, 'sddf', 1, '2019-12-04 05:36:14'),
(209, 'jarvis', 1, 1, 'abhilashadevkar@gmail.com', 'Los Angeles', '2801 Ellendale Place', 'California', 'United States', NULL, 67, NULL, 'huih', 0, '2019-12-05 12:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `utility_category`
--

CREATE TABLE `utility_category` (
  `category_id` int(1) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_category`
--

INSERT INTO `utility_category` (`category_id`, `name`) VALUES
(1, 'For Sale'),
(2, 'Housing');

-- --------------------------------------------------------

--
-- Table structure for table `utility_image`
--

CREATE TABLE `utility_image` (
  `utility_id` bigint(30) NOT NULL,
  `image_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utility_image`
--

INSERT INTO `utility_image` (`utility_id`, `image_path`) VALUES
(1, '../php/product-images/admin@bns.com/1house7.jpg'),
(2, '../php/product-images/admin@bns.com/2.jpg'),
(3, '../php/product-images/admin@bns.com/3.jpg'),
(4, '../php/product-images/admin@bns.com/4.jpg'),
(5, '../php/product-images/admin@bns.com/5.jpg'),
(6, '../php/product-images/admin@bns.com/6.jpg'),
(7, '../php/product-images/admin@bns.com/7.jpg'),
(8, '../php/product-images/admin@bns.com/8.jpg'),
(9, '../php/product-images/admin@bns.com/9.jpg'),
(10, '../php/product-images/admin@bns.com/10.jpg'),
(11, '../php/product-images/admin@bns.com/11.jpg'),
(12, '../php/product-images/admin@bns.com/12.jpg'),
(13, '../php/product-images/admin@bns.com/13.jpg'),
(14, '../php/product-images/admin@bns.com/14.jpg'),
(15, '../php/product-images/admin@bns.com/15.jpg'),
(16, '../php/product-images/admin@bns.com/16.jpg'),
(17, '../php/product-images/admin@bns.com/17.jpg'),
(18, '../php/product-images/admin@bns.com/18.jpg'),
(19, '../php/product-images/admin@bns.com/19.jpg'),
(20, '../php/product-images/admin@bns.com/20.jpg'),
(21, '../php/product-images/admin@bns.com/21.jpg'),
(22, '../php/product-images/admin@bns.com/22.jpg'),
(23, '../php/product-images/admin@bns.com/23.jpg'),
(24, '../php/product-images/admin@bns.com/24.jpg'),
(25, '../php/product-images/admin@bns.com/25.jpg'),
(26, '../php/product-images/admin@bns.com/26.jpg'),
(27, '../php/product-images/admin@bns.com/27.jpg'),
(28, '../php/product-images/admin@bns.com/28.jpg'),
(29, '../php/product-images/admin@bns.com/29.jpg'),
(30, '../php/product-images/admin@bns.com/30.jpg'),
(31, '../php/product-images/admin@bns.com/31.jpg'),
(32, '../php/product-images/admin@bns.com/32.jpg'),
(33, '../php/product-images/admin@bns.com/33.jpg'),
(34, '../php/product-images/admin@bns.com/34.jpg'),
(35, '../php/product-images/admin@bns.com/35.jpg'),
(36, '../php/product-images/admin@bns.com/36.jpg'),
(37, '../php/product-images/admin@bns.com/37.jpg'),
(38, '../php/product-images/admin@bns.com/38.jpg'),
(39, '../php/product-images/admin@bns.com/39.jpg'),
(40, '../php/product-images/admin@bns.com/40.jpg'),
(41, '../php/product-images/admin@bns.com/41.jpg'),
(42, '../php/product-images/admin@bns.com/42.jpg'),
(43, '../php/product-images/admin@bns.com/43.jpg'),
(44, '../php/product-images/admin@bns.com/44.jpg'),
(45, '../php/product-images/admin@bns.com/45.jpg'),
(46, '../php/product-images/admin@bns.com/46.jpg'),
(47, '../php/product-images/admin@bns.com/47.jpg'),
(48, '../php/product-images/admin@bns.com/48.jpg'),
(49, '../php/product-images/admin@bns.com/49.jpg'),
(50, '../php/product-images/admin@bns.com/50.jpg'),
(51, '../php/product-images/admin@bns.com/51.jpg'),
(52, '../php/product-images/admin@bns.com/52.jpg'),
(53, '../php/product-images/admin@bns.com/53.jpg'),
(54, '../php/product-images/admin@bns.com/54.jpg'),
(55, '../php/product-images/admin@bns.com/55.jpg'),
(56, '../php/product-images/admin@bns.com/56.jpg'),
(57, '../php/product-images/admin@bns.com/57.jpg'),
(58, '../php/product-images/admin@bns.com/58.jpg'),
(59, '../php/product-images/admin@bns.com/59.jpg'),
(60, '../php/product-images/admin@bns.com/60.jpg'),
(61, '../php/product-images/admin@bns.com/61.jpg'),
(62, '../php/product-images/admin@bns.com/62.jpg'),
(63, '../php/product-images/admin@bns.com/63.jpg'),
(64, '../php/product-images/admin@bns.com/64.jpg'),
(65, '../php/product-images/admin@bns.com/65.jpg'),
(66, '../php/product-images/admin@bns.com/66.jpg'),
(67, '../php/product-images/admin@bns.com/67.jpg'),
(68, '../php/product-images/admin@bns.com/68.jpg'),
(69, '../php/product-images/admin@bns.com/69.jpg'),
(70, '../php/product-images/admin@bns.com/70.jpg'),
(71, '../php/product-images/admin@bns.com/71.jpg'),
(72, '../php/product-images/admin@bns.com/72.jpg'),
(73, '../php/product-images/admin@bns.com/73.jpg'),
(74, '../php/product-images/admin@bns.com/74.jpg'),
(75, '../php/product-images/admin@bns.com/75.jpg'),
(76, '../php/product-images/admin@bns.com/76.jpg'),
(77, '../php/product-images/admin@bns.com/77.jpg'),
(78, '../php/product-images/admin@bns.com/78.jpg'),
(79, '../php/product-images/admin@bns.com/79.jpg'),
(80, '../php/product-images/admin@bns.com/80.jpg'),
(81, '../php/product-images/admin@bns.com/81.jpg'),
(82, '../php/product-images/admin@bns.com/82.jpg'),
(83, '../php/product-images/admin@bns.com/83.jpg'),
(84, '../php/product-images/admin@bns.com/84.jpg'),
(85, '../php/product-images/admin@bns.com/85.jpg'),
(86, '../php/product-images/admin@bns.com/86.jpg'),
(87, '../php/product-images/admin@bns.com/87.jpg'),
(88, '../php/product-images/admin@bns.com/88.jpg'),
(89, '../php/product-images/admin@bns.com/89.jpg'),
(90, '../php/product-images/admin@bns.com/90.jpg'),
(91, '../php/product-images/admin@bns.com/91.jpg'),
(92, '../php/product-images/admin@bns.com/92.jpg'),
(93, '../php/product-images/admin@bns.com/93.jpg'),
(94, '../php/product-images/admin@bns.com/94.jpg'),
(95, '../php/product-images/admin@bns.com/95.jpg'),
(96, '../php/product-images/admin@bns.com/96.jpg'),
(97, '../php/product-images/admin@bns.com/97.jpg'),
(98, '../php/product-images/admin@bns.com/98.jpg'),
(99, '../php/product-images/admin@bns.com/99.jpg'),
(100, '../php/product-images/admin@bns.com/100.jpg'),
(101, '../php/product-images/admin@bns.com/101.jpg'),
(102, '../php/product-images/admin@bns.com/102.jpg'),
(103, '../php/product-images/admin@bns.com/103.jpg'),
(104, '../php/product-images/admin@bns.com/104.jpg'),
(105, '../php/product-images/admin@bns.com/105.jpg'),
(106, '../php/product-images/admin@bns.com/106.jpg'),
(107, '../php/product-images/admin@bns.com/107.jpg'),
(108, '../php/product-images/admin@bns.com/108.jpg'),
(109, '../php/product-images/admin@bns.com/109.jpg'),
(110, '../php/product-images/admin@bns.com/110.jpg'),
(111, '../php/product-images/admin@bns.com/111.jpg'),
(112, '../php/product-images/admin@bns.com/112.jpg'),
(113, '../php/product-images/admin@bns.com/113.jpg'),
(114, '../php/product-images/admin@bns.com/114.jpg'),
(115, '../php/product-images/admin@bns.com/115.jpg'),
(116, '../php/product-images/admin@bns.com/116.jpg'),
(117, '../php/product-images/admin@bns.com/117.jpg'),
(118, '../php/product-images/admin@bns.com/118.jpg'),
(119, '../php/product-images/admin@bns.com/119.jpg'),
(120, '../php/product-images/admin@bns.com/120.jpg'),
(121, '../php/product-images/admin@bns.com/121.jpg'),
(122, '../php/product-images/admin@bns.com/122.jpg'),
(123, '../php/product-images/admin@bns.com/123.jpg'),
(124, '../php/product-images/admin@bns.com/124.jpg'),
(125, '../php/product-images/admin@bns.com/125.jpg'),
(126, '../php/product-images/admin@bns.com/126.jpg'),
(127, '../php/product-images/admin@bns.com/127.jpg'),
(128, '../php/product-images/admin@bns.com/128.jpg'),
(129, '../php/product-images/admin@bns.com/129.jpg'),
(130, '../php/product-images/admin@bns.com/130.jpg'),
(131, '../php/product-images/admin@bns.com/131.jpg'),
(132, '../php/product-images/admin@bns.com/132.jpg'),
(133, '../php/product-images/admin@bns.com/133.jpg'),
(134, '../php/product-images/admin@bns.com/134.jpg'),
(135, '../php/product-images/admin@bns.com/135.jpg'),
(136, '../php/product-images/admin@bns.com/136.jpg'),
(137, '../php/product-images/admin@bns.com/137.jpg'),
(138, '../php/product-images/admin@bns.com/138.jpg'),
(139, '../php/product-images/admin@bns.com/139.jpg'),
(140, '../php/product-images/admin@bns.com/140.jpg'),
(141, '../php/product-images/admin@bns.com/141.jpg'),
(142, '../php/product-images/admin@bns.com/142.jpg'),
(143, '../php/product-images/admin@bns.com/143.jpg'),
(144, '../php/product-images/admin@bns.com/144.jpg'),
(145, '../php/product-images/admin@bns.com/145.jpg'),
(146, '../php/product-images/admin@bns.com/146.jpg'),
(147, '../php/product-images/admin@bns.com/147.jpg'),
(148, '../php/product-images/admin@bns.com/148.jpg'),
(149, '../php/product-images/admin@bns.com/149.jpg'),
(150, '../php/product-images/admin@bns.com/150.jpg'),
(151, '../php/product-images/admin@bns.com/151.jpg'),
(152, '../php/product-images/admin@bns.com/152.jpg'),
(153, '../php/product-images/admin@bns.com/153.jpg'),
(154, '../php/product-images/admin@bns.com/154.jpg'),
(155, '../php/product-images/admin@bns.com/155.jpg'),
(156, '../php/product-images/admin@bns.com/156.jpg'),
(157, '../php/product-images/admin@bns.com/157.jpg'),
(158, '../php/product-images/admin@bns.com/158.jpg'),
(159, '../php/product-images/admin@bns.com/159.jpg'),
(160, '../php/product-images/admin@bns.com/160.jpg'),
(161, '../php/product-images/admin@bns.com/161.jpg'),
(162, '../php/product-images/admin@bns.com/162.jpg'),
(163, '../php/product-images/admin@bns.com/163.jpg'),
(164, '../php/product-images/admin@bns.com/164.jpg'),
(165, '../php/product-images/admin@bns.com/165.jpg'),
(166, '../php/product-images/admin@bns.com/166.jpg'),
(167, '../php/product-images/admin@bns.com/167.jpg'),
(168, '../php/product-images/admin@bns.com/168.jpg'),
(169, '../php/product-images/admin@bns.com/169.jpg'),
(170, '../php/product-images/admin@bns.com/170.jpg'),
(171, '../php/product-images/admin@bns.com/171.jpg'),
(172, '../php/product-images/admin@bns.com/172.jpg'),
(173, '../php/product-images/admin@bns.com/173.jpg'),
(174, '../php/product-images/admin@bns.com/174.jpg'),
(175, '../php/product-images/admin@bns.com/175.jpg'),
(176, '../php/product-images/admin@bns.com/176.jpg'),
(177, '../php/product-images/admin@bns.com/177.jpg'),
(178, '../php/product-images/admin@bns.com/178.jpg'),
(179, '../php/product-images/admin@bns.com/179.jpg'),
(180, '../php/product-images/admin@bns.com/180.jpg'),
(181, '../php/product-images/admin@bns.com/181.jpg'),
(182, '../php/product-images/admin@bns.com/182.jpg'),
(183, '../php/product-images/admin@bns.com/183.jpg'),
(184, '../php/product-images/admin@bns.com/184.jpg'),
(185, '../php/product-images/admin@bns.com/185.jpg'),
(186, '../php/product-images/admin@bns.com/186.jpg'),
(187, '../php/product-images/admin@bns.com/187.jpg'),
(188, '../php/product-images/admin@bns.com/188.jpg'),
(189, '../php/product-images/admin@bns.com/189.jpg'),
(190, '../php/product-images/admin@bns.com/190.jpg'),
(191, '../php/product-images/admin@bns.com/191.jpg'),
(192, '../php/product-images/admin@bns.com/192.jpg'),
(193, '../php/product-images/admin@bns.com/193.jpg'),
(194, '../php/product-images/admin@bns.com/194.jpg'),
(195, '../php/product-images/admin@bns.com/195.jpg'),
(196, '../php/product-images/admin@bns.com/196.jpg'),
(197, '../php/product-images/admin@bns.com/197.jpg'),
(198, '../php/product-images/admin@bns.com/198.jpg'),
(199, '../php/product-images/admin@bns.com/1.jpg'),
(200, '../php/product-images/admin@bns.com/5.jpg'),
(201, '../php/product-images/abhilashadevkar@gmail.com/electronics.png'),
(202, '../php/product-images/abhilashadevkar@gmail.com/electronics.png'),
(203, '../php/product-images/abhilashadevkar@gmail.com/jobs.png'),
(204, '../php/product-images/abhilashadevkar@gmail.com/book1.png'),
(205, '../php/product-images/abhilashadevkar@gmail.com/electronics.png'),
(206, '../php/product-images/abhilashadevkar@gmail.com/jobs.png'),
(207, '../php/product-images/abhilashadevkar@gmail.com/pet.jpg'),
(208, '../php/product-images/abhilashadevkar@gmail.com/book1.png'),
(209, '../php/product-images/abhilashadevkar@gmail.com/book1.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `email_id` varchar(30) NOT NULL,
  `utility_id` bigint(30) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`email_id`, `utility_id`, `timestamp`) VALUES
('abhilashadevkar@gmail.com', 69, '2019-12-03 23:48:18.558484'),
('abhilashadevkar@gmail.com', 98, '2019-12-03 23:48:21.872882'),
('admin@bns.com', 4, '2019-11-25 07:02:15.000000'),
('admin@bns.com', 7, '2019-11-25 07:02:15.000000'),
('admin@bns.com', 8, '2019-11-25 07:02:15.000000'),
('admin@bns.com', 49, '2019-11-25 07:02:15.000000'),
('admin@bns.com', 126, '2019-11-25 07:02:15.000000'),
('admin@bns.com', 152, '2019-11-25 07:02:15.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`utility_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `utility_category`
--
ALTER TABLE `utility_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `utility_image`
--
ALTER TABLE `utility_image`
  ADD PRIMARY KEY (`utility_id`,`image_path`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`email_id`,`utility_id`),
  ADD KEY `utility_id` (`utility_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `utility`
--
ALTER TABLE `utility`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `utility_image`
--
ALTER TABLE `utility_image`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `utility_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`);

--
-- Constraints for table `utility`
--
ALTER TABLE `utility`
  ADD CONSTRAINT `utility_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `utility_category` (`category_id`),
  ADD CONSTRAINT `utility_ibfk_2` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`);

--
-- Constraints for table `utility_image`
--
ALTER TABLE `utility_image`
  ADD CONSTRAINT `utility_image_idfk_1` FOREIGN KEY (`utility_id`) REFERENCES `utility` (`utility_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `user` (`email_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`utility_id`) REFERENCES `utility` (`utility_id`);
