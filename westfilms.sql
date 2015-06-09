/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : westfilms

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2015-06-09 13:59:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `west_company`
-- ----------------------------
DROP TABLE IF EXISTS `west_company`;
CREATE TABLE `west_company` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '公司ID',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '对应用户名ID',
  `name` varchar(256) NOT NULL COMMENT '公司名称',
  `mail` varchar(50) NOT NULL COMMENT '公司邮箱',
  `tel` varchar(20) NOT NULL COMMENT '公司电话',
  `wechat_url` varchar(128) NOT NULL COMMENT '公司微信二维码链接',
  `introduction` text NOT NULL COMMENT '公司简介',
  `banner_url` varchar(128) NOT NULL COMMENT '网站banner图链接',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='公司信息表';

-- ----------------------------
-- Records of west_company
-- ----------------------------
INSERT INTO `west_company` VALUES ('8', '13', '完美世界', 'i@ztf.me', '13577777775', '../server/Public/Uploads/2015-06-04/2015060414313915517.png', '完美世界是一家网络游戏研发、运营、销售和服务公司。于2004年成立，2007年在美国纳斯达克上市（股票代码：PWRD）。完美世界总部位于北京，在北美、欧洲和日本设有全资子公司自主运营游戏，旗下游戏已授权至亚洲、澳洲、拉丁美洲、俄罗斯及其它俄语地区等多个国家和地区的主要游戏运营商，游戏出口至世界100多个国家和地区，为全球用户提供优质的互联网娱乐服务。', '../server/Public/Uploads/2015-06-06/2015060602114014511.png', '1433527902');
INSERT INTO `west_company` VALUES ('25', '30', '百度科技', 'baidu@baidu.com', '02901236599', '../server/Public/Uploads/2015-06-04/2015060414313915517.png', '百度（Nasdaq：BIDU）是全球最大的中文搜索引擎、最大的中文网站。2000年1月由李彦宏创立于北京中关村，致力于向人们提供“简单，可依赖”的信息获取方式。“百度”二字源于中国宋朝词人辛弃疾的《青玉案·元夕》词句“众里寻他千百度”，象征着百度对中文信息检索技术的执著追求。2015年1月24日，百度创始人、董事长兼CEO李彦宏在百度2014年会暨十五周年庆典上发表的主题演讲中表示，十五年来，百度坚持相信技术的力量，始终把简单可依赖的文化和人才成长机制当成最宝贵的财富，他号召百度全体员工，向连接人与服务的战略目标发起进攻。', '../server/Public/Uploads/2015-06-06/2015060602074541443.png', '1433677125');
INSERT INTO `west_company` VALUES ('26', '31', '阿里巴巴', 'albb@alibaba.com', '01926887895', '', '', '', '1433353280');

-- ----------------------------
-- Table structure for `west_links`
-- ----------------------------
DROP TABLE IF EXISTS `west_links`;
CREATE TABLE `west_links` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接ID',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户UID',
  `name` varchar(128) NOT NULL COMMENT '友情链接名称',
  `logo` varchar(128) NOT NULL COMMENT 'logo链接',
  `info` varchar(512) NOT NULL COMMENT '说明',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of west_links
-- ----------------------------
INSERT INTO `west_links` VALUES ('10', '13', 'Coding', '../server/Public/Uploads/2015-06-04/2015060400382886178.png', 'http://www.coding.net', '1', '1433349509');
INSERT INTO `west_links` VALUES ('11', '13', 'GitHub', '../server/Public/Uploads/2015-06-04/2015060400384225315.png', 'https://github.com', '1', '1433349522');
INSERT INTO `west_links` VALUES ('16', '13', '拉勾网', '../server/Public/Uploads/2015-06-04/2015060400524797969.png', 'http://www.lagou.com/', '1', '1433350367');
INSERT INTO `west_links` VALUES ('17', '13', '哪上班', '../server/Public/Uploads/2015-06-04/2015060400523885899.png', 'https://www.nashangban.com/', '1', '1433350359');
INSERT INTO `west_links` VALUES ('18', '13', '前端网（W3Cfuns）', '../server/Public/Uploads/2015-06-04/2015060400443098571.png', 'http://www.w3cfuns.com/', '1', '1433349871');
INSERT INTO `west_links` VALUES ('19', '13', '慕课网', '../server/Public/Uploads/2015-06-04/2015060400483424246.png', 'http://www.imooc.com/', '1', '1433350115');
INSERT INTO `west_links` VALUES ('22', '13', '百度传课', '../server/Public/Uploads/2015-06-04/2015060400492265787.png', 'http://www.chuanke.com/', '1', '1433350163');
INSERT INTO `west_links` VALUES ('23', '13', 'W3CSchool', '../server/Public/Uploads/2015-06-04/2015060400461750396.jpg', 'http://www.w3cschool.cc/', '0', '1433349978');
INSERT INTO `west_links` VALUES ('26', '13', '365PSD', '../server/Public/Uploads/2015-06-04/2015060400445381324.png', 'http://cn.365psd.com/', '1', '1433349894');
INSERT INTO `west_links` VALUES ('42', '13', 'CSDN', '../server/Public/Uploads/2015-06-04/2015060400431481661.png', 'http://www.csdn.net/', '1', '1433349795');
INSERT INTO `west_links` VALUES ('43', '13', '100offer', '../server/Public/Uploads/2015-06-04/2015060401320268408.png', 'http://100offer.com/', '1', '1433352727');
INSERT INTO `west_links` VALUES ('44', '30', '百度', '../server/Public/Uploads/2015-06-04/2015060413065912896.jpg', 'https://www.baidu.com/', '0', '1433394420');
INSERT INTO `west_links` VALUES ('45', '13', '蘑菇街', '../server/Public/Uploads/2015-06-04/2015060413113814309.png', 'http://www.mogujie.com/', '1', '1433394715');
INSERT INTO `west_links` VALUES ('46', '30', '谷歌', '../server/Public/Uploads/2015-06-06/2015060601133824279.png', '高规格', '0', '1433524421');
INSERT INTO `west_links` VALUES ('47', '13', '易校园', '../server/Public/Uploads/2015-06-06/2015060601562624025.png', 'http://ecampus.ztf.me', '1', '1433527015');
INSERT INTO `west_links` VALUES ('48', '13', 'MyCollege', '../server/Public/Uploads/2015-06-06/2015060601583669625.png', 'http://mycollege.ztf.me', '1', '1433527177');
INSERT INTO `west_links` VALUES ('49', '30', '百度', '../server/Public/Uploads/2015-06-06/2015060610554463646.png', 'https://www.baidu.com/', '1', '1433559369');
INSERT INTO `west_links` VALUES ('50', '30', '222', '../server/Public/Uploads/2015-06-07/2015060719354917930.png', '22', '0', '1433676950');
INSERT INTO `west_links` VALUES ('51', '30', '555', '../server/Public/Uploads/2015-06-07/2015060719390179077.png', '555', '0', '1433677142');
INSERT INTO `west_links` VALUES ('52', '30', '000', '../server/Public/Uploads/2015-06-07/2015060719422554776.png', '000', '0', '1433677346');

-- ----------------------------
-- Table structure for `west_log`
-- ----------------------------
DROP TABLE IF EXISTS `west_log`;
CREATE TABLE `west_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '对应用户ID',
  `type` varchar(32) NOT NULL COMMENT '操作类型 删除：‘del’ 添加：''add'' 编辑：''edit''',
  `target` varchar(32) NOT NULL COMMENT '操作对象 动态：‘news’ 影视：‘movies’  ',
  `target_id` mediumint(8) unsigned NOT NULL COMMENT '操作对象ID',
  `target_name` varchar(128) NOT NULL COMMENT '操作对象具体名称',
  `modify_time` varchar(15) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of west_log
-- ----------------------------
INSERT INTO `west_log` VALUES ('14', '13', 'add', 'links', '3', 'dfdfd', '1432794600');
INSERT INTO `west_log` VALUES ('15', '13', 'del', 'links', '3', 'dfdfd', '1432794608');
INSERT INTO `west_log` VALUES ('16', '13', 'add', 'links', '4', '111', '1432794682');
INSERT INTO `west_log` VALUES ('17', '13', 'edit', 'links', '4', '555', '1432794693');
INSERT INTO `west_log` VALUES ('18', '13', 'del', 'links', '4', '555', '1432794698');
INSERT INTO `west_log` VALUES ('19', '13', 'add', 'links', '5', 'gjg', '1432794756');
INSERT INTO `west_log` VALUES ('20', '13', 'del', 'links', '5', 'gjg', '1432794932');
INSERT INTO `west_log` VALUES ('21', '13', 'add', 'links', '6', 'hgf', '1432795007');
INSERT INTO `west_log` VALUES ('23', '13', 'del', 'links', '6', 'hgf', '1432795013');
INSERT INTO `west_log` VALUES ('24', '13', 'del', 'links', '7', 'hgf', '1432795015');
INSERT INTO `west_log` VALUES ('25', '13', 'add', 'links', '8', 'ggg', '1432795204');
INSERT INTO `west_log` VALUES ('26', '13', 'edit', 'links', '8', 'gggbbb', '1432795213');
INSERT INTO `west_log` VALUES ('27', '13', 'del', 'links', '8', 'gggbbb', '1432795223');
INSERT INTO `west_log` VALUES ('28', '13', 'add', 'links', '9', 'jjj', '1432795338');
INSERT INTO `west_log` VALUES ('29', '13', 'del', 'links', '9', 'jjj', '1432795341');
INSERT INTO `west_log` VALUES ('30', '13', 'add', 'links', '10', 'Coding', '1432795399');
INSERT INTO `west_log` VALUES ('31', '13', 'add', 'links', '11', 'ffff', '1432795409');
INSERT INTO `west_log` VALUES ('32', '13', 'add', 'links', '12', 'fff', '1432795413');
INSERT INTO `west_log` VALUES ('33', '13', 'add', 'links', '13', 'ffbfb', '1432795418');
INSERT INTO `west_log` VALUES ('34', '13', 'add', 'links', '14', 'fbfbfb', '1432795425');
INSERT INTO `west_log` VALUES ('35', '13', 'add', 'links', '15', 'fbfbfb', '1432795430');
INSERT INTO `west_log` VALUES ('36', '13', 'add', 'links', '16', 'bfbfbf', '1432795436');
INSERT INTO `west_log` VALUES ('37', '13', 'add', 'links', '17', 'bfbfbf', '1432795437');
INSERT INTO `west_log` VALUES ('38', '13', 'add', 'links', '18', 'fbfbdfngfng', '1432795442');
INSERT INTO `west_log` VALUES ('39', '13', 'add', 'links', '19', 'gngfngfnnd', '1432795447');
INSERT INTO `west_log` VALUES ('40', '13', 'add', 'links', '20', 'gfngfngf', '1432795451');
INSERT INTO `west_log` VALUES ('41', '13', 'add', 'links', '21', 'gngfngfngfn', '1432795457');
INSERT INTO `west_log` VALUES ('42', '13', 'del', 'links', '21', 'gngfngfngfn', '1432795471');
INSERT INTO `west_log` VALUES ('43', '13', 'edit', 'links', '20', '555555', '1432795487');
INSERT INTO `west_log` VALUES ('44', '13', 'del', 'links', '20', '555555', '1432795495');
INSERT INTO `west_log` VALUES ('45', '13', 'add', 'links', '22', 'fdhfdh', '1432795714');
INSERT INTO `west_log` VALUES ('46', '13', 'add', 'links', '23', 'dsdsd', '1432795720');
INSERT INTO `west_log` VALUES ('47', '13', 'add', 'news', '9', 'fgfgr', '1432796040');
INSERT INTO `west_log` VALUES ('48', '13', 'del', 'news', '9', 'fgfgr', '1432796050');
INSERT INTO `west_log` VALUES ('49', '13', 'add', 'news', '10', 'ngg', '1432796058');
INSERT INTO `west_log` VALUES ('50', '13', 'add', 'news', '11', 'bgbgb', '1432796062');
INSERT INTO `west_log` VALUES ('51', '13', 'add', 'news', '12', 'gbgb', '1432796070');
INSERT INTO `west_log` VALUES ('52', '13', 'add', 'news', '13', 'gbgb', '1432796075');
INSERT INTO `west_log` VALUES ('53', '13', 'add', 'news', '14', 'gbgb', '1432796081');
INSERT INTO `west_log` VALUES ('54', '13', 'add', 'news', '15', 'gbg', '1432796085');
INSERT INTO `west_log` VALUES ('55', '13', 'add', 'news', '16', 'gbgbg', '1432796090');
INSERT INTO `west_log` VALUES ('56', '13', 'add', 'news', '17', 'bgbg', '1432796097');
INSERT INTO `west_log` VALUES ('57', '13', 'add', 'news', '18', 'bgbg', '1432796097');
INSERT INTO `west_log` VALUES ('58', '13', 'add', 'news', '19', 'gbg', '1432796103');
INSERT INTO `west_log` VALUES ('59', '13', 'add', 'news', '20', '555555555555', '1432796110');
INSERT INTO `west_log` VALUES ('60', '13', 'edit', 'news', '11', '5555555555555555555555', '1432796119');
INSERT INTO `west_log` VALUES ('61', '13', 'add', 'news', '21', 'gghgh', '1432796127');
INSERT INTO `west_log` VALUES ('62', '13', 'edit', 'links', '23', 'W3CSchool', '1432796236');
INSERT INTO `west_log` VALUES ('63', '13', 'edit', 'links', '22', '百度传课', '1432796258');
INSERT INTO `west_log` VALUES ('64', '13', 'edit', 'links', '19', '慕课网', '1432796278');
INSERT INTO `west_log` VALUES ('65', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1432796309');
INSERT INTO `west_log` VALUES ('66', '13', 'edit', 'links', '17', '哪上班', '1432796331');
INSERT INTO `west_log` VALUES ('67', '13', 'edit', 'links', '16', '拉勾网', '1432796346');
INSERT INTO `west_log` VALUES ('68', '13', 'edit', 'links', '15', '内推网', '1432796370');
INSERT INTO `west_log` VALUES ('69', '13', 'edit', 'links', '12', 'CSDN', '1432796416');
INSERT INTO `west_log` VALUES ('70', '13', 'edit', 'links', '11', 'GitHub', '1432796443');
INSERT INTO `west_log` VALUES ('71', '13', 'del', 'links', '14', 'fbfbfb', '1432796446');
INSERT INTO `west_log` VALUES ('72', '13', 'del', 'links', '13', 'ffbfb', '1432796448');
INSERT INTO `west_log` VALUES ('73', '13', 'add', 'links', '24', 'rytru', '1432796483');
INSERT INTO `west_log` VALUES ('74', '13', 'edit', 'links', '10', 'Coding', '1432796569');
INSERT INTO `west_log` VALUES ('75', '13', 'del', 'links', '24', 'rytru', '1432796740');
INSERT INTO `west_log` VALUES ('76', '13', 'add', 'links', '25', 'ryrn', '1432796748');
INSERT INTO `west_log` VALUES ('77', '13', 'del', 'links', '25', 'ryrn', '1432796755');
INSERT INTO `west_log` VALUES ('78', '13', 'del', 'news', '21', 'gghgh', '1432799270');
INSERT INTO `west_log` VALUES ('79', '13', 'add', 'links', '26', '365PSD', '1432799378');
INSERT INTO `west_log` VALUES ('80', '13', 'edit', 'links', '26', '365PSD', '1432799383');
INSERT INTO `west_log` VALUES ('81', '13', 'add', 'video', '6', 'trutut', '1432801456');
INSERT INTO `west_log` VALUES ('82', '13', 'add', 'video', '7', 'gjf', '1432803980');
INSERT INTO `west_log` VALUES ('83', '13', 'add', 'video', '8', 'iilui', '1432804006');
INSERT INTO `west_log` VALUES ('84', '13', 'add', 'video', '9', 'jkjhl', '1432806343');
INSERT INTO `west_log` VALUES ('85', '13', 'add', 'video', '10', 'jljhljhl', '1432806350');
INSERT INTO `west_log` VALUES ('86', '13', 'add', 'video', '11', 'jljljhl', '1432806354');
INSERT INTO `west_log` VALUES ('87', '13', 'add', 'video', '12', 'jljhl', '1432806358');
INSERT INTO `west_log` VALUES ('88', '13', 'add', 'video', '13', 'jhljhlhj', '1432806362');
INSERT INTO `west_log` VALUES ('89', '13', 'add', 'video', '14', 'jlhjljhl', '1432806366');
INSERT INTO `west_log` VALUES ('90', '13', 'add', 'video', '15', 'ghkghkh', '1432806472');
INSERT INTO `west_log` VALUES ('91', '13', 'del', 'news', '20', '555555555555', '1432809292');
INSERT INTO `west_log` VALUES ('92', '13', 'del', 'video', '7', 'gjf', '1432814550');
INSERT INTO `west_log` VALUES ('93', '13', 'del', 'video', '15', 'ghkghkh', '1432814556');
INSERT INTO `west_log` VALUES ('94', '13', 'edit', 'video', '14', 'jlhjljhl88588', '1432815930');
INSERT INTO `west_log` VALUES ('95', '13', 'del', 'video', '14', 'jlhjljhl88588', '1432817666');
INSERT INTO `west_log` VALUES ('96', '13', 'add', 'video', '16', '复仇者联盟II', '1432817707');
INSERT INTO `west_log` VALUES ('97', '13', 'edit', 'video', '13', '复仇者联盟I', '1432817734');
INSERT INTO `west_log` VALUES ('98', '13', 'edit', 'video', '12', '钢铁侠III', '1432817746');
INSERT INTO `west_log` VALUES ('99', '13', 'edit', 'video', '11', '美国队长II', '1432817756');
INSERT INTO `west_log` VALUES ('100', '13', 'edit', 'video', '10', '无敌浩克II', '1432817770');
INSERT INTO `west_log` VALUES ('101', '13', 'edit', 'video', '9', '雷神II', '1432817790');
INSERT INTO `west_log` VALUES ('102', '13', 'edit', 'video', '8', '钢铁侠II', '1432817799');
INSERT INTO `west_log` VALUES ('103', '13', 'edit', 'news', '19', '《复联II》票房破十亿啦！', '1432817854');
INSERT INTO `west_log` VALUES ('104', '13', 'add', 'video', '17', '银河护卫队', '1432818073');
INSERT INTO `west_log` VALUES ('105', '13', 'edit', 'news', '18', '西邮移动应用开发实验室——IT大牛的摇篮！', '1432818186');
INSERT INTO `west_log` VALUES ('106', '13', 'del', 'news', '17', 'bgbg', '1432818296');
INSERT INTO `west_log` VALUES ('107', '13', 'edit', 'news', '18', '最近的电影你最喜欢哪一个？', '1432829621');
INSERT INTO `west_log` VALUES ('108', '13', 'del', 'news', '16', 'gbgbg', '1432829656');
INSERT INTO `west_log` VALUES ('109', '13', 'edit', 'news', '15', '《复联II》之后，漫威那部电影再续辉煌？', '1432829728');
INSERT INTO `west_log` VALUES ('110', '13', 'edit', 'news', '14', '《左耳》你看了吗？', '1432829778');
INSERT INTO `west_log` VALUES ('111', '13', 'edit', 'news', '13', '《狼图腾》草原的生存规则', '1432829837');
INSERT INTO `west_log` VALUES ('112', '13', 'edit', 'news', '12', '《明日世界》007勇斗机器人', '1432829890');
INSERT INTO `west_log` VALUES ('113', '13', 'edit', 'news', '11', '《杀破狼》吴京狱中被狂虐', '1432829930');
INSERT INTO `west_log` VALUES ('114', '13', 'edit', 'news', '10', '《战狼》犯我中华者，虽远必诛！', '1432829971');
INSERT INTO `west_log` VALUES ('115', '13', 'edit', 'news', '18', '《目标战》信息化战争', '1432830024');
INSERT INTO `west_log` VALUES ('116', '13', 'edit', 'news', '19', '《复联II》票房破十亿啦！付电话费动画都很丰富fffffffffffffffffffffffffff', '1432830454');
INSERT INTO `west_log` VALUES ('117', '13', 'edit', 'news', '19', '《复联II》票房破十亿啦！付电话费动画都很丰富fffffffffffffffffffffffffffgggggggggggggggggggggggggggggg', '1432830465');
INSERT INTO `west_log` VALUES ('118', '13', 'edit', 'news', '19', '《复联II》票房破十亿！', '1432830720');
INSERT INTO `west_log` VALUES ('119', '13', 'add', 'video', '18', '钢铁侠I', '1432831024');
INSERT INTO `west_log` VALUES ('120', '13', 'add', 'video', '19', '美国队长I', '1432831072');
INSERT INTO `west_log` VALUES ('121', '13', 'add', 'video', '20', '无敌浩克I', '1432831099');
INSERT INTO `west_log` VALUES ('122', '13', 'edit', 'video', '20', '无敌浩克Ifhfdhdhdfhdf', '1432831207');
INSERT INTO `west_log` VALUES ('123', '13', 'edit', 'video', '19', '美国队长I梵蒂冈梵蒂冈梵蒂冈', '1432831350');
INSERT INTO `west_log` VALUES ('124', '13', 'edit', 'video', '19', '美国队长I梵蒂冈梵蒂冈梵蒂冈发过给发个非官方个', '1432831471');
INSERT INTO `west_log` VALUES ('125', '13', 'edit', 'video', '20', '无敌浩克Ifhfdhdhdfhdffffffffffffffffffffffff', '1432831478');
INSERT INTO `west_log` VALUES ('126', '13', 'edit', 'video', '20', '无敌浩克Ifhfdhdhdfhdffffffffffffffffffffffff5555555555555', '1432831485');
INSERT INTO `west_log` VALUES ('127', '13', 'edit', 'video', '20', '无敌浩克', '1432831491');
INSERT INTO `west_log` VALUES ('128', '13', 'edit', 'video', '19', '美国队长I', '1432831497');
INSERT INTO `west_log` VALUES ('129', '13', 'add', 'video', '21', '地发挥好地方', '1432896682');
INSERT INTO `west_log` VALUES ('130', '1', 'del', 'video', '21', '', '1432896688');
INSERT INTO `west_log` VALUES ('131', '1', 'del', 'video', '20', '', '1432896710');
INSERT INTO `west_log` VALUES ('132', '13', 'add', 'video', '22', '无敌浩克', '1432896745');
INSERT INTO `west_log` VALUES ('133', '13', 'add', 'video', '23', 'dvdvd', '1432896756');
INSERT INTO `west_log` VALUES ('134', '1', 'del', 'video', '23', '', '1432896763');
INSERT INTO `west_log` VALUES ('135', '13', 'add', 'video', '24', 'grgrg', '1432896835');
INSERT INTO `west_log` VALUES ('136', '13', 'add', 'video', '25', 'rgrgr', '1432896838');
INSERT INTO `west_log` VALUES ('137', '13', 'del', 'video', '25', 'rgrgr', '1432896841');
INSERT INTO `west_log` VALUES ('138', '13', 'del', 'video', '24', 'grgrg', '1432896928');
INSERT INTO `west_log` VALUES ('139', '13', 'add', 'video', '26', 'ffdf', '1432896961');
INSERT INTO `west_log` VALUES ('140', '13', 'add', 'video', '27', 'dfdf', '1432896964');
INSERT INTO `west_log` VALUES ('141', '13', 'del', 'video', '27', 'dfdf', '1432896966');
INSERT INTO `west_log` VALUES ('142', '1', 'del', 'video', '26', '', '1432896983');
INSERT INTO `west_log` VALUES ('143', '13', 'add', 'video', '28', 'jhg', '1432897008');
INSERT INTO `west_log` VALUES ('144', '13', 'del', 'video', '28', 'jhg', '1432897013');
INSERT INTO `west_log` VALUES ('145', '13', 'add', 'video', '29', 'bmbm', '1432897045');
INSERT INTO `west_log` VALUES ('146', '1', 'del', 'video', '29', '', '1432897144');
INSERT INTO `west_log` VALUES ('147', '13', 'add', 'video', '30', 'bbfgb', '1432897217');
INSERT INTO `west_log` VALUES ('148', '1', 'del', 'video', '30', '', '1432897224');
INSERT INTO `west_log` VALUES ('149', '13', 'add', 'video', '31', 'ffhf', '1432897332');
INSERT INTO `west_log` VALUES ('150', '13', 'del', 'video', '31', 'ffhf', '1432897339');
INSERT INTO `west_log` VALUES ('151', '13', 'add', 'video', '32', 'fhfh', '1432897344');
INSERT INTO `west_log` VALUES ('152', '13', 'edit', 'video', '32', 'fhfh', '1432897407');
INSERT INTO `west_log` VALUES ('153', '13', 'del', 'video', '32', 'fhfh', '1432897416');
INSERT INTO `west_log` VALUES ('154', '13', 'add', 'video', '33', 'vvb', '1432897580');
INSERT INTO `west_log` VALUES ('155', '13', 'edit', 'video', '33', 'vvb', '1432898139');
INSERT INTO `west_log` VALUES ('156', '13', 'del', 'video', '33', 'vvb', '1432898144');
INSERT INTO `west_log` VALUES ('157', '13', 'add', 'video', '34', 'dddd', '1432898148');
INSERT INTO `west_log` VALUES ('158', '13', 'add', 'video', '35', 'ddd', '1432898152');
INSERT INTO `west_log` VALUES ('159', '1', 'del', 'video', '35', '', '1432898196');
INSERT INTO `west_log` VALUES ('160', '13', 'add', 'news', '22', 'ddf', '1432898914');
INSERT INTO `west_log` VALUES ('161', '1', 'del', 'news', '22', 'ddf', '1432899081');
INSERT INTO `west_log` VALUES ('162', '13', 'add', 'news', '23', 'gfhf', '1432899090');
INSERT INTO `west_log` VALUES ('163', '1', 'del', 'news', '23', 'gfhf', '1432899096');
INSERT INTO `west_log` VALUES ('164', '13', 'edit', 'news', '23', 'gfhf', '1432899102');
INSERT INTO `west_log` VALUES ('165', '1', 'del', 'video', '34', '', '1432899135');
INSERT INTO `west_log` VALUES ('166', '13', 'add', 'video', '36', '费vfvvfv', '1432902689');
INSERT INTO `west_log` VALUES ('167', '1', 'del', 'video', '36', '', '1432902707');
INSERT INTO `west_log` VALUES ('168', '13', 'add', 'news', '24', 'dd', '1432902716');
INSERT INTO `west_log` VALUES ('169', '1', 'del', 'news', '24', 'dd', '1432902722');
INSERT INTO `west_log` VALUES ('170', '13', 'add', 'links', '27', 'jh', '1432906040');
INSERT INTO `west_log` VALUES ('171', '1', 'del', 'links', '27', '', '1432906054');
INSERT INTO `west_log` VALUES ('172', '13', 'add', 'news', '25', 'fhfgh', '1432906076');
INSERT INTO `west_log` VALUES ('173', '13', 'add', 'news', '26', 'fhf', '1432906080');
INSERT INTO `west_log` VALUES ('174', '13', 'add', 'news', '27', 'fhf', '1432906085');
INSERT INTO `west_log` VALUES ('175', '13', 'del', 'news', '27', 'fhf', '1432906089');
INSERT INTO `west_log` VALUES ('176', '13', 'del', 'news', '26', 'fhf', '1432906093');
INSERT INTO `west_log` VALUES ('177', '13', 'del', 'news', '25', 'fhfgh', '1432906095');
INSERT INTO `west_log` VALUES ('178', '13', 'add', 'links', '28', 'gjgj', '1432906166');
INSERT INTO `west_log` VALUES ('179', '13', 'add', 'links', '29', 'gjgjg', '1432906170');
INSERT INTO `west_log` VALUES ('180', '1', 'del', 'links', '29', '', '1432906179');
INSERT INTO `west_log` VALUES ('181', '1', 'del', 'links', '28', '', '1432906181');
INSERT INTO `west_log` VALUES ('182', '13', 'add', 'video', '37', 'fgfg', '1432906634');
INSERT INTO `west_log` VALUES ('183', '13', 'add', 'video', '38', 'fgfgf', '1432906638');
INSERT INTO `west_log` VALUES ('184', '13', 'add', 'news', '28', 'fgfgf', '1432906643');
INSERT INTO `west_log` VALUES ('185', '13', 'add', 'news', '29', 'fgf', '1432906648');
INSERT INTO `west_log` VALUES ('186', '13', 'add', 'links', '30', 'gh', '1432906655');
INSERT INTO `west_log` VALUES ('187', '13', 'add', 'links', '31', 'gh', '1432906655');
INSERT INTO `west_log` VALUES ('188', '13', 'add', 'links', '32', 'hghg', '1432906659');
INSERT INTO `west_log` VALUES ('189', '13', 'edit', 'links', '32', 'hghghhhhhhhhhh', '1432906664');
INSERT INTO `west_log` VALUES ('190', '13', 'del', 'links', '30', 'gh', '1432906669');
INSERT INTO `west_log` VALUES ('191', '1', 'del', 'video', '38', '', '1432907176');
INSERT INTO `west_log` VALUES ('192', '1', 'del', 'video', '37', '', '1432907178');
INSERT INTO `west_log` VALUES ('193', '1', 'del', 'links', '32', '', '1432907183');
INSERT INTO `west_log` VALUES ('194', '1', 'del', 'links', '31', '', '1432907185');
INSERT INTO `west_log` VALUES ('195', '1', 'del', 'news', '29', 'fgf', '1432907190');
INSERT INTO `west_log` VALUES ('196', '1', 'del', 'news', '28', 'fgfgf', '1432907192');
INSERT INTO `west_log` VALUES ('197', '13', 'del', 'video', '22', '无敌浩克', '1432907223');
INSERT INTO `west_log` VALUES ('198', '13', 'add', 'video', '39', '无敌浩克', '1432907250');
INSERT INTO `west_log` VALUES ('199', '13', 'add', 'news', '30', 'vfvfvfv', '1433045835');
INSERT INTO `west_log` VALUES ('200', '13', 'edit', 'news', '30', 'vfvfvfv', '1433045841');
INSERT INTO `west_log` VALUES ('201', '13', 'del', 'news', '30', 'vfvfvfv', '1433045846');
INSERT INTO `west_log` VALUES ('202', '1', 'del', 'news', '18', '《目标战》信息化战争', '1433096163');
INSERT INTO `west_log` VALUES ('203', '13', 'add', 'news', '31', 'bmbm', '1433096976');
INSERT INTO `west_log` VALUES ('204', '13', 'del', 'news', '31', 'bmbm', '1433096983');
INSERT INTO `west_log` VALUES ('205', '13', 'add', 'news', '32', 'bnbn', '1433097019');
INSERT INTO `west_log` VALUES ('206', '13', 'add', 'news', '33', 'bnbn', '1433097023');
INSERT INTO `west_log` VALUES ('207', '13', 'add', 'news', '34', 'bnb', '1433097028');
INSERT INTO `west_log` VALUES ('208', '13', 'add', 'news', '35', 'bnb', '1433097032');
INSERT INTO `west_log` VALUES ('209', '13', 'del', 'news', '35', 'bnb', '1433105386');
INSERT INTO `west_log` VALUES ('210', '13', 'del', 'news', '34', 'bnb', '1433105391');
INSERT INTO `west_log` VALUES ('211', '13', 'add', 'news', '36', 'nvnvn', '1433105398');
INSERT INTO `west_log` VALUES ('212', '13', 'add', 'news', '37', 'vnv', '1433105403');
INSERT INTO `west_log` VALUES ('213', '13', 'add', 'links', '33', '唐园庭院', '1433125068');
INSERT INTO `west_log` VALUES ('214', '13', 'del', 'links', '33', '唐园庭院', '1433125106');
INSERT INTO `west_log` VALUES ('215', '13', 'add', 'links', '34', 'dggf', '1433125122');
INSERT INTO `west_log` VALUES ('216', '1', 'del', 'links', '34', '', '1433125139');
INSERT INTO `west_log` VALUES ('217', '13', 'edit', 'links', '26', '365PSD', '1433125421');
INSERT INTO `west_log` VALUES ('218', '13', 'edit', 'links', '26', '365PSD', '1433125474');
INSERT INTO `west_log` VALUES ('219', '13', 'edit', 'links', '26', '365PSD', '1433125488');
INSERT INTO `west_log` VALUES ('220', '13', 'edit', 'news', '37', 'vnv', '1433127953');
INSERT INTO `west_log` VALUES ('221', '13', 'edit', 'news', '37', 'vnv', '1433127967');
INSERT INTO `west_log` VALUES ('222', '13', 'add', 'news', '38', 'tttt', '1433128550');
INSERT INTO `west_log` VALUES ('223', '13', 'edit', 'news', '38', 'ttttfhfh', '1433128563');
INSERT INTO `west_log` VALUES ('224', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1433128716');
INSERT INTO `west_log` VALUES ('225', '13', 'edit', 'links', '11', 'GitHub', '1433128731');
INSERT INTO `west_log` VALUES ('226', '13', 'edit', 'links', '12', 'CSDN', '1433128743');
INSERT INTO `west_log` VALUES ('227', '13', 'add', 'links', '35', 'rfh', '1433128782');
INSERT INTO `west_log` VALUES ('228', '13', 'edit', 'links', '35', 'rfh', '1433128797');
INSERT INTO `west_log` VALUES ('229', '13', 'del', 'links', '35', 'rfh', '1433128804');
INSERT INTO `west_log` VALUES ('230', '1', 'del', 'news', '38', 'ttttfhfh', '1433128847');
INSERT INTO `west_log` VALUES ('231', '13', 'add', 'video', '40', 'fgfgfg', '1433129372');
INSERT INTO `west_log` VALUES ('232', '13', 'edit', 'video', '40', 'fgfgfg', '1433129583');
INSERT INTO `west_log` VALUES ('233', '13', 'add', 'news', '39', 'f', '1433129608');
INSERT INTO `west_log` VALUES ('234', '13', 'edit', 'news', '39', 'f', '1433130283');
INSERT INTO `west_log` VALUES ('235', '13', 'add', 'news', '40', 'vvn', '1433130380');
INSERT INTO `west_log` VALUES ('236', '13', 'edit', 'news', '37', 'vnv', '1433130387');
INSERT INTO `west_log` VALUES ('237', '13', 'edit', 'news', '36', 'nvnvn', '1433130390');
INSERT INTO `west_log` VALUES ('238', '13', 'edit', 'news', '33', 'bnbn', '1433130394');
INSERT INTO `west_log` VALUES ('239', '13', 'edit', 'news', '32', 'bnbn', '1433130400');
INSERT INTO `west_log` VALUES ('240', '22', 'add', 'video', '41', 'vfvfv', '1433130478');
INSERT INTO `west_log` VALUES ('241', '22', 'add', 'video', '42', 'fvfv', '1433130495');
INSERT INTO `west_log` VALUES ('242', '22', 'add', 'news', '41', 'fvfv', '1433130514');
INSERT INTO `west_log` VALUES ('243', '22', 'add', 'links', '36', 'fvfvf', '1433130534');
INSERT INTO `west_log` VALUES ('244', '13', 'add', 'video', '43', 'gjyttyj', '1433136723');
INSERT INTO `west_log` VALUES ('245', '13', 'edit', 'video', '43', 'gjyttyj', '1433136783');
INSERT INTO `west_log` VALUES ('246', '13', 'add', 'video', '44', '边防风暴', '1433164884');
INSERT INTO `west_log` VALUES ('247', '13', 'add', 'news', '42', '地方大幅度', '1433164906');
INSERT INTO `west_log` VALUES ('248', '13', 'add', 'links', '37', '调查调查', '1433164923');
INSERT INTO `west_log` VALUES ('249', '13', 'del', 'links', '37', '调查调查', '1433164930');
INSERT INTO `west_log` VALUES ('250', '1', 'del', 'video', '42', '', '1433165006');
INSERT INTO `west_log` VALUES ('251', '1', 'del', 'news', '40', 'vvn', '1433165017');
INSERT INTO `west_log` VALUES ('252', '1', 'del', 'news', '42', '地方大幅度', '1433165022');
INSERT INTO `west_log` VALUES ('253', '13', 'add', 'video', '45', '地方大幅度', '1433165540');
INSERT INTO `west_log` VALUES ('254', '13', 'edit', 'video', '45', '地方大幅度', '1433165547');
INSERT INTO `west_log` VALUES ('255', '13', 'del', 'video', '45', '地方大幅度', '1433165553');
INSERT INTO `west_log` VALUES ('256', '13', 'add', 'video', '46', '得到', '1433165563');
INSERT INTO `west_log` VALUES ('257', '13', 'del', 'video', '46', '得到', '1433165565');
INSERT INTO `west_log` VALUES ('258', '26', 'add', 'video', '47', 'fff', '1433214490');
INSERT INTO `west_log` VALUES ('259', '26', 'add', 'news', '43', 'fff', '1433214511');
INSERT INTO `west_log` VALUES ('260', '26', 'add', 'links', '38', 'fff', '1433214539');
INSERT INTO `west_log` VALUES ('261', '1', 'del', 'links', '38', '', '1433216132');
INSERT INTO `west_log` VALUES ('262', '13', 'add', 'links', '39', '非人防', '1433270016');
INSERT INTO `west_log` VALUES ('263', '13', 'edit', 'links', '23', 'W3CSchool', '1433270249');
INSERT INTO `west_log` VALUES ('264', '13', 'edit', 'links', '17', '哪上班', '1433270426');
INSERT INTO `west_log` VALUES ('265', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1433270434');
INSERT INTO `west_log` VALUES ('266', '13', 'add', 'links', '40', 'vfvf', '1433270707');
INSERT INTO `west_log` VALUES ('267', '13', 'edit', 'links', '19', '慕课网', '1433270846');
INSERT INTO `west_log` VALUES ('268', '13', 'edit', 'links', '22', '百度传课', '1433270859');
INSERT INTO `west_log` VALUES ('269', '13', 'edit', 'links', '26', '365PSD', '1433270868');
INSERT INTO `west_log` VALUES ('270', '13', 'edit', 'links', '16', '拉勾网', '1433271011');
INSERT INTO `west_log` VALUES ('271', '13', 'edit', 'links', '15', '内推网', '1433271022');
INSERT INTO `west_log` VALUES ('272', '13', 'add', 'links', '41', '555', '1433271045');
INSERT INTO `west_log` VALUES ('273', '13', 'edit', 'links', '10', 'Coding', '1433271121');
INSERT INTO `west_log` VALUES ('274', '13', 'edit', 'links', '11', 'GitHub', '1433271219');
INSERT INTO `west_log` VALUES ('275', '13', 'add', 'video', '48', '他今天', '1433271247');
INSERT INTO `west_log` VALUES ('276', '13', 'edit', 'video', '48', '他今天', '1433271267');
INSERT INTO `west_log` VALUES ('277', '13', 'add', 'news', '44', '烦烦烦', '1433271483');
INSERT INTO `west_log` VALUES ('278', '13', 'edit', 'news', '44', '烦烦烦', '1433271493');
INSERT INTO `west_log` VALUES ('279', '13', 'edit', 'video', '44', '边防风暴', '1433316021');
INSERT INTO `west_log` VALUES ('280', '13', 'edit', 'video', '43', 'gjyttyj', '1433316032');
INSERT INTO `west_log` VALUES ('281', '13', 'edit', 'video', '40', 'fgfgfg', '1433316039');
INSERT INTO `west_log` VALUES ('282', '13', 'edit', 'news', '39', 'f', '1433316057');
INSERT INTO `west_log` VALUES ('283', '13', 'edit', 'news', '37', 'vnv', '1433316065');
INSERT INTO `west_log` VALUES ('284', '13', 'add', 'video', '49', '455', '1433334573');
INSERT INTO `west_log` VALUES ('285', '13', 'add', 'news', '45', 'hgj', '1433337090');
INSERT INTO `west_log` VALUES ('286', '13', 'add', 'news', '46', 'ng', '1433337306');
INSERT INTO `west_log` VALUES ('287', '13', 'add', 'news', '47', 'jkjkjk', '1433337466');
INSERT INTO `west_log` VALUES ('288', '13', 'add', 'news', '48', ',1111', '1433337493');
INSERT INTO `west_log` VALUES ('289', '13', 'del', 'news', '48', ',1111', '1433337586');
INSERT INTO `west_log` VALUES ('290', '13', 'del', 'news', '45', 'hgj', '1433337590');
INSERT INTO `west_log` VALUES ('291', '13', 'del', 'news', '46', 'ng', '1433337592');
INSERT INTO `west_log` VALUES ('292', '13', 'edit', 'news', '47', 'jkjkjk', '1433337640');
INSERT INTO `west_log` VALUES ('293', '1', 'del', 'video', '47', '', '1433349200');
INSERT INTO `west_log` VALUES ('294', '1', 'del', 'video', '43', '', '1433349203');
INSERT INTO `west_log` VALUES ('295', '1', 'del', 'video', '41', '', '1433349205');
INSERT INTO `west_log` VALUES ('296', '1', 'del', 'links', '12', '', '1433349209');
INSERT INTO `west_log` VALUES ('297', '1', 'del', 'links', '36', '', '1433349211');
INSERT INTO `west_log` VALUES ('298', '1', 'del', 'news', '43', 'fff', '1433349216');
INSERT INTO `west_log` VALUES ('299', '1', 'del', 'news', '41', 'fvfv', '1433349219');
INSERT INTO `west_log` VALUES ('300', '13', 'del', 'video', '49', '455', '1433349364');
INSERT INTO `west_log` VALUES ('301', '13', 'del', 'video', '48', '他今天', '1433349366');
INSERT INTO `west_log` VALUES ('302', '13', 'del', 'video', '44', '边防风暴', '1433349368');
INSERT INTO `west_log` VALUES ('303', '13', 'del', 'video', '40', 'fgfgfg', '1433349369');
INSERT INTO `west_log` VALUES ('304', '13', 'del', 'news', '47', 'jkjkjk', '1433349385');
INSERT INTO `west_log` VALUES ('305', '13', 'del', 'news', '44', '烦烦烦', '1433349387');
INSERT INTO `west_log` VALUES ('306', '13', 'del', 'news', '39', 'f', '1433349389');
INSERT INTO `west_log` VALUES ('307', '13', 'del', 'news', '37', 'vnv', '1433349390');
INSERT INTO `west_log` VALUES ('308', '13', 'del', 'links', '41', '555', '1433349399');
INSERT INTO `west_log` VALUES ('309', '13', 'del', 'links', '40', 'vfvf', '1433349400');
INSERT INTO `west_log` VALUES ('310', '13', 'del', 'links', '39', '非人防', '1433349403');
INSERT INTO `west_log` VALUES ('311', '13', 'edit', 'links', '10', 'Coding', '1433349510');
INSERT INTO `west_log` VALUES ('312', '13', 'edit', 'links', '11', 'GitHub', '1433349522');
INSERT INTO `west_log` VALUES ('313', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1433349754');
INSERT INTO `west_log` VALUES ('314', '13', 'add', 'links', '42', 'CSDN', '1433349795');
INSERT INTO `west_log` VALUES ('315', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1433349828');
INSERT INTO `west_log` VALUES ('316', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1433349850');
INSERT INTO `west_log` VALUES ('317', '13', 'edit', 'links', '18', '前端网（W3Cfuns）', '1433349872');
INSERT INTO `west_log` VALUES ('318', '13', 'edit', 'links', '26', '365PSD', '1433349895');
INSERT INTO `west_log` VALUES ('319', '13', 'edit', 'links', '23', 'W3CSchool', '1433349978');
INSERT INTO `west_log` VALUES ('320', '13', 'edit', 'links', '19', '慕课网', '1433350108');
INSERT INTO `west_log` VALUES ('321', '13', 'edit', 'links', '19', '慕课网', '1433350116');
INSERT INTO `west_log` VALUES ('322', '13', 'edit', 'links', '22', '百度传课', '1433350163');
INSERT INTO `west_log` VALUES ('323', '13', 'edit', 'links', '17', '哪上班', '1433350359');
INSERT INTO `west_log` VALUES ('324', '13', 'edit', 'links', '16', '拉勾网', '1433350368');
INSERT INTO `west_log` VALUES ('325', '13', 'edit', 'links', '15', '蘑菇街', '1433350440');
INSERT INTO `west_log` VALUES ('326', '13', 'edit', 'news', '19', '解放军中缅边境军演', '1433351024');
INSERT INTO `west_log` VALUES ('327', '13', 'edit', 'news', '15', '《复联2》内地票房突破14亿 《阿凡达》沦为第三名', '1433351191');
INSERT INTO `west_log` VALUES ('328', '13', 'edit', 'video', '16', '复仇者联盟II', '1433351317');
INSERT INTO `west_log` VALUES ('329', '13', 'edit', 'video', '16', '复仇者联盟II', '1433351333');
INSERT INTO `west_log` VALUES ('330', '13', 'edit', 'video', '18', '钢铁侠I', '1433351386');
INSERT INTO `west_log` VALUES ('331', '13', 'edit', 'video', '19', '美国队长I', '1433351410');
INSERT INTO `west_log` VALUES ('332', '13', 'edit', 'video', '22', '无敌浩克', '1433351485');
INSERT INTO `west_log` VALUES ('333', '13', 'edit', 'video', '17', '银河护卫队', '1433351498');
INSERT INTO `west_log` VALUES ('334', '13', 'edit', 'video', '13', '复仇者联盟I', '1433351515');
INSERT INTO `west_log` VALUES ('335', '13', 'edit', 'video', '8', '钢铁侠II', '1433351527');
INSERT INTO `west_log` VALUES ('336', '13', 'edit', 'video', '9', '雷神II', '1433351538');
INSERT INTO `west_log` VALUES ('337', '13', 'edit', 'video', '12', '钢铁侠III', '1433351549');
INSERT INTO `west_log` VALUES ('338', '13', 'edit', 'video', '11', '美国队长II', '1433351559');
INSERT INTO `west_log` VALUES ('339', '13', 'edit', 'video', '10', '无敌浩克II', '1433351567');
INSERT INTO `west_log` VALUES ('340', '13', 'edit', 'video', '10', '无敌浩克II', '1433351588');
INSERT INTO `west_log` VALUES ('341', '13', 'edit', 'video', '12', '钢铁侠III', '1433351599');
INSERT INTO `west_log` VALUES ('342', '1', 'del', 'news', '14', '《左耳》你看了吗？', '1433351725');
INSERT INTO `west_log` VALUES ('343', '1', 'del', 'news', '11', '《杀破狼》吴京狱中被狂虐', '1433351736');
INSERT INTO `west_log` VALUES ('344', '13', 'edit', 'news', '14', '《左耳》你看了吗？', '1433351859');
INSERT INTO `west_log` VALUES ('345', '13', 'edit', 'news', '13', '《狼图腾》草原的生存规则', '1433351929');
INSERT INTO `west_log` VALUES ('346', '13', 'edit', 'news', '13', '《狼图腾》草原的生存规则', '1433352020');
INSERT INTO `west_log` VALUES ('347', '13', 'edit', 'news', '12', '《美国队长2》超级英雄电影', '1433352114');
INSERT INTO `west_log` VALUES ('348', '13', 'edit', 'news', '12', '《美国队长2》超级英雄电影', '1433352163');
INSERT INTO `west_log` VALUES ('349', '13', 'edit', 'video', '11', '美国队长II', '1433352175');
INSERT INTO `west_log` VALUES ('350', '13', 'edit', 'news', '10', '《战狼》犯我中华者，虽远必诛！', '1433352238');
INSERT INTO `west_log` VALUES ('351', '1', 'del', 'news', '19', '解放军中缅边境军演', '1433352254');
INSERT INTO `west_log` VALUES ('352', '13', 'edit', 'news', '14', '《左耳》青春成长的故事', '1433352300');
INSERT INTO `west_log` VALUES ('353', '13', 'edit', 'video', '16', '复仇者联盟II', '1433352518');
INSERT INTO `west_log` VALUES ('354', '13', 'edit', 'news', '15', '《复联2》内地票房突破14亿 《阿凡达》沦为第三名', '1433352562');
INSERT INTO `west_log` VALUES ('355', '13', 'add', 'links', '43', '100offer', '1433352728');
INSERT INTO `west_log` VALUES ('356', '13', 'add', 'news', '20', 'ttt', '1433393617');
INSERT INTO `west_log` VALUES ('357', '13', 'del', 'news', '20', 'ttt', '1433393630');
INSERT INTO `west_log` VALUES ('358', '30', 'add', 'links', '44', '百度', '1433394420');
INSERT INTO `west_log` VALUES ('359', '1', 'del', 'links', '15', '', '1433394659');
INSERT INTO `west_log` VALUES ('360', '13', 'add', 'links', '45', '蘑菇街', '1433394716');
INSERT INTO `west_log` VALUES ('361', '13', 'add', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆', '1433398284');
INSERT INTO `west_log` VALUES ('362', '13', 'add', 'video', '23', 'dddd', '1433399009');
INSERT INTO `west_log` VALUES ('363', '13', 'add', 'news', '22', 'ddd', '1433399019');
INSERT INTO `west_log` VALUES ('364', '13', 'add', 'links', '46', 'ddd', '1433399027');
INSERT INTO `west_log` VALUES ('365', '1', 'del', 'news', '22', 'ddd', '1433399034');
INSERT INTO `west_log` VALUES ('366', '1', 'del', 'video', '23', '', '1433399044');
INSERT INTO `west_log` VALUES ('367', '1', 'del', 'links', '46', '', '1433399051');
INSERT INTO `west_log` VALUES ('368', '13', 'add', 'video', '24', 'ccc', '1433399389');
INSERT INTO `west_log` VALUES ('369', '13', 'edit', 'video', '24', 'ccc5555', '1433399395');
INSERT INTO `west_log` VALUES ('370', '13', 'del', 'video', '24', 'ccc5555', '1433399399');
INSERT INTO `west_log` VALUES ('371', '13', 'add', 'news', '23', 'hhh', '1433399410');
INSERT INTO `west_log` VALUES ('372', '13', 'edit', 'news', '23', 'hhhhhhhh', '1433399417');
INSERT INTO `west_log` VALUES ('373', '13', 'del', 'news', '23', 'hhhhhhhh', '1433399420');
INSERT INTO `west_log` VALUES ('374', '13', 'add', 'links', '47', 'hhhhh', '1433399429');
INSERT INTO `west_log` VALUES ('375', '13', 'edit', 'links', '47', 'hhhhhhhhhhhhhhhhhhh', '1433399436');
INSERT INTO `west_log` VALUES ('376', '13', 'edit', 'links', '47', 'hhhhhhhhhhhhhhhhhhh', '1433399444');
INSERT INTO `west_log` VALUES ('377', '13', 'del', 'links', '47', 'hhhhhhhhhhhhhhhhhhh', '1433399449');
INSERT INTO `west_log` VALUES ('378', '13', 'add', 'news', '24', '高规格', '1433400953');
INSERT INTO `west_log` VALUES ('379', '13', 'edit', 'news', '24', '高规格', '1433400993');
INSERT INTO `west_log` VALUES ('380', '13', 'del', 'news', '24', '高规格', '1433401000');
INSERT INTO `west_log` VALUES ('381', '13', 'edit', 'video', '19', '美国队长I', '1433401807');
INSERT INTO `west_log` VALUES ('382', '13', 'edit', 'video', '22', '无敌浩克', '1433468591');
INSERT INTO `west_log` VALUES ('383', '13', 'edit', 'video', '22', '无敌浩克11', '1433501445');
INSERT INTO `west_log` VALUES ('384', '13', 'edit', 'video', '22', '无敌浩克', '1433501450');
INSERT INTO `west_log` VALUES ('385', '13', 'edit', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆2111', '1433501464');
INSERT INTO `west_log` VALUES ('386', '13', 'edit', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆', '1433501471');
INSERT INTO `west_log` VALUES ('387', '13', 'edit', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆', '1433502252');
INSERT INTO `west_log` VALUES ('388', '13', 'add', 'news', '22', '方法', '1433502538');
INSERT INTO `west_log` VALUES ('389', '13', 'del', 'news', '22', '方法', '1433502542');
INSERT INTO `west_log` VALUES ('390', '13', 'add', 'video', '23', '烦烦烦', '1433502548');
INSERT INTO `west_log` VALUES ('391', '13', 'del', 'video', '23', '烦烦烦', '1433502551');
INSERT INTO `west_log` VALUES ('392', '13', 'edit', 'video', '19', '美国队长I', '1433510402');
INSERT INTO `west_log` VALUES ('393', '13', 'edit', 'video', '11', '美国队长II', '1433510505');
INSERT INTO `west_log` VALUES ('394', '13', 'edit', 'video', '11', '美国队长II', '1433510537');
INSERT INTO `west_log` VALUES ('395', '13', 'edit', 'video', '18', '钢铁侠I', '1433510541');
INSERT INTO `west_log` VALUES ('396', '13', 'edit', 'video', '17', '银河护卫队', '1433510546');
INSERT INTO `west_log` VALUES ('397', '13', 'edit', 'video', '16', '复仇者联盟II', '1433510551');
INSERT INTO `west_log` VALUES ('398', '13', 'edit', 'video', '13', '复仇者联盟I', '1433510556');
INSERT INTO `west_log` VALUES ('399', '13', 'edit', 'video', '12', '钢铁侠III', '1433510560');
INSERT INTO `west_log` VALUES ('400', '13', 'edit', 'video', '10', '无敌浩克II', '1433510569');
INSERT INTO `west_log` VALUES ('401', '13', 'edit', 'video', '9', '雷神II', '1433510574');
INSERT INTO `west_log` VALUES ('402', '13', 'edit', 'video', '8', '钢铁侠II', '1433510578');
INSERT INTO `west_log` VALUES ('403', '30', 'add', 'video', '24', '烦烦烦', '1433524375');
INSERT INTO `west_log` VALUES ('404', '30', 'add', 'news', '23', '高规格', '1433524394');
INSERT INTO `west_log` VALUES ('405', '30', 'edit', 'news', '23', '高规格高规格', '1433524401');
INSERT INTO `west_log` VALUES ('406', '30', 'add', 'links', '46', '谷歌', '1433524421');
INSERT INTO `west_log` VALUES ('407', '30', 'edit', 'video', '24', '烦烦烦', '1433524480');
INSERT INTO `west_log` VALUES ('408', '30', 'del', 'links', '46', '谷歌', '1433524806');
INSERT INTO `west_log` VALUES ('409', '30', 'del', 'news', '23', '高规格高规格', '1433524811');
INSERT INTO `west_log` VALUES ('410', '30', 'del', 'video', '24', '烦烦烦', '1433525045');
INSERT INTO `west_log` VALUES ('411', '13', 'edit', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆', '1433526450');
INSERT INTO `west_log` VALUES ('412', '13', 'add', 'links', '47', '易校园', '1433527015');
INSERT INTO `west_log` VALUES ('413', '13', 'add', 'links', '48', 'MyCollege', '1433527177');
INSERT INTO `west_log` VALUES ('414', '1', 'del', 'links', '44', '', '1433527208');
INSERT INTO `west_log` VALUES ('415', '1', 'del', 'links', '23', '', '1433527215');
INSERT INTO `west_log` VALUES ('416', '13', 'edit', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆000', '1433529136');
INSERT INTO `west_log` VALUES ('417', '13', 'edit', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆', '1433529146');
INSERT INTO `west_log` VALUES ('418', '30', 'add', 'links', '49', '百度', '1433559369');
INSERT INTO `west_log` VALUES ('419', '30', 'add', 'video', '25', '顶顶顶', '1433669526');
INSERT INTO `west_log` VALUES ('420', '30', 'del', 'video', '25', '顶顶顶', '1433669530');
INSERT INTO `west_log` VALUES ('421', '30', 'add', 'video', '26', '呀呀呀', '1433671237');
INSERT INTO `west_log` VALUES ('422', '30', 'del', 'video', '26', '呀呀呀', '1433671243');
INSERT INTO `west_log` VALUES ('423', '30', 'add', 'video', '27', '222', '1433671858');
INSERT INTO `west_log` VALUES ('424', '30', 'del', 'video', '27', '222', '1433671861');
INSERT INTO `west_log` VALUES ('425', '30', 'add', 'video', '28', '000', '1433674065');
INSERT INTO `west_log` VALUES ('426', '30', 'add', 'video', '29', '000', '1433674274');
INSERT INTO `west_log` VALUES ('427', '30', 'add', 'video', '30', '000', '1433674642');
INSERT INTO `west_log` VALUES ('428', '30', 'edit', 'video', '30', '00033', '1433675019');
INSERT INTO `west_log` VALUES ('429', '30', 'del', 'video', '30', '00033', '1433675085');
INSERT INTO `west_log` VALUES ('430', '30', 'add', 'video', '31', '000', '1433676010');
INSERT INTO `west_log` VALUES ('431', '30', 'edit', 'video', '31', '000555', '1433676015');
INSERT INTO `west_log` VALUES ('432', '30', 'edit', 'video', '31', '888', '1433676024');
INSERT INTO `west_log` VALUES ('433', '30', 'edit', 'video', '31', '888', '1433676030');
INSERT INTO `west_log` VALUES ('434', '30', 'add', 'news', '22', '111', '1433676172');
INSERT INTO `west_log` VALUES ('435', '30', 'edit', 'news', '22', '111', '1433676180');
INSERT INTO `west_log` VALUES ('436', '30', 'add', 'links', '50', '222', '1433676943');
INSERT INTO `west_log` VALUES ('437', '30', 'edit', 'links', '50', '222', '1433676950');
INSERT INTO `west_log` VALUES ('438', '30', 'del', 'links', '50', '222', '1433676954');
INSERT INTO `west_log` VALUES ('439', '30', 'add', 'links', '51', '555', '1433677136');
INSERT INTO `west_log` VALUES ('440', '30', 'edit', 'links', '51', '555', '1433677142');
INSERT INTO `west_log` VALUES ('441', '30', 'del', 'links', '51', '555', '1433677146');
INSERT INTO `west_log` VALUES ('442', '30', 'del', 'video', '31', '888', '1433677155');
INSERT INTO `west_log` VALUES ('443', '30', 'del', 'news', '22', '111', '1433677158');
INSERT INTO `west_log` VALUES ('444', '30', 'add', 'video', '32', '000', '1433677303');
INSERT INTO `west_log` VALUES ('445', '30', 'edit', 'video', '32', '000', '1433677309');
INSERT INTO `west_log` VALUES ('446', '30', 'edit', 'video', '32', '000', '1433677315');
INSERT INTO `west_log` VALUES ('447', '30', 'add', 'news', '23', '5555', '1433677324');
INSERT INTO `west_log` VALUES ('448', '30', 'edit', 'news', '23', '5555', '1433677332');
INSERT INTO `west_log` VALUES ('449', '30', 'add', 'links', '52', '000', '1433677339');
INSERT INTO `west_log` VALUES ('450', '30', 'edit', 'links', '52', '000', '1433677347');
INSERT INTO `west_log` VALUES ('451', '30', 'del', 'links', '52', '000', '1433677362');
INSERT INTO `west_log` VALUES ('452', '30', 'del', 'news', '23', '5555', '1433677367');
INSERT INTO `west_log` VALUES ('453', '30', 'del', 'video', '32', '000', '1433677371');
INSERT INTO `west_log` VALUES ('454', '13', 'add', 'news', '24', '555', '1433764988');
INSERT INTO `west_log` VALUES ('455', '13', 'add', 'news', '25', '555', '1433765001');
INSERT INTO `west_log` VALUES ('456', '13', 'add', 'news', '26', '222', '1433765069');
INSERT INTO `west_log` VALUES ('457', '13', 'add', 'news', '27', '222', '1433765272');
INSERT INTO `west_log` VALUES ('458', '13', 'add', 'news', '28', '22', '1433765282');
INSERT INTO `west_log` VALUES ('459', '13', 'add', 'news', '22', '55', '1433824970');
INSERT INTO `west_log` VALUES ('460', '13', 'del', 'news', '22', '55', '1433824974');

-- ----------------------------
-- Table structure for `west_news`
-- ----------------------------
DROP TABLE IF EXISTS `west_news`;
CREATE TABLE `west_news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '对应用户ID',
  `title` varchar(256) NOT NULL COMMENT '文章title',
  `big_img` varchar(128) NOT NULL COMMENT '文章大题图',
  `thumbnail` varchar(128) NOT NULL COMMENT '缩略图',
  `summary` text NOT NULL COMMENT '文章摘要',
  `author` varchar(64) NOT NULL COMMENT '作者',
  `source` varchar(128) NOT NULL COMMENT '来源',
  `content` text NOT NULL COMMENT '文章内容',
  `views` mediumint(8) NOT NULL COMMENT '浏览次数',
  `release_time` varchar(15) NOT NULL COMMENT '发布时间',
  `hot` tinyint(1) NOT NULL COMMENT '是否热点',
  `status` tinyint(1) NOT NULL COMMENT '新闻状态',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='新闻动态表';

-- ----------------------------
-- Records of west_news
-- ----------------------------
INSERT INTO `west_news` VALUES ('10', '13', '《战狼》犯我中华者，虽远必诛！', 'no', '../server/Public/Uploads/2015-06-04/2015060401235547778.jpg', '《战狼》是由吴京执导的现代军事战争片，该片由吴京，余男、倪大红、斯科特·阿金斯 、周晓鸥等主演', '秦始皇', '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;痞性十足的冷锋&lt;/span&gt;&lt;i&gt;（&lt;/i&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/109016/5786168.htm&quot;&gt;&lt;i&gt;吴京&lt;/i&gt;&lt;/a&gt;&lt;i&gt;饰）&lt;/i&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;屡屡惹祸，有人说他是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/27970/8045393.htm&quot;&gt;流氓&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/376459/11018245.htm&quot;&gt;痞子&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;， 也有人说他是英雄，是传奇，在一次行动中冷锋违抗军令打死了&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/1335/5126277.htm&quot;&gt;恐怖分子&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，要被开除出队，却意外得到了神秘部队战狼的接纳，但本想换个地方继续惹祸的他却跳进了另外一个深渊，冷傲的战狼副队长，擦出暧昧火花的性感女队长&lt;/span&gt;&lt;i&gt;（&lt;/i&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/341366.htm&quot;&gt;&lt;i&gt;余男&lt;/i&gt;&lt;/a&gt;&lt;i&gt;饰），&lt;/i&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;心计颇深腹黑的毒枭，枉死的队友，雇佣兵跨过边境线入侵中国，一切都使他陷入了麻烦中。一切都在考验这个团队的毒瘤冷锋，他不知该何去何从。&lt;/span&gt;', '1', '1432796058', '0', '1', '1433352238');
INSERT INTO `west_news` VALUES ('12', '13', '《美国队长2》超级英雄电影', 'no', '../server/Public/Uploads/2015-06-04/2015060401224189262.jpg', '《美国队长2》是2014年上映的超级英雄电影，改编自漫威漫画，是漫威电影宇宙的第九部影片', '秦始皇', '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在经历了《复仇者联盟》的纽约大战后，美国队长史蒂夫·罗杰斯如今在华盛顿过着恬淡的生活，努力尝试着融入现代社会。然而当一名神盾局同事遭遇袭击后，史蒂夫被迫卷入了一场威胁全球安危的阴谋。他与黑寡妇携手出击，一边防备欲将自己灭口的杀手，一边努力揭露这个巨大阴谋的真面目。而当敌人的邪恶计划全局曝光后，美国队长和黑寡妇得到了一位新同盟“猎鹰”的协助。然而他们也发现自己将要面临的，是前所未遇、出乎意料的黑暗劲敌——冬兵。&lt;/span&gt;', '0', '1432796070', '0', '1', '1433352163');
INSERT INTO `west_news` VALUES ('13', '13', '《狼图腾》草原的生存规则', 'no', '../server/Public/Uploads/2015-06-04/2015060401201891127.jpg', '《狼图腾》是一部以狼为叙述主体的小说，讲述了上个世纪六七十年代一位知青在内蒙古草原插队时与草原狼、游牧民族相依相存的故事。', '秦始皇', '', '&lt;p&gt;\n	&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;故事的背景发生在20世纪60年代末，&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/327945.htm&quot;&gt;中国大陆&lt;/a&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/5318.htm&quot;&gt;内蒙古&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;最后一块靠近边境的原始草原。这里的蒙古牧民还保留着&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/6304/6506735.htm&quot;&gt;游牧民族&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;的生态特点，他们自由而浪漫地在草原上放养着牛、羊，与成群的强悍的草原狼共同维护着草原的生态平衡。他们憎恨着狼――狼是侵犯他们家园的敌人；他们同时也敬畏着狼――草原狼帮助蒙古牧民猎杀着草原上不能够过多承载的食草动物：黄羊、兔子和大大小小的草原鼠。&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/36679.htm&quot;&gt;草原狼&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;是蒙古民族的原始图腾。狼的凶悍、残忍、智慧和团队精神，狼的军事才能和组织分工，曾经是13世纪蒙古军队征战欧亚大陆的天然教官和进化的发动机。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;正是蒙古民族的历史和神秘，草原的广阔和浪漫，将本书的主人公、一个叫陈阵的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/3888727/8257523.htm&quot;&gt;北京青年&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;带进了草原。很快，陈阵发现草原并不全是浪漫和自由。牧民们为了保护自己的财产必须和狼进行战斗。他亲眼目睹蒙古的女人和小孩与偷袭羊群的狼――像豹子一样大的狼――徒手搏斗。也曾误入狼群、并亲眼看见群狼怎样在头狼的指挥下，调兵遣将围猎几百只黄羊。但是，人却抢了狼储存的食物。为了报复人的贪婪，狼利用冬季风雪和夏季蚊灾的掩护，发动了两次大规模的偷袭&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/828326/15622661.htm&quot;&gt;军马&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;群的残酷而壮烈的战役。于是人又被激怒了。来自于&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/8283972.htm&quot;&gt;农耕民族&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;的干部不顾蒙古牧民的反对，开始了大规模的围猎狼群的战斗。狼在死亡前的尊严和牺牲精神震撼了陈阵。陈阵和他的朋友亲自掏了一窝&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/8310.htm&quot;&gt;小狼&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，并且养了其中的一只。他要通过一只小狼的成长，探索狼的习性和狼的哲学。通过一系列的令人陶醉的有趣的故事，陈阵发现狼是动物中唯一不可驯服的、十分神秘的动物。比如，第一次面对食物或者面对大批食物的时候，会举行跑圈，类似现代宗教的感恩仪式或者祭祀；比如，狼一旦离开大地就会颤抖无力，又像希腊神话中的安泰。进而，陈阵又发现蒙古民族不仅将狼作为自己民族的图腾崇拜的对象，而且，死后又将自己的尸体放到狼出没的地方，实施“天葬”。蒙古牧民相信狼会将他们的灵魂带上“&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/328468.htm&quot;&gt;腾格里&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;”（蒙语：天）。狼是蒙古人敬畏的敌人，也是他们相伴一生、甚至是来生的朋友。正是蒙古人带着狼的精神征服了差不多半个地球，开通了东西方商业贸易与文化的交流。&lt;/span&gt;&lt;br /&gt;\n&lt;/span&gt;\n&lt;/p&gt;', '1', '1432796075', '0', '1', '1433352020');
INSERT INTO `west_news` VALUES ('14', '13', '《左耳》青春成长的故事', 'no', '../server/Public/Uploads/2015-06-04/2015060401170186040.jpg', '《左耳》是饶雪漫编著的作品，讲述关于青春成长的故事', '汉武帝', '', '&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\n	《左耳》是&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/139467.htm&quot;&gt;饶雪漫&lt;/a&gt;编著的作品，讲述关于青春成长的故事。生动地塑造了&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/2920578/15604433.htm&quot;&gt;小耳朵&lt;/a&gt;、吧啦、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/259635.htm&quot;&gt;张漾&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1456649.htm&quot;&gt;许弋&lt;/a&gt;等一批性格迥异的年轻人的形象，并用极富张力的文字完美展现了当下青年人成长时期的疼痛和美好。\n&lt;/div&gt;\n&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\n	《左耳》讲述的故事有着作者特有的快速推进、曲折并意外不断的特点，四个主要人物的塑造尤其成功，是一部倾注着真诚情感同时真实深刻表现青春少年们生活、理想与爱情的优秀作品。\n&lt;/div&gt;', '2', '1432796081', '0', '1', '1433352300');
INSERT INTO `west_news` VALUES ('15', '13', '《复联2》内地票房突破14亿 《阿凡达》沦为第三名', 'no', '../server/Public/Uploads/2015-06-04/2015060401292016054.png', '截止至5月30日晚，电影《复仇者联盟2：奥创纪元》（以下简称《复联2》）的累计票房已经逼近14亿，超越了13.78亿的《阿凡达》，成为内地单片票房排行榜上的第三名。', '秦始皇', '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;身经百战的超级英雄们产生了职业倦怠，已经卸下钢铁战甲的托尼·斯塔克因此发明了“奥创”——有自我意&lt;/span&gt;&lt;a class=&quot;lemma-album layout-right nslog:10000206&quot; href=&quot;http://baike.baidu.com/picture/14403977/15002119/17345950/9345d688d43f8794c9e52394d71b0ef41bd53a75.html?fr=lemma&amp;amp;ct=cover&quot; target=&quot;_blank&quot;&gt; \n&lt;div class=&quot;album-wrap&quot; style=&quot;border:1px solid #E0E0E0;&quot;&gt;\n	&lt;img class=&quot;picture&quot; alt=&quot;复仇者联盟2：奥创纪元 官方剧照&quot; src=&quot;http://f.hiphotos.baidu.com/baike/s%3D250/sign=e09695994c540923ae69647ba259d1dc/9345d688d43f8794c9e52394d71b0ef41bd53a75.jpg&quot; style=&quot;width:250px;height:104px;&quot; /&gt; \n&lt;/div&gt;\n&lt;div class=&quot;description&quot; style=&quot;padding:8px 7px;color:#555555;font-size:12px;font-family:simSun;&quot;&gt;\n	复仇者联盟2：奥创纪元 官方剧照&amp;nbsp;&lt;span class=&quot;number&quot; style=&quot;color:gray;&quot;&gt;(80张)&lt;/span&gt; \n&lt;/div&gt;\n&lt;div class=&quot;albumBg&quot;&gt;\n	&lt;div class=&quot;albumBgFir&quot; style=&quot;margin:0px auto;&quot;&gt;\n	&lt;/div&gt;\n	&lt;div class=&quot;albumBgSec&quot; style=&quot;margin:0px auto;&quot;&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;识、有学习能力的人工智能机器人，并将指挥机器人军团的重任交给奥创。令超级英雄们始料不及的是，不断进化的奥创得出了“人类是地球上最大的威胁”这一结论，进而开始实施清洗人类的毁灭计划。有强大能力的改造人兄妹快银和猩红女巫也成为奥创的帮手，四处制造麻烦。复仇者联盟必须再度集合，解决这个由他们亲手制造的危机。&lt;/span&gt;', '0', '1432796085', '0', '1', '1433352562');
INSERT INTO `west_news` VALUES ('21', '13', '《匆匆那年》不悔梦归处，只恨太匆匆', 'no', '../server/Public/Uploads/2015-06-04/2015060601472753311.jpg', '根据九夜茴同名小说改编。电影讲述了阳光少年陈寻（彭于晏 饰）、痴心女孩方茴（倪妮 饰）、纯情备胎赵烨（郑恺 饰）、温情暖男乔然（魏晨 饰）、豪放女神林嘉茉（张子萱 饰）这群死党跨越十五年的青春、记忆与友情。', '青葱', '', '&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;这部片子并没有我期待中的好看，电影和片名一样拍得十分匆匆，最终拍成了一个散文式的mv，中途间或出现的字幕让人以为在做综卷调查。但它还原了每个人都有过的青春记忆，还是慢慢看痛了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　如果不是彭大大主演，估计就给两星了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　但出于偏心，冲着爱了八年的男神+去婚礼戏探过班，就打了四星。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　差的都有那么多人说了，那我就说点打动人的吧。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　虽然片子就像MV似的抒情散乱，但有几处还很动人美妙。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　方茴在黑板上写字，陈寻倚靠在教室前门，微笑地看着她。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻在前面快走，他知道方茴在后面，笑得不露声色，方茴在前小碎步地快跑，陈寻追了上去。这种心照不宣看得怦然心动。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　喜欢一个人会是什么样子？眼里都有光照进来。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻反穿校服，只为了让她在人群中第一眼看到自己。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　林嘉茉喜欢苏凯，便用他的名字缩写的钱去买优酸乳。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她只想通过百转千回的方式，告诉他，我暗恋你呀。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　一张张带有“sk”开头的一元人命币就在苏凯眼前，哪知人家不解风情，转身走了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　但是赵烨给了她一叠一块的，说，&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“我给你攒的，sk开头的钱”。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　在沙滩上，两人约定写出彼此喜欢的人的名字。赵烨写了林嘉茉，而她写了苏凯。她说，我写完啦，便欢快地跑开。他说你还没看我写的呢，还没说完，她早已跑远。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　他苦笑，将苏凯的名字抹去，写上了自己的名字，假装她喜欢的人是自己。然后，换上高兴的表情，在沙滩上追她。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　所谓爱情不过如此，我爱你，你不爱我；他爱我，我不爱他。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　登对多难，于是只剩下了相互追逐。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　林嘉茉编了一条那时候最流行的塑料手链，送给苏凯，却骗他，这是隔壁班的某某女生托我转交给你的。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　撒了一个善意的小谎，只是为了让他不尴尬地收下自己亲手做的礼物，哪怕他并不知道。但只要看他戴着，心里就能甜出一条银河系的密度。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　但是苏凯一本正经地告诉她，让她转告“那位同学”，好好学习，为社会主义奋斗。哈哈哈哈哈哈哈。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　赵烨手臂受伤，他们在石膏上集体签名。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻方茴恋爱，他们就在树上一起刻字。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　唯有青春时期热情并且郑重其事，成年以后我们谁也不会再做。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　当年的他们好幼稚啊，但幼稚得多开心。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　毕业时刻，陈寻唱歌，方茴去抱住他，许愿。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“我们以后会一直在一起吗？”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“会。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“会结婚吗，会生孩子吗，一起晒被子吃早餐吗……”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“一定会。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　年轻的我们怎么会知道，对方在发誓的时候都是真的觉得自己一定不会违背承诺，而在反悔的时候也都是真的觉得自己不能做到。所以誓言这种东西无法衡量坚贞，也不能判断对错，它只能证明，在说出来的那一刻，彼此曾经真诚过。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　分手后再聚，方茴扛了两箱酒，终于肯暴露脆弱，喝醉哀求陈寻不要分手。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　喜欢方茴的新概念王子乔然看不下去，几个人打了起来。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“高兴吗，高兴了就他妈散伙吧。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　赵烨摔了当初大家一起签名的石膏。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　林嘉茉用攒的SK开头的钱赔了老板。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻两手空空地背对大家离去。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　青春残酷之处在于，永远都以遗憾和惨烈收尾。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻说，男人会遇见两个女孩，一个是陆地，让他感到安全。一个是天空上的鸟，陪他一起高飞。如果方茴是陆地，那沈晓棠，便是能陪他飞翔的鸟。李碧华在《青蛇》里也写过，每个男人，都希望他生命中有两个女人：白蛇和青蛇。同期的，相间的，点缀他荒芜的命运。——只是，当他得到白蛇，她渐渐成了朱门旁惨白的余灰；那青蛇，却是树顶青翠欲滴爽脆刮辣的嫩叶子。当他得到了青蛇，她却是百子柜中闷绿的山草药；而白蛇，抬尽了头方见天际皑皑飘飞柔情万缕新雪花。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　在他在陪同方茴打完别人的孩子，抱着她时，他还是反悔了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“我想从这里重新来过，和之前不一样的重新来过，因为，我后悔了。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　回到他打球那天，人群定格，方茴向他跑过来，世界只有他们。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　回到方茴在寝室崴到脚跌倒没接到他电话那天，他没有选择和沈晓棠去弹吉他。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　回到他和沈晓棠演出那天，方茴打电话给他，问他喜不喜欢沈晓棠，他的回答不是“不知道”，而是，“我爱的人是你啊”。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　再回到很久以前，也许重来也是无用。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　黄伟文有一句歌词是怎么唱的。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　【其实你我这美梦，气数早已尽，重来也是无用。】&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　他简单纯粹热情，而她敏感骄傲倔强。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她期待的他不懂，他想给出她退缩。终归是要错过的。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　于是时间过去十五年后，他们谁也没有和谁在一起。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　拍DV的女孩问陈寻有什么话想对方茴说时，他看着镜头，说，你好吗。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　DV女孩翻了一个白眼走了。他低下头，重复地念，方茴，你好吗。方茴。像当年他喜欢她的时候，人群里独独喜爱反复地念她的名字。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“方茴。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“怎么了？”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“没事。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“方茴。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“干嘛？”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“没事。就是想叫你名字。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　DV女孩拍远在法国的方茴，问她有什么时候话想对陈寻说。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她已亭亭，一袭红裙，美得如梦似幻。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她转过头来，很大气地笑笑。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻翻到当年方茴还他的原理书，上面写着：&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　不悔梦归处，只恨太匆匆。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“永远不是以前，也不是以后，我们在一起的那些瞬间，就是永远。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　最好的结局不过如此。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　谁没有被辜负过，谁没有去辜负过。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　如果过去还值得眷恋，别太快冰释前嫌。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　我们要相互亏欠，要不然凭何怀缅。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　错过还有记忆，唯愿天各一方，互相安好，再不打扰。&lt;/span&gt;', '2', '1433398284', '0', '1', '1433529145');
INSERT INTO `west_news` VALUES ('22', '13', '55', 'no', '../server/Public/Uploads/2015-06-09/2015060912424723652.png', '555', '55', '', '555', '0', '1433824970', '0', '0', '1433824970');

-- ----------------------------
-- Table structure for `west_user`
-- ----------------------------
DROP TABLE IF EXISTS `west_user`;
CREATE TABLE `west_user` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户UID',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(40) NOT NULL COMMENT '用户密码',
  `group` varchar(32) NOT NULL COMMENT '所属群组',
  `status` tinyint(1) unsigned NOT NULL COMMENT '用户状态',
  `modify_time` varchar(10) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of west_user
-- ----------------------------
INSERT INTO `west_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'manage', '1', '1430900305');
INSERT INTO `west_user` VALUES ('13', 'ztf', '09a6f4ead95fb05ee29ab9e7d1219e33', 'user', '1', '1432794237');
INSERT INTO `west_user` VALUES ('30', 'baidu', 'bfe279945c6109d067bcd295b5189d86', 'user', '1', '1433353073');
INSERT INTO `west_user` VALUES ('31', 'alibaba', 'ffccc52b393d6a9b366eb7fe3dff9ab5', 'user', '2', '1433353280');

-- ----------------------------
-- Table structure for `west_videos`
-- ----------------------------
DROP TABLE IF EXISTS `west_videos`;
CREATE TABLE `west_videos` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '影视作品ID',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '用户UID',
  `title` varchar(128) NOT NULL COMMENT '影视作品名称',
  `url` varchar(128) NOT NULL COMMENT '影视作品链接',
  `pic` varchar(128) NOT NULL COMMENT '图片链接',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `modify_time` varchar(15) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='影视作品表';

-- ----------------------------
-- Records of west_videos
-- ----------------------------
INSERT INTO `west_videos` VALUES ('8', '13', '钢铁侠II', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401120413291.jpg', '1', '1433510578');
INSERT INTO `west_videos` VALUES ('9', '13', '雷神II', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401121665662.jpg', '1', '1433510574');
INSERT INTO `west_videos` VALUES ('10', '13', '无敌浩克II', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401130747942.jpg', '1', '1433510569');
INSERT INTO `west_videos` VALUES ('11', '13', '美国队长II', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401225315736.jpg', '1', '1433510536');
INSERT INTO `west_videos` VALUES ('12', '13', '钢铁侠III', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401131723032.jpg', '1', '1433510560');
INSERT INTO `west_videos` VALUES ('13', '13', '复仇者联盟I', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401115356165.jpg', '1', '1433510556');
INSERT INTO `west_videos` VALUES ('16', '13', '复仇者联盟II', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401283735063.jpg', '1', '1433510551');
INSERT INTO `west_videos` VALUES ('17', '13', '银河护卫队', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401113461652.jpg', '1', '1433510546');
INSERT INTO `west_videos` VALUES ('18', '13', '钢铁侠I', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401093816694.jpg', '1', '1433510541');
INSERT INTO `west_videos` VALUES ('19', '13', '美国队长I', 'http://player.video.qiyi.com/4a5deeca001047bda38a65493174949f/0/0/v_19rrifklls.swf-albumId=150918-tvId=161292-isPurchase=2-cnId=', '../server/Public/Uploads/2015-06-04/2015060401100588091.jpg', '1', '1433510402');
INSERT INTO `west_videos` VALUES ('22', '13', '无敌浩克', 'http://player.video.qiyi.com/921a15e67829735db7c997eb6f7d8e54/0/0/v_19rrhyltww.swf-albumId=246491100-tvId=246491100-isPurchase=2', '../server/Public/Uploads/2015-06-04/2015060401112228651.jpg', '1', '1433501450');
INSERT INTO `west_videos` VALUES ('30', '30', '00033', '00', '../server/Public/Uploads/2015-06-07/2015060719033419203.png', '0', '1433675019');
INSERT INTO `west_videos` VALUES ('31', '30', '888', '000', '../server/Public/Uploads/2015-06-07/2015060719202882960.png', '0', '1433676029');
INSERT INTO `west_videos` VALUES ('32', '30', '000', '00', '../server/Public/Uploads/2015-06-07/2015060719415388786.png', '0', '1433677314');
