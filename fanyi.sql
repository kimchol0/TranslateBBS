/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : fanyi

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 29/04/2020 17:17:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for bankuai
-- ----------------------------
DROP TABLE IF EXISTS `bankuai`;
CREATE TABLE `bankuai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版块名称',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `jieshao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `tieshu` int(255) NULL DEFAULT NULL COMMENT '帖子数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '板块信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bankuai
-- ----------------------------
INSERT INTO `bankuai` VALUES (2, '备考交流', '/upload/1580982359656.jpg', '一切备考的学子都可以在这里交流哦', 0);
INSERT INTO `bankuai` VALUES (3, '真题回忆', '/upload/1580982559688.jpg', '历年真题回忆让你更好的了解自己', 2);
INSERT INTO `bankuai` VALUES (4, '经验分享', '/upload/1580982615223.jpg', '分享最真实的经验交流', 3);
INSERT INTO `bankuai` VALUES (5, '资料共享', '/upload/1580982731482.png', '共享最新最全的资料信息', 6);
INSERT INTO `bankuai` VALUES (9, '体会和技巧', '/upload/1583241949035.jpg', '技巧和理论探讨专区', 3);
INSERT INTO `bankuai` VALUES (7, '翻译擂台', '/upload/1583241989099.jpg', '欢迎各位翻译高手来这里打擂', 3);
INSERT INTO `bankuai` VALUES (10, '英语翻译求助', '/upload/1583241962805.jpg', '赠人玫瑰，手有余香', 32);
INSERT INTO `bankuai` VALUES (11, '汉语学习', '/upload/1583242002461.jpg', ' 汉语，翻译之基础', 6);

-- ----------------------------
-- Table structure for huifu
-- ----------------------------
DROP TABLE IF EXISTS `huifu`;
CREATE TABLE `huifu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '帖子编号',
  `shijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复时间',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `hstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '回复信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huifu
-- ----------------------------
INSERT INTO `huifu` VALUES (15, 'gzf', '28', '2020-02-10 10:56:16', '<p>谢谢分享</p>', '1');
INSERT INTO `huifu` VALUES (17, 'gzf', '31', '2020-02-13 08:41:05', '<p>非常好，谢谢</p>', '1');
INSERT INTO `huifu` VALUES (5, 'gzf', '28', '2020-02-10 05:34:08', '<p>谢谢，非常好的资料</p>', '1');
INSERT INTO `huifu` VALUES (18, 'gzf', '28', '2020-02-26 10:30:36', '<p>多谢</p>', '1');
INSERT INTO `huifu` VALUES (19, 'gzf', '39', '2020-02-26 10:38:07', '<p>1111</p>', '1');
INSERT INTO `huifu` VALUES (66, '2', '28', '2020-03-03 09:24:36', '<p>Thanks~</p>', '1');
INSERT INTO `huifu` VALUES (67, '3', '57', '2020-03-03 09:31:58', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">性格使然或因自夸过头致面子放不下而不肯认错</span></p>', '1');
INSERT INTO `huifu` VALUES (68, '4', '57', '2020-03-03 09:32:18', '<p>111<br/></p>', '1');
INSERT INTO `huifu` VALUES (69, '5', '57', '2020-03-03 09:34:34', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">先根据网上传闻, 介绍一下softangel。 姑讳其名, 男, 年50馀, 台湾人, 业翻译; 她在网上一向都是扮女人出现, 现任某翻译论坛版主。在本坛泡久了的朋友大概都认识她, 都知道她一向自高自大, 对网友冷嘲热讽; 亦知道其人学问低下、人品卑劣, 是论坛笑柄。</span></p>', '1');
INSERT INTO `huifu` VALUES (70, '5', '58', '2020-03-03 09:37:42', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">朝發軔於扶桑兮夕弭節於南門﹒欲陛見以效悃兮忽來巨靈之閽神﹒</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">彼瞋目而揚鎚兮厲聲以逐余﹒吾躑躅而躊躇兮徘徊而容與﹒</span></p>', '1');
INSERT INTO `huifu` VALUES (71, '5', '58', '2020-03-03 09:37:45', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">The lofty Lingxiao Hall1 is so towering, ho;</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">The remote way in clouds is so far away.</span></p>', '1');
INSERT INTO `huifu` VALUES (72, '6', '60', '2020-03-03 09:41:23', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">internet celebrity</span></p>', '1');
INSERT INTO `huifu` VALUES (73, '12', '61', '2020-03-03 09:45:28', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">1、标题字母必须全部大写或者大写标题中每个单词的第一个字母；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">2、标题中的冠词以及少于5个字母的连词、介词不能大写，除非是位于句首；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">3、标题中不能够使用引号和句号；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">4、标题要在涉外公证书上方正中央的位置；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">5、受涉外公证书类型的限制，在进行涉外公证书翻译时其标题中一般不会出现象“Between”这样长的连词或介词。</span></p>', '1');
INSERT INTO `huifu` VALUES (74, '13', '61', '2020-03-03 09:47:09', '<p>学到了，多谢！</p>', '0');
INSERT INTO `huifu` VALUES (75, '13', '62', '2020-03-03 09:48:01', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">2、优势化</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">这里的优势化是指在进行西班牙语翻译成中文时并不只是生硬的翻译，要做到优美易懂。所以要想成为一名优秀的西班牙语译员除了外语水平高之外，母语水平也应该好，这样才能给翻译出来的句子进行润色。不过需要注意的是，每个译员都有自己的翻译风格，要想把西班牙语翻译做的更好，应该统一好每个团队的特点。</span></p>', '0');
INSERT INTO `huifu` VALUES (76, '13', '62', '2020-03-03 09:48:09', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">3、促进交流</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">西班牙语翻译成中文的最终目标是促进两国之间的交流。所以，符合两国习惯的翻译才是最好的。语言这个东西博大精深，很多单词都会有多种意思，但有些是不常见的，如果一些生词、辟词用的太多，则不利于文化的交流。</span></p>', '0');
INSERT INTO `huifu` VALUES (77, '5', '65', '2020-03-03 09:52:22', '<p>秒啊</p>', '1');
INSERT INTO `huifu` VALUES (78, '4', '64', '2020-03-03 09:53:58', '<p>棒棒哒</p>', '1');
INSERT INTO `huifu` VALUES (79, 'gzf', '64', '2020-03-03 09:54:29', '<p>很好</p>', '1');
INSERT INTO `huifu` VALUES (80, '3', '28', '2020-03-03 09:54:52', '<p>棒</p>', '1');
INSERT INTO `huifu` VALUES (81, '4', '99', '2020-03-04 03:42:39', '<p>谢谢</p>', '1');
INSERT INTO `huifu` VALUES (82, '4', '99', '2020-03-04 03:44:45', '<p>1</p>', '1');
INSERT INTO `huifu` VALUES (83, '2', '28', '2020-04-22 09:40:04', '<p>2331a</p>', '1');
INSERT INTO `huifu` VALUES (84, '4', '100', '2020-04-22 09:41:58', '<p>不错</p>', '1');
INSERT INTO `huifu` VALUES (85, '11', '101', '2020-04-29 05:01:19', '<p>是的，我国历史悠久，是四大文明古国之一。</p>', '1');

-- ----------------------------
-- Table structure for jifen
-- ----------------------------
DROP TABLE IF EXISTS `jifen`;
CREATE TABLE `jifen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `jine` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '金额',
  `fangshi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '充值方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '积分充值' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jifen
-- ----------------------------
INSERT INTO `jifen` VALUES (25, 'gzf', '2020-02-13 08:12:50', '-2', '下载资源');
INSERT INTO `jifen` VALUES (26, 'gzf', '2020-02-13 08:12:52', '-2', '下载资源');
INSERT INTO `jifen` VALUES (27, 'gzf', '2020-02-13 08:13:59', '-2', '下载资源');
INSERT INTO `jifen` VALUES (28, 'gzf', '2020-02-13 08:14:04', '-2', '下载资源');
INSERT INTO `jifen` VALUES (29, 'gzf', '2020-02-13 08:40:23', '100', '微信');
INSERT INTO `jifen` VALUES (30, 'gzf', '2020-02-13 08:40:37', '80', '微信');
INSERT INTO `jifen` VALUES (31, 'gzf', '2020-02-13 08:41:06', '-2', '下载资源');
INSERT INTO `jifen` VALUES (32, 'gzf', '2020-02-13 08:41:29', '100', '微信');
INSERT INTO `jifen` VALUES (33, 'gzf', '2020-02-13 08:42:22', '-2', '下载资源');
INSERT INTO `jifen` VALUES (34, 'gzf', '2020-02-27 05:24:12', '100', '微信');
INSERT INTO `jifen` VALUES (35, 'gzf', '2020-02-27 05:24:21', '100', '微信');
INSERT INTO `jifen` VALUES (36, '2', '2020-02-27 05:24:58', '100', '微信');
INSERT INTO `jifen` VALUES (37, '2', '2020-02-27 05:25:12', '-1', '下载资源');
INSERT INTO `jifen` VALUES (38, '2', '2021-02-28 04:59:37', '11', '微信');
INSERT INTO `jifen` VALUES (39, '2', '2020-02-29 12:12:02', '1', '微信');
INSERT INTO `jifen` VALUES (40, 'gzf', '2020-02-29 03:15:38', '-3', '下载资源');
INSERT INTO `jifen` VALUES (41, '2', '2020-03-02 04:06:41', '-3', '下载资源');
INSERT INTO `jifen` VALUES (42, '3', '2020-03-03 10:06:47', '-2', '下载资源');
INSERT INTO `jifen` VALUES (43, '3', '2020-03-03 10:07:51', '-2', '下载资源');
INSERT INTO `jifen` VALUES (44, '13', '2020-03-03 09:13:54', '50', '微信');
INSERT INTO `jifen` VALUES (45, '12', '2020-03-03 09:14:06', '40', '微信');
INSERT INTO `jifen` VALUES (46, '11', '2020-03-03 09:14:14', '80', '微信');
INSERT INTO `jifen` VALUES (47, '10', '2020-03-03 09:14:21', '34', '微信');
INSERT INTO `jifen` VALUES (48, '9', '2020-03-03 09:14:36', '35', '微信');
INSERT INTO `jifen` VALUES (49, '7', '2020-03-03 09:14:52', '24', '微信');
INSERT INTO `jifen` VALUES (50, '8', '2020-03-03 09:14:57', '68', '支付宝');
INSERT INTO `jifen` VALUES (51, 'gzf', '2020-03-03 09:19:25', '-2', '下载资源');
INSERT INTO `jifen` VALUES (52, 'gzf', '2020-03-03 09:19:34', '-2', '下载资源');
INSERT INTO `jifen` VALUES (53, 'gzf', '2020-03-03 09:21:48', '-2', '下载资源');
INSERT INTO `jifen` VALUES (54, 'gzf', '2020-03-03 09:22:23', '-2', '下载资源');
INSERT INTO `jifen` VALUES (55, 'gzf', '2020-03-03 09:25:04', '-2', '下载资源');
INSERT INTO `jifen` VALUES (56, '12', '2020-03-03 09:45:33', '-2', '下载资源');
INSERT INTO `jifen` VALUES (57, '5', '2020-03-03 09:52:23', '-10', '下载资源');
INSERT INTO `jifen` VALUES (58, '2', '2020-03-03 10:15:32', '-2', '下载资源');
INSERT INTO `jifen` VALUES (59, '7', '2020-03-03 10:17:31', '-2', '下载资源');
INSERT INTO `jifen` VALUES (60, '8', '2020-03-03 10:20:14', '-10', '下载资源');
INSERT INTO `jifen` VALUES (61, '9', '2020-03-03 10:22:07', '-10', '下载资源');
INSERT INTO `jifen` VALUES (62, '4', '2020-03-04 03:42:42', '-5', '下载资源');
INSERT INTO `jifen` VALUES (63, '2', '2020-04-22 21:40:10', '+1', '回复帖子');
INSERT INTO `jifen` VALUES (64, '4', '2020-04-22 21:42:02', '+1', '回复帖子');
INSERT INTO `jifen` VALUES (65, '11', '2020-04-29 17:01:42', '+1', '回复帖子');

-- ----------------------------
-- Table structure for tiezi
-- ----------------------------
DROP TABLE IF EXISTS `tiezi`;
CREATE TABLE `tiezi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `shijian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `bk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块',
  `dianji` int(255) NULL DEFAULT NULL COMMENT '点击量',
  `fujian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `jifen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所需积分',
  `hfs` int(255) NULL DEFAULT NULL COMMENT '回复数',
  `zuihou` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后发表人',
  `tstate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jjzz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '帖子信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES (28, '考研资料下载', '2020-02-10 11:37:11', 'gzf', '<p>考研资料下载，最全的2020年考研资料</p>', '资料共享', 168, '/upload/1.rar', '2', 12, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (29, '文件模板下载', '2020-02-11 10:09:42', 'gzf', '<p>文件模板下载</p>', '资料共享', 29, '/upload/1.rar', '2', 0, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (31, '2019真题回忆', '2020-02-12 10:30:49', 'gzf', '<p>2019真题回忆</p>', '真题回忆', 15, '/upload/1.rar', '2', 1, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (36, '经验分享资料下载', '2020-02-13 08:41:57', 'gzf', '<p>经验分享资料下载</p>', '经验分享', 9, '/upload/1581597732093.zip', '2', 0, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (37, '2018真题回忆', '2020-02-26 09:29:00', 'gzf', '<p>2018真题</p>', '真题回忆', 8, '', '', 0, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (38, '翻译经验分享', '2020-02-26 10:12:59', 'gzf', '<p>翻译<br/></p>', '资料共享', 5, '', '', 0, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (39, '翻译经验分享', '2020-02-26 10:30:52', 'gzf', '<p>翻译</p>', '资料共享', 16, '', '', 4, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (40, '资料', '2020-02-26 10:38:41', 'gzf', '<p>资料</p>', '经验分享', 9, '', '', 0, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (45, '如何做好论文翻译工作2', '2020-02-27 05:23:26', 'gzf', '<p>如何做好论文翻译工作2</p>', '资料共享', 17, '/upload/1582795420082.jar.zip', '1', 1, 'gzf', '1', NULL);
INSERT INTO `tiezi` VALUES (47, '如何做好论文翻译工作3', '2020-02-29 03:09:06', 'gzf', '<p>如何做好论文翻译工作3</p>', '资料共享', 27, '/upload/1582960531136.zip', '3', 5, 'gzf', '1', '0');
INSERT INTO `tiezi` VALUES (57, '谈狡辩', '2020-03-03 09:27:40', '2', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">比武有输赢, 讨论有对错, 本平常事,。</span></p>', '翻译擂台', 11, '', '', 3, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (58, '詩詞古文英譯集帖', '2020-03-03 09:35:55', '2', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">遊仙 (雙語)</span><br/><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">煌煌金闕之燦燦兮重重宮樓之猗奐﹒巍巍靈霄之嵯峨兮迢迢雲路之超遠﹒</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">吾駕六鵬之車兮命造父以為御﹒張孔雀之羽蓋兮令精衛而前驅﹒</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">Travel in Superworld</span><br/><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">The grand golden palace is so magnificent, ho;</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">Pavilions beyond pavilions are splendid.</span></span></p>', '翻译擂台', 6, '', '', 2, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (59, '本公司诚征兼职英语翻译（笔译）', '2020-03-03 09:40:11', '5', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">本公司诚征兼职英语翻译（笔译）</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">本公司诚征兼职英语翻译，符合下列要求之一者均可应聘：</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">1、英文、翻译或相关专业，中英文良好，擅长英译中或中译英其中之一，擅长中英互译者更佳；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">2、对财经、金融、汽车、机械等领域有一定了解，或者具备此类领域翻译经验；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">3、具备其他领域翻译丰富经验；</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">4、翻译功底深厚；</span><br/><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">本职位不限工作经验，不限年龄，不限性别，只注重翻译质量，希望你注重细节，认真、负责、高效，时间灵活、充裕。</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">我们将进行简短测试（中译英和英译中分别300字左右）。通过测试的优秀、负责任者将长期大量合作。</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">本招聘长期有效，</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">有意向者请将简历发送至 transinbj@126.com。请在邮件中注明自己的擅长领域以及报价。</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">谢谢！</span></p>', '汉语学习', 1, '', '', 0, '5', '2', NULL);
INSERT INTO `tiezi` VALUES (60, 'how say 網紅', '2020-03-03 09:40:46', '4', '<p>how say 網紅</p>', '英语翻译求助', 5, '', '', 1, '4', '1', NULL);
INSERT INTO `tiezi` VALUES (61, '涉外公证书翻译的常见问题', '2020-03-03 09:44:29', '12', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">涉外公证书可译作“Notarial Certificate”，一般不能做改动。比如‘毕业公证书’、‘收养公证书’可翻译成‘Notarization of Diploma’和‘Notarization of Adoption’，也可以直接翻译成“Notarial Certificate”。</span><br/></p>', '体会和技巧', 6, '/upload/1583243081649.jpg', '2', 2, '12', '1', NULL);
INSERT INTO `tiezi` VALUES (62, ' 西班牙语翻译成中文的标准有哪些？', '2020-03-03 09:47:28', '13', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">1、专业化</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">要想成为专业西班牙语的翻译人员，必须拥有较高的专业化外语水平，只有这样才能保证西班牙语翻译成中文更加专业化。西班牙语翻译团队的所有人员必须具备NAATI翻译执业资格证书，除此之外还必须具备三年以上的翻译工作经验才行。因为翻译这个行业是需要有相当丰富的经验的，很多东西并不只有词典上那一个意思，只有多翻才会有感觉。</span></p>', '体会和技巧', 3, '/upload/1583243264185.jpg', '5', 2, '13', '1', NULL);
INSERT INTO `tiezi` VALUES (63, ' 诗歌写作和翻译', '2020-03-03 09:48:32', '7', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">我的一位现旅居美国的中学学长XX兄写了一首叫“The Afternoon Sunshine”的诗歌，并附上同一个内容的中文诗歌。</span></p>', '汉语学习', 2, '/upload/1583243338739.jpg', '2', 0, '7', '1', NULL);
INSERT INTO `tiezi` VALUES (64, '世行土建工程标准招标文件的若干词汇翻译的说明', '2020-03-03 09:50:53', '3', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">Specification的翻译</span><br/><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">• 在世行贷款项目招标文件范本《土建工程国际竞争性招标文件，1997年5月》（财政部编）中，招标文件的技术部分称为Technical Specification（技术规范）。但是在世行土建工程采购《标准招标文件，2006年5月版，2007年3月、4月修订》中，简略为Specification。估计是因为：英语认为“technical”是Specification的固有属性，所以，Technical这个形容词就删去了。在英译汉时，不知道背景的译员就将Specification翻译成“规范”。</span></p>', '汉语学习', 8, '/upload/1583243470377.jpg', '5', 2, '3', '1', NULL);
INSERT INTO `tiezi` VALUES (65, '诗《青台》', '2020-03-03 09:51:28', '3', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">　　陸佰柒陸。青臺</span><br/><span style=\"color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, Helvetica, Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\">　　　　傳車一別蜀漢零。內禪不習子規哀。華蕊冰骨刻相思。霧濃人瘦詠青臺。</span></p>', '翻译擂台', 6, '/upload/1583243502202.jpg', '10', 1, '3', '1', NULL);
INSERT INTO `tiezi` VALUES (66, '诗《蒹葭》', '2020-03-03 22:00:28', '2', '蒹葭苍苍怎么翻译', '英语翻译求助', 31, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (67, '诗《桃夭》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (68, '诗《河广》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 32, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (69, '诗《采薇》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (70, '诗《无衣》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 31, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (71, '诗《硕鼠》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (72, '诗《易水歌》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (73, '诗《江南》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (74, '诗《古诗》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (75, '诗《上邪》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (76, '诗《古歌》', '2020-03-03 22:00:28', '2', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (77, '龟虽寿怎么翻译', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (78, '观沧海怎么翻译', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (79, '短歌行怎么翻译', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (80, '燕行歌怎么翻译', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (81, '赠从弟怎么翻译', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (82, '七步诗怎么翻译', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', '1');
INSERT INTO `tiezi` VALUES (83, '白马篇', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (84, '燕歌行', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (85, '诗《归园田居》', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', '2');
INSERT INTO `tiezi` VALUES (86, '诗《燕歌行》', '2020-03-03 22:00:28', '3', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (87, '龟虽寿怎么翻译', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (88, '观沧海怎么翻译', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (89, '短歌行怎么翻译', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (90, '燕行歌怎么翻译', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (91, '赠从弟怎么翻译', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (92, '七步诗怎么翻译', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (93, '白马篇', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (94, '燕歌行', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (95, '诗《归园田居》', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (96, '诗《燕歌行》', '2020-03-03 22:00:28', '4', '怎么翻译', '英语翻译求助', 30, '', '', 0, '2', '1', NULL);
INSERT INTO `tiezi` VALUES (97, '如何做好论文翻译工作', '2020-03-04 10:17:39', '7', '<p>如何做好论文翻译工作</p>', '体会和技巧', 9, '/upload/1583245070665.7z', '10', 0, '7', '1', '0');
INSERT INTO `tiezi` VALUES (98, '测试一', '2020-03-03 10:23:10', '11', '<p>测试一</p>', '经验分享', 0, '/upload/1583245401300.zip', '15', 0, '11', '1', NULL);
INSERT INTO `tiezi` VALUES (99, '汉语学习版块测试帖', '2020-03-04 15:41:45', '3', '<p>汉语学习版块测试帖内容</p>', '汉语学习', 13, '/upload/1583307722607.jpg', '5', 2, '3', '1', NULL);
INSERT INTO `tiezi` VALUES (100, '汉语学习测试', '2020-04-22 21:40:52', '3', '<p>1</p>', '汉语学习', 7, '', '', 1, '3', '1', '0');
INSERT INTO `tiezi` VALUES (101, '中华文化博大精深', '2020-04-29 16:55:59', '10', '<p>中国文化博大精深，我们应该多学习语文知识，为翻译打下良好的母语基础。</p>', '汉语学习', 3, '/upload/1588150735521.zip', '1', 1, '10', '1', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `xingming` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `touxing` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `jifen` int(255) NULL DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'gzf', 'gzf', '老郭', '男', '15176086060', '和平路101', '/upload/1580982981671.jpg', 427);
INSERT INTO `user` VALUES (8, '1', '1', '松雅韶', '女', '13627683528', '湖南长沙', '/upload/1583230847558.jpg', 1000);
INSERT INTO `user` VALUES (9, '2', '2', '潘雁露', '女', '13927683528', '天津南开', '/upload/1583234460328.jpg', 999);
INSERT INTO `user` VALUES (10, '3', '3', '接梦寒', '女', '14627683528', '山东临淄', '/upload/1583235141184.jpg', 1000);
INSERT INTO `user` VALUES (11, '4', '4', '汲佳妍', '女', '13927683476', '新疆乌鲁木齐', '/upload/1583235533188.jpg', 996);
INSERT INTO `user` VALUES (12, '5', '5', '乘昕妤', '女', '16825463875', '湖北武汉', '/upload/1583235568221.jpg', 990);
INSERT INTO `user` VALUES (13, '6', '6', '广幻翠', '女', '15628743956', '陕西西安', '/upload/1583240641791.jpg', 1000);
INSERT INTO `user` VALUES (14, '7', '7', '凭白秋', '男', '17524357845', '湖南长沙', '/upload/1583240985576.jpg', 22);
INSERT INTO `user` VALUES (15, '8', '8', '回寻', '男', '13627645528', '山东济南', '/upload/1583241020893.jpg', 58);
INSERT INTO `user` VALUES (16, '9', '9', '历俊逸', '男', '13927683476', '四川雅安', '/upload/1583241098329.jpg', 25);
INSERT INTO `user` VALUES (17, '10', '10', '高鸿熙', '男', '15625463875', '四川汶川', '/upload/1583241128558.jpg', 34);
INSERT INTO `user` VALUES (18, '11', '11', '郁思菱', '男', '17627683528', '湖南长沙', '/upload/1583241159147.jpg', 81);
INSERT INTO `user` VALUES (19, '12', '12', '公冶思嫒', '女', '18732538745', '湖北武汉', '/upload/1583241191102.jpg', 38);
INSERT INTO `user` VALUES (20, '13', '13', '宇又夏', '男', '14627683528', '天津南开', '/upload/1583241211506.jpg', 50);

-- ----------------------------
-- View structure for v_hf
-- ----------------------------
DROP VIEW IF EXISTS `v_hf`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_hf` AS select `huifu`.`id` AS `id`,`huifu`.`username` AS `username`,`huifu`.`tid` AS `tid`,`huifu`.`shijian` AS `shijian`,`huifu`.`neirong` AS `neirong`,`user`.`touxing` AS `touxing` from (`huifu` join `user`) where (`huifu`.`username` = `user`.`username`) ;

-- ----------------------------
-- View structure for v_tz
-- ----------------------------
DROP VIEW IF EXISTS `v_tz`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_tz` AS select `tiezi`.`id` AS `id`,`tiezi`.`biaoti` AS `biaoti`,`tiezi`.`shijian` AS `shijian`,`tiezi`.`username` AS `username`,`tiezi`.`neirong` AS `neirong`,`tiezi`.`bk` AS `bk`,`tiezi`.`dianji` AS `dianji`,`tiezi`.`fujian` AS `fujian`,`tiezi`.`jifen` AS `jifen`,`tiezi`.`hfs` AS `hfs`,`tiezi`.`zuihou` AS `zuihou`,`user`.`touxing` AS `touxing` from (`tiezi` join `user`) where (`tiezi`.`username` = `user`.`username`) ;

-- ----------------------------
-- View structure for v_uptiezi
-- ----------------------------
DROP VIEW IF EXISTS `v_uptiezi`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_uptiezi` AS SELECT
	tiezi.id AS id,
	tiezi.username as username,
	tiezi.biaoti AS biaoti,
	huifu.neirong AS neirong,
	huifu.hstate AS hstate 
FROM
	( tiezi JOIN huifu ) 
WHERE
	tiezi.id = huifu.tid 
ORDER BY
	id ASC ;

SET FOREIGN_KEY_CHECKS = 1;
