/*
Navicat MySQL Data Transfer

Source Server         : localmysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lucas

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-01-10 16:30:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `login_ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lastlogined_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'eyJpdiI6Ink0S0tEemtWN2RzTDhpXC9cLzNlRk5Idz09IiwidmFsdWUiOiJnU1RsK1BpMmtKemlXc2VsUzAyb2xBPT0iLCJtYWMiOiJjMTFiM2RjOTNmYmU3ZjQ4OWM5M2ZhZDgxOTVlNzkyOTNmMmRkNjk5MjMwNzU2NDE0YmRiZDRkYjNhYWI2ZjZlIn0=', '1', '127.0.0.1', '2018-07-09 13:41:55', '2020-01-10 11:18:29', '2020-01-10 11:18:29');

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(30) NOT NULL,
  `priority` int(6) DEFAULT '0' COMMENT '数字越大排越前',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', 'Central/中部', '10');
INSERT INTO `area` VALUES ('2', 'West/西部', '9');
INSERT INTO `area` VALUES ('3', 'North/北部', '8');
INSERT INTO `area` VALUES ('4', 'East/东部', '7');

-- ----------------------------
-- Table structure for `attribute`
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `key` varchar(30) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL,
  `base` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0可以删除可以修改 1:网站基础属情，不可删除，可以修改(但只能修改valuew值)',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES ('1', '网站主域名', 'domain', 'http://www.lucas.com', '1');
INSERT INTO `attribute` VALUES ('2', '网站标题', 'title', 'TTvip - 美女号外', '1');
INSERT INTO `attribute` VALUES ('3', '网站关键词', 'keywords', 'TTvip，美女号外，狼群，SgWolf，SgWolves，天上人间，888，8090，727，Singapore Escorts, Singapore Sex Freelance, Backpage, Locanto, 新加坡陪游，高端美女，Singapore Massage, 新加坡按摩', '1');
INSERT INTO `attribute` VALUES ('4', '网站描述', 'description', 'Singapore\'s most reliable adult escort website: www.TTvip7.comFocusing on quality, you are sure to find your desired companion! Prices ranged from $100SGD-$260SGD generally.', '1');
INSERT INTO `attribute` VALUES ('9', '联系邮箱', 'email', '156156156@qq.com', '0');
INSERT INTO `attribute` VALUES ('5', 'Copyright', 'copyright', 'Copyright © 2019 SEX141SG.COM All Right Reserved.', '1');
INSERT INTO `attribute` VALUES ('6', '每次注册成功的邀请人增加的币数', 'coin', '5', '1');
INSERT INTO `attribute` VALUES ('7', '网站简称', 'web_nickname', 'LL', '1');

-- ----------------------------
-- Table structure for `caijilist`
-- ----------------------------
DROP TABLE IF EXISTS `caijilist`;
CREATE TABLE `caijilist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) DEFAULT NULL,
  `cid` int(3) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '1未采集 2已采集',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caijilist
-- ----------------------------
INSERT INTO `caijilist` VALUES ('1', 'https://4ni52.com/model/qiq-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('2', 'https://4ni52.com/model/qian-qian-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('3', 'https://4ni52.com/model/alice-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('4', 'https://4ni52.com/model/yi-nuo-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('5', 'https://4ni52.com/model/jia-jia-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('6', 'https://4ni52.com/model/massage-xiner/', '1', '1');
INSERT INTO `caijilist` VALUES ('7', 'https://4ni52.com/model/emma-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('8', 'https://4ni52.com/model/qi-qi-service-2/', '1', '1');
INSERT INTO `caijilist` VALUES ('9', 'https://4ni52.com/model/wendy-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('10', 'https://4ni52.com/model/xiao-mi-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('11', 'https://4ni52.com/model/mina3049-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('12', 'https://4ni52.com/model/massage-jing-jing/', '1', '1');
INSERT INTO `caijilist` VALUES ('13', 'https://4ni52.com/model/massage-cici3057/', '1', '1');
INSERT INTO `caijilist` VALUES ('14', 'https://4ni52.com/model/massage-yo-yo/', '1', '1');
INSERT INTO `caijilist` VALUES ('15', 'https://4ni52.com/model/service-cindy/', '1', '1');
INSERT INTO `caijilist` VALUES ('16', 'https://4ni52.com/model/service-tong-tong/', '1', '1');
INSERT INTO `caijilist` VALUES ('17', 'https://4ni52.com/model/li-li-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('18', 'https://4ni52.com/model/service-qian-qian/', '1', '1');
INSERT INTO `caijilist` VALUES ('19', 'https://4ni52.com/model/service-yu-ting/', '1', '1');
INSERT INTO `caijilist` VALUES ('20', 'https://4ni52.com/model/service-mi-ya/', '1', '1');
INSERT INTO `caijilist` VALUES ('21', 'https://4ni52.com/model/bei-bei-3059-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('22', 'https://4ni52.com/model/linda-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('23', 'https://4ni52.com/model/coco3050-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('24', 'https://4ni52.com/model/tina3051-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('25', 'https://4ni52.com/model/xinxin3057-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('26', 'https://4ni52.com/model/service-yan-yan/', '1', '1');
INSERT INTO `caijilist` VALUES ('27', 'https://4ni52.com/model/xiaoting3056-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('28', 'https://4ni52.com/model/ada-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('29', 'https://4ni52.com/model/service-yuki/', '1', '1');
INSERT INTO `caijilist` VALUES ('30', 'https://4ni52.com/model/massage-tian-tian/', '1', '1');
INSERT INTO `caijilist` VALUES ('31', 'https://4ni52.com/model/anna-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('32', 'https://4ni52.com/model/service-anna/', '1', '1');
INSERT INTO `caijilist` VALUES ('33', 'https://4ni52.com/model/tian-tian-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('34', 'https://4ni52.com/model/nana2113-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('35', 'https://4ni52.com/model/service-2096/', '1', '1');
INSERT INTO `caijilist` VALUES ('36', 'https://4ni52.com/model/xue-er-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('37', 'https://4ni52.com/model/rui-rui-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('38', 'https://4ni52.com/model/pingping2108-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('39', 'https://4ni52.com/model/mo-mo-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('40', 'https://4ni52.com/model/service-yuanyuan/', '1', '1');
INSERT INTO `caijilist` VALUES ('41', 'https://4ni52.com/model/service-jiao-yang/', '1', '1');
INSERT INTO `caijilist` VALUES ('42', 'https://4ni52.com/model/rose-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('43', 'https://4ni52.com/model/yi-yi-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('44', 'https://4ni52.com/model/na-na-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('45', 'https://4ni52.com/model/service-fangfang/', '1', '1');
INSERT INTO `caijilist` VALUES ('46', 'https://4ni52.com/model/massage-xiao-s/', '1', '1');
INSERT INTO `caijilist` VALUES ('47', 'https://4ni52.com/model/massage-tian-xin/', '1', '1');
INSERT INTO `caijilist` VALUES ('48', 'https://4ni52.com/model/massage-fiona/', '1', '1');
INSERT INTO `caijilist` VALUES ('49', 'https://4ni52.com/model/tina2109-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('50', 'https://4ni52.com/model/wen-cun-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('51', 'https://4ni52.com/model/shishi3052-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('52', 'https://4ni52.com/model/service-ke-ke/', '1', '1');
INSERT INTO `caijilist` VALUES ('53', 'https://4ni52.com/model/kk-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('54', 'https://4ni52.com/model/service-annie/', '1', '1');
INSERT INTO `caijilist` VALUES ('55', 'https://4ni52.com/model/ashlyn3053-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('56', 'https://4ni52.com/model/xiaoxiao3055-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('57', 'https://4ni52.com/model/yi-yi2101-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('58', 'https://4ni52.com/model/lin-lin2102-massage/', '1', '1');
INSERT INTO `caijilist` VALUES ('59', 'https://4ni52.com/model/service-xuan-xuan/', '1', '1');
INSERT INTO `caijilist` VALUES ('60', 'https://4ni52.com/model/miao-miao-service/', '1', '1');
INSERT INTO `caijilist` VALUES ('61', 'https://4ni52.com/model/massage-yi-yi/', '1', '1');
INSERT INTO `caijilist` VALUES ('62', 'https://4ni52.com/model/massage-ya-ya-2/', '2', '1');
INSERT INTO `caijilist` VALUES ('63', 'https://4ni52.com/model/service-xiao-mi/', '2', '1');
INSERT INTO `caijilist` VALUES ('64', 'https://4ni52.com/model/ling-long-massage/', '2', '1');
INSERT INTO `caijilist` VALUES ('65', 'https://4ni52.com/model/massage-song-song/', '2', '1');
INSERT INTO `caijilist` VALUES ('66', 'https://4ni52.com/model/service-wei-wei/', '2', '1');
INSERT INTO `caijilist` VALUES ('67', 'https://4ni52.com/model/an-qi-service/', '2', '1');
INSERT INTO `caijilist` VALUES ('68', 'https://4ni52.com/model/3021-massage/', '2', '1');
INSERT INTO `caijilist` VALUES ('69', 'https://4ni52.com/model/massage-mai-zi/', '2', '1');
INSERT INTO `caijilist` VALUES ('70', 'https://4ni52.com/model/massage-qiqi-2/', '2', '1');
INSERT INTO `caijilist` VALUES ('71', 'https://4ni52.com/model/xiao-xiao-massage/', '2', '1');
INSERT INTO `caijilist` VALUES ('72', 'https://4ni52.com/model/massage-coco3053/', '2', '1');
INSERT INTO `caijilist` VALUES ('73', 'https://4ni52.com/model/ju-zi-massage/', '2', '1');
INSERT INTO `caijilist` VALUES ('74', 'https://4ni52.com/model/massage-xiaobaiyang/', '2', '1');
INSERT INTO `caijilist` VALUES ('75', 'https://4ni52.com/model/dian-dian-massage/', '2', '1');
INSERT INTO `caijilist` VALUES ('76', 'https://4ni52.com/model/yong-er-massage/', '2', '1');
INSERT INTO `caijilist` VALUES ('77', 'https://4ni52.com/model/massage-bao-bao/', '2', '1');
INSERT INTO `caijilist` VALUES ('78', 'https://4ni52.com/model/xin-xin-service/', '2', '1');
INSERT INTO `caijilist` VALUES ('79', 'https://4ni52.com/model/service-na-na-2/', '3', '1');
INSERT INTO `caijilist` VALUES ('80', 'https://4ni52.com/model/rong-er2112-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('81', 'https://4ni52.com/model/xiao-yu-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('82', 'https://4ni52.com/model/service-an-qi/', '3', '1');
INSERT INTO `caijilist` VALUES ('84', 'https://4ni52.com/model/ping-ping-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('85', 'https://4ni52.com/model/massage-xiao-qing/', '3', '1');
INSERT INTO `caijilist` VALUES ('86', 'https://4ni52.com/model/service-mei-gui/', '3', '1');
INSERT INTO `caijilist` VALUES ('87', 'https://4ni52.com/model/service-yun-yun/', '3', '1');
INSERT INTO `caijilist` VALUES ('88', 'https://4ni52.com/model/yan-zi-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('89', 'https://4ni52.com/model/service-qi-qi/', '3', '1');
INSERT INTO `caijilist` VALUES ('90', 'https://4ni52.com/model/lucky-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('91', 'https://4ni52.com/model/ying-er2114-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('92', 'https://4ni52.com/model/shi-yu-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('93', 'https://4ni52.com/model/service-si-si/', '3', '1');
INSERT INTO `caijilist` VALUES ('94', 'https://4ni52.com/model/mei-mei-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('95', 'https://4ni52.com/model/service-xi-gua/', '3', '1');
INSERT INTO `caijilist` VALUES ('96', 'https://4ni52.com/model/service-jia-jia/', '3', '1');
INSERT INTO `caijilist` VALUES ('97', 'https://4ni52.com/model/service-nina/', '3', '1');
INSERT INTO `caijilist` VALUES ('98', 'https://4ni52.com/model/service-shan-shan/', '3', '1');
INSERT INTO `caijilist` VALUES ('99', 'https://4ni52.com/model/meng-meng-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('100', 'https://4ni52.com/model/xiao-yu-service-2/', '3', '1');
INSERT INTO `caijilist` VALUES ('101', 'https://4ni52.com/model/service-clare/', '3', '1');
INSERT INTO `caijilist` VALUES ('102', 'https://4ni52.com/model/cao-cao-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('103', 'https://4ni52.com/model/you-you-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('104', 'https://4ni52.com/model/service-mi-xue/', '3', '1');
INSERT INTO `caijilist` VALUES ('105', 'https://4ni52.com/model/service-miao-miao/', '3', '1');
INSERT INTO `caijilist` VALUES ('106', 'https://4ni52.com/model/service-jun-jun/', '3', '1');
INSERT INTO `caijilist` VALUES ('107', 'https://4ni52.com/model/service-mimi/', '3', '1');
INSERT INTO `caijilist` VALUES ('108', 'https://4ni52.com/model/xiang-er-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('109', 'https://4ni52.com/model/service-jia-jia-2/', '3', '1');
INSERT INTO `caijilist` VALUES ('110', 'https://4ni52.com/model/ke-ke-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('111', 'https://4ni52.com/model/sao-sao-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('112', 'https://4ni52.com/model/nunu-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('113', 'https://4ni52.com/model/service-tao-tao/', '3', '1');
INSERT INTO `caijilist` VALUES ('114', 'https://4ni52.com/model/dong-zi-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('115', 'https://4ni52.com/model/ye-zi-service/', '3', '1');
INSERT INTO `caijilist` VALUES ('116', 'https://4ni52.com/model/service-wu-yun/', '3', '1');
INSERT INTO `caijilist` VALUES ('117', 'https://4ni52.com/model/massage-qier/', '3', '1');
INSERT INTO `caijilist` VALUES ('118', 'https://4ni52.com/model/ningmeng3058-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('119', 'https://4ni52.com/model/service-mina/', '3', '1');
INSERT INTO `caijilist` VALUES ('120', 'https://4ni52.com/model/bao-bao-massage/', '3', '1');
INSERT INTO `caijilist` VALUES ('121', 'https://4ni52.com/model/service-xiao-yu/', '4', '1');
INSERT INTO `caijilist` VALUES ('122', 'https://4ni52.com/model/massage-ke-ai/', '4', '1');
INSERT INTO `caijilist` VALUES ('123', 'https://4ni52.com/model/ai-mi-service/', '4', '1');
INSERT INTO `caijilist` VALUES ('124', 'https://4ni52.com/model/summer-service/', '4', '1');
INSERT INTO `caijilist` VALUES ('125', 'https://4ni52.com/model/xing-er2105-massage/', '4', '1');
INSERT INTO `caijilist` VALUES ('126', 'https://4ni52.com/model/2061-service/', '4', '1');
INSERT INTO `caijilist` VALUES ('127', 'https://4ni52.com/model/li-li-massage/', '4', '1');
INSERT INTO `caijilist` VALUES ('128', 'https://4ni52.com/model/zi-yao-service/', '4', '1');
INSERT INTO `caijilist` VALUES ('129', 'https://4ni52.com/model/xiao-xue-massage/', '4', '1');
INSERT INTO `caijilist` VALUES ('130', 'https://4ni52.com/model/service-yang-yang/', '4', '1');
INSERT INTO `caijilist` VALUES ('131', 'https://4ni52.com/model/service-guo-guo-2/', '4', '1');
INSERT INTO `caijilist` VALUES ('132', 'https://4ni52.com/model/massage-dan-dan/', '4', '1');
INSERT INTO `caijilist` VALUES ('133', 'https://4ni52.com/model/si-si-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('134', 'https://4ni52.com/model/keke2105-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('135', 'https://4ni52.com/model/massage-mi-er/', '5', '1');
INSERT INTO `caijilist` VALUES ('136', 'https://4ni52.com/model/service-shui-shui/', '5', '1');
INSERT INTO `caijilist` VALUES ('137', 'https://4ni52.com/model/service-niu-niu/', '5', '1');
INSERT INTO `caijilist` VALUES ('138', 'https://4ni52.com/model/huan-haun-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('139', 'https://4ni52.com/model/service-xue-er/', '5', '1');
INSERT INTO `caijilist` VALUES ('140', 'https://4ni52.com/model/mi-li-massage/', '5', '1');
INSERT INTO `caijilist` VALUES ('141', 'https://4ni52.com/model/paopao2110-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('142', 'https://4ni52.com/model/2098-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('143', 'https://4ni52.com/model/2099-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('144', 'https://4ni52.com/model/bingbing2106-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('145', 'https://4ni52.com/model/2095-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('146', 'https://4ni52.com/model/service-jing-jing/', '5', '1');
INSERT INTO `caijilist` VALUES ('147', 'https://4ni52.com/model/service-mrs-wang/', '5', '1');
INSERT INTO `caijilist` VALUES ('148', 'https://4ni52.com/model/feifei2107-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('149', 'https://4ni52.com/model/2094-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('150', 'https://4ni52.com/model/service-tang-tang/', '5', '1');
INSERT INTO `caijilist` VALUES ('151', 'https://4ni52.com/model/service-mo-mo/', '5', '1');
INSERT INTO `caijilist` VALUES ('152', 'https://4ni52.com/model/hui-zi-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('153', 'https://4ni52.com/model/dudu2103-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('154', 'https://4ni52.com/model/service-yiyi/', '5', '1');
INSERT INTO `caijilist` VALUES ('155', 'https://4ni52.com/model/qi-qi-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('156', 'https://4ni52.com/model/service-xiao-qian/', '5', '1');
INSERT INTO `caijilist` VALUES ('157', 'https://4ni52.com/model/service-na-na/', '5', '1');
INSERT INTO `caijilist` VALUES ('158', 'https://4ni52.com/model/service-sha-sha/', '5', '1');
INSERT INTO `caijilist` VALUES ('159', 'https://4ni52.com/model/2097-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('160', 'https://4ni52.com/model/le-le-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('161', 'https://4ni52.com/model/xiao-qiao-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('162', 'https://4ni52.com/model/jingjing2111-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('163', 'https://4ni52.com/model/2093-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('164', 'https://4ni52.com/model/mengmeng2104-service/', '5', '1');
INSERT INTO `caijilist` VALUES ('165', 'https://4ni52.com/model/service-ye-mao/', '5', '1');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '0没有父id',
  `g_id` int(8) NOT NULL COMMENT '美女id',
  `nickname` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `hidden_content` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:未审核 1:已审核 2:审核不通过',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `girl_id` (`g_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '0', '5', 'eleven1', 'd\r\nd\r\nd[em0][em1][em2][em3][em4][em5][em6]', 'hidden', '1', '2020-01-07 16:14:23', '2020-01-07 04:58:13');
INSERT INTO `comments` VALUES ('4', '0', '5', 'eleven1', 'test\r\ntest\r\n[em3][em4]', '', '1', '2020-01-07 16:13:48', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES ('2', '1', '5', 'eleven1', 'second content', null, '1', '2020-01-07 16:13:48', '0000-00-00 00:00:00');
INSERT INTO `comments` VALUES ('3', '0', '5', 'eleven1', 'a\r\nb\r\nc[em0][em1][em2][em3][em4][em5][em6]', '', '1', '2020-01-07 14:18:54', '2020-01-07 06:00:45');

-- ----------------------------
-- Table structure for `girlphotos`
-- ----------------------------
DROP TABLE IF EXISTS `girlphotos`;
CREATE TABLE `girlphotos` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `g_id` int(11) NOT NULL,
  `photo` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `g_id` (`g_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1043 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girlphotos
-- ----------------------------
INSERT INTO `girlphotos` VALUES ('1', '1', '/public/uploads/20200110/15786384951.jpg');
INSERT INTO `girlphotos` VALUES ('2', '1', '/public/uploads/20200110/15786384962.jpg');
INSERT INTO `girlphotos` VALUES ('3', '1', '/public/uploads/20200110/15786384983.jpg');
INSERT INTO `girlphotos` VALUES ('4', '1', '/public/uploads/20200110/15786384994.jpg');
INSERT INTO `girlphotos` VALUES ('5', '1', '/public/uploads/20200110/15786385015.jpg');
INSERT INTO `girlphotos` VALUES ('6', '1', '/public/uploads/20200110/15786385026.jpg');
INSERT INTO `girlphotos` VALUES ('7', '1', '/public/uploads/20200110/15786385047.jpg');
INSERT INTO `girlphotos` VALUES ('8', '1', '/public/uploads/20200110/15786385068.jpg');
INSERT INTO `girlphotos` VALUES ('9', '2', '/public/uploads/20200110/15786385079.jpg');
INSERT INTO `girlphotos` VALUES ('10', '2', '/public/uploads/20200110/157863850910.jpg');
INSERT INTO `girlphotos` VALUES ('11', '2', '/public/uploads/20200110/157863851011.jpg');
INSERT INTO `girlphotos` VALUES ('12', '2', '/public/uploads/20200110/157863851212.jpg');
INSERT INTO `girlphotos` VALUES ('13', '3', '/public/uploads/20200110/157863851413.jpg');
INSERT INTO `girlphotos` VALUES ('14', '3', '/public/uploads/20200110/157863851614.jpg');
INSERT INTO `girlphotos` VALUES ('15', '3', '/public/uploads/20200110/157863851815.jpg');
INSERT INTO `girlphotos` VALUES ('16', '3', '/public/uploads/20200110/157863852116.jpg');
INSERT INTO `girlphotos` VALUES ('17', '3', '/public/uploads/20200110/157863852217.jpg');
INSERT INTO `girlphotos` VALUES ('18', '3', '/public/uploads/20200110/157863852418.jpg');
INSERT INTO `girlphotos` VALUES ('19', '3', '/public/uploads/20200110/157863852519.jpg');
INSERT INTO `girlphotos` VALUES ('20', '4', '/public/uploads/20200110/157863852820.jpg');
INSERT INTO `girlphotos` VALUES ('21', '4', '/public/uploads/20200110/157863852921.jpg');
INSERT INTO `girlphotos` VALUES ('22', '4', '/public/uploads/20200110/157863853122.jpg');
INSERT INTO `girlphotos` VALUES ('23', '4', '/public/uploads/20200110/157863853323.jpg');
INSERT INTO `girlphotos` VALUES ('24', '5', '/public/uploads/20200110/157863853424.jpg');
INSERT INTO `girlphotos` VALUES ('25', '5', '/public/uploads/20200110/157863853725.jpg');
INSERT INTO `girlphotos` VALUES ('26', '5', '/public/uploads/20200110/157863853926.jpg');
INSERT INTO `girlphotos` VALUES ('27', '5', '/public/uploads/20200110/157863854227.jpg');
INSERT INTO `girlphotos` VALUES ('28', '5', '/public/uploads/20200110/157863854428.jpg');
INSERT INTO `girlphotos` VALUES ('29', '5', '/public/uploads/20200110/157863854729.jpg');
INSERT INTO `girlphotos` VALUES ('30', '6', '/public/uploads/20200110/157863854930.jpg');
INSERT INTO `girlphotos` VALUES ('31', '6', '/public/uploads/20200110/157863855131.jpg');
INSERT INTO `girlphotos` VALUES ('32', '6', '/public/uploads/20200110/157863855332.jpg');
INSERT INTO `girlphotos` VALUES ('33', '6', '/public/uploads/20200110/157863855533.jpg');
INSERT INTO `girlphotos` VALUES ('34', '6', '/public/uploads/20200110/157863855634.jpg');
INSERT INTO `girlphotos` VALUES ('35', '6', '/public/uploads/20200110/157863855835.jpg');
INSERT INTO `girlphotos` VALUES ('36', '6', '/public/uploads/20200110/157863856036.jpg');
INSERT INTO `girlphotos` VALUES ('37', '6', '/public/uploads/20200110/157863856137.jpg');
INSERT INTO `girlphotos` VALUES ('38', '7', '/public/uploads/20200110/157863856338.jpg');
INSERT INTO `girlphotos` VALUES ('39', '7', '/public/uploads/20200110/157863856439.jpg');
INSERT INTO `girlphotos` VALUES ('40', '7', '/public/uploads/20200110/157863856640.jpg');
INSERT INTO `girlphotos` VALUES ('41', '7', '/public/uploads/20200110/157863856741.jpg');
INSERT INTO `girlphotos` VALUES ('42', '7', '/public/uploads/20200110/157863856942.jpg');
INSERT INTO `girlphotos` VALUES ('43', '7', '/public/uploads/20200110/157863857043.jpg');
INSERT INTO `girlphotos` VALUES ('44', '7', '/public/uploads/20200110/157863857244.jpg');
INSERT INTO `girlphotos` VALUES ('45', '8', '/public/uploads/20200110/157863857445.jpg');
INSERT INTO `girlphotos` VALUES ('46', '8', '/public/uploads/20200110/157863857646.jpg');
INSERT INTO `girlphotos` VALUES ('47', '8', '/public/uploads/20200110/157863857947.jpg');
INSERT INTO `girlphotos` VALUES ('48', '8', '/public/uploads/20200110/157863858148.jpg');
INSERT INTO `girlphotos` VALUES ('49', '8', '/public/uploads/20200110/157863858449.jpg');
INSERT INTO `girlphotos` VALUES ('50', '8', '/public/uploads/20200110/157863858650.jpg');
INSERT INTO `girlphotos` VALUES ('51', '9', '/public/uploads/20200110/157863858951.jpg');
INSERT INTO `girlphotos` VALUES ('52', '9', '/public/uploads/20200110/157863859052.jpg');
INSERT INTO `girlphotos` VALUES ('53', '9', '/public/uploads/20200110/157863859353.jpg');
INSERT INTO `girlphotos` VALUES ('54', '9', '/public/uploads/20200110/157863859554.jpg');
INSERT INTO `girlphotos` VALUES ('55', '9', '/public/uploads/20200110/157863859855.jpg');
INSERT INTO `girlphotos` VALUES ('56', '9', '/public/uploads/20200110/157863860056.jpg');
INSERT INTO `girlphotos` VALUES ('57', '10', '/public/uploads/20200110/157863860357.jpg');
INSERT INTO `girlphotos` VALUES ('58', '10', '/public/uploads/20200110/157863860458.jpg');
INSERT INTO `girlphotos` VALUES ('59', '10', '/public/uploads/20200110/157863860659.jpg');
INSERT INTO `girlphotos` VALUES ('60', '10', '/public/uploads/20200110/157863860760.jpg');
INSERT INTO `girlphotos` VALUES ('61', '10', '/public/uploads/20200110/157863860961.jpg');
INSERT INTO `girlphotos` VALUES ('62', '10', '/public/uploads/20200110/157863861062.jpg');
INSERT INTO `girlphotos` VALUES ('63', '11', '/public/uploads/20200110/157863861263.jpg');
INSERT INTO `girlphotos` VALUES ('64', '11', '/public/uploads/20200110/157863861364.jpg');
INSERT INTO `girlphotos` VALUES ('65', '11', '/public/uploads/20200110/157863861665.jpg');
INSERT INTO `girlphotos` VALUES ('66', '11', '/public/uploads/20200110/157863861966.jpg');
INSERT INTO `girlphotos` VALUES ('67', '11', '/public/uploads/20200110/157863862167.jpg');
INSERT INTO `girlphotos` VALUES ('68', '12', '/public/uploads/20200110/157863862368.jpg');
INSERT INTO `girlphotos` VALUES ('69', '12', '/public/uploads/20200110/157863862469.jpg');
INSERT INTO `girlphotos` VALUES ('70', '12', '/public/uploads/20200110/157863862770.jpg');
INSERT INTO `girlphotos` VALUES ('71', '12', '/public/uploads/20200110/157863862871.jpg');
INSERT INTO `girlphotos` VALUES ('72', '12', '/public/uploads/20200110/157863863072.jpg');
INSERT INTO `girlphotos` VALUES ('73', '12', '/public/uploads/20200110/157863863273.jpg');
INSERT INTO `girlphotos` VALUES ('74', '13', '/public/uploads/20200110/157863863474.jpg');
INSERT INTO `girlphotos` VALUES ('75', '13', '/public/uploads/20200110/157863863575.jpg');
INSERT INTO `girlphotos` VALUES ('76', '13', '/public/uploads/20200110/157863863776.jpg');
INSERT INTO `girlphotos` VALUES ('77', '13', '/public/uploads/20200110/157863863877.jpg');
INSERT INTO `girlphotos` VALUES ('78', '13', '/public/uploads/20200110/157863864178.jpg');
INSERT INTO `girlphotos` VALUES ('79', '13', '/public/uploads/20200110/157863864379.jpg');
INSERT INTO `girlphotos` VALUES ('80', '13', '/public/uploads/20200110/157863864480.jpg');
INSERT INTO `girlphotos` VALUES ('81', '14', '/public/uploads/20200110/157863864681.jpg');
INSERT INTO `girlphotos` VALUES ('82', '14', '/public/uploads/20200110/157863864782.jpg');
INSERT INTO `girlphotos` VALUES ('83', '14', '/public/uploads/20200110/157863864983.jpg');
INSERT INTO `girlphotos` VALUES ('84', '14', '/public/uploads/20200110/157863865084.jpg');
INSERT INTO `girlphotos` VALUES ('85', '15', '/public/uploads/20200110/157863865285.jpg');
INSERT INTO `girlphotos` VALUES ('86', '15', '/public/uploads/20200110/157863865386.jpg');
INSERT INTO `girlphotos` VALUES ('87', '15', '/public/uploads/20200110/157863865587.jpg');
INSERT INTO `girlphotos` VALUES ('88', '15', '/public/uploads/20200110/157863865688.jpg');
INSERT INTO `girlphotos` VALUES ('89', '15', '/public/uploads/20200110/157863865889.jpg');
INSERT INTO `girlphotos` VALUES ('90', '15', '/public/uploads/20200110/157863865990.jpg');
INSERT INTO `girlphotos` VALUES ('91', '15', '/public/uploads/20200110/157863866091.jpg');
INSERT INTO `girlphotos` VALUES ('92', '15', '/public/uploads/20200110/157863866292.jpg');
INSERT INTO `girlphotos` VALUES ('93', '16', '/public/uploads/20200110/157863866393.jpg');
INSERT INTO `girlphotos` VALUES ('94', '16', '/public/uploads/20200110/157863866594.jpg');
INSERT INTO `girlphotos` VALUES ('95', '16', '/public/uploads/20200110/157863866795.jpg');
INSERT INTO `girlphotos` VALUES ('96', '16', '/public/uploads/20200110/157863867096.jpg');
INSERT INTO `girlphotos` VALUES ('97', '16', '/public/uploads/20200110/157863867297.jpg');
INSERT INTO `girlphotos` VALUES ('98', '16', '/public/uploads/20200110/157863867598.jpg');
INSERT INTO `girlphotos` VALUES ('99', '17', '/public/uploads/20200110/157863867699.jpg');
INSERT INTO `girlphotos` VALUES ('100', '17', '/public/uploads/20200110/1578638678100.jpg');
INSERT INTO `girlphotos` VALUES ('101', '17', '/public/uploads/20200110/1578638679101.jpg');
INSERT INTO `girlphotos` VALUES ('102', '17', '/public/uploads/20200110/1578638681102.jpg');
INSERT INTO `girlphotos` VALUES ('103', '17', '/public/uploads/20200110/1578638683103.jpg');
INSERT INTO `girlphotos` VALUES ('104', '18', '/public/uploads/20200110/1578638684104.jpg');
INSERT INTO `girlphotos` VALUES ('105', '18', '/public/uploads/20200110/1578638686105.jpg');
INSERT INTO `girlphotos` VALUES ('106', '18', '/public/uploads/20200110/1578638687106.jpg');
INSERT INTO `girlphotos` VALUES ('107', '18', '/public/uploads/20200110/1578638688107.jpg');
INSERT INTO `girlphotos` VALUES ('108', '18', '/public/uploads/20200110/1578638690108.jpg');
INSERT INTO `girlphotos` VALUES ('109', '18', '/public/uploads/20200110/1578638691109.jpg');
INSERT INTO `girlphotos` VALUES ('110', '19', '/public/uploads/20200110/1578638693110.jpg');
INSERT INTO `girlphotos` VALUES ('111', '19', '/public/uploads/20200110/1578638694111.jpg');
INSERT INTO `girlphotos` VALUES ('112', '19', '/public/uploads/20200110/1578638696112.jpg');
INSERT INTO `girlphotos` VALUES ('113', '19', '/public/uploads/20200110/1578638697113.jpg');
INSERT INTO `girlphotos` VALUES ('114', '19', '/public/uploads/20200110/1578638699114.jpg');
INSERT INTO `girlphotos` VALUES ('115', '19', '/public/uploads/20200110/1578638700115.jpg');
INSERT INTO `girlphotos` VALUES ('116', '19', '/public/uploads/20200110/1578638702116.jpg');
INSERT INTO `girlphotos` VALUES ('117', '19', '/public/uploads/20200110/1578638703117.jpg');
INSERT INTO `girlphotos` VALUES ('118', '20', '/public/uploads/20200110/1578638705118.jpg');
INSERT INTO `girlphotos` VALUES ('119', '20', '/public/uploads/20200110/1578638706119.jpg');
INSERT INTO `girlphotos` VALUES ('120', '20', '/public/uploads/20200110/1578638708120.jpg');
INSERT INTO `girlphotos` VALUES ('121', '20', '/public/uploads/20200110/1578638709121.jpg');
INSERT INTO `girlphotos` VALUES ('122', '20', '/public/uploads/20200110/1578638711122.jpg');
INSERT INTO `girlphotos` VALUES ('123', '21', '/public/uploads/20200110/1578638712123.jpg');
INSERT INTO `girlphotos` VALUES ('124', '21', '/public/uploads/20200110/1578638714124.jpg');
INSERT INTO `girlphotos` VALUES ('125', '21', '/public/uploads/20200110/1578638715125.jpg');
INSERT INTO `girlphotos` VALUES ('126', '21', '/public/uploads/20200110/1578638717126.jpg');
INSERT INTO `girlphotos` VALUES ('127', '21', '/public/uploads/20200110/1578638718127.jpg');
INSERT INTO `girlphotos` VALUES ('128', '21', '/public/uploads/20200110/1578638720128.jpg');
INSERT INTO `girlphotos` VALUES ('129', '21', '/public/uploads/20200110/1578638721129.jpg');
INSERT INTO `girlphotos` VALUES ('130', '21', '/public/uploads/20200110/1578638723130.jpg');
INSERT INTO `girlphotos` VALUES ('131', '22', '/public/uploads/20200110/1578638724131.jpg');
INSERT INTO `girlphotos` VALUES ('132', '22', '/public/uploads/20200110/1578638726132.jpg');
INSERT INTO `girlphotos` VALUES ('133', '22', '/public/uploads/20200110/1578638727133.jpg');
INSERT INTO `girlphotos` VALUES ('134', '22', '/public/uploads/20200110/1578638729134.jpg');
INSERT INTO `girlphotos` VALUES ('135', '22', '/public/uploads/20200110/1578638731135.jpg');
INSERT INTO `girlphotos` VALUES ('136', '22', '/public/uploads/20200110/1578638733136.jpg');
INSERT INTO `girlphotos` VALUES ('137', '22', '/public/uploads/20200110/1578638735137.jpg');
INSERT INTO `girlphotos` VALUES ('138', '22', '/public/uploads/20200110/1578638737138.jpg');
INSERT INTO `girlphotos` VALUES ('139', '23', '/public/uploads/20200110/1578638738139.jpg');
INSERT INTO `girlphotos` VALUES ('140', '23', '/public/uploads/20200110/1578638740140.jpg');
INSERT INTO `girlphotos` VALUES ('141', '23', '/public/uploads/20200110/1578638741141.jpg');
INSERT INTO `girlphotos` VALUES ('142', '23', '/public/uploads/20200110/1578638743142.jpg');
INSERT INTO `girlphotos` VALUES ('143', '23', '/public/uploads/20200110/1578638744143.jpg');
INSERT INTO `girlphotos` VALUES ('144', '24', '/public/uploads/20200110/1578638746144.jpg');
INSERT INTO `girlphotos` VALUES ('145', '24', '/public/uploads/20200110/1578638747145.jpg');
INSERT INTO `girlphotos` VALUES ('146', '24', '/public/uploads/20200110/1578638749146.jpg');
INSERT INTO `girlphotos` VALUES ('147', '24', '/public/uploads/20200110/1578638750147.jpg');
INSERT INTO `girlphotos` VALUES ('148', '24', '/public/uploads/20200110/1578638752148.jpg');
INSERT INTO `girlphotos` VALUES ('149', '24', '/public/uploads/20200110/1578638753149.jpg');
INSERT INTO `girlphotos` VALUES ('150', '24', '/public/uploads/20200110/1578638755150.jpg');
INSERT INTO `girlphotos` VALUES ('151', '24', '/public/uploads/20200110/1578638756151.jpg');
INSERT INTO `girlphotos` VALUES ('152', '25', '/public/uploads/20200110/1578638758152.jpg');
INSERT INTO `girlphotos` VALUES ('153', '25', '/public/uploads/20200110/1578638759153.jpg');
INSERT INTO `girlphotos` VALUES ('154', '25', '/public/uploads/20200110/1578638761154.jpg');
INSERT INTO `girlphotos` VALUES ('155', '25', '/public/uploads/20200110/1578638762155.jpg');
INSERT INTO `girlphotos` VALUES ('156', '25', '/public/uploads/20200110/1578638764156.jpg');
INSERT INTO `girlphotos` VALUES ('157', '25', '/public/uploads/20200110/1578638765157.jpg');
INSERT INTO `girlphotos` VALUES ('158', '25', '/public/uploads/20200110/1578638767158.jpg');
INSERT INTO `girlphotos` VALUES ('159', '25', '/public/uploads/20200110/1578638768159.jpg');
INSERT INTO `girlphotos` VALUES ('160', '26', '/public/uploads/20200110/1578638770160.jpg');
INSERT INTO `girlphotos` VALUES ('161', '26', '/public/uploads/20200110/1578638771161.jpg');
INSERT INTO `girlphotos` VALUES ('162', '26', '/public/uploads/20200110/1578638773162.jpg');
INSERT INTO `girlphotos` VALUES ('163', '26', '/public/uploads/20200110/1578638774163.jpg');
INSERT INTO `girlphotos` VALUES ('164', '26', '/public/uploads/20200110/1578638776164.jpg');
INSERT INTO `girlphotos` VALUES ('165', '26', '/public/uploads/20200110/1578638778165.jpg');
INSERT INTO `girlphotos` VALUES ('166', '26', '/public/uploads/20200110/1578638779166.jpg');
INSERT INTO `girlphotos` VALUES ('167', '27', '/public/uploads/20200110/1578638781167.jpg');
INSERT INTO `girlphotos` VALUES ('168', '27', '/public/uploads/20200110/1578638782168.jpg');
INSERT INTO `girlphotos` VALUES ('169', '27', '/public/uploads/20200110/1578638785169.jpg');
INSERT INTO `girlphotos` VALUES ('170', '27', '/public/uploads/20200110/1578638787170.jpg');
INSERT INTO `girlphotos` VALUES ('171', '27', '/public/uploads/20200110/1578638789171.jpg');
INSERT INTO `girlphotos` VALUES ('172', '27', '/public/uploads/20200110/1578638790172.jpg');
INSERT INTO `girlphotos` VALUES ('173', '27', '/public/uploads/20200110/1578638792173.jpg');
INSERT INTO `girlphotos` VALUES ('174', '28', '/public/uploads/20200110/1578638794174.jpg');
INSERT INTO `girlphotos` VALUES ('175', '28', '/public/uploads/20200110/1578638795175.jpg');
INSERT INTO `girlphotos` VALUES ('176', '28', '/public/uploads/20200110/1578638797176.jpg');
INSERT INTO `girlphotos` VALUES ('177', '28', '/public/uploads/20200110/1578638798177.jpg');
INSERT INTO `girlphotos` VALUES ('178', '28', '/public/uploads/20200110/1578638801178.jpg');
INSERT INTO `girlphotos` VALUES ('179', '28', '/public/uploads/20200110/1578638802179.jpg');
INSERT INTO `girlphotos` VALUES ('180', '28', '/public/uploads/20200110/1578638804180.jpg');
INSERT INTO `girlphotos` VALUES ('181', '29', '/public/uploads/20200110/1578638807181.jpg');
INSERT INTO `girlphotos` VALUES ('182', '29', '/public/uploads/20200110/1578638808182.jpg');
INSERT INTO `girlphotos` VALUES ('183', '29', '/public/uploads/20200110/1578638809183.jpg');
INSERT INTO `girlphotos` VALUES ('184', '29', '/public/uploads/20200110/1578638811184.jpg');
INSERT INTO `girlphotos` VALUES ('185', '29', '/public/uploads/20200110/1578638813185.jpg');
INSERT INTO `girlphotos` VALUES ('186', '29', '/public/uploads/20200110/1578638815186.jpg');
INSERT INTO `girlphotos` VALUES ('187', '29', '/public/uploads/20200110/1578638817187.jpg');
INSERT INTO `girlphotos` VALUES ('188', '30', '/public/uploads/20200110/1578638819188.jpg');
INSERT INTO `girlphotos` VALUES ('189', '30', '/public/uploads/20200110/1578638820189.jpg');
INSERT INTO `girlphotos` VALUES ('190', '30', '/public/uploads/20200110/1578638822190.jpg');
INSERT INTO `girlphotos` VALUES ('191', '30', '/public/uploads/20200110/1578638823191.jpg');
INSERT INTO `girlphotos` VALUES ('192', '30', '/public/uploads/20200110/1578638826192.jpg');
INSERT INTO `girlphotos` VALUES ('193', '30', '/public/uploads/20200110/1578638827193.jpg');
INSERT INTO `girlphotos` VALUES ('194', '31', '/public/uploads/20200110/1578638829194.jpg');
INSERT INTO `girlphotos` VALUES ('195', '31', '/public/uploads/20200110/1578638830195.jpg');
INSERT INTO `girlphotos` VALUES ('196', '31', '/public/uploads/20200110/1578638832196.jpg');
INSERT INTO `girlphotos` VALUES ('197', '32', '/public/uploads/20200110/1578638833197.jpg');
INSERT INTO `girlphotos` VALUES ('198', '32', '/public/uploads/20200110/1578638835198.jpg');
INSERT INTO `girlphotos` VALUES ('199', '32', '/public/uploads/20200110/1578638836199.jpg');
INSERT INTO `girlphotos` VALUES ('200', '32', '/public/uploads/20200110/1578638838200.jpg');
INSERT INTO `girlphotos` VALUES ('201', '32', '/public/uploads/20200110/1578638839201.jpg');
INSERT INTO `girlphotos` VALUES ('202', '32', '/public/uploads/20200110/1578638841202.jpg');
INSERT INTO `girlphotos` VALUES ('203', '33', '/public/uploads/20200110/1578638842203.jpg');
INSERT INTO `girlphotos` VALUES ('204', '33', '/public/uploads/20200110/1578638845204.jpg');
INSERT INTO `girlphotos` VALUES ('205', '33', '/public/uploads/20200110/1578638847205.jpg');
INSERT INTO `girlphotos` VALUES ('206', '33', '/public/uploads/20200110/1578638850206.jpg');
INSERT INTO `girlphotos` VALUES ('207', '33', '/public/uploads/20200110/1578638852207.jpg');
INSERT INTO `girlphotos` VALUES ('208', '33', '/public/uploads/20200110/1578638855208.jpg');
INSERT INTO `girlphotos` VALUES ('209', '33', '/public/uploads/20200110/1578638857209.jpg');
INSERT INTO `girlphotos` VALUES ('210', '33', '/public/uploads/20200110/1578638859210.jpg');
INSERT INTO `girlphotos` VALUES ('211', '34', '/public/uploads/20200110/1578638861211.jpg');
INSERT INTO `girlphotos` VALUES ('212', '34', '/public/uploads/20200110/1578638863212.jpg');
INSERT INTO `girlphotos` VALUES ('213', '34', '/public/uploads/20200110/1578638865213.jpg');
INSERT INTO `girlphotos` VALUES ('214', '34', '/public/uploads/20200110/1578638868214.jpg');
INSERT INTO `girlphotos` VALUES ('215', '34', '/public/uploads/20200110/1578638870215.jpg');
INSERT INTO `girlphotos` VALUES ('216', '34', '/public/uploads/20200110/1578638873216.jpg');
INSERT INTO `girlphotos` VALUES ('217', '35', '/public/uploads/20200110/1578638875217.jpg');
INSERT INTO `girlphotos` VALUES ('218', '35', '/public/uploads/20200110/1578638876218.jpg');
INSERT INTO `girlphotos` VALUES ('219', '35', '/public/uploads/20200110/1578638878219.jpg');
INSERT INTO `girlphotos` VALUES ('220', '35', '/public/uploads/20200110/1578638880220.jpg');
INSERT INTO `girlphotos` VALUES ('221', '35', '/public/uploads/20200110/1578638881221.jpg');
INSERT INTO `girlphotos` VALUES ('222', '35', '/public/uploads/20200110/1578639025222.jpg');
INSERT INTO `girlphotos` VALUES ('223', '35', '/public/uploads/20200110/1578639027223.jpg');
INSERT INTO `girlphotos` VALUES ('224', '35', '/public/uploads/20200110/1578639028224.jpg');
INSERT INTO `girlphotos` VALUES ('225', '36', '/public/uploads/20200110/1578639030225.jpg');
INSERT INTO `girlphotos` VALUES ('226', '36', '/public/uploads/20200110/1578639031226.jpg');
INSERT INTO `girlphotos` VALUES ('227', '36', '/public/uploads/20200110/1578639034227.jpg');
INSERT INTO `girlphotos` VALUES ('228', '36', '/public/uploads/20200110/1578639036228.jpg');
INSERT INTO `girlphotos` VALUES ('229', '36', '/public/uploads/20200110/1578639039229.jpg');
INSERT INTO `girlphotos` VALUES ('230', '36', '/public/uploads/20200110/1578639040230.jpg');
INSERT INTO `girlphotos` VALUES ('231', '37', '/public/uploads/20200110/1578639043231.jpg');
INSERT INTO `girlphotos` VALUES ('232', '37', '/public/uploads/20200110/1578639044232.jpg');
INSERT INTO `girlphotos` VALUES ('233', '37', '/public/uploads/20200110/1578639047233.jpg');
INSERT INTO `girlphotos` VALUES ('234', '37', '/public/uploads/20200110/1578639049234.jpg');
INSERT INTO `girlphotos` VALUES ('235', '37', '/public/uploads/20200110/1578639052235.jpg');
INSERT INTO `girlphotos` VALUES ('236', '37', '/public/uploads/20200110/1578639053236.jpg');
INSERT INTO `girlphotos` VALUES ('237', '37', '/public/uploads/20200110/1578639055237.jpg');
INSERT INTO `girlphotos` VALUES ('238', '37', '/public/uploads/20200110/1578639057238.jpg');
INSERT INTO `girlphotos` VALUES ('239', '38', '/public/uploads/20200110/1578639060239.jpg');
INSERT INTO `girlphotos` VALUES ('240', '38', '/public/uploads/20200110/1578639061240.jpg');
INSERT INTO `girlphotos` VALUES ('241', '38', '/public/uploads/20200110/1578639063241.jpg');
INSERT INTO `girlphotos` VALUES ('242', '38', '/public/uploads/20200110/1578639064242.jpg');
INSERT INTO `girlphotos` VALUES ('243', '38', '/public/uploads/20200110/1578639066243.jpg');
INSERT INTO `girlphotos` VALUES ('244', '38', '/public/uploads/20200110/1578639067244.jpg');
INSERT INTO `girlphotos` VALUES ('245', '38', '/public/uploads/20200110/1578639069245.jpg');
INSERT INTO `girlphotos` VALUES ('246', '38', '/public/uploads/20200110/1578639070246.jpg');
INSERT INTO `girlphotos` VALUES ('247', '39', '/public/uploads/20200110/1578639072247.jpg');
INSERT INTO `girlphotos` VALUES ('248', '39', '/public/uploads/20200110/1578639073248.jpg');
INSERT INTO `girlphotos` VALUES ('249', '39', '/public/uploads/20200110/1578639075249.jpg');
INSERT INTO `girlphotos` VALUES ('250', '39', '/public/uploads/20200110/1578639076250.jpg');
INSERT INTO `girlphotos` VALUES ('251', '39', '/public/uploads/20200110/1578639079251.jpg');
INSERT INTO `girlphotos` VALUES ('252', '39', '/public/uploads/20200110/1578639080252.jpg');
INSERT INTO `girlphotos` VALUES ('253', '39', '/public/uploads/20200110/1578639082253.jpg');
INSERT INTO `girlphotos` VALUES ('254', '40', '/public/uploads/20200110/1578639083254.jpg');
INSERT INTO `girlphotos` VALUES ('255', '40', '/public/uploads/20200110/1578639085255.jpg');
INSERT INTO `girlphotos` VALUES ('256', '40', '/public/uploads/20200110/1578639086256.jpg');
INSERT INTO `girlphotos` VALUES ('257', '40', '/public/uploads/20200110/1578639088257.jpg');
INSERT INTO `girlphotos` VALUES ('258', '40', '/public/uploads/20200110/1578639089258.jpg');
INSERT INTO `girlphotos` VALUES ('259', '40', '/public/uploads/20200110/1578639091259.jpg');
INSERT INTO `girlphotos` VALUES ('260', '41', '/public/uploads/20200110/1578639092260.jpg');
INSERT INTO `girlphotos` VALUES ('261', '41', '/public/uploads/20200110/1578639094261.jpg');
INSERT INTO `girlphotos` VALUES ('262', '41', '/public/uploads/20200110/1578639096262.jpg');
INSERT INTO `girlphotos` VALUES ('263', '41', '/public/uploads/20200110/1578639097263.jpg');
INSERT INTO `girlphotos` VALUES ('264', '41', '/public/uploads/20200110/1578639099264.jpg');
INSERT INTO `girlphotos` VALUES ('265', '42', '/public/uploads/20200110/1578639102265.jpg');
INSERT INTO `girlphotos` VALUES ('266', '42', '/public/uploads/20200110/1578639103266.jpg');
INSERT INTO `girlphotos` VALUES ('267', '42', '/public/uploads/20200110/1578639105267.jpg');
INSERT INTO `girlphotos` VALUES ('268', '42', '/public/uploads/20200110/1578639106268.jpg');
INSERT INTO `girlphotos` VALUES ('269', '42', '/public/uploads/20200110/1578639108269.jpg');
INSERT INTO `girlphotos` VALUES ('270', '42', '/public/uploads/20200110/1578639110270.jpg');
INSERT INTO `girlphotos` VALUES ('271', '42', '/public/uploads/20200110/1578639113271.jpg');
INSERT INTO `girlphotos` VALUES ('272', '42', '/public/uploads/20200110/1578639115272.jpg');
INSERT INTO `girlphotos` VALUES ('273', '43', '/public/uploads/20200110/1578639118273.jpg');
INSERT INTO `girlphotos` VALUES ('274', '43', '/public/uploads/20200110/1578639119274.jpg');
INSERT INTO `girlphotos` VALUES ('275', '43', '/public/uploads/20200110/1578639122275.jpg');
INSERT INTO `girlphotos` VALUES ('276', '43', '/public/uploads/20200110/1578639124276.jpg');
INSERT INTO `girlphotos` VALUES ('277', '43', '/public/uploads/20200110/1578639125277.jpg');
INSERT INTO `girlphotos` VALUES ('278', '43', '/public/uploads/20200110/1578639128278.jpg');
INSERT INTO `girlphotos` VALUES ('279', '44', '/public/uploads/20200110/1578639130279.jpg');
INSERT INTO `girlphotos` VALUES ('280', '44', '/public/uploads/20200110/1578639132280.jpg');
INSERT INTO `girlphotos` VALUES ('281', '44', '/public/uploads/20200110/1578639133281.jpg');
INSERT INTO `girlphotos` VALUES ('282', '44', '/public/uploads/20200110/1578639136282.jpg');
INSERT INTO `girlphotos` VALUES ('283', '44', '/public/uploads/20200110/1578639137283.jpg');
INSERT INTO `girlphotos` VALUES ('284', '44', '/public/uploads/20200110/1578639139284.jpg');
INSERT INTO `girlphotos` VALUES ('285', '45', '/public/uploads/20200110/1578639141285.jpg');
INSERT INTO `girlphotos` VALUES ('286', '45', '/public/uploads/20200110/1578639143286.jpg');
INSERT INTO `girlphotos` VALUES ('287', '45', '/public/uploads/20200110/1578639145287.jpg');
INSERT INTO `girlphotos` VALUES ('288', '45', '/public/uploads/20200110/1578639147288.jpg');
INSERT INTO `girlphotos` VALUES ('289', '45', '/public/uploads/20200110/1578639149289.jpg');
INSERT INTO `girlphotos` VALUES ('290', '45', '/public/uploads/20200110/1578639152290.jpg');
INSERT INTO `girlphotos` VALUES ('291', '46', '/public/uploads/20200110/1578639154291.jpg');
INSERT INTO `girlphotos` VALUES ('292', '46', '/public/uploads/20200110/1578639156292.jpg');
INSERT INTO `girlphotos` VALUES ('293', '46', '/public/uploads/20200110/1578639159293.jpg');
INSERT INTO `girlphotos` VALUES ('294', '46', '/public/uploads/20200110/1578639162294.jpg');
INSERT INTO `girlphotos` VALUES ('295', '46', '/public/uploads/20200110/1578639165295.jpg');
INSERT INTO `girlphotos` VALUES ('296', '46', '/public/uploads/20200110/1578639167296.jpg');
INSERT INTO `girlphotos` VALUES ('297', '47', '/public/uploads/20200110/1578639170297.jpg');
INSERT INTO `girlphotos` VALUES ('298', '47', '/public/uploads/20200110/1578639172298.jpg');
INSERT INTO `girlphotos` VALUES ('299', '47', '/public/uploads/20200110/1578639173299.jpg');
INSERT INTO `girlphotos` VALUES ('300', '47', '/public/uploads/20200110/1578639176300.jpg');
INSERT INTO `girlphotos` VALUES ('301', '47', '/public/uploads/20200110/1578639177301.jpg');
INSERT INTO `girlphotos` VALUES ('302', '48', '/public/uploads/20200110/1578639178302.jpg');
INSERT INTO `girlphotos` VALUES ('303', '48', '/public/uploads/20200110/1578639180303.jpg');
INSERT INTO `girlphotos` VALUES ('304', '48', '/public/uploads/20200110/1578639181304.jpg');
INSERT INTO `girlphotos` VALUES ('305', '48', '/public/uploads/20200110/1578639184305.jpg');
INSERT INTO `girlphotos` VALUES ('306', '48', '/public/uploads/20200110/1578639185306.jpg');
INSERT INTO `girlphotos` VALUES ('307', '48', '/public/uploads/20200110/1578639187307.jpg');
INSERT INTO `girlphotos` VALUES ('308', '49', '/public/uploads/20200110/1578639189308.jpg');
INSERT INTO `girlphotos` VALUES ('309', '49', '/public/uploads/20200110/1578639190309.jpg');
INSERT INTO `girlphotos` VALUES ('310', '49', '/public/uploads/20200110/1578639192310.jpg');
INSERT INTO `girlphotos` VALUES ('311', '49', '/public/uploads/20200110/1578639193311.jpg');
INSERT INTO `girlphotos` VALUES ('312', '49', '/public/uploads/20200110/1578639195312.jpg');
INSERT INTO `girlphotos` VALUES ('313', '49', '/public/uploads/20200110/1578639196313.jpg');
INSERT INTO `girlphotos` VALUES ('314', '49', '/public/uploads/20200110/1578639198314.jpg');
INSERT INTO `girlphotos` VALUES ('315', '49', '/public/uploads/20200110/1578639199315.jpg');
INSERT INTO `girlphotos` VALUES ('316', '50', '/public/uploads/20200110/1578639201316.jpg');
INSERT INTO `girlphotos` VALUES ('317', '50', '/public/uploads/20200110/1578639202317.jpg');
INSERT INTO `girlphotos` VALUES ('318', '50', '/public/uploads/20200110/1578639205318.jpg');
INSERT INTO `girlphotos` VALUES ('319', '50', '/public/uploads/20200110/1578639207319.jpg');
INSERT INTO `girlphotos` VALUES ('320', '50', '/public/uploads/20200110/1578639210320.jpg');
INSERT INTO `girlphotos` VALUES ('321', '51', '/public/uploads/20200110/1578639211321.jpg');
INSERT INTO `girlphotos` VALUES ('322', '51', '/public/uploads/20200110/1578639213322.jpg');
INSERT INTO `girlphotos` VALUES ('323', '51', '/public/uploads/20200110/1578639215323.jpg');
INSERT INTO `girlphotos` VALUES ('324', '51', '/public/uploads/20200110/1578639217324.jpg');
INSERT INTO `girlphotos` VALUES ('325', '51', '/public/uploads/20200110/1578639219325.jpg');
INSERT INTO `girlphotos` VALUES ('326', '52', '/public/uploads/20200110/1578639221326.jpg');
INSERT INTO `girlphotos` VALUES ('327', '52', '/public/uploads/20200110/1578639223327.jpg');
INSERT INTO `girlphotos` VALUES ('328', '52', '/public/uploads/20200110/1578639226328.jpg');
INSERT INTO `girlphotos` VALUES ('329', '52', '/public/uploads/20200110/1578639228329.jpg');
INSERT INTO `girlphotos` VALUES ('330', '52', '/public/uploads/20200110/1578639231330.jpg');
INSERT INTO `girlphotos` VALUES ('331', '52', '/public/uploads/20200110/1578639234331.jpg');
INSERT INTO `girlphotos` VALUES ('332', '53', '/public/uploads/20200110/1578639237332.jpg');
INSERT INTO `girlphotos` VALUES ('333', '53', '/public/uploads/20200110/1578639239333.jpg');
INSERT INTO `girlphotos` VALUES ('334', '53', '/public/uploads/20200110/1578639241334.jpg');
INSERT INTO `girlphotos` VALUES ('335', '53', '/public/uploads/20200110/1578639242335.jpg');
INSERT INTO `girlphotos` VALUES ('336', '53', '/public/uploads/20200110/1578639245336.jpg');
INSERT INTO `girlphotos` VALUES ('337', '53', '/public/uploads/20200110/1578639246337.jpg');
INSERT INTO `girlphotos` VALUES ('338', '53', '/public/uploads/20200110/1578639248338.jpg');
INSERT INTO `girlphotos` VALUES ('339', '53', '/public/uploads/20200110/1578639250339.jpg');
INSERT INTO `girlphotos` VALUES ('340', '54', '/public/uploads/20200110/1578639251340.jpg');
INSERT INTO `girlphotos` VALUES ('341', '54', '/public/uploads/20200110/1578639252341.jpg');
INSERT INTO `girlphotos` VALUES ('342', '54', '/public/uploads/20200110/1578639254342.jpg');
INSERT INTO `girlphotos` VALUES ('343', '54', '/public/uploads/20200110/1578639256343.jpg');
INSERT INTO `girlphotos` VALUES ('344', '54', '/public/uploads/20200110/1578639258344.jpg');
INSERT INTO `girlphotos` VALUES ('345', '54', '/public/uploads/20200110/1578639259345.jpg');
INSERT INTO `girlphotos` VALUES ('346', '55', '/public/uploads/20200110/1578639261346.jpg');
INSERT INTO `girlphotos` VALUES ('347', '55', '/public/uploads/20200110/1578639262347.jpg');
INSERT INTO `girlphotos` VALUES ('348', '55', '/public/uploads/20200110/1578639264348.jpg');
INSERT INTO `girlphotos` VALUES ('349', '55', '/public/uploads/20200110/1578639265349.jpg');
INSERT INTO `girlphotos` VALUES ('350', '55', '/public/uploads/20200110/1578639267350.jpg');
INSERT INTO `girlphotos` VALUES ('351', '55', '/public/uploads/20200110/1578639268351.jpg');
INSERT INTO `girlphotos` VALUES ('352', '55', '/public/uploads/20200110/1578639270352.jpg');
INSERT INTO `girlphotos` VALUES ('353', '55', '/public/uploads/20200110/1578639271353.jpg');
INSERT INTO `girlphotos` VALUES ('354', '56', '/public/uploads/20200110/1578639273354.jpg');
INSERT INTO `girlphotos` VALUES ('355', '56', '/public/uploads/20200110/1578639274355.jpg');
INSERT INTO `girlphotos` VALUES ('356', '56', '/public/uploads/20200110/1578639277356.jpg');
INSERT INTO `girlphotos` VALUES ('357', '56', '/public/uploads/20200110/1578639279357.jpg');
INSERT INTO `girlphotos` VALUES ('358', '56', '/public/uploads/20200110/1578639281358.jpg');
INSERT INTO `girlphotos` VALUES ('359', '56', '/public/uploads/20200110/1578639284359.jpg');
INSERT INTO `girlphotos` VALUES ('360', '57', '/public/uploads/20200110/1578639286360.jpg');
INSERT INTO `girlphotos` VALUES ('361', '57', '/public/uploads/20200110/1578639288361.jpg');
INSERT INTO `girlphotos` VALUES ('362', '57', '/public/uploads/20200110/1578639290362.jpg');
INSERT INTO `girlphotos` VALUES ('363', '57', '/public/uploads/20200110/1578639291363.jpg');
INSERT INTO `girlphotos` VALUES ('364', '57', '/public/uploads/20200110/1578639293364.jpg');
INSERT INTO `girlphotos` VALUES ('365', '57', '/public/uploads/20200110/1578639294365.jpg');
INSERT INTO `girlphotos` VALUES ('366', '58', '/public/uploads/20200110/1578639296366.jpg');
INSERT INTO `girlphotos` VALUES ('367', '58', '/public/uploads/20200110/1578639297367.jpg');
INSERT INTO `girlphotos` VALUES ('368', '58', '/public/uploads/20200110/1578639299368.jpg');
INSERT INTO `girlphotos` VALUES ('369', '58', '/public/uploads/20200110/1578639300369.jpg');
INSERT INTO `girlphotos` VALUES ('370', '58', '/public/uploads/20200110/1578639302370.jpg');
INSERT INTO `girlphotos` VALUES ('371', '58', '/public/uploads/20200110/1578639303371.jpg');
INSERT INTO `girlphotos` VALUES ('372', '59', '/public/uploads/20200110/1578639306372.jpg');
INSERT INTO `girlphotos` VALUES ('373', '59', '/public/uploads/20200110/1578639307373.jpg');
INSERT INTO `girlphotos` VALUES ('374', '59', '/public/uploads/20200110/1578639309374.jpg');
INSERT INTO `girlphotos` VALUES ('375', '59', '/public/uploads/20200110/1578639311375.jpg');
INSERT INTO `girlphotos` VALUES ('376', '59', '/public/uploads/20200110/1578639312376.jpg');
INSERT INTO `girlphotos` VALUES ('377', '59', '/public/uploads/20200110/1578639314377.jpg');
INSERT INTO `girlphotos` VALUES ('378', '59', '/public/uploads/20200110/1578639315378.jpg');
INSERT INTO `girlphotos` VALUES ('379', '59', '/public/uploads/20200110/1578639317379.jpg');
INSERT INTO `girlphotos` VALUES ('380', '60', '/public/uploads/20200110/1578639318380.jpg');
INSERT INTO `girlphotos` VALUES ('381', '60', '/public/uploads/20200110/1578639320381.jpg');
INSERT INTO `girlphotos` VALUES ('382', '60', '/public/uploads/20200110/1578639321382.jpg');
INSERT INTO `girlphotos` VALUES ('383', '60', '/public/uploads/20200110/1578639323383.jpg');
INSERT INTO `girlphotos` VALUES ('384', '60', '/public/uploads/20200110/1578639324384.jpg');
INSERT INTO `girlphotos` VALUES ('385', '60', '/public/uploads/20200110/1578639326385.jpg');
INSERT INTO `girlphotos` VALUES ('386', '60', '/public/uploads/20200110/1578639327386.jpg');
INSERT INTO `girlphotos` VALUES ('387', '60', '/public/uploads/20200110/1578639329387.jpg');
INSERT INTO `girlphotos` VALUES ('388', '61', '/public/uploads/20200110/1578639330388.jpg');
INSERT INTO `girlphotos` VALUES ('389', '61', '/public/uploads/20200110/1578639332389.jpg');
INSERT INTO `girlphotos` VALUES ('390', '61', '/public/uploads/20200110/1578639334390.jpg');
INSERT INTO `girlphotos` VALUES ('391', '61', '/public/uploads/20200110/1578639336391.jpg');
INSERT INTO `girlphotos` VALUES ('392', '61', '/public/uploads/20200110/1578639338392.jpg');
INSERT INTO `girlphotos` VALUES ('393', '62', '/public/uploads/20200110/1578639340393.jpg');
INSERT INTO `girlphotos` VALUES ('394', '62', '/public/uploads/20200110/1578639341394.jpg');
INSERT INTO `girlphotos` VALUES ('395', '62', '/public/uploads/20200110/1578639342395.jpg');
INSERT INTO `girlphotos` VALUES ('396', '62', '/public/uploads/20200110/1578639344396.jpg');
INSERT INTO `girlphotos` VALUES ('397', '63', '/public/uploads/20200110/1578639345397.jpg');
INSERT INTO `girlphotos` VALUES ('398', '63', '/public/uploads/20200110/1578639347398.jpg');
INSERT INTO `girlphotos` VALUES ('399', '63', '/public/uploads/20200110/1578639348399.jpg');
INSERT INTO `girlphotos` VALUES ('400', '63', '/public/uploads/20200110/1578639351400.jpg');
INSERT INTO `girlphotos` VALUES ('401', '63', '/public/uploads/20200110/1578639352401.jpg');
INSERT INTO `girlphotos` VALUES ('402', '63', '/public/uploads/20200110/1578639354402.jpg');
INSERT INTO `girlphotos` VALUES ('403', '64', '/public/uploads/20200110/1578639356403.jpg');
INSERT INTO `girlphotos` VALUES ('404', '64', '/public/uploads/20200110/1578639358404.jpg');
INSERT INTO `girlphotos` VALUES ('405', '64', '/public/uploads/20200110/1578639359405.jpg');
INSERT INTO `girlphotos` VALUES ('406', '64', '/public/uploads/20200110/1578639361406.jpg');
INSERT INTO `girlphotos` VALUES ('407', '64', '/public/uploads/20200110/1578639362407.jpg');
INSERT INTO `girlphotos` VALUES ('408', '64', '/public/uploads/20200110/1578639364408.jpg');
INSERT INTO `girlphotos` VALUES ('409', '64', '/public/uploads/20200110/1578639365409.jpg');
INSERT INTO `girlphotos` VALUES ('410', '65', '/public/uploads/20200110/1578639367410.jpg');
INSERT INTO `girlphotos` VALUES ('411', '65', '/public/uploads/20200110/1578639368411.jpg');
INSERT INTO `girlphotos` VALUES ('412', '65', '/public/uploads/20200110/1578639369412.jpg');
INSERT INTO `girlphotos` VALUES ('413', '65', '/public/uploads/20200110/1578639371413.jpg');
INSERT INTO `girlphotos` VALUES ('414', '65', '/public/uploads/20200110/1578639372414.jpg');
INSERT INTO `girlphotos` VALUES ('415', '65', '/public/uploads/20200110/1578639374415.jpg');
INSERT INTO `girlphotos` VALUES ('416', '65', '/public/uploads/20200110/1578639375416.jpg');
INSERT INTO `girlphotos` VALUES ('417', '65', '/public/uploads/20200110/1578639377417.jpg');
INSERT INTO `girlphotos` VALUES ('418', '66', '/public/uploads/20200110/1578639378418.jpg');
INSERT INTO `girlphotos` VALUES ('419', '66', '/public/uploads/20200110/1578639380419.jpg');
INSERT INTO `girlphotos` VALUES ('420', '66', '/public/uploads/20200110/1578639381420.jpg');
INSERT INTO `girlphotos` VALUES ('421', '66', '/public/uploads/20200110/1578639383421.jpg');
INSERT INTO `girlphotos` VALUES ('422', '66', '/public/uploads/20200110/1578639384422.jpg');
INSERT INTO `girlphotos` VALUES ('423', '67', '/public/uploads/20200110/1578639386423.jpg');
INSERT INTO `girlphotos` VALUES ('424', '67', '/public/uploads/20200110/1578639387424.jpg');
INSERT INTO `girlphotos` VALUES ('425', '67', '/public/uploads/20200110/1578639389425.jpg');
INSERT INTO `girlphotos` VALUES ('426', '67', '/public/uploads/20200110/1578639390426.jpg');
INSERT INTO `girlphotos` VALUES ('427', '67', '/public/uploads/20200110/1578639392427.jpg');
INSERT INTO `girlphotos` VALUES ('428', '67', '/public/uploads/20200110/1578639393428.jpg');
INSERT INTO `girlphotos` VALUES ('429', '68', '/public/uploads/20200110/1578639395429.jpg');
INSERT INTO `girlphotos` VALUES ('430', '68', '/public/uploads/20200110/1578639396430.jpg');
INSERT INTO `girlphotos` VALUES ('431', '68', '/public/uploads/20200110/1578639398431.jpg');
INSERT INTO `girlphotos` VALUES ('432', '68', '/public/uploads/20200110/1578639399432.jpg');
INSERT INTO `girlphotos` VALUES ('433', '68', '/public/uploads/20200110/1578639402433.jpg');
INSERT INTO `girlphotos` VALUES ('434', '68', '/public/uploads/20200110/1578639404434.jpg');
INSERT INTO `girlphotos` VALUES ('435', '69', '/public/uploads/20200110/1578639406435.jpg');
INSERT INTO `girlphotos` VALUES ('436', '69', '/public/uploads/20200110/1578639407436.jpg');
INSERT INTO `girlphotos` VALUES ('437', '69', '/public/uploads/20200110/1578639410437.jpg');
INSERT INTO `girlphotos` VALUES ('438', '69', '/public/uploads/20200110/1578639411438.jpg');
INSERT INTO `girlphotos` VALUES ('439', '69', '/public/uploads/20200110/1578639615439.jpg');
INSERT INTO `girlphotos` VALUES ('440', '69', '/public/uploads/20200110/1578639617440.jpg');
INSERT INTO `girlphotos` VALUES ('441', '70', '/public/uploads/20200110/1578639619441.jpg');
INSERT INTO `girlphotos` VALUES ('442', '70', '/public/uploads/20200110/1578639620442.jpg');
INSERT INTO `girlphotos` VALUES ('443', '70', '/public/uploads/20200110/1578639623443.jpg');
INSERT INTO `girlphotos` VALUES ('444', '70', '/public/uploads/20200110/1578639625444.jpg');
INSERT INTO `girlphotos` VALUES ('445', '70', '/public/uploads/20200110/1578639627445.jpg');
INSERT INTO `girlphotos` VALUES ('446', '70', '/public/uploads/20200110/1578639628446.jpg');
INSERT INTO `girlphotos` VALUES ('447', '71', '/public/uploads/20200110/1578639630447.jpg');
INSERT INTO `girlphotos` VALUES ('448', '71', '/public/uploads/20200110/1578639632448.jpg');
INSERT INTO `girlphotos` VALUES ('449', '71', '/public/uploads/20200110/1578639635449.jpg');
INSERT INTO `girlphotos` VALUES ('450', '71', '/public/uploads/20200110/1578639637450.jpg');
INSERT INTO `girlphotos` VALUES ('451', '71', '/public/uploads/20200110/1578639639451.jpg');
INSERT INTO `girlphotos` VALUES ('452', '71', '/public/uploads/20200110/1578639640452.jpg');
INSERT INTO `girlphotos` VALUES ('453', '71', '/public/uploads/20200110/1578639642453.jpg');
INSERT INTO `girlphotos` VALUES ('454', '72', '/public/uploads/20200110/1578639643454.jpg');
INSERT INTO `girlphotos` VALUES ('455', '72', '/public/uploads/20200110/1578639645455.jpg');
INSERT INTO `girlphotos` VALUES ('456', '72', '/public/uploads/20200110/1578639646456.jpg');
INSERT INTO `girlphotos` VALUES ('457', '72', '/public/uploads/20200110/1578639648457.jpg');
INSERT INTO `girlphotos` VALUES ('458', '72', '/public/uploads/20200110/1578639649458.jpg');
INSERT INTO `girlphotos` VALUES ('459', '72', '/public/uploads/20200110/1578639651459.jpg');
INSERT INTO `girlphotos` VALUES ('460', '72', '/public/uploads/20200110/1578639652460.jpg');
INSERT INTO `girlphotos` VALUES ('461', '73', '/public/uploads/20200110/1578639654461.jpg');
INSERT INTO `girlphotos` VALUES ('462', '73', '/public/uploads/20200110/1578639655462.jpg');
INSERT INTO `girlphotos` VALUES ('463', '73', '/public/uploads/20200110/1578639658463.jpg');
INSERT INTO `girlphotos` VALUES ('464', '73', '/public/uploads/20200110/1578639660464.jpg');
INSERT INTO `girlphotos` VALUES ('465', '73', '/public/uploads/20200110/1578639662465.jpg');
INSERT INTO `girlphotos` VALUES ('466', '73', '/public/uploads/20200110/1578639664466.jpg');
INSERT INTO `girlphotos` VALUES ('467', '73', '/public/uploads/20200110/1578639666467.jpg');
INSERT INTO `girlphotos` VALUES ('468', '73', '/public/uploads/20200110/1578639669468.jpg');
INSERT INTO `girlphotos` VALUES ('469', '74', '/public/uploads/20200110/1578639670469.jpg');
INSERT INTO `girlphotos` VALUES ('470', '74', '/public/uploads/20200110/1578639672470.jpg');
INSERT INTO `girlphotos` VALUES ('471', '74', '/public/uploads/20200110/1578639673471.jpg');
INSERT INTO `girlphotos` VALUES ('472', '74', '/public/uploads/20200110/1578639675472.jpg');
INSERT INTO `girlphotos` VALUES ('473', '74', '/public/uploads/20200110/1578639676473.jpg');
INSERT INTO `girlphotos` VALUES ('474', '74', '/public/uploads/20200110/1578639677474.jpg');
INSERT INTO `girlphotos` VALUES ('475', '75', '/public/uploads/20200110/1578639679475.jpg');
INSERT INTO `girlphotos` VALUES ('476', '75', '/public/uploads/20200110/1578639680476.jpg');
INSERT INTO `girlphotos` VALUES ('477', '75', '/public/uploads/20200110/1578639682477.jpg');
INSERT INTO `girlphotos` VALUES ('478', '75', '/public/uploads/20200110/1578639683478.jpg');
INSERT INTO `girlphotos` VALUES ('479', '75', '/public/uploads/20200110/1578639685479.jpg');
INSERT INTO `girlphotos` VALUES ('480', '75', '/public/uploads/20200110/1578639686480.jpg');
INSERT INTO `girlphotos` VALUES ('481', '75', '/public/uploads/20200110/1578639688481.jpg');
INSERT INTO `girlphotos` VALUES ('482', '76', '/public/uploads/20200110/1578639689482.jpg');
INSERT INTO `girlphotos` VALUES ('483', '76', '/public/uploads/20200110/1578639691483.jpg');
INSERT INTO `girlphotos` VALUES ('484', '76', '/public/uploads/20200110/1578639693484.jpg');
INSERT INTO `girlphotos` VALUES ('485', '76', '/public/uploads/20200110/1578639696485.jpg');
INSERT INTO `girlphotos` VALUES ('486', '76', '/public/uploads/20200110/1578639698486.jpg');
INSERT INTO `girlphotos` VALUES ('487', '76', '/public/uploads/20200110/1578639700487.jpg');
INSERT INTO `girlphotos` VALUES ('488', '76', '/public/uploads/20200110/1578639702488.jpg');
INSERT INTO `girlphotos` VALUES ('489', '76', '/public/uploads/20200110/1578639704489.jpg');
INSERT INTO `girlphotos` VALUES ('490', '77', '/public/uploads/20200110/1578639706490.jpg');
INSERT INTO `girlphotos` VALUES ('491', '77', '/public/uploads/20200110/1578639708491.jpg');
INSERT INTO `girlphotos` VALUES ('492', '77', '/public/uploads/20200110/1578639709492.jpg');
INSERT INTO `girlphotos` VALUES ('493', '77', '/public/uploads/20200110/1578639711493.jpg');
INSERT INTO `girlphotos` VALUES ('494', '77', '/public/uploads/20200110/1578639712494.jpg');
INSERT INTO `girlphotos` VALUES ('495', '77', '/public/uploads/20200110/1578639714495.jpg');
INSERT INTO `girlphotos` VALUES ('496', '77', '/public/uploads/20200110/1578639715496.jpg');
INSERT INTO `girlphotos` VALUES ('497', '78', '/public/uploads/20200110/1578639717497.jpg');
INSERT INTO `girlphotos` VALUES ('498', '78', '/public/uploads/20200110/1578639719498.jpg');
INSERT INTO `girlphotos` VALUES ('499', '78', '/public/uploads/20200110/1578639722499.jpg');
INSERT INTO `girlphotos` VALUES ('500', '78', '/public/uploads/20200110/1578639724500.jpg');
INSERT INTO `girlphotos` VALUES ('501', '78', '/public/uploads/20200110/1578639727501.jpg');
INSERT INTO `girlphotos` VALUES ('502', '79', '/public/uploads/20200110/1578639729502.jpg');
INSERT INTO `girlphotos` VALUES ('503', '79', '/public/uploads/20200110/1578639731503.jpg');
INSERT INTO `girlphotos` VALUES ('504', '79', '/public/uploads/20200110/1578639732504.jpg');
INSERT INTO `girlphotos` VALUES ('505', '79', '/public/uploads/20200110/1578639733505.jpg');
INSERT INTO `girlphotos` VALUES ('506', '79', '/public/uploads/20200110/1578639735506.jpg');
INSERT INTO `girlphotos` VALUES ('507', '79', '/public/uploads/20200110/1578639736507.jpg');
INSERT INTO `girlphotos` VALUES ('508', '80', '/public/uploads/20200110/1578639738508.jpg');
INSERT INTO `girlphotos` VALUES ('509', '80', '/public/uploads/20200110/1578639739509.jpg');
INSERT INTO `girlphotos` VALUES ('510', '80', '/public/uploads/20200110/1578639742510.jpg');
INSERT INTO `girlphotos` VALUES ('511', '80', '/public/uploads/20200110/1578639744511.jpg');
INSERT INTO `girlphotos` VALUES ('512', '80', '/public/uploads/20200110/1578639747512.jpg');
INSERT INTO `girlphotos` VALUES ('513', '80', '/public/uploads/20200110/1578639749513.jpg');
INSERT INTO `girlphotos` VALUES ('514', '80', '/public/uploads/20200110/1578639752514.jpg');
INSERT INTO `girlphotos` VALUES ('515', '80', '/public/uploads/20200110/1578639754515.jpg');
INSERT INTO `girlphotos` VALUES ('516', '81', '/public/uploads/20200110/1578639757516.jpg');
INSERT INTO `girlphotos` VALUES ('517', '81', '/public/uploads/20200110/1578639761517.jpg');
INSERT INTO `girlphotos` VALUES ('518', '81', '/public/uploads/20200110/1578639767518.jpg');
INSERT INTO `girlphotos` VALUES ('519', '81', '/public/uploads/20200110/1578639775519.jpg');
INSERT INTO `girlphotos` VALUES ('520', '81', '/public/uploads/20200110/1578639784520.jpg');
INSERT INTO `girlphotos` VALUES ('521', '81', '/public/uploads/20200110/1578639790521.jpg');
INSERT INTO `girlphotos` VALUES ('522', '81', '/public/uploads/20200110/1578639795522.jpg');
INSERT INTO `girlphotos` VALUES ('523', '82', '/public/uploads/20200110/1578639800523.jpg');
INSERT INTO `girlphotos` VALUES ('524', '82', '/public/uploads/20200110/1578639802524.jpg');
INSERT INTO `girlphotos` VALUES ('525', '82', '/public/uploads/20200110/1578639803525.jpg');
INSERT INTO `girlphotos` VALUES ('526', '82', '/public/uploads/20200110/1578639805526.jpg');
INSERT INTO `girlphotos` VALUES ('527', '82', '/public/uploads/20200110/1578639807527.jpg');
INSERT INTO `girlphotos` VALUES ('528', '82', '/public/uploads/20200110/1578639809528.jpg');
INSERT INTO `girlphotos` VALUES ('529', '83', '/public/uploads/20200110/1578639810529.jpg');
INSERT INTO `girlphotos` VALUES ('530', '83', '/public/uploads/20200110/1578639812530.jpg');
INSERT INTO `girlphotos` VALUES ('531', '83', '/public/uploads/20200110/1578639813531.jpg');
INSERT INTO `girlphotos` VALUES ('532', '83', '/public/uploads/20200110/1578639815532.jpg');
INSERT INTO `girlphotos` VALUES ('533', '83', '/public/uploads/20200110/1578639816533.jpg');
INSERT INTO `girlphotos` VALUES ('534', '83', '/public/uploads/20200110/1578639818534.jpg');
INSERT INTO `girlphotos` VALUES ('535', '83', '/public/uploads/20200110/1578639819535.jpg');
INSERT INTO `girlphotos` VALUES ('536', '84', '/public/uploads/20200110/1578639821536.jpg');
INSERT INTO `girlphotos` VALUES ('537', '84', '/public/uploads/20200110/1578639822537.jpg');
INSERT INTO `girlphotos` VALUES ('538', '84', '/public/uploads/20200110/1578639825538.jpg');
INSERT INTO `girlphotos` VALUES ('539', '84', '/public/uploads/20200110/1578639827539.jpg');
INSERT INTO `girlphotos` VALUES ('540', '84', '/public/uploads/20200110/1578639828540.jpg');
INSERT INTO `girlphotos` VALUES ('541', '84', '/public/uploads/20200110/1578639831541.jpg');
INSERT INTO `girlphotos` VALUES ('542', '85', '/public/uploads/20200110/1578639833542.jpg');
INSERT INTO `girlphotos` VALUES ('543', '85', '/public/uploads/20200110/1578639834543.jpg');
INSERT INTO `girlphotos` VALUES ('544', '85', '/public/uploads/20200110/1578639837544.jpg');
INSERT INTO `girlphotos` VALUES ('545', '85', '/public/uploads/20200110/1578639838545.jpg');
INSERT INTO `girlphotos` VALUES ('546', '85', '/public/uploads/20200110/1578639841546.jpg');
INSERT INTO `girlphotos` VALUES ('547', '85', '/public/uploads/20200110/1578639842547.jpg');
INSERT INTO `girlphotos` VALUES ('548', '86', '/public/uploads/20200110/1578639845548.jpg');
INSERT INTO `girlphotos` VALUES ('549', '86', '/public/uploads/20200110/1578639846549.jpg');
INSERT INTO `girlphotos` VALUES ('550', '86', '/public/uploads/20200110/1578639849550.jpg');
INSERT INTO `girlphotos` VALUES ('551', '86', '/public/uploads/20200110/1578639851551.jpg');
INSERT INTO `girlphotos` VALUES ('552', '86', '/public/uploads/20200110/1578639854552.jpg');
INSERT INTO `girlphotos` VALUES ('553', '86', '/public/uploads/20200110/1578639856553.jpg');
INSERT INTO `girlphotos` VALUES ('554', '86', '/public/uploads/20200110/1578639858554.jpg');
INSERT INTO `girlphotos` VALUES ('555', '86', '/public/uploads/20200110/1578639859555.jpg');
INSERT INTO `girlphotos` VALUES ('556', '87', '/public/uploads/20200110/1578639862556.jpg');
INSERT INTO `girlphotos` VALUES ('557', '87', '/public/uploads/20200110/1578639863557.jpg');
INSERT INTO `girlphotos` VALUES ('558', '87', '/public/uploads/20200110/1578639865558.jpg');
INSERT INTO `girlphotos` VALUES ('559', '87', '/public/uploads/20200110/1578639866559.jpg');
INSERT INTO `girlphotos` VALUES ('560', '87', '/public/uploads/20200110/1578639868560.jpg');
INSERT INTO `girlphotos` VALUES ('561', '87', '/public/uploads/20200110/1578639869561.jpg');
INSERT INTO `girlphotos` VALUES ('562', '87', '/public/uploads/20200110/1578639871562.jpg');
INSERT INTO `girlphotos` VALUES ('563', '88', '/public/uploads/20200110/1578639872563.jpg');
INSERT INTO `girlphotos` VALUES ('564', '88', '/public/uploads/20200110/1578639874564.jpg');
INSERT INTO `girlphotos` VALUES ('565', '88', '/public/uploads/20200110/1578639875565.jpg');
INSERT INTO `girlphotos` VALUES ('566', '88', '/public/uploads/20200110/1578639877566.jpg');
INSERT INTO `girlphotos` VALUES ('567', '88', '/public/uploads/20200110/1578639879567.jpg');
INSERT INTO `girlphotos` VALUES ('568', '89', '/public/uploads/20200110/1578639880568.jpg');
INSERT INTO `girlphotos` VALUES ('569', '89', '/public/uploads/20200110/1578639882569.jpg');
INSERT INTO `girlphotos` VALUES ('570', '89', '/public/uploads/20200110/1578639883570.jpg');
INSERT INTO `girlphotos` VALUES ('571', '89', '/public/uploads/20200110/1578639885571.jpg');
INSERT INTO `girlphotos` VALUES ('572', '89', '/public/uploads/20200110/1578639886572.jpg');
INSERT INTO `girlphotos` VALUES ('573', '89', '/public/uploads/20200110/1578639889573.jpg');
INSERT INTO `girlphotos` VALUES ('574', '89', '/public/uploads/20200110/1578639890574.jpg');
INSERT INTO `girlphotos` VALUES ('575', '89', '/public/uploads/20200110/1578639893575.jpg');
INSERT INTO `girlphotos` VALUES ('576', '90', '/public/uploads/20200110/1578639894576.jpg');
INSERT INTO `girlphotos` VALUES ('577', '90', '/public/uploads/20200110/1578639896577.jpg');
INSERT INTO `girlphotos` VALUES ('578', '90', '/public/uploads/20200110/1578639897578.jpg');
INSERT INTO `girlphotos` VALUES ('579', '90', '/public/uploads/20200110/1578639899579.jpg');
INSERT INTO `girlphotos` VALUES ('580', '90', '/public/uploads/20200110/1578639901580.jpg');
INSERT INTO `girlphotos` VALUES ('581', '90', '/public/uploads/20200110/1578639902581.jpg');
INSERT INTO `girlphotos` VALUES ('582', '91', '/public/uploads/20200110/1578639904582.jpg');
INSERT INTO `girlphotos` VALUES ('583', '91', '/public/uploads/20200110/1578639906583.jpg');
INSERT INTO `girlphotos` VALUES ('584', '91', '/public/uploads/20200110/1578639909584.jpg');
INSERT INTO `girlphotos` VALUES ('585', '91', '/public/uploads/20200110/1578639911585.jpg');
INSERT INTO `girlphotos` VALUES ('586', '91', '/public/uploads/20200110/1578639914586.jpg');
INSERT INTO `girlphotos` VALUES ('587', '91', '/public/uploads/20200110/1578639916587.jpg');
INSERT INTO `girlphotos` VALUES ('588', '91', '/public/uploads/20200110/1578639919588.jpg');
INSERT INTO `girlphotos` VALUES ('589', '92', '/public/uploads/20200110/1578639921589.jpg');
INSERT INTO `girlphotos` VALUES ('590', '92', '/public/uploads/20200110/1578639923590.jpg');
INSERT INTO `girlphotos` VALUES ('591', '92', '/public/uploads/20200110/1578639924591.jpg');
INSERT INTO `girlphotos` VALUES ('592', '92', '/public/uploads/20200110/1578639925592.jpg');
INSERT INTO `girlphotos` VALUES ('593', '93', '/public/uploads/20200110/1578639927593.jpg');
INSERT INTO `girlphotos` VALUES ('594', '93', '/public/uploads/20200110/1578639928594.jpg');
INSERT INTO `girlphotos` VALUES ('595', '93', '/public/uploads/20200110/1578639930595.jpg');
INSERT INTO `girlphotos` VALUES ('596', '93', '/public/uploads/20200110/1578639931596.jpg');
INSERT INTO `girlphotos` VALUES ('597', '93', '/public/uploads/20200110/1578639933597.jpg');
INSERT INTO `girlphotos` VALUES ('598', '93', '/public/uploads/20200110/1578639934598.jpg');
INSERT INTO `girlphotos` VALUES ('599', '94', '/public/uploads/20200110/1578639936599.jpg');
INSERT INTO `girlphotos` VALUES ('600', '94', '/public/uploads/20200110/1578639937600.jpg');
INSERT INTO `girlphotos` VALUES ('601', '94', '/public/uploads/20200110/1578639940601.jpg');
INSERT INTO `girlphotos` VALUES ('602', '94', '/public/uploads/20200110/1578639942602.jpg');
INSERT INTO `girlphotos` VALUES ('603', '94', '/public/uploads/20200110/1578639944603.jpg');
INSERT INTO `girlphotos` VALUES ('604', '94', '/public/uploads/20200110/1578639946604.jpg');
INSERT INTO `girlphotos` VALUES ('605', '94', '/public/uploads/20200110/1578639949605.jpg');
INSERT INTO `girlphotos` VALUES ('606', '95', '/public/uploads/20200110/1578639951606.jpg');
INSERT INTO `girlphotos` VALUES ('607', '95', '/public/uploads/20200110/1578639953607.jpg');
INSERT INTO `girlphotos` VALUES ('608', '95', '/public/uploads/20200110/1578639955608.jpg');
INSERT INTO `girlphotos` VALUES ('609', '95', '/public/uploads/20200110/1578639958609.jpg');
INSERT INTO `girlphotos` VALUES ('610', '95', '/public/uploads/20200110/1578639959610.jpg');
INSERT INTO `girlphotos` VALUES ('611', '95', '/public/uploads/20200110/1578639961611.jpg');
INSERT INTO `girlphotos` VALUES ('612', '96', '/public/uploads/20200110/1578639962612.jpg');
INSERT INTO `girlphotos` VALUES ('613', '96', '/public/uploads/20200110/1578639963613.jpg');
INSERT INTO `girlphotos` VALUES ('614', '96', '/public/uploads/20200110/1578639965614.jpg');
INSERT INTO `girlphotos` VALUES ('615', '96', '/public/uploads/20200110/1578639966615.jpg');
INSERT INTO `girlphotos` VALUES ('616', '96', '/public/uploads/20200110/1578639968616.jpg');
INSERT INTO `girlphotos` VALUES ('617', '96', '/public/uploads/20200110/1578639970617.jpg');
INSERT INTO `girlphotos` VALUES ('618', '97', '/public/uploads/20200110/1578639972618.jpg');
INSERT INTO `girlphotos` VALUES ('619', '97', '/public/uploads/20200110/1578639974619.jpg');
INSERT INTO `girlphotos` VALUES ('620', '97', '/public/uploads/20200110/1578639975620.jpg');
INSERT INTO `girlphotos` VALUES ('621', '97', '/public/uploads/20200110/1578639977621.jpg');
INSERT INTO `girlphotos` VALUES ('622', '97', '/public/uploads/20200110/1578639979622.jpg');
INSERT INTO `girlphotos` VALUES ('623', '97', '/public/uploads/20200110/1578639980623.jpg');
INSERT INTO `girlphotos` VALUES ('624', '97', '/public/uploads/20200110/1578639983624.jpg');
INSERT INTO `girlphotos` VALUES ('625', '98', '/public/uploads/20200110/1578639985625.jpg');
INSERT INTO `girlphotos` VALUES ('626', '98', '/public/uploads/20200110/1578639986626.jpg');
INSERT INTO `girlphotos` VALUES ('627', '98', '/public/uploads/20200110/1578639988627.jpg');
INSERT INTO `girlphotos` VALUES ('628', '98', '/public/uploads/20200110/1578639989628.jpg');
INSERT INTO `girlphotos` VALUES ('629', '98', '/public/uploads/20200110/1578639991629.jpg');
INSERT INTO `girlphotos` VALUES ('630', '98', '/public/uploads/20200110/1578639992630.jpg');
INSERT INTO `girlphotos` VALUES ('631', '98', '/public/uploads/20200110/1578639994631.jpg');
INSERT INTO `girlphotos` VALUES ('632', '99', '/public/uploads/20200110/1578639995632.jpg');
INSERT INTO `girlphotos` VALUES ('633', '99', '/public/uploads/20200110/1578639998633.jpg');
INSERT INTO `girlphotos` VALUES ('634', '99', '/public/uploads/20200110/1578640000634.jpg');
INSERT INTO `girlphotos` VALUES ('635', '99', '/public/uploads/20200110/1578640003635.jpg');
INSERT INTO `girlphotos` VALUES ('636', '99', '/public/uploads/20200110/1578640005636.jpg');
INSERT INTO `girlphotos` VALUES ('637', '99', '/public/uploads/20200110/1578640077637.jpg');
INSERT INTO `girlphotos` VALUES ('638', '99', '/public/uploads/20200110/1578640080638.jpg');
INSERT INTO `girlphotos` VALUES ('639', '100', '/public/uploads/20200110/1578640082639.jpg');
INSERT INTO `girlphotos` VALUES ('640', '100', '/public/uploads/20200110/1578640083640.jpg');
INSERT INTO `girlphotos` VALUES ('641', '100', '/public/uploads/20200110/1578640085641.jpg');
INSERT INTO `girlphotos` VALUES ('642', '100', '/public/uploads/20200110/1578640086642.jpg');
INSERT INTO `girlphotos` VALUES ('643', '100', '/public/uploads/20200110/1578640088643.jpg');
INSERT INTO `girlphotos` VALUES ('644', '100', '/public/uploads/20200110/1578640090644.jpg');
INSERT INTO `girlphotos` VALUES ('645', '100', '/public/uploads/20200110/1578640093645.jpg');
INSERT INTO `girlphotos` VALUES ('646', '100', '/public/uploads/20200110/1578640095646.jpg');
INSERT INTO `girlphotos` VALUES ('647', '101', '/public/uploads/20200110/1578640097647.jpg');
INSERT INTO `girlphotos` VALUES ('648', '101', '/public/uploads/20200110/1578640099648.jpg');
INSERT INTO `girlphotos` VALUES ('649', '101', '/public/uploads/20200110/1578640102649.jpg');
INSERT INTO `girlphotos` VALUES ('650', '101', '/public/uploads/20200110/1578640104650.jpg');
INSERT INTO `girlphotos` VALUES ('651', '101', '/public/uploads/20200110/1578640107651.jpg');
INSERT INTO `girlphotos` VALUES ('652', '101', '/public/uploads/20200110/1578640109652.jpg');
INSERT INTO `girlphotos` VALUES ('653', '101', '/public/uploads/20200110/1578640111653.jpg');
INSERT INTO `girlphotos` VALUES ('654', '101', '/public/uploads/20200110/1578640114654.jpg');
INSERT INTO `girlphotos` VALUES ('655', '102', '/public/uploads/20200110/1578640116655.jpg');
INSERT INTO `girlphotos` VALUES ('656', '102', '/public/uploads/20200110/1578640118656.jpg');
INSERT INTO `girlphotos` VALUES ('657', '102', '/public/uploads/20200110/1578640120657.jpg');
INSERT INTO `girlphotos` VALUES ('658', '102', '/public/uploads/20200110/1578640123658.jpg');
INSERT INTO `girlphotos` VALUES ('659', '102', '/public/uploads/20200110/1578640125659.jpg');
INSERT INTO `girlphotos` VALUES ('660', '102', '/public/uploads/20200110/1578640127660.jpg');
INSERT INTO `girlphotos` VALUES ('661', '103', '/public/uploads/20200110/1578640130661.jpg');
INSERT INTO `girlphotos` VALUES ('662', '103', '/public/uploads/20200110/1578640131662.jpg');
INSERT INTO `girlphotos` VALUES ('663', '103', '/public/uploads/20200110/1578640133663.jpg');
INSERT INTO `girlphotos` VALUES ('664', '103', '/public/uploads/20200110/1578640134664.jpg');
INSERT INTO `girlphotos` VALUES ('665', '103', '/public/uploads/20200110/1578640136665.jpg');
INSERT INTO `girlphotos` VALUES ('666', '103', '/public/uploads/20200110/1578640138666.jpg');
INSERT INTO `girlphotos` VALUES ('667', '103', '/public/uploads/20200110/1578640140667.jpg');
INSERT INTO `girlphotos` VALUES ('668', '103', '/public/uploads/20200110/1578640142668.jpg');
INSERT INTO `girlphotos` VALUES ('669', '104', '/public/uploads/20200110/1578640143669.jpg');
INSERT INTO `girlphotos` VALUES ('670', '104', '/public/uploads/20200110/1578640145670.jpg');
INSERT INTO `girlphotos` VALUES ('671', '104', '/public/uploads/20200110/1578640147671.jpg');
INSERT INTO `girlphotos` VALUES ('672', '104', '/public/uploads/20200110/1578640149672.jpg');
INSERT INTO `girlphotos` VALUES ('673', '104', '/public/uploads/20200110/1578640151673.jpg');
INSERT INTO `girlphotos` VALUES ('674', '104', '/public/uploads/20200110/1578640153674.jpg');
INSERT INTO `girlphotos` VALUES ('675', '104', '/public/uploads/20200110/1578640155675.jpg');
INSERT INTO `girlphotos` VALUES ('676', '104', '/public/uploads/20200110/1578640157676.jpg');
INSERT INTO `girlphotos` VALUES ('677', '105', '/public/uploads/20200110/1578640159677.jpg');
INSERT INTO `girlphotos` VALUES ('678', '105', '/public/uploads/20200110/1578640161678.jpg');
INSERT INTO `girlphotos` VALUES ('679', '105', '/public/uploads/20200110/1578640162679.jpg');
INSERT INTO `girlphotos` VALUES ('680', '105', '/public/uploads/20200110/1578640164680.jpg');
INSERT INTO `girlphotos` VALUES ('681', '105', '/public/uploads/20200110/1578640166681.jpg');
INSERT INTO `girlphotos` VALUES ('682', '105', '/public/uploads/20200110/1578640167682.jpg');
INSERT INTO `girlphotos` VALUES ('683', '106', '/public/uploads/20200110/1578640170683.jpg');
INSERT INTO `girlphotos` VALUES ('684', '106', '/public/uploads/20200110/1578640171684.jpg');
INSERT INTO `girlphotos` VALUES ('685', '106', '/public/uploads/20200110/1578640173685.jpg');
INSERT INTO `girlphotos` VALUES ('686', '106', '/public/uploads/20200110/1578640174686.jpg');
INSERT INTO `girlphotos` VALUES ('687', '107', '/public/uploads/20200110/1578640176687.jpg');
INSERT INTO `girlphotos` VALUES ('688', '107', '/public/uploads/20200110/1578640177688.jpg');
INSERT INTO `girlphotos` VALUES ('689', '107', '/public/uploads/20200110/1578640179689.jpg');
INSERT INTO `girlphotos` VALUES ('690', '107', '/public/uploads/20200110/1578640181690.jpg');
INSERT INTO `girlphotos` VALUES ('691', '107', '/public/uploads/20200110/1578640183691.jpg');
INSERT INTO `girlphotos` VALUES ('692', '107', '/public/uploads/20200110/1578640186692.jpg');
INSERT INTO `girlphotos` VALUES ('693', '107', '/public/uploads/20200110/1578640187693.jpg');
INSERT INTO `girlphotos` VALUES ('694', '108', '/public/uploads/20200110/1578640190694.jpg');
INSERT INTO `girlphotos` VALUES ('695', '108', '/public/uploads/20200110/1578640191695.jpg');
INSERT INTO `girlphotos` VALUES ('696', '108', '/public/uploads/20200110/1578640193696.jpg');
INSERT INTO `girlphotos` VALUES ('697', '108', '/public/uploads/20200110/1578640194697.jpg');
INSERT INTO `girlphotos` VALUES ('698', '108', '/public/uploads/20200110/1578640196698.jpg');
INSERT INTO `girlphotos` VALUES ('699', '109', '/public/uploads/20200110/1578640197699.jpg');
INSERT INTO `girlphotos` VALUES ('700', '109', '/public/uploads/20200110/1578640199700.jpg');
INSERT INTO `girlphotos` VALUES ('701', '109', '/public/uploads/20200110/1578640201701.jpg');
INSERT INTO `girlphotos` VALUES ('702', '109', '/public/uploads/20200110/1578640204702.jpg');
INSERT INTO `girlphotos` VALUES ('703', '109', '/public/uploads/20200110/1578640206703.jpg');
INSERT INTO `girlphotos` VALUES ('704', '110', '/public/uploads/20200110/1578640209704.jpg');
INSERT INTO `girlphotos` VALUES ('705', '110', '/public/uploads/20200110/1578640210705.jpg');
INSERT INTO `girlphotos` VALUES ('706', '110', '/public/uploads/20200110/1578640212706.jpg');
INSERT INTO `girlphotos` VALUES ('707', '110', '/public/uploads/20200110/1578640214707.jpg');
INSERT INTO `girlphotos` VALUES ('708', '110', '/public/uploads/20200110/1578640216708.jpg');
INSERT INTO `girlphotos` VALUES ('709', '110', '/public/uploads/20200110/1578640218709.jpg');
INSERT INTO `girlphotos` VALUES ('710', '111', '/public/uploads/20200110/1578640219710.jpg');
INSERT INTO `girlphotos` VALUES ('711', '111', '/public/uploads/20200110/1578640223711.jpg');
INSERT INTO `girlphotos` VALUES ('712', '111', '/public/uploads/20200110/1578640226712.jpg');
INSERT INTO `girlphotos` VALUES ('713', '111', '/public/uploads/20200110/1578640229713.jpg');
INSERT INTO `girlphotos` VALUES ('714', '111', '/public/uploads/20200110/1578640232714.jpg');
INSERT INTO `girlphotos` VALUES ('715', '111', '/public/uploads/20200110/1578640234715.jpg');
INSERT INTO `girlphotos` VALUES ('716', '111', '/public/uploads/20200110/1578640236716.jpg');
INSERT INTO `girlphotos` VALUES ('717', '111', '/public/uploads/20200110/1578640239717.jpg');
INSERT INTO `girlphotos` VALUES ('718', '112', '/public/uploads/20200110/1578640241718.jpg');
INSERT INTO `girlphotos` VALUES ('719', '112', '/public/uploads/20200110/1578640243719.jpg');
INSERT INTO `girlphotos` VALUES ('720', '112', '/public/uploads/20200110/1578640246720.jpg');
INSERT INTO `girlphotos` VALUES ('721', '112', '/public/uploads/20200110/1578640249721.jpg');
INSERT INTO `girlphotos` VALUES ('722', '112', '/public/uploads/20200110/1578640251722.jpg');
INSERT INTO `girlphotos` VALUES ('723', '113', '/public/uploads/20200110/1578640254723.jpg');
INSERT INTO `girlphotos` VALUES ('724', '113', '/public/uploads/20200110/1578640256724.jpg');
INSERT INTO `girlphotos` VALUES ('725', '113', '/public/uploads/20200110/1578640257725.jpg');
INSERT INTO `girlphotos` VALUES ('726', '113', '/public/uploads/20200110/1578640259726.jpg');
INSERT INTO `girlphotos` VALUES ('727', '113', '/public/uploads/20200110/1578640260727.jpg');
INSERT INTO `girlphotos` VALUES ('728', '113', '/public/uploads/20200110/1578640262728.jpg');
INSERT INTO `girlphotos` VALUES ('729', '113', '/public/uploads/20200110/1578640263729.jpg');
INSERT INTO `girlphotos` VALUES ('730', '114', '/public/uploads/20200110/1578640265730.jpg');
INSERT INTO `girlphotos` VALUES ('731', '114', '/public/uploads/20200110/1578640266731.jpg');
INSERT INTO `girlphotos` VALUES ('732', '114', '/public/uploads/20200110/1578640268732.jpg');
INSERT INTO `girlphotos` VALUES ('733', '114', '/public/uploads/20200110/1578640269733.jpg');
INSERT INTO `girlphotos` VALUES ('734', '114', '/public/uploads/20200110/1578640272734.jpg');
INSERT INTO `girlphotos` VALUES ('735', '114', '/public/uploads/20200110/1578640274735.jpg');
INSERT INTO `girlphotos` VALUES ('736', '114', '/public/uploads/20200110/1578640275736.jpg');
INSERT INTO `girlphotos` VALUES ('737', '115', '/public/uploads/20200110/1578640277737.jpg');
INSERT INTO `girlphotos` VALUES ('738', '115', '/public/uploads/20200110/1578640278738.jpg');
INSERT INTO `girlphotos` VALUES ('739', '115', '/public/uploads/20200110/1578640281739.jpg');
INSERT INTO `girlphotos` VALUES ('740', '115', '/public/uploads/20200110/1578640282740.jpg');
INSERT INTO `girlphotos` VALUES ('741', '115', '/public/uploads/20200110/1578640284741.jpg');
INSERT INTO `girlphotos` VALUES ('742', '115', '/public/uploads/20200110/1578640286742.jpg');
INSERT INTO `girlphotos` VALUES ('743', '116', '/public/uploads/20200110/1578640287743.jpg');
INSERT INTO `girlphotos` VALUES ('744', '116', '/public/uploads/20200110/1578640289744.jpg');
INSERT INTO `girlphotos` VALUES ('745', '116', '/public/uploads/20200110/1578640290745.jpg');
INSERT INTO `girlphotos` VALUES ('746', '116', '/public/uploads/20200110/1578640293746.jpg');
INSERT INTO `girlphotos` VALUES ('747', '116', '/public/uploads/20200110/1578640294747.jpg');
INSERT INTO `girlphotos` VALUES ('748', '116', '/public/uploads/20200110/1578640296748.jpg');
INSERT INTO `girlphotos` VALUES ('749', '116', '/public/uploads/20200110/1578640299749.jpg');
INSERT INTO `girlphotos` VALUES ('750', '117', '/public/uploads/20200110/1578640301750.jpg');
INSERT INTO `girlphotos` VALUES ('751', '117', '/public/uploads/20200110/1578640303751.jpg');
INSERT INTO `girlphotos` VALUES ('752', '117', '/public/uploads/20200110/1578640304752.jpg');
INSERT INTO `girlphotos` VALUES ('753', '117', '/public/uploads/20200110/1578640306753.jpg');
INSERT INTO `girlphotos` VALUES ('754', '117', '/public/uploads/20200110/1578640307754.jpg');
INSERT INTO `girlphotos` VALUES ('755', '117', '/public/uploads/20200110/1578640309755.jpg');
INSERT INTO `girlphotos` VALUES ('756', '118', '/public/uploads/20200110/1578640310756.jpg');
INSERT INTO `girlphotos` VALUES ('757', '118', '/public/uploads/20200110/1578640313757.jpg');
INSERT INTO `girlphotos` VALUES ('758', '118', '/public/uploads/20200110/1578640315758.jpg');
INSERT INTO `girlphotos` VALUES ('759', '118', '/public/uploads/20200110/1578640318759.jpg');
INSERT INTO `girlphotos` VALUES ('760', '118', '/public/uploads/20200110/1578640320760.jpg');
INSERT INTO `girlphotos` VALUES ('761', '118', '/public/uploads/20200110/1578640323761.jpg');
INSERT INTO `girlphotos` VALUES ('762', '118', '/public/uploads/20200110/1578640325762.jpg');
INSERT INTO `girlphotos` VALUES ('763', '119', '/public/uploads/20200110/1578640328763.jpg');
INSERT INTO `girlphotos` VALUES ('764', '119', '/public/uploads/20200110/1578640330764.jpg');
INSERT INTO `girlphotos` VALUES ('765', '119', '/public/uploads/20200110/1578640332765.jpg');
INSERT INTO `girlphotos` VALUES ('766', '119', '/public/uploads/20200110/1578640335766.jpg');
INSERT INTO `girlphotos` VALUES ('767', '119', '/public/uploads/20200110/1578640337767.jpg');
INSERT INTO `girlphotos` VALUES ('768', '119', '/public/uploads/20200110/1578640339768.jpg');
INSERT INTO `girlphotos` VALUES ('769', '119', '/public/uploads/20200110/1578640342769.jpg');
INSERT INTO `girlphotos` VALUES ('770', '120', '/public/uploads/20200110/1578640344770.jpg');
INSERT INTO `girlphotos` VALUES ('771', '120', '/public/uploads/20200110/1578640346771.jpg');
INSERT INTO `girlphotos` VALUES ('772', '120', '/public/uploads/20200110/1578640347772.jpg');
INSERT INTO `girlphotos` VALUES ('773', '120', '/public/uploads/20200110/1578640350773.jpg');
INSERT INTO `girlphotos` VALUES ('774', '120', '/public/uploads/20200110/1578640351774.jpg');
INSERT INTO `girlphotos` VALUES ('775', '121', '/public/uploads/20200110/1578640353775.jpg');
INSERT INTO `girlphotos` VALUES ('776', '121', '/public/uploads/20200110/1578640354776.jpg');
INSERT INTO `girlphotos` VALUES ('777', '121', '/public/uploads/20200110/1578640356777.jpg');
INSERT INTO `girlphotos` VALUES ('778', '121', '/public/uploads/20200110/1578640357778.jpg');
INSERT INTO `girlphotos` VALUES ('779', '122', '/public/uploads/20200110/1578640359779.jpg');
INSERT INTO `girlphotos` VALUES ('780', '122', '/public/uploads/20200110/1578640361780.jpg');
INSERT INTO `girlphotos` VALUES ('781', '122', '/public/uploads/20200110/1578640364781.jpg');
INSERT INTO `girlphotos` VALUES ('782', '122', '/public/uploads/20200110/1578640366782.jpg');
INSERT INTO `girlphotos` VALUES ('783', '122', '/public/uploads/20200110/1578640369783.jpg');
INSERT INTO `girlphotos` VALUES ('784', '122', '/public/uploads/20200110/1578640371784.jpg');
INSERT INTO `girlphotos` VALUES ('785', '123', '/public/uploads/20200110/1578640374785.jpg');
INSERT INTO `girlphotos` VALUES ('786', '123', '/public/uploads/20200110/1578640375786.jpg');
INSERT INTO `girlphotos` VALUES ('787', '123', '/public/uploads/20200110/1578640377787.jpg');
INSERT INTO `girlphotos` VALUES ('788', '123', '/public/uploads/20200110/1578640378788.jpg');
INSERT INTO `girlphotos` VALUES ('789', '123', '/public/uploads/20200110/1578640381789.jpg');
INSERT INTO `girlphotos` VALUES ('790', '123', '/public/uploads/20200110/1578640383790.jpg');
INSERT INTO `girlphotos` VALUES ('791', '123', '/public/uploads/20200110/1578640386791.jpg');
INSERT INTO `girlphotos` VALUES ('792', '124', '/public/uploads/20200110/1578640387792.jpg');
INSERT INTO `girlphotos` VALUES ('793', '124', '/public/uploads/20200110/1578640389793.jpg');
INSERT INTO `girlphotos` VALUES ('794', '124', '/public/uploads/20200110/1578640390794.jpg');
INSERT INTO `girlphotos` VALUES ('795', '124', '/public/uploads/20200110/1578640392795.jpg');
INSERT INTO `girlphotos` VALUES ('796', '124', '/public/uploads/20200110/1578640393796.jpg');
INSERT INTO `girlphotos` VALUES ('797', '124', '/public/uploads/20200110/1578640395797.jpg');
INSERT INTO `girlphotos` VALUES ('798', '124', '/public/uploads/20200110/1578640396798.jpg');
INSERT INTO `girlphotos` VALUES ('799', '125', '/public/uploads/20200110/1578640398799.jpg');
INSERT INTO `girlphotos` VALUES ('800', '125', '/public/uploads/20200110/1578640399800.jpg');
INSERT INTO `girlphotos` VALUES ('801', '125', '/public/uploads/20200110/1578640401801.jpg');
INSERT INTO `girlphotos` VALUES ('802', '125', '/public/uploads/20200110/1578640402802.jpg');
INSERT INTO `girlphotos` VALUES ('803', '125', '/public/uploads/20200110/1578640404803.jpg');
INSERT INTO `girlphotos` VALUES ('804', '125', '/public/uploads/20200110/1578640405804.jpg');
INSERT INTO `girlphotos` VALUES ('805', '126', '/public/uploads/20200110/1578640408805.jpg');
INSERT INTO `girlphotos` VALUES ('806', '126', '/public/uploads/20200110/1578640409806.jpg');
INSERT INTO `girlphotos` VALUES ('807', '126', '/public/uploads/20200110/1578640411807.jpg');
INSERT INTO `girlphotos` VALUES ('808', '126', '/public/uploads/20200110/1578640412808.jpg');
INSERT INTO `girlphotos` VALUES ('809', '126', '/public/uploads/20200110/1578640414809.jpg');
INSERT INTO `girlphotos` VALUES ('810', '126', '/public/uploads/20200110/1578640415810.jpg');
INSERT INTO `girlphotos` VALUES ('811', '127', '/public/uploads/20200110/1578640417811.jpg');
INSERT INTO `girlphotos` VALUES ('812', '127', '/public/uploads/20200110/1578640418812.jpg');
INSERT INTO `girlphotos` VALUES ('813', '127', '/public/uploads/20200110/1578640421813.jpg');
INSERT INTO `girlphotos` VALUES ('814', '127', '/public/uploads/20200110/1578640422814.jpg');
INSERT INTO `girlphotos` VALUES ('815', '127', '/public/uploads/20200110/1578640425815.jpg');
INSERT INTO `girlphotos` VALUES ('816', '127', '/public/uploads/20200110/1578640426816.jpg');
INSERT INTO `girlphotos` VALUES ('817', '127', '/public/uploads/20200110/1578640428817.jpg');
INSERT INTO `girlphotos` VALUES ('818', '127', '/public/uploads/20200110/1578640429818.jpg');
INSERT INTO `girlphotos` VALUES ('819', '128', '/public/uploads/20200110/1578640431819.jpg');
INSERT INTO `girlphotos` VALUES ('820', '128', '/public/uploads/20200110/1578640432820.jpg');
INSERT INTO `girlphotos` VALUES ('821', '128', '/public/uploads/20200110/1578640434821.jpg');
INSERT INTO `girlphotos` VALUES ('822', '128', '/public/uploads/20200110/1578640436822.jpg');
INSERT INTO `girlphotos` VALUES ('823', '128', '/public/uploads/20200110/1578640438823.jpg');
INSERT INTO `girlphotos` VALUES ('824', '128', '/public/uploads/20200110/1578640439824.jpg');
INSERT INTO `girlphotos` VALUES ('825', '129', '/public/uploads/20200110/1578640441825.jpg');
INSERT INTO `girlphotos` VALUES ('826', '129', '/public/uploads/20200110/1578640443826.jpg');
INSERT INTO `girlphotos` VALUES ('827', '129', '/public/uploads/20200110/1578640444827.jpg');
INSERT INTO `girlphotos` VALUES ('828', '129', '/public/uploads/20200110/1578640447828.jpg');
INSERT INTO `girlphotos` VALUES ('829', '129', '/public/uploads/20200110/1578640449829.jpg');
INSERT INTO `girlphotos` VALUES ('830', '130', '/public/uploads/20200110/1578640452830.jpg');
INSERT INTO `girlphotos` VALUES ('831', '130', '/public/uploads/20200110/1578640453831.jpg');
INSERT INTO `girlphotos` VALUES ('832', '130', '/public/uploads/20200110/1578640454832.jpg');
INSERT INTO `girlphotos` VALUES ('833', '130', '/public/uploads/20200110/1578640456833.jpg');
INSERT INTO `girlphotos` VALUES ('834', '130', '/public/uploads/20200110/1578640457834.jpg');
INSERT INTO `girlphotos` VALUES ('835', '130', '/public/uploads/20200110/1578640459835.jpg');
INSERT INTO `girlphotos` VALUES ('836', '131', '/public/uploads/20200110/1578640460836.jpg');
INSERT INTO `girlphotos` VALUES ('837', '131', '/public/uploads/20200110/1578640463837.jpg');
INSERT INTO `girlphotos` VALUES ('838', '131', '/public/uploads/20200110/1578640464838.jpg');
INSERT INTO `girlphotos` VALUES ('839', '131', '/public/uploads/20200110/1578640466839.jpg');
INSERT INTO `girlphotos` VALUES ('840', '131', '/public/uploads/20200110/1578640520840.jpg');
INSERT INTO `girlphotos` VALUES ('841', '131', '/public/uploads/20200110/1578640522841.jpg');
INSERT INTO `girlphotos` VALUES ('842', '131', '/public/uploads/20200110/1578640523842.jpg');
INSERT INTO `girlphotos` VALUES ('843', '131', '/public/uploads/20200110/1578640526843.jpg');
INSERT INTO `girlphotos` VALUES ('844', '132', '/public/uploads/20200110/1578640528844.jpg');
INSERT INTO `girlphotos` VALUES ('845', '132', '/public/uploads/20200110/1578640529845.jpg');
INSERT INTO `girlphotos` VALUES ('846', '132', '/public/uploads/20200110/1578640532846.jpg');
INSERT INTO `girlphotos` VALUES ('847', '132', '/public/uploads/20200110/1578640534847.jpg');
INSERT INTO `girlphotos` VALUES ('848', '132', '/public/uploads/20200110/1578640536848.jpg');
INSERT INTO `girlphotos` VALUES ('849', '132', '/public/uploads/20200110/1578640537849.jpg');
INSERT INTO `girlphotos` VALUES ('850', '132', '/public/uploads/20200110/1578640539850.jpg');
INSERT INTO `girlphotos` VALUES ('851', '133', '/public/uploads/20200110/1578640540851.jpg');
INSERT INTO `girlphotos` VALUES ('852', '133', '/public/uploads/20200110/1578640542852.jpg');
INSERT INTO `girlphotos` VALUES ('853', '133', '/public/uploads/20200110/1578640543853.jpg');
INSERT INTO `girlphotos` VALUES ('854', '133', '/public/uploads/20200110/1578640545854.jpg');
INSERT INTO `girlphotos` VALUES ('855', '133', '/public/uploads/20200110/1578640546855.jpg');
INSERT INTO `girlphotos` VALUES ('856', '133', '/public/uploads/20200110/1578640548856.jpg');
INSERT INTO `girlphotos` VALUES ('857', '134', '/public/uploads/20200110/1578640549857.jpg');
INSERT INTO `girlphotos` VALUES ('858', '134', '/public/uploads/20200110/1578640551858.jpg');
INSERT INTO `girlphotos` VALUES ('859', '134', '/public/uploads/20200110/1578640553859.jpg');
INSERT INTO `girlphotos` VALUES ('860', '134', '/public/uploads/20200110/1578640556860.jpg');
INSERT INTO `girlphotos` VALUES ('861', '134', '/public/uploads/20200110/1578640558861.jpg');
INSERT INTO `girlphotos` VALUES ('862', '134', '/public/uploads/20200110/1578640560862.jpg');
INSERT INTO `girlphotos` VALUES ('863', '135', '/public/uploads/20200110/1578640562863.jpg');
INSERT INTO `girlphotos` VALUES ('864', '135', '/public/uploads/20200110/1578640564864.jpg');
INSERT INTO `girlphotos` VALUES ('865', '135', '/public/uploads/20200110/1578640567865.jpg');
INSERT INTO `girlphotos` VALUES ('866', '135', '/public/uploads/20200110/1578640569866.jpg');
INSERT INTO `girlphotos` VALUES ('867', '135', '/public/uploads/20200110/1578640571867.jpg');
INSERT INTO `girlphotos` VALUES ('868', '135', '/public/uploads/20200110/1578640574868.jpg');
INSERT INTO `girlphotos` VALUES ('869', '136', '/public/uploads/20200110/1578640576869.jpg');
INSERT INTO `girlphotos` VALUES ('870', '136', '/public/uploads/20200110/1578640577870.jpg');
INSERT INTO `girlphotos` VALUES ('871', '136', '/public/uploads/20200110/1578640579871.jpg');
INSERT INTO `girlphotos` VALUES ('872', '136', '/public/uploads/20200110/1578640580872.jpg');
INSERT INTO `girlphotos` VALUES ('873', '136', '/public/uploads/20200110/1578640582873.jpg');
INSERT INTO `girlphotos` VALUES ('874', '136', '/public/uploads/20200110/1578640583874.jpg');
INSERT INTO `girlphotos` VALUES ('875', '137', '/public/uploads/20200110/1578640585875.jpg');
INSERT INTO `girlphotos` VALUES ('876', '137', '/public/uploads/20200110/1578640586876.jpg');
INSERT INTO `girlphotos` VALUES ('877', '137', '/public/uploads/20200110/1578640588877.jpg');
INSERT INTO `girlphotos` VALUES ('878', '137', '/public/uploads/20200110/1578640590878.jpg');
INSERT INTO `girlphotos` VALUES ('879', '138', '/public/uploads/20200110/1578640592879.jpg');
INSERT INTO `girlphotos` VALUES ('880', '138', '/public/uploads/20200110/1578640593880.jpg');
INSERT INTO `girlphotos` VALUES ('881', '138', '/public/uploads/20200110/1578640596881.jpg');
INSERT INTO `girlphotos` VALUES ('882', '138', '/public/uploads/20200110/1578640597882.jpg');
INSERT INTO `girlphotos` VALUES ('883', '138', '/public/uploads/20200110/1578640599883.jpg');
INSERT INTO `girlphotos` VALUES ('884', '138', '/public/uploads/20200110/1578640601884.jpg');
INSERT INTO `girlphotos` VALUES ('885', '138', '/public/uploads/20200110/1578640602885.jpg');
INSERT INTO `girlphotos` VALUES ('886', '139', '/public/uploads/20200110/1578640604886.jpg');
INSERT INTO `girlphotos` VALUES ('887', '139', '/public/uploads/20200110/1578640605887.jpg');
INSERT INTO `girlphotos` VALUES ('888', '139', '/public/uploads/20200110/1578640608888.jpg');
INSERT INTO `girlphotos` VALUES ('889', '139', '/public/uploads/20200110/1578640610889.jpg');
INSERT INTO `girlphotos` VALUES ('890', '139', '/public/uploads/20200110/1578640612890.jpg');
INSERT INTO `girlphotos` VALUES ('891', '139', '/public/uploads/20200110/1578640614891.jpg');
INSERT INTO `girlphotos` VALUES ('892', '140', '/public/uploads/20200110/1578640616892.jpg');
INSERT INTO `girlphotos` VALUES ('893', '140', '/public/uploads/20200110/1578640618893.jpg');
INSERT INTO `girlphotos` VALUES ('894', '140', '/public/uploads/20200110/1578640620894.jpg');
INSERT INTO `girlphotos` VALUES ('895', '140', '/public/uploads/20200110/1578640622895.jpg');
INSERT INTO `girlphotos` VALUES ('896', '140', '/public/uploads/20200110/1578640625896.jpg');
INSERT INTO `girlphotos` VALUES ('897', '141', '/public/uploads/20200110/1578640627897.jpg');
INSERT INTO `girlphotos` VALUES ('898', '141', '/public/uploads/20200110/1578640629898.jpg');
INSERT INTO `girlphotos` VALUES ('899', '141', '/public/uploads/20200110/1578640631899.jpg');
INSERT INTO `girlphotos` VALUES ('900', '141', '/public/uploads/20200110/1578640634900.jpg');
INSERT INTO `girlphotos` VALUES ('901', '141', '/public/uploads/20200110/1578640636901.jpg');
INSERT INTO `girlphotos` VALUES ('902', '142', '/public/uploads/20200110/1578640638902.jpg');
INSERT INTO `girlphotos` VALUES ('903', '142', '/public/uploads/20200110/1578640639903.jpg');
INSERT INTO `girlphotos` VALUES ('904', '142', '/public/uploads/20200110/1578640641904.jpg');
INSERT INTO `girlphotos` VALUES ('905', '142', '/public/uploads/20200110/1578640642905.jpg');
INSERT INTO `girlphotos` VALUES ('906', '143', '/public/uploads/20200110/1578640644906.jpg');
INSERT INTO `girlphotos` VALUES ('907', '143', '/public/uploads/20200110/1578640645907.jpg');
INSERT INTO `girlphotos` VALUES ('908', '143', '/public/uploads/20200110/1578640648908.jpg');
INSERT INTO `girlphotos` VALUES ('909', '143', '/public/uploads/20200110/1578640650909.jpg');
INSERT INTO `girlphotos` VALUES ('910', '143', '/public/uploads/20200110/1578640652910.jpg');
INSERT INTO `girlphotos` VALUES ('911', '143', '/public/uploads/20200110/1578640655911.jpg');
INSERT INTO `girlphotos` VALUES ('912', '144', '/public/uploads/20200110/1578640657912.jpg');
INSERT INTO `girlphotos` VALUES ('913', '144', '/public/uploads/20200110/1578640659913.jpg');
INSERT INTO `girlphotos` VALUES ('914', '144', '/public/uploads/20200110/1578640660914.jpg');
INSERT INTO `girlphotos` VALUES ('915', '144', '/public/uploads/20200110/1578640663915.jpg');
INSERT INTO `girlphotos` VALUES ('916', '144', '/public/uploads/20200110/1578640665916.jpg');
INSERT INTO `girlphotos` VALUES ('917', '144', '/public/uploads/20200110/1578640668917.jpg');
INSERT INTO `girlphotos` VALUES ('918', '144', '/public/uploads/20200110/1578640669918.jpg');
INSERT INTO `girlphotos` VALUES ('919', '145', '/public/uploads/20200110/1578640671919.jpg');
INSERT INTO `girlphotos` VALUES ('920', '145', '/public/uploads/20200110/1578640672920.jpg');
INSERT INTO `girlphotos` VALUES ('921', '145', '/public/uploads/20200110/1578640674921.jpg');
INSERT INTO `girlphotos` VALUES ('922', '145', '/public/uploads/20200110/1578640675922.jpg');
INSERT INTO `girlphotos` VALUES ('923', '145', '/public/uploads/20200110/1578640677923.jpg');
INSERT INTO `girlphotos` VALUES ('924', '145', '/public/uploads/20200110/1578640678924.jpg');
INSERT INTO `girlphotos` VALUES ('925', '145', '/public/uploads/20200110/1578640680925.jpg');
INSERT INTO `girlphotos` VALUES ('926', '145', '/public/uploads/20200110/1578640681926.jpg');
INSERT INTO `girlphotos` VALUES ('927', '146', '/public/uploads/20200110/1578640683927.jpg');
INSERT INTO `girlphotos` VALUES ('928', '146', '/public/uploads/20200110/1578640684928.jpg');
INSERT INTO `girlphotos` VALUES ('929', '146', '/public/uploads/20200110/1578640686929.jpg');
INSERT INTO `girlphotos` VALUES ('930', '146', '/public/uploads/20200110/1578640688930.jpg');
INSERT INTO `girlphotos` VALUES ('931', '146', '/public/uploads/20200110/1578640691931.jpg');
INSERT INTO `girlphotos` VALUES ('932', '147', '/public/uploads/20200110/1578640693932.jpg');
INSERT INTO `girlphotos` VALUES ('933', '147', '/public/uploads/20200110/1578640695933.jpg');
INSERT INTO `girlphotos` VALUES ('934', '147', '/public/uploads/20200110/1578640696934.jpg');
INSERT INTO `girlphotos` VALUES ('935', '147', '/public/uploads/20200110/1578640698935.jpg');
INSERT INTO `girlphotos` VALUES ('936', '147', '/public/uploads/20200110/1578640699936.jpg');
INSERT INTO `girlphotos` VALUES ('937', '147', '/public/uploads/20200110/1578640701937.jpg');
INSERT INTO `girlphotos` VALUES ('938', '148', '/public/uploads/20200110/1578640702938.jpg');
INSERT INTO `girlphotos` VALUES ('939', '148', '/public/uploads/20200110/1578640704939.jpg');
INSERT INTO `girlphotos` VALUES ('940', '148', '/public/uploads/20200110/1578640706940.jpg');
INSERT INTO `girlphotos` VALUES ('941', '148', '/public/uploads/20200110/1578640708941.jpg');
INSERT INTO `girlphotos` VALUES ('942', '148', '/public/uploads/20200110/1578640709942.jpg');
INSERT INTO `girlphotos` VALUES ('943', '148', '/public/uploads/20200110/1578640711943.jpg');
INSERT INTO `girlphotos` VALUES ('944', '149', '/public/uploads/20200110/1578640714944.jpg');
INSERT INTO `girlphotos` VALUES ('945', '149', '/public/uploads/20200110/1578640715945.jpg');
INSERT INTO `girlphotos` VALUES ('946', '149', '/public/uploads/20200110/1578640717946.jpg');
INSERT INTO `girlphotos` VALUES ('947', '149', '/public/uploads/20200110/1578640719947.jpg');
INSERT INTO `girlphotos` VALUES ('948', '149', '/public/uploads/20200110/1578640721948.jpg');
INSERT INTO `girlphotos` VALUES ('949', '149', '/public/uploads/20200110/1578640723949.jpg');
INSERT INTO `girlphotos` VALUES ('950', '149', '/public/uploads/20200110/1578640725950.jpg');
INSERT INTO `girlphotos` VALUES ('951', '149', '/public/uploads/20200110/1578640727951.jpg');
INSERT INTO `girlphotos` VALUES ('952', '150', '/public/uploads/20200110/1578640728952.jpg');
INSERT INTO `girlphotos` VALUES ('953', '150', '/public/uploads/20200110/1578640730953.jpg');
INSERT INTO `girlphotos` VALUES ('954', '150', '/public/uploads/20200110/1578640732954.jpg');
INSERT INTO `girlphotos` VALUES ('955', '150', '/public/uploads/20200110/1578640734955.jpg');
INSERT INTO `girlphotos` VALUES ('956', '151', '/public/uploads/20200110/1578640736956.jpg');
INSERT INTO `girlphotos` VALUES ('957', '151', '/public/uploads/20200110/1578640737957.jpg');
INSERT INTO `girlphotos` VALUES ('958', '151', '/public/uploads/20200110/1578640740958.jpg');
INSERT INTO `girlphotos` VALUES ('959', '151', '/public/uploads/20200110/1578640742959.jpg');
INSERT INTO `girlphotos` VALUES ('960', '151', '/public/uploads/20200110/1578640745960.jpg');
INSERT INTO `girlphotos` VALUES ('961', '151', '/public/uploads/20200110/1578640747961.jpg');
INSERT INTO `girlphotos` VALUES ('962', '151', '/public/uploads/20200110/1578640749962.jpg');
INSERT INTO `girlphotos` VALUES ('963', '152', '/public/uploads/20200110/1578640752963.jpg');
INSERT INTO `girlphotos` VALUES ('964', '152', '/public/uploads/20200110/1578640753964.jpg');
INSERT INTO `girlphotos` VALUES ('965', '152', '/public/uploads/20200110/1578640755965.jpg');
INSERT INTO `girlphotos` VALUES ('966', '152', '/public/uploads/20200110/1578640756966.jpg');
INSERT INTO `girlphotos` VALUES ('967', '152', '/public/uploads/20200110/1578640758967.jpg');
INSERT INTO `girlphotos` VALUES ('968', '152', '/public/uploads/20200110/1578640759968.jpg');
INSERT INTO `girlphotos` VALUES ('969', '153', '/public/uploads/20200110/1578640761969.jpg');
INSERT INTO `girlphotos` VALUES ('970', '153', '/public/uploads/20200110/1578640762970.jpg');
INSERT INTO `girlphotos` VALUES ('971', '153', '/public/uploads/20200110/1578640764971.jpg');
INSERT INTO `girlphotos` VALUES ('972', '153', '/public/uploads/20200110/1578640765972.jpg');
INSERT INTO `girlphotos` VALUES ('973', '154', '/public/uploads/20200110/1578640767973.jpg');
INSERT INTO `girlphotos` VALUES ('974', '154', '/public/uploads/20200110/1578640768974.jpg');
INSERT INTO `girlphotos` VALUES ('975', '154', '/public/uploads/20200110/1578640770975.jpg');
INSERT INTO `girlphotos` VALUES ('976', '154', '/public/uploads/20200110/1578640771976.jpg');
INSERT INTO `girlphotos` VALUES ('977', '154', '/public/uploads/20200110/1578640774977.jpg');
INSERT INTO `girlphotos` VALUES ('978', '155', '/public/uploads/20200110/1578640776978.jpg');
INSERT INTO `girlphotos` VALUES ('979', '155', '/public/uploads/20200110/1578640778979.jpg');
INSERT INTO `girlphotos` VALUES ('980', '155', '/public/uploads/20200110/1578640779980.jpg');
INSERT INTO `girlphotos` VALUES ('981', '155', '/public/uploads/20200110/1578640780981.jpg');
INSERT INTO `girlphotos` VALUES ('982', '155', '/public/uploads/20200110/1578640782982.jpg');
INSERT INTO `girlphotos` VALUES ('983', '155', '/public/uploads/20200110/1578640783983.jpg');
INSERT INTO `girlphotos` VALUES ('984', '155', '/public/uploads/20200110/1578640785984.jpg');
INSERT INTO `girlphotos` VALUES ('985', '155', '/public/uploads/20200110/1578640786985.jpg');
INSERT INTO `girlphotos` VALUES ('986', '156', '/public/uploads/20200110/1578640788986.jpg');
INSERT INTO `girlphotos` VALUES ('987', '156', '/public/uploads/20200110/1578640789987.jpg');
INSERT INTO `girlphotos` VALUES ('988', '156', '/public/uploads/20200110/1578640791988.jpg');
INSERT INTO `girlphotos` VALUES ('989', '156', '/public/uploads/20200110/1578640792989.jpg');
INSERT INTO `girlphotos` VALUES ('990', '156', '/public/uploads/20200110/1578640794990.jpg');
INSERT INTO `girlphotos` VALUES ('991', '156', '/public/uploads/20200110/1578640795991.jpg');
INSERT INTO `girlphotos` VALUES ('992', '157', '/public/uploads/20200110/1578640796992.jpg');
INSERT INTO `girlphotos` VALUES ('993', '157', '/public/uploads/20200110/1578640798993.jpg');
INSERT INTO `girlphotos` VALUES ('994', '157', '/public/uploads/20200110/1578640799994.jpg');
INSERT INTO `girlphotos` VALUES ('995', '157', '/public/uploads/20200110/1578640801995.jpg');
INSERT INTO `girlphotos` VALUES ('996', '158', '/public/uploads/20200110/1578640802996.jpg');
INSERT INTO `girlphotos` VALUES ('997', '158', '/public/uploads/20200110/1578640804997.jpg');
INSERT INTO `girlphotos` VALUES ('998', '158', '/public/uploads/20200110/1578640805998.jpg');
INSERT INTO `girlphotos` VALUES ('999', '158', '/public/uploads/20200110/1578640807999.jpg');
INSERT INTO `girlphotos` VALUES ('1000', '158', '/public/uploads/20200110/15786408091000.jpg');
INSERT INTO `girlphotos` VALUES ('1001', '158', '/public/uploads/20200110/15786408121001.jpg');
INSERT INTO `girlphotos` VALUES ('1002', '159', '/public/uploads/20200110/15786408141002.jpg');
INSERT INTO `girlphotos` VALUES ('1003', '159', '/public/uploads/20200110/15786408161003.jpg');
INSERT INTO `girlphotos` VALUES ('1004', '159', '/public/uploads/20200110/15786408171004.jpg');
INSERT INTO `girlphotos` VALUES ('1005', '159', '/public/uploads/20200110/15786408191005.jpg');
INSERT INTO `girlphotos` VALUES ('1006', '159', '/public/uploads/20200110/15786408211006.jpg');
INSERT INTO `girlphotos` VALUES ('1007', '159', '/public/uploads/20200110/15786408221007.jpg');
INSERT INTO `girlphotos` VALUES ('1008', '159', '/public/uploads/20200110/15786408241008.jpg');
INSERT INTO `girlphotos` VALUES ('1009', '159', '/public/uploads/20200110/15786408251009.jpg');
INSERT INTO `girlphotos` VALUES ('1010', '160', '/public/uploads/20200110/15786408271010.jpg');
INSERT INTO `girlphotos` VALUES ('1011', '160', '/public/uploads/20200110/15786408291011.jpg');
INSERT INTO `girlphotos` VALUES ('1012', '160', '/public/uploads/20200110/15786408321012.jpg');
INSERT INTO `girlphotos` VALUES ('1013', '160', '/public/uploads/20200110/15786408341013.jpg');
INSERT INTO `girlphotos` VALUES ('1014', '160', '/public/uploads/20200110/15786408361014.jpg');
INSERT INTO `girlphotos` VALUES ('1015', '160', '/public/uploads/20200110/15786408391015.jpg');
INSERT INTO `girlphotos` VALUES ('1016', '160', '/public/uploads/20200110/15786408421016.jpg');
INSERT INTO `girlphotos` VALUES ('1017', '160', '/public/uploads/20200110/15786408441017.jpg');
INSERT INTO `girlphotos` VALUES ('1018', '161', '/public/uploads/20200110/15786408461018.jpg');
INSERT INTO `girlphotos` VALUES ('1019', '161', '/public/uploads/20200110/15786408481019.jpg');
INSERT INTO `girlphotos` VALUES ('1020', '161', '/public/uploads/20200110/15786408501020.jpg');
INSERT INTO `girlphotos` VALUES ('1021', '161', '/public/uploads/20200110/15786408531021.jpg');
INSERT INTO `girlphotos` VALUES ('1022', '161', '/public/uploads/20200110/15786408561022.jpg');
INSERT INTO `girlphotos` VALUES ('1023', '161', '/public/uploads/20200110/15786408581023.jpg');
INSERT INTO `girlphotos` VALUES ('1024', '162', '/public/uploads/20200110/15786408611024.jpg');
INSERT INTO `girlphotos` VALUES ('1025', '162', '/public/uploads/20200110/15786408621025.jpg');
INSERT INTO `girlphotos` VALUES ('1026', '162', '/public/uploads/20200110/15786408651026.jpg');
INSERT INTO `girlphotos` VALUES ('1027', '162', '/public/uploads/20200110/15786408671027.jpg');
INSERT INTO `girlphotos` VALUES ('1028', '163', '/public/uploads/20200110/15786408701028.jpg');
INSERT INTO `girlphotos` VALUES ('1029', '163', '/public/uploads/20200110/15786408711029.jpg');
INSERT INTO `girlphotos` VALUES ('1030', '163', '/public/uploads/20200110/15786408731030.jpg');
INSERT INTO `girlphotos` VALUES ('1031', '163', '/public/uploads/20200110/15786408741031.jpg');
INSERT INTO `girlphotos` VALUES ('1032', '163', '/public/uploads/20200110/15786408761032.jpg');
INSERT INTO `girlphotos` VALUES ('1033', '163', '/public/uploads/20200110/15786408771033.jpg');
INSERT INTO `girlphotos` VALUES ('1034', '163', '/public/uploads/20200110/15786408791034.jpg');
INSERT INTO `girlphotos` VALUES ('1035', '163', '/public/uploads/20200110/15786408801035.jpg');
INSERT INTO `girlphotos` VALUES ('1036', '164', '/public/uploads/20200110/15786408821036.jpg');
INSERT INTO `girlphotos` VALUES ('1037', '164', '/public/uploads/20200110/15786408831037.jpg');
INSERT INTO `girlphotos` VALUES ('1038', '164', '/public/uploads/20200110/15786408851038.jpg');
INSERT INTO `girlphotos` VALUES ('1039', '164', '/public/uploads/20200110/15786408861039.jpg');
INSERT INTO `girlphotos` VALUES ('1040', '164', '/public/uploads/20200110/15786408881040.jpg');
INSERT INTO `girlphotos` VALUES ('1041', '164', '/public/uploads/20200110/15786408891041.jpg');
INSERT INTO `girlphotos` VALUES ('1042', '164', '/public/uploads/20200110/15786408911042.jpg');

-- ----------------------------
-- Table structure for `girls`
-- ----------------------------
DROP TABLE IF EXISTS `girls`;
CREATE TABLE `girls` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cover` varchar(150) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `height` varchar(30) NOT NULL,
  `boobs` varchar(30) NOT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `room` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `area_id` tinyint(2) NOT NULL,
  `price` varchar(30) DEFAULT NULL,
  `overnight` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `wechat` varchar(30) DEFAULT NULL,
  `service` text COMMENT '服务内容',
  `videolist` text,
  `note` varchar(30) DEFAULT NULL COMMENT 'Menses / 例假',
  `views` int(8) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `massage` tinyint(1) DEFAULT '1' COMMENT '1没有按摩 2有按摩',
  `threesome` tinyint(1) DEFAULT '1' COMMENT '1不支持双飞 2:支持双飞',
  `show` tinyint(1) DEFAULT '1' COMMENT '1:显示 2:隐藏',
  `expire_date` date NOT NULL DEFAULT '0000-00-00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girls
-- ----------------------------
INSERT INTO `girls` VALUES ('1', 'QiQ-七七 (3039)', '/public/uploads/20200110/15786384951.jpg', 'QiQ-七七 (3039)', '24 Years Old', '164cm', '34C', null, 'Include Room 包房', 'Toa Payoh大巴窑', '1', '$110/60mins/Massage/2 HJ', null, '82830106', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/34442.mp4', null, '3', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:33', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('2', 'Qian Qian-芊芊 (2082)', '/public/uploads/20200110/157863851212.jpg', 'Qian Qian-芊芊 (2082)', '22 Years Old', '170cm', '34B', null, 'Include Room & Condom 包房包套', 'Lavender 劳明达', '1', '$150/60mins/1 FJ', null, '83989954', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples Sucking/舔乳头\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/85305.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:34', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('3', 'Alice (2066)', '/public/uploads/20200110/157863852116.jpg', 'Alice (2066)', '25 Years Old', '162cm', '34D', null, 'Include Room & Condom 包房包套', 'Lavender 劳明达', '1', '$150/60mins/1 FJ', null, '85526758', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/13537.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:35', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('4', 'Yi Nuo-依诺 (2064)', '/public/uploads/20200110/157863852820.jpg', 'Yi Nuo-依诺 (2064)', '23 Years Old', '172cm', '36C', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$220/60mins/1FJ', null, '97798340', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHJ/打飞机\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/52145.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/52438.mp4', null, '1', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:36', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('5', 'Jia Jia-佳佳 (3035)', '/public/uploads/20200110/157863854428.jpg', 'Jia Jia-佳佳 (3035)', '25 Years Old', '160cm', '36D', null, 'Include Room & Condom 包房包套', 'Orchard 乌节路', '1', '$100/60mins/Massage', null, '90501778', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸全身\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure\r\nMassage/指压按摩\r\nGuasha /刮痧\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nBody Oil Massage/油推\r\nLymphatic Detoxification/淋巴排毒\r\nBreast Fuck/乳交\r\nBJ With Cap/带套口交\r\nCIM With Cap/带套口爆', 'https://4ni52.com/wp-content/uploads/2019/12/佳佳.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:37', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('6', 'XinEr-馨儿 (3013)', '/public/uploads/20200110/157863855533.jpg', 'XinEr-馨儿 (3013)', '26 Years Old', '160cm', '36D', null, 'Include Room 包房', 'Orchard 乌节路', '1', '$110/60mins/Massage/2 HJ', null, '9774 6286', null, 'Authentic Massage/正规按摩\r\nShower together/陪洗澡\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nHDLY/海底捞月\r\nAssRim/独龙\r\nPainting/舔鲍鱼\r\n69\r\nBBBJ/无套口交\r\nHand job/打飞机\r\nCIM/口爆\r\nGFE/女朋友感觉', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:38', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('7', 'Emma (3045)', '/public/uploads/20200110/157863856439.jpg', 'Emma (3045)', '25 Years Old', '165cm', '34C', null, 'Include Room 包房', 'Paya lebar 巴耶利峇', '1', '$110/60mins/Massage/1HJ', null, '91561319', null, 'Authentic Massage/正规按摩\r\nStockings Temptation/丝袜诱惑\r\nShower Together/陪洗澡\r\nSemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nCatbath/漫游\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nAcupuncture point Massage/穴位按摩\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\n69 Style Hand job/69式打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:40', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('8', 'Qi Qi-琪琪 (2077)', '/public/uploads/20200110/157863857947.jpg', 'Qi Qi-琪琪 (2077)', '23 Years Old', '162cm', '36D', null, 'Include Room & Condom 包房包套', 'Toa Payoh 大巴窑', '1', '$90/60mins/1 FJ', null, '98943577', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/Qiqi琪琪.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:41', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('9', 'Wendy (3030)', '/public/uploads/20200110/157863859052.jpg', 'Wendy (3030)', '25 Years Old', '166cm', '34D', null, 'Include Room 包房', 'Queenstown 女皇镇', '1', '$110/60mins/Massage/2HJ', null, '82466858', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nBreast Fuck/乳交\r\nJuagen/抓根\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/50526.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/50531.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:42', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('10', 'Xiao Mi-小米 (2036)', '/public/uploads/20200110/157863860961.jpg', 'Xiao Mi-小米 (2036)', '24 Years Old', '166cm', '36C', null, 'Include Room ', 'Central Hotel 中部酒店', '1', '$200/60mins/1 FJ', null, '9391 2749', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/5118.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/5111.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:43', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('11', 'Nina (3049)', '/public/uploads/20200110/157863861665.jpg', 'Nina (3049)', '22 Years Old', '158cm', '34B', null, 'Include Room 包房', 'Dobby Ghaut多美歌', '1', '$110/60mins/Massage/2 HJ', null, '87321082', null, 'Authentic Massage/正规按摩\r\nShower together/陪洗澡\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBreast Massage/胸推\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nGuasha /刮痧\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\n69 Style Hand job/69式打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/6152724.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/6152729.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:44', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('12', 'Jing Jing-晶晶 (3044)', '/public/uploads/20200110/157863863072.jpg', 'Jing Jing-晶晶 (3044)', '26 Years Old', '161cm', '36D', null, 'Include Room 包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/60mins/Massage/HJ', null, '96147594', null, 'Authentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月\r\nBreast Fuck/乳交\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:45', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('13', 'CiCi (3057)', '/public/uploads/20200110/157863864480.jpg', 'CiCi (3057)', '22 Years Old', '158cm', '34B', null, 'Include Room 包房', 'Koven 高文', '1', '$110/60mins/Massage/2 HJ', null, '8346 5829', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸上半身\r\nSemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nGFE/女朋友', 'https://4ni52.com/wp-content/uploads/2019/12/cici-video.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:46', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('14', 'Yo Yo(3026)', '/public/uploads/20200110/157863864681.jpg', 'Yo Yo(3026)', '26 Years Old', '160cm', '34C', null, 'Include Room 包房', 'Bugis 武吉士', '1', '$100/60mins/Massage/2HJ', null, '86154322', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸全身\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nBoobs Fuck/乳交\r\nHDLY/海底捞月\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:47', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('15', 'Cindy (2028)', '/public/uploads/20200110/157863866091.jpg', 'Cindy (2028)', '21 Years Old', '165cm', '34C', null, 'Include Room ', 'CENTRAL中部', '1', '$200/60mins/1 FJ', null, '8617 7112', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:49', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('16', 'Tong Tong-彤彤 (2059)', '/public/uploads/20200110/157863867096.jpg', 'Tong Tong-彤彤 (2059)', '23 Years Old', '165cm', '38D', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '1', '$100/60mins/1 FJ', null, '84240112', null, 'Shower Together/陪洗澡\r\nKISS/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/215430.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/215449.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:50', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('17', 'Li Li-丽丽 (3020)', '/public/uploads/20200110/1578638679101.jpg', 'Li Li-丽丽 (3020)', '24 Years Old', '162cm', '36D', null, 'Include Room & Condom 包房包套', 'Lavender 劳明达', '1', '$100/60mins/simple Massage/HJ', null, '90897816', null, 'Shower Together/陪洗澡\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/54518.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:51', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('18', 'Qian Qian-茜茜 (2030)', '/public/uploads/20200110/1578638686105.jpg', 'Qian Qian-茜茜 (2030)', '25 Years Old', '165cm', '34B', null, 'Include Room & Condom 包房包套', 'Orchard 乌节路', '1', '$100/60mins/2 FJ', null, '9398 8617', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nkiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/Qian-Qian-video.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:52', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('19', 'Yu Ting-玉婷 (2044)', '/public/uploads/20200110/1578638693110.jpg', 'Yu Ting-玉婷 (2044)', '22 Years Old', '170cm', '34D', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$200/60mins/1 Shot FJ', null, '86540677', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/2628.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:57:54', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('20', 'Mi Ya-米亚 (3003)', '/public/uploads/20200110/1578638708120.jpg', 'Mi Ya-米亚 (3003)', '23 Years Old', '165cm', '36E', null, 'Include Room 包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/45mins/Massage/1HJ', null, '9898 0664', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸全身\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nBoobs Fuck/乳交\r\nHDLY/海底捞月\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2019/11/Mi-Ya-米亚.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:55', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('21', 'Bei Bei-贝贝 (3059)', '/public/uploads/20200110/1578638715125.jpg', 'Bei Bei-贝贝 (3059)', '23 Years Old', '165cm', '36C', null, 'Include Room 包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/45mins/Massage/1HJ', null, '97168587', null, 'Authentic Massage/正规按摩\r\nKiss/轻吻\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nGuasha /刮痧\r\nStepped Massage/踩背\r\nCatbath/漫游\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/10015227.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:57', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('22', 'Linda (3023)', '/public/uploads/20200110/1578638737138.jpg', 'Linda (3023)', '28 Years Old', '160cm', '36D', null, 'Include Room 包房', 'CENTRAL (中部)', '1', '$100/60mins/Massage/1HJ', null, '93716701', null, 'Head, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nTCM Massage/中医按摩\r\nAcupuncture point Massage/穴位按摩\r\nCupping cup/拔火罐\r\nChinese &amp;Thai Style Kidney Care/中，泰式肾保养\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/Linda.mp4', null, '1', '2', '1', '1', '2020-03-10', '2020-01-10 13:57:58', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('23', 'Co Co (3050)', '/public/uploads/20200110/1578638740140.jpg', 'Co Co (3050)', '22 Years Old', '162cm', '36C', null, 'Include Room 包房', 'Orchard 乌节路', '1', '$100/45mins/Massage/HJ', null, '82264574', null, 'Authentic Massage/正规按摩\r\nKiss/轻吻\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nBJ with Cap/带套口交\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/6195905.mp4', null, '1', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:00', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('24', 'Tina (3051)', '/public/uploads/20200110/1578638750147.jpg', 'Tina (3051)', '22 Years Old', '163cm', '36C', null, 'Include Room 包房', 'Orchard 乌节路', '1', '$100/60mins/Massage/HJ', null, '90513360', null, 'Authentic Massage/正规按摩\r\nKiss/轻吻\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nBJ with Cap/带套口交\r\nHand job/打飞机', '', null, '1', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:01', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('25', 'XinXin-心心 (3057)', '/public/uploads/20200110/1578638762155.jpg', 'XinXin-心心 (3057)', '23 Years Old', '156cm', '34B', null, 'Include Room 包房', 'Little India 小印度', '1', '$110/60mins/Massage/2 HJ', null, '83034743', null, 'Authentic Massage/正规按摩\r\nFrenching/舌吻\r\nShower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nCatbath/漫游\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月\r\nCOB/射身\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/8151947.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/8151952.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:03', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('26', 'Yan Yan-艳艳 (2040)', '/public/uploads/20200110/1578638776164.jpg', 'Yan Yan-艳艳 (2040)', '24 Years Old', '162cm', '36D', null, 'Include Room & Condom 包房包套', 'Tiong Bahru 中峇鲁', '1', '$150/60mins/1FJ', null, '91352041', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/4202.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:04', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('27', 'XiaoTing-晓婷 (3056)', '/public/uploads/20200110/1578638787170.jpg', 'XiaoTing-晓婷 (3056)', '26 Years Old', '160cm', '36C', null, 'Include Room 包房', 'Boon Keng 文庆', '1', '$100/60mins/Massage/1 HJ', null, '82612827', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nHDLY/海底捞月\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/8011940.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:05', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('28', 'Ada (2052)', '/public/uploads/20200110/1578638795175.jpg', 'Ada (2052)', '20 Years Old', '160cm', '34C', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$200/60mins/1 FJ', null, '84021892', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:07', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('29', 'Yuki (3007)', '/public/uploads/20200110/1578638815186.jpg', 'Yuki (3007)', '26 Years Old', '162cm', '38F', null, 'Include Room & Condom 包房包套', 'Balestier 马里士他', '1', '$100/60mins/Massage/2 HJ', null, '8339 5252', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/9204702.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/yuki-video.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:08', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('30', 'Tian Tian-甜甜 (3047)', '/public/uploads/20200110/1578638823191.jpg', 'Tian Tian-甜甜 (3047)', '24 Years Old', '160cm', '36C', null, 'Include Room 包房', 'Potong Pasir 波东巴西', '1', '$100/60mins/Massage/2 HJ', null, '86973194', null, 'Authentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nSemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nGuasha /刮痧\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nBJ with Cap/带套口交\r\nCIM With Cap/带套口爆\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/WeChat_20200105024859.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:09', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('31', 'Anna (3032)', '/public/uploads/20200110/1578638829194.jpg', 'Anna (3032)', '28 Years Old', '165cm', '36C', null, 'Include Room 包房', 'Marymount 玛丽蒙', '1', '$100/60mins/Massage/2HJ', null, '82645978', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nStockings Temptation/丝袜诱惑\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nJuagen/抓根\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:10', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('32', 'Anna-安娜 (2032)', '/public/uploads/20200110/1578638835198.jpg', 'Anna-安娜 (2032)', '22 Years Old', '165cm', '36D', null, 'Include Room & Condom 包房包套', 'Lavender 劳明达', '1', '$150/60mins/1 FJ', null, '83067998', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:11', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('33', 'Tian Tian-甜甜 (3033)', '/public/uploads/20200110/1578638855208.jpg', 'Tian Tian-甜甜 (3033)', '25 Years Old', '162cm', '34E', null, 'Include Room & Condom 包房包套', 'Lavender 劳明达', '1', '$100/60mins/Massage/HJ', null, '86192310', null, 'Authentic Massage/正规按摩\r\nNude Massage/裸体按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:13', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('34', 'NaNa-娜娜 (2113)', '/public/uploads/20200110/1578638873216.jpg', 'NaNa-娜娜 (2113)', '25 Years Old', '163cm', '34C', null, 'Include Room & Condom 包房包套', 'Dobby Ghaut多美歌', '1', '$100/60mins/1 FJ', null, '84082819', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples Sucking/舔乳头\r\n69\r\nPainting/舔鲍鱼\r\nBJ in Bath/浴中萧\r\nBJ With Cap/带套口交\r\nCIM With Cap/带套口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/9204928.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:14', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('35', 'Candy (2096)', '/public/uploads/20200110/1578638875217.jpg', 'Candy (2096)', '23 Years Old', '168cm', '36C', null, 'Include Room & Condom 包房包套', 'Orchard 乌节路', '1', '$170/60mins/1 FJ', null, '81341496', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/225539.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/225546.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:16', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('36', 'Xue Er-雪儿 (2041)', '/public/uploads/20200110/1578639030225.jpg', 'Xue Er-雪儿 (2041)', '23 Years Old', '163cm', '38D', null, 'Include Room & Condom 包房包套', 'Orchard Road 乌节路', '1', '$100/60mins/2FJ', null, '98966280', null, 'Shower Together/陪洗澡\r\nButt Massage/臀推\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nDeep BBBJ/深喉口交\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/3035.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/5206.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:17', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('37', 'Rui Rui-蕊蕊 (2062)', '/public/uploads/20200110/1578639047233.jpg', 'Rui Rui-蕊蕊 (2062)', '23 Years Old', '165cm', '36C', null, 'Include Room & Condom 包房包套', 'Beach Road 美芝路', '1', '$140/60mins/1FJ', null, '93581403', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/40634.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:18', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('38', 'PingPing-萍萍 (2108)', '/public/uploads/20200110/1578639061240.jpg', 'PingPing-萍萍 (2108)', '26 Years Old', '160cm', '34C', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$100/60mins/1FJ', null, '84115027', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/7211050.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:19', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('39', 'Mo Mo-陌陌 (2042)', '/public/uploads/20200110/1578639075249.jpg', 'Mo Mo-陌陌 (2042)', '23 Years Old', '163cm', '36D', null, 'Include Room & Condom 包房包套', 'Orchard Road 乌节路', '1', '$120/60mins/1 FJ', null, '83067155', null, 'Shower Together/陪洗澡\r\nButt Massage/臀推\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nDeep BBBJ/深喉口交\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/0826.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/0832.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:20', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('40', 'YuanYuan-圆圆 (2005)', '/public/uploads/20200110/1578639085255.jpg', 'YuanYuan-圆圆 (2005)', '24 Years Old', '165cm', '38D', null, 'Include Room & Condom 包房包套', 'Boon Keng 文庆', '1', '$160/60mins/1 FJ', null, '9051 0223', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:22', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('41', 'Jiao Yang-娇阳 (2023)', '/public/uploads/20200110/1578639099264.jpg', 'Jiao Yang-娇阳 (2023)', '25 Years Old', '168cm', '34C', null, 'Include Room ', 'CENTRAL 中部', '1', '$140/60mins/1 FJ', null, '8647 7568', null, 'Simple Massage/简单按摩\r\nUniform seduction/制服诱惑\r\nStockings Temptation/丝袜诱惑\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:23', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('42', 'Rose-玫瑰 (3042)', '/public/uploads/20200110/1578639102265.jpg', 'Rose-玫瑰 (3042)', '27 Years Old', '160cm', '36D', null, 'Include Room 包房', 'Dobby Ghaut多美歌', '1', '$100/60mins/Massage/2HJ', null, '98950076', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:25', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('43', 'Yi Yi-依依 (2051)', '/public/uploads/20200110/1578639124276.jpg', 'Yi Yi-依依 (2051)', '25 Years Old', '160cm', '34D', null, 'Include Room & Condom 包房包套', 'Orchard 乌节路', '1', '$100/60mins/Unlimited FJ', null, '84235292', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nkiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/41343.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:26', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('44', 'Na Na-娜娜 (2068)', '/public/uploads/20200110/1578639130279.jpg', 'Na Na-娜娜 (2068)', '24 Years Old', '162cm', '36C', null, 'Include Room & Condom 包房包套', 'Tiong Bahru 中峇鲁', '1', '$100/60mins/2 FJ', null, '83067145', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBreast Fuck/乳交\r\nBJ with Cap/带套口交\r\nCIM with Cap/带套口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/13335.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:27', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('45', 'FangFang-芳芳 (2025)', '/public/uploads/20200110/1578639149289.jpg', 'FangFang-芳芳 (2025)', '26 Years Old', '163cm', '36C', null, 'Include Room & Condom 包房包套', 'Boon Keng 文庆', '1', '$100/60mins/Simple Massage/2 H', null, '8590 8317', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/fangfang-video.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:28', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('46', 'Xiao S-小S (3001)', '/public/uploads/20200110/1578639167296.jpg', 'Xiao S-小S (3001)', '25 Years Old', '160cm', '36D', null, 'Include Room 包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/60mins/Massage/HJ', null, '8303 7893', null, 'Authentic Massage/正规按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBoobs Massage/胸推\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:29', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('47', 'Tian Xin-甜心 (3010)', '/public/uploads/20200110/1578639172298.jpg', 'Tian Xin-甜心 (3010)', '24 Years Old', '163cm', '36D', null, 'Include Room 包房', 'Farrer Park 花拉公园', '1', '$120/60mins/Massage/2 HJ', null, '9175 4726', null, 'Authentic Massage/正规按摩\r\nNude Massage/全裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nGuasha /刮痧\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nBBBJ/无套口交\r\nCIM With Cap/带套口爆', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:31', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('48', 'Fiona (3005)', '/public/uploads/20200110/1578639184305.jpg', 'Fiona (3005)', '30 Years Old', '157cm', '36E', null, 'Include Room 包房', 'River valley 里峇峇利', '1', '$100/60mins/Massage', null, '8281 8145', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸半身\r\nTCM Massage/中医按摩\r\nAcupuncture point Massage/穴位按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nCupping cup/拔火罐\r\nGuasha /刮痧\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:32', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('49', 'Tina (2109)', '/public/uploads/20200110/1578639198314.jpg', 'Tina (2109)', '24 Years Old', '164cm', '36D', null, 'Include Room & Condom 包房包套', 'Boon Keng 文庆', '1', '$160/60mins/1 FJ', null, '84360811', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/8212801.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:33', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('50', 'Wen Cun-温存 (3040)', '/public/uploads/20200110/1578639207319.jpg', 'Wen Cun-温存 (3040)', '25 Years Old', '163cm', '36C', null, 'Include Room 包房', 'Toa Payoh大巴窑', '1', '$110/60mins/Massage/2 HJ', null, '93962631', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nNude Massage/裸体按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/93249.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:34', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('51', 'Shi Shi-诗诗 (3052)', '/public/uploads/20200110/1578639213322.jpg', 'Shi Shi-诗诗 (3052)', '23 Years Old', '162cm', '34C', null, 'Include Room 包房', 'Tiong Bahru 中峇鲁', '1', '$100/45mins/Massage/1HJ', null, '82853088', null, 'Authentic Massage/正规按摩\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/6183149.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:36', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('52', 'Ke Ke-可可 (2016)', '/public/uploads/20200110/1578639234331.jpg', 'Ke Ke-可可 (2016)', '23 Years Old', '170cm', '36D', null, 'Include Room ', 'Toa Payoh 大巴窑', '1', '$110/60mins/1 FJ', null, '8269 0571', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:37', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('53', 'KK (3024)', '/public/uploads/20200110/1578639237332.jpg', 'KK (3024)', '25 Years Old', '166cm', '36C', null, 'Include Room 包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/60mins/Massage/HJ', null, '90149250', null, 'Authentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nBBBJ/无套口交', 'https://4ni52.com/wp-content/uploads/2019/12/93351.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:38', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('54', 'Annie-安妮 (2014)', '/public/uploads/20200110/1578639259345.jpg', 'Annie-安妮 (2014)', '21 Years Old', '160cm', '34B', null, 'Include Room & Condom 包房包套', 'HOTEL 酒店', '1', '$240/60mins/1 FJ', null, '9614 5385', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/annie-video-1.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/annie-video-2.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:40', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('55', 'Ashlyn (3053)', '/public/uploads/20200110/1578639268351.jpg', 'Ashlyn (3053)', '23 Years Old', '165cm', '36D', null, 'Include Room 包房', 'Boon Keng 文庆', '1', '$110/60mins/Massage/2 HJ', null, '83493080', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nHDLY/海底捞月\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/7124845.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:41', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('56', 'XiaoXiao-小小 (3055)', '/public/uploads/20200110/1578639277356.jpg', 'XiaoXiao-小小 (3055)', '21 Years Old', '160cm', '34D', null, 'Include Room 包房', 'Queenstown女皇镇', '1', '$110/60mins/Massage/2 HJ', null, '86012148', null, 'Authentic Massage/正规按摩\r\nStockings Temptation/丝袜诱惑\r\nShower Together/陪洗澡\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nGuasha /刮痧\r\nHot Stones Massage/热石按摩\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nHDLY/海底捞月\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/7184716.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:42', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('57', 'Yi Yi-依依 (2101)', '/public/uploads/20200110/1578639293364.jpg', 'Yi Yi-依依 (2101)', '22 Years Old', '157cm', '36C', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$150/60mins/1 FJ', null, '98116462', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/7150645.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:43', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('58', 'Lin Lin-琳琳 (2102)', '/public/uploads/20200110/1578639297367.jpg', 'Lin Lin-琳琳 (2102)', '22 Years Old', '157cm', '36C', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$160/60mins/1 FJ', null, '84020107', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/7191449.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:44', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('59', 'Xuan Xuan-萱萱 (2050)', '/public/uploads/20200110/1578639317379.jpg', 'Xuan Xuan-萱萱 (2050)', '24 Years Old', '162cm', '36B', null, 'Include Room & Condom 包房包套', 'Central Hotel 中部酒店', '1', '$180/60mins/1 FJ', null, '98697713', null, 'Kiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/31242.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 13:58:46', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('60', 'Miao Miao-喵喵 (2089)', '/public/uploads/20200110/1578639329387.jpg', 'Miao Miao-喵喵 (2089)', '24 Years Old', '160cm', '36B', null, 'Include Room & Condom 包房包套', 'Balestier 马里士他', '1', '$80/60mins/Simple Massage/CIM', null, '84395378', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM with Cap/带套口爆', 'https://4ni52.com/wp-content/uploads/2020/01/91941.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:47', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('61', 'Yi Yi-依依 (3031)', '/public/uploads/20200110/1578639332389.jpg', 'Yi Yi-依依 (3031)', '22 Years Old', '163cm', '32C', null, 'Include Room 包房', 'Queenstown 女皇镇', '1', '$120/60mins/Massage/2HJ', null, '90519716', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nStockings Temptation/丝袜诱惑\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nBreast Fuck/乳交\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/9002325.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 13:58:48', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('62', 'Ya Ya-丫丫 (3006)', '/public/uploads/20200110/1578639344396.jpg', 'Ya Ya-丫丫 (3006)', '20 Years Old', '166cm', '34D', null, 'Include Room 包房', 'Hougang 后港', '4', '$100/60mins/Massage/HJ or BBBJ', null, '8401 4262', null, 'Auto Roaming/触摸全身\r\nsemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nHot &amp; Cold BJ/冰火二重天口交\r\nCIM with Cap/带套口爆', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:14', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('63', 'Xiao Mi-小米 (2067)', '/public/uploads/20200110/1578639351400.jpg', 'Xiao Mi-小米 (2067)', '25 Years Old', '164cm', '36C', null, 'Include Room & Condom 包房包套', 'Kembangan 景万岸', '4', '$100/60mins/Simple Massage/HJ', null, '94862625', null, 'Shower Together/陪洗澡\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/14537.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:15', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('64', 'ling Long-玲珑 (3028)', '/public/uploads/20200110/1578639358404.jpg', 'ling Long-玲珑 (3028)', '21 Years Old', '169cm', '34C', null, 'Include Room 包房', 'Kembangan 景万岸', '4', '$110/60mins/Massage/2HJ', null, '83120209', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nHand job/打飞机\r\nGFE/女朋友感觉\r\nTarma Service/双飞服务', 'https://4ni52.com/wp-content/uploads/2019/12/34226.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:16', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('65', 'Song Song-宋宋 (3016)', '/public/uploads/20200110/1578639367410.jpg', 'Song Song-宋宋 (3016)', '23 Years Old', '160cm', '34B', null, 'Include Room 包房', 'Kovan 高文', '4', '$110/60mins/Massage/2HJ', null, '9354 9237', null, 'Authentic Massage/正规按摩\r\nShower together/陪洗澡\r\nAuto Roaming/触摸全身\r\nsemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nBody Oil Massage/油推\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/024634.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:18', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('66', 'Wei Wei-微微 (3012)', '/public/uploads/20200110/1578639380419.jpg', 'Wei Wei-微微 (3012)', '22 Years Old', '160cm', '34C', null, 'Include Room 包房', 'Kovan 高文', '4', '$110/60mins/massage/2 HJ', null, '8354 0619', null, 'Authentic Massage/正规按摩\r\nShower together/陪洗澡\r\nAuto Roaming/触摸全身\r\nNude Massage/全裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nBBBJ/无套口交\r\nHand job/打飞机\r\nTarma Massage Service/双飞按摩服务', 'https://4ni52.com/wp-content/uploads/2019/12/weiwei-video.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:00:19', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('67', 'An Qi-安琪 (2087)', '/public/uploads/20200110/1578639387424.jpg', 'An Qi-安琪 (2087)', '22 Years Old', '165cm', '34B', null, 'Include Room & Condom 包房包套', 'Koven 高文', '4', '$100/60mins/Simple Massage/2HJ', null, '83494342', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nStockings Temptation/丝袜诱惑\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples Sucking/舔乳头\r\nBreast Fuck/乳交\r\nCOB/射身\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/51045.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:20', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('68', 'Yi Yi-依依 (3021)', '/public/uploads/20200110/1578639404434.jpg', 'Yi Yi-依依 (3021)', '22 Years Old', '159cm', '34B', null, 'Include Room & Condom 包房包套', 'Koven 高文', '4', '$100/60mins/Massage/HJ', null, '93916749', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nHDLY/海底捞月\r\nHand job/打飞机', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:21', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('69', 'Mai Zi-麦子 (2048)', '/public/uploads/20200110/1578639617440.jpg', 'Mai Zi-麦子 (2048)', '25 Years Old', '165cm', '34B', null, 'Include Room 包房', 'Kovan 高文', '4', '$80/60mins/1FJ', null, '93966128', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:00:22', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('70', 'QiQi-七七 (3046)', '/public/uploads/20200110/1578639625444.jpg', 'QiQi-七七 (3046)', '25 Years Old', '160cm', '36B', null, 'Include Room 包房', 'Hougang后港', '4', '$100/60mins/Massage/2HJ', null, '98925709', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nKneeling Massage/跪背\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nBreast Fuck/乳交\r\nBJ with Cap/带套口交\r\nCIM With Cap/带套口爆\r\nHand job/打飞机', '', null, '1', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:23', '2020-01-10 16:29:24');
INSERT INTO `girls` VALUES ('71', 'Xiao Xiao-笑笑 (3029)', '/public/uploads/20200110/1578639637450.jpg', 'Xiao Xiao-笑笑 (3029)', '21 Years Old', '166cm', '34B', null, 'Include Room 包房', 'Kembangan 景万岸', '4', '$110/60mins/Massage/2HJ', null, '84345363', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nHand job/打飞机\r\nGFE/女朋友感觉\r\nTarma Service/双飞服务', 'https://4ni52.com/wp-content/uploads/2019/12/35539.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:25', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('72', 'Coco (3053)', '/public/uploads/20200110/1578639652460.jpg', 'Coco (3053)', '25 Years Old', '160cm', '36C', null, 'Include Room 包房', 'EAST(东部)', '4', '$110/60mins/Massage/2 HJ', null, '8427 0595', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸上半身\r\nSemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nHand job/打飞机\r\nGFE/女朋友', 'https://4ni52.com/wp-content/uploads/2019/12/25038.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:26', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('73', 'Ju Zi-橘子 (3048)', '/public/uploads/20200110/1578639664466.jpg', 'Ju Zi-橘子 (3048)', '23 Years Old', '160cm', '36C', null, 'Include Room 包房', 'Kovan 高文', '4', '$110/60mins/Massage/2 HJ', null, '84275412', null, 'Authentic Massage/正规按摩\r\nShower together/陪洗澡\r\nAuto Roaming/触摸全身\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHand job/打飞机\r\nTarma Massage Service/双飞按摩服务', 'https://4ni52.com/wp-content/uploads/2020/01/5160345.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:27', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('74', 'BaiYang-白羊 (3014)', '/public/uploads/20200110/1578639673471.jpg', 'BaiYang-白羊 (3014)', '22 Years Old', '155CM', '34B', null, 'Include Room 包房', 'Kembangan 景万岸', '4', '$110/60mins/Massage/2 HJ', null, '9778 7452', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nGuasha /刮痧\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nGFE/女朋友感觉', '', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:28', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('75', 'Dian Dian-点点 (3041)', '/public/uploads/20200110/1578639679475.jpg', 'Dian Dian-点点 (3041)', '24 Years Old', '160cm', '36C', null, 'Include Room 包房', 'Kovan 高文', '4', '$110/60mins/Massage/2HJ', null, '84066368', null, 'Authentic Massage/正规按摩\r\nNude Massage/裸体按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nCatbath/漫游\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/234511.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:29', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('76', 'Yong Er-泳儿 (3043)', '/public/uploads/20200110/1578639698486.jpg', 'Yong Er-泳儿 (3043)', '26 Years Old', '160cm', '34D', null, 'Include Room 包房', 'Kembangan 景万岸', '4', '$110/60mins/Massage/2 HJ', null, '83790952', null, 'Authentic Massage/正规按摩\r\nKiss/轻吻\r\nSemi Nude Massage/半裸按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nBreast Massage/胸推\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月\r\nJuagen/抓根\r\nBreast Fuck/乳交\r\nBJ with Cap/带套口交\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/225505.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/225510.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:30', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('77', 'Bao Bao-宝宝 (3002)', '/public/uploads/20200110/1578639712494.jpg', 'Bao Bao-宝宝 (3002)', '25 Years Old', '165cm', '36E', null, 'Include Room 包房', 'Kembangan 景万岸', '4', '$110/60mins/Massage/2 HJ', null, '9392 0112', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nGFE/女朋友感觉', 'https://4ni52.com/wp-content/uploads/2019/11/15639.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/11/20502.mp4', null, '0', '2', '1', '1', '2020-03-10', '2020-01-10 14:00:32', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('78', 'Xin Xin-心心 (2073)', '/public/uploads/20200110/1578639722499.jpg', 'Xin Xin-心心 (2073)', '23 Years Old', '160cm', '36D', null, 'Include Room & Condom 包房包套', 'Hougang后港', '4', '$100/60mins/1 FJ', null, '81697377', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/30717.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:00:33', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('79', 'Na Na-娜娜 (2011)', '/public/uploads/20200110/1578639736507.jpg', 'Na Na-娜娜 (2011)', '28 Years Old', '164cm', '36D', null, 'Include Room & Condom 包房包套', 'GEYLANG 芽茏', '4', '$120/60mins/1 FJ', null, '9358 4805', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBoobs Fuck/乳交\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:01:27', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('80', 'Rong Er-蓉儿 (2112)', '/public/uploads/20200110/1578639744511.jpg', 'Rong Er-蓉儿 (2112)', '24 Years Old', '160cm', '36B', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$100/60mins/2 FJ', null, '82638739', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBreast Fuck/乳交\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nHot &amp; Cold BJ/冰火二重天口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/9145501.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:01:28', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('81', 'Xiao Yu-小玉 (2057)', '/public/uploads/20200110/1578639761517.jpg', 'Xiao Yu-小玉 (2057)', '25 Years Old', '162cm', '36D', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/2 FJ', null, '86572911', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/213035.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:01:29', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('82', 'An Qi-安琪 (2022)', '/public/uploads/20200110/1578639803525.jpg', 'An Qi-安琪 (2022)', '28 Years Old', '158cm', '36D', null, 'Include Room & Condom 包房包套', 'Geylang 芽茏', '4', '$100/60mins/1 FJ', null, '9426 4182', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nAssRim/独龙\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:01:30', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('83', 'Ping Ping-萍萍 (2076)', '/public/uploads/20200110/1578639819535.jpg', 'Ping Ping-萍萍 (2076)', '24 Years Old', '168cm', '36C', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/1FJ', null, '83197065', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBBBJ/无套口交\r\nBJ in shower/浴中萧\r\nDeep BBBJ/深喉口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/ping-ping萍萍.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:12', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('84', 'Xiao Qing-晓清 (3008)', '/public/uploads/20200110/1578639831541.jpg', 'Xiao Qing-晓清 (3008)', '24 Years Old', '168cm', '34B', null, 'Include Room ', 'Geylang 芽茏', '4', '$110/60mins/Massage/CIM', null, '9866 6043', null, 'Shower Together/陪洗澡\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:13', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('85', 'Mei Gui-玫瑰 (2012)', '/public/uploads/20200110/1578639833542.jpg', 'Mei Gui-玫瑰 (2012)', '28 Years Old', '160cm', '38B', null, 'Include Room & Condom 包房包套', 'Geylang 芽茏', '4', '$100/60mins/Unlimited FJ', null, '9083 0028', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nHot &amp; Cold BJ/冰火二重天口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/7210027.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:15', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('86', 'Yun Yun-云云 (2091)', '/public/uploads/20200110/1578639846549.jpg', 'Yun Yun-云云 (2091)', '27 Years Old', '160cm', '34B', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/1 FJ', null, '82846896', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:16', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('87', 'Yan Zi-燕子 (2053)', '/public/uploads/20200110/1578639865558.jpg', 'Yan Zi-燕子 (2053)', '27 Years Old', '163cm', '34D', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$100/60mins/2 FJ', null, '86510918', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱\r\nTarma Service/双飞服务', 'https://4ni52.com/wp-content/uploads/2019/12/165848.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/165854.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:17', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('88', 'QI QI &#8211; 琪琪 (2029)', '/public/uploads/20200110/1578639872563.jpg', 'QI QI &#8211; 琪琪 (2029)', '25 Years Old', '160cm', '34D', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '100/60mins/2 FJ', null, '9774 2758', null, 'Shower Together/鸳鸯戏水\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:18', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('89', 'Lucky (2071)', '/public/uploads/20200110/1578639885571.jpg', 'Lucky (2071)', '22 Years Old', '165cm', '38D', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/simple Massage/HJ', null, '91359675', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/01525.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:20', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('90', 'Ying Er-影儿 (2114)', '/public/uploads/20200110/1578639901580.jpg', 'Ying Er-影儿 (2114)', '26 Years Old', '160cm', '36D', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/1 FJ', null, '90821309', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples Sucking/舔乳头\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM /口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/10014033.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/10014041.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:21', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('91', 'Shi yu-诗雨 (2078)', '/public/uploads/20200110/1578639909584.jpg', 'Shi yu-诗雨 (2078)', '28 Years Old', '160cm', '36D', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$80/60mins/1FJ', null, '83115828', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nDeep BBBJ/深喉口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/shiyu-诗雨.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:22', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('92', 'Si Si-思思 (2003)', '/public/uploads/20200110/1578639924591.jpg', 'Si Si-思思 (2003)', '24 Years Old', '160cm', '34B', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$120/60mins/2 FJ', null, '9078 2688', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:23', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('93', 'Mei Mei-媚媚 (2060)', '/public/uploads/20200110/1578639934598.jpg', 'Mei Mei-媚媚 (2060)', '32 Years Old', '163cm', '38D', null, 'Include Room & Condom 包房包套', 'Geylang Hotel/芽笼酒店', '4', '$80/60mins/2 FJ', null, '93758708', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:24', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('94', 'Xi Gua-西瓜 (2019)', '/public/uploads/20200110/1578639946604.jpg', 'Xi Gua-西瓜 (2019)', '23 Years Old', '160cm', '36C', null, 'Include Room & Condom 包房包套', 'Geylang 芽茏', '4', '$100/60mins/1 FJ', null, '9812 5435', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:25', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('95', 'jia Jia-佳佳 (2043)', '/public/uploads/20200110/1578639953607.jpg', 'jia Jia-佳佳 (2043)', '27 Years Old', '160cm', '34C', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$120/60mins/1FJ', null, '91369300', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:26', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('96', 'Nina (2031)', '/public/uploads/20200110/1578639970617.jpg', 'Nina (2031)', '25 Years Old', '161cm', '36C', null, 'Include Room & Condom 包房包套', 'Geylang 芽茏', '4', '$100/60mins/1 FJ', null, '8423 1279', null, 'Shower Together/陪洗\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/nina-video.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:27', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('97', 'Shan Shan-珊珊 (2001)', '/public/uploads/20200110/1578639977621.jpg', 'Shan Shan-珊珊 (2001)', '26 Years Old', '160cm', '34B', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$50/60mins/Simple Massage/HJ', null, '8420 5451', null, 'Shower Together/陪洗澡\r\nKISS/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHJ/打飞机\r\nFJ/做爱\r\nSM service/女王服务', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:29', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('98', 'Meng Meng-萌萌 (2055)', '/public/uploads/20200110/1578639985625.jpg', 'Meng Meng-萌萌 (2055)', '23 Years Old', '160cm', '34B', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/1 FJ', null, '81560779', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nAssRim/独龙\r\nCIM/口爆\r\nFJ/做爱\r\nTarma Service/双飞服务', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:30', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('99', 'Xiao Yu-小语 (2072)', '/public/uploads/20200110/1578639998633.jpg', 'Xiao Yu-小语 (2072)', '27 Years Old', '161cm', '36C', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$120/60mins/1 FJ', null, '84320139', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\nCOF/颜射\r\n69\r\nAssRim/独龙\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/xiao-yu-小语.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:31', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('100', 'Clare (3019)', '/public/uploads/20200110/1578640095646.jpg', 'Clare (3019)', '25 Years Old', '163cm', '36B', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$110/60mins/Massage/CIM', null, '98066971', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nKneeling Massage/跪背\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHJ/打飞机\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/6134504.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:33', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('101', 'Cao Cao-草草 (3034)', '/public/uploads/20200110/1578640107651.jpg', 'Cao Cao-草草 (3034)', '26 Years Old', '159cm', '36C', null, 'Include Room 包房', 'Geylang芽笼', '4', '$100/60mins/Massage/2 HJ', null, '85055116', null, 'Authentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nCupping cup/拔火罐\r\nGuasha /刮痧\r\nHot Stone /热石护理\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nJuagen/抓根\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/草草1.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:34', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('102', 'You You-优优 (2054)', '/public/uploads/20200110/1578640127660.jpg', 'You You-优优 (2054)', '23 Years Old', '160cm', '38F', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$100/60mins/1 FJ', null, '84672557', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nHJ/打飞机\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/204202.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:35', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('103', 'Mi Xue-米雪 (2026)', '/public/uploads/20200110/1578640140667.jpg', 'Mi Xue-米雪 (2026)', '23 Years Old', '166cm', '36D', null, 'Include Room & Condom 包房包套', 'Geylang 芽茏', '4', '$110/60mins/1 FJ', null, '8369 0264', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/Mi-Xue3041.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/Mi-Xue3105.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:37', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('104', 'Miao Miao-喵喵 (2046)', '/public/uploads/20200110/1578640145670.jpg', 'Miao Miao-喵喵 (2046)', '18 Years Old', '163cm', '34B', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$150/60mins/1FJ', null, '93722306', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/22440.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:38', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('105', 'Jun Jun-君君 (2010)', '/public/uploads/20200110/1578640167682.jpg', 'Jun Jun-君君 (2010)', '28 Years Old', '165cm', '36C', null, 'Include Room ', 'Geylang芽笼', '4', '$100/60mins/2FJ', null, '8387 5637', null, 'Shower Together/陪洗澡\r\nKissing/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nDeep BBBJ/深喉口交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/123233.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:39', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('106', 'MiMi-咪咪 (2090)', '/public/uploads/20200110/1578640174686.jpg', 'MiMi-咪咪 (2090)', '23 Years Old', '165cm', '34B', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$150/60mins/1 FJ', null, '84042539', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/202125.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/202132.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:41', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('107', 'Xiang Er-香儿 (3037)', '/public/uploads/20200110/1578640177688.jpg', 'Xiang Er-香儿 (3037)', '28 Years Old', '160cm', '34D', null, 'Include Room 包房', 'Geylang芽笼', '4', '$90/60mins/Massage/HJ', null, '91571089', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸全身\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure\r\nMassage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nHDLY/海底捞月\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHJ/打飞机', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:42', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('108', 'Jia Jia-佳佳 (2056)', '/public/uploads/20200110/1578640193696.jpg', 'Jia Jia-佳佳 (2056)', '25 Years Old', '158cm', '36D', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$80/60mins/1 FJ', null, '94679106', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:44', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('109', 'Ke Ke-可可 (2083)', '/public/uploads/20200110/1578640206703.jpg', 'Ke Ke-可可 (2083)', '23 Years Old', '167cm', '32C', null, 'Include Room & Condom 包房包套', 'Geylang芽笼', '4', '$160/60mins/1 FJ', null, '83133194', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nkiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples Sucking/舔乳头\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBJ with Cap/带套口交\r\nBreast Fuck/乳交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/212319.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:45', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('110', 'Sao Sao-骚骚(3027)', '/public/uploads/20200110/1578640209704.jpg', 'Sao Sao-骚骚(3027)', '28 Years Old', '163cm', '38C', null, 'Include Room 包房', 'Geylang芽笼', '4', '$80/60mins/Massage/1HJ', null, '98959826', null, 'Authentic Massage/正规按摩\r\nSemi Nude Massage/半裸按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:46', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('111', 'NuNu-木木 (2074)', '/public/uploads/20200110/1578640219710.jpg', 'NuNu-木木 (2074)', '25 Years Old', '165D', '36D', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$130/60mins/1 FJ', null, '93586916', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:47', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('112', 'Tao Tao-桃桃 (2018)', '/public/uploads/20200110/1578640246720.jpg', 'Tao Tao-桃桃 (2018)', '28 Years Old', '168cm', '38D', null, 'Include Room & Condom 包房包套', 'Geylang 芽茏', '4', '$80/60mins/1 FJ', null, '8575 9811', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:48', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('113', 'Dong Zi-冬子(2115)', '/public/uploads/20200110/1578640259726.jpg', 'Dong Zi-冬子(2115)', '22 Years Old', '160cm', '34C', null, 'Include Room 包房', 'Geylang Hotel 芽笼酒店', '4', '$130/60mins/1 FJ', null, '83716765', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples Sucking/舔乳头\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/23055.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/23105.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:50', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('114', 'Ye Zi-叶子 (2049)', '/public/uploads/20200110/1578640272734.jpg', 'Ye Zi-叶子 (2049)', '28 Years Old', '158cm', '34C', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$100/60mins/1FJ', null, '84292557', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/12636.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/12628.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:52', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('115', 'Wu Yun-乌云 (2021)', '/public/uploads/20200110/1578640281739.jpg', 'Wu Yun-乌云 (2021)', '26 Years Old', '165cm', '36B', null, 'Include Room ', 'Geylang 芽茏', '4', '$100/60mins/1 FJ', null, '8647 4905', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nAssRim/独龙\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:53', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('116', 'Qi Er-琪儿 (3036)', '/public/uploads/20200110/1578640293746.jpg', 'Qi Er-琪儿 (3036)', '30 Years Old', '160cm', '36C', null, 'Include Room 包房', 'Geylang 芽笼', '4', '$90/60mins/Massage/2HJ', null, '94481631', null, 'Authentic Massage/正规按摩\r\nAuto Roaming/触摸全身\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure\r\nMassage/指压按摩\r\nGuasha /刮痧\r\nBreast Massage/胸推\r\nCatbath/漫游\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nBody Oil Massage/油推\r\nLymphatic Detoxification/淋巴排毒\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/204320.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:55', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('117', 'Ning Meng-柠檬 (3058)', '/public/uploads/20200110/1578640304752.jpg', 'Ning Meng-柠檬 (3058)', '22 Years Old', '160cm', '34C', null, 'Include Room 包房', 'Geylang Hotel芽笼酒店', '4', '$100/60mins/Massage/1 HJ', null, '83937075', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nGuasha /刮痧\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nJuagen/抓根\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nBBBJ/无套口交\r\nCIM With Cap/带套口爆', 'https://4ni52.com/wp-content/uploads/2020/01/9020449.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:56', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('118', 'Mina-米娜 (2080)', '/public/uploads/20200110/1578640325762.jpg', 'Mina-米娜 (2080)', '24 Years Old', '160cm', '36C', null, 'Include Room & Condom 包房包套', 'Geylang 芽笼', '4', '$80/60mins/1 FJ', null, '93520216', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples Sucking/舔乳头\r\nPainting/舔鲍鱼\r\n69\r\nCOF/颜射\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nDeep BBBJ/深喉口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:58', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('119', 'Bao Bao-宝宝 (3009)', '/public/uploads/20200110/1578640342769.jpg', 'Bao Bao-宝宝 (3009)', '28 Years Old', '163cm', '38C', null, 'Include Room 包房', 'Geylang 芽笼', '4', '$80/60mins/Massage/1 HJ', null, '9895 9826', null, 'Authentic Massage/正规按摩\r\nShower together/陪洗澡\r\nAuto Roaming/触摸全身\r\nNude Massage/裸体按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nHot Stones Massage/热石按摩\r\nGuasha /刮痧\r\nCupping cup/拔火罐\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nProstate Care/前列腺保养\r\nLymphatic Detoxification/淋巴排毒\r\nJuagen/抓根\r\nHDLY/海底捞月\r\nHJ/打飞机', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:06:59', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('120', 'Xiao-Yu-小雨 (2008)', '/public/uploads/20200110/1578640344770.jpg', 'Xiao-Yu-小雨 (2008)', '26 Years Old', '166cm', '36C', null, 'Include Room & Condom 包房包套', 'Admiralty 海军部', '3', '$120/60mins/1FJ', null, '8431 8009', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/xiao-yu-video.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:41', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('121', 'Ke Ai-可爱 (3017)', '/public/uploads/20200110/1578640356777.jpg', 'Ke Ai-可爱 (3017)', '23 Years Old', '160cm', '34B', null, 'Include Room 包房', 'Admiralty 海军部', '3', '$100/60mins/Massage/2HJ', null, '9374 8659', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nGFE/女朋友感觉', 'https://4ni52.com/wp-content/uploads/2019/12/5101.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/5107.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:43', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('122', 'Ai Mi-艾米 (2075)', '/public/uploads/20200110/1578640371784.jpg', 'Ai Mi-艾米 (2075)', '24 Years Old', '160cm', '36B', null, 'Include Room & Condom 包房包套', 'Admiralty 海军部', '3', '$100/60mins/1FJ', null, '91238944', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBoobs Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\n69\r\nPainting/舔鲍鱼\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/Ai-Mi艾米.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/Ai-Mi艾米1.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:44', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('123', 'Summer (2088)', '/public/uploads/20200110/1578640378788.jpg', 'Summer (2088)', '28 Years Old', '164cm', '34B', null, 'Include Room & Condom 包房包套', 'Admiralty海军部', '3', '$80/60mins/1FJ', null, '85062089', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nButt Massage/臀推\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:45', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('124', 'Xing Er-星儿 (3054)', '/public/uploads/20200110/1578640392795.jpg', 'Xing Er-星儿 (3054)', '23 Years Old', '160cm', '34B', null, 'Include Room & Condom 包房包套', 'Admiralty 海军部', '3', '$100/60mins/Massage/2HJ or 1CI', null, '83652870', null, 'Shower Together/陪洗澡\r\nAuthentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nHand job/打飞机', 'https://4ni52.com/wp-content/uploads/2020/01/7183311.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:46', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('125', 'Shan Shan-姗姗 (2061)', '/public/uploads/20200110/1578640398799.jpg', 'Shan Shan-姗姗 (2061)', '24 Years Old', '163cm', '34B', null, 'Include Room & Condom 包房包套', 'Admiralty 海军部', '3', '$100/60mins/1FJ', null, '83427095', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\nBJ in shower/浴中萧\r\nBreast Fuck/乳交\r\nBJ with Cap/带套口交\r\nCIM in Cap/带套口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/2046.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:47', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('126', 'Li Li-丽丽 (3038)', '/public/uploads/20200110/1578640409806.jpg', 'Li Li-丽丽 (3038)', '26 Years Old', '165cm', '36D', null, 'Include Room 包房', 'Ang Mo Kio 宏茂桥', '3', '$100/60mins/Massage', null, '97526611', null, 'Authentic Massage/正规按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nTCM Massage/中医按摩\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nBody Oil Massage/油推\r\nCupping cup/拔火罐\r\nLymphatic Detoxification/淋巴排毒\r\nJuagen/抓根', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:48', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('127', 'Zi yao-紫瑶 (2081)', '/public/uploads/20200110/1578640417811.jpg', 'Zi yao-紫瑶 (2081)', '25 Years Old', '165cm', '34D', null, 'Include Room & Condom 包房包套', 'Sembawang三八旺', '3', '$100/60mins/2 FJ', null, '86559750', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples Sucking/舔乳头\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:50', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('128', 'Xiao Xue-小雪 (3022)', '/public/uploads/20200110/1578640439824.jpg', 'Xiao Xue-小雪 (3022)', '23 Years Old', '160cm', '36D', null, 'Include Room 包房', 'Sembawang三八旺', '3', '$100/60mins/Massage/2HJ', null, '86726483', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nBreast Fuck/乳交\r\nBBBJ /无套口交\r\nCIM/口爆', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:51', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('129', 'Yang Yang-洋洋 (2035)', '/public/uploads/20200110/1578640449829.jpg', 'Yang Yang-洋洋 (2035)', '24 Years Old', '165cm', '36D', null, 'Include Room & Condom 包房包套', 'Admiralty海军部', '3', '$100/60mins/2FJ', null, '9050 4770', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:53', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('130', 'Guo Guo-果果 (3011)', '/public/uploads/20200110/1578640457834.jpg', 'Guo Guo-果果 (3011)', '32 Years Old', '160cm', '36B', null, 'Include Room 包房', 'Woodlands 兀兰', '3', '$80/60mins/Massage/1 HJ', null, '9466 1423', null, 'Authentic Massage/正规按摩\r\nShower Together/陪洗澡\r\nCatbath/漫游\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nGuasha /刮痧\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nBreast Fuck/乳交\r\nHJ/打飞机', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:54', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('131', 'Dan Dan-蛋蛋 (2009)', '/public/uploads/20200110/1578640523842.jpg', 'Dan Dan-蛋蛋 (2009)', '25 Years Old', '159cm', '34B', null, 'Include Room & Condom 包房包套', 'Woodlands 兀兰', '3', '$100/60mins/1HJ', null, '83858771', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBoobs Fuck/乳交\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/45054.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:07:55', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('132', 'Si Si-思思 (2079)', '/public/uploads/20200110/1578640539850.jpg', 'Si Si-思思 (2079)', '25 Years Old', '158cm', '36D', null, 'Include Room & Condom 包房包套', 'Lakeside 湖畔', '2', '$60/60mins/Simple Massage/1HJ', null, '90537496', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nDeep BBBJ/深喉口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/Shishi.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:28', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('133', 'KeKe-可可 (2105)', '/public/uploads/20200110/1578640542852.jpg', 'KeKe-可可 (2105)', '24 Years Old', '163cm', '36B', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$100/45mins/2FJ', null, '96108762', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:29', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('134', 'Mi Er-米儿 (3018)', '/public/uploads/20200110/1578640556860.jpg', 'Mi Er-米儿 (3018)', '25 Years Old', '160cm', '36E', null, 'Include Room & Condom 包房包套', 'Lakeside 湖畔', '2', '$100/60mins/Massage/2HJ', null, '9391 6386', null, 'Authentic Massage/正规按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nAuthentic Acupressure Massage/指压按摩\r\nBody Oil Massage/油推\r\nKneeling Massage/跪背\r\nStepped Massage/踩背\r\nLymphatic Detoxification/淋巴排毒\r\nProstate Care/前列腺保养\r\nHDLY/海底捞月\r\nHand job/打飞机\r\nBreast Fuck/乳交\r\nBJ with Cap/带套口交\r\nCIM with Cap/带套口爆', 'https://4ni52.com/wp-content/uploads/2019/12/3440.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:30', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('135', 'Shui Shui-水水 (2047)', '/public/uploads/20200110/1578640562863.jpg', 'Shui Shui-水水 (2047)', '23 Years Old', '165cm', '36B', null, 'Include Room & Condom 包房包套', 'Lakeside 湖畔', '2', '$80/60mins/1FJ', null, '83018102', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/04056.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/04104.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:31', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('136', 'Niu Niu-妞妞 (2037)', '/public/uploads/20200110/1578640580872.jpg', 'Niu Niu-妞妞 (2037)', '25 Years Old', '165cm', '36C', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$100/60mins/1FJ', null, '83010834', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nButt Massage/臀推\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nDeep BBBJ/深喉口交\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/1247.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:33', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('137', 'Huan Haun-欢欢 (2063)', '/public/uploads/20200110/1578640586876.jpg', 'Huan Haun-欢欢 (2063)', '24 Years Old', '162cm', '36D', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$100/60mins/1FJ', null, '98947816', null, 'Kiss/轻吻\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\nBJ in Bath/浴中萧\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:34', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('138', 'Xue Er-雪儿 (2013)', '/public/uploads/20200110/1578640601884.jpg', 'Xue Er-雪儿 (2013)', '27 Years Old', '162cm', '36D', null, 'Include Room & Condom 包房包套', 'Choa Chu Kang 蔡厝港', '2', '$120/60mins/1 FJ', null, '83755311', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nAssRim/独龙\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/2115.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:36', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('139', 'Mi Li-米粒 (2065)', '/public/uploads/20200110/1578640605887.jpg', 'Mi Li-米粒 (2065)', '26 Years Old', '164cm', '36E', null, 'Include Room 包房', 'Boon Lay 文礼', '2', '$100/60mins/Massage/1FJ', null, '91633722', null, 'Shower Together/陪洗澡\r\nNude Massage/裸体按摩\r\nTemptation Massage/诱惑按摩\r\nHead, Neck &amp; shoulder Massage/头,颈和肩部按摩\r\nCatbath/漫游\r\nBoobs Massage/胸推\r\nProstate Care/前列腺保养\r\nHand job/打飞机\r\nBreast Fuck/乳交\r\nBBBJ /无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/71642.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:37', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('140', 'PaoPao-泡泡 (2110)', '/public/uploads/20200110/1578640618893.jpg', 'PaoPao-泡泡 (2110)', '24 Years Old', '160cm', '36C', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$100/60mins/1 FJ', null, '98973272', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nAssRim/独龙\r\nBreast Fuck/乳交\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/9012439.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:38', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('141', 'Xiao Ai-小爱 (2098)', '/public/uploads/20200110/1578640631899.jpg', 'Xiao Ai-小爱 (2098)', '26 Years Old', '160cm', '36B', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$100/60mins/2 FJ', null, '93902584', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/224036.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:39', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('142', 'Miao Miao-淼淼 (2099)', '/public/uploads/20200110/1578640638902.jpg', 'Miao Miao-淼淼 (2099)', '26 Years Old', '158cm', '36D', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$100/60mins/2 FJ', null, '90832664', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:40', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('143', 'BingBing-冰冰 (2106)', '/public/uploads/20200110/1578640650909.jpg', 'BingBing-冰冰 (2106)', '23 Years Old', '160cm', '36B', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$80/60mins/simple Massage/FJ', null, '83513405', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/10125546.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/10125552.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:41', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('144', 'Tang Tang-糖糖 (2095)', '/public/uploads/20200110/1578640663915.jpg', 'Tang Tang-糖糖 (2095)', '23 Years Old', '163cm', '34C', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$100/60mins/2 FJ', null, '83541560', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nBreast Fuck/乳交\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:43', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('145', 'Jing Jing-静静 (2045)', '/public/uploads/20200110/1578640681926.jpg', 'Jing Jing-静静 (2045)', '26 Years Old', '162cm', '36C', null, 'Include Room & Condom 包房包套', 'Bukit Gombak 武吉甘柏', '2', '$60/60mins/Simple Massage/CIM', null, '93579304', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nBoobs Massage/胸推\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nHJ/打飞机', 'https://4ni52.com/wp-content/uploads/2019/12/04954.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:44', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('146', 'Mrs Wang-王老师(2034)', '/public/uploads/20200110/1578640683927.jpg', 'Mrs Wang-王老师(2034)', '24 Years Old', '165cm', '36D', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$130/60mins/1FJ', null, '97154388', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/132552.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/132559.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:44', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('147', 'FeiFei-菲菲 (2107)', '/public/uploads/20200110/1578640696934.jpg', 'FeiFei-菲菲 (2107)', '26 Years Old', '158cm', '34B', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$80/60mins/Simple Massage/1FJ', null, '83725879', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/7190710.mp4\r\nhttps://4ni52.com/wp-content/uploads/2020/01/7190716.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:46', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('148', 'Dan Dan-丹丹 (2094)', '/public/uploads/20200110/1578640711943.jpg', 'Dan Dan-丹丹 (2094)', '21 Years Old', '158cm', '36C', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$100/60mins/2 FJ', null, '87324509', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBBBJ/无套口交\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/220023.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:47', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('149', 'Tang Tang-糖糖 (2070)', '/public/uploads/20200110/1578640723949.jpg', 'Tang Tang-糖糖 (2070)', '22 Years Old', '163cm', '36B', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$120/60mins/1FJ', null, '8287 7015', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nAssRim/独龙\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/11/30407.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:48', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('150', 'Mo Mo-沫沫 (2024)', '/public/uploads/20200110/1578640730953.jpg', 'Mo Mo-沫沫 (2024)', '26 Years Old', '160cm', '36C', null, 'Include Room & Condom 包房包套', 'Boon Lay 文礼', '2', '$100/60mins/1 FJ', null, '8422 3692', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM With Cap/带套口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/21721.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:50', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('151', 'Hui  Zi-慧子 (2084)', '/public/uploads/20200110/1578640737957.jpg', 'Hui  Zi-慧子 (2084)', '26 Years Old', '156cm', '36C', null, 'Include Room & Condom 包房包套', 'Lakeside 湖畔', '2', '$100/60mins/2 FJ', null, '97151642', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nAssRim/独龙\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:51', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('152', 'DuDu-嘟嘟 (2103)', '/public/uploads/20200110/1578640759968.jpg', 'DuDu-嘟嘟 (2103)', '23 Years Old', '163cm', '36B', null, 'Include Room & Condom 包房包套', 'Choa Chu Kang 蔡厝港', '2', '$100/60mins/2 FJ', null, '90356815', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/7180326.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:52', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('153', 'YiYi-依依 (2015)', '/public/uploads/20200110/1578640765972.jpg', 'YiYi-依依 (2015)', '25 Years Old', '162cm', '36B', null, 'Include Room & Condom 包房包套', 'Boon Lay 文礼', '2', '$100/60mins/1 FJ', null, '8260 9406', null, 'Shower Together/鸳鸯戏水\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/ 做爱', 'https://4ni52.com/wp-content/uploads/2019/12/0336.mp4\r\nhttps://4ni52.com/wp-content/uploads/2019/12/0341.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:53', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('154', 'Qi Qi-七七 (2039)', '/public/uploads/20200110/1578640767973.jpg', 'Qi Qi-七七 (2039)', '23 Years Old', '158cm', '34C', null, 'Include Room & Condom 包房包套', 'Bukit Gombak 武吉甘柏', '2', '$100/60mins/1FJ', null, '9864 5089', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/4932.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:55', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('155', 'Xiao Qian-小倩 (2027)', '/public/uploads/20200110/1578640783983.jpg', 'Xiao Qian-小倩 (2027)', '27 Years Old', '170cm', '36D', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$120/60mins/1 FJ', null, '8709 3571', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/无套口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/5443.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:56', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('156', 'Na Na-娜娜 (2020)', '/public/uploads/20200110/1578640794990.jpg', 'Na Na-娜娜 (2020)', '25 Years Old', '160cm', '36D', null, 'Include Room & Condom 包房包套', 'Boon Lay 文礼', '2', '$100/60mins/1 FJ', null, '8401 8270', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:57', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('157', 'Sha Sha-莎莎 (2033)', '/public/uploads/20200110/1578640801995.jpg', 'Sha Sha-莎莎 (2033)', '25 Years Old', '160cm', '36C', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$100/60mins/1 FJ', null, '9379 4993', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\n69\r\nCOB/射身\r\nAssRim/独龙\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/10027.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:08:59', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('158', 'Xiao Ya-小雅 (2097)', '/public/uploads/20200110/1578640805998.jpg', 'Xiao Ya-小雅 (2097)', '27 Years Old', '165cm', '36C', null, 'Include Room & Condom 包房包套', 'Yew Tee 油池', '2', '$100/60mins/2 FJ', null, '85918264', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBreast Fuck/乳交\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:09:00', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('159', 'Le Le-乐乐 (2092)', '/public/uploads/20200110/15786408241008.jpg', 'Le Le-乐乐 (2092)', '25 Years Old', '162cm', '34D', null, 'Include Room & Condom 包房包套', 'Chinese Garden 裕华园', '2', '$100/60mins/1 FJ', null, '98069861', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/001550.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:09:01', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('160', 'Xiao Qiao-小乔 (2069)', '/public/uploads/20200110/15786408271010.jpg', 'Xiao Qiao-小乔 (2069)', '22 Years Old', '165cm', '36D', null, 'Include Room & Condom 包房包套', 'Choa Chu Kang 蔡厝港', '2', '$120/60mins/1 FJ', null, '84065854', null, 'Shower Together/陪洗澡\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/Xiao-Qiao-小乔8.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:09:03', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('161', 'JingJing-晶晶 (2111)', '/public/uploads/20200110/15786408481019.jpg', 'JingJing-晶晶 (2111)', '24 Years Old', '164cm', '36C', null, 'Include Room & Condom 包房包套', 'Bukit Batok 武吉巴督', '2', '$100/60mins/1 FJ', null, '97747128', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBreast Fuck/乳交\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/9013702.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:09:04', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('162', 'Tai Yang-太阳 (2093)', '/public/uploads/20200110/15786408651026.jpg', 'Tai Yang-太阳 (2093)', '25 Years Old', '160cm', '36C', null, 'Include Room & Condom 包房包套', 'Chinese Garden 裕华园', '2', '$100/60mins/1FJ', null, '86173969', null, 'Shower Together/陪洗澡\r\nKiss/轻吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2020/01/214633.mp4', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:09:05', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('163', 'Meng Meng-萌萌 (2104)', '/public/uploads/20200110/15786408801035.jpg', 'Meng Meng-萌萌 (2104)', '26 Years Old', '162cm', '36B', null, 'Include Room & Condom 包房包套', 'Choa Chu Kang 蔡厝港', '2', '$100/60mins/2 FJ', null, '91335637', null, 'Shower Together/陪洗澡\r\nFrenching/舌吻\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nBreast Massage/胸推\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nAssRim/独龙\r\nCOB/射身\r\nBJ in Bath/浴中萧\r\nBBBJ/无套口交\r\nCIM/口爆\r\nFJ/做爱', '', null, '0', '1', '1', '1', '2020-03-10', '2020-01-10 14:09:06', '2020-01-10 15:36:54');
INSERT INTO `girls` VALUES ('164', 'Ye Mao-野猫 (2038)', '/public/uploads/20200110/15786408861039.jpg', 'Ye Mao-野猫 (2038)', '27 Years Old', '160cm', '36E', null, 'Include Room & Condom 包房包套', 'Lakeside 湖畔', '2', '$100/60mins/Unlimited FJ', null, '9057 1652', null, 'Shower Together/陪洗澡\r\nStockings Temptation/丝袜诱惑\r\nSimple Massage/简单按摩\r\nCatbath/漫游\r\nNipples &amp; Balls Sucking/舔乳头和蛋蛋\r\nPainting/舔鲍鱼\r\n69\r\nBJ in shower/浴中萧\r\nBBBJ/无套口交\r\nBreast Fuck/乳交\r\nCIM/口爆\r\nFJ/做爱', 'https://4ni52.com/wp-content/uploads/2019/12/5148.mp4', null, '2', '1', '1', '1', '2020-03-10', '2020-01-10 14:01:07', '2020-01-10 16:29:24');

-- ----------------------------
-- Table structure for `members`
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `parent_id` int(8) DEFAULT '0',
  `pwd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `coin` int(8) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1' COMMENT '1正常 2:被冻结',
  `last_login_ip` varchar(50) DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL,
  `register_ip` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('3', '0', 'eyJpdiI6IlE1ZnRlMmRLeFFXcTYzdzBwbUV6ZHc9PSIsInZhbHVlIjoiTVFQaEltR2pwSnRKYTJxUTMyZFN3QT09IiwibWFjIjoiZTJjNDkwMzIxYzk3NWE1OWY3MzlkYmExY2E3NDM3MGQ3YmQzNmMxYTNmMDJmOWM1ZDYzMDIwYzNiNTg1M2Q5NiJ9', 'eleventest', '156156', 'sdfsd@qq.com', '5', '1', '127.0.0.1', '2020-01-05 07:33:05', '127.0.0.2', '2020-01-05 07:46:57', '2020-01-05 07:18:11');
INSERT INTO `members` VALUES ('5', '3', 'eyJpdiI6ImE1T21ld1p1eDJ2NFQzN3Vub0s3ZXc9PSIsInZhbHVlIjoiaGFSVlwvTWZ3S3lmclp5Q3pkWkwzK1E9PSIsIm1hYyI6ImYyNjJjYzExNDc1Y2MxZDU4MTc0ZTBmYWY4YzVlMzY4MDNjNGM0ZjA4OGIwMGE0M2MzOWI0MTg5MTE0YWE0YzMifQ==', 'eleven1', '123123', 'sdfsd@qq.com', '1', '1', '127.0.0.1', '2020-01-08 06:25:46', '127.0.0.1', '2020-01-08 06:25:46', '2020-01-05 07:46:57');
