/*
Navicat MySQL Data Transfer

Source Server         : mywork
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : demo-class

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-07-16 08:53:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `classId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId` (`classId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'xiaohong', '1');
INSERT INTO `student` VALUES ('12', 'student12', '2');
INSERT INTO `student` VALUES ('14', 'student14', '4');
INSERT INTO `student` VALUES ('15', 'student15', '2');
