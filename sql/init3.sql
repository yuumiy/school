/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 14/04/2021 17:03:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL COMMENT '0-男；1-女；',
  `role` int(11) NULL DEFAULT NULL COMMENT '0-学生; 1-老师;',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '0-普通用户; 1-管理员;',
  `status` int(11) NULL DEFAULT NULL COMMENT '0-未激活; 1-已激活;2-拉黑;',
  `activation_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `header_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_username`(`username`(20)) USING BTREE,
  INDEX `index_email`(`email`(20)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '20170001', '系统通知', 0, 1, '46ba17c7484c9b9068b420ea9b7168d5', '7e41f', NULL, 1, 1, NULL, 'http://static.nowcoder.com/images/head/notify.png', '2021-03-28 20:55:33');
INSERT INTO `user` VALUES (2, '2017331200029', '明宇', 0, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/17t.png', '2021-03-28 20:56:20');
INSERT INTO `user` VALUES (3, '2017331200030', '浩博', 0, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/22t.png', '2021-03-28 20:56:55');
INSERT INTO `user` VALUES (4, '2017331200031', '辰宇', 0, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 0, 1, NULL, 'http://images.nowcoder.com/head/321t.png', '2021-03-28 20:57:29');
INSERT INTO `user` VALUES (5, '2017331200032', '范明', 0, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 0, 1, NULL, 'http://images.nowcoder.com/head/456t.png', '2021-04-10 11:37:08');
INSERT INTO `user` VALUES (6, '2017331200033', '昊磊', 0, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 0, 1, NULL, 'http://images.nowcoder.com/head/577t.png', '2021-04-10 11:38:12');
INSERT INTO `user` VALUES (7, '2017331200034', '依秋', 1, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/680t.png', '2021-04-10 11:39:22');
INSERT INTO `user` VALUES (8, '2017331200035', '紫萱', 1, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/711t.png', '2021-04-10 11:40:01');
INSERT INTO `user` VALUES (9, '2017331200036', '芷梦', 1, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', '', 0, 1, '', 'http://images.nowcoder.com/head/855t.png', '2021-04-10 11:41:57');
INSERT INTO `user` VALUES (10, '2017331200037', '友安', 1, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 0, 1, NULL, 'http://images.nowcoder.com/head/911t.png', '2021-04-10 11:43:36');
INSERT INTO `user` VALUES (11, '2017331200038', '书文', 1, 0, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 0, 1, NULL, 'http://images.nowcoder.com/head/100t.png', '2021-04-10 11:44:33');
INSERT INTO `user` VALUES (12, '20170029', '鸿朗', 0, 1, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/116t.png', '2021-04-10 11:45:48');
INSERT INTO `user` VALUES (13, '20170030', '昊然', 0, 1, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/122t.png', '2021-04-10 11:46:35');
INSERT INTO `user` VALUES (14, '20170031', '乐蕊', 1, 1, 'ad23a15e77ce9291cd22aa977c461fb4', '343ca', NULL, 1, 1, NULL, 'http://images.nowcoder.com/head/138t.png', '2021-04-10 11:47:59');
INSERT INTO `user` VALUES (15, '2017331200039', '俊晖', 0, 0, '9c4ff8ea7c8819a122e1ad20fe0751da', 'b973d', '', 0, 1, '', 'http://images.nowcoder.com/head/838t.png', '2021-04-10 13:56:03');
INSERT INTO `user` VALUES (16, '2017331200040', '景逸', 0, 0, '32a36e6d23679a01dadd4ccafc9a5c75', '50f34', 'david_zhongdawei@163.com', 0, 1, 'ddcf2ddadfc2433bb4b87e08ac93bffa', 'http://images.nowcoder.com/head/939t.png', '2021-04-10 13:58:38');

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_J`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_C`(`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_T_G`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_T_STATE`(`SCHED_NAME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_STATE`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_N_G_STATE`(`SCHED_NAME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NEXT_FIRE_TIME`(`SCHED_NAME`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST`(`SCHED_NAME`, `TRIGGER_STATE`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_STATE`) USING BTREE,
  INDEX `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP`(`SCHED_NAME`, `MISFIRE_INSTR`, `NEXT_FIRE_TIME`, `TRIGGER_GROUP`, `TRIGGER_STATE`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('communityScheduler', 'postScoreRefreshTrigger', 'communityTriggerGroup', 'postScoreRefreshJob', 'communityJobGroup', NULL, 1618391755781, 1618384555781, 0, 'WAITING', 'SIMPLE', 1617167755781, 0, NULL, 0, '');

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
INSERT INTO `qrtz_simple_triggers` VALUES ('communityScheduler', 'postScoreRefreshTrigger', 'communityTriggerGroup', -1, 7200000, 170);

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('communityScheduler', 'thinkpad1618390510422', 1618390998929, 7500);

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `LOCK_NAME` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('communityScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('communityScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_J_REQ_RECOVERY`(`SCHED_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_J_GRP`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('communityScheduler', 'postScoreRefreshJob', 'communityJobGroup', NULL, 'com.community.quartz.PostScoreRefreshJob', '1', '0', '0', '1', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787000737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F40000000000010770800000010000000007800);

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ENTRY_ID` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `INSTANCE_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JOB_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `JOB_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TRIG_INST_NAME`(`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE,
  INDEX `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY`(`SCHED_NAME`, `INSTANCE_NAME`, `REQUESTS_RECOVERY`) USING BTREE,
  INDEX `IDX_QRTZ_FT_J_G`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_JG`(`SCHED_NAME`, `JOB_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_T_G`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `IDX_QRTZ_FT_TG`(`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CRON_EXPRESSION` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CALENDAR_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_NAME` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TRIGGER_GROUP` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NULL DEFAULT NULL COMMENT '1是系统通知，其他是普通用户私聊',
  `to_id` int(11) NULL DEFAULT NULL,
  `conversation_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0-未读;1-已读;2-删除;',
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_from_id`(`from_id`) USING BTREE,
  INDEX `index_to_id`(`to_id`) USING BTREE,
  INDEX `index_conversation_id`(`conversation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 276 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":2,\"postId\":2,\"userId\":3}', 0, '2021-04-10 12:59:28');
INSERT INTO `message` VALUES (2, 1, 3, 'like', '{\"entityType\":2,\"entityId\":1,\"postId\":2,\"userId\":3}', 0, '2021-04-10 12:59:43');
INSERT INTO `message` VALUES (3, 1, 2, 'like', '{\"entityType\":1,\"entityId\":2,\"postId\":2,\"userId\":3}', 0, '2021-04-10 12:59:44');
INSERT INTO `message` VALUES (4, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":3,\"postId\":3,\"userId\":3}', 0, '2021-04-10 13:00:00');
INSERT INTO `message` VALUES (5, 1, 3, 'comment', '{\"entityType\":2,\"entityId\":2,\"postId\":3,\"userId\":3}', 0, '2021-04-10 13:00:22');
INSERT INTO `message` VALUES (6, 1, 3, 'like', '{\"entityType\":2,\"entityId\":2,\"postId\":3,\"userId\":3}', 0, '2021-04-10 13:00:57');
INSERT INTO `message` VALUES (7, 1, 2, 'like', '{\"entityType\":1,\"entityId\":3,\"postId\":3,\"userId\":3}', 0, '2021-04-10 13:00:58');
INSERT INTO `message` VALUES (8, 1, 3, 'comment', '{\"entityType\":1,\"entityId\":4,\"postId\":4,\"userId\":2}', 0, '2021-04-10 13:03:17');
INSERT INTO `message` VALUES (9, 1, 3, 'comment', '{\"entityType\":2,\"entityId\":2,\"postId\":3,\"userId\":2}', 0, '2021-04-10 13:03:33');
INSERT INTO `message` VALUES (10, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":4,\"postId\":4,\"userId\":3}', 0, '2021-04-10 13:04:46');
INSERT INTO `message` VALUES (11, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":4,\"postId\":4,\"userId\":2}', 0, '2021-04-10 13:04:57');
INSERT INTO `message` VALUES (12, 1, 12, 'like', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":3}', 0, '2021-04-10 13:10:25');
INSERT INTO `message` VALUES (13, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":2}', 0, '2021-04-10 13:10:35');
INSERT INTO `message` VALUES (14, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":3}', 0, '2021-04-10 13:10:49');
INSERT INTO `message` VALUES (15, 3, 2, '2_3', '同学，你好！', 1, '2021-04-10 13:16:17');
INSERT INTO `message` VALUES (16, 2, 3, '2_3', '哈喽哈喽', 1, '2021-04-10 13:16:45');
INSERT INTO `message` VALUES (17, 3, 2, '2_3', '我想问一下你Java课设想好做什么项目了吗？', 1, '2021-04-10 13:17:10');
INSERT INTO `message` VALUES (18, 2, 3, '2_3', '我打算做一个外卖系统诶', 1, '2021-04-10 13:17:33');
INSERT INTO `message` VALUES (19, 3, 2, '2_3', '哈哈哈，厉害厉害，我打算做一个论坛，咱们一起加油~', 0, '2021-04-10 13:18:00');
INSERT INTO `message` VALUES (20, 1, 7, 'comment', '{\"entityType\":1,\"entityId\":9,\"postId\":9,\"userId\":2}', 0, '2021-04-10 13:51:40');
INSERT INTO `message` VALUES (21, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":2}', 0, '2021-04-10 13:52:49');
INSERT INTO `message` VALUES (22, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":7}', 0, '2021-04-10 13:53:35');
INSERT INTO `message` VALUES (23, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":16}', 0, '2021-04-10 14:00:27');
INSERT INTO `message` VALUES (24, 1, 7, 'like', '{\"entityType\":1,\"entityId\":9,\"postId\":9,\"userId\":16}', 0, '2021-04-10 14:00:42');
INSERT INTO `message` VALUES (25, 1, 2, 'like', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":16}', 0, '2021-04-10 14:00:43');
INSERT INTO `message` VALUES (26, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":16}', 0, '2021-04-10 14:00:52');
INSERT INTO `message` VALUES (27, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":16}', 0, '2021-04-10 14:00:59');
INSERT INTO `message` VALUES (28, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":16}', 0, '2021-04-10 14:01:08');
INSERT INTO `message` VALUES (29, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":2,\"postId\":2,\"userId\":16}', 0, '2021-04-10 14:01:18');
INSERT INTO `message` VALUES (30, 1, 7, 'like', '{\"entityType\":1,\"entityId\":9,\"postId\":9,\"userId\":6}', 0, '2021-04-11 09:34:52');
INSERT INTO `message` VALUES (31, 1, 2, 'like', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":6}', 0, '2021-04-11 09:34:54');
INSERT INTO `message` VALUES (32, 1, 7, 'comment', '{\"entityType\":1,\"entityId\":9,\"postId\":9,\"userId\":6}', 0, '2021-04-11 09:35:18');
INSERT INTO `message` VALUES (33, 1, 12, 'like', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":6}', 0, '2021-04-11 09:35:25');
INSERT INTO `message` VALUES (34, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":6}', 0, '2021-04-11 09:35:28');
INSERT INTO `message` VALUES (35, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":6}', 0, '2021-04-11 09:35:40');
INSERT INTO `message` VALUES (36, 1, 3, 'follow', '{\"entityType\":3,\"entityId\":3,\"userId\":6}', 0, '2021-04-11 09:35:44');
INSERT INTO `message` VALUES (37, 1, 2, 'follow', '{\"entityType\":3,\"entityId\":2,\"userId\":6}', 1, '2021-04-11 09:35:49');
INSERT INTO `message` VALUES (38, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":6}', 0, '2021-04-11 09:37:07');
INSERT INTO `message` VALUES (39, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":6}', 0, '2021-04-11 09:37:17');
INSERT INTO `message` VALUES (40, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":6}', 0, '2021-04-11 09:37:32');
INSERT INTO `message` VALUES (41, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":13}', 0, '2021-04-11 09:39:23');
INSERT INTO `message` VALUES (42, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":13}', 0, '2021-04-11 09:39:27');
INSERT INTO `message` VALUES (43, 1, 12, 'like', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":13}', 0, '2021-04-11 09:39:37');
INSERT INTO `message` VALUES (44, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":13}', 0, '2021-04-11 09:39:43');
INSERT INTO `message` VALUES (45, 1, 14, 'like', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":13}', 0, '2021-04-11 09:39:47');
INSERT INTO `message` VALUES (46, 1, 7, 'like', '{\"entityType\":1,\"entityId\":9,\"postId\":9,\"userId\":13}', 0, '2021-04-11 09:39:51');
INSERT INTO `message` VALUES (47, 1, 9, 'like', '{\"entityType\":1,\"entityId\":12,\"postId\":12,\"userId\":9}', 0, '2021-04-11 09:41:22');
INSERT INTO `message` VALUES (48, 1, 7, 'follow', '{\"entityType\":3,\"entityId\":7,\"userId\":9}', 0, '2021-04-11 09:41:30');
INSERT INTO `message` VALUES (49, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":9}', 0, '2021-04-11 09:41:32');
INSERT INTO `message` VALUES (50, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":9}', 0, '2021-04-11 09:41:40');
INSERT INTO `message` VALUES (51, 1, 6, 'follow', '{\"entityType\":3,\"entityId\":6,\"userId\":9}', 0, '2021-04-11 09:41:42');
INSERT INTO `message` VALUES (52, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":9}', 0, '2021-04-11 09:41:44');
INSERT INTO `message` VALUES (53, 1, 3, 'follow', '{\"entityType\":3,\"entityId\":3,\"userId\":9}', 0, '2021-04-11 09:41:51');
INSERT INTO `message` VALUES (54, 1, 2, 'follow', '{\"entityType\":3,\"entityId\":2,\"userId\":9}', 1, '2021-04-11 09:41:54');
INSERT INTO `message` VALUES (55, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":9}', 0, '2021-04-11 09:43:07');
INSERT INTO `message` VALUES (56, 1, 9, 'like', '{\"entityType\":2,\"entityId\":22,\"postId\":5,\"userId\":9}', 0, '2021-04-11 09:43:10');
INSERT INTO `message` VALUES (57, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":9}', 0, '2021-04-11 09:43:46');
INSERT INTO `message` VALUES (58, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":9}', 0, '2021-04-11 09:43:56');
INSERT INTO `message` VALUES (59, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":2}', 0, '2021-04-11 09:45:22');
INSERT INTO `message` VALUES (60, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":2}', 0, '2021-04-11 09:45:24');
INSERT INTO `message` VALUES (61, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":2}', 0, '2021-04-11 09:45:27');
INSERT INTO `message` VALUES (62, 1, 9, 'follow', '{\"entityType\":3,\"entityId\":9,\"userId\":2}', 0, '2021-04-11 09:45:33');
INSERT INTO `message` VALUES (63, 1, 6, 'follow', '{\"entityType\":3,\"entityId\":6,\"userId\":2}', 0, '2021-04-11 09:45:36');
INSERT INTO `message` VALUES (64, 1, 3, 'follow', '{\"entityType\":3,\"entityId\":3,\"userId\":2}', 0, '2021-04-11 09:45:38');
INSERT INTO `message` VALUES (65, 1, 9, 'comment', '{\"entityType\":1,\"entityId\":13,\"postId\":13,\"userId\":2}', 0, '2021-04-11 09:46:00');
INSERT INTO `message` VALUES (66, 2, 9, '2_9', '我看你也在看左神的算法视频课，以后不懂的题可以一起讨论讨论！', 0, '2021-04-11 09:46:59');
INSERT INTO `message` VALUES (67, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":10}', 0, '2021-04-11 09:48:55');
INSERT INTO `message` VALUES (68, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":10}', 0, '2021-04-11 09:48:58');
INSERT INTO `message` VALUES (69, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":10}', 0, '2021-04-11 09:49:01');
INSERT INTO `message` VALUES (70, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":10}', 0, '2021-04-11 09:49:08');
INSERT INTO `message` VALUES (71, 1, 13, 'comment', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":10}', 0, '2021-04-11 09:49:19');
INSERT INTO `message` VALUES (72, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":10}', 0, '2021-04-11 09:50:28');
INSERT INTO `message` VALUES (73, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":10}', 0, '2021-04-11 09:50:38');
INSERT INTO `message` VALUES (74, 1, 13, 'comment', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":11}', 0, '2021-04-11 09:51:26');
INSERT INTO `message` VALUES (75, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":11}', 0, '2021-04-11 09:51:41');
INSERT INTO `message` VALUES (76, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":11}', 0, '2021-04-11 09:51:48');
INSERT INTO `message` VALUES (77, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":11}', 0, '2021-04-11 09:51:55');
INSERT INTO `message` VALUES (78, 1, 10, 'comment', '{\"entityType\":1,\"entityId\":14,\"postId\":14,\"userId\":11}', 0, '2021-04-11 09:52:16');
INSERT INTO `message` VALUES (79, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":11}', 0, '2021-04-11 09:52:21');
INSERT INTO `message` VALUES (80, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":11}', 0, '2021-04-11 09:52:23');
INSERT INTO `message` VALUES (81, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":11}', 0, '2021-04-11 09:52:27');
INSERT INTO `message` VALUES (82, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":11}', 0, '2021-04-11 09:52:30');
INSERT INTO `message` VALUES (83, 1, 10, 'follow', '{\"entityType\":3,\"entityId\":10,\"userId\":11}', 0, '2021-04-11 09:52:33');
INSERT INTO `message` VALUES (84, 1, 9, 'follow', '{\"entityType\":3,\"entityId\":9,\"userId\":11}', 0, '2021-04-11 09:52:38');
INSERT INTO `message` VALUES (85, 1, 7, 'follow', '{\"entityType\":3,\"entityId\":7,\"userId\":11}', 0, '2021-04-11 09:52:44');
INSERT INTO `message` VALUES (86, 1, 3, 'follow', '{\"entityType\":3,\"entityId\":3,\"userId\":11}', 0, '2021-04-11 09:52:48');
INSERT INTO `message` VALUES (87, 1, 2, 'follow', '{\"entityType\":3,\"entityId\":2,\"userId\":11}', 1, '2021-04-11 09:52:53');
INSERT INTO `message` VALUES (88, 11, 14, '11_14', '乐蕊老师，我下周的C++课由于社团活动可能要请假，请问请假条要怎么写呢？', 0, '2021-04-11 09:55:27');
INSERT INTO `message` VALUES (89, 1, 6, 'comment', '{\"entityType\":1,\"entityId\":10,\"postId\":10,\"userId\":11}', 0, '2021-04-11 09:56:04');
INSERT INTO `message` VALUES (90, 1, 11, 'like', '{\"entityType\":2,\"entityId\":35,\"postId\":10,\"userId\":11}', 0, '2021-04-11 09:56:11');
INSERT INTO `message` VALUES (91, 1, 6, 'like', '{\"entityType\":1,\"entityId\":10,\"postId\":10,\"userId\":11}', 0, '2021-04-11 09:56:12');
INSERT INTO `message` VALUES (92, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":11}', 0, '2021-04-11 09:56:15');
INSERT INTO `message` VALUES (93, 1, 11, 'like', '{\"entityType\":2,\"entityId\":30,\"postId\":11,\"userId\":11}', 0, '2021-04-11 09:56:17');
INSERT INTO `message` VALUES (94, 1, 14, 'like', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":11}', 0, '2021-04-11 09:56:22');
INSERT INTO `message` VALUES (95, 1, 14, 'like', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":11}', 0, '2021-04-11 09:56:25');
INSERT INTO `message` VALUES (96, 1, 12, 'like', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":11}', 0, '2021-04-11 09:56:28');
INSERT INTO `message` VALUES (97, 1, 11, 'like', '{\"entityType\":1,\"entityId\":17,\"postId\":17,\"userId\":11}', 0, '2021-04-11 09:58:16');
INSERT INTO `message` VALUES (98, 1, 11, 'like', '{\"entityType\":1,\"entityId\":16,\"postId\":16,\"userId\":11}', 0, '2021-04-11 09:58:19');
INSERT INTO `message` VALUES (99, 11, 12, '11_12', '鸿朗老师，请问Java课设的截止时间到几号呢？', 0, '2021-04-11 09:58:47');
INSERT INTO `message` VALUES (100, 1, 9, 'like', '{\"entityType\":1,\"entityId\":13,\"postId\":13,\"userId\":11}', 0, '2021-04-11 09:58:58');
INSERT INTO `message` VALUES (101, 1, 2, 'like', '{\"entityType\":2,\"entityId\":25,\"postId\":13,\"userId\":11}', 0, '2021-04-11 09:59:00');
INSERT INTO `message` VALUES (102, 1, 2, 'like', '{\"entityType\":1,\"entityId\":2,\"postId\":2,\"userId\":11}', 0, '2021-04-11 09:59:04');
INSERT INTO `message` VALUES (103, 1, 16, 'like', '{\"entityType\":2,\"entityId\":17,\"postId\":2,\"userId\":11}', 0, '2021-04-11 09:59:06');
INSERT INTO `message` VALUES (104, 1, 3, 'like', '{\"entityType\":2,\"entityId\":1,\"postId\":2,\"userId\":11}', 0, '2021-04-11 09:59:13');
INSERT INTO `message` VALUES (105, 1, 2, 'like', '{\"entityType\":1,\"entityId\":1,\"postId\":1,\"userId\":11}', 0, '2021-04-11 09:59:18');
INSERT INTO `message` VALUES (106, 8, 2, '2_8', '同学，请问一下你平时Java都是怎样学习的呀，我是小白，想要少走点弯路。', 0, '2021-04-11 10:00:09');
INSERT INTO `message` VALUES (107, 1, 11, 'like', '{\"entityType\":2,\"entityId\":30,\"postId\":11,\"userId\":8}', 0, '2021-04-11 10:00:18');
INSERT INTO `message` VALUES (108, 1, 13, 'comment', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":8}', 0, '2021-04-11 10:00:21');
INSERT INTO `message` VALUES (109, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:00:26');
INSERT INTO `message` VALUES (110, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:00:30');
INSERT INTO `message` VALUES (111, 1, 12, 'comment', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":8}', 0, '2021-04-11 10:00:35');
INSERT INTO `message` VALUES (112, 1, 11, 'comment', '{\"entityType\":1,\"entityId\":17,\"postId\":17,\"userId\":8}', 0, '2021-04-11 10:00:55');
INSERT INTO `message` VALUES (113, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":8}', 0, '2021-04-11 10:00:59');
INSERT INTO `message` VALUES (114, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":8}', 0, '2021-04-11 10:01:01');
INSERT INTO `message` VALUES (115, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":8}', 0, '2021-04-11 10:01:03');
INSERT INTO `message` VALUES (116, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":8}', 0, '2021-04-11 10:01:07');
INSERT INTO `message` VALUES (117, 1, 10, 'follow', '{\"entityType\":3,\"entityId\":10,\"userId\":8}', 0, '2021-04-11 10:01:09');
INSERT INTO `message` VALUES (118, 1, 9, 'follow', '{\"entityType\":3,\"entityId\":9,\"userId\":8}', 0, '2021-04-11 10:01:12');
INSERT INTO `message` VALUES (119, 1, 6, 'follow', '{\"entityType\":3,\"entityId\":6,\"userId\":8}', 0, '2021-04-11 10:01:16');
INSERT INTO `message` VALUES (120, 1, 2, 'follow', '{\"entityType\":3,\"entityId\":2,\"userId\":8}', 1, '2021-04-11 10:01:21');
INSERT INTO `message` VALUES (121, 1, 3, 'follow', '{\"entityType\":3,\"entityId\":3,\"userId\":8}', 0, '2021-04-11 10:01:26');
INSERT INTO `message` VALUES (122, 1, 9, 'like', '{\"entityType\":1,\"entityId\":12,\"postId\":12,\"userId\":8}', 0, '2021-04-11 10:01:31');
INSERT INTO `message` VALUES (123, 1, 9, 'comment', '{\"entityType\":1,\"entityId\":12,\"postId\":12,\"userId\":8}', 0, '2021-04-11 10:01:56');
INSERT INTO `message` VALUES (124, 1, 8, 'like', '{\"entityType\":2,\"entityId\":41,\"postId\":12,\"userId\":8}', 0, '2021-04-11 10:01:58');
INSERT INTO `message` VALUES (125, 1, 9, 'like', '{\"entityType\":1,\"entityId\":12,\"postId\":12,\"userId\":8}', 0, '2021-04-11 10:02:00');
INSERT INTO `message` VALUES (126, 1, 6, 'like', '{\"entityType\":2,\"entityId\":18,\"postId\":9,\"userId\":8}', 0, '2021-04-11 10:02:11');
INSERT INTO `message` VALUES (127, 1, 2, 'like', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":8}', 0, '2021-04-11 10:02:13');
INSERT INTO `message` VALUES (128, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":10,\"postId\":9,\"userId\":8}', 0, '2021-04-11 10:02:22');
INSERT INTO `message` VALUES (129, 1, 14, 'like', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:35');
INSERT INTO `message` VALUES (130, 1, 8, 'like', '{\"entityType\":2,\"entityId\":37,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:37');
INSERT INTO `message` VALUES (131, 1, 11, 'like', '{\"entityType\":2,\"entityId\":31,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:38');
INSERT INTO `message` VALUES (132, 1, 10, 'like', '{\"entityType\":2,\"entityId\":26,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:39');
INSERT INTO `message` VALUES (133, 1, 9, 'like', '{\"entityType\":2,\"entityId\":23,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:40');
INSERT INTO `message` VALUES (134, 1, 6, 'like', '{\"entityType\":2,\"entityId\":20,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:42');
INSERT INTO `message` VALUES (135, 1, 16, 'like', '{\"entityType\":2,\"entityId\":16,\"postId\":8,\"userId\":8}', 0, '2021-04-11 10:02:45');
INSERT INTO `message` VALUES (136, 1, 11, 'follow', '{\"entityType\":3,\"entityId\":11,\"userId\":8}', 0, '2021-04-11 10:02:49');
INSERT INTO `message` VALUES (137, 1, 12, 'like', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":8}', 0, '2021-04-11 10:02:54');
INSERT INTO `message` VALUES (138, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":8}', 0, '2021-04-11 10:03:00');
INSERT INTO `message` VALUES (139, 1, 14, 'like', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:02');
INSERT INTO `message` VALUES (140, 1, 8, 'like', '{\"entityType\":2,\"entityId\":38,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:03');
INSERT INTO `message` VALUES (141, 1, 11, 'like', '{\"entityType\":2,\"entityId\":32,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:05');
INSERT INTO `message` VALUES (142, 1, 9, 'like', '{\"entityType\":2,\"entityId\":24,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:06');
INSERT INTO `message` VALUES (143, 1, 10, 'like', '{\"entityType\":2,\"entityId\":28,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:07');
INSERT INTO `message` VALUES (144, 1, 6, 'like', '{\"entityType\":2,\"entityId\":21,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:11');
INSERT INTO `message` VALUES (145, 1, 16, 'like', '{\"entityType\":2,\"entityId\":15,\"postId\":7,\"userId\":8}', 0, '2021-04-11 10:03:13');
INSERT INTO `message` VALUES (146, 1, 3, 'comment', '{\"entityType\":1,\"entityId\":4,\"postId\":4,\"userId\":8}', 0, '2021-04-11 10:03:25');
INSERT INTO `message` VALUES (147, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":6}', 0, '2021-04-11 10:03:43');
INSERT INTO `message` VALUES (148, 1, 11, 'follow', '{\"entityType\":3,\"entityId\":11,\"userId\":6}', 0, '2021-04-11 10:03:47');
INSERT INTO `message` VALUES (149, 1, 10, 'follow', '{\"entityType\":3,\"entityId\":10,\"userId\":6}', 0, '2021-04-11 10:03:52');
INSERT INTO `message` VALUES (150, 1, 9, 'follow', '{\"entityType\":3,\"entityId\":9,\"userId\":6}', 0, '2021-04-11 10:03:54');
INSERT INTO `message` VALUES (151, 6, 3, '3_6', '哈哈哈，浩哥，你也注册了师生博客系统的账号呀@_@', 0, '2021-04-11 10:05:10');
INSERT INTO `message` VALUES (152, 1, 9, 'like', '{\"entityType\":1,\"entityId\":12,\"postId\":12,\"userId\":6}', 0, '2021-04-11 10:05:22');
INSERT INTO `message` VALUES (153, 1, 9, 'like', '{\"entityType\":1,\"entityId\":13,\"postId\":13,\"userId\":6}', 0, '2021-04-11 10:05:26');
INSERT INTO `message` VALUES (154, 1, 7, 'like', '{\"entityType\":1,\"entityId\":9,\"postId\":9,\"userId\":6}', 0, '2021-04-11 10:05:32');
INSERT INTO `message` VALUES (155, 1, 2, 'like', '{\"entityType\":1,\"entityId\":3,\"postId\":3,\"userId\":6}', 0, '2021-04-11 10:05:37');
INSERT INTO `message` VALUES (156, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":3,\"postId\":3,\"userId\":6}', 0, '2021-04-11 10:05:52');
INSERT INTO `message` VALUES (157, 2, 14, '2_14', '乐蕊老师，请问一下C++的家庭作业需要学委统一收齐吗？还是下次上课的时候直接交给你就行。', 0, '2021-04-11 10:06:52');
INSERT INTO `message` VALUES (158, 1, 10, 'follow', '{\"entityType\":3,\"entityId\":10,\"userId\":2}', 0, '2021-04-11 10:07:01');
INSERT INTO `message` VALUES (159, 1, 7, 'follow', '{\"entityType\":3,\"entityId\":7,\"userId\":2}', 0, '2021-04-11 10:07:08');
INSERT INTO `message` VALUES (160, 2, 7, '2_7', 'Java课设做的咋样了，我还没开始呜呜呜', 0, '2021-04-11 10:08:04');
INSERT INTO `message` VALUES (161, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":2}', 0, '2021-04-11 10:08:12');
INSERT INTO `message` VALUES (162, 1, 14, 'like', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":2}', 0, '2021-04-11 10:08:15');
INSERT INTO `message` VALUES (163, 1, 14, 'like', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":2}', 0, '2021-04-11 10:08:18');
INSERT INTO `message` VALUES (164, 1, 11, 'like', '{\"entityType\":1,\"entityId\":17,\"postId\":17,\"userId\":2}', 0, '2021-04-11 10:08:21');
INSERT INTO `message` VALUES (165, 1, 12, 'like', '{\"entityType\":1,\"entityId\":5,\"postId\":5,\"userId\":2}', 0, '2021-04-11 10:08:24');
INSERT INTO `message` VALUES (166, 1, 2, 'like', '{\"entityType\":2,\"entityId\":25,\"postId\":13,\"userId\":2}', 0, '2021-04-11 10:08:32');
INSERT INTO `message` VALUES (167, 1, 9, 'comment', '{\"entityType\":1,\"entityId\":12,\"postId\":12,\"userId\":2}', 0, '2021-04-11 10:08:44');
INSERT INTO `message` VALUES (168, 1, 10, 'comment', '{\"entityType\":1,\"entityId\":15,\"postId\":15,\"userId\":2}', 0, '2021-04-11 10:08:59');
INSERT INTO `message` VALUES (169, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":8,\"postId\":8,\"userId\":2}', 0, '2021-04-11 10:09:20');
INSERT INTO `message` VALUES (170, 1, 13, 'comment', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":2}', 0, '2021-04-11 10:09:36');
INSERT INTO `message` VALUES (171, 1, 14, 'comment', '{\"entityType\":1,\"entityId\":7,\"postId\":7,\"userId\":2}', 0, '2021-04-11 10:09:44');
INSERT INTO `message` VALUES (172, 1, 10, 'like', '{\"entityType\":1,\"entityId\":14,\"postId\":14,\"userId\":2}', 0, '2021-04-11 10:09:58');
INSERT INTO `message` VALUES (173, 1, 11, 'like', '{\"entityType\":2,\"entityId\":34,\"postId\":14,\"userId\":2}', 0, '2021-04-11 10:09:59');
INSERT INTO `message` VALUES (174, 1, 10, 'comment', '{\"entityType\":1,\"entityId\":14,\"postId\":14,\"userId\":2}', 0, '2021-04-11 10:10:05');
INSERT INTO `message` VALUES (175, 1, 2, 'like', '{\"entityType\":2,\"entityId\":50,\"postId\":14,\"userId\":2}', 0, '2021-04-11 10:10:08');
INSERT INTO `message` VALUES (176, 1, 3, 'like', '{\"entityType\":1,\"entityId\":6,\"postId\":6,\"userId\":2}', 0, '2021-04-11 10:10:19');
INSERT INTO `message` VALUES (177, 1, 3, 'comment', '{\"entityType\":1,\"entityId\":6,\"postId\":6,\"userId\":2}', 0, '2021-04-11 10:10:29');
INSERT INTO `message` VALUES (178, 1, 2, 'like', '{\"entityType\":2,\"entityId\":51,\"postId\":6,\"userId\":2}', 0, '2021-04-11 10:10:31');
INSERT INTO `message` VALUES (179, 1, 3, 'comment', '{\"entityType\":2,\"entityId\":1,\"postId\":2,\"userId\":2}', 0, '2021-04-11 10:10:54');
INSERT INTO `message` VALUES (180, 1, 13, 'comment', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":3}', 0, '2021-04-11 10:11:19');
INSERT INTO `message` VALUES (181, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":3}', 0, '2021-04-11 10:11:23');
INSERT INTO `message` VALUES (182, 1, 3, 'like', '{\"entityType\":2,\"entityId\":53,\"postId\":11,\"userId\":3}', 0, '2021-04-11 10:11:25');
INSERT INTO `message` VALUES (183, 3, 2, '2_3', '加油！！', 0, '2021-04-11 10:12:08');
INSERT INTO `message` VALUES (184, 1, 14, 'follow', '{\"entityType\":3,\"entityId\":14,\"userId\":3}', 0, '2021-04-11 10:12:19');
INSERT INTO `message` VALUES (185, 1, 13, 'follow', '{\"entityType\":3,\"entityId\":13,\"userId\":3}', 0, '2021-04-11 10:12:21');
INSERT INTO `message` VALUES (186, 1, 11, 'follow', '{\"entityType\":3,\"entityId\":11,\"userId\":3}', 0, '2021-04-11 10:12:24');
INSERT INTO `message` VALUES (187, 1, 10, 'follow', '{\"entityType\":3,\"entityId\":10,\"userId\":3}', 0, '2021-04-11 10:12:27');
INSERT INTO `message` VALUES (188, 1, 9, 'follow', '{\"entityType\":3,\"entityId\":9,\"userId\":3}', 0, '2021-04-11 10:12:30');
INSERT INTO `message` VALUES (189, 1, 7, 'follow', '{\"entityType\":3,\"entityId\":7,\"userId\":3}', 0, '2021-04-11 10:12:33');
INSERT INTO `message` VALUES (190, 1, 2, 'follow', '{\"entityType\":3,\"entityId\":2,\"userId\":3}', 1, '2021-04-11 10:12:39');
INSERT INTO `message` VALUES (191, 1, 6, 'follow', '{\"entityType\":3,\"entityId\":6,\"userId\":3}', 0, '2021-04-11 10:12:46');
INSERT INTO `message` VALUES (192, 1, 3, 'like', '{\"entityType\":1,\"entityId\":6,\"postId\":6,\"userId\":3}', 0, '2021-04-11 10:16:09');
INSERT INTO `message` VALUES (193, 1, 2, 'like', '{\"entityType\":2,\"entityId\":51,\"postId\":6,\"userId\":3}', 0, '2021-04-11 10:16:10');
INSERT INTO `message` VALUES (194, 1, 3, 'like', '{\"entityType\":1,\"entityId\":4,\"postId\":4,\"userId\":3}', 0, '2021-04-11 10:16:16');
INSERT INTO `message` VALUES (195, 1, 8, 'like', '{\"entityType\":2,\"entityId\":43,\"postId\":4,\"userId\":3}', 0, '2021-04-11 10:16:17');
INSERT INTO `message` VALUES (196, 1, 2, 'like', '{\"entityType\":2,\"entityId\":4,\"postId\":4,\"userId\":3}', 0, '2021-04-11 10:16:20');
INSERT INTO `message` VALUES (197, 1, 2, 'like', '{\"entityType\":2,\"entityId\":7,\"postId\":4,\"userId\":3}', 0, '2021-04-11 10:16:21');
INSERT INTO `message` VALUES (198, 1, 3, 'like', '{\"entityType\":2,\"entityId\":6,\"postId\":4,\"userId\":3}', 0, '2021-04-11 10:16:21');
INSERT INTO `message` VALUES (199, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-12 20:14:53');
INSERT INTO `message` VALUES (200, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":2}', 0, '2021-04-12 22:48:02');
INSERT INTO `message` VALUES (201, 1, 2, 'like', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-12 23:12:57');
INSERT INTO `message` VALUES (202, 1, 2, 'like', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-12 23:20:12');
INSERT INTO `message` VALUES (203, 1, 2, 'like', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-12 23:25:19');
INSERT INTO `message` VALUES (204, 1, 2, 'like', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-12 23:25:46');
INSERT INTO `message` VALUES (205, 1, 2, 'like', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-12 23:40:44');
INSERT INTO `message` VALUES (206, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":54,\"postId\":19,\"userId\":2}', 0, '2021-04-13 08:54:41');
INSERT INTO `message` VALUES (207, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":54,\"postId\":19,\"userId\":2}', 0, '2021-04-13 08:54:49');
INSERT INTO `message` VALUES (208, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 09:43:24');
INSERT INTO `message` VALUES (209, 1, 11, 'like', '{\"entityType\":1,\"entityId\":16,\"postId\":16,\"userId\":2}', 0, '2021-04-13 10:36:25');
INSERT INTO `message` VALUES (210, 1, 2, 'like', '{\"entityType\":2,\"entityId\":54,\"postId\":19,\"userId\":2}', 0, '2021-04-13 10:52:08');
INSERT INTO `message` VALUES (211, 1, 2, 'like', '{\"entityType\":2,\"entityId\":54,\"postId\":19,\"userId\":2}', 0, '2021-04-13 10:52:11');
INSERT INTO `message` VALUES (212, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 10:52:13');
INSERT INTO `message` VALUES (213, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 10:52:15');
INSERT INTO `message` VALUES (214, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 10:52:17');
INSERT INTO `message` VALUES (215, 1, 2, 'like', '{\"entityType\":2,\"entityId\":57,\"postId\":19,\"userId\":2}', 0, '2021-04-13 10:52:18');
INSERT INTO `message` VALUES (216, 1, 2, 'like', '{\"entityType\":2,\"entityId\":57,\"postId\":19,\"userId\":2}', 0, '2021-04-13 11:11:15');
INSERT INTO `message` VALUES (217, 1, 2, 'like', '{\"entityType\":2,\"entityId\":57,\"postId\":19,\"userId\":2}', 0, '2021-04-13 11:11:18');
INSERT INTO `message` VALUES (218, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 11:11:30');
INSERT INTO `message` VALUES (219, 1, 2, 'like', '{\"entityType\":2,\"entityId\":56,\"postId\":19,\"userId\":2}', 0, '2021-04-13 11:16:43');
INSERT INTO `message` VALUES (220, 1, 2, 'like', '{\"entityType\":2,\"entityId\":56,\"postId\":19,\"userId\":2}', 0, '2021-04-13 11:16:49');
INSERT INTO `message` VALUES (221, 1, 2, 'like', '{\"entityType\":2,\"entityId\":55,\"postId\":19,\"userId\":2}', 0, '2021-04-13 11:16:49');
INSERT INTO `message` VALUES (222, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-13 12:30:54');
INSERT INTO `message` VALUES (223, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":18,\"postId\":18,\"userId\":2}', 0, '2021-04-13 12:31:02');
INSERT INTO `message` VALUES (224, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":59,\"postId\":18,\"userId\":2}', 0, '2021-04-13 12:31:07');
INSERT INTO `message` VALUES (225, 1, 2, 'comment', '{\"entityType\":2,\"entityId\":59,\"postId\":18,\"userId\":2}', 0, '2021-04-13 12:31:11');
INSERT INTO `message` VALUES (226, 1, 2, 'like', '{\"entityType\":2,\"entityId\":59,\"postId\":18,\"userId\":2}', 0, '2021-04-13 12:33:51');
INSERT INTO `message` VALUES (227, 1, 2, 'like', '{\"entityType\":2,\"entityId\":61,\"postId\":18,\"userId\":2}', 0, '2021-04-13 12:33:52');
INSERT INTO `message` VALUES (228, 1, 10, 'like', '{\"entityType\":2,\"entityId\":27,\"postId\":11,\"userId\":4}', 0, '2021-04-13 13:14:26');
INSERT INTO `message` VALUES (229, 1, 11, 'like', '{\"entityType\":2,\"entityId\":30,\"postId\":11,\"userId\":4}', 0, '2021-04-13 13:14:27');
INSERT INTO `message` VALUES (230, 1, 2, 'like', '{\"entityType\":2,\"entityId\":48,\"postId\":11,\"userId\":4}', 0, '2021-04-13 13:14:30');
INSERT INTO `message` VALUES (231, 1, 3, 'like', '{\"entityType\":2,\"entityId\":53,\"postId\":11,\"userId\":4}', 0, '2021-04-13 13:14:31');
INSERT INTO `message` VALUES (232, 1, 13, 'comment', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":4}', 0, '2021-04-13 13:15:08');
INSERT INTO `message` VALUES (233, 1, 4, 'comment', '{\"entityType\":1,\"entityId\":20,\"postId\":20,\"userId\":4}', 0, '2021-04-13 13:17:38');
INSERT INTO `message` VALUES (234, 1, 4, 'like', '{\"entityType\":2,\"entityId\":62,\"postId\":11,\"userId\":2}', 0, '2021-04-13 13:31:25');
INSERT INTO `message` VALUES (235, 1, 3, 'like', '{\"entityType\":2,\"entityId\":53,\"postId\":11,\"userId\":2}', 0, '2021-04-13 13:31:26');
INSERT INTO `message` VALUES (236, 1, 2, 'like', '{\"entityType\":2,\"entityId\":48,\"postId\":11,\"userId\":2}', 0, '2021-04-13 13:31:28');
INSERT INTO `message` VALUES (237, 1, 8, 'like', '{\"entityType\":2,\"entityId\":36,\"postId\":11,\"userId\":2}', 0, '2021-04-13 13:31:29');
INSERT INTO `message` VALUES (238, 1, 13, 'like', '{\"entityType\":1,\"entityId\":11,\"postId\":11,\"userId\":2}', 0, '2021-04-13 13:31:45');
INSERT INTO `message` VALUES (239, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 13:49:47');
INSERT INTO `message` VALUES (240, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 13:49:50');
INSERT INTO `message` VALUES (241, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 13:49:52');
INSERT INTO `message` VALUES (242, 1, 2, 'like', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-13 13:49:53');
INSERT INTO `message` VALUES (243, 1, 2, 'like', '{\"entityType\":2,\"entityId\":57,\"postId\":19,\"userId\":2}', 0, '2021-04-13 13:49:55');
INSERT INTO `message` VALUES (244, 1, 2, 'like', '{\"entityType\":2,\"entityId\":56,\"postId\":19,\"userId\":2}', 0, '2021-04-13 14:06:26');
INSERT INTO `message` VALUES (245, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":2}', 0, '2021-04-13 18:01:22');
INSERT INTO `message` VALUES (246, 1, 12, 'follow', '{\"entityType\":3,\"entityId\":12,\"userId\":2}', 0, '2021-04-13 18:01:25');
INSERT INTO `message` VALUES (247, 1, 4, 'comment', '{\"entityType\":2,\"entityId\":63,\"postId\":20,\"userId\":2}', 0, '2021-04-14 11:21:43');
INSERT INTO `message` VALUES (248, 1, 4, 'comment', '{\"entityType\":2,\"entityId\":63,\"postId\":20,\"userId\":2}', 0, '2021-04-14 11:22:23');
INSERT INTO `message` VALUES (249, 1, 2, 'like', '{\"entityType\":2,\"entityId\":49,\"postId\":7,\"userId\":2}', 0, '2021-04-14 11:33:46');
INSERT INTO `message` VALUES (250, 1, 11, 'like', '{\"entityType\":2,\"entityId\":32,\"postId\":7,\"userId\":2}', 0, '2021-04-14 11:33:49');
INSERT INTO `message` VALUES (251, 1, 10, 'like', '{\"entityType\":2,\"entityId\":28,\"postId\":7,\"userId\":2}', 0, '2021-04-14 11:33:50');
INSERT INTO `message` VALUES (252, 1, 9, 'like', '{\"entityType\":2,\"entityId\":24,\"postId\":7,\"userId\":2}', 0, '2021-04-14 11:33:51');
INSERT INTO `message` VALUES (253, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":23,\"postId\":23,\"userId\":3}', 0, '2021-04-14 11:58:11');
INSERT INTO `message` VALUES (254, 1, 3, 'comment', '{\"entityType\":2,\"entityId\":66,\"postId\":23,\"userId\":3}', 0, '2021-04-14 11:58:42');
INSERT INTO `message` VALUES (255, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":23,\"postId\":23,\"userId\":3}', 0, '2021-04-14 11:59:41');
INSERT INTO `message` VALUES (256, 1, 3, 'comment', '{\"entityType\":2,\"entityId\":68,\"postId\":23,\"userId\":3}', 0, '2021-04-14 12:00:01');
INSERT INTO `message` VALUES (257, 1, 3, 'like', '{\"entityType\":2,\"entityId\":68,\"postId\":23,\"userId\":3}', 0, '2021-04-14 12:00:11');
INSERT INTO `message` VALUES (258, 1, 3, 'like', '{\"entityType\":2,\"entityId\":69,\"postId\":23,\"userId\":3}', 0, '2021-04-14 12:00:12');
INSERT INTO `message` VALUES (259, 1, 2, 'like', '{\"entityType\":1,\"entityId\":23,\"postId\":23,\"userId\":3}', 0, '2021-04-14 12:00:13');
INSERT INTO `message` VALUES (260, 1, 2, 'like', '{\"entityType\":1,\"entityId\":23,\"postId\":23,\"userId\":2}', 0, '2021-04-14 14:51:04');
INSERT INTO `message` VALUES (261, 1, 3, 'like', '{\"entityType\":2,\"entityId\":68,\"postId\":23,\"userId\":2}', 0, '2021-04-14 14:51:06');
INSERT INTO `message` VALUES (262, 1, 3, 'like', '{\"entityType\":2,\"entityId\":69,\"postId\":23,\"userId\":2}', 0, '2021-04-14 14:51:06');
INSERT INTO `message` VALUES (263, 1, 3, 'comment', '{\"entityType\":2,\"entityId\":68,\"postId\":23,\"userId\":2}', 0, '2021-04-14 14:51:13');
INSERT INTO `message` VALUES (264, 1, 2, 'comment', '{\"entityType\":1,\"entityId\":19,\"postId\":19,\"userId\":2}', 0, '2021-04-14 15:01:40');
INSERT INTO `message` VALUES (265, 1, 10, 'comment', '{\"entityType\":2,\"entityId\":27,\"postId\":11,\"userId\":2}', 0, '2021-04-14 15:10:05');
INSERT INTO `message` VALUES (266, 1, 10, 'comment', '{\"entityType\":2,\"entityId\":27,\"postId\":11,\"userId\":2}', 0, '2021-04-14 15:10:10');
INSERT INTO `message` VALUES (267, 1, 10, 'comment', '{\"entityType\":2,\"entityId\":27,\"postId\":11,\"userId\":2}', 0, '2021-04-14 15:10:14');
INSERT INTO `message` VALUES (268, 1, 2, 'like', '{\"entityType\":2,\"entityId\":72,\"postId\":11,\"userId\":2}', 0, '2021-04-14 15:10:16');
INSERT INTO `message` VALUES (269, 1, 2, 'like', '{\"entityType\":2,\"entityId\":73,\"postId\":11,\"userId\":2}', 0, '2021-04-14 15:10:16');
INSERT INTO `message` VALUES (270, 1, 2, 'like', '{\"entityType\":2,\"entityId\":74,\"postId\":11,\"userId\":2}', 0, '2021-04-14 15:10:17');
INSERT INTO `message` VALUES (271, 1, 2, 'follow', '{\"entityType\":3,\"entityId\":2,\"userId\":13}', 0, '2021-04-14 16:46:06');
INSERT INTO `message` VALUES (272, 1, 3, 'follow', '{\"entityType\":3,\"entityId\":3,\"userId\":13}', 0, '2021-04-14 16:46:11');
INSERT INTO `message` VALUES (273, 1, 7, 'follow', '{\"entityType\":3,\"entityId\":7,\"userId\":13}', 0, '2021-04-14 16:46:18');
INSERT INTO `message` VALUES (274, 1, 10, 'like', '{\"entityType\":2,\"entityId\":27,\"postId\":11,\"userId\":13}', 0, '2021-04-14 16:46:27');
INSERT INTO `message` VALUES (275, 1, 10, 'comment', '{\"entityType\":2,\"entityId\":27,\"postId\":11,\"userId\":13}', 0, '2021-04-14 16:46:42');

-- ----------------------------
-- Table structure for discuss_post
-- ----------------------------
DROP TABLE IF EXISTS `discuss_post`;
CREATE TABLE `discuss_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kind` int(11) NULL DEFAULT NULL COMMENT '博客类型，4种类型',
  `category` int(11) NULL DEFAULT NULL COMMENT '0学生帖 or 1老师帖',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '0-普通; 1-置顶;',
  `status` int(11) NULL DEFAULT NULL COMMENT '0-正常; 1-精华; 2-删除;',
  `create_time` timestamp NULL DEFAULT NULL,
  `comment_count` int(11) NULL DEFAULT NULL COMMENT '博客的回复数',
  `score` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discuss_post
-- ----------------------------
INSERT INTO `discuss_post` VALUES (1, '2', '明宇', '面向对象编程的三大特性', 1, 0, '封装  继承  多态', 0, 0, '2021-03-31 13:17:10', 0, 83.30102999566398);
INSERT INTO `discuss_post` VALUES (2, '2', '明宇', '请问redis常用的数据类型有哪些呢？', 2, 0, '求助求助！', 0, 0, '2021-04-10 12:37:58', 2, 94.3802112417116);
INSERT INTO `discuss_post` VALUES (3, '2', '明宇', '分享一篇关于sql执行日志的文章', 3, 0, '地址：https://blog.csdn.net/qq_44752641/article/details/115501795', 0, 1, '2021-04-10 12:42:34', 1, 94.94939000664492);
INSERT INTO `discuss_post` VALUES (4, '3', '浩博', '请问如何将数据库的数据导出呢？', 2, 0, '求助求助！', 0, 0, '2021-04-10 13:01:57', 2, 94.34242268082221);
INSERT INTO `discuss_post` VALUES (5, '12', '鸿朗', 'Java课程设计安排', 4, 1, '同学们，本次的课设是做一个Java Web项目，拍摄项目演示讲解视频，不少于10分钟。然后将项目源码与视频打包发送到 115274737@qq.com ，我会根据项目的难易程度进行打分，作为你们期末成绩的一部分。', 1, 0, '2021-04-10 13:09:28', 8, 94.96378782734556);
INSERT INTO `discuss_post` VALUES (6, '3', '浩博', '博客笔记分享', 3, 0, '给各位同学安利一下我的个人博客，已经持续更新2年了，有兴趣的同学可以去看看，希望能帮助到你们。博客地址：https://blog.csdn.net/qq_44752641', 0, 1, '2021-04-10 13:20:01', 1, 94.94939000664492);
INSERT INTO `discuss_post` VALUES (7, '14', '乐蕊', '4.10 C++家庭作业', 4, 1, '第2章习题  P77 1、4、5、6、11', 1, 0, '2021-04-10 13:45:13', 7, 94.88081359228079);
INSERT INTO `discuss_post` VALUES (8, '14', '乐蕊', '4.15 C++课程时间调整', 4, 1, '同学们，下周C++课程时间由3、4节课调整到6、7节课！', 1, 0, '2021-04-10 13:46:45', 7, 94.83250891270623);
INSERT INTO `discuss_post` VALUES (9, '7', '依秋', 'Java小白的学习路线是什么？', 2, 0, '求大佬指导orz', 0, 1, '2021-04-10 13:50:48', 2, 95.00432137378264);
INSERT INTO `discuss_post` VALUES (10, '6', '昊磊', '学C++好还是Java好', 2, 0, '最好能说一下理由,求助求助！', 0, 0, '2021-04-11 09:36:59', 1, 95.07918124604763);
INSERT INTO `discuss_post` VALUES (11, '13', '昊然', '模拟电子技术做好预习', 4, 1, '同学们，4.14  3-5节的模拟电子技术请做好预习，我会在课堂上随机提问。', 1, 0, '2021-04-11 09:39:13', 5, 95.77815125038364);
INSERT INTO `discuss_post` VALUES (12, '9', '芷梦', '分享Github地址', 3, 0, '分享一下我的Github，上面有我平时练习的项目。<br/>地址：https://github.com/ZDW6060', 0, 1, '2021-04-11 09:41:12', 2, 96.00432137378264);
INSERT INTO `discuss_post` VALUES (13, '9', '芷梦', '分享左神的算法视频课', 3, 0, '左神真的太牛了，他的算法思路很清晰，他的视频b站上就可以看。<br/>地址：https://www.bilibili.com/video/BV16K4y157vm?p=1', 0, 1, '2021-04-11 09:42:59', 1, 95.94939000664492);
INSERT INTO `discuss_post` VALUES (14, '10', '友安', '分享一些我平时常用的快捷键', 3, 0, '地址：https://blog.csdn.net/qq_44752641/article/details/106170913', 0, 0, '2021-04-11 09:48:13', 2, 95.34242268082221);
INSERT INTO `discuss_post` VALUES (15, '10', '友安', 'redis主从复制的好处', 1, 0, '1、读写分离<br/>2、容灾恢复', 0, 0, '2021-04-11 09:48:50', 1, 95);
INSERT INTO `discuss_post` VALUES (16, '11', '书文', 'mysql中脏读、不可重复读、幻读的区别', 1, 0, '脏读：事务A读到事务B未提交的数据<br/>不可重复读：事务A读到事务B更新的数据<br/>幻读：事务A读到事务B新增的数据', 0, 0, '2021-04-11 09:57:43', 0, 94.60205999132796);
INSERT INTO `discuss_post` VALUES (17, '11', '书文', '分享一个ZooKeeper的视频', 3, 0, '地址：https://www.bilibili.com/video/BV1PW411r7iP', 0, 0, '2021-04-11 09:58:10', 1, 95.14612803567823);
INSERT INTO `discuss_post` VALUES (18, '2', '明宇', 'TCP和UDP的区别', 1, 0, 'TCP是面向连接，可靠的传输。<br/>UDP是无连接的，不可靠的传输。', 0, 0, '2021-04-12 20:06:56', 2, 96.07918124604763);
INSERT INTO `discuss_post` VALUES (19, '2', '明宇', '这是一个水贴', 1, 0, '11', 0, 0, '2021-04-12 20:14:32', 2, 96.34242268082221);
INSERT INTO `discuss_post` VALUES (20, '4', '辰宇', '前端的框架有哪些？', 2, 0, '求助求助！', 0, 0, '2021-04-13 13:17:22', 1, 97);
INSERT INTO `discuss_post` VALUES (21, '2', '明宇', '使行内样式style优先级最高', 1, 0, '<h6 style=\"color:black!important\">您确认要删除这条评论吗？</h6><br/>使用这种写法即可', 0, 2, '2021-04-14 11:39:31', 0, 0);
INSERT INTO `discuss_post` VALUES (22, '2', '明宇', 'String和byte数组的转换', 1, 0, 'byte[] bytes=new byte[1024];<br/>String str=new String(bytes,0,bytes.length);', 0, 0, '2021-04-14 11:40:16', 0, 97);
INSERT INTO `discuss_post` VALUES (23, '2', '明宇', 'github或gitee提交代码怎么没有小绿格？', 2, 0, '求助求助', 0, 0, '2021-04-14 11:41:12', 2, 98.14612803567823);
INSERT INTO `discuss_post` VALUES (24, '2', '明宇', 'IDEA怎么安装CodeIf插件', 1, 0, '1、点击File->Settings->Plugins->设置->Install Plugin from Disk<br/>2、选中MappingSearch.jar<br/>3、重启IDEA，在Help菜单下有个“MappingSearch映射搜索”选项表示安装成功<br/><br/>此后就可以使用插件的变量名搜索功能，右键CodeIf，则会弹出许多适合的变量名。以后就不用头秃的想变量名问题了。<br/><br/>附上jar包下载地址:<br/>https://download.csdn.net/download/qq_44752641/15892831', 0, 0, '2021-04-14 11:57:07', 0, 97);
INSERT INTO `discuss_post` VALUES (25, '12', '鸿朗', '4.20 Java课程安排', 4, 1, '4.20 3-5节的Java程序讲述网络编程相关的问题，请同学们做好预习工作！', 1, 0, '2021-04-14 12:02:01', 0, 97);
INSERT INTO `discuss_post` VALUES (26, '12', '鸿朗', '4.13 Java家庭作业', 4, 1, '利用Java的GUI编程，编写一个计算器程序，要求提交一个.java的文件，命名方式为班级-姓名-学号，各班学委收齐后，发送到957598829@qq.com。', 1, 0, '2021-04-14 12:04:41', 0, 97);
INSERT INTO `discuss_post` VALUES (27, '13', '昊然', '4.14 模电课堂作业', 4, 1, '完成第三章课后习题 1-9', 1, 0, '2021-04-14 16:47:36', 0, 0);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `entity_type` int(11) NULL DEFAULT NULL COMMENT '1给帖子的评论，2给评论的评论',
  `entity_id` int(11) NULL DEFAULT NULL COMMENT '对象是帖子id或评论id',
  `target_id` int(11) NULL DEFAULT NULL COMMENT '评论没有指定对象时为0，回复指定是用户id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0-正常;1-删除;',
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_user_id`(`user_id`) USING BTREE,
  INDEX `index_entity_id`(`entity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 3, 1, 2, 0, '有5种数据类型。string、list、hash、set、zset', 0, '2021-04-10 12:59:28');
INSERT INTO `comment` VALUES (2, 3, 1, 3, 0, '666', 1, '2021-04-10 13:00:00');
INSERT INTO `comment` VALUES (3, 3, 2, 2, 0, '给你点个赞', 1, '2021-04-10 13:00:22');
INSERT INTO `comment` VALUES (4, 2, 1, 4, 0, '数据库可视化工具你可以用Navicat，然后右键表名，导出数据和结构sql即可。', 0, '2021-04-10 13:03:17');
INSERT INTO `comment` VALUES (5, 2, 2, 2, 3, '嘻嘻嘻', 1, '2021-04-10 13:03:33');
INSERT INTO `comment` VALUES (6, 3, 2, 4, 0, '多谢老铁！', 0, '2021-04-10 13:04:46');
INSERT INTO `comment` VALUES (7, 2, 2, 4, 3, '客气了', 0, '2021-04-10 13:04:57');
INSERT INTO `comment` VALUES (8, 2, 1, 5, 0, '已收到！', 0, '2021-04-10 13:10:35');
INSERT INTO `comment` VALUES (9, 3, 1, 5, 0, '已收到！', 0, '2021-04-10 13:10:49');
INSERT INTO `comment` VALUES (10, 2, 1, 9, 0, 'JavaSE&nbsp;--&gt;&nbsp;MySQL基础&nbsp;--&gt;&nbsp;JDBC&nbsp;--&gt;&nbsp;JavaWeb&nbsp;--&gt;&nbsp;Spring5&nbsp;--&gt;&nbsp;SpringMVC&nbsp;--&gt;&nbsp;MyBatis&nbsp;--&gt;&nbsp;Maven&nbsp;--&gt;&nbsp;Ssm框架整合案例&nbsp;--&gt;&nbsp;Git/GitHub&nbsp;--&gt;&nbsp;Redis&nbsp;--&gt;&nbsp;MySQL高级优化&nbsp;--&gt;&nbsp;MyBatisPlus&nbsp;--&gt;&nbsp;Spring注解驱动开发&nbsp;--&gt; &nbsp;ZooKeeper&nbsp;--&gt;&nbsp;Dubbo&nbsp;--&gt;&nbsp;消息中间件ActiveMQ&nbsp;--&gt; SpringBoot2--&gt;&nbsp;&nbsp;SpringCloud&nbsp;\r\n', 0, '2021-04-10 13:51:40');
INSERT INTO `comment` VALUES (11, 2, 2, 10, 0, '推荐你在B站上学习，尚硅谷分享的Java教程非常好，学完找工作不成问题。', 0, '2021-04-10 13:52:48');
INSERT INTO `comment` VALUES (12, 7, 2, 10, 2, '多谢多谢！我去B站了解一下', 0, '2021-04-10 13:53:35');
INSERT INTO `comment` VALUES (13, 16, 2, 10, 0, '多谢大佬的学习路线，受益匪浅！', 0, '2021-04-10 14:00:27');
INSERT INTO `comment` VALUES (14, 16, 1, 5, 0, '已收到！', 0, '2021-04-10 14:00:52');
INSERT INTO `comment` VALUES (15, 16, 1, 7, 0, '已收到！', 0, '2021-04-10 14:00:59');
INSERT INTO `comment` VALUES (16, 16, 1, 8, 0, '已收到！', 0, '2021-04-10 14:01:08');
INSERT INTO `comment` VALUES (17, 16, 1, 2, 0, '学习了', 0, '2021-04-10 14:01:18');
INSERT INTO `comment` VALUES (18, 6, 1, 9, 0, '请问一下系统学完Java大概需要多久时间呀？', 0, '2021-04-11 09:35:18');
INSERT INTO `comment` VALUES (19, 6, 1, 5, 0, '已收到', 0, '2021-04-11 09:37:07');
INSERT INTO `comment` VALUES (20, 6, 1, 8, 0, '已收到！', 0, '2021-04-11 09:37:17');
INSERT INTO `comment` VALUES (21, 6, 1, 7, 0, '已收到！', 0, '2021-04-11 09:37:32');
INSERT INTO `comment` VALUES (22, 9, 1, 5, 0, '已收到！', 0, '2021-04-11 09:43:06');
INSERT INTO `comment` VALUES (23, 9, 1, 8, 0, '已收到！', 0, '2021-04-11 09:43:46');
INSERT INTO `comment` VALUES (24, 9, 1, 7, 0, '已收到！', 0, '2021-04-11 09:43:56');
INSERT INTO `comment` VALUES (25, 2, 1, 13, 0, '我也有看左神的算法视频课，确实很不错！', 0, '2021-04-11 09:46:00');
INSERT INTO `comment` VALUES (26, 10, 1, 8, 0, '已收到！', 0, '2021-04-11 09:49:08');
INSERT INTO `comment` VALUES (27, 10, 1, 11, 0, '已收到！', 0, '2021-04-11 09:49:19');
INSERT INTO `comment` VALUES (28, 10, 1, 7, 0, '已收到！', 0, '2021-04-11 09:50:28');
INSERT INTO `comment` VALUES (29, 10, 1, 5, 0, '已收到！', 0, '2021-04-11 09:50:38');
INSERT INTO `comment` VALUES (30, 11, 1, 11, 0, '已收到！', 0, '2021-04-11 09:51:25');
INSERT INTO `comment` VALUES (31, 11, 1, 8, 0, '已收到！', 0, '2021-04-11 09:51:41');
INSERT INTO `comment` VALUES (32, 11, 1, 7, 0, '已收到！', 0, '2021-04-11 09:51:48');
INSERT INTO `comment` VALUES (33, 11, 1, 5, 0, '已收到！', 0, '2021-04-11 09:51:55');
INSERT INTO `comment` VALUES (34, 11, 1, 14, 0, '学习了，谢谢博主分享！', 0, '2021-04-11 09:52:16');
INSERT INTO `comment` VALUES (35, 11, 1, 10, 0, '看你想做硬件还是软件，嵌入式硬件一般用C++，软件开发一般用Java。', 0, '2021-04-11 09:56:04');
INSERT INTO `comment` VALUES (36, 8, 1, 11, 0, '已收到！', 0, '2021-04-11 10:00:21');
INSERT INTO `comment` VALUES (37, 8, 1, 8, 0, '已收到！', 0, '2021-04-11 10:00:26');
INSERT INTO `comment` VALUES (38, 8, 1, 7, 0, '已收到！', 0, '2021-04-11 10:00:30');
INSERT INTO `comment` VALUES (39, 8, 1, 5, 0, '已收到！', 0, '2021-04-11 10:00:35');
INSERT INTO `comment` VALUES (40, 8, 1, 17, 0, '不错的视频,谢谢分享！', 0, '2021-04-11 10:00:55');
INSERT INTO `comment` VALUES (41, 8, 1, 12, 0, '哇，学姐你的项目经验好丰富呀，学习了！', 0, '2021-04-11 10:01:55');
INSERT INTO `comment` VALUES (42, 8, 2, 10, 0, '学习了！', 0, '2021-04-11 10:02:22');
INSERT INTO `comment` VALUES (43, 8, 1, 4, 0, '学习了。', 0, '2021-04-11 10:03:25');
INSERT INTO `comment` VALUES (44, 6, 1, 3, 0, '文章写的不错，谢谢分享！', 0, '2021-04-11 10:05:52');
INSERT INTO `comment` VALUES (45, 2, 1, 12, 0, '厉害！', 0, '2021-04-11 10:08:44');
INSERT INTO `comment` VALUES (46, 2, 1, 15, 0, '能再详细一点就好了。', 0, '2021-04-11 10:08:59');
INSERT INTO `comment` VALUES (47, 2, 1, 8, 0, '已收到！', 0, '2021-04-11 10:09:20');
INSERT INTO `comment` VALUES (48, 2, 1, 11, 0, '已收到！', 0, '2021-04-11 10:09:36');
INSERT INTO `comment` VALUES (49, 2, 1, 7, 0, '已收到！', 0, '2021-04-11 10:09:44');
INSERT INTO `comment` VALUES (50, 2, 1, 14, 0, '学习了，谢谢博主分享！', 0, '2021-04-11 10:10:05');
INSERT INTO `comment` VALUES (51, 2, 1, 6, 0, '学习了，多谢分享！', 0, '2021-04-11 10:10:29');
INSERT INTO `comment` VALUES (52, 2, 2, 1, 0, '学习了！', 0, '2021-04-11 10:10:54');
INSERT INTO `comment` VALUES (53, 3, 1, 11, 0, '已收到！', 0, '2021-04-11 10:11:19');
INSERT INTO `comment` VALUES (54, 2, 1, 19, 0, '11', 1, '2021-04-12 20:14:53');
INSERT INTO `comment` VALUES (55, 2, 2, 54, 0, '11', 1, '2021-04-13 08:54:41');
INSERT INTO `comment` VALUES (56, 2, 2, 54, 2, '11', 1, '2021-04-13 08:54:49');
INSERT INTO `comment` VALUES (57, 2, 1, 19, 0, '111', 0, '2021-04-13 09:43:24');
INSERT INTO `comment` VALUES (58, 2, 1, 18, 0, '111', 0, '2021-04-13 12:30:54');
INSERT INTO `comment` VALUES (59, 2, 1, 18, 0, '111', 0, '2021-04-13 12:31:01');
INSERT INTO `comment` VALUES (60, 2, 2, 59, 0, '111', 0, '2021-04-13 12:31:07');
INSERT INTO `comment` VALUES (61, 2, 2, 59, 2, '11111', 0, '2021-04-13 12:31:11');
INSERT INTO `comment` VALUES (62, 4, 1, 11, 0, '已收到！', 0, '2021-04-13 13:15:07');
INSERT INTO `comment` VALUES (63, 4, 1, 20, 0, '占个楼！', 0, '2021-04-13 13:17:38');
INSERT INTO `comment` VALUES (64, 2, 2, 63, 0, '占个楼！', 0, '2021-04-14 11:21:43');
INSERT INTO `comment` VALUES (65, 2, 2, 63, 2, '111', 0, '2021-04-14 11:22:23');
INSERT INTO `comment` VALUES (66, 3, 1, 23, 0, '最近发现为什么自己提交代码，在github上没有小绿格。发现是本地的用户名和邮箱，和github上的不一样，需要改成跟github上一样的，才能正常显示提交记录。\r\n修改方法：\r\n假设你的github名叫aaa，邮箱是aaa@qq.com，这时你的本地账号和邮箱必须改为对应的，否则就不会有提交记录。\r\n怎样修改？命令行执行下面两段代码。\r\n附上jar包下载地址:\r\nhttps://download.csdn.net/download/qq_44752641/15892831\r\n', 0, '2021-04-14 11:58:11');
INSERT INTO `comment` VALUES (67, 3, 2, 66, 0, '1', 0, '2021-04-14 11:58:42');
INSERT INTO `comment` VALUES (68, 3, 1, 23, 0, '假设你的github名叫aaa，邮箱是aaa@qq.com，这时你的本地账号和邮箱必须改为对应的，否则就不会有提交记录。命令行执行下面两段代码:git config --global user.name &quot;aaa&quot;　　git config --global user.email &quot;aaa@qq.com&quot;', 0, '2021-04-14 11:59:41');
INSERT INTO `comment` VALUES (69, 3, 2, 68, 0, '占个楼！', 0, '2021-04-14 12:00:01');
INSERT INTO `comment` VALUES (70, 2, 2, 68, 3, '666', 0, '2021-04-14 14:51:13');
INSERT INTO `comment` VALUES (71, 2, 1, 19, 0, '111', 0, '2021-04-14 15:01:40');
INSERT INTO `comment` VALUES (72, 2, 2, 27, 0, '1', 0, '2021-04-14 15:10:05');
INSERT INTO `comment` VALUES (73, 2, 2, 27, 2, '11', 0, '2021-04-14 15:10:10');
INSERT INTO `comment` VALUES (74, 2, 2, 27, 2, '111', 0, '2021-04-14 15:10:13');
INSERT INTO `comment` VALUES (75, 13, 2, 27, 0, '同学，请不要水楼！', 0, '2021-04-14 16:46:42');

SET FOREIGN_KEY_CHECKS = 1;
