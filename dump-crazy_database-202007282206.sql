-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: crazy_database
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `m_order`
--

DROP TABLE IF EXISTS `m_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_order` (
  `ORDER_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `CREATE_TIME` varchar(100) NOT NULL,
  `SALES_ID` bigint unsigned DEFAULT NULL,
  `CUSTOMER_NAME` varchar(100) DEFAULT NULL,
  `CUSTOMER_PHONE` varchar(100) DEFAULT NULL,
  `VIHECLE_ID` bigint unsigned DEFAULT NULL,
  `PRICE` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_order`
--

LOCK TABLES `m_order` WRITE;
/*!40000 ALTER TABLE `m_order` DISABLE KEYS */;
INSERT INTO `m_order` VALUES (1,'2020-07-23 14:58:17',1,'张三','13999998888',1,120000),(2,'2020-07-28 17:28:28.057',1,'李四','12345678909',412,412412),(3,'2020-07-28 17:29:10.148',2,'王五','12343212309',343,1341242),(4,'2020-07-28 17:42:54.478',3,'赵六','13134566123',322,3432432),(5,'2020-07-28 17:42:54.528',3,'赵六','13134566123',322,3432432);
/*!40000 ALTER TABLE `m_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_data_permission_test`
--

DROP TABLE IF EXISTS `t_data_permission_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_data_permission_test` (
  `FIELD1` varchar(20) NOT NULL,
  `FIELD2` varchar(20) NOT NULL,
  `FIELD3` varchar(20) NOT NULL,
  `FIELD4` varchar(20) NOT NULL,
  `DEPT_ID` int NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `ID` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限测试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_data_permission_test`
--

LOCK TABLES `t_data_permission_test` WRITE;
/*!40000 ALTER TABLE `t_data_permission_test` DISABLE KEYS */;
INSERT INTO `t_data_permission_test` VALUES ('小米','小米10Pro','4999','珍珠白',1,'2020-04-14 15:00:38',1),('腾讯','黑鲨游戏手机3','3799','铠甲灰',2,'2020-04-14 15:01:36',2),('华为','华为P30','3299','天空之境',1,'2020-04-14 15:03:11',3),('华为','华为P40Pro','6488','亮黑色',3,'2020-04-14 15:04:31',4),('vivo','Vivo iQOO 3','3998','拉力橙',4,'2020-04-14 15:05:55',5),('一加','一加7T','3199','冰际蓝',5,'2020-04-14 15:06:53',6),('三星','三星Galaxy S10','4098','浩玉白',6,'2020-04-14 15:08:25',7),('苹果','iPhone 11 pro max','9198','暗夜绿',4,'2020-04-14 15:09:20',8);
/*!40000 ALTER TABLE `t_data_permission_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dept`
--

DROP TABLE IF EXISTS `t_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE,
  KEY `t_dept_parent_id` (`PARENT_ID`),
  KEY `t_dept_dept_name` (`DEPT_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

LOCK TABLES `t_dept` WRITE;
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` VALUES (1,0,'开发部',1,'2019-06-14 20:56:41',NULL),(2,1,'开发一部',1,'2019-06-14 20:58:46',NULL),(3,1,'开发二部',2,'2019-06-14 20:58:56',NULL),(4,0,'采购部',2,'2019-06-14 20:59:56',NULL),(5,0,'财务部',3,'2019-06-14 21:00:08',NULL),(6,0,'销售部',4,'2019-06-14 21:00:15',NULL),(7,0,'工程部',5,'2019-06-14 21:00:42',NULL),(8,0,'行政部',6,'2019-06-14 21:00:49',NULL),(9,0,'人力资源部',8,'2019-06-14 21:01:14','2019-06-14 21:01:34'),(10,0,'系统部',7,'2019-06-14 21:01:31',NULL);
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_eximport`
--

DROP TABLE IF EXISTS `t_eximport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_eximport` (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段1',
  `FIELD2` int NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Excel导入导出测试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_eximport`
--

LOCK TABLES `t_eximport` WRITE;
/*!40000 ALTER TABLE `t_eximport` DISABLE KEYS */;
INSERT INTO `t_eximport` VALUES ('字段1',1,'mrbird0@gmail.com','2019-06-13 03:14:06'),('字段1',2,'mrbird1@gmail.com','2019-06-13 03:14:06'),('字段1',3,'mrbird2@gmail.com','2019-06-13 03:14:06'),('字段1',4,'mrbird3@gmail.com','2019-06-13 03:14:06'),('字段1',5,'mrbird4@gmail.com','2019-06-13 03:14:06'),('字段1',6,'mrbird5@gmail.com','2019-06-13 03:14:06'),('字段1',7,'mrbird6@gmail.com','2019-06-13 03:14:06'),('字段1',8,'mrbird7@gmail.com','2019-06-13 03:14:06'),('字段1',9,'mrbird8@gmail.com','2019-06-13 03:14:06'),('字段1',10,'mrbird9@gmail.com','2019-06-13 03:14:06'),('字段1',11,'mrbird10@gmail.com','2019-06-13 03:14:06'),('字段1',12,'mrbird11@gmail.com','2019-06-13 03:14:06'),('字段1',13,'mrbird12@gmail.com','2019-06-13 03:14:06'),('字段1',14,'mrbird13@gmail.com','2019-06-13 03:14:06'),('字段1',15,'mrbird14@gmail.com','2019-06-13 03:14:06'),('字段1',16,'mrbird15@gmail.com','2019-06-13 03:14:06'),('字段1',17,'mrbird16@gmail.com','2019-06-13 03:14:06'),('字段1',18,'mrbird17@gmail.com','2019-06-13 03:14:06'),('字段1',19,'mrbird18@gmail.com','2019-06-13 03:14:06'),('字段1',20,'mrbird19@gmail.com','2019-06-13 03:14:06');
/*!40000 ALTER TABLE `t_eximport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_generator_config`
--

DROP TABLE IF EXISTS `t_generator_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_generator_config` (
  `id` int NOT NULL COMMENT '主键',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `base_package` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_generator_config`
--

LOCK TABLES `t_generator_config` WRITE;
/*!40000 ALTER TABLE `t_generator_config` DISABLE KEYS */;
INSERT INTO `t_generator_config` VALUES (1,'MrBird','cc.mrbird.febs.gen','entity','mapper','mapper','service','service.impl','controller','1','t_');
/*!40000 ALTER TABLE `t_generator_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job`
--

DROP TABLE IF EXISTS `t_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job` (
  `JOB_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`) USING BTREE,
  KEY `t_job_create_time` (`CREATE_TIME`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='定时任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job`
--

LOCK TABLES `t_job` WRITE;
/*!40000 ALTER TABLE `t_job` DISABLE KEYS */;
INSERT INTO `t_job` VALUES (1,'testTask','test','mrbird','0/1 * * * * ?','1','有参任务调度测试~~','2018-02-24 16:26:14'),(2,'testTask','test1',NULL,'0/10 * * * * ?','1','无参任务调度测试','2018-02-24 17:06:23'),(3,'testTask','test','hello world','0/1 * * * * ?','1','有参任务调度测试,每隔一秒触发','2018-02-26 09:28:26'),(11,'testTask','test2',NULL,'0/5 * * * * ?','1','测试异常','2018-02-26 11:15:30');
/*!40000 ALTER TABLE `t_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_job_log`
--

DROP TABLE IF EXISTS `t_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`) USING BTREE,
  KEY `t_job_log_create_time` (`CREATE_TIME`)
) ENGINE=MyISAM AUTO_INCREMENT=2562 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_job_log`
--

LOCK TABLES `t_job_log` WRITE;
/*!40000 ALTER TABLE `t_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_log`
--

DROP TABLE IF EXISTS `t_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_log` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `t_log_create_time` (`CREATE_TIME`)
) ENGINE=MyISAM AUTO_INCREMENT=1041 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_log`
--

LOCK TABLES `t_log` WRITE;
/*!40000 ALTER TABLE `t_log` DISABLE KEYS */;
INSERT INTO `t_log` VALUES (1011,'MrBird','新增菜单/按钮',59,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=, perms=, icon=layui-icon-filedone, type=0, orderNum=null, createTime=Tue Jul 21 15:35:20 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:35:21','内网IP|0|0|内网IP|内网IP'),(1012,'MrBird','新增菜单/按钮',36,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=, icon=layui-icon-file-add, type=0, orderNum=null, createTime=Tue Jul 21 15:37:59 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:38:00','内网IP|0|0|内网IP|内网IP'),(1013,'MrBird','新增菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=订单审批, url=, perms=, icon=layui-icon-fileprotect, type=0, orderNum=null, createTime=Tue Jul 21 15:38:34 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:38:34','内网IP|0|0|内网IP|内网IP'),(1014,'MrBird','修改菜单/按钮',29,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=, perms=, icon=layui-icon-fileprotect, type=0, orderNum=null, createTime=null, modifyTime=Tue Jul 21 15:38:52 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-21 15:38:53','内网IP|0|0|内网IP|内网IP'),(1015,'MrBird','新增菜单/按钮',23,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=layui-icon-reconciliation, type=0, orderNum=null, createTime=Tue Jul 21 15:39:57 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:39:57','内网IP|0|0|内网IP|内网IP'),(1016,'MrBird','新增菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=183, parentId=181, menuName=销售审核, url=null, perms=, icon=null, type=1, orderNum=null, createTime=Tue Jul 21 15:40:46 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:40:46','内网IP|0|0|内网IP|内网IP'),(1017,'MrBird','新增菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=184, parentId=181, menuName=财务审核, url=null, perms=, icon=null, type=1, orderNum=null, createTime=Tue Jul 21 15:41:03 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:41:03','内网IP|0|0|内网IP|内网IP'),(1018,'MrBird','新增菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.addMenu()',' menu: \"Menu(menuId=185, parentId=181, menuName=交付审核, url=null, perms=, icon=null, type=1, orderNum=null, createTime=Tue Jul 21 15:41:37 CST 2020, modifyTime=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:41:37','内网IP|0|0|内网IP|内网IP'),(1019,'MrBird','修改角色',170,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=1, roleName=系统管理员, remark=系统管理员，拥有所有操作权限 ^_^, createTime=null, modifyTime=Tue Jul 21 15:42:59 CST 2020, menuIds=179,180,181,183,184,185,182,1,3,11,12,13,160,161,4,14,15,16,162,5,17,18,19,163,6,20,21,22,164,2,8,23,10,24,170,136,171,172,127,128,129,131,175,101,102,103,104,105,106,107,108,173,109,110,174,137,138,165,139,166,115,132,133,135,134,126,159,116,117,119,120,121,122,123,118,125,167,168,169,178)\"','0:0:0:0:0:0:0:1','2020-07-21 15:42:59','内网IP|0|0|内网IP|内网IP'),(1020,'MrBird','修改菜单/按钮',18,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Tue Jul 21 15:43:58 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-21 15:43:59','内网IP|0|0|内网IP|内网IP'),(1021,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=181, parentId=179, menuName=审批订单, url=, perms=, icon=layui-icon-fileprotect, type=0, orderNum=2, createTime=null, modifyTime=Tue Jul 21 15:45:44 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-21 15:45:44','内网IP|0|0|内网IP|内网IP'),(1022,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=layui-icon-reconciliation, type=0, orderNum=3, createTime=null, modifyTime=Tue Jul 21 15:45:50 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-21 15:45:51','内网IP|0|0|内网IP|内网IP'),(1023,'MrBird','新增角色',35,'cc.mrbird.febs.system.controller.RoleController.addRole()',' role: \"Role(roleId=81, roleName=销售, remark=车辆销售, createTime=Tue Jul 21 15:47:07 CST 2020, modifyTime=null, menuIds=180)\"','0:0:0:0:0:0:0:1','2020-07-21 15:47:08','内网IP|0|0|内网IP|内网IP'),(1024,'MrBird','新增用户',82,'cc.mrbird.febs.system.controller.UserController.addUser()',' user: \"User(userId=8, username=zhang_san, password=9a0683a550316ea6d1701dbfb1dd7cde, deptId=6, email=abc@aol.com, mobile=13999999999, status=1, createTime=Tue Jul 21 15:50:39 CST 2020, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=81, roleName=null, deptIds=null)\"','0:0:0:0:0:0:0:1','2020-07-21 15:50:40','内网IP|0|0|内网IP|内网IP'),(1025,'MrBird','修改角色',54,'cc.mrbird.febs.system.controller.RoleController.updateRole()',' role: \"Role(roleId=81, roleName=销售, remark=车辆销售, createTime=null, modifyTime=Tue Jul 21 15:52:09 CST 2020, menuIds=179,180)\"','0:0:0:0:0:0:0:1','2020-07-21 15:52:09','内网IP|0|0|内网IP|内网IP'),(1026,'MrBird','修改菜单/按钮',74,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=/system/user, perms=user:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 22 10:18:05 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 10:18:05','内网IP|0|0|内网IP|内网IP'),(1027,'MrBird','修改菜单/按钮',61,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=/system/order, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 22 10:30:36 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 10:30:37','内网IP|0|0|内网IP|内网IP'),(1028,'MrBird','修改菜单/按钮',91,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=/system/order, perms=order:view, order:create, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 22 11:38:07 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 11:38:08','内网IP|0|0|内网IP|内网IP'),(1029,'MrBird','修改菜单/按钮',112,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=/system/order, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 22 11:38:28 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 11:38:29','内网IP|0|0|内网IP|内网IP'),(1030,'MrBird','修改菜单/按钮',85,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 22 13:42:32 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 13:42:33','内网IP|0|0|内网IP|内网IP'),(1031,'MrBird','修改菜单/按钮',69,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order/create, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 22 13:44:10 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 13:44:10','内网IP|0|0|内网IP|内网IP'),(1032,'MrBird','修改菜单/按钮',16,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 22 13:48:21 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 13:48:21','内网IP|0|0|内网IP|内网IP'),(1033,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=, type=0, orderNum=3, createTime=null, modifyTime=Wed Jul 22 13:49:25 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 13:49:25','内网IP|0|0|内网IP|内网IP'),(1034,'MrBird','修改菜单/按钮',17,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=182, parentId=179, menuName=归档订单, url=, perms=, icon=layui-icon-save, type=0, orderNum=3, createTime=null, modifyTime=Wed Jul 22 13:50:02 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 13:50:03','内网IP|0|0|内网IP|内网IP'),(1035,'MrBird','修改菜单/按钮',20,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=179, parentId=0, menuName=订单管理, url=, perms=order:view, icon=layui-icon-filedone, type=0, orderNum=null, createTime=null, modifyTime=Wed Jul 22 14:17:51 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 14:17:51','内网IP|0|0|内网IP|内网IP'),(1036,'MrBird','修改菜单/按钮',19,'cc.mrbird.febs.system.controller.MenuController.updateMenu()',' menu: \"Menu(menuId=180, parentId=179, menuName=新增订单, url=/system/order, perms=order:create, icon=layui-icon-file-add, type=0, orderNum=1, createTime=null, modifyTime=Wed Jul 22 14:17:56 CST 2020)\"','0:0:0:0:0:0:0:1','2020-07-22 14:17:57','内网IP|0|0|内网IP|内网IP'),(1037,'MrBird','新增订单',514,'cc.mrbird.febs.system.controller.OrderController.addUser()',' order: \"Order(orderId=2, salesId=1, customerName=李四, customerPhone=12345678909, vihecleId=412, price=412412, createTime=Tue Jul 28 17:28:28 CST 2020, createTimeFrom=null, createTimeTo=null)\"','127.0.0.1','2020-07-28 17:28:29','内网IP|0|0|内网IP|内网IP'),(1038,'MrBird','新增订单',40,'cc.mrbird.febs.system.controller.OrderController.addUser()',' order: \"Order(orderId=3, salesId=2, customerName=王五, customerPhone=12343212309, vihecleId=343, price=1341242, createTime=Tue Jul 28 17:29:10 CST 2020, createTimeFrom=null, createTimeTo=null)\"','127.0.0.1','2020-07-28 17:29:10','内网IP|0|0|内网IP|内网IP'),(1039,'MrBird','新增订单',54,'cc.mrbird.febs.system.controller.OrderController.addUser()',' order: \"Order(orderId=4, salesId=3, customerName=赵六, customerPhone=13134566123, vihecleId=322, price=3432432, createTime=Tue Jul 28 17:42:54 CST 2020, createTimeFrom=null, createTimeTo=null)\"','127.0.0.1','2020-07-28 17:42:55','内网IP|0|0|内网IP|内网IP'),(1040,'MrBird','新增订单',20,'cc.mrbird.febs.system.controller.OrderController.addUser()',' order: \"Order(orderId=5, salesId=3, customerName=赵六, customerPhone=13134566123, vihecleId=322, price=3432432, createTime=Tue Jul 28 17:42:54 CST 2020, createTimeFrom=null, createTimeTo=null)\"','127.0.0.1','2020-07-28 17:42:55','内网IP|0|0|内网IP|内网IP');
/*!40000 ALTER TABLE `t_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_login_log`
--

DROP TABLE IF EXISTS `t_login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_login_log` (
  `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `t_login_log_login_time` (`LOGIN_TIME`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='登录日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_login_log`
--

LOCK TABLES `t_login_log` WRITE;
/*!40000 ALTER TABLE `t_login_log` DISABLE KEYS */;
INSERT INTO `t_login_log` VALUES (70,'mrbird','2020-07-21 14:55:37','内网IP|0|0|内网IP|内网IP','192.168.0.100','Mac OS X 10_14_5','Safari Version 13.1.1 '),(71,'mrbird','2020-07-21 15:18:41','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(72,'zhang_san','2020-07-21 15:51:07','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(73,'mrbird','2020-07-21 15:51:39','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(74,'zhang_san','2020-07-21 15:52:24','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(75,'mrbird','2020-07-21 15:54:16','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(76,'mrbird','2020-07-22 09:04:49','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(77,'mrbird','2020-07-22 10:15:29','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(78,'mrbird','2020-07-22 13:39:50','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(79,'zhang_san','2020-07-22 13:46:08','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(80,'mrbird','2020-07-22 13:47:28','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(81,'zhang_san','2020-07-22 14:19:25','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(82,'mrbird','2020-07-22 14:19:51','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(83,'mrbird','2020-07-22 15:56:01','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(84,'mrbird','2020-07-23 09:31:56','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),(85,'mrbird','2020-07-23 09:32:11','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),(86,'mrbird','2020-07-23 09:32:14','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),(87,'mrbird','2020-07-23 09:33:11','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),(88,'mrbird','2020-07-23 10:29:39','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(89,'mrbird','2020-07-23 14:15:34','内网IP|0|0|内网IP|内网IP','127.0.0.1','Mac OS X 10_14_5','Safari Version 13.1.1 '),(90,'mrbird','2020-07-23 14:18:38','内网IP|0|0|内网IP|内网IP','127.0.0.1','',''),(91,'mrbird','2020-07-28 20:18:54','内网IP|0|0|内网IP|内网IP','192.168.56.1','Windows 10','Firefox 78');
/*!40000 ALTER TABLE `t_login_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE,
  KEY `t_menu_parent_id` (`PARENT_ID`),
  KEY `t_menu_menu_id` (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,0,'系统管理',NULL,NULL,'layui-icon-setting','0',1,'2017-12-27 16:39:07',NULL),(2,0,'系统监控','','','layui-icon-alert','0',2,'2017-12-27 16:45:51','2019-06-13 11:20:40'),(3,1,'用户管理','/system/user','user:view','','0',1,'2017-12-27 16:47:13','2019-12-04 16:46:50'),(4,1,'角色管理','/system/role','role:view','','0',2,'2017-12-27 16:48:09','2019-06-13 08:57:19'),(5,1,'菜单管理','/system/menu','menu:view','','0',3,'2017-12-27 16:48:57','2019-06-13 08:57:34'),(6,1,'部门管理','/system/dept','dept:view','','0',4,'2017-12-27 16:57:33','2019-06-14 19:56:00'),(8,2,'在线用户','/monitor/online','online:view','','0',1,'2017-12-27 16:59:33','2019-06-13 14:30:31'),(10,2,'系统日志','/monitor/log','log:view','','0',2,'2017-12-27 17:00:50','2019-06-13 14:30:37'),(11,3,'新增用户',NULL,'user:add',NULL,'1',NULL,'2017-12-27 17:02:58',NULL),(12,3,'修改用户',NULL,'user:update',NULL,'1',NULL,'2017-12-27 17:04:07',NULL),(13,3,'删除用户',NULL,'user:delete',NULL,'1',NULL,'2017-12-27 17:04:58',NULL),(14,4,'新增角色',NULL,'role:add',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),(15,4,'修改角色',NULL,'role:update',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),(16,4,'删除角色',NULL,'role:delete',NULL,'1',NULL,'2017-12-27 17:06:38',NULL),(17,5,'新增菜单',NULL,'menu:add',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),(18,5,'修改菜单',NULL,'menu:update',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),(19,5,'删除菜单',NULL,'menu:delete',NULL,'1',NULL,'2017-12-27 17:08:02',NULL),(20,6,'新增部门',NULL,'dept:add',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),(21,6,'修改部门',NULL,'dept:update',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),(22,6,'删除部门',NULL,'dept:delete',NULL,'1',NULL,'2017-12-27 17:09:24',NULL),(23,8,'踢出用户',NULL,'user:kickout',NULL,'1',NULL,'2017-12-27 17:11:13',NULL),(24,10,'删除日志',NULL,'log:delete',NULL,'1',NULL,'2017-12-27 17:11:45','2019-06-06 05:56:40'),(101,0,'任务调度',NULL,NULL,'layui-icon-time-circle','0',3,'2018-02-24 15:52:57',NULL),(102,101,'定时任务','/job/job','job:view','','0',1,'2018-02-24 15:53:53','2018-04-25 09:05:12'),(103,102,'新增任务',NULL,'job:add',NULL,'1',NULL,'2018-02-24 15:55:10',NULL),(104,102,'修改任务',NULL,'job:update',NULL,'1',NULL,'2018-02-24 15:55:53',NULL),(105,102,'删除任务',NULL,'job:delete',NULL,'1',NULL,'2018-02-24 15:56:18',NULL),(106,102,'暂停任务',NULL,'job:pause',NULL,'1',NULL,'2018-02-24 15:57:08',NULL),(107,102,'恢复任务',NULL,'job:resume',NULL,'1',NULL,'2018-02-24 15:58:21',NULL),(108,102,'立即执行任务',NULL,'job:run',NULL,'1',NULL,'2018-02-24 15:59:45',NULL),(109,101,'调度日志','/job/log','job:log:view','','0',2,'2018-02-24 16:00:45','2019-06-09 02:48:19'),(110,109,'删除日志',NULL,'job:log:delete',NULL,'1',NULL,'2018-02-24 16:01:21',NULL),(115,0,'其他模块',NULL,NULL,'layui-icon-gift','0',5,'2019-05-27 10:18:07',NULL),(116,115,'Apex图表','','',NULL,'0',2,'2019-05-27 10:21:35',NULL),(117,116,'线性图表','/others/apex/line','apex:line:view',NULL,'0',1,'2019-05-27 10:24:49',NULL),(118,115,'高德地图','/others/map','map:view','','0',3,'2019-05-27 17:13:12','2019-06-12 15:33:00'),(119,116,'面积图表','/others/apex/area','apex:area:view',NULL,'0',2,'2019-05-27 18:49:22',NULL),(120,116,'柱形图表','/others/apex/column','apex:column:view',NULL,'0',3,'2019-05-27 18:51:33',NULL),(121,116,'雷达图表','/others/apex/radar','apex:radar:view',NULL,'0',4,'2019-05-27 18:56:05',NULL),(122,116,'条形图表','/others/apex/bar','apex:bar:view',NULL,'0',5,'2019-05-27 18:57:02',NULL),(123,116,'混合图表','/others/apex/mix','apex:mix:view','','0',6,'2019-05-27 18:58:04','2019-06-06 02:55:23'),(125,115,'导入导出','/others/eximport','others:eximport:view','','0',4,'2019-05-27 19:01:57','2019-06-13 01:20:14'),(126,132,'系统图标','/others/febs/icon','febs:icons:view','','0',4,'2019-05-27 19:03:18','2019-06-06 03:05:26'),(127,2,'请求追踪','/monitor/httptrace','httptrace:view','','0',6,'2019-05-27 19:06:38','2019-06-13 14:36:43'),(128,2,'系统信息',NULL,NULL,NULL,'0',7,'2019-05-27 19:08:23',NULL),(129,128,'JVM信息','/monitor/jvm','jvm:view','','0',1,'2019-05-27 19:08:50','2019-06-13 14:36:51'),(131,128,'服务器信息','/monitor/server','server:view','','0',3,'2019-05-27 19:10:07','2019-06-13 14:37:04'),(132,115,'FEBS组件','','',NULL,'0',1,'2019-05-27 19:13:54',NULL),(133,132,'表单组件','/others/febs/form','febs:form:view',NULL,'0',1,'2019-05-27 19:14:45',NULL),(134,132,'FEBS工具','/others/febs/tools','febs:tools:view','','0',3,'2019-05-29 10:11:22','2019-06-12 13:21:27'),(135,132,'表单组合','/others/febs/form/group','febs:formgroup:view',NULL,'0',2,'2019-05-29 10:16:19',NULL),(136,2,'登录日志','/monitor/loginlog','loginlog:view','','0',3,'2019-05-29 15:56:15','2019-06-13 14:35:56'),(137,0,'代码生成','',NULL,'layui-icon-verticalright','0',4,'2019-06-03 15:35:58',NULL),(138,137,'生成配置','/generator/configure','generator:configure:view',NULL,'0',1,'2019-06-03 15:38:36',NULL),(139,137,'代码生成','/generator/generator','generator:view','','0',2,'2019-06-03 15:39:15','2019-06-13 14:31:38'),(159,132,'其他组件','/others/febs/others','others:febs:others','','0',5,'2019-06-12 07:51:08','2019-06-12 07:51:40'),(160,3,'密码重置',NULL,'user:password:reset',NULL,'1',NULL,'2019-06-13 08:40:13',NULL),(161,3,'导出Excel',NULL,'user:export',NULL,'1',NULL,'2019-06-13 08:40:34',NULL),(162,4,'导出Excel',NULL,'role:export',NULL,'1',NULL,'2019-06-13 14:29:00','2019-06-13 14:29:11'),(163,5,'导出Excel',NULL,'menu:export',NULL,'1',NULL,'2019-06-13 14:29:32',NULL),(164,6,'导出Excel',NULL,'dept:export',NULL,'1',NULL,'2019-06-13 14:29:59',NULL),(165,138,'修改配置',NULL,'generator:configure:update',NULL,'1',NULL,'2019-06-13 14:32:09','2019-06-13 14:32:20'),(166,139,'生成代码',NULL,'generator:generate',NULL,'1',NULL,'2019-06-13 14:32:51',NULL),(167,125,'模板下载',NULL,'eximport:template',NULL,'1',NULL,'2019-06-13 14:33:37',NULL),(168,125,'导出Excel',NULL,'eximport:export',NULL,'1',NULL,'2019-06-13 14:33:57',NULL),(169,125,'导入Excel',NULL,'eximport:import',NULL,'1',NULL,'2019-06-13 14:34:19',NULL),(170,10,'导出Excel',NULL,'log:export',NULL,'1',NULL,'2019-06-13 14:34:55',NULL),(171,136,'删除日志',NULL,'loginlog:delete',NULL,'1',NULL,'2019-06-13 14:35:27','2019-06-13 14:36:08'),(172,136,'导出Excel',NULL,'loginlog:export',NULL,'1',NULL,'2019-06-13 14:36:26',NULL),(173,102,'导出Excel',NULL,'job:export',NULL,'1',NULL,'2019-06-13 14:37:25',NULL),(174,109,'导出Excel',NULL,'job:log:export',NULL,'1',NULL,'2019-06-13 14:37:46','2019-06-13 14:38:02'),(175,2,'Swagger文档','/monitor/swagger','swagger:view','','0',8,'2019-08-18 17:25:36','2019-08-18 17:25:59'),(178,115,'数据权限','/others/datapermission','others:datapermission','','0',5,'2020-04-29 09:34:25',NULL),(179,0,'订单管理','','order:view','layui-icon-filedone','0',NULL,'2020-07-21 15:35:21','2020-07-22 14:17:51'),(180,179,'新增订单','/system/order','order:create','layui-icon-file-add','0',1,'2020-07-21 15:38:00','2020-07-22 14:17:57'),(181,179,'审批订单','','','layui-icon-fileprotect','0',2,'2020-07-21 15:38:34','2020-07-21 15:45:44'),(182,179,'归档订单','','','layui-icon-save','0',3,'2020-07-21 15:39:57','2020-07-22 13:50:03'),(183,181,'销售审核',NULL,'',NULL,'1',NULL,'2020-07-21 15:40:46',NULL),(184,181,'财务审核',NULL,'',NULL,'1',NULL,'2020-07-21 15:41:03',NULL),(185,181,'交付审核',NULL,'',NULL,'1',NULL,'2020-07-21 15:41:37',NULL);
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'系统管理员','系统管理员，拥有所有操作权限 ^_^','2019-06-14 16:23:11','2020-07-21 15:42:59'),(2,'注册账户','注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限','2019-06-14 16:00:15','2019-08-18 17:36:02'),(77,'Redis监控员','负责Redis模块','2019-06-14 20:49:22',NULL),(78,'系统监控员','负责整个系统监控模块','2019-06-14 20:50:07',NULL),(79,'跑批人员','负责任务调度跑批模块','2019-06-14 20:51:02',NULL),(80,'开发人员','拥有代码生成模块的权限','2019-06-14 20:51:26',NULL),(81,'销售','车辆销售','2020-07-21 15:47:08','2020-07-21 15:52:09');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_menu`
--

DROP TABLE IF EXISTS `t_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint NOT NULL COMMENT '菜单/按钮ID',
  KEY `t_role_menu_menu_id` (`MENU_ID`),
  KEY `t_role_menu_role_id` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_menu`
--

LOCK TABLES `t_role_menu` WRITE;
/*!40000 ALTER TABLE `t_role_menu` DISABLE KEYS */;
INSERT INTO `t_role_menu` VALUES (77,2),(78,2),(78,8),(78,23),(78,10),(78,24),(78,170),(78,136),(78,171),(78,172),(78,127),(78,128),(78,129),(78,131),(79,101),(79,102),(79,103),(79,104),(79,105),(79,106),(79,107),(79,108),(79,173),(79,109),(79,110),(79,174),(80,137),(80,138),(80,165),(80,139),(80,166),(2,1),(2,3),(2,161),(2,4),(2,14),(2,162),(2,5),(2,17),(2,163),(2,6),(2,20),(2,164),(2,2),(2,8),(2,10),(2,170),(2,136),(2,172),(2,127),(2,128),(2,129),(2,131),(2,175),(2,101),(2,102),(2,173),(2,109),(2,174),(2,137),(2,138),(2,139),(2,115),(2,132),(2,133),(2,135),(2,134),(2,126),(2,159),(2,116),(2,117),(2,119),(2,120),(2,121),(2,122),(2,123),(2,118),(2,125),(2,167),(2,168),(2,169),(2,178),(1,179),(1,180),(1,181),(1,183),(1,184),(1,185),(1,182),(1,1),(1,3),(1,11),(1,12),(1,13),(1,160),(1,161),(1,4),(1,14),(1,15),(1,16),(1,162),(1,5),(1,17),(1,18),(1,19),(1,163),(1,6),(1,20),(1,21),(1,22),(1,164),(1,2),(1,8),(1,23),(1,10),(1,24),(1,170),(1,136),(1,171),(1,172),(1,127),(1,128),(1,129),(1,131),(1,175),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,173),(1,109),(1,110),(1,174),(1,137),(1,138),(1,165),(1,139),(1,166),(1,115),(1,132),(1,133),(1,135),(1,134),(1,126),(1,159),(1,116),(1,117),(1,119),(1,120),(1,121),(1,122),(1,123),(1,118),(1,125),(1,167),(1,168),(1,169),(1,178),(81,179),(81,180);
/*!40000 ALTER TABLE `t_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `USER_ID` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `DEPT_ID` bigint DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`) USING BTREE,
  KEY `t_user_username` (`USERNAME`),
  KEY `t_user_mobile` (`MOBILE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'MrBird','cb62ad1497597283961545d608f80241',1,'mrbird@qq.com','17788888888','1','2019-06-14 20:39:22','2019-12-04 16:47:11','2020-07-28 20:18:54','0','1','black','cnrhVkzwxjPwAaCfPbdc.png','我是帅比作者。'),(2,'Scott','1d685729d113cfd03872f154939bee1c',10,'scott@gmail.com','17722222222','1','2019-06-14 20:55:53','2019-06-14 21:05:43','2019-08-18 17:36:18','0','1','black','gaOngJwsRYRaVAuXXcmB.png','我是scott。'),(3,'Reina','1461afff857c02afbfb768aa3771503d',4,'Reina@hotmail.com','17711111111','0','2019-06-14 21:07:38','2019-06-14 21:09:06','2019-06-14 21:08:26','1','1','black','5997fedcc7bd4cffbd350b40d1b5b987.jpg','由于公款私用，已被封禁。'),(4,'Micaela','9f2daa2c7bed6870fcbb5b9a51d6300e',10,'Micaela@163.com','17733333333','1','2019-06-14 21:10:13','2019-06-14 21:11:26','2019-06-14 21:10:37','0','0','white','20180414165909.jpg','我叫米克拉'),(5,'Jana','176679b77b3c3e352bd3b30ddc81083e',8,'Jana@126.com','17744444444','1','2019-06-14 21:12:16','2019-06-14 21:12:52','2019-06-14 21:12:32','1','1','white','20180414165821.jpg','大家好，我叫简娜'),(6,'Georgie','dffc683378cdaa015a0ee9554c532225',3,'Georgie@qq.com','17766666666','0','2019-06-14 21:15:09','2019-06-14 21:16:25','2019-06-14 21:16:11','2','0','black','BiazfanxmamNRoxxVxka.png','生产执行rm -rf *，账号封禁T T'),(7,'Margot','31379841b9f4bfde22b8b40471e9a6ce',9,'Margot@qq.com','13444444444','1','2019-06-14 21:17:53','2019-06-14 21:18:59','2019-06-14 21:18:07','1','1','white','20180414165834.jpg','大家好我叫玛戈'),(8,'zhang_san','9a0683a550316ea6d1701dbfb1dd7cde',6,'abc@aol.com','13999999999','1','2020-07-21 15:50:40',NULL,'2020-07-22 14:19:26','0','1','black','default.jpg','');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_data_permission`
--

DROP TABLE IF EXISTS `t_user_data_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_data_permission` (
  `USER_ID` bigint NOT NULL,
  `DEPT_ID` bigint NOT NULL,
  PRIMARY KEY (`USER_ID`,`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户数据权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_data_permission`
--

LOCK TABLES `t_user_data_permission` WRITE;
/*!40000 ALTER TABLE `t_user_data_permission` DISABLE KEYS */;
INSERT INTO `t_user_data_permission` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(3,4),(4,5);
/*!40000 ALTER TABLE `t_user_data_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint NOT NULL COMMENT '角色ID',
  KEY `t_user_role_user_id` (`USER_ID`),
  KEY `t_user_role_role_id` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (1,1),(2,2),(3,77),(4,78),(5,79),(6,80),(7,78),(7,79),(7,80),(8,81);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_table` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mobile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_table`
--

LOCK TABLES `user_table` WRITE;
/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` VALUES (1,'张三','123456','xx@aol.com','13300001111'),(3,'王一','111111','xyz@foxmail.com','13833335555'),(4,'王二','111111','xyz2@foxmail.com','13833335555'),(5,'刘一','123123','liu@foxmail.com','13342402222'),(6,'刘一','123123','liu@foxmail.com','13342402222');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'crazy_database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-28 22:06:47
