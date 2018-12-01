/*
 Navicat Premium Data Transfer

 Source Server         : shahab
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : sys

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 26/11/2018 17:43:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wp_sst_appearance
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_appearance`;
CREATE TABLE `wp_sst_appearance`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `style` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_sst_block
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_block`;
CREATE TABLE `wp_sst_block`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `required_field_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `max_extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `appearance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `default_pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `show_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `hide_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_block
-- ----------------------------
INSERT INTO `wp_sst_block` VALUES (1, 'اشخاص', 'ashkhas', '10,1-5,9,6-8,11', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (2, 'تعامل', 'taamol', '201', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (3, 'ثبت تعامل افراد', 'taamol_ba_sherkat', '301-302', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (4, 'آدرس تلفن', 'address_phone', '401-406', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (10, 'خودرو', 'khodro', '101-111,114-127,143,128-142,112-113', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (21, 'قرارداد تحویل', 'gharardad_tahvil', '535,502-502,505,508-509,511-513,526,514,529,516,518,533,536-537', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (22, 'قرارداد عودت', 'gharardad_odat', '510,515,517,519,534,520-523,524,525,527,530-532', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (23, 'صورتحساب', 'soorathesab', '601,607,602-604,608,605-606', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (24, 'بیمه', 'bime', '701-709', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (25, 'جی پی اس', 'gps', '721-729', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (26, 'سرویس و تعمیرات', 'servis', '741-750', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (27, 'تحویل عودت', 'tahvil_odat', '800-803', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (28, 'صورتحساب بین افراد', 'soorathesab_bein_ashkhas', '901,907,903,904,902,908,905,906', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (29, 'تعمیرات مورد نیاز', 'servis_tamirat_morede_niyaz', '1001-1012', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (30, 'ثبت مکانیک و لوازم فروش', 'ashkhas_mechanic', '1101-1102', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (31, 'آدرس و تلفن مکانیک و لوازم فروش', 'ashkhas_mechanic_address_phone', '1201-1204', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (32, 'صورتحساب بین افراد با واسطه', 'soorathesab_bein_ashkhas_ba_vaseteh', '901,907,903,904,902,908,905', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_block` VALUES (33, 'دعاوی', 'daavi', '1301-1319', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_condition`;
CREATE TABLE `wp_sst_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `next_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `goto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_sst_data_action
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_data_action`;
CREATE TABLE `wp_sst_data_action`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `insert_reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `extra_special` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `colval_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `default_file_destination` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `allow_duplicate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `func_before` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `func_after` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 125 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_data_action
-- ----------------------------
INSERT INTO `wp_sst_data_action` VALUES (1, 'اشخاص', 'ashkhas', 'simple', 'ref_ashkhas', 'rent_ashkhas', '', '1-8,17,20-21,9,18,19', NULL, 'ashkhas_kode_meli', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (2, 'تعامل', 'taamol', 'simple', 'ref_taamol', 'rent_taamol', '', '201,9,18,19', NULL, 'taamol_taamol', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (3, 'ثبت تعامل افراد', 'taamol_ba_sherkat', 'simple', 'ref_taamol_ba_sherkat', 'rent_taamol_ba_sherkat', '', '301-302,9,18,19', NULL, 'taamol_ba_sherkat_ashkhas_id,taamol_ba_sherkat_noe_taamol', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (4, 'اشخاص-ثبت تعامل افراد', 'ashkhas_taamol_ba_sherkat', 'simple', 'ref_ashkhas_taamol_ba_sherkat', 'rent_taamol_ba_sherkat', '', '10-11,9,18,19', NULL, 'taamol_ba_sherkat_ashkhas_id,taamol_ba_sherkat_noe_taamol', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (5, 'آدرس تلفن', 'address_phone', 'simple', 'ref_address_phone', 'rent_address_phone', '', '401-406,9,18,19', NULL, 'address_phone_phone', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (6, 'اشخاص-آدرس تلفن', 'ashkhas_address_phone', 'simple', 'ref_ashkhas_address_phone', 'rent_address_phone', '', '12-16,9,18,19', NULL, 'yes', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (10, 'خودرو', 'khodro', 'simple', 'ref_khodro', 'rent_khodro', '', '101-143,9,18,19', NULL, 'khodro_shomare_vin', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (20, 'قرارداد', 'gharardad', 'simple', 'ref_gharardad', 'rent_gharardad', '', '535,501-502,505,508-526,528-534,536-537,9,18,19', NULL, 'gharardad_shomare_gharardad', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (21, 'قرارداد-محاسبات روز خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_rooz_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_rooz_mostajer', 'rent_soorathesab', '', '2701-2708,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (22, 'قرارداد-محاسبات تاخیر خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_takhir_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_takhir_mostajer', 'rent_soorathesab', '', '2711-2718,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (23, 'قرارداد-محاسبات کیلومتر خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_odo_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_odo_mostajer', 'rent_soorathesab', '', '2721-2728,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (24, 'قرارداد-محاسبات بنزین خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_benzin_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_benzin_mostajer', 'rent_soorathesab', '', '2731-2738,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (25, 'قرارداد-محاسبات ایاب و ذهاب خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_ayab_zahab_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_ayab_zahab_mostajer', 'rent_soorathesab', '', '2741-2748,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (26, 'قرارداد-محاسبات کارواش خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_karvash_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_karvash_mostajer', 'rent_soorathesab', '', '2751-2758,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (27, 'قرارداد-محاسبات تخفیف خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_takhfif_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_takhfif_mostajer', 'rent_soorathesab', '', '2761-2768,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (28, 'قرارداد-محاسبات خسارت خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_baravorde_khesarat_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_baravorde_khesarat_mostajer', 'rent_soorathesab', '', '2771-2778,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (29, 'قرارداد-محاسبات خواب خسارت خودرو-مستاجر', 'gharardad_soorathesab_mohasebeye_baravorde_khabe_khesarat_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_baravorde_khabe_khesarat_mostajer', 'rent_soorathesab', '', '2781-2788,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (31, 'قرارداد-ثبت تحویل', 'gharardad_tahvil_odat_tahvil', 'simple', 'ref_gharardad_tahvil_odat_tahvil', 'rent_tahvil_odat', '', '791-794,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (32, 'قرارداد-ثبت عودت', 'gharardad_tahvil_odat_tahvil', 'simple', 'ref_gharardad_tahvil_odat_tahvil', 'rent_tahvil_odat', '', '801-804,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (50, 'صورتحساب با شرکت - ثبت بین شرکت ', 'soorathesab', 'simple', 'ref_soorathesab', 'rent_soorathesab', '', '601-609,9,18,19', NULL, NULL, 'sst_insert_in_soorathesab_by_query($vals[\'soorathesab_babat\']);', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (60, 'بیمه', 'bime', 'simple', 'ref_bime', 'rent_bime', '', '1501-1509,9,18,19', NULL, 'bime_shomareh_bime', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (70, 'جی پی اس', 'gps', 'simple', 'ref_gps', 'rent_gps', '', '1601-1609,9,18,19', NULL, 'gps_shomareh_sim', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (80, 'سرویس و تعمیرات', 'servis', 'simple', 'ref_servis', 'rent_servis', '', '1701-1710,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (81, 'تحویل عودت', 'tahvil_odat', 'simple', 'ref_tahvil_odat', 'rent_tahvil_odat', '', '1800-1803,9,18,19', NULL, 'tahvil_odat_tarikh,tahvil_odat_khodro_id', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (82, 'صورتحساب بین افراد بی واسطه', 'soorathesab_bein_ashkhas_bi_vasehteh', 'simple', 'ref_soorathesab_bein_ashkhas', 'rent_soorathesab', '', '901-908,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (30, 'قرارداد-محاسبات سفته -مستاجر', 'gharardad_soorathesab_mohasebeye_softeh_mostajer', 'simple', 'ref_gharardad_soorathesab_mohasebeye_softeh_mostajer', 'rent_soorathesab', '', '2791-2798,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (90, 'تعمیرات مورد نیاز', 'servis_tamirat_morede_niyaz', 'simple', 'ref_servis_tamirat_morede_niyaz', 'rent_servis_tamirat_morede_niyaz', '', '3001-3012,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (100, 'ثبت مکانیک و لوازم فروش - اشخاص', 'ashkhas_mechanic_ashkhas', 'simple', 'ref_ashkhas_mechanic_ashkhas', 'rent_ashkhas', '', '3101-3102,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (101, 'ثبت مکانیک و لوازم فروش - تعامل', 'ashkhas_mechanic_taamol', 'simple', 'ref_ashkhas_mechanic_taamol', 'rent_taamol_ba_sherkat', '', '3151-3152,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (110, 'آدرس و تلفن مکانیک و لوازم فروش', 'ashkhas_mechanic_address_phone', 'simple', 'ref_ashkhas_mechanic_address_phone', 'rent_address_phone', '', '3201-3203,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (121, 'صورتحساب بین افراد با واسطه - بستانکار از شرکت', 'soorathesab_bein_ashkhas_ba_vasehteh_bestankar_az_sherkat', 'simple', 'ref_soorathesab_bein_ashkhas_ba_vasehteh_bestankar_az_sherkat', 'rent_soorathesab', '', '3301-3307,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (122, 'صورتحساب بین افراد با واسطه - بدهکار شرکت', 'soorathesab_bein_ashkhas_ba_vasehteh_bedehkar_be_sherkat', 'simple', 'ref_soorathesab_bein_ashkhas_ba_vasehteh_bedehkar_be_sherkat', 'rent_soorathesab', '', '3311-3317,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (123, 'صورتحساب بین افراد با واسطه - بین افراد', 'soorathesab_bein_ashkhas_ba_vasehteh_bein_ashkhas', 'simple', 'ref_soorathesab_bein_ashkhas_ba_vasehteh_bein_ashkhas', 'rent_soorathesab', '', '3321-3327,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action` VALUES (124, 'دعاوی', 'daavi', 'simple', 'ref_daavi', 'rent_daavi', '', '1401-1419,9,18,19', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_data_action_colval
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_data_action_colval`;
CREATE TABLE `wp_sst_data_action_colval`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `file_destination` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30007 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_data_action_colval
-- ----------------------------
INSERT INTO `wp_sst_data_action_colval` VALUES (1, 'نام', 'ashkhas_nam', 'variable', '', 'ashkhas_nam', '$vals[\'ashkhas_nam\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2, 'نام خانوادگی', 'ashkhas_name_khanevadegi', 'variable', '', 'ashkhas_name_khanevadegi', '$vals[\'ashkhas_name_khanevadegi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3, 'نام پدر', 'ashkhas_name_pedar', 'variable', '', 'ashkhas_name_pedar', '$vals[\'ashkhas_name_pedar\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (4, 'شماره شناسنامه', 'ashkhas_shomare_shenasname', 'variable', '', 'ashkhas_shomare_shenasname', '$vals[\'ashkhas_shomare_shenasname\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (5, 'کد ملی', 'ashkhas_kode_meli', 'variable', '', 'ashkhas_kode_meli', '$vals[\'ashkhas_kode_meli\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (6, 'صادره از', 'ashkhas_sadere_az', 'variable', '', 'ashkhas_sadere_az', '$vals[\'ashkhas_sadere_az\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (7, 'تصویر فرد', 'ashkhas_tasvire_fard', 'file', '', 'ashkhas_tasvire_fard', 'ashkhas_tasvire_fard', 'photos/ashkhas', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (8, 'توضیحات', 'ashkhas_tozihat', 'variable', '', 'ashkhas_tozihat', '$vals[\'ashkhas_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (9, 'save_id', 'save_id', 'variable', '', 'save_id', '$vals[\'save_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (10, 'نوع تعامل با شرکت-شخص', 'taamol_ba_sherkat_ashkhas_id', 'variable', '', 'taamol_ba_sherkat_ashkhas_id', '$vals[\'inserts\'][\'ref_ashkhas\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (11, 'نوع تعامل با شرکت-تعامل', 'taamol_ba_sherkat_noe_taamol', 'variable', '', 'taamol_ba_sherkat_noe_taamol', '$vals[\'taamol_ba_sherkat_noe_taamol\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (12, 'شخص', 'address_phone_ashkhas_id', 'variable', '', 'address_phone_ashkhas_id', '$vals[\'inserts\'][\'ref_ashkhas\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (13, 'نسبت/محل کار/منزل/موبایل', 'address_phone_nesbat', 'variable', '', 'address_phone_nesbat', '$vals[\'address_phone_nesbat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (14, 'آدرس', 'address_phone_address', 'variable', '', 'address_phone_address', '$vals[\'address_phone_address\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (15, 'تلفن', 'address_phone_phone', 'variable', '', 'address_phone_phone', '$vals[\'address_phone_phone\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (16, 'توضیحات', 'address_phone_tozihat', 'variable', '', 'address_phone_tozihat', '$vals[\'address_phone_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (17, 'تاریخ تولد', 'ashkhas_tarikhe_tavalod', 'variable', '', 'ashkhas_tarikhe_tavalod', '$vals[\'ashkhas_tarikhe_tavalod\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (18, 'آی دی کاربر', 'sabt_konande_id', 'variable', '', 'sabt_konande_id', '$user->ID', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (19, 'تاریخ ثبت', 'created', 'mysql_code', '', 'created', 'NOW()', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (20, 'معرف مشتری', 'ashkhas_moaref', 'variable', '', 'ashkhas_moaref', '$vals[\'ashkhas_moaref\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (21, 'وضعییت وصول حساب', 'ashkhas_vaziyat_hesab', 'variable', '', 'ashkhas_vaziyat_hesab', '$vals[\'ashkhas_vaziyat_hesab\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (101, 'نام مستعار خودرو', 'khodro_khodro', 'variable', '', 'khodro_khodro', '$vals[\'khodro_khodro\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (102, 'مدل', 'khodro_model', 'variable', '', 'khodro_model', '$vals[\'khodro_model\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (103, 'رنگ', 'khodro_rang', 'variable', '', 'khodro_rang', '$vals[\'khodro_rang\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (104, 'شماره شهربانی', 'khodro_shomare_shahrbani', 'variable', '', 'khodro_shomare_shahrbani', '$vals[\'khodro_shomare_shahrbani\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (105, 'شماره وین', 'khodro_shomare_vin', 'variable', '', 'khodro_shomare_vin', '$vals[\'khodro_shomare_vin\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (106, 'شماره شاسی', 'khodro_shomare_shasi', 'variable', '', 'khodro_shomare_shasi', '$vals[\'khodro_shomare_shasi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (107, 'شماره موتور', 'khodro_shomare_motor', 'variable', '', 'khodro_shomare_motor', '$vals[\'khodro_shomare_motor\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (108, 'بارکد کارت', 'khodro_shomare_barkode_kart', 'variable', '', 'khodro_shomare_barkode_kart', '$vals[\'khodro_shomare_barkode_kart\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (109, 'مالک', 'khodro_malek_id', 'variable', '', 'khodro_malek_id', '$vals[\'khodro_malek_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (110, 'صاحب امتیاز', 'khodro_saheb_emtiyaz_id', 'variable', '', 'khodro_saheb_emtiyaz_id', '$vals[\'khodro_saheb_emtiyaz_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (111, 'حجم باک', 'khodro_hajme_bak', 'variable', '', 'khodro_hajme_bak', '$vals[\'khodro_hajme_bak\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (112, 'توضیحات', 'khodro_tozihat', 'variable', '', 'khodro_tozihat', '$vals[\'khodro_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (113, 'وضعیت موجودی خودرو', 'khodro_vaziyat', 'variable', '', 'khodro_vaziyat', '$vals[\'khodro_vaziyat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (201, 'تعامل', 'taamol_taamol', 'variable', '', 'taamol_taamol', '$vals[\'taamol_taamol\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (301, 'شخص', 'taamol_ba_sherkat_ashkhas_id', 'variable', '', 'taamol_ba_sherkat_ashkhas_id', '$vals[\'taamol_ba_sherkat_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (302, 'نوع تعامل با شرکت', 'taamol_ba_sherkat_noe_taamol', 'variable', '', 'taamol_ba_sherkat_noe_taamol', '$vals[\'taamol_ba_sherkat_noe_taamol\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (401, 'شخص', 'address_phone_ashkhas_id', 'variable', '', 'address_phone_ashkhas_id', '$vals[\'address_phone_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (402, 'نام و نام خانوادگی', 'address_phone_nam', 'variable', '', 'address_phone_nam', '$vals[\'address_phone_nam\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (403, 'نسبت/محل کار/منزل/موبایل', 'address_phone_nesbat', 'variable', '', 'address_phone_nesbat', '$vals[\'address_phone_nesbat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (404, 'تلفن', 'address_phone_phone', 'variable', '', 'address_phone_phone', '$vals[\'address_phone_phone\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (405, 'آدرس', 'address_phone_address', 'variable', '', 'address_phone_address', '$vals[\'address_phone_address\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (406, 'توضیحات', 'address_phone_tozihat', 'variable', '', 'address_phone_tozihat', '$vals[\'address_phone_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (501, 'شماره قرارداد', 'gharardad_shomare_gharardad', 'variable', '', 'gharardad_shomare_gharardad', '$vals[\'gharardad_shomare_gharardad\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (502, 'مستاجر', 'gharardad_mostajer_id', 'variable', '', 'gharardad_mostajer_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (503, 'معرف مستاجر', 'gharardad_moaref_mostajer_id', 'variable', '', 'gharardad_moaref_mostajer_id', '$vals[\'gharardad_moaref_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (504, 'کمیسیون معرف مستاجر(روزانه)', 'gharardad_komision_moaref_mostajer', 'variable', '', 'gharardad_komision_moaref_mostajer', '$vals[\'gharardad_komision_moaref_mostajer\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (505, 'موجر', 'gharardad_mojer_id', 'variable', '', 'gharardad_mojer_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (506, 'معرف موجر', 'gharardad_moaref_mojer_id', 'variable', '', 'gharardad_moaref_mojer_id', '$vals[\'gharardad_moaref_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (507, 'کمیسیون معرف موجر(روزانه)', 'gharardad_komision_moaref_mojer', 'variable', '', 'gharardad_komision_moaref_mojer', '$vals[\'gharardad_komision_moaref_mojer\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (508, 'خودرو', 'gharardad_khodro_id', 'variable', '', 'gharardad_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (509, 'تاریخ و ساعت تحویل', 'gharardad_tarikhe_tahvil', 'variable', '', 'gharardad_tarikhe_tahvil', '$vals[\'gharardad_tarikhe_tahvil\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (510, 'تاریخ و ساعت عودت', 'gharardad_tarikhe_odat', 'variable', '', 'gharardad_tarikhe_odat', '$vals[\'gharardad_tarikhe_odat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (511, 'وعده تاریخ عودت', 'gharardad_vadeye_tarikhe_odat', 'variable', '', 'gharardad_vadeye_tarikhe_odat', '$vals[\'gharardad_vadeye_tarikhe_odat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (512, 'دوره زمانی اجاره', 'gharardad_doreye_zamani_ejareh', 'variable', '', 'gharardad_doreye_zamani_ejareh', '$vals[\'gharardad_doreye_zamani_ejareh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (513, 'قیمت (روزانه)', 'gharardad_gheymate', 'variable', '', 'gharardad_gheymate', '$vals[\'gharardad_gheymate\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (514, 'کیلومتر اولیه', 'gharardad_odo_avaliye', 'variable', '', 'gharardad_odo_avaliye', '$vals[\'gharardad_odo_avaliye\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (515, 'کیلومتر ثانویه', 'gharardad_odo_sanaviye', 'variable', '', 'gharardad_odo_sanaviye', '$vals[\'gharardad_odo_sanaviye\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (516, 'بنزین اولیه', 'gharardad_benzin_avaliye', 'variable', '', 'gharardad_benzin_avaliye', '$vals[\'gharardad_benzin_avaliye\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (517, 'بنزین ثانویه', 'gharardad_benzin_sanaviye', 'variable', '', 'gharardad_benzin_sanaviye', '$vals[\'gharardad_benzin_sanaviye\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (518, 'تحویل دهنده', 'gharardad_tahvil_dahande', 'variable', '', 'gharardad_tahvil_dahande', '$vals[\'gharardad_tahvil_dahande\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (519, 'تحویل گیرنده', 'gharardad_tahvil_girande', 'variable', '', 'gharardad_tahvil_girande', '$vals[\'gharardad_tahvil_girande\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (520, 'شرح خسارات ', 'gharardad_sharhe_khesarat', 'variable', '', 'gharardad_sharhe_khesarat', '$vals[\'gharardad_sharhe_khesarat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (521, 'برآورد خسارات', 'gharardad_baravorde_khesarat', 'variable', '', 'gharardad_baravorde_khesarat', '$vals[\'gharardad_baravorde_khesarat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (522, 'برآورد خواب خسارت', 'gharardad_baravorde_khabe_khesarat', 'variable', '', 'gharardad_baravorde_khabe_khesarat', '$vals[\'gharardad_baravorde_khabe_khesarat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (523, 'هزینه کارواش', 'gharardad_hazineye_karvash', 'variable', '', 'gharardad_hazineye_karvash', '$vals[\'gharardad_hazineye_karvash\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (524, 'هزینه ایاب ذهاب', 'gharardad_hazineye_ayab_zahab', 'variable', '', 'gharardad_hazineye_ayab_zahab', '$vals[\'gharardad_hazineye_ayab_zahab\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (525, 'توضیحات', 'gharardad_tozihat', 'variable', '', 'gharardad_tozihat', '$vals[\'gharardad_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (526, ' کیلومتر مجاز روزانه', 'gharardad_odo_mojaz', 'variable', '', 'gharardad_odo_mojaz', '$vals[\'gharardad_odo_mojaz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (527, 'نحوه تعامل با معرف مستاجر', 'gharardad_taamol_ba_moaref_mostajer', 'variable', '', 'gharardad_taamol_ba_moaref_mostajer', '$vals[\'gharardad_taamol_ba_moaref_mostajer\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (528, 'هزینه هر یک کیلومتر اضافه', 'gharardad_odo_hazine', 'variable', '', 'gharardad_odo_hazine', '$vals[\'gharardad_odo_hazine\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (529, 'محاسبه بنزین', 'gharardad_mohasebe_benzin', 'variable', '', 'gharardad_mohasebe_benzin', '$vals[\'gharardad_mohasebe_benzin\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (530, 'محاسبه اضافه کیلومتر', 'gharardad_mohasebe_odo', 'variable', '', 'gharardad_mohasebe_odo', '$vals[\'gharardad_mohasebe_odo\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (531, 'محاسبه تاخیر', 'gharardad_mohasebe_takhir', 'variable', '', 'gharardad_mohasebe_takhir', '$vals[\'gharardad_mohasebe_takhir\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (532, 'محل تحویل', 'gharardad_mahale_tahvil', 'variable', '', 'gharardad_mahale_tahvil', '$vals[\'gharardad_mahale_tahvil\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (533, 'محل عودت', 'gharardad_mahale_odat', 'variable', '', 'gharardad_mahale_odat', '$vals[\'gharardad_mahale_odat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (534, 'تخفیف', 'gharardad_takhfif', 'variable', '', 'gharardad_takhfif', '$vals[\'gharardad_takhfif\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (601, 'شخص', 'soorathesab_ashkhas_id', 'code', '', 'soorathesab_ashkhas_id', 'return sst_decide_shakhs_id_to_sabt_in_soorathesab($vals[\'soorathesab_ashkhas_id\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (602, 'تاریخ', 'soorathesab_tarikh', 'variable', '', 'soorathesab_tarikh', '$vals[\'soorathesab_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (603, 'واریز/بستانکاری', 'soorathesab_variz', 'variable', '', 'soorathesab_variz', '$vals[\'soorathesab_variz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (604, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'variable', '', 'soorathesab_bedehi', '$vals[\'soorathesab_bedehi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (605, 'بابت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_in_soorathesab_insert($vals[\'soorathesab_ashkhas_id\'],$vals[\'soorathesab_babat\']\r\n,true);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (606, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '$vals[\'soorathesab_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (607, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'soorathesab_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2701, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2702, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2703, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'rooz\', \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2704, 'بابت - اجاره روز', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_rooz(\r\n$vals[\'gharardad_tarikhe_tahvil\'],\r\n$vals[\'gharardad_tarikhe_odat\'],\r\n$vals[\'gharardad_gheymate\'],\r\n$vals[\'gharardad_doreye_zamani_ejareh\'],\r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'],\r\n$vals[\'save_id\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2705, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2706, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2707, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2711, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2712, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2713, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'takhir\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2714, 'بابت - تاخیر عودت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_takhir(\r\n$vals[\'gharardad_tarikhe_tahvil\'],\r\n$vals[\'gharardad_tarikhe_odat\'],\r\n$vals[\'gharardad_gheymate\'],\r\n$vals[\'gharardad_mohasebe_takhir\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2715, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2716, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2717, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2721, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2722, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2723, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'odo\', \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'], \r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2724, 'بابت - اضافه کیلومتر', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_odo(\r\n$vals[\'gharardad_tarikhe_tahvil\'], $vals[\'gharardad_tarikhe_odat\'],$vals[\'gharardad_odo_avaliye\'], $vals[\'gharardad_odo_sanaviye\'],$vals[\'gharardad_odo_mojaz\'],$vals[\'gharardad_odo_hazine\'],$vals[\'gharardad_mohasebe_odo\'],$vals[\'gharardad_gheymate\'],$vals[\'gharardad_khodro_id\'],$vals[\'gharardad_mohasebe_takhir\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2725, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2726, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2727, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (609, ' شخص اصلی', 'soorathesab_asli_ashkhas_id', 'code', '', 'soorathesab_asli_ashkhas_id', 'return sst_get_option(\'sherkat_id\');', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2731, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2732, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2733, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'benzin\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2734, 'بابت - کسر بنزین', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_benzin($vals[\'gharardad_benzin_avaliye\'],$vals[\'gharardad_benzin_sanaviye\'],$vals[\'gharardad_khodro_id\'],$vals[\'gharardad_mohasebe_benzin\']);\r\n', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2735, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2736, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2737, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2741, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2742, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2743, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'karvash\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2744, 'بابت - کارواش', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_karvash($vals[\'gharardad_hazineye_karvash\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2745, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2746, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2747, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2751, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2752, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2753, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'ayab_zahab\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2754, 'بابت - ایاب ذهاب', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_ayab_zahab($vals[\'gharardad_hazineye_ayab_zahab\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2755, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2756, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2757, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2761, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2762, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2763, 'برداشت/بدهکاری', 'soorathesab_variz', 'code', '', 'soorathesab_bedehi', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2764, 'بابت - تخفیف', 'soorathesab_babat', 'code', '', 'soorathesab_babat', ' return sst_text_sabt_takhfif($vals[\'gharardad_takhfif\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2765, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2766, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2767, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'takhfif\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2771, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2772, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2773, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'baravorde_khesarat\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2774, 'بابت - برآورد خسارت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', '\r\nreturn sst_text_sabt_baravorde_khesarat($vals[\'gharardad_baravorde_khesarat\'],$vals[\'gharardad_sharhe_khesarat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2775, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2776, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2777, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2781, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2782, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2783, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'baravorde_khabe_khesarat\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2784, 'بابت - برآورد خواب خسارت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_text_sabt_baravorde_khabe_khesarat($vals[\'gharardad_baravorde_khabe_khesarat\'],$vals[\'gharardad_sharhe_khesarat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2785, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2786, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2787, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2791, 'شخص', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2792, 'تاریخ', 'soorathesab_tarikh', 'code', '', 'soorathesab_tarikh', 'return sst_remove_time($vals[\'gharardad_tarikhe_odat\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2793, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'code', '', 'soorathesab_bedehi', 'return sst_gharardad_insert_hesab (\r\nfalse,\r\n\'softeh\',  \r\n$vals[\'gharardad_mostajer_id\'],\r\n$vals[\'gharardad_mojer_id\'],\r\n$vals[\'gharardad_khodro_id\'], \r\n$vals[\'gharardad_tarikhe_tahvil\'], \r\n$vals[\'gharardad_tarikhe_odat\'], \r\n$vals[\'gharardad_gheymate\'], \r\n$vals[\'gharardad_odo_mojaz\'], \r\n$vals[\'gharardad_odo_avaliye\'], \r\n$vals[\'gharardad_odo_sanaviye\'], \r\n$vals[\'gharardad_odo_hazine\'], \r\n$vals[\'gharardad_benzin_avaliye\'], \r\n$vals[\'gharardad_benzin_sanaviye\'], \r\n$vals[\'gharardad_sharhe_khesarat\'], \r\n$vals[\'gharardad_baravorde_khesarat\'], \r\n$vals[\'gharardad_baravorde_khabe_khesarat\'], \r\n$vals[\'gharardad_hazineye_karvash\'], \r\n$vals[\'gharardad_hazineye_ayab_zahab\'], \r\n$vals[\'gharardad_takhfif\'] , \r\n$vals[\'gharardad_softeh\'] , \r\n$vals[\'gharardad_mohasebe_benzin\'],\r\n$vals[\'gharardad_mohasebe_odo\'] , \r\n$vals[\'gharardad_mohasebe_takhir\'], \r\n$vals[\'gharardad_hazineye_softeh\'], \r\n$vals[\'gharardad_doreye_zamani_ejareh\']\r\n);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2794, 'بابت - هزینه سفته', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return \'هزینه سفته\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2795, 'توضیحات', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2796, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2797, 'واریز/بستانکاری', 'soorathesab_variz', 'code', '', 'soorathesab_variz', 'return \'\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2798, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (791, 'تحویل گیرنده - تحویل', 'tahvil_odat_ashkhas_id', 'variable', '', 'tahvil_odat_ashkhas_id', '$vals[\'gharardad_mostajer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (792, 'خودرو', 'tahvil_odat_khodro_id', 'variable', '', 'tahvil_odat_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (793, 'ساعت و تاریخ', 'tahvil_odat_tarikh', 'variable', '', 'tahvil_odat_tarikh', '$vals[\'gharardad_tarikhe_tahvil\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (794, 'بابت/توضیحات', 'tahvil_odat_tozihat', 'variable', '', 'tahvil_odat_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (801, 'تحویل گیرنده - عودت', 'tahvil_odat_ashkhas_id', 'code', '', 'tahvil_odat_ashkhas_id', 'return sst_gharardad_insert_odat_ashkhas( $vals[\'gharardad_tahvil_girande\'] , $vals[\'gharardad_mahale_odat\'] );', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (802, 'خودرو', 'tahvil_odat_khodro_id', 'variable', '', 'tahvil_odat_khodro_id', '$vals[\'gharardad_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (803, 'ساعت و تاریخ', 'tahvil_odat_tarikh', 'variable', '', 'tahvil_odat_tarikh', '$vals[\'gharardad_tarikhe_tahvil\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (804, 'بابت/توضیحات', 'tahvil_odat_tozihat', 'variable', '', 'tahvil_odat_tozihat', '\'ثبت اتوماتیک سیستم\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1501, 'خودرو', 'bime_khodro_id', 'variable', '', 'bime_khodro_id', '$vals[\'bime_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1502, 'نوع بیمه', 'bime_noe_bime', 'variable', '', 'bime_noe_bime', '$vals[\'bime_noe_bime\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1503, 'شرکت بیمه', 'bime_sherkate_bime', 'variable', '', 'bime_sherkate_bime', '$vals[\'bime_sherkate_bime\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1504, 'کد نمایندگی', 'bime_kode_namyandegi', 'variable', '', 'bime_kode_namyandegi', '$vals[\'bime_kode_namyandegi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1505, 'شماره بیمه نامه', 'bime_shomareh_bime', 'variable', '', 'bime_shomareh_bime', '$vals[\'bime_shomareh_bime\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1506, 'تاریخ انقضا', 'bime_tarikhe_engheza', 'variable', '', 'bime_tarikhe_engheza', '$vals[\'bime_tarikhe_engheza\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1507, 'تصویر بیمه', 'bime_tasvire_bime', 'file', '', 'bime_tasvire_bime', 'bime_tasvire_bime', 'photos/bime/bime', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1508, 'تصویر گواهی صدور', 'bime_tasvire_govahi_sodoor', 'file', '', 'bime_tasvire_govahi_sodoor', 'bime_tasvire_govahi_sodoor', 'photos/bime/govahi_sodoor', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1509, 'توضیحات', 'bime_tozihat', 'variable', '', 'bime_tozihat', '$vals[\'bime_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1601, 'خودرو', 'gps_khodro_id', 'variable', '', 'gps_khodro_id', '$vals[\'gps_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1602, 'نوع دستگاه', 'gps_noe_gps', 'variable', '', 'gps_noe_gps', '$vals[\'gps_noe_gps\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1603, 'شماره سیم کارت', 'gps_shomareh_sim', 'variable', '', 'gps_shomareh_sim', '$vals[\'gps_shomareh_sim\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1604, 'شماره سریال دستگاه', 'gps_shomareh_serial', 'variable', '', 'gps_shomareh_serial', '$vals[\'gps_shomareh_serial\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1605, 'محل نصب', 'gps_mahale_nasb', 'variable', '', 'gps_mahale_nasb', '$vals[\'gps_mahale_nasb\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1606, 'قطع کن', 'gps_ghatkon', 'variable', '', 'gps_ghatkon', '$vals[\'gps_ghatkon\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1607, 'برق مستقیم', 'gps_barghe_mostaghim', 'variable', '', 'gps_barghe_mostaghim', '$vals[\'gps_barghe_mostaghim\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1608, 'شنود', 'gps_shenood', 'variable', '', 'gps_shenood', '$vals[\'gps_shenood\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1609, 'توضیحات', 'gps_tozihat', 'variable', '', 'gps_tozihat', '$vals[\'gps_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1701, 'خودرو', 'servis_khodro_id', 'variable', '', 'servis_khodro_id', '$vals[\'servis_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1702, 'نوع سرویس / تعمیر', 'servis_noe_servis', 'variable', '', 'servis_noe_servis', '$vals[\'servis_noe_servis\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1703, 'شرح سرویس / تعمیر', 'servis_sharh', 'variable', '', 'servis_sharh', '$vals[\'servis_sharh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1704, 'کیلومتر', 'servis_kilometer', 'variable', '', 'servis_kilometer', '$vals[\'servis_kilometer\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1705, 'تاریخ', 'servis_tarikh', 'variable', '', 'servis_tarikh', '$vals[\'servis_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1706, 'محل سرویس/تعمیر', 'servis_mahale_servis', 'variable', '', 'servis_mahale_servis', '$vals[\'servis_mahale_servis\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1707, 'مراجعه کننده به سرویس/تعمیر کار', 'servis_servis_konnadeh_id', 'variable', '', 'servis_servis_konnadeh_id', '$vals[\'servis_servis_konnadeh_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1708, 'هزینه کل', 'servis_hazine', 'variable', '', 'servis_hazine', '$vals[\'servis_hazine\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1709, 'تصویر فاکتور', 'servis_tasvire_faktor', 'file', '', 'servis_tasvire_faktor', 'servis_tasvire_faktor', 'photos/factor', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1710, 'توضیحات', 'servis_tozihat', 'variable', '', 'servis_tozihat', '$vals[\'servis_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1800, 'تحویل گیرنده', 'tahvil_odat_ashkhas_id', 'variable', '', 'tahvil_odat_ashkhas_id', '$vals[\'tahvil_odat_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1801, 'خودرو', 'tahvil_odat_khodro_id', 'variable', '', 'tahvil_odat_khodro_id', '$vals[\'tahvil_odat_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1802, 'ساعت و تاریخ', 'tahvil_odat_tarikh', 'variable', '', 'tahvil_odat_tarikh', '$vals[\'tahvil_odat_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1803, 'بابت/توضیحات', 'tahvil_odat_tozihat', 'variable', '', 'tahvil_odat_tozihat', '$vals[\'tahvil_odat_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (114, 'برند', 'khodro_brand', 'variable', '', 'khodro_brand', '$vals[\'khodro_brand\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (115, 'نام اصلی خودرو', 'khodro_nam', 'variable', '', 'khodro_nam', '$vals[\'khodro_nam\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (116, 'کلاس', 'khodro_class', 'variable', '', 'khodro_class', '$vals[\'khodro_class\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (117, 'حجم موتور', 'khodro_hajme_motor', 'variable', '', 'khodro_hajme_motor', '$vals[\'khodro_hajme_motor\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (118, 'نوع گیربکس', 'khodro_dande', 'variable', '', 'khodro_dande', '$vals[\'khodro_dande\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (119, 'مصرف بنزین', 'khodro_masraf', 'variable', '', 'khodro_masraf', '$vals[\'khodro_masraf\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (120, 'تعداد سرنشین', 'khodro_sarneshin', 'variable', '', 'khodro_sarneshin', '$vals[\'khodro_sarneshin\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (121, 'تعداد درب', 'khodro_tedad_dar', 'variable', '', 'khodro_tedad_dar', '$vals[\'khodro_tedad_dar\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (122, 'آپشهای اضافه', 'khodro_option', 'variable', '', 'khodro_option', '$vals[\'khodro_option\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (123, 'کیلومتر مجاز', 'khodro_odo_mojaz', 'variable', '', 'khodro_odo_mojaz', '$vals[\'khodro_odo_mojaz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (124, 'قیمت روزانه', 'khodro_daily_price', 'variable', '', 'khodro_daily_price', '$vals[\'khodro_daily_price\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (125, 'قیمت هفتگی', 'khodro_weekly_price', 'variable', '', 'khodro_weekly_price', '$vals[\'khodro_weekly_price\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (126, 'قیمت پانزده روزه', 'khodro_half_monthly_price', 'variable', '', 'khodro_half_monthly_price', '$vals[\'khodro_half_monthly_price\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (127, 'قیمت ماهیانه', 'khodro_monthly_price', 'variable', '', 'khodro_monthly_price', '$vals[\'khodro_monthly_price\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (608, 'تصویر سند صورتحساب', 'soorathesab_sanad', 'file', '', 'soorathesab_sanad', 'soorathesab_sanad', 'photos/soorathesab', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (128, 'تصویر خودرو جلو', 'khodro_img_front', 'file', '', 'khodro_img_front', 'khodro_img_front', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (129, 'تصویر خودرو عقب', 'khodro_img_back', 'file', '', 'khodro_img_back', 'khodro_img_back', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (130, 'تصویر خودرو بغل', 'khodro_img_side', 'file', '', 'khodro_img_side', 'khodro_img_side', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (131, 'تصویر خودرو سه رخ جلو', 'khodro_img_front_prespective', 'file', '', 'khodro_img_front_prespective', 'khodro_img_front_prespective', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (132, 'تصویر خودرو سه رخ عقب', 'khodro_img_back_prespective', 'file', '', 'khodro_img_back_prespective', 'khodro_img_back_prespective', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (133, 'تصویر خودرو داخلی', 'khodro_img_interior', 'file', '', 'khodro_img_interior', 'khodro_img_interior', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (134, 'تصویر خودرو 1', 'khodro_img_1', 'file', '', 'khodro_img_1', 'khodro_img_1', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (135, 'تصویر خودرو 2', 'khodro_img_2', 'file', '', 'khodro_img_2', 'khodro_img_2', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (136, 'تصویر خودرو 3', 'khodro_img_3', 'file', '', 'khodro_img_3', 'khodro_img_3', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (137, 'تصویر خودرو 4', 'khodro_img_4', 'file', '', 'khodro_img_4', 'khodro_img_4', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (138, 'تصویر خودرو 5', 'khodro_img_5', 'file', '', 'khodro_img_5', 'khodro_img_5', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (139, 'تصویر خودرو  6', 'khodro_img_6', 'file', '', 'khodro_img_6', 'khodro_img_6', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (140, 'تصویر خودرو 7', 'khodro_img_7', 'file', '', 'khodro_img_7', 'khodro_img_7', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (141, 'تصویر خودرو 8', 'khodro_img_8', 'file', '', 'khodro_img_8', 'khodro_img_8', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (142, 'تصویر خودرو 9', 'khodro_img_9', 'file', '', 'khodro_img_9', 'khodro_img_9', 'photos/cars', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (143, 'درصد تخفیف', 'khodro_takhfif', 'variable', '', 'khodro_takhfif', '$vals[\'khodro_takhfif\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (535, 'چک شد', 'gharardad_check', 'variable', '', 'gharardad_check', '$vals[\'gharardad_check\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (901, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'soorathesab_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (902, 'بدهکار/برداشت کننده ', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'soorathesab_asli_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (903, 'تاریخ', 'soorathesab_tarikh', 'variable', '', 'soorathesab_tarikh', '$vals[\'soorathesab_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (904, 'واریز/بستانکاری', 'soorathesab_variz', 'variable', '', 'soorathesab_variz', '$vals[\'soorathesab_variz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (905, 'بابت', 'soorathesab_babat', 'variable', '', 'soorathesab_babat', '$vals[\'soorathesab_babat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (906, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'variable', '', 'soorathesab_tozihat', '$vals[\'soorathesab_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (907, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'soorathesab_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (908, 'تصویر سند صورتحساب', 'soorathesab_sanad', 'file', '', 'soorathesab_sanad', 'soorathesab_sanad', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2708, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2718, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2728, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2738, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2748, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2758, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2768, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2778, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (2788, 'شخص اصلی', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'gharardad_mojer_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (536, 'هزینه سفته', 'gharardad_hazineye_softeh', 'variable', '', 'gharardad_hazineye_softeh', '$vals[\'gharardad_hazineye_softeh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (537, 'ودیعه', 'gharardad_vadieh', 'variable', '', 'gharardad_vadieh', '$vals[\'gharardad_vadieh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3001, 'تاریخ اعلام', 'servis_tamirat_morede_niyaz_tarikh_elam', 'variable', '', 'servis_tamirat_morede_niyaz_tarikh_elam', '$vals[\'servis_tamirat_morede_niyaz_tarikh_elam\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3002, 'تاریخ شروع تعمیر', 'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir', 'variable', '', 'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir', '$vals[\'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3003, 'تاریخ پایان تعمیر', 'servis_tamirat_morede_niyaz_tarikh_payane_tamir', 'variable', '', 'servis_tamirat_morede_niyaz_tarikh_payane_tamir', '$vals[\'servis_tamirat_morede_niyaz_tarikh_payane_tamir\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3004, 'خودرو', 'servis_tamirat_morede_niyaz_khodro_id', 'variable', '', 'servis_tamirat_morede_niyaz_khodro_id', '$vals[\'servis_tamirat_morede_niyaz_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3005, 'شرح سرویس', 'servis_tamirat_morede_niyaz_sharhe_servis', 'variable', '', 'servis_tamirat_morede_niyaz_sharhe_servis', '$vals[\'servis_tamirat_morede_niyaz_sharhe_servis\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3006, 'وضعییت تعمیر', 'servis_tamirat_morede_niyaz_vaziyat', 'variable', '', 'servis_tamirat_morede_niyaz_vaziyat', '$vals[\'servis_tamirat_morede_niyaz_vaziyat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3007, 'کیلومتر انجام', 'servis_tamirat_morede_niyaz_kilometer_anjam', 'variable', '', 'servis_tamirat_morede_niyaz_kilometer_anjam', '$vals[\'servis_tamirat_morede_niyaz_kilometer_anjam\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3008, 'انجام دهنده', 'servis_tamirat_morede_niyaz_anjam_dahandeh', 'variable', '', 'servis_tamirat_morede_niyaz_anjam_dahandeh', '$vals[\'servis_tamirat_morede_niyaz_anjam_dahandeh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3009, 'مکانیک', 'servis_tamirat_morede_niyaz_mechanic', 'variable', '', 'servis_tamirat_morede_niyaz_mechanic', '$vals[\'servis_tamirat_morede_niyaz_mechanic\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3010, 'هزینه', 'servis_tamirat_morede_niyaz_hazineh', 'variable', '', 'servis_tamirat_morede_niyaz_hazineh', '$vals[\'servis_tamirat_morede_niyaz_hazineh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3011, 'تصویر فاکتور', 'servis_tamirat_morede_niyaz_tasvire_faktor', 'file', '', 'servis_tamirat_morede_niyaz_tasvire_faktor', '$vals[\'servis_tamirat_morede_niyaz_tasvire_faktor\']', 'photos/faktor', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3012, 'توضیحات', 'servis_tamirat_morede_niyaz_tozihat', 'variable', '', 'servis_tamirat_morede_niyaz_tozihat', '$vals[\'servis_tamirat_morede_niyaz_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3101, 'نام مکانیک / فروشگاه', 'ashkhas_name_khanevadegi', 'variable', '', 'ashkhas_name_khanevadegi', '$vals[\'ashkhas_name_khanevadegi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3151, 'تعامل', 'taamol_ba_sherkat_noe_taamol', 'variable', '', 'taamol_ba_sherkat_noe_taamol', '$vals[\'taamol_ba_sherkat_noe_taamol\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3152, 'نام مکانیک / فروشگاه id', 'taamol_ba_sherkat_ashkhas_id', 'variable', '', 'taamol_ba_sherkat_ashkhas_id', '$vals[\'inserts\'][\'ref_ashkhas_mechanic_ashkhas\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3102, 'وضعییت وصول', 'ashkhas_vaziyat_hesab', 'code', '', 'ashkhas_vaziyat_hesab', 'return \'قابل وصول\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3201, 'شماره تماس', 'address_phone_phone', 'variable', '', 'address_phone_phone', '$vals[\'address_phone_phone\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3202, 'نسبت', 'address_phone_nesbat', 'variable', '', 'address_phone_nesbat', '$vals[\'address_phone_nesbat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3203, 'آدرس', 'address_phone_address', 'variable', '', 'address_phone_address', '$vals[\'address_phone_address\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3204, 'نام مکانیک / فروشگاه id', 'address_phone_ashkhas_id', 'variable', '', 'address_phone_ashkhas_id', '$vals[\'address_phone_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3301, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'soorathesab_asli_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3302, 'بدهکار/برداشت کننده ', 'soorathesab_asli_ashkhas_id', 'code', '', 'soorathesab_asli_ashkhas_id', 'return sst_get_option(\'sherkat_id\');', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3303, 'تاریخ', 'soorathesab_tarikh', 'variable', '', 'soorathesab_tarikh', '$vals[\'soorathesab_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3304, 'بدهی', 'soorathesab_bedehi', 'variable', '', 'soorathesab_bedehi', '$vals[\'soorathesab_variz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3305, 'بابت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_sabt_tozihat_for_soorathesab_bein_ashkhas_ba_vaseteh(\'bedehi\',$vals[\'soorathesab_babat\'],$vals[\'soorathesab_ashkhas_id\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3306, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'code', '', 'soorathesab_tozihat', 'return \'وصول و واریز\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3307, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'soorathesab_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3311, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'soorathesab_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3312, 'بدهکار/برداشت کننده ', 'soorathesab_asli_ashkhas_id', 'code', '', 'soorathesab_asli_ashkhas_id', 'return sst_get_option(\'sherkat_id\');', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3313, 'تاریخ', 'soorathesab_tarikh', 'variable', '', 'soorathesab_tarikh', '$vals[\'soorathesab_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3314, 'بستانکاری', 'soorathesab_variz', 'variable', '', 'soorathesab_variz', '$vals[\'soorathesab_variz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3315, 'بابت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_sabt_tozihat_for_soorathesab_bein_ashkhas_ba_vaseteh(\'variz\',$vals[\'soorathesab_babat\'],$vals[\'soorathesab_asli_ashkhas_id\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3316, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'code', '', 'soorathesab_tozihat', 'return \'وصول و واریز\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3317, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'soorathesab_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3321, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', 'variable', '', 'soorathesab_ashkhas_id', '$vals[\'soorathesab_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3322, 'بدهکار/برداشت کننده ', 'soorathesab_asli_ashkhas_id', 'variable', '', 'soorathesab_asli_ashkhas_id', '$vals[\'soorathesab_asli_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3323, 'تاریخ', 'soorathesab_tarikh', 'variable', '', 'soorathesab_tarikh', '$vals[\'soorathesab_tarikh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3324, 'واریز/بستانکاری', 'soorathesab_bedehi', 'variable', '', 'soorathesab_bedehi', '$vals[\'soorathesab_variz\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3325, 'بابت', 'soorathesab_babat', 'code', '', 'soorathesab_babat', 'return sst_sabt_tozihat_for_soorathesab_bein_ashkhas_ba_vaseteh(\'bein_ashkhas\',$vals[\'soorathesab_babat\'],$vals[\'soorathesab_asli_ashkhas_id\'],$vals[\'soorathesab_ashkhas_id\']);', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3326, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'code', '', 'soorathesab_tozihat', 'return \'وصول و واریز\';', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (3327, 'بابت خودروی', 'soorathesab_khodro_id', 'variable', '', 'soorathesab_khodro_id', '$vals[\'soorathesab_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1401, 'شخص مرتبط به پرونده', 'daavi_ashkhas_id', 'variable', '', 'daavi_ashkhas_id', '$vals[\'daavi_ashkhas_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1402, 'شاکی/خواهان', 'daavi_shaki', 'variable', '', 'daavi_shaki', '$vals[\'daavi_shaki\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1403, 'متشاکی/خوانده', 'daavi_moteshaki', 'variable', '', 'daavi_moteshaki', '$vals[\'daavi_moteshaki\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1404, 'موضوع', 'daavi_mozoo', 'variable', '', 'daavi_mozoo', '$vals[\'daavi_mozoo\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1405, 'خودرو', 'daavi_khodro_id', 'variable', '', 'daavi_khodro_id', '$vals[\'daavi_khodro_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1406, 'نوع دعوا', 'daavi_noe_dava', 'variable', '', 'daavi_noe_dava', '$vals[\'daavi_noe_dava\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1407, 'مرحله رسیدگی', 'daavi_marhaleye_residegi', 'variable', '', 'daavi_marhaleye_residegi', '$vals[\'daavi_marhaleye_residegi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1408, 'محل رسیدگی', 'daavi_mahale_residegi', 'variable', '', 'daavi_mahale_residegi', '$vals[\'daavi_mahale_residegi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1409, 'شعبه', 'daavi_shobe', 'variable', '', 'daavi_shobe', '$vals[\'daavi_shobe\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1410, 'نام و شماره کلانتری', 'daavi_kalantri', 'variable', '', 'daavi_kalantri', '$vals[\'daavi_kalantri\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1411, 'شماره پرونده کلانتری', 'daavi_shomareh_parvandeh_kalantri', 'variable', '', 'daavi_shomareh_parvandeh_kalantri', '$vals[\'daavi_shomareh_parvandeh_kalantri\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1412, 'شماره پرونده مرجع قضایی', 'daavi_shomareh_parvandeh', 'variable', '', 'daavi_shomareh_parvandeh', '$vals[\'daavi_shomareh_parvandeh\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1413, 'شماره بایگانی مرجع قضایی', 'daavi_shomareh_baygani', 'variable', '', 'daavi_shomareh_baygani', '$vals[\'daavi_shomareh_baygani\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1414, 'تاریخ مراجعه بعدی', 'daavi_tarikh_morajeh_badi', 'variable', '', 'daavi_tarikh_morajeh_badi', '$vals[\'daavi_tarikh_morajeh_badi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1415, 'اقدامات لازم', 'daavi_eghdamate_lazem', 'variable', '', 'daavi_eghdamate_lazem', '$vals[\'daavi_eghdamate_lazem\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1416, 'رای نهایی', 'daavi_raye_nahayi', 'variable', '', 'daavi_raye_nahayi', '$vals[\'daavi_raye_nahayi\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1417, 'تصویر رای نهایی', 'daavi_tasvir_raye_nahayi', 'file', '', 'daavi_tasvir_raye_nahayi', 'daavi_tasvir_raye_nahayi', 'photos/daavi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1418, 'مرحله قبلی', 'daavi_marhaleye_ghabl_id', 'variable', '', 'daavi_marhaleye_ghabl_id', '$vals[\'daavi_marhaleye_ghabl_id\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_data_action_colval` VALUES (1419, 'توضیحات', 'daavi_tozihat', 'variable', '', 'daavi_tozihat', '$vals[\'daavi_tozihat\']', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_default_pack
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_default_pack`;
CREATE TABLE `wp_sst_default_pack`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `block` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `input` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tooltip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_default_pack
-- ----------------------------
INSERT INTO `wp_sst_default_pack` VALUES (1, '100% width', '', '1', '2', '3', '4', '5', '6', '7', '8', 'this is the default pack that has been suggested', 'Ehrajat', '2016-03-15 00:38:48', '2016-03-15 00:38:48');
INSERT INTO `wp_sst_default_pack` VALUES (2, '50% width', '', '11', '12', '13', '14', '15', '16', '17', '18', 'this is the default pack that has been suggested', 'Ehrajat', '2016-03-15 00:38:48', '2016-03-15 00:38:48');

-- ----------------------------
-- Table structure for wp_sst_event
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_event`;
CREATE TABLE `wp_sst_event`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `jsfunction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_event
-- ----------------------------
INSERT INTO `wp_sst_event` VALUES (1, 'prevent_double_submit', 'prevent_double_submit', 'onsubmit', '  function checkForm(form) // Submit button clicked\r\n  {\r\n    //\r\n    // check form input values\r\n    //\r\n\r\n    form.submit.disabled = true;\r\n    form.submit.value = \'صلوات ...\';\r\n    return true;\r\n  }\r\nreturn checkForm(this);', 'prevent_double_submit', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_field
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_field`;
CREATE TABLE `wp_sst_field`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label_id_before` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label_id_after` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `input_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `max_extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `appearance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `default_pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `show_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `hide_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_field
-- ----------------------------
INSERT INTO `wp_sst_field` VALUES (1, 'نام', 'ashkhas_nam', '1', '', '1', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (2, 'نام خانوادگی', 'ashkhas_name_khanevadegi', '2', '', '2', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (3, 'نام پدر', 'ashkhas_name_pedar', '3', '', '3', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (4, 'شماره شناسنامه', 'ashkhas_shomare_shenasname', '4', '', '4', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (5, 'کد ملی', 'ashkhas_kode_meli', '5', '', '5', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (6, 'صادره از', 'ashkhas_sadere_az', '6', '', '6', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (7, 'تصویر فرد', 'ashkhas_tasvire_fard', '7', '', '7', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (8, 'توضیحات', 'ashkhas_tozihat', '8', '', '8', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (9, 'تاریخ تولد', 'ashkhas_tarikhe_tavalod', '9', '', '9', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (10, 'معرف مشتری', 'ashkhas_moaref', '10', '', '10', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (11, 'وضعییت وصول حساب', 'ashkhas_vaziyat_hesab', '11', '', '11', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (101, 'نام مستعار خودرو', 'khodro_khodro', '101', '', '101', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (102, 'مدل', 'khodro_model', '102', '', '102', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (103, 'رنگ', 'khodro_rang', '103', '', '103', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (104, 'شماره شهربانی', 'khodro_shomare_shahrbani', '104', '', '104', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (105, 'شماره وین', 'khodro_shomare_vin', '105', '', '105', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (106, 'شماره شاسی', 'khodro_shomare_shasi', '106', '', '106', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (107, 'شماره موتور', 'khodro_shomare_motor', '107', '', '107', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (108, 'بارکد کارت', 'khodro_shomare_barkode_kart', '108', '', '108', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (109, 'مالک', 'khodro_malek_id', '109', '', '109', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (110, 'صاحب امتیاز', 'khodro_saheb_emtiyaz_id', '110', '', '110', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (111, 'حجم باک', 'khodro_hajme_bak', '111', '', '111', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (112, 'توضیحات', 'khodro_tozihat', '112', '', '112', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (113, 'وضعیت موجودی خودرو', 'khodro_vaziyat', '113', '', '113', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (201, 'نوع تعامل', 'taamol_taamol', '201', '', '201', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (301, 'شخص', 'taamol_ba_sherkat_ashkhas_id', '301', '', '301', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (302, 'نوع تعامل با شرکت', 'taamol_ba_sherkat_noe_taamol', '302', '', '302', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (401, 'شخص', 'address_phone_ashkhas_id', '401', '', '401', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (402, 'نام و نام خانوادگی', 'address_phone_nam', '402', '', '402', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (403, 'نسبت', 'address_phone_nesbat', '403', '', '403', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (404, 'تلفن', 'address_phone_phone', '404', '', '404', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (405, 'آدرس', 'address_phone_address', '405', '', '405', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (406, 'توضیحات', 'address_phone_tozihat', '406', '', '406', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (501, 'شماره قرارداد', 'gharardad_shomare_gharardad', '501', '', '501', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (502, 'مستاجر', 'gharardad_mostajer_id', '502', '', '502', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (503, 'معرف مستاجر', 'gharardad_moaref_mostajer_id', '503', '', '503', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (504, 'کمیسیون مستاجر(روزانه)', 'gharardad_komision_moaref_mostajer', '504', '', '504', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (505, 'موجر', 'gharardad_mojer_id', '505', '', '505', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (506, 'معرف موجر', 'gharardad_moaref_mojer_id', '506', '', '506', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (507, 'کمیسیون موجر(روزانه)', 'gharardad_komision_moaref_mojer', '507', '', '507', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (508, 'خودرو', 'gharardad_khodro_id', '508', '', '508', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (509, 'تاریخ و ساعت تحویل', 'gharardad_tarikhe_tahvil', '509', '', '509', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (510, 'تاریخ و ساعت عودت', 'gharardad_tarikhe_odat', '510', '', '510', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (511, 'وعده تاریخ عودت', 'gharardad_vadeye_tarikhe_odat', '511', '', '511', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (512, 'دوره زمانی اجاره', 'gharardad_doreye_zamani_ejareh', '512', '', '512', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (513, 'قیمت (روزانه)', 'gharardad_gheymate', '513', '', '513', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (514, 'کیلومتر اولیه', 'gharardad_odo_avaliye', '514', '', '514', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (515, 'کیلومتر ثانویه', 'gharardad_odo_sanaviye', '515', '', '515', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (516, 'بنزین اولیه', 'gharardad_benzin_avaliye', '516', '', '516', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (517, 'بنزین ثانویه', 'gharardad_benzin_sanaviye', '517', '', '517', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (518, 'تحویل دهنده', 'gharardad_tahvil_dahande', '518', '', '518', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (519, 'تحویل گیرنده', 'gharardad_tahvil_girande', '519', '', '519', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (520, 'شرح خسارات ', 'gharardad_sharhe_khesarat', '520', '', '520', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (521, 'برآورد خسارات', 'gharardad_baravorde_khesarat', '521', '', '521', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (522, 'برآورد خواب خسارت', 'gharardad_baravorde_khabe_khesarat', '522', '', '522', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (523, 'هزینه کارواش', 'gharardad_hazineye_karvash', '523', '', '523', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (524, 'هزینه ایاب ذهاب', 'gharardad_hazineye_ayab_zahab', '524', '', '524', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (525, 'توضیحات', 'gharardad_tozihat', '525', '', '525', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (526, ' کیلومتر مجاز روزانه', 'gharardad_odo_mojaz', '526', '', '526', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (527, 'تخفیف', 'gharardad_takhfif', '527', '', '527', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (528, 'نحوه تعامل با معرف مستاجر', 'gharardad_taamol_ba_moaref_mostajer', '528', '', '528', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (529, 'هزینه هر یک کیلومتر اضافه', 'gharardad_odo_hazine', '529', '', '529', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (530, 'محاسبه بنزین', 'gharardad_mohasebe_benzin', '530', '', '530', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (531, 'محاسبه اضافه کیلومتر', 'gharardad_mohasebe_odo', '531', '', '531', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (532, 'محاسبه تاخیر', 'gharardad_mohasebe_takhir', '532', '', '532', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (533, 'محل تحویل', 'gharardad_mahale_tahvil', '533', '', '533', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (534, 'محل عودت', 'gharardad_mahale_odat', '534', '', '534', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (601, 'شخص', 'soorathesab_ashkhas_id', '601', '', '601', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (602, 'تاریخ', 'soorathesab_tarikh', '602', '', '602', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (603, 'واریز/بستانکاری', 'soorathesab_variz', '603', '', '603', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (604, 'برداشت/بدهکاری', 'soorathesab_bedehi', '604', '', '604', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (605, 'بابت', 'soorathesab_babat', '605', '', '605', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (606, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', '606', '', '606', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (607, 'بابت خودروی', 'soorathesab_khodro_id', '607', '', '607', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (701, 'خودرو', 'bime_khodro_id', '701', '', '701', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (702, 'نوع بیمه', 'bime_noe_bime', '702', '', '702', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (703, 'شرکت بیمه', 'bime_sherkate_bime', '703', '', '703', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (704, 'کد نمایندگی', 'bime_kode_namyandegi', '704', '', '704', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (705, 'شماره بیمه نامه', 'bime_shomareh_bime', '705', '', '705', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (706, 'تاریخ انقضا', 'bime_tarikhe_engheza', '706', '', '706', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (707, 'تصویر بیمه', 'bime_tasvire_bime', '707', '', '707', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (708, 'تصویر گواهی صدور', 'bime_tasvire_govahi_sodoor', '708', '', '708', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (709, 'توضیحات', 'bime_tozihat', '709', '', '709', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (721, 'خودرو', 'gps_khodro_id', '721', '', '721', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (722, 'نوع دستگاه', 'gps_noe_gps', '722', '', '722', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (723, 'شماره سیم کارت', 'gps_shomareh_sim', '723', '', '723', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (724, 'شماره سریال دستگاه', 'gps_shomareh_serial', '724', '', '724', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (725, 'محل نصب', 'gps_mahale_nasb', '725', '', '725', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (726, 'قطع کن', 'gps_ghatkon', '726', '', '726', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (727, 'برق مستقیم', 'gps_barghe_mostaghim', '727', '', '727', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (728, 'شنود', 'gps_shenood', '728', '', '728', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (729, 'توضیحات', 'gps_tozihat', '729', '', '729', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (741, 'خودرو', 'servis_khodro_id', '741', '', '741', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (742, 'نوع سرویس / تعمیر', 'servis_noe_servis', '742', '', '742', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (743, 'شرح سرویس / تعمیر', 'servis_sharh', '743', '', '743', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (744, 'کیلومتر', 'servis_kilometer', '744', '', '744', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (745, 'تاریخ', 'servis_tarikh', '745', '', '745', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (746, 'محل سرویس/تعمیر', 'servis_mahale_servis', '746', '', '746', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (747, 'مراجعه کننده به سرویس/تعمیر کار', 'servis_servis_konnadeh_id', '747', '', '747', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (748, 'هزینه کل', 'servis_hazine', '748', '', '748', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (749, 'تصویر فاکتور', 'servis_tasvire_faktor', '749', '', '749', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (750, 'توضیحات', 'servis_tozihat', '750', '', '750', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (800, 'تحویل گیرنده', 'tahvil_odat_ashkhas_id', '800', '', '800', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (801, 'خودرو', 'tahvil_odat_khodro_id', '801', '', '801', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (802, 'ساعت و تاریخ', 'tahvil_odat_tarikh', '802', '', '802', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (803, 'بابت/توضیحات', 'tahvil_odat_tozihat', '803', '', '803', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (114, 'برند', 'khodro_brand', '114', '', '114', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (115, 'نام اصلی خودرو', 'khodro_nam', '115', '', '115', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (116, 'کلاس', 'khodro_class', '116', '', '116', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (117, 'حجم موتور', 'khodro_hajme_motor', '117', '', '117', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (118, 'نوع گیربکس', 'khodro_dande', '118', '', '118', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (119, 'مصرف بنزین', 'khodro_masraf', '119', '', '119', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (120, 'تعداد سرنشین', 'khodro_sarneshin', '120', '', '120', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (121, 'تعداد درب', 'khodro_tedad_dar', '121', '', '121', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (122, 'آپشهای اضافه', 'khodro_option', '122', '', '122', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (123, 'کیلومتر مجاز', 'khodro_odo_mojaz', '123', '', '123', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (124, 'قیمت روزانه', 'khodro_daily_price', '124', '', '124', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (125, 'قیمت هفتگی', 'khodro_weekly_price', '125', '', '125', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (126, 'قیمت پانزده روزه', 'khodro_half_monthly_price', '126', '', '126', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (127, 'قیمت ماهیانه', 'khodro_monthly_price', '127', '', '127', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (608, 'تصویر سند صورتحساب', 'soorathesab_sanad', '608', '', '608', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (128, 'تصویر خودرو جلو', 'khodro_img_front', '128', '', '128', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (129, 'تصویر خودرو عقب', 'khodro_img_back', '129', '', '129', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (130, 'تصویر خودرو بغل', 'khodro_img_side', '130', '', '130', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (131, 'تصویر خودرو سه رخ جلو', 'khodro_img_front_prespective', '131', '', '131', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (132, 'تصویر خودرو سه رخ عقب', 'khodro_img_back_prespective', '132', '', '132', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (133, 'تصویر خودرو داخلی', 'khodro_img_interior', '133', '', '133', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (134, 'تصویر خودرو 1', 'khodro_img_1', '134', '', '134', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (135, 'تصویر خودرو 2', 'khodro_img_2', '135', '', '135', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (136, 'تصویر خودرو 3', 'khodro_img_3', '136', '', '136', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (137, 'تصویر خودرو 4', 'khodro_img_4', '137', '', '137', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (138, 'تصویر خودرو 5', 'khodro_img_5', '138', '', '138', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (139, 'تصویر خودرو  6', 'khodro_img_6', '139', '', '139', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (140, 'تصویر خودرو 7', 'khodro_img_7', '140', '', '140', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (141, 'تصویر خودرو 8', 'khodro_img_8', '141', '', '141', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (142, 'تصویر خودرو 9', 'khodro_img_9', '142', '', '142', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (143, 'درصد تخفیف', 'khodro_takhfif', '143', '', '143', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (535, 'چک شد', 'gharardad_check', '535', '', '535', '', '', '', '', '', NULL, NULL, '1', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (901, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', '901', '', '901', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (902, 'بدهکار/برداشت کننده', 'soorathesab_asli_ashkhas_id', '902', '', '902', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (903, 'تاریخ', 'soorathesab_tarikh', '903', '', '903', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (904, 'واریز/بستانکاری', 'soorathesab_variz', '904', '', '904', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (905, 'بابت', 'soorathesab_babat', '905', '', '905', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (906, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', '906', '', '906', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (907, 'بابت خودروی', 'soorathesab_khodro_id', '907', '', '907', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (908, 'تصویر سند صورتحساب', 'soorathesab_sanad', '908', '', '908', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (536, 'هزینه سفته', 'gharardad_hazineye_softeh', '536', '', '536', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (537, 'ودیعه', 'gharardad_vadieh', '537', '', '537', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1001, 'تاریخ اعلام', 'servis_tamirat_morede_niyaz_tarikh_elam', '1001', '', '1001', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1002, 'تاریخ شروع تعمیر', 'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir', '1002', '', '1002', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1003, 'تاریخ پایان تعمیر', 'servis_tamirat_morede_niyaz_tarikh_payane_tamir', '1003', '', '1003', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1004, 'خودرو', 'servis_tamirat_morede_niyaz_khodro_id', '1004', '', '1004', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1005, 'شرح سرویس', 'servis_tamirat_morede_niyaz_sharhe_servis', '1005', '', '1005', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1006, 'وضعییت تعمیر', 'servis_tamirat_morede_niyaz_vaziyat', '1006', '', '1006', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1007, 'کیلومتر انجام', 'servis_tamirat_morede_niyaz_kilometer_anjam', '1007', '', '1007', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1008, 'انجام دهنده', 'servis_tamirat_morede_niyaz_anjam_dahandeh', '1008', '', '1008', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1009, 'مکانیک', 'servis_tamirat_morede_niyaz_mechanic', '1009', '', '1009', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1010, 'هزینه', 'servis_tamirat_morede_niyaz_hazineh', '1010', '', '1010', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1011, 'تصویر فاکتور', 'servis_tamirat_morede_niyaz_tasvire_faktor', '1011', '', '1011', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1012, 'توضیحات', 'servis_tamirat_morede_niyaz_tozihat', '1012', '', '1012', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1101, 'نام مکانیک / فروشگاه', 'ashkhas_name_khanevadegi', '1101', '', '1101', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1102, 'نوع فعالیت', 'taamol_ba_sherkat_noe_taamol', '1102', '', '1102', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1201, 'نام مکانیک / فروشگاه', 'address_phone_ashkhas_id', '1201', '', '1201', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1202, 'شماره تماس', 'address_phone_phone', '1202', '', '1202', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1203, 'نسبت', 'address_phone_nesbat', '1203', '', '1203', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1204, 'آدرس', 'address_phone_address', '1204', '', '1204', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1301, 'شخص مرتبط به پرونده', 'daavi_ashkhas_id', '1301', '', '1301', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1302, 'شاکی/خواهان', 'daavi_shaki', '1302', '', '1302', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1303, 'متشاکی/خوانده', 'daavi_moteshaki', '1303', '', '1303', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1304, 'موضوع', 'daavi_mozoo', '1304', '', '1304', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1305, 'خودرو', 'daavi_khodro_id', '1305', '', '1305', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1306, 'نوع دعوا', 'daavi_noe_dava', '1306', '', '1306', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1307, 'مرحله رسیدگی', 'daavi_marhaleye_residegi', '1307', '', '1307', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1308, 'محل رسیدگی', 'daavi_mahale_residegi', '1308', '', '1308', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1309, 'شعبه', 'daavi_shobe', '1309', '', '1309', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1310, 'نام و شماره کلانتری', 'daavi_kalantri', '1310', '', '1310', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1311, 'شماره پرونده کلانتری', 'daavi_shomareh_parvandeh_kalantri', '1311', '', '1311', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1312, 'شماره پرونده مرجع قضایی', 'daavi_shomareh_parvandeh', '1312', '', '1312', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1313, 'شماره بایگانی مرجع قضایی', 'daavi_shomareh_baygani', '1313', '', '1313', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1314, 'تاریخ مراجعه بعدی', 'daavi_tarikh_morajeh_badi', '1314', '', '1314', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1315, 'اقدامات لازم', 'daavi_eghdamate_lazem', '1315', '', '1315', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1316, 'رای نهایی', 'daavi_raye_nahayi', '1316', '', '1316', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1317, 'تصویر رای نهایی', 'daavi_tasvir_raye_nahayi', '1317', '', '1317', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1318, 'مرحله قبلی', 'daavi_marhaleye_ghabl_id', '1318', '', '1318', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_field` VALUES (1319, 'توضیحات', 'daavi_tozihat', '1319', '', '1319', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_form
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_form`;
CREATE TABLE `wp_sst_form`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `block_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `required_field_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enctype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `footer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `data_action_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `condition_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `appearance_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `event_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pack_id` int(10) NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `default_pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `show_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `hide_from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `func_before` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `func_after` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_form
-- ----------------------------
INSERT INTO `wp_sst_form` VALUES (1, 'اشخاص', 'ashkhas', '1', '', '', '', '', '', '', '', 'اشخاص', NULL, '1', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (2, 'تعامل', 'taamol', '2', '', '', '', '', '', '', '', 'تعامل', NULL, '2', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (3, 'ثبت تعامل افراد', 'taamol_ba_shekat', '3', '', '', '', '', '', '', '', 'ثبت تعامل افراد', NULL, '3', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (4, 'اشخاص-ثبت تعامل افراد', 'ashkhas_taamol_ba_shekat', '1', '302', '', '', '', '', '', '', 'اشخاص-ثبت تعامل افراد', NULL, '1,4', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (5, 'آدرس تلفن', 'address_phone', '4', '', '', '', '', '', '', '', 'آدرس تلفن', NULL, '5', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (6, 'اشخاص-آدرس تلفن', 'ashkhas_address_phone', '1', '403-406', '', '', '', '', '', '', 'اشخاص-آدرس تلفن', NULL, '1,6', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (7, 'اشخاص-آدرس تلفن-ثبت تعامل افراد', 'ashkhas_address_phone_taamol_ba_shekat', '1', '302,403-406', '', '', '', '', '', '', 'اشخاص-آدرس تلفن-ثبت تعامل افراد', NULL, '1,4,6', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (10, 'خودرو', 'khodro', '10', '', '', '', '', '', '', '', 'خودرو', NULL, '10', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (20, 'قرارداد', 'gharardad', '21,22', '', '', '', '', '', '', '', 'قرارداد', NULL, '20-32', '', 0, 0, '1', 0, NULL, '2', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (21, 'قرارداد تحویل', 'gharardad_tahvil', '21', '', '', '', '', '', '', '', 'قرارداد تحویل', NULL, '21', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (22, 'قرارداد عودت', 'gharardad_odat', '22', '', '', '', '', '', '', '', 'قرارداد عودت', NULL, '22', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (23, 'صورتحساب', 'soorathesab', '23', '', '', '', '', '', '', '', 'صورتحساب', NULL, '50', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (24, 'بیمه', 'bime', '24', '', '', '', '', '', '', '', 'بیمه', NULL, '60', '', 0, 0, '1', 0, NULL, '1', '1,26,27,25', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (25, 'جی پی اس', 'gps', '25', '', '', '', '', '', '', '', 'جی پی اس', NULL, '70', '', 0, 0, '1', 0, NULL, '1', '1,26,27,25', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (26, 'سرویس و تعمیرات', 'servis', '26', '', '', '', '', '', '', '', 'سرویس و تعمیرات', NULL, '80', '', 0, 0, '1', 0, NULL, '1', '1,26,27,25,15', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (27, 'تحویل عودت', 'tahvil_odat', '27', '', '', '', '', '', '', '', 'تحویل عودت', NULL, '81', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (28, 'صورتحساب بین افراد بی واسطه', 'soorathesab_bein_ashkhas_bi_vaseteh', '28', '', '', '', '', '', '', '', 'صورتحساب بین افراد', NULL, '82', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (29, 'تعمیرات مورد نیاز', 'servis_tamirat_morede_niyaz', '29', '', '', '', '', '', '', '', 'تعمیرات مورد نیاز', '', '90', '', 0, 0, '1', 0, NULL, '1', '1,26,27,29,15,14', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (30, 'ثبت مکانیک و لوازم فروش', 'ashkhas_mechanic', '30', '', '', '', '', '', '', '', 'ثبت مکانیک و لوازم فروش', NULL, '100,101', '', 0, 0, '1', 0, NULL, '1', '1,26,27,29,15,14', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (31, 'آدرس و تلفن مکانیک و لوازم فروش', 'ashkhas_mechanic_address_phone', '31', '', '', '', '', '', '', '', 'آدرس و تلفن مکانیک و لوازم فروش', NULL, '110', '', 0, 0, '1', 0, NULL, '1', '1,26,27,29,15,14', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (32, 'صورتحساب بین افراد با واسطه', 'soorathesab_bein_ashkhas_ba_vaseteh', '32', '', '', '', '', '', '', '', 'صورتحساب بین افراد با واسطه', NULL, '121-122', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, 'this row data action will change by sst_update_db_to_on_off_count_bedehkari_be_digaran() to activate and deactivate bedehkari be digaran it now will not in count bedehkari be digaran to activate it you must activate it by sst_get_option(count_bedehkari_be_digaran) set to one and automatically actvite and change data action ids to 121-123', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_form` VALUES (33, 'دعاوی', 'daavi', '33', '', '', '', '', '', '', '', 'دعاوی', NULL, '124', '', 0, 0, '1', 0, NULL, '1', '1,26,27', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_input
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_input`;
CREATE TABLE `wp_sst_input`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `standard_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label_id_before` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label_id_after` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `event_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `appearance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `keyboard_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `controller_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1320 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_input
-- ----------------------------
INSERT INTO `wp_sst_input` VALUES (1, 'نام', 'ashkhas_nam', 'ashkhas_nam', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (2, 'نام خانوادگی', 'ashkhas_name_khanevadegi', 'ashkhas_name_khanevadegi', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (3, 'نام پدر', 'ashkhas_name_pedar', 'ashkhas_name_pedar', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (4, 'شماره شناسنامه', 'ashkhas_shomare_shenasname', 'ashkhas_shomare_shenasname', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (5, 'کد ملی', 'ashkhas_kode_meli', 'ashkhas_kode_meli', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (6, 'صادره از', 'ashkhas_sadere_az', 'ashkhas_sadere_az', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (7, 'تصویر فرد', 'ashkhas_tasvire_fard', 'ashkhas_tasvire_fard', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (8, 'توضیحات', 'ashkhas_tozihat', 'ashkhas_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (9, 'تاریخ تولد', 'ashkhas_tarikhe_tavalod', 'ashkhas_tarikhe_tavalod', '9', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (10, 'معرف مشتری', 'ashkhas_moaref', 'ashkhas_moaref', '12', '30', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (11, 'وضعییت وصول حساب', 'ashkhas_vaziyat_hesab', 'ashkhas_vaziyat_hesab', '11', '27', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (101, 'نام مستعار خودرو', 'khodro_khodro', 'khodro_khodro', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (102, 'مدل', 'khodro_model', 'khodro_model', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (103, 'رنگ', 'khodro_rang', 'khodro_rang', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (104, 'شماره شهربانی', 'khodro_shomare_shahrbani', 'khodro_shomare_shahrbani', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (105, 'شماره وین', 'khodro_shomare_vin', 'khodro_shomare_vin', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (106, 'شماره شاسی', 'khodro_shomare_shasi', 'khodro_shomare_shasi', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (107, 'شماره موتور', 'khodro_shomare_motor', 'khodro_shomare_motor', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (108, 'بارکد کارت', 'khodro_shomare_barkode_kart', 'khodro_shomare_barkode_kart', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (109, 'مالک', 'khodro_malek_id', 'khodro_malek_id', '12', '2', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (110, 'صاحب امتیاز', 'khodro_saheb_emtiyaz_id', 'khodro_saheb_emtiyaz_id', '12', '35', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (111, 'حجم باک', 'khodro_hajme_bak', 'khodro_hajme_bak', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (112, 'توضیحات', 'khodro_tozihat', 'khodro_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (113, 'وضعیت موجودی خودرو', 'khodro_vaziyat', 'khodro_vaziyat', '11', '29', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (201, 'نوع تعامل', 'taamol_taamol', 'taamol_taamol', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (301, 'شخص', 'taamol_ba_sherkat_ashkhas_id', 'taamol_ba_sherkat_ashkhas_id', '12', '32', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (302, 'نوع تعامل با شرکت', 'taamol_ba_sherkat_noe_taamol', 'taamol_ba_sherkat_noe_taamol', '12', '33', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (401, 'شخص', 'address_phone_ashkhas_id', 'address_phone_ashkhas_id', '12', '32', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (402, 'نام و نام خانوادگی', 'address_phone_nam', 'address_phone_nam', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (403, 'نسبت', 'address_phone_nesbat', 'address_phone_nesbat', '11', '14', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (404, 'تلفن', 'address_phone_phone', 'address_phone_phone', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (405, 'آدرس', 'address_phone_address', 'address_phone_address', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (406, 'توضیحات', 'address_phone_tozihat', 'address_phone_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (501, 'شماره قرارداد', 'gharardad_shomare_gharardad', 'gharardad_shomare_gharardad', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (502, 'مستاجر', 'gharardad_mostajer_id', 'gharardad_mostajer_id', '12', '36', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (503, 'معرف مستاجر', 'gharardad_moaref_mostajer_id', 'gharardad_moaref_mostajer_id', '12', '7', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (504, 'کمیسیون معرف مستاجر(روزانه(', 'gharardad_komision_moaref_mostajer', 'gharardad_komision_moaref_mostajer', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (505, 'موجر', 'gharardad_mojer_id', 'gharardad_mojer_id', '12', '37', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (506, 'معرف موجر', 'gharardad_moaref_mojer_id', 'gharardad_moaref_mojer_id', '12', '9', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (507, 'کمیسیون معرف موجر(روزانه)', 'gharardad_komision_moaref_mojer', 'gharardad_komision_moaref_mojer', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (508, 'خودرو', 'gharardad_khodro_id', 'gharardad_khodro_id', '12', '43', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (509, 'تاریخ و ساعت تحویل', 'gharardad_tarikhe_tahvil', 'gharardad_tarikhe_tahvil', '9', '39', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (510, 'تاریخ و ساعت عودت', 'gharardad_tarikhe_odat', 'gharardad_tarikhe_odat', '9', '12', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (511, 'وعده تاریخ عودت', 'gharardad_vadeye_tarikhe_odat', 'gharardad_vadeye_tarikhe_odat', '9', '40', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (512, 'دوره زمانی اجاره', 'gharardad_doreye_zamani_ejareh', 'gharardad_doreye_zamani_ejareh', '11', '26', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (513, 'قیمت (روزانه)', 'gharardad_gheymate', 'gharardad_gheymate', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (514, 'کیلومتر اولیه', 'gharardad_odo_avaliye', 'gharardad_odo_avaliye', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (515, 'کیلومتر ثانویه', 'gharardad_odo_sanaviye', 'gharardad_odo_sanaviye', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (516, 'بنزین اولیه', 'gharardad_benzin_avaliye', 'gharardad_benzin_avaliye', '11', '13', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (517, 'بنزین ثانویه', 'gharardad_benzin_sanaviye', 'gharardad_benzin_sanaviye', '11', '13', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (518, 'تحویل دهنده', 'gharardad_tahvil_dahande', 'gharardad_tahvil_dahande', '12', '11', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (519, 'تحویل گیرنده', 'gharardad_tahvil_girande', 'gharardad_tahvil_girande', '12', '11', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (520, 'شرح خسارات ', 'gharardad_sharhe_khesarat', 'gharardad_sharhe_khesarat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (521, 'برآورد خسارات', 'gharardad_baravorde_khesarat', 'gharardad_baravorde_khesarat', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (522, 'برآورد خواب خسارت', 'gharardad_baravorde_khabe_khesarat', 'gharardad_baravorde_khabe_khesarat', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (523, 'هزینه کارواش', 'gharardad_hazineye_karvash', 'gharardad_hazineye_karvash', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (524, 'هزینه ایاب ذهاب', 'gharardad_hazineye_ayab_zahab', 'gharardad_hazineye_ayab_zahab', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (525, 'توضیحات', 'gharardad_tozihat', 'gharardad_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (526, ' کیلومتر مجاز روزانه', 'gharardad_odo_mojaz', 'gharardad_odo_mojaz', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (527, 'تخفیف', 'gharardad_takhfif', 'gharardad_takhfif', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (528, 'نحوه تعامل با معرف مستاجر', 'gharardad_taamol_ba_moaref_mostajer', 'gharardad_taamol_ba_moaref_mostajer', '11', '15', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (529, 'هزینه هر یک کیلومتر اضافه', 'gharardad_odo_hazine', 'gharardad_odo_hazine', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (530, 'محاسبه بنزین', 'gharardad_mohasebe_benzin', 'gharardad_mohasebe_benzin', '11', '22', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (531, 'محاسبه اضافه کیلومتر', 'gharardad_mohasebe_odo', 'gharardad_mohasebe_odo', '11', '22', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (532, 'محاسبه تاخیر', 'gharardad_mohasebe_takhir', 'gharardad_mohasebe_takhir', '11', '23', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (533, 'محل تحویل', 'gharardad_mahale_tahvil', 'gharardad_mahale_tahvil', '11', '24', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (534, 'محل عودت', 'gharardad_mahale_odat', 'gharardad_mahale_odat', '11', '24', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (601, 'شخص', 'soorathesab_ashkhas_id', 'soorathesab_ashkhas_id', '12', '45', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (602, 'تاریخ', 'soorathesab_tarikh', 'soorathesab_tarikh', '9', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (603, 'واریز/بستانکاری', 'soorathesab_variz', 'soorathesab_variz', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (604, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'soorathesab_bedehi', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (605, 'بابت', 'soorathesab_babat', 'soorathesab_babat', '14', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (606, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'soorathesab_tozihat', '11', '25', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (607, 'بابت خودروی', 'soorathesab_khodro_id', 'soorathesab_khodro_id', '12', '44', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (701, 'خودرو', 'bime_khodro_id', 'bime_khodro_id', '12', '42', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (702, 'نوع بیمه', 'bime_noe_bime', 'bime_noe_bime', '11', '16', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (703, 'شرکت بیمه', 'bime_sherkate_bime', 'bime_sherkate_bime', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (704, 'کد نمایندگی', 'bime_kode_namyandegi', 'bime_kode_namyandegi', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (705, 'شماره بیمه نامه', 'bime_shomareh_bime', 'bime_shomareh_bime', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (706, 'تاریخ انقضا', 'bime_tarikhe_engheza', 'bime_tarikhe_engheza', '9', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (707, 'تصویر بیمه', 'bime_tasvire_bime', 'bime_tasvire_bime', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (708, 'تصویر گواهی صدور', 'bime_tasvire_govahi_sodoor', 'bime_tasvire_govahi_sodoor', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (709, 'توضیحات', 'bime_tozihat', 'bime_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (721, 'خودرو', 'gps_khodro_id', 'gps_khodro_id', '12', '42', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (722, 'نوع دستگاه', 'gps_noe_gps', 'gps_noe_gps', '11', '17', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (723, 'شماره سیم کارت', 'gps_shomareh_sim', 'gps_shomareh_sim', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (724, 'شماره سریال دستگاه', 'gps_shomareh_serial', 'gps_shomareh_serial', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (725, 'محل نصب', 'gps_mahale_nasb', 'gps_mahale_nasb', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (726, 'قطع کن', 'gps_ghatkon', 'gps_ghatkon', '11', '18', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (727, 'برق مستقیم', 'gps_barghe_mostaghim', 'gps_barghe_mostaghim', '11', '19', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (728, 'شنود', 'gps_shenood', 'gps_shenood', '11', '18', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (729, 'توضیحات', 'gps_tozihat', 'gps_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (741, 'خودرو', 'servis_khodro_id', 'servis_khodro_id', '12', '42', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (742, 'نوع سرویس / تعمیر', 'servis_noe_servis', 'servis_noe_servis', '11', '20', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (743, 'شرح سرویس / تعمیر', 'servis_sharh', 'servis_sharh', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (744, 'کیلومتر', 'servis_kilometer', 'servis_kilometer', '13', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (745, 'تاریخ', 'servis_tarikh', 'servis_tarikh', '9', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (746, 'محل سرویس/تعمیر', 'servis_mahale_servis', 'servis_mahale_servis', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (747, 'مراجعه کننده به سرویس/تعمیر کار', 'servis_servis_konnadeh_id', 'servis_servis_konnadeh_id', '12', '21', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (748, 'هزینه کل', 'servis_hazine', 'servis_hazine', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (749, 'تصویر فاکتور', 'servis_tasvire_faktor', 'servis_tasvire_faktor', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (750, 'توضیحات', 'servis_tozihat', 'servis_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (800, 'تحویل گیرنده', 'tahvil_odat_ashkhas_id', 'tahvil_odat_ashkhas_id', '12', '4', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (801, 'خودرو', 'tahvil_odat_khodro_id', 'tahvil_odat_khodro_id', '12', '42', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (802, 'ساعت و تاریخ', 'tahvil_odat_tarikh', 'tahvil_odat_tarikh', '9', '39', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (803, 'بابت/توضیحات', 'tahvil_odat_tozihat', 'tahvil_odat_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (114, 'برند', 'khodro_brand', 'khodro_brand', '11', '46', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (115, 'نام اصلی خودرو', 'khodro_nam', 'khodro_nam', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (116, 'کلاس', 'khodro_class', 'khodro_class', '11', '47', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (117, 'حجم موتور', 'khodro_hajme_motor', 'khodro_hajme_motor', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (118, 'نوع گیربکس', 'khodro_dande', 'khodro_dande', '11', '48', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (119, 'مصرف بنزین', 'khodro_masraf', 'khodro_masraf', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (120, 'تعداد سرنشین', 'khodro_sarneshin', 'khodro_sarneshin', '11', '49', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (121, 'تعداد درب', 'khodro_tedad_dar', 'khodro_tedad_dar', '11', '50', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (122, 'آپشهای اضافه', 'khodro_option', 'khodro_option', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (123, 'کیلومتر مجاز', 'khodro_odo_mojaz', 'khodro_odo_mojaz', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (124, 'قیمت روزانه', 'khodro_daily_price', 'khodro_daily_price', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (125, 'قیمت هفتگی', 'khodro_weekly_price', 'khodro_weekly_price', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (126, 'قیمت پانزده روزه', 'khodro_half_monthly_price', 'khodro_half_monthly_price', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (127, 'قیمت ماهیانه', 'khodro_monthly_price', 'khodro_monthly_price', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (608, 'تصویر سند صورتحساب', 'soorathesab_sanad', 'soorathesab_sanad', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (128, 'تصویر خودرو جلو', 'khodro_img_front', 'khodro_img_front', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (129, 'تصویر خودرو عقب', 'khodro_img_back', 'khodro_img_back', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (130, 'تصویر خودرو بغل', 'khodro_img_side', 'khodro_img_side', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (131, 'تصویر خودرو سه رخ جلو', 'khodro_img_front_prespective', 'khodro_img_front_prespective', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (132, 'تصویر خودرو سه رخ عقب', 'khodro_img_back_prespective', 'khodro_img_back_prespective', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (133, 'تصویر خودرو داخلی', 'khodro_img_interior', 'khodro_img_interior', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (134, 'تصویر خودرو 1', 'khodro_img_1', 'khodro_img_1', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (135, 'تصویر خودرو 2', 'khodro_img_2', 'khodro_img_2', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (136, 'تصویر خودرو 3', 'khodro_img_3', 'khodro_img_3', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (137, 'تصویر خودرو 4', 'khodro_img_4', 'khodro_img_4', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (138, 'تصویر خودرو 5', 'khodro_img_5', 'khodro_img_5', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (139, 'تصویر خودرو  6', 'khodro_img_6', 'khodro_img_6', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (140, 'تصویر خودرو 7', 'khodro_img_7', 'khodro_img_7', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (141, 'تصویر خودرو 8', 'khodro_img_8', 'khodro_img_8', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (142, 'تصویر خودرو 9', 'khodro_img_9', 'khodro_img_9', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (143, 'درصد تخفیف', 'khodro_takhfif', 'khodro_takhfif', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (535, 'چک شد', 'gharardad_check', 'gharardad_check', '11', '51', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (901, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', 'soorathesab_ashkhas_id', '12', '52', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (902, 'بدهکار/برداشت کننده ', 'soorathesab_asli_ashkhas_id', 'soorathesab_asli_ashkhas_id', '12', '52', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (903, 'تاریخ', 'soorathesab_tarikh', 'soorathesab_tarikh', '9', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (904, 'واریز/بستانکاری', 'soorathesab_variz', 'soorathesab_variz', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (905, 'بابت', 'soorathesab_babat', 'soorathesab_babat', '14', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (906, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'soorathesab_tozihat', '11', '25', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (907, 'بابت خودروی', 'soorathesab_khodro_id', 'soorathesab_khodro_id', '12', '44', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (908, 'تصویر سند صورتحساب', 'soorathesab_sanad', 'soorathesab_sanad', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (536, 'هزینه سفته', 'gharardad_hazineye_softeh', 'gharardad_hazineye_softeh', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (537, 'ودیعه', 'gharardad_vadieh', 'gharardad_vadieh', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1001, 'تاریخ اعلام', 'servis_tamirat_morede_niyaz_tarikh_elam', 'servis_tamirat_morede_niyaz_tarikh_elam', '9', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1002, 'تاریخ شروع تعمیر', 'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir', 'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir', '9', '12', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1003, 'تاریخ پایان تعمیر', 'servis_tamirat_morede_niyaz_tarikh_payane_tamir', 'servis_tamirat_morede_niyaz_tarikh_payane_tamir', '9', '12', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1004, 'خودرو', 'servis_tamirat_morede_niyaz_khodro_id', 'servis_tamirat_morede_niyaz_khodro_id', '12', '42', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1005, 'شرح سرویس', 'servis_tamirat_morede_niyaz_sharhe_servis', 'servis_tamirat_morede_niyaz_sharhe_servis', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1006, 'وضعییت تعمیر', 'servis_tamirat_morede_niyaz_vaziyat', 'servis_tamirat_morede_niyaz_vaziyat', '11', '53', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1007, 'کیلومتر انجام', 'servis_tamirat_morede_niyaz_kilometer_anjam', 'servis_tamirat_morede_niyaz_kilometer_anjam', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1008, 'انجام دهنده', 'servis_tamirat_morede_niyaz_anjam_dahandeh', 'servis_tamirat_morede_niyaz_anjam_dahandeh', '12', '11', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1009, 'مکانیک', 'servis_tamirat_morede_niyaz_mechanic', 'servis_tamirat_morede_niyaz_mechanic', '12', '54', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1010, 'هزینه', 'servis_tamirat_morede_niyaz_hazineh', 'servis_tamirat_morede_niyaz_hazineh', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1011, 'تصویر فاکتور', 'servis_tamirat_morede_niyaz_tasvire_faktor', 'servis_tamirat_morede_niyaz_tasvire_faktor', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1012, 'توضیحات', 'servis_tamirat_morede_niyaz_tozihat', 'servis_tamirat_morede_niyaz_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1101, 'نام مکانیک / فروشگاه', 'ashkhas_name_khanevadegi', 'ashkhas_name_khanevadegi', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1102, 'نوع فعالیت', 'taamol_ba_sherkat_noe_taamol', 'taamol_ba_sherkat_noe_taamol', '12', '55', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1202, 'شماره تماس', 'address_phone_phone', 'address_phone_phone', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1201, 'نام مکانیک / فروشگاه', 'address_phone_ashkhas_id', 'address_phone_ashkhas_id', '12', '54', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1203, 'نسبت', 'address_phone_nesbat', 'address_phone_nesbat', '11', '56', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1204, 'آدرس', 'address_phone_address', 'address_phone_address', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1301, 'شخص مرتبط به پرونده', 'daavi_ashkhas_id', 'daavi_ashkhas_id', '12', '52', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1302, 'شاکی/خواهان', 'daavi_shaki', 'daavi_shaki', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1303, 'متشاکی/خوانده', 'daavi_moteshaki', 'daavi_moteshaki', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1304, 'موضوع', 'daavi_mozoo', 'daavi_mozoo', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1305, 'خودرو', 'daavi_khodro_id', 'daavi_khodro_id', '12', '43', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1306, 'نوع دعوا', 'daavi_noe_dava', 'daavi_noe_dava', '11', '57', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1307, 'مرحله رسیدگی', 'daavi_marhaleye_residegi', 'daavi_marhaleye_residegi', '11', '58', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1308, 'محل رسیدگی', 'daavi_mahale_residegi', 'daavi_mahale_residegi', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1309, 'شعبه', 'daavi_shobe', 'daavi_shobe', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1310, 'نام و شماره کلانتری', 'daavi_kalantri', 'daavi_kalantri', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1311, 'شماره پرونده کلانتری', 'daavi_shomareh_parvandeh_kalantri', 'daavi_shomareh_parvandeh_kalantri', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1312, 'شماره پرونده مرجع قضایی', 'daavi_shomareh_parvandeh', 'daavi_shomareh_parvandeh', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1313, 'شماره بایگانی مرجع قضایی', 'daavi_shomareh_baygani', 'daavi_shomareh_baygani', '13', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1314, 'تاریخ مراجعه بعدی', 'daavi_tarikh_morajeh_badi', 'daavi_tarikh_morajeh_badi', '9', '31', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1315, 'اقدامات لازم', 'daavi_eghdamate_lazem', 'daavi_eghdamate_lazem', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1316, 'رای نهایی', 'daavi_raye_nahayi', 'daavi_raye_nahayi', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1317, 'تصویر رای نهایی', 'daavi_tasvir_raye_nahayi', 'daavi_tasvir_raye_nahayi', '8', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1318, 'دعوای مرحله قبلی', 'daavi_marhaleye_ghabl_id', 'daavi_marhaleye_ghabl_id', '12', '59', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_input` VALUES (1319, 'توضیحات', 'daavi_tozihat', 'daavi_tozihat', '14', '1', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_keyboard
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_keyboard`;
CREATE TABLE `wp_sst_keyboard`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `accesskey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tabindex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_sst_label
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_label`;
CREATE TABLE `wp_sst_label`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tooltip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `appearance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `default_pack_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1320 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_label
-- ----------------------------
INSERT INTO `wp_sst_label` VALUES (1, 'نام', 'ashkhas_nam', 'نام', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (2, 'نام خانوادگی', 'ashkhas_name_khanevadegi', 'نام خانوادگی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (3, 'نام پدر', 'ashkhas_name_pedar', 'نام پدر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (4, 'شماره شناسنامه', 'ashkhas_shomare_shenasname', 'شماره شناسنامه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (5, 'کد ملی', 'ashkhas_kode_meli', 'کد ملی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (6, 'صادره از', 'ashkhas_sadere_az', 'صادره از', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (7, 'تصویر فرد', 'ashkhas_tasvire_fard', 'تصویر فرد', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (8, 'توضیحات', 'ashkhas_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (9, 'تاریخ تولد', 'ashkhas_tarikhe_tavalod', 'تاریخ تولد', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (10, 'معرف مشتری', 'ashkhas_moaref', 'معرف مشتری', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (11, 'وضعییت وصول حساب', 'ashkhas_vaziyat_hesab', 'وضعییت وصول حساب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (101, 'نام مستعار خودرو', 'khodro_khodro', 'نام مستعار خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (102, 'مدل', 'khodro_model', 'مدل', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (103, 'رنگ', 'khodro_rang', 'رنگ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (104, 'شماره شهربانی', 'khodro_shomare_shahrbani', 'شماره شهربانی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (105, 'شماره وین', 'khodro_shomare_vin', 'شماره وین', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (106, 'شماره شاسی', 'khodro_shomare_shasi', 'شماره شاسی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (107, 'شماره موتور', 'khodro_shomare_motor', 'شماره موتور', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (108, 'بارکد کارت', 'khodro_shomare_barkode_kart', 'بارکد کارت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (109, 'مالک', 'khodro_malek_id', 'مالک', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (110, 'صاحب امتیاز', 'khodro_saheb_emtiyaz_id', 'صاحب امتیاز', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (111, 'حجم باک', 'khodro_hajme_bak', 'حجم باک', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (112, 'توضیحات', 'khodro_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (113, 'وضعیت موجودی خودرو', 'khodro_vaziyat', 'وضعیت موجودی خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (201, 'نوع تعامل', 'taamol_taamol', 'نوع تعامل', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (301, 'شخص', 'taamol_ba_sherkat_ashkhas_id', 'شخص', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (302, 'نوع تعامل با شرکت', 'taamol_ba_sherkat_noe_taamol', 'نوع تعامل با شرکت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (401, 'شخص', 'address_phone_ashkhas_id', 'شخص', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (402, 'نام و نام خانوادگی', 'address_phone_nam', 'نام و نام خانوادگی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (403, 'نسبت', 'address_phone_nesbat', 'نسبت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (404, 'تلفن', 'address_phone_phone', 'تلفن', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (405, 'آدرس', 'address_phone_address', 'آدرس', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (406, 'توضیحات', 'address_phone_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (501, 'شماره قرارداد', 'gharardad_shomare_gharardad', 'شماره قرارداد', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (502, 'مستاجر', 'gharardad_mostajer_id', 'مستاجر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (503, 'معرف مستاجر', 'gharardad_moaref_mostajer_id', 'معرف مستاجر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (504, 'کمیسیون معرف مستاجر(روزانه)', 'gharardad_komision_moaref_mostajer', 'کمیسیون معرف مستاجر(روزانه)', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (505, 'موجر', 'gharardad_mojer_id', 'موجر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (506, 'معرف موجر', 'gharardad_moaref_mojer_id', 'معرف موجر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (507, 'کمیسیون معرف موجر(روزانه)', 'gharardad_komision_moaref_mojer', 'کمیسیون معرف موجر(روزانه)', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (508, 'خودرو', 'gharardad_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (509, 'تاریخ و ساعت تحویل', 'gharardad_tarikhe_tahvil', 'تاریخ و ساعت تحویل', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (510, 'تاریخ و ساعت عودت', 'gharardad_tarikhe_odat', 'تاریخ و ساعت عودت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (511, 'وعده تاریخ عودت', 'gharardad_vadeye_tarikhe_odat', 'وعده تاریخ عودت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (512, 'دوره زمانی اجاره', 'gharardad_doreye_zamani_ejareh', 'دوره زمانی اجاره', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (513, 'قیمت (روزانه)', 'gharardad_gheymate', 'قیمت (روزانه)', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (514, 'کیلومتر اولیه', 'gharardad_odo_avaliye', 'کیلومتر اولیه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (515, 'کیلومتر ثانویه', 'gharardad_odo_sanaviye', 'کیلومتر ثانویه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (516, 'بنزین اولیه', 'gharardad_benzin_avaliye', 'بنزین اولیه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (517, 'بنزین ثانویه', 'gharardad_benzin_sanaviye', 'بنزین ثانویه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (518, 'تحویل دهنده', 'gharardad_tahvil_dahande', 'تحویل دهنده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (519, 'تحویل گیرنده', 'gharardad_tahvil_girande', 'تحویل گیرنده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (520, 'شرح خسارات ', 'gharardad_sharhe_khesarat', 'شرح خسارات ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (521, 'برآورد خسارات', 'gharardad_baravorde_khesarat', 'برآورد خسارات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (522, 'برآورد خواب خسارت', 'gharardad_baravorde_khabe_khesarat', 'برآورد خواب خسارت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (523, 'هزینه کارواش', 'gharardad_hazineye_karvash', 'هزینه کارواش', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (524, 'هزینه ایاب ذهاب', 'gharardad_hazineye_ayab_zahab', 'هزینه ایاب ذهاب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (525, 'توضیحات', 'gharardad_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (526, ' کیلومتر مجاز روزانه', 'gharardad_odo_mojaz', ' کیلومتر مجاز روزانه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (527, 'تخفیف', 'gharardad_takhfif', 'تخفیف', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (528, 'نحوه تعامل با معرف مستاجر', 'gharardad_taamol_ba_moaref_mostajer', 'نحوه تعامل با معرف مستاجر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (529, 'هزینه هر یک کیلومتر اضافه', 'gharardad_odo_hazine', 'هزینه هر یک کیلومتر اضافه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (530, 'محاسبه بنزین', 'gharardad_mohasebe_benzin', 'محاسبه بنزین', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (531, 'محاسبه اضافه کیلومتر', 'gharardad_mohasebe_odo', 'محاسبه اضافه کیلومتر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (532, 'محاسبه تاخیر', 'gharardad_mohasebe_takhir', 'محاسبه تاخیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (533, 'محل تحویل', 'gharardad_mahale_tahvil', 'محل تحویل', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (534, 'محل عودت', 'gharardad_mahale_odat', 'محل عودت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (601, 'شخص', 'soorathesab_ashkhas_id', 'شخص', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (602, 'تاریخ', 'soorathesab_tarikh', 'تاریخ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (603, 'واریز/بستانکاری', 'soorathesab_variz', 'واریز/بستانکاری', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (604, 'برداشت/بدهکاری', 'soorathesab_bedehi', 'برداشت/بدهکاری', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (605, 'بابت', 'soorathesab_babat', 'بابت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (606, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'توضیحات/نحوه پرداخت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (607, 'بابت خودروی', 'soorathesab_khodro_id', 'بابت خودروی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (701, 'خودرو', 'bime_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (702, 'نوع بیمه', 'bime_noe_bime', 'نوع بیمه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (703, 'شرکت بیمه', 'bime_sherkate_bime', 'شرکت بیمه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (704, 'کد نمایندگی', 'bime_kode_namyandegi', 'کد نمایندگی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (705, 'شماره بیمه نامه', 'bime_shomareh_bime', 'شماره بیمه نامه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (706, 'تاریخ انقضا', 'bime_tarikhe_engheza', 'تاریخ انقضا', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (707, 'تصویر بیمه', 'bime_tasvire_bime', 'تصویر بیمه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (708, 'تصویر گواهی صدور', 'bime_tasvire_govahi_sodoor', 'تصویر گواهی صدور', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (709, 'توضیحات', 'bime_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (721, 'خودرو', 'gps_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (722, 'نوع دستگاه', 'gps_noe_gps', 'نوع دستگاه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (723, 'شماره سیم کارت', 'gps_shomareh_sim', 'شماره سیم کارت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (724, 'شماره سریال دستگاه', 'gps_shomareh_serial', 'شماره سریال دستگاه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (725, 'محل نصب', 'gps_mahale_nasb', 'محل نصب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (726, 'قطع کن', 'gps_ghatkon', 'قطع کن', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (727, 'برق مستقیم', 'gps_barghe_mostaghim', 'برق مستقیم', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (728, 'شنود', 'gps_shenood', 'شنود', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (729, 'توضیحات', 'gps_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (741, 'خودرو', 'servis_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (742, 'نوع سرویس / تعمیر', 'servis_noe_servis', 'نوع سرویس / تعمیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (743, 'شرح سرویس / تعمیر', 'servis_sharh', 'شرح سرویس / تعمیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (744, 'کیلومتر', 'servis_kilometer', 'کیلومتر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (745, 'تاریخ', 'servis_tarikh', 'تاریخ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (746, 'محل سرویس/تعمیر', 'servis_mahale_servis', 'محل سرویس/تعمیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (747, 'مراجعه کننده به سرویس/تعمیر کار', 'servis_servis_konnadeh_id', 'مراجعه کننده به سرویس/تعمیر کار', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (748, 'هزینه کل', 'servis_hazine', 'هزینه کل', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (749, 'تصویر فاکتور', 'servis_tasvire_faktor', 'تصویر فاکتور', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (750, 'توضیحات', 'servis_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (800, 'تحویل گیرنده', 'tahvil_odat_ashkhas_id', 'تحویل گیرنده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (801, 'خودرو', 'tahvil_odat_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (802, 'ساعت و تاریخ', 'tahvil_odat_tarikh', 'ساعت و تاریخ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (803, 'بابت/توضیحات', 'tahvil_odat_tozihat', 'بابت/توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (114, 'برند', 'khodro_brand', 'برند', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (115, 'نام اصلی خودرو', 'khodro_nam', 'نام اصلی خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (116, 'کلاس', 'khodro_class', 'کلاس', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (117, 'حجم موتور', 'khodro_hajme_motor', 'حجم موتور', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (118, 'نوع گیربکس', 'khodro_dande', 'نوع گیربکس', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (119, 'مصرف بنزین', 'khodro_masraf', 'مصرف بنزین', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (120, 'تعداد سرنشین', 'khodro_sarneshin', 'تعداد سرنشین', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (121, 'تعداد درب', 'khodro_tedad_dar', 'تعداد درب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (122, 'آپشهای اضافه', 'khodro_option', 'آپشهای اضافه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (123, 'کیلومتر مجاز', 'khodro_odo_mojaz', 'کیلومتر مجاز', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (124, 'قیمت روزانه', 'khodro_daily_price', 'قیمت روزانه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (125, 'قیمت هفتگی', 'khodro_weekly_price', 'قیمت هفتگی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (126, 'قیمت پانزده روزه', 'khodro_half_monthly_price', 'قیمت پانزده روزه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (127, 'قیمت ماهیانه', 'khodro_monthly_price', 'قیمت ماهیانه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (608, 'تصویر سند صورتحساب', 'soorathesab_sanad', 'تصویر سند صورتحساب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (128, 'تصویر خودرو جلو', 'khodro_img_front', 'تصویر خودرو جلو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (129, 'تصویر خودرو عقب', 'khodro_img_back', 'تصویر خودرو عقب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (130, 'تصویر خودرو بغل', 'khodro_img_side', 'تصویر خودرو بغل', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (131, 'تصویر خودرو سه رخ جلو', 'khodro_img_front_prespective', 'تصویر خودرو سه رخ جلو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (132, 'تصویر خودرو سه رخ عقب', 'khodro_img_back_prespective', 'تصویر خودرو سه رخ عقب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (133, 'تصویر خودرو داخلی', 'khodro_img_interior', 'تصویر خودرو داخلی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (134, 'تصویر خودرو 1', 'khodro_img_1', 'تصویر خودرو 1', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (135, 'تصویر خودرو 2', 'khodro_img_2', 'تصویر خودرو 2', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (136, 'تصویر خودرو 3', 'khodro_img_3', 'تصویر خودرو 3', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (137, 'تصویر خودرو 4', 'khodro_img_4', 'تصویر خودرو 4', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (138, 'تصویر خودرو 5', 'khodro_img_5', 'تصویر خودرو 5', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (139, 'تصویر خودرو  6', 'khodro_img_6', 'تصویر خودرو  6', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (140, 'تصویر خودرو 7', 'khodro_img_7', 'تصویر خودرو 7', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (141, 'تصویر خودرو 8', 'khodro_img_8', 'تصویر خودرو 8', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (142, 'تصویر خودرو 9', 'khodro_img_9', 'تصویر خودرو 9', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (143, 'درصد تخفیف', 'khodro_takhfif', 'درصد تخفیف', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (535, 'چک شد', 'gharardad_check', 'چک شد', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (901, 'بستانکار/واریز کننده', 'soorathesab_ashkhas_id', 'بستانکار/واریز کننده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (902, 'بدهکار/برداشت کننده ', 'soorathesab_asli_ashkhas_id', 'بدهکار/برداشت کننده ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (903, 'تاریخ', 'soorathesab_tarikh', 'تاریخ', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (904, 'واریز/بستانکاری', 'soorathesab_variz', 'واریز/بستانکاری', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (905, 'بابت', 'soorathesab_babat', 'بابت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (906, 'توضیحات/نحوه پرداخت', 'soorathesab_tozihat', 'توضیحات/نحوه پرداخت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (907, 'بابت خودروی', 'soorathesab_khodro_id', 'بابت خودروی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (908, 'تصویر سند صورتحساب', 'soorathesab_sanad', 'تصویر سند صورتحساب', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (536, 'هزینه سفته', 'gharardad_hazineye_softeh', 'هزینه سفته', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (537, 'ودیعه', 'gharardad_vadieh', 'ودیعه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1001, 'تاریخ اعلام', 'servis_tamirat_morede_niyaz_tarikh_elam', 'تاریخ اعلام', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1002, 'تاریخ شروع تعمیر', 'servis_tamirat_morede_niyaz_tarikh_shoroe_tamir', 'تاریخ شروع تعمیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1003, 'تاریخ پایان تعمیر', 'servis_tamirat_morede_niyaz_tarikh_payane_tamir', 'تاریخ پایان تعمیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1004, 'خودرو', 'servis_tamirat_morede_niyaz_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1005, 'شرح سرویس', 'servis_tamirat_morede_niyaz_sharhe_servis', 'شرح سرویس', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1006, 'وضعییت تعمیر', 'servis_tamirat_morede_niyaz_vaziyat', 'وضعییت تعمیر', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1007, 'کیلومتر انجام', 'servis_tamirat_morede_niyaz_kilometer_anjam', 'کیلومتر انجام', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1008, 'انجام دهنده', 'servis_tamirat_morede_niyaz_anjam_dahandeh', 'انجام دهنده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1009, 'مکانیک', 'servis_tamirat_morede_niyaz_mechanic', 'مکانیک', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1010, 'هزینه', 'servis_tamirat_morede_niyaz_hazineh', 'هزینه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1011, 'تصویر فاکتور', 'servis_tamirat_morede_niyaz_tasvire_faktor', 'تصویر فاکتور', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1012, 'توضیحات', 'servis_tamirat_morede_niyaz_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1101, 'نام مکانیک / فروشگاه', 'ashkhas_name_khanevadegi', 'نام مکانیک / فروشگاه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1102, 'نوع فعالیت', 'taamol_ba_sherkat_noe_taamol', 'نوع فعالیت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1201, 'نام مکانیک / فروشگاه', 'address_phone_ashkhas_id', 'نام مکانیک / فروشگاه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1202, 'شماره تماس', 'address_phone_phone', 'شماره تماس', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1203, 'نسبت', 'address_phone_nesbat', 'نسبت', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1204, 'آدرس', 'address_phone_address', 'آدرس', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1301, 'شخص مرتبط به پرونده', 'daavi_ashkhas_id', 'شخص مرتبط به پرونده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1302, 'شاکی/خواهان', 'daavi_shaki', 'شاکی/خواهان', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1303, 'متشاکی/خوانده', 'daavi_moteshaki', 'متشاکی/خوانده', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1304, 'موضوع', 'daavi_mozoo', 'موضوع', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1305, 'خودرو', 'daavi_khodro_id', 'خودرو', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1306, 'نوع دعوا', 'daavi_noe_dava', 'نوع دعوا', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1307, 'مرحله رسیدگی', 'daavi_marhaleye_residegi', 'مرحله رسیدگی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1308, 'محل رسیدگی', 'daavi_mahale_residegi', 'محل رسیدگی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1309, 'شعبه', 'daavi_shobe', 'شعبه', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1310, 'نام و شماره کلانتری', 'daavi_kalantri', 'نام و شماره کلانتری', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1311, 'شماره پرونده کلانتری', 'daavi_shomareh_parvandeh_kalantri', 'شماره پرونده کلانتری', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1312, 'شماره پرونده مرجع قضایی', 'daavi_shomareh_parvandeh', 'شماره پرونده مرجع قضایی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1313, 'شماره بایگانی مرجع قضایی', 'daavi_shomareh_baygani', 'شماره بایگانی مرجع قضایی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1314, 'تاریخ مراجعه بعدی', 'daavi_tarikh_morajeh_badi', 'تاریخ مراجعه بعدی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1315, 'اقدامات لازم', 'daavi_eghdamate_lazem', 'اقدامات لازم', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1316, 'رای نهایی', 'daavi_raye_nahayi', 'رای نهایی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1317, 'تصویر رای نهایی', 'daavi_tasvir_raye_nahayi', 'تصویر رای نهایی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1318, 'دعوای مرحله قبلی', 'daavi_marhaleye_ghabl_id', 'دعوای مرحله قبلی', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_label` VALUES (1319, 'توضیحات', 'daavi_tozihat', 'توضیحات', '', '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_language
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_language`;
CREATE TABLE `wp_sst_language`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 493 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_language
-- ----------------------------
INSERT INTO `wp_sst_language` VALUES (1, 'Abkhazian', '', 'ab', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (2, 'Afar', '', 'aa', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (3, 'Afrikaans', '', 'af', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (4, 'Albanian', '', 'sq', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (5, 'Amharic', '', 'am', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (6, 'Arabic', '', 'ar', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (7, 'Aragonese', '', 'an', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (8, 'Armenian', '', 'hy', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (9, 'Assamese', '', 'as', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (10, 'Aymara', '', 'ay', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (11, 'Azerbaijani', '', 'az', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (12, 'Bashkir', '', 'ba', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (13, 'Basque', '', 'eu', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (14, 'Bengali (Bangla)', '', 'bn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (15, 'Bhutani', '', 'dz', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (16, 'Bihari', '', 'bh', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (17, 'Bislama', '', 'bi', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (18, 'Breton', '', 'br', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (19, 'Bulgarian', '', 'bg', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (20, 'Burmese', '', 'my', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (21, 'Byelorussian (Belarusian)', '', 'be', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (22, 'Cambodian', '', 'km', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (23, 'Catalan', '', 'ca', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (24, 'Cherokee', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (25, 'Chewa', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (329, 'Abkhazian', '', 'ab', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (330, 'Afar', '', 'aa', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (331, 'Afrikaans', '', 'af', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (332, 'Albanian', '', 'sq', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (333, 'Amharic', '', 'am', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (334, 'Arabic', '', 'ar', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (335, 'Aragonese', '', 'an', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (336, 'Armenian', '', 'hy', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (337, 'Assamese', '', 'as', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (338, 'Aymara', '', 'ay', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (339, 'Azerbaijani', '', 'az', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (340, 'Bashkir', '', 'ba', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (341, 'Basque', '', 'eu', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (342, 'Bengali (Bangla)', '', 'bn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (343, 'Bhutani', '', 'dz', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (344, 'Bihari', '', 'bh', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (345, 'Bislama', '', 'bi', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (346, 'Breton', '', 'br', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (347, 'Bulgarian', '', 'bg', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (348, 'Burmese', '', 'my', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (349, 'Byelorussian (Belarusian)', '', 'be', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (350, 'Cambodian', '', 'km', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (351, 'Catalan', '', 'ca', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (352, 'Cherokee', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (353, 'Chewa', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (354, 'Chinese', '', 'zh', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (355, 'Chinese (Simplified)', '', 'zh-Hans', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (356, 'Chinese (Traditional)', '', 'zh-Hant', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (357, 'Corsican', '', 'co', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (358, 'Croatian', '', 'hr', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (359, 'Czech', '', 'cs', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (360, 'Danish', '', 'da', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (361, 'Divehi', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (362, 'Dutch', '', 'nl', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (363, 'Edo', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (364, 'English', '', 'en', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (365, 'Esperanto', '', 'eo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (366, 'Estonian', '', 'et', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (367, 'Faeroese', '', 'fo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (368, 'Farsi', '', 'fa', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (369, 'Fiji', '', 'fj', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (370, 'Finnish', '', 'fi', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (371, 'Flemish', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (372, 'French', '', 'fr', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (373, 'Frisian', '', 'fy', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (374, 'Fulfulde', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (375, 'Galician', '', 'gl', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (376, 'Gaelic (Scottish)', '', 'gd', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (377, 'Gaelic (Manx)', '', 'gv', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (378, 'Georgian', '', 'ka', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (379, 'German', '', 'de', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (380, 'Greek', '', 'el', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (381, 'Greenlandic', '', 'kl', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (382, 'Guarani', '', 'gn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (383, 'Gujarati', '', 'gu', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (384, 'Haitian Creole', '', 'ht', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (385, 'Hausa', '', 'ha', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (386, 'Hawaiian', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (387, 'Hebrew', '', 'he, iw', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (388, 'Hindi', '', 'hi', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (26, 'Chinese', '', 'zh', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (389, 'Hungarian', '', 'hu', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (390, 'Ibibio', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (391, 'Icelandic', '', 'is', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (392, 'Ido', '', 'io', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (393, 'Igbo', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (394, 'Indonesian', '', 'id, in', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (395, 'Interlingua', '', 'ia', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (396, 'Interlingue', '', 'ie', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (397, 'Inuktitut', '', 'iu', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (398, 'Inupiak', '', 'ik', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (399, 'Irish', '', 'ga', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (400, 'Italian', '', 'it', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (401, 'Japanese', '', 'ja', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (402, 'Javanese', '', 'jv', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (403, 'Kannada', '', 'kn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (404, 'Kanuri', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (405, 'Kashmiri', '', 'ks', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (406, 'Kazakh', '', 'kk', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (407, 'Kinyarwanda (Ruanda)', '', 'rw', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (408, 'Kirghiz', '', 'ky', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (409, 'Kirundi (Rundi)', '', 'rn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (410, 'Konkani', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (411, 'Korean', '', 'ko', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (412, 'Kurdish', '', 'ku', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (413, 'Laothian', '', 'lo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (414, 'Latin', '', 'la', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (415, 'Latvian (Lettish)', '', 'lv', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (416, 'Limburgish ( Limburger)', '', 'li', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (417, 'Lingala', '', 'ln', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (418, 'Lithuanian', '', 'lt', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (419, 'Macedonian', '', 'mk', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (420, 'Malagasy', '', 'mg', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (421, 'Malay', '', 'ms', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (422, 'Malayalam', '', 'ml', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (423, 'Maltese', '', 'mt', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (424, 'Maori', '', 'mi', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (425, 'Marathi', '', 'mr', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (426, 'Moldavian', '', 'mo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (427, 'Mongolian', '', 'mn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (428, 'Nauru', '', 'na', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (429, 'Nepali', '', 'ne', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (430, 'Norwegian', '', 'no', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (431, 'Occitan', '', 'oc', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (432, 'Oriya', '', 'or', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (433, 'Oromo (Afaan Oromo)', '', 'om', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (434, 'Papiamentu', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (435, 'Pashto (Pushto)', '', 'ps', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (436, 'Polish', '', 'pl', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (437, 'Portuguese', '', 'pt', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (438, 'Punjabi', '', 'pa', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (439, 'Quechua', '', 'qu', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (440, 'Rhaeto-Romance', '', 'rm', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (441, 'Romanian', '', 'ro', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (442, 'Russian', '', 'ru', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (443, 'Sami (Lappish)', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (444, 'Samoan', '', 'sm', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (445, 'Sangro', '', 'sg', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (446, 'Sanskrit', '', 'sa', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (447, 'Serbian', '', 'sr', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (448, 'Serbo-Croatian', '', 'sh', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (449, 'Sesotho', '', 'st', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (450, 'Setswana', '', 'tn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (451, 'Shona', '', 'sn', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (452, 'Sichuan Yi', '', 'ii', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (453, 'Sindhi', '', 'sd', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (454, 'Sinhalese', '', 'si', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (455, 'Siswati', '', 'ss', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (456, 'Slovak', '', 'sk', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (457, 'Slovenian', '', 'sl', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (458, 'Somali', '', 'so', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (459, 'Spanish', '', 'es', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (460, 'Sundanese', '', 'su', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (461, 'Swahili (Kiswahili)', '', 'sw', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (462, 'Swedish', '', 'sv', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (463, 'Syriac', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (464, 'Tagalog', '', 'tl', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (465, 'Tajik', '', 'tg', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (466, 'Tamazight', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (467, 'Tamil', '', 'ta', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (468, 'Tatar', '', 'tt', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (469, 'Telugu', '', 'te', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (470, 'Thai', '', 'th', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (471, 'Tibetan', '', 'bo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (472, 'Tigrinya', '', 'ti', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (473, 'Tonga', '', 'to', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (474, 'Tsonga', '', 'ts', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (475, 'Turkish', '', 'tr', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (476, 'Turkmen', '', 'tk', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (477, 'Twi', '', 'tw', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (478, 'Uighur', '', 'ug', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (479, 'Ukrainian', '', 'uk', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (480, 'Urdu', '', 'ur', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (481, 'Uzbek', '', 'uz', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (482, 'Venda', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (483, 'Vietnamese', '', 'vi', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (484, 'Volapk', '', 'vo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (485, 'Wallon', '', 'wa', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (486, 'Welsh', '', 'cy', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (487, 'Wolof', '', 'wo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (488, 'Xhosa', '', 'xh', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (489, 'Yi', '', '', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (490, 'Yiddish', '', 'yi,ji', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (491, 'Yoruba', '', 'yo', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (492, 'Zulu', '', 'zu', '', '', 'Ehrajat', '2018-06-03 18:44:03', '2018-06-03 18:44:03');
INSERT INTO `wp_sst_language` VALUES (27, 'Chinese (Simplified)', '', 'zh-Hans', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (28, 'Chinese (Traditional)', '', 'zh-Hant', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (29, 'Corsican', '', 'co', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (30, 'Croatian', '', 'hr', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (31, 'Czech', '', 'cs', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (32, 'Danish', '', 'da', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (33, 'Divehi', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (34, 'Dutch', '', 'nl', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (35, 'Edo', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (36, 'English', '', 'en', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (37, 'Esperanto', '', 'eo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (38, 'Estonian', '', 'et', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (39, 'Faeroese', '', 'fo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (40, 'Farsi', '', 'fa', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (41, 'Fiji', '', 'fj', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (42, 'Finnish', '', 'fi', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (43, 'Flemish', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (44, 'French', '', 'fr', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (45, 'Frisian', '', 'fy', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (46, 'Fulfulde', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (47, 'Galician', '', 'gl', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (48, 'Gaelic (Scottish)', '', 'gd', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (49, 'Gaelic (Manx)', '', 'gv', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (50, 'Georgian', '', 'ka', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (51, 'German', '', 'de', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (52, 'Greek', '', 'el', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (53, 'Greenlandic', '', 'kl', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (54, 'Guarani', '', 'gn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (55, 'Gujarati', '', 'gu', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (56, 'Haitian Creole', '', 'ht', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (57, 'Hausa', '', 'ha', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (58, 'Hawaiian', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (59, 'Hebrew', '', 'he, iw', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (60, 'Hindi', '', 'hi', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (61, 'Hungarian', '', 'hu', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (62, 'Ibibio', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (63, 'Icelandic', '', 'is', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (64, 'Ido', '', 'io', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (65, 'Igbo', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (66, 'Indonesian', '', 'id, in', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (67, 'Interlingua', '', 'ia', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (68, 'Interlingue', '', 'ie', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (69, 'Inuktitut', '', 'iu', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (70, 'Inupiak', '', 'ik', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (71, 'Irish', '', 'ga', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (72, 'Italian', '', 'it', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (73, 'Japanese', '', 'ja', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (74, 'Javanese', '', 'jv', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (75, 'Kannada', '', 'kn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (76, 'Kanuri', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (77, 'Kashmiri', '', 'ks', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (78, 'Kazakh', '', 'kk', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (79, 'Kinyarwanda (Ruanda)', '', 'rw', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (80, 'Kirghiz', '', 'ky', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (81, 'Kirundi (Rundi)', '', 'rn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (82, 'Konkani', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (83, 'Korean', '', 'ko', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (84, 'Kurdish', '', 'ku', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (85, 'Laothian', '', 'lo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (86, 'Latin', '', 'la', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (87, 'Latvian (Lettish)', '', 'lv', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (88, 'Limburgish ( Limburger)', '', 'li', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (89, 'Lingala', '', 'ln', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (90, 'Lithuanian', '', 'lt', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (91, 'Macedonian', '', 'mk', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (92, 'Malagasy', '', 'mg', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (93, 'Malay', '', 'ms', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (94, 'Malayalam', '', 'ml', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (95, 'Maltese', '', 'mt', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (96, 'Maori', '', 'mi', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (97, 'Marathi', '', 'mr', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (98, 'Moldavian', '', 'mo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (99, 'Mongolian', '', 'mn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (100, 'Nauru', '', 'na', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (101, 'Nepali', '', 'ne', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (102, 'Norwegian', '', 'no', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (103, 'Occitan', '', 'oc', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (104, 'Oriya', '', 'or', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (105, 'Oromo (Afaan Oromo)', '', 'om', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (106, 'Papiamentu', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (107, 'Pashto (Pushto)', '', 'ps', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (108, 'Polish', '', 'pl', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (109, 'Portuguese', '', 'pt', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (110, 'Punjabi', '', 'pa', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (111, 'Quechua', '', 'qu', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (112, 'Rhaeto-Romance', '', 'rm', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (113, 'Romanian', '', 'ro', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (114, 'Russian', '', 'ru', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (115, 'Sami (Lappish)', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (116, 'Samoan', '', 'sm', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (117, 'Sangro', '', 'sg', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (118, 'Sanskrit', '', 'sa', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (119, 'Serbian', '', 'sr', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (120, 'Serbo-Croatian', '', 'sh', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (121, 'Sesotho', '', 'st', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (122, 'Setswana', '', 'tn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (123, 'Shona', '', 'sn', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (124, 'Sichuan Yi', '', 'ii', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (125, 'Sindhi', '', 'sd', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (126, 'Sinhalese', '', 'si', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (127, 'Siswati', '', 'ss', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (128, 'Slovak', '', 'sk', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (129, 'Slovenian', '', 'sl', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (130, 'Somali', '', 'so', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (131, 'Spanish', '', 'es', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (132, 'Sundanese', '', 'su', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (133, 'Swahili (Kiswahili)', '', 'sw', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (134, 'Swedish', '', 'sv', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (135, 'Syriac', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (136, 'Tagalog', '', 'tl', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (137, 'Tajik', '', 'tg', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (138, 'Tamazight', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (139, 'Tamil', '', 'ta', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (140, 'Tatar', '', 'tt', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (141, 'Telugu', '', 'te', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (142, 'Thai', '', 'th', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (143, 'Tibetan', '', 'bo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (144, 'Tigrinya', '', 'ti', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (145, 'Tonga', '', 'to', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (146, 'Tsonga', '', 'ts', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (147, 'Turkish', '', 'tr', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (148, 'Turkmen', '', 'tk', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (149, 'Twi', '', 'tw', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (150, 'Uighur', '', 'ug', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (151, 'Ukrainian', '', 'uk', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (152, 'Urdu', '', 'ur', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (153, 'Uzbek', '', 'uz', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (154, 'Venda', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (155, 'Vietnamese', '', 'vi', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (156, 'Volapk', '', 'vo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (157, 'Wallon', '', 'wa', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (158, 'Welsh', '', 'cy', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (159, 'Wolof', '', 'wo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (160, 'Xhosa', '', 'xh', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (161, 'Yi', '', '', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (162, 'Yiddish', '', 'yi,ji', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (163, 'Yoruba', '', 'yo', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (164, 'Zulu', '', 'zu', '', '', 'Ehrajat', '2016-01-07 20:24:52', '2016-01-07 20:24:52');
INSERT INTO `wp_sst_language` VALUES (165, 'Abkhazian', '', 'ab', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (166, 'Afar', '', 'aa', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (167, 'Afrikaans', '', 'af', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (168, 'Albanian', '', 'sq', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (169, 'Amharic', '', 'am', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (170, 'Arabic', '', 'ar', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (171, 'Aragonese', '', 'an', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (172, 'Armenian', '', 'hy', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (173, 'Assamese', '', 'as', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (174, 'Aymara', '', 'ay', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (175, 'Azerbaijani', '', 'az', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (176, 'Bashkir', '', 'ba', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (177, 'Basque', '', 'eu', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (178, 'Bengali (Bangla)', '', 'bn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (179, 'Bhutani', '', 'dz', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (180, 'Bihari', '', 'bh', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (181, 'Bislama', '', 'bi', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (182, 'Breton', '', 'br', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (183, 'Bulgarian', '', 'bg', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (184, 'Burmese', '', 'my', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (185, 'Byelorussian (Belarusian)', '', 'be', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (186, 'Cambodian', '', 'km', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (187, 'Catalan', '', 'ca', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (188, 'Cherokee', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (189, 'Chewa', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (190, 'Chinese', '', 'zh', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (191, 'Chinese (Simplified)', '', 'zh-Hans', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (192, 'Chinese (Traditional)', '', 'zh-Hant', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (193, 'Corsican', '', 'co', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (194, 'Croatian', '', 'hr', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (195, 'Czech', '', 'cs', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (196, 'Danish', '', 'da', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (197, 'Divehi', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (198, 'Dutch', '', 'nl', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (199, 'Edo', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (200, 'English', '', 'en', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (201, 'Esperanto', '', 'eo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (202, 'Estonian', '', 'et', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (203, 'Faeroese', '', 'fo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (204, 'Farsi', '', 'fa', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (205, 'Fiji', '', 'fj', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (206, 'Finnish', '', 'fi', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (207, 'Flemish', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (208, 'French', '', 'fr', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (209, 'Frisian', '', 'fy', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (210, 'Fulfulde', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (211, 'Galician', '', 'gl', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (212, 'Gaelic (Scottish)', '', 'gd', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (213, 'Gaelic (Manx)', '', 'gv', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (214, 'Georgian', '', 'ka', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (215, 'German', '', 'de', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (216, 'Greek', '', 'el', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (217, 'Greenlandic', '', 'kl', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (218, 'Guarani', '', 'gn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (219, 'Gujarati', '', 'gu', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (220, 'Haitian Creole', '', 'ht', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (221, 'Hausa', '', 'ha', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (222, 'Hawaiian', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (223, 'Hebrew', '', 'he, iw', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (224, 'Hindi', '', 'hi', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (225, 'Hungarian', '', 'hu', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (226, 'Ibibio', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (227, 'Icelandic', '', 'is', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (228, 'Ido', '', 'io', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (229, 'Igbo', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (230, 'Indonesian', '', 'id, in', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (231, 'Interlingua', '', 'ia', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (232, 'Interlingue', '', 'ie', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (233, 'Inuktitut', '', 'iu', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (234, 'Inupiak', '', 'ik', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (235, 'Irish', '', 'ga', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (236, 'Italian', '', 'it', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (237, 'Japanese', '', 'ja', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (238, 'Javanese', '', 'jv', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (239, 'Kannada', '', 'kn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (240, 'Kanuri', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (241, 'Kashmiri', '', 'ks', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (242, 'Kazakh', '', 'kk', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (243, 'Kinyarwanda (Ruanda)', '', 'rw', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (244, 'Kirghiz', '', 'ky', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (245, 'Kirundi (Rundi)', '', 'rn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (246, 'Konkani', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (247, 'Korean', '', 'ko', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (248, 'Kurdish', '', 'ku', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (249, 'Laothian', '', 'lo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (250, 'Latin', '', 'la', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (251, 'Latvian (Lettish)', '', 'lv', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (252, 'Limburgish ( Limburger)', '', 'li', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (253, 'Lingala', '', 'ln', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (254, 'Lithuanian', '', 'lt', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (255, 'Macedonian', '', 'mk', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (256, 'Malagasy', '', 'mg', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (257, 'Malay', '', 'ms', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (258, 'Malayalam', '', 'ml', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (259, 'Maltese', '', 'mt', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (260, 'Maori', '', 'mi', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (261, 'Marathi', '', 'mr', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (262, 'Moldavian', '', 'mo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (263, 'Mongolian', '', 'mn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (264, 'Nauru', '', 'na', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (265, 'Nepali', '', 'ne', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (266, 'Norwegian', '', 'no', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (267, 'Occitan', '', 'oc', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (268, 'Oriya', '', 'or', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (269, 'Oromo (Afaan Oromo)', '', 'om', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (270, 'Papiamentu', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (271, 'Pashto (Pushto)', '', 'ps', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (272, 'Polish', '', 'pl', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (273, 'Portuguese', '', 'pt', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (274, 'Punjabi', '', 'pa', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (275, 'Quechua', '', 'qu', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (276, 'Rhaeto-Romance', '', 'rm', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (277, 'Romanian', '', 'ro', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (278, 'Russian', '', 'ru', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (279, 'Sami (Lappish)', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (280, 'Samoan', '', 'sm', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (281, 'Sangro', '', 'sg', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (282, 'Sanskrit', '', 'sa', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (283, 'Serbian', '', 'sr', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (284, 'Serbo-Croatian', '', 'sh', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (285, 'Sesotho', '', 'st', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (286, 'Setswana', '', 'tn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (287, 'Shona', '', 'sn', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (288, 'Sichuan Yi', '', 'ii', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (289, 'Sindhi', '', 'sd', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (290, 'Sinhalese', '', 'si', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (291, 'Siswati', '', 'ss', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (292, 'Slovak', '', 'sk', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (293, 'Slovenian', '', 'sl', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (294, 'Somali', '', 'so', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (295, 'Spanish', '', 'es', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (296, 'Sundanese', '', 'su', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (297, 'Swahili (Kiswahili)', '', 'sw', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (298, 'Swedish', '', 'sv', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (299, 'Syriac', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (300, 'Tagalog', '', 'tl', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (301, 'Tajik', '', 'tg', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (302, 'Tamazight', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (303, 'Tamil', '', 'ta', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (304, 'Tatar', '', 'tt', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (305, 'Telugu', '', 'te', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (306, 'Thai', '', 'th', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (307, 'Tibetan', '', 'bo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (308, 'Tigrinya', '', 'ti', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (309, 'Tonga', '', 'to', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (310, 'Tsonga', '', 'ts', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (311, 'Turkish', '', 'tr', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (312, 'Turkmen', '', 'tk', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (313, 'Twi', '', 'tw', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (314, 'Uighur', '', 'ug', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (315, 'Ukrainian', '', 'uk', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (316, 'Urdu', '', 'ur', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (317, 'Uzbek', '', 'uz', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (318, 'Venda', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (319, 'Vietnamese', '', 'vi', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (320, 'Volapk', '', 'vo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (321, 'Wallon', '', 'wa', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (322, 'Welsh', '', 'cy', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (323, 'Wolof', '', 'wo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (324, 'Xhosa', '', 'xh', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (325, 'Yi', '', '', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (326, 'Yiddish', '', 'yi,ji', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (327, 'Yoruba', '', 'yo', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');
INSERT INTO `wp_sst_language` VALUES (328, 'Zulu', '', 'zu', '', '', 'Ehrajat', '2018-01-08 14:15:18', '2018-01-08 14:15:18');

-- ----------------------------
-- Table structure for wp_sst_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_options`;
CREATE TABLE `wp_sst_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 426527 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_options
-- ----------------------------
INSERT INTO `wp_sst_options` VALUES (1, 'defaultFormMethod', 'post', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (2, 'defaultFormEnctype', 'multipart/form-data', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (3, 'fieldOrBlockPriority', 'block', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (4, 'insertLanguageTable', '1', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (5, 'defaultFormTarget', 'multipart/form-data', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (6, 'default_file_destination', 'default_file_path', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (7, 'defaultPack', '1', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (8, 'defaultValue', '1', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (11, 'save_file', 'http://localhost/wp-content/plugins/jqwidget/save-file.php', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426522, 'ehrajat_url', 'http://localhost/wp-content/plugins/ehrajat-form-z-custom/setup/', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426523, 'form_page_url', 'http://localhost/%d9%81%d8%b1%d9%85%d9%87%d8%a7/', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426524, 'form_post_page_file', 'post-page.php', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426514, 'json_url', 'http://localhost/wp-content/plugins/jqwidget-custom/', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426515, 'json_file_name', 'json.php', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426516, 'json_file', 'http://localhost/wp-content/plugins/jqwidget-custom/json.php', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426517, 'list_page', 'http://localhost/%d9%84%db%8c%d8%b3%d8%aa-%d9%87%d8%a7/', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426518, 'list_post_page_file', 'post-page.php', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426521, 'ehrajat_path', 'E:\\sys-dev\\htdocs\\wp-content\\plugins\\ehrajat-form-z-custom\\setup/', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426513, 'json_path', 'E:\\sys-dev\\htdocs\\wp-content\\plugins\\jqwidget-custom/', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426519, 'count_bedehkari_be_digaran', '0', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426520, 'count_ghardad_between_others', '0', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426525, 'sherkat_id', '11', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_options` VALUES (426526, 'mohasebe_doreye_kamel', 'no', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_pack
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_pack`;
CREATE TABLE `wp_sst_pack`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_pack
-- ----------------------------
INSERT INTO `wp_sst_pack` VALUES (1, '', '', '<div dir=\"rtl\" style=\"width:100% !important;\"', '</div>', 'form', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (2, '', '', '<div dir=\"rtl\"  style=\"width:100% !important; float:right;\"', '</div>', 'block', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (3, '', '', '<div dir=\"rtl\"', '</div></br>', 'field', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (4, '', '', '<span dir=\"rtl\"', '</span>', 'input', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (5, '', '', '<span dir=\"rtl\" style=\"width:30% !important; float:right;\" ', '</span>', 'label', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (6, '', '', '<span dir=\"rtl\"', '</span>', 'text', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (7, '', '', '<span dir=\"rtl\" style=\"font-size:12px\"', '</span>', 'note', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (8, '', '', '<span dir=\"rtl\"', '</span>', 'tooltip', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (11, '', '', '<div dir=\"rtl\" style=\"width:100% !important;\"', '</div>', 'form', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (12, '', '', '<div dir=\"rtl\"  style=\"width:50% !important; float:right;\"', '</div>', 'block', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (13, '', '', '<div dir=\"rtl\"', '</div></br>', 'field', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (14, '', '', '<span dir=\"rtl\"', '</span>', 'input', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (15, '', '', '<span dir=\"rtl\" style=\"width:20% !important; float:right;\" ', '</span>', 'label', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (16, '', '', '<span dir=\"rtl\"', '</span>', 'text', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (17, '', '', '<span dir=\"rtl\" style=\"font-size:12px\"', '</span>', 'note', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_pack` VALUES (18, '', '', '<span dir=\"rtl\"', '</span>', 'tooltip', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_select_options
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_select_options`;
CREATE TABLE `wp_sst_select_options`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `optgroup_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `selected` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `event_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `appearance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `the_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `meta_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 757 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_select_options
-- ----------------------------
INSERT INTO `wp_sst_select_options` VALUES (1, 'خالی', '', '', 'خالی', '', '0', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (2, '1/8', '', '', '1/8', '', '1', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (3, 'یک چهارم', '', '', 'یک چهارم', '', '2', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (4, '3/8', '', '', '3/8', '', '3', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (5, 'نصف', '', '', 'نصف', '', '4', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (6, '5/8', '', '', '5/8', '', '5', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (7, 'سه چهارم', '', '', 'سه چهارم', '', '6', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (8, '7/8', '', '', '7/8', '', '7', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (9, 'فول', '', '', 'فول', '', '8', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (10, 'موبایل', '', '', 'موبایل', '', 'موبایل', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (11, 'منزل', '', '', 'منزل', '', 'منزل', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (12, 'محل کار', '', '', 'محل کار', '', 'محل کار', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (13, 'دوست', '', '', 'دوست', '', 'دوست', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (14, 'همکار', '', '', 'همکار', '', 'همکار', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (15, 'اقوام', '', '', 'اقوام', '', 'اقوام', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (16, 'پدر', '', '', 'پدر', '', 'پدر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (17, 'مادر', '', '', 'مادر', '', 'مادر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (18, 'برادر', '', '', 'برادر', '', 'برادر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (19, 'خواهر', '', '', 'خواهر', '', 'خواهر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (20, 'تماس گرفته شده', '', '', 'تماس گرفته شده', '', 'تماس گرفته شده', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (21, 'همسر', '', '', 'همسر', '', 'همسر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (22, 'شاکی', '', '', 'شاکی', '', 'شاکی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (23, 'زیان دیده', '', '', 'زیان دیده', '', 'زیان دیده', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (24, 'فرزند', '', '', 'فرزند', '', 'فرزند', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (30, 'واسطه گری با ضمانت پرداخت', '', '', 'واسطه با ضمانت پرداخت', '', '1', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (31, 'معرفی بدون ضمانت پرداخت', '', '', 'معرفی بدون ضمانت پرداخت', '', '2', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (40, 'ثالث', '', '', 'ثالث', '', 'ثالث', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (41, 'بدنه', '', '', 'بدنه', '', 'بدنه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (50, 'کارپاد 102', '', '', 'کارپاد 102', '', 'کارپاد 102', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (51, 'کارپاد 104', '', '', 'کارپاد 104', '', 'کارپاد 104', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (52, 'اسمارتچ', '', '', 'اسمارتچ', '', 'اسمارتچ', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (53, 'افراتک', '', '', 'افراتک', '', 'افراتک', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (60, 'دارد', '', '', 'دارد', '', 'دارد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (61, 'ندارد', '', '', 'ندارد', '', 'ندارد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (70, 'است', '', '', 'است', '', 'است', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (71, 'نیست', '', '', 'نیست', '', 'نیست', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (80, 'روغن', '', '', 'روغن', '', 'روغن', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (81, 'کولر', '', '', 'کولر', '', 'کولر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (82, 'لنت جلو', '', '', 'لنت جلو', '', 'لنت جلو', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (83, 'لنت عقب', '', '', 'لنت عقب', '', 'لنت عقب', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (84, 'باطری', '', '', 'باطری', '', 'باطری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (85, 'روغن گیربکس', '', '', 'روغن گیربکس', '', 'روغن گیربکس', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (86, 'تسمه تایم', '', '', 'تسمه تایم', '', 'تسمه تایم', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (87, 'لاستیک و رینگ', '', '', 'لاستیک و رینگ', '', 'لاستیک و رینگ', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (88, 'چراغ ها', '', '', 'چراغ ها', '', 'چراغ ها', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (89, 'صافکاری و نقاشی', '', '', 'صافکاری و نقاشی', '', 'صافکاری و نقاشی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (90, 'تعمیر ضبط', '', '', 'تعمیر ضبط', '', 'تعمیر ضبط', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (91, 'جلوبندی', '', '', 'جلوبندی', '', 'جلوبندی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (92, 'موتوری', '', '', 'موتوری', '', 'موتوری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (93, 'برقی و سیم کشی', '', '', 'برقی و سیم کشی', '', 'برقی و سیم کشی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (94, 'سوییچ', '', '', 'سوییچ', '', 'سوییچ', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (95, 'سپر سازی', '', '', 'سپر سازی', '', 'سپر سازی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (96, 'روکش صندلی و فرمان', '', '', 'روکش صندلی و فرمان', '', 'روکش صندلی و فرمان', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (97, 'جرثقیل', '', '', 'جرثقیل', '', 'جرثقیل', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (98, 'سانروف', '', '', 'سانروف', '', 'سانروف', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (150, 'محاسبه نشود', '', '', 'محاسبه نشود', '', '24', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (151, 'تا 6 ساعت تاخیر محاسبه نشود', '', '', 'تا 6 ساعت تاخیر محاسبه نشود', '', '6', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (152, 'تا 9 ساعت تاخیر محاسبه نشود', '', '', 'تا 9 ساعت تاخیر محاسبه نشود', '', '9', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (153, 'تا 12 ساعت تاخیر محاسبه نشود', '', '', 'تا 12 ساعت تاخیر محاسبه نشود', '', '12', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (154, 'تاخیر روز کامل محاسبه شود', '', '', 'تاخیر روز کامل محاسبه شود', '', '100', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (160, 'منزل مشتری', '', '', 'منزل مشتری', '', 'منزل مشتری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (161, 'محل کار مشتری', '', '', 'محل کار مشتری', '', 'محل کار مشتری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (162, 'فرودگاه مهرآباد', '', '', 'فرودگاه مهرآباد', '', 'فرودگاه مهرآباد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (163, 'فرودگاه امام', '', '', 'فرودگاه امام', '', 'فرودگاه امام', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (164, 'منزل یا محل کار آشنایان مشتری', '', '', 'منزل یا محل کار آشنایان مشتری', '', 'منزل یا محل کار آشنایان مشتری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (165, 'منزل تحویلدار', '', '', 'منزل تحویلدار', '', 'منزل تحویلدار', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (166, 'شرکت', '', '', 'شرکت', '', 'شرکت', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (167, 'تعمیرگاه / صافکاری', '', '', 'تعمیرگاه / صافکاری', '', 'تعمیرگاه / صافکاری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (168, 'خیابان ', '', '', 'خیابان ', '', 'خیابان ', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (181, 'موجود', '', '', 'موجود', '', 'موجود', NULL, '', 'selected', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (182, 'ناموجود', '', '', 'ناموجود', '', 'ناموجود', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (183, 'موجود برای صورتحساب', '', '', 'موجود برای صورتحساب', '', 'موجود برای صورتحساب', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (184, 'اقساط', '', '', 'اقساط', '', 'اقساط', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (185, 'حقوق', '', '', 'حقوق', '', 'حقوق', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (201, 'ماهیانه - روز شمار', '', '', 'ماهیانه - روز شمار', '', 'md', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (202, 'ماهیانه -ماه شمار', '', '', 'ماهیانه -ماه شمار', '', 'mm', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (203, 'هفتگی', '', '', 'هفتگی', '', '7', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (204, 'محاسبه نشود', '', '', 'محاسبه نشود', '', '0', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (205, 'قابل وصول', '', '', 'قابل وصول', '', 'قابل وصول', NULL, '', 'selected', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (206, 'غیر قابل وصول', '', '', 'غیر قابل وصول', '', 'غیر قابل وصول', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (207, 'مشکوک الوصول', '', '', 'مشکوک الوصول', '', 'مشکوک الوصول', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (208, 'اقدام قضایی', '', '', 'اقدام قضایی', '', 'اقدام قضایی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (209, 'عدم پیگیری', '', '', 'عدم پیگیری', '', 'عدم پیگیری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (210, 'مشاوران', '', '', 'مشاوران', '', 'مشاوران', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (211, 'همکاران', '', '', 'همکاران', '', 'همکاران', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (221, 'کارتخوان', '', '', 'کارتخوان', '', 'کارتخوان', NULL, '', 'selected', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (222, 'کارت به کارت', '', '', 'کارت به کارت', '', 'کارت به کارت', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (223, 'خلافی', '', '', 'خلافی', '', 'خلافی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (224, 'نوشته کمیل', '', '', 'نوشته کمیل', '', 'نوشته کمیل', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (225, 'نوشته محمد شیروانی', '', '', 'نوشته محمد شیروانی', '', 'نوشته محمد شیروانی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (226, 'نوشته محمد موسوی', '', '', 'نوشته محمد موسوی', '', 'نوشته محمد موسوی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (227, 'نوشته شهاب', '', '', 'نوشته شهاب', '', 'نوشته شهاب', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (228, 'چک', '', '', 'چک', '', 'چک', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (229, 'نقد', '', '', 'نقد', '', 'نقد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (230, 'صورتجلسه', '', '', 'صورتجلسه', '', 'صورتجلسه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (231, 'پاس شد', '', '', 'پاس شد', '', 'پاس شد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (232, 'روزانه', '', '', 'روزانه', '', '1', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (236, 'بیمه', '', '', 'بیمه', '', 'بیمه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (301, 'مازراتی', '', '', 'مازراتی', '', 'مازراتی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (302, 'پورشه', '', '', 'پورشه', '', 'پورشه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (303, 'بنز', '', '', 'بنز', '', 'بنز', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (304, 'بی  ام و', '', '', 'بی  ام و', '', 'بی  ام و', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (305, 'لکسوس', '', '', 'لکسوس', '', 'لکسوس', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (306, 'ولو', '', '', 'ولو', '', 'ولو', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (307, 'تویوتا', '', '', 'تویوتا', '', 'تویوتا', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (308, 'هیوندای', '', '', 'هیوندای', '', 'هیوندای', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (309, 'کیا', '', '', 'کیا', '', 'کیا', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (310, 'رنو', '', '', 'رنو', '', 'رنو', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (311, 'پژو', '', '', 'پژو', '', 'پژو', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (351, 'سواری', '', '', 'سواری', '', 'سواری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (352, 'شاسی بلند', '', '', 'شاسی بلند', '', 'شاسی بلند', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (353, 'کوپه', '', '', 'کوپه', '', 'کوپه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (354, 'کروک', '', '', 'کروک', '', 'کروک', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (355, 'کوپه - کروک', '', '', 'کوپه - کروک', '', 'کوپه - کروک', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (356, 'آفرود', '', '', 'آفرود', '', 'آفرود', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (401, 'دنده ایی', '', '', 'دنده ایی', '', 'دنده ایی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (402, 'اتوماتیک', '', '', 'اتوماتیک', '', 'اتوماتیک', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (451, 'دو نفر', '', '', 'دو نفر', '', '2', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (452, 'چهار نفر', '', '', 'چهار نفر', '', '4', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (453, 'پنج نفر', '', '', 'پنج نفر', '', '5', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (454, 'شش نفر', '', '', 'شش نفر', '', '6', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (455, 'هفت نفر', '', '', 'هفت نفر', '', '7', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (501, 'دو درب', '', '', 'دو درب', '', '2', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (502, 'سه درب', '', '', 'سه درب', '', '3', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (503, 'چهار درب', '', '', 'چهار درب', '', '4', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (504, 'پنج درب', '', '', 'پنج درب', '', '5', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (551, 'تایید شد', '', '', 'تایید شد', '', 'تایید شد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (552, 'برآورد خسارت', '', '', 'برآورد خسارت', '', 'برآورد خسارت', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (553, 'اختلاف حساب', '', '', 'اختلاف حساب', '', 'اختلاف حساب', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (554, 'بررسی توافقات', '', '', 'بررسی توافقات', '', 'بررسی توافقات', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (555, 'بررسی کیلومتر', '', '', 'بررسی کیلومتر', '', 'بررسی کیلومتر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (556, 'بررسی تاخیر', '', '', 'بررسی تاخیر', '', 'بررسی تاخیر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (233, 'چک عودت شد', '', '', 'چک عودت شد', '', 'چک عودت شد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (234, 'چک برگشت خورد', '', '', 'چک برگشت خورد', '', 'چک برگشت خورد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (235, 'چک پاس نشد', '', '', 'چک پاس نشد', '', 'چک پاس نشد', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (238, 'شبا', '', '', 'شبا', '', 'شبا', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (237, 'حساب به حساب', '', '', 'حساب به حساب', '', 'حساب به حساب', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (239, 'مسئول تنخواه', '', '', 'مسئول تنخواه', '', 'مسئول تنخواه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (601, 'اقدام نشده', '', '', 'اقدام نشده', '', 'اقدام نشده', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (602, 'عدم اقدام با هماهنگی', '', '', 'عدم اقدام با هماهنگی', '', 'عدم اقدام با هماهنگی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (603, 'منتظر لوازم', '', '', 'منتظر لوازم', '', 'منتظر لوازم', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (604, 'در حال انجام', '', '', 'در حال انجام', '', 'در حال انجام', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (605, 'انجام شده', '', '', 'انجام شده', '', 'انجام شده', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (651, 'موبایل', '', '', 'موبایل', '', 'موبایل', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (652, 'مغازه / تعمیرگاه', '', '', 'مغازه / تعمیرگاه', '', 'مغازه / تعمیرگاه', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (653, 'انبار', '', '', 'انبار', '', 'انبار', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (42, 'معاینه فنی', '', '', 'معاینه فنی', '', 'معاینه فنی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (701, 'کیفری', '', '', 'کیفری', '', 'کیفری', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (702, 'حقوقی', '', '', 'حقوقی', '', 'حقوقی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (751, 'کلانتری - آگاهی', '', '', 'کلانتری - آگاهی', '', 'کلانتری - آگاهی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (752, 'دادسرا', '', '', 'دادسرا', '', 'دادسرا', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (753, 'بدوی', '', '', 'بدوی', '', 'بدوی', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (754, 'تجدید نظر', '', '', 'تجدید نظر', '', 'تجدید نظر', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (755, 'اعسار', '', '', 'اعسار', '', 'اعسار', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_select_options` VALUES (756, 'اجرای احکام', '', '', 'اجرای احکام', '', 'اجرای احکام', NULL, '', '', '', '', '', '', NULL, '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_standard
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_standard`;
CREATE TABLE `wp_sst_standard`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `option_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `max` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pattern` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `required` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `step` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `maxlength` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cols` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rows` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `wrap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `multiple` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `disabled` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `readonly` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ismap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `usemap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dynscr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `loop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `datafld` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `datascr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `width` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hspace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vspace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `standard_db_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `standard_condition_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_standard
-- ----------------------------
INSERT INTO `wp_sst_standard` VALUES (1, 'پیش فرض', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (2, 'لیست اشخاص با تعامل مالک', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (3, 'لیست اشخاص با تعامل صاحب امتیاز', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (4, 'لیست کل اشخاص', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (5, 'لیست انواع تعامل', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (6, 'لیست مستاجر و همکاران', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (7, 'لیست همکاران و مشاوران', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (8, 'لیست مالک و همکار و صاحب امتیاز', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (9, 'لیست مشاور و همکار و مالک و صاحب امتیاز', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (10, 'لیست خودرو', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (11, 'لیست مشاور و تحویلدار', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (12, 'تاریخ و زمان', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1-2', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (13, 'بنزین', '', '', '', '1-9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (14, 'نسبت', '', '', '', '10-24', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (15, 'نحوه تعامل با معرف مستاجر', '', '', '', '30-31', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (16, 'نوع بیمه', '', '', '', '40-42', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (17, 'نوع دستگاه', '', '', '', '50-53', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (18, 'دارد/ندارد', '', '', '', '60,61', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (19, 'است/نیست', '', '', '', '70-71', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (20, 'سرویسها و تعمیرات', '', '', '', '80-98', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (21, 'لیست اشخاص مشاور تحویلدار همکار کارمند همکار مستاجر', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (22, 'محاسبه هزینه بنزین و کیلومتر', '', '', '', '204', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (23, 'محاسبه تاخیر', '', '', '', '150-154', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (24, 'محل تحویل و محل عودت', '', '', '', '160-168', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (25, 'نحوه پرداخت', '\r\n', '', '', '221-231,233-239', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (26, ' دوره زمانی اجاره', '', '', '', '201-203,232', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (27, 'وضعییت وصول حساب', '', '', '', '205-211', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (28, 'تاریخ', '', '', 'نامعلوم', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3-4', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (29, 'موجودی خودرو', '', '', 'موجودی خودرو', '181-183', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (30, 'لیست مشاور و تحویلدار *', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (31, 'پیش فرض *', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (32, 'لیست کل اشخاص *', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (33, 'لیست انواع تعامل *', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (34, 'لیست اشخاص با تعامل مالک *', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (35, 'لیست مالک و همکار و صاحب امتیاز', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (36, 'لیست مستاجر و همکاران', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (37, 'لیست مالک و همکار و صاحب امتیاز', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (38, 'لیست خودرو', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (39, 'تاریخ و زمان', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1-2', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (40, 'تاریخ', '', '', 'نامعلوم', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3-4', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (42, 'لیست خودرو - فقط موجودها', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (43, 'لیست خودرو - فقط موجودها - اقساط و حقوق', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '13', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (44, 'لیست خودرو - فقط موجودها - اقساط - حقوق - موجود برای صورتحساب', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '14', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (45, 'لیست کل اشخاص با معرف ها*', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (46, 'لیست برندها', '', '', '', '301-311', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (47, 'لیست کلاس خودرو ها', '', '', '', '351-356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (48, 'نوع گیربکس', '', '', '', '401-402', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (49, 'تعداد سرنشین', '', '', '', '451-455', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (50, 'تعداد درب', '', '', '', '501-504', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (51, 'وضعییت چک قرارداد', '', '', '', '551-556', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (52, 'لیست کل اشخاص با معرف ها*', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (53, 'وضعییت انجام تعمیرات', '', '', '', '601-605', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (54, 'تعمیرکاران', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '17', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (55, 'لیست اصناف تعمیراتی', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (56, 'آدرس تلفن  اصناف تعمیراتی', '', '', '', '651-653', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (57, 'نوع دعوا', '', '', '', '701-702', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (58, 'مرحله رسیدگی', '', '', '', '751-756', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard` VALUES (59, 'دعوای مرحله قبلی', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_standard_condition
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_standard_condition`;
CREATE TABLE `wp_sst_standard_condition`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dependent_field_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dependent_select_option_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dependent_standard_db_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wp_sst_standard_db
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_standard_db`;
CREATE TABLE `wp_sst_standard_db`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `table` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value_col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value_function` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label_col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label_function` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_col` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_function` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `where` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `having` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `limit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `join` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `next_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_standard_db
-- ----------------------------
INSERT INTO `wp_sst_standard_db` VALUES (1, 'لیست اشخاص با تعامل مالک', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT * FROM wp_rent_taamol,wp_rent_taamol_ba_sherkat,wp_rent_ashkhas WHERE wp_rent_taamol.taamol_taamol=\'مالک\' AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (2, 'لیست اشخاص با تعامل صاحب امتیاز', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT * FROM wp_rent_taamol,wp_rent_taamol_ba_sherkat,wp_rent_ashkhas WHERE wp_rent_taamol.taamol_taamol=\'صاحب امتیاز\' AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (3, 'لیست کل اشخاص', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT * FROM wp_rent_ashkhas ORDER BY ashkhas_name_khanevadegi,ashkhas_nam,ashkhas_kode_meli;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (4, 'لیست انواع تعامل', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->taamol_taamol;', '', '', '', '', '', '', '', '', 'SELECT * FROM wp_rent_taamol ORDER BY taamol_taamol;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (5, 'لیست مستاجر و همکاران', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT * FROM wp_rent_taamol,wp_rent_taamol_ba_sherkat,wp_rent_ashkhas WHERE (wp_rent_taamol.taamol_taamol=\'مستاجر\' OR wp_rent_taamol.taamol_taamol=\'همکار\') AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (6, 'لیست همکاران و مشاوران', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT  DISTINCT wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_name_khanevadegi,wp_rent_ashkhas.ashkhas_kode_meli,wp_rent_ashkhas.id,wp_rent_ashkhas.save_id   FROM wp_rent_taamol,wp_rent_taamol_ba_sherkat,wp_rent_ashkhas WHERE (wp_rent_taamol.taamol_taamol=\'مشاور\'  OR wp_rent_taamol.taamol_taamol=\'همکار\') AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (7, 'لیست مالک و همکار و صاحب امتیاز', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT DISTINCT wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_name_khanevadegi,wp_rent_ashkhas.ashkhas_kode_meli,wp_rent_ashkhas.id,wp_rent_ashkhas.save_id FROM wp_rent_taamol,wp_rent_taamol_ba_sherkat,wp_rent_ashkhas WHERE (wp_rent_taamol.taamol_taamol=\'مشاور\'  OR wp_rent_taamol.taamol_taamol=\'همکار\' OR wp_rent_taamol.taamol_taamol=\'صاحب امتیاز\') AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (8, 'لیست مشاور و همکار و مالک و صاحب امتیاز', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;', '', '', '', '', '', '', '', '', 'SELECT DISTINCT wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_name_khanevadegi,wp_rent_ashkhas.ashkhas_kode_meli,wp_rent_ashkhas.id,wp_rent_ashkhas.save_id  FROM  wp_rent_taamol_ba_sherkat as wp_rent_taamol_ba_sherkat,wp_rent_taamol as wp_rent_taamol , wp_rent_ashkhas as wp_rent_ashkhas WHERE (wp_rent_taamol.taamol_taamol=\'مشاور\' OR wp_rent_taamol.taamol_taamol=\'همکار\' OR wp_rent_taamol.taamol_taamol=\'صاحب امتیاز\' OR wp_rent_taamol.taamol_taamol=\'مالک\') AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id  ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli ;\r\n', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (9, 'لیست خودرو همه', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->khodro.\' \'.$obj_option->malek_name_khanevadegi.\'-\'.$obj_option->saheb_emtiyaz_name_khanevadegi.\'-\'.$obj_option->rang.\'-\'.$obj_option->shomare_shahrbani;', '', '', '', '', '', '', '', '', '	SELECT\r\n	k.id AS id,\r\n	k.khodro_khodro AS khodro,\r\n	k.khodro_model AS model,\r\n	k.khodro_rang AS rang,\r\n	k.khodro_shomare_shahrbani AS shomare_shahrbani,\r\n	asa.ashkhas_nam AS saheb_emtiyaz_nam,\r\n	asa.ashkhas_name_khanevadegi AS saheb_emtiyaz_name_khanevadegi,\r\n	ama.ashkhas_nam AS malek_nam,\r\n	ama.ashkhas_name_khanevadegi AS malek_name_khanevadegi\r\nFROM\r\n	wp_rent_khodro AS k\r\nLEFT JOIN wp_rent_ashkhas AS asa ON k.khodro_saheb_emtiyaz_id = asa.id\r\n\r\nLEFT JOIN wp_rent_ashkhas AS ama ON k.khodro_malek_id = ama.id \r\n\r\nORDER BY\r\n	k.khodro_khodro,\r\n	k.khodro_rang,\r\n	k.khodro_model,\r\n	k.khodro_shomare_shahrbani;', '', 'SELECT * FROM  wp_rent_khodro WHERE khodro_vaziyat<>\'ناموجود\' OR khodro_vaziyat = \'شرکت\' OR khodro_vaziyat = NULL OR khodro_vaziyat = \'\' ORDER BY khodro_khodro,khodro_model,khodro_rang,khodro_shomare_shahrbani;\r\n', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (10, 'لیست مشاور و تحویلدار', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;\r\n', '', '', '', '', '', '', '', '', 'SELECT DISTINCT wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_name_khanevadegi,wp_rent_ashkhas.ashkhas_kode_meli,wp_rent_ashkhas.id,wp_rent_ashkhas.save_id  FROM  wp_rent_taamol_ba_sherkat as wp_rent_taamol_ba_sherkat,wp_rent_taamol as wp_rent_taamol ,wp_rent_ashkhas as wp_rent_ashkhas WHERE (wp_rent_taamol.taamol_taamol=\'مشاور\' OR wp_rent_taamol.taamol_taamol=\'تحویلدار\') AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id  ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli ;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (11, 'لیست اشخاص مشاور تحویلدار همکار کارمند همکار مستاجر', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->ashkhas_name_khanevadegi.\'-\'.$obj_option->ashkhas_nam.\'-\'.$obj_option->ashkhas_kode_meli;\r\n', '', '', '', '', '', '', '', '', 'SELECT DISTINCT wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_name_khanevadegi,wp_rent_ashkhas.ashkhas_kode_meli,wp_rent_ashkhas.id,wp_rent_ashkhas.save_id  FROM  wp_rent_taamol_ba_sherkat as wp_rent_taamol_ba_sherkat,wp_rent_taamol as wp_rent_taamol ,wp_rent_ashkhas as wp_rent_ashkhas WHERE (wp_rent_taamol.taamol_taamol=\'مشاور\' OR wp_rent_taamol.taamol_taamol=\'تحویلدار\' OR wp_rent_taamol.taamol_taamol=\'همکار\' OR wp_rent_taamol.taamol_taamol=\'کارمند همکار\' OR wp_rent_taamol.taamol_taamol=\'مستاجر\') AND wp_rent_taamol.id=wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AND wp_rent_taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id=wp_rent_ashkhas.id  ORDER BY wp_rent_ashkhas.ashkhas_name_khanevadegi ,wp_rent_ashkhas.ashkhas_nam,wp_rent_ashkhas.ashkhas_kode_meli ;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (12, 'لیست خودرو - فقط موجودها', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->khodro.\' \'.$obj_option->malek_name_khanevadegi.\'-\'.$obj_option->saheb_emtiyaz_name_khanevadegi.\'-\'.$obj_option->rang.\'-\'.$obj_option->shomare_shahrbani;', '', '', '', '', '', '', '', '', 'SELECT\r\n	k.id AS id,\r\n	k.khodro_khodro AS khodro,\r\n	k.khodro_model AS model,\r\n	k.khodro_rang AS rang,\r\n	k.khodro_shomare_shahrbani AS shomare_shahrbani,\r\n	asa.ashkhas_nam AS saheb_emtiyaz_nam,\r\n	asa.ashkhas_name_khanevadegi AS saheb_emtiyaz_name_khanevadegi,\r\n	ama.ashkhas_nam AS malek_nam,\r\n	ama.ashkhas_name_khanevadegi AS malek_name_khanevadegi\r\nFROM\r\n	wp_rent_khodro AS k\r\nLEFT JOIN wp_rent_ashkhas AS asa ON k.khodro_saheb_emtiyaz_id = asa.id\r\n\r\nLEFT JOIN wp_rent_ashkhas AS ama ON k.khodro_malek_id = ama.id \r\nWHERE\r\n	k.khodro_vaziyat = \'موجود\'\r\nORDER BY\r\n	k.khodro_khodro,\r\n	k.khodro_rang,\r\n	k.khodro_model,\r\n	k.khodro_shomare_shahrbani;', '', 'SELECT * FROM  wp_rent_khodro WHERE khodro_vaziyat<>\'ناموجود\' OR khodro_vaziyat = \'شرکت\' OR khodro_vaziyat = NULL OR khodro_vaziyat = \'\' ORDER BY khodro_khodro,khodro_model,khodro_rang,khodro_shomare_shahrbani;\r\n', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (13, 'لیست خودرو - فقط موجودها - اقساط و حقوق', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->khodro.\' \'.$obj_option->malek_name_khanevadegi.\'-\'.$obj_option->saheb_emtiyaz_name_khanevadegi.\'-\'.$obj_option->rang.\'-\'.$obj_option->shomare_shahrbani;', '', '', '', '', '', '', '', '', 'SELECT\r\n	k.id AS id,\r\n	k.khodro_khodro AS khodro,\r\n	k.khodro_model AS model,\r\n	k.khodro_rang AS rang,\r\n	k.khodro_shomare_shahrbani AS shomare_shahrbani,\r\n	asa.ashkhas_nam AS saheb_emtiyaz_nam,\r\n	asa.ashkhas_name_khanevadegi AS saheb_emtiyaz_name_khanevadegi,\r\n	ama.ashkhas_nam AS malek_nam,\r\n	ama.ashkhas_name_khanevadegi AS malek_name_khanevadegi\r\nFROM\r\n	wp_rent_khodro AS k\r\nLEFT JOIN wp_rent_ashkhas AS asa ON k.khodro_saheb_emtiyaz_id = asa.id\r\n\r\nLEFT JOIN wp_rent_ashkhas AS ama ON k.khodro_malek_id = ama.id \r\nWHERE\r\n	k.khodro_vaziyat = \'موجود\' OR\r\n	k.khodro_vaziyat = \'اقساط\' OR\r\n	k.khodro_vaziyat = \'حقوق\'\r\n\r\nORDER BY\r\n	k.khodro_khodro,\r\n	k.khodro_rang,\r\n	k.khodro_model,\r\n	k.khodro_shomare_shahrbani;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (14, 'لیست خودرو - فقط موجودها - اقساط - حقوق - موجود برای صورتحساب', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->khodro.\' \'.$obj_option->malek_name_khanevadegi.\'-\'.$obj_option->saheb_emtiyaz_name_khanevadegi.\'-\'.$obj_option->rang.\'-\'.$obj_option->shomare_shahrbani;', '', '', '', '', '', '', '', '', 'SELECT\r\n	k.id AS id,\r\n	k.khodro_khodro AS khodro,\r\n	k.khodro_model AS model,\r\n	k.khodro_rang AS rang,\r\n	k.khodro_shomare_shahrbani AS shomare_shahrbani,\r\n	asa.ashkhas_nam AS saheb_emtiyaz_nam,\r\n	asa.ashkhas_name_khanevadegi AS saheb_emtiyaz_name_khanevadegi,\r\n	ama.ashkhas_nam AS malek_nam,\r\n	ama.ashkhas_name_khanevadegi AS malek_name_khanevadegi\r\nFROM\r\n	wp_rent_khodro AS k\r\nLEFT JOIN wp_rent_ashkhas AS asa ON k.khodro_saheb_emtiyaz_id = asa.id\r\n\r\nLEFT JOIN wp_rent_ashkhas AS ama ON k.khodro_malek_id = ama.id \r\nWHERE\r\n	k.khodro_vaziyat = \'موجود\' OR\r\n	k.khodro_vaziyat = \'اقساط\' OR\r\n	k.khodro_vaziyat = \'حقوق\' OR\r\n	k.khodro_vaziyat = \'موجود برای صورتحساب\'\r\n	\r\n	\r\nORDER BY\r\n	k.khodro_khodro,\r\n	k.khodro_rang,\r\n	k.khodro_model,\r\n	k.khodro_shomare_shahrbani;', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (15, 'لیست کل اشخاص با معرف ها', '', '', '', 'return $obj_option->mid.\'-\'.$obj_option->sid;', '', 'return $obj_option->mashkhas_name_khanevadegi.\'-\'.$obj_option->mashkhas_nam.\'(\'.$obj_option->sashkhas_name_khanevadegi.\')\';', '', '', '', '', '', '', '', '', 'SELECT  \r\nshakhs.id AS sid, \r\nshakhs.ashkhas_name_khanevadegi AS sashkhas_name_khanevadegi, \r\nshakhs.ashkhas_nam AS sashkhas_nam, \r\nshakhs.ashkhas_kode_meli AS sashkhas_kode_meli, \r\nmoaref.id AS mid, \r\nmoaref.ashkhas_moaref AS mshkhas_moaref, \r\nmoaref.ashkhas_name_khanevadegi AS mashkhas_name_khanevadegi, \r\nmoaref.ashkhas_nam AS mashkhas_nam \r\nFROM wp_rent_ashkhas AS moaref \r\nLEFT JOIN wp_rent_ashkhas AS shakhs ON shakhs.id = moaref.ashkhas_moaref \r\nORDER BY moaref.ashkhas_name_khanevadegi,moaref.ashkhas_nam; ', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (16, 'لیست کل اشخاص با معرف ها', '', '', '', 'return $obj_option->mid;', '', 'return $obj_option->mashkhas_name_khanevadegi.\'-\'.$obj_option->mashkhas_nam.\'(\'.$obj_option->sashkhas_name_khanevadegi.\')\';', '', '', '', '', '', '', '', '', 'SELECT  \r\nshakhs.id AS sid, \r\nshakhs.ashkhas_name_khanevadegi AS sashkhas_name_khanevadegi, \r\nshakhs.ashkhas_nam AS sashkhas_nam, \r\nshakhs.ashkhas_kode_meli AS sashkhas_kode_meli, \r\nmoaref.id AS mid, \r\nmoaref.ashkhas_moaref AS mshkhas_moaref, \r\nmoaref.ashkhas_name_khanevadegi AS mashkhas_name_khanevadegi, \r\nmoaref.ashkhas_nam AS mashkhas_nam \r\nFROM wp_rent_ashkhas AS moaref \r\nLEFT JOIN wp_rent_ashkhas AS shakhs ON shakhs.id = moaref.ashkhas_moaref \r\nORDER BY moaref.ashkhas_name_khanevadegi,moaref.ashkhas_nam; ', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (17, 'لیست تعمیرکاران', '', '', '', 'return $obj_option->sid;', '', 'return $obj_option->sashkhas_name_khanevadegi.\'-\'.$obj_option->sashkhas_nam.\'(\'.$obj_option->ttaamol_taamol.\')\';', '', '', '', '', '', '', '', '', 'SELECT  \r\nshakhs.id AS sid, \r\nshakhs.ashkhas_name_khanevadegi AS sashkhas_name_khanevadegi, \r\nshakhs.ashkhas_nam AS sashkhas_nam, \r\ntaamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id AS tbstaamol_ba_sherkat_ashkhas_id,\r\ntaamol_ba_sherkat.taamol_ba_sherkat_noe_taamol AS tbstaamol_ba_sherkat_noe_taamol,\r\ntaamol.id AS tid,\r\ntaamol.taamol_taamol AS ttaamol_taamol\r\n\r\nFROM wp_rent_ashkhas AS shakhs\r\nLEFT JOIN wp_rent_taamol_ba_sherkat AS taamol_ba_sherkat ON taamol_ba_sherkat.taamol_ba_sherkat_ashkhas_id = shakhs.id\r\nLEFT JOIN wp_rent_taamol AS taamol ON taamol_ba_sherkat.taamol_ba_sherkat_noe_taamol = taamol.id \r\nWHERE taamol.taamol_taamol LIKE \'%مکانیک%\' \r\nOR taamol.taamol_taamol LIKE \'%سوییچ%\' \r\nOR taamol.taamol_taamol LIKE \'%ریموت%\'\r\nOR taamol.taamol_taamol LIKE \'%تعمیر%\'\r\nOR taamol.taamol_taamol LIKE \'%شیشه%\'\r\nOR taamol.taamol_taamol LIKE \'%رینگ%\'\r\nOR taamol.taamol_taamol LIKE \'%لاستیک%\'\r\nOR taamol.taamol_taamol LIKE \'%برچسب%\'\r\nOR taamol.taamol_taamol LIKE \'%کربن%\'\r\nOR taamol.taamol_taamol LIKE \'%نصاب%\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (18, 'لیست اصناف تعمیرات', '', '', '', 'return $obj_option->id;', '', 'return $obj_option->taamol_taamol;', '', '', '', '', '', '', '', '', 'SELECT * FROM wp_rent_taamol\r\nWHERE taamol_taamol LIKE \'%مکانیک%\' \r\nOR taamol_taamol LIKE \'%سوییچ%\' \r\nOR taamol_taamol LIKE \'%ریموت%\'\r\nOR taamol_taamol LIKE \'%تعمیر%\'\r\nOR taamol_taamol LIKE \'%شیشه%\'\r\nOR taamol_taamol LIKE \'%رینگ%\'\r\nOR taamol_taamol LIKE \'%لاستیک%\'\r\nOR taamol_taamol LIKE \'%برچسب%\'\r\nOR taamol_taamol LIKE \'%کربن%\'\r\nOR taamol_taamol LIKE \'%نصاب%\'\r\nOR taamol_taamol LIKE \'%لوازم%\'', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_db` VALUES (19, 'لیست دعاوی', '', '', '', 'return $obj_option->did;', '', 'return $obj_option->aashkhas_name_khanevadegi.\' \'.$obj_option->aashkhas_nam.\'-شاکی:\'.$obj_option->ddaavi_shaki.\'-متهم:\'.$obj_option->daavi_moteshaki.\'-موضوع:\'.$obj_option->ddaavi_mozoo.\'-خودرو:\'.$obj_option->kkhodro_khodro.\'-\'.$obj_option->kkhodro_shomare_shahrbani;', '', '', '', '', '', '', '', '', 'SELECT \r\ndaavi.id AS did,\r\n\r\ndaavi.daavi_ashkhas_id AS ddaavi_ashkhas_id,\r\ndaavi.daavi_khodro_id AS ddaavi_khodro_id,\r\ndaavi.daavi_shaki AS ddaavi_shaki,\r\ndaavi.daavi_moteshaki AS daavi_moteshaki,\r\ndaavi.daavi_mozoo AS ddaavi_mozoo,\r\n\r\nashkhas.id AS aid,\r\nashkhas.ashkhas_nam AS aashkhas_nam,\r\nashkhas.ashkhas_name_khanevadegi AS aashkhas_name_khanevadegi,\r\n\r\nkhodro.id AS  kid,\r\nkhodro.khodro_khodro AS kkhodro_khodro,\r\nkhodro.khodro_rang AS kkhodro_rang,\r\nkhodro.khodro_shomare_shahrbani AS kkhodro_shomare_shahrbani\r\nFROM 	\r\nwp_rent_daavi AS daavi\r\nLEFT JOIN wp_rent_ashkhas AS ashkhas \r\n	ON daavi.daavi_ashkhas_id =  ashkhas.id\r\nLEFT JOIN wp_rent_khodro AS khodro \r\n	ON daavi.daavi_khodro_id = khodro.id ', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_standard_meta
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_standard_meta`;
CREATE TABLE `wp_sst_standard_meta`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_standard_meta
-- ----------------------------
INSERT INTO `wp_sst_standard_meta` VALUES (1, 'showsTime', 'showsTime', 'showsTime', 'true', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_meta` VALUES (2, 'ifFormat', 'ifFormat', 'ifFormat', '%Y/%m/%d %H:%M', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_meta` VALUES (3, 'showsTime', 'showsTime', 'showsTime', 'false', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `wp_sst_standard_meta` VALUES (4, 'ifFormat', 'ifFormat', 'ifFormat', '%Y/%m/%d', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for wp_sst_type
-- ----------------------------
DROP TABLE IF EXISTS `wp_sst_type`;
CREATE TABLE `wp_sst_type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `epithet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `function` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `created` datetime(0) NOT NULL,
  `modified` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wp_sst_type
-- ----------------------------
INSERT INTO `wp_sst_type` VALUES (18, 'Map', 'map_field', 'map', 'sst_map', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (1, 'Button Field', 'button_field', 'button', 'sst_button', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (2, 'Check Box Field', 'check_box_field', 'checkbox', 'sst_checkbox', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (3, 'Color Picker Field', 'color_picker_field', 'color_picker', 'sst_color_picker', 'these meta can be used:\r\n		required\r\n        adjust\r\n        hash\r\n        caps\r\n        slider\r\n        valueElement\r\n        styleElement\r\n        onImmediateChange\r\n        hsv\r\n        rgb\r\n        minH\r\n        maxH\r\n        minS\r\n        maxS\r\n        minV\r\n        maxV\r\n        pickerOnfocus\r\n        pickerMode\r\n        pickerPosition\r\n        pickerSmartPosition\r\n        pickerButtonHeight\r\n        pickerClosable\r\n        pickerCloseText\r\n        pickerButtonColor\r\n        pickerFace\r\n        pickerFaceColor\r\n        pickerBorder\r\n        pickerBorderColor\r\n        pickerInset\r\n        pickerInsetColor\r\n        pickerZIndex\r\nand the class automatically will be named as color\r\n', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (4, 'Date Picker With Icon Field', 'date_picker_with_icon_field', 'date_picker_with_icon', 'sst_date_picker_with_icon', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (5, 'Dependent Select Field', 'dependent_select_field', 'dependent_select', 'sst_dependent_select', 'you must define standard_condition_ids that make decision that which condition show which options for the selected option and need an other select field which must have a unique id and without defining options or standard_db_id and dependent options must be inserted in the standard_condition record with it dependent input id and its matched options \r\nthe other thing that must have in mind is that every if check for checking this select value is series of if condition check without else checking\r\nSecond field required id\r\nFirst field required standard_condition_ids\r\nstandard_condition required operator and value and dependent_field_id and dependent_select_option_ids(if options not defined no option appeared)\r\n', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (6, 'Dependent Select DB Field', 'dependent_select_db_field', 'dependent_select_db', 'sst_dependent_select_db', '\r\nwpdb prefix in standard db is added to table automatically so you must avoid prepend it prefix manually\r\nthere are two ways to add label ,value ,id to your option the most basically and the easiest is \r\n	1.add the column in your table that conatin value/label/id only to value_col/label_col/id_col and left value_function/label_function/id_function blank\r\nbut if you need to use two columns or more in your options for value/label/id for example use the first_name column and last_name column in your label you must by first define what columns you need in value_col/label_col/id_col and seperate them by a comma \",\" or left blank or use * to select all columns and then use a function or php code to make your custom value/label/id but you should know how to access the data of each column you should remember these:\r\n	columns value are accessible by $option[\"column_name\"] remember that column_name must be named in value_col and seperated by comma from others\r\n\r\nthere are three method to use this field type: \r\n	1.get master from db and slaves from db with explicit condition (NOT self)\r\n		an standard for the master must be defined with standard_db_id and standard_condition_ids\r\n		an standard for the slave must be defined with standard_db_id unique id\r\n		an input for the slave must be defined with the_id (unique id)\r\n		an standard_db for the master must be defined with table without prefix value_col or value_function and label_col or label_function if you want you can use next id that need more standard_db and can get options from other tables also\r\n		one or more standard_conditions for the master must be defined with operator/ value/ dependent_field_id/ dependent_select_option_ids/ dependent_standard_db_id\r\n		\r\n	2.get master from db and slaves from select_option with explicit condition (NOT self)\r\n	3.get master from db and slaves from db without explicit condition and using self (self)\r\n		an standard for the master must be defined with standard_db_id and standard_condition_ids\r\n		an standard for the slave must be defined with standard_db_id unique id\r\n		an input for the slave must be defined with the_id (unique id)\r\n		an standard_db for the master must be defined with table without prefix value_col or value_function and label_col or label_function if you want you can use next id that need more standard_db and can get options from other tables also\r\n		one or more standard_conditions for the master must be defined with operator/ value/ dependent_field_id/ dependent_select_option_ids/ dependent_standard_db_id\r\n		an standard_db for the slave must be defined with table without prefix value_col or value_function and label_col or label_function and the most important using %self% in where column that it ensure that your custom result %self% means selected values of master options if you want you can use next id that need more standard_db and can get options from other tables also\r\n', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (7, 'English Date Picker Field', 'english_date_picker_field', 'english_date_picker', 'sst_english_date_picker', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (8, 'File Field', 'file_field', 'file', 'sst_file', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (15, 'Hidden Field', 'hidden_field', 'hidden', 'sst_hidden', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (19, 'On Off Switch Field', 'on_off_switch', 'on_off_switch', 'sst_on_off_switch', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (9, 'Persian Date Picker Field', 'persian_date_picker_field', 'persian_date_picker', 'sst_persian_date_picker', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (10, 'Radio Field', 'radio_field', 'radio', 'sst_radio', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (16, 'Range Field', 'range_field', 'range', 'sst_range', 'Permitted attributes #\r\nglobal attributes & name & disabled & form & type★ & autocomplete & autofocus & list & min & max & step (float) & value', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (11, 'Select Field', 'select_field', 'select', 'sst_select', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (12, 'Select DB Field', 'select_db_field', 'select_db', 'sst_select_db', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (13, 'Text Field', 'text_field', 'text', 'sst_text', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');
INSERT INTO `wp_sst_type` VALUES (14, 'Text Area Field', 'textarea_field', 'textarea', 'sst_textarea', '', 'Ehrajat', '2018-05-30 22:03:56', '2018-05-30 22:03:56');

SET FOREIGN_KEY_CHECKS = 1;
