/*
Navicat MySQL Data Transfer

Source Server         : local_maria
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mycrmdb

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-02-21 19:05:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crm_contact
-- ----------------------------
DROP TABLE IF EXISTS `crm_contact`;
CREATE TABLE `crm_contact` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '联系人主键ID',
  `c_name` varchar(250) DEFAULT NULL COMMENT '姓名',
  `c_sex` varchar(250) DEFAULT '先生' COMMENT '性别',
  `c_department` varchar(250) DEFAULT NULL COMMENT '部门',
  `c_position` varchar(250) DEFAULT NULL COMMENT '职位',
  `c_birthday` varchar(250) DEFAULT NULL COMMENT '生日',
  `c_tel` varchar(250) DEFAULT NULL COMMENT '电话',
  `c_email` varchar(250) DEFAULT NULL COMMENT '邮箱',
  `c_mob` varchar(250) DEFAULT NULL COMMENT '手机',
  `c_qq` varchar(250) DEFAULT NULL COMMENT 'QQ',
  `c_address` varchar(250) DEFAULT NULL COMMENT '地址',
  `c_hobby` varchar(250) DEFAULT NULL COMMENT '爱好',
  `c_remarks` longtext DEFAULT NULL COMMENT '备注',
  `c_customerid` int(8) DEFAULT NULL COMMENT 'FK客户ID FK',
  `c_createid` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `c_createdate` date DEFAULT NULL COMMENT '创建日期',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `ix_crm_contact` (`c_customerid`),
  KEY `c_createid` (`c_createid`),
  CONSTRAINT `crm_contact_ibfk_1` FOREIGN KEY (`c_customerid`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_contact_ibfk_2` FOREIGN KEY (`c_createid`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_contact
-- ----------------------------
INSERT INTO `crm_contact` VALUES ('1', '杨梅花', '女士', '总经办', '总裁', '1999-05-10', '0917-8311612', 'stnc@163.com', '18710671549', '24464636', '甘肃省', '吃喝玩  haha ', '范22德萨公交卡破的感觉哦破碎的房价合理股价看来应该看，；来到撒娇突然符合', '3', '4', '2014-09-13', '1', null);
INSERT INTO `crm_contact` VALUES ('2', '吴尚艺', '女士', '二蛋', '一蛋', '1999-05-09', '0917-8224692', 'wwww@163.com', '18700765273', '189984562', '倒萨dna空间的', '吃喝玩dsadadasd', '231范德萨发生的过i哦啊额ugjiosjfgoisdfgmvfepoek', '3', '4', '2014-09-13', '1', null);
INSERT INTO `crm_contact` VALUES ('3', '童宗杰', '先生', '片王', '小蛮', '1995-06-15', '0917-8213872', 'dsaad@163.com', '18791770451', '24464636', '231231范德萨发烧发到', '吃喝玩佛挡杀佛第三方', 'cxgsdfglkasjdgfgoadfjogjdfogadg发动机看来根据发动机哦 ', '3', '4', '2014-09-13', '1', null);
INSERT INTO `crm_contact` VALUES ('4', '张三', '女士', '三哥', '牛逼', '1990-05-09', '0917-6462582', '54fsdafa@163.com', '18791385356', '56484516565', 'ds22fdsfdasffdsfaf', '吃喝玩DSAFSDAF', 'fdasfmllfkhdskfha看来今年疯狂的拉萨积分卡三等奖菲拉斯将大幅拉升的平台公司的 广泛大概', '3', '4', '2014-09-13', '1', null);
INSERT INTO `crm_contact` VALUES ('5', '俞敏洪', '先生', '新东方', 'CEO', '1980-01-15', '029-81109822', 'yuminghun@.163.com', '18710722981', '231543543', '北京----------', 'hobby 讲课', '很牛的这人', '6', null, '2015-01-09', '1', null);
INSERT INTO `crm_contact` VALUES ('6', '党小斌', '先生', '总经办', 'CTO', '2015-01-09', '029-89745614', '146546@qq.com', '19465812357', '1234567890', '西安', '唱歌 跳舞', '梅花是猪3倒萨dad哈哈', '4', null, '2015-01-09', '1', null);
INSERT INTO `crm_contact` VALUES ('7', '刘东名', '先生', '维护部', '菜鸟', '2017-04-07', '13641928647', '2279228056@qq.com', '13641928647', '2279228056', '上海', 'movie', '123456', '7', null, '2017-04-07', '1', null);
INSERT INTO `crm_contact` VALUES ('8', '', null, '维护', 'boss', '2017-04-07', '18779111111', '18779111111@qq.com', '18779111111', '18779111111', '上海', '玩', '上海boss', '7', null, '2017-04-07', '1', null);
INSERT INTO `crm_contact` VALUES ('9', '费新文', '先生', '维护部', '经理', '2017-04-04', '1879117396', '2376166307@qq.com', '18779117396', '2376166307', '上海市九亭', '电子竞技', '很强', '8', null, '2017-04-09', '1', null);

-- ----------------------------
-- Table structure for crm_contract
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract`;
CREATE TABLE `crm_contract` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '合同主键PK ID',
  `contract_name` varchar(250) DEFAULT NULL COMMENT '合同名称',
  `serialnumber` varchar(250) DEFAULT NULL COMMENT '合同编号',
  `customer_id` int(8) DEFAULT NULL COMMENT '客户ID Fk',
  `c_depid` int(8) DEFAULT NULL COMMENT '促进部门ID Fk',
  `c_empid` int(8) DEFAULT NULL COMMENT '促进人ID FK',
  `contract_amount` double DEFAULT NULL COMMENT '合同金额',
  `pay_cycle` int(8) DEFAULT NULL COMMENT '付款期数',
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `sign_date` date DEFAULT NULL COMMENT '签定日期',
  `customer_contractor` varchar(250) DEFAULT NULL COMMENT '客户定约人',
  `our_contractor_depid` int(8) DEFAULT NULL COMMENT '我们签定负责部门ID Fk',
  `our_contractor_id` int(8) DEFAULT NULL COMMENT '我们签订负责人ID FK',
  `creater_id` int(8) DEFAULT NULL COMMENT '创建人ID  Fk',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `main_content` longtext DEFAULT NULL COMMENT '合同主体条款',
  `remarks` longtext DEFAULT NULL COMMENT '备注内容',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `c_depid` (`c_depid`),
  KEY `c_empid` (`c_empid`),
  KEY `our_contractor_depid` (`our_contractor_depid`),
  KEY `our_contractor_id` (`our_contractor_id`),
  KEY `creater_id` (`creater_id`),
  CONSTRAINT `crm_contract_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_contract_ibfk_2` FOREIGN KEY (`c_depid`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_contract_ibfk_3` FOREIGN KEY (`c_empid`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_contract_ibfk_4` FOREIGN KEY (`our_contractor_depid`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_contract_ibfk_5` FOREIGN KEY (`our_contractor_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_contract_ibfk_6` FOREIGN KEY (`creater_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_contract
-- ----------------------------
INSERT INTO `crm_contract` VALUES ('1', '租房12132', '121222', '1', '1', '1', '22110.22', '12', '2014-12-07', '2014-12-06', '2014-12-08', 'dfdf2dasdad', '2', '2', '1', null, '的撒发送到范德萨发大水发的是范德萨是的@', '阿打发的手法十分同意后符合规范化@', '1', null);
INSERT INTO `crm_contract` VALUES ('2', '租房2', '121', '1', '2', '2', '1', '1', '2014-12-04', '2014-12-05', '2014-12-02', 'dfdf', '2', '2', '1', '2014-12-12', '的撒发送到范德萨发大水发的是范德萨是的', '阿打发的手法十分同意后符合规范化', '1', null);
INSERT INTO `crm_contract` VALUES ('3', '租房3', '121', '1', '2', '2', '1', '1', '2014-12-04', '2014-12-05', '2014-12-02', 'dfdf', '4', '4', '1', '2014-12-12', '的撒发送到范德萨发大水发的是范德萨是的', '阿打发的手法十分同意后符合规范化', '1', null);
INSERT INTO `crm_contract` VALUES ('4', 'namecontract', '1212313', '1', '2', '2', '111111', '22', '2015-01-05', '2015-01-07', '2015-01-08', 'KKKKF', '1', '1', null, '2015-01-07', 'pppppppppppppppppppppppppppppp', 'wwwwwwwwwwwwwwwwwwwwwww', '1', null);
INSERT INTO `crm_contract` VALUES ('5', 'ccccccc', '12132131', '1', '4', '4', '22', '11', '2015-01-01', '2015-01-02', '2015-01-03', 'QQQQ', '1', '1', null, '2015-01-07', 'DDDDDDDDDDDDD', 'AAAAAAAAAAAAAAAAAAAAA', '1', null);

-- ----------------------------
-- Table structure for crm_customer
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer`;
CREATE TABLE `crm_customer` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '客户表主键 PK',
  `serialnumber` varchar(250) DEFAULT NULL COMMENT '客户序列号',
  `customer` varchar(250) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(250) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(250) DEFAULT NULL COMMENT '公司电话',
  `site` varchar(250) DEFAULT NULL COMMENT '公司网止',
  `provinces_id` int(8) DEFAULT NULL COMMENT '公司省份ID Fk',
  `city_id` int(8) DEFAULT NULL COMMENT '公司城市ID FK',
  `customerindustry_id` int(8) DEFAULT NULL COMMENT '所属行业外键 FK',
  `customertype_id` int(8) DEFAULT NULL COMMENT '公司客户类型ID FK',
  `customerlevel_id` int(8) DEFAULT NULL COMMENT '公司客户等级ID Fk',
  `customersource_id` int(8) DEFAULT NULL COMMENT '公司客户来源渠道　Fk',
  `descripe` varchar(4000) DEFAULT NULL COMMENT '客户描述',
  `remarks` varchar(4000) DEFAULT NULL COMMENT '备  注',
  `department_id` int(8) DEFAULT NULL COMMENT '负责部门ID FK',
  `employee_id` int(8) DEFAULT NULL COMMENT '负责员工ID　FK',
  `privatecustomer` varchar(50) DEFAULT NULL COMMENT '公司客户状态值有（公客／私客）',
  `lastfollow` date DEFAULT NULL COMMENT '最后一次跟进时间',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人id　FK',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `ix_crm_customer_customer` (`customer`),
  KEY `ix_crm_customer_lastfollow` (`lastfollow`),
  KEY `ix_crm_customer_private` (`privatecustomer`),
  KEY `ix_crm_customer_tel` (`tel`),
  KEY `provinces_id` (`provinces_id`),
  KEY `city_id` (`city_id`),
  KEY `customertype_id` (`customertype_id`),
  KEY `customerlevel_id` (`customerlevel_id`),
  KEY `customersource_id` (`customersource_id`),
  KEY `department_id` (`department_id`),
  KEY `employee_id` (`employee_id`),
  KEY `create_id` (`create_id`),
  KEY `customerindustry_id` (`customerindustry_id`),
  CONSTRAINT `crm_customer_ibfk_1` FOREIGN KEY (`provinces_id`) REFERENCES `param_city` (`id`),
  CONSTRAINT `crm_customer_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `param_city` (`id`),
  CONSTRAINT `crm_customer_ibfk_3` FOREIGN KEY (`customertype_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_customer_ibfk_4` FOREIGN KEY (`customerlevel_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_customer_ibfk_5` FOREIGN KEY (`customersource_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_customer_ibfk_6` FOREIGN KEY (`department_id`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_customer_ibfk_7` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_customer_ibfk_8` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_customer_ibfk_9` FOREIGN KEY (`customerindustry_id`) REFERENCES `param_sysparam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer
-- ----------------------------
INSERT INTO `crm_customer` VALUES ('1', '22', '西安金蝶', '西安市长安路', '029-93110141', 'wwww.jindie.com', '12', '201', '33', '2', '4', '7', '阿斯顿发大发大的撒大大大苏打', '阿斯顿发的撒倒萨哒哒哒1321312', '1', '1', '公客', '2014-12-02', '1', '2014-12-01', '1', null);
INSERT INTO `crm_customer` VALUES ('2', '22', '西安软通', '北京市', '029-89123112', 'wwww.sdads.com', '17', '293', '34', '1', '6', '8', '阿3213斯顿发大发大222222222', '阿3213斯顿发的撒123', '4', '4', '私客', '2014-12-02', '1', '2014-12-01', '1', null);
INSERT INTO `crm_customer` VALUES ('3', '22', '西安欧畅', '北京市', '029-89432282', 'wwww.ouchang.com', '3', '73', '41', '1', '5', '10', '阿斯1222222222222顿发大发大', '阿斯顿2222222222222222发的撒', '2', '2', '私客', '2014-12-02', '1', '2014-12-01', '1', null);
INSERT INTO `crm_customer` VALUES ('4', '22', '辉辉制药', '黑龙江', '029-89444112', 'wwww.huihui.com', '5', '107', '38', '3', '4', '9', '阿斯23eqw21发大发大dsad', '阿斯WAFDA顿fsadfasf发的撒', '4', '4', '公客', '2014-12-02', '1', '2014-12-01', '1', null);
INSERT INTO `crm_customer` VALUES ('6', '222222222222231', '新东方', '西安西郊', '029-89425112', 'www.xindf.com', '13', '217', '39', '2', '5', '8', '的撒旦看看对方；联发科；打开；高考房', '带来可观的发那个肯定是女生看见内需政策', '4', '4', '公客', null, null, '2015-01-09', '1', null);
INSERT INTO `crm_customer` VALUES ('7', '111122', '上海亚信', '上海市', '111111', 'www.asiainfo.com', '2', '56', '43', '2', '4', '8', 'it', '移动', '1', '1', '公客', null, null, '2017-04-07', '1', null);
INSERT INTO `crm_customer` VALUES ('8', '123', '中国亚信上海分公司', '上海市徐汇区漕河泾开发区', '13641928647', 'www.asiainfo.com', '2', '56', '43', '3', '4', '9', '', '哈哈', '1', '1', '公客', null, null, '2017-04-09', '1', null);

-- ----------------------------
-- Table structure for crm_follow
-- ----------------------------
DROP TABLE IF EXISTS `crm_follow`;
CREATE TABLE `crm_follow` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '客户跟进主键PK',
  `customer_id` int(8) NOT NULL COMMENT '跟进客户ID FK',
  `follow` varchar(4000) DEFAULT NULL COMMENT '跟进内容',
  `follow_date` date DEFAULT NULL COMMENT '跟进日期',
  `follow_type_id` int(8) DEFAULT NULL COMMENT '跟进方式ID FK',
  `department_id` int(8) DEFAULT NULL COMMENT '部门ID FK',
  `employee_id` int(8) DEFAULT NULL COMMENT '负责员工ID FK',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `follow_type_id` (`follow_type_id`),
  KEY `department_id` (`department_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `crm_follow_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_follow_ibfk_2` FOREIGN KEY (`follow_type_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_follow_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_follow_ibfk_4` FOREIGN KEY (`employee_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_follow
-- ----------------------------
INSERT INTO `crm_follow` VALUES ('1', '1', '广泛大使馆反对高富帅公司的风格', '2015-02-12', '12', '2', '2', '1', null);
INSERT INTO `crm_follow` VALUES ('2', '1', '幅度萨芬开裆裤啦附近的价格嘀咕嘀咕嘀咕嘀咕分公司大概多少个', '2015-02-13', '13', '2', '2', '1', null);
INSERT INTO `crm_follow` VALUES ('5', '1', '看佛经撒都放假哦阿娇发动机风骚非机动', '2014-11-06', '11', '2', '2', '1', null);
INSERT INTO `crm_follow` VALUES ('6', '1', '佛挡杀佛各个分公司的风格根深蒂固的时光广东省分公司的灌水灌水的广东省分公司分管', '2015-01-09', '12', '1', '1', '1', null);
INSERT INTO `crm_follow` VALUES ('7', '1', 'fdslkajgkd努力克服克拉的发生你付款了女生开房你受苦了', '2015-01-10', '14', '1', '1', '1', '2015-02-07');
INSERT INTO `crm_follow` VALUES ('8', '1', '放到沙发上发呆顺丰萨芬大声说道刚刚发的的法国法国法国大使馆', '2015-01-09', '16', '1', '1', '1', null);
INSERT INTO `crm_follow` VALUES ('9', '1', '的撒感到翻跟斗', '2015-01-09', '12', '1', '1', '1', '2015-02-07');
INSERT INTO `crm_follow` VALUES ('10', '1', '的撒法嘎多个大概嘎嘎大概', '2015-01-14', '13', '1', '1', '1', '2015-02-07');
INSERT INTO `crm_follow` VALUES ('11', '1', '大师傅大使馆和规范化的恢复鬼画符的规划', '2015-01-28', '13', '1', '1', '1', '2015-02-07');
INSERT INTO `crm_follow` VALUES ('12', '2', '大概多少公分的恢复的好地方共和国的回复和改进改进和国家法规巨化股份', '2015-01-15', '13', '1', '1', '1', null);
INSERT INTO `crm_follow` VALUES ('13', '2', '发大水发发规范化广泛的好地方规划的风格多发发地方撒发顺丰', '2015-01-16', '14', '1', '1', '1', null);
INSERT INTO `crm_follow` VALUES ('14', '2', '法大师傅撒旦刚刚发的鬼斧神工第三方工具广东省分公司的公司法规定是高帅富广告费', '2015-01-10', '15', '1', '1', '1', null);
INSERT INTO `crm_follow` VALUES ('15', '4', '的撒发生发射点发生fda沙发沙发纷纷大幅大使馆反对广泛的高管反倒是', '2015-01-22', '12', '1', '1', '1', null);
INSERT INTO `crm_follow` VALUES ('16', '1', '犯得上反对广泛大锅饭电话费都很高复古时尚动感3233', '2015-02-28', '16', '1', '1', '1', '2015-02-07');

-- ----------------------------
-- Table structure for crm_invoice
-- ----------------------------
DROP TABLE IF EXISTS `crm_invoice`;
CREATE TABLE `crm_invoice` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '开发表记录表主键 PK',
  `customer_id` int(8) DEFAULT NULL COMMENT '客户公司ID Fk',
  `invoice_num` varchar(250) DEFAULT NULL COMMENT '发票号码',
  `invoice_type_id` int(8) DEFAULT NULL COMMENT '发票类型ID FK',
  `invoice_amount` double DEFAULT NULL COMMENT '发票金额',
  `invoice_content` longtext DEFAULT NULL COMMENT '发票内容',
  `invoice_date` date DEFAULT NULL COMMENT '发票日期',
  `c_depid` int(8) DEFAULT NULL COMMENT '负责部门ID FK',
  `c_empid` int(8) DEFAULT NULL COMMENT '负责人ID Fk',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `order_id` int(8) DEFAULT NULL COMMENT '订单ID FK',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `invoice_type_id` (`invoice_type_id`),
  KEY `c_depid` (`c_depid`),
  KEY `c_empid` (`c_empid`),
  KEY `order_id` (`order_id`),
  KEY `create_id` (`create_id`),
  CONSTRAINT `crm_invoice_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_invoice_ibfk_2` FOREIGN KEY (`invoice_type_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_invoice_ibfk_3` FOREIGN KEY (`c_depid`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_invoice_ibfk_4` FOREIGN KEY (`c_empid`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_invoice_ibfk_5` FOREIGN KEY (`order_id`) REFERENCES `crm_order` (`id`),
  CONSTRAINT `crm_invoice_ibfk_6` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_invoice
-- ----------------------------
INSERT INTO `crm_invoice` VALUES ('1', '1', '1145', '22', '4654', '和合法的广泛地地方方的观点施工', '2014-10-10', '4', '4', '2', '2014-11-07', '3', '1', null);
INSERT INTO `crm_invoice` VALUES ('2', '1', '2145', '22', '4654', '和合法的广泛地地方方的观点施工', '2014-10-08', '2', '1', '2', '2014-11-07', '3', '1', null);
INSERT INTO `crm_invoice` VALUES ('3', '1', '21452', '21', '4254', '和合法的广泛地地方方的观点施工2', '2014-10-10', '4', '4', '2', '2014-11-07', '3', '1', null);
INSERT INTO `crm_invoice` VALUES ('4', '1', '11452', '21', '4654', '和合法的广泛地地方方的观点施工1', '2014-10-09', '2', '2', '2', '2014-11-07', '3', '1', null);
INSERT INTO `crm_invoice` VALUES ('5', '1', '1145', '22', '4654', '和合法的广泛地地方方的观点施工', '2014-10-10', '2', '1', '2', '2014-11-07', '3', '1', null);
INSERT INTO `crm_invoice` VALUES ('6', '1', '2222222211', '22', '200', '是的撒啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', '2015-01-14', '1', '1', '1', null, '3', '1', null);
INSERT INTO `crm_invoice` VALUES ('7', '6', '234444', '21', '1000', '2水水水水水水水水水水水水水水水水水水水', '2015-01-13', '1', '1', '1', '2015-01-13', '7', '1', null);
INSERT INTO `crm_invoice` VALUES ('8', '3', '2000', '22', '2000', 'ssssssssss', '2015-01-14', '2', '2', '1', '2015-01-13', '4', '1', null);
INSERT INTO `crm_invoice` VALUES ('9', '6', '342432523', '21', '112', '大幅度的说法更广泛大概', '2015-02-04', '5', '6', '1', '2015-02-07', '7', '1', null);

-- ----------------------------
-- Table structure for crm_order
-- ----------------------------
DROP TABLE IF EXISTS `crm_order`;
CREATE TABLE `crm_order` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '客户订单表主键 Pk',
  `serialnumber` varchar(250) DEFAULT NULL COMMENT '订单序列号',
  `customer_id` int(8) DEFAULT NULL COMMENT '客户公司ID Fk',
  `order_date` date DEFAULT NULL COMMENT '订单日期时间',
  `pay_type_id` int(8) DEFAULT NULL COMMENT '付款方式ID FK',
  `order_details` longtext DEFAULT NULL COMMENT '订单详细',
  `order_status_id` int(8) DEFAULT NULL COMMENT '订单状态ID FK',
  `order_amount` double DEFAULT NULL COMMENT '订单金额',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `create_date` date DEFAULT NULL COMMENT '创建日期时间',
  `c_dep_id` int(8) DEFAULT NULL COMMENT '促成部门FK',
  `c_emp_id` int(8) DEFAULT NULL COMMENT '促成人员 FK',
  `f_dep_id` int(8) DEFAULT NULL COMMENT '负责部门 FK',
  `f_emp_id` int(8) DEFAULT NULL COMMENT '负责员工 FK',
  `receive_money` double DEFAULT NULL COMMENT '实收金额',
  `arrears_money` double DEFAULT NULL COMMENT '未收金额',
  `invoice_money` double DEFAULT NULL COMMENT '已开票额',
  `arrears_invoice` double DEFAULT NULL COMMENT '未开票额',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `pay_type_id` (`pay_type_id`),
  KEY `order_status_id` (`order_status_id`),
  KEY `c_dep_id` (`c_dep_id`),
  KEY `c_emp_id` (`c_emp_id`),
  KEY `f_dep_id` (`f_dep_id`),
  KEY `f_emp_id` (`f_emp_id`),
  KEY `create_id` (`create_id`),
  CONSTRAINT `crm_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_order_ibfk_2` FOREIGN KEY (`pay_type_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_order_ibfk_3` FOREIGN KEY (`order_status_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_order_ibfk_4` FOREIGN KEY (`c_dep_id`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_order_ibfk_5` FOREIGN KEY (`c_emp_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_order_ibfk_6` FOREIGN KEY (`f_dep_id`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_order_ibfk_7` FOREIGN KEY (`f_emp_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_order_ibfk_8` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_order
-- ----------------------------
INSERT INTO `crm_order` VALUES ('1', '1342', '3', '2014-11-08', '17', '手速21', '23', '1225', '4', '2014-11-23', '2', '4', '1', '1', '222', '1003', '544', '222', '1', null);
INSERT INTO `crm_order` VALUES ('2', '1342', '4', '2014-11-11', '18', '手速', '20', '1225', '4', '2014-11-23', '2', '4', '2', '2', '400', '825', '544', '222', '1', null);
INSERT INTO `crm_order` VALUES ('3', '1342', '1', '2014-11-11', '18', '手速', '20', '2835', '4', '2014-11-23', '2', '4', '2', '2', '1111', '1724', '744', '2091', '1', null);
INSERT INTO `crm_order` VALUES ('4', '23123123', '3', '2015-01-09', '17', '恶法随风倒十分十分士大夫', '23', '32122', '4', '2015-01-08', '2', '2', '4', '4', '12000', '20122', '2000', '30122', '1', '2015-01-12');
INSERT INTO `crm_order` VALUES ('5', '23123123', '4', '2015-01-13', '17', '倒萨倒萨多大功夫和对方回复光滑的风格和2222222222', '23', '29150', '4', '2015-01-12', '2', '2', '1', '1', '0', '0', '0', '0', '1', '2015-01-12');
INSERT INTO `crm_order` VALUES ('7', '23123123', '6', '2015-01-14', '17', 'fda公司股份公司的分公司分公司鬼斧神工个', '24', '8592', null, '2015-01-12', '4', '4', '4', '4', '0', '0', '1112', '3970', '1', null);

-- ----------------------------
-- Table structure for crm_order_details
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_details`;
CREATE TABLE `crm_order_details` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键 PK',
  `order_id` int(8) DEFAULT NULL COMMENT '对应订单ID Fk',
  `product_id` int(8) DEFAULT NULL COMMENT '对应产品ID Fk',
  `price` double DEFAULT NULL COMMENT '价格',
  `quantity` int(8) DEFAULT NULL COMMENT '数量',
  `unit` varchar(250) DEFAULT NULL COMMENT '单位',
  `amount` double DEFAULT NULL COMMENT '合计',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `crm_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `crm_product` (`product_id`),
  CONSTRAINT `crm_order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `crm_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_order_details
-- ----------------------------
INSERT INTO `crm_order_details` VALUES ('4', '1', '3', '21232', '5', '第三方的说法', '52');
INSERT INTO `crm_order_details` VALUES ('6', '1', '10', '231', '22', '倒萨', '5082');
INSERT INTO `crm_order_details` VALUES ('7', '1', '9', '231', '31', '山地', '7161');
INSERT INTO `crm_order_details` VALUES ('9', '1', '7', '135', '21', '反倒是', '2835');
INSERT INTO `crm_order_details` VALUES ('10', '1', '17', '231.11', '11', '科', '2542.21');
INSERT INTO `crm_order_details` VALUES ('11', '2', '7', '135', '11', '反倒是', '1485');
INSERT INTO `crm_order_details` VALUES ('12', '5', '7', '135', '231', '反倒是', '31185');
INSERT INTO `crm_order_details` VALUES ('13', '5', '9', '231', '122', '山地', '28182');
INSERT INTO `crm_order_details` VALUES ('14', '5', '17', '231.11', '21', '科', '4853.31');
INSERT INTO `crm_order_details` VALUES ('15', '5', '5', '135', '22', '反倒是', '2970');
INSERT INTO `crm_order_details` VALUES ('16', '5', '5', '135', '22', '反倒是', '2970');
INSERT INTO `crm_order_details` VALUES ('17', '5', '3', '1325', '22', '反倒是3', '29150');
INSERT INTO `crm_order_details` VALUES ('18', '7', '10', '231', '22', '倒萨', '5082');
INSERT INTO `crm_order_details` VALUES ('19', '3', '5', '135', '21', '反倒是', '2835');
INSERT INTO `crm_order_details` VALUES ('20', '7', '7', '135', '21', '反倒是', '2835');
INSERT INTO `crm_order_details` VALUES ('21', '7', '5', '135', '5', '反倒是', '675');

-- ----------------------------
-- Table structure for crm_product
-- ----------------------------
DROP TABLE IF EXISTS `crm_product`;
CREATE TABLE `crm_product` (
  `product_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '产品ID PK',
  `category_id` int(8) DEFAULT NULL COMMENT '产品分类ID FK',
  `product_name` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `specifications` varchar(250) DEFAULT NULL COMMENT '规格说明',
  `status` varchar(250) DEFAULT NULL COMMENT '状态',
  `unit` varchar(250) DEFAULT NULL COMMENT '单位',
  `remarks` longtext DEFAULT NULL COMMENT '备注解释',
  `price` double DEFAULT NULL COMMENT '价格',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `crm_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `crm_product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_product
-- ----------------------------
INSERT INTO `crm_product` VALUES ('2', '17', '产品1a', '改革法规法规a', '合格', '反倒是a', '二二一样a', '1235', '1', null);
INSERT INTO `crm_product` VALUES ('3', '12', '产品2', '改革法规法规1a', '合格', '反倒是3', '二二一样gf', '1325', '1', null);
INSERT INTO `crm_product` VALUES ('4', '8', '产品3', '改革法规法规', '合格', '反倒是', '二二一样', '135', '1', null);
INSERT INTO `crm_product` VALUES ('5', '11', '产品4', '改革法规法规', '合格', '反倒是', '二二一样', '135', '1', null);
INSERT INTO `crm_product` VALUES ('6', '8', '产品5', '改革法规法规', '合格', '反倒是', '二二一样', '135', '1', null);
INSERT INTO `crm_product` VALUES ('7', '9', '产品6', '改革法规法规', '合格', '反倒是', '二二一样', '135', '1', null);
INSERT INTO `crm_product` VALUES ('8', '10', '产品7', '改革法规法规vcxz', '合格', '反倒是23v', '二二一样vz', '13115', '1', null);
INSERT INTO `crm_product` VALUES ('9', '10', '产品8', '的萨芬到了沙发上', '合格', '山地', '犯得上发射点发射点', '231', '1', null);
INSERT INTO `crm_product` VALUES ('10', '10', '产品9', '贵你妹啊  狗比东西', '合格', '倒萨', '擦  擦  擦  擦', '231', '1', null);
INSERT INTO `crm_product` VALUES ('11', '7', '产品10', '好多个好多个1', '合格', '复古百搭工坊1', ' 反对恢复的好地方好221', '321434', '1', null);
INSERT INTO `crm_product` VALUES ('12', '7', '产品11', '231山地的撒大苏打撒个电风扇赶得上公司的非官方的时光', '合格', '斤', '21332市场操作下成长', '212', '1', null);
INSERT INTO `crm_product` VALUES ('13', '9', '产品12', '规格', '合格', '袋', '这个产品部错 ', '123', '1', null);
INSERT INTO `crm_product` VALUES ('16', '19', '拉拉产品1', '的撒大可考虑是否的看了你的苦恼公开减肥都是， ', null, '个', '地洒落的马路；大陆；的；死啦地发生发射点发生22', '22.111', '1', null);
INSERT INTO `crm_product` VALUES ('17', '10', '凤恺', '大士大夫士大夫立刻撒法艰苦拉萨', null, '科', '得利卡开始电话卡的vs减肥吧事件发生卡掉了', '231.11', '1', null);
INSERT INTO `crm_product` VALUES ('18', '19', '宽带', 'asd', null, '亚信', 'asdf', '20', '1', null);

-- ----------------------------
-- Table structure for crm_product_category
-- ----------------------------
DROP TABLE IF EXISTS `crm_product_category`;
CREATE TABLE `crm_product_category` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '产品类别ID pk',
  `product_category` varchar(250) DEFAULT NULL COMMENT '产品分类名称',
  `parentid` int(8) DEFAULT NULL COMMENT '父类别ID',
  `product_icon` varchar(250) DEFAULT NULL COMMENT '父类别产品ICon图标',
  `isdelete` int(8) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_id` int(1) DEFAULT NULL COMMENT '删除人ID FK',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `delete_id` (`delete_id`),
  CONSTRAINT `crm_product_category_ibfk_1` FOREIGN KEY (`delete_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_product_category
-- ----------------------------
INSERT INTO `crm_product_category` VALUES ('1', 'A类', '0', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('2', 'B类', '0', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('3', 'C类', '0', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('4', 'D类', '0', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('5', 'E类', '0', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('6', 'F类', '0', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('7', 'G类', '0', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('8', 'H类', '0', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('9', 'I类', '2', 'icon-table', '1', null, '2015-01-01');
INSERT INTO `crm_product_category` VALUES ('10', 'J类', '4', 'icon-table', '1', null, '2015-01-01');
INSERT INTO `crm_product_category` VALUES ('11', 'K类', '3', 'icon-table', '1', null, '2015-01-01');
INSERT INTO `crm_product_category` VALUES ('12', 'L类', '3', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('13', '倒萨', '6', 'icon-table', '1', null, '2015-01-01');
INSERT INTO `crm_product_category` VALUES ('14', '额威威', '8', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('15', '高房价', '1', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('16', '网上', '1', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('17', '风扇', '3', 'icon-table', '1', null, '2015-01-01');
INSERT INTO `crm_product_category` VALUES ('18', '花花', '5', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('19', '更换', '1', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('20', '额外', '9', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('21', '突然', '7', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('22', '托运人', '8', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('23', '发生', '6', 'icon-table', '1', null, '2015-01-05');
INSERT INTO `crm_product_category` VALUES ('24', '发射点', '1', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('25', '发大水', '9', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('26', '飞洒地方', '9', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('27', '无法', '8', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('28', '官方', '6', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('29', '华国锋', '6', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('30', '歌单2', '8', 'icon-table', '1', null, '2015-01-06');
INSERT INTO `crm_product_category` VALUES ('31', 'Q2231@!', '1', 'icon-table', '0', '1', '2015-02-07');
INSERT INTO `crm_product_category` VALUES ('32', 'E', '0', '', '1', null, null);

-- ----------------------------
-- Table structure for crm_receive
-- ----------------------------
DROP TABLE IF EXISTS `crm_receive`;
CREATE TABLE `crm_receive` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '收款表ID PK',
  `receive_num` varchar(250) DEFAULT NULL COMMENT '收款号',
  `receive_amount` double DEFAULT NULL COMMENT '收款金额',
  `receive_date` date DEFAULT NULL COMMENT '收款日期',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `order_id` int(8) DEFAULT NULL COMMENT '订单ID FK',
  `receive_direction_id` int(8) DEFAULT NULL COMMENT '收款类别ID FK',
  `receive_type_id` int(8) DEFAULT NULL COMMENT '收款方式ID FK',
  `customer_id` int(8) DEFAULT NULL COMMENT '公司客户ID  FK',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  `c_empid` int(8) DEFAULT NULL COMMENT '负责人ID FK',
  `c_depid` int(8) DEFAULT NULL COMMENT '负责部门ID FK',
  `receive_real` double DEFAULT NULL COMMENT '收款凭证',
  `remarks` longtext DEFAULT NULL COMMENT '备注',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `c_depid` (`c_depid`),
  KEY `c_empid` (`c_empid`),
  KEY `receive_type_id` (`receive_type_id`),
  KEY `receive_direction_id` (`receive_direction_id`),
  KEY `order_id` (`order_id`),
  KEY `create_id` (`create_id`),
  CONSTRAINT `crm_receive_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_receive_ibfk_3` FOREIGN KEY (`c_depid`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `crm_receive_ibfk_4` FOREIGN KEY (`c_empid`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `crm_receive_ibfk_5` FOREIGN KEY (`receive_type_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_receive_ibfk_6` FOREIGN KEY (`receive_direction_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `crm_receive_ibfk_7` FOREIGN KEY (`order_id`) REFERENCES `crm_order` (`id`),
  CONSTRAINT `crm_receive_ibfk_8` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_receive
-- ----------------------------
INSERT INTO `crm_receive` VALUES ('1', '1121', '543457', '2014-10-17', '2014-10-18', '1', '2', '44', '17', '1', '2014-10-11', '1', '1', '1', '发生后发的好说话', '1');
INSERT INTO `crm_receive` VALUES ('2', '1121', '657567', '2014-10-17', '2014-10-18', '1', '2', '44', '17', '1', '2014-10-11', '1', '1', '1', '发生后发的好说话', '1');
INSERT INTO `crm_receive` VALUES ('4', '1121', '2343', '2014-10-17', '2014-10-18', '1', '2', '44', '17', '1', '2014-10-11', '1', '1', '1', '发生后发的好说话', '1');
INSERT INTO `crm_receive` VALUES ('5', '32131', '321313', '2015-01-12', '2015-01-12', '2', '2', '44', '19', '1', '2015-01-12', '1', '1', '1', 'hih了就算对方考虑考虑的法律卡萨诺疯狂拉升了肯定是jfk了放假啊十分快乐到家撒付款了', '1');
INSERT INTO `crm_receive` VALUES ('6', '2312313', '131', '2015-01-07', '2015-01-12', '1', '2', '45', '18', '1', '2015-01-12', '2', '2', '1', '的撒dads的广泛的更多更多粉丝公司股份的时光', '1');
INSERT INTO `crm_receive` VALUES ('15', '231231', '23123', '2015-01-14', '2015-01-12', '1', '7', '46', '19', '6', '2015-01-12', '2', '2', null, '发射点发射点发射点发和规范化计划开工好困好困', '1');
INSERT INTO `crm_receive` VALUES ('19', '422222', '23213', '2015-01-01', '2015-01-12', '1', '7', '44', '18', '6', '2015-01-13', '1', '1', null, '反对撒水水水水水222水水水水哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇', '1');
INSERT INTO `crm_receive` VALUES ('21', '2123', '221', '2014-12-30', '2015-01-12', '1', '7', '45', '18', '6', '2015-01-12', '1', '1', null, '22反倒是水水水水水水水水水水水水水水水水', '1');
INSERT INTO `crm_receive` VALUES ('22', '22123', '2311', '2015-01-13', '2015-01-12', '1', '7', '45', '17', '6', '2015-01-12', '2', '2', null, '的撒大苏打大苏打上广泛广泛大锅饭大概法国代购代购', '1');
INSERT INTO `crm_receive` VALUES ('24', '2123', '231', '2015-01-20', '2015-01-12', '1', '7', '45', '18', '6', '2015-01-12', '1', '1', null, '大苏打似的钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱钱', '1');
INSERT INTO `crm_receive` VALUES ('25', '2313123', '21321', '2015-01-15', '2015-01-12', '1', '1', '45', '18', '3', '2015-01-12', '2', '2', null, '大飒飒水水水水水水水水水水水水水水水水嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡', '1');
INSERT INTO `crm_receive` VALUES ('26', '23132', '231', '2015-01-06', '2015-01-12', '1', '1', '45', '17', '3', null, '1', '1', null, '威威威威威威威威威威日日日日日日日日日日日日日日日', '1');
INSERT INTO `crm_receive` VALUES ('27', '243333', '1000', '2015-01-13', '2015-01-12', '2', '3', '44', '17', '1', null, '2', '2', null, '倒萨倒萨杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀顶顶顶顶顶顶顶顶顶顶顶顶', '1');
INSERT INTO `crm_receive` VALUES ('28', '231312', '500', '2015-01-13', '2015-01-12', '2', '3', '45', '18', '1', null, '2', '2', null, '的撒帆帆帆帆帆帆帆帆咯哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '1');
INSERT INTO `crm_receive` VALUES ('29', '2222', '200', '2015-01-13', '2015-01-12', '2', '3', '45', '17', '1', '2015-01-13', '2', '2', null, '水水水水水水水水水水水水水水水水水水水', '1');
INSERT INTO `crm_receive` VALUES ('30', '222434', '222', '2015-01-13', '2015-01-13', '2', '2', '45', '18', '4', null, '2', '2', null, '大苏打实打实打算热特人感染灌灌灌灌灌灌', '1');
INSERT INTO `crm_receive` VALUES ('31', '23132132', '200', '2015-01-09', '2015-01-13', '2', '1', '44', '17', '3', null, '2', '2', null, 'sssssssssssssssssss', '1');
INSERT INTO `crm_receive` VALUES ('32', '22222222222', '222', '2015-01-07', '2015-01-13', '2', '1', '44', '19', '3', '2015-01-13', '2', '2', null, '撒大苏打实打实的', '1');
INSERT INTO `crm_receive` VALUES ('33', '32122322', '1111', '2015-01-14', '2015-01-13', '2', '3', '44', '19', '1', '2015-01-13', '1', '1', null, '水水水水水水水水水水水水', '1');
INSERT INTO `crm_receive` VALUES ('34', '231333', '12000', '2015-01-07', '2015-01-13', '2', '4', '45', '18', '3', null, '2', '2', null, '范德萨发大水范德萨丰富的规划', '1');
INSERT INTO `crm_receive` VALUES ('35', '23212656', '400', '2015-01-07', '2015-01-13', '2', '2', '45', '18', '4', null, '1', '1', null, '的撒大苏打水水水水水水水水水水水水是', '1');

-- ----------------------------
-- Table structure for hr_department
-- ----------------------------
DROP TABLE IF EXISTS `hr_department`;
CREATE TABLE `hr_department` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '部门主键PK',
  `d_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `parentid` int(8) DEFAULT NULL COMMENT '上级分类ID',
  `d_type_id` int(8) DEFAULT NULL COMMENT '部门类别 FK',
  `d_icon_id` int(8) DEFAULT NULL COMMENT '部门图标 FK',
  `d_employee` varchar(50) DEFAULT NULL COMMENT '负责人',
  `d_telephone` varchar(50) DEFAULT NULL COMMENT '电话',
  `d_address` varchar(255) DEFAULT NULL COMMENT '地址',
  `d_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `d_description` varchar(255) DEFAULT NULL COMMENT '描述',
  `d_order` varchar(50) DEFAULT NULL COMMENT '部门次序',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `hr_department_ibfk_1` (`d_type_id`),
  KEY `hr_department_ibfk_2` (`d_icon_id`),
  CONSTRAINT `hr_department_ibfk_1` FOREIGN KEY (`d_type_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `hr_department_ibfk_2` FOREIGN KEY (`d_icon_id`) REFERENCES `param_sysparam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_department
-- ----------------------------
INSERT INTO `hr_department` VALUES ('1', '信息部', '0', '1', '1', '黄润伟3', '1346764433', '是否', '250476029@qq.com', null, '10', '1', null);
INSERT INTO `hr_department` VALUES ('2', '财务部', '0', '1', '1', '黄润伟2', '1311644655', '搜肠刮肚', '250476029@qq.com', null, '20', '1', null);
INSERT INTO `hr_department` VALUES ('4', '业务部', '0', '1', '1', '黄润伟1', '1342222465', '省市发生', '250476029@qq.com', null, '20', '1', null);
INSERT INTO `hr_department` VALUES ('5', '营销部', '0', '1', '1', '黄润伟5', '1123432444', '三大方式', '250476029@qq.com', null, '10', '1', null);

-- ----------------------------
-- Table structure for hr_employee
-- ----------------------------
DROP TABLE IF EXISTS `hr_employee`;
CREATE TABLE `hr_employee` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '员工表ID 主键',
  `uid` varchar(50) DEFAULT NULL COMMENT '用户名',
  `pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(50) DEFAULT NULL COMMENT '身份证',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `dep_id` int(8) DEFAULT NULL COMMENT '部门ID FK',
  `post_id` int(8) DEFAULT NULL COMMENT '岗位ID FK',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `sex` varchar(50) DEFAULT NULL COMMENT '性别',
  `telephone` varchar(50) DEFAULT NULL COMMENT '电话',
  `status` varchar(50) DEFAULT NULL COMMENT '状态',
  `position_id` int(8) DEFAULT NULL COMMENT '职务ID FK',
  `sort` int(8) DEFAULT NULL COMMENT '排序 num',
  `entrydate` date DEFAULT NULL COMMENT '入职日期',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `education` varchar(50) DEFAULT NULL COMMENT '学历',
  `level_id` int(8) DEFAULT NULL COMMENT '员工等级 FK',
  `professional` varchar(50) DEFAULT NULL COMMENT '专业',
  `schools` varchar(50) DEFAULT NULL COMMENT '毕业学校',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  `portal` varchar(250) DEFAULT NULL COMMENT '头像',
  `theme` varchar(250) DEFAULT NULL COMMENT '皮肤背景',
  `canlogin` int(8) DEFAULT 0 COMMENT '是否可以登录',
  `role_id` int(8) DEFAULT NULL COMMENT '角色表 ID  FK',
  `layout` varchar(255) DEFAULT NULL COMMENT '布局保存',
  `loginoutdate` date DEFAULT NULL COMMENT '注销时间 date',
  `ispost` int(1) DEFAULT 1 COMMENT '是否1在职 0离职',
  PRIMARY KEY (`id`),
  KEY `dep_id` (`dep_id`),
  KEY `post_id` (`post_id`),
  KEY `position_id` (`position_id`),
  KEY `role_id` (`role_id`),
  KEY `hr_employee_ibfk_4` (`level_id`),
  CONSTRAINT `hr_employee_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `hr_employee_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `hr_post` (`post_id`),
  CONSTRAINT `hr_employee_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `hr_position` (`id`),
  CONSTRAINT `hr_employee_ibfk_4` FOREIGN KEY (`level_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `hr_employee_ibfk_5` FOREIGN KEY (`role_id`) REFERENCES `sys_role` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_employee
-- ----------------------------
INSERT INTO `hr_employee` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '凤凯', '61032319950328091X', '1995-03-28', '1', '3', '1075691532@qq.com', '先生', '18710671849', null, '1', '10', '2015-01-05', '陕西省宝鸡市', '备注信息1', '本科', '25', '软件工程', '西安文理学院', null, '1', '2015-02-01', 'img/upfile/admin.jpg', 'blue', '1', '1', null, '2015-01-05', '1');
INSERT INTO `hr_employee` VALUES ('2', 'zhaoyang', '202CB962AC59075B964B07152D234B70', '赵阳', '622323199503280912', '1995-04-21', '2', '2', 'zhaoyang@qq.com', '先生', '13800012345', null, '2', '20', '2015-01-05', '陕西省咸阳市', '备注信息', '专科', '25', '计算机技术', '西安交通大学', null, '1', null, 'img/upfile/zhaoyang.jpg', 'grey', '1', '1', null, '2015-01-05', '1');
INSERT INTO `hr_employee` VALUES ('4', 'hexuan', '202CB962AC59075B964B07152D234B70', '贺轩', '633323199503280911', '1995-11-18', '4', '3', 'hexuan@qq.com', '女士', '13800012345', null, '1', '30', '2015-01-05', '陕西省西安市', 'szzxc', '本科', '27', '机械自动化', '西安长安大学', null, '1', null, 'img/emp/1.png', 'gray', '1', '1', null, '2015-01-05', '1');
INSERT INTO `hr_employee` VALUES ('5', 'zhoupengyu', '202CB962AC59075B964B07152D234B70', '周鹏宇', '633323199231280921', '1995-04-21', '5', '4', 'hexuan@qq.com', '先生', '23546546544', null, '5', '121', '2015-01-14', '陕西省西安市', 'cxzc', '本科', '27', '机械自动化', '西安长安大学', null, '1', null, null, null, '1', '1', null, null, '1');
INSERT INTO `hr_employee` VALUES ('6', 'hanpengbo', '202CB962AC59075B964B07152D234B70', '韩鹏博', '6105438974932478924X', '2010-02-02', '5', '4', 'fadsf@qs23.com', '先生', '19846578514', null, '2', null, '2015-01-13', '宝鸡扶风', '发哈撒地方很多岁啊部分', '本科', '27', '信息技术', '北大青鸟', null, '1', null, null, null, '1', '2', null, null, '1');
INSERT INTO `hr_employee` VALUES ('7', 'ldm', '202CB962AC59075B964B07152D234B70', '刘东名', '366336363636636363', '2017-04-14', '4', '1', 'zhaoyang@qq.com', '先生', '18779117396', null, '2', '10', '2017-04-14', '江西省南昌市', null, '本科', '25', '软件工程', '江西理工大学', null, '1', null, null, null, '0', null, null, null, '1');
INSERT INTO `hr_employee` VALUES ('8', 'test', 'E10ADC3949BA59ABBE56E057F20F883E', '张玉堂', '410928198903052434', '2019-05-07', '1', '1', '1287834487@qq.com', '先生', '110', null, '2', null, '2020-02-05', '大钟寺', '新入职', '本科', '27', '网络技术', '开封大学', null, '1', null, null, 'default', '1', '2', null, null, '1');

-- ----------------------------
-- Table structure for hr_position
-- ----------------------------
DROP TABLE IF EXISTS `hr_position`;
CREATE TABLE `hr_position` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '职务ID PK',
  `position_name` varchar(250) DEFAULT NULL COMMENT '名称',
  `position_order` varchar(50) DEFAULT NULL COMMENT '次序',
  `position_level_id` int(8) DEFAULT NULL COMMENT '职务级别 Fk',
  `create_id` int(8) DEFAULT NULL COMMENT '创建ID FK',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `create_id` (`create_id`),
  KEY `hr_position_ibfk_2` (`position_level_id`),
  CONSTRAINT `hr_position_ibfk_1` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `hr_position_ibfk_2` FOREIGN KEY (`position_level_id`) REFERENCES `param_sysparam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_position
-- ----------------------------
INSERT INTO `hr_position` VALUES ('1', '总经理', '101', '28', '2', '2014-10-25', '1', null);
INSERT INTO `hr_position` VALUES ('2', '管理员', '10', '29', '2', '2014-10-25', '1', '2014-11-14');
INSERT INTO `hr_position` VALUES ('4', '组长', '10', '30', '2', '2014-10-25', '1', '2014-11-14');
INSERT INTO `hr_position` VALUES ('5', '部门经理', '10', '30', '4', '2015-01-05', '1', '2014-11-14');

-- ----------------------------
-- Table structure for hr_post
-- ----------------------------
DROP TABLE IF EXISTS `hr_post`;
CREATE TABLE `hr_post` (
  `post_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '岗位ID PK',
  `post_name` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `position_id` int(8) DEFAULT NULL COMMENT '职务ID FK',
  `position_order` varchar(50) DEFAULT NULL COMMENT '职务次序号',
  `dep_id` int(8) DEFAULT NULL COMMENT '岗位部门ID FK',
  `emp_id` int(8) DEFAULT NULL COMMENT '岗位员工ID FK',
  `post_descript` longtext DEFAULT NULL COMMENT '岗位描述',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`),
  KEY `position_id` (`position_id`),
  KEY `dep_id` (`dep_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `hr_post_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `hr_position` (`id`),
  CONSTRAINT `hr_post_ibfk_2` FOREIGN KEY (`dep_id`) REFERENCES `hr_department` (`id`),
  CONSTRAINT `hr_post_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_post
-- ----------------------------
INSERT INTO `hr_post` VALUES ('1', '管理员', '2', '10', '1', '2', '我们是管理员', '1', null);
INSERT INTO `hr_post` VALUES ('2', '总经理', '1', '10', '2', '4', '我们是总经理', '1', null);
INSERT INTO `hr_post` VALUES ('3', '副总经理', '1', '10', '4', '4', '我们是副总经理', '1', null);
INSERT INTO `hr_post` VALUES ('4', '村长', '2', '200', '2', '1', '肯定是拉动', '1', null);

-- ----------------------------
-- Table structure for mail_attachment
-- ----------------------------
DROP TABLE IF EXISTS `mail_attachment`;
CREATE TABLE `mail_attachment` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '邮件附件表主键 PK',
  `file_url` varchar(250) DEFAULT NULL COMMENT '附件文件下载路径',
  `file_name` varchar(250) DEFAULT NULL COMMENT '文件名',
  `real_name` varchar(250) DEFAULT NULL COMMENT '可空',
  `mail_id` int(8) DEFAULT NULL COMMENT '邮件对应FK',
  PRIMARY KEY (`id`),
  KEY `mail_id` (`mail_id`),
  CONSTRAINT `mail_attachment_ibfk_1` FOREIGN KEY (`mail_id`) REFERENCES `mail_flow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for mail_flow
-- ----------------------------
DROP TABLE IF EXISTS `mail_flow`;
CREATE TABLE `mail_flow` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '邮件ID PK',
  `mail_title` varchar(250) DEFAULT NULL COMMENT '邮件标题',
  `mail_content` longtext DEFAULT NULL COMMENT '邮件内容',
  `receive_id` int(8) DEFAULT NULL COMMENT '接收人ID FK',
  `isview` int(1) DEFAULT 0 COMMENT '是否已查看1/0',
  `view_time` datetime DEFAULT NULL COMMENT '查看时间',
  `recive_type_id` int(8) DEFAULT NULL COMMENT '接收类型ID FK',
  `sender_id` int(8) DEFAULT NULL COMMENT '发送人ID FK',
  `sender_time` datetime DEFAULT NULL COMMENT '发送时间',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除 0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  `important` int(1) DEFAULT NULL COMMENT '邮件重要级别 FK',
  PRIMARY KEY (`id`),
  KEY `recive_type_id` (`recive_type_id`),
  KEY `sender_id` (`sender_id`),
  KEY `mail_flow_ibfk_2` (`receive_id`),
  KEY `mail_flow_ibfk_6` (`important`),
  CONSTRAINT `mail_flow_ibfk_2` FOREIGN KEY (`receive_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `mail_flow_ibfk_3` FOREIGN KEY (`recive_type_id`) REFERENCES `param_sysparam` (`id`),
  CONSTRAINT `mail_flow_ibfk_5` FOREIGN KEY (`sender_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `mail_flow_ibfk_6` FOREIGN KEY (`important`) REFERENCES `param_sysparam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_flow
-- ----------------------------
INSERT INTO `mail_flow` VALUES ('1', '讨论手速', '手速多少', '1', '1', '2017-04-07 12:43:04', '6', '2', '2014-11-22 09:24:25', '1', '2014-11-29', '52');
INSERT INTO `mail_flow` VALUES ('2', '讨论手速2的杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀杀顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶1111111111111111111111666666666666666666666666666666666666666顶顶顶顶', '手速多少时尚大方的帆帆帆帆帆帆帆帆帆帆帆帆帆帆水水水水水水水水水水水水水水水水水水水撒嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡嗡跟鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼鬼', '1', '0', '2014-11-19 09:24:09', '6', '2', '2014-11-22 09:24:25', '1', '2014-11-29', '52');
INSERT INTO `mail_flow` VALUES ('3', '讨论手速', '手速多少', '1', '0', '2014-11-19 09:24:09', '6', '2', '2014-11-22 09:24:25', '0', '2014-11-29', '52');
INSERT INTO `mail_flow` VALUES ('4', '塑料的吗流口水的那时的你看斯柯达', 'dsadafafdafsafdadsf', '1', '1', '2015-02-06 23:10:25', null, '4', '2015-01-19 00:45:40', '1', null, null);
INSERT INTO `mail_flow` VALUES ('5', '塑料的吗流口水的那时的你看斯柯达', 'currentemp', '2', '0', null, null, '4', '2015-01-19 00:45:40', '1', null, null);
INSERT INTO `mail_flow` VALUES ('6', '塑料的吗流口水的那时的你看斯柯达', 'ffffffffffffffffffffffffffffffff', '1', '0', null, null, '4', '2015-01-19 00:45:48', '1', null, '52');
INSERT INTO `mail_flow` VALUES ('7', '塑料的吗流口水的那时的你看斯柯达', 'saaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2', '0', null, null, '2', '2015-01-19 00:45:48', '1', null, null);
INSERT INTO `mail_flow` VALUES ('8', '塑料的吗流口水的那时的你看斯柯达', 'vvssssssssssssssssssvvvvvvvvvvvvvvvvvvvvvvvvvv', '1', '0', null, null, '2', '2015-01-19 00:46:27', '1', null, null);
INSERT INTO `mail_flow` VALUES ('9', '塑料的吗流口水的那时的你看斯柯达', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2', '0', null, null, '2', '2015-01-19 00:46:27', '1', null, null);
INSERT INTO `mail_flow` VALUES ('10', '的撒dads速度', '<p>顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>\r\n', '2', '0', null, null, '2', '2015-01-19 01:09:52', '1', null, null);
INSERT INTO `mail_flow` VALUES ('11', '的撒dads速度', '<p>顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>\r\n', '4', '0', null, null, '4', '2015-01-19 01:09:52', '1', null, null);
INSERT INTO `mail_flow` VALUES ('12', '的撒啊', '<p>顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>\r\n', '1', '0', null, null, '5', '2015-01-19 01:16:54', '1', null, null);
INSERT INTO `mail_flow` VALUES ('14', '是大大啊', '<p>倒萨倒萨规范法官的</p>\n', '1', '0', null, null, '5', '2015-01-19 01:30:32', '1', null, null);
INSERT INTO `mail_flow` VALUES ('15', '是大大啊', '<p>倒萨倒萨规范法官的</p>\n', '1', '0', null, null, '5', '2015-01-19 01:30:39', '1', null, null);
INSERT INTO `mail_flow` VALUES ('16', '大师傅大师傅', '<p>地方撒范德萨发生的复古风格</p>\n', '1', '1', '2015-02-06 23:21:58', null, '5', '2015-01-19 16:52:19', '1', null, null);
INSERT INTO `mail_flow` VALUES ('17', '打手犯规得分广泛广泛的吖锕嗄', '<p>幅度萨芬；李连杰佛啊设计等方面萨芬了吗适量蜂蜜v</p>\n', '1', '0', null, null, '5', '2015-01-19 17:04:28', '1', null, null);
INSERT INTO `mail_flow` VALUES ('18', '的发达发达省份的撒发生的广泛的方法更多', '<p>十大的撒大苏打vccccccccccccccccccccccccccccccasddssdsdase的萨芬士大夫士大夫大师傅</p>\n', '1', '0', null, null, '5', '2015-01-19 17:08:49', '1', null, null);
INSERT INTO `mail_flow` VALUES ('19', '2313ssssssssssssssssss实打实的', '<p>士大夫大师傅地方感到法啊啊</p>\n', '1', '0', null, null, '5', '2015-01-19 17:10:02', '1', null, null);
INSERT INTO `mail_flow` VALUES ('20', '打开撒娇的拉近了看', '<p>风格的感动<strong>感动噶似的发放反对犯得上发射点犯得</strong>上vfgsfgfd时代的fads</p>\n', '1', '0', null, null, '5', '2015-01-23 15:57:00', '1', null, null);
INSERT INTO `mail_flow` VALUES ('21', '范德萨法硕非法打工啊啊啊啊啊啊啊啊啊啊', '<p>发生的快乐十分浪漫圣诞快乐来看仙女看出你</p>\n', '1', '0', null, null, '5', '2015-01-23 15:58:58', '1', null, null);
INSERT INTO `mail_flow` VALUES ('22', '的撒旦vffdsfsdsssssssssssssssssa', '<p>&nbsp;倒萨哒哒哒顶顶顶顶顶顶顶顶顶顶顶顶顶顶</p>\n', '1', '1', '2015-02-06 23:23:14', null, '5', '2015-01-23 16:02:11', '1', null, null);
INSERT INTO `mail_flow` VALUES ('24', '22222222222222222222222sssssssssss', '<h2 style=\"font-style: italic;\">sssssssssssssssssssssssssssssssdasd</h2>\n\n<div style=\"background: rgb(238, 238, 238); padding: 5px 10px; border: 1px solid rgb(204, 204, 204); border-image: none;\">fdsfs</div>\n', '6', '0', null, null, '1', '2015-02-06 23:23:58', '1', null, null);
INSERT INTO `mail_flow` VALUES ('25', '11', '', '4', '0', null, null, '1', '2017-04-07 12:46:41', '1', null, null);
INSERT INTO `mail_flow` VALUES ('26', '11', '', '4', '0', null, null, '1', '2017-04-07 12:46:43', '1', null, null);
INSERT INTO `mail_flow` VALUES ('27', '11', '', '4', '0', null, null, '1', '2017-04-07 12:46:46', '1', null, null);
INSERT INTO `mail_flow` VALUES ('28', '11', '', '4', '0', null, null, '1', '2017-04-07 12:46:47', '1', null, null);
INSERT INTO `mail_flow` VALUES ('29', '11', '', '4', '0', null, null, '1', '2017-04-07 12:46:47', '1', null, null);
INSERT INTO `mail_flow` VALUES ('30', '11', '<p>111</p>\n', '4', '0', null, null, '1', '2017-04-07 12:46:59', '1', null, null);
INSERT INTO `mail_flow` VALUES ('31', '11', '<p>111</p>\n', '4', '0', null, null, '1', '2017-04-07 12:47:00', '1', null, null);
INSERT INTO `mail_flow` VALUES ('32', '11', '<p>111</p>\n', '4', '0', null, null, '1', '2017-04-07 12:47:00', '1', null, null);
INSERT INTO `mail_flow` VALUES ('33', '11', '<p>111</p>\n', '4', '0', null, null, '1', '2017-04-07 12:47:00', '1', null, null);

-- ----------------------------
-- Table structure for param_city
-- ----------------------------
DROP TABLE IF EXISTS `param_city`;
CREATE TABLE `param_city` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '省市ID PK',
  `parentid` int(8) DEFAULT NULL COMMENT '上级ID',
  `city` varchar(250) DEFAULT NULL COMMENT '省市名称',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_id` int(8) DEFAULT NULL COMMENT '更新人ID FK',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `update_id` (`update_id`),
  KEY `create_id` (`create_id`),
  CONSTRAINT `param_city_ibfk_1` FOREIGN KEY (`update_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `param_city_ibfk_2` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of param_city
-- ----------------------------
INSERT INTO `param_city` VALUES ('1', '0', '北京', null, null, null, null);
INSERT INTO `param_city` VALUES ('2', '0', '上海', null, null, null, null);
INSERT INTO `param_city` VALUES ('3', '0', '天津', null, null, null, null);
INSERT INTO `param_city` VALUES ('4', '0', '重庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('5', '0', '黑龙江', null, null, null, null);
INSERT INTO `param_city` VALUES ('6', '0', '吉林', null, null, null, null);
INSERT INTO `param_city` VALUES ('7', '0', '辽宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('8', '0', '内蒙古', null, null, null, null);
INSERT INTO `param_city` VALUES ('9', '0', '宁夏', null, null, null, null);
INSERT INTO `param_city` VALUES ('10', '0', '新疆', null, null, null, null);
INSERT INTO `param_city` VALUES ('11', '0', '青海', null, null, null, null);
INSERT INTO `param_city` VALUES ('12', '0', '甘肃', null, null, null, null);
INSERT INTO `param_city` VALUES ('13', '0', '陕西', null, null, null, null);
INSERT INTO `param_city` VALUES ('14', '0', '河北', null, null, null, null);
INSERT INTO `param_city` VALUES ('15', '0', '河南', null, null, null, null);
INSERT INTO `param_city` VALUES ('16', '0', '山东', null, null, null, null);
INSERT INTO `param_city` VALUES ('17', '0', '山西', null, null, null, null);
INSERT INTO `param_city` VALUES ('18', '0', '湖北', null, null, null, null);
INSERT INTO `param_city` VALUES ('19', '0', '湖南', null, null, null, null);
INSERT INTO `param_city` VALUES ('20', '0', '安徽', null, null, null, null);
INSERT INTO `param_city` VALUES ('21', '0', '江苏', null, null, null, null);
INSERT INTO `param_city` VALUES ('22', '0', ' 浙江', null, null, null, null);
INSERT INTO `param_city` VALUES ('23', '0', '江西', null, null, null, null);
INSERT INTO `param_city` VALUES ('24', '0', '广东', null, null, null, null);
INSERT INTO `param_city` VALUES ('25', '0', '广西', null, null, null, null);
INSERT INTO `param_city` VALUES ('26', '0', '福建', null, null, null, null);
INSERT INTO `param_city` VALUES ('27', '0', '四川', null, null, null, null);
INSERT INTO `param_city` VALUES ('28', '0', '云南', null, null, null, null);
INSERT INTO `param_city` VALUES ('29', '0', '贵州', null, null, null, null);
INSERT INTO `param_city` VALUES ('30', '0', '西藏', null, null, null, null);
INSERT INTO `param_city` VALUES ('31', '0', '海南', null, null, null, null);
INSERT INTO `param_city` VALUES ('32', '0', '香港', null, null, null, null);
INSERT INTO `param_city` VALUES ('33', '0', '澳门', null, null, null, null);
INSERT INTO `param_city` VALUES ('34', '0', '台湾', null, null, null, null);
INSERT INTO `param_city` VALUES ('35', '1', '东城区', null, null, null, null);
INSERT INTO `param_city` VALUES ('36', '1', '西城区', null, null, null, null);
INSERT INTO `param_city` VALUES ('37', '1', '宣武区', null, null, null, null);
INSERT INTO `param_city` VALUES ('38', '1', '崇文区', null, null, null, null);
INSERT INTO `param_city` VALUES ('39', '1', '朝阳区', null, null, null, null);
INSERT INTO `param_city` VALUES ('40', '1', '海淀区', null, null, null, null);
INSERT INTO `param_city` VALUES ('41', '1', '丰台区', null, null, null, null);
INSERT INTO `param_city` VALUES ('42', '1', '石景山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('43', '1', '门头沟区', null, null, null, null);
INSERT INTO `param_city` VALUES ('44', '1', '昌平区', null, null, null, null);
INSERT INTO `param_city` VALUES ('45', '1', '大兴区', null, null, null, null);
INSERT INTO `param_city` VALUES ('46', '1', '怀柔区', null, null, null, null);
INSERT INTO `param_city` VALUES ('47', '1', '密云县', null, null, null, null);
INSERT INTO `param_city` VALUES ('48', '1', '平谷区', null, null, null, null);
INSERT INTO `param_city` VALUES ('49', '1', '顺义区', null, null, null, null);
INSERT INTO `param_city` VALUES ('50', '1', '通州区', null, null, null, null);
INSERT INTO `param_city` VALUES ('51', '1', '延庆县', null, null, null, null);
INSERT INTO `param_city` VALUES ('52', '1', '房山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('53', '2', '黄浦区', null, null, null, null);
INSERT INTO `param_city` VALUES ('54', '2', '南市区', null, null, null, null);
INSERT INTO `param_city` VALUES ('55', '2', '卢湾区', null, null, null, null);
INSERT INTO `param_city` VALUES ('56', '2', '徐汇区', null, null, null, null);
INSERT INTO `param_city` VALUES ('57', '2', '长宁区', null, null, null, null);
INSERT INTO `param_city` VALUES ('58', '2', '静安区', null, null, null, null);
INSERT INTO `param_city` VALUES ('59', '2', '普陀区', null, null, null, null);
INSERT INTO `param_city` VALUES ('60', '2', '金山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('61', '2', '闸北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('62', '2', '虹口区', null, null, null, null);
INSERT INTO `param_city` VALUES ('63', '2', '杨浦区', null, null, null, null);
INSERT INTO `param_city` VALUES ('64', '2', '宝山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('65', '2', '闵行区', null, null, null, null);
INSERT INTO `param_city` VALUES ('66', '2', '嘉定区', null, null, null, null);
INSERT INTO `param_city` VALUES ('67', '2', '松江区', null, null, null, null);
INSERT INTO `param_city` VALUES ('68', '2', '浦东新区', null, null, null, null);
INSERT INTO `param_city` VALUES ('69', '2', '青浦县', null, null, null, null);
INSERT INTO `param_city` VALUES ('70', '2', '奉贤县', null, null, null, null);
INSERT INTO `param_city` VALUES ('71', '2', '南汇县', null, null, null, null);
INSERT INTO `param_city` VALUES ('72', '2', '崇明县', null, null, null, null);
INSERT INTO `param_city` VALUES ('73', '3', '和平区', null, null, null, null);
INSERT INTO `param_city` VALUES ('74', '3', '河东区', null, null, null, null);
INSERT INTO `param_city` VALUES ('75', '3', '河西区', null, null, null, null);
INSERT INTO `param_city` VALUES ('76', '3', '河北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('77', '3', '南开区', null, null, null, null);
INSERT INTO `param_city` VALUES ('78', '3', '红桥区', null, null, null, null);
INSERT INTO `param_city` VALUES ('79', '3', '塘沽区', null, null, null, null);
INSERT INTO `param_city` VALUES ('80', '3', '汉沽区', null, null, null, null);
INSERT INTO `param_city` VALUES ('81', '3', '大港区', null, null, null, null);
INSERT INTO `param_city` VALUES ('82', '3', '东丽区', null, null, null, null);
INSERT INTO `param_city` VALUES ('83', '3', '西青区', null, null, null, null);
INSERT INTO `param_city` VALUES ('84', '3', '津南区', null, null, null, null);
INSERT INTO `param_city` VALUES ('85', '3', '北辰区', null, null, null, null);
INSERT INTO `param_city` VALUES ('86', '3', ' 武清区', null, null, null, null);
INSERT INTO `param_city` VALUES ('87', '3', '宝坻区', null, null, null, null);
INSERT INTO `param_city` VALUES ('88', '3', '蓟 县', null, null, null, null);
INSERT INTO `param_city` VALUES ('89', '3', '宁河县', null, null, null, null);
INSERT INTO `param_city` VALUES ('90', '3', '静海县', null, null, null, null);
INSERT INTO `param_city` VALUES ('91', '4', '永川市', null, null, null, null);
INSERT INTO `param_city` VALUES ('92', '4', '黔江区', null, null, null, null);
INSERT INTO `param_city` VALUES ('93', '4', '涪陵区', null, null, null, null);
INSERT INTO `param_city` VALUES ('94', '4', '万洲区', null, null, null, null);
INSERT INTO `param_city` VALUES ('95', '4', '渝中区', null, null, null, null);
INSERT INTO `param_city` VALUES ('96', '4', '大渡口区', null, null, null, null);
INSERT INTO `param_city` VALUES ('97', '4', '江北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('98', '4', '沙坪坝区', null, null, null, null);
INSERT INTO `param_city` VALUES ('99', '4', '九龙坡区', null, null, null, null);
INSERT INTO `param_city` VALUES ('100', '4', '南岸区', null, null, null, null);
INSERT INTO `param_city` VALUES ('101', '4', '北碚区', null, null, null, null);
INSERT INTO `param_city` VALUES ('102', '4', ' 万盛区', null, null, null, null);
INSERT INTO `param_city` VALUES ('103', '4', '双桥区', null, null, null, null);
INSERT INTO `param_city` VALUES ('104', '4', '渝北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('105', '4', '巴南区', null, null, null, null);
INSERT INTO `param_city` VALUES ('106', '4', '长寿区', null, null, null, null);
INSERT INTO `param_city` VALUES ('107', '5', '哈尔滨', null, null, null, null);
INSERT INTO `param_city` VALUES ('108', '5', '齐齐哈尔', null, null, null, null);
INSERT INTO `param_city` VALUES ('109', '5', '牡丹江', null, null, null, null);
INSERT INTO `param_city` VALUES ('110', '5', '鹤岗', null, null, null, null);
INSERT INTO `param_city` VALUES ('111', '5', '双鸭山', null, null, null, null);
INSERT INTO `param_city` VALUES ('112', '5', '鸡西', null, null, null, null);
INSERT INTO `param_city` VALUES ('113', '5', '大庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('114', '5', '伊春', null, null, null, null);
INSERT INTO `param_city` VALUES ('115', '5', '佳木斯', null, null, null, null);
INSERT INTO `param_city` VALUES ('116', '5', '七台河', null, null, null, null);
INSERT INTO `param_city` VALUES ('117', '5', '黑河', null, null, null, null);
INSERT INTO `param_city` VALUES ('118', '5', '绥化', null, null, null, null);
INSERT INTO `param_city` VALUES ('119', '5', '大兴安岭地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('120', '6', '长春', null, null, null, null);
INSERT INTO `param_city` VALUES ('121', '6', '吉林', null, null, null, null);
INSERT INTO `param_city` VALUES ('122', '6', '四平', null, null, null, null);
INSERT INTO `param_city` VALUES ('123', '6', '辽源', null, null, null, null);
INSERT INTO `param_city` VALUES ('124', '6', '通化', null, null, null, null);
INSERT INTO `param_city` VALUES ('125', '6', '白山', null, null, null, null);
INSERT INTO `param_city` VALUES ('126', '6', '松原', null, null, null, null);
INSERT INTO `param_city` VALUES ('127', '6', '白城', null, null, null, null);
INSERT INTO `param_city` VALUES ('128', '6', '延边朝鲜族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('129', '6', '高新', null, null, null, null);
INSERT INTO `param_city` VALUES ('130', '6', '延吉', null, null, null, null);
INSERT INTO `param_city` VALUES ('131', '6', '梅河口', null, null, null, null);
INSERT INTO `param_city` VALUES ('132', '7', '沈阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('133', '7', '大连', null, null, null, null);
INSERT INTO `param_city` VALUES ('134', '7', '锦州', null, null, null, null);
INSERT INTO `param_city` VALUES ('135', '7', '鞍山', null, null, null, null);
INSERT INTO `param_city` VALUES ('136', '7', '抚顺', null, null, null, null);
INSERT INTO `param_city` VALUES ('137', '7', '本溪', null, null, null, null);
INSERT INTO `param_city` VALUES ('138', '7', '丹东', null, null, null, null);
INSERT INTO `param_city` VALUES ('139', '7', '葫芦岛', null, null, null, null);
INSERT INTO `param_city` VALUES ('140', '7', '营口', null, null, null, null);
INSERT INTO `param_city` VALUES ('141', '7', '盘锦', null, null, null, null);
INSERT INTO `param_city` VALUES ('142', '7', '阜新', null, null, null, null);
INSERT INTO `param_city` VALUES ('143', '7', '辽阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('144', '7', '铁岭', null, null, null, null);
INSERT INTO `param_city` VALUES ('145', '7', '朝阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('146', '7', '瓦房店', null, null, null, null);
INSERT INTO `param_city` VALUES ('147', '8', '呼和浩特', null, null, null, null);
INSERT INTO `param_city` VALUES ('148', '8', '包头', null, null, null, null);
INSERT INTO `param_city` VALUES ('149', '8', '乌海', null, null, null, null);
INSERT INTO `param_city` VALUES ('150', '8', '赤峰', null, null, null, null);
INSERT INTO `param_city` VALUES ('151', '8', '通辽', null, null, null, null);
INSERT INTO `param_city` VALUES ('152', '8', '鄂尔多斯', null, null, null, null);
INSERT INTO `param_city` VALUES ('153', '8', '乌兰察布盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('154', '8', '锡林郭勒盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('155', '8', '巴彦淖尔盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('156', '8', '阿拉善盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('157', '8', '兴安盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('158', '8', '巴彦淖尔', null, null, null, null);
INSERT INTO `param_city` VALUES ('159', '8', '呼伦贝尔', null, null, null, null);
INSERT INTO `param_city` VALUES ('160', '8', '集宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('161', '8', ' 乌兰浩特', null, null, null, null);
INSERT INTO `param_city` VALUES ('162', '8', '锡林浩特', null, null, null, null);
INSERT INTO `param_city` VALUES ('163', '9', '银川', null, null, null, null);
INSERT INTO `param_city` VALUES ('164', '9', '石嘴山', null, null, null, null);
INSERT INTO `param_city` VALUES ('165', '9', '吴忠', null, null, null, null);
INSERT INTO `param_city` VALUES ('166', '9', '固原', null, null, null, null);
INSERT INTO `param_city` VALUES ('167', '10', '乌鲁木齐', null, null, null, null);
INSERT INTO `param_city` VALUES ('168', '10', '克拉玛依', null, null, null, null);
INSERT INTO `param_city` VALUES ('169', '10', '吐鲁番地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('170', '10', '哈密地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('171', '10', '和田地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('172', '10', '阿克苏地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('173', '10', '喀什地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('174', '10', '克孜勒苏柯尔克孜自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('175', '10', '巴音郭楞蒙古自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('176', '10', '昌吉回族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('177', '10', '博尔塔拉蒙古自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('178', '10', '伊犁哈萨克自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('179', '10', '阿克苏', null, null, null, null);
INSERT INTO `param_city` VALUES ('180', '10', '昌吉', null, null, null, null);
INSERT INTO `param_city` VALUES ('181', '10', '哈密', null, null, null, null);
INSERT INTO `param_city` VALUES ('182', '10', '和田', null, null, null, null);
INSERT INTO `param_city` VALUES ('183', '10', '喀什', null, null, null, null);
INSERT INTO `param_city` VALUES ('184', '10', '克拉马依', null, null, null, null);
INSERT INTO `param_city` VALUES ('185', '10', '库尔勒', null, null, null, null);
INSERT INTO `param_city` VALUES ('186', '10', '石河子', null, null, null, null);
INSERT INTO `param_city` VALUES ('187', '10', '吐鲁番', null, null, null, null);
INSERT INTO `param_city` VALUES ('188', '10', ' 乌市', null, null, null, null);
INSERT INTO `param_city` VALUES ('189', '10', '奎屯', null, null, null, null);
INSERT INTO `param_city` VALUES ('190', '10', '伊犁', null, null, null, null);
INSERT INTO `param_city` VALUES ('191', '10', '伊宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('192', '11', '西宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('193', '11', '海东地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('194', '11', ' 海北藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('195', '11', '黄南藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('196', '11', '海南藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('197', '11', '果洛藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('198', '11', '玉树藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('199', '11', '海西蒙古族藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('200', '11', '格尔木', null, null, null, null);
INSERT INTO `param_city` VALUES ('201', '12', '兰州', null, null, null, null);
INSERT INTO `param_city` VALUES ('202', '12', '天水', null, null, null, null);
INSERT INTO `param_city` VALUES ('203', '12', '金昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('204', '12', '白银', null, null, null, null);
INSERT INTO `param_city` VALUES ('205', '12', '嘉峪关', null, null, null, null);
INSERT INTO `param_city` VALUES ('206', '12', '武 威 ', null, null, null, null);
INSERT INTO `param_city` VALUES ('207', '12', '张掖', null, null, null, null);
INSERT INTO `param_city` VALUES ('208', '12', '平凉', null, null, null, null);
INSERT INTO `param_city` VALUES ('209', '12', '酒泉', null, null, null, null);
INSERT INTO `param_city` VALUES ('210', '12', '庆阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('211', '12', '定西地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('212', '12', '陇南地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('213', '12', '甘南藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('214', '12', '临夏回族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('215', '12', '嘉峪', null, null, null, null);
INSERT INTO `param_city` VALUES ('216', '12', '武威', null, null, null, null);
INSERT INTO `param_city` VALUES ('217', '13', '西安', null, null, null, null);
INSERT INTO `param_city` VALUES ('218', '13', '宝鸡', null, null, null, null);
INSERT INTO `param_city` VALUES ('219', '13', '延安', null, null, null, null);
INSERT INTO `param_city` VALUES ('220', '13', '铜川', null, null, null, null);
INSERT INTO `param_city` VALUES ('221', '13', '咸阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('222', '13', '渭南', null, null, null, null);
INSERT INTO `param_city` VALUES ('223', '13', '汉中', null, null, null, null);
INSERT INTO `param_city` VALUES ('224', '13', '榆林', null, null, null, null);
INSERT INTO `param_city` VALUES ('225', '13', '安康', null, null, null, null);
INSERT INTO `param_city` VALUES ('226', '13', '商洛', null, null, null, null);
INSERT INTO `param_city` VALUES ('227', '13', '韩城', null, null, null, null);
INSERT INTO `param_city` VALUES ('228', '14', '石家庄', null, null, null, null);
INSERT INTO `param_city` VALUES ('229', '14', '保定', null, null, null, null);
INSERT INTO `param_city` VALUES ('230', '14', '唐山', null, null, null, null);
INSERT INTO `param_city` VALUES ('231', '14', '秦皇岛', null, null, null, null);
INSERT INTO `param_city` VALUES ('232', '14', '邯郸', null, null, null, null);
INSERT INTO `param_city` VALUES ('233', '14', '邢台', null, null, null, null);
INSERT INTO `param_city` VALUES ('234', '14', '张家口', null, null, null, null);
INSERT INTO `param_city` VALUES ('235', '14', '承德', null, null, null, null);
INSERT INTO `param_city` VALUES ('236', '14', '沧州', null, null, null, null);
INSERT INTO `param_city` VALUES ('237', '14', '廊坊', null, null, null, null);
INSERT INTO `param_city` VALUES ('238', '14', '衡水', null, null, null, null);
INSERT INTO `param_city` VALUES ('239', '14', '霸州', null, null, null, null);
INSERT INTO `param_city` VALUES ('240', '14', '青县', null, null, null, null);
INSERT INTO `param_city` VALUES ('241', '14', '任丘', null, null, null, null);
INSERT INTO `param_city` VALUES ('242', '14', '涿州', null, null, null, null);
INSERT INTO `param_city` VALUES ('243', '15', '郑州', null, null, null, null);
INSERT INTO `param_city` VALUES ('244', '15', '洛阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('245', '15', '开封', null, null, null, null);
INSERT INTO `param_city` VALUES ('246', '15', '平顶山', null, null, null, null);
INSERT INTO `param_city` VALUES ('247', '15', '焦作', null, null, null, null);
INSERT INTO `param_city` VALUES ('248', '15', '鹤壁', null, null, null, null);
INSERT INTO `param_city` VALUES ('249', '15', '新乡', null, null, null, null);
INSERT INTO `param_city` VALUES ('250', '15', '安阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('251', '15', '濮阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('252', '15', '许昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('253', '15', '漯河', null, null, null, null);
INSERT INTO `param_city` VALUES ('254', '15', '三门峡', null, null, null, null);
INSERT INTO `param_city` VALUES ('255', '15', '南阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('256', '15', '商丘', null, null, null, null);
INSERT INTO `param_city` VALUES ('257', '15', '信阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('258', '15', '周口', null, null, null, null);
INSERT INTO `param_city` VALUES ('259', '15', '驻马店', null, null, null, null);
INSERT INTO `param_city` VALUES ('260', '16', '济南', null, null, null, null);
INSERT INTO `param_city` VALUES ('261', '16', '青岛', null, null, null, null);
INSERT INTO `param_city` VALUES ('262', '16', '烟台', null, null, null, null);
INSERT INTO `param_city` VALUES ('263', '16', '淄博', null, null, null, null);
INSERT INTO `param_city` VALUES ('264', '16', '枣庄', null, null, null, null);
INSERT INTO `param_city` VALUES ('265', '16', '东营', null, null, null, null);
INSERT INTO `param_city` VALUES ('266', '16', '潍坊', null, null, null, null);
INSERT INTO `param_city` VALUES ('267', '16', '威海', null, null, null, null);
INSERT INTO `param_city` VALUES ('268', '16', '济宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('269', '16', '泰安', null, null, null, null);
INSERT INTO `param_city` VALUES ('270', '16', '日照', null, null, null, null);
INSERT INTO `param_city` VALUES ('271', '16', '莱芜', null, null, null, null);
INSERT INTO `param_city` VALUES ('272', '16', '德州', null, null, null, null);
INSERT INTO `param_city` VALUES ('273', '16', '临沂', null, null, null, null);
INSERT INTO `param_city` VALUES ('274', '16', '聊城', null, null, null, null);
INSERT INTO `param_city` VALUES ('275', '16', '滨州', null, null, null, null);
INSERT INTO `param_city` VALUES ('276', '16', '菏泽', null, null, null, null);
INSERT INTO `param_city` VALUES ('277', '16', '高密', null, null, null, null);
INSERT INTO `param_city` VALUES ('278', '16', '荷泽', null, null, null, null);
INSERT INTO `param_city` VALUES ('279', '16', '淮坊', null, null, null, null);
INSERT INTO `param_city` VALUES ('280', '16', '即墨', null, null, null, null);
INSERT INTO `param_city` VALUES ('281', '16', '胶南', null, null, null, null);
INSERT INTO `param_city` VALUES ('282', '16', '莱州', null, null, null, null);
INSERT INTO `param_city` VALUES ('283', '16', '林沂', null, null, null, null);
INSERT INTO `param_city` VALUES ('284', '16', '临忻', null, null, null, null);
INSERT INTO `param_city` VALUES ('285', '16', '龙口', null, null, null, null);
INSERT INTO `param_city` VALUES ('286', '16', '蓬莱', null, null, null, null);
INSERT INTO `param_city` VALUES ('287', '16', '青州', null, null, null, null);
INSERT INTO `param_city` VALUES ('288', '16', '乳山', null, null, null, null);
INSERT INTO `param_city` VALUES ('289', '16', '寿光', null, null, null, null);
INSERT INTO `param_city` VALUES ('290', '16', '滕州', null, null, null, null);
INSERT INTO `param_city` VALUES ('291', '16', '文登', null, null, null, null);
INSERT INTO `param_city` VALUES ('292', '16', '招远', null, null, null, null);
INSERT INTO `param_city` VALUES ('293', '17', '太原', null, null, null, null);
INSERT INTO `param_city` VALUES ('294', '17', '大同', null, null, null, null);
INSERT INTO `param_city` VALUES ('295', '17', '朔州', null, null, null, null);
INSERT INTO `param_city` VALUES ('296', '17', '阳泉', null, null, null, null);
INSERT INTO `param_city` VALUES ('297', '17', '长治', null, null, null, null);
INSERT INTO `param_city` VALUES ('298', '17', '晋城', null, null, null, null);
INSERT INTO `param_city` VALUES ('299', '17', '忻州', null, null, null, null);
INSERT INTO `param_city` VALUES ('300', '17', '晋中', null, null, null, null);
INSERT INTO `param_city` VALUES ('301', '17', '临汾', null, null, null, null);
INSERT INTO `param_city` VALUES ('302', '17', '运城', null, null, null, null);
INSERT INTO `param_city` VALUES ('303', '17', '吕梁地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('304', '17', '河津', null, null, null, null);
INSERT INTO `param_city` VALUES ('305', '17', '侯马', null, null, null, null);
INSERT INTO `param_city` VALUES ('306', '17', '孝义', null, null, null, null);
INSERT INTO `param_city` VALUES ('307', '17', '榆次', null, null, null, null);
INSERT INTO `param_city` VALUES ('308', '18', '武汉', null, null, null, null);
INSERT INTO `param_city` VALUES ('309', '18', '黄石', null, null, null, null);
INSERT INTO `param_city` VALUES ('310', '18', '襄樊', null, null, null, null);
INSERT INTO `param_city` VALUES ('311', '18', '十堰', null, null, null, null);
INSERT INTO `param_city` VALUES ('312', '18', '荆州', null, null, null, null);
INSERT INTO `param_city` VALUES ('313', '18', '宜昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('314', '18', '荆门', null, null, null, null);
INSERT INTO `param_city` VALUES ('315', '18', '鄂州', null, null, null, null);
INSERT INTO `param_city` VALUES ('316', '18', '孝感', null, null, null, null);
INSERT INTO `param_city` VALUES ('317', '18', '黄冈', null, null, null, null);
INSERT INTO `param_city` VALUES ('318', '18', '咸宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('319', '18', '随州', null, null, null, null);
INSERT INTO `param_city` VALUES ('320', '18', '恩施土家族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('321', '18', '安陆', null, null, null, null);
INSERT INTO `param_city` VALUES ('322', '18', '恩施', null, null, null, null);
INSERT INTO `param_city` VALUES ('323', '18', '汉口', null, null, null, null);
INSERT INTO `param_city` VALUES ('324', '18', '汉阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('325', '18', '潜江', null, null, null, null);
INSERT INTO `param_city` VALUES ('326', '18', '仙桃', null, null, null, null);
INSERT INTO `param_city` VALUES ('327', '18', '株州', null, null, null, null);
INSERT INTO `param_city` VALUES ('328', '19', '长沙', null, null, null, null);
INSERT INTO `param_city` VALUES ('329', '19', '株洲', null, null, null, null);
INSERT INTO `param_city` VALUES ('330', '19', '湘潭', null, null, null, null);
INSERT INTO `param_city` VALUES ('331', '19', '衡阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('332', '19', '邵阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('333', '19', '岳阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('334', '19', '常德', null, null, null, null);
INSERT INTO `param_city` VALUES ('335', '19', '张家界', null, null, null, null);
INSERT INTO `param_city` VALUES ('336', '19', '益阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('337', '19', '郴州', null, null, null, null);
INSERT INTO `param_city` VALUES ('338', '19', '永州', null, null, null, null);
INSERT INTO `param_city` VALUES ('339', '19', '怀化', null, null, null, null);
INSERT INTO `param_city` VALUES ('340', '19', '娄底', null, null, null, null);
INSERT INTO `param_city` VALUES ('341', '19', '湘西土家族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('342', '19', '株州', null, null, null, null);
INSERT INTO `param_city` VALUES ('343', '19', '邵东', null, null, null, null);
INSERT INTO `param_city` VALUES ('344', '20', '合肥', null, null, null, null);
INSERT INTO `param_city` VALUES ('345', '20', '芜湖', null, null, null, null);
INSERT INTO `param_city` VALUES ('346', '20', '蚌埠', null, null, null, null);
INSERT INTO `param_city` VALUES ('347', '20', '淮南', null, null, null, null);
INSERT INTO `param_city` VALUES ('348', '20', '马鞍山', null, null, null, null);
INSERT INTO `param_city` VALUES ('349', '20', '淮北', null, null, null, null);
INSERT INTO `param_city` VALUES ('350', '20', '铜陵', null, null, null, null);
INSERT INTO `param_city` VALUES ('351', '20', '安庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('352', '20', '黄山', null, null, null, null);
INSERT INTO `param_city` VALUES ('353', '20', '滁州', null, null, null, null);
INSERT INTO `param_city` VALUES ('354', '20', '阜阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('355', '20', '宿州', null, null, null, null);
INSERT INTO `param_city` VALUES ('356', '20', '巢湖', null, null, null, null);
INSERT INTO `param_city` VALUES ('357', '20', '六安', null, null, null, null);
INSERT INTO `param_city` VALUES ('358', '20', '亳州', null, null, null, null);
INSERT INTO `param_city` VALUES ('359', '20', '池州', null, null, null, null);
INSERT INTO `param_city` VALUES ('360', '20', '宣城', null, null, null, null);
INSERT INTO `param_city` VALUES ('361', '20', '蒙城', null, null, null, null);
INSERT INTO `param_city` VALUES ('362', '20', '宁国', null, null, null, null);
INSERT INTO `param_city` VALUES ('363', '20', '桐城', null, null, null, null);
INSERT INTO `param_city` VALUES ('364', '21', '南京', null, null, null, null);
INSERT INTO `param_city` VALUES ('365', '21', '徐州', null, null, null, null);
INSERT INTO `param_city` VALUES ('366', '21', '连云港', null, null, null, null);
INSERT INTO `param_city` VALUES ('367', '21', '淮安', null, null, null, null);
INSERT INTO `param_city` VALUES ('368', '21', '宿迁', null, null, null, null);
INSERT INTO `param_city` VALUES ('369', '21', '盐城', null, null, null, null);
INSERT INTO `param_city` VALUES ('370', '21', '扬州', null, null, null, null);
INSERT INTO `param_city` VALUES ('371', '21', '泰州', null, null, null, null);
INSERT INTO `param_city` VALUES ('372', '21', '南通', null, null, null, null);
INSERT INTO `param_city` VALUES ('373', '21', '镇江', null, null, null, null);
INSERT INTO `param_city` VALUES ('374', '21', '常州', null, null, null, null);
INSERT INTO `param_city` VALUES ('375', '21', '无锡', null, null, null, null);
INSERT INTO `param_city` VALUES ('376', '21', '苏州', null, null, null, null);
INSERT INTO `param_city` VALUES ('377', '21', '常熟', null, null, null, null);
INSERT INTO `param_city` VALUES ('378', '21', '丹阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('379', '21', '海门', null, null, null, null);
INSERT INTO `param_city` VALUES ('380', '21', '江都', null, null, null, null);
INSERT INTO `param_city` VALUES ('381', '21', '江阴', null, null, null, null);
INSERT INTO `param_city` VALUES ('382', '21', '靖江', null, null, null, null);
INSERT INTO `param_city` VALUES ('383', '21', '昆山', null, null, null, null);
INSERT INTO `param_city` VALUES ('384', '21', '溧阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('385', '21', '太仓', null, null, null, null);
INSERT INTO `param_city` VALUES ('386', '21', '泰州华', null, null, null, null);
INSERT INTO `param_city` VALUES ('387', '21', '吴江', null, null, null, null);
INSERT INTO `param_city` VALUES ('388', '21', '吴县', null, null, null, null);
INSERT INTO `param_city` VALUES ('389', '21', '宜兴', null, null, null, null);
INSERT INTO `param_city` VALUES ('390', '21', '张家港', null, null, null, null);
INSERT INTO `param_city` VALUES ('391', '22', '杭州', null, null, null, null);
INSERT INTO `param_city` VALUES ('392', '22', '宁波', null, null, null, null);
INSERT INTO `param_city` VALUES ('393', '22', '温州', null, null, null, null);
INSERT INTO `param_city` VALUES ('394', '22', '嘉兴', null, null, null, null);
INSERT INTO `param_city` VALUES ('395', '22', '湖州', null, null, null, null);
INSERT INTO `param_city` VALUES ('396', '22', '绍兴', null, null, null, null);
INSERT INTO `param_city` VALUES ('397', '22', '金华', null, null, null, null);
INSERT INTO `param_city` VALUES ('398', '22', '衢州', null, null, null, null);
INSERT INTO `param_city` VALUES ('399', '22', '舟山', null, null, null, null);
INSERT INTO `param_city` VALUES ('400', '22', '台州', null, null, null, null);
INSERT INTO `param_city` VALUES ('401', '22', '丽水', null, null, null, null);
INSERT INTO `param_city` VALUES ('402', '22', '慈溪', null, null, null, null);
INSERT INTO `param_city` VALUES ('403', '22', '东阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('404', '22', '奉化', null, null, null, null);
INSERT INTO `param_city` VALUES ('405', '22', '乐清', null, null, null, null);
INSERT INTO `param_city` VALUES ('406', '22', '临安', null, null, null, null);
INSERT INTO `param_city` VALUES ('407', '22', '临海', null, null, null, null);
INSERT INTO `param_city` VALUES ('408', '22', '平湖', null, null, null, null);
INSERT INTO `param_city` VALUES ('409', '22', '瑞安', null, null, null, null);
INSERT INTO `param_city` VALUES ('410', '22', '上虞', null, null, null, null);
INSERT INTO `param_city` VALUES ('411', '22', '嵊州', null, null, null, null);
INSERT INTO `param_city` VALUES ('412', '22', '温岭', null, null, null, null);
INSERT INTO `param_city` VALUES ('413', '22', '义乌', null, null, null, null);
INSERT INTO `param_city` VALUES ('414', '22', '永康', null, null, null, null);
INSERT INTO `param_city` VALUES ('415', '22', '余姚', null, null, null, null);
INSERT INTO `param_city` VALUES ('416', '22', '诸暨', null, null, null, null);
INSERT INTO `param_city` VALUES ('417', '22', '新昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('418', '23', '南昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('419', '23', '景德镇', null, null, null, null);
INSERT INTO `param_city` VALUES ('420', '23', '萍乡', null, null, null, null);
INSERT INTO `param_city` VALUES ('421', '23', '新余', null, null, null, null);
INSERT INTO `param_city` VALUES ('422', '23', '九江', null, null, null, null);
INSERT INTO `param_city` VALUES ('423', '23', '鹰潭', null, null, null, null);
INSERT INTO `param_city` VALUES ('424', '23', '赣州', null, null, null, null);
INSERT INTO `param_city` VALUES ('425', '23', '吉安', null, null, null, null);
INSERT INTO `param_city` VALUES ('426', '23', '宜春', null, null, null, null);
INSERT INTO `param_city` VALUES ('427', '23', '抚州', null, null, null, null);
INSERT INTO `param_city` VALUES ('428', '23', '上饶', null, null, null, null);
INSERT INTO `param_city` VALUES ('429', '23', '高安', null, null, null, null);
INSERT INTO `param_city` VALUES ('430', '24', '广州', null, null, null, null);
INSERT INTO `param_city` VALUES ('431', '24', '深圳', null, null, null, null);
INSERT INTO `param_city` VALUES ('432', '24', '珠海', null, null, null, null);
INSERT INTO `param_city` VALUES ('433', '24', '汕头', null, null, null, null);
INSERT INTO `param_city` VALUES ('434', '24', '韶关', null, null, null, null);
INSERT INTO `param_city` VALUES ('435', '24', '河源', null, null, null, null);
INSERT INTO `param_city` VALUES ('436', '24', '梅州', null, null, null, null);
INSERT INTO `param_city` VALUES ('437', '24', '惠州', null, null, null, null);
INSERT INTO `param_city` VALUES ('438', '24', '汕尾', null, null, null, null);
INSERT INTO `param_city` VALUES ('439', '24', '东莞', null, null, null, null);
INSERT INTO `param_city` VALUES ('440', '24', '中山', null, null, null, null);
INSERT INTO `param_city` VALUES ('441', '24', '江门', null, null, null, null);
INSERT INTO `param_city` VALUES ('442', '24', '佛山', null, null, null, null);
INSERT INTO `param_city` VALUES ('443', '24', '阳江', null, null, null, null);
INSERT INTO `param_city` VALUES ('444', '24', '湛江', null, null, null, null);
INSERT INTO `param_city` VALUES ('445', '24', '茂名', null, null, null, null);
INSERT INTO `param_city` VALUES ('446', '24', '肇庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('447', '24', '清远', null, null, null, null);
INSERT INTO `param_city` VALUES ('448', '24', '潮州', null, null, null, null);
INSERT INTO `param_city` VALUES ('449', '24', '揭阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('450', '24', '云浮', null, null, null, null);
INSERT INTO `param_city` VALUES ('451', '24', '花都', null, null, null, null);
INSERT INTO `param_city` VALUES ('452', '24', '开平', null, null, null, null);
INSERT INTO `param_city` VALUES ('453', '24', '南海', null, null, null, null);
INSERT INTO `param_city` VALUES ('454', '24', '顺德', null, null, null, null);
INSERT INTO `param_city` VALUES ('455', '24', '台山', null, null, null, null);
INSERT INTO `param_city` VALUES ('456', '24', '增城', null, null, null, null);
INSERT INTO `param_city` VALUES ('457', '24', '市梅', null, null, null, null);
INSERT INTO `param_city` VALUES ('458', '25', '南宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('459', '25', '柳州', null, null, null, null);
INSERT INTO `param_city` VALUES ('460', '25', '桂林', null, null, null, null);
INSERT INTO `param_city` VALUES ('461', '25', '梧州', null, null, null, null);
INSERT INTO `param_city` VALUES ('462', '25', '北海', null, null, null, null);
INSERT INTO `param_city` VALUES ('463', '25', '防城港', null, null, null, null);
INSERT INTO `param_city` VALUES ('464', '25', '钦州', null, null, null, null);
INSERT INTO `param_city` VALUES ('465', '25', '贵港', null, null, null, null);
INSERT INTO `param_city` VALUES ('466', '25', '玉林', null, null, null, null);
INSERT INTO `param_city` VALUES ('467', '25', '百色', null, null, null, null);
INSERT INTO `param_city` VALUES ('468', '25', '贺州', null, null, null, null);
INSERT INTO `param_city` VALUES ('469', '25', '河池', null, null, null, null);
INSERT INTO `param_city` VALUES ('470', '25', '来宾', null, null, null, null);
INSERT INTO `param_city` VALUES ('471', '25', '崇左', null, null, null, null);
INSERT INTO `param_city` VALUES ('472', '26', '福州', null, null, null, null);
INSERT INTO `param_city` VALUES ('473', '26', '厦门', null, null, null, null);
INSERT INTO `param_city` VALUES ('474', '26', '三明', null, null, null, null);
INSERT INTO `param_city` VALUES ('475', '26', '莆田', null, null, null, null);
INSERT INTO `param_city` VALUES ('476', '26', '泉州', null, null, null, null);
INSERT INTO `param_city` VALUES ('477', '26', '漳州', null, null, null, null);
INSERT INTO `param_city` VALUES ('478', '26', '南平', null, null, null, null);
INSERT INTO `param_city` VALUES ('479', '26', '龙岩', null, null, null, null);
INSERT INTO `param_city` VALUES ('480', '26', '宁德', null, null, null, null);
INSERT INTO `param_city` VALUES ('481', '26', '福清', null, null, null, null);
INSERT INTO `param_city` VALUES ('482', '26', '建瓯', null, null, null, null);
INSERT INTO `param_city` VALUES ('483', '26', '晋江', null, null, null, null);
INSERT INTO `param_city` VALUES ('484', '26', '南安', null, null, null, null);
INSERT INTO `param_city` VALUES ('485', '26', '邵武', null, null, null, null);
INSERT INTO `param_city` VALUES ('486', '26', '石狮', null, null, null, null);
INSERT INTO `param_city` VALUES ('487', '26', '仙游', null, null, null, null);
INSERT INTO `param_city` VALUES ('488', '27', '成都', null, null, null, null);
INSERT INTO `param_city` VALUES ('489', '27', '自贡', null, null, null, null);
INSERT INTO `param_city` VALUES ('490', '27', '攀枝花', null, null, null, null);
INSERT INTO `param_city` VALUES ('491', '27', '泸州', null, null, null, null);
INSERT INTO `param_city` VALUES ('492', '27', '德阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('493', '27', '绵阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('494', '27', '广元', null, null, null, null);
INSERT INTO `param_city` VALUES ('495', '27', '遂宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('496', '27', '内江', null, null, null, null);
INSERT INTO `param_city` VALUES ('497', '27', '乐山', null, null, null, null);
INSERT INTO `param_city` VALUES ('498', '27', '南充', null, null, null, null);
INSERT INTO `param_city` VALUES ('499', '27', '宜宾', null, null, null, null);
INSERT INTO `param_city` VALUES ('500', '27', '广安', null, null, null, null);
INSERT INTO `param_city` VALUES ('501', '27', '达州', null, null, null, null);
INSERT INTO `param_city` VALUES ('502', '27', '巴中', null, null, null, null);
INSERT INTO `param_city` VALUES ('503', '27', '雅安', null, null, null, null);
INSERT INTO `param_city` VALUES ('504', '27', '眉山', null, null, null, null);
INSERT INTO `param_city` VALUES ('505', '27', '资阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('506', '27', '阿坝藏族羌族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('507', '27', '甘孜藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('508', '27', '凉山彝族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('509', '27', '广汉', null, null, null, null);
INSERT INTO `param_city` VALUES ('510', '27', '锦阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('511', '27', '西昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('512', '28', '昆明', null, null, null, null);
INSERT INTO `param_city` VALUES ('513', '28', '曲靖', null, null, null, null);
INSERT INTO `param_city` VALUES ('514', '28', '玉溪', null, null, null, null);
INSERT INTO `param_city` VALUES ('515', '28', '保山', null, null, null, null);
INSERT INTO `param_city` VALUES ('516', '28', '昭通', null, null, null, null);
INSERT INTO `param_city` VALUES ('517', '28', '思茅地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('518', '28', '临沧地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('519', '28', '丽江', null, null, null, null);
INSERT INTO `param_city` VALUES ('520', '28', ' 文山壮族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('521', '28', '红河哈尼族彝族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('522', '28', '西双版纳傣族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('523', '28', '楚雄彝族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('524', '28', '大理白族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('525', '28', '德宏傣族景颇族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('526', '28', '怒江傈傈族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('527', '28', '迪庆藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('528', '28', '大理', null, null, null, null);
INSERT INTO `param_city` VALUES ('529', '29', '贵阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('530', '29', '六盘水', null, null, null, null);
INSERT INTO `param_city` VALUES ('531', '29', '遵义', null, null, null, null);
INSERT INTO `param_city` VALUES ('532', '29', '安顺', null, null, null, null);
INSERT INTO `param_city` VALUES ('533', '29', '铜仁地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('534', '29', '毕节地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('535', '29', '黔西南布依族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('536', '29', '黔东南苗族侗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('537', '29', '黔南布依族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('538', '29', '都匀', null, null, null, null);
INSERT INTO `param_city` VALUES ('539', '29', '贵恙', null, null, null, null);
INSERT INTO `param_city` VALUES ('540', '29', '凯里', null, null, null, null);
INSERT INTO `param_city` VALUES ('541', '29', '铜仁', null, null, null, null);
INSERT INTO `param_city` VALUES ('542', '30', '拉萨', null, null, null, null);
INSERT INTO `param_city` VALUES ('543', '30', '那曲地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('544', '30', '昌都地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('545', '30', '山南地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('546', '30', '日喀则地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('547', '30', '阿里地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('548', '30', '林芝地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('549', '31', '海口', null, null, null, null);
INSERT INTO `param_city` VALUES ('550', '31', '三亚', null, null, null, null);
INSERT INTO `param_city` VALUES ('551', '34', '台北', null, null, null, null);
INSERT INTO `param_city` VALUES ('552', '34', '高雄', null, null, null, null);
INSERT INTO `param_city` VALUES ('553', '34', '台中', null, null, null, null);
INSERT INTO `param_city` VALUES ('554', '34', '台南', null, null, null, null);
INSERT INTO `param_city` VALUES ('555', '34', '基隆', null, null, null, null);
INSERT INTO `param_city` VALUES ('556', '34', '新竹', null, null, null, null);

-- ----------------------------
-- Table structure for param_sysparam
-- ----------------------------
DROP TABLE IF EXISTS `param_sysparam`;
CREATE TABLE `param_sysparam` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '系统菜单项ID PK',
  `parentid` int(8) DEFAULT NULL COMMENT '上一级ID',
  `params_name` varchar(250) DEFAULT NULL COMMENT '参数名称',
  `params_order` varchar(50) DEFAULT NULL COMMENT '次序',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_id` int(8) DEFAULT NULL COMMENT '更新人ID FK',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `create_id` (`create_id`),
  KEY `update_id` (`update_id`),
  KEY `parentid` (`parentid`),
  CONSTRAINT `param_sysparam_ibfk_1` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `param_sysparam_ibfk_2` FOREIGN KEY (`update_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `param_sysparam_ibfk_3` FOREIGN KEY (`parentid`) REFERENCES `param_sysparam_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of param_sysparam
-- ----------------------------
INSERT INTO `param_sysparam` VALUES ('1', '1', '无意向', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('2', '1', '有意向', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('3', '1', '已成交', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('4', '2', 'A', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('5', '2', 'B', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('6', '2', 'C', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('7', '3', '网上', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('8', '3', '客户上门', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('9', '3', '电话', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('10', '3', '转介绍', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('11', '4', '电话跟进', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('12', '4', '短信跟进', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('13', '4', 'QQ', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('14', '4', '微信', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('15', '4', '邮件', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('16', '4', '上门拜访', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('17', '5', '银行转账', '10', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('18', '5', '现金支付', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('19', '5', '承兑汇票', '30', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('20', '6', '订单签订', '10', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('21', '7', '国税发票', '10', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('22', '7', '地税发票', '20', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('23', '6', '订单发货', '30', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('24', '6', '订单签字', '40', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('25', '11', 'S级员工', '100', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('26', '11', 'A级员工', '100', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('27', '11', 'B级员工', '100', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('28', '12', 'S级职务', '22', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('29', '12', 'A级职务', '2', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('30', '12', 'B级职务', '22', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('31', '8', '农,林,牧,渔,水利业', '22', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('32', '8', '工业', '22', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('33', '8', '地质普查和勘探业', '33', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('34', '8', '建筑业', '22', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('35', '8', '交通运输业,邮电通信业', '33', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('36', '8', '商业,公共饮食业,物资供应和仓储业', '11', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('37', '8', '房地产管理,公用事业,居民服务和咨询服务业', '44', null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('38', '8', '卫生,体育和社会福利事业', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('39', '8', '教育,文化艺术和广播电视业', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('40', '8', '科学研究和综合技术服务业', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('41', '8', '金融,保险业', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('42', '8', '国家机关,党政机关和社会团体', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('43', '8', '其他行业', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('44', '13', 'L/C 信用证 (Letter of Credit)', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('45', '13', 'D/A 承兑交单', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('46', '13', 'T/T 电汇 (Telegraphic Transfer)', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('47', '13', 'M/T 信汇', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('48', '5', '网上支付', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('49', '13', 'D/D 票汇汇款 (Banker\'s Demand Draft)', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('50', '13', 'D/P 付款交单 (Document against Payment)', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('51', '13', 'CASH 现金', null, null, null, null, null);
INSERT INTO `param_sysparam` VALUES ('52', '14', '星标邮件', null, null, null, null, null);

-- ----------------------------
-- Table structure for param_sysparam_type
-- ----------------------------
DROP TABLE IF EXISTS `param_sysparam_type`;
CREATE TABLE `param_sysparam_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数顶级分类表 PK',
  `params_name` varchar(250) DEFAULT NULL COMMENT '名称',
  `params_order` varchar(50) DEFAULT NULL COMMENT '次序',
  `isdelete` int(11) DEFAULT 1,
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of param_sysparam_type
-- ----------------------------
INSERT INTO `param_sysparam_type` VALUES ('1', '客户类型', '20', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('2', '客户级别', '30', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('3', '客户来源', '40', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('4', '跟进方式', '50', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('5', '支付方式', '60', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('6', '订单状态', '70', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('7', '发票类型', '80', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('8', '所属行业', '10', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('9', '部门类别', '11', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('10', '部门图标', '11', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('11', '员工等级', '11', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('12', '职务级别', '11', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('13', '收款类别', '12', '1', null);
INSERT INTO `param_sysparam_type` VALUES ('14', '星标邮件', '22', '1', null);

-- ----------------------------
-- Table structure for personal_calendar
-- ----------------------------
DROP TABLE IF EXISTS `personal_calendar`;
CREATE TABLE `personal_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人日程表主键 PK',
  `emp_id` int(11) DEFAULT NULL COMMENT '员工ID  FK',
  `description` longtext DEFAULT NULL COMMENT '内容',
  `starttime` datetime DEFAULT NULL COMMENT '开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '结束时间',
  `isalldayevent` tinyint(1) DEFAULT NULL COMMENT '是否全天事件',
  `title` varchar(200) DEFAULT NULL COMMENT '页面json',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `backgroundColor` varchar(200) DEFAULT 'App.getLayoutColorCode(''green'')',
  `allDay` varchar(10) DEFAULT 'true',
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `personal_calendar_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_calendar
-- ----------------------------
INSERT INTO `personal_calendar` VALUES ('1', '2', '的规划为儿童外套', '2014-09-06 09:26:36', '2014-09-15 09:26:43', '1', null, null, null, 'App.getLayoutColorCode(\'green\')', '1', null);
INSERT INTO `personal_calendar` VALUES ('2', '2', '的规划为儿童外套', '2014-09-06 09:26:36', '2014-09-15 09:26:43', '1', null, null, null, 'App.getLayoutColorCode(\'green\')', '1', null);
INSERT INTO `personal_calendar` VALUES ('3', '2', '的规划为儿童外套', '2014-09-06 09:26:36', '2014-09-15 09:26:43', '1', null, null, null, 'App.getLayoutColorCode(\'green\')', '1', null);

-- ----------------------------
-- Table structure for personal_chat
-- ----------------------------
DROP TABLE IF EXISTS `personal_chat`;
CREATE TABLE `personal_chat` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '员工聊天表 PK',
  `send_emp` int(8) DEFAULT NULL COMMENT '发送消息人',
  `receive_emp` int(8) DEFAULT NULL COMMENT '接收消息人',
  `content` longtext DEFAULT NULL COMMENT '消息内容',
  `send_datetime` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_chat
-- ----------------------------

-- ----------------------------
-- Table structure for personal_event
-- ----------------------------
DROP TABLE IF EXISTS `personal_event`;
CREATE TABLE `personal_event` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) DEFAULT NULL COMMENT '事件内容',
  `emp_id` int(8) DEFAULT NULL COMMENT '所属员工FK',
  `createdate` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `personal_event_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_event
-- ----------------------------

-- ----------------------------
-- Table structure for personal_notes
-- ----------------------------
DROP TABLE IF EXISTS `personal_notes`;
CREATE TABLE `personal_notes` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '个人便签ID PK',
  `emp_id` int(8) DEFAULT NULL COMMENT '员工ID FK',
  `emp_name` varchar(250) DEFAULT NULL COMMENT '员工名称',
  `note_content` longtext DEFAULT NULL COMMENT '便签内容',
  `note_color` varchar(250) DEFAULT NULL COMMENT '便签颜色',
  `xyz` varchar(250) DEFAULT NULL COMMENT '坐标',
  `note_time` datetime DEFAULT NULL COMMENT '便签创建时间',
  PRIMARY KEY (`id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `personal_notes_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personal_notes
-- ----------------------------
INSERT INTO `personal_notes` VALUES ('5', '1', null, '2', 'blue', '164,23,1', '2014-04-23 18:12:31');

-- ----------------------------
-- Table structure for public_chat_room
-- ----------------------------
DROP TABLE IF EXISTS `public_chat_room`;
CREATE TABLE `public_chat_room` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '聊天室 ID PK',
  `chat_emp_id` int(8) DEFAULT NULL COMMENT '员工ID FK',
  `chat_dep_id` int(8) DEFAULT NULL COMMENT '部门ID FK',
  `chat_content` varchar(1000) DEFAULT NULL COMMENT '消息文本',
  `chat_datetime` datetime DEFAULT NULL COMMENT '消息发送时间',
  `chat_isdelete` int(1) DEFAULT NULL COMMENT '是否已删除0/1',
  `chat_deletetime` date DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`),
  KEY `chat_emp_id` (`chat_emp_id`),
  KEY `chat_dep_id` (`chat_dep_id`),
  CONSTRAINT `public_chat_room_ibfk_1` FOREIGN KEY (`chat_emp_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `public_chat_room_ibfk_2` FOREIGN KEY (`chat_dep_id`) REFERENCES `hr_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_chat_room
-- ----------------------------
INSERT INTO `public_chat_room` VALUES ('1', '1', '1', '呵呵呵', '2014-09-13 09:30:10', '1', '2014-09-21');
INSERT INTO `public_chat_room` VALUES ('2', '1', '1', '呵呵呵', '2014-09-13 09:30:10', '1', '2014-09-21');

-- ----------------------------
-- Table structure for public_news
-- ----------------------------
DROP TABLE IF EXISTS `public_news`;
CREATE TABLE `public_news` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '公共新闻表ID PK',
  `news_title` varchar(250) DEFAULT NULL COMMENT '新闻标题',
  `news_content` longtext DEFAULT NULL COMMENT '新闻内容',
  `create_id` int(8) DEFAULT NULL COMMENT '发布人ID FK',
  `dep_id` int(8) DEFAULT NULL COMMENT '发布部门ID FK',
  `news_time` date DEFAULT NULL COMMENT '新闻时间',
  `isdelete` int(1) DEFAULT 1 COMMENT '是否已删除0/1',
  `delete_time` date DEFAULT NULL COMMENT '删除时间',
  `view_num` int(8) DEFAULT 0 COMMENT '被查看次数',
  PRIMARY KEY (`id`),
  KEY `create_id` (`create_id`),
  KEY `dep_id` (`dep_id`),
  CONSTRAINT `public_news_ibfk_1` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `public_news_ibfk_2` FOREIGN KEY (`dep_id`) REFERENCES `hr_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_news
-- ----------------------------
INSERT INTO `public_news` VALUES ('1', 'vdfvdf', '黄金季节', '2', '2', '2015-01-28', '1', '2015-01-15', '0');
INSERT INTO `public_news` VALUES ('2', '委屈委屈个如果', '黄金季节', '2', '2', '2015-01-28', '1', '2014-08-18', '0');
INSERT INTO `public_news` VALUES ('3', '我当时1', '黄金季节倒萨哒哒哒', '4', '4', '2015-01-28', '1', '2014-08-18', '3');
INSERT INTO `public_news` VALUES ('4', '的撒哈哈', '2222222222222222都市打斗法大师傅士大夫石帆胜丰大飒飒水水水水水水水水水水水水', '1', '1', '2015-01-29', '1', null, '0');
INSERT INTO `public_news` VALUES ('5', '的萨芬', '22222222倒萨倒萨达到酷酷酷', '2', '2', '2015-01-29', '1', '2015-01-15', '0');
INSERT INTO `public_news` VALUES ('7', '快来免费看书的', '的开发商开朗大方你说了算doll1', '2', '2', '2015-01-29', '1', null, '0');

-- ----------------------------
-- Table structure for public_notice
-- ----------------------------
DROP TABLE IF EXISTS `public_notice`;
CREATE TABLE `public_notice` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '公告通知ID PK',
  `notice_title` varchar(250) DEFAULT NULL COMMENT '公告标题',
  `notice_content` longtext DEFAULT NULL COMMENT '内容',
  `notice_time` date DEFAULT NULL COMMENT '创建时间',
  `dep_id` int(8) DEFAULT NULL COMMENT '部门ID FK',
  `view_num` int(8) DEFAULT NULL COMMENT '被查看次数',
  `create_id` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  PRIMARY KEY (`id`),
  KEY `create_id` (`create_id`),
  KEY `public_notice_ibfk_2` (`dep_id`),
  CONSTRAINT `public_notice_ibfk_1` FOREIGN KEY (`create_id`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `public_notice_ibfk_2` FOREIGN KEY (`dep_id`) REFERENCES `hr_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of public_notice
-- ----------------------------
INSERT INTO `public_notice` VALUES ('1', '你大爷', 'dsfdf2倒萨达到梵蒂冈地方官个', '2014-09-13', '2', '0', '2');
INSERT INTO `public_notice` VALUES ('2', '你大爷', 'dsfdf', '2014-09-13', '2', '0', '2');
INSERT INTO `public_notice` VALUES ('3', '你大爷', 'dsfdf', '2014-09-13', '2', '0', '2');
INSERT INTO `public_notice` VALUES ('4', '沙和尚', '酷酷酷酷酷酷酷的撒旦', '2015-01-15', '2', '0', '2');
INSERT INTO `public_notice` VALUES ('5', '克里斯2', '快递快递费是开发的肌肤2', '2015-01-15', '1', '0', '1');
INSERT INTO `public_notice` VALUES ('6', '服你得看看1', '空间的深刻搭街坊对你看法和康师傅口可口的司法权沦为111111111111111111111111111', '2015-01-15', '1', '0', '1');

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '应用大模块id PK',
  `app_name` varchar(50) NOT NULL COMMENT '应用名称',
  `app_order` int(8) DEFAULT NULL COMMENT '应用次序',
  `app_url` varchar(150) DEFAULT NULL COMMENT '应用链接',
  `app_method` varchar(50) DEFAULT NULL COMMENT '应用方法',
  `app_icon` varchar(150) NOT NULL COMMENT '应用图标地址',
  `app_id` varchar(50) NOT NULL COMMENT '应用a标签的ID属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO `sys_app` VALUES ('1', '个人办公', '1', '#', null, 'icon-head-one', 'person');
INSERT INTO `sys_app` VALUES ('2', 'CRM客户管理', '1', '#', null, 'icon-head-two', 'crm');
INSERT INTO `sys_app` VALUES ('3', '人事管理', '1', '#', null, 'icon-head-three', 'hr');
INSERT INTO `sys_app` VALUES ('4', '实用工具', '1', '#', null, 'icon-head-four', 'tools');
INSERT INTO `sys_app` VALUES ('5', '报表分析', '1', '#', null, 'icon-head-five', 'table');
INSERT INTO `sys_app` VALUES ('6', '系统管理', '1', '#', null, 'icon-head-six', 'sys');
INSERT INTO `sys_app` VALUES ('7', '桌面', '0', '#', null, 'icon-head-right-1', 'desktop');
INSERT INTO `sys_app` VALUES ('8', '个人设置', '0', '#', null, 'icon-head-three', 'personset');
INSERT INTO `sys_app` VALUES ('9', '修改密码', '0', '#', null, 'icon-head-right-3', 'updatepwd');
INSERT INTO `sys_app` VALUES ('10', '版权信息', '0', '#', null, 'icon-head-right-4', 'info');
INSERT INTO `sys_app` VALUES ('11', '系统信息', '0', '#', null, 'icon-head-right-5', 'sysinfo');
INSERT INTO `sys_app` VALUES ('12', '退出系统', '0', '#', null, 'icon-head-right-6', 'exit');

-- ----------------------------
-- Table structure for sys_login
-- ----------------------------
DROP TABLE IF EXISTS `sys_login`;
CREATE TABLE `sys_login` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '登录记录表 ID',
  `emp_id` int(11) DEFAULT NULL COMMENT '员工FK',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `emp_name` varchar(50) DEFAULT NULL COMMENT '员工姓名',
  `logintime` datetime DEFAULT NULL COMMENT '登陆时间',
  PRIMARY KEY (`id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `sys_login_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_login
-- ----------------------------
INSERT INTO `sys_login` VALUES ('1', '1', '手速', '诗圣杜甫', '2014-09-04 09:33:26');
INSERT INTO `sys_login` VALUES ('2', '1', '手速', '诗圣杜甫', '2014-09-04 09:33:26');
INSERT INTO `sys_login` VALUES ('3', '1', '手速', '诗圣杜甫', '2014-09-04 09:33:26');
INSERT INTO `sys_login` VALUES ('4', '1', '手速', '诗圣杜甫', '2014-09-04 09:33:26');
INSERT INTO `sys_login` VALUES ('5', '1', '', '凤凯', '2015-02-01 11:10:45');
INSERT INTO `sys_login` VALUES ('6', '1', '', '凤凯', '2015-02-01 11:30:40');
INSERT INTO `sys_login` VALUES ('7', '1', '', '凤凯', '2015-02-01 12:00:40');
INSERT INTO `sys_login` VALUES ('8', '1', '', '凤凯', '2015-02-01 12:23:17');
INSERT INTO `sys_login` VALUES ('9', '1', '', '凤凯', '2015-02-01 13:22:30');
INSERT INTO `sys_login` VALUES ('10', '1', '', '凤凯', '2015-02-01 14:07:10');
INSERT INTO `sys_login` VALUES ('11', '1', '', '凤凯', '2015-02-01 14:19:20');
INSERT INTO `sys_login` VALUES ('12', '1', '', '凤凯', '2015-02-01 14:57:20');
INSERT INTO `sys_login` VALUES ('13', '1', '', '凤凯', '2015-02-01 15:58:55');
INSERT INTO `sys_login` VALUES ('14', '1', '', '凤凯', '2015-02-01 16:19:52');
INSERT INTO `sys_login` VALUES ('15', '1', '', '凤凯', '2015-02-01 16:22:46');
INSERT INTO `sys_login` VALUES ('16', '1', '', '凤凯', '2015-02-01 16:31:35');
INSERT INTO `sys_login` VALUES ('17', '1', '', '凤凯', '2015-02-01 16:33:56');
INSERT INTO `sys_login` VALUES ('18', '1', '', '凤凯', '2015-02-01 16:43:12');
INSERT INTO `sys_login` VALUES ('19', '1', '', '凤凯', '2015-02-01 17:03:41');
INSERT INTO `sys_login` VALUES ('20', '1', '', '凤凯', '2015-02-01 17:19:06');
INSERT INTO `sys_login` VALUES ('21', '1', '', '凤凯', '2015-02-01 17:35:32');
INSERT INTO `sys_login` VALUES ('22', '1', '', '凤凯', '2015-02-01 17:44:53');
INSERT INTO `sys_login` VALUES ('23', '1', '', '凤凯', '2015-02-01 17:59:20');
INSERT INTO `sys_login` VALUES ('24', '1', '', '凤凯', '2015-02-04 15:50:48');
INSERT INTO `sys_login` VALUES ('25', '1', '', '凤凯', '2015-02-04 15:53:34');
INSERT INTO `sys_login` VALUES ('26', '1', '', '凤凯', '2015-02-04 15:56:25');
INSERT INTO `sys_login` VALUES ('27', '1', '', '凤凯', '2015-02-04 15:59:20');
INSERT INTO `sys_login` VALUES ('28', '1', '', '凤凯', '2015-02-04 16:00:37');
INSERT INTO `sys_login` VALUES ('29', '1', '', '凤凯', '2015-02-04 16:52:21');
INSERT INTO `sys_login` VALUES ('30', '1', '', '凤凯', '2015-02-05 21:30:04');
INSERT INTO `sys_login` VALUES ('31', '1', '', '凤凯', '2015-02-06 15:31:32');
INSERT INTO `sys_login` VALUES ('32', '1', '', '凤凯', '2015-02-06 16:48:43');
INSERT INTO `sys_login` VALUES ('33', '1', '', '凤凯', '2015-02-06 16:49:50');
INSERT INTO `sys_login` VALUES ('34', '1', '', '凤凯', '2015-02-06 17:38:47');
INSERT INTO `sys_login` VALUES ('35', '1', '', '凤凯', '2015-02-06 18:27:09');
INSERT INTO `sys_login` VALUES ('36', '1', '', '凤凯', '2015-02-06 19:53:43');
INSERT INTO `sys_login` VALUES ('37', '1', '', '凤凯', '2015-02-06 20:14:07');
INSERT INTO `sys_login` VALUES ('38', '1', '', '凤凯', '2015-02-06 21:17:58');
INSERT INTO `sys_login` VALUES ('39', '1', '', '凤凯', '2015-02-06 22:23:44');
INSERT INTO `sys_login` VALUES ('40', '1', '', '凤凯', '2015-02-06 22:28:06');
INSERT INTO `sys_login` VALUES ('41', '1', '', '凤凯', '2015-02-06 22:52:57');
INSERT INTO `sys_login` VALUES ('42', '1', '', '凤凯', '2015-02-06 23:16:58');
INSERT INTO `sys_login` VALUES ('43', '1', '', '凤凯', '2015-02-07 00:04:59');
INSERT INTO `sys_login` VALUES ('44', '1', '', '凤凯', '2015-02-07 00:07:46');
INSERT INTO `sys_login` VALUES ('45', '1', '', '凤凯', '2015-02-07 00:27:22');
INSERT INTO `sys_login` VALUES ('46', '1', '', '凤凯', '2015-02-07 00:45:57');
INSERT INTO `sys_login` VALUES ('47', '1', '', '凤凯', '2015-02-07 00:59:09');
INSERT INTO `sys_login` VALUES ('48', '1', '', '凤凯', '2015-02-07 01:03:47');
INSERT INTO `sys_login` VALUES ('49', '1', '', '凤凯', '2015-02-07 01:12:42');
INSERT INTO `sys_login` VALUES ('50', '1', '', '凤凯', '2015-02-07 01:26:41');
INSERT INTO `sys_login` VALUES ('51', '1', '', '凤凯', '2015-02-07 01:29:58');
INSERT INTO `sys_login` VALUES ('52', '1', '', '凤凯', '2015-02-07 01:42:11');
INSERT INTO `sys_login` VALUES ('53', '2', '', '赵阳', '2015-02-07 01:48:04');
INSERT INTO `sys_login` VALUES ('54', '1', '', '凤凯', '2015-02-07 02:29:01');
INSERT INTO `sys_login` VALUES ('55', '1', '', '凤凯', '2017-04-03 12:47:31');
INSERT INTO `sys_login` VALUES ('56', '1', '', '凤凯', '2017-04-05 18:54:03');
INSERT INTO `sys_login` VALUES ('57', '1', '', '凤凯', '2017-04-05 22:36:25');
INSERT INTO `sys_login` VALUES ('58', '1', '', '凤凯', '2017-04-06 12:38:41');
INSERT INTO `sys_login` VALUES ('59', '1', '', '凤凯', '2017-04-06 18:40:31');
INSERT INTO `sys_login` VALUES ('60', '1', '', '凤凯', '2017-04-07 12:26:36');
INSERT INTO `sys_login` VALUES ('61', '1', '', '凤凯', '2017-04-09 15:11:54');
INSERT INTO `sys_login` VALUES ('62', '1', '', '凤凯', '2017-04-09 15:25:29');
INSERT INTO `sys_login` VALUES ('63', '1', '', '凤凯', '2017-04-11 17:18:42');
INSERT INTO `sys_login` VALUES ('64', '1', '', '凤凯', '2017-04-11 19:23:56');
INSERT INTO `sys_login` VALUES ('65', '1', '', '凤凯', '2017-04-12 13:47:03');
INSERT INTO `sys_login` VALUES ('66', '1', '', '凤凯', '2017-04-12 14:56:40');
INSERT INTO `sys_login` VALUES ('67', '1', '', '凤凯', '2017-04-12 20:08:30');
INSERT INTO `sys_login` VALUES ('68', '1', '', '凤凯', '2017-04-14 09:38:31');
INSERT INTO `sys_login` VALUES ('69', '1', '', '凤凯', '2017-04-14 10:18:28');
INSERT INTO `sys_login` VALUES ('70', '1', '', '凤凯', '2020-02-21 18:02:00');
INSERT INTO `sys_login` VALUES ('71', '1', '', '凤凯', '2020-02-21 18:29:26');
INSERT INTO `sys_login` VALUES ('72', '8', '', '张玉堂', '2020-02-21 18:33:08');
INSERT INTO `sys_login` VALUES ('73', '8', '', '张玉堂', '2020-02-21 18:34:45');
INSERT INTO `sys_login` VALUES ('74', '1', '', '凤凯', '2020-02-21 18:37:15');
INSERT INTO `sys_login` VALUES ('75', '8', '', '张玉堂', '2020-02-21 19:04:22');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '菜单ID PK',
  `menu_name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `parentid` int(8) DEFAULT NULL COMMENT '上级菜单ID',
  `parentname` varchar(255) DEFAULT NULL COMMENT '上级菜单名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单链接',
  `menu_icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `menu_handler` varchar(50) DEFAULT NULL COMMENT '菜单事件',
  `menu_order` int(8) DEFAULT NULL COMMENT '菜单排序',
  `menu_type` varchar(50) DEFAULT NULL COMMENT '菜单类型',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '个人工作', '0', null, 'javascript:;', 'icon-user', null, null, null);
INSERT INTO `sys_menu` VALUES ('4', '信息中心', '0', null, 'javascript:;', 'icon-youtube-sign', null, null, null);
INSERT INTO `sys_menu` VALUES ('5', '新闻阅览', '4', null, 'pages_public/pub_news!showNews', 'icon-bolt', null, null, null);
INSERT INTO `sys_menu` VALUES ('6', '公告查看', '4', null, 'pages_public/pub_notice!showNotice', 'icon-volume-up', null, null, null);
INSERT INTO `sys_menu` VALUES ('9', '邮箱', '4', null, 'pages_mail/mail_flow.jsp', 'icon-envelope-alt', null, null, null);
INSERT INTO `sys_menu` VALUES ('15', '客户管理', '0', null, 'javascript:;', 'icon-male', null, null, null);
INSERT INTO `sys_menu` VALUES ('16', '客户列表', '15', null, 'pages_crm/crm_cust', 'icon-stackexchange', null, null, null);
INSERT INTO `sys_menu` VALUES ('17', '联系人管理', '15', null, 'pages_crm/crm_cont', 'icon-book', null, null, null);
INSERT INTO `sys_menu` VALUES ('18', '跟进管理', '15', null, 'pages_crm/crm_follow!findAll', 'icon-foursquare', null, null, null);
INSERT INTO `sys_menu` VALUES ('19', '合同订单', '0', null, 'javascript:;', 'icon-book', null, null, null);
INSERT INTO `sys_menu` VALUES ('20', '订单管理', '19', null, 'pages_crm/ma_order?v=0', 'icon-folder-close', null, null, null);
INSERT INTO `sys_menu` VALUES ('21', '合同管理', '19', null, 'pages_crm/ma_contr', 'icon-print', null, null, null);
INSERT INTO `sys_menu` VALUES ('22', '财务管理', '0', null, 'javascript:;', 'icon-jpy', null, null, null);
INSERT INTO `sys_menu` VALUES ('23', '收款管理', '22', null, 'pages_crm/ma_order?v=1', 'icon-signin', null, null, null);
INSERT INTO `sys_menu` VALUES ('24', '收款流水', '22', null, 'pages_crm/crm_receive!findAll', 'icon-fire', null, null, null);
INSERT INTO `sys_menu` VALUES ('25', '开票管理', '22', null, 'pages_crm/ma_order?v=2', 'icon-barcode', null, null, null);
INSERT INTO `sys_menu` VALUES ('26', '发票列表', '22', null, 'pages_crm/crm_crm_invoice!findAll', 'icon-tasks', null, null, null);
INSERT INTO `sys_menu` VALUES ('27', '产品管理', '0', null, 'javascript:;', 'icon-table', null, null, null);
INSERT INTO `sys_menu` VALUES ('28', '产品类别', '27', null, 'pages_crm/crm_cate', 'icon-gittip', null, null, null);
INSERT INTO `sys_menu` VALUES ('29', '产品列表', '27', null, 'pages_crm/crm_prod', 'icon-list', null, null, null);
INSERT INTO `sys_menu` VALUES ('30', '人事管理', '0', null, 'javascript:;', 'icon-table', null, null, null);
INSERT INTO `sys_menu` VALUES ('31', '部门管理', '30', null, 'pages_hr/hr_dep', 'icon-flickr', null, null, null);
INSERT INTO `sys_menu` VALUES ('32', '职务管理', '30', null, 'pages_hr/hr_posi', 'icon-hospital', null, null, null);
INSERT INTO `sys_menu` VALUES ('33', '岗位管理', '30', null, 'pages_hr/hr_post', 'icon-indent-right', null, null, null);
INSERT INTO `sys_menu` VALUES ('34', '员工管理', '30', null, 'pages_hr/hr_emp', 'icon-group', null, null, null);
INSERT INTO `sys_menu` VALUES ('35', '数据回收站', '0', null, 'javascript:;', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('36', '人事回收站', '35', null, '#', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('37', 'CRM回收站', '35', null, '#', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('38', '联系人回收', '37', null, 'pages_crm/crm_cont!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('39', '合同回收', '37', null, 'pages_crm/ma_contr!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('40', '客户回收', '37', null, 'pages_crm/crm_cust!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('41', '跟进回收', '37', null, 'pages_crm/crm_follow!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('42', '发票回收', '37', null, 'pages_crm/crm_invoice!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('43', '订单回收', '37', null, 'pages_crm/ma_order!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('44', '产品回收', '37', null, 'pages_crm/crm_prod!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('45', '产品分类回收', '37', null, 'pages_crm/crm_cate!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('46', '收款回收', '37', null, 'pages_crm/crm_receive!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('47', '员工回收', '36', null, 'pages_hr/hr_emp!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('48', '部门回收', '36', null, 'pages_hr/hr_dep!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('49', '职务回收', '36', null, 'pages_hr/hr_posi!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('50', '岗位回收', '36', null, 'pages_hr/hr_post!trashAll', 'icon-trash', null, null, null);
INSERT INTO `sys_menu` VALUES ('51', '系统管理', '0', null, 'javascript:;', 'icon-cog', null, null, null);
INSERT INTO `sys_menu` VALUES ('52', '参数管理', '51', null, 'pages_param/param_systype', 'icon-wrench', null, null, null);
INSERT INTO `sys_menu` VALUES ('53', '角色管理', '51', null, 'pages_sys/sys_role', 'icon-screenshot', null, null, null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleid` int(8) NOT NULL AUTO_INCREMENT COMMENT '角色表PK',
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `roledscript` varchar(255) DEFAULT NULL COMMENT '权限说明',
  `childmenus` varchar(300) DEFAULT NULL COMMENT '当前权限下可以操作的子菜单',
  `rolesort` char(10) DEFAULT NULL COMMENT '权限排序',
  `createid` int(8) DEFAULT NULL COMMENT '创建人ID FK',
  `createdate` date DEFAULT NULL COMMENT '创建日期',
  `updateid` int(8) DEFAULT NULL COMMENT '更新人ID  Fk',
  `updatedate` date DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`roleid`),
  KEY `createid` (`createid`),
  KEY `updateid` (`updateid`),
  CONSTRAINT `sys_role_ibfk_1` FOREIGN KEY (`createid`) REFERENCES `hr_employee` (`id`),
  CONSTRAINT `sys_role_ibfk_2` FOREIGN KEY (`updateid`) REFERENCES `hr_employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '拥有全部权限', '4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,47,48,49,50,37,38,39,40,41,42,43,44,45,46,51,52,53', '999', '1', '2014-11-23', '1', null);
INSERT INTO `sys_role` VALUES ('2', '员工', '拥有一些权限', '4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,35,36,47,48,49,50,37,38,39,40,41,42,43,44,45,46', '20', '1', '2014-12-09', '1', null);
INSERT INTO `sys_role` VALUES ('3', '总经理', '拥有绝大部分权限', '4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,37', '888', '1', '2014-12-09', '1', null);
INSERT INTO `sys_role` VALUES ('4', '部门经理', '比总经理权小店', '4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,37', '777', '1', '2014-12-09', '1', null);
INSERT INTO `sys_role` VALUES ('5', '销售', '拥有客户管理', '4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26', null, '1', '2015-02-01', '1', null);
INSERT INTO `sys_role` VALUES ('6', '人事管理', '管理人事权限', '4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29', null, '1', '2015-02-01', '1', null);
INSERT INTO `sys_role` VALUES ('7', '超级boss', '呵呵，你懂得', '1,4,5,6,9,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,47,48,49,50,37,38,39,40,41,42,43,44,45,51', null, '1', '2017-04-14', null, null);
