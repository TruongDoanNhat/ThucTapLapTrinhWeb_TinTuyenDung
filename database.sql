/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : databasetintuyendung

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 16/04/2023 21:08:08
*/
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `companyId` int NULL DEFAULT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `type` tinyint NOT NULL,
  `role` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `createDate` date NOT NULL,
  `updateDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 1, '20130340@st.hcmuaf.edu.vn', 'busi', 's2t085INWPYloRMPvg5QKEtGClI=', 'Nguyen', 0, 2, 1, '2023-04-05', NULL);
INSERT INTO `account` VALUES (2, NULL, '20130348@st.hcmuaf.edu.vn', 'admin', 's2t085INWPYloRMPvg5QKEtGClI=', 'ADMIN', 0, 0, 1, '2023-04-09', NULL);
INSERT INTO `account` VALUES (3, NULL, '20130342@st.hcmuaf.edu.vn', 'candi', 's2t085INWPYloRMPvg5QKEtGClI=', 'candi', 0, 1, 1, '2023-04-09', NULL);
INSERT INTO `account` VALUES (4, NULL, 'pho.02.112002@gmail.com', 'candi2', 's2t085INWPYloRMPvg5QKEtGClI=', 'Nguyen Dinh Nguyen', 0, 1, 1, '2023-04-18', NULL);

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `numAccount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `money` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `createDate` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (23, NULL, NULL, '2023-05-02');
INSERT INTO `bill` VALUES (24, '11111', '36050', '2023-05-02');
INSERT INTO `bill` VALUES (25, '', '72100', '2023-05-02');
INSERT INTO `bill` VALUES (26, '', '36050', '2023-05-03');
INSERT INTO `bill` VALUES (27, '', '36050', '2023-05-03');
INSERT INTO `bill` VALUES (28, '', '36050', '2023-05-03');
INSERT INTO `bill` VALUES (29, '', '36050', '2023-05-03');
INSERT INTO `bill` VALUES (30, '', '36050', '2023-05-03');
INSERT INTO `bill` VALUES (31, '', '36050', '2023-05-03');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `createDate` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Trí tuệ nhân tạo', '2023-04-05');
INSERT INTO `category` VALUES (2, 'Công nghệ phần mềm', '2023-04-05');
INSERT INTO `category` VALUES (3, 'Mạng', '2023-04-05');
INSERT INTO `category` VALUES (4, 'Hệ thống thông tin', '2023-04-05');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `imageId` int NULL DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `createDate` date NOT NULL,
  `updateDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, NULL, 'A', '12333', 'q9', 'abc', '2023-04-05', NULL);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createDate` date NOT NULL,
  `updateDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryId` int NULL DEFAULT NULL,
  `accountId` int NULL DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `quantity` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `salary` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rank` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gen` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `rights` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` tinyint NOT NULL,
  `createDate` date NOT NULL,
  `endDate` date NOT NULL,
  `billId` int NULL DEFAULT NULL,
  `priceId` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (4, 2, 1, 'Fresher Developer Tiếng Nhật (Ruby On Rails Or Laravel ) Có Đào Tạo 1 Năm Tại Nhật Bản', '2 người', '500 - 1,700 ', ' Hồ Chí Minh: 15A Nguyễn Trung Trực, Bình Thạnh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Tham gia các dự án công nghệ với vai trò xây dựng và phát triển các ứng dụng theo yêu cầu.\r\n\r\n・Sửa lỗi và cải thiện tính năng, tối ưu hóa hiệu suất sản phẩm.\r\n\r\n・Tham gia nghiên cứu & ứng dụng công nghệ mới vào sản phẩm.\r\n\r\n・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', 'Hỗ trợ mọi chi phí và thủ tục xin visa (đối với ứng viên tại Việt Nam).\r\n\r\n・Ngày nghỉ: Thứ 7, Chủ nhật, các ngày lễ của Nhật Bản\r\n\r\n・Môi trường làm việc chuyên nghiệp, ổn định lâu dài, được hỗ trợ phát huy năng lực.\r\n\r\n・Bảo hiểm xã hội ở Nhật Bản\r\n\r\n・Các khóa học của công ty, hội thảo (công nghệ, phần mềm, các buổi học) hoặc các khóa học trực tuyến\r\n\r\n・Thử thách công nghệ mới', 'Phải có:\r\n\r\n_ Kĩ năng giao tiếp:\r\n\r\n• Tiếng Nhật: tương đương N3 trở lên, giao tiếp tốt.\r\n\r\n• Năng động trong giao tiếp.\r\n\r\n_ Yêu cầu kỹ thuật:\r\n\r\n• Có kinh nghiệm hoặc kiến thức làm các dự án sử dụng: Ruby on Rails hoặc PHP (Laravel)\r\n\r\n• Có thể cùng giải quyết các câu hỏi khó cùng nhóm.\r\n\r\n• Không bao giờ bỏ cuộc.', 4, '2023-05-03', '2023-06-01', NULL, 2);
INSERT INTO `post` VALUES (5, 2, 1, 'Lập Trình Viên ', '52', '0', '- Đà Nẵng: Tầng 7, Tòa Nhà PVcomBank, Số 02, Đường 30 Tháng 4, Hải Châu', 'Toàn thời gian', 'Nhân viên', 'Nam', '- Thiết kế các phần mềm, website quản trị doanh nghiệp (ERP) cho các khách hàng của Nhật.\r\n\r\n- Thiết kế App để xây dựng mô hình BIM trong kiến trúc (Tương tự như Revit) và viết các AddOn Revit.\r\n\r\n- Thời gian làm việc từ thứ 2 đến thứ 6 (8h00 - 17h00)\r\n\r\n- Địa điểm làm việc: TP.HCM và Đà Nẵng', '- Lương khởi điểm cao: Dựa vào năng lực, kinh nghiệm\r\n\r\n- Được xét tăng lương 2 lần /năm\r\n\r\n- Các chế độ BHXH đầy đủ theo luật\r\n\r\n- Du lịch, khám sức khỏe hàng năm, Teambuilding (Picnic, đá bóng, cầu lông…)\r\n\r\n- Thưởng cuối năm', '- Có 2 năm kinh nghiệm trở lên\r\n\r\n- Có kinh nghiệm lập trình 1 trong các ngôn ngữ:\r\n\r\n1. C# MVC/ ASP.NET\r\n\r\n2. NodeJs/ ReactJs\r\n\r\n3. Python (biết sử dụng Revit là một lợi thế)\r\n\r\n- Biết lập trình Database: SQL Server', 1, '2023-05-03', '2023-06-03', 9, 2);
INSERT INTO `post` VALUES (6, 4, 1, 'Emv Payment Card Junior ( Salary Ranges Is From 800-2000 Usd/Month Net) - Remote - HN And HCM', '52', '800 - 2,000 USD', 'Hà Nội', 'Hợp đồng', 'Nhân viên', 'Nam', '- Working time: From 8.00 am to 17.30 pm, from Monday to Friday, 5 working days a week (for lunch break from 11.30 to 13.00)\r\n\r\n- Implement host message\r\n\r\n- Encrypt/Decrypt message format.\r\n\r\n- Handle logic flow of host based on specs', '• Attractive salary based on experience level (negotiation).\r\n\r\n• Onboard opportunity\r\n\r\n•  Working directly with foreign partner/colleague\r\n\r\n• Working time flexible\r\n\r\n• Long term project (minimum 1 year)\r\n\r\n• Work an excellent working environment with friendly coworkers\r\n\r\n• Provided necessary equipment\r\n\r\n• Working at HCM Center or HN', '- Has at least 1 year experience about EMV development programing.\r\n\r\n- Contact, contactless or swipe of the following card brands: Visa, Mastercard, Amex, JCB, Union Pay, Discover.\r\n\r\n- Has at least 1 year experience in C/C++/Java/C# programing with modular code practises.\r\n\r\n- Has strong knowledge in understanding EMV L2.\r\n\r\n- Has strong knowledge in EMV terminal hardware SDKs for Ingenico, Verifone, Pax or others\r\n\r\n- Can work remote fulltime (priority) or part time but at least 30 hours/week\r\n\r\n- Has English communication skill (speak & writing)\r\n\r\n- Able to work with different person at time zone GMT +7 when required.', 3, '2023-05-03', '2023-06-03', 4, 2);

-- ----------------------------
-- Table structure for postApplied
-- ----------------------------
DROP TABLE IF EXISTS `postApplied`;
CREATE TABLE `postApplied`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `accountEmail` TEXT NOT NULL,
  `postId` int NOT NULL,
  `fileCV` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `createDate` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of postApplied
-- ----------------------------


-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `current` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createDate` date NOT NULL,
  `updateDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES (1, '30000', '0.02', 'VND', '2023-04-19', NULL);
INSERT INTO `price` VALUES (2, '35000', '0.03', 'VND', '2023-04-20', NULL);

SET FOREIGN_KEY_CHECKS = 1;
