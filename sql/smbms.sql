/*
 Navicat Premium Data Transfer

 Source Server         : test1
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : smbms

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 09/12/2020 10:59:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for d_admin
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin`  (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `a_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `a_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `a_power` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `a_describe` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_admin
-- ----------------------------
INSERT INTO `d_admin` VALUES (1, 'zxk', '696E25FDACEE8106BC5232AFC69155D6', '周荀凯', '13813813811', '1', '高');
INSERT INTO `d_admin` VALUES (3, 'zh', '696E25FDACEE8106BC5232AFC69155D6', '张欢', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES (4, 'zk', '696E25FDACEE8106BC5232AFC69155D6', '赵凯', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES (5, 'ywj', '696E25FDACEE8106BC5232AFC69155D6', '杨雯雯', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES (6, 'wh', '696E25FDACEE8106BC5232AFC69155D6', '王皓', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES (7, 'zw', '696E25FDACEE8106BC5232AFC69155D6', '张伟', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES (8, 'zj', '696E25FDACEE8106BC5232AFC69155D6', '赵佳', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES (9, 'wf', '696E25FDACEE8106BC5232AFC69155D6', '王凡', '138138138', '1', '高');
INSERT INTO `d_admin` VALUES (11, 'jzh', '696E25FDACEE8106BC5232AFC69155D6', '蒋子华', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES (12, 'xl', '696E25FDACEE8106BC5232AFC69155D6', '薛磊', '138138138', '2', '低');
INSERT INTO `d_admin` VALUES (14, 'faker', '7FA8282AD93047A4D6FE6111C93B308A', '12', '1', '1', '高');

-- ----------------------------
-- Table structure for d_class
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_classid` int(11) NOT NULL,
  `c_classname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `c_counsellor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_class
-- ----------------------------
INSERT INTO `d_class` VALUES (1, 141, '生物', '徐超');
INSERT INTO `d_class` VALUES (2, 151, '应化', '刘晨');
INSERT INTO `d_class` VALUES (3, 142, '土木', '孙玲');
INSERT INTO `d_class` VALUES (4, 161, '物流', '刘阳');
INSERT INTO `d_class` VALUES (5, 153, '数师', '张宇');
INSERT INTO `d_class` VALUES (6, 162, '物流', '刘阳');
INSERT INTO `d_class` VALUES (7, 171, '自动化', '周涵涵');
INSERT INTO `d_class` VALUES (8, 154, '土木', '孙玲');
INSERT INTO `d_class` VALUES (9, 151, '纺织', '赵凯');
INSERT INTO `d_class` VALUES (10, 153, '金融', '刘培');

-- ----------------------------
-- Table structure for d_dormgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_dormgrade`;
CREATE TABLE `d_dormgrade`  (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `d_grade` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`g_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_dormgrade
-- ----------------------------
INSERT INTO `d_dormgrade` VALUES (1, 301, '24号楼', 45, '2019-04-25 10:51:17', '2020-12-08 20:31:01');
INSERT INTO `d_dormgrade` VALUES (2, 302, '24号楼', 7, '2019-05-01 16:36:47', '2019-05-01 16:36:55');
INSERT INTO `d_dormgrade` VALUES (3, 322, '24号楼', 8, '2019-05-04 16:37:42', '2019-05-04 16:37:47');
INSERT INTO `d_dormgrade` VALUES (4, 602, '23号楼', 7, '2019-05-08 16:38:25', '2019-05-08 16:38:30');
INSERT INTO `d_dormgrade` VALUES (5, 112, '22号楼', 7, '2019-05-12 16:38:53', '2019-05-12 16:39:00');
INSERT INTO `d_dormgrade` VALUES (6, 222, '27号楼', 9, '2019-05-09 16:39:37', '2019-05-09 16:39:41');
INSERT INTO `d_dormgrade` VALUES (7, 213, '27号楼', 8, '2019-05-10 16:40:02', '2019-05-10 16:40:08');
INSERT INTO `d_dormgrade` VALUES (8, 12321, '31231', 23123, '2020-12-08 19:47:23', '2020-12-08 19:47:23');

-- ----------------------------
-- Table structure for d_dormitoryinfo
-- ----------------------------
DROP TABLE IF EXISTS `d_dormitoryinfo`;
CREATE TABLE `d_dormitoryinfo`  (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_dormitoryid` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `d_bedtotal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `d_bed` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `a_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_dormitoryinfo
-- ----------------------------
INSERT INTO `d_dormitoryinfo` VALUES (1, 311, '24号楼', '4', '3', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (2, 322, '24号楼', '4', '4', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (3, 601, '23号楼', '6', '6', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES (4, 602, '23号楼', '6', '5', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES (5, 111, '22号楼', '4', '4', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES (6, 112, '22号楼', '4', '3', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES (7, 222, '27号楼', '6', '6', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES (8, 213, '27号楼', '4', '4', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES (9, 312, '26号楼', '6', '6', '薛磊');
INSERT INTO `d_dormitoryinfo` VALUES (10, 313, '22号楼', '4', '4', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES (11, 323, '22号楼', '6', '5', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES (12, 301, '24号楼', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (13, 302, '24号楼', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (14, 423, '29号楼', '4', '3', '郭浩然');

-- ----------------------------
-- Table structure for d_dormrepair
-- ----------------------------
DROP TABLE IF EXISTS `d_dormrepair`;
CREATE TABLE `d_dormrepair`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `r_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_dormrepair
-- ----------------------------
INSERT INTO `d_dormrepair` VALUES (1, 301, '24号楼', '王涛', '水池', '2019-05-13 22:39:58', '2019-05-13 22:39:58');
INSERT INTO `d_dormrepair` VALUES (2, 322, '24号楼', '王涛', '灯管', '2019-05-11 16:29:20', '2019-05-14 16:29:35');
INSERT INTO `d_dormrepair` VALUES (3, 601, '23号楼', '冯军', '水龙头', '2019-05-15 16:31:14', '2019-05-14 16:31:20');
INSERT INTO `d_dormrepair` VALUES (4, 601, '23号楼', '冯军', '插孔', '2019-05-15 16:31:56', '2019-05-15 16:32:04');
INSERT INTO `d_dormrepair` VALUES (5, 213, '27号楼', '冯军', '排风扇', '2019-05-18 16:32:54', '2019-05-14 16:33:00');
INSERT INTO `d_dormrepair` VALUES (6, 312, '26号楼', '彭建国', '空调', '2019-05-20 16:33:56', '2019-05-20 16:34:01');

-- ----------------------------
-- Table structure for d_stgrade
-- ----------------------------
DROP TABLE IF EXISTS `d_stgrade`;
CREATE TABLE `d_stgrade`  (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `s_grade` int(11) NULL DEFAULT NULL,
  `s_classid` int(11) NULL DEFAULT NULL,
  `s_dormitoryid` int(11) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`g_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_stgrade
-- ----------------------------
INSERT INTO `d_stgrade` VALUES (1, 1413032001, '张杰', 6, 141, 301, '2019-04-26 09:56:51', '2019-04-26 11:02:13');
INSERT INTO `d_stgrade` VALUES (2, 1413032002, '赵凯', 7, 141, 301, '2019-05-01 17:00:05', '2019-05-01 17:00:13');
INSERT INTO `d_stgrade` VALUES (3, 1413032003, '许文文', 6, 141, 301, '2019-05-06 17:00:54', '2019-05-06 17:01:01');
INSERT INTO `d_stgrade` VALUES (4, 1413032003, '许文文', 7, 141, 301, '2019-05-16 17:01:33', '2019-05-16 17:02:15');
INSERT INTO `d_stgrade` VALUES (5, 1413032004, '王浩', 7, 141, 301, '2019-05-10 17:03:03', '2019-05-10 17:03:09');
INSERT INTO `d_stgrade` VALUES (6, 1413032005, '张伟', 8, 141, 301, '2019-05-14 17:03:53', '2019-05-14 17:03:56');
INSERT INTO `d_stgrade` VALUES (7, 1513112412, '赵跃', 9, 151, 112, '2019-05-08 17:05:04', '2019-05-08 17:05:07');
INSERT INTO `d_stgrade` VALUES (8, 1513112412, '赵跃', 9, 151, 112, '2019-05-17 17:05:34', '2019-05-17 17:05:39');
INSERT INTO `d_stgrade` VALUES (9, 1513122418, '田野', 8, 151, 213, '2019-05-15 17:06:28', '2019-05-15 17:06:35');
INSERT INTO `d_stgrade` VALUES (10, 1513122419, '张嘉佳', 8, 151, 213, '2019-05-15 17:07:09', '2019-05-15 17:07:13');

-- ----------------------------
-- Table structure for d_student
-- ----------------------------
DROP TABLE IF EXISTS `d_student`;
CREATE TABLE `d_student`  (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `s_sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `s_age` int(11) NULL DEFAULT NULL,
  `s_phone` bigint(20) NULL DEFAULT NULL,
  `s_classid` int(11) NOT NULL,
  `s_classname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `s_dormitoryid` int(11) NOT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_student
-- ----------------------------
INSERT INTO `d_student` VALUES (1, 1413032001, '张杰', '女', 23, 13813813811, 141, '生物', 301);
INSERT INTO `d_student` VALUES (2, 1413032002, '赵凯', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (3, 1413032003, '许文文', '男', 21, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (4, 1413032004, '王浩', '男', 22, 138138138, 141, '生物', 301);
INSERT INTO `d_student` VALUES (5, 1413032005, '张伟', '男', 22, 138138138, 142, '土木', 301);
INSERT INTO `d_student` VALUES (6, 1413032006, '郭顶', '男', 21, 138138138, 142, '土木', 301);
INSERT INTO `d_student` VALUES (7, 1513112411, '曹原', '男', 20, 138138138, 151, '应化', 112);
INSERT INTO `d_student` VALUES (8, 1513112412, '赵跃', '男', 21, 138138138, 151, '纺织', 112);
INSERT INTO `d_student` VALUES (9, 1513112413, '孙畅', '男', 21, 138138138, 151, '纺织', 112);
INSERT INTO `d_student` VALUES (10, 1513122417, '周帆', '男', 21, 138138138, 161, '物流', 213);
INSERT INTO `d_student` VALUES (11, 1513122418, '田野', '男', 21, 138138138, 153, '数师', 213);
INSERT INTO `d_student` VALUES (12, 1513122419, '张嘉佳', '男', 20, 138138138, 153, '金融', 213);
INSERT INTO `d_student` VALUES (13, 1513122420, '陈昊', '男', 21, 138138138, 153, '金融', 213);

-- ----------------------------
-- Table structure for d_visitor
-- ----------------------------
DROP TABLE IF EXISTS `d_visitor`;
CREATE TABLE `d_visitor`  (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `v_phone` bigint(20) NULL DEFAULT NULL,
  `v_dormitoryid` int(11) NULL DEFAULT NULL,
  `v_dormbuilding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`v_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of d_visitor
-- ----------------------------
INSERT INTO `d_visitor` VALUES (1, '郑杰', 138138138, 301, '24号楼', '2019-05-14 13:26:13');
INSERT INTO `d_visitor` VALUES (2, '李博', 138138138, 322, '24号楼', '2019-05-12 19:36:23');
INSERT INTO `d_visitor` VALUES (3, '张盈盈', 138138138, 601, '23号楼', '2019-05-13 19:37:11');
INSERT INTO `d_visitor` VALUES (4, '王涛', 138138138, 111, '22号楼', '2019-05-15 19:37:46');
INSERT INTO `d_visitor` VALUES (5, '胡浩', 138138138, 222, '27号楼', '2019-05-16 19:38:27');
INSERT INTO `d_visitor` VALUES (6, '陈昊', 138138138, 213, '27号楼', '2019-05-18 19:39:03');
INSERT INTO `d_visitor` VALUES (7, '刘军', 138138138, 213, '27号楼', '2019-05-20 19:39:42');
INSERT INTO `d_visitor` VALUES (8, '黄智', 138138138, 312, '26号楼', '2019-05-22 19:46:38');
INSERT INTO `d_visitor` VALUES (9, '郑杰', 123123123, 311, '24号楼', '2019-05-16 16:59:06');
INSERT INTO `d_visitor` VALUES (10, '12313', 2131, 2323, '1231', '2020-12-08 19:52:27');

-- ----------------------------
-- Table structure for smbms_address
-- ----------------------------
DROP TABLE IF EXISTS `smbms_address`;
CREATE TABLE `smbms_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `contact` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `addressDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收货地址明细',
  `postCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮编',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `createdBy` bigint(20) NULL DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) NULL DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `userId` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_address
-- ----------------------------
INSERT INTO `smbms_address` VALUES (1, '王丽', '北京市东城区东交民巷44号', '100010', '13678789999', 1, '2016-04-13 00:00:00', NULL, NULL, 1);
INSERT INTO `smbms_address` VALUES (2, '张红丽', '北京市海淀区丹棱街3号', '100000', '18567672312', 1, '2016-04-13 00:00:00', NULL, NULL, 1);
INSERT INTO `smbms_address` VALUES (3, '任志强', '北京市东城区美术馆后街23号', '100021', '13387906742', 1, '2016-04-13 00:00:00', NULL, NULL, 1);
INSERT INTO `smbms_address` VALUES (4, '曹颖', '北京市朝阳区朝阳门南大街14号', '100053', '13568902323', 1, '2016-04-13 00:00:00', NULL, NULL, 2);
INSERT INTO `smbms_address` VALUES (5, '李慧', '北京市西城区三里河路南三巷3号', '100032', '18032356666', 1, '2016-04-13 00:00:00', NULL, NULL, 3);
INSERT INTO `smbms_address` VALUES (6, '王国强', '北京市顺义区高丽营镇金马工业区18号', '100061', '13787882222', 1, '2016-04-13 00:00:00', NULL, NULL, 3);

-- ----------------------------
-- Table structure for smbms_bill
-- ----------------------------
DROP TABLE IF EXISTS `smbms_bill`;
CREATE TABLE `smbms_bill`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `billCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '账单编码',
  `productName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `productDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品描述',
  `productUnit` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '商品单位',
  `productCount` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品数量',
  `totalPrice` decimal(20, 2) NULL DEFAULT NULL COMMENT '商品总额',
  `isPayment` int(10) NULL DEFAULT NULL COMMENT '是否支付（1：未支付 2：已支付）',
  `createdBy` bigint(20) NULL DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) NULL DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `providerId` int(20) NULL DEFAULT NULL COMMENT '供应商ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_bill
-- ----------------------------
INSERT INTO `smbms_bill` VALUES (1, 'BILL2016_001', '洗发水、护发素', '日用品-洗发、护发', '瓶', 500.00, 25000.00, 2, 1, '2014-12-14 13:02:03', NULL, NULL, 13);
INSERT INTO `smbms_bill` VALUES (2, 'BILL2016_002', '香皂、肥皂、药皂', '日用品-皂类', '块', 1000.00, 10000.00, 2, 1, '2016-03-23 04:20:40', NULL, NULL, 13);
INSERT INTO `smbms_bill` VALUES (3, 'BILL2016_003', '大豆油', '食品-食用油', '斤', 300.00, 5890.00, 2, 1, '2014-12-14 13:02:03', NULL, NULL, 6);
INSERT INTO `smbms_bill` VALUES (4, 'BILL2016_004', '橄榄油', '食品-进口食用油', '斤', 200.00, 9800.00, 2, 1, '2013-10-10 03:12:13', NULL, NULL, 7);
INSERT INTO `smbms_bill` VALUES (5, 'BILL2016_005', '洗洁精', '日用品-厨房清洁', '瓶', 500.00, 7000.00, 2, 1, '2014-12-14 13:02:03', NULL, NULL, 9);
INSERT INTO `smbms_bill` VALUES (6, 'BILL2016_006', '美国大杏仁', '食品-坚果', '袋', 300.00, 5000.00, 2, 1, '2016-04-14 06:08:09', NULL, NULL, 4);
INSERT INTO `smbms_bill` VALUES (7, 'BILL2016_007', '沐浴液、精油', '日用品-沐浴类', '瓶', 500.00, 23000.00, 1, 1, '2016-07-22 10:10:22', NULL, NULL, 14);
INSERT INTO `smbms_bill` VALUES (8, 'BILL2016_008', '不锈钢盘碗', '日用品-厨房用具', '个', 600.00, 6000.00, 2, 1, '2016-04-14 05:12:13', NULL, NULL, 14);
INSERT INTO `smbms_bill` VALUES (9, 'BILL2016_009', '塑料杯', '日用品-杯子', '个', 350.00, 1750.00, 2, 1, '2016-02-04 11:40:20', NULL, NULL, 14);
INSERT INTO `smbms_bill` VALUES (10, 'BILL2016_010', '豆瓣酱', '食品-调料', '瓶', 200.00, 2000.00, 2, 1, '2013-10-29 05:07:03', NULL, NULL, 8);
INSERT INTO `smbms_bill` VALUES (11, 'BILL2016_011', '海之蓝', '饮料-国酒', '瓶', 50.00, 10000.00, 1, 1, '2016-04-14 16:16:00', NULL, NULL, 1);
INSERT INTO `smbms_bill` VALUES (12, 'BILL2016_012', '芝华士', '饮料-洋酒', '瓶', 20.00, 6000.00, 1, 1, '2016-09-09 17:00:00', NULL, NULL, 1);
INSERT INTO `smbms_bill` VALUES (13, 'BILL2016_013', '长城红葡萄酒', '饮料-红酒', '瓶', 60.00, 800.00, 2, 1, '2016-11-14 15:23:00', NULL, NULL, 1);
INSERT INTO `smbms_bill` VALUES (14, 'BILL2016_014', '泰国香米', '食品-大米', '斤', 400.00, 5000.00, 2, 1, '2016-10-09 15:20:00', NULL, NULL, 3);
INSERT INTO `smbms_bill` VALUES (15, 'BILL2016_015', '东北大米', '食品-大米', '斤', 600.00, 4000.00, 2, 1, '2016-11-14 14:00:00', NULL, NULL, 3);
INSERT INTO `smbms_bill` VALUES (16, 'BILL2016_016', '可口可乐', '饮料', '瓶', 2000.00, 6000.00, 2, 1, '2012-03-27 13:03:01', NULL, NULL, 2);
INSERT INTO `smbms_bill` VALUES (17, 'BILL2016_017', '脉动', '饮料', '瓶', 1500.00, 4500.00, 2, 1, '2016-05-10 12:00:00', NULL, NULL, 2);
INSERT INTO `smbms_bill` VALUES (18, 'BILL2016_018', '哇哈哈', '饮料', '瓶', 2000.00, 4000.00, 2, 1, '2015-11-24 15:12:03', NULL, NULL, 2);

-- ----------------------------
-- Table structure for smbms_provider
-- ----------------------------
DROP TABLE IF EXISTS `smbms_provider`;
CREATE TABLE `smbms_provider`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `proCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商编码',
  `proName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `proDesc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商详细描述',
  `proContact` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商联系人',
  `proPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `proAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `proFax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '传真',
  `createdBy` bigint(20) NULL DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `modifyBy` bigint(20) NULL DEFAULT NULL COMMENT '更新者（userId）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_provider
-- ----------------------------
INSERT INTO `smbms_provider` VALUES (1, 'BJ_GYS001', '北京三木堂商贸有限公司', '长期合作伙伴，主营产品:茅台、五粮液、郎酒、酒鬼酒、泸州老窖、赖茅酒、法国红酒等', '张国强', '13566667777', '北京市丰台区育芳园北路', '010-58858787', 1, '2013-03-21 16:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (2, 'HB_GYS001', '石家庄帅益食品贸易有限公司', '长期合作伙伴，主营产品:饮料、水饮料、植物蛋白饮料、休闲食品、果汁饮料、功能饮料等', '王军', '13309094212', '河北省石家庄新华区', '0311-67738876', 1, '2016-04-13 04:20:40', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (3, 'GZ_GYS001', '深圳市泰香米业有限公司', '初次合作伙伴，主营产品：良记金轮米,龙轮香米等', '郑程瀚', '13402013312', '广东省深圳市福田区深南大道6006华丰大厦', '0755-67776212', 1, '2014-03-21 16:56:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (4, 'GZ_GYS002', '深圳市喜来客商贸有限公司', '长期合作伙伴，主营产品：坚果炒货.果脯蜜饯.天然花茶.营养豆豆.特色美食.进口食品.海味零食.肉脯肉', '林妮', '18599897645', '广东省深圳市福龙工业区B2栋3楼西', '0755-67772341', 1, '2013-03-22 16:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (5, 'JS_GYS001', '兴化佳美调味品厂', '长期合作伙伴，主营产品：天然香辛料、鸡精、复合调味料', '徐国洋', '13754444221', '江苏省兴化市林湖工业区', '0523-21299098', 1, '2015-11-22 16:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (6, 'BJ_GYS002', '北京纳福尔食用油有限公司', '长期合作伙伴，主营产品：山茶油、大豆油、花生油、橄榄油等', '马莺', '13422235678', '北京市朝阳区珠江帝景1号楼', '010-588634233', 1, '2012-03-21 17:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (7, 'BJ_GYS003', '北京国粮食用油有限公司', '初次合作伙伴，主营产品：花生油、大豆油、小磨油等', '王驰', '13344441135', '北京大兴青云店开发区', '010-588134111', 1, '2016-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (8, 'ZJ_GYS001', '慈溪市广和绿色食品厂', '长期合作伙伴，主营产品：豆瓣酱、黄豆酱、甜面酱，辣椒，大蒜等农产品', '薛圣丹', '18099953223', '浙江省宁波市慈溪周巷小安村', '0574-34449090', 1, '2013-11-21 06:02:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (9, 'GX_GYS001', '优百商贸有限公司', '长期合作伙伴，主营产品：日化产品', '李立国', '13323566543', '广西南宁市秀厢大道42-1号', '0771-98861134', 1, '2013-03-21 19:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (10, 'JS_GYS002', '南京火头军信息技术有限公司', '长期合作伙伴，主营产品：不锈钢厨具等', '陈女士', '13098992113', '江苏省南京市浦口区浦口大道1号新城总部大厦A座903室', '025-86223345', 1, '2013-03-25 16:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (11, 'GZ_GYS003', '广州市白云区美星五金制品厂', '长期合作伙伴，主营产品：海绵床垫、坐垫、靠垫、海绵枕头、头枕等', '梁天', '13562276775', '广州市白云区钟落潭镇福龙路20号', '020-85542231', 1, '2016-12-21 06:12:17', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (12, 'BJ_GYS004', '北京隆盛日化科技', '长期合作伙伴，主营产品：日化环保清洗剂，家居洗涤专卖、洗涤用品网、墙体除霉剂、墙面霉菌清除剂等', '孙欣', '13689865678', '北京市大兴区旧宫', '010-35576786', 1, '2014-11-21 12:51:11', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (13, 'SD_GYS001', '山东豪克华光联合发展有限公司', '长期合作伙伴，主营产品：洗衣皂、洗衣粉、洗衣液、洗洁精、消杀类、香皂等', '吴洪转', '13245468787', '山东济阳济北工业区仁和街21号', '0531-53362445', 1, '2015-01-28 10:52:07', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (14, 'JS_GYS003', '无锡喜源坤商行', '长期合作伙伴，主营产品：日化品批销', '周一清', '18567674532', '江苏无锡盛岸西路', '0510-32274422', 1, '2016-04-23 11:11:11', NULL, NULL);
INSERT INTO `smbms_provider` VALUES (15, 'ZJ_GYS002', '乐摆日用品厂', '长期合作伙伴，主营产品：各种中、高档塑料杯，塑料乐扣水杯（密封杯）、保鲜杯（保鲜盒）、广告杯、礼品杯', '王世杰', '13212331567', '浙江省金华市义乌市义东路', '0579-34452321', 1, '2016-08-22 10:01:30', NULL, NULL);

-- ----------------------------
-- Table structure for smbms_role
-- ----------------------------
DROP TABLE IF EXISTS `smbms_role`;
CREATE TABLE `smbms_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `roleCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色编码',
  `roleName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '角色名称',
  `createdBy` bigint(20) NULL DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) NULL DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_role
-- ----------------------------
INSERT INTO `smbms_role` VALUES (1, 'SMBMS_ADMIN', '系统管理员', 1, '2016-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_role` VALUES (2, 'SMBMS_MANAGER', '经理', 1, '2016-04-13 00:00:00', NULL, NULL);
INSERT INTO `smbms_role` VALUES (3, 'SMBMS_EMPLOYEE', '普通员工', 1, '2016-04-13 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for smbms_user
-- ----------------------------
DROP TABLE IF EXISTS `smbms_user`;
CREATE TABLE `smbms_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户密码',
  `gender` int(10) NULL DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机',
  `address` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `userRole` int(10) NULL DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `createdBy` bigint(20) NULL DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) NULL DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smbms_user
-- ----------------------------
INSERT INTO `smbms_user` VALUES (1, 'admin', 'admin', '1234567', 1, '1983-10-10', '13688889999', '北京市海淀区成府路207号', 1, 1, '2013-03-21 16:52:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (2, 'liming', 'lm', '0000000', 2, '1983-12-09', '13688884457', '北京市东城区前门东大街9号', 2, 18, '2020-12-02 03:08:50', NULL, NULL);
INSERT INTO `smbms_user` VALUES (5, 'hanlubiao', '韩路彪', '0000000', 2, '1984-06-05', '18567542321', '北京市朝阳区北辰中心12号', 2, 1, '2014-12-31 19:52:09', NULL, NULL);
INSERT INTO `smbms_user` VALUES (6, 'zhanghua', '张华', '0000000', 2, '1983-06-15', '13544561111', '北京市海淀区学院路61号', 3, 18, '2020-12-02 03:09:36', NULL, NULL);
INSERT INTO `smbms_user` VALUES (8, 'zhaoyan', '赵燕', '0000000', 1, '1986-03-07', '18098764545', '北京市海淀区回龙观小区10号楼', 3, 1, '2016-04-21 13:54:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (10, 'sunlei', '孙磊', '0000000', 2, '1981-01-04', '13387676765', '北京市朝阳区管庄新月小区12楼', 3, 1, '2015-05-06 10:52:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (11, 'sunxing', '孙兴', '0000000', 2, '1978-03-12', '13367890900', '北京市朝阳区建国门南大街10号', 3, 1, '2016-11-09 16:51:17', NULL, NULL);
INSERT INTO `smbms_user` VALUES (12, 'zhangchen', '张晨', '0000000', 1, '1986-03-28', '18098765434', '朝阳区管庄路口北柏林爱乐三期13号楼', 3, 1, '2016-08-09 05:52:37', 1, '2016-04-14 14:15:36');
INSERT INTO `smbms_user` VALUES (13, 'dengchao', '邓超', '0000000', 2, '1981-11-04', '13689674534', '北京市海淀区北航家属院10号楼', 3, 1, '2016-07-11 08:02:47', NULL, NULL);
INSERT INTO `smbms_user` VALUES (14, 'yangguo', '杨过', '0000000', 2, '1980-01-01', '13388886623', '北京市朝阳区北苑家园茉莉园20号楼', 3, 1, '2015-02-01 03:52:07', NULL, NULL);
INSERT INTO `smbms_user` VALUES (15, 'zhaomin', '赵敏', '0000000', 1, '1987-12-04', '18099897657', '北京市昌平区天通苑3区12号楼', 2, 1, '2015-09-12 12:02:12', NULL, NULL);
INSERT INTO `smbms_user` VALUES (18, 'faker', 'faker', '1111111', 1, '2020-11-30', '15071302948', 'aa', 2, 1, '2020-12-01 10:43:05', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
