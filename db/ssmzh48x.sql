-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmzh48x
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmzh48x/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmzh48x/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmzh48x/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultuser`
--

DROP TABLE IF EXISTS `defaultuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultuser` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `picture` varchar(200) DEFAULT NULL COMMENT '照片',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='注册用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultuser`
--

LOCK TABLES `defaultuser` WRITE;
/*!40000 ALTER TABLE `defaultuser` DISABLE KEYS */;
INSERT INTO `defaultuser` VALUES (81,'2021-03-22 12:25:00','用户名1','123456','姓名1','男',1,'020-89819991','http://localhost:8080/ssmzh48x/upload/defaultuser_picture1.jpg','773890001@qq.com'),(82,'2021-03-22 12:25:00','用户名2','123456','姓名2','男',2,'020-89819992','http://localhost:8080/ssmzh48x/upload/defaultuser_picture2.jpg','773890002@qq.com'),(83,'2021-03-22 12:25:00','用户名3','123456','姓名3','男',3,'020-89819993','http://localhost:8080/ssmzh48x/upload/defaultuser_picture3.jpg','773890003@qq.com'),(84,'2021-03-22 12:25:00','用户名4','123456','姓名4','男',4,'020-89819994','http://localhost:8080/ssmzh48x/upload/defaultuser_picture4.jpg','773890004@qq.com'),(85,'2021-03-22 12:25:00','用户名5','123456','姓名5','男',5,'020-89819995','http://localhost:8080/ssmzh48x/upload/defaultuser_picture5.jpg','773890005@qq.com'),(86,'2021-03-22 12:25:00','用户名6','123456','姓名6','男',6,'020-89819996','http://localhost:8080/ssmzh48x/upload/defaultuser_picture6.jpg','773890006@qq.com');
/*!40000 ALTER TABLE `defaultuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqiyexinxi`
--

DROP TABLE IF EXISTS `discussqiyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='企业信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqiyexinxi`
--

LOCK TABLES `discussqiyexinxi` WRITE;
/*!40000 ALTER TABLE `discussqiyexinxi` DISABLE KEYS */;
INSERT INTO `discussqiyexinxi` VALUES (121,'2021-03-22 12:25:01',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-22 12:25:01',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-22 12:25:01',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-22 12:25:01',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-22 12:25:01',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-22 12:25:01',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussqiyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinxinxi`
--

DROP TABLE IF EXISTS `discusszhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinxinxi`
--

LOCK TABLES `discusszhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhaopinxinxi` DISABLE KEYS */;
INSERT INTO `discusszhaopinxinxi` VALUES (131,'2021-03-22 12:25:01',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-22 12:25:01',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-22 12:25:01',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-22 12:25:01',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-22 12:25:01',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-22 12:25:01',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusszhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jianzhipingjia`
--

DROP TABLE IF EXISTS `jianzhipingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jianzhipingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `qiyepingfen` varchar(200) DEFAULT NULL COMMENT '企业评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='兼职评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jianzhipingjia`
--

LOCK TABLES `jianzhipingjia` WRITE;
/*!40000 ALTER TABLE `jianzhipingjia` DISABLE KEYS */;
INSERT INTO `jianzhipingjia` VALUES (71,'2021-03-22 12:25:00','企业账号1','企业名称1','岗位名称1','1','评价内容1','2021-03-22','学号1','学生姓名1','手机1','是',''),(72,'2021-03-22 12:25:00','企业账号2','企业名称2','岗位名称2','1','评价内容2','2021-03-22','学号2','学生姓名2','手机2','是',''),(73,'2021-03-22 12:25:00','企业账号3','企业名称3','岗位名称3','1','评价内容3','2021-03-22','学号3','学生姓名3','手机3','是',''),(74,'2021-03-22 12:25:00','企业账号4','企业名称4','岗位名称4','1','评价内容4','2021-03-22','学号4','学生姓名4','手机4','是',''),(75,'2021-03-22 12:25:00','企业账号5','企业名称5','岗位名称5','1','评价内容5','2021-03-22','学号5','学生姓名5','手机5','是',''),(76,'2021-03-22 12:25:00','企业账号6','企业名称6','岗位名称6','1','评价内容6','2021-03-22','学号6','学生姓名6','手机6','是','');
/*!40000 ALTER TABLE `jianzhipingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (111,'2021-03-22 12:25:00',1,'用户名1','留言内容1','回复内容1'),(112,'2021-03-22 12:25:01',2,'用户名2','留言内容2','回复内容2'),(113,'2021-03-22 12:25:01',3,'用户名3','留言内容3','回复内容3'),(114,'2021-03-22 12:25:01',4,'用户名4','留言内容4','回复内容4'),(115,'2021-03-22 12:25:01',5,'用户名5','留言内容5','回复内容5'),(116,'2021-03-22 12:25:01',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='兼职资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-22 12:25:00','标题1','简介1','http://localhost:8080/ssmzh48x/upload/news_picture1.jpg','内容1'),(102,'2021-03-22 12:25:00','标题2','简介2','http://localhost:8080/ssmzh48x/upload/news_picture2.jpg','内容2'),(103,'2021-03-22 12:25:00','标题3','简介3','http://localhost:8080/ssmzh48x/upload/news_picture3.jpg','内容3'),(104,'2021-03-22 12:25:00','标题4','简介4','http://localhost:8080/ssmzh48x/upload/news_picture4.jpg','内容4'),(105,'2021-03-22 12:25:00','标题5','简介5','http://localhost:8080/ssmzh48x/upload/news_picture5.jpg','内容5'),(106,'2021-03-22 12:25:00','标题6','简介6','http://localhost:8080/ssmzh48x/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (31,'2021-03-22 12:25:00','企业1','123456','企业名称1','http://localhost:8080/ssmzh48x/upload/qiye_touxiang1.jpg','联系人1','13823888881','773890001@qq.com','企业地址1'),(32,'2021-03-22 12:25:00','企业2','123456','企业名称2','http://localhost:8080/ssmzh48x/upload/qiye_touxiang2.jpg','联系人2','13823888882','773890002@qq.com','企业地址2'),(33,'2021-03-22 12:25:00','企业3','123456','企业名称3','http://localhost:8080/ssmzh48x/upload/qiye_touxiang3.jpg','联系人3','13823888883','773890003@qq.com','企业地址3'),(34,'2021-03-22 12:25:00','企业4','123456','企业名称4','http://localhost:8080/ssmzh48x/upload/qiye_touxiang4.jpg','联系人4','13823888884','773890004@qq.com','企业地址4'),(35,'2021-03-22 12:25:00','企业5','123456','企业名称5','http://localhost:8080/ssmzh48x/upload/qiye_touxiang5.jpg','联系人5','13823888885','773890005@qq.com','企业地址5'),(36,'2021-03-22 12:25:00','企业6','123456','企业名称6','http://localhost:8080/ssmzh48x/upload/qiye_touxiang6.jpg','联系人6','13823888886','773890006@qq.com','企业地址6');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiyexinxi`
--

DROP TABLE IF EXISTS `qiyexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiyexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `qiyeleixing` varchar(200) DEFAULT NULL COMMENT '企业类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuangongrenshu` varchar(200) DEFAULT NULL COMMENT '员工人数',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyejieshao` longtext COMMENT '企业介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='企业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiyexinxi`
--

LOCK TABLES `qiyexinxi` WRITE;
/*!40000 ALTER TABLE `qiyexinxi` DISABLE KEYS */;
INSERT INTO `qiyexinxi` VALUES (41,'2021-03-22 12:25:00','企业账号1','企业名称1','国有企业','http://localhost:8080/ssmzh48x/upload/qiyexinxi_tupian1.jpg','20人以下','联系人1','联系电话1','企业邮箱1','企业介绍1'),(42,'2021-03-22 12:25:00','企业账号2','企业名称2','国有企业','http://localhost:8080/ssmzh48x/upload/qiyexinxi_tupian2.jpg','20人以下','联系人2','联系电话2','企业邮箱2','企业介绍2'),(43,'2021-03-22 12:25:00','企业账号3','企业名称3','国有企业','http://localhost:8080/ssmzh48x/upload/qiyexinxi_tupian3.jpg','20人以下','联系人3','联系电话3','企业邮箱3','企业介绍3'),(44,'2021-03-22 12:25:00','企业账号4','企业名称4','国有企业','http://localhost:8080/ssmzh48x/upload/qiyexinxi_tupian4.jpg','20人以下','联系人4','联系电话4','企业邮箱4','企业介绍4'),(45,'2021-03-22 12:25:00','企业账号5','企业名称5','国有企业','http://localhost:8080/ssmzh48x/upload/qiyexinxi_tupian5.jpg','20人以下','联系人5','联系电话5','企业邮箱5','企业介绍5'),(46,'2021-03-22 12:25:00','企业账号6','企业名称6','国有企业','http://localhost:8080/ssmzh48x/upload/qiyexinxi_tupian6.jpg','20人以下','联系人6','联系电话6','企业邮箱6','企业介绍6');
/*!40000 ALTER TABLE `qiyexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 12:25:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-03-22 12:25:00','学生1','123456','学生姓名1','男','http://localhost:8080/ssmzh48x/upload/xuesheng_touxiang1.jpg','学校1','专业1','13823888881','773890001@qq.com'),(12,'2021-03-22 12:25:00','学生2','123456','学生姓名2','男','http://localhost:8080/ssmzh48x/upload/xuesheng_touxiang2.jpg','学校2','专业2','13823888882','773890002@qq.com'),(13,'2021-03-22 12:25:00','学生3','123456','学生姓名3','男','http://localhost:8080/ssmzh48x/upload/xuesheng_touxiang3.jpg','学校3','专业3','13823888883','773890003@qq.com'),(14,'2021-03-22 12:25:00','学生4','123456','学生姓名4','男','http://localhost:8080/ssmzh48x/upload/xuesheng_touxiang4.jpg','学校4','专业4','13823888884','773890004@qq.com'),(15,'2021-03-22 12:25:00','学生5','123456','学生姓名5','男','http://localhost:8080/ssmzh48x/upload/xuesheng_touxiang5.jpg','学校5','专业5','13823888885','773890005@qq.com'),(16,'2021-03-22 12:25:00','学生6','123456','学生姓名6','男','http://localhost:8080/ssmzh48x/upload/xuesheng_touxiang6.jpg','学校6','专业6','13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengjianli`
--

DROP TABLE IF EXISTS `xueshengjianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengjianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `suohuojiangxiang` varchar(200) DEFAULT NULL COMMENT '所获奖项',
  `suohuojineng` varchar(200) DEFAULT NULL COMMENT '所获技能',
  `xuexiaojingli` longtext COMMENT '学校经历',
  `shehuishijian` longtext COMMENT '社会实践',
  `ziwopingjia` longtext COMMENT '自我评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='学生简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengjianli`
--

LOCK TABLES `xueshengjianli` WRITE;
/*!40000 ALTER TABLE `xueshengjianli` DISABLE KEYS */;
INSERT INTO `xueshengjianli` VALUES (21,'2021-03-22 12:25:00','学号1','学生姓名1','性别1','手机1','邮箱1','学校1','专业1','所获奖项1','所获技能1','学校经历1','社会实践1','自我评价1'),(22,'2021-03-22 12:25:00','学号2','学生姓名2','性别2','手机2','邮箱2','学校2','专业2','所获奖项2','所获技能2','学校经历2','社会实践2','自我评价2'),(23,'2021-03-22 12:25:00','学号3','学生姓名3','性别3','手机3','邮箱3','学校3','专业3','所获奖项3','所获技能3','学校经历3','社会实践3','自我评价3'),(24,'2021-03-22 12:25:00','学号4','学生姓名4','性别4','手机4','邮箱4','学校4','专业4','所获奖项4','所获技能4','学校经历4','社会实践4','自我评价4'),(25,'2021-03-22 12:25:00','学号5','学生姓名5','性别5','手机5','邮箱5','学校5','专业5','所获奖项5','所获技能5','学校经历5','社会实践5','自我评价5'),(26,'2021-03-22 12:25:00','学号6','学生姓名6','性别6','手机6','邮箱6','学校6','专业6','所获奖项6','所获技能6','学校经历6','社会实践6','自我评价6');
/*!40000 ALTER TABLE `xueshengjianli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengyingpin`
--

DROP TABLE IF EXISTS `xueshengyingpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengyingpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gangweigongzi` varchar(200) DEFAULT NULL COMMENT '岗位工资',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `gerenjianli` varchar(200) DEFAULT NULL COMMENT '个人简历',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生应聘';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengyingpin`
--

LOCK TABLES `xueshengyingpin` WRITE;
/*!40000 ALTER TABLE `xueshengyingpin` DISABLE KEYS */;
INSERT INTO `xueshengyingpin` VALUES (61,'2021-03-22 12:25:00','企业账号1','企业名称1','岗位名称1','工作内容1','工作地点1','工作时间1','岗位工资1','2021-03-22','','学号1','学生姓名1','手机1','是',''),(62,'2021-03-22 12:25:00','企业账号2','企业名称2','岗位名称2','工作内容2','工作地点2','工作时间2','岗位工资2','2021-03-22','','学号2','学生姓名2','手机2','是',''),(63,'2021-03-22 12:25:00','企业账号3','企业名称3','岗位名称3','工作内容3','工作地点3','工作时间3','岗位工资3','2021-03-22','','学号3','学生姓名3','手机3','是',''),(64,'2021-03-22 12:25:00','企业账号4','企业名称4','岗位名称4','工作内容4','工作地点4','工作时间4','岗位工资4','2021-03-22','','学号4','学生姓名4','手机4','是',''),(65,'2021-03-22 12:25:00','企业账号5','企业名称5','岗位名称5','工作内容5','工作地点5','工作时间5','岗位工资5','2021-03-22','','学号5','学生姓名5','手机5','是',''),(66,'2021-03-22 12:25:00','企业账号6','企业名称6','岗位名称6','工作内容6','工作地点6','工作时间6','岗位工资6','2021-03-22','','学号6','学生姓名6','手机6','是','');
/*!40000 ALTER TABLE `xueshengyingpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `gongzuoneirong` longtext COMMENT '工作内容',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gangweigongzi` varchar(200) DEFAULT NULL COMMENT '岗位工资',
  `jiesuanfangshi` varchar(200) DEFAULT NULL COMMENT '结算方式',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (51,'2021-03-22 12:25:00','企业账号1','企业名称1','联系人1','联系电话1','企业邮箱1','岗位名称1','http://localhost:8080/ssmzh48x/upload/zhaopinxinxi_tupian1.jpg',1,'工作内容1','工作地点1','工作时间1','岗位工资1','日结','2021-03-22 20:25:00',1),(52,'2021-03-22 12:25:00','企业账号2','企业名称2','联系人2','联系电话2','企业邮箱2','岗位名称2','http://localhost:8080/ssmzh48x/upload/zhaopinxinxi_tupian2.jpg',2,'工作内容2','工作地点2','工作时间2','岗位工资2','日结','2021-03-22 20:25:00',2),(53,'2021-03-22 12:25:00','企业账号3','企业名称3','联系人3','联系电话3','企业邮箱3','岗位名称3','http://localhost:8080/ssmzh48x/upload/zhaopinxinxi_tupian3.jpg',3,'工作内容3','工作地点3','工作时间3','岗位工资3','日结','2021-03-22 20:25:00',3),(54,'2021-03-22 12:25:00','企业账号4','企业名称4','联系人4','联系电话4','企业邮箱4','岗位名称4','http://localhost:8080/ssmzh48x/upload/zhaopinxinxi_tupian4.jpg',4,'工作内容4','工作地点4','工作时间4','岗位工资4','日结','2021-03-22 20:25:00',4),(55,'2021-03-22 12:25:00','企业账号5','企业名称5','联系人5','联系电话5','企业邮箱5','岗位名称5','http://localhost:8080/ssmzh48x/upload/zhaopinxinxi_tupian5.jpg',5,'工作内容5','工作地点5','工作时间5','岗位工资5','日结','2021-03-22 20:25:00',5),(56,'2021-03-22 12:25:00','企业账号6','企业名称6','联系人6','联系电话6','企业邮箱6','岗位名称6','http://localhost:8080/ssmzh48x/upload/zhaopinxinxi_tupian6.jpg',6,'工作内容6','工作地点6','工作时间6','岗位工资6','日结','2021-03-22 20:25:00',6);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 20:54:07
