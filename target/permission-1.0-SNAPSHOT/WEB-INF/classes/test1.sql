/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : test1

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 08/02/2018 14:34:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl`;
CREATE TABLE `sys_acl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `acl_module_id` int(11) NOT NULL DEFAULT 0 COMMENT '权限所在的权限模块',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求的url，可以填正则表达式',
  `type` int(11) NOT NULL DEFAULT 3 COMMENT '类型，1：菜单，2：按钮，3：其他',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态，1：正常，0：冻结',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT '权限在当前的排序，由小到大',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_Ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后一次操作者的ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_acl
-- ----------------------------
INSERT INTO `sys_acl` VALUES (1, '20180204150109_52', '进入产品管理界面', 2, '/sys/product/product.page', 1, 1, 1, '', 'tom', '2018-02-04 15:01:09', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (2, '20180204150323_79', '查询产品列表', 2, '/sys/product/page.json', 1, 1, 2, '', 'tom', '2018-02-04 15:03:24', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (3, '20180204150406_58', '产品上架', 2, '/sys/product/online.json', 2, 1, 3, '', 'tom', '2018-02-04 15:05:08', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (4, '20180204150457_44', '产品下架', 2, '/sys/product/offline.json', 2, 1, 4, '', 'tom', '2018-02-04 15:09:31', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (5, '20180204193119_60', '进入订单页', 5, '/sys/order/order.page', 1, 1, 1, '', 'tom', '2018-02-04 19:31:19', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (6, '20180204193238_13', '查询订单列表', 5, '/sys/order/list.json', 1, 1, 2, '', 'tom', '2018-02-04 19:32:39', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (7, '20180204193644_45', '进入权限管理页', 8, '/sys/aclModule/acl.page', 1, 1, 1, '', 'tom', '2018-02-04 19:36:44', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (8, '20180204193730_6', '进入角色管理页', 9, '/sys/role/role.page', 1, 1, 2, '', 'tom', '2018-02-04 19:37:30', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (9, '20180204193810_76', '进入用户管理页', 10, '/sys/dept/dept.page', 1, 1, 1, '', 'tom', '2018-02-04 19:38:10', '127.0.0.1');
INSERT INTO `sys_acl` VALUES (10, '20180206110158_29', '进入权限更新记录页面', 13, '/sys/log/log.page', 2, 0, 1, '', 'tom', '2018-02-06 11:54:06', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_acl_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_acl_module`;
CREATE TABLE `sys_acl_module`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限模块id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限模块名称',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '上级权限模块id',
  `level` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限模块层级',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT '权限模块在当前层级下的顺序，由小到大',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态，1：正常，0：冻结',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后一次更新操作者的ip地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_acl_module
-- ----------------------------
INSERT INTO `sys_acl_module` VALUES (1, 'zanding', 0, '1', 0, 1, '', '', '2018-02-01 20:54:58', '');
INSERT INTO `sys_acl_module` VALUES (2, '产品管理', 0, '0', 1, 1, '', 'tom', '2018-02-04 14:58:13', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (3, '售前管理', 2, '0.2', 1, 1, '', 'tom', '2018-02-04 14:58:42', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (4, '售后管理', 2, '0.2', 2, 1, '', 'tom', '2018-02-04 14:59:06', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (5, '订单管理', 0, '0', 3, 1, '', 'tom', '2018-02-04 14:59:44', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (6, '公告管理', 0, '0', 2, 1, '', 'tom', '2018-02-04 14:59:49', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (7, '权限分配', 0, '0', 4, 1, '', 'tom', '2018-02-04 19:33:39', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (8, '权限管理', 7, '0.7', 1, 1, '', 'tom', '2018-02-04 19:35:06', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (9, '角色管理', 7, '0.7', 2, 1, '', 'tom', '2018-02-04 19:35:46', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (10, '用户管理', 7, '0.7', 3, 1, '', 'tom', '2018-02-04 19:35:38', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (12, '运维管理', 0, '0', 5, 1, '', 'tom', '2018-02-06 10:59:58', '127.0.0.1');
INSERT INTO `sys_acl_module` VALUES (13, '权限更新记录管理', 7, '0.7', 4, 1, '', 'tom', '2018-02-06 11:01:10', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '部门名',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '上级部门id',
  `level` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '层级',
  `seq` int(11) NOT NULL DEFAULT 0 COMMENT '部门在当前层级下的顺序，由小到大',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作者',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后一次更新操作者的ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '技术部', 0, '0', 1, '技术部', 'system', '2018-02-02 20:16:54', '192.168.0.1');
INSERT INTO `sys_dept` VALUES (2, '后端开发', 1, '0.1', 1, '后端', 'system-update', '2018-02-02 20:26:22', '192.168.0.2');
INSERT INTO `sys_dept` VALUES (3, '前端开发', 1, '0.1', 2, '', 'system', '2018-02-02 20:20:30', '192.168.0.1');
INSERT INTO `sys_dept` VALUES (4, '产品部', 0, '0', 1, '2', 'tom', '2018-02-04 14:49:25', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (5, 'UI设计', 1, '0.1', 3, '', 'tom', '2018-02-04 21:42:24', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (8, '后勤部', 0, '0', 3, '哈哈哈', 'tom', '2018-02-06 10:58:48', '127.0.0.1');
INSERT INTO `sys_dept` VALUES (9, '客服部', 0, '0', 4, '', 'tom', '2018-02-06 11:54:57', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '权限更新的类型，1：部门，2：用户，3：权限模块，4：权限，5：角色，6：角色用户关系，7：角色权限关系',
  `target_id` int(11) NOT NULL COMMENT '基于type后指定的对象id，比如用户、权限、角色等表的主键',
  `old_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '旧值',
  `new_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新值',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '当前是否复原过，0：没有，1：复原过',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 1, 8, '', '{\"id\":8,\"name\":\"后勤部\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"operator\":\"tom\",\"operateTime\":1517885920667,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 10:58:41', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (2, 1, 8, '{\"id\":8,\"name\":\"后勤部\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"operator\":\"tom\",\"operateTime\":1517885921000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":8,\"name\":\"后勤部\",\"parentId\":0,\"level\":\"0\",\"seq\":3,\"remark\":\"哈哈哈\",\"operator\":\"tom\",\"operateTime\":1517885928184,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 10:58:48', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (3, 3, 12, '', '{\"id\":12,\"name\":\"运维管理\",\"parentId\":0,\"level\":\"0\",\"seq\":5,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517885998141,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 10:59:58', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (4, 3, 13, '', '{\"id\":13,\"name\":\"权限更新记录管理\",\"parentId\":7,\"level\":\"0.7\",\"seq\":4,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517886069661,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:01:10', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (5, 4, 10, '', '{\"id\":10,\"code\":\"20180206110158_29\",\"name\":\"进入权限更新记录页面\",\"aclModuleId\":13,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"tom\",\"operateTime\":1517886118326,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:01:58', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (6, 1, 9, '', '{\"id\":9,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"tom\",\"operateTime\":1517889073649,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:51:14', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (7, 5, 4, '{\"id\":4,\"name\":\"权限管理员\",\"type\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517744332000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":4,\"name\":\"权限管理员\",\"type\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517889124284,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:52:04', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (8, 4, 10, '{\"id\":10,\"code\":\"20180206110158_29\",\"name\":\"进入权限更新记录页面\",\"aclModuleId\":13,\"url\":\"/sys/log/log.page\",\"type\":1,\"status\":1,\"seq\":1,\"operator\":\"tom\",\"operateTime\":1517886118000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":10,\"name\":\"进入权限更新记录页面\",\"aclModuleId\":13,\"url\":\"/sys/log/log.page\",\"type\":2,\"status\":1,\"seq\":1,\"operator\":\"tom\",\"operateTime\":1517889204745,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:53:25', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (9, 4, 10, '{\"id\":10,\"code\":\"20180206110158_29\",\"name\":\"进入权限更新记录页面\",\"aclModuleId\":13,\"url\":\"/sys/log/log.page\",\"type\":2,\"status\":1,\"seq\":1,\"operator\":\"tom\",\"operateTime\":1517889205000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":10,\"name\":\"进入权限更新记录页面\",\"aclModuleId\":13,\"url\":\"/sys/log/log.page\",\"type\":2,\"status\":0,\"seq\":1,\"operator\":\"tom\",\"operateTime\":1517889246370,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:54:07', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (10, 1, 9, '{\"id\":9,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"tom\",\"operateTime\":1517889074000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":9,\"name\":\"客服部吧\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"tom\",\"operateTime\":1517889289603,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:54:50', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (11, 1, 9, '{\"id\":9,\"name\":\"客服部吧\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"tom\",\"operateTime\":1517889290000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":9,\"name\":\"客服部\",\"parentId\":0,\"level\":\"0\",\"seq\":4,\"operator\":\"tom\",\"operateTime\":1517889296763,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:54:57', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (12, 2, 7, '', '{\"id\":7,\"username\":\"客服A\",\"telephone\":\"159777755555\",\"mail\":\"13679253589@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517889331103,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:55:34', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (13, 2, 7, '{\"id\":7,\"username\":\"客服A\",\"telephone\":\"159777755555\",\"mail\":\"13679253589@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517889331000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":7,\"username\":\"客服B\",\"telephone\":\"159777755555\",\"mail\":\"13679253589@qq.com\",\"deptId\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517889386694,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:56:27', '127.0.0.1', 1);
INSERT INTO `sys_log` VALUES (14, 2, 7, '{\"id\":7,\"username\":\"客服B\",\"telephone\":\"159777755555\",\"mail\":\"13679253589@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517889387000,\"operateIp\":\"127.0.0.1\"}', '{\"id\":7,\"username\":\"客服A\",\"telephone\":\"159777755555\",\"mail\":\"13679253589@qq.com\",\"password\":\"25D55AD283AA400AF464C76D713C07AD\",\"deptId\":1,\"status\":1,\"operator\":\"tom\",\"operateTime\":1517889394848,\"operateIp\":\"127.0.0.1\"}', 'tom', '2018-02-06 11:56:35', '127.0.0.1', 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '角色类型，0：管理员角色，1：其他，2，备用',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态，1：可用，0：冻结',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作者',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后一次操作者的ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '产品管理员', 1, 1, '管理产品哈哈哈', 'tom', '2018-02-04 15:55:04', '127.0.0.1');
INSERT INTO `sys_role` VALUES (2, '订单管理员', 1, 1, '管理订单', 'tom', '2018-02-04 15:45:27', '127.0.0.1');
INSERT INTO `sys_role` VALUES (3, '公告管理员', 1, 1, '管理公告', 'tom', '2018-02-04 15:45:38', '127.0.0.1');
INSERT INTO `sys_role` VALUES (4, '权限管理员', 1, 1, '', 'tom', '2018-02-06 11:52:04', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_role_acl
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_acl`;
CREATE TABLE `sys_role_acl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `acl_id` int(11) NOT NULL,
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_acl
-- ----------------------------
INSERT INTO `sys_role_acl` VALUES (1, 4, 7, 'tom', '2018-02-04 20:10:10', '127.0.0.1');
INSERT INTO `sys_role_acl` VALUES (2, 4, 8, 'tom', '2018-02-04 20:10:10', '127.0.0.1');
INSERT INTO `sys_role_acl` VALUES (3, 4, 9, 'tom', '2018-02-04 20:10:10', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 4, 1, 'jay', '2018-02-05 23:10:01', '192.168.0.1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `telephone` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `mail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `password` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加密后的密码',
  `dept_id` int(11) NOT NULL COMMENT '用户所在部门id',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态，1：正常，0：冻结状态，2：删除',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作者\r\n',
  `operate_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次操作时间',
  `operate_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后一次操作者ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'tom', '13688524812', '4569@qq.com', '25D55AD283AA400AF464C76D713C07AD', 1, 1, 'cat', 'system', '2018-02-03 16:20:11', '192.168.0.1');
INSERT INTO `sys_user` VALUES (2, 'jim', '133655511', 'jim@163.com', '25D55AD283AA400AF464C76D713C07AD', 2, 1, '后端', 'system', '2018-02-03 16:19:47', '192.168.0.1');
INSERT INTO `sys_user` VALUES (3, 'linda', '12345678', 'linda@qq.com', '25D55AD283AA400AF464C76D713C07AD', 1, 1, '维护', 'system', '2018-02-03 16:21:18', '192.168.0.1');
INSERT INTO `sys_user` VALUES (4, 'jack', '1589562358', '2770284831@qq.com', '25D55AD283AA400AF464C76D713C07AD', 1, 1, 'aaa', 'tom', '2018-02-04 09:40:40', '127.0.0.1');
INSERT INTO `sys_user` VALUES (5, 'Jimmy', '13569854575', 'jimmy@qq.com', '25D55AD283AA400AF464C76D713C07AD', 5, 1, '', 'tom', '2018-02-04 21:42:51', '127.0.0.1');
INSERT INTO `sys_user` VALUES (6, 'haha', '15895632812', '919433524@qq.com', '25D55AD283AA400AF464C76D713C07AD', 5, 1, '', 'tom', '2018-02-04 21:44:49', '127.0.0.1');
INSERT INTO `sys_user` VALUES (7, '客服A', '159777755555', '13679253589@qq.com', '25D55AD283AA400AF464C76D713C07AD', 1, 1, '', 'tom', '2018-02-06 11:56:35', '127.0.0.1');

SET FOREIGN_KEY_CHECKS = 1;
