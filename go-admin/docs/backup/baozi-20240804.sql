/*
 Navicat Premium Data Transfer

 Source Server         : fangxinjiazheng
 Source Server Type    : MySQL
 Source Server Version : 50650
 Source Host           : 101.35.245.54:3306
 Source Schema         : fangxinjiazheng

 Target Server Type    : MySQL
 Target Server Version : 50650
 File Encoding         : 65001

 Date: 03/08/2024 22:02:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_api`;
CREATE TABLE `sys_api` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `handle` varchar(128) DEFAULT NULL COMMENT 'handle',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `path` varchar(128) DEFAULT NULL COMMENT '地址',
  `type` varchar(16) DEFAULT NULL COMMENT '接口类型',
  `action` varchar(16) DEFAULT NULL COMMENT '请求类型',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_api_deleted_at` (`deleted_at`),
  KEY `idx_sys_api_create_by` (`create_by`),
  KEY `idx_sys_api_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_api
-- ----------------------------
BEGIN;
INSERT INTO `sys_api` VALUES (5, 'go-admin/app/admin/apis.SysLoginLog.Get-fm', '登录日志通过id获取', '/api/v1/sys-login-log/:id', 'BUS', 'GET', '2021-05-13 19:59:00.728', '2021-06-17 11:37:12.331', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (6, 'go-admin/app/admin/apis.SysOperaLog.GetPage-fm', '操作日志列表', '/api/v1/sys-opera-log', 'BUS', 'GET', '2021-05-13 19:59:00.778', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (7, 'go-admin/app/admin/apis.SysOperaLog.Get-fm', '操作日志通过id获取', '/api/v1/sys-opera-log/:id', 'BUS', 'GET', '2021-05-13 19:59:00.821', '2021-06-16 21:49:48.598', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (8, 'go-admin/common/actions.IndexAction.func1', '分类列表', '/api/v1/syscategory', 'BUS', 'GET', '2021-05-13 19:59:00.870', '2021-06-13 20:53:47.883', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (9, 'go-admin/common/actions.ViewAction.func1', '分类通过id获取', '/api/v1/syscategory/:id', 'BUS', 'GET', '2021-05-13 19:59:00.945', '2021-06-13 20:53:47.926', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (10, 'go-admin/common/actions.IndexAction.func1', '内容列表', '/api/v1/syscontent', 'BUS', 'GET', '2021-05-13 19:59:01.005', '2021-06-13 20:53:47.966', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (11, 'go-admin/common/actions.ViewAction.func1', '内容通过id获取', '/api/v1/syscontent/:id', 'BUS', 'GET', '2021-05-13 19:59:01.056', '2021-06-13 20:53:48.005', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (15, 'go-admin/common/actions.IndexAction.func1', 'job列表', '/api/v1/sysjob', 'BUS', 'GET', '2021-05-13 19:59:01.248', '2021-06-13 20:53:48.169', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (16, 'go-admin/common/actions.ViewAction.func1', 'job通过id获取', '/api/v1/sysjob/:id', 'BUS', 'GET', '2021-05-13 19:59:01.298', '2021-06-13 20:53:48.214', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (21, 'go-admin/app/admin/apis.SysDictType.GetPage-fm', '字典类型列表', '/api/v1/dict/type', 'BUS', 'GET', '2021-05-13 19:59:01.525', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (22, 'go-admin/app/admin/apis.SysDictType.GetAll-fm', '字典类型查询【代码生成】', '/api/v1/dict/type-option-select', 'SYS', 'GET', '2021-05-13 19:59:01.582', '2021-06-13 20:53:48.388', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (23, 'go-admin/app/admin/apis.SysDictType.Get-fm', '字典类型通过id获取', '/api/v1/dict/type/:id', 'BUS', 'GET', '2021-05-13 19:59:01.632', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (24, 'go-admin/app/admin/apis.SysDictData.GetPage-fm', '字典数据列表', '/api/v1/dict/data', 'BUS', 'GET', '2021-05-13 19:59:01.684', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (25, 'go-admin/app/admin/apis.SysDictData.Get-fm', '字典数据通过code获取', '/api/v1/dict/data/:dictCode', 'BUS', 'GET', '2021-05-13 19:59:01.732', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (26, 'go-admin/app/admin/apis.SysDictData.GetSysDictDataAll-fm', '数据字典根据key获取', '/api/v1/dict-data/option-select', 'SYS', 'GET', '2021-05-13 19:59:01.832', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (27, 'go-admin/app/admin/apis.SysDept.GetPage-fm', '部门列表', '/api/v1/dept', 'BUS', 'GET', '2021-05-13 19:59:01.940', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (28, 'go-admin/app/admin/apis.SysDept.Get-fm', '部门通过id获取', '/api/v1/dept/:id', 'BUS', 'GET', '2021-05-13 19:59:02.009', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (29, 'go-admin/app/admin/apis.SysDept.Get2Tree-fm', '查询部门下拉树【角色权限-自定权限】', '/api/v1/deptTree', 'SYS', 'GET', '2021-05-13 19:59:02.050', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (30, 'go-admin/app/admin/apis/tools.(*Gen).GetDBTableList-fm', '数据库表列表', '/api/v1/db/tables/page', 'SYS', 'GET', '2021-05-13 19:59:02.098', '2021-06-13 20:53:48.730', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (31, 'go-admin/app/admin/apis/tools.(*Gen).GetDBColumnList-fm', '数据表列列表', '/api/v1/db/columns/page', 'SYS', 'GET', '2021-05-13 19:59:02.140', '2021-06-13 20:53:48.771', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (32, 'go-admin/app/admin/apis/tools.Gen.GenCode-fm', '数据库表生成到项目', '/api/v1/gen/toproject/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.183', '2021-06-13 20:53:48.812', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (33, 'go-admin/app/admin/apis/tools.Gen.GenMenuAndApi-fm', '数据库表生成到DB', '/api/v1/gen/todb/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.227', '2021-06-13 20:53:48.853', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (34, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTablesTree-fm', '关系表数据【代码生成】', '/api/v1/gen/tabletree', 'SYS', 'GET', '2021-05-13 19:59:02.271', '2021-06-13 20:53:48.893', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (35, 'go-admin/app/admin/apis/tools.Gen.Preview-fm', '生成预览通过id获取', '/api/v1/gen/preview/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.315', '2021-06-13 20:53:48.935', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (36, 'go-admin/app/admin/apis/tools.Gen.GenApiToFile-fm', '生成api带文件', '/api/v1/gen/apitofile/:tableId', 'SYS', 'GET', '2021-05-13 19:59:02.357', '2021-06-13 20:53:48.977', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (37, 'go-admin/app/admin/apis.System.GenerateCaptchaHandler-fm', '验证码获取', '/api/v1/getCaptcha', 'SYS', 'GET', '2021-05-13 19:59:02.405', '2021-06-13 20:53:49.020', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (38, 'go-admin/app/admin/apis.SysUser.GetInfo-fm', '用户信息获取', '/api/v1/getinfo', 'SYS', 'GET', '2021-05-13 19:59:02.447', '2021-06-13 20:53:49.065', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (39, 'go-admin/app/admin/apis.SysMenu.GetPage-fm', '菜单列表', '/api/v1/menu', 'BUS', 'GET', '2021-05-13 19:59:02.497', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (40, 'go-admin/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '查询菜单下拉树结构【废弃】', '/api/v1/menuTreeselect', 'SYS', 'GET', '2021-05-13 19:59:02.542', '2021-06-03 22:37:21.857', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (41, 'go-admin/app/admin/apis.SysMenu.Get-fm', '菜单通过id获取', '/api/v1/menu/:id', 'BUS', 'GET', '2021-05-13 19:59:02.584', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (42, 'go-admin/app/admin/apis.SysMenu.GetMenuRole-fm', '角色菜单【顶部左侧菜单】', '/api/v1/menurole', 'SYS', 'GET', '2021-05-13 19:59:02.630', '2021-06-13 20:53:49.574', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (43, 'go-admin/app/admin/apis.SysMenu.GetMenuIDS-fm', '获取角色对应的菜单id数组【废弃】', '/api/v1/menuids', 'SYS', 'GET', '2021-05-13 19:59:02.675', '2021-06-03 22:39:52.500', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (44, 'go-admin/app/admin/apis.SysRole.GetPage-fm', '角色列表', '/api/v1/role', 'BUS', 'GET', '2021-05-13 19:59:02.720', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (45, 'go-admin/app/admin/apis.SysMenu.GetMenuTreeSelect-fm', '菜单权限列表【角色配菜单使用】', '/api/v1/roleMenuTreeselect/:roleId', 'SYS', 'GET', '2021-05-13 19:59:02.762', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (46, 'go-admin/app/admin/apis.SysDept.GetDeptTreeRoleSelect-fm', '角色部门结构树【自定义数据权限】', '/api/v1/roleDeptTreeselect/:roleId', 'SYS', 'GET', '2021-05-13 19:59:02.809', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (47, 'go-admin/app/admin/apis.SysRole.Get-fm', '角色通过id获取', '/api/v1/role/:id', 'BUS', 'GET', '2021-05-13 19:59:02.850', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (48, 'github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).RefreshHandler-fm', '刷新token', '/api/v1/refresh_token', 'SYS', 'GET', '2021-05-13 19:59:02.892', '2021-06-13 20:53:49.278', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (53, 'go-admin/app/admin/apis.SysConfig.GetPage-fm', '参数列表', '/api/v1/config', 'BUS', 'GET', '2021-05-13 19:59:03.116', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (54, 'go-admin/app/admin/apis.SysConfig.Get-fm', '参数通过id获取', '/api/v1/config/:id', 'BUS', 'GET', '2021-05-13 19:59:03.157', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (55, 'go-admin/app/admin/apis.SysConfig.GetSysConfigByKEYForService-fm', '参数通过键名搜索【基础默认配置】', '/api/v1/configKey/:configKey', 'SYS', 'GET', '2021-05-13 19:59:03.198', '2021-06-13 20:53:49.745', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (57, 'go-admin/app/jobs/apis.SysJob.RemoveJobForService-fm', 'job移除', '/api/v1/job/remove/:id', 'BUS', 'GET', '2021-05-13 19:59:03.295', '2021-06-13 20:53:49.786', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (58, 'go-admin/app/jobs/apis.SysJob.StartJobForService-fm', 'job启动', '/api/v1/job/start/:id', 'BUS', 'GET', '2021-05-13 19:59:03.339', '2021-06-13 20:53:49.829', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (59, 'go-admin/app/admin/apis.SysPost.GetPage-fm', '岗位列表', '/api/v1/post', 'BUS', 'GET', '2021-05-13 19:59:03.381', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (60, 'go-admin/app/admin/apis.SysPost.Get-fm', '岗位通过id获取', '/api/v1/post/:id', 'BUS', 'GET', '2021-05-13 19:59:03.433', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (62, 'go-admin/app/admin/apis.SysConfig.GetSysConfigBySysApp-fm', '系统前端参数', '/api/v1/app-config', 'SYS', 'GET', '2021-05-13 19:59:03.526', '2021-06-13 20:53:49.994', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (63, 'go-admin/app/admin/apis.SysUser.GetProfile-fm', '*用户信息获取', '/api/v1/user/profile', 'SYS', 'GET', '2021-05-13 19:59:03.567', '2021-06-13 20:53:50.038', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (66, 'github.com/go-admin-team/go-admin-core/sdk/pkg/ws.(*Manager).WsClient-fm', '链接ws【定时任务log】', '/ws/:id/:channel', 'BUS', 'GET', '2021-05-13 19:59:03.705', '2021-06-13 20:53:50.167', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (67, 'github.com/go-admin-team/go-admin-core/sdk/pkg/ws.(*Manager).UnWsClient-fm', '退出ws【定时任务log】', '/wslogout/:id/:channel', 'BUS', 'GET', '2021-05-13 19:59:03.756', '2021-06-13 20:53:50.209', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (68, 'go-admin/common/middleware/handler.Ping', '*用户基本信息', '/info', 'SYS', 'GET', '2021-05-13 19:59:03.800', '2021-06-13 20:53:50.251', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (72, 'go-admin/common/actions.CreateAction.func1', '分类创建', '/api/v1/syscategory', 'BUS', 'POST', '2021-05-13 19:59:03.982', '2021-06-13 20:53:50.336', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (73, 'go-admin/common/actions.CreateAction.func1', '内容创建', '/api/v1/syscontent', 'BUS', 'POST', '2021-05-13 19:59:04.027', '2021-06-13 20:53:50.375', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (76, 'go-admin/common/actions.CreateAction.func1', 'job创建', '/api/v1/sysjob', 'BUS', 'POST', '2021-05-13 19:59:04.164', '2021-06-13 20:53:50.500', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (80, 'go-admin/app/admin/apis.SysDictData.Insert-fm', '字典数据创建', '/api/v1/dict/data', 'BUS', 'POST', '2021-05-13 19:59:04.347', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (81, 'go-admin/app/admin/apis.SysDictType.Insert-fm', '字典类型创建', '/api/v1/dict/type', 'BUS', 'POST', '2021-05-13 19:59:04.391', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (82, 'go-admin/app/admin/apis.SysDept.Insert-fm', '部门创建', '/api/v1/dept', 'BUS', 'POST', '2021-05-13 19:59:04.435', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (85, 'github.com/go-admin-team/go-admin-core/sdk/pkg/jwtauth.(*GinJWTMiddleware).LoginHandler-fm', '*登录', '/api/v1/login', 'SYS', 'POST', '2021-05-13 19:59:04.597', '2021-06-13 20:53:50.784', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (86, 'go-admin/common/middleware/handler.LogOut', '*退出', '/api/v1/logout', 'SYS', 'POST', '2021-05-13 19:59:04.642', '2021-06-13 20:53:50.824', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (87, 'go-admin/app/admin/apis.SysConfig.Insert-fm', '参数创建', '/api/v1/config', 'BUS', 'POST', '2021-05-13 19:59:04.685', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (88, 'go-admin/app/admin/apis.SysMenu.Insert-fm', '菜单创建', '/api/v1/menu', 'BUS', 'POST', '2021-05-13 19:59:04.777', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (89, 'go-admin/app/admin/apis.SysPost.Insert-fm', '岗位创建', '/api/v1/post', 'BUS', 'POST', '2021-05-13 19:59:04.886', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (90, 'go-admin/app/admin/apis.SysRole.Insert-fm', '角色创建', '/api/v1/role', 'BUS', 'POST', '2021-05-13 19:59:04.975', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (91, 'go-admin/app/admin/apis.SysUser.InsetAvatar-fm', '*用户头像编辑', '/api/v1/user/avatar', 'SYS', 'POST', '2021-05-13 19:59:05.058', '2021-06-13 20:53:51.079', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (92, 'go-admin/app/admin/apis.SysApi.Update-fm', '接口编辑', '/api/v1/sys-api/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.122', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (95, 'go-admin/common/actions.UpdateAction.func1', '分类编辑', '/api/v1/syscategory/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.255', '2021-06-13 20:53:51.247', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (96, 'go-admin/common/actions.UpdateAction.func1', '内容编辑', '/api/v1/syscontent/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.299', '2021-06-13 20:53:51.289', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (97, 'go-admin/common/actions.UpdateAction.func1', 'job编辑', '/api/v1/sysjob', 'BUS', 'PUT', '2021-05-13 19:59:05.343', '2021-06-13 20:53:51.331', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (101, 'go-admin/app/admin/apis.SysDictData.Update-fm', '字典数据编辑', '/api/v1/dict/data/:dictCode', 'BUS', 'PUT', '2021-05-13 19:59:05.519', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (102, 'go-admin/app/admin/apis.SysDictType.Update-fm', '字典类型编辑', '/api/v1/dict/type/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.569', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (103, 'go-admin/app/admin/apis.SysDept.Update-fm', '部门编辑', '/api/v1/dept/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.613', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (104, 'go-admin/app/other/apis.SysFileDir.Update-fm', '文件夹编辑', '/api/v1/file-dir/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.662', '2021-06-13 20:53:51.847', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (105, 'go-admin/app/other/apis.SysFileInfo.Update-fm', '文件编辑', '/api/v1/file-info/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.709', '2021-06-13 20:53:51.892', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (106, 'go-admin/app/admin/apis.SysRole.Update-fm', '角色编辑', '/api/v1/role/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.752', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (107, 'go-admin/app/admin/apis.SysRole.Update2DataScope-fm', '角色数据权限修改', '/api/v1/roledatascope', 'BUS', 'PUT', '2021-05-13 19:59:05.803', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (108, 'go-admin/app/admin/apis.SysConfig.Update-fm', '参数编辑', '/api/v1/config/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.848', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (109, 'go-admin/app/admin/apis.SysMenu.Update-fm', '编辑菜单', '/api/v1/menu/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.891', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (110, 'go-admin/app/admin/apis.SysPost.Update-fm', '岗位编辑', '/api/v1/post/:id', 'BUS', 'PUT', '2021-05-13 19:59:05.934', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (111, 'go-admin/app/admin/apis.SysUser.UpdatePwd-fm', '*用户修改密码', '/api/v1/user/pwd', 'SYS', 'PUT', '2021-05-13 19:59:05.987', '2021-06-13 20:53:51.724', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (112, 'go-admin/common/actions.DeleteAction.func1', '分类删除', '/api/v1/syscategory', 'BUS', 'DELETE', '2021-05-13 19:59:06.030', '2021-06-13 20:53:52.237', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (113, 'go-admin/common/actions.DeleteAction.func1', '内容删除', '/api/v1/syscontent', 'BUS', 'DELETE', '2021-05-13 19:59:06.076', '2021-06-13 20:53:52.278', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (114, 'go-admin/app/admin/apis.SysLoginLog.Delete-fm', '登录日志删除', '/api/v1/sys-login-log', 'BUS', 'DELETE', '2021-05-13 19:59:06.118', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (115, 'go-admin/app/admin/apis.SysOperaLog.Delete-fm', '操作日志删除', '/api/v1/sys-opera-log', 'BUS', 'DELETE', '2021-05-13 19:59:06.162', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (116, 'go-admin/common/actions.DeleteAction.func1', 'job删除', '/api/v1/sysjob', 'BUS', 'DELETE', '2021-05-13 19:59:06.206', '2021-06-13 20:53:52.323', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (117, 'go-admin/app/other/apis.SysChinaAreaData.Delete-fm', '行政区删除', '/api/v1/sys-area-data', 'BUS', 'DELETE', '2021-05-13 19:59:06.249', '2021-06-13 20:53:52.061', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (120, 'go-admin/app/admin/apis.SysDictData.Delete-fm', '字典数据删除', '/api/v1/dict/data', 'BUS', 'DELETE', '2021-05-13 19:59:06.387', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (121, 'go-admin/app/admin/apis.SysDictType.Delete-fm', '字典类型删除', '/api/v1/dict/type', 'BUS', 'DELETE', '2021-05-13 19:59:06.432', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (122, 'go-admin/app/admin/apis.SysDept.Delete-fm', '部门删除', '/api/v1/dept/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.475', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (123, 'go-admin/app/other/apis.SysFileDir.Delete-fm', '文件夹删除', '/api/v1/file-dir/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.520', '2021-06-13 20:53:52.539', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (124, 'go-admin/app/other/apis.SysFileInfo.Delete-fm', '文件删除', '/api/v1/file-info/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.566', '2021-06-13 20:53:52.580', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (125, 'go-admin/app/admin/apis.SysConfig.Delete-fm', '参数删除', '/api/v1/config', 'BUS', 'DELETE', '2021-05-13 19:59:06.612', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (126, 'go-admin/app/admin/apis.SysMenu.Delete-fm', '删除菜单', '/api/v1/menu', 'BUS', 'DELETE', '2021-05-13 19:59:06.654', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (127, 'go-admin/app/admin/apis.SysPost.Delete-fm', '岗位删除', '/api/v1/post/:id', 'BUS', 'DELETE', '2021-05-13 19:59:06.702', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (128, 'go-admin/app/admin/apis.SysRole.Delete-fm', '角色删除', '/api/v1/role', 'BUS', 'DELETE', '2021-05-13 19:59:06.746', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (131, 'github.com/go-admin-team/go-admin-core/tools/transfer.Handler.func1', '系统指标', '/api/v1/metrics', 'SYS', 'GET', '2021-05-17 22:13:55.933', '2021-06-13 20:53:49.614', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (132, 'go-admin/app/other/router.registerMonitorRouter.func1', '健康状态', '/api/v1/health', 'SYS', 'GET', '2021-05-17 22:13:56.285', '2021-06-13 20:53:49.951', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (133, 'go-admin/app/admin/apis.HelloWorld', '项目默认接口', '/', 'SYS', 'GET', '2021-05-24 10:30:44.553', '2021-06-13 20:53:47.406', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (134, 'go-admin/app/other/apis.ServerMonitor.ServerInfo-fm', '服务器基本状态', '/api/v1/server-monitor', 'SYS', 'GET', '2021-05-24 10:30:44.937', '2021-06-13 20:53:48.255', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (135, 'go-admin/app/admin/apis.SysApi.GetPage-fm', '接口列表', '/api/v1/sys-api', 'BUS', 'GET', '2021-05-24 11:37:53.303', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (136, 'go-admin/app/admin/apis.SysApi.Get-fm', '接口通过id获取', '/api/v1/sys-api/:id', 'BUS', 'GET', '2021-05-24 11:37:53.359', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (137, 'go-admin/app/admin/apis.SysLoginLog.GetPage-fm', '登录日志列表', '/api/v1/sys-login-log', 'BUS', 'GET', '2021-05-24 11:47:30.397', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (138, 'go-admin/app/other/apis.File.UploadFile-fm', '文件上传', '/api/v1/public/uploadFile', 'SYS', 'POST', '2021-05-25 19:16:18.493', '2021-06-13 20:53:50.866', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (139, 'go-admin/app/admin/apis.SysConfig.Update2Set-fm', '参数信息修改【参数配置】', '/api/v1/set-config', 'BUS', 'PUT', '2021-05-27 09:45:14.853', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (140, 'go-admin/app/admin/apis.SysConfig.Get2Set-fm', '参数获取全部【配置使用】', '/api/v1/set-config', 'BUS', 'GET', '2021-05-27 11:54:14.384', '2021-06-17 11:48:40.732', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (141, 'go-admin/app/admin/apis.SysUser.GetPage-fm', '管理员列表', '/api/v1/sys-user', 'BUS', 'GET', '2021-06-13 19:24:57.111', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (142, 'go-admin/app/admin/apis.SysUser.Get-fm', '管理员通过id获取', '/api/v1/sys-user/:id', 'BUS', 'GET', '2021-06-13 19:24:57.188', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (143, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTablesInfo-fm', '', '/api/v1/sys/tables/info', '', 'GET', '2021-06-13 19:24:57.437', '2021-06-13 20:53:48.047', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (144, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTables-fm', '', '/api/v1/sys/tables/info/:tableId', '', 'GET', '2021-06-13 19:24:57.510', '2021-06-13 20:53:48.088', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (145, 'go-admin/app/admin/apis/tools.(*SysTable).GetSysTableList-fm', '', '/api/v1/sys/tables/page', '', 'GET', '2021-06-13 19:24:57.582', '2021-06-13 20:53:48.128', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (146, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'GET', '2021-06-13 19:24:59.641', '2021-06-13 20:53:50.081', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (147, 'github.com/swaggo/gin-swagger.CustomWrapHandler.func1', '', '/swagger/*any', '', 'GET', '2021-06-13 19:24:59.713', '2021-06-13 20:53:50.123', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (148, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'GET', '2021-06-13 19:24:59.914', '2021-06-13 20:53:50.295', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (149, 'go-admin/app/admin/apis/tools.(*SysTable).InsertSysTable-fm', '', '/api/v1/sys/tables/info', '', 'POST', '2021-06-13 19:25:00.163', '2021-06-13 20:53:50.539', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (150, 'go-admin/app/admin/apis.SysUser.Insert-fm', '管理员创建', '/api/v1/sys-user', 'BUS', 'POST', '2021-06-13 19:25:00.233', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (151, 'go-admin/app/admin/apis.SysUser.Update-fm', '管理员编辑', '/api/v1/sys-user', 'BUS', 'PUT', '2021-06-13 19:25:00.986', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (152, 'go-admin/app/admin/apis/tools.(*SysTable).UpdateSysTable-fm', '', '/api/v1/sys/tables/info', '', 'PUT', '2021-06-13 19:25:01.149', '2021-06-13 20:53:51.375', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (153, 'go-admin/app/admin/apis.SysRole.Update2Status-fm', '', '/api/v1/role-status', '', 'PUT', '2021-06-13 19:25:01.446', '2021-06-13 20:53:51.636', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (154, 'go-admin/app/admin/apis.SysUser.ResetPwd-fm', '', '/api/v1/user/pwd/reset', '', 'PUT', '2021-06-13 19:25:01.601', '2021-06-13 20:53:51.764', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (155, 'go-admin/app/admin/apis.SysUser.UpdateStatus-fm', '', '/api/v1/user/status', '', 'PUT', '2021-06-13 19:25:01.671', '2021-06-13 20:53:51.806', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (156, 'go-admin/app/admin/apis.SysUser.Delete-fm', '管理员删除', '/api/v1/sys-user', 'BUS', 'DELETE', '2021-06-13 19:25:02.043', '2021-06-17 20:31:14.318', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (157, 'go-admin/app/admin/apis/tools.(*SysTable).DeleteSysTables-fm', '', '/api/v1/sys/tables/info/:tableId', '', 'DELETE', '2021-06-13 19:25:02.283', '2021-06-13 20:53:52.367', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (158, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/static/*filepath', '', 'HEAD', '2021-06-13 19:25:02.734', '2021-06-13 20:53:52.791', NULL, 0, 0);
INSERT INTO `sys_api` VALUES (159, 'github.com/gin-gonic/gin.(*RouterGroup).createStaticHandler.func1', '', '/form-generator/*filepath', '', 'HEAD', '2021-06-13 19:25:02.808', '2021-06-13 20:53:52.838', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_casbin_rule`;
CREATE TABLE `sys_casbin_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `v6` varchar(25) DEFAULT NULL,
  `v7` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sys_columns
-- ----------------------------
DROP TABLE IF EXISTS `sys_columns`;
CREATE TABLE `sys_columns` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_id` bigint(20) DEFAULT NULL,
  `column_name` varchar(128) DEFAULT NULL,
  `column_comment` varchar(128) DEFAULT NULL,
  `column_type` varchar(128) DEFAULT NULL,
  `go_type` varchar(128) DEFAULT NULL,
  `go_field` varchar(128) DEFAULT NULL,
  `json_field` varchar(128) DEFAULT NULL,
  `is_pk` varchar(4) DEFAULT NULL,
  `is_increment` varchar(4) DEFAULT NULL,
  `is_required` varchar(4) DEFAULT NULL,
  `is_insert` varchar(4) DEFAULT NULL,
  `is_edit` varchar(4) DEFAULT NULL,
  `is_list` varchar(4) DEFAULT NULL,
  `is_query` varchar(4) DEFAULT NULL,
  `query_type` varchar(128) DEFAULT NULL,
  `html_type` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `list` varchar(1) DEFAULT NULL,
  `pk` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `super_column` tinyint(1) DEFAULT NULL,
  `usable_column` tinyint(1) DEFAULT NULL,
  `increment` tinyint(1) DEFAULT NULL,
  `insert` tinyint(1) DEFAULT NULL,
  `edit` tinyint(1) DEFAULT NULL,
  `query` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `fk_table_name` longtext,
  `fk_table_name_class` longtext,
  `fk_table_name_package` longtext,
  `fk_label_id` longtext,
  `fk_label_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`column_id`),
  KEY `idx_sys_columns_deleted_at` (`deleted_at`),
  KEY `idx_sys_columns_create_by` (`create_by`),
  KEY `idx_sys_columns_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_columns
-- ----------------------------
BEGIN;
INSERT INTO `sys_columns` VALUES (1, 1, 'id', '主键编码', 'bigint', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.754', '2024-07-18 14:38:10.754', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (2, 1, 'uid', '名称', 'varchar(128)', 'string', 'Uid', 'uid', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.761', '2024-07-18 14:44:11.284', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (3, 1, 'data1', 'data1', 'longtext', 'string', 'Data1', 'data1', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.766', '2024-07-18 14:44:11.294', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (4, 1, 'data2', 'data2', 'longtext', 'string', 'Data2', 'data2', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.771', '2024-07-18 14:44:11.311', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (5, 1, 'data3', 'data3', 'longtext', 'string', 'Data3', 'data3', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.775', '2024-07-18 14:44:11.325', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (6, 1, 'data4', 'data4', 'longtext', 'string', 'Data4', 'data4', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.779', '2024-07-18 14:44:11.333', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (7, 1, 'status', '审批状态', 'varchar(128)', 'string', 'Status', 'status', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.783', '2024-07-18 14:44:11.340', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (8, 1, 'status_text', '审批备注原因', 'varchar(128)', 'string', 'StatusText', 'statusText', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.786', '2024-07-18 14:44:11.346', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (9, 1, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.791', '2024-07-18 14:38:10.791', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (10, 1, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.795', '2024-07-18 14:38:10.795', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (11, 1, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.800', '2024-07-18 14:38:10.800', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (12, 1, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.804', '2024-07-18 14:38:10.804', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (13, 1, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-18 14:38:10.808', '2024-07-18 14:38:10.808', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (14, 2, 'id', '主键编码', 'bigint', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.553', '2024-07-27 14:34:36.553', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (15, 2, 'name', '名称', 'varchar(2000)', 'string', 'Name', 'name', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.561', '2024-07-27 14:38:25.067', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (16, 2, 'key', 'key', 'varchar(2000)', 'string', 'Key', 'key', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.564', '2024-07-27 14:38:25.082', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (17, 2, 'value', '值', 'longtext', 'string', 'Value', 'value', '0', '', '0', '1', '', '1', '', 'EQ', 'textarea', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.568', '2024-07-27 14:38:25.089', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (18, 2, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.571', '2024-07-27 14:34:36.571', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (19, 2, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.574', '2024-07-27 14:34:36.574', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (20, 2, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.577', '2024-07-27 14:34:36.577', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (21, 2, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.580', '2024-07-27 14:34:36.580', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (22, 2, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 14:34:36.584', '2024-07-27 14:34:36.584', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (23, 3, 'id', '主键编码', 'bigint', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.901', '2024-07-27 19:06:47.901', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (24, 3, 'phone', '手机号', 'varchar(255)', 'string', 'Phone', 'phone', '0', '', '1', '1', '', '1', '1', 'LIKE', 'input', '', 2, '', 0, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.907', '2024-07-27 19:14:14.454', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (25, 3, 'zuoyemianji', '作业面积', 'longtext', 'string', 'Zuoyemianji', 'zuoyemianji', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.912', '2024-07-27 19:14:14.464', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (26, 3, 'zuoyedizhi', '作业地址', 'longtext', 'string', 'Zuoyedizhi', 'zuoyedizhi', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.917', '2024-07-27 19:14:14.469', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (27, 3, 'suoshushequ', '所属社区', 'longtext', 'string', 'Suoshushequ', 'suoshushequ', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.924', '2024-07-27 19:14:14.473', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (28, 3, 'fabaofang_name', '发包方名称', 'longtext', 'string', 'FabaofangName', 'fabaofangName', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.930', '2024-07-27 19:14:14.477', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (29, 3, 'fabaofang_user', '发包方联系人', 'longtext', 'string', 'FabaofangUser', 'fabaofangUser', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.935', '2024-07-27 19:14:14.480', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (30, 3, 'fabaofang_phone', '发包方联系方式', 'longtext', 'string', 'FabaofangPhone', 'fabaofangPhone', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.938', '2024-07-27 19:14:14.484', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (31, 3, 'shigongfang_name', '施工方名称', 'longtext', 'string', 'ShigongfangName', 'shigongfangName', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.942', '2024-07-27 19:14:14.489', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (32, 3, 'shigongfang_user', '施工方项目负责人', 'longtext', 'string', 'ShigongfangUser', 'shigongfangUser', '0', '', '0', '1', '', '1', '1', 'LIKE', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.945', '2024-07-27 19:14:14.493', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (33, 3, 'shigongfang_phone', '施工方联系方式', 'longtext', 'string', 'ShigongfangPhone', 'shigongfangPhone', '0', '', '0', '1', '', '1', '0', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.948', '2024-07-27 19:14:14.497', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (34, 3, 'yingyezhizhao', '营业执照', 'longtext', 'string', 'Yingyezhizhao', 'yingyezhizhao', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 12, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.952', '2024-07-27 19:14:14.501', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (35, 3, 'farenid', '法人身份证号', 'longtext', 'string', 'Farenid', 'farenid', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 13, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.955', '2024-07-27 19:14:14.505', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (36, 3, 'anquanxvkezheng', '建筑企业资质安全生产许可证', 'longtext', 'string', 'Anquanxvkezheng', 'anquanxvkezheng', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 14, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.959', '2024-07-27 19:14:14.508', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (37, 3, 'shouquanweituozhu', '授权委托书', 'longtext', 'string', 'Shouquanweituozhu', 'shouquanweituozhu', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 15, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.961', '2024-07-27 19:14:14.512', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (38, 3, 'fuzerenid', '项目负责人身份证', 'longtext', 'string', 'Fuzerenid', 'fuzerenid', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 16, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.964', '2024-07-27 19:14:14.517', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (39, 3, 'jiayishuangfangshigonghetong', '甲乙双方施工合同', 'longtext', 'string', 'Jiayishuangfangshigonghetong', 'jiayishuangfangshigonghetong', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 17, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.967', '2024-07-27 19:14:14.520', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (40, 3, 'anquanshengchanzerenbaoxian', '安全生产责任保险', 'longtext', 'string', 'Anquanshengchanzerenbaoxian', 'anquanshengchanzerenbaoxian', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 18, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.970', '2024-07-27 19:14:14.523', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (41, 3, 'status', '审核状态', 'longtext', 'string', 'Status', 'status', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 19, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.972', '2024-07-27 19:14:14.527', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (42, 3, 'remark', '备注', 'longtext', 'string', 'Remark', 'remark', '0', '', '0', '1', '', '1', '', 'EQ', 'input', '', 20, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.975', '2024-07-27 19:14:14.530', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (43, 3, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 21, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.977', '2024-07-27 19:06:47.977', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (44, 3, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 22, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.979', '2024-07-27 19:06:47.979', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (45, 3, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 23, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.983', '2024-07-27 19:06:47.983', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (46, 3, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 24, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.985', '2024-07-27 19:06:47.985', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (47, 3, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 25, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:06:47.987', '2024-07-27 19:06:47.987', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (48, 4, 'id', '主键编码', 'bigint', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.630', '2024-07-27 19:35:46.630', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (49, 4, 'pid', '项目id', 'bigint', 'string', 'Pid', 'pid', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.640', '2024-07-27 19:38:19.793', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (50, 4, 'file', '照片或视频', 'longtext', 'string', 'File', 'file', '0', '', '0', '1', '', '1', '0', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.647', '2024-07-27 19:38:19.819', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (51, 4, 'user', '上传人', 'longtext', 'string', 'User', 'user', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.656', '2024-07-27 19:38:19.830', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (52, 4, 'department', '所属部门', 'longtext', 'string', 'Department', 'department', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.659', '2024-07-27 19:38:19.839', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (53, 4, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.661', '2024-07-27 19:35:46.661', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (54, 4, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.664', '2024-07-27 19:35:46.664', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (55, 4, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.666', '2024-07-27 19:35:46.666', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (56, 4, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.669', '2024-07-27 19:35:46.669', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (57, 4, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-07-27 19:35:46.672', '2024-07-27 19:35:46.672', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (58, 5, 'id', '主键编码', 'bigint', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.942', '2024-08-03 15:35:49.942', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (59, 5, 'uid', '名称', 'varchar(128)', 'string', 'Uid', 'uid', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.953', '2024-08-03 15:35:49.953', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (60, 5, 'username', '用户名', 'varchar(255)', 'string', 'Username', 'username', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.958', '2024-08-03 15:35:49.958', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (61, 5, 'passwd', '密码', 'varchar(255)', 'string', 'Passwd', 'passwd', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.966', '2024-08-03 15:35:49.966', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (62, 5, 'name', '姓名', 'varchar(255)', 'string', 'Name', 'name', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.970', '2024-08-03 15:35:49.970', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (63, 5, 'department', '部门', 'varchar(255)', 'string', 'Department', 'department', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.973', '2024-08-03 15:35:49.973', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (64, 5, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.982', '2024-08-03 15:35:49.982', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (65, 5, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.988', '2024-08-03 15:35:49.988', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (66, 5, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.991', '2024-08-03 15:35:49.991', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (67, 5, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.994', '2024-08-03 15:35:49.994', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (68, 5, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 11, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:35:49.997', '2024-08-03 15:35:49.997', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (69, 6, 'id', '主键编码', 'bigint', 'int', 'Id', 'id', '1', '', '1', '1', '', '', '', 'EQ', 'input', '', 1, '', 1, 1, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.362', '2024-08-03 15:36:24.362', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (70, 6, 'username', '用户名', 'varchar(255)', 'string', 'Username', 'username', '0', '', '1', '1', '', '1', '1', 'EQ', 'input', '', 2, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.370', '2024-08-03 15:38:34.829', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (71, 6, 'passwd', '密码', 'varchar(255)', 'string', 'Passwd', 'passwd', '0', '', '1', '1', '', '1', '', 'EQ', 'input', '', 3, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.382', '2024-08-03 15:38:34.844', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (72, 6, 'name', '姓名', 'varchar(255)', 'string', 'Name', 'name', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 4, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.389', '2024-08-03 15:38:34.859', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (73, 6, 'department', '部门', 'varchar(255)', 'string', 'Department', 'department', '0', '', '0', '1', '', '1', '1', 'EQ', 'input', '', 5, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.396', '2024-08-03 15:38:34.867', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (74, 6, 'created_at', '创建时间', 'datetime(3)', 'time.Time', 'CreatedAt', 'createdAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 6, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.401', '2024-08-03 15:36:24.401', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (75, 6, 'updated_at', '最后更新时间', 'datetime(3)', 'time.Time', 'UpdatedAt', 'updatedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 7, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.408', '2024-08-03 15:36:24.408', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (76, 6, 'deleted_at', '删除时间', 'datetime(3)', 'time.Time', 'DeletedAt', 'deletedAt', '0', '', '0', '1', '', '', '', 'EQ', 'datetime', '', 8, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.418', '2024-08-03 15:36:24.418', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (77, 6, 'create_by', '创建者', 'bigint', 'string', 'CreateBy', 'createBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 9, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.422', '2024-08-03 15:36:24.422', NULL, 0, 0);
INSERT INTO `sys_columns` VALUES (78, 6, 'update_by', '更新者', 'bigint', 'string', 'UpdateBy', 'updateBy', '0', '', '0', '1', '', '', '', 'EQ', 'input', '', 10, '', 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', '', '2024-08-03 15:36:24.425', '2024-08-03 15:36:24.425', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `config_name` varchar(128) DEFAULT NULL COMMENT 'ConfigName',
  `config_key` varchar(128) DEFAULT NULL COMMENT 'ConfigKey',
  `config_value` varchar(255) DEFAULT NULL COMMENT 'ConfigValue',
  `config_type` varchar(64) DEFAULT NULL COMMENT 'ConfigType',
  `is_frontend` varchar(64) DEFAULT NULL COMMENT '是否前台',
  `remark` varchar(128) DEFAULT NULL COMMENT 'Remark',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `idx_sys_config_create_by` (`create_by`),
  KEY `idx_sys_config_update_by` (`update_by`),
  KEY `idx_sys_config_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '皮肤样式', 'sys_index_skinName', 'skin-green', 'Y', '0', '主框架页-默认皮肤样式名称:蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 13:50:13.123', NULL);
INSERT INTO `sys_config` VALUES (2, '初始密码', 'sys_user_initPassword', '123456', 'Y', '0', '用户管理-账号初始密码:123456', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` VALUES (3, '侧栏主题', 'sys_index_sideTheme', 'theme-dark', 'Y', '0', '主框架页-侧边栏主题:深色主题theme-dark，浅色主题theme-light', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_config` VALUES (4, '系统名称', 'sys_app_name', '南磨房施工备案管理', 'Y', '1', '', 1, 0, '2021-03-17 08:52:06.067', '2024-08-03 21:08:01.341', NULL);
INSERT INTO `sys_config` VALUES (5, '系统logo', 'sys_app_logo', 'https://doc-image.zhangwj.com/img/go-admin.png', 'Y', '1', '', 1, 0, '2021-03-17 08:53:19.462', '2021-03-17 08:53:19.462', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `dept_path` varchar(255) DEFAULT NULL,
  `dept_name` varchar(128) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `leader` varchar(128) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dept_id`),
  KEY `idx_sys_dept_deleted_at` (`deleted_at`),
  KEY `idx_sys_dept_create_by` (`create_by`),
  KEY `idx_sys_dept_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, 0, '/0/1/', '总', 0, 'aituo', '13333728570', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2024-07-19 18:08:17.393', NULL);
INSERT INTO `sys_dept` VALUES (7, 1, '/0/1/7/', 'wdf', 1, 'aituo', '13333728570', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2024-07-19 18:09:38.657', NULL);
INSERT INTO `sys_dept` VALUES (8, 1, '/0/1/8/', '运维部', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-16 21:41:39.747', '2024-07-19 17:40:34.516');
INSERT INTO `sys_dept` VALUES (9, 1, '/0/1/9/', '客服部', 0, 'aituo', '13782218188', 'atuo@aituo.com', 2, 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:07:05.993', '2024-07-19 17:40:32.938');
INSERT INTO `sys_dept` VALUES (10, 1, '/0/1/10/', '人力资源', 3, 'aituo', '13782218188', 'atuo@aituo.com', 1, 1, 1, '2021-05-13 19:56:37.913', '2021-06-05 17:07:08.503', '2024-07-19 17:40:30.842');
INSERT INTO `sys_dept` VALUES (11, 1, '/0/1/11/', 'gov', 10, 'gov', '13333728570', 'gov@gov.cn', 2, 0, 0, '2024-07-19 18:09:33.265', '2024-07-19 18:09:33.270', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_sort` bigint(20) DEFAULT NULL,
  `dict_label` varchar(128) DEFAULT NULL,
  `dict_value` varchar(255) DEFAULT NULL,
  `dict_type` varchar(64) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `list_class` varchar(128) DEFAULT NULL,
  `is_default` varchar(8) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `default` varchar(8) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_code`),
  KEY `idx_sys_dict_data_create_by` (`create_by`),
  KEY `idx_sys_dict_data_update_by` (`update_by`),
  KEY `idx_sys_dict_data_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 0, '正常', '2', 'sys_normal_disable', '', '', '', 2, '', '系统正常', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:40.168', NULL);
INSERT INTO `sys_dict_data` VALUES (2, 0, '停用', '1', 'sys_normal_disable', '', '', '', 2, '', '系统停用', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (3, 0, '男', '0', 'sys_user_sex', '', '', '', 2, '', '性别男', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (4, 0, '女', '1', 'sys_user_sex', '', '', '', 2, '', '性别女', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (5, 0, '未知', '2', 'sys_user_sex', '', '', '', 2, '', '性别未知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (6, 0, '显示', '0', 'sys_show_hide', '', '', '', 2, '', '显示菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (7, 0, '隐藏', '1', 'sys_show_hide', '', '', '', 2, '', '隐藏菜单', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (8, 0, '是', 'Y', 'sys_yes_no', '', '', '', 2, '', '系统默认是', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (9, 0, '否', 'N', 'sys_yes_no', '', '', '', 2, '', '系统默认否', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (10, 0, '正常', '2', 'sys_job_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (11, 0, '停用', '1', 'sys_job_status', '', '', '', 2, '', '停用状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (12, 0, '默认', 'DEFAULT', 'sys_job_group', '', '', '', 2, '', '默认分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (13, 0, '系统', 'SYSTEM', 'sys_job_group', '', '', '', 2, '', '系统分组', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (14, 0, '通知', '1', 'sys_notice_type', '', '', '', 2, '', '通知', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (15, 0, '公告', '2', 'sys_notice_type', '', '', '', 2, '', '公告', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (16, 0, '正常', '2', 'sys_common_status', '', '', '', 2, '', '正常状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (17, 0, '关闭', '1', 'sys_common_status', '', '', '', 2, '', '关闭状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (18, 0, '新增', '1', 'sys_oper_type', '', '', '', 2, '', '新增操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (19, 0, '修改', '2', 'sys_oper_type', '', '', '', 2, '', '修改操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (20, 0, '删除', '3', 'sys_oper_type', '', '', '', 2, '', '删除操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (21, 0, '授权', '4', 'sys_oper_type', '', '', '', 2, '', '授权操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (22, 0, '导出', '5', 'sys_oper_type', '', '', '', 2, '', '导出操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (23, 0, '导入', '6', 'sys_oper_type', '', '', '', 2, '', '导入操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (24, 0, '强退', '7', 'sys_oper_type', '', '', '', 2, '', '强退操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (25, 0, '生成代码', '8', 'sys_oper_type', '', '', '', 2, '', '生成操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (26, 0, '清空数据', '9', 'sys_oper_type', '', '', '', 2, '', '清空操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (27, 0, '成功', '0', 'sys_notice_status', '', '', '', 2, '', '成功状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (28, 0, '失败', '1', 'sys_notice_status', '', '', '', 2, '', '失败状态', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (29, 0, '登录', '10', 'sys_oper_type', '', '', '', 2, '', '登录操作', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (30, 0, '退出', '11', 'sys_oper_type', '', '', '', 2, '', '', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (31, 0, '获取验证码', '12', 'sys_oper_type', '', '', '', 2, '', '获取验证码', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_data` VALUES (32, 0, '正常', '1', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
INSERT INTO `sys_dict_data` VALUES (33, 1, '禁用', '2', 'sys_content_status', '', '', '', 1, '', '', 1, 1, '2021-05-13 19:56:40.845', '2021-05-13 19:56:40.845', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_name` varchar(128) DEFAULT NULL,
  `dict_type` varchar(128) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_id`),
  KEY `idx_sys_dict_type_create_by` (`create_by`),
  KEY `idx_sys_dict_type_update_by` (`update_by`),
  KEY `idx_sys_dict_type_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1, '系统开关', 'sys_normal_disable', 2, '系统开关列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (2, '用户性别', 'sys_user_sex', 2, '用户性别列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (3, '菜单状态', 'sys_show_hide', 2, '菜单状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (4, '系统是否', 'sys_yes_no', 2, '系统是否列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (5, '任务状态', 'sys_job_status', 2, '任务状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (6, '任务分组', 'sys_job_group', 2, '任务分组列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', 2, '通知类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (8, '系统状态', 'sys_common_status', 2, '登录状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', 2, '操作类型列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (10, '通知状态', 'sys_notice_status', 2, '通知状态列表', 1, 1, '2021-05-13 19:56:37.914', '2021-05-13 19:56:37.914', NULL);
INSERT INTO `sys_dict_type` VALUES (11, '内容状态', 'sys_content_status', 2, '', 1, 1, '2021-05-13 19:56:40.813', '2021-05-13 19:56:40.813', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL,
  `job_group` varchar(255) DEFAULT NULL,
  `job_type` tinyint(4) DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `invoke_target` varchar(255) DEFAULT NULL,
  `args` varchar(255) DEFAULT NULL,
  `misfire_policy` bigint(20) DEFAULT NULL,
  `concurrent` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `entry_id` smallint(6) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`job_id`),
  KEY `idx_sys_job_deleted_at` (`deleted_at`),
  KEY `idx_sys_job_create_by` (`create_by`),
  KEY `idx_sys_job_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1, '接口测试', 'DEFAULT', 1, '0/5 * * * * ', 'http://localhost:8000', '', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-06-14 20:59:55.417', NULL, 1, 1);
INSERT INTO `sys_job` VALUES (2, '函数测试', 'DEFAULT', 2, '0/5 * * * * ', 'ExamplesOne', '参数', 1, 1, 1, 0, '2021-05-13 19:56:37.914', '2021-05-31 23:55:37.221', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `username` varchar(128) DEFAULT NULL COMMENT '用户名',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `login_location` varchar(255) DEFAULT NULL COMMENT '归属地',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(255) DEFAULT NULL COMMENT '系统',
  `platform` varchar(255) DEFAULT NULL COMMENT '固件',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `msg` varchar(255) DEFAULT NULL COMMENT '信息',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_login_log_create_by` (`create_by`),
  KEY `idx_sys_login_log_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `path` varchar(128) DEFAULT NULL,
  `paths` varchar(128) DEFAULT NULL,
  `menu_type` varchar(1) DEFAULT NULL,
  `action` varchar(16) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `parent_id` smallint(6) DEFAULT NULL,
  `no_cache` tinyint(1) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `component` varchar(255) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `is_frame` varchar(1) DEFAULT '0',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`menu_id`),
  KEY `idx_sys_menu_create_by` (`create_by`),
  KEY `idx_sys_menu_update_by` (`update_by`),
  KEY `idx_sys_menu_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (2, 'Admin', '系统管理', 'api-server', '/admin', '/0/2', 'M', '无', '', 0, 1, '', 'Layout', 10, '0', '1', 0, 1, '2021-05-20 21:58:45.679', '2024-07-18 13:52:21.785', NULL);
INSERT INTO `sys_menu` VALUES (3, 'SysUserManage', '用户管理', 'user', '/admin/sys-user', '/0/2/3', 'C', '无', 'admin:sysUser:list', 2, 0, '', '/admin/sys-user/index', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.788', NULL);
INSERT INTO `sys_menu` VALUES (43, '', '新增管理员', 'app-group-fill', '', '/0/2/3/43', 'F', 'POST', 'admin:sysUser:add', 3, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.798', NULL);
INSERT INTO `sys_menu` VALUES (44, '', '查询管理员', 'app-group-fill', '', '/0/2/3/44', 'F', 'GET', 'admin:sysUser:query', 3, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.799', NULL);
INSERT INTO `sys_menu` VALUES (45, '', '修改管理员', 'app-group-fill', '', '/0/2/3/45', 'F', 'PUT', 'admin:sysUser:edit', 3, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.800', NULL);
INSERT INTO `sys_menu` VALUES (46, '', '删除管理员', 'app-group-fill', '', '/0/2/3/46', 'F', 'DELETE', 'admin:sysUser:remove', 3, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.801', NULL);
INSERT INTO `sys_menu` VALUES (51, 'SysMenuManage', '菜单管理', 'tree-table', '/admin/sys-menu', '/0/2/51', 'C', '无', 'admin:sysMenu:list', 2, 1, '', '/admin/sys-menu/index', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.789', NULL);
INSERT INTO `sys_menu` VALUES (52, 'SysRoleManage', '角色管理', 'peoples', '/admin/sys-role', '/0/2/52', 'C', '无', 'admin:sysRole:list', 2, 1, '', '/admin/sys-role/index', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.790', NULL);
INSERT INTO `sys_menu` VALUES (56, 'SysDeptManage', '部门管理', 'tree', '/admin/sys-dept', '/0/2/56', 'C', '无', 'admin:sysDept:list', 2, 0, '', '/admin/sys-dept/index', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.791', NULL);
INSERT INTO `sys_menu` VALUES (57, 'SysPostManage', '岗位管理', 'pass', '/admin/sys-post', '/0/2/57', 'C', '无', 'admin:sysPost:list', 2, 0, '', '/admin/sys-post/index', 50, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.792', NULL);
INSERT INTO `sys_menu` VALUES (58, 'Dict', '字典管理', 'education', '/admin/dict', '/0/2/58', 'C', '无', 'admin:sysDictType:list', 2, 0, '', '/admin/dict/index', 60, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.793', NULL);
INSERT INTO `sys_menu` VALUES (59, 'SysDictDataManage', '字典数据', 'education', '/admin/dict/data/:dictId', '/0/2/59', 'C', '无', 'admin:sysDictData:list', 2, 0, '', '/admin/dict/data', 100, '1', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.794', NULL);
INSERT INTO `sys_menu` VALUES (60, 'Tools', '开发工具', 'dev-tools', '/dev-tools', '/0/60', 'M', '无', '', 0, 0, '', 'Layout', 40, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.785', NULL);
INSERT INTO `sys_menu` VALUES (61, 'Swagger', '系统接口', 'guide', '/dev-tools/swagger', '/0/60/61', 'C', '无', '', 60, 0, '', '/dev-tools/swagger/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.825', NULL);
INSERT INTO `sys_menu` VALUES (62, 'SysConfigManage', '参数管理', 'swagger', '/admin/sys-config', '/0/2/62', 'C', '无', 'admin:sysConfig:list', 2, 0, '', '/admin/sys-config/index', 70, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.794', NULL);
INSERT INTO `sys_menu` VALUES (211, 'Log', '日志管理', 'log', '/log', '/0/2/211', 'M', '', '', 2, 0, '', '/log/index', 80, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.795', NULL);
INSERT INTO `sys_menu` VALUES (212, 'SysLoginLogManage', '登录日志', 'logininfor', '/admin/sys-login-log', '/0/2/211/212', 'C', '', 'admin:sysLoginLog:list', 211, 0, '', '/admin/sys-login-log/index', 1, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.833', NULL);
INSERT INTO `sys_menu` VALUES (216, 'OperLog', '操作日志', 'skill', '/admin/sys-oper-log', '/0/2/211/216', 'C', '', 'admin:sysOperLog:list', 211, 0, '', '/admin/sys-oper-log/index', 1, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.834', NULL);
INSERT INTO `sys_menu` VALUES (220, '', '新增菜单', 'app-group-fill', '', '/0/2/51/220', 'F', '', 'admin:sysMenu:add', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.802', NULL);
INSERT INTO `sys_menu` VALUES (221, '', '修改菜单', 'app-group-fill', '', '/0/2/51/221', 'F', '', 'admin:sysMenu:edit', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.803', NULL);
INSERT INTO `sys_menu` VALUES (222, '', '查询菜单', 'app-group-fill', '', '/0/2/51/222', 'F', '', 'admin:sysMenu:query', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.804', NULL);
INSERT INTO `sys_menu` VALUES (223, '', '删除菜单', 'app-group-fill', '', '/0/2/51/223', 'F', '', 'admin:sysMenu:remove', 51, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.805', NULL);
INSERT INTO `sys_menu` VALUES (224, '', '新增角色', 'app-group-fill', '', '/0/2/52/224', 'F', '', 'admin:sysRole:add', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.806', NULL);
INSERT INTO `sys_menu` VALUES (225, '', '查询角色', 'app-group-fill', '', '/0/2/52/225', 'F', '', 'admin:sysRole:query', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.807', NULL);
INSERT INTO `sys_menu` VALUES (226, '', '修改角色', 'app-group-fill', '', '/0/2/52/226', 'F', '', 'admin:sysRole:update', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.808', NULL);
INSERT INTO `sys_menu` VALUES (227, '', '删除角色', 'app-group-fill', '', '/0/2/52/227', 'F', '', 'admin:sysRole:remove', 52, 0, '', '', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.809', NULL);
INSERT INTO `sys_menu` VALUES (228, '', '查询部门', 'app-group-fill', '', '/0/2/56/228', 'F', '', 'admin:sysDept:query', 56, 0, '', '', 40, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.810', NULL);
INSERT INTO `sys_menu` VALUES (229, '', '新增部门', 'app-group-fill', '', '/0/2/56/229', 'F', '', 'admin:sysDept:add', 56, 0, '', '', 10, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.811', NULL);
INSERT INTO `sys_menu` VALUES (230, '', '修改部门', 'app-group-fill', '', '/0/2/56/230', 'F', '', 'admin:sysDept:edit', 56, 0, '', '', 30, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.812', NULL);
INSERT INTO `sys_menu` VALUES (231, '', '删除部门', 'app-group-fill', '', '/0/2/56/231', 'F', '', 'admin:sysDept:remove', 56, 0, '', '', 20, '0', '1', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.813', NULL);
INSERT INTO `sys_menu` VALUES (232, '', '查询岗位', 'app-group-fill', '', '/0/2/57/232', 'F', '', 'admin:sysPost:query', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.814', NULL);
INSERT INTO `sys_menu` VALUES (233, '', '新增岗位', 'app-group-fill', '', '/0/2/57/233', 'F', '', 'admin:sysPost:add', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.815', NULL);
INSERT INTO `sys_menu` VALUES (234, '', '修改岗位', 'app-group-fill', '', '/0/2/57/234', 'F', '', 'admin:sysPost:edit', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.815', NULL);
INSERT INTO `sys_menu` VALUES (235, '', '删除岗位', 'app-group-fill', '', '/0/2/57/235', 'F', '', 'admin:sysPost:remove', 57, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.816', NULL);
INSERT INTO `sys_menu` VALUES (236, '', '查询字典', 'app-group-fill', '', '/0/2/58/236', 'F', '', 'admin:sysDictType:query', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.817', NULL);
INSERT INTO `sys_menu` VALUES (237, '', '新增类型', 'app-group-fill', '', '/0/2/58/237', 'F', '', 'admin:sysDictType:add', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.818', NULL);
INSERT INTO `sys_menu` VALUES (238, '', '修改类型', 'app-group-fill', '', '/0/2/58/238', 'F', '', 'admin:sysDictType:edit', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.819', NULL);
INSERT INTO `sys_menu` VALUES (239, '', '删除类型', 'app-group-fill', '', '/0/2/58/239', 'F', '', 'system:sysdicttype:remove', 58, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.820', NULL);
INSERT INTO `sys_menu` VALUES (240, '', '查询数据', 'app-group-fill', '', '/0/2/59/240', 'F', '', 'admin:sysDictData:query', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.821', NULL);
INSERT INTO `sys_menu` VALUES (241, '', '新增数据', 'app-group-fill', '', '/0/2/59/241', 'F', '', 'admin:sysDictData:add', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.822', NULL);
INSERT INTO `sys_menu` VALUES (242, '', '修改数据', 'app-group-fill', '', '/0/2/59/242', 'F', '', 'admin:sysDictData:edit', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.823', NULL);
INSERT INTO `sys_menu` VALUES (243, '', '删除数据', 'app-group-fill', '', '/0/2/59/243', 'F', '', 'admin:sysDictData:remove', 59, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.824', NULL);
INSERT INTO `sys_menu` VALUES (244, '', '查询参数', 'app-group-fill', '', '/0/2/62/244', 'F', '', 'admin:sysConfig:query', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.829', NULL);
INSERT INTO `sys_menu` VALUES (245, '', '新增参数', 'app-group-fill', '', '/0/2/62/245', 'F', '', 'admin:sysConfig:add', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.830', NULL);
INSERT INTO `sys_menu` VALUES (246, '', '修改参数', 'app-group-fill', '', '/0/2/62/246', 'F', '', 'admin:sysConfig:edit', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.831', NULL);
INSERT INTO `sys_menu` VALUES (247, '', '删除参数', 'app-group-fill', '', '/0/2/62/247', 'F', '', 'admin:sysConfig:remove', 62, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.832', NULL);
INSERT INTO `sys_menu` VALUES (248, '', '查询登录日志', 'app-group-fill', '', '/0/2/211/212/248', 'F', '', 'admin:sysLoginLog:query', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.835', NULL);
INSERT INTO `sys_menu` VALUES (249, '', '删除登录日志', 'app-group-fill', '', '/0/2/211/212/249', 'F', '', 'admin:sysLoginLog:remove', 212, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.836', NULL);
INSERT INTO `sys_menu` VALUES (250, '', '查询操作日志', 'app-group-fill', '', '/0/2/211/216/250', 'F', '', 'admin:sysOperLog:query', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.836', NULL);
INSERT INTO `sys_menu` VALUES (251, '', '删除操作日志', 'app-group-fill', '', '/0/2/211/216/251', 'F', '', 'admin:sysOperLog:remove', 216, 0, '', '', 0, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.837', NULL);
INSERT INTO `sys_menu` VALUES (261, 'Gen', '代码生成', 'code', '/dev-tools/gen', '/0/60/261', 'C', '', '', 60, 0, '', '/dev-tools/gen/index', 2, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.826', NULL);
INSERT INTO `sys_menu` VALUES (262, 'EditTable', '代码生成修改', 'build', '/dev-tools/editTable', '/0/60/262', 'C', '', '', 60, 0, '', '/dev-tools/gen/editTable', 100, '1', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.827', NULL);
INSERT INTO `sys_menu` VALUES (264, 'Build', '表单构建', 'build', '/dev-tools/build', '/0/60/264', 'C', '', '', 60, 0, '', '/dev-tools/build/index', 1, '0', '1', 1, 1, '2020-04-11 15:52:48.000', '2024-07-18 13:52:21.828', NULL);
INSERT INTO `sys_menu` VALUES (269, 'ServerMonitor', '服务监控', 'druid', '/sys-tools/monitor', '/0/537/269', 'C', '', 'sysTools:serverMonitor:list', 537, 0, '', '/sys-tools/monitor', 0, '0', '1', 1, 1, '2020-04-14 00:28:19.000', '2024-07-18 13:52:21.845', NULL);
INSERT INTO `sys_menu` VALUES (459, 'Schedule', '定时任务', 'time-range', '/schedule', '/0/459', 'M', '无', '', 0, 0, '', 'Layout', 20, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2024-07-18 13:52:21.786', NULL);
INSERT INTO `sys_menu` VALUES (460, 'ScheduleManage', 'Schedule', 'job', '/schedule/manage', '/0/459/460', 'C', '无', 'job:sysJob:list', 459, 0, '', '/schedule/index', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2024-07-18 13:52:21.838', NULL);
INSERT INTO `sys_menu` VALUES (461, 'sys_job', '分页获取定时任务', 'app-group-fill', '', '/0/459/460/461', 'F', '无', 'job:sysJob:query', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2024-07-18 13:52:21.840', NULL);
INSERT INTO `sys_menu` VALUES (462, 'sys_job', '创建定时任务', 'app-group-fill', '', '/0/459/460/462', 'F', '无', 'job:sysJob:add', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2024-07-18 13:52:21.841', NULL);
INSERT INTO `sys_menu` VALUES (463, 'sys_job', '修改定时任务', 'app-group-fill', '', '/0/459/460/463', 'F', '无', 'job:sysJob:edit', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2024-07-18 13:52:21.841', NULL);
INSERT INTO `sys_menu` VALUES (464, 'sys_job', '删除定时任务', 'app-group-fill', '', '/0/459/460/464', 'F', '无', 'job:sysJob:remove', 460, 0, '', '', 0, '0', '1', 1, 1, '2020-08-03 09:17:37.000', '2024-07-18 13:52:21.842', NULL);
INSERT INTO `sys_menu` VALUES (471, 'JobLog', '日志', 'bug', '/schedule/log', '/0/459/471', 'C', '', '', 459, 0, '', '/schedule/log', 0, '1', '1', 1, 1, '2020-08-05 21:24:46.000', '2024-07-18 13:52:21.839', NULL);
INSERT INTO `sys_menu` VALUES (528, 'SysApiManage', '接口管理', 'api-doc', '/admin/sys-api', '/0/2/528', 'C', '无', 'admin:sysApi:list', 2, 0, '', '/admin/sys-api/index', 0, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.796', NULL);
INSERT INTO `sys_menu` VALUES (529, '', '查询接口', 'app-group-fill', '', '/0/2/528/529', 'F', '无', 'admin:sysApi:query', 528, 0, '', '', 40, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.843', NULL);
INSERT INTO `sys_menu` VALUES (531, '', '修改接口', 'app-group-fill', '', '/0/2/528/531', 'F', '无', 'admin:sysApi:edit', 528, 0, '', '', 30, '0', '0', 0, 1, '2021-05-20 22:08:44.526', '2024-07-18 13:52:21.844', NULL);
INSERT INTO `sys_menu` VALUES (537, 'SysTools', '系统工具', 'system-tools', '/sys-tools', '/0/537', 'M', '', '', 0, 0, '', 'Layout', 30, '0', '1', 1, 1, '2021-05-21 11:13:32.166', '2024-07-18 13:52:21.786', NULL);
INSERT INTO `sys_menu` VALUES (540, 'SysConfigSet', '参数设置', 'system-tools', '/admin/sys-config/set', '/0/2/540', 'C', '', 'admin:sysConfigSet:list', 2, 0, '', '/admin/sys-config/set', 0, '0', '1', 1, 1, '2021-05-25 16:06:52.560', '2024-07-18 13:52:21.797', NULL);
INSERT INTO `sys_menu` VALUES (542, '', '修改', 'upload', '', '/0/2/540/542', 'F', '', 'admin:sysConfigSet:update', 540, 0, '', '', 0, '0', '1', 1, 1, '2021-06-13 11:45:48.670', '2024-07-18 13:52:21.846', NULL);
INSERT INTO `sys_menu` VALUES (543, '', 'TbDemoCopy', 'pass', '/tb-demo-copy', '/0/543', 'M', '无', '', 0, 0, '', 'Layout', 0, '1', '0', 1, 1, '2024-07-18 14:42:31.564', '2024-08-03 21:36:59.401', NULL);
INSERT INTO `sys_menu` VALUES (544, 'TbDemoCopyManage', 'TbDemoCopy', 'pass', '/admin/tb-demo-copy', '/0/543/544', 'C', '无', 'admin:tbDemoCopy:list', 543, 0, '', '/admin/tb-demo-copy/index', 0, '0', '0', 1, 1, '2024-07-18 14:42:31.595', '2024-08-03 21:36:59.466', NULL);
INSERT INTO `sys_menu` VALUES (545, '', '分页获取TbDemoCopy', '', 'tb_demo_copy', '/0/543/544/545', 'F', '无', 'admin:tbDemoCopy:query', 544, 0, '', '', 0, '0', '0', 1, 1, '2024-07-18 14:42:31.606', '2024-08-03 21:36:59.528', NULL);
INSERT INTO `sys_menu` VALUES (546, '', '创建TbDemoCopy', '', 'tb_demo_copy', '/0/543/544/546', 'F', '无', 'admin:tbDemoCopy:add', 544, 0, '', '', 0, '0', '0', 1, 1, '2024-07-18 14:42:31.616', '2024-08-03 21:36:59.591', NULL);
INSERT INTO `sys_menu` VALUES (547, '', '修改TbDemoCopy', '', 'tb_demo_copy', '/0/543/544/547', 'F', '无', 'admin:tbDemoCopy:edit', 544, 0, '', '', 0, '0', '0', 1, 1, '2024-07-18 14:42:31.623', '2024-08-03 21:36:59.654', NULL);
INSERT INTO `sys_menu` VALUES (548, '', '删除TbDemoCopy', '', 'tb_demo_copy', '/0/543/544/548', 'F', '无', 'admin:tbDemoCopy:remove', 544, 0, '', '', 0, '0', '0', 1, 1, '2024-07-18 14:42:31.629', '2024-08-03 21:36:59.718', NULL);
INSERT INTO `sys_menu` VALUES (549, 'TbConfig', '施工备案管理', 'pass', '/tb-config', '/0/549', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 1, '2024-07-27 14:38:33.850', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (550, 'TbConfigManage', '配置管理', 'pass', '/tb-config/tb-config', '/0/549/550', 'C', '无', 'admin:tbConfig:list', 549, 0, '', '/admin/tb-config/index', 0, '0', '0', 1, 1, '2024-07-27 14:38:33.873', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (551, '', '分页获取TbConfig', '', 'tb_config', '/0/549/550/551', 'F', '无', 'admin:tbConfig:query', 550, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 14:38:33.898', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (552, '', '创建TbConfig', '', 'tb_config', '/0/549/550/552', 'F', '无', 'admin:tbConfig:add', 550, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 14:38:33.905', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (553, '', '修改TbConfig', '', 'tb_config', '/0/549/550/553', 'F', '无', 'admin:tbConfig:edit', 550, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 14:38:33.911', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (554, '', '删除TbConfig', '', 'tb_config', '/0/549/550/554', 'F', '无', 'admin:tbConfig:remove', 550, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 14:38:33.915', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (555, '', 'TbTable', 'pass', '/tb-table', '/0/555', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2024-07-27 19:14:19.949', '2024-07-27 19:14:19.954', '2024-07-27 19:16:31.482');
INSERT INTO `sys_menu` VALUES (556, 'TbTableManage', '备案审核管理', 'pass', '/tb-config/tb-table', '/0/555/556', 'C', '无', 'admin:tbTable:list', 549, 0, '', '/admin/tb-table/index', 1, '0', '0', 1, 1, '2024-07-27 19:14:19.971', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (557, '', '分页获取TbTable', '', 'tb_table', '/0/555/556/557', 'F', '无', 'admin:tbTable:query', 556, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:14:19.985', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (558, '', '创建TbTable', '', 'tb_table', '/0/555/556/558', 'F', '无', 'admin:tbTable:add', 556, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:14:19.993', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (559, '', '修改TbTable', '', 'tb_table', '/0/555/556/559', 'F', '无', 'admin:tbTable:edit', 556, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:14:20.000', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (560, '', '删除TbTable', '', 'tb_table', '/0/555/556/560', 'F', '无', 'admin:tbTable:remove', 556, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:14:20.006', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (561, '', 'TbZhifajiancha', 'pass', '/tb-zhifajiancha', '/0/561', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2024-07-27 19:38:26.432', '2024-07-27 19:38:26.435', '2024-07-27 19:39:24.840');
INSERT INTO `sys_menu` VALUES (562, 'TbZhifajianchaManage', '执法检查', 'pass', '/tb-config/tb-zhifajiancha', '/0/561/562', 'C', '无', 'admin:tbZhifajiancha:list', 549, 0, '', '/admin/tb-zhifajiancha/index', 3, '0', '0', 1, 1, '2024-07-27 19:38:26.459', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (563, '', '分页获取TbZhifajiancha', '', 'tb_zhifajiancha', '/0/561/562/563', 'F', '无', 'admin:tbZhifajiancha:query', 562, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:38:26.464', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (564, '', '创建TbZhifajiancha', '', 'tb_zhifajiancha', '/0/561/562/564', 'F', '无', 'admin:tbZhifajiancha:add', 562, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:38:26.486', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (565, '', '修改TbZhifajiancha', '', 'tb_zhifajiancha', '/0/561/562/565', 'F', '无', 'admin:tbZhifajiancha:edit', 562, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:38:26.490', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (566, '', '删除TbZhifajiancha', '', 'tb_zhifajiancha', '/0/561/562/566', 'F', '无', 'admin:tbZhifajiancha:remove', 562, 0, '', '', 0, '0', '0', 1, 1, '2024-07-27 19:38:26.494', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (567, '', 'TbZhifaUser', 'pass', '/tb-zhifa-user', '/0/567', 'M', '无', '', 0, 0, '', 'Layout', 0, '0', '0', 1, 0, '2024-08-03 15:37:25.603', '2024-08-03 15:37:25.604', '2024-08-03 15:41:21.071');
INSERT INTO `sys_menu` VALUES (568, 'TbZhifaUserManage', '执法人员管理', 'pass', '/tb-config/tb-zhifa-user', '/0/567/568', 'C', '无', 'admin:tbZhifaUser:list', 549, 0, '', '/admin/tb-zhifa-user/index', 0, '0', '0', 1, 1, '2024-08-03 15:37:25.621', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (569, '', '分页获取TbZhifaUser', '', 'tb_zhifa_user', '/0/567/568/569', 'F', '无', 'admin:tbZhifaUser:query', 568, 0, '', '', 0, '0', '0', 1, 1, '2024-08-03 15:37:25.646', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (570, '', '创建TbZhifaUser', '', 'tb_zhifa_user', '/0/567/568/570', 'F', '无', 'admin:tbZhifaUser:add', 568, 0, '', '', 0, '0', '0', 1, 1, '2024-08-03 15:37:25.657', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (571, '', '修改TbZhifaUser', '', 'tb_zhifa_user', '/0/567/568/571', 'F', '无', 'admin:tbZhifaUser:edit', 568, 0, '', '', 0, '0', '0', 1, 1, '2024-08-03 15:37:25.667', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (572, '', '删除TbZhifaUser', '', 'tb_zhifa_user', '/0/567/568/572', 'F', '无', 'admin:tbZhifaUser:remove', 568, 0, '', '', 0, '0', '0', 1, 1, '2024-08-03 15:37:25.677', '2024-08-03 21:37:28.764', NULL);
INSERT INTO `sys_menu` VALUES (573, 'TbTableManage', '台账管理', 'pass', '/tb-config/tb-table-taizhang', '/0/555/556', 'C', '无', 'admin:tbTable:list', 549, 0, '', '/admin/tb-table/taizhang', 2, '0', '0', 1, 1, '2024-07-27 19:14:19.971', '2024-08-03 21:37:28.764', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_api_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_api_rule`;
CREATE TABLE `sys_menu_api_rule` (
  `sys_menu_menu_id` bigint(20) NOT NULL,
  `sys_api_id` bigint(20) NOT NULL COMMENT '主键编码',
  PRIMARY KEY (`sys_menu_menu_id`,`sys_api_id`),
  KEY `fk_sys_menu_api_rule_sys_api` (`sys_api_id`),
  CONSTRAINT `fk_sys_menu_api_rule_sys_api` FOREIGN KEY (`sys_api_id`) REFERENCES `sys_api` (`id`),
  CONSTRAINT `fk_sys_menu_api_rule_sys_menu` FOREIGN KEY (`sys_menu_menu_id`) REFERENCES `sys_menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_menu_api_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_api_rule` VALUES (216, 6);
INSERT INTO `sys_menu_api_rule` VALUES (250, 6);
INSERT INTO `sys_menu_api_rule` VALUES (58, 21);
INSERT INTO `sys_menu_api_rule` VALUES (236, 21);
INSERT INTO `sys_menu_api_rule` VALUES (238, 23);
INSERT INTO `sys_menu_api_rule` VALUES (59, 24);
INSERT INTO `sys_menu_api_rule` VALUES (240, 24);
INSERT INTO `sys_menu_api_rule` VALUES (242, 25);
INSERT INTO `sys_menu_api_rule` VALUES (58, 26);
INSERT INTO `sys_menu_api_rule` VALUES (236, 26);
INSERT INTO `sys_menu_api_rule` VALUES (56, 27);
INSERT INTO `sys_menu_api_rule` VALUES (228, 27);
INSERT INTO `sys_menu_api_rule` VALUES (230, 28);
INSERT INTO `sys_menu_api_rule` VALUES (226, 29);
INSERT INTO `sys_menu_api_rule` VALUES (51, 39);
INSERT INTO `sys_menu_api_rule` VALUES (222, 39);
INSERT INTO `sys_menu_api_rule` VALUES (221, 41);
INSERT INTO `sys_menu_api_rule` VALUES (52, 44);
INSERT INTO `sys_menu_api_rule` VALUES (225, 44);
INSERT INTO `sys_menu_api_rule` VALUES (226, 45);
INSERT INTO `sys_menu_api_rule` VALUES (226, 46);
INSERT INTO `sys_menu_api_rule` VALUES (226, 47);
INSERT INTO `sys_menu_api_rule` VALUES (62, 53);
INSERT INTO `sys_menu_api_rule` VALUES (244, 53);
INSERT INTO `sys_menu_api_rule` VALUES (246, 54);
INSERT INTO `sys_menu_api_rule` VALUES (57, 59);
INSERT INTO `sys_menu_api_rule` VALUES (232, 59);
INSERT INTO `sys_menu_api_rule` VALUES (234, 60);
INSERT INTO `sys_menu_api_rule` VALUES (241, 80);
INSERT INTO `sys_menu_api_rule` VALUES (237, 81);
INSERT INTO `sys_menu_api_rule` VALUES (229, 82);
INSERT INTO `sys_menu_api_rule` VALUES (245, 87);
INSERT INTO `sys_menu_api_rule` VALUES (220, 88);
INSERT INTO `sys_menu_api_rule` VALUES (233, 89);
INSERT INTO `sys_menu_api_rule` VALUES (224, 90);
INSERT INTO `sys_menu_api_rule` VALUES (531, 92);
INSERT INTO `sys_menu_api_rule` VALUES (242, 101);
INSERT INTO `sys_menu_api_rule` VALUES (238, 102);
INSERT INTO `sys_menu_api_rule` VALUES (230, 103);
INSERT INTO `sys_menu_api_rule` VALUES (226, 106);
INSERT INTO `sys_menu_api_rule` VALUES (226, 107);
INSERT INTO `sys_menu_api_rule` VALUES (246, 108);
INSERT INTO `sys_menu_api_rule` VALUES (221, 109);
INSERT INTO `sys_menu_api_rule` VALUES (234, 110);
INSERT INTO `sys_menu_api_rule` VALUES (249, 114);
INSERT INTO `sys_menu_api_rule` VALUES (251, 115);
INSERT INTO `sys_menu_api_rule` VALUES (243, 120);
INSERT INTO `sys_menu_api_rule` VALUES (239, 121);
INSERT INTO `sys_menu_api_rule` VALUES (231, 122);
INSERT INTO `sys_menu_api_rule` VALUES (247, 125);
INSERT INTO `sys_menu_api_rule` VALUES (223, 126);
INSERT INTO `sys_menu_api_rule` VALUES (235, 127);
INSERT INTO `sys_menu_api_rule` VALUES (227, 128);
INSERT INTO `sys_menu_api_rule` VALUES (51, 135);
INSERT INTO `sys_menu_api_rule` VALUES (528, 135);
INSERT INTO `sys_menu_api_rule` VALUES (529, 135);
INSERT INTO `sys_menu_api_rule` VALUES (531, 136);
INSERT INTO `sys_menu_api_rule` VALUES (212, 137);
INSERT INTO `sys_menu_api_rule` VALUES (248, 137);
INSERT INTO `sys_menu_api_rule` VALUES (542, 139);
INSERT INTO `sys_menu_api_rule` VALUES (540, 140);
INSERT INTO `sys_menu_api_rule` VALUES (3, 141);
INSERT INTO `sys_menu_api_rule` VALUES (44, 141);
INSERT INTO `sys_menu_api_rule` VALUES (45, 142);
INSERT INTO `sys_menu_api_rule` VALUES (43, 150);
INSERT INTO `sys_menu_api_rule` VALUES (45, 151);
INSERT INTO `sys_menu_api_rule` VALUES (46, 156);
COMMIT;

-- ----------------------------
-- Table structure for sys_migration
-- ----------------------------
DROP TABLE IF EXISTS `sys_migration`;
CREATE TABLE `sys_migration` (
  `version` varchar(191) NOT NULL,
  `apply_time` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_migration
-- ----------------------------
BEGIN;
INSERT INTO `sys_migration` VALUES ('1599190683659', '2024-07-18 13:52:21.781');
INSERT INTO `sys_migration` VALUES ('1653638869132', '2024-07-18 13:52:21.846');
COMMIT;

-- ----------------------------
-- Table structure for sys_opera_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_opera_log`;
CREATE TABLE `sys_opera_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `title` varchar(255) DEFAULT NULL COMMENT '操作模块',
  `business_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `business_types` varchar(128) DEFAULT NULL COMMENT 'BusinessTypes',
  `method` varchar(128) DEFAULT NULL COMMENT '函数',
  `request_method` varchar(128) DEFAULT NULL COMMENT '请求方式: GET POST PUT DELETE',
  `operator_type` varchar(128) DEFAULT NULL COMMENT '操作类型',
  `oper_name` varchar(128) DEFAULT NULL COMMENT '操作者',
  `dept_name` varchar(128) DEFAULT NULL COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT NULL COMMENT '访问地址',
  `oper_ip` varchar(128) DEFAULT NULL COMMENT '客户端ip',
  `oper_location` varchar(128) DEFAULT NULL COMMENT '访问位置',
  `oper_param` text COMMENT '请求参数',
  `status` varchar(4) DEFAULT NULL COMMENT '操作状态 1:正常 2:关闭',
  `oper_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `json_result` varchar(255) DEFAULT NULL COMMENT '返回数据',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `latency_time` varchar(128) DEFAULT NULL COMMENT '耗时',
  `user_agent` varchar(255) DEFAULT NULL COMMENT 'ua',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_sys_opera_log_create_by` (`create_by`),
  KEY `idx_sys_opera_log_update_by` (`update_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(128) DEFAULT NULL,
  `post_code` varchar(128) DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`),
  KEY `idx_sys_post_update_by` (`update_by`),
  KEY `idx_sys_post_deleted_at` (`deleted_at`),
  KEY `idx_sys_post_create_by` (`create_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, '首席执行官', 'CEO', 0, 2, '首席执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` VALUES (2, '首席技术执行官', 'CTO', 2, 2, '首席技术执行官', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_post` VALUES (3, '首席运营官', 'COO', 3, 2, '测试工程师', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `role_key` varchar(128) DEFAULT NULL,
  `role_sort` bigint(20) DEFAULT NULL,
  `flag` varchar(128) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `data_scope` varchar(128) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`role_id`),
  KEY `idx_sys_role_deleted_at` (`deleted_at`),
  KEY `idx_sys_role_create_by` (`create_by`),
  KEY `idx_sys_role_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '系统管理员', '2', 'admin', 1, '', '', 1, '', 1, 1, '2021-05-13 19:56:37.913', '2021-05-13 19:56:37.913', NULL);
INSERT INTO `sys_role` VALUES (2, '普通用户', '2', 'user', 1, '', '', 0, '', 0, 0, '2024-07-19 17:54:34.760', '2024-07-19 17:55:02.521', NULL);
INSERT INTO `sys_role` VALUES (3, 'gov', '2', 'gov', 1, '', '', 0, '', 0, 0, '2024-07-19 18:10:34.406', '2024-08-03 21:37:28.701', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` smallint(6) NOT NULL,
  `dept_id` smallint(6) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `fk_sys_role_menu_sys_menu` (`menu_id`),
  CONSTRAINT `fk_sys_role_menu_sys_menu` FOREIGN KEY (`menu_id`) REFERENCES `sys_menu` (`menu_id`),
  CONSTRAINT `fk_sys_role_menu_sys_role` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (3, 549);
INSERT INTO `sys_role_menu` VALUES (3, 550);
INSERT INTO `sys_role_menu` VALUES (3, 551);
INSERT INTO `sys_role_menu` VALUES (3, 552);
INSERT INTO `sys_role_menu` VALUES (3, 553);
INSERT INTO `sys_role_menu` VALUES (3, 554);
INSERT INTO `sys_role_menu` VALUES (3, 556);
INSERT INTO `sys_role_menu` VALUES (3, 557);
INSERT INTO `sys_role_menu` VALUES (3, 558);
INSERT INTO `sys_role_menu` VALUES (3, 559);
INSERT INTO `sys_role_menu` VALUES (3, 560);
INSERT INTO `sys_role_menu` VALUES (3, 562);
INSERT INTO `sys_role_menu` VALUES (3, 563);
INSERT INTO `sys_role_menu` VALUES (3, 564);
INSERT INTO `sys_role_menu` VALUES (3, 565);
INSERT INTO `sys_role_menu` VALUES (3, 566);
INSERT INTO `sys_role_menu` VALUES (3, 568);
INSERT INTO `sys_role_menu` VALUES (3, 569);
INSERT INTO `sys_role_menu` VALUES (3, 570);
INSERT INTO `sys_role_menu` VALUES (3, 571);
INSERT INTO `sys_role_menu` VALUES (3, 572);
INSERT INTO `sys_role_menu` VALUES (3, 573);
COMMIT;

-- ----------------------------
-- Table structure for sys_tables
-- ----------------------------
DROP TABLE IF EXISTS `sys_tables`;
CREATE TABLE `sys_tables` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL,
  `table_comment` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `tpl_category` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `module_front_name` varchar(255) DEFAULT NULL COMMENT '前端文件名',
  `business_name` varchar(255) DEFAULT NULL,
  `function_name` varchar(255) DEFAULT NULL,
  `function_author` varchar(255) DEFAULT NULL,
  `pk_column` varchar(255) DEFAULT NULL,
  `pk_go_field` varchar(255) DEFAULT NULL,
  `pk_json_field` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `tree_code` varchar(255) DEFAULT NULL,
  `tree_parent_code` varchar(255) DEFAULT NULL,
  `tree_name` varchar(255) DEFAULT NULL,
  `tree` tinyint(1) DEFAULT '0',
  `crud` tinyint(1) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `is_data_scope` tinyint(4) DEFAULT NULL,
  `is_actions` tinyint(4) DEFAULT NULL,
  `is_auth` tinyint(4) DEFAULT NULL,
  `is_logical_delete` varchar(1) DEFAULT NULL,
  `logical_delete` tinyint(1) DEFAULT NULL,
  `logical_delete_column` varchar(128) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`table_id`),
  KEY `idx_sys_tables_deleted_at` (`deleted_at`),
  KEY `idx_sys_tables_create_by` (`create_by`),
  KEY `idx_sys_tables_update_by` (`update_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_tables
-- ----------------------------
BEGIN;
INSERT INTO `sys_tables` VALUES (1, 'tb_demo_copy', 'TbDemoCopy', 'TbDemoCopy', 'crud', 'admin', 'tb-demo-copy', '', 'tbDemoCopy', 'TbDemoCopy', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2024-07-18 14:38:10.745', '2024-07-18 14:44:11.274', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (2, 'tb_config', 'TbConfig', 'TbConfig', 'crud', 'admin', 'tb-config', '', 'tbConfig', 'TbConfig', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2024-07-27 14:34:36.547', '2024-07-27 14:38:25.045', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (3, 'tb_table', 'TbTable', 'TbTable', 'crud', 'admin', 'tb-table', '', 'tbTable', 'TbTable', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2024-07-27 19:06:47.887', '2024-07-27 19:14:14.442', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (4, 'tb_zhifajiancha', 'TbZhifajiancha', 'TbZhifajiancha', 'crud', 'admin', 'tb-zhifajiancha', '', 'tbZhifajiancha', 'TbZhifajiancha', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2024-07-27 19:35:46.619', '2024-07-27 19:38:19.779', NULL, 0, 0);
INSERT INTO `sys_tables` VALUES (6, 'tb_zhifa_user', 'TbZhifaUser', 'TbZhifaUser', 'crud', 'admin', 'tb-zhifa-user', '', 'tbZhifaUser', 'TbZhifaUser', 'wenjianzhang', 'id', 'Id', 'id', '', '', '', '', 0, 1, '', 1, 2, 1, '1', 1, 'is_del', '2024-08-03 15:36:24.341', '2024-08-03 15:38:34.811', NULL, 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编码',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `salt` varchar(255) DEFAULT NULL COMMENT '加盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门',
  `post_id` bigint(20) DEFAULT NULL COMMENT '岗位',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`user_id`),
  KEY `idx_sys_user_create_by` (`create_by`),
  KEY `idx_sys_user_update_by` (`update_by`),
  KEY `idx_sys_user_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$PEovVQ.u7ZzMI4707jU89u0pHryqJ8580YZX0LTuAVIdNpy.K82i2', 'admin', '13818888888', 1, '', '/static/uploadfile/d81b56b5-de28-4b31-88f7-3fb33575f197.jpg', '1', '1@qq.com', 7, 1, '', '2', 1, 1, '2021-05-13 19:56:37.914', '2024-07-19 18:13:27.366', NULL);
INSERT INTO `sys_user` VALUES (2, 'gov', '$2a$10$9ZgxD0n8PRJGjiQVhHK2weq3GJ/hNB/Qcwbtzcwb6EVAZeLnRgFsy', 'gov', '15555150781', 3, '', '', '0', '15555150781@163.com', 11, 1, '', '2', 1, 0, '2024-07-19 18:12:51.749', '2024-07-19 18:13:14.192', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_config`;
CREATE TABLE `tb_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `name` varchar(2000) DEFAULT NULL COMMENT '名称',
  `key` varchar(2000) DEFAULT NULL COMMENT 'key',
  `value` longtext COMMENT '值',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_config
-- ----------------------------
BEGIN;
INSERT INTO `tb_config` VALUES (1, '第2页-备案告知', 'notice', '新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息新消息', '2024-07-27 14:41:57.732', '2024-08-01 19:44:56.213', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (2, '第2页-模板下载1', 'template1', 'http://127.0.0.1:8100/static/uploadfile/e3c85500-67da-483d-8f52-ff069ed3b593.jpg', '2024-07-27 14:43:42.875', '2024-08-01 19:51:58.544', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (3, '第3页-黑名单企业', 'heimingdanqiye', '111\n222\n333\n444', '2024-07-27 14:44:45.561', '2024-07-31 20:28:20.942', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (4, '第3页-灰名单企业', 'huimingdanqiye', '111\n222\n333\n444\n555', '2024-07-27 14:45:29.726', '2024-07-31 20:28:34.458', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (5, '第5页-备案通过提示', 'beiantongguotishi', '您已提交完毕相关材料，工作人员将于3个工作日内对备案材料进行审核，您可从 “施工备案结果查询” 入口进行备案结果查询或补充相关材料。', '2024-07-27 14:50:29.508', '2024-08-03 09:48:18.626', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (6, '第1页-标题1', 'title1', '南磨房地区', '2024-07-31 20:18:57.661', '2024-08-01 17:32:25.218', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (7, '第1页-页脚', 'end', '如有问题，请联系南磨房地区平安办 67322223-527。', '2024-07-31 20:21:47.155', '2024-08-01 21:25:11.866', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (8, '第2页-模板下载2', 'template2', 'http://127.0.0.1:8100/static/uploadfile/e3c85500-67da-483d-8f52-ff069ed3b593.jpg', '2024-07-31 23:04:45.128', '2024-08-01 19:52:01.691', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (9, '第1页-标题2', 'title2', '限额以下小型施工备案', '2024-08-01 17:31:49.987', '2024-08-01 17:32:30.030', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (10, '执法检查-第1页-标题2', 'zhifa-title2', '录制30秒内的视频进行上传', '2024-08-03 15:13:35.723', '2024-08-03 16:57:31.241', NULL, 1, 1);
INSERT INTO `tb_config` VALUES (11, '执法检查-第1页-标题1', 'zhifa-title1', '执法检查', '2024-08-03 16:37:42.277', '2024-08-03 16:38:15.538', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_demo
-- ----------------------------
DROP TABLE IF EXISTS `tb_demo`;
CREATE TABLE `tb_demo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`),
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for tb_demo_copy
-- ----------------------------
DROP TABLE IF EXISTS `tb_demo_copy`;
CREATE TABLE `tb_demo_copy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `uid` varchar(128) DEFAULT NULL COMMENT '名称',
  `data1` longtext,
  `data2` longtext,
  `data3` longtext,
  `data4` longtext,
  `status` varchar(128) DEFAULT NULL COMMENT '审批状态',
  `status_text` varchar(128) DEFAULT NULL COMMENT '审批备注原因',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_demo_copy
-- ----------------------------
BEGIN;
INSERT INTO `tb_demo_copy` VALUES (1, '1', '2', '3', '4', '5', '6', '7', '2024-07-18 14:44:56.512', '2024-07-18 14:44:56.512', NULL, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for tb_table
-- ----------------------------
DROP TABLE IF EXISTS `tb_table`;
CREATE TABLE `tb_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `phone` varchar(255) NOT NULL COMMENT '手机号',
  `zuoyemianji` longtext COMMENT '作业面积',
  `zuoyedizhi` longtext COMMENT '作业地址',
  `suoshushequ` longtext COMMENT '所属社区',
  `fabaofang_name` longtext COMMENT '发包方名称',
  `fabaofang_user` longtext COMMENT '发包方联系人',
  `fabaofang_phone` longtext COMMENT '发包方联系方式',
  `shigongfang_name` longtext COMMENT '施工方名称',
  `shigongfang_user` longtext COMMENT '施工方项目负责人',
  `shigongfang_phone` longtext COMMENT '施工方联系方式',
  `yingyezhizhao` longtext COMMENT '营业执照',
  `farenid` longtext COMMENT '法人id',
  `anquanxvkezheng` longtext COMMENT '建筑企业资质安全生产许可证',
  `shouquanweituozhu` longtext COMMENT '授权委托书',
  `fuzerenid` longtext COMMENT '项目负责人身份证',
  `jiayishuangfangshigonghetong` longtext COMMENT '甲乙双方施工合同',
  `anquanshengchanzerenbaoxian` longtext COMMENT '安全生产责任保险',
  `tezhongzuoyezheng` longtext COMMENT '特种作业证',
  `status` longtext COMMENT '审核状态',
  `working_date` varchar(255) DEFAULT NULL COMMENT '施工时间',
  `working_status` varchar(255) DEFAULT NULL COMMENT '施工状态（在施/超期/已延期在施/已销账）',
  `remark` longtext COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_table
-- ----------------------------
BEGIN;
INSERT INTO `tb_table` VALUES (1, '13333728570', '100', '河南省安阳市滑县新区岸上公馆', '滑县新区', '银丰科耀', '王德丰', '13333728570', '银丰科耀2', '王德丰2', '15555150781', 'https://pic.bythedu.com/defeng_boke/image-1_1720356354652.png', 'https://pic.bythedu.com/defeng_boke/image-1_1720356354652.png', '', '', '', '', '', '', '', '', '', '', '2024-07-28 12:58:33.010', '2024-08-03 21:32:30.691', NULL, 1, 1);
INSERT INTO `tb_table` VALUES (2, '133', '测试', '1', '1', '1', '1', '1', '1', '1', '1', 'http://127.0.0.1:8100/static/uploadfile/834f8d43-f387-4f6c-a842-68f0f818f042.jpg', 'http://127.0.0.1:8100/static/uploadfile/55631fa0-363c-4b3f-b729-b20cb26ffe91.jpg', '', '', '', 'http://127.0.0.1:8100/static/uploadfile/f3b81bb8-ed2d-4962-9af6-1d1ff228e373.jpg', '', NULL, '', NULL, NULL, '', '2024-08-01 22:27:07.572', '2024-08-01 22:27:07.572', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (3, '133', '测试', '1', '1', '1', '1', '1', '1', '1', '1', 'http://127.0.0.1:8100/static/uploadfile/834f8d43-f387-4f6c-a842-68f0f818f042.jpg', 'http://127.0.0.1:8100/static/uploadfile/55631fa0-363c-4b3f-b729-b20cb26ffe91.jpg', 'http://127.0.0.1:8100/static/uploadfile/3bf49dab-04ab-4c25-80d9-78a5a4723527.jpg', 'http://127.0.0.1:8100/static/uploadfile/014143bd-489b-4655-abb6-9af32612892f.jpg', 'http://127.0.0.1:8100/static/uploadfile/711c91b6-c0c0-4ed6-a6e7-35e06dbff27e.jpg', 'http://127.0.0.1:8100/static/uploadfile/f3b81bb8-ed2d-4962-9af6-1d1ff228e373.jpg', 'http://127.0.0.1:8100/static/uploadfile/4918e1a8-7a6f-44f4-9161-b10e8071ef23.jpg', NULL, '', NULL, NULL, '', '2024-08-01 22:27:40.167', '2024-08-01 22:27:40.167', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (4, '11111111111', '测试', '1', '1', '1', '1', '2', '2', '2', '21', 'http://127.0.0.1:8100/static/uploadfile/6174da0d-2aaa-413c-9c75-ff3127af7961.psd', 'http://127.0.0.1:8100/static/uploadfile/67843eda-3a9e-4c1e-82be-7d166182de43.png', 'http://127.0.0.1:8100/static/uploadfile/4709e3b1-20fa-42df-97f1-5ffba50c591e.exe', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-02 23:31:29.918', '2024-08-02 23:31:29.918', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (5, '11111111111', '测试', '1', '1', '1', '1', '2', '2', '2', '21', 'http://127.0.0.1:8100/static/uploadfile/6174da0d-2aaa-413c-9c75-ff3127af7961.psd', 'http://127.0.0.1:8100/static/uploadfile/67843eda-3a9e-4c1e-82be-7d166182de43.png', 'http://127.0.0.1:8100/static/uploadfile/4709e3b1-20fa-42df-97f1-5ffba50c591e.exe', 'http://127.0.0.1:8100/static/uploadfile/60827a69-bf02-47c9-b67f-eff9f4d93541.csv', '', '', '', NULL, '', NULL, NULL, '', '2024-08-02 23:36:32.668', '2024-08-02 23:36:32.668', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (6, '11111112222', '测试', '1', '1', '1', '1', '1', '1', '1', '12', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-02 23:47:13.875', '2024-08-02 23:47:13.875', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (7, '11111112222', '测试', '1', '1', '1', '1', '1', '1', '1', '12', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-02 23:47:19.011', '2024-08-02 23:47:19.011', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (8, '22222222222', '测试', '2', '22', '22', '2', '2', '2', '2', '2', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-02 23:48:01.753', '2024-08-02 23:48:01.753', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (9, '12311111111', '测试', '1', '2', '3', '4', '5', '6', '7', '8', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-03 09:42:52.427', '2024-08-03 09:42:52.427', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (10, '11111111111', '测试', '1', '1', '1', '1', '11111111111', '2', '2', '11111111111', 'http://127.0.0.1:8100/static/uploadfile/29fc9f1d-c472-4d2a-b8ee-27f3ad10c5e2.jpg', 'http://127.0.0.1:8100/static/uploadfile/ec7695d7-945d-4f3b-a479-1bd1ec2cae8f.jpg', 'http://127.0.0.1:8100/static/uploadfile/b319512e-098e-4ed9-aea9-172ae8f470fa.jpg', 'http://127.0.0.1:8100/static/uploadfile/ee05e4a8-6535-4023-adb7-f8a06738cfaa.jpg', '', '', '', NULL, '审核未通过', NULL, NULL, '', '2024-08-03 14:11:24.266', '2024-08-03 14:21:29.325', NULL, 0, 1);
INSERT INTO `tb_table` VALUES (11, '11111111111', '测试', '1', '1', '1', '1', '11111111111', '2', '2', '11111111111', 'http://127.0.0.1:8100/static/uploadfile/29fc9f1d-c472-4d2a-b8ee-27f3ad10c5e2.jpg', 'http://127.0.0.1:8100/static/uploadfile/ec7695d7-945d-4f3b-a479-1bd1ec2cae8f.jpg', 'http://127.0.0.1:8100/static/uploadfile/b319512e-098e-4ed9-aea9-172ae8f470fa.jpg', 'http://127.0.0.1:8100/static/uploadfile/ee05e4a8-6535-4023-adb7-f8a06738cfaa.jpg', '', '', '', NULL, '', NULL, NULL, '', '2024-08-03 14:24:53.257', '2024-08-03 14:24:53.257', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (12, '12222222222', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', '测试', 'http://127.0.0.1:8100/static/uploadfile/b6fbc01e-9894-42b0-ace6-c35404cbd6dd.jpg', 'http://127.0.0.1:8100/static/uploadfile/eb3917b8-733f-4e44-a1de-e815cdb7ec6a.jpg', 'http://127.0.0.1:8100/static/uploadfile/2d182eb0-a43b-42c9-a926-b785bf8418e9.jpg', 'http://127.0.0.1:8100/static/uploadfile/13fa3cd6-0788-4ffa-9ca6-a0e7adcb3dcb.jpg', 'http://127.0.0.1:8100/static/uploadfile/6ff1c157-c518-44b7-b538-9bf9e6f83488.jpg', 'http://127.0.0.1:8100/static/uploadfile/26e20ead-954b-4ac3-a9b4-b56e41ed112f.jpg', 'http://127.0.0.1:8100/static/uploadfile/f7e86296-9256-4d2c-9ac9-0c5b700d3629.jpg', NULL, '审核未通过', NULL, NULL, '', '2024-08-03 14:26:02.685', '2024-08-03 14:37:04.013', NULL, 0, 1);
INSERT INTO `tb_table` VALUES (13, '12222222222', '测试', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-03 14:39:05.898', '2024-08-03 14:39:05.898', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (14, '13333728570', '测试', 'k', 'g', 'g', 'v', 'h', 'i', 's', 'q', 'http://101.35.245.54:8100/static/uploadfile/71a094ec-dde5-4e31-9e6a-2d7616afb323.jpg', '', '', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-03 18:52:48.176', '2024-08-03 18:52:48.176', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (15, '13333728570', '测试', 'ff', 'jj', 'fd', 'ui', 're', 'hj', 'oo', 'wr', 'http://101.35.245.54:8100/static/uploadfile/c351f645-76b1-4a03-a082-d10080cb9997.jpg', 'http://101.35.245.54:8100/static/uploadfile/f152b799-9662-4727-97f3-7764a52b1fbc.jpg', 'http://101.35.245.54:8100/static/uploadfile/f3510f26-23df-4303-bd82-6deafc04cf40.txt', '', '', '', '', NULL, '', NULL, NULL, '', '2024-08-03 18:59:45.552', '2024-08-03 18:59:45.552', NULL, 0, 0);
INSERT INTO `tb_table` VALUES (16, '19999999999', '1000', '北京海淀区北京海淀区北京海淀区', '北京海淀区', '发包方', '1', '1', '施工方', '1', '1', 'http://127.0.0.1:8100/static/uploadfile/35c52150-65fb-4363-8a4e-8e1017a733bd.png', 'http://127.0.0.1:8100/static/uploadfile/2eea135b-3d5f-43c2-afde-eabb73d89e24.png', 'http://127.0.0.1:8100/static/uploadfile/f1b5c906-e2a6-4a5b-971c-9fb8b743b24b.png', 'http://127.0.0.1:8100/static/uploadfile/a1154be6-fdc9-4a7b-8500-d353ceb684b6.png', 'http://127.0.0.1:8100/static/uploadfile/bed0de9d-0f64-4d53-94cb-a1117642040d.png', 'http://127.0.0.1:8100/static/uploadfile/e89786de-7604-43b2-9891-efa8a5885785.png', 'http://127.0.0.1:8100/static/uploadfile/299053f4-04fc-4564-9c78-c3e4ff7a9301.png', 'http://127.0.0.1:8100/static/uploadfile/7cc38485-0092-429c-8b88-665281109ed3.jpg', '审核通过', 'x月x日至x月x日', '在施', '', '2024-08-03 19:57:09.779', '2024-08-03 21:33:44.517', NULL, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_zhifa_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_zhifa_user`;
CREATE TABLE `tb_zhifa_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(255) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `department` varchar(255) DEFAULT NULL COMMENT '部门',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_zhifa_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_zhifa_user` VALUES (1, 'admin11', 'admin11', '王德丰', '部门1', '2024-07-18 14:44:56.512', '2024-08-03 21:41:32.911', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for tb_zhifajiancha
-- ----------------------------
DROP TABLE IF EXISTS `tb_zhifajiancha`;
CREATE TABLE `tb_zhifajiancha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编码',
  `pid` bigint(20) DEFAULT NULL COMMENT '项目id',
  `file` longtext COMMENT '照片或视频',
  `text` longtext COMMENT '检查情况',
  `user` longtext COMMENT '上传人',
  `department` longtext COMMENT '所属部门',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '最后更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_tb_demo_create_by` (`create_by`),
  KEY `idx_tb_demo_update_by` (`update_by`),
  KEY `idx_tb_demo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tb_zhifajiancha
-- ----------------------------
BEGIN;
INSERT INTO `tb_zhifajiancha` VALUES (1, 1, 'https://pic.bythedu.com/defeng_boke/image-1_1720356354652.png', '111', 'wdf', 'wdd', '2024-07-28 14:46:25.666', '2024-08-03 21:55:12.358', NULL, 1, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
