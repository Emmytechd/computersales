-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 04:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakes`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `category_id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`category_id`, `category`) VALUES
(1, 'Other'),
(2, 'Wedding'),
(3, 'Birthday');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `customer_id` int(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`customer_id`, `fname`, `lname`, `email`, `contact`, `address`) VALUES
(44, 'Adrian', 'Mercurio', 'mercurio@yahoo.com', '09561666494', 'Brgy. Suay Himamaylan City Neg. Occ'),
(45, 'ads', 'mers', 'maaaae@yahoo.com', '0980989', 'hgjgjg'),
(54, 'ads', 'mer', 'mamans@yahoo.com', '9999999', 'mmmss'),
(55, 'Adrian', 'Mercurio', 'admerc@yahoo.com', '09561666494', 'Brgy. Su-ay Himamaylan City Neg. Occ'),
(56, 'Adrian', 'Mercurio', 'admerc@yahoo.com', '09561666494', 'Brgy. Su-ay Himamaylan City Neg. Occ'),
(57, 'Nico', 'Raluto', 'ralutonico@yahoo.com', '09561666494', 'Brgy. Su-ay Himamaylan City Neg. Occ');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `available` int(11) NOT NULL DEFAULT '1',
  `price` int(20) NOT NULL,
  `profit` int(22) NOT NULL,
  `selling_price` int(22) NOT NULL,
  `date_in` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`product_id`, `product_name`, `quantity`, `available`, `price`, `profit`, `selling_price`, `date_in`, `category_id`, `supplier_id`, `user_id`, `product_code`, `status`) VALUES
(124, 'Caramel Cake', 50, 50, 5000, 3000, 8000, '2019-03-16', 1, 1, 22, '1001', 'available'),
(125, 'Chocolate cake', 60, 49, 4500, 1000, 5500, '2019-03-16', 1, 12, 22, '1002', 'available'),
(126, 'Banana Cake', 50, 50, 200, 100, 300, '2019-03-16', 1, 1, 22, '1003', 'available'),
(127, 'Strawberry Cake', 40, 40, 400, 100, 500, '2019-03-16', 1, 18, 22, '1004', 'available'),
(128, 'Vanilla Cake', 70, 70, 200, 100, 300, '2019-03-16', 1, 45, 22, '1005', 'available'),
(131, 'Chocolate Roll', 80, 76, 300, 50, 350, '2019-03-16', 1, 46, 22, '100', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `tblsupplier`
--

CREATE TABLE `tblsupplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsupplier`
--

INSERT INTO `tblsupplier` (`supplier_id`, `supplier_name`, `contact`, `email`, `address`) VALUES
(1, 'James Bond', 21474836, 'james@gmail.com', 'Bacolods'),
(12, 'Niel James', 2147483647, 'nielcompan@yahoo.com', 'Himamaylan'),
(18, 'Henry King', 2147483647, 'kingcakes@yahoo.com', 'Himamaylan'),
(45, 'Vince Dela Cruz', 2147483647, 'vinceyum@yahoo.com', 'Hinigaran'),
(46, 'Peter Parker', 98751234, 'parker@yaoo.com', 'Bacolod');

-- --------------------------------------------------------

--
-- Table structure for table `tbltransac`
--

CREATE TABLE `tbltransac` (
  `transac_id` int(11) NOT NULL,
  `transac_code` int(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `qty` int(20) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransac`
--

INSERT INTO `tbltransac` (`transac_id`, `transac_code`, `date`, `user_id`, `product_code`, `qty`, `price`, `total`) VALUES
(31, 1554235838, '2019-04-03', 39, '100', 1, 350, 350),
(32, 1554235838, '2019-04-03', 39, '1002', 1, 400, 400),
(33, 1554251111, '2019-04-03', 39, '100', 1, 350, 350),
(34, 1589120093, '2020-05-10', 41, '100', 1, 350, 350),
(35, 1589121141, '2020-05-10', 41, '100', 1, 350, 350);

-- --------------------------------------------------------

--
-- Table structure for table `tbltransacdetail`
--

CREATE TABLE `tbltransacdetail` (
  `detail_id` int(11) NOT NULL,
  `transac_code` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deliveryfee` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `delivery_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltransacdetail`
--

INSERT INTO `tbltransacdetail` (`detail_id`, `transac_code`, `date`, `customer_id`, `deliveryfee`, `totalprice`, `status`, `remarks`, `delivery_date`) VALUES
(18, 1554235838, '2019-04-03', 39, 150, 900, 'Confirmed', 'Your order has been confirmed!', '2019-04-05'),
(19, 1554251111, '2019-04-03', 39, 150, 500, 'Pending', '', '2019-04-05'),
(20, 1589120093, '2020-05-10', 41, 150, 500, 'Confirmed', 'Your order has been confirmed!', '2020-08-04'),
(21, 1589121141, '2020-05-10', 41, 150, 500, 'Pending', '', '1201-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` bigint(100) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `fname`, `lname`, `email`, `contact`, `address`, `position`, `username`, `pass`) VALUES
(22, 'Adrian', 'Mercurio', 'mercurio@yahoo.com', 0, '', 'Admin', 'admerc', '$2y$10$0bR0yeMq58tPpMBWx2nuau9jWuzcslpUQVqb81RNMvArQKn/x6D76'),
(23, 'niko', 'curaza', 'curaza@yahoo.com', 0, '', 'Admin', 'merc', '$2y$10$OnIOsgNRMn3Zk5rvBFmZM.9TBrmWvJBiE7YYn5C9qHNcsMFBv963u'),
(24, 'Nico', 'Raluto', 'raluto@yahoo.com', 0, '', 'Admin', 'qwerty', '$2y$10$fwsyyHkLWCmMn2bk5uu/RehETPLpZOpu0Uyn.RaMIKOi2.J8Gz5YO'),
(39, 'Adrian', 'Mercurio', 'admerc@yahoo.com', 9561666494, 'Brgy. Su-ay Himamaylan City Neg. Occ.', 'Customer', 'adam', '$2y$10$2bzJCkDR3EzQ1pFu8uskMuj65VTcznEyepurqjTbc5AgZ6/9EdvfW'),
(40, 'Nico', 'Raluto', 'ralutonico@yahoo.com', 9561666494, 'Brgy. Su-ay Himamaylan City Neg. Occ.', 'Customer', 'adams', '$2y$10$1bqSwPPZO0nb/QWXAYCBcuto38CDf.rg.YjGdK.Xpc6X9h85tIvmW'),
(41, 'Chinyere', 'Bethel', 'admin@mail.com', 8164510905, 'Lugbe', 'Customer', 'admin', '$2y$10$3bmM9rQqhjxLn.Ud62CBked8woR6cbrVNWxkTgapxK9Hf96.2KghK'),
(42, 'Emmanuel', 'Onyeama', 'emmaonyeama@gmail.com', 0, '', 'Admin', 'cake', '$2y$10$lc57vw88YYdCgLI/uOz45uaeC4AmPdvz3VgIsEpSntcIKE2C4y6yC'),
(43, 'Chinyere', 'Bethel', 'bethelchi@gmail.com', 8164510905, 'Gwags', 'Customer', 'wendy', '$2y$10$80ypfHzf15P0p3nv19MwZuN5Cy9DWf7LhWMegeE3HnDzUG/nI5fdi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_tblproducts_tblsupplier` (`supplier_id`,`user_id`);

--
-- Indexes for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tbltransac`
--
ALTER TABLE `tbltransac`
  ADD PRIMARY KEY (`transac_id`),
  ADD KEY `FK_tbltransac_details_tblcustomer` (`user_id`);

--
-- Indexes for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `customer_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tblsupplier`
--
ALTER TABLE `tblsupplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbltransac`
--
ALTER TABLE `tbltransac`
  MODIFY `transac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbltransacdetail`
--
ALTER TABLE `tbltransacdetail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
