/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : asistencia_bd

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 16/02/2022 16:03:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for coordenadas
-- ----------------------------
DROP TABLE IF EXISTS `coordenadas`;
CREATE TABLE `coordenadas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idcampo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `geoloc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idusuario` int NOT NULL,
  `hora` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coordenadas
-- ----------------------------
INSERT INTO `coordenadas` VALUES (3, '7', '-16.50827833,-68.11762333', 'proyecto', 1, '', '2021-10-19 04:38:36', '2021-10-19 04:38:36');
INSERT INTO `coordenadas` VALUES (4, '3', '-16.506595,-68.126485 ', 'trabajador', 1, '', '2021-10-19 04:40:04', '2021-10-19 04:40:04');
INSERT INTO `coordenadas` VALUES (5, '8', '-16.51518,-68.13019667   ', 'proyecto', 1, '', '2021-10-19 04:46:51', '2021-10-19 04:46:51');
INSERT INTO `coordenadas` VALUES (6, '4', '-16.509876833,-68.192667', 'trabajador', 1, '', '2021-10-19 04:48:29', '2021-10-19 04:48:29');
INSERT INTO `coordenadas` VALUES (8, '9', '-16.54693667,-68.117225633  ', 'proyecto', 2, '', '2021-10-19 11:56:09', '2021-10-19 11:56:09');
INSERT INTO `coordenadas` VALUES (9, '10', '-16.50335233,-68.12762167 ', 'proyecto', 2, '', '2021-10-19 11:56:49', '2021-10-19 11:56:49');
INSERT INTO `coordenadas` VALUES (10, '22', '-16.498333,-68.3539365 ', 'trabajador', 1, '', '2021-10-19 11:57:29', '2021-10-19 11:57:29');
INSERT INTO `coordenadas` VALUES (11, '11', '-16.5117952, -68.0689664', 'proyecto', 1, '', '2021-10-19 12:56:27', '2021-10-19 12:56:27');
INSERT INTO `coordenadas` VALUES (12, '23', '-16.50346167,-68.16167667 ', 'trabajador', 1, '', '2021-10-19 12:59:24', '2021-10-19 12:59:24');
INSERT INTO `coordenadas` VALUES (13, '24', '-16.5322096, -68.2074776', 'trabajador', 1, '', '2022-01-20 06:16:29', '2022-01-20 06:16:29');
INSERT INTO `coordenadas` VALUES (14, '25', '-16.5322096, -68.2074776', 'trabajador', 1, '', '2022-01-20 06:16:51', '2022-01-20 06:16:51');
INSERT INTO `coordenadas` VALUES (15, '26', '-16.498853, -68.124265                            ', 'trabajador', 1, '', '2022-01-20 06:17:20', '2022-01-20 06:17:20');
INSERT INTO `coordenadas` VALUES (16, '27', '-16.495813, -68.132596                            ', 'trabajador', 1, '', '2022-01-20 06:17:55', '2022-01-20 06:17:55');
INSERT INTO `coordenadas` VALUES (17, '28', '', 'trabajador', 1, '', '2022-01-20 06:18:28', '2022-01-20 06:18:28');
INSERT INTO `coordenadas` VALUES (18, '29', '-16.5322096, -68.2074776', 'trabajador', 1, '', '2022-01-20 06:18:58', '2022-01-20 06:18:58');
INSERT INTO `coordenadas` VALUES (19, '30', '-16.5322096, -68.2074776', 'trabajador', 1, '', '2022-01-20 06:19:39', '2022-01-20 06:19:39');
INSERT INTO `coordenadas` VALUES (20, '30', '-16.5322096, -68.2074776', 'trabajador', 1, '', '2022-01-20 11:21:00', '2022-01-20 10:21:06');
INSERT INTO `coordenadas` VALUES (21, '30', '-16.5322096, -68.2074776', 'trabajador', 1, '', '2022-01-19 11:23:33', '2022-01-19 11:23:35');

-- ----------------------------
-- Table structure for entradas
-- ----------------------------
DROP TABLE IF EXISTS `entradas`;
CREATE TABLE `entradas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of entradas
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for historicos
-- ----------------------------
DROP TABLE IF EXISTS `historicos`;
CREATE TABLE `historicos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idusuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latlon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historicos
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2015_01_20_084450_create_roles_table', 1);
INSERT INTO `migrations` VALUES (4, '2015_01_20_084525_create_role_user_table', 1);
INSERT INTO `migrations` VALUES (5, '2015_01_24_080208_create_permissions_table', 1);
INSERT INTO `migrations` VALUES (6, '2015_01_24_080433_create_permission_role_table', 1);
INSERT INTO `migrations` VALUES (7, '2015_12_04_003040_add_special_role_column', 1);
INSERT INTO `migrations` VALUES (8, '2017_10_17_170735_create_permission_user_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (10, '2021_02_24_194434_create_documentos_table', 1);
INSERT INTO `migrations` VALUES (11, '2021_08_24_174148_create_proyectos_table', 2);
INSERT INTO `migrations` VALUES (12, '2021_08_24_174657_create_asistencias_table', 3);
INSERT INTO `migrations` VALUES (13, '2021_10_11_123853_create_trabajadors_table', 4);
INSERT INTO `migrations` VALUES (14, '2021_10_19_044658_create_coordenadas_table', 5);
INSERT INTO `migrations` VALUES (15, '2021_10_19_123820_create_entradas_table', 6);
INSERT INTO `migrations` VALUES (16, '2022_02_04_105801_create_historicos_table', 6);
INSERT INTO `migrations` VALUES (17, '2022_02_16_095921_create_permisofaltas_table', 7);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permisofaltas
-- ----------------------------
DROP TABLE IF EXISTS `permisofaltas`;
CREATE TABLE `permisofaltas`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idusuario` int NOT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permisofaltas
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_role_permission_id_index`(`permission_id`) USING BTREE,
  INDEX `permission_role_role_id_index`(`role_id`) USING BTREE,
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (8, 35, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (9, 36, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (10, 37, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (11, 39, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (12, 40, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (13, 41, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (14, 42, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (15, 44, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (16, 45, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (17, 46, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (18, 49, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (19, 50, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (20, 51, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (21, 54, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (22, 55, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');
INSERT INTO `permission_role` VALUES (23, 56, 5, '2022-01-20 16:29:48', '2022-01-20 16:29:48');

-- ----------------------------
-- Table structure for permission_user
-- ----------------------------
DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE `permission_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_user_permission_id_index`(`permission_id`) USING BTREE,
  INDEX `permission_user_user_id_index`(`user_id`) USING BTREE,
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission_user
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (35, 'USUARIO', 'users.index', 'NAVEGA LA TABLA USUARIOS', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (36, 'USUARIO', 'users.show', 'VISUALIZA A UN USUARIO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (37, 'USUARIO', 'users.edit', 'EDITA A UN USUARIO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (38, 'USUARIO', 'users.destroy', 'ELIMINA UN USUARIO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (39, 'ROLES', 'roles.index', 'NAVEGA LA TABLA USUARIOS', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (40, 'ROLES', 'roles.show', 'VISUALIZA A UN ROL EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (41, 'ROLES', 'roles.create', 'CREA UN NUEVO ROL EN EL SISTEMA', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (42, 'ROLES', 'roles.edit', 'EDITA UN ROL EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (43, 'ROLES', 'roles.destroy', 'ELIMINA UN ROL EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (44, 'DOCUMENTO', 'documentos.index', 'NAVEGA LA TABLA DOCUMENTO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (45, 'DOCUMENTO', 'documentos.show', 'VISUALIZA A UN DOCUMENTO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (46, 'DOCUMENTO', 'documentos.create', 'CREA UN NUEVO DOCUMENTO EN EL SISTEMA', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (47, 'DOCUMENTO', 'documentos.edit', 'EDITA UN DOCUMENTO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (48, 'DOCUMENTO', 'documentos.destroy', 'ELIMINA UN DOCUMENTO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (49, 'PERSONAL', 'trabajadors.index', 'NAVEGA LA TABLA PERSONAL', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (50, 'PERSONAL', 'trabajadors.show', 'VISUALIZA A UN REGISTRO DE PERSONAL EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (51, 'PERSONAL', 'trabajadors.create', 'CREA UN NUEVO REGISTRO DE PERSONAL EN EL SISTEMA', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (52, 'PERSONAL', 'trabajadors.edit', 'EDITA UN REGISTRO DE PERSONAL EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (53, 'PERSONAL', 'trabajadors.destroy', 'ELIMINA UN REGISTRO DE PERSONAL EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (54, 'PROYECTO', 'proyectos.index', 'NAVEGA LA TABLA PROYECTOS', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (55, 'PROYECTO', 'proyectos.show', 'VISUALIZA A UN REGISTRO DE PROYECTO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (56, 'PROYECTO', 'proyectos.create', 'CREA UN NUEVO REGISTRO DE PROYECTO EN EL SISTEMA', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (57, 'PROYECTO', 'proyectos.edit', 'EDITA UN REGISTRO DE PROYECTO EN ESPECIFICO', '2022-01-20 16:26:27', '2022-01-20 16:26:27');
INSERT INTO `permissions` VALUES (58, 'PROYECTO', 'proyectos.destroy', 'ELIMINA UN REGISTRO DE PROYECTO EN ESPECIFICO', '2022-01-20 16:26:28', '2022-01-20 16:26:28');
INSERT INTO `permissions` VALUES (59, 'VISOR MAPA', 'coordenadas.index', 'SE MUESTRA EL VISOR DEL MAPA', '2022-01-20 16:26:28', '2022-01-20 16:26:28');

-- ----------------------------
-- Table structure for proyectos
-- ----------------------------
DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE `proyectos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latlon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proyectos
-- ----------------------------
INSERT INTO `proyectos` VALUES (7, 'GENERACION DE PLANTA ELECTRICA', 'SENKATA Z VILLA ARMONIA', '-16.48748167,-68.15106167', '2021-10-19 04:38:36', '2021-10-19 04:38:36');
INSERT INTO `proyectos` VALUES (8, 'CONSTRUCCION DE CARRETERA SAN JUAN PAPTITO', 'URB. LA COMARCA', '-16.79911333,-68.17768833 ', '2021-10-19 04:46:51', '2021-10-19 04:46:51');
INSERT INTO `proyectos` VALUES (9, 'CONSTRUCION DE PLAZA', 'EL ALTO ORO NEGRO CUPILLUPACA', '-16.54067,-68.079325  ', '2021-10-19 11:56:09', '2021-10-19 11:56:09');
INSERT INTO `proyectos` VALUES (10, 'CONSTRUCCION DE COLEGIO', 'EL ALTO Z. NUEVOS HORIZONTES', '-16.50670833,-68.12584833 ', '2021-10-19 11:56:49', '2021-10-19 11:56:49');
INSERT INTO `proyectos` VALUES (11, 'CONTRUCION DE PLANTA DE AZUCAR', 'LA PAZ Z. GRAN PODER', '-16.5117952, -68.0689664', '2021-10-19 12:56:27', '2021-10-19 12:56:27');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_user_role_id_index`(`role_id`) USING BTREE,
  INDEX `role_user_user_id_index`(`user_id`) USING BTREE,
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (2, 1, 22, NULL, NULL);
INSERT INTO `role_user` VALUES (3, 1, 45, '2022-01-20 07:45:54', '2022-01-20 07:45:54');
INSERT INTO `role_user` VALUES (4, 5, 46, '2022-01-20 16:29:56', '2022-01-20 16:29:56');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `special` enum('all-access','no-access') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', 'admin', 'superUsuario', '2021-08-09 18:30:10', '2021-08-09 18:30:10', 'all-access');
INSERT INTO `roles` VALUES (5, 'GERENTE', 'GG', 'SOLO PARA EL GERENTE', '2022-01-20 16:29:48', '2022-01-20 16:29:48', NULL);

-- ----------------------------
-- Table structure for trabajadors
-- ----------------------------
DROP TABLE IF EXISTS `trabajadors`;
CREATE TABLE `trabajadors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int NOT NULL,
  `direccion` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proyectoid` int NOT NULL,
  `locallatlon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of trabajadors
-- ----------------------------
INSERT INTO `trabajadors` VALUES (3, 'JULIO ESTEBAN', 'MENDOZA QUISPE', 35, 'LA PAZ AV. DEL POETA', 'OBRERO', 7, '-16.5117952, -68.1377792', '2021-10-19 04:40:04', '2022-01-13 04:24:30');
INSERT INTO `trabajadors` VALUES (4, 'MARCELO', 'CHOQUE', 35, 'LA PAZ AV. DEL POETA', 'OBRERO', 8, '-16.515175,-68.130885   ', '2021-10-19 04:48:29', '2021-10-19 04:49:22');
INSERT INTO `trabajadors` VALUES (22, 'GONZALO', 'CARANI CONDORI', 30, 'EL ALTO Z. VILLA MERCEDEZ', 'OBRERO', 9, '-17.06408667,-69.189235', '2021-10-19 11:57:29', '2021-10-19 11:57:29');
INSERT INTO `trabajadors` VALUES (23, 'JORGE', 'MAMANI CHOQUE', 45, 'EL ALTO Z HORIZONTES CALLE 5', 'OBRERO', 11, '-16.5117952, -68.0689664', '2021-10-19 12:59:24', '2021-10-19 12:59:24');
INSERT INTO `trabajadors` VALUES (24, 'MARCELO', 'MAMANI MAMANI', 25, 'EL ALTO Z CUPILUPACA', 'OBRERO', 8, '-16.5322096, -68.2074776', '2022-01-20 06:16:29', '2022-01-20 06:16:29');
INSERT INTO `trabajadors` VALUES (25, 'FEDERICO', 'MENDOZA MAMANI', 30, 'EL ALTO Z. VILLA MERCEDEZ', 'OBRERO', 7, '-16.5322096, -68.2074776', '2022-01-20 06:16:50', '2022-01-20 06:16:50');
INSERT INTO `trabajadors` VALUES (26, 'MARCELO', 'CONTRERAS MENDOZA', 20, 'LA PAZ AV. DEL POETA', 'OBRERO', 11, '-16.5322096, -68.2074776', '2022-01-20 06:17:20', '2022-01-20 06:17:20');
INSERT INTO `trabajadors` VALUES (27, 'CARLOS', 'QUISPE QUISPE', 50, 'EL ALTO Z. MERCEDARIO', 'OBRERO', 9, '-16.5322096, -68.2074776', '2022-01-20 06:17:55', '2022-01-20 06:17:55');
INSERT INTO `trabajadors` VALUES (28, 'RUDDY', 'CONDORI', 30, 'EL ALTO HORIZONTES', 'OBRERO', 9, '-16.5322096, -68.2074776', '2022-01-20 06:18:28', '2022-01-20 06:18:28');
INSERT INTO `trabajadors` VALUES (29, 'ELOY', 'MONTES MAMANI', 30, 'EL ALTO VILLA PORVENIR', 'OBRERO', 10, '-16.5322096, -68.2074776', '2022-01-20 06:18:58', '2022-01-20 06:18:58');
INSERT INTO `trabajadors` VALUES (30, 'FERNANDO', 'QUISPE QUISPE', 25, 'EL ALTO SEGUENCOMA', 'OBRERO', 7, '-16.5322096, -68.2074776', '2022-01-20 06:19:39', '2022-01-20 06:19:39');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (22, 'JAZMIN', 'gonzalo.carani@gmail.com', '', 0, NULL, '$2y$10$YEV3hkgZkAKE5PI/AzMLVumV65nn2faDy5YDy1cCtwcxmR5KF3AoG', NULL, '2021-08-09 18:47:39', '2022-01-13 04:25:30');
INSERT INTO `users` VALUES (45, 'GONZALO', 'a@gmail.com', 'asd', 123, NULL, '$2y$10$CQpCdm4LlM7kNN.anoDQxuYt5Ok1WpfuVMHLgRY7rykcmhwG67p06', NULL, '2022-01-20 05:16:55', '2022-01-20 05:16:55');
INSERT INTO `users` VALUES (46, 'JAZMIN RAQUEL MENDOZA', 'raquelmendoza@gmail.com', 'EL ALTO ZONA RIO SECO', 6532154, NULL, '$2y$10$QGqFTXF.gsEEHxOwvGQT3eMrFBrAgKcQPmxlSeC6VDYFfOB65h3Ie', NULL, '2022-01-20 16:28:11', '2022-01-20 16:28:11');

SET FOREIGN_KEY_CHECKS = 1;
