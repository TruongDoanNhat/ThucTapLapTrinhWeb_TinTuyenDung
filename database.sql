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
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (1, 1, '20130340@st.hcmuaf.edu.vn', 'busi', 's2t085INWPYloRMPvg5QKEtGClI=', 'Nguen', 0, 2, 1, '2023-04-05', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (2, NULL, '20130340@st.hcmuaf.edu.vn', 'admin', 's2t085INWPYloRMPvg5QKEtGClI=', 'ADMIN', 0, 0, 1, '2023-04-09', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (3, NULL, '20130340@st.hcmuaf.edu.vn', 'candi', 's2t085INWPYloRMPvg5QKEtGClI=', 'candi', 0, 1, 1, '2023-04-09', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (4, NULL, 'pho.02.112002@gmail.com', 'candi2', 's2t085INWPYloRMPvg5QKEtGClI=', 'Nguyen Dinh Nguyen', 0, 1, 1, '2023-04-18', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (5, NULL, 'alexander25xyz@gmail.com', 'cadi3', 's2t085INWPYloRMPvg5QKEtGClI=', 'Alex', 0, 1, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (6, 2, 'lethanhnghia0938@gmail.com', 'busi2', 's2t085INWPYloRMPvg5QKEtGClI=', '', 0, 2, 1, '2023-05-07', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (7, 3, 'k46cntt2020@gmail.com', 'busi3', 's2t085INWPYloRMPvg5QKEtGClI=', 'Hung', 0, 2, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (8, 4, 'noah252ltn@gmail.com', 'busi4', 's2t085INWPYloRMPvg5QKEtGClI=', 'Tien', 0, 2, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (9, NULL, 'alexanderray25n@gmail.com', 'candi4', 's2t085INWPYloRMPvg5QKEtGClI=', 'Vuong', 0, 1, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (10, 2, 'bachvocamki@gmail.com', 'busi5', 's2t085INWPYloRMPvg5QKEtGClI=', 'Hoa', 0, 2, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (11, NULL, 'sonic76922@gmail.com', 'candi5', 's2t085INWPYloRMPvg5QKEtGClI=', 'Lam', 0, 1, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (12, NULL, 'kato25w@gmail.com', 'candi6', 's2t085INWPYloRMPvg5QKEtGClI=', 'Tue', 0, 1, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (13, NULL, 'Letuyet0853@gmail.com', 'candi7', 's2t085INWPYloRMPvg5QKEtGClI=', 'Tuyet', 0, 1, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (14, NULL, 'vantung@gmail.com', 'candi9', 's2t085INWPYloRMPvg5QKEtGClI=', 'Tung', 0, 1, 1, '2023-05-22', NULL);
INSERT INTO `account` (`id`, `companyId`, `email`, `username`, `password`, `name`, `type`, `role`, `status`, `createDate`, `updateDate`) VALUES (15, NULL, 'maidora@gmail.com', 'candi8', 's2t085INWPYloRMPvg5QKEtGClI=', 'Mai', 0, 1, 1, '2023-05-22', NULL);
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
INSERT INTO `category` VALUES (5, 'Big Data và Machine Learning', '2023-05-22');

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
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (1, NULL, 'Zuhlke Engineering Vietnam', '0902 123 456', 'Số 10, đường Hoàng Diệu, phường Bến Nghé, quận 1, TP. Hồ Chí Minh', 'Công ty tự xây dựng chương trình “Great To Work” internal, nhân viên sẽ feedback ẩn danh để mọi người có thể feedback chân thật nhất, công ty rất coi trọng con người. Trang thiết bị được cung cấp đầy đủ: MacBook Pro, Apple keyboard,...', '2023-04-05', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (2, NULL, 'NFQ Asia', '0915 987 654', 'Tầng 5, tòa nhà Indochina Plaza Hanoi, số 241 Xuân Thủy, phường Dịch Vọng Hậu, quận Cầu Giấy, Hà Nội', 'Thời gian làm việc linh động, thoải mái, có thể làm ở office hoặc work from home thoải mái. Được làm việc thường xuyên với khách hàng châu Âu nên khả năng giao tiếp tiếng Anh của mình ngày càng có tiến bộ vượt bậc. Sếp và đồng nghiệp ai...', '2023-05-07', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (3, NULL, 'Orient Software Development Corp.', '0988 456 789', 'Số 128, đường Lê Lợi, phường Vĩnh Trại, thành phố Lạng Sơn, tỉnh Lạng Sơn', 'Môi trường làm việc năng động, mọi người hòa đồng, hỗ trợ nhiệt tình nhau. Thời gian làm việc linh hoạt. Có trang bị điểm tâm sáng cho nhân viên. Chiều nào cũng có ăn trái cây. Trà, cafe, bánh, kẹo phủ đầy pantry. Đa số dự án ko OT, nếu...\r\n', '2023-05-07', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (4, NULL, 'Coc Coc', '0973 321 654', 'Số 56, đường Lý Thường Kiệt, phường Tân An, thành phố Buôn Ma Thuột, tỉnh Đắk Lắk', 'Ở Cốc Cốc thì tuyệt vời nhất là con người, gần như không có khoảng cách giữa CEO, Leader và nhân viên cho tới các cô Maid ( ít công ty có các cô Maid riêng như ở đây ). Cụ thể thì tôi có thể gặp mặt và bắt chuyện với CEO, Leader của mình...\r\n.', '2023-05-07', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (5, NULL, 'Tyme', '0962 654 321', 'Số 123, đường Hùng Vương, phường Đoàn Kết, thành phố Phan Rang-Tháp Chàm, tỉnh Ninh Thuận', 'Công ty có chế độ lương và thưởng tốt, khá cảnh trạnh trên thị trường. Có review performance hàng năng cùng với nhiều chế độ đãi ngộ, chăm sóc sức khoẻ của nhân viên và gia đình (premium health care), nhiều ngày phép năm, off ngày sinh...\r\n', '2023-05-07', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (6, NULL, 'Niteco Vietnam Co., Ltd', '0947 987 654\r\n', 'Số 321, đường Nguyễn Công Trứ, phường An Thới, thành phố Rạch Giá, tỉnh Kiên Giang', 'Công việc: Các dự án của công ty đa dạng, mỗi dự án đều có những thách thức để học hỏi (quan trọng nhất là không OT nhiều). Đồng nghiệp: dễ mến và có chuyên môn giỏi nên môi trường làm việc vui vẻ không drama. Training: Làm ở Niteco..', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (7, NULL, 'Absolute Software (Vietnam) Ltd', '0936 456 789', 'Số 6, đường Trần Văn Điểm, phường 13, quận 5, TP. Hồ Chí Minh', 'Bạn bè thường hỏi thăm mình ở Absolute như thế nào? mình thường ví von, giống như nhà ít con vậy. Nếu bạn ở nhà đông con thì dù ba mẹ có thương thì sự chăm lo cũng có hạn, nhưng nhà ít con thì khác, tất cả các thành viên trong gia đình...\r\n', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (8, NULL, 'Buymed', '0936 456 789', 'Số 47, đường Lê Duẩn, phường Lộc Vượng, thành phố Nam Định, tỉnh Nam Định', 'Team rất trẻ, nhiều nhiệt huyết và năng động. Công ty phát triển nhanh, công việc và các dự án tiềm năng, được tạo nhiều cơ hội và có thể học hỏi công nghệ: NextJS, Golang, ReactNative / Flutter... Nhiều hoạt động từ câu lạc bộ thể thao...', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (9, NULL, 'Samsung Electronics HCMC CE Complex', '0898 654 321', 'Số 789, đường Trần Hưng Đạo, phường Hưng Đạo, thành phố Thái Bình, tỉnh Thái Bình', 'Samsung Electronics HCMC CE Complex', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (10, NULL, 'Teko Vietnam', '0887 987 654\r\n', 'Số 15, đường Nguyễn Văn Cừ, phường Xuân Phú, thành phố Tam Kỳ, tỉnh Quảng Nam', 'Môi trường làm việc: Mọi thứ đều tốt, văn phòng đẹp, đãi ngộ đầy đủ, bảo hiểm full lương + cho người thân, pantry luôn có đồ ăn sáng, ăn xế, hỗ trợ quay cơm trưa. Ngày phép nếu không dùng hết được giữ sang năm tiếp theo. Đồng nghiệp hoà...', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (11, NULL, 'Netcompany', '0876 456 789', 'Số 52, đường Hùng Vương, phường Trần Phú, thành phố Hà Giang, tỉnh Hà Giang', 'Văn phòng đẹp. Môi trường quốc tế, phần lớn làm việc chung với Poland và Denmark. Lương cao hơn so với mặt bằng chung. Có ăn trưa, friday bar nhậu nhẹt, đua xe Go-kart và tổ chức sinh nhật, ăn uống no nê, tăng cân vù vù. Có hỗ trợ học và...\r\n', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (12, NULL, 'Positive Thinking Company', '0865 321 654', 'Số 99, đường Trần Phú, phường Xuân Hà, thành phố Sơn La, tỉnh Sơn La', 'Văn phòng đẹp và được design theo tiêu chuẩn hiện đại hướng đến tính tiện nghi và hiệu suất cao trong công việc. Lương thưởng và phúc lợi tốt (như Hybrid working model và sẽ cung cấp laptop/ màn hình xịn). Nhân viên luôn được support...', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (13, NULL, 'LG Electronics Development Vietnam (LGEDV)', '0854 654 321', 'Số 77, đường Lê Lai, phường Phan Chu Trinh, thành phố Quy Nhơn, tỉnh Bình Định', 'Các benefit khá ổn. Công việc ổn định, làm việc với KH nước ngoài (Mỹ, Đức, Hàn, Trung). Sếp thoải mái, tâm lý. Có budget ăn uống, chơi bời hàng tháng. Event cũng khá hay ho (Men day, Thi ăn kem, Xem phim) Được tính lương OT theo...', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (14, NULL, 'KMS Technology', '0843 987 654', 'Số 210, đường Lê Hồng Phong, phường Tào Xuyên, thành phố Nha Trang, tỉnhKhánh Hòa', 'Các chính sách của công ty hỗ trợ rất nhiều cho nhân viên, giờ giấc làm việc thỏa mái, hỗ trợ chi phí học tập trên các nền tảng udemy, quan tâm tới nhân viên thông qua các event, lễ, tết, ... Dự án đa dạng trên nhiều lĩnh vực, áp dụng...', '2023-05-22', NULL);
INSERT INTO `company` (`id`, `imageId`, `name`, `phone`, `address`, `description`, `createDate`, `updateDate`) VALUES (15, NULL, 'NashTech', '0843 987 654', 'Số 43, đường Hoàng Văn Thụ, phường Vĩnh Trung, thành phố Đà Nẵng, tỉnh Đà Nẵng', 'Văn phòng đẹp, môi trường tốt, được sự giúp đỡ nhiệt tình từ các anh/chị mentor cũng như cấp trên. CÓ định hướng phát triển nghề nghiệp rõ ràng, có các khóa nâng cao skill bản thân. OT được trả lương đầy đủ, nhưng mà hầu như không có OT', '2023-05-22', NULL);


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
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (1, 1, 1, 'Lập Trình Viên AI', '3', '1000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Thưởng cuối năm', 'Phải có:\r\n\r\n_ Kĩ năng giao tiếp:\r\n\r\n• Tiếng Nhật: tương đương N3 trở lên, giao tiếp tốt.\r\n\r\n• Năng động trong giao tiếp.\r\n\r\n_ Yêu cầu kỹ thuật:\r\n\r\n• Có kinh nghiệm hoặc kiến thức làm các dự án sử dụng: Ruby on Rails hoặc PHP (Laravel)\r\n\r\n• Có thể cùng giải quyết các câu hỏi khó cùng nhóm.\r\n\r\n• Không bao giờ bỏ cuộc.', 1, '2023-04-21', '2023-05-21', 10, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (2, 3, 1, 'Quản lý mạng', '', '1000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '・Thử thách công nghệ mới', 'Phải có:\r\n\r\n_ Kĩ năng giao tiếp:\r\n\r\n• Tiếng Nhật: tương đương N3 trở lên, giao tiếp tốt.\r\n\r\n• Năng động trong giao tiếp.\r\n\r\n_ Yêu cầu kỹ thuật:\r\n\r\n• Có kinh nghiệm hoặc kiến thức làm các dự án sử dụng: Ruby on Rails hoặc PHP (Laravel)\r\n\r\n• Có thể cùng giải quyết các câu hỏi khó cùng nhóm.\r\n\r\n• Không bao giờ bỏ cuộc.', 0, '2023-05-04', '2023-06-04', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (3, 4, 1, 'Quản lý hệ thống', '1', '1000000', 'Thành Phố Hồ Chí Minh', 'Hợp đồng', 'senior', 'Nữ', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-04', '2023-06-04', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (4, 2, 1, 'Fresher Developer Tiếng Nhật (Ruby On Rails ', '2', '500 - 1,700 ', ' Hồ Chí Minh: 15A Nguyễn Trung Trực, Bình Thạnh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Tham gia các dự án công nghệ với vai trò xây dựng và phát triển các ứng dụng theo yêu cầu.\r\n\r\n・Sửa lỗi và cải thiện tính năng, tối ưu hóa hiệu suất sản phẩm.\r\n\r\n・Tham gia nghiên cứu & ứng dụng công nghệ mới vào sản phẩm.\r\n\r\n・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', 'Hỗ trợ mọi chi phí và thủ tục xin visa (đối với ứng viên tại Việt Nam).\r\n\r\n・Ngày nghỉ: Thứ 7, Chủ nhật, các ngày lễ của Nhật Bản\r\n\r\n・Môi trường làm việc chuyên nghiệp, ổn định lâu dài, được hỗ trợ phát huy năng lực.\r\n\r\n・Bảo hiểm xã hội ở Nhật Bản\r\n\r\n・Các khóa học của công ty, hội thảo (công nghệ, phần mềm, các buổi học) hoặc các khóa học trực tuyến\r\n\r\n・Thử thách công nghệ mới', 'Phải có:\r\n\r\n_ Kĩ năng giao tiếp:\r\n\r\n• Tiếng Nhật: tương đương N3 trở lên, giao tiếp tốt.\r\n\r\n• Năng động trong giao tiếp.\r\n\r\n_ Yêu cầu kỹ thuật:\r\n\r\n• Có kinh nghiệm hoặc kiến thức làm các dự án sử dụng: Ruby on Rails hoặc PHP (Laravel)\r\n\r\n• Có thể cùng giải quyết các câu hỏi khó cùng nhóm.\r\n\r\n• Không bao giờ bỏ cuộc.', 4, '2023-05-03', '2023-06-01', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (5, 2, 1, 'Lập Trình Viên ', '52', '10000000', '- Đà Nẵng: Tầng 7, Tòa Nhà PVcomBank, Số 02, Đường 30 Tháng 4, Hải Châu', 'Toàn thời gian', 'Nhân viên', 'Nam', '- Thiết kế các phần mềm, website quản trị doanh nghiệp (ERP) cho các khách hàng của Nhật.\r\n\r\n- Thiết kế App để xây dựng mô hình BIM trong kiến trúc (Tương tự như Revit) và viết các AddOn Revit.\r\n\r\n- Thời gian làm việc từ thứ 2 đến thứ 6 (8h00 - 17h00)\r\n\r\n- Địa điểm làm việc: TP.HCM và Đà Nẵng', '- Lương khởi điểm cao: Dựa vào năng lực, kinh nghiệm\r\n\r\n- Được xét tăng lương 2 lần /năm\r\n\r\n- Các chế độ BHXH đầy đủ theo luật\r\n\r\n- Du lịch, khám sức khỏe hàng năm, Teambuilding (Picnic, đá bóng, cầu lông…)\r\n\r\n- Thưởng cuối năm', '- Có 2 năm kinh nghiệm trở lên\r\n\r\n- Có kinh nghiệm lập trình 1 trong các ngôn ngữ:\r\n\r\n1. C# MVC/ ASP.NET\r\n\r\n2. NodeJs/ ReactJs\r\n\r\n3. Python (biết sử dụng Revit là một lợi thế)\r\n\r\n- Biết lập trình Database: SQL Server', 1, '2023-05-03', '2023-06-03', 9, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (6, 4, 1, 'Emv Payment Card Junior', '52', '800 - 2,000 USD', 'Hà Nội', 'Hợp đồng', 'Nhân viên', 'Nam', '- Working time: From 8.00 am to 17.30 pm, from Monday to Friday, 5 working days a week (for lunch break from 11.30 to 13.00)\r\n\r\n- Implement host message\r\n\r\n- Encrypt/Decrypt message format.\r\n\r\n- Handle logic flow of host based on specs', '• Attractive salary based on experience level (negotiation).\r\n\r\n• Onboard opportunity\r\n\r\n•  Working directly with foreign partner/colleague\r\n\r\n• Working time flexible\r\n\r\n• Long term project (minimum 1 year)\r\n\r\n• Work an excellent working environment with friendly coworkers\r\n\r\n• Provided necessary equipment\r\n\r\n• Working at HCM Center or HN', '- Has at least 1 year experience about EMV development programing.\r\n\r\n- Contact, contactless or swipe of the following card brands: Visa, Mastercard, Amex, JCB, Union Pay, Discover.\r\n\r\n- Has at least 1 year experience in C/C++/Java/C# programing with modular code practises.\r\n\r\n- Has strong knowledge in understanding EMV L2.\r\n\r\n- Has strong knowledge in EMV terminal hardware SDKs for Ingenico, Verifone, Pax or others\r\n\r\n- Can work remote fulltime (priority) or part time but at least 30 hours/week\r\n\r\n- Has English communication skill (speak & writing)\r\n\r\n- Able to work with different person at time zone GMT +7 when required.', 3, '2023-05-03', '2023-06-03', 4, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (7, 3, 1, 'Bảo mật thông tin', '1', '16000000', 'Hà Nội', 'Toàn thời gian', 'junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '・Thử thách công nghệ mới', 'Có 2 năm kinh nghiệm', 0, '2023-05-04', '2023-06-04', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (8, 2, 1, 'Lập trình trò chơi', '5', '16000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '・Thử thách công nghệ mới', 'Có 2 năm kinh nghiệm', 0, '2023-05-04', '2023-06-04', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (9, 2, 1, 'Lập trình phần mềm', '1', '1000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'junior', 'Nam', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '・Thử thách công nghệ mới', 'không yêu cầu', 0, '2023-05-04', '2023-06-04', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (10, 1, 1, 'Thực tập viên AI', '2', '3000000', 'Hà Nội', 'Kỳ thực tập', 'Thực tập', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '・Thử thách công nghệ mới', 'Phải có:\r\n\r\n_ Kĩ năng giao tiếp:\r\n\r\n• Tiếng Nhật: tương đương N3 trở lên, giao tiếp tốt.\r\n\r\n• Năng động trong giao tiếp.\r\n\r\n_ Yêu cầu kỹ thuật:\r\n\r\n• Có kinh nghiệm hoặc kiến thức làm các dự án sử dụng: Ruby on Rails hoặc PHP (Laravel)\r\n\r\n• Có thể cùng giải quyết các câu hỏi khó cùng nhóm.\r\n\r\nKhông yêu cầu', 0, '2023-05-10', '2023-06-10', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (11, 2, 1, 'Bảo trì hệ thống', '1', '20000000', 'Hà Nội', 'Hợp đồng', 'junior', 'Nam', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-04', '2023-06-04', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (12, 1, 1, 'Lập Trình Viên AI', '3', '1000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Phải có:\r\n\r\n_ Kĩ năng giao tiếp:\r\n\r\n• Tiếng Nhật: tương đương N3 trở lên, giao tiếp tốt.\r\n\r\n• Năng động trong giao tiếp.\r\n\r\n_ Yêu cầu kỹ thuật:\r\n\r\n• Có kinh nghiệm hoặc kiến thức làm các dự án sử dụng: Ruby on Rails hoặc PHP (Laravel)\r\n\r\n• Có thể cùng giải quyết các câu hỏi khó cùng nhóm.\r\n\r\n• Không bao giờ bỏ cuộc.', 0, '2023-04-21', '2023-05-21', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (13, 5, 6, 'Big Data Scientist', '1', '25000000', 'Huế', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', 'Thưởng theo hiệu quả công việc', 'Yêu cầu kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (14, 1, 7, 'Lập Trình Viên AI', '3', '52000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-15', '2023-06-15', NULL, 1);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (15, 2, 8, 'Lập Trình LOL', '1', '25000000', 'Huế', 'Toàn thời gian', 'Leader', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được công nhận và thưởng nói riêng và tuyển dụng lại nói chung nếu có thành tích xuất sắc trong công việc.', 'Có 2 năm kinh nghiệm', 0, '2023-05-01', '2023-06-01', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (16, 2, 10, 'Chuyên Viên Phát Triển Phần Mềm', '1', '1000000', 'Thành Phố Hồ Chí Minh', 'Hợp đồng', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được công nhận và thưởng nói riêng và tuyển dụng lại nói chung nếu có thành tích xuất sắc trong công việc.', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (17, 3, 6, 'Network Administrator', '1', '1000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Nữ', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-04-19', '2023-05-19', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (18, 3, 7, 'Network Administrator', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được đóng BHXH, BHYT, BHTN, Bảo hiểm thất nghiệp theo', 'Yêu cầu kinh nghiệm', 0, '2023-05-03', '2023-06-03', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (19, 3, 8, 'Network Security Specialist', '1', '1000000', 'Huế', 'Hợp đồng', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-04-11', '2023-05-11', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (20, 2, 10, 'Web Developer', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được công nhận và thưởng nói riêng và tuyển dụng lại nói chung nếu có thành tích xuất sắc trong công việc.', 'Có 2 năm kinh nghiệm', 0, '2023-05-19', '2023-06-19', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (21, 4, 7, 'IT System Engineer', '1', '1000000', 'Hà Nội', 'Toàn thời gian', 'Nhân viên', 'Nam', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được đóng BHXH, BHYT, BHTN, Bảo hiểm thất nghiệp theo', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (22, 2, 6, 'Chuyên Viên Phát Triển Phần Mềm', '1', '12000000', 'Thành Phố Hồ Chí Minh', 'Hợp đồng', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', 'Thưởng theo hiệu quả công việc', 'Có 2 năm kinh nghiệm', 0, '2023-05-21', '2023-06-21', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (23, 4, 10, 'IT System Engineer', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-16', '2023-06-16', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (24, 2, 8, 'Chuyên Viên Phát Triển Phần Mềm', '1', '9000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được công nhận và thưởng nói riêng và tuyển dụng lại nói chung nếu có thành tích xuất sắc trong công việc.', 'Có 2 năm kinh nghiệm', 0, '2023-05-22', '2023-06-22', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (25, 3, 10, 'Network Engineer', '1', '8000000', 'Hà Nội', 'Hợp đồng', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được đóng BHXH, BHYT, BHTN, Bảo hiểm thất nghiệp theo', 'Có 2 năm kinh nghiệm', 0, '2023-03-01', '2023-04-01', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (26, 3, 6, 'Kỹ Sư Mạng', '1', '6000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Leader', 'Nam', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', 'Thưởng theo hiệu quả công việc', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (27, 1, 8, ' Machine Learning Engineer', '1', '12000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Nhân viên', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-04-03', '2023-05-03', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (28, 5, 6, 'Big Data Analyst', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Kỳ thực tập', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Không yêu cầu', 0, '2023-05-22', '2023-06-22', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (29, 1, 10, 'AI Programmer', '1', '9000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các chương trình du lịch, team building của công ty.\r\n- Được hưởng chế độ nghỉ phép, phép năm và các ngày lễ theo quy định của pháp luật và chính sách của công ty.\r\n- Được đề xuất thăng tiến trong công việc và phát triển sự nghiệp.', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (30, 4, 6, 'IT System Technical Support', '1', '9000000', 'Hà Nội', 'Kỳ thực tập', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', 'Thưởng theo hiệu quả công việc', 'Có 2 năm kinh nghiệm', 0, '2023-05-25', '2023-06-25', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (31, 2, 6, ' Software Development SpecialistL', '1', '6000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', ' Thưởng theo hiệu quả công việc', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (32, 1, 6, 'Web Developer', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Leader', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-02-01', '2023-03-01', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (33, 4, 7, 'IT System Technical Support', '1', '15000000', 'Đà Nẵng', 'Toàn thời gian', 'senior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các chương trình du lịch, team building của công ty.\r\n- Được hưởng chế độ nghỉ phép, phép năm và các ngày lễ theo quy định của pháp luật và chính sách của công ty.\r\n- Được đề xuất thăng tiến trong công việc và phát triển sự nghiệp.', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (34, 2, 6, 'Software Engineer', '1', '20000000', 'Thành Phố Hồ Chí Minh', 'Kỳ thực tập', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Không yêu cầu', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (35, 1, 10, 'AI Researcher', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Leader', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được đóng BHXH, BHYT, BHTN, Bảo hiểm thất nghiệp theo', 'Có 2 năm kinh nghiệm', 0, '2023-05-12', '2023-06-12', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (36, 5, 6, 'Big Data Engineer', '1', '15000000', 'Huế', 'Toàn thời gian', 'Junior', 'Nam', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', ' Thưởng theo hiệu quả công việc', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (37, 3, 6, 'Network Engineer', '1', '15000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'senior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được tham gia các hoạt động thể thao, văn nghệ của công ty.\r\n- Được công nhận và thưởng nói riêng và tuyển dụng lại nói chung nếu có thành tích xuất sắc trong công việc.', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (38, 2, 10, 'Software Engineer', '1', '25000000', 'Hà Nội', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các chương trình du lịch, team building của công ty.\r\n- Được hưởng chế độ nghỉ phép, phép năm và các ngày lễ theo quy định của pháp luật và chính sách của công ty.\r\n- Được đề xuất thăng tiến trong công việc và phát triển sự nghiệp.', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (39, 1, 6, 'AI Researcher', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Leader', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được tham gia các chương trình du lịch, team building của công ty.\r\n- Được hưởng chế độ nghỉ phép, phép năm và các ngày lễ theo quy định của pháp luật và chính sách của công ty.\r\n- Được đề xuất thăng tiến trong công việc và phát triển sự nghiệp.', 'Có 2 năm kinh nghiệm', 0, '2023-05-17', '2023-06-17', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (40, 3, 7, 'Network Security Specialist', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được tham gia các chương trình du lịch, team building của công ty.\r\n- Được hưởng chế độ nghỉ phép, phép năm và các ngày lễ theo quy định của pháp luật và chính sách của công ty.\r\n- Được đề xuất thăng tiến trong công việc và phát triển sự nghiệp.', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (41, 5, 8, 'Big Data Engineer', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'senior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (42, 2, 6, 'AI Researcher', '1', '25000000', 'Đà Nẵng', 'Toàn thời gian', 'Junior', 'Nữ', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được đóng BHXH, BHYT, BHTN, Bảo hiểm thất nghiệp theo', 'Có 2 năm kinh nghiệm', 0, '2023-03-21', '2023-04-21', NULL, 2);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (43, 1, 7, ' Machine Learning Engineer', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'Leader', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (44, 5, 8, 'Big Data Analyst', '1', '25000000', 'Đà Nẵng', 'Kỳ thực tập', 'Junior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '- Được đóng bảo hiểm đầy đủ theo quy định của pháp luật.\r\n- Được hưởng các chế độ phúc lợi như bảo hiểm sức khỏe, bảo hiểm tai nạn, phụ cấp ăn trưa...\r\n- Được đóng BHXH, BHYT, BHTN, Bảo hiểm thất nghiệp theo', 'Không yêu cầu', 0, '2023-05-07', '2023-06-07', NULL, 0);
INSERT INTO `post` (`id`, `categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`, `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`, `priceId`) VALUES (45, 2, 10, ' Software Development Specialist', '1', '25000000', 'Thành Phố Hồ Chí Minh', 'Toàn thời gian', 'senior', 'Không yêu cầu', '・Chi tiết công việc sẽ trao đổi trong buổi phỏng vấn.', '• Working at HCM Center or HN', 'Có 2 năm kinh nghiệm', 0, '2023-05-07', '2023-06-07', NULL, 2);
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
