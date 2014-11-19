/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : jees-cms

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-11-19 14:41:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `column_id` int(11) NOT NULL DEFAULT '0',
  `url` tinytext,
  `keywords` tinytext,
  `description` tinytext,
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `from_url` tinytext,
  `label` tinytext,
  `logo` tinytext,
  `content` text,
  `comment_enable` tinyint(4) NOT NULL DEFAULT '0',
  `comment_allow` tinyint(4) NOT NULL DEFAULT '0',
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `count_pv` tinyint(4) NOT NULL DEFAULT '0',
  `count_uv` tinyint(4) NOT NULL DEFAULT '0',
  `count_ip` tinyint(4) NOT NULL DEFAULT '0',
  `is_top` tinyint(4) NOT NULL DEFAULT '0',
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `publish_time` bigint(20) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '系统管理子系统', '3', '', '', null, '', null, null, '', '<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>2.2.2</b><b> </b><b>系统管理子系统</b><b></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	系统管理子系统是业务管理系统的系统初始化的管理平台，通过此系统，系统管理员可以定制操作界面、按级按角色授权、提高系统安全性，对系统参数及日志进行维护等。<a name=\"_Toc293411153\"></a><span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	（<span>1</span>）流程的定制和修改模块。系统提供行政办公、执法业务管理流程的自定义功能。用户可以根据自身的需要因应业务操作的变动或优化，自行对系统中相应的办公、执法流程的进行定制和修改。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<a name=\"_Toc293411154\"></a>（<span>2</span>）组织架构管理模块。用于对层次性的组织机构进行管理，可以用树状结构表示各职能部门的人事结构及从属关系、支持基于角色的代理人功能，支持目录服务<span>LDAP</span>的人员资料信息同步。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	部门管理用于维护用户所属单位、部门的组织结构，按照政府机关的实际组织结构来划分，并维护到数据库中，目的是对机构、用户进行统一管理。系统可实现部门的可视化的定义管理，包含以下内容：<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门设置，基本信息定义、修改、删除等操作。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门分级、排序、检索。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门与执法事项、流程环节、办事人员等关联。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	每个用户都属于某个特定的机构，当机构改变，如合并、撤销时，相应用户也要处理。当撤销时，该机构作删除处理，相应用户也作删除处理，当合并时，先做撤销处理，然后在另一个机构中添加用户。注意，这里的删除只是作删除标记，并不真正在数据库里删除。另外，在组织机构管理中也可以对部门或者用户赋予相应的应用权限和菜单权限。同时，组织机构管理支持符合<span>LDAP</span>命名格式的组织单元模型，可以依托目录服务中的组织结构，可以将目录服务中的组织机构和用户数据作为系统组织机构的基础数据，并无缝衔接到其它应用中。同时，通过实现和目录服务的数据捆绑，使得整个系统可以实现单点登录模式。<a name=\"_Toc293411155\"></a><span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	（<span>3</span>）用户管理模块。用户管理模块提供用户资料方面的管理功能，主要有：<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户基本资料；用户基本资料用于对系统中的用户进行管理，注册用户，管理用户的基本信息及<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	删除用户的基本管理功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户权限：给用户赋予相应登寻权限（选择一个用户组权限）以确保系统安全、可靠、有效地进<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	行，防止用户非法操作系统功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户密码修改：当用户忘记密码或因特殊需要必须更改先前设置的密码，并且用户拥有足够权限<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	时，系统才允许用户操作此功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<a name=\"_Toc293411156\"></a>（<span>4</span>）<a name=\"_Toc293411158\"></a>权限设置模块。权限管理用于管理系统的权限信息，可根据业务和管理要求分配不同的控制管理权限给指定用户或者角色。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  对应用系统的所有资源进行权限控制，系统根据用户的权限对工作窗口进行初始化，为不同角<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	色的用户定制不同的工作窗口界面和功能菜单。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  无限级功能模块管理，自定义模块排序，可以对整个系统中所有模块进行分类管理。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  自定义操作动作<span>(</span>如增加、删除、修改、查询、审核等动作<span>)</span>。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  灵活地为各模块分配操作，即每个模块有哪些操作需要被控制。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  对所有用户基础信息进行管理，实行有效期机制，过期自动失效，在有效期间亦可强制停止用<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	户使用。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  自定义角色，任意角色可任意组合系统权限功能点。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  按角色给用户授权，按用户分配角色，一个用户可有多个角色<span>(</span>多身份<span>)</span>，一个角色也可以被多<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	个用户拥有<span>(</span>同身份<span>)</span>（多对多），灵活授权。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  组织管理，与单位的部门或者机构对应，用于实现对用户和权限的分组归类管理。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户及角色分级管理，下级用户只能拥有上级用户权限的子集，可无限分级。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	（<span>5</span>）数据维护模块。数据维护是赋予系统管理员的一种特殊权限，管理员在特定的情况下，可以对数据库进行维护操作，包括制订数据备份计划、数据结构的修改、业务流程的修改等，这类操作必须具备严格的限度控制，必须保留全部修改日志，便于监督追踪。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	<a name=\"_Toc293411157\"></a>（<span>6</span>）日志管理模块。包括用户日志和系统日志。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	用户日志管理主要是系统自动记录所有进入系统用户的信息资料，包括记录操作用户的编号、姓名、进入时间、操作电脑<span>IP</span>等。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	系统操作日志管理主要是系统自动管理进行过业务处理的日志信息，主要记录用户编号、姓名、进入时间、业务模块操作动作（增加、删除、修改、查询、下载、上传等），授权用户也可以进看系统日志，并可以对日志及统计进行分析、研究。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">\r\n	<a name=\"_Toc293411160\"></a>（<span>7</span>）消息管理模块。消息中心是系统内用户互发和收取信息的消息交换枢纽中心，是用户在系统内交流的平台。通过定制的方式实现短信、邮件、文件、文字等信息载体的传送，也可为客户定制向移动设备发送短信功能。主要功能有短信消息管理、论坛、通知公告和系统信息。同时消息中心提供窗口人员评测功能，通过对评测主题的管理，可以让内部人员互相评测，然后在对这些评测数据进行统计、分析和展示。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>①手机短信。</b>系统可动态配置短信接口，实现与短信系统的对接，通过短信平台传递立案信息、执法环节信息、结果信息、预警提示等信息，及时通过短信方式反馈给业务人员和相关用户。并可保存信息日志，供管理人员调阅。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信系统可与现有软件平台各应用系统、网站和其他第三方系统无缝对接。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  系统支持中国移动<span>CMPP</span>、中国联通<span>SGIP</span>、中国电信<span>SM</span>Ｇ<span>P</span>等多种短信接入协议，后台守护进程<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	方式工作，支持<span>HTTP</span>、<span>WebService</span>和数据共享三种接口方式。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信提醒功能。重要信息、事务提醒，节假日祝福，预设日程通知，系统群发与自动回复。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信自动发送，支持号段、群组群发，实时或定时发送。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  通讯录分组管理，支持文件导入联系人功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持超长短信发送和短信自动分割功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持自动回复功能，可定制短信自动回复代码及内容，并支持动态回复扩展功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持按角色分配用户权限，支持对短信发送的灵活权限控制，支持短信发送审核管理。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  系统提供强大的查询统计及分析功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信处理能力双向最高可达<span>300</span>条<span>/</span>秒，忙时不低于<span>100</span>条<span>/</span>秒，消息丢失率小于<span>0.01%</span>，平均运<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	行无故障时间大于<span>99.6%</span>。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>②论坛<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	论坛系统是一个信息交流的平台，为广大用户提供分享经验、探讨问题的网上社区。系统提供会员注册、发表及回复帖子、浏览帖子等前台功能<span>,</span>同时也为论坛的管理人员提供对应后台的管理功能，包括会员管理、论坛版块管理、帖子管理等功能。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  注册管理：能够对用户名，密码的简单验证，能够防止利用页面刷新重复注册，已经存在的用户<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	名称不能重复注册。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  浏览帖子：可以根据作者或内容等为关键字搜索帖子，分论坛版块显示帖子，显示帖子详情，浏<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	览帖子时不要求用户登录，但回复帖子前用户必须登录。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  发表及回复帖子：只有登录用户才可以发表和回复帖子，并且对帖子的字数有限制。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户个人信息管理：登录用户可以编辑注册后的个人资料，如修改密码等，但是不可以修改用户<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	名称。也可以对自己发表的帖子进行操作：如修改，删除。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  回复管理：各论坛版块的版主可以对自己管理的版块的帖子的回复的帖子进行管理，可以屏蔽回<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	复。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  论坛版块管理：只有管理员有该权限，管理员可以添加，删除版块，也可以修改版块资料，如版<span></span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	块名称、上级版块、版主等。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户管理：只有管理员有该权限，管理员可以禁用，启用用户，进行用户密码重置。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  公告管理：只有管理员有该权限，管理员可以添加，删除公告。<span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  帖子管理：各论坛版块的版主可以对自己管理的版块的帖子进行管理，可以屏蔽和删除帖子。<span> </span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>③消息公告<span></span></b> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	消息公告，即消息公告的传达处理系统，目的是为了让用户获得需要得到的消息（通知公告、待办业务、活动安排等）及提醒并进行处理，代替日常普通纸质文件的下发和处理，提高工作效率，节省时间和资源。系统提供网页在线图文编辑、表格处理、附件上传等功能，并提供对消息公告分类管理的功能。用户登录系统时，如果有新的消息公告，会弹出一个提示框，显示系统消息条数，点击后可以查看消息公告内容。<span></span> \r\n</p>', '0', '0', '0', '0', '0', '0', '0', '2147483647', '1', '0', '1', '1414487118605', '1', '1415261562185');
INSERT INTO `cms_article` VALUES ('2', '阿红凤凰拉风', '2', '', '艾佛森;按时发;萨芬', '啊嘎嘎', '', null, null, 'files/attached/image/20141106/1415263818103.jpg', 'gfg', '0', '0', '0', '0', '0', '0', '0', '2147483647', '1', '0', '1', '1415260554394', '1', '1415332154184');

-- ----------------------------
-- Table structure for `cms_column`
-- ----------------------------
DROP TABLE IF EXISTS `cms_column`;
CREATE TABLE `cms_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `keywords` tinytext,
  `description` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_column
-- ----------------------------
INSERT INTO `cms_column` VALUES ('1', '图文栏目', '0', '图文;栏目', '图文栏目', '0', '1', '1', '1415000500739', '1', '1415000523421');
INSERT INTO `cms_column` VALUES ('2', '文件下载', '0', '', '', '0', '1', '1', '1415008840590', '1', '1415008840590');
INSERT INTO `cms_column` VALUES ('3', '最新动态', '1', '', '', '0', '1', '1', '1415008861059', '1', '1415008861059');
INSERT INTO `cms_column` VALUES ('4', '在线教程', '1', '', '', '0', '1', '1', '1415008869462', '1', '1415008869462');

-- ----------------------------
-- Table structure for `cms_duty`
-- ----------------------------
DROP TABLE IF EXISTS `cms_duty`;
CREATE TABLE `cms_duty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_duty
-- ----------------------------
INSERT INTO `cms_duty` VALUES ('1', '基础职务', '0', '0', '1', '1', '1414474444315', '1', '1414474444315');
INSERT INTO `cms_duty` VALUES ('2', '研发组职务', '0', '0', '1', '1', '1414474510316', '1', '1414474510316');
INSERT INTO `cms_duty` VALUES ('3', '部门负责人', '1', '0', '1', '1', '1414474562763', '1', '1414474562763');
INSERT INTO `cms_duty` VALUES ('4', '部门职员', '1', '0', '1', '1', '1414474569567', '1', '1414474569567');
INSERT INTO `cms_duty` VALUES ('5', '研发组长', '2', '0', '1', '1', '1414474576872', '1', '1414474576872');
INSERT INTO `cms_duty` VALUES ('6', '研发组员', '2', '0', '1', '1', '1414474582268', '1', '1414474582268');

-- ----------------------------
-- Table structure for `cms_forbidden_word`
-- ----------------------------
DROP TABLE IF EXISTS `cms_forbidden_word`;
CREATE TABLE `cms_forbidden_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `remark` tinytext,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_forbidden_word
-- ----------------------------
INSERT INTO `cms_forbidden_word` VALUES ('1', 'admin', 'serial', '禁止采用“admin”字样的账号注册', '0', '1', '1', '1416379180814', '1', '1416379278663');
INSERT INTO `cms_forbidden_word` VALUES ('2', '管理', 'name', '禁止采用“管理”字样的用户名称', '0', '1', '1', '1416379258848', '1', '1416379258848');

-- ----------------------------
-- Table structure for `cms_icon`
-- ----------------------------
DROP TABLE IF EXISTS `cms_icon`;
CREATE TABLE `cms_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `url` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_icon
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_label`
-- ----------------------------
DROP TABLE IF EXISTS `cms_label`;
CREATE TABLE `cms_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(64) NOT NULL DEFAULT '',
  `controller` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `key_group` varchar(64) NOT NULL DEFAULT '',
  `key_name` varchar(64) NOT NULL DEFAULT '',
  `effect` varchar(32) NOT NULL DEFAULT '',
  `content` text,
  `remark` text,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_label
-- ----------------------------
INSERT INTO `cms_label` VALUES ('1', '首页最新动态文本', 'index', 'index', 'index', '', 'newsText', 'slideshow', '{\"0\":{\"space\":\"0\",\"image\":\"files/attached/image/20141115/1416034293316.jpg\",\"url\":\"gsgs\",\"title\":\"室内装修\"},\"1\":{\"image\":\"files/attached/image/20141115/1416034293316.jpg\",\"space\":\"2\",\"title\":\"卧室\",\"url\":\"gsgs\"},\"2\":{\"space\":\"0\",\"url\":\"saasgdg\",\"title\":\"餐厅\",\"image\":\"files/attached/image/20141115/1416034298605.jpg\"}}', '', '0', '1', '1', '1415418678539', '1', '1415776941357');

-- ----------------------------
-- Table structure for `cms_log`
-- ----------------------------
DROP TABLE IF EXISTS `cms_log`;
CREATE TABLE `cms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `module` varchar(32) NOT NULL DEFAULT '',
  `controller` varchar(32) NOT NULL DEFAULT '',
  `action` varchar(32) NOT NULL DEFAULT '',
  `referer` text,
  `request_url` text,
  `request_param` text,
  `session_id` tinytext,
  `session_value` text,
  `response_view` tinytext,
  `response_data` text,
  `content` text,
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_ip` varchar(64) NOT NULL DEFAULT '',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_log
-- ----------------------------
INSERT INTO `cms_log` VALUES ('1', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414490468022');
INSERT INTO `cms_log` VALUES ('2', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414545029912');
INSERT INTO `cms_log` VALUES ('3', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414545168109');
INSERT INTO `cms_log` VALUES ('4', '用户登陆', 'service', 'base', 'member', 'guest', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414546950839');
INSERT INTO `cms_log` VALUES ('5', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414549189833');
INSERT INTO `cms_log` VALUES ('6', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414549226782');
INSERT INTO `cms_log` VALUES ('7', '用户登陆', 'service', 'base', 'member', 'guest', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414549237147');
INSERT INTO `cms_log` VALUES ('8', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414549407194');
INSERT INTO `cms_log` VALUES ('9', '用户登陆', 'service', 'base', 'member', 'guest', null, null, null, null, null, null, null, null, '2', '127.0.0.1', '1414549503629');
INSERT INTO `cms_log` VALUES ('10', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414550599929');
INSERT INTO `cms_log` VALUES ('11', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1414641115538');
INSERT INTO `cms_log` VALUES ('12', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415000437396');
INSERT INTO `cms_log` VALUES ('13', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415008833470');
INSERT INTO `cms_log` VALUES ('14', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415150762677');
INSERT INTO `cms_log` VALUES ('15', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415162161325');
INSERT INTO `cms_log` VALUES ('16', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415174483534');
INSERT INTO `cms_log` VALUES ('17', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415256154141');
INSERT INTO `cms_log` VALUES ('18', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415322999570');
INSERT INTO `cms_log` VALUES ('19', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415329219584');
INSERT INTO `cms_log` VALUES ('20', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415344296632');
INSERT INTO `cms_log` VALUES ('21', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415354575484');
INSERT INTO `cms_log` VALUES ('22', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415415052717');
INSERT INTO `cms_log` VALUES ('23', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415499774940');
INSERT INTO `cms_log` VALUES ('24', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415502061255');
INSERT INTO `cms_log` VALUES ('25', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415596068345');
INSERT INTO `cms_log` VALUES ('27', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415667529406');
INSERT INTO `cms_log` VALUES ('30', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415768993348');
INSERT INTO `cms_log` VALUES ('31', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1415773059188');
INSERT INTO `cms_log` VALUES ('32', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416016923217');
INSERT INTO `cms_log` VALUES ('33', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416024509031');
INSERT INTO `cms_log` VALUES ('34', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416030882779');
INSERT INTO `cms_log` VALUES ('35', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416210235062');
INSERT INTO `cms_log` VALUES ('36', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416376200989');
INSERT INTO `cms_log` VALUES ('37', '用户登陆', 'service', 'base', 'member', 'logon', null, null, null, null, null, null, null, null, '1', '127.0.0.1', '1416379008123');

-- ----------------------------
-- Table structure for `cms_log_setting`
-- ----------------------------
DROP TABLE IF EXISTS `cms_log_setting`;
CREATE TABLE `cms_log_setting` (
  `id` int(11) NOT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT '0',
  `referer` tinyint(4) NOT NULL DEFAULT '0',
  `request_url` tinyint(4) NOT NULL DEFAULT '0',
  `request_param` tinyint(4) NOT NULL DEFAULT '0',
  `session_id` tinyint(4) NOT NULL DEFAULT '0',
  `session_value` tinyint(4) NOT NULL DEFAULT '0',
  `response_view` tinyint(4) NOT NULL DEFAULT '0',
  `response_data` tinyint(4) NOT NULL DEFAULT '0',
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_log_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_member`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member`;
CREATE TABLE `cms_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` varchar(64) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `salt` char(6) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `active_time` bigint(20) DEFAULT '0',
  `active_ip` varchar(64) DEFAULT '',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_ip` varchar(64) NOT NULL DEFAULT '',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_member
-- ----------------------------
INSERT INTO `cms_member` VALUES ('1', 'admin', '管理员', '0f4e8ac95b5c1fc48dc98004c7525bc7', '888888', '0', '1', '1416379292801', '127.0.0.1', '1', '127.0.0.1', '1411090286300', '1', '1415760761046');
INSERT INTO `cms_member` VALUES ('2', 'guest', '访客', '793a507822c9ec991c3418dfb7950f07', '338043', '0', '1', '1414550595011', '127.0.0.1', '1', '127.0.0.1', '1414546536140', '1', '1414546536140');

-- ----------------------------
-- Table structure for `cms_member_organize_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_organize_rel`;
CREATE TABLE `cms_member_organize_rel` (
  `member_id` int(11) NOT NULL DEFAULT '0',
  `organize_id` int(11) NOT NULL DEFAULT '0',
  `duty_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`,`organize_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_member_organize_rel
-- ----------------------------
INSERT INTO `cms_member_organize_rel` VALUES ('1', '1', '3');
INSERT INTO `cms_member_organize_rel` VALUES ('1', '6', '5');
INSERT INTO `cms_member_organize_rel` VALUES ('2', '2', '4');

-- ----------------------------
-- Table structure for `cms_member_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_member_role_rel`;
CREATE TABLE `cms_member_role_rel` (
  `member_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`member_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_member_role_rel
-- ----------------------------
INSERT INTO `cms_member_role_rel` VALUES ('1', '2');
INSERT INTO `cms_member_role_rel` VALUES ('2', '5');

-- ----------------------------
-- Table structure for `cms_menu`
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(128) NOT NULL DEFAULT '',
  `goal` varchar(8) NOT NULL DEFAULT '',
  `url` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES ('1', '默认菜单', '0', '', '_iframe', '', '0', '1', '1', '1414473027167', '1', '1414473027167');
INSERT INTO `cms_menu` VALUES ('2', '基础管理', '1', '', '_iframe', '', '0', '1', '1', '1414473128316', '1', '1414473171153');
INSERT INTO `cms_menu` VALUES ('3', '服务支持', '1', '', '_iframe', '', '0', '1', '1', '1414473191743', '1', '1414473191743');
INSERT INTO `cms_menu` VALUES ('4', '个人事务', '2', '', '_iframe', '', '0', '1', '1', '1414473213512', '1', '1414473213512');
INSERT INTO `cms_menu` VALUES ('5', '基础设置', '2', '', '_iframe', '', '0', '1', '1', '1414473222525', '1', '1414473222525');
INSERT INTO `cms_menu` VALUES ('6', '系统管理', '2', '', '_iframe', '', '0', '1', '1', '1414473231226', '1', '1414473231226');
INSERT INTO `cms_menu` VALUES ('7', '个人信息', '4', '', '_iframe', 'base/member/showSelf', '0', '1', '1', '1414473258867', '1', '1414473323577');
INSERT INTO `cms_menu` VALUES ('8', '密码修改', '4', '', '_iframe', 'base/member/editPassword', '0', '1', '1', '1414473301898', '1', '1414473363515');
INSERT INTO `cms_menu` VALUES ('9', '通知公告', '4', '', '_iframe', 'base/notice/layout', '0', '1', '1', '1414473847340', '1', '1414473847340');
INSERT INTO `cms_menu` VALUES ('10', '用户管理', '5', '', '_iframe', 'base/member/layout', '0', '1', '1', '1414473880919', '1', '1414473880919');
INSERT INTO `cms_menu` VALUES ('11', '组织管理', '5', '', '_iframe', 'base/organize/layout', '0', '1', '1', '1414473895222', '1', '1414473895222');
INSERT INTO `cms_menu` VALUES ('12', '角色管理', '5', '', '_iframe', 'base/role/layout', '0', '1', '1', '1414473908483', '1', '1414473908483');
INSERT INTO `cms_menu` VALUES ('13', '配置参数', '6', '', '_iframe', 'base/setting/layout', '0', '1', '1', '1414473954180', '1', '1414473954180');
INSERT INTO `cms_menu` VALUES ('14', '环境状态', '6', '', '_iframe', 'base/server/info', '0', '1', '1', '1414473978182', '1', '1414473978182');
INSERT INTO `cms_menu` VALUES ('15', '备份还原', '6', '', '_iframe', 'base/database/layout', '0', '1', '1', '1414473996215', '1', '1414473996215');
INSERT INTO `cms_menu` VALUES ('16', '图标管理', '6', '', '_iframe', 'base/icon/layout', '0', '1', '1', '1414474015579', '1', '1414474015579');
INSERT INTO `cms_menu` VALUES ('17', '菜单管理', '6', '', '_iframe', 'base/menu/layout', '0', '1', '1', '1414474026735', '1', '1414474026735');
INSERT INTO `cms_menu` VALUES ('18', '上传文件', '6', '', '_iframe', 'base/upload/layout', '0', '1', '1', '1414474054106', '1', '1414474054106');
INSERT INTO `cms_menu` VALUES ('19', '日志管理', '6', '', '_iframe', 'base/log/layout', '0', '1', '1', '1414474069981', '1', '1414474069981');
INSERT INTO `cms_menu` VALUES ('20', '资源管理', '6', '', '_iframe', 'base/resource/layout', '0', '1', '1', '1414474167390', '1', '1414474167390');
INSERT INTO `cms_menu` VALUES ('21', '官方主页', '3', '', '_iframe', 'http://www.iisquare.com/', '0', '1', '1', '1414476952893', '1', '1414477049753');

-- ----------------------------
-- Table structure for `cms_navigate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_navigate`;
CREATE TABLE `cms_navigate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `goal` varchar(8) NOT NULL DEFAULT '',
  `url` tinytext,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_navigate
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_note`
-- ----------------------------
DROP TABLE IF EXISTS `cms_note`;
CREATE TABLE `cms_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_note
-- ----------------------------
INSERT INTO `cms_note` VALUES ('1', '2', '黄先生', '115325235235', '127.0.0.1', 'sss', '0', '1', '1', '1415344456505', '1', '1415344456505');

-- ----------------------------
-- Table structure for `cms_note_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_note_type`;
CREATE TABLE `cms_note_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_note_type
-- ----------------------------
INSERT INTO `cms_note_type` VALUES ('1', '在线留言', '0', '0', '1', '1', '1414486602560', '1', '1415344330000');
INSERT INTO `cms_note_type` VALUES ('2', '优化建议', '1', '0', '1', '1', '1414486632933', '1', '1415344345859');
INSERT INTO `cms_note_type` VALUES ('3', '投诉举报', '1', '0', '1', '1', '1414486646337', '1', '1415344354302');

-- ----------------------------
-- Table structure for `cms_notice`
-- ----------------------------
DROP TABLE IF EXISTS `cms_notice`;
CREATE TABLE `cms_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_notice
-- ----------------------------
INSERT INTO `cms_notice` VALUES ('1', '系统管理子系统', '3', '<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>2.2.2</b><b> </b><b>系统管理子系统</b><b></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	系统管理子系统是业务管理系统的系统初始化的管理平台，通过此系统，系统管理员可以定制操作界面、按级按角色授权、提高系统安全性，对系统参数及日志进行维护等。<a name=\"_Toc293411153\"></a><span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	（<span>1</span>）流程的定制和修改模块。系统提供行政办公、执法业务管理流程的自定义功能。用户可以根据自身的需要因应业务操作的变动或优化，自行对系统中相应的办公、执法流程的进行定制和修改。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<a name=\"_Toc293411154\"></a>（<span>2</span>）组织架构管理模块。用于对层次性的组织机构进行管理，可以用树状结构表示各职能部门的人事结构及从属关系、支持基于角色的代理人功能，支持目录服务<span>LDAP</span>的人员资料信息同步。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	部门管理用于维护用户所属单位、部门的组织结构，按照政府机关的实际组织结构来划分，并维护到数据库中，目的是对机构、用户进行统一管理。系统可实现部门的可视化的定义管理，包含以下内容：<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门设置，基本信息定义、修改、删除等操作。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门分级、排序、检索。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  部门与执法事项、流程环节、办事人员等关联。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	每个用户都属于某个特定的机构，当机构改变，如合并、撤销时，相应用户也要处理。当撤销时，该机构作删除处理，相应用户也作删除处理，当合并时，先做撤销处理，然后在另一个机构中添加用户。注意，这里的删除只是作删除标记，并不真正在数据库里删除。另外，在组织机构管理中也可以对部门或者用户赋予相应的应用权限和菜单权限。同时，组织机构管理支持符合<span>LDAP</span>命名格式的组织单元模型，可以依托目录服务中的组织结构，可以将目录服务中的组织机构和用户数据作为系统组织机构的基础数据，并无缝衔接到其它应用中。同时，通过实现和目录服务的数据捆绑，使得整个系统可以实现单点登录模式。<a name=\"_Toc293411155\"></a><span>  </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	（<span>3</span>）用户管理模块。用户管理模块提供用户资料方面的管理功能，主要有：<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户基本资料；用户基本资料用于对系统中的用户进行管理，注册用户，管理用户的基本信息及<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	删除用户的基本管理功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户权限：给用户赋予相应登寻权限（选择一个用户组权限）以确保系统安全、可靠、有效地进<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	行，防止用户非法操作系统功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户密码修改：当用户忘记密码或因特殊需要必须更改先前设置的密码，并且用户拥有足够权限<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	时，系统才允许用户操作此功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	<a name=\"_Toc293411156\"></a>（<span>4</span>）<a name=\"_Toc293411158\"></a>权限设置模块。权限管理用于管理系统的权限信息，可根据业务和管理要求分配不同的控制管理权限给指定用户或者角色。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  对应用系统的所有资源进行权限控制，系统根据用户的权限对工作窗口进行初始化，为不同角<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	色的用户定制不同的工作窗口界面和功能菜单。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  无限级功能模块管理，自定义模块排序，可以对整个系统中所有模块进行分类管理。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  自定义操作动作<span>(</span>如增加、删除、修改、查询、审核等动作<span>)</span>。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  灵活地为各模块分配操作，即每个模块有哪些操作需要被控制。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  对所有用户基础信息进行管理，实行有效期机制，过期自动失效，在有效期间亦可强制停止用<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	户使用。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  自定义角色，任意角色可任意组合系统权限功能点。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  按角色给用户授权，按用户分配角色，一个用户可有多个角色<span>(</span>多身份<span>)</span>，一个角色也可以被多<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	个用户拥有<span>(</span>同身份<span>)</span>（多对多），灵活授权。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  组织管理，与单位的部门或者机构对应，用于实现对用户和权限的分组归类管理。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:45.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户及角色分级管理，下级用户只能拥有上级用户权限的子集，可无限分级。\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	（<span>5</span>）数据维护模块。数据维护是赋予系统管理员的一种特殊权限，管理员在特定的情况下，可以对数据库进行维护操作，包括制订数据备份计划、数据结构的修改、业务流程的修改等，这类操作必须具备严格的限度控制，必须保留全部修改日志，便于监督追踪。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	<a name=\"_Toc293411157\"></a>（<span>6</span>）日志管理模块。包括用户日志和系统日志。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	用户日志管理主要是系统自动记录所有进入系统用户的信息资料，包括记录操作用户的编号、姓名、进入时间、操作电脑<span>IP</span>等。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:24.0pt;\">\r\n	系统操作日志管理主要是系统自动管理进行过业务处理的日志信息，主要记录用户编号、姓名、进入时间、业务模块操作动作（增加、删除、修改、查询、下载、上传等），授权用户也可以进看系统日志，并可以对日志及统计进行分析、研究。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:26.25pt;\">\r\n	<a name=\"_Toc293411160\"></a>（<span>7</span>）消息管理模块。消息中心是系统内用户互发和收取信息的消息交换枢纽中心，是用户在系统内交流的平台。通过定制的方式实现短信、邮件、文件、文字等信息载体的传送，也可为客户定制向移动设备发送短信功能。主要功能有短信消息管理、论坛、通知公告和系统信息。同时消息中心提供窗口人员评测功能，通过对评测主题的管理，可以让内部人员互相评测，然后在对这些评测数据进行统计、分析和展示。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>①手机短信。</b>系统可动态配置短信接口，实现与短信系统的对接，通过短信平台传递立案信息、执法环节信息、结果信息、预警提示等信息，及时通过短信方式反馈给业务人员和相关用户。并可保存信息日志，供管理人员调阅。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信系统可与现有软件平台各应用系统、网站和其他第三方系统无缝对接。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  系统支持中国移动<span>CMPP</span>、中国联通<span>SGIP</span>、中国电信<span>SM</span>Ｇ<span>P</span>等多种短信接入协议，后台守护进程<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	方式工作，支持<span>HTTP</span>、<span>WebService</span>和数据共享三种接口方式。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信提醒功能。重要信息、事务提醒，节假日祝福，预设日程通知，系统群发与自动回复。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信自动发送，支持号段、群组群发，实时或定时发送。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  通讯录分组管理，支持文件导入联系人功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持超长短信发送和短信自动分割功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持自动回复功能，可定制短信自动回复代码及内容，并支持动态回复扩展功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  支持按角色分配用户权限，支持对短信发送的灵活权限控制，支持短信发送审核管理。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  系统提供强大的查询统计及分析功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  短信处理能力双向最高可达<span>300</span>条<span>/</span>秒，忙时不低于<span>100</span>条<span>/</span>秒，消息丢失率小于<span>0.01%</span>，平均运<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	行无故障时间大于<span>99.6%</span>。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>②论坛<span></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	论坛系统是一个信息交流的平台，为广大用户提供分享经验、探讨问题的网上社区。系统提供会员注册、发表及回复帖子、浏览帖子等前台功能<span>,</span>同时也为论坛的管理人员提供对应后台的管理功能，包括会员管理、论坛版块管理、帖子管理等功能。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  注册管理：能够对用户名，密码的简单验证，能够防止利用页面刷新重复注册，已经存在的用户<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	名称不能重复注册。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  浏览帖子：可以根据作者或内容等为关键字搜索帖子，分论坛版块显示帖子，显示帖子详情，浏<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	览帖子时不要求用户登录，但回复帖子前用户必须登录。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  发表及回复帖子：只有登录用户才可以发表和回复帖子，并且对帖子的字数有限制。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户个人信息管理：登录用户可以编辑注册后的个人资料，如修改密码等，但是不可以修改用户<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	名称。也可以对自己发表的帖子进行操作：如修改，删除。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  回复管理：各论坛版块的版主可以对自己管理的版块的帖子的回复的帖子进行管理，可以屏蔽回<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	复。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  论坛版块管理：只有管理员有该权限，管理员可以添加，删除版块，也可以修改版块资料，如版<span></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	块名称、上级版块、版主等。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  用户管理：只有管理员有该权限，管理员可以禁用，启用用户，进行用户密码重置。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  公告管理：只有管理员有该权限，管理员可以添加，删除公告。<span></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-left:42.0pt;text-indent:-21.0pt;\">\r\n	Ø  帖子管理：各论坛版块的版主可以对自己管理的版块的帖子进行管理，可以屏蔽和删除帖子。<span> </span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.1pt;\">\r\n	<b>③消息公告<span></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"text-indent:21.0pt;\">\r\n	消息公告，即消息公告的传达处理系统，目的是为了让用户获得需要得到的消息（通知公告、待办业务、活动安排等）及提醒并进行处理，代替日常普通纸质文件的下发和处理，提高工作效率，节省时间和资源。系统提供网页在线图文编辑、表格处理、附件上传等功能，并提供对消息公告分类管理的功能。用户登录系统时，如果有新的消息公告，会弹出一个提示框，显示系统消息条数，点击后可以查看消息公告内容。<span></span>\r\n</p>', '2147483647', '1', '1', '1414487118605', '1', '1414487118605');

-- ----------------------------
-- Table structure for `cms_notice_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_notice_type`;
CREATE TABLE `cms_notice_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_notice_type
-- ----------------------------
INSERT INTO `cms_notice_type` VALUES ('1', '内部通知', '0', '0', '1', '1', '1414486602560', '1', '1414486602560');
INSERT INTO `cms_notice_type` VALUES ('2', '紧急通知', '1', '0', '1', '1', '1414486632933', '1', '1414486632933');
INSERT INTO `cms_notice_type` VALUES ('3', '日常文件', '1', '0', '1', '1', '1414486646337', '1', '1414486646337');

-- ----------------------------
-- Table structure for `cms_organize`
-- ----------------------------
DROP TABLE IF EXISTS `cms_organize`;
CREATE TABLE `cms_organize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` text,
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_organize
-- ----------------------------
INSERT INTO `cms_organize` VALUES ('1', '灰鸦社区', '0', '0', '1', '', '1', '1414474261923', '1', '1414474261923');
INSERT INTO `cms_organize` VALUES ('2', '爱好者', '1', '0', '1', '', '1', '1414474376538', '1', '1414474376538');
INSERT INTO `cms_organize` VALUES ('3', '精英汇', '1', '0', '1', '', '1', '1414474386308', '1', '1414474386308');
INSERT INTO `cms_organize` VALUES ('4', '开发者', '1', '0', '1', '', '1', '1414474397820', '1', '1414474397820');
INSERT INTO `cms_organize` VALUES ('5', '创业者', '1', '0', '1', '', '1', '1414474404000', '1', '1414474404000');
INSERT INTO `cms_organize` VALUES ('6', '研发组', '1', '0', '1', '', '1', '1414474411804', '1', '1414474411804');

-- ----------------------------
-- Table structure for `cms_partner`
-- ----------------------------
DROP TABLE IF EXISTS `cms_partner`;
CREATE TABLE `cms_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `goal` varchar(8) NOT NULL DEFAULT '',
  `url` tinytext,
  `description` tinytext,
  `logo` tinytext,
  `remark` text,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_partner
-- ----------------------------
INSERT INTO `cms_partner` VALUES ('1', '灰鸦社区', '3', '_blank', 'http://www.iisquare.com/', '', '', '', '1', '1', '1', '1414487118605', '1', '1415330517692');

-- ----------------------------
-- Table structure for `cms_partner_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_partner_type`;
CREATE TABLE `cms_partner_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_partner_type
-- ----------------------------
INSERT INTO `cms_partner_type` VALUES ('1', '默认分类', '0', '0', '1', '1', '1414486602560', '1', '1415329264823');
INSERT INTO `cms_partner_type` VALUES ('2', '友情链接', '1', '0', '1', '1', '1414486632933', '1', '1415329280384');
INSERT INTO `cms_partner_type` VALUES ('3', '合作伙伴', '1', '0', '1', '1', '1414486646337', '1', '1415329289720');

-- ----------------------------
-- Table structure for `cms_resource`
-- ----------------------------
DROP TABLE IF EXISTS `cms_resource`;
CREATE TABLE `cms_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `refer_id` int(11) NOT NULL DEFAULT '0',
  `menu_list_enable` tinyint(4) NOT NULL DEFAULT '0',
  `menu_pick_enable` tinyint(4) NOT NULL DEFAULT '0',
  `module` varchar(64) NOT NULL DEFAULT '',
  `controller` varchar(64) NOT NULL DEFAULT '',
  `action` varchar(64) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_resource
-- ----------------------------
INSERT INTO `cms_resource` VALUES ('1', '基础模块', '0', '0', '1', '0', 'base', '', '', '0', '0', '1', '1414399426157', '1', '1414399426157');
INSERT INTO `cms_resource` VALUES ('2', '数据库管理', '1', '0', '1', '0', 'base', 'database', '', '0', '0', '1', '1414400830252', '1', '1414400830252');
INSERT INTO `cms_resource` VALUES ('3', '操作面板', '2', '0', '1', '1', 'base', 'database', 'layout', '0', '0', '1', '1414400894225', '1', '1414400894225');
INSERT INTO `cms_resource` VALUES ('4', '信息列表', '2', '0', '0', '0', 'base', 'database', 'list', '0', '0', '1', '1414400944169', '1', '1414400944169');
INSERT INTO `cms_resource` VALUES ('5', '数据备份', '2', '0', '0', '0', 'base', 'database', 'backup', '0', '0', '1', '1414400966217', '1', '1414400966217');
INSERT INTO `cms_resource` VALUES ('6', '数据还原', '2', '0', '0', '0', 'base', 'database', 'revert', '0', '0', '1', '1414400983956', '1', '1414400983956');
INSERT INTO `cms_resource` VALUES ('7', '删除备份', '2', '0', '0', '0', 'base', 'database', 'delete', '0', '0', '1', '1414401003781', '1', '1414401003781');
INSERT INTO `cms_resource` VALUES ('8', '职务管理', '1', '0', '1', '0', 'base', 'duty', '', '0', '0', '1', '1414401485227', '1', '1414401485227');
INSERT INTO `cms_resource` VALUES ('9', '信息面板', '8', '0', '1', '1', 'base', 'duty', 'layout', '0', '0', '1', '1414401511673', '1', '1414401633197');
INSERT INTO `cms_resource` VALUES ('10', '信息列表', '8', '0', '0', '0', 'base', 'duty', 'list', '0', '0', '1', '1414401527117', '1', '1414401642141');
INSERT INTO `cms_resource` VALUES ('11', '信息查看', '8', '0', '0', '0', 'base', 'duty', 'show', '0', '0', '1', '1414401544398', '1', '1414401652724');
INSERT INTO `cms_resource` VALUES ('12', '信息编辑', '8', '0', '0', '0', 'base', 'duty', 'edit', '0', '0', '1', '1414401558454', '1', '1414401619629');
INSERT INTO `cms_resource` VALUES ('13', '信息保存', '8', '12', '0', '0', 'base', 'duty', 'save', '0', '0', '1', '1414401721807', '1', '1414401721807');
INSERT INTO `cms_resource` VALUES ('14', '信息删除', '8', '0', '0', '0', 'base', 'duty', 'delete', '0', '0', '1', '1414401780062', '1', '1414401780062');
INSERT INTO `cms_resource` VALUES ('15', '图标管理', '1', '0', '1', '0', 'base', 'icon', '', '0', '0', '1', '1414401979277', '1', '1414401979277');
INSERT INTO `cms_resource` VALUES ('16', '信息面板', '15', '0', '1', '1', 'base', 'icon', 'layout', '0', '0', '1', '1414402032626', '1', '1414402032626');
INSERT INTO `cms_resource` VALUES ('17', '信息列表', '15', '0', '0', '0', 'base', 'icon', 'list', '0', '0', '1', '1414402095471', '1', '1414402095471');
INSERT INTO `cms_resource` VALUES ('18', '信息查看', '15', '0', '0', '0', 'base', 'icon', 'show', '0', '0', '1', '1414402108019', '1', '1414402108019');
INSERT INTO `cms_resource` VALUES ('19', '信息编辑', '15', '0', '0', '0', 'base', 'icon', 'edit', '0', '0', '1', '1414402124092', '1', '1414402124092');
INSERT INTO `cms_resource` VALUES ('20', '信息保存', '15', '19', '0', '0', 'base', 'icon', 'save', '0', '0', '1', '1414402130741', '1', '1414402197958');
INSERT INTO `cms_resource` VALUES ('21', '信息删除', '15', '0', '0', '0', 'base', 'icon', 'delete', '0', '0', '1', '1414402142717', '1', '1414402142717');
INSERT INTO `cms_resource` VALUES ('22', '生成样式', '15', '0', '0', '0', 'base', 'icon', 'renderCss', '0', '0', '1', '1414402164263', '1', '1414551163891');
INSERT INTO `cms_resource` VALUES ('23', '日志管理', '1', '0', '1', '0', 'base', 'log', '', '0', '0', '1', '1414402272986', '1', '1414402272986');
INSERT INTO `cms_resource` VALUES ('24', '信息面板', '23', '0', '1', '1', 'base', 'log', 'layout', '0', '0', '1', '1414402296886', '1', '1414402296886');
INSERT INTO `cms_resource` VALUES ('25', '信息列表', '23', '0', '0', '0', 'base', 'log', 'list', '0', '0', '1', '1414402322140', '1', '1414402322140');
INSERT INTO `cms_resource` VALUES ('26', '信息查看', '23', '0', '0', '0', 'base', 'log', 'show', '0', '0', '1', '1414402336315', '1', '1414402336315');
INSERT INTO `cms_resource` VALUES ('27', '信息删除', '23', '0', '0', '0', 'base', 'log', 'delete', '0', '0', '1', '1414402343369', '1', '1414402343369');
INSERT INTO `cms_resource` VALUES ('28', '清空日志', '23', '0', '0', '0', 'base', 'log', 'truncate', '0', '0', '1', '1414402362954', '1', '1414402362954');
INSERT INTO `cms_resource` VALUES ('29', '配置编辑', '23', '0', '0', '0', 'base', 'log', 'editSetting', '0', '0', '1', '1414402405746', '1', '1414402405746');
INSERT INTO `cms_resource` VALUES ('30', '配置保存', '23', '29', '0', '0', 'base', 'log', 'saveSetting', '0', '0', '1', '1414402433522', '1', '1414402433522');
INSERT INTO `cms_resource` VALUES ('31', '用户管理', '1', '0', '1', '0', 'base', 'member', '', '0', '0', '1', '1414402491921', '1', '1414402491921');
INSERT INTO `cms_resource` VALUES ('32', '个人信息查看', '31', '0', '1', '1', 'base', 'member', 'showSelf', '0', '0', '1', '1414402546818', '1', '1414402546818');
INSERT INTO `cms_resource` VALUES ('33', '个人信息编辑', '31', '0', '0', '0', 'base', 'member', 'editSelf', '0', '0', '1', '1414402562703', '1', '1414473532137');
INSERT INTO `cms_resource` VALUES ('34', '个人信息保存', '31', '33', '0', '0', 'base', 'member', 'saveSelf', '0', '0', '1', '1414402605681', '1', '1414402605681');
INSERT INTO `cms_resource` VALUES ('35', '密码修改', '31', '0', '1', '1', 'base', 'member', 'editPassword', '0', '0', '1', '1414402625112', '1', '1414402625112');
INSERT INTO `cms_resource` VALUES ('36', '密码保存', '31', '35', '0', '0', 'base', 'member', 'savePassword', '0', '0', '1', '1414402660355', '1', '1414402660355');
INSERT INTO `cms_resource` VALUES ('37', '信息面板', '31', '0', '1', '1', 'base', 'member', 'layout', '0', '0', '1', '1414402685905', '1', '1414402685905');
INSERT INTO `cms_resource` VALUES ('38', '信息列表', '31', '0', '0', '0', 'base', 'member', 'list', '0', '0', '1', '1414402697030', '1', '1414402697030');
INSERT INTO `cms_resource` VALUES ('39', '信息查看', '31', '0', '0', '0', 'base', 'member', 'show', '0', '0', '1', '1414402706006', '1', '1414402706006');
INSERT INTO `cms_resource` VALUES ('40', '信息编辑', '31', '0', '0', '0', 'base', 'member', 'edit', '0', '0', '1', '1414402713165', '1', '1414402713165');
INSERT INTO `cms_resource` VALUES ('41', '信息保存', '31', '40', '0', '0', 'base', 'member', 'save', '0', '0', '1', '1414402744183', '1', '1414402744183');
INSERT INTO `cms_resource` VALUES ('42', '信息删除', '31', '0', '0', '0', 'base', 'member', 'delete', '0', '0', '1', '1414403375177', '1', '1414403375177');
INSERT INTO `cms_resource` VALUES ('43', '用户登录', '31', '0', '0', '0', 'base', 'member', 'login', '0', '-1', '1', '1414403427001', '1', '1414403427001');
INSERT INTO `cms_resource` VALUES ('44', '登录操作', '31', '43', '0', '0', 'base', 'member', 'logon', '0', '-1', '1', '1414403482207', '1', '1414403546406');
INSERT INTO `cms_resource` VALUES ('45', '退出登录', '31', '0', '1', '1', 'base', 'member', 'logout', '0', '-1', '1', '1414403504054', '1', '1414473548347');
INSERT INTO `cms_resource` VALUES ('46', '管理面板', '31', '0', '0', '0', 'base', 'member', 'platform', '0', '0', '1', '1414403576300', '1', '1414473555796');
INSERT INTO `cms_resource` VALUES ('47', '菜单管理', '1', '0', '1', '0', 'base', 'menu', '', '0', '0', '1', '1414403891391', '1', '1414403891391');
INSERT INTO `cms_resource` VALUES ('48', '信息面板', '47', '0', '1', '1', 'base', 'menu', 'layout', '0', '0', '1', '1414404306214', '1', '1414404306214');
INSERT INTO `cms_resource` VALUES ('49', '信息列表', '47', '0', '0', '0', 'base', 'menu', 'list', '0', '0', '1', '1414404314895', '1', '1414404314895');
INSERT INTO `cms_resource` VALUES ('50', '信息查看', '47', '0', '0', '0', 'base', 'menu', 'show', '0', '0', '1', '1414404329289', '1', '1414404329289');
INSERT INTO `cms_resource` VALUES ('51', '信息编辑', '47', '0', '0', '0', 'base', 'menu', 'edit', '0', '0', '1', '1414404336445', '1', '1414404336445');
INSERT INTO `cms_resource` VALUES ('52', '信息保存', '47', '51', '0', '0', 'base', 'menu', 'save', '0', '0', '1', '1414404365813', '1', '1414404365813');
INSERT INTO `cms_resource` VALUES ('53', '信息删除', '47', '0', '0', '0', 'base', 'menu', 'delete', '0', '0', '1', '1414404376789', '1', '1414404376789');
INSERT INTO `cms_resource` VALUES ('54', '个人菜单', '47', '0', '0', '0', 'base', 'menu', 'listSelf', '0', '0', '1', '1414404413958', '1', '1414404413958');
INSERT INTO `cms_resource` VALUES ('55', '通知公告管理', '1', '0', '1', '0', 'base', 'notice', '', '0', '0', '1', '1414404457696', '1', '1414404457696');
INSERT INTO `cms_resource` VALUES ('56', '信息面板', '55', '0', '1', '1', 'base', 'notice', 'layout', '0', '0', '1', '1414458698435', '1', '1414458698435');
INSERT INTO `cms_resource` VALUES ('57', '信息列表', '55', '0', '0', '0', 'base', 'notice', 'list', '0', '0', '1', '1414458711121', '1', '1414458711121');
INSERT INTO `cms_resource` VALUES ('58', '信息编辑', '55', '0', '0', '0', 'base', 'notice', 'edit', '0', '0', '1', '1414458719499', '1', '1414458719499');
INSERT INTO `cms_resource` VALUES ('59', '信息保存', '55', '58', '0', '0', 'base', 'notice', 'save', '0', '0', '1', '1414458764845', '1', '1414458764845');
INSERT INTO `cms_resource` VALUES ('60', '信息查看', '55', '0', '0', '0', 'base', 'notice', 'show', '0', '0', '1', '1414458774570', '1', '1414458774570');
INSERT INTO `cms_resource` VALUES ('61', '信息删除', '55', '0', '0', '0', 'base', 'notice', 'delete', '0', '0', '1', '1414458782864', '1', '1414458782864');
INSERT INTO `cms_resource` VALUES ('62', '通知公告类型管理', '1', '0', '1', '0', 'base', 'noticeType', '', '0', '0', '1', '1414458831505', '1', '1414458866683');
INSERT INTO `cms_resource` VALUES ('63', '信息面板', '62', '0', '1', '1', 'base', 'noticeType', 'layout', '0', '0', '1', '1414458956167', '1', '1414458956167');
INSERT INTO `cms_resource` VALUES ('64', '信息列表', '62', '0', '0', '0', 'base', 'noticeType', 'list', '0', '0', '1', '1414458969335', '1', '1414458969335');
INSERT INTO `cms_resource` VALUES ('65', '信息查看', '62', '0', '0', '0', 'base', 'noticeType', 'show', '0', '0', '1', '1414458977059', '1', '1414458977059');
INSERT INTO `cms_resource` VALUES ('66', '信息编辑', '62', '0', '0', '0', 'base', 'noticeType', 'edit', '0', '0', '1', '1414458985130', '1', '1414458985130');
INSERT INTO `cms_resource` VALUES ('67', '信息保存', '62', '66', '0', '0', 'base', 'noticeType', 'save', '0', '0', '1', '1414459034444', '1', '1414459034444');
INSERT INTO `cms_resource` VALUES ('68', '信息删除', '62', '0', '0', '0', 'base', 'noticeType', 'delete', '0', '0', '1', '1414459045022', '1', '1414459045022');
INSERT INTO `cms_resource` VALUES ('69', '组织机构管理', '1', '0', '1', '0', 'base', 'organize', '', '0', '0', '1', '1414459082278', '1', '1414459082278');
INSERT INTO `cms_resource` VALUES ('70', '信息面板', '69', '0', '1', '1', 'base', 'organize', 'layout', '0', '0', '1', '1414459163148', '1', '1414459163148');
INSERT INTO `cms_resource` VALUES ('71', '信息列表', '69', '0', '0', '0', 'base', 'organize', 'list', '0', '0', '1', '1414459173404', '1', '1414459173404');
INSERT INTO `cms_resource` VALUES ('72', '信息查看', '69', '0', '0', '0', 'base', 'organize', 'show', '0', '0', '1', '1414459180245', '1', '1414459180245');
INSERT INTO `cms_resource` VALUES ('73', '信息编辑', '69', '0', '0', '0', 'base', 'organize', 'edit', '0', '0', '1', '1414459197236', '1', '1414459197236');
INSERT INTO `cms_resource` VALUES ('74', '信息保存', '69', '73', '0', '0', 'base', 'organize', 'save', '0', '0', '1', '1414459205962', '1', '1414459327553');
INSERT INTO `cms_resource` VALUES ('75', '信息删除', '69', '0', '0', '0', 'base', 'organize', 'delete', '0', '0', '1', '1414459220682', '1', '1414459220682');
INSERT INTO `cms_resource` VALUES ('76', '资源管理', '1', '0', '1', '0', 'base', 'resource', '', '0', '0', '1', '1414459522076', '1', '1414459522076');
INSERT INTO `cms_resource` VALUES ('77', '信息面板', '76', '0', '1', '1', 'base', 'resource', 'layout', '0', '0', '1', '1414459567488', '1', '1414459567488');
INSERT INTO `cms_resource` VALUES ('78', '信息列表', '76', '0', '0', '0', 'base', 'resource', 'list', '0', '0', '1', '1414459579421', '1', '1414459579421');
INSERT INTO `cms_resource` VALUES ('79', '信息查看', '76', '0', '0', '0', 'base', 'resource', 'show', '0', '0', '1', '1414459586669', '1', '1414459586669');
INSERT INTO `cms_resource` VALUES ('80', '信息编辑', '76', '0', '0', '0', 'base', 'resource', 'edit', '0', '0', '1', '1414459594366', '1', '1414459594366');
INSERT INTO `cms_resource` VALUES ('81', '信息保存', '76', '80', '0', '0', 'base', 'resource', 'save', '0', '0', '1', '1414459640744', '1', '1414459640744');
INSERT INTO `cms_resource` VALUES ('82', '信息删除', '76', '0', '0', '0', 'base', 'resource', 'delete', '0', '0', '1', '1414459653125', '1', '1414459653125');
INSERT INTO `cms_resource` VALUES ('83', '角色管理', '1', '0', '1', '0', 'base', 'role', '', '0', '0', '1', '1414459694481', '1', '1414459694481');
INSERT INTO `cms_resource` VALUES ('84', '信息面板', '83', '0', '1', '1', 'base', 'role', 'layout', '0', '0', '1', '1414459717821', '1', '1414459717821');
INSERT INTO `cms_resource` VALUES ('85', '信息列表', '83', '0', '0', '0', 'base', 'role', 'list', '0', '0', '1', '1414459726982', '1', '1414459726982');
INSERT INTO `cms_resource` VALUES ('86', '信息查看', '83', '0', '0', '0', 'base', 'role', 'show', '0', '0', '1', '1414459733953', '1', '1414459733953');
INSERT INTO `cms_resource` VALUES ('87', '信息编辑', '83', '0', '0', '0', 'base', 'role', 'edit', '0', '0', '1', '1414459745612', '1', '1414459745612');
INSERT INTO `cms_resource` VALUES ('88', '信息保存', '83', '87', '0', '0', 'base', 'role', 'save', '0', '0', '1', '1414459804648', '1', '1414459804648');
INSERT INTO `cms_resource` VALUES ('89', '信息删除', '83', '0', '0', '0', 'base', 'role', 'delete', '0', '0', '1', '1414459817120', '1', '1414459817120');
INSERT INTO `cms_resource` VALUES ('90', '权限菜单编辑', '83', '0', '0', '0', 'base', 'role', 'editPower', '0', '0', '1', '1414459831534', '1', '1414459831534');
INSERT INTO `cms_resource` VALUES ('91', '权限菜单保存', '83', '90', '0', '0', 'base', 'role', 'savePower', '0', '0', '1', '1414459850875', '1', '1414459850875');
INSERT INTO `cms_resource` VALUES ('92', '服务器信息管理', '1', '0', '1', '0', 'base', 'server', '', '0', '0', '1', '1414459880216', '1', '1414459880216');
INSERT INTO `cms_resource` VALUES ('93', '环境状态', '92', '0', '1', '1', 'base', 'server', 'info', '0', '0', '1', '1414460037057', '1', '1414460037057');
INSERT INTO `cms_resource` VALUES ('94', '配置管理', '1', '0', '1', '0', 'base', 'setting', '', '0', '0', '1', '1414460066587', '1', '1414460066587');
INSERT INTO `cms_resource` VALUES ('95', '信息面板', '94', '0', '1', '1', 'base', 'setting', 'layout', '0', '0', '1', '1414460091787', '1', '1414460091787');
INSERT INTO `cms_resource` VALUES ('96', '信息列表', '94', '0', '0', '0', 'base', 'setting', 'list', '0', '0', '1', '1414460100457', '1', '1414460100457');
INSERT INTO `cms_resource` VALUES ('97', '信息查看', '94', '0', '0', '0', 'base', 'setting', 'show', '0', '0', '1', '1414460108513', '1', '1414460108513');
INSERT INTO `cms_resource` VALUES ('98', '信息编辑', '94', '0', '0', '0', 'base', 'setting', 'edit', '0', '0', '1', '1414460118136', '1', '1414546404335');
INSERT INTO `cms_resource` VALUES ('99', '信息保存', '94', '98', '0', '0', 'base', 'setting', 'save', '0', '0', '1', '1414460130225', '1', '1414460130225');
INSERT INTO `cms_resource` VALUES ('100', '信息删除', '94', '0', '0', '0', 'base', 'setting', 'delete', '0', '0', '1', '1414460141657', '1', '1414460141657');
INSERT INTO `cms_resource` VALUES ('101', '上传文件管理', '1', '0', '1', '0', 'base', 'upload', '', '0', '0', '1', '1414460183474', '1', '1414460183474');
INSERT INTO `cms_resource` VALUES ('102', '信息面板', '101', '0', '1', '1', 'base', 'upload', 'layout', '0', '0', '1', '1414460205524', '1', '1414460205524');
INSERT INTO `cms_resource` VALUES ('103', '信息列表', '101', '0', '0', '0', 'base', 'upload', 'list', '0', '0', '1', '1414460215464', '1', '1414460215464');
INSERT INTO `cms_resource` VALUES ('104', '信息删除', '101', '0', '0', '0', 'base', 'upload', 'delete', '0', '0', '1', '1414460231081', '1', '1414460231081');
INSERT INTO `cms_resource` VALUES ('105', '允许上传', '101', '0', '0', '0', 'base', 'upload', 'uploadJson', '0', '0', '1', '1414460281712', '1', '1414460281712');
INSERT INTO `cms_resource` VALUES ('106', '允许浏览', '101', '0', '0', '0', 'base', 'upload', 'fileManagerJson', '0', '0', '1', '1414460315927', '1', '1414460315927');
INSERT INTO `cms_resource` VALUES ('107', '编辑器示例', '101', '0', '1', '1', 'base', 'upload', 'editor', '0', '0', '1', '1414460341793', '1', '1414460341793');
INSERT INTO `cms_resource` VALUES ('108', '管理首页', '1', '0', '0', '0', 'base', 'index', '', '0', '0', '1', '1414482115257', '1', '1414482192308');
INSERT INTO `cms_resource` VALUES ('109', '任务面板', '108', '0', '0', '0', 'base', 'index', 'task', '0', '0', '1', '1414482176022', '1', '1414482176022');
INSERT INTO `cms_resource` VALUES ('110', '登陆日志', '23', '46', '0', '0', 'base', 'log', 'listLogon', '0', '0', '1', '1414489656476', '1', '1414489656476');
INSERT INTO `cms_resource` VALUES ('111', '首页列表', '55', '46', '0', '0', 'base', 'notice', 'listIndex', '0', '0', '1', '1414489700812', '1', '1414489700812');
INSERT INTO `cms_resource` VALUES ('112', '信息阅读', '55', '46', '0', '0', 'base', 'notice', 'read', '0', '0', '1', '1414489714899', '1', '1414489714899');
INSERT INTO `cms_resource` VALUES ('113', '访客模式', '31', '0', '1', '1', 'base', 'member', 'guest', '0', '-1', '1', '1414546177437', '1', '1414546177437');

-- ----------------------------
-- Table structure for `cms_role`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role`;
CREATE TABLE `cms_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` text,
  `create_id` int(11) NOT NULL DEFAULT '0',
  `create_time` bigint(20) NOT NULL DEFAULT '0',
  `update_id` int(11) NOT NULL DEFAULT '0',
  `update_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role
-- ----------------------------
INSERT INTO `cms_role` VALUES ('1', '系统管理员', '0', '0', '1', '', '1', '1414475359109', '1', '1414475359109');
INSERT INTO `cms_role` VALUES ('2', '超级管理员', '1', '0', '1', '', '1', '1414475820669', '1', '1414475820669');
INSERT INTO `cms_role` VALUES ('3', '普通管理员', '1', '0', '1', '', '1', '1414475827975', '1', '1414475827975');
INSERT INTO `cms_role` VALUES ('4', '普通用户组', '0', '0', '1', '', '1', '1414475854203', '1', '1414475854203');
INSERT INTO `cms_role` VALUES ('5', '游客', '4', '0', '1', '', '1', '1414475889347', '1', '1414475889347');

-- ----------------------------
-- Table structure for `cms_role_column_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_column_rel`;
CREATE TABLE `cms_role_column_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `column_id` int(11) NOT NULL DEFAULT '0',
  `list_enable` tinyint(4) NOT NULL DEFAULT '0',
  `publish_enable` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role_column_rel
-- ----------------------------
INSERT INTO `cms_role_column_rel` VALUES ('1', '2', '1', '0', '0');
INSERT INTO `cms_role_column_rel` VALUES ('2', '2', '4', '1', '0');
INSERT INTO `cms_role_column_rel` VALUES ('3', '2', '2', '0', '1');
INSERT INTO `cms_role_column_rel` VALUES ('4', '2', '3', '0', '1');

-- ----------------------------
-- Table structure for `cms_role_menu_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_menu_rel`;
CREATE TABLE `cms_role_menu_rel` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role_menu_rel
-- ----------------------------
INSERT INTO `cms_role_menu_rel` VALUES ('2', '2');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '3');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '4');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '5');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '6');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '7');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '8');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '9');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '10');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '11');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '12');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '13');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '14');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '15');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '16');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '17');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '18');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '19');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '20');
INSERT INTO `cms_role_menu_rel` VALUES ('2', '21');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '2');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '3');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '4');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '5');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '6');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '7');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '8');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '9');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '10');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '11');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '12');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '13');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '14');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '15');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '16');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '17');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '18');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '19');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '20');
INSERT INTO `cms_role_menu_rel` VALUES ('5', '21');

-- ----------------------------
-- Table structure for `cms_role_resource_rel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_resource_rel`;
CREATE TABLE `cms_role_resource_rel` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `resource_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_role_resource_rel
-- ----------------------------
INSERT INTO `cms_role_resource_rel` VALUES ('2', '1');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '2');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '3');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '4');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '5');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '6');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '7');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '8');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '9');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '10');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '11');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '12');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '14');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '15');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '16');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '17');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '18');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '19');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '21');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '22');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '23');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '24');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '25');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '26');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '27');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '28');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '29');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '31');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '32');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '33');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '35');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '37');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '38');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '39');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '40');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '42');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '43');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '45');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '46');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '47');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '48');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '49');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '50');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '51');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '53');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '54');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '55');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '56');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '57');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '58');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '60');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '61');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '62');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '63');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '64');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '65');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '66');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '68');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '69');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '70');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '71');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '72');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '73');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '75');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '76');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '77');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '78');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '79');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '80');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '82');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '83');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '84');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '85');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '86');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '87');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '89');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '90');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '92');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '93');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '94');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '95');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '96');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '97');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '98');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '100');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '101');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '102');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '103');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '104');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '105');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '106');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '107');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '108');
INSERT INTO `cms_role_resource_rel` VALUES ('2', '109');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '1');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '2');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '3');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '4');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '8');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '9');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '10');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '11');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '15');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '16');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '17');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '18');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '23');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '24');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '25');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '26');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '31');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '32');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '35');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '37');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '38');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '39');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '43');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '45');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '46');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '47');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '48');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '49');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '50');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '54');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '55');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '56');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '57');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '60');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '62');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '63');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '64');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '65');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '69');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '70');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '71');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '72');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '76');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '77');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '78');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '79');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '83');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '84');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '85');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '86');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '92');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '93');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '94');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '95');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '96');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '97');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '101');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '102');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '103');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '106');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '107');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '108');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '109');
INSERT INTO `cms_role_resource_rel` VALUES ('5', '113');

-- ----------------------------
-- Table structure for `cms_setting`
-- ----------------------------
DROP TABLE IF EXISTS `cms_setting`;
CREATE TABLE `cms_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `content` tinytext,
  `remark` tinytext,
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_ip` varchar(64) NOT NULL DEFAULT '',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_setting
-- ----------------------------
INSERT INTO `cms_setting` VALUES ('1', 'webName', 'system', '内容管理系统', '系统名称', '1', '127.0.0.1', '1414641138607');
INSERT INTO `cms_setting` VALUES ('2', 'pageSize', 'system', '15', '分页大小', '1', '127.0.0.1', '1413018859640');
INSERT INTO `cms_setting` VALUES ('3', 'guestSerial', 'system', 'guest', '访客模式账号', '1', '127.0.0.1', '1414549233193');
INSERT INTO `cms_setting` VALUES ('4', 'title', 'web', 'Jees-CMS演示站', '网站标题', '1', '127.0.0.1', '1416212352748');
INSERT INTO `cms_setting` VALUES ('5', 'keywords', 'web', 'java,j2ee,cms,开源,免费,jees', '网站关键词', '1', '127.0.0.1', '1416212342872');
INSERT INTO `cms_setting` VALUES ('6', 'description', 'web', 'Jees-CMS演示站', '网站描述', '1', '127.0.0.1', '1416212334431');
INSERT INTO `cms_setting` VALUES ('7', 'loginEnable', 'web', '1', '是否开启登陆', '1', '127.0.0.1', '1416212324752');
INSERT INTO `cms_setting` VALUES ('8', 'registerEnable', 'web', '1', '是否开启注册', '1', '127.0.0.1', '1416212315472');
INSERT INTO `cms_setting` VALUES ('9', 'noteEnable', 'web', '1', '是否开启在线留言', '1', '127.0.0.1', '1416212307380');
INSERT INTO `cms_setting` VALUES ('10', 'commentEnable', 'web', '1', '是否开启文章评论（全局）', '1', '127.0.0.1', '1416212298435');
INSERT INTO `cms_setting` VALUES ('11', 'feedbackEnable', 'web', '1', '是否开启文章投诉举报', '1', '127.0.0.1', '1416212280762');
INSERT INTO `cms_setting` VALUES ('12', 'partnerEnable', 'web', '1', '是否开启友情链接申请', '1', '127.0.0.1', '1416212271324');

-- ----------------------------
-- Table structure for `cms_upload`
-- ----------------------------
DROP TABLE IF EXISTS `cms_upload`;
CREATE TABLE `cms_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `uri` tinytext,
  `operate_id` int(11) NOT NULL DEFAULT '0',
  `operate_ip` varchar(64) NOT NULL DEFAULT '',
  `operate_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_upload
-- ----------------------------
INSERT INTO `cms_upload` VALUES ('1', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415259339800.jpg', '1', '127.0.0.1', '1415259339800');
INSERT INTO `cms_upload` VALUES ('2', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415259381308.jpg', '1', '127.0.0.1', '1415259381308');
INSERT INTO `cms_upload` VALUES ('3', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415259612925.jpg', '1', '127.0.0.1', '1415259612925');
INSERT INTO `cms_upload` VALUES ('4', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415259741232.jpg', '1', '127.0.0.1', '1415259741232');
INSERT INTO `cms_upload` VALUES ('5', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415260460433.jpg', '1', '127.0.0.1', '1415260460433');
INSERT INTO `cms_upload` VALUES ('6', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415260550436.jpg', '1', '127.0.0.1', '1415260550436');
INSERT INTO `cms_upload` VALUES ('7', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141106/1415263643574.jpg', '1', '127.0.0.1', '1415263643574');
INSERT INTO `cms_upload` VALUES ('8', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141106/1415263818103.jpg', '1', '127.0.0.1', '1415263818103');
INSERT INTO `cms_upload` VALUES ('9', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141107/1415323043289.jpg', '1', '127.0.0.1', '1415323043289');
INSERT INTO `cms_upload` VALUES ('10', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/icon/20141110/1415603200385.jpg', '1', '127.0.0.1', '1415603200385');
INSERT INTO `cms_upload` VALUES ('11', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141110/1415603381022.jpg', '1', '127.0.0.1', '1415603381022');
INSERT INTO `cms_upload` VALUES ('12', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141110/1415603381170.jpg', '1', '127.0.0.1', '1415603381170');
INSERT INTO `cms_upload` VALUES ('13', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416024512581.jpg', '1', '127.0.0.1', '1416024512581');
INSERT INTO `cms_upload` VALUES ('14', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416030892024.jpg', '1', '127.0.0.1', '1416030892024');
INSERT INTO `cms_upload` VALUES ('15', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416034266294.jpg', '1', '127.0.0.1', '1416034266294');
INSERT INTO `cms_upload` VALUES ('16', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141115/1416034272186.jpg', '1', '127.0.0.1', '1416034272186');
INSERT INTO `cms_upload` VALUES ('17', '314e251f95cad1c8771b2ece7d3e6709c83d51b3.jpg', 'files/attached/image/20141115/1416034293316.jpg', '1', '127.0.0.1', '1416034293316');
INSERT INTO `cms_upload` VALUES ('18', 'd1a20cf431adcbeff66cbaf1aeaf2edda2cc9fe9.jpg', 'files/attached/image/20141115/1416034298605.jpg', '1', '127.0.0.1', '1416034298605');
