/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : club

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-05-05 13:45:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for billing_type
-- ----------------------------
DROP TABLE IF EXISTS `billing_type`;
CREATE TABLE `billing_type` (
  `billing_type_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`billing_type_id`),
  UNIQUE KEY `billing_type_id_UNIQUE` (`billing_type_id`),
  UNIQUE KEY `descr_UNIQUE` (`descr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of billing_type
-- ----------------------------
INSERT INTO `billing_type` VALUES ('1', 'Hour');
INSERT INTO `billing_type` VALUES ('2', 'Inning');

-- ----------------------------
-- Table structure for ladder
-- ----------------------------
DROP TABLE IF EXISTS `ladder`;
CREATE TABLE `ladder` (
  `ladder_id` int(10) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(45) DEFAULT NULL,
  `ladder_price` double NOT NULL,
  `comment` varchar(45) NOT NULL,
  `ladder_status_id` int(11) NOT NULL,
  PRIMARY KEY (`ladder_id`),
  UNIQUE KEY `UK_ix4ylnt90kse3ju76ntu1i6mh` (`person_id`),
  KEY `FK_3bqkt3vd7hwpaof5o1lv84n3s` (`ladder_status_id`),
  CONSTRAINT `FK_3bqkt3vd7hwpaof5o1lv84n3s` FOREIGN KEY (`ladder_status_id`) REFERENCES `ladder_status` (`ladder_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ladder
-- ----------------------------
INSERT INTO `ladder` VALUES ('1', '64', '10', '斯诺克，九球', '3');
INSERT INTO `ladder` VALUES ('2', '66', '20', '台球2', '3');
INSERT INTO `ladder` VALUES ('3', '65', '12', '台球', '1');

-- ----------------------------
-- Table structure for ladder_status
-- ----------------------------
DROP TABLE IF EXISTS `ladder_status`;
CREATE TABLE `ladder_status` (
  `ladder_status_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`ladder_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ladder_status
-- ----------------------------
INSERT INTO `ladder_status` VALUES ('1', '空闲');
INSERT INTO `ladder_status` VALUES ('2', '陪练中');
INSERT INTO `ladder_status` VALUES ('3', '删除');

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market` (
  `market_id` int(11) NOT NULL AUTO_INCREMENT,
  `ware_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `amount` double NOT NULL,
  `settlement_datetime` datetime NOT NULL,
  PRIMARY KEY (`market_id`),
  KEY `FK_mugejnccbtamhyeqlpanxlq1w` (`ware_id`),
  CONSTRAINT `FK_mugejnccbtamhyeqlpanxlq1w` FOREIGN KEY (`ware_id`) REFERENCES `ware` (`ware_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market
-- ----------------------------
INSERT INTO `market` VALUES ('1', '1', '12', '30', '2014-05-03 13:20:59');
INSERT INTO `market` VALUES ('2', '3', '2', '10', '2014-05-03 13:20:59');
INSERT INTO `market` VALUES ('3', '1', '12', '30', '2014-05-03 13:20:59');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(10) NOT NULL AUTO_INCREMENT,
  `pan` varchar(45) NOT NULL,
  `person_id` int(10) NOT NULL,
  `member_type_id` int(10) NOT NULL,
  `member_status_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `balance` double NOT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `UK_lj6fh3bn7tte36urtql6s6wib` (`person_id`),
  KEY `FK_glqknrqa7l14j7a67x6rddfl` (`member_status_id`),
  KEY `FK_7nt1vwpgx3enrvj9oxqkmpwyp` (`member_type_id`),
  KEY `FK_lj6fh3bn7tte36urtql6s6wib` (`person_id`),
  CONSTRAINT `FK_7nt1vwpgx3enrvj9oxqkmpwyp` FOREIGN KEY (`member_type_id`) REFERENCES `member_type` (`member_type_id`),
  CONSTRAINT `FK_glqknrqa7l14j7a67x6rddfl` FOREIGN KEY (`member_status_id`) REFERENCES `member_status` (`member_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('13', '500010', '18', '2', '1', '2014-04-12', '9999-12-31', '70');
INSERT INTO `member` VALUES ('14', '500011', '50', '3', '3', '2014-04-13', '9999-12-31', '200');
INSERT INTO `member` VALUES ('15', '500012', '33', '1', '1', '2014-04-13', '9999-12-31', '10.55');
INSERT INTO `member` VALUES ('18', '500013', '36', '1', '3', '2014-04-16', '9999-12-31', '100');
INSERT INTO `member` VALUES ('19', '500014', '37', '1', '1', '2014-04-16', '9999-12-31', '1.9000000000000004');
INSERT INTO `member` VALUES ('20', '500015', '38', '1', '1', '2014-04-16', '9999-12-31', '26.25');
INSERT INTO `member` VALUES ('21', '500016', '53', '1', '1', '2014-04-18', '9999-12-31', '92.9');
INSERT INTO `member` VALUES ('24', '500017', '51', '1', '3', '2014-04-18', '9999-12-31', '80');
INSERT INTO `member` VALUES ('25', '500018', '54', '1', '1', '2014-04-19', '9999-12-31', '10');
INSERT INTO `member` VALUES ('26', '500019', '55', '1', '1', '2014-04-19', '9999-12-31', '100');
INSERT INTO `member` VALUES ('27', '500020', '56', '1', '1', '2014-04-19', '9999-12-31', '100');
INSERT INTO `member` VALUES ('28', '500021', '57', '1', '1', '2014-04-19', '9999-12-31', '100');

-- ----------------------------
-- Table structure for member_status
-- ----------------------------
DROP TABLE IF EXISTS `member_status`;
CREATE TABLE `member_status` (
  `member_status_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`member_status_id`),
  UNIQUE KEY `descr_UNIQUE` (`descr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_status
-- ----------------------------
INSERT INTO `member_status` VALUES ('2', '停止');
INSERT INTO `member_status` VALUES ('3', '删除');
INSERT INTO `member_status` VALUES ('1', '可用');

-- ----------------------------
-- Table structure for member_type
-- ----------------------------
DROP TABLE IF EXISTS `member_type`;
CREATE TABLE `member_type` (
  `member_type_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  `member_level` int(2) NOT NULL,
  PRIMARY KEY (`member_type_id`),
  UNIQUE KEY `member_type_id_UNIQUE` (`member_type_id`),
  UNIQUE KEY `descr_UNIQUE` (`descr`),
  UNIQUE KEY `member_level_UNIQUE` (`member_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_type
-- ----------------------------
INSERT INTO `member_type` VALUES ('1', '白金会员', '0');
INSERT INTO `member_type` VALUES ('2', '黄金会员', '1');
INSERT INTO `member_type` VALUES ('3', '铂金会员', '2');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `member_id` int(10) NOT NULL,
  `place_id` int(10) NOT NULL,
  `order_status_id` int(10) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_hk1trr9mwboq35fssa59rnodg` (`member_id`),
  KEY `FK_sd54uh7m15taltnaj0e22cuny` (`order_status_id`),
  KEY `FK_94or0ygo8a5vi1vqcfxfqa0q6` (`place_id`),
  CONSTRAINT `FK_94or0ygo8a5vi1vqcfxfqa0q6` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`),
  CONSTRAINT `FK_hk1trr9mwboq35fssa59rnodg` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FK_sd54uh7m15taltnaj0e22cuny` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '13', '2', '1', '2014-04-18 21:00:00', null);
INSERT INTO `orders` VALUES ('2', '14', '7', '1', '2014-04-18 21:00:00', null);
INSERT INTO `orders` VALUES ('3', '15', '4', '1', '2014-04-18 21:00:00', null);
INSERT INTO `orders` VALUES ('4', '20', '5', '1', '2014-04-18 21:00:00', null);
INSERT INTO `orders` VALUES ('6', '20', '8', '1', '2014-04-18 21:00:00', null);
INSERT INTO `orders` VALUES ('7', '13', '4', '1', '2014-04-18 21:42:46', null);
INSERT INTO `orders` VALUES ('8', '21', '4', '1', '2014-04-18 22:23:03', null);
INSERT INTO `orders` VALUES ('9', '24', '10', '1', '2014-04-18 22:34:15', null);
INSERT INTO `orders` VALUES ('10', '21', '4', '1', '2014-04-20 19:08:07', null);
INSERT INTO `orders` VALUES ('11', '21', '4', '2', '2014-05-02 16:52:48', '2014-05-02 20:53:37');
INSERT INTO `orders` VALUES ('12', '21', '8', '2', '2014-05-02 18:54:28', '2014-05-02 20:55:03');
INSERT INTO `orders` VALUES ('13', '19', '7', '2', '2014-05-05 08:44:33', '2014-05-05 09:15:12');

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status` (
  `order_status_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`order_status_id`),
  UNIQUE KEY `descr_UNIQUE` (`descr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES ('2', '已结算');
INSERT INTO `order_status` VALUES ('1', '进行中');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `person_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('15', '李四', '天津，河东区');
INSERT INTO `person` VALUES ('16', '王五', '河北区');
INSERT INTO `person` VALUES ('18', '赵六', '河东区');
INSERT INTO `person` VALUES ('19', '李四', '河北区');
INSERT INTO `person` VALUES ('21', '李四宇', '河北区');
INSERT INTO `person` VALUES ('22', '李四宇希', '河北区，宁园路');
INSERT INTO `person` VALUES ('23', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('24', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('25', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('26', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('27', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('28', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('29', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('31', '王五六', '天津，河东区');
INSERT INTO `person` VALUES ('32', '王五', '天津，河北区');
INSERT INTO `person` VALUES ('33', '王五', '天津，河北区');
INSERT INTO `person` VALUES ('36', '赵赵', '天津');
INSERT INTO `person` VALUES ('37', '赵小林', '天津，河东区');
INSERT INTO `person` VALUES ('38', '赵大林', '天津');
INSERT INTO `person` VALUES ('39', '哈哈', '天津，河东区');
INSERT INTO `person` VALUES ('40', '小明', '天津，河东区');
INSERT INTO `person` VALUES ('41', '小明', '天津，河北区');
INSERT INTO `person` VALUES ('44', '小赵', '天津，河东区');
INSERT INTO `person` VALUES ('45', '小赵', '天津，河北区');
INSERT INTO `person` VALUES ('47', '小李', '天津，河东区');
INSERT INTO `person` VALUES ('48', '李四宇希', '河北区，宁园路');
INSERT INTO `person` VALUES ('49', '李四宇希', '河北区，宁园路');
INSERT INTO `person` VALUES ('50', '李四宇希', '河北区，宁园路');
INSERT INTO `person` VALUES ('51', '小李', '天津，河东区');
INSERT INTO `person` VALUES ('52', '哈哈', '天津，河东区');
INSERT INTO `person` VALUES ('53', '哈哈', '天津，河东区');
INSERT INTO `person` VALUES ('54', '李小虎', '天津，河东区');
INSERT INTO `person` VALUES ('55', '李小鲍', '天津，河东区');
INSERT INTO `person` VALUES ('56', '李小狗', '天津，河东区');
INSERT INTO `person` VALUES ('57', '赵赵', '天津，河东区');
INSERT INTO `person` VALUES ('60', '李老师', '河北区');
INSERT INTO `person` VALUES ('61', '李老师', '河北区');
INSERT INTO `person` VALUES ('62', '李老师2', '河北区2');
INSERT INTO `person` VALUES ('63', '李老师2', '河北区2');
INSERT INTO `person` VALUES ('64', '李四', '天津，河东区');
INSERT INTO `person` VALUES ('65', '李老师', '河北区');
INSERT INTO `person` VALUES ('66', '李老师2', '河北区2');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `place_id` int(10) NOT NULL AUTO_INCREMENT,
  `place_type_id` int(2) NOT NULL,
  `place_status_id` int(2) NOT NULL,
  `place_nbr` varchar(10) NOT NULL,
  `current_order_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`place_id`),
  UNIQUE KEY `place_id_UNIQUE` (`place_id`),
  KEY `FK_jklm1wg28dpnh0igl9gv35us7` (`place_status_id`),
  KEY `FK_k7r7qpc4jatis2tpodjevwh8o` (`place_type_id`),
  KEY `FK_4aboj9f8y1yenjqmvrddibjld` (`current_order_id`),
  CONSTRAINT `FK_4aboj9f8y1yenjqmvrddibjld` FOREIGN KEY (`current_order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK_jklm1wg28dpnh0igl9gv35us7` FOREIGN KEY (`place_status_id`) REFERENCES `place_status` (`place_status_id`),
  CONSTRAINT `FK_k7r7qpc4jatis2tpodjevwh8o` FOREIGN KEY (`place_type_id`) REFERENCES `place_type` (`place_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('2', '1', '6', '01', null);
INSERT INTO `place` VALUES ('4', '1', '4', '02', null);
INSERT INTO `place` VALUES ('5', '1', '4', '005', null);
INSERT INTO `place` VALUES ('7', '1', '4', '006', null);
INSERT INTO `place` VALUES ('8', '2', '4', '007', null);
INSERT INTO `place` VALUES ('9', '1', '4', '100', null);
INSERT INTO `place` VALUES ('10', '1', '4', '200', null);
INSERT INTO `place` VALUES ('12', '1', '4', '201', null);

-- ----------------------------
-- Table structure for place_status
-- ----------------------------
DROP TABLE IF EXISTS `place_status`;
CREATE TABLE `place_status` (
  `place_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`place_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_status
-- ----------------------------
INSERT INTO `place_status` VALUES ('1', '安装');
INSERT INTO `place_status` VALUES ('2', '调试');
INSERT INTO `place_status` VALUES ('3', '维护');
INSERT INTO `place_status` VALUES ('4', '空闲可用');
INSERT INTO `place_status` VALUES ('5', '使用中');
INSERT INTO `place_status` VALUES ('6', '删除');

-- ----------------------------
-- Table structure for place_type
-- ----------------------------
DROP TABLE IF EXISTS `place_type`;
CREATE TABLE `place_type` (
  `place_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`place_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place_type
-- ----------------------------
INSERT INTO `place_type` VALUES ('1', '斯诺克(普通)');
INSERT INTO `place_type` VALUES ('2', '斯诺克(会员)');
INSERT INTO `place_type` VALUES ('3', '斯诺克(包厢)');
INSERT INTO `place_type` VALUES ('4', '9球(普通)');
INSERT INTO `place_type` VALUES ('5', '9球(会员)');
INSERT INTO `place_type` VALUES ('6', '9球(包厢)');

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `price_id` int(10) NOT NULL AUTO_INCREMENT,
  `place_type_id` int(10) NOT NULL,
  `billing_type_id` int(10) NOT NULL,
  `unit_price` double NOT NULL,
  PRIMARY KEY (`price_id`),
  UNIQUE KEY `price_id_UNIQUE` (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES ('1', '1', '1', '20');
INSERT INTO `price` VALUES ('2', '2', '2', '9.5');
INSERT INTO `price` VALUES ('3', '3', '1', '30');
INSERT INTO `price` VALUES ('4', '4', '1', '40');

-- ----------------------------
-- Table structure for settlement
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `settlement_id` int(10) NOT NULL AUTO_INCREMENT,
  `settlement_type_id` int(10) NOT NULL,
  `settlement_status_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `amount` double NOT NULL,
  `settlement_datetime` datetime NOT NULL,
  PRIMARY KEY (`settlement_id`),
  KEY `FK_3qgbgwra54nyagtrmxlq706if` (`order_id`),
  KEY `FK_9f2xqkk7o7it9p4f0rraevemp` (`settlement_status_id`),
  KEY `FK_sd5w9un5xjehnpqhfi3c99eng` (`settlement_type_id`),
  CONSTRAINT `FK_3qgbgwra54nyagtrmxlq706if` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `FK_9f2xqkk7o7it9p4f0rraevemp` FOREIGN KEY (`settlement_status_id`) REFERENCES `settlement_status` (`settlement_status_id`),
  CONSTRAINT `FK_sd5w9un5xjehnpqhfi3c99eng` FOREIGN KEY (`settlement_type_id`) REFERENCES `settlement_type` (`settlement_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settlement
-- ----------------------------
INSERT INTO `settlement` VALUES ('1', '1', '1', '3', '0', '2014-04-18 21:42:04');
INSERT INTO `settlement` VALUES ('2', '1', '1', '7', '0', '2014-04-18 22:43:26');
INSERT INTO `settlement` VALUES ('3', '1', '1', '8', '0', '2014-04-18 22:23:14');
INSERT INTO `settlement` VALUES ('4', '1', '1', '9', '0', '2014-04-18 23:34:48');
INSERT INTO `settlement` VALUES ('5', '1', '1', '4', '0', '2014-04-18 23:35:09');
INSERT INTO `settlement` VALUES ('6', '1', '1', '2', '0', '2014-04-18 23:35:13');
INSERT INTO `settlement` VALUES ('7', '1', '1', '6', '0', '2014-04-18 23:35:18');
INSERT INTO `settlement` VALUES ('8', '1', '1', '10', '0', '2014-04-20 20:14:31');
INSERT INTO `settlement` VALUES ('9', '1', '1', '11', '72', '2014-05-02 20:53:37');
INSERT INTO `settlement` VALUES ('10', '1', '1', '12', '17.1', '2014-05-02 20:55:03');
INSERT INTO `settlement` VALUES ('11', '1', '1', '13', '8.1', '2014-05-05 09:15:12');

-- ----------------------------
-- Table structure for settlement_status
-- ----------------------------
DROP TABLE IF EXISTS `settlement_status`;
CREATE TABLE `settlement_status` (
  `settlement_status_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`settlement_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settlement_status
-- ----------------------------
INSERT INTO `settlement_status` VALUES ('1', '结算成功');
INSERT INTO `settlement_status` VALUES ('2', '结算失败');

-- ----------------------------
-- Table structure for settlement_type
-- ----------------------------
DROP TABLE IF EXISTS `settlement_type`;
CREATE TABLE `settlement_type` (
  `settlement_type_id` int(10) NOT NULL,
  `descr` varchar(45) NOT NULL,
  PRIMARY KEY (`settlement_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settlement_type
-- ----------------------------
INSERT INTO `settlement_type` VALUES ('1', '场地运动费');
INSERT INTO `settlement_type` VALUES ('2', '商品销售');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123');
INSERT INTO `user` VALUES ('2', 'test', '123');
INSERT INTO `user` VALUES ('3', 'test2', '123456');
INSERT INTO `user` VALUES ('4', '', '');
INSERT INTO `user` VALUES ('5', 'test123', '123');
INSERT INTO `user` VALUES ('6', 'abc', '123');
INSERT INTO `user` VALUES ('7', 'eee', '123');
INSERT INTO `user` VALUES ('8', 'fff', '123');
INSERT INTO `user` VALUES ('9', 'admin', '123');
INSERT INTO `user` VALUES ('10', 'adm', '123');

-- ----------------------------
-- Table structure for ware
-- ----------------------------
DROP TABLE IF EXISTS `ware`;
CREATE TABLE `ware` (
  `ware_id` int(11) NOT NULL AUTO_INCREMENT,
  `ware_name` varchar(45) NOT NULL,
  `ware_balance` int(11) NOT NULL,
  `ware_price` double NOT NULL,
  `warehouse_id` int(9) NOT NULL,
  PRIMARY KEY (`ware_id`),
  KEY `FK_9wdo23gxnd2hv1phvlnfw8unj` (`warehouse_id`),
  CONSTRAINT `FK_9wdo23gxnd2hv1phvlnfw8unj` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ware
-- ----------------------------
INSERT INTO `ware` VALUES ('1', '可口可乐', '152', '2.5', '1');
INSERT INTO `ware` VALUES ('2', '可口可乐', '190', '2.5', '1');
INSERT INTO `ware` VALUES ('3', '雪碧', '98', '5', '1');
INSERT INTO `ware` VALUES ('4', '雪碧', '100', '5', '1');
INSERT INTO `ware` VALUES ('5', '百事可乐', '90', '5', '8');

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `warehouse_id` int(9) NOT NULL AUTO_INCREMENT,
  `warehouse_nbr` varchar(45) NOT NULL,
  `warehouse_name` varchar(45) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------
INSERT INTO `warehouse` VALUES ('1', '001', '食品仓库');
INSERT INTO `warehouse` VALUES ('2', '002', '器材仓库');
INSERT INTO `warehouse` VALUES ('3', '003', '器材仓库2');
INSERT INTO `warehouse` VALUES ('4', '004', '建材仓库');
INSERT INTO `warehouse` VALUES ('5', '005', '建材仓库2');
INSERT INTO `warehouse` VALUES ('6', '006', '商品仓库');
INSERT INTO `warehouse` VALUES ('7', '006', '商品仓库');
INSERT INTO `warehouse` VALUES ('8', '007', '食品仓库02');
INSERT INTO `warehouse` VALUES ('9', '008', '食品仓库06');
INSERT INTO `warehouse` VALUES ('10', '009', '食品仓库09');
