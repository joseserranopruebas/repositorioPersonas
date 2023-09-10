/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100125 (10.1.25-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : dbdiccionario

 Target Server Type    : MySQL
 Target Server Version : 100125 (10.1.25-MariaDB)
 File Encoding         : 65001

 Date: 10/09/2023 16:51:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `edad` int NULL DEFAULT NULL,
  `creacion` timestamp NULL DEFAULT NULL,
  `actualizacion` datetime NULL DEFAULT NULL,
  `estatus` enum('ACTIVO','INACTIVO') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'ACTIVO',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO `persona` VALUES (1, '0930178455', 'JOSE SERRANO', 30, NULL, NULL, 'ACTIVO');
INSERT INTO `persona` VALUES (2, '0923136023', 'FERNANDO JIEMENEZ', 26, NULL, NULL, 'ACTIVO');
INSERT INTO `persona` VALUES (3, '0956321567', 'JOSE MIGUEL PERALTA', 12, NULL, NULL, 'ACTIVO');
INSERT INTO `persona` VALUES (4, '0996553154', 'ESTEFANIA PACHECO', 55, NULL, NULL, 'ACTIVO');
INSERT INTO `persona` VALUES (5, '0987654683', 'WENDY SANCHEZ', 22, NULL, NULL, 'ACTIVO');

SET FOREIGN_KEY_CHECKS = 1;
