/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : graduate-oa

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-04-22 22:00:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `sex` varchar(10) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', 'admin', 'lzb', '男', '13812345678', 'lzb@163.com', '12345678', 'IBM', '北京市', '100085');
INSERT INTO `address` VALUES ('6', 'admin', 'admin', 'mail', '13812345678', 'abc@163.com', '12345678', 'IBM', '北京市', '100085');
INSERT INTO `address` VALUES ('7', 'admin', 'test', 'male', '13812345678', 'ad@163.com', '12345678', 'IBM', '北京市', '100085');
INSERT INTO `address` VALUES ('8', 'admin', 'test', '', '', '', '', '', '', '');
INSERT INTO `address` VALUES ('9', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('10', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('11', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('12', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('13', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('14', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('15', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('16', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('17', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('18', 'admin', 'test', '', '', '', '', '', '', '');
INSERT INTO `address` VALUES ('19', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('20', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('21', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('22', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('23', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('24', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('25', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('26', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('27', 'admin', 'test', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('28', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('29', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('30', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('31', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('32', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('33', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('34', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('35', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('36', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('37', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('38', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('39', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('40', 'admin', 'test2', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('41', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('42', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('43', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('44', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('45', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('46', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('47', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('48', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('49', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('50', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('51', 'admin', 'test3', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('52', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('53', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('54', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('55', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('56', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('57', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('58', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('59', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('60', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('61', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('62', 'admin', 'test4', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('63', 'admin', 'test5', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('64', 'admin', 'test5', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('65', 'admin', 'test5', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('66', 'admin', 'test5', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('67', 'admin', 'test5', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('68', 'admin', 'test5', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('69', 'admin', 'test5', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL DEFAULT '',
  `starttime` varchar(20) DEFAULT NULL,
  `endtime` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meeting
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `sendtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `plan` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------

-- ----------------------------
-- Table structure for sms
-- ----------------------------
DROP TABLE IF EXISTS `sms`;
CREATE TABLE `sms` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `sender` varchar(50) NOT NULL DEFAULT '',
  `message` text,
  `sendtime` varchar(20) DEFAULT NULL,
  `isRead` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'abc@163.com');

-- ----------------------------
-- Table structure for worklog
-- ----------------------------
DROP TABLE IF EXISTS `worklog`;
CREATE TABLE `worklog` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `logtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worklog
-- ----------------------------
