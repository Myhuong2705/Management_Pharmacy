-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 04:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID_C` int(11) NOT NULL,
  `CName` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID_C`, `CName`, `Age`, `Phone`, `Address`, `Note`) VALUES
(1, 'Mỹ Hương', 22, '0395892273', 'Vinh - Nghệ An', 'Không'),
(5, 'y', 0, '6', '', 'y'),
(6, 't', 0, '5', '', 'e'),
(7, 'y', 0, '7', '', 'e');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `ID_I` int(11) NOT NULL,
  `ID_S` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Invoices_date` date NOT NULL,
  `Expiri` date NOT NULL,
  `Manufactured` date NOT NULL,
  `SPrice` int(11) NOT NULL,
  `Total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`ID_I`, `ID_S`, `ID_M`, `Quantity`, `Invoices_date`, `Expiri`, `Manufactured`, `SPrice`, `Total_amount`) VALUES
(1, 3, 1, 90, '2022-05-05', '2023-11-23', '2021-11-23', 37000, 3330000),
(2, 1, 2, 300, '2022-05-22', '2024-01-12', '2022-01-12', 8000, 2400000),
(15, 1, 1, 500, '2022-06-01', '2024-05-01', '2022-05-01', 46000, 23000000),
(16, 1, 1, 300, '2022-06-04', '2024-05-01', '2022-05-01', 46000, 13800000);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `ID_M` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Ingredient` varchar(250) NOT NULL,
  `Dosage_forms` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Warning` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`ID_M`, `Name`, `Ingredient`, `Dosage_forms`, `Category`, `Subject`, `Age`, `Warning`, `Price`) VALUES
(1, 'Siro Ho Bảo Thanh', 'Ô mai, Khổ hạnh nhân, Viễn chí, Ngũ vị tử, Bán hạ (Thân, Rễ), Cát cánh, Trần bì, Phục Linh, Sa sâm, Tỳ bà diệp, Xuyên bối mẫu', 'Siro', 'Những sản phẩm thảo dược', 'Trẻ em, Người cao tuổi', 'Trên 30 tháng tuổi', 'Phụ nữ có thai, Phụ nữ cho con bú', 47000),
(2, 'Cao Dán Yaguchi Tatra Giảm Đau', 'Camphor (natural), Menthol natural, Methyl salicylate', 'Miếng dán', 'Những sản phẩm thảo dược', '', 'Trên 12 tuổi', 'Phụ nữ có thai, Phụ nữ cho con bú', 8000),
(3, 'Men Vi Sinh Enterogermina Sanofi Ngừa & Trị Rối Loạn Khuẩn Chí Đường Ruột', 'Balcillus clausii', 'Hỗn dịch', 'Men vi sinh ', '', 'Trên 2 tháng tuổi', '', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `ID_personnel` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Birthday` date NOT NULL,
  `Email` varchar(200) NOT NULL,
  `CMND` int(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`ID_personnel`, `ID`, `Name`, `Phone`, `Birthday`, `Email`, `CMND`, `Address`, `Status`) VALUES
(1, 2, 'Lương Thị Mỹ Hương', '0395892273', '2000-05-27', '59k2myhuong2752000@gmail.com', 2147483647, 'Vinh - Nghệ An', 'Thực tập sinh'),
(8, 3, ' Mai Lan', '0394672213', '2000-10-10', ' 123@gmail.com', 187758323, ' Vinh - Nghệ An', ' Nhân viên thử việc'),
(9, 4, ' Trần Trung Kiên', '000033', '2022-06-08', ' 123@gmail.com', 121223, 'VietNam', ' Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `ID_P` int(11) NOT NULL,
  `ID_C` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Purchase_date` date NOT NULL,
  `PPrice` int(11) NOT NULL,
  `Total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`ID_P`, `ID_C`, `ID_M`, `Quantity`, `Purchase_date`, `PPrice`, `Total_amount`) VALUES
(1, 1, 1, 5, '2022-05-01', 6000, 30000),
(2, 1, 2, 2, '2022-05-01', 7000, 14000),
(35, 1, 1, 3, '2022-06-04', 47000, 141000),
(36, 1, 1, 6, '2022-06-04', 47000, 282000),
(37, 1, 1, 100, '2022-06-04', 47000, 4700000),
(39, 1, 1, 5, '2022-06-04', 47000, 235000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `ID_Stock` int(11) NOT NULL,
  `ID_M` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Expiri` date NOT NULL,
  `Purchases` date NOT NULL,
  `Manufactured` date NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`ID_Stock`, `ID_M`, `Quantity`, `Expiri`, `Purchases`, `Manufactured`, `Status`) VALUES
(2, 2, 300, '2024-01-10', '2022-04-13', '2022-01-10', ' '),
(3, 1, 0, '2024-01-03', '2022-03-08', '2022-01-03', 'Hết hàng'),
(4, 1, 2, '2022-05-02', '2020-07-18', '2022-05-02', 'Hết hạn'),
(10, 1, 177, '2024-05-01', '2022-06-04', '2022-05-01', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `ID_S` int(11) NOT NULL,
  `SName` varchar(100) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`ID_S`, `SName`, `Phone`, `Email`, `Address`) VALUES
(1, 'Sanofi', '0395892273', '123@gmail.com', 'Việt Nam'),
(2, 'Công Ty Tnhh Dược Phẩm Thiên Ân', '0525723352', '', 'Việt Nam'),
(3, 'Hoa Linh', '0282013533', '', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `User`, `Password`, `Type`) VALUES
(1, 'admin', 'b206e95a4384298962649e58dc7b39d4', 1),
(2, 'myhuong', 'b206e95a4384298962649e58dc7b39d4', 2),
(3, ' mailan', '68b201de9f4f68771aec0094b04005c5', 2),
(4, ' trungkien', '68b201de9f4f68771aec0094b04005c5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wage`
--

CREATE TABLE `wage` (
  `ID_Wage` int(11) NOT NULL,
  `ID_Personnel` int(11) NOT NULL,
  `Worktime` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wages`
--

CREATE TABLE `wages` (
  `ID_wages` int(11) NOT NULL,
  `ID_personnel` int(11) NOT NULL,
  `Work_time` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Wage` int(11) NOT NULL,
  `Total_wages` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wages`
--

INSERT INTO `wages` (`ID_wages`, `ID_personnel`, `Work_time`, `Date`, `Wage`, `Total_wages`) VALUES
(1, 1, 5, '2022-05-05', 22000, 110000),
(2, 1, 5, '2022-05-06', 22000, 110000),
(3, 1, 5, '2022-06-02', 35000, 175000),
(4, 8, 5, '2022-06-09', 22000, 110000),
(5, 8, 5, '2022-06-01', 35000, 175000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID_C`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`ID_I`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`ID_M`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`ID_personnel`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`ID_P`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ID_Stock`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`ID_S`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wage`
--
ALTER TABLE `wage`
  ADD PRIMARY KEY (`ID_Wage`);

--
-- Indexes for table `wages`
--
ALTER TABLE `wages`
  ADD PRIMARY KEY (`ID_wages`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID_C` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `ID_I` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `ID_M` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `ID_personnel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `ID_P` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `ID_Stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `ID_S` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wage`
--
ALTER TABLE `wage`
  MODIFY `ID_Wage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wages`
--
ALTER TABLE `wages`
  MODIFY `ID_wages` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
