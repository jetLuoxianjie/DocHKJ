/*
 Navicat Premium Data Transfer

 Source Server         : mysql_one
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : 127.0.0.1:3306
 Source Schema         : doc

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 26/10/2019 15:08:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hc_admin
-- ----------------------------
DROP TABLE IF EXISTS `hc_admin`;
CREATE TABLE `hc_admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(16) NOT NULL DEFAULT '',
  `Password` varchar(32) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Code` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_admin
-- ----------------------------
BEGIN;
INSERT INTO `hc_admin` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '895744432@QQ.COM', '黑龙江科技大学');
COMMIT;

-- ----------------------------
-- Table structure for hc_banner
-- ----------------------------
DROP TABLE IF EXISTS `hc_banner`;
CREATE TABLE `hc_banner` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Picture` varchar(50) NOT NULL DEFAULT '',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Link` varchar(255) NOT NULL DEFAULT '',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_banner
-- ----------------------------
BEGIN;
INSERT INTO `hc_banner` VALUES (2, '2e1c0f5f3aa9cadf541f62f60d1b58bd.jpg', '来看看啊 ', 'list/pro', 100, 0, 1570957515);
INSERT INTO `hc_banner` VALUES (3, 'dde1bf773a715b922067284af9ac7f27.png', '啊啊', 'list/pro', 100, 0, 1571140620);
INSERT INTO `hc_banner` VALUES (4, '7e897a3f5038b45e0263a8e36468b839.jpg', ' ', 'list/pro', 100, 1, 1571223712);
INSERT INTO `hc_banner` VALUES (5, '7a35d676143017d084f13b960bb617f8.jpg', ' ', 'list/pro', 100, 1, 1571223728);
COMMIT;

-- ----------------------------
-- Table structure for hc_category
-- ----------------------------
DROP TABLE IF EXISTS `hc_category`;
CREATE TABLE `hc_category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pid` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(20) NOT NULL DEFAULT '',
  `Cover` varchar(255) NOT NULL DEFAULT '',
  `Cnt` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Alias` varchar(30) NOT NULL DEFAULT '',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Pid` (`Pid`,`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_category
-- ----------------------------
BEGIN;
INSERT INTO `hc_category` VALUES (1, 0, '教育频道', '/static/Home/default/img/cover-edu.png', 1, 4, 'edu', 1);
INSERT INTO `hc_category` VALUES (2, 0, '专业资料', '/static/Home/default/img/cover-pro.png', 0, 1, 'pro', 1);
INSERT INTO `hc_category` VALUES (3, 0, '实用文档', '/static/Home/default/img/cover-pra.png', 4, 2, 'pra', 1);
INSERT INTO `hc_category` VALUES (4, 0, '资格考试', '/static/Home/default/img/cover-exam.png', 1, 3, 'exam', 1);
INSERT INTO `hc_category` VALUES (5, 0, '生活休闲', '/static/Home/default/img/cover-life.png', 0, 5, 'lift', 0);
INSERT INTO `hc_category` VALUES (7, 1, '幼儿教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (8, 1, '小学教育', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (9, 1, '初中教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (10, 1, '高中教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (11, 1, '职业教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (12, 1, '成人教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (13, 1, '文库题库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (15, 7, '幼儿读物', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (16, 7, '少儿英语', '', 0, 1, '', 1);
INSERT INTO `hc_category` VALUES (17, 7, '唐诗宋词', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (18, 7, '育儿理论经验', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (19, 7, '育儿知识', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (20, 7, '家庭教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (21, 2, '人文社科', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (22, 2, '经营营销', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (23, 2, '工程科技', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (24, 2, 'IT/计算机', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (25, 2, '自然科学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (26, 2, '医疗卫生', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (27, 2, '农林渔牧', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (28, 24, '互联网', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (29, 24, '电脑基础知识', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (30, 24, '计算机软件及应用', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (31, 24, '计算机硬件及网络', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (32, 8, '语文', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (33, 8, '数学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (34, 8, '英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (35, 8, '作文', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (36, 8, '其它课程', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (37, 9, '作文库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (38, 9, '语文', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (39, 9, '数学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (40, 9, '英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (41, 9, '物理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (42, 9, '化学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (43, 9, '历史', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (44, 9, '生物', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (45, 9, '地理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (46, 9, '政治', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (47, 9, '中考', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (48, 9, '科学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (49, 9, '竞赛', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (50, 9, '其它课程', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (52, 1, '高等教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (53, 52, '理学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (54, 52, '工学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (55, 52, '经济学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (56, 52, '医学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (57, 52, '管理学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (58, 52, '文学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (59, 52, '哲学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (60, 52, '历史学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (61, 52, '法学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (62, 52, '教育学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (63, 52, '农学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (64, 52, '军事', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (65, 52, '艺术', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (66, 52, '研究生入学考试', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (67, 52, '院校资料', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (68, 52, '其它', '', 0, 9, '', 1);
INSERT INTO `hc_category` VALUES (69, 13, '中考题库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (70, 13, '高考题库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (71, 13, '公务员题库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (72, 13, '外语题库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (73, 13, '考研题库', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (74, 12, '成考', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (75, 12, '自考', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (76, 12, '专升本', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (77, 12, '电大', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (78, 12, '远程、网络教育', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (79, 11, '中职中专', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (80, 11, '职高对口', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (81, 11, '职业技术培训', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (82, 11, '其它', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (83, 10, '语文', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (84, 10, '数学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (85, 10, '英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (86, 10, '物理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (87, 10, '化学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (88, 10, '历史', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (89, 10, '生物', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (90, 10, '地理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (91, 10, '思想政治', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (92, 10, '高中作文', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (93, 10, '学科竞赛', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (94, 10, '其它课程', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (95, 21, '法律资料', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (96, 21, '军事/政治', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (97, 21, '广告/传媒', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (98, 21, '设计/艺术', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (99, 21, '教育学/心理学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (100, 21, '文化/宗教', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (101, 21, '哲学/历史', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (102, 21, '文学研究', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (103, 21, '社会学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (104, 22, '经济/市场', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (105, 22, '金融/投资', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (106, 22, '人力资源管理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (107, 22, '财务管理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (108, 22, '生产/经营管理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (109, 22, '企业管理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (110, 22, '公共/行政管理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (111, 22, '销售/营销', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (112, 23, '信息与通信', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (113, 23, '电子/电路', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (114, 23, '建筑/土木', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (115, 23, '城乡/园林规划', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (116, 23, '环境科学/食品科学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (117, 23, '电力/水利', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (118, 23, '交通运输', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (119, 23, '能源/化工', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (120, 23, '机械/仪表', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (121, 23, '冶金/矿山/地质', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (122, 23, '纺织/轻工业', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (123, 23, '材料科学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (124, 23, '兵器/核科学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (125, 25, '数学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (126, 25, '物理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (127, 25, '化学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (128, 25, '生物学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (129, 25, '天文/地理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (130, 26, '临床医学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (131, 26, '基础医学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (132, 26, '预防医学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (133, 26, '中医中药', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (134, 26, '药学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (135, 27, '农学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (136, 27, '林学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (137, 27, '畜牧兽医', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (138, 27, '水产渔业', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (139, 3, '求职/职场', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (140, 3, '计划/解决方案', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (141, 3, '总结/汇报', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (142, 3, '党团工作', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (143, 3, '工作范文', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (144, 3, '表格/模板', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (145, 139, '简历', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (146, 139, '面试', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (147, 139, '职业规划', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (148, 139, '自我管理与提升', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (149, 139, '笔试', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (150, 139, '社交礼仪', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (151, 140, '学习计划', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (152, 140, '工作计划', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (153, 140, '商业计划', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (154, 140, '营销/活动策划', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (155, 140, '解决方案', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (156, 140, '其它', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (157, 141, '学习总结', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (158, 141, '实习总结', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (159, 141, '工作总结/汇报', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (160, 141, '其它', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (161, 142, '入党/转正申请', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (162, 142, '思想汇报/心得体会', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (163, 142, '党团建设', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (164, 142, '其它', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (165, 143, '制度/规范', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (166, 143, '行政公文', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (167, 143, '演讲/主持', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (168, 143, '其它', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (169, 144, '合同协议', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (170, 144, '书信模板', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (171, 144, '表格类模板', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (172, 144, '调查/报告', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (173, 4, '财会类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (174, 4, '公务员类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (175, 4, '学历类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (176, 4, '建筑类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (177, 4, '外语类', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (178, 4, '资格类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (179, 4, '外贸类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (180, 4, '医药类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (181, 4, '计算机类', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (182, 173, '注册会计师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (183, 173, '价格鉴证师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (184, 173, '证券从业资格', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (185, 173, '经济师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (186, 173, '初级经济师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (187, 173, '中级经济师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (188, 173, '注册税务师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (189, 173, '会计从业资格', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (190, 173, '银行从业资格', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (191, 173, '初级会计职称', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (192, 173, '中级会计职称', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (193, 173, '高级会计职称', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (194, 173, '统计师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (195, 173, '资产评估师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (196, 173, 'ACCA/CAT', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (197, 173, '精算师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (198, 173, '基金从业', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (199, 173, '期货从业资格', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (200, 173, '内部审计师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (201, 173, '中级审计师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (202, 173, '助理理财规划师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (203, 173, '理财规划师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (204, 174, '国家公务员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (205, 174, '地方公务员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (206, 174, '政法干警', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (207, 174, '事业单位', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (208, 174, '公选', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (209, 174, '招警', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (210, 174, '信用社', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (211, 174, '三支一扶', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (212, 174, '军转干', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (213, 174, '村官', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (214, 175, '中考', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (215, 175, '小升初', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (216, 175, '考研', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (217, 175, '高考', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (218, 175, '会计硕士', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (219, 175, '法律硕士', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (220, 176, '一级建造师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (221, 176, '二级建造师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (222, 176, '造价工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (223, 176, '公路造价工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (224, 176, '监理工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (225, 176, '质量工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (226, 176, '房地产估价师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (227, 176, '房地产经纪人', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (228, 176, '计量师 造价员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (229, 176, '安全评价师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (230, 176, '资产评估师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (231, 176, '咨询工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (232, 176, '房地产评估师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (234, 176, '土地代理人', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (235, 176, '给排水工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (236, 176, '一级建筑师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (237, 176, '二级建筑师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (238, 176, '化工工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (239, 176, '暖通工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (240, 176, '结构工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (241, 176, '安全工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (242, 176, '招标师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (243, 176, '测绘工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (244, 176, '城市规划师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (245, 176, '岩土工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (246, 176, '电气工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (247, 176, '土地估价师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (248, 176, '设备监理师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (249, 176, '物业管理师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (250, 176, '通信工程师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (251, 176, '环境影响评价师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (252, 177, '澳洲留学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (253, 177, '英国留学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (254, 177, '雅思', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (255, 177, '托福', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (256, 177, 'GRE', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (257, 177, '出国留学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (258, 177, '英语四级', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (259, 177, '英语六级', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (260, 177, 'BEC', '', 1, 0, '', 1);
INSERT INTO `hc_category` VALUES (261, 177, 'GMAT', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (262, 177, '自考英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (263, 177, '职称英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (264, 177, '公共英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (265, 177, '职称日语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (266, 177, '口译笔译', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (267, 177, '英语三级', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (268, 177, '专四专八', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (269, 177, 'ACT', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (270, 177, 'SAT', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (271, 178, '国家司法', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (272, 178, '幼儿教师资格证', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (273, 178, '小学教师资格证', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (274, 178, '中学教师资格证', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (275, 178, '人力资源管理师三级', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (276, 178, '企业法律顾问', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (277, 178, '管理咨询师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (278, 178, '项目管理师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (279, 178, '企业培训师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (280, 178, '社会工作者', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (281, 178, '出版资格', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (282, 178, '广告师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (283, 178, '公共营养师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (284, 178, '心理咨询师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (285, 178, '驾照考试', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (286, 179, '国际商务师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (287, 179, '外销员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (288, 179, '单证员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (289, 179, '货运代理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (290, 179, '物流师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (291, 179, '报关员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (292, 179, '跟单员', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (293, 180, '执业中药师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (294, 180, '执业西药师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (295, 180, '公卫执业医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (296, 180, '公卫执业助理', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (297, 180, '药学职称', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (298, 180, '中药学职称', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (299, 180, '临床执业医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (300, 180, '临床助理医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (301, 180, '中医执业医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (302, 180, '中医助理医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (303, 180, '中西医执业医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (304, 180, '中西医助理医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (305, 180, '口腔执业医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (306, 180, '口腔助理医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (307, 180, '护士资格', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (308, 180, '内科主治医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (309, 180, '外科主治医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (310, 180, '妇产科主治医师', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (311, 180, '医学检验', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (312, 181, '职称计算机', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (313, 5, '星座运势', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (314, 313, '手相面相', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (315, 313, '占卜算命', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (316, 313, '星座运势', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (317, 313, '风水学', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (318, 5, '兴趣爱好', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (319, 318, '体育/运动', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (320, 318, '音乐', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (321, 318, '旅游购物', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (322, 318, '美容化妆', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (323, 318, '影视/动漫', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (324, 318, '保健养生', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (325, 318, '随笔', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (326, 318, '摄影摄像', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (327, 318, '幽默滑稽', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (328, 5, '面试模板', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (329, 328, '明星', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (330, 328, '花边', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (331, 328, '资讯', '', 0, 0, '', 0);
INSERT INTO `hc_category` VALUES (332, 5, '其它', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (333, 332, '其它', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (334, 10, '高考', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (335, 0, '考研专栏', '/static/Home/default/img/cover-edu.png', 0, 0, 'ky', 1);
INSERT INTO `hc_category` VALUES (337, 335, '专业资料', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (338, 335, '考研英语', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (341, 0, '工作面试', '/static/Home/default/img/cover-life.png', 0, 5, 'ms', 1);
INSERT INTO `hc_category` VALUES (342, 341, '面试模板', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (343, 341, '面试资料', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (344, 335, '考研指导', '', 0, 0, '', 1);
INSERT INTO `hc_category` VALUES (345, 344, '考研资料', '', 0, 0, '', 1);
COMMIT;

-- ----------------------------
-- Table structure for hc_coin_log
-- ----------------------------
DROP TABLE IF EXISTS `hc_coin_log`;
CREATE TABLE `hc_coin_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Coin` int(11) NOT NULL DEFAULT '0',
  `Log` varchar(512) NOT NULL DEFAULT '',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `hc_coin_log_Uid` (`Uid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_coin_log
-- ----------------------------
BEGIN;
INSERT INTO `hc_coin_log` VALUES (1, 1, 5, '签到成功，获得 5 个金币', 1570951285);
INSERT INTO `hc_coin_log` VALUES (2, 2, 5, '签到成功，获得 5 个金币', 1570956383);
INSERT INTO `hc_coin_log` VALUES (3, 2, 5, '分享了一篇未被分享过的文档《对照党章找差距范文(10篇)》，获得 5 个积分', 1570957853);
INSERT INTO `hc_coin_log` VALUES (4, 2, 0, '在免费期限内，下载同一篇文档《对照党章找差距范文(10篇)》免费', 1570957869);
INSERT INTO `hc_coin_log` VALUES (5, 2, 5, '分享了一篇未被分享过的文档《8d7e1e65d93b9c2224f526cff9bdebeb》，获得 5 个积分', 1570958218);
INSERT INTO `hc_coin_log` VALUES (6, 2, 0, '在免费期限内，下载同一篇文档《8d7e1e65d93b9c2224f526cff9bdebeb》免费', 1570958878);
INSERT INTO `hc_coin_log` VALUES (7, 2, -5, '系统删除《8d7e1e65d93b9c2224f526cff9bdebeb》，扣除 5 个金币', 1570964764);
INSERT INTO `hc_coin_log` VALUES (8, 2, -5, '系统删除《对照党章找差距范文(10篇)》，扣除 5 个金币', 1570964774);
INSERT INTO `hc_coin_log` VALUES (9, 2, 5, '分享了一篇未被分享过的文档《1_2019励志奖学金申请审批表》，获得 5 个积分', 1570964805);
INSERT INTO `hc_coin_log` VALUES (10, 2, 0, '在免费期限内，下载同一篇文档《1_2019励志奖学金申请审批表》免费', 1570964819);
INSERT INTO `hc_coin_log` VALUES (11, 2, 5, '签到成功，获得 5 个金币', 1571062053);
INSERT INTO `hc_coin_log` VALUES (12, 2, 5, '分享了一篇未被分享过的文档《“对照党章党规找差距”专题民主生活会个人对照检视材料》，获得 5 个积分', 1571062305);
INSERT INTO `hc_coin_log` VALUES (13, 2, 5, '分享了一篇未被分享过的文档《附件2和附件3》，获得 5 个积分', 1571136232);
INSERT INTO `hc_coin_log` VALUES (14, 2, 5, '分享了一篇未被分享过的文档《对照党章党规找差距研讨发言提纲1》，获得 5 个积分', 1571136493);
INSERT INTO `hc_coin_log` VALUES (15, 2, -5, '删除《附件2和附件3》，扣除 5 个金币', 1571139446);
INSERT INTO `hc_coin_log` VALUES (16, 2, -5, '删除《对照党章党规找差距研讨发言提纲1》，扣除 5 个金币', 1571139449);
INSERT INTO `hc_coin_log` VALUES (17, 2, 5, '分享了一篇未被分享过的文档《06e1364894e221c8ff5669ac57a35776》，获得 5 个积分', 1571139526);
INSERT INTO `hc_coin_log` VALUES (18, 2, 5, '分享了一篇未被分享过的文档《fcff40d298283e43077417f9d92234c8》，获得 5 个积分', 1571139959);
INSERT INTO `hc_coin_log` VALUES (19, 2, 5, '签到成功，获得 5 个金币', 1571140113);
INSERT INTO `hc_coin_log` VALUES (20, 1, 5, '分享了一篇未被分享过的文档《计算机与信息工程学院2019学年国家奖学金、励志奖学金评定工作方案》，获得 5 个积分', 1571140810);
INSERT INTO `hc_coin_log` VALUES (21, 1, 5, '签到成功，获得 5 个金币', 1571147858);
INSERT INTO `hc_coin_log` VALUES (22, 1, 5, '签到成功，获得 5 个金币', 1571183563);
INSERT INTO `hc_coin_log` VALUES (23, 1, 5, '分享了一篇未被分享过的文档《罗先杰简历 》，获得 5 个积分', 1571224184);
INSERT INTO `hc_coin_log` VALUES (24, 1, 5, '签到成功，获得 5 个金币', 1571746003);
INSERT INTO `hc_coin_log` VALUES (25, 1, 5, '签到成功，获得 5 个金币', 1571785452);
INSERT INTO `hc_coin_log` VALUES (26, 1, 5, '分享了一篇未被分享过的文档《2016级专业实训报告软件16-2罗先杰》，获得 5 个积分', 1571836162);
INSERT INTO `hc_coin_log` VALUES (27, 1, 5, '签到成功，获得 5 个金币', 1572058387);
INSERT INTO `hc_coin_log` VALUES (28, 2, -5, '系统删除《“对照党章党规找差距”专题民主生活会个人对照检视材料》，扣除 5 个金币', 1572073350);
INSERT INTO `hc_coin_log` VALUES (29, 2, -5, '系统删除《1_2019励志奖学金申请审批表》，扣除 5 个金币', 1572073357);
INSERT INTO `hc_coin_log` VALUES (30, 1, 5, '分享了一篇未被分享过的文档《1_2019励志奖学金申请审批表》，获得 5 个积分', 1572073506);
COMMIT;

-- ----------------------------
-- Table structure for hc_collect
-- ----------------------------
DROP TABLE IF EXISTS `hc_collect`;
CREATE TABLE `hc_collect` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cid` int(11) NOT NULL DEFAULT '0',
  `Did` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Did` (`Did`,`Cid`),
  KEY `hc_collect_Cid` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_collect_folder
-- ----------------------------
DROP TABLE IF EXISTS `hc_collect_folder`;
CREATE TABLE `hc_collect_folder` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cover` varchar(50) NOT NULL DEFAULT '',
  `Title` varchar(100) NOT NULL DEFAULT '默认收藏夹',
  `Description` varchar(512) NOT NULL DEFAULT '',
  `Uid` int(11) NOT NULL DEFAULT '0',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `Cnt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title` (`Title`,`Uid`),
  KEY `hc_collect_folder_Uid` (`Uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_config
-- ----------------------------
DROP TABLE IF EXISTS `hc_config`;
CREATE TABLE `hc_config` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL DEFAULT '',
  `InputType` varchar(10) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `Key` varchar(30) NOT NULL DEFAULT '',
  `Value` varchar(255) NOT NULL DEFAULT '',
  `Category` varchar(30) NOT NULL DEFAULT '',
  `Options` varchar(4096) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Key` (`Key`,`Category`),
  KEY `hc_config_Category` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=2295 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_config
-- ----------------------------
BEGIN;
INSERT INTO `hc_config` VALUES (1, '主机', '', '请填写邮箱HOST，当前仅支持SMTP。示例：smtpdm.aliyun.com', 'host', '', 'email', '');
INSERT INTO `hc_config` VALUES (2, '端口', '', '邮箱服务端口', 'port', '', 'email', '');
INSERT INTO `hc_config` VALUES (3, '用户名', '', '邮箱用户名', 'username', '', 'email', '');
INSERT INTO `hc_config` VALUES (4, '密码', '', '邮箱密码', 'password', '', 'email', '');
INSERT INTO `hc_config` VALUES (5, '回件收件邮箱', '', '用于接收邮件回件的邮箱。留空则表示使用发件邮箱作为收件邮箱', 'replyto', '', 'email', '');
INSERT INTO `hc_config` VALUES (6, '测试邮箱地址', '', '在测试邮箱配置是否成功的时候，接收测试邮件的邮箱地址', 'test', '', 'email', '');
INSERT INTO `hc_config` VALUES (7, '保留时长(天)', 'number', '日志保留时长，至少一天', 'max_days', '7', 'logs', '');
INSERT INTO `hc_config` VALUES (8, '日志文件最大行数', '', '日志文件最大行数，默认为10000行，用于拆分较大日志文件', 'max_lines', '10000', 'logs', '');
INSERT INTO `hc_config` VALUES (9, 'PDF2SVG', '', 'PDF转SVG命令工具，默认为pdf2svg', 'pdf2svg', 'pdf2svg', 'depend', '');
INSERT INTO `hc_config` VALUES (10, 'Soffice', '', 'libreoffice/openoffice将office文档转PDF文档的工具，默认为soffice', 'soffice', 'soffice', 'depend', '');
INSERT INTO `hc_config` VALUES (11, 'Soffice转化超时时间(秒)', 'number', '转换office文档的超时时间，避免转化失败还占用服务器资源，默认1800秒', 'soffice-expire', '1800', 'depend', '');
INSERT INTO `hc_config` VALUES (12, 'Calibre', '', 'calibre文档转换命令，将mobi等转PDF，默认为ebook-convert', 'calibre', 'ebook-convert', 'depend', '');
INSERT INTO `hc_config` VALUES (13, 'PDF2TEXT', '', '从pdf中提取文本的工具，默认为pdftotext', 'pdftotext', 'pdftotext', 'depend', '');
INSERT INTO `hc_config` VALUES (14, 'ImageMagick', '', '图片转换工具命令，用于将svg转png，默认为convert', 'imagemagick', 'convert', 'depend', '');
INSERT INTO `hc_config` VALUES (15, 'SVGO', '', 'node模块，svg压缩工具，清除svg多余字符', 'svgo', 'svgo', 'depend', '');
INSERT INTO `hc_config` VALUES (16, '是否开启', 'bool', '是否开启ElasticSearch作为全文搜索引擎', 'on', 'false', 'elasticsearch', '');
INSERT INTO `hc_config` VALUES (17, '索引名称', '', '请输入索引名称，默认为dochub', 'index', 'dochub', 'elasticsearch', '');
INSERT INTO `hc_config` VALUES (18, '服务地址', '', 'ElasticSearch Host，如：http://localhost:9200，带http', 'host', '', 'elasticsearch', '');
INSERT INTO `hc_config` VALUES (19, 'AccessKey', 'string', '阿里云 AccessKey', 'access-key', 'LTAI4FsPSb4AURDy9DaT42mT', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (20, 'SecretKey', 'string', '阿里云 SecretKey', 'secret-key', '6Ovh9ftKKFPsJtBVitVGBGpfVWIU5R', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (21, 'Endpoint', 'string', '阿里云 OSS endpoint，如果与服务器同属于同一内网，建议填内网 endpoint', 'endpoint', 'oss-cn-beijing.aliyuncs.com', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (22, '公共读Bucket', 'string', '阿里云 OSS 具有公共读权限的 Bucket', 'public-bucket', '52doc', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (23, '公共读Bucket域名', 'string', '阿里云 OSS 具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', 'http://52doc.oss-cn-beijing.aliyuncs.com', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (24, '私有Bucket', 'string', '阿里云 OSS 创建的私有 Bucket', 'private-bucket', '52doc-private', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (25, '私有Bucket域名', 'string', '阿里云 OSS 创建的私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', 'https://52doc-private.oss-cn-beijing.aliyuncs.com', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (26, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-oss', '');
INSERT INTO `hc_config` VALUES (27, 'AccessKey', 'string', '百度云 AccessKey', 'access-key', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (28, 'SecretKey', 'string', '百度云 SecretKey', 'secret-key', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (29, 'Endpoint', 'string', '百度云 BOS endpoint', 'endpoint', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (30, '公共读Bucket', 'string', '百度云 BOS 具有公共读权限的 Bucket', 'public-bucket', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (31, '公共读Bucket域名', 'string', '百度云 BOS 具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (32, '私有Bucket', 'string', '百度云 BOS 创建的私有 Bucket', 'private-bucket', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (33, '私有Bucket域名', 'string', '百度云 BOS 创建的私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', '', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (34, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-bos', '');
INSERT INTO `hc_config` VALUES (35, 'AccessKey', 'string', 'AccessKey', 'access-key', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (36, 'SecretKey', 'string', 'SecretKey', 'secret-key', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (37, 'AppID', 'string', '腾讯云 COS AppID', 'app-id', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (38, '区域', 'string', 'COS 区域，即 Region', 'region', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (39, '公共读Bucket', 'string', '具有公共读权限的 Bucket', 'public-bucket', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (40, '公共读Bucket域名', 'string', '具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (41, '私有Bucket', 'string', '私有 Bucket', 'private-bucket', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (42, '私有Bucket域名', 'string', '私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', '', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (43, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-cos', '');
INSERT INTO `hc_config` VALUES (44, 'AccessKey', 'string', 'AccessKey', 'access-key', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (45, 'SecretKey', 'string', 'SecretKey', 'secret-key', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (46, 'Endpoint', 'string', 'endpoint', 'endpoint', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (47, '公共读Bucket', 'string', '具有公共读权限的 Bucket', 'public-bucket', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (48, '公共读Bucket域名', 'string', '具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (49, '私有Bucket', 'string', '私有 Bucket', 'private-bucket', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (50, '私有Bucket域名', 'string', '私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', '', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (51, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-obs', '');
INSERT INTO `hc_config` VALUES (52, 'AccessKey', 'string', 'Minio AccessKey', 'access-key', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (53, 'SecretKey', 'string', 'Minio SecretKey', 'secret-key', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (54, 'Endpoint', 'string', 'Minio endpoint', 'endpoint', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (55, '公共读Bucket', 'string', '具有公共读权限的 Bucket', 'public-bucket', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (56, '公共读Bucket域名', 'string', '具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (57, '私有Bucket', 'string', '私有Bucket', 'private-bucket', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (58, '私有Bucket域名', 'string', '私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', '', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (59, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-minio', '');
INSERT INTO `hc_config` VALUES (60, 'AccessKey', 'string', 'AccessKey', 'access-key', '', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (61, 'SecretKey', 'string', 'SecretKey', 'secret-key', '', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (62, '公共读Bucket', 'string', '具有公共读权限的 Bucket', 'public-bucket', '', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (63, '公共读Bucket域名', 'string', '具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', '', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (64, '私有Bucket', 'string', '私有Bucket', 'private-bucket', '', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (65, '私有Bucket域名', 'string', '私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', '', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (66, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-qiniu', '');
INSERT INTO `hc_config` VALUES (67, 'Operator', 'string', '又拍云操作员', 'operator', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (68, 'Password', 'string', '又拍云操作员密码', 'password', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (69, '公共读Bucket', 'string', '具有公共读权限的 Bucket', 'public-bucket', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (70, '公共读Bucket域名', 'string', '具有公共读权限的 Bucket 所绑定的域名，带 http:// 或者 https://', 'public-bucket-domain', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (71, '私有Bucket', 'string', '私有Bucket，需要URL签名才能访问', 'private-bucket', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (72, '私有Bucket Secret', 'string', '即 访问控制 的 Token 防盗链密钥', 'secret', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (73, '私有Bucket域名', 'string', '私有 Bucket 所绑定的域名，带 http:// 或者 https://', 'private-bucket-domain', '', 'cs-upyun', '');
INSERT INTO `hc_config` VALUES (74, '过期时间', 'number', '文档下载签名链接有效时长(秒)', 'expire', '3600', 'cs-upyun', '');
COMMIT;

-- ----------------------------
-- Table structure for hc_doc_text
-- ----------------------------
DROP TABLE IF EXISTS `hc_doc_text`;
CREATE TABLE `hc_doc_text` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Md5` varchar(32) NOT NULL DEFAULT '',
  `Content` varchar(5000) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_doc_text
-- ----------------------------
BEGIN;
INSERT INTO `hc_doc_text` VALUES (1, '06e1364894e221c8ff5669ac57a35776', '基于 GPRS DTU 在车流量检测的应用 目前，车流量检测是智能交通的基础部分，在系统中占有重要地位。目前有多种方法检 测车流量，智能交通系统已成为近些年研究的热点。在车流量数据传输系统中，因实际情况 的不确定以及节点数量多而导致的一些问题也日渐突出。尤其是在通信方面，由于节点数量 多，而数据量很小，所以就需要一种组网方便的产品来实现通信功能。  在某车流量检测系统中，每一个雷达测量的车流量数据经由 GPRS 无线 DTU 直接传送 到信息中心。信息中心会不定期向雷达询问数据。施工方希望能在需要数据时使 DTU 上线， 数据传送完毕后 DTU 自动下线。以达到提高通信利用率及节省通信费用的目的。  CM3160V GPRS 无 线数传终端可以让工业设备通过 GPRS 网络传输数据。CM3160V 支持 RS232,RS485,RS422,TTL 等通讯接口，能够满足所有工业串口设 备的应用及传输方式。 使用高性能网络处理器，主频高达 100M，内存 2M,完全胜任各种网络环境，是连结工业用 串口设备及 GPRS TCP/IP 以太网络 的最佳通讯解决方案。 系统拓扑图  方案特点 在车流量的检测项目中，因雷达只根据信息中心的指令发送检测数据。所以，在大部分 时间里，DTU 不需要与信息中心进行连接，而只在需要的时候进行网络连接。 CM3160V 可设置多种上线方式，用户可通过拨号或是短信方式通知 DTU 上线，在数据传输完毕后 DTU 可自动下线。可为用户节省大量空闲状态时所产生的 GPRS 流量，在提高网络使用率及降低 用户成本方面有很大的作用。  ');
INSERT INTO `hc_doc_text` VALUES (2, 'fcff40d298283e43077417f9d92234c8', '厦  门  才 茂 通 信 科 技 有 限 公 司 Xiamen Caimore Communication Technology Co.,Ltd  产品出厂质量检测报告 编号： 公司名称 产品型号  厦门才茂通信科技有限公司 □CM 8155R  批量数  □CM 3160EP  记录号  □CM 6560P  □CM 6560EP  产品编号 检验项目  检测结果  电源及信号指示灯  正常  Bin 文件下装  正常  AT 指令  正常  信号  正常  信道分配  正常  模块断电测试  正常  短消息  正常  网络登陆  正常  裸板毛刺检查  正常  复位脚飞线  正常  服务器连接  正常  天线连接  正常  VPN  正常  -  检验结论：  测试合格！ 检测人员： 安装人员： 负 责 人： 日 地址:厦门市软件园二期望海路 19 号 6 层 址:http://www.caimore.com  期：  电话/Tel: +86-592-5902655 传真/Fax:+86-592-5975885  网  ');
INSERT INTO `hc_doc_text` VALUES (3, 'a214c827b54470bb6f626a1689ea99fa', '计算机与信息工程学院（软件学院)2018--2019 学年 国家奖学金、励志奖学金评定工作方案 按照学校《关于评定 2018—2019 学年国家奖学金、励志奖学金的通知》要求，结合《黑龙江科技大学国家 奖学金、国家励志奖学金管理办法（暂行）》的相关条件，为切实做好我院国家奖学金、励志奖学金的评定 工作，特制定本方案。 一、国家奖学金名额与奖励标准 国家奖学金实行等额评定。我院国家奖学金名额为 3 名，每人每年 8000 元；国家励志奖学金名额为 63 名，每人每年 5000 元。 二、评定工作准则 1、严格执行《关于评定 2018—2019 学年国家奖学金、励志奖学金、国家助学金的通知》的文件精神， 并认真落实《计算机与信息工程学院（软件学院）2018—2019 学年国家奖助学金评定工作方案》。 2、坚持公开、公平、公正的原则，履行“阳光工程”承诺，落实“优中选优，困中选困”的方针。 3、国家奖学金用于奖励我校学生中特别优秀的本专科学生。由符合条件的学生个人申报，经学院资 格审查通过后，参加由学院国家奖助学金评定工作委员会组织的公开答辩会， 通过现场答辩后票决产  生拟获奖学生名单。 4、国家励志奖学金用于奖励资助我校学生中品学兼优的家庭经济困难的本专科学生。由符合条件的 学生个人申报，经学院资格审查通过后，国家奖助学金评定工作委员会在年级、同类专业范围内进行公开 评定，结合学生日常表现最终产生拟获奖学生名单。  三、国家奖学金、国家励志奖学金申请条件 国家奖学金的申请条件： （一）热爱社会主义祖国，拥护中国共产党领导。 （二）遵守宪法和法律，遵守学校规章制度,无违纪现象。 （三）诚实守信，道德品质优良。 （四）学习年限 1、本专科二年级（含二年级）以上学生； 2、专升本学生进入本科阶段的第二年。 (五)学习成绩 1、学习成绩专业排名与综合测评成绩排名原则上应均为第一名； 2、学习成绩排名或综合测评成绩排名位于前 30%的学生，必须在道德风尚、学术研究、 学科竞赛、创新发明、社会实践、社会工作、体育竞赛、文艺比赛等某一方面表现特别优秀，方 可申请国家奖学金。该范围内学生在申请国家奖学金时，需在《国家奖学金学生申请表》后另 附有关在某一方面特别优秀表现的证书原件及复印件，或其他方面证明材料。具体标准如下： (1)在社会主义精神文明建设中表现突出，具有见义勇为、助人为乐、奉献爱心、服务社会、 自立自强的实际行动，在本校、本地区产生重大影响，在全国产生较大影响，有助于树立良 好的社会风尚；  (2)在学术研究上取得显著成绩，以第一作者发表的论文被 SCI、EI、ISTP、SSCI 全文收 录，以第一、二作者出版学术专著（须通过专家鉴定）； (3)在学科竞赛方面取得显著成绩，在国际和全国性专业学科竞赛、课外学术科技竞赛等 竞赛中获一等奖（或金奖）及以上奖励； (4)在创新发明方面取得显著成绩，科研成果获省、部级以上奖励或获得国家专利（须通 过专家鉴定）； (5)在体育竞赛中取得显著成绩，为国家争得荣誉。非体育专业学生参加省级以上体育比 赛获得个人项目前三名，集体项目前二名；高水平运动员（特招生）参加国际和全国性体育 比赛获得个人项目前三名、集体项目前二名。集体项目应为主力队员； (6)在重要文艺比赛中取得显著成绩，参加国际和全国性比赛获得前三名，参加省级比赛 获得第一名，为国家赢得荣誉。集体项目应为主要演员； (7)获全国三好学生、全国优秀学生干部、全国社会实践先进个人、全国十大杰出青年、中 国青年五四奖章等全国性荣誉称号。 上述七方面另附相关材料的复印件；除此之外，如在其他方面有同等级别的特别优秀表 现，在国家奖学金评审过程中也可作为突出表现提交相关材料。 国家励志奖学金的申请条件： （一）热爱社会主义祖国，拥护中国共产党领导。 （二）遵守宪法和法律，遵守学校规章制度，无违纪现象。 （三）诚实守信，道德品质优良。 （四）在校 期间 学习成绩优秀，学年内无 补考，学年内素 质综合测评 成绩在前  30%。 （五）家庭经济困难，建有家庭经济困难学生档案，生活俭朴，积极参加校内外勤工俭 学活动。 四、奖学金的发放、管理与监督 （一）国家奖学金和国家励志奖学金下拨到我校后，学校将一次性发放给获奖学生。对获 得国家奖学金的学生颁发国家统一印制的奖励证书。 （二）有下列情形之一者，停发或追回其所获得的国家奖学金或国家励志奖学金，并按 照评选流程重新组织评定，评定结果报省学生资助管理中心审批、备案。 1、在国家奖学金或国家励志奖学金评定与发放期间，违反国家宪法和法律、违反校规校 纪者，停发其本年度获得的国家奖学金或国家励志奖学金。  2、自国家奖学金或国家励志奖学金发放之日起一年内，违反国家宪法和法律、受学校严 重警告以上纪律处分者，追回该生获得的国家奖学金或国家励志奖学金。 3、国家奖学金或国家励志奖学金发放后，对于违背国家奖学金或国家励志奖学金资助用 途者，追回该生获得的国家奖学金或国家励志奖学金，取消该生下一年度国家奖学金、国家 励志奖学金评定资格。 五、评定工作流程 1、广泛宣传。各年级、各班级要向学生广泛宣传国家政策，公布条件，学院将于 10 月 10 日中午召开全院学生大会，启动今年的奖助学金评定工作，同时将利用校园橱窗、网站、公 示栏等宣传途径广泛宣传。 2、提出申请。国家奖学金申请者于 9 月 25 日 12:00 前到计算机学院学生工作办公室（主楼 E0617）领 取《计算机与信息工程学院 2018-2019 学年国家奖学金申请表》，并于 9 月 25 日 15:00 前上交申请表、20182019 学年学习成绩单（加盖教务部门公章）和 500 字的个人申请理由（第三人称书写，反映本人学习情 况、社会实践、创新能力、综合测评方面）。国家励志奖学金申请者于 10 月 10 日，到计算机学院学生工作 办公室（主楼 E0617）领取《计算机与信息工程学院 2018-2019 学年国家励志奖学金申请表》，并于 10 月 13 日下午 17:00 前上交申请表、2018-2019 学年学习成绩单（加盖教务部门公章）和 500 字的个人基本情 况及申请理由（第三人称书写，反映本人学习情况、社会实践、创新能力、综合测评方面）。 3、答辩联评和审查公示。国家奖学金通过资格审查的申请者于 9 月 26 日上午 9:00 参加学院组织的国 家奖学金答辩会，由评审委员会成员进行考核联评，确定拟获奖者名单。学院对联评后的拟获奖者进行复 核，经学院党委会综合考量并一致通过后确定上报名单，并进行不少于 5 个工作日的公示，接受广大学 生的监督。国家励志奖学金申请者由评审委员会成员进行考核联评，在年级、专业范围内进行公开评定， 再由学院对各班级上报名单进行联评最终确定拟获奖者，并将获奖者名单进行不少于 5 个工作日的公示。 六、评定工作机构  为保证国家奖助学金评定工作顺利开展，特成立国家奖助学金评定工作领导小组。 组 长：吴新文 董春游 副组长：张丽媛 成 员：李 强 王飞 仝安琪 赵岩 张学斌 七、评定工作进程表 时 间  工作安排  地 点  负责人  9 月 24 日  制定学院评定工作方案  主楼 E0617  李 强  9 月 24 日  召开党委会讨论通过评定方案  会议室  张丽媛  主楼 EN0101  李 强  9 月 24 日晚上  召开全院关于国家、励志奖学金评定工作的专 项会议  学院主页、 9 月 24 日晚  评定方案的公示  学生 QQ 群、 寝室橱窗、公 众账号  李 强  9 月 25 日  国家奖学金报名、资格审查  主楼 E0617  9 月 26 日  国家奖学金评审答辩会  会议室  李 强 张丽媛  学院主页、寝 9 月 26-10 月 8 日  国家奖学金拟推荐名单公示  室橱窗、公众  李 强  账号 10 月 9 日  上报国家奖学金材料  李 强  召开全体学生大会启动励志奖学金  主楼 EN0401  仝安琪  评定工作  主楼 WN0401  李 强  10 月 13-16 日  国家励志奖学金报名、资格审查  主楼 E0617  赵 岩  10 月 13 日-19 日  国家励志奖学金申请者名单公示  网站等  赵 岩  10 月 23 日  国家励志奖学金联评会  会议室  李 强  10 月 23-27 日  国家励志奖学金拟推荐名单公示  网站等  赵 岩  10 月 27 日  组织统一填写国家励志奖学金申请表  教室  赵 岩  10 月 30 日  上报国家励志奖学金材料  10 月 11 日中午  赵 岩  八、几点说明 1、每个班级的班长将评定工作通知到班级的每一名同学，确保每一名同学知情，班主任要高度负责 ， 全程参与，做好奖助学金评定工作。 2、学院设立工作监督举报电话：党委副书记办公室 88036183 学生工作办公室 88036872 3、本方案在执行过程中如有疑义，由计算机与信息工程学院学工办负责解释。  计算机与信息工程学院（软件学院） 2019 年 9 月 24 日  ');
INSERT INTO `hc_doc_text` VALUES (4, 'f347e5b96887481df7fb9ea05232cd61', '罗先杰 电话：15663842802  邮箱：895744432@qq.com  23 岁 | 男    求职意向：golang 开发工程师     个人能力    Go 能力 ：    JAVA 能力：    前端能力 ：    算法能力：    Linux 能力：     我自律较强，开发效率高，对新技术 的喜欢,写代码较为规范。 在编程方面学习积极性和学习能力较 强。  学历：黑龙江科技大学本 科  项目经验  1.微服务网盘系统 使用基于 Gin 和 RPC 搭建的微服务项目 实现的文件上传，分块上传断点续传，秒传。 2. 分布式任务调度系统  使用的 Golang 结合 Etcd 和 MongoDB 的分布式系统。 3.高并发秒杀系统  基于 Golang 的采用 iris 和 RabbitMQ 的秒杀系统。 4.微信小程序黑科记单词  采用 js 和 bmob 开发 5.校园二手交易网站  基于 SSM 来写的交易网站。    自我评价  毕业时间：2020 年 6 月  个人详情  1. 本人将于 2020 年本科毕业。 2. 掌握 Go 语言，熟悉 Java，了解 Python，C,JS 和 Node.js。 3.熟悉 Beego，iris，gin 的 Go 语言框架。 4.熟悉 springmvc，spring，mybatis。 5.熟悉 springboot，了解 springCloud。 6.了解 HTTP，TCP/IP 协议。 7.了解 grpc，jsonrpc 框架。 8.熟练使用 Mysql，Redis 数据库。 9.熟悉常用的数据结构和算法。 10.了解区块链，以太坊智能合约和加密协议。 11.熟悉 Linux 系统编程和常用命令，掌握 Docker 容器的基本应用。 12.获得第十届蓝桥杯编程比赛省一等奖。 13.获得校园 C 语言程序设计比赛第一名。 13.获得校园实用程序大赛比赛二等奖。 12.数创杯全国大学生数学建模比赛三等奖。  兴趣爱好     跑步 音乐 阅读      篮球 研究技术 编程    个 人 主 页     Githup 地址 https://github.com/895744432 个人博客 luoxianjie.cn  ');
INSERT INTO `hc_doc_text` VALUES (5, '3e7289fb06c9cb7ae8f272ff46b8c863', '计算机与信息工程学院  专业实训报告 注意：1. 本实训报告不少于 5000 字 2. 用后把红框删除，下同  专业班级： 软件工程 16-2 姓  名： 罗先杰  题目名称： 黑科技文库 指导教师： 房春英  1  年 月 日  成绩评定表  评 价 项 目 及分值 设计任务工作量 、任务总体完成情况评价。 （20 分） 设计内容、方案、计算可靠性、文字和图表质 量及学生的基础理论、专业知识水平的综合 评价。 （30 分） 设计完成情况、答辩过程中自述讲解情况、回 答问题情况、创新点及不足等内容的综合评 价。 （50 分） 总成绩（分数）  评 价 结 果 （分数）  评定人员签名  年  月  日  摘 要  根据现在人们对电子文档需求越来越多，设计和开发了这个黑科技文库系 统。该文库系统采用了会员积分制度来下载和上传文档，一定程度上鼓励了人们 来上传共享文档。该文库系统使用了 Libreoffice 将 office 文档转换为 PDF，再使 用 pdf2svg 将 PDF 转成 svg 矢量图片以供在线阅读，并提供了对评分评论。该 系统采用了 Coressek 开源中文检索引擎提高了对文档的快速查询。 系统使用 Golang 语言开发，设计上使用了 MVC 模式（即模型、视图、控 制）的思想，实现逻辑与显示的分离。  关键词：文库系统，Golang，Coressek，Libreoffice，pdf2svg  摘要：黑体小二号字，居中，2.41 倍行距，段前 17 磅、段后 16.5 磅，摘要两字之间空 两个中文半角态下的空格。 内容为正文文本格式，宋体小四号字，20 磅行距，两端对齐，300 字左右。 关键词：题头为正文文本格式，黑体小四号字，20 磅行距，段前 0 磅、段后 0 磅，与摘 要内容隔一行，3-5 个，为摘要中出现的单词或术语，之间用中文半角状态下的逗号。 注意：1. 此页无页码。 2. 本实训报告不少于 5000 字 3. 用后把红框删除，下同  Abstract This black technology library system was designed and developed based on the increasing demand for electronic documents. The library system uses the member credit system to download and upload documents, and people must be encouraged to upload shared documents. The library system uses Libreoffice to convert office documents to PDF, and then use pdf2svg to convert PDFs into svg vector images for online reading and to provide ratings comments. The system uses Coressek open source The system uses Golang language development, and the design uses the idea of MVC mode (ie model, view, control) to realize the separation of logic and display. Keywords: library system, Golang, Coressek, Libreoffice, pdf2svg  目 录  第 1 章 设计概述...........................................................................................................1 1.1 红旗汽车修理厂概况......................................................................................1 1.1.1 修理厂规模简介....................................................................................1 1.1.2 修理厂物资流通概况及相关流程........................................................2 1.2 红旗汽车修理厂物资流通分析......................................................................2 1.2.1 物资流通管理的重要性........................................................................2 1.2.2 物资流通的业务流程图及分析............................................................4 第 2 章 需求分析...........................................................................................................5 第 3 章 概要设计...........................................................................................................6 第 4 章 详细设计...........................................................................................................7 第 5 章 系统测试...........................................................................................................8 总 结..............................................................................................................................9 参考文献......................................................................................................................10  目录题头：标题 1 格式，目录两字之间空两个中文半角状态下的空格。 目录内容：小四号字，章为黑体字、节为宋体字，章节序号与题目之间有一中文半角状 态下的空格，20 磅行距。根据设计（论文）内容确定目录，不可套用。 页码：罗马数字序号，Times New Roman 字体、小五号字（默认格式）。 注意：按三级标题样式自动生成目录。  第 1 章 设计概述  随着信息技术产业的快速发展，尤其是网络的迅速普及，人们的生活方式产生的重大 的变革,越来越多的人都开始使用电子文档，人们办公越来越离不开 office  1.123 修理厂概况 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米，另外还配有检测车间。  1.1.1 修理厂规模简介 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米，另外还配有检测车间。 1．修配厂规模 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米，另外还配有检测车间。 （1）规模概况 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米，另外还配有检测车间。 ①历史规模 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米，另外还配有检测车间。 文中公式：复杂公式应使用公式编译器，用带中文半角状态下小括号的阿拉伯数字，按 章编号，一般公式相对页面居中位置，编号右对齐，公式与上、下文均空出一行。  1  1.1.2 修理厂物资流通概况及相关流程 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万。如式（1-1）所示。  （1-1）  y  ax 2  bx  c  红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米。  1.2 红旗汽车修理厂物资流通分析 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。企业现有固定资金 400 万，流动资金 80 万，占地面积 8000 平方米， 维修车位 150 余个，停车场 2400 平方米，另外还配有检测车间。  1.2.1 物资流通管理的重要性 红旗汽车修理厂位于洛阳市西工区，始建于 20 世纪 80 年代，是一个在汽车维修企业 有着较高资质的企业。如图 1-1 所示。  文中插图：图线线宽为 1 ');
INSERT INTO `hc_doc_text` VALUES (6, '263f051f809902717c025e18cadaf8b6', '计算机与信息工程学院（软件学院） 2018—2019 学年国家励志奖学金申请表  本人基本情况  姓 名  性 别  出生年月  民 族  政治面貌  职 务  专 业  班 级  学 号  联系电话  是否勤工助学  是否贫困生  身份证号 家庭基本情况 学习情况  银行卡号  家庭住址 家长姓名  联系电话  学习成绩专业排 名/专业总人数  综合测评排名/ 班级总人数  本学年 是否有违纪  申报理由  本人承诺 1、 本人保证申请表中所填情况均属实； 2、 本人承诺模范遵守学校各项规章制度，如有违反按照相应处分等级退回所获得奖学金； 3、 本人承诺将奖学金用于日常学习和必要的生活开支。杜绝以各种理由请客、追求高档消费。 本人签字：  班级测评结果  班级，参加测评  人，同意  人，不同意  班级意见 班长签字：  班主任签字： 年 月 日  学工办意见 签字： 年  月  日  人  ');
COMMIT;

-- ----------------------------
-- Table structure for hc_document
-- ----------------------------
DROP TABLE IF EXISTS `hc_document`;
CREATE TABLE `hc_document` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Filename` varchar(255) NOT NULL DEFAULT '',
  `Keywords` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_document
-- ----------------------------
BEGIN;
INSERT INTO `hc_document` VALUES (7, '06e1364894e221c8ff5669ac57a35776', '06e1364894e221c8ff5669ac57a35776.pdf', '06e1364894e221c8ff5669ac57a35776', '');
INSERT INTO `hc_document` VALUES (8, 'fcff40d298283e43077417f9d92234c8', 'fcff40d298283e43077417f9d92234c8.doc', 'fcff40d298283e43077417f9d92234c8', '');
INSERT INTO `hc_document` VALUES (9, '计算机与信息工程学院2019学年国家奖学金、励志奖学金评定工作方案', '计算机与信息工程学院2019学年国家奖学金、励志奖学金评定工作方案.doc', '计算,计算机,信息,工程,学院,工程学院,学年,国家,奖学,奖学金,励志,奖学,奖学金,评定,工作,方案', '');
INSERT INTO `hc_document` VALUES (10, '罗先杰简历 ', '罗先杰简历 .docx', '简历', '我的简历');
INSERT INTO `hc_document` VALUES (11, '2016级专业实训报告软件16-2罗先杰', '2016级专业实训报告软件16-2罗先杰.doc', '专业,报告,软件', '实训报告');
INSERT INTO `hc_document` VALUES (12, '1_2019励志奖学金申请审批表', '1_2019励志奖学金申请审批表.doc', '励志,奖学,奖学金,申请,审批,审批表', '');
COMMIT;

-- ----------------------------
-- Table structure for hc_document_comment
-- ----------------------------
DROP TABLE IF EXISTS `hc_document_comment`;
CREATE TABLE `hc_document_comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Did` int(11) NOT NULL DEFAULT '0',
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Score` int(11) NOT NULL DEFAULT '30000',
  `Content` varchar(256) NOT NULL DEFAULT '',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Did` (`Did`,`Uid`),
  KEY `hc_document_comment_Did` (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_document_illegal
-- ----------------------------
DROP TABLE IF EXISTS `hc_document_illegal`;
CREATE TABLE `hc_document_illegal` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Md5` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Md5` (`Md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_document_info
-- ----------------------------
DROP TABLE IF EXISTS `hc_document_info`;
CREATE TABLE `hc_document_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DsId` int(11) NOT NULL DEFAULT '0',
  `Uid` int(11) NOT NULL DEFAULT '0',
  `ChanelId` int(11) NOT NULL DEFAULT '0',
  `Pid` int(11) NOT NULL DEFAULT '0',
  `Cid` int(11) NOT NULL DEFAULT '0',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `TimeUpdate` int(11) NOT NULL DEFAULT '0',
  `Dcnt` int(11) NOT NULL DEFAULT '0',
  `Vcnt` int(11) NOT NULL DEFAULT '0',
  `Ccnt` int(11) NOT NULL DEFAULT '0',
  `Score` int(11) NOT NULL DEFAULT '30000',
  `ScorePeople` int(11) NOT NULL DEFAULT '0',
  `Price` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `hc_document_info_DsId` (`DsId`),
  KEY `hc_document_info_Uid` (`Uid`),
  KEY `hc_document_info_ChanelId` (`ChanelId`),
  KEY `hc_document_info_Pid` (`Pid`),
  KEY `hc_document_info_Cid` (`Cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_document_info
-- ----------------------------
BEGIN;
INSERT INTO `hc_document_info` VALUES (7, 7, 2, 1, 8, 35, 1571139526, 1571139526, 0, 2, 0, 30000, 0, 0, 1);
INSERT INTO `hc_document_info` VALUES (8, 8, 2, 4, 177, 260, 1571139959, 1571139959, 0, 4, 0, 30000, 0, 0, 1);
INSERT INTO `hc_document_info` VALUES (9, 9, 1, 3, 141, 157, 1571140810, 1571140810, 0, 7, 0, 30000, 0, 0, 1);
INSERT INTO `hc_document_info` VALUES (10, 10, 1, 3, 139, 145, 1571224184, 1571224184, 0, 2, 0, 30000, 0, 0, 1);
INSERT INTO `hc_document_info` VALUES (11, 11, 1, 3, 143, 168, 1571836162, 1571836162, 0, 3, 0, 30000, 0, 0, 1);
INSERT INTO `hc_document_info` VALUES (12, 12, 1, 3, 144, 171, 1572073506, 1572073506, 0, 3, 0, 30000, 0, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for hc_document_recycle
-- ----------------------------
DROP TABLE IF EXISTS `hc_document_recycle`;
CREATE TABLE `hc_document_recycle` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL DEFAULT '0',
  `Self` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_document_remark
-- ----------------------------
DROP TABLE IF EXISTS `hc_document_remark`;
CREATE TABLE `hc_document_remark` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(5120) NOT NULL DEFAULT '',
  `AllowDownload` tinyint(1) NOT NULL DEFAULT '1',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_document_store
-- ----------------------------
DROP TABLE IF EXISTS `hc_document_store`;
CREATE TABLE `hc_document_store` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Md5` varchar(32) NOT NULL DEFAULT '',
  `Ext` varchar(10) NOT NULL DEFAULT '',
  `ExtCate` varchar(10) NOT NULL DEFAULT '',
  `ExtNum` int(11) NOT NULL DEFAULT '0',
  `Page` int(11) NOT NULL DEFAULT '0',
  `PreviewPage` int(11) NOT NULL DEFAULT '50',
  `Size` int(11) NOT NULL DEFAULT '0',
  `ModTime` int(11) NOT NULL DEFAULT '0',
  `PreviewExt` varchar(4) NOT NULL DEFAULT 'svg',
  `Width` int(11) NOT NULL DEFAULT '0',
  `Height` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Md5` (`Md5`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_document_store
-- ----------------------------
BEGIN;
INSERT INTO `hc_document_store` VALUES (7, '06e1364894e221c8ff5669ac57a35776', 'pdf', 'pdf', 4, 2, 0, 182495, 1571139526, 'svg', 595, 841);
INSERT INTO `hc_document_store` VALUES (8, 'fcff40d298283e43077417f9d92234c8', 'doc', 'word', 1, 1, 0, 63014, 1571139959, 'svg', 595, 841);
INSERT INTO `hc_document_store` VALUES (9, 'a214c827b54470bb6f626a1689ea99fa', 'doc', 'word', 1, 5, 0, 62030, 1571140810, 'svg', 595, 841);
INSERT INTO `hc_document_store` VALUES (10, 'f347e5b96887481df7fb9ea05232cd61', 'docx', 'word', 1, 1, 0, 121577, 1571224184, 'svg', 595, 841);
INSERT INTO `hc_document_store` VALUES (11, '3e7289fb06c9cb7ae8f272ff46b8c863', 'doc', 'word', 1, 16, 0, 69120, 1571836162, 'svg', 595, 841);
INSERT INTO `hc_document_store` VALUES (12, '263f051f809902717c025e18cadaf8b6', 'doc', 'word', 1, 1, 0, 26158, 1572073506, 'svg', 595, 841);
COMMIT;

-- ----------------------------
-- Table structure for hc_free_down
-- ----------------------------
DROP TABLE IF EXISTS `hc_free_down`;
CREATE TABLE `hc_free_down` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Did` int(11) NOT NULL DEFAULT '0',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_friend
-- ----------------------------
DROP TABLE IF EXISTS `hc_friend`;
CREATE TABLE `hc_friend` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL DEFAULT '',
  `Link` varchar(100) NOT NULL DEFAULT '',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Link` (`Link`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_friend
-- ----------------------------
BEGIN;
INSERT INTO `hc_friend` VALUES (3, '五九盾服务器', 'http://www.59dun.com', 1, 1, 1570947157);
COMMIT;

-- ----------------------------
-- Table structure for hc_pages
-- ----------------------------
DROP TABLE IF EXISTS `hc_pages`;
CREATE TABLE `hc_pages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL DEFAULT '',
  `Alias` varchar(30) NOT NULL DEFAULT '',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Keywords` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `Content` varchar(5120) NOT NULL DEFAULT '',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '100',
  `Vcnt` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Alias` (`Alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_pages
-- ----------------------------
BEGIN;
INSERT INTO `hc_pages` VALUES (1, '关于我们', 'about', '关于我们', '关于我们,about us,dochub', '这是关于我们的单页', '这是关于我们的单页内容', 1570947157, 0, 4, 1);
INSERT INTO `hc_pages` VALUES (2, '文库协议', 'agreement', '关于我们', '文库协议,agreement,dochub', '这是文库协议的单页', '这是文库协议的单页内容', 1570947157, 0, 4, 1);
INSERT INTO `hc_pages` VALUES (3, '意见反馈', 'feedback', '意见反馈', '意见反馈,feedback,dochub', '这是意见反馈的单页', '这是意见反馈的单页内容', 1570947157, 0, 5, 1);
INSERT INTO `hc_pages` VALUES (4, '免责声明', 'response', '免责声明', '免责声明,response,dochub', '这是免责声明的单页', '这是免责声明的单页内容', 1570947157, 0, 2, 1);
INSERT INTO `hc_pages` VALUES (5, '联系我们', 'contact', '意见反馈', '意见反馈,contact,dochub', '这是联系我们的单页', '这是联系我们的单页内容', 1570947157, 0, 4, 1);
COMMIT;

-- ----------------------------
-- Table structure for hc_relate
-- ----------------------------
DROP TABLE IF EXISTS `hc_relate`;
CREATE TABLE `hc_relate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ids` varchar(512) NOT NULL DEFAULT '',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_report
-- ----------------------------
DROP TABLE IF EXISTS `hc_report`;
CREATE TABLE `hc_report` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Did` int(11) NOT NULL DEFAULT '0',
  `Reason` int(11) NOT NULL DEFAULT '1',
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `TimeUpdate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Uid` (`Uid`,`Did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_search_log
-- ----------------------------
DROP TABLE IF EXISTS `hc_search_log`;
CREATE TABLE `hc_search_log` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Wd` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Wd` (`Wd`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_search_log
-- ----------------------------
BEGIN;
INSERT INTO `hc_search_log` VALUES (5, 'go');
INSERT INTO `hc_search_log` VALUES (4, 's');
INSERT INTO `hc_search_log` VALUES (19, '学');
INSERT INTO `hc_search_log` VALUES (18, '罗先');
COMMIT;

-- ----------------------------
-- Table structure for hc_seo
-- ----------------------------
DROP TABLE IF EXISTS `hc_seo`;
CREATE TABLE `hc_seo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `Page` varchar(30) NOT NULL DEFAULT '',
  `IsMobile` tinyint(1) NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL DEFAULT '{title}',
  `Keywords` varchar(255) NOT NULL DEFAULT '{keywords}',
  `Description` varchar(255) NOT NULL DEFAULT '{description}',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Page` (`Page`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_seo
-- ----------------------------
BEGIN;
INSERT INTO `hc_seo` VALUES (1, '首页', 'PC-Index', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (2, '列表页', 'PC-List', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (3, '文档上传页', 'PC-Upload', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (4, '文档预览页', 'PC-View', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (5, '用户中心文档列表页', 'PC-Ucenter-Doc', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (6, '用户中心积分记录页', 'PC-Ucenter-Coin', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (7, '用户中心收藏夹页', 'PC-Ucenter-Folder', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (8, '找回密码页', 'PC-Findpwd', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (9, '用户注册页', 'PC-Reg', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (10, '用户登录页', 'PC-Login', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (11, '单页', 'PC-Pages', 0, '{title} - {sitename}', '{keywords}', '{description}');
INSERT INTO `hc_seo` VALUES (12, '搜索结果页', 'PC-Search', 0, '{title} - {sitename}', '{keywords}', '{description}');
COMMIT;

-- ----------------------------
-- Table structure for hc_sign
-- ----------------------------
DROP TABLE IF EXISTS `hc_sign`;
CREATE TABLE `hc_sign` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Date` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Uid` (`Uid`,`Date`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_sign
-- ----------------------------
BEGIN;
INSERT INTO `hc_sign` VALUES (1, 1, '20191013');
INSERT INTO `hc_sign` VALUES (5, 1, '20191015');
INSERT INTO `hc_sign` VALUES (6, 1, '20191016');
INSERT INTO `hc_sign` VALUES (7, 1, '20191022');
INSERT INTO `hc_sign` VALUES (8, 1, '20191023');
INSERT INTO `hc_sign` VALUES (9, 1, '20191026');
INSERT INTO `hc_sign` VALUES (2, 2, '20191013');
INSERT INTO `hc_sign` VALUES (3, 2, '20191014');
INSERT INTO `hc_sign` VALUES (4, 2, '20191015');
COMMIT;

-- ----------------------------
-- Table structure for hc_suggest
-- ----------------------------
DROP TABLE IF EXISTS `hc_suggest`;
CREATE TABLE `hc_suggest` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` int(11) NOT NULL DEFAULT '0',
  `Content` varchar(512) NOT NULL DEFAULT '',
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Name` varchar(20) NOT NULL DEFAULT '',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `TimeUpdate` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for hc_sys
-- ----------------------------
DROP TABLE IF EXISTS `hc_sys`;
CREATE TABLE `hc_sys` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Site` varchar(100) NOT NULL DEFAULT '',
  `Tongji` varchar(2048) NOT NULL DEFAULT '',
  `CntDoc` int(11) NOT NULL DEFAULT '0',
  `CntUser` int(11) NOT NULL DEFAULT '0',
  `Reward` int(11) NOT NULL DEFAULT '5',
  `MaxFile` int(11) NOT NULL DEFAULT '52428800',
  `Sign` int(11) NOT NULL DEFAULT '1',
  `ListRows` int(11) NOT NULL DEFAULT '10',
  `Icp` varchar(255) NOT NULL DEFAULT '',
  `DirtyWord` varchar(2048) NOT NULL DEFAULT '',
  `TimeExpireRelate` int(11) NOT NULL DEFAULT '604800',
  `TimeExpireHotspot` int(11) NOT NULL DEFAULT '604800',
  `MobileOn` tinyint(1) NOT NULL DEFAULT '1',
  `TplMobile` varchar(255) NOT NULL DEFAULT 'default',
  `TplComputer` varchar(255) NOT NULL DEFAULT 'default',
  `TplAdmin` varchar(255) NOT NULL DEFAULT 'default',
  `TplEmailReg` varchar(2048) NOT NULL DEFAULT '',
  `TplEmailFindPwd` varchar(2048) NOT NULL DEFAULT '',
  `DomainPc` varchar(100) NOT NULL DEFAULT 'dochub.me',
  `DomainMobile` varchar(100) NOT NULL DEFAULT 'm.dochub.me',
  `PreviewPage` int(11) NOT NULL DEFAULT '50',
  `Trends` varchar(255) NOT NULL DEFAULT '',
  `FreeDay` int(11) NOT NULL DEFAULT '7',
  `Question` varchar(255) NOT NULL DEFAULT 'DocHub文库的中文名是？',
  `Answer` varchar(255) NOT NULL DEFAULT '多哈',
  `CoinReg` int(11) NOT NULL DEFAULT '10',
  `Watermark` varchar(255) NOT NULL DEFAULT '',
  `ReportReasons` varchar(2048) NOT NULL DEFAULT '',
  `IsCloseReg` tinyint(1) NOT NULL DEFAULT '0',
  `StoreType` varchar(15) NOT NULL DEFAULT 'cs-oss',
  `CheckRegEmail` tinyint(1) NOT NULL DEFAULT '1',
  `AllowRepeatedDoc` tinyint(1) NOT NULL DEFAULT '0',
  `AutoSitemap` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_sys
-- ----------------------------
BEGIN;
INSERT INTO `hc_sys` VALUES (1, 'USTH文库', '', 6, 2, 5, 52428800, 5, 10, '', '', 0, 604800, 1, '', '', '', '<style type=\"text/css\">\r\n				p{text-indent: 2em;}\r\n			</style>\r\n			<div><strong>尊敬的用户</strong></div>\r\n			<p>您好，非常感谢您对黑科技文库(<a href=\"https://github.com/TruthHun/DocHub\" target=\"_blank\" title=\"DocHub文库\">DocHub</a>)的关注和热爱</p>\r\n			<p>您本次申请注册成为USTH文库会员的邮箱验证码是: <strong style=\"font-size: 30px;color: red;\">{code}</strong></p>\r\n			<p>如果非您本人操作，请忽略该邮件。</p>', '<style type=\"text/css\">\r\n				p{text-indent: 2em;}\r\n			</style>\r\n			<div><strong>尊敬的用户</strong></div>\r\n			<p>您好，非常感谢您对黑科技文库(<a href=\"https://github.com/TruthHun/DocHub\" target=\"_blank\" title=\"DocHub文库\">DocHub</a>)的关注和热爱</p>\r\n			<p>您本次申请找回密码的邮箱验证码是: <strong style=\"font-size: 30px;color: red;\">{code}</strong></p>\r\n			<p>如果非您本人操作，请忽略该邮件。</p>', '', '', 0, '1,2,3,4,5', 0, 'USTH文库的中文名是什么？', '黑科技文库', 10, '', '1:垃圾广告\r\n2:淫秽色情\r\n3:虚假中奖\r\n4:敏感信息\r\n5:人身攻击\r\n6:骚扰他人', 0, 'cs-oss', 1, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for hc_user
-- ----------------------------
DROP TABLE IF EXISTS `hc_user`;
CREATE TABLE `hc_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(32) NOT NULL DEFAULT '',
  `Username` varchar(16) NOT NULL DEFAULT '',
  `Intro` varchar(255) NOT NULL DEFAULT '',
  `Avatar` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_user
-- ----------------------------
BEGIN;
INSERT INTO `hc_user` VALUES (1, '895744432@qq.com', '25d55ad283aa400af464c76d713c07ad', 'luoxianjie', '1', '388b70fca5f2ed4f154774ab62bbcc36.jpg');
INSERT INTO `hc_user` VALUES (2, '8957444321@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'luoxianjie3', '43242', '9d420b6d4cd9b51bea46ccced10efac9.jpg');
COMMIT;

-- ----------------------------
-- Table structure for hc_user_info
-- ----------------------------
DROP TABLE IF EXISTS `hc_user_info`;
CREATE TABLE `hc_user_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Coin` int(11) NOT NULL DEFAULT '10',
  `Document` int(11) NOT NULL DEFAULT '0',
  `Collect` int(11) NOT NULL DEFAULT '0',
  `TimeCreate` int(11) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `hc_user_info_Coin` (`Coin`),
  KEY `hc_user_info_Document` (`Document`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hc_user_info
-- ----------------------------
BEGIN;
INSERT INTO `hc_user_info` VALUES (1, 60, 4, 0, 1570951052, 1);
INSERT INTO `hc_user_info` VALUES (2, 35, 2, 0, 1570952881, 1);
COMMIT;

-- ----------------------------
-- Table structure for hc_word
-- ----------------------------
DROP TABLE IF EXISTS `hc_word`;
CREATE TABLE `hc_word` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Wd` varchar(20) NOT NULL DEFAULT '',
  `Cnt` int(11) NOT NULL DEFAULT '0',
  `Ids` longtext NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Wd` (`Wd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
