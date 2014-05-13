/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : graduate-law

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-05-13 14:04:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for lawyer
-- ----------------------------
DROP TABLE IF EXISTS `lawyer`;
CREATE TABLE `lawyer` (
  `id` varchar(36) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `skill` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lawyer
-- ----------------------------
INSERT INTO `lawyer` VALUES ('1', '段浩', '经济', '1231', 'abc@163.com', '100万项目');

-- ----------------------------
-- Table structure for lawyer_detail
-- ----------------------------
DROP TABLE IF EXISTS `lawyer_detail`;
CREATE TABLE `lawyer_detail` (
  `id` varchar(36) NOT NULL,
  `lawyer_id` varchar(36) DEFAULT NULL,
  `resume` varchar(1000) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lawyer_detail
-- ----------------------------
INSERT INTO `lawyer_detail` VALUES ('1', '1', '1000万', '失败');
INSERT INTO `lawyer_detail` VALUES ('2', '1', '110万', '成功');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(36) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', 'dads', 'dasdasd', '2014-05-13 13:47:07');
INSERT INTO `news` VALUES ('8a83a2cb45f427680145f427dd990000', 'fsdfd', 'bhhfghfgh', '2014-05-13 13:57:04');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `id` varchar(36) NOT NULL,
  `lawyer_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES ('4028d681457ef84101457ef956ff0000', '1', '1', '和双创打官司', '2014-04-20 19:50:41');

-- ----------------------------
-- Table structure for service_item
-- ----------------------------
DROP TABLE IF EXISTS `service_item`;
CREATE TABLE `service_item` (
  `id` varchar(36) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `charge_standard` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_item
-- ----------------------------
INSERT INTO `service_item` VALUES ('1', '经济案', '10%', '纠纷');

-- ----------------------------
-- Table structure for suggestion
-- ----------------------------
DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `id` varchar(36) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suggestion
-- ----------------------------
INSERT INTO `suggestion` VALUES ('8a83a2cb45f34b6f0145f34fb1050000', 'admin', 'dasdasdsad', '2014-05-13 10:00:57');
INSERT INTO `suggestion` VALUES ('8a83a2cb45f396db0145f39899b40000', 'admin', '21212', '2014-05-13 11:20:35');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(36) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '33333', 'fsdfdfds');
INSERT INTO `user` VALUES ('4028fe8145ea4fab0145ea50657d0000', 'a1', '123', '123', '321');

-- ----------------------------
-- View structure for reserve_manage
-- ----------------------------
DROP VIEW IF EXISTS `reserve_manage`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `reserve_manage` AS select `r`.`id` AS `id`,`r`.`lawyer_id` AS `lawyer_id`,`r`.`user_id` AS `user_id`,`r`.`content` AS `content`,`r`.`time` AS `time`,`l`.`name` AS `lawyer_name`,`u`.`username` AS `user_name` from ((`reserve` `r` join `lawyer` `l` on((`l`.`id` = `r`.`lawyer_id`))) join `user` `u` on((`u`.`id` = `r`.`user_id`))) ;
