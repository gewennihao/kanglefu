/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : tp_shop

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-04-12 01:04:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', '001', '001', '1');
INSERT INTO `tp_admin` VALUES ('2', '002', '002', '2');
INSERT INTO `tp_admin` VALUES ('3', '003', '003', '3');
INSERT INTO `tp_admin` VALUES ('4', '004', '004', '4');
INSERT INTO `tp_admin` VALUES ('5', '999999', '999999', '9');

-- ----------------------------
-- Table structure for tp_caiwu
-- ----------------------------
DROP TABLE IF EXISTS `tp_caiwu`;
CREATE TABLE `tp_caiwu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` varchar(255) NOT NULL,
  `keshi` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  `pay_number` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_caiwu
-- ----------------------------
INSERT INTO `tp_caiwu` VALUES ('1', '2017-04-10 10:29:23', '养生', '张先生', '桑拿', '无', '/');
INSERT INTO `tp_caiwu` VALUES ('11', '2017-04-11 11:40:12', 'undefined', '', '', '你哈', '321');
INSERT INTO `tp_caiwu` VALUES ('12', '2017-04-11 11:45:42', '', '', '', '', '');
INSERT INTO `tp_caiwu` VALUES ('13', '2017-04-11 11:46:08', '健康中心', '', '', '123', '123');
INSERT INTO `tp_caiwu` VALUES ('25', '2017-04-11 15:59:57', '养生中心', '', '养生中心', '1', '1');
INSERT INTO `tp_caiwu` VALUES ('26', '2017-04-11 16:01:10', '养生中心', '', '养生中心', '', '');
INSERT INTO `tp_caiwu` VALUES ('27', '2017-04-11 16:01:54', '养生中心', '', '养生中心', '', '');
INSERT INTO `tp_caiwu` VALUES ('28', '2017-04-11 16:02:03', '检验中心', '', '检验中心', '', '');
INSERT INTO `tp_caiwu` VALUES ('29', '2017-04-11 16:03:51', '养生中心', '', '养生中心', '', '');
INSERT INTO `tp_caiwu` VALUES ('30', '2017-04-11 16:05:27', '养生中心', '', '', '111', '111');
INSERT INTO `tp_caiwu` VALUES ('31', '2017-04-11 16:29:00', '养生中心', '', '血压', '', '');
INSERT INTO `tp_caiwu` VALUES ('32', '2017-04-11 16:36:59', '养生中心', '', '套餐一', 'lml', '456');
INSERT INTO `tp_caiwu` VALUES ('33', '2017-04-11 16:37:41', '养生中心', '', '套餐一', 'lml', '456');
INSERT INTO `tp_caiwu` VALUES ('34', '2017-04-11 16:44:08', '请选择', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('35', '2017-04-11 16:44:14', '体检中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('36', '2017-04-11 16:44:17', '体检中心', '', '请选择', '11', '11');
INSERT INTO `tp_caiwu` VALUES ('37', '2017-04-11 16:44:34', '健康中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('38', '2017-04-11 16:46:09', '体检中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('39', '2017-04-11 17:03:33', '健康中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('40', '2017-04-11 17:09:12', '体检中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('41', '2017-04-11 17:13:04', '养生中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('42', '2017-04-11 17:14:04', '养生中心', '', '请选择', '', '');
INSERT INTO `tp_caiwu` VALUES ('43', '2017-04-11 17:14:07', '养生中心', '', '血压', '', '');
INSERT INTO `tp_caiwu` VALUES ('44', '2017-04-11 17:24:34', '体检中心', '', '血压', '', '');
INSERT INTO `tp_caiwu` VALUES ('45', '2017-04-11 17:30:08', '健康中心', '', '养生餐', '', '');

-- ----------------------------
-- Table structure for tp_fuwu
-- ----------------------------
DROP TABLE IF EXISTS `tp_fuwu`;
CREATE TABLE `tp_fuwu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` varchar(255) NOT NULL,
  `name_keshi` varchar(255) NOT NULL,
  `how_much` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_fuwu
-- ----------------------------
INSERT INTO `tp_fuwu` VALUES ('1', '体检中心', '体检', '30.00');
INSERT INTO `tp_fuwu` VALUES ('2', '体检中心', '血压', '20.00');
INSERT INTO `tp_fuwu` VALUES ('3', '	\r\n养生中心', '养生餐', '40.00');
INSERT INTO `tp_fuwu` VALUES ('4', '	\r\n养生中心', '套餐一', '100.00');
INSERT INTO `tp_fuwu` VALUES ('9', '健康中心', '年卡', '169.00');
INSERT INTO `tp_fuwu` VALUES ('10', '检验中心', '尿检', '18.00');
INSERT INTO `tp_fuwu` VALUES ('11', '养生中心', 'spa美容', '100.00');

-- ----------------------------
-- Table structure for tp_jkmingxi
-- ----------------------------
DROP TABLE IF EXISTS `tp_jkmingxi`;
CREATE TABLE `tp_jkmingxi` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 NOT NULL,
  `others` varchar(255) CHARACTER SET utf8 NOT NULL,
  `create_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_jkmingxi
-- ----------------------------
INSERT INTO `tp_jkmingxi` VALUES ('1', '王女士', '年卡', '998.00', '无', '');

-- ----------------------------
-- Table structure for tp_keshi
-- ----------------------------
DROP TABLE IF EXISTS `tp_keshi`;
CREATE TABLE `tp_keshi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keshi` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_keshi
-- ----------------------------
INSERT INTO `tp_keshi` VALUES ('1', '体检中心');
INSERT INTO `tp_keshi` VALUES ('2', '养生中心');
INSERT INTO `tp_keshi` VALUES ('3', '健康中心');
INSERT INTO `tp_keshi` VALUES ('4', '检验中心');

-- ----------------------------
-- Table structure for tp_tjmingxi
-- ----------------------------
DROP TABLE IF EXISTS `tp_tjmingxi`;
CREATE TABLE `tp_tjmingxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `others` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_tjmingxi
-- ----------------------------
INSERT INTO `tp_tjmingxi` VALUES ('1', '2017-04-08 22:58:24', '张先生', '体检套餐一', '无', '238.00');

-- ----------------------------
-- Table structure for tp_ysmingxi
-- ----------------------------
DROP TABLE IF EXISTS `tp_ysmingxi`;
CREATE TABLE `tp_ysmingxi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 NOT NULL,
  `others` varchar(255) CHARACTER SET utf8 NOT NULL,
  `create_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tp_ysmingxi
-- ----------------------------
INSERT INTO `tp_ysmingxi` VALUES ('1', '吴先生', '养生粥', '168.00', '无', '');
