/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : smart-parking

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 06/07/2021 18:08:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_car_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_manage`;
CREATE TABLE `app_car_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` varchar(1) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `park_manage_id` bigint(20) NOT NULL,
  `park_manage_name` varchar(500) DEFAULT NULL,
  `parking_lot` varchar(100) DEFAULT NULL,
  `plate_number` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  `validity_time` datetime DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_car_manage
-- ----------------------------
BEGIN;
INSERT INTO `app_car_manage` VALUES (1, '1', '2021-04-11 21:58:50', '2021-04-19 19:49:35', NULL, '212112', 36, '青岛海信', 2, '爪哇笔记', '2121', '212121', NULL, 1, 1, NULL, '2021-04-26 00:00:00', '17762018584');
COMMIT;

-- ----------------------------
-- Table structure for app_car_park_manage
-- ----------------------------
DROP TABLE IF EXISTS `app_car_park_manage`;
CREATE TABLE `app_car_park_manage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `free_time` int(11) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `max_money` decimal(18,2) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `parking_space_number` int(11) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `time_unit` int(11) DEFAULT NULL,
  `unit_cost` decimal(18,2) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_car_park_manage
-- ----------------------------
BEGIN;
INSERT INTO `app_car_park_manage` VALUES (2, 60, '2021-03-27 21:52:08', '2021-03-27 21:52:08', 100.00, '爪哇笔记', 36, '青岛海信', 12, 1, 30, 5.00, NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_car_parking_record
-- ----------------------------
DROP TABLE IF EXISTS `app_car_parking_record`;
CREATE TABLE `app_car_parking_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cost` decimal(18,2) DEFAULT NULL,
  `gmt_into` datetime DEFAULT NULL,
  `gmt_out` datetime DEFAULT NULL,
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(500) DEFAULT NULL,
  `park_manage_id` bigint(20) NOT NULL,
  `park_manage_name` varchar(500) DEFAULT NULL,
  `plate_number` varchar(100) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `order_no` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_car_parking_record
-- ----------------------------
BEGIN;
INSERT INTO `app_car_parking_record` VALUES (1, NULL, '2021-04-19 21:43:41', NULL, 36, '青岛海信', 2, '爪哇笔记', '苏E05EV8', 2, NULL);
COMMIT;

-- ----------------------------
-- Table structure for app_order
-- ----------------------------
DROP TABLE IF EXISTS `app_order`;
CREATE TABLE `app_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `order_no` varchar(200) DEFAULT NULL,
  `org_Id` bigint(20) NOT NULL,
  `park_manage_id` bigint(20) NOT NULL,
  `plate_number` varchar(100) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `total_Fee` decimal(18,2) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `user_create` bigint(20) DEFAULT NULL,
  `validity_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_order
-- ----------------------------
BEGIN;
INSERT INTO `app_order` VALUES (1, '{}', '2021-07-06 10:37:14', '123123123', 38, 2, '京N267EF', '司机可美了', 1, 35.00, 0, 1, '2021-07-07 10:38:37');
INSERT INTO `app_order` VALUES (2, NULL, '2021-07-02 13:33:09', '3323781', 38, 2, '京N267EF', '司机可美了', 1, 42.00, 1, 1, '2021-12-18 14:18:50');
INSERT INTO `app_order` VALUES (3, NULL, '2021-06-27 11:41:14', '8595363', 38, 2, '京N267EF', '司机可美了', 1, 30.00, 2, 1, '2021-08-15 06:39:09');
INSERT INTO `app_order` VALUES (4, NULL, '2021-07-03 20:37:47', '6104494', 38, 2, '京N267EF', '司机可美了', 1, 87.00, 1, 1, '2021-07-20 22:46:32');
INSERT INTO `app_order` VALUES (5, NULL, '2021-07-06 02:48:08', '5742260', 38, 2, '京N267EF', '司机可美了', 1, 87.00, 3, 1, '2021-11-13 01:18:59');
INSERT INTO `app_order` VALUES (6, NULL, '2021-07-03 04:25:30', '1358989', 38, 2, '京N267EF', '司机可美了', 1, 58.00, 1, 1, '2021-12-27 04:11:38');
INSERT INTO `app_order` VALUES (7, NULL, '2021-07-05 12:42:25', '4582642', 36, 2, '京N267EF', '司机可美了', 0, 96.00, 2, 1, '2021-08-09 01:21:01');
INSERT INTO `app_order` VALUES (8, NULL, '2021-07-09 10:07:27', '1815860', 38, 2, '京N267EF', '司机可美了', 1, 77.00, 2, 1, '2021-12-08 20:25:02');
INSERT INTO `app_order` VALUES (9, NULL, '2021-07-04 09:43:09', '9814327', 38, 2, '京N267EF', '司机可美了', 1, 12.00, 1, 1, '2021-09-21 05:28:08');
INSERT INTO `app_order` VALUES (10, NULL, '2021-07-04 14:47:14', '4919506', 36, 2, '京N267EF', '司机可美了', 1, 61.00, 0, 1, '2021-12-29 00:41:10');
INSERT INTO `app_order` VALUES (11, NULL, '2021-07-07 00:52:16', '1251781', 38, 2, '京N267EF', '司机可美了', 1, 11.00, 0, 1, '2021-08-19 05:52:30');
INSERT INTO `app_order` VALUES (12, NULL, '2021-07-01 10:58:25', '4812588', 36, 2, '京N267EF', '司机可美了', 1, 34.00, 0, 1, '2021-09-30 02:27:42');
INSERT INTO `app_order` VALUES (13, NULL, '2021-07-06 07:02:32', '3467327', 38, 2, '京N267EF', '司机可美了', 1, 85.00, 1, 1, '2021-08-21 05:07:26');
INSERT INTO `app_order` VALUES (14, NULL, '2021-07-06 14:55:19', '2649143', 38, 2, '京N267EF', '司机可美了', 1, 55.00, 0, 1, '2021-10-24 07:41:38');
INSERT INTO `app_order` VALUES (15, NULL, '2021-06-28 05:14:18', '8463069', 38, 2, '京N267EF', '司机可美了', 1, 13.00, 0, 1, '2021-10-06 13:12:55');
INSERT INTO `app_order` VALUES (16, NULL, '2021-07-04 15:25:43', '9374020', 38, 2, '京N267EF', '司机可美了', 1, 10.00, 2, 1, '2021-07-29 08:25:39');
INSERT INTO `app_order` VALUES (17, NULL, '2021-06-29 18:10:51', '8453670', 36, 2, '京N267EF', '司机可美了', 1, 74.00, 1, 1, '2021-09-02 10:52:09');
INSERT INTO `app_order` VALUES (18, NULL, '2021-06-26 12:22:57', '2103119', 38, 2, '京N267EF', '司机可美了', 1, 88.00, 3, 1, '2021-08-10 18:01:31');
INSERT INTO `app_order` VALUES (19, NULL, '2021-06-26 09:08:31', '3525761', 36, 2, '京N267EF', '司机可美了', 1, 53.00, 0, 1, '2021-10-11 04:55:46');
INSERT INTO `app_order` VALUES (20, NULL, '2021-07-08 10:54:25', '1828545', 36, 2, '京N267EF', '司机可美了', 1, 98.00, 0, 1, '2021-12-24 06:28:44');
INSERT INTO `app_order` VALUES (21, NULL, '2021-07-09 13:02:29', '5716978', 38, 2, '京N267EF', '司机可美了', 1, 56.00, 1, 1, '2021-10-18 21:52:59');
INSERT INTO `app_order` VALUES (22, NULL, '2021-06-30 17:04:55', '6562290', 38, 2, '京N267EF', '司机可美了', 1, 46.00, 1, 1, '2021-08-24 04:25:02');
INSERT INTO `app_order` VALUES (23, NULL, '2021-06-30 21:50:17', '3708834', 36, 2, '京N267EF', '司机可美了', 1, 51.00, 0, 1, '2021-08-28 06:08:37');
INSERT INTO `app_order` VALUES (24, NULL, '2021-06-30 12:01:55', '5037663', 38, 2, '京N267EF', '司机可美了', 1, 37.00, 2, 1, '2021-11-25 06:37:00');
INSERT INTO `app_order` VALUES (25, NULL, '2021-06-25 04:33:58', '5809216', 36, 2, '京N267EF', '司机可美了', 1, 13.00, 0, 1, '2021-10-14 02:16:30');
INSERT INTO `app_order` VALUES (26, NULL, '2021-07-05 02:11:05', '9589123', 36, 2, '京N267EF', '司机可美了', 1, 43.00, 2, 1, '2021-08-22 13:54:48');
INSERT INTO `app_order` VALUES (27, NULL, '2021-06-26 05:42:48', '1175913', 38, 2, '京N267EF', '司机可美了', 1, 83.00, 0, 1, '2021-09-25 15:58:17');
INSERT INTO `app_order` VALUES (28, NULL, '2021-07-08 19:29:18', '2292145', 36, 2, '京N267EF', '司机可美了', 1, 39.00, 1, 1, '2021-11-15 09:00:25');
INSERT INTO `app_order` VALUES (29, NULL, '2021-06-29 16:04:14', '6980470', 36, 2, '京N267EF', '司机可美了', 1, 80.00, 3, 1, '2021-12-30 13:52:27');
INSERT INTO `app_order` VALUES (30, NULL, '2021-07-01 13:26:43', '1368118', 36, 2, '京N267EF', '司机可美了', 1, 88.00, 2, 1, '2021-11-22 21:16:25');
INSERT INTO `app_order` VALUES (31, NULL, '2021-07-09 00:43:26', '6118498', 36, 2, '京N267EF', '司机可美了', 0, 59.00, 0, 1, '2021-10-29 16:14:38');
INSERT INTO `app_order` VALUES (32, NULL, '2021-06-29 20:02:35', '4906716', 36, 2, '京N267EF', '司机可美了', 1, 31.00, 0, 1, '2021-10-18 12:37:59');
INSERT INTO `app_order` VALUES (33, NULL, '2021-06-27 20:51:30', '6864885', 38, 2, '京N267EF', '司机可美了', 1, 38.00, 2, 1, '2021-11-09 10:55:35');
INSERT INTO `app_order` VALUES (34, NULL, '2021-06-30 03:55:28', '8528351', 36, 2, '京N267EF', '司机可美了', 1, 89.00, 1, 1, '2021-08-18 08:06:20');
INSERT INTO `app_order` VALUES (35, NULL, '2021-07-06 01:08:46', '6497539', 38, 2, '京N267EF', '司机可美了', 1, 34.00, 0, 1, '2021-11-23 08:44:28');
INSERT INTO `app_order` VALUES (36, NULL, '2021-06-29 09:16:19', '9712904', 36, 2, '京N267EF', '司机可美了', 1, 17.00, 0, 1, '2021-08-19 19:39:41');
INSERT INTO `app_order` VALUES (37, NULL, '2021-07-04 00:25:19', '8270634', 36, 2, '京N267EF', '司机可美了', 1, 38.00, 1, 1, '2021-11-20 05:25:29');
INSERT INTO `app_order` VALUES (38, NULL, '2021-07-05 10:31:07', '9558278', 38, 2, '京N267EF', '司机可美了', 1, 19.00, 0, 1, '2021-08-19 19:53:25');
INSERT INTO `app_order` VALUES (39, NULL, '2021-06-28 19:33:30', '7232909', 36, 2, '京N267EF', '司机可美了', 1, 11.00, 0, 1, '2021-08-14 12:45:24');
INSERT INTO `app_order` VALUES (40, NULL, '2021-06-29 18:19:47', '4947761', 36, 2, '京N267EF', '司机可美了', 1, 86.00, 2, 1, '2021-07-20 03:24:58');
INSERT INTO `app_order` VALUES (41, NULL, '2021-07-06 13:15:16', '1471801', 36, 2, '京N267EF', '司机可美了', 1, 85.00, 0, 1, '2021-12-26 07:59:43');
INSERT INTO `app_order` VALUES (42, NULL, '2021-07-07 01:01:03', '5485469', 36, 2, '京N267EF', '司机可美了', 1, 81.00, 2, 1, '2021-08-06 11:36:40');
INSERT INTO `app_order` VALUES (43, NULL, '2021-06-27 18:24:24', '2342543', 36, 2, '京N267EF', '司机可美了', 1, 28.00, 2, 1, '2021-12-13 02:27:12');
INSERT INTO `app_order` VALUES (44, NULL, '2021-07-06 21:53:45', '5230734', 36, 2, '京N267EF', '司机可美了', 1, 57.00, 0, 1, '2021-09-07 19:12:46');
INSERT INTO `app_order` VALUES (45, NULL, '2021-07-08 20:10:16', '2175632', 36, 2, '京N267EF', '司机可美了', 1, 93.00, 0, 1, '2021-11-30 12:16:04');
INSERT INTO `app_order` VALUES (46, NULL, '2021-07-07 15:10:14', '5039887', 36, 2, '京N267EF', '司机可美了', 1, 85.00, 2, 1, '2021-10-13 19:32:10');
INSERT INTO `app_order` VALUES (47, NULL, '2021-06-30 06:40:46', '5472756', 38, 2, '京N267EF', '司机可美了', 1, 59.00, 2, 1, '2021-09-20 09:50:12');
INSERT INTO `app_order` VALUES (48, NULL, '2021-06-30 20:35:32', '3115599', 36, 2, '京N267EF', '司机可美了', 0, 79.00, 0, 1, '2021-09-17 22:15:25');
INSERT INTO `app_order` VALUES (49, NULL, '2021-06-26 04:43:14', '5552709', 38, 2, '京N267EF', '司机可美了', 1, 22.00, 0, 1, '2021-08-21 20:52:15');
INSERT INTO `app_order` VALUES (50, NULL, '2021-06-29 18:16:16', '9557315', 36, 2, '京N267EF', '司机可美了', 1, 56.00, 3, 1, '2021-10-21 09:18:46');
INSERT INTO `app_order` VALUES (51, NULL, '2021-06-29 03:43:14', '8877496', 38, 2, '京N267EF', '司机可美了', 1, 36.00, 0, 1, '2021-12-27 22:07:04');
INSERT INTO `app_order` VALUES (52, NULL, '2021-06-26 12:05:06', '5131280', 38, 2, '京N267EF', '司机可美了', 1, 61.00, 3, 1, '2021-11-12 13:38:53');
INSERT INTO `app_order` VALUES (53, NULL, '2021-07-01 19:56:21', '2328367', 38, 2, '京N267EF', '司机可美了', 1, 37.00, 1, 1, '2021-09-08 08:19:46');
INSERT INTO `app_order` VALUES (54, NULL, '2021-07-07 22:42:53', '5266517', 36, 2, '京N267EF', '司机可美了', 1, 53.00, 3, 1, '2021-12-22 07:18:40');
INSERT INTO `app_order` VALUES (55, NULL, '2021-06-25 16:23:33', '8912446', 36, 2, '京N267EF', '司机可美了', 1, 90.00, 1, 1, '2021-08-23 23:53:49');
INSERT INTO `app_order` VALUES (56, NULL, '2021-07-06 01:20:13', '1032098', 36, 2, '京N267EF', '司机可美了', 1, 49.00, 3, 1, '2021-11-22 19:20:16');
INSERT INTO `app_order` VALUES (57, NULL, '2021-07-05 18:13:58', '9991595', 38, 2, '京N267EF', '司机可美了', 1, 25.00, 1, 1, '2021-12-29 04:06:10');
INSERT INTO `app_order` VALUES (58, NULL, '2021-07-02 03:53:44', '1109827', 38, 2, '京N267EF', '司机可美了', 1, 96.00, 0, 1, '2021-10-10 13:15:36');
INSERT INTO `app_order` VALUES (59, NULL, '2021-07-09 10:55:34', '6237167', 36, 2, '京N267EF', '司机可美了', 1, 43.00, 1, 1, '2021-08-19 06:52:00');
INSERT INTO `app_order` VALUES (60, NULL, '2021-07-06 22:25:52', '8496962', 36, 2, '京N267EF', '司机可美了', 1, 45.00, 3, 1, '2021-09-15 19:58:52');
INSERT INTO `app_order` VALUES (61, NULL, '2021-07-02 06:31:50', '2869718', 38, 2, '京N267EF', '司机可美了', 1, 78.00, 2, 1, '2021-12-28 00:58:05');
INSERT INTO `app_order` VALUES (62, NULL, '2021-06-26 03:31:55', '5371635', 36, 2, '京N267EF', '司机可美了', 0, 78.00, 1, 1, '2021-08-12 15:40:16');
INSERT INTO `app_order` VALUES (63, NULL, '2021-06-28 05:05:41', '6513363', 38, 2, '京N267EF', '司机可美了', 1, 62.00, 1, 1, '2021-09-20 11:09:01');
INSERT INTO `app_order` VALUES (64, NULL, '2021-06-29 18:49:17', '7991878', 36, 2, '京N267EF', '司机可美了', 1, 46.00, 0, 1, '2021-12-22 13:54:42');
INSERT INTO `app_order` VALUES (65, NULL, '2021-07-02 14:19:55', '2305307', 38, 2, '京N267EF', '司机可美了', 1, 75.00, 0, 1, '2021-12-26 00:29:59');
INSERT INTO `app_order` VALUES (66, NULL, '2021-07-09 01:13:05', '1701931', 36, 2, '京N267EF', '司机可美了', 1, 63.00, 0, 1, '2021-08-18 21:42:38');
INSERT INTO `app_order` VALUES (67, NULL, '2021-07-06 03:18:43', '5986298', 36, 2, '京N267EF', '司机可美了', 1, 47.00, 0, 1, '2021-10-17 01:16:02');
INSERT INTO `app_order` VALUES (68, NULL, '2021-07-02 17:19:23', '6827061', 38, 2, '京N267EF', '司机可美了', 1, 47.00, 0, 1, '2021-09-16 20:30:01');
INSERT INTO `app_order` VALUES (69, NULL, '2021-06-30 23:02:39', '6954291', 36, 2, '京N267EF', '司机可美了', 1, 98.00, 1, 1, '2021-11-01 15:08:40');
INSERT INTO `app_order` VALUES (70, NULL, '2021-06-29 23:52:41', '7082221', 36, 2, '京N267EF', '司机可美了', 1, 75.00, 1, 1, '2021-09-22 08:42:18');
INSERT INTO `app_order` VALUES (71, NULL, '2021-07-04 03:21:28', '7080866', 38, 2, '京N267EF', '司机可美了', 1, 18.00, 1, 1, '2021-12-06 23:46:28');
INSERT INTO `app_order` VALUES (72, NULL, '2021-07-07 04:20:42', '6118481', 38, 2, '京N267EF', '司机可美了', 1, 40.00, 3, 1, '2021-09-18 05:19:02');
INSERT INTO `app_order` VALUES (73, NULL, '2021-07-01 13:11:04', '7928151', 38, 2, '京N267EF', '司机可美了', 1, 68.00, 1, 1, '2021-09-01 16:56:21');
INSERT INTO `app_order` VALUES (74, NULL, '2021-07-02 16:35:08', '2731037', 38, 2, '京N267EF', '司机可美了', 1, 44.00, 0, 1, '2021-07-25 07:16:50');
INSERT INTO `app_order` VALUES (75, NULL, '2021-06-27 13:59:51', '3360036', 36, 2, '京N267EF', '司机可美了', 1, 45.00, 1, 1, '2021-11-07 17:10:48');
INSERT INTO `app_order` VALUES (76, NULL, '2021-06-30 15:04:39', '2077340', 38, 2, '京N267EF', '司机可美了', 1, 23.00, 0, 1, '2021-07-19 17:27:57');
INSERT INTO `app_order` VALUES (77, NULL, '2021-06-28 13:21:09', '9080046', 36, 2, '京N267EF', '司机可美了', 1, 45.00, 3, 1, '2021-10-22 09:18:14');
INSERT INTO `app_order` VALUES (78, NULL, '2021-07-04 22:31:49', '9234309', 38, 2, '京N267EF', '司机可美了', 1, 14.00, 2, 1, '2021-09-15 13:53:53');
INSERT INTO `app_order` VALUES (79, NULL, '2021-06-25 03:08:52', '4121480', 36, 2, '京N267EF', '司机可美了', 1, 84.00, 0, 1, '2021-10-22 19:52:08');
INSERT INTO `app_order` VALUES (80, NULL, '2021-07-05 15:34:28', '6002621', 38, 2, '京N267EF', '司机可美了', 1, 51.00, 0, 1, '2021-11-16 00:46:54');
INSERT INTO `app_order` VALUES (81, NULL, '2021-07-06 09:56:09', '6333106', 38, 2, '京N267EF', '司机可美了', 1, 51.00, 1, 1, '2021-11-16 05:41:53');
INSERT INTO `app_order` VALUES (82, NULL, '2021-06-25 06:06:03', '2001378', 38, 2, '京N267EF', '司机可美了', 1, 23.00, 0, 1, '2021-08-20 12:38:16');
INSERT INTO `app_order` VALUES (83, NULL, '2021-07-08 09:31:59', '7192214', 38, 2, '京N267EF', '司机可美了', 1, 70.00, 0, 1, '2021-08-10 11:21:42');
INSERT INTO `app_order` VALUES (84, NULL, '2021-06-28 16:55:26', '5544392', 38, 2, '京N267EF', '司机可美了', 1, 92.00, 1, 1, '2021-09-15 07:37:00');
INSERT INTO `app_order` VALUES (85, NULL, '2021-06-28 03:37:31', '2604783', 38, 2, '京N267EF', '司机可美了', 1, 94.00, 0, 1, '2021-10-01 16:19:28');
INSERT INTO `app_order` VALUES (86, NULL, '2021-07-08 16:07:42', '5189848', 36, 2, '京N267EF', '司机可美了', 1, 82.00, 0, 1, '2021-10-30 15:01:38');
INSERT INTO `app_order` VALUES (87, NULL, '2021-06-25 20:28:58', '5362068', 36, 2, '京N267EF', '司机可美了', 1, 44.00, 2, 1, '2021-09-14 17:43:41');
INSERT INTO `app_order` VALUES (88, NULL, '2021-07-04 14:24:59', '7776074', 38, 2, '京N267EF', '司机可美了', 1, 85.00, 1, 1, '2021-09-11 05:50:13');
INSERT INTO `app_order` VALUES (89, NULL, '2021-07-05 14:28:48', '3432387', 38, 2, '京N267EF', '司机可美了', 1, 83.00, 3, 1, '2021-07-13 14:50:39');
INSERT INTO `app_order` VALUES (90, NULL, '2021-07-03 02:33:36', '5050641', 36, 2, '京N267EF', '司机可美了', 1, 12.00, 1, 1, '2021-08-22 19:49:56');
INSERT INTO `app_order` VALUES (91, NULL, '2021-07-04 09:04:57', '9853829', 36, 2, '京N267EF', '司机可美了', 1, 84.00, 2, 1, '2021-12-13 17:39:46');
INSERT INTO `app_order` VALUES (92, NULL, '2021-07-01 07:05:52', '6272205', 36, 2, '京N267EF', '司机可美了', 1, 23.00, 3, 1, '2021-10-30 12:19:11');
INSERT INTO `app_order` VALUES (93, NULL, '2021-06-29 00:00:38', '5961208', 36, 2, '京N267EF', '司机可美了', 1, 24.00, 3, 1, '2021-07-16 08:58:34');
INSERT INTO `app_order` VALUES (94, NULL, '2021-06-25 15:24:03', '3675692', 38, 2, '京N267EF', '司机可美了', 1, 14.00, 0, 1, '2021-08-01 23:29:27');
INSERT INTO `app_order` VALUES (95, NULL, '2021-07-04 08:22:23', '2819765', 38, 2, '京N267EF', '司机可美了', 1, 79.00, 3, 1, '2021-11-30 16:38:43');
INSERT INTO `app_order` VALUES (96, NULL, '2021-06-27 15:50:42', '2748251', 38, 2, '京N267EF', '司机可美了', 1, 99.00, 1, 1, '2021-11-24 17:07:19');
INSERT INTO `app_order` VALUES (97, NULL, '2021-06-27 23:23:32', '6012492', 38, 2, '京N267EF', '司机可美了', 1, 22.00, 2, 1, '2021-11-21 04:19:00');
INSERT INTO `app_order` VALUES (98, NULL, '2021-07-07 03:49:14', '3661634', 36, 2, '京N267EF', '司机可美了', 1, 100.00, 0, 1, '2021-12-30 06:28:00');
INSERT INTO `app_order` VALUES (99, NULL, '2021-07-09 22:55:11', '8225979', 38, 2, '京N267EF', '司机可美了', 1, 53.00, 3, 1, '2021-11-03 18:43:07');
INSERT INTO `app_order` VALUES (100, NULL, '2021-07-04 10:10:25', '3419381', 36, 2, '京N267EF', '司机可美了', 1, 84.00, 1, 1, '2021-11-26 18:22:37');
INSERT INTO `app_order` VALUES (101, NULL, '2021-07-02 06:46:41', '1421491', 38, 2, '京N267EF', '司机可美了', 1, 14.00, 0, 1, '2021-09-24 23:11:42');
INSERT INTO `app_order` VALUES (102, NULL, '2021-07-07 18:07:12', '4177735', 38, 2, '京N267EF', '司机可美了', 1, 74.00, 1, 1, '2021-10-22 06:45:05');
INSERT INTO `app_order` VALUES (103, NULL, '2021-06-28 14:32:21', '3075844', 38, 2, '京N267EF', '司机可美了', 1, 95.00, 2, 1, '2021-08-13 07:43:13');
INSERT INTO `app_order` VALUES (104, NULL, '2021-06-26 08:09:54', '8226927', 36, 2, '京N267EF', '司机可美了', 1, 55.00, 0, 1, '2021-10-24 11:22:56');
INSERT INTO `app_order` VALUES (105, NULL, '2021-06-26 01:29:03', '7686803', 38, 2, '京N267EF', '司机可美了', 1, 52.00, 2, 1, '2021-09-09 19:53:44');
INSERT INTO `app_order` VALUES (106, NULL, '2021-06-27 15:01:30', '5261421', 38, 2, '京N267EF', '司机可美了', 1, 59.00, 1, 1, '2021-10-22 01:48:02');
INSERT INTO `app_order` VALUES (107, NULL, '2021-07-09 12:27:23', '6253010', 38, 2, '京N267EF', '司机可美了', 1, 20.00, 0, 1, '2021-08-06 22:37:44');
INSERT INTO `app_order` VALUES (108, NULL, '2021-07-08 09:47:23', '8258415', 36, 2, '京N267EF', '司机可美了', 1, 61.00, 1, 1, '2021-12-20 12:32:41');
INSERT INTO `app_order` VALUES (109, NULL, '2021-07-04 20:21:59', '5326568', 38, 2, '京N267EF', '司机可美了', 1, 40.00, 0, 1, '2021-12-12 04:43:21');
INSERT INTO `app_order` VALUES (110, NULL, '2021-07-01 00:52:09', '6321434', 36, 2, '京N267EF', '司机可美了', 1, 44.00, 2, 1, '2021-10-31 21:51:42');
INSERT INTO `app_order` VALUES (111, NULL, '2021-06-27 03:43:27', '6883347', 38, 2, '京N267EF', '司机可美了', 1, 63.00, 1, 1, '2021-07-26 23:18:41');
INSERT INTO `app_order` VALUES (112, NULL, '2021-06-29 02:37:29', '5203326', 36, 2, '京N267EF', '司机可美了', 1, 60.00, 1, 1, '2021-09-08 07:20:20');
INSERT INTO `app_order` VALUES (113, NULL, '2021-06-26 15:04:18', '4936156', 36, 2, '京N267EF', '司机可美了', 1, 38.00, 0, 1, '2021-09-12 09:57:47');
INSERT INTO `app_order` VALUES (114, NULL, '2021-07-08 07:24:41', '9254360', 36, 2, '京N267EF', '司机可美了', 1, 73.00, 0, 1, '2021-08-21 18:05:34');
INSERT INTO `app_order` VALUES (115, NULL, '2021-07-02 09:39:26', '7368425', 38, 2, '京N267EF', '司机可美了', 1, 95.00, 2, 1, '2021-08-02 00:38:54');
INSERT INTO `app_order` VALUES (116, NULL, '2021-07-09 02:07:35', '7115774', 38, 2, '京N267EF', '司机可美了', 1, 27.00, 1, 1, '2021-12-19 19:02:48');
INSERT INTO `app_order` VALUES (117, NULL, '2021-07-02 01:54:10', '7471274', 38, 2, '京N267EF', '司机可美了', 1, 34.00, 1, 1, '2021-11-18 04:54:20');
INSERT INTO `app_order` VALUES (118, NULL, '2021-06-26 12:25:50', '6684731', 38, 2, '京N267EF', '司机可美了', 1, 46.00, 0, 1, '2021-11-15 10:59:30');
INSERT INTO `app_order` VALUES (119, NULL, '2021-07-08 04:10:44', '3152594', 38, 2, '京N267EF', '司机可美了', 1, 20.00, 0, 1, '2021-08-17 15:45:42');
INSERT INTO `app_order` VALUES (120, NULL, '2021-07-09 15:02:32', '8279549', 36, 2, '京N267EF', '司机可美了', 1, 81.00, 1, 1, '2021-12-14 09:03:21');
INSERT INTO `app_order` VALUES (121, NULL, '2021-06-28 22:58:42', '6834195', 38, 2, '京N267EF', '司机可美了', 1, 29.00, 2, 1, '2021-11-30 16:09:12');
INSERT INTO `app_order` VALUES (122, NULL, '2021-07-06 14:45:36', '8209589', 38, 2, '京N267EF', '司机可美了', 1, 77.00, 0, 1, '2021-10-13 19:54:04');
INSERT INTO `app_order` VALUES (123, NULL, '2021-06-29 19:08:34', '8167128', 38, 2, '京N267EF', '司机可美了', 1, 69.00, 1, 1, '2021-09-03 05:04:47');
INSERT INTO `app_order` VALUES (124, NULL, '2021-06-29 06:45:04', '6767918', 36, 2, '京N267EF', '司机可美了', 1, 51.00, 2, 1, '2021-12-07 05:39:51');
INSERT INTO `app_order` VALUES (125, NULL, '2021-07-06 00:31:29', '3483193', 38, 2, '京N267EF', '司机可美了', 1, 64.00, 2, 1, '2021-07-26 20:32:54');
INSERT INTO `app_order` VALUES (126, NULL, '2021-06-25 08:21:46', '1449147', 38, 2, '京N267EF', '司机可美了', 1, 64.00, 1, 1, '2021-11-15 05:12:45');
INSERT INTO `app_order` VALUES (127, NULL, '2021-07-02 08:19:45', '1386932', 38, 2, '京N267EF', '司机可美了', 1, 46.00, 0, 1, '2021-12-13 15:46:18');
INSERT INTO `app_order` VALUES (128, NULL, '2021-07-06 15:12:36', '5641997', 36, 2, '京N267EF', '司机可美了', 1, 13.00, 0, 1, '2021-11-02 22:57:43');
INSERT INTO `app_order` VALUES (129, NULL, '2021-07-05 22:01:10', '7515281', 36, 2, '京N267EF', '司机可美了', 1, 14.00, 0, 1, '2021-07-22 12:06:18');
INSERT INTO `app_order` VALUES (130, NULL, '2021-06-26 02:42:12', '2074296', 36, 2, '京N267EF', '司机可美了', 1, 35.00, 2, 1, '2021-09-04 05:09:50');
INSERT INTO `app_order` VALUES (131, NULL, '2021-06-26 22:27:37', '9700128', 38, 2, '京N267EF', '司机可美了', 1, 87.00, 0, 1, '2021-10-20 08:38:11');
INSERT INTO `app_order` VALUES (132, NULL, '2021-06-30 03:21:50', '5128516', 36, 2, '京N267EF', '司机可美了', 1, 99.00, 0, 1, '2021-12-17 10:17:13');
INSERT INTO `app_order` VALUES (133, NULL, '2021-06-27 00:24:12', '8426055', 36, 2, '京N267EF', '司机可美了', 1, 26.00, 1, 1, '2021-12-06 10:13:58');
INSERT INTO `app_order` VALUES (134, NULL, '2021-06-30 05:03:34', '9655490', 38, 2, '京N267EF', '司机可美了', 1, 45.00, 3, 1, '2021-10-31 23:24:43');
INSERT INTO `app_order` VALUES (135, NULL, '2021-06-28 17:25:20', '1800333', 36, 2, '京N267EF', '司机可美了', 1, 38.00, 0, 1, '2021-09-19 08:01:58');
INSERT INTO `app_order` VALUES (136, NULL, '2021-07-04 01:53:35', '6789573', 36, 2, '京N267EF', '司机可美了', 1, 94.00, 0, 1, '2021-11-27 21:41:15');
INSERT INTO `app_order` VALUES (137, NULL, '2021-06-30 15:32:51', '4472368', 36, 2, '京N267EF', '司机可美了', 1, 95.00, 0, 1, '2021-10-13 14:51:50');
INSERT INTO `app_order` VALUES (138, NULL, '2021-06-27 03:30:33', '4026063', 38, 2, '京N267EF', '司机可美了', 1, 69.00, 0, 1, '2021-08-27 03:59:35');
INSERT INTO `app_order` VALUES (139, NULL, '2021-07-07 21:35:30', '3251212', 36, 2, '京N267EF', '司机可美了', 1, 96.00, 0, 1, '2021-11-16 07:06:32');
INSERT INTO `app_order` VALUES (140, NULL, '2021-07-01 14:09:13', '8427662', 36, 2, '京N267EF', '司机可美了', 1, 10.00, 2, 1, '2021-08-12 15:37:33');
INSERT INTO `app_order` VALUES (141, NULL, '2021-07-04 16:23:18', '9671098', 36, 2, '京N267EF', '司机可美了', 1, 48.00, 3, 1, '2021-12-02 23:47:06');
INSERT INTO `app_order` VALUES (142, NULL, '2021-07-05 04:24:57', '7113672', 36, 2, '京N267EF', '司机可美了', 1, 100.00, 0, 1, '2021-10-02 11:59:19');
INSERT INTO `app_order` VALUES (143, NULL, '2021-07-09 16:13:39', '3240735', 38, 2, '京N267EF', '司机可美了', 1, 32.00, 0, 1, '2021-11-25 02:30:14');
INSERT INTO `app_order` VALUES (144, NULL, '2021-07-02 09:38:42', '7704326', 36, 2, '京N267EF', '司机可美了', 1, 35.00, 0, 1, '2021-09-10 16:00:20');
INSERT INTO `app_order` VALUES (145, NULL, '2021-06-27 22:26:01', '7067121', 38, 2, '京N267EF', '司机可美了', 1, 56.00, 0, 1, '2021-11-23 00:23:39');
INSERT INTO `app_order` VALUES (146, NULL, '2021-06-26 14:20:14', '8828428', 38, 2, '京N267EF', '司机可美了', 1, 31.00, 0, 1, '2021-12-10 00:14:11');
INSERT INTO `app_order` VALUES (147, NULL, '2021-06-28 19:56:18', '9947894', 38, 2, '京N267EF', '司机可美了', 1, 30.00, 1, 1, '2021-07-11 01:13:06');
INSERT INTO `app_order` VALUES (148, NULL, '2021-06-25 14:21:17', '5328016', 38, 2, '京N267EF', '司机可美了', 1, 81.00, 3, 1, '2021-12-11 22:39:29');
INSERT INTO `app_order` VALUES (149, NULL, '2021-07-09 04:16:31', '2875558', 38, 2, '京N267EF', '司机可美了', 1, 37.00, 1, 1, '2021-09-18 08:35:29');
INSERT INTO `app_order` VALUES (150, NULL, '2021-07-05 06:29:51', '8299777', 36, 2, '京N267EF', '司机可美了', 1, 39.00, 1, 1, '2021-09-15 18:27:12');
INSERT INTO `app_order` VALUES (151, NULL, '2021-07-09 03:25:12', '2764221', 38, 2, '京N267EF', '司机可美了', 1, 96.00, 1, 1, '2021-10-25 10:22:34');
INSERT INTO `app_order` VALUES (152, NULL, '2021-07-05 04:58:30', '2110632', 36, 2, '京N267EF', '司机可美了', 1, 34.00, 0, 1, '2021-10-06 20:53:21');
INSERT INTO `app_order` VALUES (153, NULL, '2021-07-02 11:38:19', '2901811', 38, 2, '京N267EF', '司机可美了', 1, 39.00, 1, 1, '2021-07-17 08:48:18');
INSERT INTO `app_order` VALUES (154, NULL, '2021-06-30 19:51:14', '7670065', 38, 2, '京N267EF', '司机可美了', 1, 97.00, 1, 1, '2021-12-17 06:40:00');
INSERT INTO `app_order` VALUES (155, NULL, '2021-07-05 06:02:03', '7224411', 38, 2, '京N267EF', '司机可美了', 1, 76.00, 1, 1, '2021-12-13 08:02:15');
INSERT INTO `app_order` VALUES (156, NULL, '2021-07-01 22:08:02', '2333722', 38, 2, '京N267EF', '司机可美了', 1, 70.00, 0, 1, '2021-11-15 16:18:00');
INSERT INTO `app_order` VALUES (157, NULL, '2021-06-29 14:22:35', '5963484', 38, 2, '京N267EF', '司机可美了', 1, 21.00, 2, 1, '2021-11-11 19:41:57');
INSERT INTO `app_order` VALUES (158, NULL, '2021-06-28 12:37:04', '2725644', 36, 2, '京N267EF', '司机可美了', 1, 44.00, 1, 1, '2021-11-08 19:39:35');
INSERT INTO `app_order` VALUES (159, NULL, '2021-07-06 08:41:53', '8156739', 36, 2, '京N267EF', '司机可美了', 1, 24.00, 0, 1, '2021-07-26 02:25:31');
INSERT INTO `app_order` VALUES (160, NULL, '2021-07-05 22:16:01', '7858455', 36, 2, '京N267EF', '司机可美了', 1, 29.00, 3, 1, '2021-08-19 08:01:57');
INSERT INTO `app_order` VALUES (161, NULL, '2021-06-27 09:17:00', '7507968', 38, 2, '京N267EF', '司机可美了', 1, 31.00, 0, 1, '2021-07-16 03:24:20');
INSERT INTO `app_order` VALUES (162, NULL, '2021-07-09 16:58:41', '3084028', 36, 2, '京N267EF', '司机可美了', 1, 21.00, 1, 1, '2021-08-04 21:17:45');
INSERT INTO `app_order` VALUES (163, NULL, '2021-07-03 18:05:54', '2046481', 38, 2, '京N267EF', '司机可美了', 1, 64.00, 2, 1, '2021-11-05 15:50:39');
INSERT INTO `app_order` VALUES (164, NULL, '2021-06-29 19:47:39', '1465925', 38, 2, '京N267EF', '司机可美了', 1, 43.00, 0, 1, '2021-07-29 18:57:28');
INSERT INTO `app_order` VALUES (165, NULL, '2021-06-27 03:38:03', '9442793', 36, 2, '京N267EF', '司机可美了', 1, 99.00, 1, 1, '2021-11-07 05:55:56');
INSERT INTO `app_order` VALUES (166, NULL, '2021-06-29 19:58:53', '6898671', 38, 2, '京N267EF', '司机可美了', 1, 18.00, 2, 1, '2021-09-24 20:30:28');
INSERT INTO `app_order` VALUES (167, NULL, '2021-06-30 14:30:45', '3448822', 36, 2, '京N267EF', '司机可美了', 1, 39.00, 2, 1, '2021-10-31 17:11:33');
INSERT INTO `app_order` VALUES (168, NULL, '2021-06-27 00:51:17', '4003171', 36, 2, '京N267EF', '司机可美了', 1, 36.00, 0, 1, '2021-08-16 13:39:31');
INSERT INTO `app_order` VALUES (169, NULL, '2021-06-29 12:54:44', '5674494', 38, 2, '京N267EF', '司机可美了', 1, 88.00, 3, 1, '2021-12-03 08:37:16');
INSERT INTO `app_order` VALUES (170, NULL, '2021-07-08 10:48:44', '2852327', 36, 2, '京N267EF', '司机可美了', 1, 54.00, 0, 1, '2021-10-11 23:43:09');
INSERT INTO `app_order` VALUES (171, NULL, '2021-06-30 07:06:56', '3107165', 38, 2, '京N267EF', '司机可美了', 1, 15.00, 1, 1, '2021-09-27 02:39:59');
INSERT INTO `app_order` VALUES (172, NULL, '2021-06-29 04:06:56', '3957091', 38, 2, '京N267EF', '司机可美了', 1, 76.00, 1, 1, '2021-12-24 15:59:33');
INSERT INTO `app_order` VALUES (173, NULL, '2021-07-04 08:11:26', '8843354', 38, 2, '京N267EF', '司机可美了', 1, 40.00, 0, 1, '2021-08-10 04:41:55');
INSERT INTO `app_order` VALUES (174, NULL, '2021-07-04 21:15:46', '2615317', 36, 2, '京N267EF', '司机可美了', 1, 82.00, 2, 1, '2021-11-26 17:28:39');
INSERT INTO `app_order` VALUES (175, NULL, '2021-06-29 16:17:10', '7900509', 38, 2, '京N267EF', '司机可美了', 1, 31.00, 0, 1, '2021-07-18 23:44:30');
INSERT INTO `app_order` VALUES (176, NULL, '2021-07-08 15:26:35', '1171512', 38, 2, '京N267EF', '司机可美了', 1, 35.00, 0, 1, '2021-12-15 03:02:56');
INSERT INTO `app_order` VALUES (177, NULL, '2021-06-29 23:26:06', '4679256', 36, 2, '京N267EF', '司机可美了', 1, 85.00, 0, 1, '2021-09-18 02:08:12');
INSERT INTO `app_order` VALUES (178, NULL, '2021-07-09 03:25:26', '6144399', 38, 2, '京N267EF', '司机可美了', 1, 88.00, 0, 1, '2021-07-22 07:47:16');
INSERT INTO `app_order` VALUES (179, NULL, '2021-07-08 20:00:29', '6603941', 38, 2, '京N267EF', '司机可美了', 1, 47.00, 0, 1, '2021-10-08 05:21:16');
INSERT INTO `app_order` VALUES (180, NULL, '2021-06-26 08:18:31', '5974349', 36, 2, '京N267EF', '司机可美了', 1, 79.00, 0, 1, '2021-12-01 13:38:39');
INSERT INTO `app_order` VALUES (181, NULL, '2021-07-09 23:02:01', '4661515', 38, 2, '京N267EF', '司机可美了', 1, 37.00, 0, 1, '2021-11-03 09:08:26');
INSERT INTO `app_order` VALUES (182, NULL, '2021-07-04 08:38:50', '6538711', 38, 2, '京N267EF', '司机可美了', 1, 15.00, 0, 1, '2021-12-20 22:04:55');
INSERT INTO `app_order` VALUES (183, NULL, '2021-07-03 10:12:01', '7834755', 36, 2, '京N267EF', '司机可美了', 1, 73.00, 0, 1, '2021-08-14 15:20:35');
INSERT INTO `app_order` VALUES (184, NULL, '2021-07-06 20:28:31', '7683446', 38, 2, '京N267EF', '司机可美了', 1, 69.00, 3, 1, '2021-12-05 13:26:59');
INSERT INTO `app_order` VALUES (185, NULL, '2021-06-28 18:05:35', '9741551', 36, 2, '京N267EF', '司机可美了', 1, 54.00, 1, 1, '2021-08-11 18:13:20');
INSERT INTO `app_order` VALUES (186, NULL, '2021-07-01 19:41:11', '6914760', 38, 2, '京N267EF', '司机可美了', 1, 64.00, 0, 1, '2021-07-10 17:14:34');
INSERT INTO `app_order` VALUES (187, NULL, '2021-07-09 01:53:49', '1628956', 36, 2, '京N267EF', '司机可美了', 1, 85.00, 2, 1, '2021-07-19 21:16:40');
INSERT INTO `app_order` VALUES (188, NULL, '2021-07-06 01:20:29', '8455797', 36, 2, '京N267EF', '司机可美了', 1, 85.00, 0, 1, '2021-09-23 22:36:17');
INSERT INTO `app_order` VALUES (189, NULL, '2021-07-04 04:17:31', '6449201', 38, 2, '京N267EF', '司机可美了', 1, 67.00, 1, 1, '2021-08-13 07:30:22');
INSERT INTO `app_order` VALUES (190, NULL, '2021-06-30 17:30:47', '4808113', 38, 2, '京N267EF', '司机可美了', 1, 47.00, 2, 1, '2021-10-22 23:46:52');
INSERT INTO `app_order` VALUES (191, NULL, '2021-06-29 00:57:19', '2657873', 36, 2, '京N267EF', '司机可美了', 1, 40.00, 0, 1, '2021-11-23 05:50:49');
INSERT INTO `app_order` VALUES (192, NULL, '2021-07-09 05:07:53', '2210590', 38, 2, '京N267EF', '司机可美了', 1, 14.00, 1, 1, '2021-10-16 00:15:43');
INSERT INTO `app_order` VALUES (193, NULL, '2021-07-04 09:56:50', '8167934', 38, 2, '京N267EF', '司机可美了', 1, 53.00, 2, 1, '2021-11-02 01:05:41');
INSERT INTO `app_order` VALUES (194, NULL, '2021-07-09 14:30:26', '4089428', 38, 2, '京N267EF', '司机可美了', 1, 74.00, 2, 1, '2021-12-20 06:13:08');
INSERT INTO `app_order` VALUES (195, NULL, '2021-07-01 17:06:39', '5026135', 38, 2, '京N267EF', '司机可美了', 1, 93.00, 1, 1, '2021-11-10 07:28:05');
INSERT INTO `app_order` VALUES (196, NULL, '2021-07-09 10:09:09', '8611561', 36, 2, '京N267EF', '司机可美了', 1, 69.00, 1, 1, '2021-10-19 01:11:54');
INSERT INTO `app_order` VALUES (197, NULL, '2021-06-27 09:38:40', '2697764', 38, 2, '京N267EF', '司机可美了', 1, 30.00, 0, 1, '2021-10-25 04:28:00');
INSERT INTO `app_order` VALUES (198, NULL, '2021-07-04 00:31:06', '1185347', 38, 2, '京N267EF', '司机可美了', 1, 33.00, 1, 1, '2021-09-04 00:13:14');
INSERT INTO `app_order` VALUES (199, NULL, '2021-06-26 16:06:04', '1571950', 36, 2, '京N267EF', '司机可美了', 1, 37.00, 1, 1, '2021-11-16 12:17:31');
INSERT INTO `app_order` VALUES (200, NULL, '2021-07-02 20:35:45', '6678961', 38, 2, '京N267EF', '司机可美了', 1, 14.00, 0, 1, '2021-10-07 23:29:33');
INSERT INTO `app_order` VALUES (201, NULL, '2021-07-05 21:13:00', '6887364', 38, 2, '京N267EF', '司机可美了', 1, 16.00, 2, 1, '2021-10-27 17:08:59');
INSERT INTO `app_order` VALUES (202, NULL, '2021-07-04 10:14:18', '7956796', 36, 2, '京N267EF', '司机可美了', 1, 15.00, 1, 1, '2021-09-05 13:04:52');
COMMIT;

-- ----------------------------
-- Table structure for app_pay_config
-- ----------------------------
DROP TABLE IF EXISTS `app_pay_config`;
CREATE TABLE `app_pay_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `car_park_id` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `mch_id` varchar(500) DEFAULT NULL,
  `secret_key` varchar(500) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_pay_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `config_key` varchar(200) NOT NULL COMMENT '唯一标识',
  `config_value` varchar(500) NOT NULL COMMENT '值',
  `config_remark` varchar(1000) NOT NULL COMMENT '备注',
  `user_id_create` bigint(20) NOT NULL COMMENT '创建人',
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL COMMENT '状态 0 禁用 1 可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='基础配置';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_interface
-- ----------------------------
DROP TABLE IF EXISTS `sys_interface`;
CREATE TABLE `sys_interface` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_modified` datetime DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `query` text,
  `status` smallint(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id_create` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_interface
-- ----------------------------
BEGIN;
INSERT INTO `sys_interface` VALUES (1, '首页 统计信息', '2021-07-05 17:51:59', NULL, NULL, 'select * from (select count(1) as orgNumber from sys_org) AS a \nJOIN (select count(1) as parkNumber from app_car_park_manage ) as b on 1=1\nJOIN (select count(1) as carNumber from app_car_manage) as c on 1=1\nJOIN (select sum(total_Fee) as cost from app_order where status = 1) as d on 1=1', 1, NULL, 'indexStatistics', 1);
INSERT INTO `sys_interface` VALUES (2, '支付类型统计', '2021-07-06 11:38:28', NULL, NULL, 'select case type when 0 then \'微信\' when 1 then \'支付宝\' when 2 then \'Apple Pay\' when 3 then \'HUAWEI pay\' end as `name`, count(order_no) as `data` from app_order where status = 1 group by type;', 1, NULL, 'payTypeStatistics', 1);
INSERT INTO `sys_interface` VALUES (3, '近7天支付情况统计', '2021-07-06 15:55:57', NULL, NULL, 'SELECT a.date, case a.type when 0 then \'微信\' when 1 then \'支付宝\' when 2 then \'Apple Pay\' when 3 then \'HUAWEI pay\' end as payType, ifnull( total_fee, 0 ) amount \nFROM (SELECT * FROM\n	(\n		select DATE(DATE_SUB(CURRENT_DATE, INTERVAL help_topic_id DAY)) date from  mysql.help_topic\nwhere help_topic_id<7\norder by help_topic_id\n	) AS a\n	JOIN ( SELECT DISTINCT type FROM app_order ) AS b ON 1 = 1 \n) AS a\nLEFT JOIN ( \n	SELECT date( gmt_create ) gmt_create, type, sum( total_fee ) total_fee \n	FROM `app_order` WHERE STATUS = 1 GROUP BY date( gmt_create ), type \n) AS b ON a.date = b.gmt_create AND a.type = b.type \nWHERE\n	a.date < DATE(NOW()) \nORDER BY\n	a.date', 1, NULL, 'total7Pay', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_landing_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_landing_records`;
CREATE TABLE `sys_landing_records` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近登录时间',
  `place` varchar(10) NOT NULL COMMENT '最近登录地点',
  `ip` char(15) NOT NULL COMMENT '最近登录IP',
  `login_way` char(10) NOT NULL COMMENT '登录方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户登录日志';

-- ----------------------------
-- Records of sys_landing_records
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '响应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` text COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `device_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '访问方式 0:PC 1:手机 2:未知',
  `log_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0: 一般日志记录 1: 异常错误日志',
  `exception_detail` text COMMENT '异常详细信息',
  `gmt_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (1, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-08 19:58:39');
INSERT INTO `sys_log` VALUES (2, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-16 20:26:27');
INSERT INTO `sys_log` VALUES (3, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-26 20:51:14');
INSERT INTO `sys_log` VALUES (4, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-03-26 21:10:51');
INSERT INTO `sys_log` VALUES (5, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-11 20:45:05');
INSERT INTO `sys_log` VALUES (6, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-13 20:15:18');
INSERT INTO `sys_log` VALUES (7, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-13 20:15:21');
INSERT INTO `sys_log` VALUES (8, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 19:47:39');
INSERT INTO `sys_log` VALUES (9, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 20:17:24');
INSERT INTO `sys_log` VALUES (10, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-04-19 20:46:12');
INSERT INTO `sys_log` VALUES (11, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 11:46:11');
INSERT INTO `sys_log` VALUES (12, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 11:51:03');
INSERT INTO `sys_log` VALUES (13, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:02:45');
INSERT INTO `sys_log` VALUES (14, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:11:00');
INSERT INTO `sys_log` VALUES (15, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:16:17');
INSERT INTO `sys_log` VALUES (16, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-02 12:19:58');
INSERT INTO `sys_log` VALUES (17, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 14:07:55');
INSERT INTO `sys_log` VALUES (18, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 14:41:46');
INSERT INTO `sys_log` VALUES (19, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 14:43:09');
INSERT INTO `sys_log` VALUES (20, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 16:40:09');
INSERT INTO `sys_log` VALUES (21, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 17:08:35');
INSERT INTO `sys_log` VALUES (22, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 17:52:51');
INSERT INTO `sys_log` VALUES (23, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:24:18');
INSERT INTO `sys_log` VALUES (24, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:26:12');
INSERT INTO `sys_log` VALUES (25, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:28:30');
INSERT INTO `sys_log` VALUES (26, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:38:26');
INSERT INTO `sys_log` VALUES (27, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-05 18:40:25');
INSERT INTO `sys_log` VALUES (28, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 10:22:21');
INSERT INTO `sys_log` VALUES (29, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 10:30:51');
INSERT INTO `sys_log` VALUES (30, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 10:32:45');
INSERT INTO `sys_log` VALUES (31, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 11:39:30');
INSERT INTO `sys_log` VALUES (32, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 11:41:18');
INSERT INTO `sys_log` VALUES (33, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:29:24');
INSERT INTO `sys_log` VALUES (34, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:34:27');
INSERT INTO `sys_log` VALUES (35, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:36:17');
INSERT INTO `sys_log` VALUES (36, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:55:45');
INSERT INTO `sys_log` VALUES (37, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:56:55');
INSERT INTO `sys_log` VALUES (38, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 15:58:13');
INSERT INTO `sys_log` VALUES (39, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 16:00:07');
INSERT INTO `sys_log` VALUES (40, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 17:55:50');
INSERT INTO `sys_log` VALUES (41, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 17:58:23');
INSERT INTO `sys_log` VALUES (42, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 18:00:18');
INSERT INTO `sys_log` VALUES (43, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 18:03:36');
INSERT INTO `sys_log` VALUES (44, 1, 'admin', '登录', 10, '', '', '0:0:0:0:0:0:0:1', 0, 0, '', '2021-07-06 18:07:17');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, '', 0, 'layui-icon layui-icon-template-1', 5, '2017-08-09 22:49:47', '2017-09-11 17:25:22');
INSERT INTO `sys_menu` VALUES (2, 1, '系统菜单', 'sys/menu/list.html', NULL, 1, 'layui-icon layui-icon-spread-left', 10, '2017-08-09 22:55:15', '2017-08-17 10:00:12');
INSERT INTO `sys_menu` VALUES (6, 299, '用户管理', 'sys/user/list.html', '', 1, 'layui-icon layui-icon-username', 2, '2017-08-10 14:12:11', '2017-09-05 12:57:42');
INSERT INTO `sys_menu` VALUES (7, 1, '角色管理', 'sys/role/list.html', '', 1, 'layui-icon layui-icon-tree', 1, '2017-08-10 14:13:19', '2017-09-05 12:57:30');
INSERT INTO `sys_menu` VALUES (11, 6, '刷新', '/sys/user/list', 'sys:user:list', 2, NULL, 0, '2017-08-14 10:51:05', '2017-09-05 12:47:23');
INSERT INTO `sys_menu` VALUES (12, 6, '新增', '/sys/user/save', 'sys:user:save', 2, NULL, 0, '2017-08-14 10:51:35', '2017-09-05 12:47:34');
INSERT INTO `sys_menu` VALUES (13, 6, '编辑', '/sys/user/update', 'sys:user:edit', 2, NULL, 0, '2017-08-14 10:52:06', '2017-09-05 12:47:46');
INSERT INTO `sys_menu` VALUES (14, 6, '删除', '/sys/user/remove', 'sys:user:remove', 2, NULL, 0, '2017-08-14 10:52:24', '2017-09-05 12:48:03');
INSERT INTO `sys_menu` VALUES (15, 7, '刷新', '/sys/role/list', 'sys:role:list', 2, NULL, 0, '2017-08-14 10:56:37', '2017-09-05 12:44:04');
INSERT INTO `sys_menu` VALUES (16, 7, '新增', '/sys/role/save', 'sys:role:save', 2, NULL, 0, '2017-08-14 10:57:02', '2017-09-05 12:44:23');
INSERT INTO `sys_menu` VALUES (17, 7, '编辑', '/sys/role/update', 'sys:role:edit', 2, NULL, 0, '2017-08-14 10:57:31', '2017-09-05 12:44:48');
INSERT INTO `sys_menu` VALUES (18, 7, '删除', '/sys/role/remove', 'sys:role:remove', 2, NULL, 0, '2017-08-14 10:57:50', '2017-09-05 12:45:02');
INSERT INTO `sys_menu` VALUES (19, 7, '操作权限', '/sys/role/authorize/opt', 'sys:role:authorizeOpt', 2, NULL, 0, '2017-08-14 10:58:55', '2017-09-05 12:45:29');
INSERT INTO `sys_menu` VALUES (20, 2, '刷新', '/sys/menu/list', 'sys:menu:list', 2, NULL, 0, '2017-08-14 10:59:32', '2017-09-05 13:06:24');
INSERT INTO `sys_menu` VALUES (21, 2, '新增', '/sys/menu/save', 'sys:menu:save', 2, NULL, 0, '2017-08-14 10:59:56', '2017-09-05 13:06:35');
INSERT INTO `sys_menu` VALUES (22, 2, '编辑', '/sys/menu/update', 'sys:menu:edit', 2, NULL, 0, '2017-08-14 11:00:26', '2017-09-05 13:06:48');
INSERT INTO `sys_menu` VALUES (23, 2, '删除', '/sys/menu/remove', 'sys:menu:remove', 2, NULL, 0, '2017-08-14 11:00:58', '2017-09-05 13:07:00');
INSERT INTO `sys_menu` VALUES (24, 6, '启用', '/sys/user/enable', 'sys:user:enable', 2, NULL, 0, '2017-08-14 17:27:18', '2017-09-05 12:48:30');
INSERT INTO `sys_menu` VALUES (25, 6, '停用', '/sys/user/disable', 'sys:user:disable', 2, NULL, 0, '2017-08-14 17:27:43', '2017-09-05 12:48:49');
INSERT INTO `sys_menu` VALUES (26, 6, '重置密码', '/sys/user/rest', 'sys:user:resetPassword', 2, NULL, 0, '2017-08-14 17:28:34', '2017-09-05 12:49:17');
INSERT INTO `sys_menu` VALUES (27, 267, '系统日志', 'sys/log/list.html', NULL, 1, 'fa fa-warning', 3, '2017-08-14 22:11:53', '2017-08-17 09:55:19');
INSERT INTO `sys_menu` VALUES (28, 27, '刷新', '/sys/log/list', 'sys:log:list', 2, NULL, 0, '2017-08-14 22:30:22', '2017-09-05 13:05:24');
INSERT INTO `sys_menu` VALUES (29, 27, '删除', '/sys/log/remove', 'sys:log:remove', 2, NULL, 0, '2017-08-14 22:30:43', '2017-09-05 13:05:37');
INSERT INTO `sys_menu` VALUES (30, 27, '清空', '/sys/log/clear', 'sys:log:clear', 2, NULL, 0, '2017-08-14 22:31:02', '2017-09-05 13:05:53');
INSERT INTO `sys_menu` VALUES (42, 261, '刷新', '/sys/org/list', 'sys:org:list', 2, NULL, 0, '2017-08-17 10:03:36', '2017-09-05 11:47:37');
INSERT INTO `sys_menu` VALUES (43, 261, '新增', '/sys/org/save', 'sys:org:save', 2, NULL, 0, '2017-08-17 10:03:54', '2017-09-05 12:40:55');
INSERT INTO `sys_menu` VALUES (44, 261, '编辑', '/sys/org/update', 'sys:org:edit', 2, NULL, 0, '2017-08-17 10:04:11', '2017-09-05 12:43:06');
INSERT INTO `sys_menu` VALUES (45, 261, '删除', '/sys/org/remove', 'sys:org:remove', 2, NULL, 0, '2017-08-17 10:04:30', '2017-09-05 12:42:19');
INSERT INTO `sys_menu` VALUES (46, 7, '数据权限', '/sys/role/authorize/data', 'sys:role:authorizeData', 2, NULL, 0, '2017-08-17 13:48:11', '2017-09-05 12:45:54');
INSERT INTO `sys_menu` VALUES (261, 299, '合作单位', '/sys/org/list.html', NULL, 1, 'layui-icon layui-icon-friends', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (264, 1, '全局配置', 'sys/config/list.html', NULL, 1, 'layui-icon layui-icon-templeate-1', 40, NULL, NULL);
INSERT INTO `sys_menu` VALUES (267, 0, '系统监控', NULL, NULL, 0, 'layui-icon layui-icon-camera', 40, NULL, NULL);
INSERT INTO `sys_menu` VALUES (295, 0, '停车场管理', NULL, NULL, 0, 'layui-icon layui-icon-diamond', 0, NULL, NULL);
INSERT INTO `sys_menu` VALUES (296, 295, '停车场管理', 'car/parkManage/list.html', NULL, 1, 'layui-icon layui-icon-set', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (299, 0, '账户管理', NULL, NULL, 0, 'layui-icon layui-icon-username', 10, NULL, NULL);
INSERT INTO `sys_menu` VALUES (300, 0, '车场管理', NULL, NULL, 0, 'layui-icon layui-icon-release', 3, NULL, NULL);
INSERT INTO `sys_menu` VALUES (301, 300, '车辆管理', 'car/carManage/list.html', NULL, 1, 'layui-icon layui-icon-release', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (302, 0, '停车记录', NULL, NULL, 0, 'layui-icon layui-icon-file-b', 4, NULL, NULL);
INSERT INTO `sys_menu` VALUES (303, 302, '停车记录', 'car/parkingRecord/list.html', NULL, 1, 'layui-icon layui-icon-location', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (304, 0, '车牌识别', '', NULL, 0, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (305, 304, '车牌识别', 'car/distinguish/list.html', NULL, 1, 'layui-icon layui-icon-camera-fill', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (310, 0, '控制台管理', NULL, NULL, 0, 'layui-icon layui-icon-form', 6, NULL, NULL);
INSERT INTO `sys_menu` VALUES (312, 310, '统计管理', '/sys/interface/list.html', NULL, 1, 'layui-icon layui-icon-template', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (313, 312, '查询', '/sys/interface/list', 'sys:interface:list', 2, 'layui-icon layui-icon-template', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (314, 0, '财务管理', NULL, NULL, 0, 'layui-icon layui-icon-app', 7, NULL, NULL);
INSERT INTO `sys_menu` VALUES (315, 314, '订单列表', '/finance/list.html', NULL, 1, 'layui-icon layui-icon-theme', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (316, 315, '查询', '/finance/order/list', 'finance:order:list', 2, '', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `org_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级机构ID，一级机构为0',
  `code` varchar(100) DEFAULT NULL COMMENT '机构编码',
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `full_name` varchar(100) DEFAULT NULL COMMENT '机构名称(全称)',
  `director` varchar(100) DEFAULT NULL COMMENT '机构负责人',
  `email` varchar(100) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT '1' COMMENT '可用标识  1：可用  0：不可用',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='机构管理';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
BEGIN;
INSERT INTO `sys_org` VALUES (36, 0, '00006', '青岛海信', '青岛海信', '海信', NULL, NULL, NULL, NULL, 1, '2020-05-08 22:06:58', '2020-05-08 22:07:03');
INSERT INTO `sys_org` VALUES (38, 0, '00005', '青岛海尔', '青岛海尔', NULL, NULL, NULL, NULL, NULL, 1, '2020-05-08 22:17:32', '2020-11-07 10:44:25');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `org_id` bigint(255) DEFAULT NULL COMMENT '所属机构',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 17, '超级管理员', 'admin', '【系统内置】', 2, '2017-08-12 00:43:52', '2017-11-21 10:19:08');
INSERT INTO `sys_role` VALUES (4, -1, 'xxxxxx', 'aaaa', NULL, 1, '2021-07-02 12:16:34', '2021-07-02 12:16:34');
INSERT INTO `sys_role` VALUES (5, -1, 'aaa', '333333', NULL, 1, '2021-07-02 12:20:16', '2021-07-02 12:20:16');
INSERT INTO `sys_role` VALUES (7, -1, '3333', '8888', NULL, 1, '2021-07-02 12:20:25', '2021-07-02 12:20:25');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15027 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (14980, 1, 295);
INSERT INTO `sys_role_menu` VALUES (14981, 1, 296);
INSERT INTO `sys_role_menu` VALUES (14982, 1, 304);
INSERT INTO `sys_role_menu` VALUES (14983, 1, 305);
INSERT INTO `sys_role_menu` VALUES (14984, 1, 300);
INSERT INTO `sys_role_menu` VALUES (14985, 1, 301);
INSERT INTO `sys_role_menu` VALUES (14986, 1, 302);
INSERT INTO `sys_role_menu` VALUES (14987, 1, 303);
INSERT INTO `sys_role_menu` VALUES (14988, 1, 1);
INSERT INTO `sys_role_menu` VALUES (14989, 1, 7);
INSERT INTO `sys_role_menu` VALUES (14990, 1, 15);
INSERT INTO `sys_role_menu` VALUES (14991, 1, 16);
INSERT INTO `sys_role_menu` VALUES (14992, 1, 17);
INSERT INTO `sys_role_menu` VALUES (14993, 1, 18);
INSERT INTO `sys_role_menu` VALUES (14994, 1, 19);
INSERT INTO `sys_role_menu` VALUES (14995, 1, 46);
INSERT INTO `sys_role_menu` VALUES (14996, 1, 2);
INSERT INTO `sys_role_menu` VALUES (14997, 1, 20);
INSERT INTO `sys_role_menu` VALUES (14998, 1, 21);
INSERT INTO `sys_role_menu` VALUES (14999, 1, 22);
INSERT INTO `sys_role_menu` VALUES (15000, 1, 23);
INSERT INTO `sys_role_menu` VALUES (15001, 1, 264);
INSERT INTO `sys_role_menu` VALUES (15002, 1, 310);
INSERT INTO `sys_role_menu` VALUES (15003, 1, 312);
INSERT INTO `sys_role_menu` VALUES (15004, 1, 313);
INSERT INTO `sys_role_menu` VALUES (15005, 1, 314);
INSERT INTO `sys_role_menu` VALUES (15006, 1, 315);
INSERT INTO `sys_role_menu` VALUES (15007, 1, 316);
INSERT INTO `sys_role_menu` VALUES (15008, 1, 299);
INSERT INTO `sys_role_menu` VALUES (15009, 1, 6);
INSERT INTO `sys_role_menu` VALUES (15010, 1, 11);
INSERT INTO `sys_role_menu` VALUES (15011, 1, 12);
INSERT INTO `sys_role_menu` VALUES (15012, 1, 13);
INSERT INTO `sys_role_menu` VALUES (15013, 1, 14);
INSERT INTO `sys_role_menu` VALUES (15014, 1, 24);
INSERT INTO `sys_role_menu` VALUES (15015, 1, 25);
INSERT INTO `sys_role_menu` VALUES (15016, 1, 26);
INSERT INTO `sys_role_menu` VALUES (15017, 1, 261);
INSERT INTO `sys_role_menu` VALUES (15018, 1, 42);
INSERT INTO `sys_role_menu` VALUES (15019, 1, 43);
INSERT INTO `sys_role_menu` VALUES (15020, 1, 44);
INSERT INTO `sys_role_menu` VALUES (15021, 1, 45);
INSERT INTO `sys_role_menu` VALUES (15022, 1, 267);
INSERT INTO `sys_role_menu` VALUES (15023, 1, 27);
INSERT INTO `sys_role_menu` VALUES (15024, 1, 28);
INSERT INTO `sys_role_menu` VALUES (15025, 1, 29);
INSERT INTO `sys_role_menu` VALUES (15026, 1, 30);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_org`;
CREATE TABLE `sys_role_org` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `org_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='角色与机构对应关系';

-- ----------------------------
-- Records of sys_role_org
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_org` VALUES (17, 1, 17);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `org_id` bigint(20) NOT NULL COMMENT '所属机构',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `nickname` varchar(50) DEFAULT NULL COMMENT '姓名(昵称)',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `avatar_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '头像上传 0:未上传 1:上传',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `is_modify_pwd` tinyint(4) DEFAULT '0' COMMENT '是否修改过初始密码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 36, 'admin', '4cf28b576b2af52c9441d653e5a79917', 'admin', '100000@qq.com', '17788888888', 1, 0, NULL, 1, '2017-08-15 21:40:39', '2021-03-08 21:04:16', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (265, 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
