/*
 Navicat Premium Data Transfer

 Source Server         : 个人数据库
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 47.110.145.116:3306
 Source Schema         : thinkcmf5

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 19/07/2019 13:51:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `cmf_admin_menu` VALUES (1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES (2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES (3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES (4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES (5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES (6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES (7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES (8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES (9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES (11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES (13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES (14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES (15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES (16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES (17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES (18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES (19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES (20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES (21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES (22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES (23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES (24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES (25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES (27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES (29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES (30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES (31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES (33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES (35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES (43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES (44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES (45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES (46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES (47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES (48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES (49, 110, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES (50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES (51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES (52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES (53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES (54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES (55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES (56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES (57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES (58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES (59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES (60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES (61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES (62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES (63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES (64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES (65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES (67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES (68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES (69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES (70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES (71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES (72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES (73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES (74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES (75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES (76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES (77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES (78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES (79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES (85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES (86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES (87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES (88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES (90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES (91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES (92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES (93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES (94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES (95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES (96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES (97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES (98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES (99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES (100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES (103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES (104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES (105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES (107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES (109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计');
INSERT INTO `cmf_admin_menu` VALUES (110, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES (111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES (112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES (113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES (114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES (115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES (117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES (118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES (119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES (120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES (121, 0, 0, 1, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES (122, 121, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES (123, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES (124, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES (125, 122, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES (126, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES (127, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES (128, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES (129, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES (130, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES (131, 122, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES (132, 121, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES (133, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES (134, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES (135, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES (136, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES (137, 132, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES (138, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES (139, 132, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES (140, 121, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES (141, 140, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES (142, 140, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES (143, 140, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES (144, 140, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES (145, 140, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES (146, 121, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES (147, 146, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES (148, 146, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES (149, 146, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES (150, 146, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES (151, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES (152, 151, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES (153, 110, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES (154, 153, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES (155, 154, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES (156, 154, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES (157, 153, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES (158, 157, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES (159, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES (160, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES (161, 159, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES (162, 159, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
COMMIT;

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
BEGIN;
INSERT INTO `cmf_asset` VALUES (1, 1, 27778, 1545909205, 1, 0, '4e7a91a4d27d2f857595b28de1d8369ff8ab30e87e65a1768da5cb8e4d9b6f35', 'menu.saveimg.savepath20181227191140.jpg', 'portal/20181227/f238c6a103ed982a40c19e192a24a690.jpg', '4e7a91a4d27d2f857595b28de1d8369f', 'e77ed4580cbe8b9fb9dd4ec7e49c15fc321d3488', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (2, 1, 12720, 1545992562, 1, 0, '69778d717216487e6321df2ec45a0692aad47f16054b51ad2cca5de589b0129a', 'ac6eddc451da81cb037c289d5366d016082431c3.jpg', 'portal/20181228/023ab0646e896ea63bf2fd9152ed7b34.jpg', '69778d717216487e6321df2ec45a0692', '7d72251b470c0dd4e9f0df4d7ba9ecc34e63e8be', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (3, 1, 12409, 1552396342, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190312/02f288214b4e3e6908aac6d46ef898da.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (4, 1, 12409, 1552396417, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190312/17e2d25bb6f2cc3c1369e52c33773430.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (5, 1, 12042, 1552396425, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190312/af9a5b0197f142dcb6e20c0dd04f3da8.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (6, 1, 16323, 1552396596, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/ddee76d27cfc12061a6130fbfc541ba2.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (7, 1, 12042, 1552396607, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190312/69e7d281f5c4955e4d36d72eca2e2771.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (8, 1, 16323, 1552397286, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/06ac9ae25cf9c0cf62415d635d1063b3.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (9, 1, 16323, 1552397317, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/97c2fb2e76c4ab7229cb392a2a97a6c5.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (10, 1, 16323, 1552397332, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/2e3bd12b7dbf2461696ec227d56b47e1.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (11, 1, 16323, 1552397401, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/8e1adf157523bdbcbacf4589b9d83e5e.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (12, 1, 16323, 1552397630, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/636019723c7f26ea446ab4372f5760f2.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (13, 1, 16323, 1552397690, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/4bcdde21dc2baa17044a6707a030b245.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (14, 1, 16323, 1552397692, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/18cad15c635e72d9c2b06e64fc7d3c4a.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (15, 1, 16323, 1552397732, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/17c6c41c98b8d3583303fd0865dd4799.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (16, 1, 16323, 1552397838, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/ce1224fa835397522db60de22b26b72e.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (17, 1, 16323, 1552397845, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/5c5118a0ce3e6eb6ca08e8afba237c12.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (18, 1, 16323, 1552398332, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/fdaef20b82cd0402e9a64392f237a56d.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (19, 1, 16323, 1552398340, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190312/796734859fe8f74dd6e2e8cc20189719.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (20, 1, 12042, 1552398379, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190312/05defccab58ee48197d7419c6dfb7a5f.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (21, 1, 12536, 1552398866, 1, 0, '93d58aec737c60065d2cc3769387c000f0a8444a89a0ecd8799c9dce9dab0209', '428_428_1.jpg', 'portal/20190312/43addc2de52a0503392401e43a08870a.jpg', '93d58aec737c60065d2cc3769387c000', '830d701836a9d5697f7e0e0227671a6dcb9df913', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (22, 1, 12536, 1552398875, 1, 0, '93d58aec737c60065d2cc3769387c000f0a8444a89a0ecd8799c9dce9dab0209', '428_428_1.jpg', 'portal/20190312/b1947ac5b30c957cde295bf15c7e6c66.jpg', '93d58aec737c60065d2cc3769387c000', '830d701836a9d5697f7e0e0227671a6dcb9df913', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (23, 1, 12536, 1552399728, 1, 0, '93d58aec737c60065d2cc3769387c000f0a8444a89a0ecd8799c9dce9dab0209', '428_428_1.jpg', 'portal/20190312/0ce5087691d825990ee485eefd59da6a.jpg', '93d58aec737c60065d2cc3769387c000', '830d701836a9d5697f7e0e0227671a6dcb9df913', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (24, 1, 67030, 1552400032, 1, 0, 'e1659fca0311d426e21edb923f30e8315b50df2fdc226113beb0317e8b77ab52', '20141110091227414.jpg', 'portal/20190312/86d493a3bbad1e76cb13cbdb9b0130c1.jpg', 'e1659fca0311d426e21edb923f30e831', '9ef43c77ad0aa7128fc2015a48bd5ad98fed20d6', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (25, 1, 68372, 1552400091, 1, 0, '69223589c7fb546dc6f6fbb4aed4368c139a6057e56badd9c07d987f7a5615cb', '20141110091227754.jpg', 'portal/20190312/dab05f9e4db9139326aef9150c5918b4.jpg', '69223589c7fb546dc6f6fbb4aed4368c', 'e1760a2a72f73556152e6d37e4432f5b7073b806', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (26, 1, 69310, 1552400114, 1, 0, 'cef43b33cab3470c212962b2f5c11995dc5fcc2b1c9bc5b50b41c50135b93d96', '20141110091227254.jpg', 'portal/20190312/ed756360978b5650dc2047c3ea78e5b8.jpg', 'cef43b33cab3470c212962b2f5c11995', '445ce9f9961e1e6928bcdaef1a63220e46aed298', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (27, 1, 42992, 1552440524, 1, 0, '5c0e18ed07fd524c6f225223964ee339efe68f40172e0d7a8c974601062364b2', '20141110091227590.jpg', 'portal/20190313/0cbeaf6d12e297cb6f063616c5d51010.jpg', '5c0e18ed07fd524c6f225223964ee339', 'b5a45f3e076128fd72959edb4a1c9c96b7a54b75', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (28, 1, 67030, 1552440553, 1, 0, 'e1659fca0311d426e21edb923f30e8315b50df2fdc226113beb0317e8b77ab52', '20141110091227414.jpg', 'portal/20190313/a9647b83b743dc23bf43acd2cca81f9c.jpg', 'e1659fca0311d426e21edb923f30e831', '9ef43c77ad0aa7128fc2015a48bd5ad98fed20d6', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (29, 1, 16323, 1552440829, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'portal/20190313/ed27652f2f9e6a56cd580e839a78e522.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (30, 1, 12042, 1552440846, 1, 0, 'Fle0dBflsCuvvdFHsjPMLEcOthwh', '428_428_1410341993768.jpg', 'Fle0dBflsCuvvdFHsjPMLEcOthwh.jpg', '', '', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (31, 1, 69310, 1552440997, 1, 0, 'cef43b33cab3470c212962b2f5c11995dc5fcc2b1c9bc5b50b41c50135b93d96', '20141110091227254.jpg', 'portal/20190313/2d0ecaa24b63e1843a4847a9850bda36.jpg', 'cef43b33cab3470c212962b2f5c11995', '445ce9f9961e1e6928bcdaef1a63220e46aed298', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (32, 1, 69310, 1552441044, 1, 0, 'cef43b33cab3470c212962b2f5c11995dc5fcc2b1c9bc5b50b41c50135b93d96', '20141110091227254.jpg', 'portal/20190313/d0399c31556b42feba8cf3aac07e0286.jpg', 'cef43b33cab3470c212962b2f5c11995', '445ce9f9961e1e6928bcdaef1a63220e46aed298', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (33, 1, 42992, 1552441258, 1, 0, '5c0e18ed07fd524c6f225223964ee339efe68f40172e0d7a8c974601062364b2', '20141110091227590.jpg', 'portal/20190313/0eface54c175e480df6f186db6ac2c64.jpg', '5c0e18ed07fd524c6f225223964ee339', 'b5a45f3e076128fd72959edb4a1c9c96b7a54b75', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (34, 1, 12536, 1552441271, 1, 0, 'FoMNcBg2qdVpf34OAidnGm3LnfkT', '428_428_1.jpg', 'FoMNcBg2qdVpf34OAidnGm3LnfkT.jpg', '', '', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (35, 1, 42992, 1552443800, 1, 0, '5c0e18ed07fd524c6f225223964ee339efe68f40172e0d7a8c974601062364b2', '20141110091227590.jpg', 'portal/20190313/64f85d87c16b457917ab9874c79b3843.jpg', '5c0e18ed07fd524c6f225223964ee339', 'b5a45f3e076128fd72959edb4a1c9c96b7a54b75', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (36, 1, 12042, 1552444024, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190313/c6b9cc45f9301cb431b59dfa68082eed.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (37, 1, 12042, 1552444105, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190313/2b5faabf937b31bfca1fc436514b2cf6.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (38, 1, 12042, 1552444214, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190313/86fc13617151913064424e67432d76fb.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (39, 1, 12042, 1552444278, 1, 0, '3a6c4a197c950b4bd3895197e9157d92295d1c4d75cf0c56ddd582e4cb6f8ea8', '428_428_1410341993768.jpg', 'portal/20190313/e2cf6a3fbe7281fe7af963feb7bf4c2b.jpg', '3a6c4a197c950b4bd3895197e9157d92', '57b47417e5b02bafbdd147b233cc2c470eb61c21', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (40, 1, 42992, 1552450270, 1, 0, '5c0e18ed07fd524c6f225223964ee339efe68f40172e0d7a8c974601062364b2', '20141110091227590.jpg', 'portal/20190313/84ae6dbe1fbeef745f1266e79807392b.jpg', '5c0e18ed07fd524c6f225223964ee339', 'b5a45f3e076128fd72959edb4a1c9c96b7a54b75', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (41, 1, 42992, 1552450281, 1, 0, '5c0e18ed07fd524c6f225223964ee339efe68f40172e0d7a8c974601062364b2', '20141110091227590.jpg', 'portal/20190313/5e4ac4b9ed8a4832ad8f2a76b4e1dfb5.jpg', '5c0e18ed07fd524c6f225223964ee339', 'b5a45f3e076128fd72959edb4a1c9c96b7a54b75', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (42, 1, 16323, 1552450389, 1, 0, 'c5a73fda0bbb8c390e5f7e30fe06205c7b99e279f65c417417467772b4e9c71f', '428_428_1410341998960.jpg', 'default/20190313/5b0360cd5242d1e4f4cdd2acc62863d5.jpg', 'c5a73fda0bbb8c390e5f7e30fe06205c', 'e4d0afa580a48457f7c3ce5795db24d9c32ca431', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (43, 1, 12409, 1552451072, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190313/47f823a2bf330a4b74d4ab942fead255.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (44, 1, 12409, 1552451086, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190313/7e1f93500649aa74a47da3fcdb326188.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (45, 1, 12409, 1552639704, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/6918b15e209d94761f41d57af6fbcbf7.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (46, 1, 12409, 1552639714, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/85903299395129348f776e0f67b0992a.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (47, 1, 12409, 1552639947, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/2c709a77d4ea2352473467248287e56b.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (48, 1, 12409, 1552640015, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/b6ed4951843c055ac20b0c11163ec64c.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (49, 1, 12409, 1552640698, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/d7e6b8690e0cd07f5867fdb7b26e0314.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (50, 1, 12409, 1552640722, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/376cfeefc85d4319875c67a7ff6d0f88.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (51, 1, 12409, 1552640734, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/cc08500bdef76f683cc1e11fc18eb27a.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (52, 1, 12409, 1552640757, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/6a08a48f90d3bfe79fc93b72c15d189e.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (53, 1, 12409, 1552640778, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/0c4e9a9548345fd7b6ab589f0c1090d3.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (54, 1, 12409, 1552641058, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/5cbb78ceef1f09cbdaee71e35915b9a1.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (55, 1, 12409, 1552641081, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/0faaf3f14735f6f73a658a52a9ec0845.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (56, 1, 12409, 1552641200, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/c4536790ace1e4296da1d325243d4d0e.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (57, 1, 12409, 1552641997, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/d1426386920fbce2afbf02a5c5e29771.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (58, 1, 12409, 1552642092, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/f5d1ee26199da854eada1f14c0818354.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (59, 1, 12409, 1552642136, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/31902b8a10cbb1bc1b0a5babb4507dae.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (60, 1, 12409, 1552642158, 1, 0, 'a18c522d4d527964e438da62b07783c1a0cd3725432fb40c4ffcb5036e469cab', '428_428_1410341991975.jpg', 'portal/20190315/9a460fa3a25a165c2433a3f988197c45.jpg', 'a18c522d4d527964e438da62b07783c1', '8a1511e67910c3913ed4df884e3d93dbb71fc39a', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (61, 1, 104281, 1557568570, 1, 0, '43c69b9355d03b317d8ab8bf79f9860ed925be61794e79e35b584592a1455fcd', '微信图片_20190425182306.jpg', 'portal/20190511/b0c8b7b6d80954859488de9ab9a8eb9f.jpg', '43c69b9355d03b317d8ab8bf79f9860e', '15a48b8a1effa00a115380f13e861237dd84e403', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (62, 1, 20912, 1557568960, 1, 0, '2655adef037f0127e3a0915b68175d6267e95562db8408915d695a901cd49b8a', 'TIM截图20190511174708.png', 'portal/20190511/103e7821be21a910480613cd8a6104af.png', '2655adef037f0127e3a0915b68175d62', '98f0ef39161ce2d708307998c076f5947a87006a', 'png', NULL);
INSERT INTO `cmf_asset` VALUES (63, 1, 29146, 1557569502, 1, 0, '5e6af144571346ea8608051b066df13a72ac1f3ba4b51c4f8ff260d2c5fcbdd2', 'image.png', 'default/20190511/17afe748b7652577435456916055d8b6.png', '5e6af144571346ea8608051b066df13a', '3d4e58cd3c91764db68cb37e7bb56f836ce71c6b', 'png', NULL);
INSERT INTO `cmf_asset` VALUES (64, 1, 32181, 1557571848, 1, 0, '11046cc4d0e9759bfdcd04c3b9afd2484790d71a7f2f4e244b3704fca81c8e1f', '12686721-2dc672d619c072b8.jpg', 'portal/20190511/89d5f05c882f261529534e573be014e5.jpg', '11046cc4d0e9759bfdcd04c3b9afd248', 'db4cb1390a894a13093200c64166cd4801713a42', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (65, 1, 12149, 1557571928, 1, 0, 'c71430c5dd82c98f1223250c4e1e4546ba20d558fed49884f2b127ce3eb6b8aa', 'phpspider改后缀.txt', 'portal/20190511/81dd322cf2ecab95d3f99a0949becc42.txt', 'c71430c5dd82c98f1223250c4e1e4546', 'bdca94596889bc364842d27cc156f56c4dcbc86b', 'txt', NULL);
INSERT INTO `cmf_asset` VALUES (66, 1, 10027, 1559286132, 1, 0, '08b780a337df18ae25d3388e70ccb64c66ca41b03ff512d238c0b2985031f85c', 'u=929541592,2969632712&fm=26&gp=0.jpg', 'portal/20190531/8d4c0256c983ea39fe8536626db0b259.jpg', '08b780a337df18ae25d3388e70ccb64c', '87d685abba6e6d686da54b18df895d3efc52977b', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (67, 2, 3505, 1559292994, 1, 0, 'cb156fa262ed78dc387daa878f8e49b3d7dab6ef78ffffe1caa6f746d3d619fb', 'u=1467446338,1392024203&fm=58&bpow=363&bpoh=363.jpg', 'portal/20190531/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg', 'cb156fa262ed78dc387daa878f8e49b3', '7345410a5db89901887c0a3848f9ee1bc032648c', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (68, 2, 10027, 1559371698, 1, 0, '08b780a337df18ae25d3388e70ccb64c66ca41b03ff512d238c0b2985031f85c', 'u=929541592,2969632712&fm=26&gp=0.jpg', 'portal/20190601/c1212ad7cae96b6c63ed1e34f14f348c.jpg', '08b780a337df18ae25d3388e70ccb64c', '87d685abba6e6d686da54b18df895d3efc52977b', 'jpg', NULL);
INSERT INTO `cmf_asset` VALUES (69, 2, 104368, 1559371816, 1, 0, 'f9463ddc0fdd6e0984aeed92bd36d6be37ab4549c797a5f482347ab6430b0633', 'mascot.png', 'portal/20190601/756f2f1ac05d573ad30aee7d95d05751.png', 'f9463ddc0fdd6e0984aeed92bd36d6be', '7c4e54b46eace891a521a5a92f4937b2f36134d8', 'png', NULL);
INSERT INTO `cmf_asset` VALUES (70, 2, 19206, 1563263387, 1, 0, '85e94c44b806dd089c742821eeb1d63eb2d6f747f5e2e36cf029bfbbd206d3f4', 'mamp-pro-for-mac-150x150.png', 'portal/20190716/91691bd650e628836a76b4466b1ef6d7.png', '85e94c44b806dd089c742821eeb1d63e', '64db7940a0ddaa3bba56d0fef3b6b9623ade7d24', 'png', NULL);
INSERT INTO `cmf_asset` VALUES (71, 2, 3783, 1563515210, 1, 0, 'e2fd3b99d03afd2c69189c17ee1962f13bb8827e46433707a4f72d717d1ebdf3', 'logo@2x.png', 'portal/20190719/a7d329bb8b33fac98863605f0bedb3b9.png', 'e2fd3b99d03afd2c69189c17ee1962f1', 'ece5bd05b3fc1d4c7608845165a551e53fb92ac9', 'png', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------
BEGIN;
INSERT INTO `cmf_auth_access` VALUES (1, 2, 'user/adminindex/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (2, 2, 'admin/user/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (3, 2, 'admin/rbac/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (4, 2, 'admin/rbac/roleadd', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (5, 2, 'admin/rbac/roleaddpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (6, 2, 'admin/rbac/roleedit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (7, 2, 'admin/rbac/roleeditpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (8, 2, 'admin/rbac/roledelete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (9, 2, 'admin/rbac/authorize', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (10, 2, 'admin/rbac/authorizepost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (11, 2, 'admin/user/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (12, 2, 'admin/user/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (13, 2, 'admin/user/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (14, 2, 'admin/user/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (15, 2, 'admin/user/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (16, 2, 'admin/user/userinfo', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (17, 2, 'admin/user/userinfopost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (18, 2, 'admin/user/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (19, 2, 'admin/user/ban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (20, 2, 'admin/user/cancelban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (21, 2, 'user/adminindex/default1', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (22, 2, 'user/adminindex/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (23, 2, 'user/adminindex/ban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (24, 2, 'user/adminindex/cancelban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (25, 2, 'user/adminoauth/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (26, 2, 'user/adminoauth/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (27, 2, 'admin/plugin/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (28, 2, 'admin/hook/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (29, 2, 'admin/hook/plugins', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (30, 2, 'admin/hook/pluginlistorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (31, 2, 'admin/hook/sync', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (32, 2, 'admin/plugin/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (33, 2, 'admin/plugin/toggle', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (34, 2, 'admin/plugin/setting', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (35, 2, 'admin/plugin/settingpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (36, 2, 'admin/plugin/install', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (37, 2, 'admin/plugin/update', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (38, 2, 'admin/plugin/uninstall', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (39, 2, 'portal/adminindex/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (40, 2, 'portal/adminarticle/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (41, 2, 'portal/adminarticle/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (42, 2, 'portal/adminarticle/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (43, 2, 'portal/adminarticle/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (44, 2, 'portal/adminarticle/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (45, 2, 'portal/adminarticle/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (46, 2, 'portal/adminarticle/publish', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (47, 2, 'portal/adminarticle/top', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (48, 2, 'portal/adminarticle/recommend', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (49, 2, 'portal/adminarticle/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (50, 2, 'portal/admincategory/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (51, 2, 'portal/admincategory/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (52, 2, 'portal/admincategory/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (53, 2, 'portal/admincategory/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (54, 2, 'portal/admincategory/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (55, 2, 'portal/admincategory/select', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (56, 2, 'portal/admincategory/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (57, 2, 'portal/admincategory/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (58, 2, 'portal/adminpage/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (59, 2, 'portal/adminpage/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (60, 2, 'portal/adminpage/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (61, 2, 'portal/adminpage/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (62, 2, 'portal/adminpage/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (63, 2, 'portal/adminpage/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (64, 2, 'portal/admintag/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (65, 2, 'portal/admintag/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (66, 2, 'portal/admintag/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (67, 2, 'portal/admintag/upstatus', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (68, 2, 'portal/admintag/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (69, 2, 'admin/recyclebin/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (70, 2, 'admin/recyclebin/restore', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (71, 2, 'admin/recyclebin/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (72, 2, 'user/adminasset/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (73, 2, 'user/adminasset/delete', 'admin_url');
COMMIT;

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `cmf_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `cmf_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (120, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES (121, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES (122, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES (123, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES (124, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES (125, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES (126, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES (127, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES (128, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (129, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES (130, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES (131, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (132, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES (133, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (134, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES (135, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES (136, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES (137, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (138, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (139, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES (140, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES (141, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES (142, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES (143, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES (144, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES (145, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (146, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (147, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES (148, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES (149, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (150, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES (151, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES (152, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (153, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES (154, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES (155, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES (156, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES (157, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES (158, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES (159, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES (160, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (161, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES (162, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
COMMIT;

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------
BEGIN;
INSERT INTO `cmf_comment` VALUES (10, 0, 2147483647, 2147483647, 1, 0, 0, 0, 1545903239, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '测试评论功能测试评论功能测试评论功能测试评论功能测试评论功能', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (11, 10, 2147483647, 2147483647, 1, 0, 0, 0, 1545903314, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '挺好的', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (12, 0, 2147483647, 2147483647, 1, 0, 0, 0, 1545903526, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '第二个评论第二个评论第二个评论第二个评论', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (13, 0, 2147483647, 2147483647, 1, 0, 0, 0, 1545904239, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '第三个测试赛', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (14, 0, 1545904540, 1545904540, 1, 0, 0, 0, 1545904540, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '            dump($userid);die;\r\n            dump($userid);die;\r\n            dump($userid);die;\r\n            dump($userid);die;\r\n', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (15, 14, 1545904650, 1545904650, 1, 0, 0, 0, 1545904650, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '1111111', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (16, 0, 1545904743, 1545904743, 1, 0, 0, 0, 1545904743, 1557574541, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '11111111111', '中华土味圣诞节，有啥好抵制的？');
INSERT INTO `cmf_comment` VALUES (17, 0, 1545909284, 1545909284, 1, 0, 0, 0, 1545909284, 1557574529, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '确实很不错', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (18, 0, 1545992908, 1545992908, 1, 0, 0, 0, 1545992908, 1557574529, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '虚拟用户评论', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (19, 18, 1545996250, 1545996250, 1, 0, 0, 0, 1545996250, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '11111111111111111111', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (20, 19, 1545996330, 1545996330, 1, 0, 0, 0, 1545996330, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '2222222222222222222', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (21, 0, 1545996375, 1545996375, 1, 0, 0, 0, 1545996375, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '333333333333333333333333333', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (22, 0, 1545996476, 1545996476, 1, 0, 0, 0, 1545996476, 1557574529, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '这个确实不错', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (23, 0, 1545999203, 1545999203, 1, 0, 0, 0, 1545999203, 1552355108, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '张晓霞是个二货', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (24, 23, 1545999219, 1545999219, 1, 0, 0, 0, 1545999219, 1552355113, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6MX19', '确实是二货，我同意！', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (25, 0, 1546076678, 1546076678, 1, 0, 0, 0, 1546076678, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6N319', '这个', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (26, 25, 1546076695, 1546076695, 1, 0, 0, 0, 1546076695, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6N319', '1111111111111', 'MQ消息队列，PHP开发');
INSERT INTO `cmf_comment` VALUES (27, 0, 1550464112, 1550464112, 1, 0, 0, 0, 1550464112, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6N319', '&lt;img src=&quot;@&quot; alt=&quot;@&quot; /&gt;', 'PHP使用MQ消息队列');
INSERT INTO `cmf_comment` VALUES (28, 0, 1552384956, 1552384956, 1, 0, 0, 0, 1552384956, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjEsImNpZCI6N319', '1', 'PHP使用MQ消息队列');
INSERT INTO `cmf_comment` VALUES (29, 0, 1556159793, 1556159793, 1, 0, 0, 0, 1556159793, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOiIxIiwiY2lkIjoiNyJ9fQ==', '是啊', 'PHP使用MQ消息队列');
INSERT INTO `cmf_comment` VALUES (30, 0, 1556609375, 1556609375, 1, 0, 0, 0, 1556609375, 1557574503, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOiIxIiwiY2lkIjoiNyJ9fQ==', '???', 'PHP使用MQ消息队列');
INSERT INTO `cmf_comment` VALUES (31, 0, 1557574880, 1557574880, 18, 0, 0, 0, 1557574880, 1557574954, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOiIxOCIsImNpZCI6IjIifX0=', '111111111', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (32, 0, 1557574937, 1557574937, 18, 0, 0, 0, 1557574937, 1557574954, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOiIxOCIsImNpZCI6IjIifX0=', '1111111111111111111111111111', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (33, 0, 1558582379, 1558582379, 18, 0, 0, 0, 1558582379, 1558593251, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOiIxOCIsImNpZCI6IjIifX0=', '不错', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (34, 33, 1558582400, 1558582400, 18, 0, 0, 0, 1558582400, 1558593251, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOiIxOCIsImNpZCI6IjIifX0=', '好吧', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (35, 0, 1558583517, 1558583517, 18, 0, 0, 0, 1558583517, 1558593251, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjE4LCJjaWQiOjJ9fQ==', '111111', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (36, 0, 1558583579, 1558583579, 18, 0, 0, 0, 1558583579, 1558593251, 2, 1, 'portal_post', '', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjE4LCJjaWQiOjJ9fQ==', '111111', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (37, 0, 1558584033, 1558584033, 18, 0, 0, 0, 1558584033, 1558593251, 2, 1, 'portal_post', '结实的飞鸟', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjE4LCJjaWQiOjJ9fQ==', '222222222222222222222', 'PHP蜘蛛爬虫 phpSpider的使用方式');
INSERT INTO `cmf_comment` VALUES (38, 37, 1558589465, 1558589465, 18, 0, 0, 0, 1558589465, 1558593251, 2, 1, 'portal_post', '威武的方盒', '', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0FydGljbGVcL2luZGV4IiwicGFyYW0iOnsiaWQiOjE4LCJjaWQiOjJ9fQ==', '222222222222222222', 'PHP蜘蛛爬虫 phpSpider的使用方式');
COMMIT;

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook` VALUES (1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `cmf_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES (30, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES (31, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES (36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES (37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES (38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES (39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES (40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES (41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES (42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES (43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES (44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES (45, 2, 1, '门户后台文章管理列表界面', 'portal_admin_article_index_view', 'portal', '门户后台文章管理列表界面');
INSERT INTO `cmf_hook` VALUES (46, 2, 1, '门户后台文章分类管理列表界面', 'portal_admin_category_index_view', 'portal', '门户后台文章分类管理列表界面');
INSERT INTO `cmf_hook` VALUES (47, 2, 1, '门户后台页面管理列表界面', 'portal_admin_page_index_view', 'portal', '门户后台页面管理列表界面');
INSERT INTO `cmf_hook` VALUES (48, 2, 1, '门户后台文章标签管理列表界面', 'portal_admin_tag_index_view', 'portal', '门户后台文章标签管理列表界面');
INSERT INTO `cmf_hook` VALUES (49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES (50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES (51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES (52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES (53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES (54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES (55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES (56, 4, 0, '门户后台文章添加编辑界面右侧栏', 'portal_admin_article_edit_view_right_sidebar', 'portal', '门户后台文章添加编辑界面右侧栏');
INSERT INTO `cmf_hook` VALUES (57, 4, 0, '门户后台文章添加编辑界面主要内容', 'portal_admin_article_edit_view_main', 'portal', '门户后台文章添加编辑界面主要内容');
INSERT INTO `cmf_hook` VALUES (58, 2, 1, '门户后台文章添加界面', 'portal_admin_article_add_view', 'portal', '门户后台文章添加界面');
INSERT INTO `cmf_hook` VALUES (59, 2, 1, '门户后台文章编辑界面', 'portal_admin_article_edit_view', 'portal', '门户后台文章编辑界面');
INSERT INTO `cmf_hook` VALUES (60, 2, 1, '门户后台文章分类添加界面', 'portal_admin_category_add_view', 'portal', '门户后台文章分类添加界面');
INSERT INTO `cmf_hook` VALUES (61, 2, 1, '门户后台文章分类编辑界面', 'portal_admin_category_edit_view', 'portal', '门户后台文章分类编辑界面');
INSERT INTO `cmf_hook` VALUES (62, 2, 1, '门户后台页面添加界面', 'portal_admin_page_add_view', 'portal', '门户后台页面添加界面');
INSERT INTO `cmf_hook` VALUES (63, 2, 1, '门户后台页面编辑界面', 'portal_admin_page_edit_view', 'portal', '门户后台页面编辑界面');
INSERT INTO `cmf_hook` VALUES (64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES (65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES (66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES (67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES (68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES (69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES (70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES (71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');
COMMIT;

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
BEGIN;
INSERT INTO `cmf_hook_plugin` VALUES (3, 10000, 1, 'admin_login', 'CustomAdminLogin');
INSERT INTO `cmf_hook_plugin` VALUES (8, 10000, 1, 'comment', 'DComment');
INSERT INTO `cmf_hook_plugin` VALUES (10, 10000, 1, 'fetch_upload_view', 'Qiniu');
COMMIT;

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
BEGIN;
INSERT INTO `cmf_link` VALUES (1, 1, 1, 1, '梁钟霖个人博客', 'https://www.liangzl.com', '梁钟霖个人博客', '', '_blank', '');
INSERT INTO `cmf_link` VALUES (2, 1, 0, 2, '', 'http://www.yueshuo.net/', '跃硕笔记', '', '_blank', '');
COMMIT;

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav` VALUES (1, 1, '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES (2, 0, '底部导航', '');
COMMIT;

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
BEGIN;
INSERT INTO `cmf_nav_menu` VALUES (1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');
INSERT INTO `cmf_nav_menu` VALUES (2, 1, 0, 1, 2, 'PHP开发', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":2}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES (3, 1, 0, 1, 3, '服务器笔记', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":1}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES (4, 1, 0, 1, 4, '数据库笔记', '', '{\"action\":\"portal\\/List\\/index\",\"param\":{\"id\":7}}', '', '');
INSERT INTO `cmf_nav_menu` VALUES (5, 1, 0, 0, 1, '慢生活', '', 'eyJhY3Rpb24iOiJwb3J0YWxcL0xpc3RcL2luZGV4IiwicGFyYW0iOnsiaWQiOjh9fQ==', '', '');
INSERT INTO `cmf_nav_menu` VALUES (6, 1, 0, 1, 5, 'IM聊天', '', 'chat', '', '');
COMMIT;

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
BEGIN;
INSERT INTO `cmf_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"\\u738b\\u523b\\u7684BLOG\",\"site_seo_title\":\"\\u738b\\u6653\\u5b87\\u4e2a\\u4eba\\u535a\\u5ba2,PHP\\u5f00\\u53d1,Linux,\\u738b\\u523b\\u7684BLOG\",\"site_seo_keywords\":\"\\u738b\\u6653\\u5b87\\u4e2a\\u4eba\\u535a\\u5ba2,PHP\\u5f00\\u53d1,Linux,\\u738b\\u523b\\u7684BLOG\",\"site_seo_description\":\"\\u738b\\u523b\\u7684BLOG,\\u7f51\\u7ad9\\u521b\\u5efa\\u4e8e2018\\u5e7412\\u670822\\u65e5\\uff0c\\u521b\\u59cb\\u4eba\\u738b\\u523b\\uff0c\\u4ece\\u4e8bPHP\\u8f6f\\u4ef6\\u5f00\\u53d1\\uff0c\\u6240\\u4ee5\\u535a\\u5ba2\\u4e5f\\u4e3b\\u8981\\u53d1\\u5e03\\u4e00\\u4e9bPHP\\u5b66\\u4e60\\u4e2d\\u7684\\u4e00\\u4e9b\\u6280\\u672f\\u5206\\u4eab\",\"site_icp\":\"\\u4eacICP\\u590719003662\\u53f7\",\"site_gwa\":\"http:\\/\\/www.miitbeian.gov.cn\\/\",\"site_admin_email\":\"\",\"site_analytics\":\"\"}');
INSERT INTO `cmf_option` VALUES (2, 1, 'cmf_settings', '{\"open_registration\":\"1\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES (3, 1, 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES (4, 1, 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');
INSERT INTO `cmf_option` VALUES (5, 1, 'storage', '{\"type\":\"Local\",\"storages\":{\"Qiniu\":{\"name\":\"\\u4e03\\u725b\\u4e91\\u5b58\\u50a8\",\"driver\":\"\\\\plugins\\\\qiniu\\\\lib\\\\Qiniu\"}}}');
INSERT INTO `cmf_option` VALUES (6, 1, 'smtp_setting', '{\"from_name\":\"\\u738b\\u6653\\u5b87\",\"from\":\"lampwxy@163.com\",\"host\":\"smtp.163.com\",\"smtp_secure\":\"ssl\",\"port\":\"465\",\"username\":\"lampwxy@163.com\",\"password\":\"wxy1314520\"}');
COMMIT;

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
BEGIN;
INSERT INTO `cmf_plugin` VALUES (4, 1, 0, 1, 0, 'CustomAdminLogin', '自定义后台登录页', '', '', 'ThinkCMF', '', '1.0', '自定义后台登录页', '[]');
INSERT INTO `cmf_plugin` VALUES (9, 1, 1, 1, 0, 'DComment', '通用评论', 'http://www.daliycode.com', '', 'daliycode', 'http://www.daliycode.com', '1.1', '通用评论。', '{\"comment_type\":\"1\",\"comment_check\":\"2\",\"comment_interval\":\"5\"}');
INSERT INTO `cmf_plugin` VALUES (11, 1, 0, 1, 0, 'Qiniu', '七牛云存储', '', '', 'ThinkCMF', '', '1.0.1', 'ThinkCMF七牛专享优惠码:507670e8', '{\"accessKey\":\"VluD0kxHU-jmo3CyZ3N3IlNKNE180PxfEKWDp7OY\",\"secretKey\":\"m4fVCrXivqF3KUdHnam7KgCW6lh8lN8vtvxJoTEX\",\"protocol\":\"http\",\"domain\":\"cdn.wangxyu.com\",\"bucket\":\"wangxyu\",\"zone\":\"z0\",\"style_separator\":\"-\",\"styles_watermark\":\"watermark\"}');
COMMIT;

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_portal_category
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category` VALUES (1, 0, 0, 1, 0, 10000, '服务器笔记', '', '0-1', 'Linux', 'Linux', 'Linux', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (2, 0, 0, 1, 0, 10000, 'PHP笔记', '', '0-2', 'PHP开发', 'PHP', 'PHP开发', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (7, 0, 0, 1, 0, 10000, '数据库笔记', '', '0-7', 'mysql,数据库', 'mysql,数据库', 'mysql,数据库', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (8, 0, 0, 0, 0, 10000, '慢生活', '', '0-8', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
INSERT INTO `cmf_portal_category` VALUES (9, 8, 0, 0, 1559185471, 10000, 'manman', '', '0-8-9', '', '', '', 'list', 'article', '{\"thumbnail\":\"\"}');
COMMIT;

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_category_post` VALUES (2, 2, 7, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (3, 1, 7, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (4, 15, 7, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (5, 16, 7, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (6, 17, 7, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (7, 18, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (8, 19, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (9, 20, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (10, 21, 2, 10000, 0);
INSERT INTO `cmf_portal_category_post` VALUES (11, 22, 1, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (12, 23, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (13, 24, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (14, 25, 2, 10000, 1);
INSERT INTO `cmf_portal_category_post` VALUES (15, 26, 1, 10000, 1);
COMMIT;

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_post` VALUES (1, 0, 1, 1, 1, 1, 1, 1, 1, 3508, 0, 0, 4, 1545728728, 1557574219, 1545728700, 0, 'PHP使用MQ消息队列', 'PHP,MQ消息队列', 'MQ消息队列，PHP开发', '原创', 'portal/20181227/f238c6a103ed982a40c19e192a24a690.jpg', '\n&lt;p&gt;1.安装php-amqplib 服务&lt;/p&gt;\n&lt;p&gt;    在composer.json配置&lt;/p&gt;\n&lt;p&gt;    &lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;font-family: Monaco; font-size: 9pt; color: rgb(51, 51, 51);&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;{\r\n&quot;require&quot;: {\r\n&quot;php-amqplib/php-amqplib&quot;: &quot;&amp;gt;=2.6.1&quot;\r\n}\r\n}&lt;/pre&gt;\n&lt;p&gt;&lt;span style=&quot;font-family: Monaco; font-size: 9pt; color: rgb(51, 51, 51);&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;2.执行&lt;span style=&quot;overflow-x: auto; background: rgb(35, 35, 35); font-size: medium; white-space: pre-wrap; word-break: break-word; border-radius: 5px; letter-spacing: 0.16px; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; color: rgb(230, 225, 220); font-variant-caps: normal; font-variant-ligatures: normal;&quot;&gt;composer.phar install 来安装&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;3.引入mq文件&lt;/p&gt;\n&lt;p&gt;    &lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;background-color: #f7faff; color: #000000; font-family: \'宋体\'; font-size: 9.0pt; font-style: italic; font-weight: bold;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;define(\'EXTEND_PATH\', \'../vendor/autoload.php\');\r\nuse app\\synchronous\\model\\RabbitMqModel;\r\nuse PhpAmqpLib\\Connection\\AMQPStreamConnection;&lt;/pre&gt;\n&lt;p&gt;&lt;span style=&quot;background-color: #f7faff; font-family: Monaco; font-size: 9pt; color: rgb(51, 51, 51);&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;4.发送到队列数据代码&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: #808080; background-color: #f7faff; font-style: italic; font-family: Monaco; font-size: 9pt;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;/**\r\n* MQ生产数据\r\n* @param $queueName 队列名称\r\n* @param $msg 发送数据\r\n* @name MqPushLish\r\n* @author 王晓宇 \r\n* @return\r\n*/\r\npublic function MqPublish($queueName , $msg = []){\r\ntry{\r\nif(empty($queueName))\r\nreturn false;\r\n//获取mq配置\r\n$mqConfig = $this-&amp;gt;getConfig();\r\n//创建连接和channel\r\n$connection = new AMQPStreamConnection($mqConfig[\'host\'] , $mqConfig[\'port\'] , $mqConfig[\'user\'] , $mqConfig[\'password\']);\r\n$channel = $connection-&amp;gt;channel();\r\n$name = $queueName;\r\n$type = &quot;direct&quot;;\r\n$passive = false;\r\n$durable = true;\r\n$auto_delete = true;\r\n$channel-&amp;gt;exchange_declare($name, $type, $passive, $durable, $auto_delete);\r\n$message = new AMQPMessage(\'[{&quot;data_id&quot;:184981,&quot;complex_id&quot;:7821,&quot;area&quot;:&quot;bj&quot;,&quot;dj&quot;:0,&quot;mj&quot;:84,&quot;shi&quot;:&quot;2室&quot;,&quot;ting&quot;:&quot;2厅&quot;,&quot;wei&quot;:&quot;1卫&quot;,&quot;chu&quot;:&quot;1厨&quot;,&quot;cate_status&quot;:&quot;4&quot;,&quot;thumb&quot;:&quot;http://img.zgsta.com/1-2-1-1-9057/11cf99e0a95cfc2a10a06af7e5a5f367_addfinger.png&quot;,&quot;tujis&quot;:[&quot;http://img.zgsta.com/1-2-1-1-9057/11cf99e0a95cfc2a10a06af7e5a5f367_addfinger.png&quot;],&quot;create_time&quot;:1512937831,&quot;update_time&quot;:1533907683,&quot;house_toward&quot;:&quot;南北&quot;,&quot;reference_totalprice&quot;:0,&quot;reference_down_payment&quot;:&quot;&quot;},{&quot;data_id&quot;:184981,&quot;complex_id&quot;:9057,&quot;area&quot;:&quot;sh&quot;,&quot;dj&quot;:0,&quot;mj&quot;:84,&quot;shi&quot;:&quot;2室&quot;,&quot;ting&quot;:&quot;2厅&quot;,&quot;wei&quot;:&quot;1卫&quot;,&quot;chu&quot;:&quot;1厨&quot;,&quot;cate_status&quot;:&quot;4&quot;,&quot;thumb&quot;:&quot;http://img.zgsta.com/1-2-1-1-9057/11cf99e0a95cfc2a10a06af7e5a5f367_addfinger.png&quot;,&quot;tujis&quot;:[&quot;http://img.zgsta.com/1-2-1-1-9057/11cf99e0a95cfc2a10a06af7e5a5f367_addfinger.png&quot;],&quot;create_time&quot;:1512937831,&quot;update_time&quot;:1533907683,&quot;house_toward&quot;:&quot;南北&quot;,&quot;reference_totalprice&quot;:0,&quot;reference_down_payment&quot;:&quot;&quot;}]\');\r\n$channel-&amp;gt;basic_publish($message,\'\', $queueName);//发送数据到MQ\r\n$channel-&amp;gt;close();\r\n$connection-&amp;gt;close();\r\n//打印日志\r\nZhugeLog::log(0, $msg ,$queueName.\'MQ发送队列数据正常\');\r\nreturn true;\r\n}catch (\\Exception $e){\r\n//打印日志\r\nZhugeLog::log(1, $e-&amp;gt;getMessage() ,\'MQ发送队列数据异常！！！！！！！！！！！！！！！！\');\r\nreturn false;\r\n}\r\n}&lt;/pre&gt;\n&lt;p&gt;&lt;span style=&quot;background-color: #f7faff; font-family: Monaco; font-size: 9pt; color: rgb(51, 51, 51);&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;5.消费队列数据代码&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: #808080; background-color: #f7faff; font-style: italic; font-family: Monaco; font-size: 9pt;&quot;&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;/**\r\n* DATA同步新房户型MQ消费数据 监视数据\r\n* @param $queueName 队列名称\r\n* @name MqConsumer\r\n* @author 王晓宇 \r\n* @return\r\n*/\r\npublic function mqConsumer(){\r\ntry{\r\n$queueName = $this-&amp;gt;getx(\'queue\' , \'complex_info_test\');\r\nif(empty($queueName)){\r\necho &quot;not queue &quot;;die;\r\n}\r\n//创建连接和channel\r\n$connection = new AMQPStreamConnection(C(\'config_mq.host\') , C(\'config_mq.port\') , C(\'config_mq.user\') , C(\'config_mq.password\'));\r\n$channel = $connection-&amp;gt;channel();\r\n$channel-&amp;gt;queue_declare($queueName, false, true, false, false);\r\necho \' [*] Waiting for messages. To exit press CTRL+C\', &quot;\\n&quot;;\r\n$callback = function($msg) {\r\n//打印日志，记录消费的数据\r\nZhugeLog::log(0, $msg-&amp;gt;body ,\'MQ接收户型同步数据\');\r\n$returnData = json_decode($msg-&amp;gt;body , true);\r\n//调用插入户型数据\r\n$this-&amp;gt;addDoorList($returnData);\r\necho &quot; [x] Received &quot;, $msg-&amp;gt;body, &quot;\\n&quot;;\r\n};\r\n$channel-&amp;gt;basic_consume($queueName, \'\', false, false, false, false, $callback);//消费出数据\r\nwhile(count($channel-&amp;gt;callbacks)) {\r\n$channel-&amp;gt;wait();\r\n}\r\n$channel-&amp;gt;close();\r\n$connection-&amp;gt;close();\r\n}catch (\\Exception $e){\r\n//打印日志\r\nZhugeLog::log(1, $e-&amp;gt;getMessage() ,\'MQ发送队列数据异常！！！！！！！！！！！！！！！！\');\r\nreturn false;\r\n}\r\n}&lt;/pre&gt;\n&lt;p&gt;&lt;span style=&quot;background-color: #f7faff; font-family: Monaco; font-size: 9pt; color: rgb(51, 51, 51);&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;6.在linux 配置守护进程&lt;/p&gt;\n&lt;p&gt;    命令：nohup php index.php /synchronous/synchronous/mqconsumer &amp;amp;  “&amp;amp;” 代表不间断运行&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;    在/etc/rc.local文件中，将nohup php index.php /synchronous/synchronous/mqconsumer &amp;amp;这个命令加入即可。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20181227\\/f238c6a103ed982a40c19e192a24a690.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20181227\\/f238c6a103ed982a40c19e192a24a690.jpg\",\"name\":\"f238c6a103ed982a40c19e192a24a690.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES (15, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1546070369, 1546070379, 1546070340, 1546076575, '测试1', '测试', '测试', '测试', '', '&lt;p&gt;测试&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES (16, 0, 1, 1, 1, 1, 1, 0, 0, 3, 0, 0, 0, 1546070397, 1546070405, 1546070340, 1546076570, '测试2', '测试', '测试', '测试', '', '&lt;p&gt;测试&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES (17, 0, 1, 1, 1, 1, 1, 0, 0, 5, 0, 0, 0, 1546070427, 1546070436, 1546070400, 1546076567, '测试3', '测试', '测试', '测试', '', '&lt;p&gt;测试&lt;/p&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"\",\"template\":\"\"}');
INSERT INTO `cmf_portal_post` VALUES (18, 0, 1, 1, 1, 1, 1, 0, 1, 4683, 0, 0, 0, 1557571947, 1559287339, 1557569340, 0, 'PHP爬虫 phpSpider的使用', 'phpspider,爬虫,php', '《我用爬虫一天时间“偷了”知乎一百万用户，只为证明PHP是世界上最好的语言 》所使用的程序框架', '原创', 'portal/20190511/89d5f05c882f261529534e573be014e5.jpg', '\n&lt;p&gt;1.首先安装phpspider，一般采用composer安装&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 1.275em; padding: 0.85em 1em; background-color: rgb(247, 247, 247); box-sizing: border-box; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; white-space: pre-wrap; break-inside: avoid; direction: ltr; border: none; color: rgb(51, 51, 51); overflow: auto; overflow-wrap: normal; letter-spacing: 0.2px;\'&gt;composer require owner888/phpspider&lt;/pre&gt;\n&lt;p&gt;2.目录结构介绍&lt;/p&gt;\n&lt;p&gt;    &lt;img src=&quot;default/20190511/17afe748b7652577435456916055d8b6.png&quot; title=&quot;image.png&quot; alt=&quot;image.png&quot;&gt;&lt;/p&gt;\n&lt;p&gt;    core下提供了一些类方便我们开发，log日志，phpspider 爬虫类，selector选择器 ，db数据库操作等&lt;/p&gt;\n&lt;p&gt;3.定义好爬虫config配置，具体的配置信息可以参考官网 &lt;a href=&quot;https://doc.phpspider.org/configs-members.html&quot;&gt;https://doc.phpspider.org/configs-members.html&lt;/a&gt;&lt;/p&gt;\n&lt;p&gt;  (1)主要的配置就是 &lt;/p&gt;\n&lt;pre style=&quot;background-color:#0c1021;color:#f8f8f8;font-family:\'宋体\';font-size:11.3pt;&quot;&gt;//抓取的起点\r\n\'scan_urls\' =&amp;gt; array(\r\n    &quot;https://www.x81zw.com/sort1/&quot;,\r\n),\r\n//列表页实例\r\n\'list_url_regexes\' =&amp;gt; array(\r\n    &quot;https://www.x81zw.com/sort\\d+/&quot;,\r\n),\r\n//内容页实例 要爬取的页面\r\n//  \\d+  指的是变量\r\n\'content_url_regexes\' =&amp;gt; array(\r\n    &quot;https://www.x81zw.com/sort\\d+/&quot;,\r\n),&lt;/pre&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt; (2)选择器 phpspider 提供了三种选择器，xpath  css 正则 ，默认是xpath，使用其他选择器可以使用selector_type 来定义&lt;/p&gt;\n&lt;pre style=&quot;background-color:#0c1021;color:#f8f8f8;font-family:\'宋体\';font-size:11.3pt;&quot;&gt;\'fields\' =&amp;gt; array(\r\n    array(\r\n        \'name\' =&amp;gt; &quot;title&quot;,//小说标题\r\n        \'selector\' =&amp;gt; &quot;//div[@id=\'info\']//h1&quot;,\r\n        \'required\' =&amp;gt; true,\r\n    ),\r\n    array(\r\n        \'name\' =&amp;gt; &quot;author&quot;,//小说作者\r\n        \'selector\' =&amp;gt; &quot;//div[@id=\'info\']//p&quot;,\r\n        \'required\' =&amp;gt; true,\r\n    ),\r\n    array(\r\n        \'name\' =&amp;gt; &quot;coverPic&quot;,//小说图片地址\r\n        \'selector\' =&amp;gt; &quot;//div[@id=\'fmimg\']//img&quot;,\r\n        \'required\' =&amp;gt; true,\r\n    ),\r\n    array(\r\n        \'name\' =&amp;gt; &quot;status&quot;,//状态\r\n        \'selector\' =&amp;gt; &quot;//div[@id=\'info\']//p[2]&quot;,\r\n        \'required\' =&amp;gt; true,\r\n    ),\r\n    array(\r\n        \'name\' =&amp;gt; &quot;summary&quot;,//小说简介\r\n        \'selector\' =&amp;gt; &quot;//div[@id=\'intro\']//p&quot;,\r\n        \'required\' =&amp;gt; true,\r\n    ),\r\n    array(\r\n        \'name\' =&amp;gt; &quot;spiderUrl&quot;,//爬虫地址\r\n    ),\r\n    array(\r\n        \'name\' =&amp;gt; &quot;type&quot;,//小说分类\r\n        \'selector\' =&amp;gt; \'//*[@id=&quot;wrapper&quot;]/div[3]/div[1]/a[2]\',\r\n        \'required\' =&amp;gt; true,\r\n    ),\r\n),&lt;/pre&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;4.重点说一下回调函数&lt;/p&gt;\n&lt;ol class=&quot; list-paddingleft-2&quot; style=&quot;list-style-type: lower-alpha;&quot;&gt;&lt;li&gt;&lt;pre style=&quot;background-color: rgb(12, 16, 33); color: rgb(248, 248, 248); font-family: 宋体; font-size: 11.3pt;&quot;&gt;on_status_code&lt;/pre&gt;&lt;/li&gt;&lt;/ol&gt;\n&lt;p&gt;     可以用这个函数做页面过滤，比如广告信息，或者你不想要的html，&lt;/p&gt;\n&lt;p&gt;     使用xpth ,css 等选择器删除 html 内容，selector::remove($content, &quot;//*[@id=\\&quot;info\\&quot;]/p[3]&quot;);&lt;/p&gt;\n&lt;p&gt;     记得一定要返回内容，不然爬虫会停止&lt;/p&gt;\n&lt;p&gt;  b. on_extract_field&lt;/p&gt;\n&lt;p&gt;     field 爬取的内容数据 ，可以对数据进行一层处理&lt;/p&gt;\n&lt;p&gt;  c.on_extract_page&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;    插入数据库操作&lt;/p&gt;\n&lt;p&gt;  &lt;/p&gt;\n&lt;pre style=&quot;background-color:#0c1021;color:#f8f8f8;font-family:\'宋体\';font-size:11.3pt;&quot;&gt;use phpspider\\core\\db;&lt;/pre&gt;\n&lt;pre style=&quot;background-color:#0c1021;color:#f8f8f8;font-family:\'宋体\';font-size:11.3pt;&quot;&gt;$spider-&amp;gt;on_extract_page = function($page,$data) {\r\n    db::set_connect(\'default\', $GLOBALS[\'config\'][\'db\']);\r\n    // 数据库链接\r\n    db::_init();\r\n    //处理哪个数据\r\n    if (isset($data)) {\r\n        $book_table = \'books\';//小说数据表\r\n \r\n        $preg_url =  preg_match_all(\'#https://www.x81zw.com/book/(.*?)/(.*?)/#\', $data[\'spiderUrl\'], $out);;\r\n        $list_url = isset($out[0][0]) ? $out[0][0] : &quot;&quot;;\r\n        //根据列表地址\r\n        $find_sql = &quot;select id,title,words from `&quot;.$book_table.&quot;` where `spiderUrl` = &quot; . &quot;\'&quot; . $list_url . &quot;\'&quot; ;\r\n        $find_row = db::get_one($find_sql);\r\n        $addData = [];\r\n        if(!empty($find_row)){\r\n            $pisodes_table = &quot;bookepisodes&quot; . $find_row[\'id\']%32;//章节数据表\r\n//            $pisodes_table = \'bookepisodes8_copy\';\r\n \r\n            //更新小说的总字数\r\n            $words = mb_strlen($data[\'info\'] , \'utf-8\');\r\n            $book_words = ceil($find_row[\'words\'] + $words);\r\n            db::update($book_table , [\'words\' =&amp;gt; $book_words] , &quot;id = &quot;.$find_row[\'id\']);//更新章节内容链接\r\n \r\n            $addData = [\r\n                \'bid\'      =&amp;gt; $find_row[\'id\'],//小说ID\r\n                \'title\'    =&amp;gt; $data[\'title\'],//章节标题\r\n                \'words\'    =&amp;gt; $words,\r\n                \'is_delete\'=&amp;gt; 0,\r\n                \'insertTime\'=&amp;gt; time(),//创建时间\r\n                \'updateTime\'=&amp;gt; time(),//更新时间\r\n                \'spiderUrl\' =&amp;gt; $data[\'spiderUrl\'],//列表地址\r\n                \'likes\'     =&amp;gt; rand(10 , 100),//点赞数\r\n            ];\r\n            //路由重复就不入库\r\n            $sql = &quot;select count(*) as `count` from `&quot;.$pisodes_table.&quot;` where `spiderUrl` = &quot; . &quot;\'&quot; . $data[\'spiderUrl\'] . &quot;\'&quot; ;\r\n            $row = db::get_one($sql);\r\n            //插入章节数据\r\n            if (empty($row[\'count\'])) {\r\n                $install = db::insert($pisodes_table , $addData );\r\n            }\r\n \r\n        }\r\n \r\n        $data = $addData;\r\n    }\r\n    return $data;\r\n};&lt;/pre&gt;\n&lt;p&gt; 5.启动脚本&lt;/p&gt;\n&lt;pre style=&quot;background-color:#0c1021;color:#f8f8f8;font-family:\'宋体\';font-size:11.3pt;&quot;&gt;$spider-&amp;gt;start();//启动脚本&lt;/pre&gt;\n&lt;p&gt;6.&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;运行脚本，只能使用命令行，只能使用命令行，只能使用命令行重要的事情说三遍&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;  php -f alone_book.php start &quot;爬虫地址&quot;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;  守护进程方式启动 nohup php -f alone_book.php start &amp;amp;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;7.脚本代码 ，仅供参考&lt;/p&gt;\n&lt;p&gt; 百度网盘下载地址：&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;链接：https://pan.baidu.com/s/1cDyLtg89i9QcWf466IuGZw \r\n提取码：pfrf \r\n复制这段内容后打开百度网盘手机App，操作更方便哦&lt;/pre&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190511\\/89d5f05c882f261529534e573be014e5.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190511\\/89d5f05c882f261529534e573be014e5.jpg\",\"name\":\"12686721-2dc672d619c072b8.jpg\"}],\"files\":[{\"url\":\"portal\\/20190511\\/81dd322cf2ecab95d3f99a0949becc42.txt\",\"name\":\"phpspider改后缀.txt\"}]}');
INSERT INTO `cmf_portal_post` VALUES (19, 0, 1, 1, 1, 1, 1, 0, 0, 1528, 0, 0, 0, 1559286183, 1559286542, 1559285820, 0, 'Apache环境下Web隐藏Apache、PHP版本信息', '隐藏Apache、PHP版本信息', '在实际生产环境中我们需要隐藏Web站点的Apache的版本信息，以实现信息的安全，要做到隐藏Apache的版本信息不被探测到。', 'Linux社区', 'portal/20190531/8d4c0256c983ea39fe8536626db0b259.jpg', '\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;在实际生产环境中我们需要隐藏Web站点的Apache的版本信息，以实现信息的安全，要做到隐藏Apache的版本信息不被探测到。&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;在 http 头部信息也可以看到服务器及 Apache 版本信息&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;&lt;img src=&quot;https://www.linuxidc.com/upload/2017_02/170206164879801.png&quot; alt=&quot;&quot; style=&quot;border: 0px; width: 602px; height: 159px;&quot; width=&quot;602&quot; height=&quot;159&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;我们可以修改apache环境所在路径的文件，在最后加上下面2行&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;[root@linuxidc ~]# vim /usr/local/apache/conf/httpd.conf&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;ServerSignature Off#主要是为了让 Apache 网站服务器在所有错误页面上隐藏 Apache 版本信息。&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;ServerTokens Prod#主要是为了在 HTTP 响应头中将服务器标记压缩到最小，否则Apache 服务器将仍然在 HTTP 回应头部包含详细的服务器标记，这会泄漏 Apache 的版本号。&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;然后重启apache，如此就隐藏了apache的版本信息&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;&lt;img src=&quot;https://www.linuxidc.com/upload/2017_02/170206164879802.png&quot; alt=&quot;&quot; style=&quot;border: 0px; width: 609px; height: 191px;&quot; width=&quot;609&quot; height=&quot;191&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;还有需要清理掉在站点测试时用的phpinfo文件，防止被嗅探到php的信息此外还要隐藏php的版本信息，可以通过以下命令来找到php.ini文件&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;[root@linuxidc ~]# find / -name php.ini&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;最后在修改&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;[root@linuxidc etc]# vi php.ini&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;expose_php = Off#原先默认是开启的&lt;/p&gt;\n&lt;p style=&quot;color: rgb(51, 51, 51); font-family: tahoma, 宋体; font-size: 14px; text-align: left; white-space: normal; background-color: rgb(250, 250, 252);&quot;&gt;重启下apache，就隐藏了php的信息。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190531\\/8d4c0256c983ea39fe8536626db0b259.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190531\\/8d4c0256c983ea39fe8536626db0b259.jpg\",\"name\":\"u=929541592,2969632712&amp;fm=26&amp;gp=0.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES (20, 0, 1, 1, 2, 1, 1, 0, 0, 1495, 0, 0, 0, 1559293009, 1559571370, 1559292840, 0, 'CentOS下安装Redis及Redis的PHP扩展', 'redis扩展,redis', 'CentOS下安装Redis及Redis的PHP扩展', '原创', 'portal/20190531/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg', '\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; font-size: 14pt; color: rgb(0, 128, 0);&quot;&gt;1、安装Redis&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; color: rgb(0, 0, 0);&quot;&gt;1.1 如果没有安装wget，安装wget&lt;/span&gt;&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install wget&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.2 在&lt;a href=&quot;http://redis.io/download&quot; target=&quot;_blank&quot; style=&quot;color: rgb(26, 139, 200); text-decoration-line: none;&quot;&gt;http://redis.io/download&lt;/a&gt;页面查看redis版本，并下载安装&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;wget http://download.redis.io/releases/redis-3.2.0.tar.gz&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.3 解压，并进入解压目录进行编译。编译成功后会在redis-3.2.0目录下生成相关文件&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;$ tar xzf redis-3.2.0.tar.gz\r\n$ cd redis-3.2.0$ make&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;如果make时没有发现gcc，那么安装gcc&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install gcc gcc-c++ kernel-devel&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;再次make，如果出现如下错误&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;zmalloc.h:50:31: error: jemalloc/jemalloc.h: No such file or directory\r\nzmalloc.h:55:2: error: #error &quot;Newer version of jemalloc required&quot;&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;则使用如下命令进行make&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;make MALLOC=libc&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.4 在文件夹redis-3.2.0下启动redis服务，输入如下命令后回车。&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;./src/redis-server redis.conf &amp;amp;&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.4 检测&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;#检测后台进程是否存在\r\nps -ef |grep redis\r\n\r\n#检测6379端口是否在监听\r\nnetstat -lntp | grep 6379#使用`redis-cli`客户端检测连接是否正常\r\n./src/redis-cli127.0.0.1:6379&amp;gt; keys *(empty list or set)127.0.0.1:6379&amp;gt; set key &quot;hello world&quot;OK127.0.0.1:6379&amp;gt; get key&quot;hello world&quot;&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.5 停止服务&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;#使用客户端\r\n./src/redis-cli shutdown\r\n#因为Redis可以妥善处理SIGTERM信号，所以直接kill -9也是可以的\r\nkill -9 PID&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt; &lt;/p&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; font-size: 14pt; color: rgb(0, 128, 0);&quot;&gt;2、安装Redis的PHP扩展&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.1 安装phpize&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install php-devel&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.2 下载扩展源码包，直接用wget&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;#wget下载github上的文件  \r\nwget https://github.com/nicolasff/phpredis/archive/master.zip&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.3 如果没装unzip，需要先安装unzip&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install unzip&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.4 解压master.zip&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;unzip master.zip&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.5 解压目录为phpredis-master，进入该文件夹，开始编译php扩展&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;phpize&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.6 配置环境&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;./configure&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.7 编译&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;make &amp;amp;&amp;amp; make install&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;编译完成后显示：&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;Build complete.  \r\nDon\'t forget to run \'make test\'.  Installing shared extensions:     /usr/lib64/php/modules/&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;进入/usr/lib64/php/modules/文件夹，发现redis.so的扩展&lt;/p&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.8 修改/etc/php.ini,添加下面的扩展&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;extension=redis.so&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.9 重启服务器&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;service httpd restart&lt;/pre&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;最后查看phpinfo，显示如下，代表安装成功：&lt;/p&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;https://images2015.cnblogs.com/blog/310680/201606/310680-20160615174957495-357136121.png&quot; alt=&quot;&quot; style=&quot;border: 0px; max-width: 900px; height: auto;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;line-height: 1.5; margin: 10px auto; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; color: rgb(0, 128, 0); font-size: 14pt;&quot;&gt;3、PHP代码测试&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span class=&quot;cnblogs_code_copy&quot; style=&quot;padding-right: 5px; line-height: 1.5 !important;&quot;&gt;&lt;a title=&quot;复制代码&quot; style=&quot;color: rgb(26, 139, 200); border: none !important;&quot; href&gt;&lt;img src=&quot;https://common.cnblogs.com/images/copycode.gif&quot; alt=&quot;复制代码&quot; style=&quot;max-width: 900px; height: auto; border: none !important;&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;&amp;lt;?php$redis = new Redis();$redis-&amp;gt;connect(\'127.0.0.1\', 6379);$redis-&amp;gt;set(\'name\',\'zhou\', 10);$key_1 = $redis-&amp;gt;get(\'name\');echo $key_1;?&amp;gt;&lt;/pre&gt;\n&lt;p&gt;&lt;span class=&quot;cnblogs_code_copy&quot; style=&quot;padding-right: 5px; line-height: 1.5 !important;&quot;&gt;&lt;a title=&quot;复制代码&quot; style=&quot;color: rgb(26, 139, 200); border: none !important;&quot; href&gt;&lt;img src=&quot;https://common.cnblogs.com/images/copycode.gif&quot; alt=&quot;复制代码&quot; style=&quot;max-width: 900px; height: auto; border: none !important;&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190531\\/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190531\\/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg\",\"name\":\"u=1467446338,1392024203&amp;fm=58&amp;bpow=363&amp;bpoh=363.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES (21, 0, 1, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1559294258, 1559294302, 1559294160, 1559294505, 'CentOS下安装Redis及Redis的PHP扩展', 'redis扩展,redis', 'CentOS下安装Redis及Redis的PHP扩展', '原创', 'portal/20190531/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg', '\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; font-size: 14pt; color: rgb(0, 128, 0);&quot;&gt;1、安装Redis&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; color: rgb(0, 0, 0);&quot;&gt;1.1 如果没有安装wget，安装wget&lt;/span&gt;&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install wget&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;1.2 在&lt;a href=&quot;http://redis.io/download&quot; target=&quot;_blank&quot; style=&quot;color: rgb(26, 139, 200); text-decoration-line: none;&quot;&gt;http://redis.io/download&lt;/a&gt;页面查看redis版本，并下载安装&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;wget http://download.redis.io/releases/redis-3.2.0.tar.gz&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;1.3 解压，并进入解压目录进行编译。编译成功后会在redis-3.2.0目录下生成相关文件&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;$ tar xzf redis-3.2.0.tar.gz\r\n$ cd redis-3.2.0$ make&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;如果make时没有发现gcc，那么安装gcc&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install gcc gcc-c++ kernel-devel&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;再次make，如果出现如下错误&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;zmalloc.h:50:31: error: jemalloc/jemalloc.h: No such file or directory\r\nzmalloc.h:55:2: error: #error &quot;Newer version of jemalloc required&quot;&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;则使用如下命令进行make&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;make MALLOC=libc&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;1.4 在文件夹redis-3.2.0下启动redis服务，输入如下命令后回车。&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;./src/redis-server redis.conf &amp;amp;&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;1.4 检测&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span class=&quot;cnblogs_code_copy&quot; style=&quot;padding-right: 5px; line-height: 1.5 !important;&quot;&gt;&lt;a title=&quot;复制代码&quot; href=&quot;/portal/admin_article/edit/id/20.html&quot; style=&quot;color: rgb(26, 139, 200); border: none !important;&quot;&gt;&lt;img src=&quot;https://common.cnblogs.com/images/copycode.gif&quot; alt=&quot;复制代码&quot; style=&quot;max-width: 900px; height: auto; border: none !important;&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;#检测后台进程是否存在\r\nps -ef |grep redis\r\n\r\n#检测6379端口是否在监听\r\nnetstat -lntp | grep 6379#使用`redis-cli`客户端检测连接是否正常\r\n./src/redis-cli127.0.0.1:6379&amp;gt; keys *(empty list or set)127.0.0.1:6379&amp;gt; set key &quot;hello world&quot;OK127.0.0.1:6379&amp;gt; get key&quot;hello world&quot;&lt;/pre&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span class=&quot;cnblogs_code_copy&quot; style=&quot;padding-right: 5px; line-height: 1.5 !important;&quot;&gt;&lt;a title=&quot;复制代码&quot; href=&quot;/portal/admin_article/edit/id/20.html&quot; style=&quot;color: rgb(26, 139, 200); border: none !important;&quot;&gt;&lt;img src=&quot;https://common.cnblogs.com/images/copycode.gif&quot; alt=&quot;复制代码&quot; style=&quot;max-width: 900px; height: auto; border: none !important;&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;1.5 停止服务&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;#使用客户端\r\n./src/redis-cli shutdown\r\n#因为Redis可以妥善处理SIGTERM信号，所以直接kill -9也是可以的\r\nkill -9 PID&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt; &lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; font-size: 14pt; color: rgb(0, 128, 0);&quot;&gt;2、安装Redis的PHP扩展&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.1 安装phpize&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install php-devel&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.2 下载扩展源码包，直接用wget&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;#wget下载github上的文件  \r\nwget https://github.com/nicolasff/phpredis/archive/master.zip&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.3 如果没装unzip，需要先安装unzip&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;yum install unzip&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.4 解压master.zip&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;unzip master.zip&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.5 解压目录为phpredis-master，进入该文件夹，开始编译php扩展&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;phpize&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.6 配置环境&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;./configure&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.7 编译&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;make &amp;amp;&amp;amp; make install&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;编译完成后显示：&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;Build complete.  \r\nDon\'t forget to run \'make test\'.  Installing shared extensions:     /usr/lib64/php/modules/&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;进入/usr/lib64/php/modules/文件夹，发现redis.so的扩展&lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.8 修改/etc/php.ini,添加下面的扩展&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;extension=redis.so&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;2.9 重启服务器&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;service httpd restart&lt;/pre&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;最后查看phpinfo，显示如下，代表安装成功：&lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;https://images2015.cnblogs.com/blog/310680/201606/310680-20160615174957495-357136121.png&quot; alt=&quot;&quot; style=&quot;border: 0px; max-width: 900px; height: auto;&quot;&gt;&lt;/p&gt;\n&lt;p style=&quot;margin: 10px auto; white-space: normal; line-height: 1.5; color: rgb(75, 75, 75); font-family: Verdana, Geneva, Arial, Helvetica, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;line-height: 1.5; color: rgb(0, 128, 0); font-size: 14pt;&quot;&gt;3、PHP代码测试&lt;/span&gt;&lt;/p&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span class=&quot;cnblogs_code_copy&quot; style=&quot;padding-right: 5px; line-height: 1.5 !important;&quot;&gt;&lt;a title=&quot;复制代码&quot; href=&quot;/portal/admin_article/edit/id/20.html&quot; style=&quot;color: rgb(26, 139, 200); border: none !important;&quot;&gt;&lt;img src=&quot;https://common.cnblogs.com/images/copycode.gif&quot; alt=&quot;复制代码&quot; style=&quot;max-width: 900px; height: auto; border: none !important;&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;pre style=\'margin-top: 0px; margin-bottom: 0px; white-space: pre-wrap; overflow-wrap: break-word; font-family: &quot;Courier New&quot; !important;\'&gt;&amp;lt;?php$redis = new Redis();$redis-&amp;gt;connect(\'127.0.0.1\', 6379);$redis-&amp;gt;set(\'name\',\'zhou\', 10);$key_1 = $redis-&amp;gt;get(\'name\');echo $key_1;?&amp;gt;&lt;/pre&gt;\n&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span class=&quot;cnblogs_code_copy&quot; style=&quot;padding-right: 5px; line-height: 1.5 !important;&quot;&gt;&lt;a title=&quot;复制代码&quot; href=&quot;/portal/admin_article/edit/id/20.html&quot; style=&quot;color: rgb(26, 139, 200); border: none !important;&quot;&gt;&lt;img src=&quot;https://common.cnblogs.com/images/copycode.gif&quot; alt=&quot;复制代码&quot; style=&quot;max-width: 900px; height: auto; border: none !important;&quot;&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190531\\/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190531\\/5ed728f3890c9803a1bbbd4e1bb69ce7.jpg\",\"name\":\"u=1467446338,1392024203&amp;fm=58&amp;bpow=363&amp;bpoh=363.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES (22, 0, 1, 1, 2, 1, 1, 0, 0, 1454, 0, 0, 0, 1559371709, 1559371867, 1559371260, 0, '&quot;make: *** No targets specified and no makefile&quot;', '编译安装,phpize,make', '&quot;make: *** No targets specified and no makefile&quot;解决办法', '原创', 'portal/20190601/756f2f1ac05d573ad30aee7d95d05751.png', '\n&lt;p&gt;今天在centos服务器中安装cmake时，发现按照网上安装提示的方法：先下载cmake-&amp;gt;解压缩-&amp;gt;进入目录-&amp;gt;执行./configure，在输入make和make install，会出现“make: *** No targets specified and no makefile”错误。经过自己的实验，找到了如下总结和解决方法。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;&lt;span style=\'box-sizing: border-box; font-weight: 700; color: rgb(47, 47, 47); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; background-color: rgb(255, 255, 255);\'&gt;错误不在make，在于上一步./configure。并未完全配置好对应的make所需要的文件,上面有几个提示“no”的，代表缺少扩展&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p&gt;解决方法：&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;yum -y install gcc gcc-c++ autoconf automake\r\nyum -y install zlib zlib-devel openssl openssl-devel pcre pcre-devel （安装依赖zlib、openssl和pcre）&lt;/pre&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; color: rgb(47, 47, 47); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); word-break: break-word !important;\'&gt;&lt;br&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; color: rgb(47, 47, 47); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); word-break: break-word !important;\'&gt;在执行./configure命令。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; color: rgb(47, 47, 47); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); word-break: break-word !important;\'&gt;问题成功解决，可以继续执行make 和 make install命令了。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; color: rgb(47, 47, 47); font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); word-break: break-word !important;\'&gt;我用的是centos，其他系统请使用对应的安装方式。&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190601\\/756f2f1ac05d573ad30aee7d95d05751.png\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190601\\/756f2f1ac05d573ad30aee7d95d05751.png\",\"name\":\"mascot.png\"}]}');
INSERT INTO `cmf_portal_post` VALUES (23, 0, 1, 1, 2, 1, 1, 0, 0, 369, 0, 0, 0, 1561604579, 1562308941, 1561604520, 0, 'Phpstorm 2019 最新 激活码activation code', 'phpstorm', 'Phpstorm 2019 最新 激活码activation code', '原创', 'portal/20190601/c1212ad7cae96b6c63ed1e34f14f348c.jpg', '&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;YZVR7WDLV8-eyJsaWNlbnNlSWQiOiJZWlZSN1dETFY4IiwibGljZW5zZWVOYW1lIjoiamV0YnJhaW5zIGpzIiwiYXNzaWduZWVOYW1lIjoiIiwiYXNzaWduZWVFbWFpbCI6IiIsImxpY2Vuc2VSZXN0cmljdGlvbiI6IkZvciBlZHVjYXRpb25hbCB1c2Ugb25seSIsImNoZWNrQ29uY3VycmVudFVzZSI6ZmFsc2UsInByb2R1Y3RzIjpbeyJjb2RlIjoiSUkiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjYifSx7ImNvZGUiOiJBQyIsInBhaWRVcFRvIjoiMjAxOS0xMS0yNiJ9LHsiY29kZSI6IkRQTiIsInBhaWRVcFRvIjoiMjAxOS0xMS0yNiJ9LHsiY29kZSI6IlBTIiwicGFpZFVwVG8iOiIyMDE5LTExLTI2In0seyJjb2RlIjoiR08iLCJwYWlkVXBUbyI6IjIwMTktMTEtMjYifSx7ImNvZGUiOiJETSIsInBhaWRVcFRvIjoiMjAxOS0xMS0yNiJ9LHsiY29kZSI6IkNMIiwicGFpZFVwVG8iOiIyMDE5LTExLTI2In0seyJjb2RlIjoiUlMwIiwicGFpZFVwVG8iOiIyMDE5LTExLTI2In0seyJjb2RlIjoiUkMiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjYifSx7ImNvZGUiOiJSRCIsInBhaWRVcFRvIjoiMjAxOS0xMS0yNiJ9LHsiY29kZSI6IlBDIiwicGFpZFVwVG8iOiIyMDE5LTExLTI2In0seyJjb2RlIjoiUk0iLCJwYWlkVXBUbyI6IjIwMTktMTEtMjYifSx7ImNvZGUiOiJXUyIsInBhaWRVcFRvIjoiMjAxOS0xMS0yNiJ9LHsiY29kZSI6IkRCIiwicGFpZFVwVG8iOiIyMDE5LTExLTI2In0seyJjb2RlIjoiREMiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjYifSx7ImNvZGUiOiJSU1UiLCJwYWlkVXBUbyI6IjIwMTktMTEtMjYifV0sImhhc2giOiIxMTA1NzI3NC8wIiwiZ3JhY2VQZXJpb2REYXlzIjowLCJhdXRvUHJvbG9uZ2F0ZWQiOmZhbHNlLCJpc0F1dG9Qcm9sb25nYXRlZCI6ZmFsc2V9-rsJR5mlJcjibqRu1gQAMUCngMe8i+AOWIi+JZkNFYPET2G1ONcLPcIzoATTRi6ofkDm5l+3Y4HXjBPjVU6bHDdMBAzCnUqpXKsCknwSYyPSU0Y5pzuLvw6O9aPlQ46UBoTEC2BL5W6f11S7NlAq7tTbDuvFUynqSGAmTEfuZtKmzRmp20ejTPuMlSO7UqSkZvkg6YvSTrax1d2K+P9SAmVGZ9iC7AzBs4AwTf84QB9qHvE/Nh0oELSHWGG9hsZZ7sVghI/39/jPQFTp8GLFsl36ZPybPhGDam721zxS9H++/eJk23Jz3nxaRluE4dWmpHrDg1qBHp8qVpSFejg2QYw==-MIIElTCCAn2gAwIBAgIBCTANBgkqhkiG9w0BAQsFADAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBMB4XDTE4MTEwMTEyMjk0NloXDTIwMTEwMjEyMjk0NlowaDELMAkGA1UEBhMCQ1oxDjAMBgNVBAgMBU51c2xlMQ8wDQYDVQQHDAZQcmFndWUxGTAXBgNVBAoMEEpldEJyYWlucyBzLnIuby4xHTAbBgNVBAMMFHByb2QzeS1mcm9tLTIwMTgxMTAxMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxcQkq+zdxlR2mmRYBPzGbUNdMN6OaXiXzxIWtMEkrJMO/5oUfQJbLLuMSMK0QHFmaI37WShyxZcfRCidwXjot4zmNBKnlyHodDij/78TmVqFl8nOeD5+07B8VEaIu7c3E1N+e1doC6wht4I4+IEmtsPAdoaj5WCQVQbrI8KeT8M9VcBIWX7fD0fhexfg3ZRt0xqwMcXGNp3DdJHiO0rCdU+Itv7EmtnSVq9jBG1usMSFvMowR25mju2JcPFp1+I4ZI+FqgR8gyG8oiNDyNEoAbsR3lOpI7grUYSvkB/xVy/VoklPCK2h0f0GJxFjnye8NT1PAywoyl7RmiAVRE/EKwIDAQABo4GZMIGWMAkGA1UdEwQCMAAwHQYDVR0OBBYEFGEpG9oZGcfLMGNBkY7SgHiMGgTcMEgGA1UdIwRBMD+AFKOetkhnQhI2Qb1t4Lm0oFKLl/GzoRykGjAYMRYwFAYDVQQDDA1KZXRQcm9maWxlIENBggkA0myxg7KDeeEwEwYDVR0lBAwwCgYIKwYBBQUHAwEwCwYDVR0PBAQDAgWgMA0GCSqGSIb3DQEBCwUAA4ICAQAF8uc+YJOHHwOFcPzmbjcxNDuGoOUIP+2h1R75Lecswb7ru2LWWSUMtXVKQzChLNPn/72W0k+oI056tgiwuG7M49LXp4zQVlQnFmWU1wwGvVhq5R63Rpjx1zjGUhcXgayu7+9zMUW596Lbomsg8qVve6euqsrFicYkIIuUu4zYPndJwfe0YkS5nY72SHnNdbPhEnN8wcB2Kz+OIG0lih3yz5EqFhld03bGp222ZQCIghCTVL6QBNadGsiN/lWLl4JdR3lJkZzlpFdiHijoVRdWeSWqM4y0t23c92HXKrgppoSV18XMxrWVdoSM3nuMHwxGhFyde05OdDtLpCv+jlWf5REAHHA201pAU6bJSZINyHDUTB+Beo28rRXSwSh3OUIvYwKNVeoBY+KwOJ7WnuTCUq1meE6GkKc4D/cXmgpOyW/1SmBz3XjVIi/zprZ0zf3qH5mkphtg6ksjKgKjmx1cXfZAAX6wcDBNaCL+Ortep1Dh8xDUbqbBVNBL4jbiL3i3xsfNiyJgaZ5sX7i8tmStEpLbPwvHcByuf59qJhV/bZOl8KqJBETCDJcY6O2aqhTUy+9x93ThKs1GKrRPePrWPluud7ttlgtRveit/pcBrnQcXOl1rHq7ByB8CFAxNotRUYL9IF5n3wJOgkPojMy6jetQA5Ogc8Sm7RG6vg1yow==&lt;/pre&gt;', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190601\\/c1212ad7cae96b6c63ed1e34f14f348c.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190601\\/c1212ad7cae96b6c63ed1e34f14f348c.jpg\",\"name\":\"u=929541592,2969632712&amp;fm=26&amp;gp=0.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES (24, 0, 1, 1, 2, 1, 1, 0, 0, 45, 0, 0, 0, 1562577333, 1562577348, 1562577120, 0, 'Socket 与 WebSocket', 'socket 和websocket区别', 'socket 和websocket区别', 'https://blog.zengrong.net/post/2199.html', 'portal/20190601/c1212ad7cae96b6c63ed1e34f14f348c.jpg', '\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;去年光棍节的时候，我写过一篇 &lt;a href=&quot;https://blog.zengrong.net/post/1965.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;quick-cocos2d-x 中的 socket 技术选择：LuaSocket 和 WebSocket&lt;/a&gt; 。这篇文章介绍了我为何决定在项目中使用 LuaSocket 。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;现在想起来，当时对 WebSocket 是很感兴趣的，但由于服务端的限制，最终依然选择了 LuaSocket。我后来对 &lt;a href=&quot;https://blog.zengrong.net/post/1980.html&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;LuaSocket 进行了封装&lt;/a&gt;，使其更好用。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;现在，面对一个全新的项目，我自然而然地选择了 WebSocket。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;因此，我需要了解下面这些问题：&lt;/p&gt;\n&lt;ol style=\'box-sizing: border-box; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\' class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;Socket 和 WebSocket 有哪些区别和联系？&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;WebSocket 和 HTML5 是什么关系？&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;必须在浏览器中才能使用 WebSocket 吗？&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;WebSocket 能和 Socket 一样传输 raw 数据么？&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;WebSocket 和 Socket 相比会多耗费流量么？&lt;/p&gt;&lt;/li&gt;\n&lt;/ol&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;但是，目前网上全面介绍这两种协议的中文文章并不多，或者说不够全面。我无法找到一篇文章能解决上面的所有问题。因此，我写了本文，把找到的 Socket 和 WebSocket 的相关资料做一个梳理，以方便理解。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;本文并不能直接完整回答上面提出的几个问题，但读完本文，要理解上面的那些问题，是很容易的事。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;由于能力有限，本文不可能很长。而且，技术细节并非所有人都愿意仔细了解。本文包含了大量的外部链接，跟随这些链接，可以找到足够多的细节，满足你/我的求知欲。&lt;/p&gt;\n&lt;hr style=\'box-sizing: content-box; height: 0px; margin-top: 21px; margin-bottom: 21px; border-right: 0px; border-bottom: 0px; border-left: 0px; border-image: initial; border-top-style: solid; border-top-color: rgb(221, 221, 221); color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;\n&lt;h1 id=&quot;1-概述&quot; style=\'box-sizing: border-box; font-size: 2.6em; margin: 21px 0px 0.6667em; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; line-height: 1.2em; color: rgb(34, 34, 34); text-rendering: optimizelegibility; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;\n&lt;a href=&quot;https://blog.zengrong.net/post/2199.html#1-%E6%A6%82%E8%BF%B0&quot; class=&quot;headerlink&quot; title=&quot;1. 概述&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;/a&gt;1. 概述&lt;/h1&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;选择了 WebSocket 技术之后，不可避免的，我要将它和其他协议以及技术做一下比较。最常见的，就是需要比较 WebSocket 与 HTTP、Socket 技术的异同。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;WebSocket 是为了满足基于 Web 的日益增长的实时通信需求而产生的。在传统的 Web 中，要实现实时通信，通用的方式是采用 HTTP 协议不断发送请求。但这种方式即浪费带宽（HTTP HEAD 是比较大的），又消耗服务器 CPU 占用（没有信息也要接受请求）。（下图来自 &lt;a href=&quot;http://www.websocket.org/quantum.html&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;WebSocket.org&lt;/a&gt;）&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;https://blog.zengrong.net/uploads/2014/12/latency-comparison.gif&quot; title=&quot;Latency comparison between the polling and WebSocket applications&quot; class=&quot;fancybox&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;img src=&quot;https://blog.zengrong.net/uploads/2014/12/latency-comparison.gif&quot; alt=&quot;Latency comparison between the polling and WebSocket applications&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 97.5%; margin: 15px auto; display: block; height: auto;&quot;&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;而是用 WebSocket 技术，则会大幅降低上面提到的消耗：（下图来自 &lt;a href=&quot;http://www.websocket.org/quantum.html&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;websocket.org&lt;/a&gt;）&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;https://blog.zengrong.net/uploads/2014/12/poll-ws-compare.gif&quot; title=&quot;Comparison of the unnecessary network throughput overhead between the polling and the WebSocket applications&quot; class=&quot;fancybox&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;img src=&quot;https://blog.zengrong.net/uploads/2014/12/poll-ws-compare.gif&quot; alt=&quot;Comparison of the unnecessary network throughput overhead between the polling and the WebSocket applications&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 97.5%; margin: 15px auto; display: block; height: auto;&quot;&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;关于更详细的描述，尹立的这篇文章讲得非常好：&lt;a href=&quot;http://blog.csdn.net/yl02520/article/details/7298309&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;WebSocket（2）–为什么引入WebSocket协议&lt;/a&gt; 。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;那么，WebSocket 到底与 HTTP 协议到底是一个什么样的关系呢？它和 Socket 又有什么联系？这就要讲到 OSI 模型和 TCP/IP 协议族。&lt;a style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186);&quot; href&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;h1 id=&quot;2-OSI-模型与-TCP-IP&quot; style=\'box-sizing: border-box; font-size: 2.6em; margin: 21px 0px 0.6667em; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; line-height: 1.2em; color: rgb(34, 34, 34); text-rendering: optimizelegibility; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;\n&lt;a href=&quot;https://blog.zengrong.net/post/2199.html#2-OSI-%E6%A8%A1%E5%9E%8B%E4%B8%8E-TCP-IP&quot; class=&quot;headerlink&quot; title=&quot;2. OSI 模型与 TCP/IP&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;/a&gt;2. OSI 模型与 TCP/IP&lt;/h1&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;以下是 &lt;a href=&quot;http://zh.wikipedia.org/wiki/OSI%E6%A8%A1%E5%9E%8B&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;维基百科&lt;/a&gt; 中关于OSI 模型的说明：&lt;/p&gt;\n&lt;blockquote style=\'box-sizing: border-box; padding: 10.5px 21px; margin: 0px 0px 21px; font-size: 18.75px; border-left: 5px solid rgb(221, 221, 221); color: rgb(111, 111, 111); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Segoe UI&quot;, Ubuntu, &quot;Hiragino Sans GB&quot;, 楷体, STKaiti;\'&gt;开放式系统互联通信参考模型（英语：Open System Interconnection Reference Model，ISO/IEC 7498-1），简称为OSI模型（OSI model），一种概念模型，由国际标准化组织（ISO）提出，一个试图使各种计算机在世界范围内互连为网络的标准框架。&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;而 TCP/IP 协议可以看做是对 OSI 模型的一种简化（以下内容来自 &lt;a href=&quot;http://zh.wikipedia.org/wiki/TCP/IP%E5%8D%8F%E8%AE%AE%E6%97%8F&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;维基百科&lt;/a&gt;）：&lt;/p&gt;\n&lt;blockquote style=\'box-sizing: border-box; padding: 10.5px 21px; margin: 0px 0px 21px; font-size: 18.75px; border-left: 5px solid rgb(221, 221, 221); color: rgb(111, 111, 111); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Segoe UI&quot;, Ubuntu, &quot;Hiragino Sans GB&quot;, 楷体, STKaiti;\'&gt;它将软件通信过程抽象化为四个抽象层，采取协议堆叠的方式，分别实作出不同通信协议。协议套组下的各种协议，依其功能不同，被分别归属到这四个阶层之中&lt;a href=&quot;http://blog.csdn.net/yaopeng_2005/article/details/7064869&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;7&lt;/a&gt;，常被视为是简化的七层OSI模型。&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;这里有一张图详细介绍了 TCP/IP 协议族中的各个协议在 OSI模型 中的分布，一图胜千言（下图来自 &lt;a href=&quot;http://www.colasoft.com.cn/download/protocols_map.php&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;科来&lt;/a&gt;）：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;https://blog.zengrong.net/uploads/2014/12/TCP-IP.gif&quot; title=&quot;TCP/IP 和 OSI 模型&quot; class=&quot;fancybox&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;img src=&quot;https://blog.zengrong.net/uploads/2014/12/TCP-IP.gif&quot; alt=&quot;TCP/IP 和 OSI 模型&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 97.5%; margin: 15px auto; display: block; height: auto;&quot;&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;TCP/IP 协议和 OSI 模型的内容，在互联网上有很多。我没有必要再次介绍它们。在这里，我们只需要知道，HTTP、WebSocket 等协议都是处于 OSI 模型的最高层： &lt;strong style=&quot;box-sizing: border-box;&quot;&gt;应用层&lt;/strong&gt; 。而 IP 协议工作在网络层（第3层），TCP 协议工作在传输层（第4层）。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;至于 OSI 模型的各个层次都有什么系统和它们对应，这里有篇很好的文章可以满足大家的求知欲：&lt;a href=&quot;http://blog.csdn.net/yaopeng_2005/article/details/7064869&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;OSI七层模型详解&lt;/a&gt; 。&lt;/p&gt;\n&lt;h1 id=&quot;3-WebSocket、HTTP-与-TCP&quot; style=\'box-sizing: border-box; font-size: 2.6em; margin: 21px 0px 0.6667em; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; line-height: 1.2em; color: rgb(34, 34, 34); text-rendering: optimizelegibility; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;\n&lt;a href=&quot;https://blog.zengrong.net/post/2199.html#3-WebSocket%E3%80%81HTTP-%E4%B8%8E-TCP&quot; class=&quot;headerlink&quot; title=&quot;3. WebSocket、HTTP 与 TCP&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;/a&gt;3. WebSocket、HTTP 与 TCP&lt;/h1&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;从上面的图中可以看出，HTTP、WebSocket 等应用层协议，都是基于 TCP 协议来传输数据的。我们可以把这些高级协议理解成对 TCP 的封装。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;既然大家都使用 TCP 协议，那么大家的连接和断开，都要遵循 &lt;a href=&quot;http://blog.csdn.net/whuslei/article/details/6667471&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;TCP 协议中的三次握手和四次握手&lt;/a&gt; ，只是在连接之后发送的内容不同，或者是断开的时间不同。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;更详细内容可阅读：&lt;a href=&quot;http://www.seanyxie.com/wireshark%E6%8A%93%E5%8C%85%E5%9B%BE%E8%A7%A3-tcp%E4%B8%89%E6%AC%A1%E6%8F%A1%E6%89%8B%E5%9B%9B%E6%AC%A1%E6%8C%A5%E6%89%8B%E8%AF%A6%E8%A7%A3/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;wireshark抓包图解 TCP三次握手/四次挥手详解&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;对于 WebSocket 来说，它必须依赖 &lt;a href=&quot;http://tools.ietf.org/html/rfc6455#section-4&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;HTTP 协议进行一次握手&lt;/a&gt; ，握手成功后，数据就直接从 TCP 通道传输，与 HTTP 无关了。&lt;/p&gt;\n&lt;h1 id=&quot;4-Socket-与-WebScoket&quot; style=\'box-sizing: border-box; font-size: 2.6em; margin: 21px 0px 0.6667em; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; line-height: 1.2em; color: rgb(34, 34, 34); text-rendering: optimizelegibility; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;\n&lt;a href=&quot;https://blog.zengrong.net/post/2199.html#4-Socket-%E4%B8%8E-WebScoket&quot; class=&quot;headerlink&quot; title=&quot;4. Socket 与 WebScoket&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;/a&gt;4. Socket 与 WebScoket&lt;/h1&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;http://en.wikipedia.org/wiki/Network_socket&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;Socket&lt;/a&gt; 其实并不是一个协议。它工作在 OSI 模型会话层（第5层），是为了方便大家直接使用更底层协议（一般是 &lt;a href=&quot;http://en.wikipedia.org/wiki/Transmission_Control_Protocol&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;TCP&lt;/a&gt; 或 &lt;a href=&quot;http://en.wikipedia.org/wiki/User_Datagram_Protocol&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;UDP&lt;/a&gt; ）而存在的一个抽象层。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;最早的一套 Socket API 是 &lt;a href=&quot;http://en.wikipedia.org/wiki/Berkeley_sockets&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;Berkeley sockets&lt;/a&gt; ，采用 C 语言实现。它是 Socket 的事实标准，POSIX sockets 是基于它构建的，多种编程语言都遵循这套 API，在 JAVA、Python 中都能看到这套 API 的影子。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;下面摘录一段更容易理解的文字（来自 &lt;a href=&quot;http://www.a8z8.com/html/2012/tech_1214/133.html&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;http和socket之长连接和短连接区别&lt;/a&gt;）：&lt;/p&gt;\n&lt;blockquote style=\'box-sizing: border-box; padding: 10.5px 21px; margin: 0px 0px 21px; font-size: 18.75px; border-left: 5px solid rgb(221, 221, 221); color: rgb(111, 111, 111); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Segoe UI&quot;, Ubuntu, &quot;Hiragino Sans GB&quot;, 楷体, STKaiti;\'&gt;Socket是应用层与TCP/IP协议族通信的中间软件抽象层，它是一组接口。在设计模式中，Socket其实就是一个门面模式，它把复杂的TCP/IP协议族隐藏在Socket接口后面，对用户来说，一组简单的接口就是全部，让Socket去组织数据，以符合指定的协议。&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;https://blog.zengrong.net/uploads/2014/12/socket.gif&quot; title=&quot;Socket是什么&quot; class=&quot;fancybox&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;img src=&quot;https://blog.zengrong.net/uploads/2014/12/socket.gif&quot; alt=&quot;Socket是什么&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 97.5%; margin: 15px auto; display: block; height: auto;&quot;&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;https://blog.zengrong.net/uploads/2014/12/socket-traffic.gif&quot; title=&quot;Socket通信过程&quot; class=&quot;fancybox&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;img src=&quot;https://blog.zengrong.net/uploads/2014/12/socket-traffic.gif&quot; alt=&quot;Socket通信过程&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 97.5%; margin: 15px auto; display: block; height: auto;&quot;&gt;&lt;/a&gt;&lt;/p&gt;\n&lt;blockquote style=\'box-sizing: border-box; padding: 10.5px 21px; margin: 0px 0px 21px; font-size: 18.75px; border-left: 5px solid rgb(221, 221, 221); color: rgb(111, 111, 111); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Segoe UI&quot;, Ubuntu, &quot;Hiragino Sans GB&quot;, 楷体, STKaiti;\'&gt;主机 A 的应用程序要能和主机 B 的应用程序通信，必须通过 Socket 建立连接，而建立 Socket 连接必须需要底层 TCP/IP 协议来建立 TCP 连接。建立 TCP 连接需要底层 IP 协议来寻址网络中的主机。我们知道网络层使用的 IP 协议可以帮助我们根据 IP 地址来找到目标主机，但是一台主机上可能运行着多个应用程序，如何才能与指定的应用程序通信就要通过 TCP 或 UPD 的地址也就是端口号来指定。这样就可以通过一个 Socket 实例唯一代表一个主机上的一个应用程序的通信链路了。&lt;/p&gt;&lt;/blockquote&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;而 &lt;a href=&quot;http://www.websocket.org/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;WebSocket&lt;/a&gt; 则不同，它是一个完整的 &lt;a href=&quot;http://datatracker.ietf.org/doc/rfc6455/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;应用层协议&lt;/a&gt;，包含一套标准的 &lt;a href=&quot;http://dev.w3.org/html5/websockets/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;API&lt;/a&gt; 。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;所以，从使用上来说，WebSocket 更易用，而 Socket 更灵活。&lt;/p&gt;\n&lt;h1 id=&quot;5-HTML5-与-WebSocket&quot; style=\'box-sizing: border-box; font-size: 2.6em; margin: 21px 0px 0.6667em; font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; line-height: 1.2em; color: rgb(34, 34, 34); text-rendering: optimizelegibility; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;\n&lt;a href=&quot;https://blog.zengrong.net/post/2199.html#5-HTML5-%E4%B8%8E-WebSocket&quot; class=&quot;headerlink&quot; title=&quot;5. HTML5 与 WebSocket&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;&lt;/a&gt;5. HTML5 与 WebSocket&lt;/h1&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;a href=&quot;http://dev.w3.org/html5/websockets/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;WebSocket API&lt;/a&gt; 是 &lt;a href=&quot;http://en.wikipedia.org/wiki/HTML5&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;HTML5&lt;/a&gt; 标准的一部分， 但这并不代表 WebSocket 一定要用在 HTML 中，或者只能在基于浏览器的应用程序中使用。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; margin-top: 0px; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;实际上，许多语言、框架和服务器都提供了 WebSocket 支持，例如：&lt;/p&gt;\n&lt;ul style=\'box-sizing: border-box; margin-bottom: 10.5px; color: rgb(34, 34, 34); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\' class=&quot; list-paddingleft-2&quot;&gt;\n&lt;li&gt;&lt;p&gt;基于 C 的 &lt;a href=&quot;https://libwebsockets.org/trac/libwebsockets&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;libwebsocket.org&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;基于 Node.js 的 &lt;a href=&quot;http://socket.io/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;Socket.io&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;基于 Python 的 &lt;a href=&quot;https://github.com/Lawouach/WebSocket-for-Python&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;ws4py&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;基于 C++ 的 &lt;a href=&quot;http://www.zaphoyd.com/websocketpp&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;WebSocket++&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;Apache 对 WebSocket 的支持： &lt;a href=&quot;http://httpd.apache.org/docs/2.4/mod/mod_proxy_wstunnel.html&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;Apache Module mod_proxy_wstunnel&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;Nginx 对 WebSockets 的支持： &lt;a href=&quot;http://nginx.com/blog/websocket-nginx/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;NGINX as a WebSockets Proxy&lt;/a&gt; 、 &lt;a href=&quot;http://nginx.com/news/nginx-websockets/&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;NGINX Announces Support for WebSocket Protocol&lt;/a&gt; 、&lt;a href=&quot;http://nginx.org/en/docs/http/websocket.html&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;WebSocket proxying&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;li&gt;&lt;p&gt;lighttpd 对 WebSocket 的支持：&lt;a href=&quot;https://github.com/nori0428/mod_websocket&quot; target=&quot;_blank&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: rgb(0, 140, 186); text-decoration-line: none;&quot;&gt;mod_websocket&lt;/a&gt;&lt;/p&gt;&lt;/li&gt;\n&lt;/ul&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190601\\/c1212ad7cae96b6c63ed1e34f14f348c.jpg\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190601\\/c1212ad7cae96b6c63ed1e34f14f348c.jpg\",\"name\":\"u=929541592,2969632712&amp;fm=26&amp;gp=0.jpg\"}]}');
INSERT INTO `cmf_portal_post` VALUES (25, 0, 1, 1, 2, 1, 1, 0, 0, 10, 0, 0, 0, 1563263416, 1563263422, 1563263220, 0, '在MAC版MAMP环境下为PHP7.x安装redis扩展', 'redis扩展', '在MAC版MAMP环境下为PHP7.x安装redis扩展', 'https://blog.csdn.net/Csoap2/article/details/88418528', 'portal/20190716/91691bd650e628836a76b4466b1ef6d7.png', '\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;在 MacBook 上安装了 MAMP 开发环境，来调试一个 PHP 的网站项目。MAMP &amp;amp; MAMP Pro软件是一款很好的在MAC下面运行的网站集成环境软件，其由Apache+MySQL+PHP+动态DNS配置构成，PHP的版本可以动态切换到最新版，功能强大，配置简单，十分便于本地调试。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t10.baidu.com/it/u=2313372741,4256511677&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=640&amp;amp;h=481&amp;amp;s=3D287832110F614D54F521CF0100F0B0&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：MAMP 设置一个虚拟主机及网站安装&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;后面他想在PHP7的版本下面安装Redis的扩展程序，以配合自己的程序开发。无奈在这位群友屡次安装失败之后，找到我希望来解脱他在面对 terminal（命令行）抛出的一大串错误消息时的痛苦。在这次的解决过程中自己也相当于完成了一次学习，现在就发现的问题和需要注意的事项写成一篇文章。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;在 MAC 版 MAMP 环境下为 PHP7.x 安装 redis 扩展的过程。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;一、首先解决一些安装依赖的问题&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;1、（Mac 电脑中已安装了 Homebrew 包管理器的可忽略此步）如果你的 MAC 电脑未安装有 Homebrew——一个包管理器，需要先安装 Homebrew 包管理器，后面步骤中的 ./configure 命令和安装 redis 服务端的命令等需要 brew 为其安装组件。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;打开 terminal，安装 Homebrew：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;/usr/bin/ruby -e &quot;$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)&quot;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;将以上命令粘贴至终端（terminal），参考： https://brew.sh/index_zh-cn.html 。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;脚本在执行过程中会有多次暂停，并说明将它将做什么；同时也会边执行、边需要联网下载资源，下载速度不会很快（因为是国内网络访问国外站点资源），请耐心等待安装完成。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;2、（Mac 电脑中已安装了 configure 配置组件的可忽略此步）使用 brew 命令安装 configure 配置组件。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;brew install autoconf wget&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;二、下载 php-redis 扩展组件的安装包&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;在终端中使用 git clone 命令下载 php-redis 扩展组件的安装包：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;git clone https://github.com/nicolasff/phpredis.git&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;当然没有用 git 也没关系，可以自己去找官网下载：try https://github.com/nicolasff/phpredis.git 。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t12.baidu.com/it/u=1639678433,1047096273&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=639&amp;amp;h=338&amp;amp;s=A091C5303C88D40D0C7420D20000C0B1&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：在GitHub的phpredis仓库下载develo&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;下载完成后系统会自动解压安装包文件。如果未自动解压，请手动解压或使用 unzip phpredis.zip 命令解压。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;解压后使用 cd 命令进入 phpredis 目录：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;cd phpredis/&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;注意：phpredis/ 目录的路径如果不对，请按照其在自己电脑上的完整路径来切换，如 ./phpredis-php7/。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;三、使用 phpize 命令编译生成 configure 配置文件&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;1、phpize 命令：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;此时终端显示的当前目录是 phpredis，在终端中执行以下命令：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;/Applications/MAMP/bin/php/php7.2.1/bin/phpize --with-php-config=/Applications/MAMP/bin/php/php7.2.1/bin/php-config&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;如果出现此错误：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;Cannot find autoconf. Please check your autoconf installation and the $PHP_AUTOCONF environment variable. Then, rerun this script.&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;则是因为此命令依赖 autoconf 工具，需要安装 autoconf 工具（参考第一步中的第2点）。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;如果执行成功，会提示如下信息：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t11.baidu.com/it/u=2260770349,1912336145&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=640&amp;amp;h=106&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：phpize 命令执行成功截图。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;2、本步骤需要注意事项：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;在这一步需要注意的一个问题是，在使用 phpize 编译命令时，一定要使用 /Applications/MAMP/bin/php/php7.2.1/bin/phpize 这个应用程序 MAMP 下的 php7.x 的 bin 目录来执行 phpize。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;因为 MAC 自带了 php 环境，可以使用 MAMP 将 php 配到命令行中，这时候你使用的 php -v 是 MAMP 加到环境变量的 php 版本，但是你如果直接使用 phpize 命令（未指定应用程序 MAMP 下的 php7.x 的 bin 目录的 phpize），那么 phpize 编译的将是系统自带的那个 php 环境，所以直接使用 phpize 编译扩展的时候，会编译到系统自带的 PHP 环境下，故而须注意在使用 phpize 命令时一定要使用的是全路径，而且上面的 php/php{版本}/ 目录路径有可能跟我的不一样，请自行核对并调整 。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;四、配置、编译并安装 phpredis&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;1、配置 phpredis 命令。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;此时终端显示的当前目录是 phpredis，在终端中执行以下命令：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;./configure --with-php-config=/Applications/MAMP/bin/php/php7.2.1/bin/php-config&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;如果执行出错，提示“未找到指定目录”之类的信息，也是因为此命令依赖 autoconf 工具，需要安装 autoconf 工具（参考第一步中的第2点）。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;如果执行成功，像这样：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t12.baidu.com/it/u=2330634188,2198640965&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=640&amp;amp;h=427&amp;amp;s=ABE273235BBCB6C84ED5F50B0000E0C2&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：./configure 命令执行成功截图。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;2、编译与安装 phpredis 命令（make 是编译，make install 是安装）。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;make &amp;amp;&amp;amp; make install&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;安装成功后，这时会在 phpredis/modules 目录下生成了 redis.so 文件。同时 redis.so 会自动复制到/Applications/MAMP/bin/php/php7.0.8/lib/php/extensions/no-debug-non-zts-20171025/ 目录下（extensions 后面带日期部分的那一级目录可能会与我的不一样，请以自己电脑上的为准）。如果该目录下不存在 redis.so，可手动将 phpredis/modules 目录下的 redis.so 复制过去。至此，phpredis 扩展已安装成功。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;五、修改 php.ini&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;如果直接在对应php版本中修改php.ini会失效（这里遇到个坑），建议在 MAMP Pro 软件中打开 php.ini 文件并修改，因为在终端中使用 vim 命令编辑 php.ini 文件或手动打开编辑 php.ini 文件保存后可能不会起作用，所以建议在 MAMP Pro 软件中打开 php.ini 文件并修改：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t12.baidu.com/it/u=2448095372,2140049450&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=639&amp;amp;h=259&amp;amp;s=F5259A545A65310B861E8AC30300B0BF&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：MAMP 中打开 php.ini。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;在 php.ini 中搜索 &quot;extension=&quot;，在后面添加一行：&quot;extension=redis.so&quot;，保存后重启 MAMP。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t12.baidu.com/it/u=185617445,1884557620&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=598&amp;amp;h=503&amp;amp;s=4FC2ED1A110E454D4A69A5DB0000D0B3&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：修改 php.ini 文件。&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;六、检查 redis 组件是否安装成功&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;新建一个 phpinfoTest.php 文件，输入：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&amp;lt;?php phpinfo(); ?&amp;gt;&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;保存后运行，查看是否有 redis 关键字：&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;&lt;img alt=&quot;&quot; class=&quot;has&quot; src=&quot;http://t10.baidu.com/it/u=3347052243,4151692149&amp;amp;fm=173&amp;amp;app=25&amp;amp;f=JPEG?w=640&amp;amp;h=100&quot; style=&quot;box-sizing: border-box; outline: 0px; margin: 0px; padding: 0px; max-width: 100%; overflow-wrap: break-word; cursor: zoom-in;&quot;&gt;图：phpinfo 中的 redis 信息。&lt;/p&gt;\n&lt;p&gt;&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190716\\/91691bd650e628836a76b4466b1ef6d7.png\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190716\\/91691bd650e628836a76b4466b1ef6d7.png\",\"name\":\"mamp-pro-for-mac-150x150.png\"}]}');
INSERT INTO `cmf_portal_post` VALUES (26, 0, 1, 1, 2, 1, 1, 0, 0, 1, 0, 0, 0, 1563515229, 1563515234, 1563515040, 0, 'mac 免密码登录服务器与免密码git提交', 'git免密', 'git 记住密码', 'https://blog.csdn.net/hoooooly/article/details/81365188', 'portal/20190719/a7d329bb8b33fac98863605f0bedb3b9.png', '\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;//本地执行\r\n//生成key\r\nssh-keygen -t rsa -C &quot;你的Git注册邮箱&quot; -b 4096\r\n \r\n//复制本地 id_rsa.pub\r\ncat ~/.ssh/id_rsa.pub\r\n//将cat的内容复制\r\n \r\n//服务器执行\r\n//服务器添加 \r\nvim /root/.ssh/authorized_keys\r\n//将复制的内容粘贴到authorized_keys的最后一行&lt;/pre&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;再次登录服务器,就可以免密码登录了&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;但是有的不行 依然要输入本地mac密码&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;错误提示为&lt;/p&gt;\n&lt;pre class=&quot;has&quot; style=&quot;box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 24px; padding: 8px; position: relative; font-family: Consolas, Inconsolata, Courier, monospace; white-space: pre-wrap; overflow-wrap: break-word; overflow-x: auto; font-size: 14px; line-height: 22px; background-color: rgb(255, 255, 255);&quot;&gt;Enter passphrase for key \'/Users/ymj/.ssh/id_rsa\':&lt;/pre&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;意思是输入本地mac登录密码&lt;/p&gt;\n&lt;p style=\'box-sizing: border-box; outline: 0px; margin-top: 0px; margin-bottom: 16px; padding: 0px; font-family: &quot;Microsoft YaHei&quot;, &quot;SF Pro Display&quot;, Roboto, Noto, Arial, &quot;PingFang SC&quot;, sans-serif; color: rgb(77, 77, 77); line-height: 26px; overflow-x: auto; overflow-wrap: break-word; white-space: normal; background-color: rgb(255, 255, 255);\'&gt;Stack Overflow找到解决办法&lt;/p&gt;\n&lt;pre class=&quot;brush:php;toolbar:false&quot;&gt;//本地执行\r\nssh-add ~/.ssh/id_rsa&lt;/pre&gt;\n&lt;p&gt;搞定！&lt;br&gt;&lt;/p&gt;\n', NULL, '{\"audio\":\"\",\"video\":\"\",\"thumbnail\":\"portal\\/20190719\\/a7d329bb8b33fac98863605f0bedb3b9.png\",\"template\":\"article\",\"photos\":[{\"url\":\"portal\\/20190719\\/a7d329bb8b33fac98863605f0bedb3b9.png\",\"name\":\"logo@2x.png\"}]}');
COMMIT;

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_tag` VALUES (2, 1, 0, 0, 'MQ消息队列');
INSERT INTO `cmf_portal_tag` VALUES (3, 1, 0, 0, 'Mysql');
INSERT INTO `cmf_portal_tag` VALUES (4, 1, 0, 0, '单表优化');
INSERT INTO `cmf_portal_tag` VALUES (5, 1, 0, 0, 'mysql优化');
INSERT INTO `cmf_portal_tag` VALUES (6, 1, 0, 0, '测试');
INSERT INTO `cmf_portal_tag` VALUES (7, 1, 0, 0, 'PHP使用MQ消息队列');
INSERT INTO `cmf_portal_tag` VALUES (8, 1, 0, 0, 'PHP');
INSERT INTO `cmf_portal_tag` VALUES (9, 1, 0, 0, 'phpspider');
INSERT INTO `cmf_portal_tag` VALUES (10, 1, 0, 0, '爬虫');
INSERT INTO `cmf_portal_tag` VALUES (11, 1, 0, 0, '隐藏Apache、PHP版本信息');
INSERT INTO `cmf_portal_tag` VALUES (12, 1, 0, 0, 'redis扩展');
INSERT INTO `cmf_portal_tag` VALUES (13, 1, 0, 0, 'redis');
INSERT INTO `cmf_portal_tag` VALUES (14, 1, 0, 0, '编译安装');
INSERT INTO `cmf_portal_tag` VALUES (15, 1, 0, 0, 'phpize');
INSERT INTO `cmf_portal_tag` VALUES (16, 1, 0, 0, 'make');
INSERT INTO `cmf_portal_tag` VALUES (17, 1, 0, 0, 'phpstorm');
INSERT INTO `cmf_portal_tag` VALUES (18, 1, 0, 0, 'socket 和websocket区别');
INSERT INTO `cmf_portal_tag` VALUES (19, 1, 0, 0, 'git免密');
COMMIT;

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------
BEGIN;
INSERT INTO `cmf_portal_tag_post` VALUES (3, 3, 2, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (4, 4, 2, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (5, 5, 2, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (6, 6, 15, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (7, 6, 16, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (8, 6, 17, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (10, 8, 1, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (11, 2, 1, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (12, 9, 18, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (13, 10, 18, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (14, 8, 18, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (15, 11, 19, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (16, 12, 20, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (17, 13, 20, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (18, 12, 21, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (19, 13, 21, 0);
INSERT INTO `cmf_portal_tag_post` VALUES (20, 14, 22, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (21, 15, 22, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (22, 16, 22, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (23, 17, 23, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (24, 18, 24, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (25, 12, 25, 1);
INSERT INTO `cmf_portal_tag_post` VALUES (26, 19, 26, 1);
COMMIT;

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------
BEGIN;
INSERT INTO `cmf_recycle_bin` VALUES (1, 4, 1545991852, 'portal_category', 'Mysql 笔记', 0);
INSERT INTO `cmf_recycle_bin` VALUES (2, 3, 1545991873, 'portal_category', 'Mysql 笔记', 0);
INSERT INTO `cmf_recycle_bin` VALUES (4, 2, 1546065578, 'portal_post', 'mysql单表优化', 1);
INSERT INTO `cmf_recycle_bin` VALUES (5, 17, 1546076567, 'portal_post', '测试3', 1);
INSERT INTO `cmf_recycle_bin` VALUES (6, 16, 1546076570, 'portal_post', '测试2', 1);
INSERT INTO `cmf_recycle_bin` VALUES (7, 15, 1546076575, 'portal_post', '测试1', 1);
INSERT INTO `cmf_recycle_bin` VALUES (9, 9, 1559185471, 'portal_category', 'manman', 0);
INSERT INTO `cmf_recycle_bin` VALUES (10, 21, 1559294505, 'portal_post', 'CentOS下安装Redis及Redis的PHP扩展', 2);
COMMIT;

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES (2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');
COMMIT;

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------
BEGIN;
INSERT INTO `cmf_role_user` VALUES (4, 2, 2);
INSERT INTO `cmf_role_user` VALUES (5, 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------
BEGIN;
INSERT INTO `cmf_route` VALUES (1, 5000, 1, 2, 'portal/List/index?id=1', 'service');
INSERT INTO `cmf_route` VALUES (2, 4999, 1, 2, 'portal/Article/index?cid=1', 'service/:id');
INSERT INTO `cmf_route` VALUES (3, 5000, 1, 2, 'portal/List/index?id=2', 'php');
INSERT INTO `cmf_route` VALUES (4, 4999, 1, 2, 'portal/Article/index?cid=2', 'php/:id');
INSERT INTO `cmf_route` VALUES (5, 5000, 1, 2, 'portal/List/index?id=3', 'mysql');
INSERT INTO `cmf_route` VALUES (6, 4999, 1, 2, 'portal/Article/index?cid=3', 'mysql/:id');
INSERT INTO `cmf_route` VALUES (7, 5000, 1, 2, 'portal/List/index?id=4', 'mysql');
INSERT INTO `cmf_route` VALUES (8, 4999, 1, 2, 'portal/Article/index?cid=4', 'mysql/:id');
INSERT INTO `cmf_route` VALUES (9, 5000, 1, 2, 'portal/List/index?id=5', 'db');
INSERT INTO `cmf_route` VALUES (10, 4999, 1, 2, 'portal/Article/index?cid=5', 'db/:id');
INSERT INTO `cmf_route` VALUES (11, 5000, 1, 2, 'portal/List/index?id=6', 'm1223');
INSERT INTO `cmf_route` VALUES (12, 4999, 1, 2, 'portal/Article/index?cid=6', 'm1223/:id');
INSERT INTO `cmf_route` VALUES (13, 5000, 1, 2, 'portal/List/index?id=7', 'dbhouse');
INSERT INTO `cmf_route` VALUES (14, 4999, 1, 2, 'portal/Article/index?cid=7', 'dbhouse/:id');
INSERT INTO `cmf_route` VALUES (15, 5000, 1, 2, 'portal/List/index?id=8', 'life');
INSERT INTO `cmf_route` VALUES (16, 4999, 1, 2, 'portal/Article/index?cid=8', 'life/:id');
INSERT INTO `cmf_route` VALUES (17, 5000, 1, 2, 'portal/List/index?id=9', 'man');
INSERT INTO `cmf_route` VALUES (18, 4999, 1, 2, 'portal/Article/index?cid=9', 'man/:id');
INSERT INTO `cmf_route` VALUES (19, 10000, 1, 1, 'portal/Chat/index', 'chat');
COMMIT;

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
BEGIN;
INSERT INTO `cmf_slide` VALUES (1, 1, 0, '王晓宇个人博客', '');
COMMIT;

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme` VALUES (1, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');
INSERT INTO `cmf_theme` VALUES (2, 0, 0, 0, 0, 'blog', 'Blog', '1.1.0', 'http://www.wuwuseo.com', '', 'wuwu', 'http://www.wuwuseo.com', 'zh-cn', 'Blog模板', 'Blog模板');
COMMIT;

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
BEGIN;
INSERT INTO `cmf_theme_file` VALUES (1, 0, 10, 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (2, 0, 10, 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (3, 0, 5, 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (4, 0, 10, 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (5, 0, 10, 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (6, 0, 10, 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (7, 1, 0, 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (8, 1, 1, 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (9, 0, 10, 'blog', '文章详情页', 'portal/Article/index', 'portal/article', '文章详情模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (10, 0, 5, 'blog', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (11, 0, 10, 'blog', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (12, 0, 10, 'blog', '搜索列表页', 'portal/Search/index', 'portal/search', '搜索列表页列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (13, 0, 5, 'blog', '首页', 'portal/Chat/index', 'portal/chat', '聊天室模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"recommended_articles\":{\"title\":\"\\u56fe\\u6587\\u63a8\\u8350\",\"display\":\"1\",\"vars\":{\"recommended_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cmf_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user` VALUES (1, 1, 0, 0, 1561974237, 0, 0, 0.00, 1545392880, 1, 'admin', '###87be30a8fe6d9a9bc326148f7c6da868', '王刻', '2498871854@qq.com', '', '', '', '0.0.0.0', '', '', NULL);
INSERT INTO `cmf_user` VALUES (2, 1, 0, -28800, 1563515043, 0, 0, 0.00, 0, 1, '王刻', '###87be30a8fe6d9a9bc326148f7c6da868', '王刻', '24988718542@qq.com', '', '', '', '123.116.41.221', '', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_action` VALUES (1, 1, 1, 1, 2, 1, '用户登录', 'login', 'user', '');
COMMIT;

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
-- Table structure for cmf_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
BEGIN;
INSERT INTO `cmf_user_token` VALUES (1, 1, 1577369966, 1561817966, 'b2ae5ed79f15a86a9fcc8167ac1a67d428953e91acafa17e52420bc23ecf1a68', 'web');
INSERT INTO `cmf_user_token` VALUES (2, 2, 1574838533, 1559286533, '21a8c6c7fc0ae0203fc504704e5dc4ca43d433076e5fa661f8b441a36849d76b', 'web');
COMMIT;

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

SET FOREIGN_KEY_CHECKS = 1;
