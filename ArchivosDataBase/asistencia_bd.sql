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

 Date: 04/03/2022 20:53:10
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
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coordenadas
-- ----------------------------
INSERT INTO `coordenadas` VALUES (22, '37', '-16.47149, -68.17721                              ', 'trabajador', '2022-02-05 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `coordenadas` VALUES (26, '13', '-16.554649, -68.6788', 'proyecto', '2022-02-02 03:58:48', '2022-03-02 03:58:48');
INSERT INTO `coordenadas` VALUES (28, '14', '-16.908095, -67.14162', 'proyecto', '2022-02-04 04:47:45', '2022-03-02 04:47:45');
INSERT INTO `coordenadas` VALUES (29, '15', '-16.463567, -67.452886', 'proyecto', '2022-02-05 04:48:28', '2022-03-02 04:48:28');
INSERT INTO `coordenadas` VALUES (30, '38', '-16.5322094, -68.2074774', 'trabajador', '2022-02-06 06:53:18', '2022-03-02 06:53:18');
INSERT INTO `coordenadas` VALUES (31, '37', '-16.5322094, -68.2074774', 'trabajador', '2022-02-07 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `coordenadas` VALUES (32, '37', '-16.5322094, -68.2074774', 'trabajador', '2022-02-08 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `coordenadas` VALUES (33, '37', '-16.5322094, -68.2074774', 'trabajador', '2022-02-09 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `coordenadas` VALUES (35, '37', '-16.5322094, -68.2074774', 'trabajador', '2022-02-10 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `coordenadas` VALUES (36, '37', '-16.5322094, -68.2074774', 'trabajador', '2022-02-11 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `coordenadas` VALUES (37, '38', '-16.5322094, -68.2074774', 'trabajador', '2022-02-07 06:53:18', '2022-03-02 06:53:18');
INSERT INTO `coordenadas` VALUES (45, '38', '-16.47830, -68.17675                              ', 'trabajador', '2022-02-08 06:53:18', '2022-03-02 06:53:18');
INSERT INTO `coordenadas` VALUES (46, '39', '-16.47053, -68.17465                              ', 'trabajador', '2022-03-04 15:25:35', '2022-03-04 15:25:35');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permisofaltas
-- ----------------------------
INSERT INTO `permisofaltas` VALUES (3, 37, 'PERMISO', 'ESTA HOSPITALIZADO EN LA CLINICA SAGRADO CORAZON DE JESUS POR UN ACCIDENDE TE TRANSITO', '2022-02-06 04:28:54', '2022-03-02 04:28:54');
INSERT INTO `permisofaltas` VALUES (4, 38, 'FALTA', 'NO FUE A TRABAJAR', '2022-02-05 13:41:34', '2022-03-04 13:41:34');
INSERT INTO `permisofaltas` VALUES (5, 38, 'PERMISO', 'NO DEJO NINGUN MOTIVO PARA FALTAR', '2022-02-09 13:43:08', '2022-03-04 13:46:57');
INSERT INTO `permisofaltas` VALUES (6, 38, 'PERMISO', 'ESTA HOSPITALIZADO POR UN ACCIDENTE', '2022-02-10 13:47:19', '2022-03-04 13:47:19');
INSERT INTO `permisofaltas` VALUES (7, 38, 'FALTA', 'FALTO AL TRABAJO SIN NINGUN MOTIVO', '2022-02-11 13:58:33', '2022-03-04 13:58:33');

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
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `superficieutil` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechai` date NOT NULL,
  `fechaf` date NOT NULL,
  `fechae` date NOT NULL,
  `latlon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proyectos
-- ----------------------------
INSERT INTO `proyectos` VALUES (13, 'VIVIENDA SOCIAL TIAHUANACU', 'CONSTRUCCIÓN NUEVA', 'TIAHUANACO', 'BAÑO, COCINA, COMEDOR, 3 DORMITORIOS, SALA COMEDOR', 'TODO EN CONJUNTO', '2022-03-09', '2022-03-24', '2022-04-06', '-16.5347328, -68.2262528', '2022-01-02 03:58:48', '2022-01-02 03:58:48');
INSERT INTO `proyectos` VALUES (14, 'VIVIENDA SOCIAL INQUISIVI', 'CONSTRUCCIÓN NUEVA', 'INQUISIVI PLAZA PRINCIPAL', 'BAÑO, COCINA, COMEDOR, 3 DORMITORIOS, SALA COMEDOR', 'TODA LA CONSTRUCCION', '2022-04-15', '2022-03-31', '2022-04-09', '-16.908095, -67.14162', '2022-02-02 04:47:45', '2022-03-04 15:41:23');
INSERT INTO `proyectos` VALUES (15, 'VIVIENDA SOCIAL IRUPANA', 'CONSTRUCCIÓN NUEVA', 'ZONA MERCEDARIO', 'BAÑO, COCINA, COMEDOR, 3 DORMITORIOS, SALA COMEDOR', 'TODA LA CONSTRUCCION', '2022-03-14', '2022-04-30', '2022-06-01', '-16.463567, -67.452886', '2022-03-02 04:48:28', '2022-03-04 15:36:26');

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES (2, 1, 22, NULL, NULL);
INSERT INTO `role_user` VALUES (3, 1, 45, '2022-01-20 07:45:54', '2022-01-20 07:45:54');
INSERT INTO `role_user` VALUES (5, 1, 46, '2022-02-16 15:53:14', '2022-02-16 15:53:14');

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
  `idusuario` bigint NOT NULL,
  `cargo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `proyectoid` bigint NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of trabajadors
-- ----------------------------
INSERT INTO `trabajadors` VALUES (37, 46, 'JEFE DE PERSONAL', 13, '2022-03-02 03:59:34', '2022-03-02 03:59:34');
INSERT INTO `trabajadors` VALUES (38, 45, 'OBRERO', 14, '2022-03-02 06:53:18', '2022-03-02 06:53:18');
INSERT INTO `trabajadors` VALUES (39, 22, 'OBRERO', 13, '2022-03-04 15:25:35', '2022-03-04 15:25:35');

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
INSERT INTO `users` VALUES (22, 'PELIPE QUISPE CHOQUE', 'gonzalo.carani@gmail.com', 'EL ALTO Z. RIO SECO CALLE TAHUANTINSUYO', 0, NULL, '$2y$10$YEV3hkgZkAKE5PI/AzMLVumV65nn2faDy5YDy1cCtwcxmR5KF3AoG', NULL, '2021-08-09 18:47:39', '2022-03-04 15:25:18');
INSERT INTO `users` VALUES (45, 'MARIO ALANOCA MAMANI', 'a@gmail.com', 'EL ALTO Z. HUAYNAPOTOSI ENTRE CALLE 1 Y 2', 123, NULL, '$2y$10$CQpCdm4LlM7kNN.anoDQxuYt5Ok1WpfuVMHLgRY7rykcmhwG67p06', NULL, '2022-01-20 05:16:55', '2022-03-04 15:25:00');
INSERT INTO `users` VALUES (46, 'JAZMIN RAQUEL MENDOZA', 'raquelmendoza@gmail.com', 'EL ALTO ZONA RIO SECO', 6532154, NULL, '$2y$10$QGqFTXF.gsEEHxOwvGQT3eMrFBrAgKcQPmxlSeC6VDYFfOB65h3Ie', NULL, '2022-01-20 16:28:11', '2022-01-20 16:28:11');

SET FOREIGN_KEY_CHECKS = 1;
