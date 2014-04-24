/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : graduate-club

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-04-24 11:36:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ladder
-- ----------------------------
DROP TABLE IF EXISTS `ladder`;
CREATE TABLE `ladder` (
  `ladder_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `ladder_price` double DEFAULT NULL,
  `ladder_status_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`ladder_id`),
  UNIQUE KEY `UK_ix4ylnt90kse3ju76ntu1i6mh` (`person_id`),
  KEY `FK_3bqkt3vd7hwpaof5o1lv84n3s` (`ladder_status_id`),
  KEY `FK_ix4ylnt90kse3ju76ntu1i6mh` (`person_id`),
  CONSTRAINT `FK_ix4ylnt90kse3ju76ntu1i6mh` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `FK_3bqkt3vd7hwpaof5o1lv84n3s` FOREIGN KEY (`ladder_status_id`) REFERENCES `ladder_status` (`ladder_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ladder
-- ----------------------------

-- ----------------------------
-- Table structure for ladder_status
-- ----------------------------
DROP TABLE IF EXISTS `ladder_status`;
CREATE TABLE `ladder_status` (
  `ladder_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ladder_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ladder_status
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` double DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `member_status_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `UK_lj6fh3bn7tte36urtql6s6wib` (`person_id`),
  KEY `FK_glqknrqa7l14j7a67x6rddfl` (`member_status_id`),
  KEY `FK_7nt1vwpgx3enrvj9oxqkmpwyp` (`member_type_id`),
  KEY `FK_lj6fh3bn7tte36urtql6s6wib` (`person_id`),
  CONSTRAINT `FK_lj6fh3bn7tte36urtql6s6wib` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `FK_7nt1vwpgx3enrvj9oxqkmpwyp` FOREIGN KEY (`member_type_id`) REFERENCES `member_type` (`member_type_id`),
  CONSTRAINT `FK_glqknrqa7l14j7a67x6rddfl` FOREIGN KEY (`member_status_id`) REFERENCES `member_status` (`member_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for member_status
-- ----------------------------
DROP TABLE IF EXISTS `member_status`;
CREATE TABLE `member_status` (
  `member_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_status
-- ----------------------------

-- ----------------------------
-- Table structure for member_type
-- ----------------------------
DROP TABLE IF EXISTS `member_type`;
CREATE TABLE `member_type` (
  `member_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) DEFAULT NULL,
  `member_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_type
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `end_datetime` datetime DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_hk1trr9mwboq35fssa59rnodg` (`member_id`),
  KEY `FK_sd54uh7m15taltnaj0e22cuny` (`order_status_id`),
  KEY `FK_94or0ygo8a5vi1vqcfxfqa0q6` (`place_id`),
  CONSTRAINT `FK_94or0ygo8a5vi1vqcfxfqa0q6` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`),
  CONSTRAINT `FK_hk1trr9mwboq35fssa59rnodg` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FK_sd54uh7m15taltnaj0e22cuny` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_status
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `place_id` int(10) NOT NULL AUTO_INCREMENT,
  `place_type_id` int(2) NOT NULL,
  `place_current_status_id` int(2) NOT NULL,
  `place_nbr` varchar(10) NOT NULL,
  `current_order_id` int(11) DEFAULT NULL,
  `place_status_id` int(11) NOT NULL,
  PRIMARY KEY (`place_id`),
  UNIQUE KEY `place_id_UNIQUE` (`place_id`),
  KEY `FK_4aboj9f8y1yenjqmvrddibjld` (`current_order_id`),
  KEY `FK_n03iguvtvxprqamakavba6v4s` (`place_status_id`),
  KEY `FK_k7r7qpc4jatis2tpodjevwh8o` (`place_type_id`),
  CONSTRAINT `FK_k7r7qpc4jatis2tpodjevwh8o` FOREIGN KEY (`place_type_id`) REFERENCES `place_type` (`place_type_id`),
  CONSTRAINT `FK_4aboj9f8y1yenjqmvrddibjld` FOREIGN KEY (`current_order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK_n03iguvtvxprqamakavba6v4s` FOREIGN KEY (`place_status_id`) REFERENCES `place_status` (`place_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------

-- ----------------------------
-- Table structure for place_status
-- ----------------------------
DROP TABLE IF EXISTS `place_status`;
CREATE TABLE `place_status` (
  `place_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`place_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_status
-- ----------------------------

-- ----------------------------
-- Table structure for place_type
-- ----------------------------
DROP TABLE IF EXISTS `place_type`;
CREATE TABLE `place_type` (
  `place_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`place_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_type
-- ----------------------------

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_type_id` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------

-- ----------------------------
-- Table structure for settlement
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `settlement_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `settlement_datetime` datetime DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `settlement_status_id` int(11) NOT NULL,
  `settlement_type_id` int(11) NOT NULL,
  PRIMARY KEY (`settlement_id`),
  KEY `FK_3qgbgwra54nyagtrmxlq706if` (`order_id`),
  KEY `FK_9f2xqkk7o7it9p4f0rraevemp` (`settlement_status_id`),
  KEY `FK_sd5w9un5xjehnpqhfi3c99eng` (`settlement_type_id`),
  CONSTRAINT `FK_sd5w9un5xjehnpqhfi3c99eng` FOREIGN KEY (`settlement_type_id`) REFERENCES `settlement_type` (`settlement_type_id`),
  CONSTRAINT `FK_3qgbgwra54nyagtrmxlq706if` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK_9f2xqkk7o7it9p4f0rraevemp` FOREIGN KEY (`settlement_status_id`) REFERENCES `settlement_status` (`settlement_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settlement
-- ----------------------------

-- ----------------------------
-- Table structure for settlement_status
-- ----------------------------
DROP TABLE IF EXISTS `settlement_status`;
CREATE TABLE `settlement_status` (
  `settlement_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`settlement_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settlement_status
-- ----------------------------

-- ----------------------------
-- Table structure for settlement_type
-- ----------------------------
DROP TABLE IF EXISTS `settlement_type`;
CREATE TABLE `settlement_type` (
  `settlement_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`settlement_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settlement_type
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
