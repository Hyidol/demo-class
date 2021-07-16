/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : demo-class

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-07-16 08:51:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '111');
INSERT INTO `class` VALUES ('2', 'class2');
INSERT INTO `class` VALUES ('4', 'class4');
INSERT INTO `class` VALUES ('7', 'class7');
INSERT INTO `class` VALUES ('10', 'class10');
INSERT INTO `class` VALUES ('11', 'class11');
INSERT INTO `class` VALUES ('20', '987');
INSERT INTO `class` VALUES ('21', 'class999');
INSERT INTO `class` VALUES ('22', '9');
