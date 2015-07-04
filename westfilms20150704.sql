/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : westfilms

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2015-07-04 18:07:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `west_cinemas`
-- ----------------------------
DROP TABLE IF EXISTS `west_cinemas`;
CREATE TABLE `west_cinemas` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '影院ID',
  `mid` mediumint(8) NOT NULL COMMENT '影片ID',
  `uid` varchar(64) NOT NULL COMMENT '影院UID',
  `name` varchar(128) NOT NULL COMMENT '影院名称',
  `address` varchar(256) NOT NULL COMMENT '影院地址',
  `tel` varchar(13) NOT NULL COMMENT '影院电话',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='影讯之影院表';

-- ----------------------------
-- Records of west_cinemas
-- ----------------------------
INSERT INTO `west_cinemas` VALUES ('1', '1', 'c4418e9b360531699e82eaa6', '西安奥斯卡金地国际影城', '陕西省西安市雁塔区曲江池东路999号金地广场4F', '(029)88639952');
INSERT INTO `west_cinemas` VALUES ('2', '1', 'dfba656348903d94430245cf', '西安恒大影城', '西安市雁塔区大寨路99号恒大影城3-4层', '(029)86616468');
INSERT INTO `west_cinemas` VALUES ('3', '1', '3018f4615eb0d018a80dd8b8', '大地影院(西安金莎国际)', '西安市雁塔区长安中路65号小寨金莎国际6楼', '(029)89640502');
INSERT INTO `west_cinemas` VALUES ('4', '1', 'edd1547d3955c9941e58003c', '西安米格国际影城', '西安市大南门外珠江时代广场世纪金花4F', '(029)85202222');
INSERT INTO `west_cinemas` VALUES ('5', '2', 'fb5b13756b7979f9b75f1e45', '西安澳堡开顿国际影城', '西安市长安区西长安街555号澳堡时代广场6F', '(029)65669333');
INSERT INTO `west_cinemas` VALUES ('6', '5', '641aa23c0f417cdbe115f902', '卢米埃影城(西安凯德广场店)', '西安市雁塔区南2环西段凯德广场5层(朱雀花卉市场对面)', '(029)88665301');
INSERT INTO `west_cinemas` VALUES ('7', '5', '4cee3db92306b7d41e5800c4', '西安耀莱国际影城', '西安市曲江新区大唐不夜城银泰中心4层', '(029)89126600');
INSERT INTO `west_cinemas` VALUES ('8', '5', 'd88ce3e10fa05b88902ca358', '万达影城(西安民乐万达广场店)', '解放路中段111号万达百货民乐园店4层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('9', '5', '1816533448d7db1dfa2d6187', '西安橙天嘉禾影城', '西安市碑林区2环南路西段155号怡丰城3楼3-10号(近太白路立交)', '(029)89194008');
INSERT INTO `west_cinemas` VALUES ('10', '5', '4bb049d988306f5e980050f3', '西安万达国际影城(碑林万达广场店)', '西安市碑林区雁塔路北段8号万达广场娱乐楼4层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('11', '9', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('12', '10', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('13', '11', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('14', '12', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('15', '13', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('16', '14', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('17', '16', 'fff6bbca65d52d027adbd2c9', '西安欢乐小马电影城', '西安市长安中路36号陕西省军区A区军人服务社商业楼8层', '(029)88780818');
INSERT INTO `west_cinemas` VALUES ('18', '16', 'ebf4adf5e6c07390eb56fa07', '西安万达影城(大明宫店)', '西安市未央区太华北路369号万达广场四层', '(029)85450088');
INSERT INTO `west_cinemas` VALUES ('19', '16', 'dfba656348903d94430245cf', '西安恒大影城', '西安市雁塔区大寨路99号恒大影城3-4层', '(029)86616468');
INSERT INTO `west_cinemas` VALUES ('20', '16', '23c94f9ff665c9fb1ef74d42', '大地影院(长安步行街)', '西安市长安区长安步行街北口长百新市购物广场3楼', '(029)63366846');
INSERT INTO `west_cinemas` VALUES ('21', '16', 'f4041508bc32ce793310af88', '横店影城（西安中贸店）', '南关正街中茂广场5楼南稍门十字向北100米路西', '029-88669090');

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
  `detail` text NOT NULL COMMENT '详情',
  `banner_url` varchar(128) NOT NULL COMMENT '网站banner图链接',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='公司信息表';

-- ----------------------------
-- Records of west_company
-- ----------------------------
INSERT INTO `west_company` VALUES ('8', '13', '完美世界', 'i@ztf.me', '13577777777', '../server/Public/Uploads/2015-06-04/2015060414313915517.png', '完美世界是一家网络游戏研发、运营、销售和服务公司。于2004年成立，2007年在美国纳斯达克上市（股票代码：PWRD）。完美世界总部位于北京，在北美、欧洲和日本设有全资子公司自主运营游戏，旗下游戏已授权至亚洲、澳洲、拉丁美洲、俄罗斯及其它俄语地区等多个国家和地区的主要游戏运营商，游戏出口至世界100多个国家和地区，为全球用户提供优质的互联网娱乐服务。', '&lt;p style=&quot;text-align:left;&quot;&gt;\n	&lt;span style=&quot;font-family:\'Microsoft JhengHei\', Tahoma, Helvetica, Arial, 宋体, sans-serif;font-size:14px;line-height:20px;color:#00D5FF;&quot;&gt;完美世界是一家网络游戏研发、运营、销售和服务公司。于2004年成立，2007年在美国纳斯达克上市（股票代码：PWRD）。完美世界总部位于北京，在北美、欧洲和日本设有全资子公司自主运营游戏，旗下游戏已授权至亚洲、澳洲、拉丁美洲、俄罗斯及其它俄语地区等多个国家和地区的主要游戏运营商，游戏出口至世界100多个国家和地区，为全球用户提供优质的互联网娱乐服务。&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;text-align:left;&quot;&gt;\n	&lt;span style=&quot;font-family:\'Microsoft JhengHei\', Tahoma, Helvetica, Arial, 宋体, sans-serif;font-size:14px;line-height:20px;color:#00D5FF;&quot;&gt;&lt;span style=&quot;color:#00D5FF;font-family:\'Microsoft JhengHei\', Tahoma, Helvetica, Arial, 宋体, sans-serif;font-size:14px;line-height:20px;&quot;&gt;完美世界是一家网络游戏研发、运营、销售和服务公司。于2004年成立，2007年在美国纳斯达克上市（股票代码：PWRD）。完美世界总部位于北京，在北美、欧洲和日本设有全资子公司自主运营游戏，旗下游戏已授权至亚洲、澳洲、拉丁美洲、俄罗斯及其它俄语地区等多个国家和地区的主要游戏运营商，游戏出口至世界100多个国家和地区，为全球用户提供优质的互联网娱乐服务。&lt;/span&gt;&lt;/span&gt; \n&lt;/p&gt;', '../server/Public/Uploads/2015-06-04/2015060414321825086.jpg', '1435993473');
INSERT INTO `west_company` VALUES ('25', '30', '百度科技', 'baidu@baidu.com', '02901236599', '../server/Public/Uploads/2015-06-04/2015060413055691723.png', '百度（Nasdaq：BIDU）是全球最大的中文搜索引擎、最大的中文网站。2000年1月由李彦宏创立于北京中关村，致力于向人们提供“简单，可依赖”的信息获取方式。“百度”二字源于中国宋朝词人辛弃疾的《青玉案·元夕》词句“众里寻他千百度”，象征着百度对中文信息检索技术的执著追求。2015年1月24日，百度创始人、董事长兼CEO李彦宏在百度2014年会暨十五周年庆典上发表的主题演讲中表示，十五年来，百度坚持相信技术的力量，始终把简单可依赖的文化和人才成长机制当成最宝贵的财富，他号召百度全体员工，向连接人与服务的战略目标发起进攻。', '', '../server/Public/Uploads/2015-06-04/2015060413053043082.jpg', '1433394383');
INSERT INTO `west_company` VALUES ('26', '31', '阿里巴巴', 'albb@alibaba.com', '01926887895', '', '', '', '', '1433353280');
INSERT INTO `west_company` VALUES ('27', '32', ' 西柚影视集团', 'asdfas', '12341234', 'aasdfasdf', 'asdfasdf', 'asdfasdf', 'asdfasdf', '1435810968');
INSERT INTO `west_company` VALUES ('28', '33', 'aaa', 'aaa', 'aaa', '', '', '', '', '1435975534');

-- ----------------------------
-- Table structure for `west_episodes`
-- ----------------------------
DROP TABLE IF EXISTS `west_episodes`;
CREATE TABLE `west_episodes` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '剧集ID',
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
  `top` tinyint(1) NOT NULL COMMENT '是否置顶',
  `recommend` tinyint(1) NOT NULL COMMENT '是否推荐',
  `status` tinyint(1) NOT NULL COMMENT '剧集状态',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='剧集表';

-- ----------------------------
-- Records of west_episodes
-- ----------------------------
INSERT INTO `west_episodes` VALUES ('1', '13', 'AAAAA', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810345', '0', '0', '0', '1435810387');
INSERT INTO `west_episodes` VALUES ('2', '13', 'CDSDFDCXZCF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810399', '0', '0', '0', '1435840420');
INSERT INTO `west_episodes` VALUES ('3', '13', 'SDFDSDSF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810438', '0', '0', '0', '1435810438');
INSERT INTO `west_episodes` VALUES ('4', '13', 'SSDFDXZCXZCF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810443', '0', '0', '0', '1435810443');
INSERT INTO `west_episodes` VALUES ('5', '13', 'SSDsdfasdfsCXZCF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810446', '0', '0', '0', '1435810446');
INSERT INTO `west_episodes` VALUES ('6', '13', 'SSasdfasdfCXZCF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810447', '0', '0', '0', '1435810447');
INSERT INTO `west_episodes` VALUES ('7', '13', 'asdfasdfdfCXZCF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810449', '0', '0', '0', '1435810449');
INSERT INTO `west_episodes` VALUES ('8', '13', 'aasdfasdffdfCXZCF', 'no', 'AAAAVVVV', 'DFSFDSFSDxc', 'gDFESDFSDFgh', 'asdSDDSFasdf', '654SDFSDFSDFDSF', '0', '1435810451', '0', '0', '0', '1435810451');
INSERT INTO `west_episodes` VALUES ('9', '13', 'gdg', 'no', '../server/Public/Uploads/2015-07-04/2015070412552615883.jpg', 'fgg', 'fgfgf', '', 'fgfg', '0', '1435985729', '0', '1', '1', '1435992361');
INSERT INTO `west_episodes` VALUES ('11', '33', '222', 'no', '', '222', '222', '', '222', '0', '1435991360', '0', '0', '1', '1435991360');
INSERT INTO `west_episodes` VALUES ('12', '33', '2225555', 'no', '', '222', '22', '', '&lt;p align=&quot;center&quot;&gt;\n	225555\n&lt;/p&gt;', '0', '1435991380', '0', '0', '1', '1435993344');
INSERT INTO `west_episodes` VALUES ('13', '13', 'fgfg', 'no', '../server/Public/Uploads/2015-07-04/2015070414353134791.jpg', 'fggf', 'fgfg', '', 'fgfgf', '0', '1435991736', '1', '0', '1', '1435992358');
INSERT INTO `west_episodes` VALUES ('14', '13', 'hfh', 'no', '../server/Public/Uploads/2015-07-04/2015070414361399979.jpg', 'hfh', 'fhfh', '', '&lt;span style=&quot;color:#E53333;&quot;&gt;hfhfh&lt;/span&gt;', '0', '1435991781', '0', '0', '1', '1435991781');
INSERT INTO `west_episodes` VALUES ('15', '13', 'dgdg', 'no', '../server/Public/Uploads/2015-07-04/2015070414363893223.jpg', 'dgdg', 'dgdgd', '', '&lt;span style=&quot;color:#E53333;&quot;&gt;fhfhdfhfgdgd&lt;/span&gt;', '0', '1435991801', '0', '1', '1', '1435992356');
INSERT INTO `west_episodes` VALUES ('16', '13', 'fgg', 'no', '../server/Public/Uploads/2015-07-04/2015070414365989266.jpg', 'fgg', 'fgfg', '', 'fggfgf', '0', '1435991821', '1', '0', '0', '1435992355');
INSERT INTO `west_episodes` VALUES ('17', '13', 'fgf', 'no', '../server/Public/Uploads/2015-07-04/2015070414370870360.jpg', 'gfg', 'fgfg', '', 'fggfg', '0', '1435991829', '0', '0', '0', '1435991829');
INSERT INTO `west_episodes` VALUES ('18', '13', 'ff', 'no', '../server/Public/Uploads/2015-07-04/2015070415010934273.png', 'd55555', 'dfdf', '', '&lt;span style=&quot;color:#E53333;&quot;&gt;&lt;strong&gt;&lt;em&gt;&lt;u&gt;555555555555&lt;/u&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/span&gt;', '0', '1435991849', '0', '1', '0', '1435993271');
INSERT INTO `west_episodes` VALUES ('19', '13', 'fff', 'no', '../server/Public/Uploads/2015-07-04/2015070418054288614.png', 'fff', 'fff', '', 'ff', '0', '1436004345', '0', '0', '0', '1436004345');

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
  `detail` text NOT NULL COMMENT '友情链接说明',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of west_links
-- ----------------------------
INSERT INTO `west_links` VALUES ('10', '13', 'Coding', '../server/Public/Uploads/2015-06-04/2015060400382886178.png', 'http://www.coding.net', '', '1', '1433349509');
INSERT INTO `west_links` VALUES ('11', '13', 'GitHub', '../server/Public/Uploads/2015-06-04/2015060400384225315.png', 'https://github.com', '', '1', '1433349522');
INSERT INTO `west_links` VALUES ('16', '13', '拉勾网', '../server/Public/Uploads/2015-06-04/2015060400524797969.png', 'http://www.lagou.com/', '', '1', '1433350367');
INSERT INTO `west_links` VALUES ('17', '13', '哪上班', '../server/Public/Uploads/2015-06-04/2015060400523885899.png', 'https://www.nashangban.com/', '', '1', '1433350359');
INSERT INTO `west_links` VALUES ('18', '13', '前端网（W3Cfuns）', '../server/Public/Uploads/2015-06-04/2015060400443098571.png', 'http://www.w3cfuns.com/', '', '1', '1433349871');
INSERT INTO `west_links` VALUES ('19', '13', '慕课网', '../server/Public/Uploads/2015-06-04/2015060400483424246.png', 'http://www.imooc.com/', '', '1', '1433350115');
INSERT INTO `west_links` VALUES ('22', '13', '百度传课', '../server/Public/Uploads/2015-06-04/2015060400492265787.png', 'http://www.chuanke.com/', '', '1', '1433350163');
INSERT INTO `west_links` VALUES ('23', '13', 'W3CSchool', '../server/Public/Uploads/2015-06-04/2015060400461750396.jpg', 'http://www.w3cschool.cc/', '', '0', '1433349978');
INSERT INTO `west_links` VALUES ('26', '13', '365PSD', '../server/Public/Uploads/2015-06-04/2015060400445381324.png', 'http://cn.365psd.com/', '', '1', '1433349894');
INSERT INTO `west_links` VALUES ('42', '13', 'CSDN', '../server/Public/Uploads/2015-06-04/2015060400431481661.png', 'http://www.csdn.net/', '', '1', '1433349795');
INSERT INTO `west_links` VALUES ('43', '13', '100offer', '../server/Public/Uploads/2015-06-04/2015060401320268408.png', 'http://100offer.com/', '', '1', '1433352727');
INSERT INTO `west_links` VALUES ('44', '30', '百度', '../server/Public/Uploads/2015-06-04/2015060413065912896.jpg', 'https://www.baidu.com/', '', '0', '1433394420');
INSERT INTO `west_links` VALUES ('45', '13', '蘑菇街', '../server/Public/Uploads/2015-06-04/2015060413113814309.png', 'http://www.mogujie.com/', '', '1', '1433394715');
INSERT INTO `west_links` VALUES ('46', '13', '奇虎360', '../server/Public/Uploads/2015-06-09/2015060921462924193.jpg', 'http://www.360.cn/', '', '1', '1433857601');
INSERT INTO `west_links` VALUES ('47', '32', '新浪微博', '../server/Public/Uploads/2015-06-09/2015060923001215560.png', 'http://www.sina.com.cn/', '', '1', '1433862016');
INSERT INTO `west_links` VALUES ('48', '32', 'AAAasdfasdf', 'AAAasdfasdf', 'AAAasdfasdf', 'AAAsfdasdfa', '0', '1435840110');

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
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

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
INSERT INTO `west_log` VALUES ('382', '13', 'edit', 'video', '19', '美国队长I', '1433503035');
INSERT INTO `west_log` VALUES ('383', '13', 'del', 'video', '22', '无敌浩克', '1433503038');
INSERT INTO `west_log` VALUES ('384', '13', 'edit', 'video', '18', '钢铁侠I', '1433503074');
INSERT INTO `west_log` VALUES ('385', '13', 'add', 'video', '25', '重返20岁', '1433503197');
INSERT INTO `west_log` VALUES ('386', '13', 'del', 'video', '8', '钢铁侠II', '1433503215');
INSERT INTO `west_log` VALUES ('387', '13', 'del', 'video', '9', '雷神II', '1433503233');
INSERT INTO `west_log` VALUES ('388', '13', 'del', 'video', '10', '无敌浩克II', '1433503234');
INSERT INTO `west_log` VALUES ('389', '13', 'del', 'video', '17', '银河护卫队', '1433503248');
INSERT INTO `west_log` VALUES ('390', '13', 'del', 'video', '16', '复仇者联盟II', '1433503251');
INSERT INTO `west_log` VALUES ('391', '13', 'del', 'video', '13', '复仇者联盟I', '1433503254');
INSERT INTO `west_log` VALUES ('392', '13', 'del', 'video', '12', '钢铁侠III', '1433503256');
INSERT INTO `west_log` VALUES ('393', '13', 'del', 'video', '11', '美国队长II', '1433503259');
INSERT INTO `west_log` VALUES ('394', '13', 'add', 'video', '26', '第七子:降魔之战', '1433503298');
INSERT INTO `west_log` VALUES ('395', '13', 'add', 'video', '27', '狼图腾', '1433503337');
INSERT INTO `west_log` VALUES ('396', '13', 'add', 'video', '28', '一万年以后', '1433503423');
INSERT INTO `west_log` VALUES ('397', '13', 'add', 'video', '29', '战狼特攻队', '1433503478');
INSERT INTO `west_log` VALUES ('398', '13', 'add', 'video', '30', '法老墓的诅咒', '1433503525');
INSERT INTO `west_log` VALUES ('399', '13', 'add', 'video', '31', '智取威虎山', '1433503601');
INSERT INTO `west_log` VALUES ('400', '13', 'add', 'video', '32', 'asfdsa', '1433503722');
INSERT INTO `west_log` VALUES ('401', '13', 'del', 'video', '32', 'asfdsa', '1433503971');
INSERT INTO `west_log` VALUES ('402', '13', 'add', 'news', '25', '123', '1433505124');
INSERT INTO `west_log` VALUES ('403', '13', 'del', 'news', '25', '123', '1433505175');
INSERT INTO `west_log` VALUES ('404', '13', 'add', 'news', '26', '美媒：中国进口电影片源多元化 好莱坞难保垄断', '1433857141');
INSERT INTO `west_log` VALUES ('405', '13', 'del', 'news', '21', '《匆匆那年》不悔梦归处，只恨太匆匆', '1433857185');
INSERT INTO `west_log` VALUES ('406', '13', 'add', 'news', '27', '上海国际电影节互联网电影嘉年华新闻通气会召开', '1433857379');
INSERT INTO `west_log` VALUES ('407', '13', 'edit', 'video', '31', '智取威虎山', '1433857436');
INSERT INTO `west_log` VALUES ('408', '13', 'edit', 'video', '30', '法老墓的诅咒', '1433857444');
INSERT INTO `west_log` VALUES ('409', '13', 'edit', 'video', '29', '战狼特攻队', '1433857453');
INSERT INTO `west_log` VALUES ('410', '13', 'edit', 'video', '28', '一万年以后', '1433857460');
INSERT INTO `west_log` VALUES ('411', '13', 'edit', 'video', '27', '狼图腾', '1433857518');
INSERT INTO `west_log` VALUES ('412', '13', 'edit', 'video', '26', '第七子:降魔之战', '1433857526');
INSERT INTO `west_log` VALUES ('413', '13', 'edit', 'video', '25', '重返20岁', '1433857533');
INSERT INTO `west_log` VALUES ('414', '13', 'add', 'links', '46', '奇虎360', '1433857601');
INSERT INTO `west_log` VALUES ('415', '13', 'del', 'video', '31', '智取威虎山', '1433857671');
INSERT INTO `west_log` VALUES ('416', '32', 'add', 'video', '33', ' 失孤', '1433861348');
INSERT INTO `west_log` VALUES ('417', '32', 'add', 'video', '34', '饥饿游戏3:嘲笑鸟(上)', '1433861400');
INSERT INTO `west_log` VALUES ('418', '32', 'add', 'video', '35', '有种你爱我 ', '1433861456');
INSERT INTO `west_log` VALUES ('419', '32', 'add', 'video', '36', '三不管', '1433861513');
INSERT INTO `west_log` VALUES ('420', '32', 'add', 'video', '37', '出轨的女人', '1433861556');
INSERT INTO `west_log` VALUES ('421', '32', 'add', 'video', '38', '美女敢死队', '1433861594');
INSERT INTO `west_log` VALUES ('422', '32', 'add', 'news', '28', '《横冲直撞好莱坞》国际版预告曝光 佟大为百变造型飞车炫技', '1433861698');
INSERT INTO `west_log` VALUES ('423', '32', 'edit', 'news', '28', '《横冲直撞好莱坞》国际版预告曝光', '1433861715');
INSERT INTO `west_log` VALUES ('424', '32', 'add', 'news', '29', '《风云天地》热播 童菲“虐恋”刘恺威', '1433861769');
INSERT INTO `west_log` VALUES ('425', '32', 'add', 'news', '30', '《九月照相馆》热拍 殷旭演技大爆发', '1433861815');
INSERT INTO `west_log` VALUES ('426', '32', 'add', 'news', '31', '《花千骨》今晚开播 阮伟旌获封“蓝眼狂魔”', '1433861868');
INSERT INTO `west_log` VALUES ('427', '32', 'add', 'news', '32', '关晓彤再饰安洁西 《嬉戏魔法乐园》创奇幻世界', '1433861914');
INSERT INTO `west_log` VALUES ('428', '32', 'add', 'links', '47', '新浪微博', '1433862016');
INSERT INTO `west_log` VALUES ('429', '32', 'del', 'video', '38', '美女敢死队', '1433922076');
INSERT INTO `west_log` VALUES ('430', '13', 'add', 'episodes', '1', 'afda', '1435810345');
INSERT INTO `west_log` VALUES ('431', '13', 'edit', 'episodes', '1', 'AAAAA', '1435810387');
INSERT INTO `west_log` VALUES ('432', '13', 'add', 'episodes', '2', 'AAAAA', '1435810400');
INSERT INTO `west_log` VALUES ('433', '13', 'add', 'episodes', '3', 'SDFDSDSF', '1435810438');
INSERT INTO `west_log` VALUES ('434', '13', 'add', 'episodes', '4', 'SSDFDXZCXZCF', '1435810443');
INSERT INTO `west_log` VALUES ('435', '13', 'add', 'episodes', '5', 'SSDsdfasdfsCXZCF', '1435810446');
INSERT INTO `west_log` VALUES ('436', '13', 'add', 'episodes', '6', 'SSasdfasdfCXZCF', '1435810447');
INSERT INTO `west_log` VALUES ('437', '13', 'add', 'episodes', '7', 'asdfasdfdfCXZCF', '1435810449');
INSERT INTO `west_log` VALUES ('438', '13', 'add', 'episodes', '8', 'aasdfasdffdfCXZCF', '1435810451');
INSERT INTO `west_log` VALUES ('439', '13', 'edit', 'episodes', '2', 'CDSDFDCXZCF', '1435810470');
INSERT INTO `west_log` VALUES ('440', '13', 'del', 'episodes', '2', 'CDSDFDCXZCF', '1435810478');
INSERT INTO `west_log` VALUES ('441', '13', 'del', 'episodes', '1', 'AAAAA', '1435810530');
INSERT INTO `west_log` VALUES ('442', '32', 'add', 'video', '39', 'asdfas', '1435839885');
INSERT INTO `west_log` VALUES ('443', '32', 'edit', 'video', '39', 'AAA', '1435839936');
INSERT INTO `west_log` VALUES ('444', '32', 'add', 'links', '48', 'asdfasdf', '1435840019');
INSERT INTO `west_log` VALUES ('445', '32', 'del', 'links', '48', 'asdfasdf', '1435840053');
INSERT INTO `west_log` VALUES ('446', '32', 'edit', 'links', '48', 'AAAasdfasdf', '1435840110');
INSERT INTO `west_log` VALUES ('447', '13', 'edit', 'news', '27', '上海国际电影节互联网电影嘉年华新闻通气会召开', '1435970813');
INSERT INTO `west_log` VALUES ('448', '13', 'add', 'video', '40', '辅导费', '1435974318');
INSERT INTO `west_log` VALUES ('449', '13', 'edit', 'video', '40', '辅导费', '1435974531');
INSERT INTO `west_log` VALUES ('450', '13', 'del', 'video', '40', '辅导费', '1435974542');
INSERT INTO `west_log` VALUES ('451', '13', 'edit', 'video', '30', '法老墓的诅咒', '1435974564');
INSERT INTO `west_log` VALUES ('452', '1', 'del', 'video', '39', '', '1435974772');
INSERT INTO `west_log` VALUES ('453', '1', 'del', 'links', '48', '', '1435974790');
INSERT INTO `west_log` VALUES ('454', '1', 'del', 'links', '44', '', '1435974793');
INSERT INTO `west_log` VALUES ('455', '1', 'del', 'links', '23', '', '1435974795');
INSERT INTO `west_log` VALUES ('456', '13', 'add', 'episodes', '9', 'gdg', '1435985730');
INSERT INTO `west_log` VALUES ('457', '33', 'add', 'episodes', '11', '222', '1435991360');
INSERT INTO `west_log` VALUES ('458', '33', 'add', 'episodes', '12', '222', '1435991381');
INSERT INTO `west_log` VALUES ('459', '13', 'del', 'episodes', '8', 'aasdfasdffdfCXZCF', '1435991714');
INSERT INTO `west_log` VALUES ('460', '13', 'del', 'episodes', '7', 'asdfasdfdfCXZCF', '1435991717');
INSERT INTO `west_log` VALUES ('461', '13', 'del', 'episodes', '6', 'SSasdfasdfCXZCF', '1435991719');
INSERT INTO `west_log` VALUES ('462', '13', 'del', 'episodes', '5', 'SSDsdfasdfsCXZCF', '1435991722');
INSERT INTO `west_log` VALUES ('463', '13', 'del', 'episodes', '4', 'SSDFDXZCXZCF', '1435991724');
INSERT INTO `west_log` VALUES ('464', '13', 'del', 'episodes', '3', 'SDFDSDSF', '1435991727');
INSERT INTO `west_log` VALUES ('465', '13', 'add', 'episodes', '13', 'fgfg', '1435991736');
INSERT INTO `west_log` VALUES ('466', '13', 'add', 'episodes', '14', 'hfh', '1435991781');
INSERT INTO `west_log` VALUES ('467', '13', 'add', 'episodes', '15', 'dgdg', '1435991801');
INSERT INTO `west_log` VALUES ('468', '13', 'add', 'episodes', '16', 'fgg', '1435991821');
INSERT INTO `west_log` VALUES ('469', '13', 'add', 'episodes', '17', 'fgf', '1435991830');
INSERT INTO `west_log` VALUES ('470', '13', 'del', 'episodes', '17', 'fgf', '1435991840');
INSERT INTO `west_log` VALUES ('471', '13', 'add', 'episodes', '18', 'ff', '1435991849');
INSERT INTO `west_log` VALUES ('472', '13', 'edit', 'episodes', '18', 'ff', '1435993249');
INSERT INTO `west_log` VALUES ('473', '13', 'edit', 'episodes', '18', 'ff', '1435993259');
INSERT INTO `west_log` VALUES ('474', '13', 'edit', 'episodes', '18', 'ff', '1435993272');
INSERT INTO `west_log` VALUES ('475', '33', 'edit', 'episodes', '12', '2225555', '1435993344');
INSERT INTO `west_log` VALUES ('476', '13', 'del', 'episodes', '18', 'ff', '1436003925');
INSERT INTO `west_log` VALUES ('477', '1', 'del', 'video', '37', '', '1436004100');
INSERT INTO `west_log` VALUES ('478', '1', 'del', 'episodes', '16', 'fgg', '1436004256');
INSERT INTO `west_log` VALUES ('479', '13', 'add', 'episodes', '19', 'fff', '1436004346');
INSERT INTO `west_log` VALUES ('480', '1', 'del', 'episodes', '19', 'fff', '1436004361');

-- ----------------------------
-- Table structure for `west_movies`
-- ----------------------------
DROP TABLE IF EXISTS `west_movies`;
CREATE TABLE `west_movies` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '影片ID',
  `name` varchar(128) NOT NULL COMMENT '影片名称',
  `time` varchar(12) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='影讯之电影表';

-- ----------------------------
-- Records of west_movies
-- ----------------------------
INSERT INTO `west_movies` VALUES ('1', '侏罗纪世界', '2015-06-12');
INSERT INTO `west_movies` VALUES ('2', '我是谁2015', '2015-06-12');
INSERT INTO `west_movies` VALUES ('3', '再见我们的十年', '2015-06-25');
INSERT INTO `west_movies` VALUES ('4', '我是谁2015', '2015-06-25');
INSERT INTO `west_movies` VALUES ('5', '分歧者2：绝地反击', '2015-06-25');
INSERT INTO `west_movies` VALUES ('6', '我是谁2015', '2015-06-27');
INSERT INTO `west_movies` VALUES ('7', '横冲直撞好莱坞', '2015-06-27');
INSERT INTO `west_movies` VALUES ('8', '分歧者2：绝地反击', '2015-06-27');
INSERT INTO `west_movies` VALUES ('9', '横冲直撞好莱坞', '2015-06-27');
INSERT INTO `west_movies` VALUES ('10', '横冲直撞好莱坞', '2015-06-27');
INSERT INTO `west_movies` VALUES ('11', '横冲直撞好莱坞', '2015-06-27');
INSERT INTO `west_movies` VALUES ('12', '横冲直撞好莱坞', '2015-06-27');
INSERT INTO `west_movies` VALUES ('16', '横冲直撞好莱坞', '2015-06-30');
INSERT INTO `west_movies` VALUES ('17', '我是谁2015', '2015-07-01');

-- ----------------------------
-- Table structure for `west_movies_time`
-- ----------------------------
DROP TABLE IF EXISTS `west_movies_time`;
CREATE TABLE `west_movies_time` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '排片ID',
  `mid` mediumint(8) NOT NULL COMMENT '电影ID',
  `cid` mediumint(8) NOT NULL COMMENT '影院ID',
  `date` varchar(12) NOT NULL COMMENT '日期',
  `time` varchar(10) NOT NULL COMMENT '时间点',
  `type` varchar(24) NOT NULL COMMENT '电影类型',
  `price` varchar(32) NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='影讯之排片表';

-- ----------------------------
-- Records of west_movies_time
-- ----------------------------
INSERT INTO `west_movies_time` VALUES ('1', '1', '1', '2015-06-12', '23:05', '3D', '90');
INSERT INTO `west_movies_time` VALUES ('2', '1', '2', '2015-06-12', '22:30', '3D', '80');
INSERT INTO `west_movies_time` VALUES ('3', '1', '2', '2015-06-12', '23:00', '3D', '80');
INSERT INTO `west_movies_time` VALUES ('4', '1', '3', '2015-06-12', '23:00', '3D', '39');
INSERT INTO `west_movies_time` VALUES ('5', '1', '4', '2015-06-12', '22:30', '3D', '80');
INSERT INTO `west_movies_time` VALUES ('6', '1', '4', '2015-06-12', '23:20', '3D', '80');
INSERT INTO `west_movies_time` VALUES ('7', '2', '5', '2015-06-12', '22:40', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('8', '5', '6', '2015-06-25', '19:00', '3D', '32.9');
INSERT INTO `west_movies_time` VALUES ('9', '5', '6', '2015-06-25', '21:15', '3D', '32.9');
INSERT INTO `west_movies_time` VALUES ('10', '5', '7', '2015-06-25', '20:00', '3D', '92.9');
INSERT INTO `west_movies_time` VALUES ('11', '5', '7', '2015-06-25', '22:20', '3D', '92.9');
INSERT INTO `west_movies_time` VALUES ('12', '5', '8', '2015-06-25', '16:45', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('13', '5', '8', '2015-06-25', '19:00', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('14', '5', '8', '2015-06-25', '20:20', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('15', '5', '8', '2015-06-25', '21:15', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('16', '5', '8', '2015-06-25', '22:35', 'IMAX', '130');
INSERT INTO `west_movies_time` VALUES ('17', '5', '8', '2015-06-25', '23:30', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('18', '5', '9', '2015-06-25', '17:50', '3D', '100');
INSERT INTO `west_movies_time` VALUES ('19', '5', '9', '2015-06-25', '20:00', '3D', '100');
INSERT INTO `west_movies_time` VALUES ('20', '5', '9', '2015-06-25', '22:10', '3D', '100');
INSERT INTO `west_movies_time` VALUES ('21', '5', '10', '2015-06-25', '17:00', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('22', '5', '10', '2015-06-25', '19:20', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('23', '5', '10', '2015-06-25', '21:40', '数字3D', '90');
INSERT INTO `west_movies_time` VALUES ('24', '5', '10', '2015-06-25', '22:25', 'IMAX', '130');
INSERT INTO `west_movies_time` VALUES ('25', '9', '11', '2015-06-27', '23:25', '数字2D', '75');
INSERT INTO `west_movies_time` VALUES ('26', '10', '12', '2015-06-27', '23:25', '数字2D', '75');
INSERT INTO `west_movies_time` VALUES ('27', '11', '13', '2015-06-27', '23:25', '数字2D', '75');
INSERT INTO `west_movies_time` VALUES ('28', '12', '14', '2015-06-27', '23:25', '数字2D', '75');
INSERT INTO `west_movies_time` VALUES ('29', '13', '15', '2015-06-27', '23:25', '数字2D', '75');
INSERT INTO `west_movies_time` VALUES ('30', '14', '16', '2015-06-27', '23:25', '数字2D', '75');
INSERT INTO `west_movies_time` VALUES ('31', '16', '17', '2015-06-30', '17:15', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('32', '16', '17', '2015-06-30', '17:45', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('33', '16', '17', '2015-06-30', '19:30', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('34', '16', '17', '2015-06-30', '20:15', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('35', '16', '17', '2015-06-30', '22:25', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('36', '16', '18', '2015-06-30', '17:10', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('37', '16', '18', '2015-06-30', '18:00', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('38', '16', '18', '2015-06-30', '18:45', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('39', '16', '18', '2015-06-30', '19:30', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('40', '16', '18', '2015-06-30', '20:20', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('41', '16', '18', '2015-06-30', '21:05', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('42', '16', '18', '2015-06-30', '21:50', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('43', '16', '18', '2015-06-30', '22:40', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('44', '16', '18', '2015-06-30', '23:25', '数字2D', '38');
INSERT INTO `west_movies_time` VALUES ('45', '16', '19', '2015-06-30', '16:50', '2D', '100');
INSERT INTO `west_movies_time` VALUES ('46', '16', '19', '2015-06-30', '17:35', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('47', '16', '19', '2015-06-30', '18:20', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('48', '16', '19', '2015-06-30', '19:05', '2D', '100');
INSERT INTO `west_movies_time` VALUES ('49', '16', '19', '2015-06-30', '19:50', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('50', '16', '19', '2015-06-30', '20:35', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('51', '16', '19', '2015-06-30', '21:20', '2D', '100');
INSERT INTO `west_movies_time` VALUES ('52', '16', '19', '2015-06-30', '22:05', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('53', '16', '19', '2015-06-30', '22:50', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('54', '16', '20', '2015-06-30', '22:05', '2D', '34');
INSERT INTO `west_movies_time` VALUES ('55', '16', '20', '2015-06-30', '19:50', '2D', '34');
INSERT INTO `west_movies_time` VALUES ('56', '16', '20', '2015-06-30', '17:35', '2D', '34');
INSERT INTO `west_movies_time` VALUES ('57', '16', '20', '2015-06-30', '20:30', '2D', '34');
INSERT INTO `west_movies_time` VALUES ('58', '16', '20', '2015-06-30', '18:15', '2D', '34');
INSERT INTO `west_movies_time` VALUES ('59', '16', '20', '2015-06-30', '19:10', '2D', '34');
INSERT INTO `west_movies_time` VALUES ('60', '16', '21', '2015-06-30', '18:15', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('61', '16', '21', '2015-06-30', '20:30', '2D', '80');
INSERT INTO `west_movies_time` VALUES ('62', '16', '21', '2015-06-30', '22:45', '2D', '80');

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
  `top` tinyint(1) NOT NULL COMMENT '是否置顶',
  `recommend` tinyint(1) NOT NULL COMMENT '是否推荐',
  `status` tinyint(1) NOT NULL COMMENT '新闻状态',
  `modify_time` varchar(15) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='新闻动态表';

-- ----------------------------
-- Records of west_news
-- ----------------------------
INSERT INTO `west_news` VALUES ('10', '13', '《战狼》犯我中华者，虽远必诛！', 'no', '../server/Public/Uploads/2015-06-04/2015060401235547778.jpg', '《战狼》是由吴京执导的现代军事战争片，该片由吴京，余男、倪大红、斯科特·阿金斯 、周晓鸥等主演', '秦始皇', '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;痞性十足的冷锋&lt;/span&gt;&lt;i&gt;（&lt;/i&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/109016/5786168.htm&quot;&gt;&lt;i&gt;吴京&lt;/i&gt;&lt;/a&gt;&lt;i&gt;饰）&lt;/i&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;屡屡惹祸，有人说他是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/27970/8045393.htm&quot;&gt;流氓&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/376459/11018245.htm&quot;&gt;痞子&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;， 也有人说他是英雄，是传奇，在一次行动中冷锋违抗军令打死了&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/1335/5126277.htm&quot;&gt;恐怖分子&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，要被开除出队，却意外得到了神秘部队战狼的接纳，但本想换个地方继续惹祸的他却跳进了另外一个深渊，冷傲的战狼副队长，擦出暧昧火花的性感女队长&lt;/span&gt;&lt;i&gt;（&lt;/i&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/341366.htm&quot;&gt;&lt;i&gt;余男&lt;/i&gt;&lt;/a&gt;&lt;i&gt;饰），&lt;/i&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;心计颇深腹黑的毒枭，枉死的队友，雇佣兵跨过边境线入侵中国，一切都使他陷入了麻烦中。一切都在考验这个团队的毒瘤冷锋，他不知该何去何从。&lt;/span&gt;', '0', '1432796058', '0', '0', '1', '1', '1435981624');
INSERT INTO `west_news` VALUES ('12', '13', '《美国队长2》超级英雄电影', 'no', '../server/Public/Uploads/2015-06-04/2015060401224189262.jpg', '《美国队长2》是2014年上映的超级英雄电影，改编自漫威漫画，是漫威电影宇宙的第九部影片', '秦始皇', '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;在经历了《复仇者联盟》的纽约大战后，美国队长史蒂夫·罗杰斯如今在华盛顿过着恬淡的生活，努力尝试着融入现代社会。然而当一名神盾局同事遭遇袭击后，史蒂夫被迫卷入了一场威胁全球安危的阴谋。他与黑寡妇携手出击，一边防备欲将自己灭口的杀手，一边努力揭露这个巨大阴谋的真面目。而当敌人的邪恶计划全局曝光后，美国队长和黑寡妇得到了一位新同盟“猎鹰”的协助。然而他们也发现自己将要面临的，是前所未遇、出乎意料的黑暗劲敌——冬兵。&lt;/span&gt;', '0', '1432796070', '1', '1', '0', '1', '1435981631');
INSERT INTO `west_news` VALUES ('13', '13', '《狼图腾》草原的生存规则', 'no', '../server/Public/Uploads/2015-06-04/2015060401201891127.jpg', '《狼图腾》是一部以狼为叙述主体的小说，讲述了上个世纪六七十年代一位知青在内蒙古草原插队时与草原狼、游牧民族相依相存的故事。', '秦始皇', '', '&lt;p&gt;\n	&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;故事的背景发生在20世纪60年代末，&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/327945.htm&quot;&gt;中国大陆&lt;/a&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/5318.htm&quot;&gt;内蒙古&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;最后一块靠近边境的原始草原。这里的蒙古牧民还保留着&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/6304/6506735.htm&quot;&gt;游牧民族&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;的生态特点，他们自由而浪漫地在草原上放养着牛、羊，与成群的强悍的草原狼共同维护着草原的生态平衡。他们憎恨着狼――狼是侵犯他们家园的敌人；他们同时也敬畏着狼――草原狼帮助蒙古牧民猎杀着草原上不能够过多承载的食草动物：黄羊、兔子和大大小小的草原鼠。&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/36679.htm&quot;&gt;草原狼&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;是蒙古民族的原始图腾。狼的凶悍、残忍、智慧和团队精神，狼的军事才能和组织分工，曾经是13世纪蒙古军队征战欧亚大陆的天然教官和进化的发动机。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p&gt;\n	&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;正是蒙古民族的历史和神秘，草原的广阔和浪漫，将本书的主人公、一个叫陈阵的&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/3888727/8257523.htm&quot;&gt;北京青年&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;带进了草原。很快，陈阵发现草原并不全是浪漫和自由。牧民们为了保护自己的财产必须和狼进行战斗。他亲眼目睹蒙古的女人和小孩与偷袭羊群的狼――像豹子一样大的狼――徒手搏斗。也曾误入狼群、并亲眼看见群狼怎样在头狼的指挥下，调兵遣将围猎几百只黄羊。但是，人却抢了狼储存的食物。为了报复人的贪婪，狼利用冬季风雪和夏季蚊灾的掩护，发动了两次大规模的偷袭&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/828326/15622661.htm&quot;&gt;军马&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;群的残酷而壮烈的战役。于是人又被激怒了。来自于&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/8283972.htm&quot;&gt;农耕民族&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;的干部不顾蒙古牧民的反对，开始了大规模的围猎狼群的战斗。狼在死亡前的尊严和牺牲精神震撼了陈阵。陈阵和他的朋友亲自掏了一窝&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/8310.htm&quot;&gt;小狼&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;，并且养了其中的一只。他要通过一只小狼的成长，探索狼的习性和狼的哲学。通过一系列的令人陶醉的有趣的故事，陈阵发现狼是动物中唯一不可驯服的、十分神秘的动物。比如，第一次面对食物或者面对大批食物的时候，会举行跑圈，类似现代宗教的感恩仪式或者祭祀；比如，狼一旦离开大地就会颤抖无力，又像希腊神话中的安泰。进而，陈阵又发现蒙古民族不仅将狼作为自己民族的图腾崇拜的对象，而且，死后又将自己的尸体放到狼出没的地方，实施“天葬”。蒙古牧民相信狼会将他们的灵魂带上“&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/328468.htm&quot;&gt;腾格里&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;”（蒙语：天）。狼是蒙古人敬畏的敌人，也是他们相伴一生、甚至是来生的朋友。正是蒙古人带着狼的精神征服了差不多半个地球，开通了东西方商业贸易与文化的交流。&lt;/span&gt;&lt;br /&gt;\n&lt;/span&gt;\n&lt;/p&gt;', '0', '1432796075', '1', '1', '0', '1', '1435981621');
INSERT INTO `west_news` VALUES ('14', '13', '《左耳》青春成长的故事', 'no', '../server/Public/Uploads/2015-06-04/2015060401170186040.jpg', '《左耳》是饶雪漫编著的作品，讲述关于青春成长的故事', '汉武帝', '', '&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\n	《左耳》是&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/139467.htm&quot;&gt;饶雪漫&lt;/a&gt;编著的作品，讲述关于青春成长的故事。生动地塑造了&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/2920578/15604433.htm&quot;&gt;小耳朵&lt;/a&gt;、吧啦、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/259635.htm&quot;&gt;张漾&lt;/a&gt;、&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/1456649.htm&quot;&gt;许弋&lt;/a&gt;等一批性格迥异的年轻人的形象，并用极富张力的文字完美展现了当下青年人成长时期的疼痛和美好。\n&lt;/div&gt;\n&lt;div class=&quot;para&quot; style=&quot;color:#333333;margin:15px 0px 5px;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;&quot;&gt;\n	《左耳》讲述的故事有着作者特有的快速推进、曲折并意外不断的特点，四个主要人物的塑造尤其成功，是一部倾注着真诚情感同时真实深刻表现青春少年们生活、理想与爱情的优秀作品。\n&lt;/div&gt;', '0', '1432796081', '1', '1', '0', '1', '1435981558');
INSERT INTO `west_news` VALUES ('15', '13', '《复联2》内地票房突破14亿 《阿凡达》沦为第三名', 'no', '../server/Public/Uploads/2015-06-04/2015060401292016054.png', '截止至5月30日晚，电影《复仇者联盟2：奥创纪元》（以下简称《复联2》）的累计票房已经逼近14亿，超越了13.78亿的《阿凡达》，成为内地单片票房排行榜上的第三名。', '秦始皇', '', '&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;身经百战的超级英雄们产生了职业倦怠，已经卸下钢铁战甲的托尼·斯塔克因此发明了“奥创”——有自我意&lt;/span&gt;&lt;a class=&quot;lemma-album layout-right nslog:10000206&quot; href=&quot;http://baike.baidu.com/picture/14403977/15002119/17345950/9345d688d43f8794c9e52394d71b0ef41bd53a75.html?fr=lemma&amp;amp;ct=cover&quot; target=&quot;_blank&quot;&gt; \n&lt;div class=&quot;album-wrap&quot; style=&quot;border:1px solid #E0E0E0;&quot;&gt;\n	&lt;img class=&quot;picture&quot; alt=&quot;复仇者联盟2：奥创纪元 官方剧照&quot; src=&quot;http://f.hiphotos.baidu.com/baike/s%3D250/sign=e09695994c540923ae69647ba259d1dc/9345d688d43f8794c9e52394d71b0ef41bd53a75.jpg&quot; style=&quot;width:250px;height:104px;&quot; /&gt; \n&lt;/div&gt;\n&lt;div class=&quot;description&quot; style=&quot;padding:8px 7px;color:#555555;font-size:12px;font-family:simSun;&quot;&gt;\n	复仇者联盟2：奥创纪元 官方剧照&amp;nbsp;&lt;span class=&quot;number&quot; style=&quot;color:gray;&quot;&gt;(80张)&lt;/span&gt; \n&lt;/div&gt;\n&lt;div class=&quot;albumBg&quot;&gt;\n	&lt;div class=&quot;albumBgFir&quot; style=&quot;margin:0px auto;&quot;&gt;\n	&lt;/div&gt;\n	&lt;div class=&quot;albumBgSec&quot; style=&quot;margin:0px auto;&quot;&gt;\n	&lt;/div&gt;\n&lt;/div&gt;\n&lt;/a&gt;&lt;span style=&quot;color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;识、有学习能力的人工智能机器人，并将指挥机器人军团的重任交给奥创。令超级英雄们始料不及的是，不断进化的奥创得出了“人类是地球上最大的威胁”这一结论，进而开始实施清洗人类的毁灭计划。有强大能力的改造人兄妹快银和猩红女巫也成为奥创的帮手，四处制造麻烦。复仇者联盟必须再度集合，解决这个由他们亲手制造的危机。&lt;/span&gt;', '0', '1432796085', '1', '1', '0', '1', '1435981552');
INSERT INTO `west_news` VALUES ('21', '13', '《匆匆那年》不悔梦归处，只恨太匆匆', 'no', '../server/Public/Uploads/2015-06-04/2015060414084189608.jpg', '根据九夜茴同名小说改编。电影讲述了阳光少年陈寻（彭于晏 饰）、痴心女孩方茴（倪妮 饰）、纯情备胎赵烨（郑恺 饰）、温情暖男乔然（魏晨 饰）、豪放女神林嘉茉（张子萱 饰）这群死党跨越十五年的青春、记忆与友情。', '青葱', '', '&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;这部片子并没有我期待中的好看，电影和片名一样拍得十分匆匆，最终拍成了一个散文式的mv，中途间或出现的字幕让人以为在做综卷调查。但它还原了每个人都有过的青春记忆，还是慢慢看痛了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　如果不是彭大大主演，估计就给两星了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　但出于偏心，冲着爱了八年的男神+去婚礼戏探过班，就打了四星。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　差的都有那么多人说了，那我就说点打动人的吧。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　虽然片子就像MV似的抒情散乱，但有几处还很动人美妙。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　方茴在黑板上写字，陈寻倚靠在教室前门，微笑地看着她。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻在前面快走，他知道方茴在后面，笑得不露声色，方茴在前小碎步地快跑，陈寻追了上去。这种心照不宣看得怦然心动。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　喜欢一个人会是什么样子？眼里都有光照进来。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻反穿校服，只为了让她在人群中第一眼看到自己。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　林嘉茉喜欢苏凯，便用他的名字缩写的钱去买优酸乳。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她只想通过百转千回的方式，告诉他，我暗恋你呀。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　一张张带有“sk”开头的一元人命币就在苏凯眼前，哪知人家不解风情，转身走了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　但是赵烨给了她一叠一块的，说，&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“我给你攒的，sk开头的钱”。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　在沙滩上，两人约定写出彼此喜欢的人的名字。赵烨写了林嘉茉，而她写了苏凯。她说，我写完啦，便欢快地跑开。他说你还没看我写的呢，还没说完，她早已跑远。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　他苦笑，将苏凯的名字抹去，写上了自己的名字，假装她喜欢的人是自己。然后，换上高兴的表情，在沙滩上追她。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　所谓爱情不过如此，我爱你，你不爱我；他爱我，我不爱他。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　登对多难，于是只剩下了相互追逐。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　林嘉茉编了一条那时候最流行的塑料手链，送给苏凯，却骗他，这是隔壁班的某某女生托我转交给你的。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　撒了一个善意的小谎，只是为了让他不尴尬地收下自己亲手做的礼物，哪怕他并不知道。但只要看他戴着，心里就能甜出一条银河系的密度。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　但是苏凯一本正经地告诉她，让她转告“那位同学”，好好学习，为社会主义奋斗。哈哈哈哈哈哈哈。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　赵烨手臂受伤，他们在石膏上集体签名。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻方茴恋爱，他们就在树上一起刻字。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　唯有青春时期热情并且郑重其事，成年以后我们谁也不会再做。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　当年的他们好幼稚啊，但幼稚得多开心。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　毕业时刻，陈寻唱歌，方茴去抱住他，许愿。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“我们以后会一直在一起吗？”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“会。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“会结婚吗，会生孩子吗，一起晒被子吃早餐吗……”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“一定会。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　年轻的我们怎么会知道，对方在发誓的时候都是真的觉得自己一定不会违背承诺，而在反悔的时候也都是真的觉得自己不能做到。所以誓言这种东西无法衡量坚贞，也不能判断对错，它只能证明，在说出来的那一刻，彼此曾经真诚过。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　分手后再聚，方茴扛了两箱酒，终于肯暴露脆弱，喝醉哀求陈寻不要分手。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　喜欢方茴的新概念王子乔然看不下去，几个人打了起来。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“高兴吗，高兴了就他妈散伙吧。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　赵烨摔了当初大家一起签名的石膏。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　林嘉茉用攒的SK开头的钱赔了老板。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻两手空空地背对大家离去。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　青春残酷之处在于，永远都以遗憾和惨烈收尾。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻说，男人会遇见两个女孩，一个是陆地，让他感到安全。一个是天空上的鸟，陪他一起高飞。如果方茴是陆地，那沈晓棠，便是能陪他飞翔的鸟。李碧华在《青蛇》里也写过，每个男人，都希望他生命中有两个女人：白蛇和青蛇。同期的，相间的，点缀他荒芜的命运。——只是，当他得到白蛇，她渐渐成了朱门旁惨白的余灰；那青蛇，却是树顶青翠欲滴爽脆刮辣的嫩叶子。当他得到了青蛇，她却是百子柜中闷绿的山草药；而白蛇，抬尽了头方见天际皑皑飘飞柔情万缕新雪花。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　在他在陪同方茴打完别人的孩子，抱着她时，他还是反悔了。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“我想从这里重新来过，和之前不一样的重新来过，因为，我后悔了。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　回到他打球那天，人群定格，方茴向他跑过来，世界只有他们。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　回到方茴在寝室崴到脚跌倒没接到他电话那天，他没有选择和沈晓棠去弹吉他。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　回到他和沈晓棠演出那天，方茴打电话给他，问他喜不喜欢沈晓棠，他的回答不是“不知道”，而是，“我爱的人是你啊”。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　再回到很久以前，也许重来也是无用。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　黄伟文有一句歌词是怎么唱的。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　【其实你我这美梦，气数早已尽，重来也是无用。】&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　他简单纯粹热情，而她敏感骄傲倔强。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她期待的他不懂，他想给出她退缩。终归是要错过的。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　于是时间过去十五年后，他们谁也没有和谁在一起。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　拍DV的女孩问陈寻有什么话想对方茴说时，他看着镜头，说，你好吗。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　DV女孩翻了一个白眼走了。他低下头，重复地念，方茴，你好吗。方茴。像当年他喜欢她的时候，人群里独独喜爱反复地念她的名字。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“方茴。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“怎么了？”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“没事。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“方茴。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“干嘛？”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“没事。就是想叫你名字。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　DV女孩拍远在法国的方茴，问她有什么时候话想对陈寻说。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她已亭亭，一袭红裙，美得如梦似幻。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　她转过头来，很大气地笑笑。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　陈寻翻到当年方茴还他的原理书，上面写着：&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　不悔梦归处，只恨太匆匆。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　“永远不是以前，也不是以后，我们在一起的那些瞬间，就是永远。”&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　最好的结局不过如此。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　谁没有被辜负过，谁没有去辜负过。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　如果过去还值得眷恋，别太快冰释前嫌。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　我们要相互亏欠，要不然凭何怀缅。&amp;nbsp;&lt;/span&gt;&lt;br /&gt;\n&lt;span style=&quot;color:#111111;font-family:Helvetica, Arial, sans-serif;font-size:13px;line-height:21.0599994659424px;background-color:#FFFFFF;&quot;&gt;　　错过还有记忆，唯愿天各一方，互相安好，再不打扰。&lt;/span&gt;', '0', '1433398284', '1', '0', '0', '0', '1433398284');
INSERT INTO `west_news` VALUES ('25', '13', '123', 'no', '../server/Public/Uploads/2015-06-05/2015060519520170014.jpg', '12312', '1234', '', '12341234', '0', '1433505124', '0', '0', '0', '0', '1433505124');
INSERT INTO `west_news` VALUES ('26', '13', '美媒：中国进口电影片源多元化 好莱坞难保垄断', 'no', '../server/Public/Uploads/2015-06-09/2015060921382985676.jpg', '美媒称，过去这周里，中国的票房被外国电影主宰，排行榜前五名全被进口片把持。这很罕见，但并非是完全史无前例的情况。', '新浪新闻', '', '&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	&lt;strong&gt;参考消息网6月9日报道&lt;/strong&gt;&amp;nbsp;美媒称，过去这周里，中国的票房被外国电影主宰，排行榜前五名全被进口片把持。这很罕见，但并非是完全史无前例的情况。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　据美国《福布斯》双周刊网站6月7日报道，但这周出现了一点新情况，那就是排名前四的影片中有两部既非好莱坞影片，也非英语影片。这两部影片分别是制作成本为1300万美元的宝莱坞喜剧《我的个神啊》，以及成本为3500万美元的日本少儿动画片《哆啦A梦：伴我同行》。它们在与两部好莱坞动作片《明日世界》与《末日崩塌》的对垒中毫不逊色，而这两部好莱坞影片的预算加起来足足有3亿美元。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　《我的个神啊》讲述的是印度明星阿米尔·汗扮演的外星人来到地球进行科研考察的故事，该影片与乔治·克鲁尼主演的科幻片《明日世界》旗鼓相当，但后者的预算是1.9亿美元，制作成本几乎是《我的个神啊》的15倍。《哆啦A梦：伴我同行》面对“巨石”强森出演的《末日崩塌》也非常抢眼，但《末日崩塌》的制作成本是前者的3倍。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　&lt;strong&gt;好莱坞应当感到忧虑吗？&lt;/strong&gt;\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　近5年来，中国的电影市场一直是外国电影发行方名副其实的淘金地，许多电影为中国严苛的配额制度下有限的进口片档期展开激烈竞争。随着中国电影市场发展迅速，很快就要成为世界最大票房市场，进入中国市场的每个机会对发行方来说都是潜在的财源，影片在内地影院上映的总票房一般能达到5000万美元、1亿美元甚至更多。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　这些价值连城的进口片档期绝大部分会落到好莱坞电影手中，这主要是因为它们给中国的影院、电影发行方等撒了大笔钱，政府相关部门按照每张售出票价格的8.3%抽税。多年来，好莱坞进口片的市场份额一般占据中国年票房收入的半壁江山。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　对于这种状况，中国的电影管理部门很矛盾。一方面，他们享受美国影片提供的经济好处。如果不是好莱坞影片提供稳定可靠的现金流，中国的电影行业不会这样兴旺，中国也不会有今天这样繁荣的现代电影产业了。另一方面，中国的领导人又提防美国价值观给本国民众带来严重冲击。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:16px;font-family:\'Microsoft YaHei\', u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53;&quot;&gt;\n	　　如果印度、俄罗斯等国的电影能持续抗衡美国电影的话，中国很有可能乐于把部分宝贵的进口片档期重新分配给这些国家的电影。那样的话，好莱坞恐怕真的要非常担心了。\n&lt;/p&gt;', '1', '1433857141', '0', '0', '1', '1', '1435981513');
INSERT INTO `west_news` VALUES ('27', '13', '上海国际电影节互联网电影嘉年华新闻通气会召开', 'no', '../server/Public/Uploads/2015-06-09/2015060921425454817.jpg', '今日下午，上海国际电影节互联网电影嘉年华新闻通气会在普陀区政府召开。上海国际电影节作为中国唯一的国际A类电影节，结合自身平台与资源优势', '郁婷苈', '', '&lt;p style=&quot;color:#333333;font-family:\'microsoft yahei\';font-size:16px;text-align:justify;background-color:#FFFFFF;&quot;&gt;\n	&lt;span style=&quot;color:#E53333;&quot;&gt;东方网记者郁婷苈6月9日报道：今日下午，上海国际电影节互联网电影嘉年华新闻通气会在普陀区政府召开。上海国际电影节作为中国唯一的国际A类电影节，结合自身平台与资源优势，此次牵手普陀区，将于6月17日，在长风生态商务区举办首届“互联网电影嘉年华”。届时将向公众和媒体开放互联网电影展映、“互联网+电影”产业投资跨界峰会、互联网电影上海高峰会以及互联网电影之夜等四大板块活动。&lt;/span&gt;\n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:\'microsoft yahei\';font-size:16px;text-align:justify;background-color:#FFFFFF;&quot;&gt;\n	&lt;span style=&quot;line-height:1.5;color:#E53333;&quot;&gt;　　据悉，普陀区自2012年起，已连续三年承办了上海国际电影节的节中节“手机电影节”，取得了非常好的效果。今年，升级为“互联网电影嘉年华”后，进一步聚焦电影产业，搭建一个涵盖互联网各领域与电影产业各环节对话与合作的开放平台；汇集全球互联网领军人物共商发展大计；发布《“互联网+电影”趋势研究报告》全景展示中国互联网电影发展理念和成果；交流融合最先进科技与最悠久文化。&lt;/span&gt; \n&lt;/p&gt;\n&lt;p style=&quot;color:#333333;font-family:\'microsoft yahei\';font-size:16px;text-align:justify;background-color:#FFFFFF;&quot;&gt;\n	&lt;span style=&quot;color:#E53333;&quot;&gt;　　依托“互联网电影嘉年华”的交流平台，普陀区正积极打造发展互联网影视产业的“三个空间”：一是物理空间。在金沙江路（大渡河路-真北路）沿线，分布有华大科技园、天地软件园等产业园区，有近10万平方米的优质商务楼宇，随时欢迎互联网影视企业入驻。其中地处长征镇的天地软件园作为市中心区域规模最大的高新技术产业园区之一，现已集聚了100多家网络游戏、数字多媒体、互联网信息服务等文化创意产业领域的优秀企业。二是政策空间。制定聚焦互联网影视发展的专项产业政策，期间借鉴兄弟省市、区的经验，同时充分发挥普陀区现有文化发展资金的引导作用。针对互联网影视等“四新”经济新兴产业，在普陀区已有的各项政策的基础上，充分发挥财政资金的引导作用，有针对性地制定政策对有关企业进行扶持。不断优化产业结构，推动区域经济转型发展，力争打造成为科创中心的重要产业承载区，形成与张江高科技园区的东西联动。三是发展空间。一方面发挥区内金融资源的优势，促进互联网影视与金融融合发展。另一方面通过提供优质、廉洁、高效的政府服务，为企业提供健康可持续的发展环境。&lt;/span&gt;\n&lt;/p&gt;', '1', '1433857379', '1', '0', '1', '1', '1435981496');
INSERT INTO `west_news` VALUES ('28', '32', '《横冲直撞好莱坞》国际版预告曝光', 'no', '../server/Public/Uploads/2015-06-09/2015060922542855352.jpg', '由佟大为、赵薇、黄晓明主演的暑期档最强影片《横冲直撞好莱坞》将于6月26日上映，这部携手全好莱坞团队的公路喜剧电影今日曝光了国际版预告片。', '追梦路', '', '&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	由佟大为、赵薇、黄晓明主演的暑期档最强影片《横冲直撞好莱坞》将于6月26日上映，这部携手全好莱坞团队的公路喜剧电影今日曝光了国际版预告片。预告不仅聚集了三位主演的精彩片段，还首次曝光了好莱坞客串&lt;a href=&quot;http://star.yule.com.cn/&quot; target=&quot;_blank&quot; class=&quot;keylink&quot;&gt;明星&lt;/a&gt;的阵容。佟大为在片中饰演一位好莱坞电影发烧友，在预告片中展示摩托飞车绝技，秀电影《终结者》经典英文台词，还以百变的喜剧造型吸引了网友们的眼球，网友留言道：“大为哥，你太嗨了！”\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　&lt;strong&gt;佟大为演绎电影发烧友 惊险开启好莱坞追梦路&lt;/strong&gt; \n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　在最新公布的《横冲直撞好莱坞》国际版预告中，佟大为饰演的好莱坞电影发烧友“大伟”，为了心中对电影的热爱踏上了好莱坞“朝圣之旅”。他造型独特，顶着一头墨西哥“方便面”式卷发，以游客姿态和奥斯卡小金人兴奋合影，还不停用一口东北方言在旅行中对所见所闻发表感叹：“这跟电影里一模一样呀！”俨然一个呆萌的“好莱坞发烧友”。预告片中，他还以敏捷的身手秀出高超武技，摩托飞车，并在炫技后引用电影《终结者2》中施瓦辛格经典台词：“Come with me if you want to live”和“Hasta la vista baby ！”，展现出与平时不同的酷炫气质。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　佟大为本人也在微博发布了这条预告片，并说道：“其实我演的是一个飞檐走壁的英雄，真的，可以以一敌百呢！”赵薇更是发布微博留下悬念：“《破产姐妹》的Max真的好漂亮，佟大为艳福不浅！”网友“茉翎煖”留言表示：“看见预告已经不淡定了，快点上映吧！”\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　&lt;strong&gt;“暖男”喜剧模式火力全开 佟大为百变造型笑点多&lt;/strong&gt; \n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　近年来，佟大为饰演的“暖男”角色深入人心，而在《横冲直撞好莱坞》里，他彻底颠覆了自己的“暖男”形象。其中，他的“泡面头”造型、“洋妞”造型，成为了网友们热议的焦点。据佟大为自己介绍：“这个爆炸式头套是墨西哥风格的，而且据说花了一万美金呢，拍完之后，这个一万美金的头套被一位工作人员收藏了。”\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　国际版预告片的结尾亮点当属佟大为的“洋妞”造型，视频中佟大为不但一身桃红色短裙，带着夸张长卷发，穿着高跟鞋，还上演了性感的“扭臀”动作。其中，他用女声回答黄晓明的一句：“人家喜欢这样子嘛！”更是让网友们忍俊不禁，网友“于鑫的小面包”留言：“美妞，给爷笑一个”，网友“猫咪小小背”也赞道：“这句话说得好妖娆”，而更有不少网友则直接引用佟大为戏中台词评论：“人家喜欢这样子嘛！”\n&lt;/p&gt;', '0', '1433861698', '1', '0', '0', '1', '1433861715');
INSERT INTO `west_news` VALUES ('29', '32', '《风云天地》热播 童菲“虐恋”刘恺威', 'no', '../server/Public/Uploads/2015-06-09/2015060922555312520.jpg', '由王晶执导、汪明荃、赵芝、刘恺威、唐嫣、童菲、莫小棋等主演的电视剧《风云天地》正在安徽卫视热播。', '风云天地', '', '&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　由王晶执导、汪明荃、赵芝、刘恺威、唐嫣、童菲、莫小棋等主演的&lt;a href=&quot;http://www.yule.com.cn/dsj/&quot; target=&quot;_blank&quot; class=&quot;keylink&quot;&gt;电视剧&lt;/a&gt;《风云天地》正在安徽卫视热播。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　剧中，童菲与刘恺威上演的虐恋，二哥（刘恺威）因被人陷害入狱，学法律的巧儿不惜一切代价为二哥洗脱罪名，二哥有困难的时候总会陪在他身边，默默的支持他。童菲介绍采访时也透露：“我跟刘恺威之前不是很熟，前几场戏真的很不在状态，不过随着拍摄的磨合，尤其是转场巴黎拍摄后，我才逐渐进入角色，也不再尴尬了，他真的是个好好先生，在现场对所有工作人员都很亲切，休息时还经常跟大家聊天开玩笑，没有一点距离感。”\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　据悉，刚刚结束电影《女汉子完美恋人》的拍摄，已赶赴横店加盟到传奇古装喜剧电影《济公》的拍摄中，并与郑元畅、安七炫等搭档。\n&lt;/p&gt;', '0', '1433861769', '1', '0', '0', '1', '1433861769');
INSERT INTO `west_news` VALUES ('30', '32', '《九月照相馆》热拍 殷旭演技大爆发', 'no', '../server/Public/Uploads/2015-06-09/2015060922564191496.jpg', '近日，电影《九月照相馆》开拍，该片由实力派女演员殷旭领衔主演，殷旭片中饰演李丹——一个爱孩子、爱丈夫，尊敬老人的女子。在片中她将挑战大量多种形式的哭戏。', '电影', '', '&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	近日，电影《九月照相馆》开拍，该片由实力派女演员殷旭领衔主演，殷旭片中饰演李丹——一个爱孩子、爱丈夫，尊敬老人的女子。在片中她将挑战大量多种形式的哭戏。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　《九月照相馆》讲述的是照相馆发生的一系列故事。片中，殷旭饰演的李丹是一个内心十分纠结复杂的人物，并有着各种情绪的宣泄。片中殷旭诠释的李丹还将表现出各种不同状态下的哭泣，来释放情绪。殷旭表示：“这是我拍过哭戏最多的一部剧，希望通过自己的诠释能给这个角色带来不一样的灵魂。”制片人称：“殷旭是一个特别用功和用心的好演员，演的很棒！”\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　据悉，《九月照相馆》目前正在紧锣密鼓地拍摄中，这次殷旭将给我带来一个不同与以往的作品，让我们共同期待她在新片中的表现。\n&lt;/p&gt;', '0', '1433861815', '1', '0', '0', '1', '1433861815');
INSERT INTO `west_news` VALUES ('31', '32', '《花千骨》今晚开播 阮伟旌获封“蓝眼狂魔”', 'no', '../server/Public/Uploads/2015-06-09/2015060922573458478.jpg', '古装玄幻剧《花千骨》将于今晚在湖南卫视开播', '花千骨', '', '&lt;div id=&quot;NewsContentLabel&quot; class=&quot;NewsContent&quot; style=&quot;margin:0px auto;padding:10px 30px;border:0px;font-size:14px;font-family:宋体;&quot;&gt;\n	&lt;p&gt;\n		古装玄幻剧《花千骨》将于今晚在湖南卫视开播，作为暑期档首发剧，该剧由慈文传媒集团制作并发行，林玉芬、高林豹、梁胜权联合执导，霍建华、赵丽颖、张丹峰、马可、阮伟旌联合主演，讲述了少女花千骨与长留上仙白子画的凄美爱情、三界之间各种斗争的故事。阮伟旌作为花千骨中反派大魔头，除了白色的眉毛，飘逸的长发等标配，他的蓝眼造型成为又一亮点，被“骨粉们”称为“蓝眼狂魔”。\n	&lt;/p&gt;\n	&lt;div&gt;\n		&lt;br /&gt;\n	&lt;/div&gt;\n&lt;/div&gt;', '0', '1433861868', '1', '0', '0', '1', '1433861868');
INSERT INTO `west_news` VALUES ('32', '32', '关晓彤再饰安洁西 《嬉戏魔法乐园》创奇幻世界', 'no', '../server/Public/Uploads/2015-06-09/2015060922582892879.jpg', '国内首部主题公园实景偶像剧《嬉戏魔法乐园》近期正在常州环球动漫嬉戏谷如火如荼的热拍中', '姜珮', '', '&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	国内首部主题公园实景&lt;a href=&quot;http://www.yule.com.cn/ouxiang/&quot; target=&quot;_blank&quot; class=&quot;keylink&quot;&gt;偶像&lt;/a&gt;剧《嬉戏魔法乐园》近期正在常州环球动漫嬉戏谷如火如荼的热拍中，剧中集结姜珮瑶、纪子墨、杨雪、孙蒙恩、蒋羽熙、王祖怀、蒋诗萌、周凯文等众多高颜值&lt;a href=&quot;http://www.yule.com.cn/ouxiang/&quot; target=&quot;_blank&quot; class=&quot;keylink&quot;&gt;偶像&lt;/a&gt;新星，曾在新媒体电影《魔法触恋》中有过精彩演绎的关晓彤、蔡俊涛强力回归，在本剧中延续奇幻魔力。\n&lt;/p&gt;\n&lt;p style=&quot;font-size:14px;font-family:宋体;background-color:#F5FAFE;&quot;&gt;\n	　　6月6日，《嬉戏魔法乐园》在阴雨初晴的常州迎来重头戏份，“完美公主”关晓彤一身飘逸长裙现身常州环球动漫嬉戏谷。本日，拍摄的是“安洁西公主”受到“爆米花王子”的吸引来到现实世界，再次施展魔法点亮朦胧爱恋。近日，忙于新戏拍摄的蔡俊涛也特别从剧组请假，继续化身魔法师，玩转奇幻世界。\n&lt;/p&gt;', '1', '1433861914', '0', '1', '1', '1', '1435840222');

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of west_user
-- ----------------------------
INSERT INTO `west_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'manage', '1', '1430900305');
INSERT INTO `west_user` VALUES ('13', 'ztf', '09a6f4ead95fb05ee29ab9e7d1219e33', 'user', '1', '1432794237');
INSERT INTO `west_user` VALUES ('30', 'baidu', 'bfe279945c6109d067bcd295b5189d86', 'user', '1', '1433353073');
INSERT INTO `west_user` VALUES ('31', 'alibaba', 'ffccc52b393d6a9b366eb7fe3dff9ab5', 'user', '1', '1433353280');
INSERT INTO `west_user` VALUES ('32', 'liang', '900dfd999fc81642102bf60dffc12d5a', 'user', '1', '1433861008');
INSERT INTO `west_user` VALUES ('33', 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'user', '1', '1435975534');

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
  `detail` text NOT NULL COMMENT '详情',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `recommend` tinyint(1) NOT NULL COMMENT '是否被推荐',
  `top` tinyint(1) NOT NULL COMMENT '是否置顶',
  `modify_time` varchar(15) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='影视作品表';

-- ----------------------------
-- Records of west_videos
-- ----------------------------
INSERT INTO `west_videos` VALUES ('8', '13', '钢铁侠II', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401120413291.jpg', '', '0', '0', '0', '1433351527');
INSERT INTO `west_videos` VALUES ('9', '13', '雷神II', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401121665662.jpg', '', '0', '0', '0', '1433351538');
INSERT INTO `west_videos` VALUES ('10', '13', '无敌浩克II', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401130747942.jpg', '', '0', '0', '0', '1433351588');
INSERT INTO `west_videos` VALUES ('11', '13', '美国队长II', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401225315736.jpg', '', '0', '0', '0', '1433352175');
INSERT INTO `west_videos` VALUES ('12', '13', '钢铁侠III', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401131723032.jpg', '', '0', '0', '0', '1433351599');
INSERT INTO `west_videos` VALUES ('13', '13', '复仇者联盟I', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401115356165.jpg', '', '0', '0', '0', '1433351515');
INSERT INTO `west_videos` VALUES ('16', '13', '复仇者联盟II', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401283735063.jpg', '', '0', '0', '0', '1433352518');
INSERT INTO `west_videos` VALUES ('17', '13', '银河护卫队', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401113461652.jpg', '', '0', '0', '0', '1433351498');
INSERT INTO `west_videos` VALUES ('18', '13', '钢铁侠I', 'http://player.youku.com/player.php/sid/XNjI3NjQzOTI4/v.swf', '../server/Public/Uploads/2015-06-04/2015060401093816694.jpg', '', '1', '0', '0', '1433503074');
INSERT INTO `west_videos` VALUES ('19', '13', '美国队长I', 'http://player.youku.com/player.php/sid/XNjI5MTE2NzE2/v.swf', '../server/Public/Uploads/2015-06-04/2015060401100588091.jpg', '', '1', '0', '0', '1433503035');
INSERT INTO `west_videos` VALUES ('22', '13', '无敌浩克', 'http://baike.baidu.com/link?url=wSXu74RxKDJOkBDTnKXD0xXtaZePutqEektm8nTiTSRi21xzbkaGUPmFxjnAfy947wSkB9Am2Kll0ozTzkoBhCo9wRu-h34I', '../server/Public/Uploads/2015-06-04/2015060401112228651.jpg', '', '0', '0', '0', '1433351485');
INSERT INTO `west_videos` VALUES ('25', '13', '重返20岁', 'http://player.youku.com/player.php/sid/XODk0NTQ5MTcy/v.swf', '../server/Public/Uploads/2015-06-09/2015060921453273001.png', '', '1', '0', '0', '1433857533');
INSERT INTO `west_videos` VALUES ('26', '13', '第七子:降魔之战', 'http://player.youku.com/player.php/sid/XOTA5ODczMzk2/v.swf', '../server/Public/Uploads/2015-06-09/2015060921452563340.png', '', '1', '0', '0', '1433857526');
INSERT INTO `west_videos` VALUES ('27', '13', '狼图腾', 'http://player.youku.com/player.php/sid/XOTE4MzU2MDE2/v.swf', '../server/Public/Uploads/2015-06-09/2015060921451733424.png', '', '1', '0', '1', '1435980505');
INSERT INTO `west_videos` VALUES ('28', '13', '一万年以后', 'http://player.youku.com/player.php/sid/XOTM5NDc3MDg4/v.swf', '../server/Public/Uploads/2015-06-09/2015060921441958357.png', '', '1', '1', '0', '1435980500');
INSERT INTO `west_videos` VALUES ('29', '13', '战狼特攻队', 'http://player.youku.com/player.php/sid/XNDgwODYyNDYw/v.swf', '../server/Public/Uploads/2015-06-09/2015060921441141616.png', '', '1', '0', '1', '1435980503');
INSERT INTO `west_videos` VALUES ('30', '13', '法老墓的诅咒', 'http://player.youku.com/player.php/sid/XODUwMjkxNTY0/v.swf', '../server/Public/Uploads/2015-06-09/2015060921440399596.png', '&lt;span style=&quot;color:#E53333;&quot;&gt;dfsfsaf撒发生发生撒旦GV比较难看女&lt;/span&gt;', '1', '1', '0', '1435980171');
INSERT INTO `west_videos` VALUES ('31', '13', '智取威虎山', 'http://player.youku.com/player.php/sid/XODkwNzUzNDQ4/v.swf', '../server/Public/Uploads/2015-06-09/2015060921435418687.png', '', '0', '0', '0', '1433857436');
INSERT INTO `west_videos` VALUES ('32', '13', 'asfdsa', 'adsafas', '../server/Public/Uploads/2015-06-05/2015060519284140844.png', '', '0', '0', '0', '1433503722');
INSERT INTO `west_videos` VALUES ('33', '32', ' 失孤', 'http://player.youku.com/player.php/sid/XOTUwMzc1MDI0/v.swf', '../server/Public/Uploads/2015-06-09/2015060922481374888.png', '', '1', '0', '0', '1433861348');
INSERT INTO `west_videos` VALUES ('34', '32', '饥饿游戏3:嘲笑鸟(上)', 'http://player.youku.com/player.php/sid/XOTEwMjYwMDgw/v.swf', '../server/Public/Uploads/2015-06-09/2015060922495863366.png', '', '1', '1', '1', '1435840316');
INSERT INTO `west_videos` VALUES ('35', '32', '有种你爱我 ', 'http://player.youku.com/player.php/sid/XOTE1NDAwMzAw/v.swf', '../server/Public/Uploads/2015-06-09/2015060922504973812.png', '', '1', '0', '0', '1433861456');
INSERT INTO `west_videos` VALUES ('36', '32', '三不管', 'http://player.youku.com/player.php/sid/XODA0NjgyNDAw/v.swf', '../server/Public/Uploads/2015-06-09/2015060922514195259.png', '', '1', '0', '0', '1433861513');
INSERT INTO `west_videos` VALUES ('38', '32', '美女敢死队', 'http://player.youku.com/player.php/sid/XODg3ODIxMzI0/v.swf', '../server/Public/Uploads/2015-06-09/2015060922530592394.png', '', '0', '0', '0', '1433861594');
INSERT INTO `west_videos` VALUES ('40', '13', '辅导费', '方法', '../server/Public/Uploads/2015-07-04/2015070409450477943.jpg', '&lt;span style=&quot;color:#E53333;&quot;&gt;豆腐豆腐豆腐三国杀&lt;/span&gt;', '0', '0', '0', '1435974531');
