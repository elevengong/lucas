/*
Navicat MySQL Data Transfer

Source Server         : localmysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lucas

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-01-08 15:20:53
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
INSERT INTO `admin` VALUES ('1', 'admin', 'eyJpdiI6Ink0S0tEemtWN2RzTDhpXC9cLzNlRk5Idz09IiwidmFsdWUiOiJnU1RsK1BpMmtKemlXc2VsUzAyb2xBPT0iLCJtYWMiOiJjMTFiM2RjOTNmYmU3ZjQ4OWM5M2ZhZDgxOTVlNzkyOTNmMmRkNjk5MjMwNzU2NDE0YmRiZDRkYjNhYWI2ZjZlIn0=', '1', '127.0.0.1', '2018-07-09 13:41:55', '2020-01-08 11:02:40', '2020-01-08 11:02:40');

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
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girlphotos
-- ----------------------------
INSERT INTO `girlphotos` VALUES ('1', '1', '/public/uploads/20200106\\2020010614513125915653657424662.jpg');
INSERT INTO `girlphotos` VALUES ('2', '1', '/public/uploads/20200106\\2020010614513150115687128713416.jpg');
INSERT INTO `girlphotos` VALUES ('3', '1', '/public/uploads/20200106\\2020010614513199115713371508791.jpg');
INSERT INTO `girlphotos` VALUES ('4', '1', '/public/uploads/20200106\\2020010614513137915713371665356.jpg');
INSERT INTO `girlphotos` VALUES ('5', '1', '/public/uploads/20200106\\2020010614513261215713371678890.jpg');
INSERT INTO `girlphotos` VALUES ('6', '1', '/public/uploads/20200106\\2020010614513231115713371685090.jpg');
INSERT INTO `girlphotos` VALUES ('7', '1', '/public/uploads/20200106\\2020010614513276915719068215962.jpg');
INSERT INTO `girlphotos` VALUES ('8', '1', '/public/uploads/20200106\\2020010614513297915719068222966.jpg');
INSERT INTO `girlphotos` VALUES ('9', '1', '/public/uploads/20200106\\2020010614513256415667145138685.jpg');
INSERT INTO `girlphotos` VALUES ('10', '1', '/public/uploads/20200106\\2020010614513270515687128709667.jpg');
INSERT INTO `girlphotos` VALUES ('11', '1', '/public/uploads/20200106\\2020010614513268215719068246787.jpg');
INSERT INTO `girlphotos` VALUES ('12', '1', '/public/uploads/20200106\\2020010614513318515719068255041.jpg');
INSERT INTO `girlphotos` VALUES ('13', '1', '/public/uploads/20200106\\2020010614513333515719068272968.jpg');
INSERT INTO `girlphotos` VALUES ('14', '1', '/public/uploads/20200106\\2020010614513371015731825446664.jpg');
INSERT INTO `girlphotos` VALUES ('15', '1', '/public/uploads/20200106\\2020010614513362915731825453689.jpg');
INSERT INTO `girlphotos` VALUES ('16', '1', '/public/uploads/20200106\\2020010614513357315731825461447.jpg');
INSERT INTO `girlphotos` VALUES ('17', '1', '/public/uploads/20200106\\2020010614513326815731825464043.jpg');
INSERT INTO `girlphotos` VALUES ('18', '2', '/public/uploads/20200106\\2020010617581370115735807296733.jpg');
INSERT INTO `girlphotos` VALUES ('19', '2', '/public/uploads/20200106\\2020010617581340515735807396473.jpg');
INSERT INTO `girlphotos` VALUES ('20', '2', '/public/uploads/20200106\\2020010617581421815735807398147.jpg');
INSERT INTO `girlphotos` VALUES ('21', '2', '/public/uploads/20200106\\2020010617581497815735807413942.jpg');
INSERT INTO `girlphotos` VALUES ('22', '2', '/public/uploads/20200106\\2020010617581467315735807423937.jpg');
INSERT INTO `girlphotos` VALUES ('23', '2', '/public/uploads/20200106\\2020010617581443015735807425862.jpg');
INSERT INTO `girlphotos` VALUES ('24', '2', '/public/uploads/20200106\\2020010617581484215735807436036.jpg');
INSERT INTO `girlphotos` VALUES ('25', '2', '/public/uploads/20200106\\2020010617581496015735807343897.jpg');
INSERT INTO `girlphotos` VALUES ('26', '2', '/public/uploads/20200106\\2020010617581437415735807349566.jpg');
INSERT INTO `girlphotos` VALUES ('27', '3', '/public/uploads/20200106\\2020010618074393315768302211067.jpg');
INSERT INTO `girlphotos` VALUES ('28', '3', '/public/uploads/20200106\\2020010618074352115768302257309.jpg');
INSERT INTO `girlphotos` VALUES ('29', '3', '/public/uploads/20200106\\2020010618074360915768302257738.jpg');
INSERT INTO `girlphotos` VALUES ('30', '3', '/public/uploads/20200106\\2020010618074355615768302259757.jpg');
INSERT INTO `girlphotos` VALUES ('31', '3', '/public/uploads/20200106\\2020010618074427115768302228242.jpg');
INSERT INTO `girlphotos` VALUES ('32', '3', '/public/uploads/20200106\\2020010618074428915768302231804.jpg');
INSERT INTO `girlphotos` VALUES ('33', '5', '/public/uploads/20200106\\2020010618181540615743548979904.jpg');
INSERT INTO `girlphotos` VALUES ('34', '5', '/public/uploads/20200106\\2020010618181556415743549004327.jpg');
INSERT INTO `girlphotos` VALUES ('35', '5', '/public/uploads/20200106\\2020010618181554215743549004963.jpg');
INSERT INTO `girlphotos` VALUES ('36', '5', '/public/uploads/20200106\\2020010618181621215743548994323.jpg');
INSERT INTO `girlphotos` VALUES ('37', '5', '/public/uploads/20200106\\20200106181816115743548999983.jpg');
INSERT INTO `girlphotos` VALUES ('38', '4', '/public/uploads/20200106\\2020010618191639715761339029559.jpg');
INSERT INTO `girlphotos` VALUES ('39', '4', '/public/uploads/20200106\\202001061819161215761339148748.jpg');
INSERT INTO `girlphotos` VALUES ('40', '4', '/public/uploads/20200106\\2020010618191620415761339229392.jpg');
INSERT INTO `girlphotos` VALUES ('41', '4', '/public/uploads/20200106\\2020010618191683315761339292107.jpg');
INSERT INTO `girlphotos` VALUES ('42', '4', '/public/uploads/20200106\\2020010618191726815764298761384.jpg');
INSERT INTO `girlphotos` VALUES ('43', '4', '/public/uploads/20200106\\2020010618191724115764298788726.jpg');
INSERT INTO `girlphotos` VALUES ('44', '4', '/public/uploads/20200106\\2020010618191792515764730479454.jpg');
INSERT INTO `girlphotos` VALUES ('45', '4', '/public/uploads/20200106\\2020010618191746815761339167773.jpg');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of girls
-- ----------------------------
INSERT INTO `girls` VALUES ('1', '丰乳肥臀小蛮腰！热情奔放！欢迎品尝！', '/public/uploads/20200106/15782930180dqNM.jpg', 'S+29 Jiu Er（九儿）', '23 Years Old', '160cm', '36E', '45KG', '包房', 'Hotel（酒店）', '1', '$120/1/Massage+HJ', '$1400', '91220738', 'lulu472539520', '1:Simple Massage♥简单按摩\r\n2:Kissing♥轻吻\r\n3:BBBJ♥无套口交\r\n4:Deep Throat♥深喉\r\n5:CIM♥有套口爆\r\n6:Boobs Gliding♥性感胸推\r\n7:Lick Nipples♥舔奶头\r\n8:Boobs Fuck♥乳交\r\n9:Butt Gliding♥性感臀推\r\n10:All Natural Boobs♥全天然胸\r\n11:Stockings Temptation♥丝袜诱惑\r\n12:Uniform seduction♥制服诱惑\r\n13:HJ♥打飞机', 'http://ttvip7.com//upload/video/191019/15714902153757.mp4\r\nhttp://ttvip7.com//upload/video/191108/15732133752429.mp4', 'Menses / 例假', '0', '1', '1', '1', '2020-01-06 15:49:50', '2020-01-06 15:49:50');
INSERT INTO `girls` VALUES ('2', ' 36C妩媚身材！调情高手！欢迎品尝！', '/public/uploads/20200106/1578304564zee6y.jpg', 'M3372 KiKi', '23 Years Old', '165cm', '36C', '49KG', '包房', 'Tanjong Pagar 丹绒巴葛', '2', '$100/45mins/Massage+HJ', null, '90149250', '', '1:Simple Massage♥简单按摩\r\n2:Regular Massage♥正规按摩\r\n3:Kissing♥轻吻\r\n4:BBBJ♥无套口交\r\n5:Roam♥全身漫游\r\n6:Boobs Gliding♥性感胸推\r\n7:Lick Nipples♥舔奶头\r\n8:HJ♥打飞机\r\n9:Shiatsu Massage♥指压按摩\r\n10:Teasing Massage♥挑逗性按摩\r\n11:Head/Neck/Shoulder Massage♥头/颈/肩按摩\r\n12:GFE★女朋友感觉', 'http://ttvip7.com//upload/video/191113/15735807419103.mp4', '', '0', '2', '1', '1', '2020-01-06 17:59:43', '2020-01-06 17:59:43');
INSERT INTO `girls` VALUES ('3', '湖南气质型！大眼睛好身材！欢迎品尝！', '/public/uploads/20200106/1578304995NXNNK.jpg', 'M3576 Tian Tian（甜甜）', '23 Years Old', '161cm', '36D', '48KG', '包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/45mins/Massage+HJ', '', '94683049', '', '1:Simple Massage♥简单按摩\r\n2:Regular Massage♥正规按摩\r\n3:Frenching♥舌吻\r\n4:CBJ♥有套口交\r\n5:CIM♥有套口爆\r\n6:Roam♥全身漫游\r\n7:COB♥射身\r\n8:Boobs Gliding♥性感胸推\r\n9:Boobs Fuck♥乳交\r\n10:Butt Gliding♥性感臀推\r\n11:All Natural Boobs♥全天然胸\r\n12:Stockings Temptation♥丝袜诱惑\r\n13:Uniform seduction♥制服诱惑\r\n14:DongGuan Service♥莞式一条龙\r\n15:HJ♥打飞机', 'http://ttvip7.com/upload/video/191220/15768302308556.mp4', '', '0', '1', '1', '1', '2020-01-06 18:23:04', '2020-01-06 18:23:04');
INSERT INTO `girls` VALUES ('4', '苗条可爱！健康小麦肌肤！小鸟依人！', '/public/uploads/20200106/1578305565ny32D.jpg', 'N3513 Annie（安妮）', '21 Years Old', '160cm', '34B', '44KG', '包房包套', 'Hotel（酒店）', '1', '$220/1/1FJ', '', '96145385', '', '1:Shower together♥鸳鸯浴\r\n2:Shower BJ♥浴中萧\r\n3:Simple Massage♥简单按摩\r\n4:Kissing♥轻吻\r\n5:BBBJ♥无套口交\r\n6:Deep Throat♥深喉\r\n7:CIM♥有套口爆\r\n8:Roam♥全身漫游\r\n9:COB♥射身\r\n10:69Type♥69式\r\n11:Boobs Gliding♥性感胸推\r\n12:Lick Nipples♥舔奶头\r\n13:Painting♥舔鲍鱼\r\n14:Boobs Fuck♥乳交\r\n15:Butt Gliding♥性感臀推\r\n16:FJ♥有套做爱\r\n17:All Natural Boobs♥全天然胸\r\n18:Stockings Temptation♥丝袜诱惑\r\n19:Uniform seduction♥制服诱惑\r\n20:No Indians♥不接印度\r\n21:No Caucasian♥不接洋人', '', '', '0', '1', '1', '1', '2020-01-06 18:14:49', '2020-01-06 18:14:49');
INSERT INTO `girls` VALUES ('5', '高挑苗条！36E皮肤白滑！小鸟依人！', '/public/uploads/20200106/1578305797LWxkz.jpg', 'M3396 Mi Ya（米亞）', '23 Years Old', '165cm', '36E', '48KG', '包房', 'Tanjong Pagar 丹绒巴葛', '1', '$100/45mins/Massage+HJ', '', '98980664', '98980664', '1:Simple Massage♥简单按摩\r\n2:Regular Massage♥正规按摩\r\n3:Frenching♥舌吻\r\n4:CBJ♥有套口交\r\n5:CIM♥有套口爆\r\n6:Roam♥全身漫游\r\n7:COB♥射身\r\n8:Boobs Gliding♥性感胸推\r\n9:Lick Nipples♥舔奶头\r\n10:Boobs Fuck♥乳交\r\n11:Butt Gliding♥性感臀推\r\n12:All Natural Boobs♥全天然胸\r\n13:Stockings Temptation♥丝袜诱惑\r\n14:Uniform seduction♥制服诱惑\r\n15:Rimming♥毒龙', 'http://ttvip7.com//upload/video/191125/15746765525100.mp4', '', '0', '2', '2', '1', '2020-01-08 15:15:14', '2020-01-08 15:15:14');

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
