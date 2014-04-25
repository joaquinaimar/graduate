/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : graduate-shoe

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-04-25 10:53:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for after_service
-- ----------------------------
DROP TABLE IF EXISTS `after_service`;
CREATE TABLE `after_service` (
  `id` varchar(36) NOT NULL,
  `sell_id` varchar(36) DEFAULT NULL,
  `back_quantity` int(11) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL,
  `back` int(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of after_service
-- ----------------------------
INSERT INTO `after_service` VALUES ('4028d68145310e320145311154800000', '4028d6814522a1dd014522a29cb20000', null, '的萨大声', '0', null);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `no` varchar(40) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '段浩', 'SB001', '38', '天津站后广场', '0');

-- ----------------------------
-- Table structure for sell
-- ----------------------------
DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell` (
  `id` varchar(36) NOT NULL,
  `customer` varchar(40) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sell
-- ----------------------------
INSERT INTO `sell` VALUES ('4028d6814522a1dd014522a29cb20000', '段浩', '1', null, null, null);
INSERT INTO `sell` VALUES ('8a83a2cb459665910145966c45130000', '段浩', '1', '212', '1212.00', null);
INSERT INTO `sell` VALUES ('8a83a2cb45968aa50145968e0a330000', '段浩', '0', '100000', '2.00', '2014-04-25 10:52:13');
INSERT INTO `sell` VALUES ('8a83a2cb45968fd801459691fc290000', '段浩', '1', '1', '2.00', '2014-04-25 09:48:40');

-- ----------------------------
-- Table structure for shoe
-- ----------------------------
DROP TABLE IF EXISTS `shoe`;
CREATE TABLE `shoe` (
  `id` varchar(36) NOT NULL,
  `model` varchar(20) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `bid` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `repertory` int(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoe
-- ----------------------------
INSERT INTO `shoe` VALUES ('1', '型号', '品牌', '1.01', '2.01', '213', '类型');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123');

-- ----------------------------
-- View structure for after_service_view
-- ----------------------------
DROP VIEW IF EXISTS `after_service_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `after_service_view` AS select `a`.`customer` AS `customer`,`a`.`type` AS `type`,`a`.`quantity` AS `quantity`,`a`.`price` AS `price`,`b`.`id` AS `id`,`a`.`time` AS `sell_time`,`a`.`id` AS `sell_id`,`b`.`back_quantity` AS `back_quantity`,`b`.`problem` AS `problem`,`b`.`back` AS `back`,`b`.`time` AS `back_time` from (`sell` `a` left join `after_service` `b` on((`a`.`id` = `b`.`sell_id`))) where (`a`.`type` = '1') ;
