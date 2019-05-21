/*
Navicat MySQL Data Transfer

Source Server         : aa
Source Server Version : 50556
Source Host           : localhost:3306
Source Database       : ewsdb

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2019-05-21 17:27:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `registerTime` date DEFAULT NULL,
  `lastLoginTime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'lao', '96e79218965eb72c92a549dd5a330112', 'ab@qq.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('2', 'xu', 'e10adc3949ba59abbe56e057f20f883e', 'cd@qq.com', 'admin', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('3', 'cong', 'e3ceb5881a0a1fdaad01296d7554868d', 'ef@qq.com', 'employee', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('4', '11', '96e79218965eb72c92a549dd5a330112', null, 'employee', '2019-05-21', '2019-05-21');
INSERT INTO `tb_user` VALUES ('5', '2', '96e79218965eb72c92a549dd5a330112', null, 'employee', '2019-05-21', '2019-05-21');
