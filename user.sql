/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : demo-class

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-07-16 08:53:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', 'adminn', 'adminn');
INSERT INTO `user` VALUES ('1', 'hyhhyh', 'hhhhhh');
