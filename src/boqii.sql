/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : boqii

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-20 20:17:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `details` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `num` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '364.70', '../img/yq1.jpg', '2');
INSERT INTO `car` VALUES ('3', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '359.57', '../img/yq3.jpg', '1');
INSERT INTO `car` VALUES ('9', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '171.86', '../img/yq9.jpg', '2');

-- ----------------------------
-- Table structure for production
-- ----------------------------
DROP TABLE IF EXISTS `production`;
CREATE TABLE `production` (
  `id` int(10) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `goods_imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `category` varchar(255) DEFAULT '',
  `details` varchar(255) DEFAULT NULL,
  `view` int(10) DEFAULT '1',
  `add_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of production
-- ----------------------------
INSERT INTO `production` VALUES ('1', '../img/yq1.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '364.70', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:32');
INSERT INTO `production` VALUES ('2', '../img/yq2.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '149.37', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:32');
INSERT INTO `production` VALUES ('3', '../img/yq3.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '359.57', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:33');
INSERT INTO `production` VALUES ('4', '../img/yq4.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '275.20', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:33');
INSERT INTO `production` VALUES ('5', '../img/yq5.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '303.74', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:33');
INSERT INTO `production` VALUES ('6', '../img/yq6.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '122.64', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:34');
INSERT INTO `production` VALUES ('7', '../img/yq7.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '35.49', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:34');
INSERT INTO `production` VALUES ('8', '../img/yq8.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '292.78', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:34');
INSERT INTO `production` VALUES ('9', '../img/yq9.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '171.86', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:35');
INSERT INTO `production` VALUES ('10', '../img/yq10.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '129.64', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:35');
INSERT INTO `production` VALUES ('11', '../img/yq11.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '176.68', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:33');
INSERT INTO `production` VALUES ('12', '../img/yq12.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '32.75', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:33');
INSERT INTO `production` VALUES ('13', '../img/yq13.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '397.05', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:34');
INSERT INTO `production` VALUES ('14', '../img/yq14.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '265.79', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:34');
INSERT INTO `production` VALUES ('15', '../img/yq15.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '338.35', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:35');
INSERT INTO `production` VALUES ('16', '../img/yq16.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '165.68', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:35');
INSERT INTO `production` VALUES ('17', '../img/yq17.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '380.71', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:36');
INSERT INTO `production` VALUES ('18', '../img/yq18.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '200.58', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:36');
INSERT INTO `production` VALUES ('19', '../img/yq19.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '339.08', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:37');
INSERT INTO `production` VALUES ('20', '../img/yq20.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '226.04', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:38');
INSERT INTO `production` VALUES ('21', '../img/yq21.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '42.14', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:39');
INSERT INTO `production` VALUES ('22', '../img/yq22.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '344.97', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 09:53:39');
INSERT INTO `production` VALUES ('23', '../img/yq23.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '244.31', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:39');
INSERT INTO `production` VALUES ('24', '../img/yq24.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '119.86', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:39');
INSERT INTO `production` VALUES ('25', '../img/yq25.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '215.00', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:40');
INSERT INTO `production` VALUES ('26', '../img/yq26.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '275.64', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.3kg', '1', '2017-11-18 11:19:40');
INSERT INTO `production` VALUES ('27', '../img/yq27.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '452.66', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.4kg', '1', '2017-11-18 11:19:40');
INSERT INTO `production` VALUES ('28', '../img/yq28.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '964.33', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.5kg', '1', '2017-11-18 11:19:41');
INSERT INTO `production` VALUES ('29', '../img/yq29.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '983.34', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.6kg', '1', '2017-11-18 11:19:41');
INSERT INTO `production` VALUES ('30', '../img/yq30.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '660.27', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.7kg', '1', '2017-11-18 11:19:41');
INSERT INTO `production` VALUES ('31', '../img/yq31.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '150.71', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.8kg', '1', '2017-11-18 11:19:42');
INSERT INTO `production` VALUES ('32', '../img/yq32.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '439.10', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.9kg', '1', '2017-11-18 11:19:42');
INSERT INTO `production` VALUES ('33', '../img/yq33.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '894.76', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.10kg', '1', '2017-11-18 11:19:42');
INSERT INTO `production` VALUES ('34', '../img/yq34.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '167.98', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.11kg', '1', '2017-11-18 11:19:42');
INSERT INTO `production` VALUES ('35', '../img/yq35.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '409.61', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.12kg', '1', '2017-11-18 11:19:43');
INSERT INTO `production` VALUES ('36', '../img/yq36.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '998.97', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.13kg', '1', '2017-11-18 11:19:44');
INSERT INTO `production` VALUES ('37', '../img/yq37.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '578.71', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.14kg', '1', '2017-11-18 11:19:44');
INSERT INTO `production` VALUES ('38', '../img/yq38.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '436.49', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.15kg', '1', '2017-11-18 11:19:44');
INSERT INTO `production` VALUES ('39', '../img/yq39.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '291.80', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.16kg', '1', '2017-11-18 11:19:45');
INSERT INTO `production` VALUES ('40', '../img/yq40.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '670.18', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.17kg', '1', '2017-11-18 11:19:45');
INSERT INTO `production` VALUES ('41', '../img/yq41.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '624.07', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.18kg', '1', '2017-11-18 11:19:45');
INSERT INTO `production` VALUES ('42', '../img/yq42.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '560.81', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.19kg', '1', '2017-11-18 11:19:46');
INSERT INTO `production` VALUES ('43', '../img/yq43.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '865.32', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.20kg', '1', '2017-11-18 11:19:46');
INSERT INTO `production` VALUES ('44', '../img/yq44.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '571.12', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.21kg', '1', '2017-11-18 11:19:46');
INSERT INTO `production` VALUES ('45', '../img/yq45.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '482.97', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.22kg', '1', '2017-11-18 11:19:47');
INSERT INTO `production` VALUES ('46', '../img/yq46.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '668.19', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.23kg', '1', '2017-11-18 11:19:47');
INSERT INTO `production` VALUES ('47', '../img/yq47.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '147.04', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.24kg', '1', '2017-11-18 11:19:48');
INSERT INTO `production` VALUES ('48', '../img/yq48.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '699.63', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.25kg', '1', '2017-11-18 11:19:48');
INSERT INTO `production` VALUES ('49', '../img/yq49.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '362.25', 'youquanliang', '宝路 幼犬粮肉类奶蔬菜谷物配方狗粮1.26kg', '1', '2017-11-18 11:19:48');
INSERT INTO `production` VALUES ('50', '../img/m1.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '200.30', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP61', '1', '2017-11-18 11:19:49');
INSERT INTO `production` VALUES ('51', '../img/m2.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '975.80', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP61', '1', '2017-11-18 11:19:49');
INSERT INTO `production` VALUES ('52', '../img/m3.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '533.49', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP62', '1', '2017-11-18 11:19:49');
INSERT INTO `production` VALUES ('53', '../img/m4.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '449.34', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP63', '1', '2017-11-18 11:19:50');
INSERT INTO `production` VALUES ('54', '../img/m5.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '944.83', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP64', '1', '2017-11-18 11:19:50');
INSERT INTO `production` VALUES ('55', '../img/m6.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '882.60', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP65', '1', '2017-11-18 11:19:50');
INSERT INTO `production` VALUES ('56', '../img/m7.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '46.47', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP66', '1', '2017-11-18 11:19:51');
INSERT INTO `production` VALUES ('57', '../img/m8.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '579.78', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP67', '1', '2017-11-18 11:19:51');
INSERT INTO `production` VALUES ('58', '../img/m9.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '618.97', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP68', '1', '2017-11-18 11:19:52');
INSERT INTO `production` VALUES ('59', '../img/m10.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '639.86', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP69', '1', '2017-11-18 11:19:52');
INSERT INTO `production` VALUES ('60', '../img/m11.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '614.47', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP70', '1', '2017-11-18 11:19:52');
INSERT INTO `production` VALUES ('61', '../img/m12.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '711.60', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP71', '1', '2017-11-18 11:19:53');
INSERT INTO `production` VALUES ('62', '../img/m13.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '59.34', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP72', '1', '2017-11-18 11:19:53');
INSERT INTO `production` VALUES ('63', '../img/m14.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '21.60', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP73', '1', '2017-11-18 11:19:53');
INSERT INTO `production` VALUES ('64', '../img/m15.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '692.18', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP74', '1', '2017-11-18 11:19:54');
INSERT INTO `production` VALUES ('65', '../img/m16.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '994.26', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP75', '1', '2017-11-18 11:19:54');
INSERT INTO `production` VALUES ('66', '../img/m17.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '293.66', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP76', '1', '2017-11-18 11:19:55');
INSERT INTO `production` VALUES ('67', '../img/m18.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '459.17', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP77', '1', '2017-11-18 11:19:55');
INSERT INTO `production` VALUES ('68', '../img/m19.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '340.35', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP78', '1', '2017-11-18 11:19:56');
INSERT INTO `production` VALUES ('69', '../img/m20.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '852.18', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP79', '1', '2017-11-18 11:19:57');
INSERT INTO `production` VALUES ('70', '../img/m21.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '934.52', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP80', '1', '2017-11-18 09:53:59');
INSERT INTO `production` VALUES ('71', '../img/m22.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '554.10', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP81', '1', '2017-11-18 09:53:59');
INSERT INTO `production` VALUES ('72', '../img/m23.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '439.47', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP82', '1', '2017-11-18 09:54:00');
INSERT INTO `production` VALUES ('73', '../img/m24.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '521.99', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP83', '1', '2017-11-18 09:54:00');
INSERT INTO `production` VALUES ('74', '../img/m25.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '567.94', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP84', '1', '2017-11-18 09:54:01');
INSERT INTO `production` VALUES ('75', '../img/m26.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '589.08', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP85', '1', '2017-11-18 09:54:01');
INSERT INTO `production` VALUES ('76', '../img/m27.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg,&../img/d4.jpg,&../img/d5.jpg', '385.61', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP86', '1', '2017-11-18 09:54:01');
INSERT INTO `production` VALUES ('77', '../img/m28.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '31.60', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP87', '1', '2017-11-18 11:19:08');
INSERT INTO `production` VALUES ('78', '../img/m29.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '182.00', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP88', '1', '2017-11-18 11:19:12');
INSERT INTO `production` VALUES ('79', '../img/m30.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '594.55', 'maoliang', '法国皇家ROYAL CANIN 全能优选肠道舒适型成猫粮2kg EP89', '1', '2017-11-18 11:19:13');
INSERT INTO `production` VALUES ('80', '../img/x1.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '591.14', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 6种颜色可选', '1', '2017-11-18 11:19:13');
INSERT INTO `production` VALUES ('81', '../img/x2.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '872.23', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 7种颜色可选', '1', '2017-11-18 11:19:14');
INSERT INTO `production` VALUES ('82', '../img/x3.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '50.73', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 8种颜色可选', '1', '2017-11-18 11:19:14');
INSERT INTO `production` VALUES ('83', '../img/x4.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '989.32', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 9种颜色可选', '1', '2017-11-18 11:19:14');
INSERT INTO `production` VALUES ('84', '../img/x5.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '199.77', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 10种颜色可选', '1', '2017-11-18 11:19:15');
INSERT INTO `production` VALUES ('85', '../img/x6.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '488.16', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 11种颜色可选', '1', '2017-11-18 11:19:15');
INSERT INTO `production` VALUES ('86', '../img/x7.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '664.04', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 12种颜色可选', '1', '2017-11-18 11:19:15');
INSERT INTO `production` VALUES ('87', '../img/x8.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '885.27', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 13种颜色可选', '1', '2017-11-18 11:19:16');
INSERT INTO `production` VALUES ('88', '../img/x9.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '627.94', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 14种颜色可选', '1', '2017-11-18 11:19:16');
INSERT INTO `production` VALUES ('89', '../img/x10.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '649.10', 'shuixiang', '闽江MJ系列幻影鱼缸 创新触摸灯光变色 15种颜色可选', '1', '2017-11-18 11:19:16');
INSERT INTO `production` VALUES ('90', '../img/a1.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '65.01', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 75W', '1', '2017-11-18 11:19:17');
INSERT INTO `production` VALUES ('91', '../img/a2.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '926.84', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 76W', '1', '2017-11-18 11:19:17');
INSERT INTO `production` VALUES ('92', '../img/a3.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '427.97', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 77W', '1', '2017-11-18 11:19:17');
INSERT INTO `production` VALUES ('93', '../img/a4.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '238.37', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 78W', '1', '2017-11-18 11:19:18');
INSERT INTO `production` VALUES ('94', '../img/a5.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '441.25', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 79W', '1', '2017-11-18 11:19:18');
INSERT INTO `production` VALUES ('95', '../img/a6.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '403.13', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 80W', '1', '2017-11-18 11:19:18');
INSERT INTO `production` VALUES ('96', '../img/a7.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '988.93', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 81W', '1', '2017-11-18 11:19:19');
INSERT INTO `production` VALUES ('97', '../img/a8.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '766.15', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 82W', '1', '2017-11-18 11:19:19');
INSERT INTO `production` VALUES ('98', '../img/a9.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 83W', '1', '2017-11-18 11:19:19');
INSERT INTO `production` VALUES ('99', '../img/a10.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '620.28', 'shuigui', '诺摩NOMO 爬虫陆龟箱加热灯蜥蜴守宫取暖灯NJ-01 84W', '1', '2017-11-18 11:19:20');
INSERT INTO `production` VALUES ('117', 'img/hot18.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '188.00', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:35:02');
INSERT INTO `production` VALUES ('102', 'img/hot3.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:54');
INSERT INTO `production` VALUES ('101', 'img/hot2.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:53');
INSERT INTO `production` VALUES ('100', 'img/hot1.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…111111111111111111111111111111111', '1', '2017-11-19 14:47:03');
INSERT INTO `production` VALUES ('116', 'img/hot17.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:35:00');
INSERT INTO `production` VALUES ('115', 'img/hot16.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:58');
INSERT INTO `production` VALUES ('114', 'img/hot15.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:58');
INSERT INTO `production` VALUES ('113', 'img/hot14.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:57');
INSERT INTO `production` VALUES ('112', 'img/hot13.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:57');
INSERT INTO `production` VALUES ('111', 'img/hot12.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:57');
INSERT INTO `production` VALUES ('110', 'img/hot11.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:57');
INSERT INTO `production` VALUES ('109', 'img/hot10.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:56');
INSERT INTO `production` VALUES ('108', 'img/hot9.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:56');
INSERT INTO `production` VALUES ('107', 'img/hot8.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:56');
INSERT INTO `production` VALUES ('106', 'img/hot7.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:55');
INSERT INTO `production` VALUES ('105', 'img/hot6.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:55');
INSERT INTO `production` VALUES ('104', 'img/hot5.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:54');
INSERT INTO `production` VALUES ('103', 'img/hot4.jpg', '../img/g1a.jpg&../img/g1b.jpg&../img/g1c.jpg&../img/g1e.jpg&../img/g1a_big.jpg&../img/d1.jpg&../img/d2.jpg&../img/d3.jpg&../img/d4.jpg&../img/d5.jpg', '166.67', 'hotgoods', '小宠EHD 宠物耳净康50ml…', '1', '2017-11-19 14:34:54');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

