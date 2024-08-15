/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t364`;
CREATE DATABASE IF NOT EXISTS `t364` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t364`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-06 07:25:58'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-06 07:25:58'),
	(3, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2023-04-06 07:25:58'),
	(4, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2023-04-06 07:25:58'),
	(5, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-04-06 07:25:58'),
	(6, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-04-06 07:25:58'),
	(7, 'jingdian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-06 07:25:58'),
	(8, 'jingdian_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-06 07:25:58'),
	(9, 'jingdian_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-06 07:25:58'),
	(10, 'gonglue_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-06 07:25:58'),
	(11, 'gonglue_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-06 07:25:58'),
	(12, 'gonglue_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-06 07:25:58'),
	(13, 'gonglue_order_types', '订单类型', 101, '已预订', NULL, NULL, '2023-04-06 07:25:58'),
	(14, 'gonglue_order_types', '订单类型', 102, '已取消预订', NULL, NULL, '2023-04-06 07:25:58'),
	(15, 'gonglue_order_types', '订单类型', 103, '已同意', NULL, NULL, '2023-04-06 07:25:58');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 112, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 226, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(3, '帖子标题3', 2, NULL, '发布内容3', 401, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(4, '帖子标题4', 3, NULL, '发布内容4', 391, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(5, '帖子标题5', 1, NULL, '发布内容5', 38, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(6, '帖子标题6', 2, NULL, '发布内容6', 402, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(7, '帖子标题7', 3, NULL, '发布内容7', 424, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(8, '帖子标题8', 1, NULL, '发布内容8', 281, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(9, '帖子标题9', 2, NULL, '发布内容9', 15, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(10, '帖子标题10', 2, NULL, '发布内容10', 128, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(11, '帖子标题11', 1, NULL, '发布内容11', 319, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(12, '帖子标题12', 2, NULL, '发布内容12', 212, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(13, '帖子标题13', 3, NULL, '发布内容13', 215, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(14, '帖子标题14', 3, NULL, '发布内容14', 379, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(15, '帖子', 1, NULL, '<p>帖子1111</p>', NULL, 1, '2023-04-06 07:34:42', NULL, '2023-04-06 07:34:42'),
	(16, NULL, NULL, 1, '45646', 15, 2, '2023-04-06 07:37:40', NULL, '2023-04-06 07:37:40'),
	(17, NULL, 1, NULL, '111', 15, 2, '2024-08-12 06:08:22', NULL, '2024-08-12 06:08:22');

DROP TABLE IF EXISTS `gonglue`;
CREATE TABLE IF NOT EXISTS `gonglue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `gonglue_name` varchar(200) DEFAULT NULL COMMENT '攻略名称  Search111 ',
  `gonglue_uuid_number` varchar(200) DEFAULT NULL COMMENT '攻略编号',
  `gonglue_photo` varchar(200) DEFAULT NULL COMMENT '攻略照片',
  `gonglue_chu_address` varchar(200) DEFAULT NULL COMMENT '出发地点',
  `gonglue_mu_address` varchar(200) DEFAULT NULL COMMENT '目的地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `gonglue_content` longtext COMMENT '历史介绍 ',
  `gonglue_xiandai_content` longtext COMMENT '现代简介 ',
  `gonglue_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='旅游攻略';

DELETE FROM `gonglue`;
INSERT INTO `gonglue` (`id`, `jingdian_id`, `gonglue_name`, `gonglue_uuid_number`, `gonglue_photo`, `gonglue_chu_address`, `gonglue_mu_address`, `zan_number`, `cai_number`, `gonglue_content`, `gonglue_xiandai_content`, `gonglue_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '攻略名称1', '1680765970985', 'upload/gonglue1.jpg', '出发地点1', '目的地点1', 193, 131, '历史介绍1', '现代简介1', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(2, 2, '攻略名称2', '1680765970938', 'upload/gonglue2.jpg', '出发地点2', '目的地点2', 141, 163, '历史介绍2', '现代简介2', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(3, 3, '攻略名称3', '1680765970945', 'upload/gonglue3.jpg', '出发地点3', '目的地点3', 1, 271, '历史介绍3', '现代简介3', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(4, 4, '攻略名称4', '1680765970959', 'upload/gonglue4.jpg', '出发地点4', '目的地点4', 20, 282, '历史介绍4', '现代简介4', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(5, 5, '攻略名称5', '1680765970941', 'upload/gonglue5.jpg', '出发地点5', '目的地点5', 39, 185, '历史介绍5', '现代简介5', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(6, 6, '攻略名称6', '1680765971035', 'upload/gonglue6.jpg', '出发地点6', '目的地点6', 423, 39, '历史介绍6', '现代简介6', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(7, 7, '攻略名称7', '1680765971023', 'upload/gonglue7.jpg', '出发地点7', '目的地点7', 340, 237, '历史介绍7', '现代简介7', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(8, 8, '攻略名称8', '1680765971001', 'upload/gonglue8.jpg', '出发地点8', '目的地点8', 181, 59, '历史介绍8', '现代简介8', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(9, 9, '攻略名称9', '1680765970939', 'upload/gonglue9.jpg', '出发地点9', '目的地点9', 392, 85, '历史介绍9', '现代简介9', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(10, 10, '攻略名称10', '1680765970960', 'upload/gonglue10.jpg', '出发地点10', '目的地点10', 64, 111, '历史介绍10', '现代简介10', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(11, 11, '攻略名称11', '1680765971026', 'upload/gonglue11.jpg', '出发地点11', '目的地点11', 123, 129, '历史介绍11', '现代简介11', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(12, 12, '攻略名称12', '1680765971019', 'upload/gonglue12.jpg', '出发地点12', '目的地点12', 133, 211, '历史介绍12', '现代简介12', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(13, 13, '攻略名称13', '1680765971024', 'upload/gonglue13.jpg', '出发地点13', '目的地点13', 255, 91, '历史介绍13', '现代简介13', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(14, 14, '攻略名称14', '1680765970953', 'upload/gonglue14.jpg', '出发地点14', '目的地点14', 9, 85, '历史介绍14', '现代简介14', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10');

DROP TABLE IF EXISTS `gonglue_collection`;
CREATE TABLE IF NOT EXISTS `gonglue_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonglue_id` int DEFAULT NULL COMMENT '旅游攻略',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `gonglue_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='旅游攻略收藏';

DELETE FROM `gonglue_collection`;
INSERT INTO `gonglue_collection` (`id`, `gonglue_id`, `yonghu_id`, `gonglue_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(2, 2, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(3, 3, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(4, 4, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(5, 5, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(6, 6, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(7, 7, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(8, 8, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(9, 9, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(10, 10, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(12, 12, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(13, 13, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(14, 14, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(18, 11, 1, 1, '2024-08-12 06:08:29', '2024-08-12 06:08:29');

DROP TABLE IF EXISTS `gonglue_order`;
CREATE TABLE IF NOT EXISTS `gonglue_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonglue_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `gonglue_id` int DEFAULT NULL COMMENT '攻略',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `gonglue_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `gonglue_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='预订';

DELETE FROM `gonglue_order`;
INSERT INTO `gonglue_order` (`id`, `gonglue_order_uuid_number`, `gonglue_id`, `yonghu_id`, `gonglue_order_time`, `gonglue_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1680766514656', 13, 1, '2023-04-06 07:35:10', 103, '2023-04-06 07:35:15', '2023-04-06 07:35:15');

DROP TABLE IF EXISTS `jingdian`;
CREATE TABLE IF NOT EXISTS `jingdian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称  Search111 ',
  `jingdian_uuid_number` varchar(200) DEFAULT NULL COMMENT '景点编号',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点照片',
  `jingdian_address` varchar(200) DEFAULT NULL COMMENT '景点地点',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jingdian_content` longtext COMMENT '历史介绍 ',
  `jingdian_xiandai_content` longtext COMMENT '现代简介 ',
  `jingdian_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='景点';

DELETE FROM `jingdian`;
INSERT INTO `jingdian` (`id`, `jingdian_name`, `jingdian_uuid_number`, `jingdian_photo`, `jingdian_address`, `zan_number`, `cai_number`, `jingdian_content`, `jingdian_xiandai_content`, `jingdian_delete`, `insert_time`, `create_time`) VALUES
	(1, '景点名称1', '1680765971021', 'upload/jingdian1.jpg', '景点地点1', 109, 281, '历史介绍1', '现代简介1', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(2, '景点名称2', '1680765971021', 'upload/jingdian2.jpg', '景点地点2', 496, 401, '历史介绍2', '现代简介2', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(3, '景点名称3', '1680765971105', 'upload/jingdian3.jpg', '景点地点3', 139, 201, '历史介绍3', '现代简介3', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(4, '景点名称4', '1680765971100', 'upload/jingdian4.jpg', '景点地点4', 133, 290, '历史介绍4', '现代简介4', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(5, '景点名称5', '1680765971097', 'upload/jingdian5.jpg', '景点地点5', 494, 75, '历史介绍5', '现代简介5', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(6, '景点名称6', '1680765971099', 'upload/jingdian6.jpg', '景点地点6', 290, 62, '历史介绍6', '现代简介6', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(7, '景点名称7', '1680765971099', 'upload/jingdian7.jpg', '景点地点7', 172, 422, '历史介绍7', '现代简介7', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(8, '景点名称8', '1680765971082', 'upload/jingdian8.jpg', '景点地点8', 191, 223, '历史介绍8', '现代简介8', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(9, '景点名称9', '1680765971037', 'upload/jingdian9.jpg', '景点地点9', 45, 299, '历史介绍9', '现代简介9', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(10, '景点名称10', '1680765971087', 'upload/jingdian10.jpg', '景点地点10', 188, 483, '历史介绍10', '现代简介10', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(11, '景点名称11', '1680765971117', 'upload/jingdian11.jpg', '景点地点11', 267, 350, '历史介绍11', '现代简介11', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(12, '景点名称12', '1680765971037', 'upload/jingdian12.jpg', '景点地点12', 146, 352, '历史介绍12', '现代简介12', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(13, '景点名称13', '1680765971057', 'upload/jingdian13.jpg', '景点地点13', 256, 91, '历史介绍13', '现代简介13', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(14, '景点名称14', '1680765971053', 'upload/jingdian14.jpg', '景点地点14', 422, 42, '历史介绍14', '现代简介14', 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10');

DROP TABLE IF EXISTS `jingdian_collection`;
CREATE TABLE IF NOT EXISTS `jingdian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '旅游景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='旅游景点收藏';

DELETE FROM `jingdian_collection`;
INSERT INTO `jingdian_collection` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(2, 2, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(3, 3, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(4, 4, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(5, 5, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(6, 6, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(7, 7, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(8, 8, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(9, 9, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(10, 10, 2, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(11, 11, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(12, 12, 3, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(13, 13, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(14, 14, 1, 1, '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(17, 13, 1, 2, '2023-04-06 07:35:21', '2023-04-06 07:35:21'),
	(18, 10, 1, 1, '2024-08-12 06:08:36', '2024-08-12 06:08:36');

DROP TABLE IF EXISTS `jingdian_liuyan`;
CREATE TABLE IF NOT EXISTS `jingdian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int DEFAULT NULL COMMENT '景点',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jingdian_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='景点留言';

DELETE FROM `jingdian_liuyan`;
INSERT INTO `jingdian_liuyan` (`id`, `jingdian_id`, `yonghu_id`, `jingdian_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-04-06 07:26:10', '回复信息1', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(2, 2, 1, '留言内容2', '2023-04-06 07:26:10', '回复信息2', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(3, 3, 1, '留言内容3', '2023-04-06 07:26:10', '回复信息3', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(4, 4, 2, '留言内容4', '2023-04-06 07:26:10', '回复信息4', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(5, 5, 1, '留言内容5', '2023-04-06 07:26:10', '回复信息5', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(6, 6, 3, '留言内容6', '2023-04-06 07:26:10', '回复信息6', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(7, 7, 1, '留言内容7', '2023-04-06 07:26:10', '回复信息7', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(8, 8, 3, '留言内容8', '2023-04-06 07:26:10', '回复信息8', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(9, 9, 1, '留言内容9', '2023-04-06 07:26:10', '回复信息9', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(10, 10, 2, '留言内容10', '2023-04-06 07:26:10', '回复信息10', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(11, 11, 2, '留言内容11', '2023-04-06 07:26:10', '回复信息11', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(12, 12, 3, '留言内容12', '2023-04-06 07:26:10', '回复信息12', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(13, 13, 1, '留言内容13', '2023-04-06 07:26:10', '回复信息13', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(14, 14, 3, '留言内容14', '2023-04-06 07:26:10', '回复信息14', '2023-04-06 07:26:10', '2023-04-06 07:26:10'),
	(15, 13, 1, '亚亚少一点阿萨德', '2023-04-06 07:33:54', '国际化j', '2023-04-06 07:37:05', '2023-04-06 07:33:54');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='新闻资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻名称1', 'upload/news1.jpg', 1, '2023-04-06 07:26:10', '新闻详情1', '2023-04-06 07:26:10'),
	(2, '新闻名称2', 'upload/news2.jpg', 1, '2023-04-06 07:26:10', '新闻详情2', '2023-04-06 07:26:10'),
	(3, '新闻名称3', 'upload/news3.jpg', 1, '2023-04-06 07:26:10', '新闻详情3', '2023-04-06 07:26:10'),
	(4, '新闻名称4', 'upload/news4.jpg', 2, '2023-04-06 07:26:10', '新闻详情4', '2023-04-06 07:26:10'),
	(5, '新闻名称5', 'upload/news5.jpg', 1, '2023-04-06 07:26:10', '新闻详情5', '2023-04-06 07:26:10'),
	(6, '新闻名称6', 'upload/news6.jpg', 2, '2023-04-06 07:26:10', '新闻详情6', '2023-04-06 07:26:10'),
	(7, '新闻名称7', 'upload/news7.jpg', 1, '2023-04-06 07:26:10', '新闻详情7', '2023-04-06 07:26:10'),
	(8, '新闻名称8', 'upload/news8.jpg', 1, '2023-04-06 07:26:10', '新闻详情8', '2023-04-06 07:26:10'),
	(9, '新闻名称9', 'upload/news9.jpg', 1, '2023-04-06 07:26:10', '新闻详情9', '2023-04-06 07:26:10'),
	(10, '新闻名称10', 'upload/news10.jpg', 1, '2023-04-06 07:26:10', '新闻详情10', '2023-04-06 07:26:10'),
	(11, '新闻名称11', 'upload/news11.jpg', 1, '2023-04-06 07:26:10', '新闻详情11', '2023-04-06 07:26:10'),
	(12, '新闻名称12', 'upload/news12.jpg', 1, '2023-04-06 07:26:10', '新闻详情12', '2023-04-06 07:26:10'),
	(13, '新闻名称13', 'upload/news13.jpg', 1, '2023-04-06 07:26:10', '新闻详情13', '2023-04-06 07:26:10'),
	(14, '新闻名称14', 'upload/news14.jpg', 2, '2023-04-06 07:26:10', '新闻详情14', '2023-04-06 07:26:10');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'l14iuj1o64vrwaz0ncbr09szehdl6wjq', '2023-04-06 07:32:51', '2024-08-12 07:08:11'),
	(2, 1, 'admin', 'users', '管理员', 'e4k18i8hj6o4q6acbwsnx0fccmy0lqhv', '2023-04-06 07:36:33', '2024-08-12 07:07:05');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-06 07:25:58');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', '2023-04-06 07:26:10'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', '2023-04-06 07:26:10'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', '2023-04-06 07:26:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
