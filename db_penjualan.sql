/*
Navicat MySQL Data Transfer

Source Server         : data
Source Server Version : 100138
Source Host           : localhost:3306
Source Database       : db_penjualan

Target Server Type    : MYSQL
Target Server Version : 100138
File Encoding         : 65001

Date: 2020-06-26 16:44:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agen
-- ----------------------------
DROP TABLE IF EXISTS `agen`;
CREATE TABLE `agen` (
  `kd_agen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemilik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_agen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of agen
-- ----------------------------
INSERT INTO `agen` VALUES ('2', 'Grosir Kaos', 'Budi Cahyadi', 'Jl. Haji Abdul Rahman No. 103 Sedati, Sidoarjo', '-7.370442', '112.760543', 'agen/20191226151059.jpg', '2019-12-26 15:10:59', '2019-12-26 15:10:59');
INSERT INTO `agen` VALUES ('3', 'Pusat Kaos Surabaya', 'Anton Nugraha', 'Jl. Gelatik No. 140, Medokan Ayu, Kec. Rungkut, Kota Surabaya, Jawa Timur', '-7.331868', '112.788068', 'agen/20191226151135.jpg', '2019-12-26 15:11:35', '2019-12-26 15:11:35');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `kd_kategori` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('7', 'Indosat Oredoo', 'kategori/20200626083252.jpg', '2020-06-26 08:32:52', '2020-06-26 08:32:52');
INSERT INTO `kategori` VALUES ('8', 'Telkomsel', 'kategori/20200626083311.jpg', '2020-06-26 08:33:11', '2020-06-26 08:33:11');
INSERT INTO `kategori` VALUES ('9', 'XL Axiata', 'kategori/20200626083328.jpg', '2020-06-26 08:33:28', '2020-06-26 08:33:28');

-- ----------------------------
-- Table structure for keranjang
-- ----------------------------
DROP TABLE IF EXISTS `keranjang`;
CREATE TABLE `keranjang` (
  `kd_keranjang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd_produk` int(10) unsigned NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_keranjang`),
  KEY `keranjang_username_foreign` (`username`),
  KEY `keranjang_kd_produk_foreign` (`kd_produk`),
  CONSTRAINT `keranjang_kd_produk_foreign` FOREIGN KEY (`kd_produk`) REFERENCES `produk` (`kd_produk`),
  CONSTRAINT `keranjang_username_foreign` FOREIGN KEY (`username`) REFERENCES `pegawai` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of keranjang
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_15_161353_create_supplier_table', '2');
INSERT INTO `migrations` VALUES ('5', '2019_12_17_141704_create_pegawai_table', '3');
INSERT INTO `migrations` VALUES ('6', '2019_12_21_031415_create_kategori_table', '4');
INSERT INTO `migrations` VALUES ('8', '2019_12_22_034820_create_produk_table', '5');
INSERT INTO `migrations` VALUES ('9', '2019_12_22_133938_create_transaksi_masuk_table', '6');
INSERT INTO `migrations` VALUES ('10', '2019_12_24_153535_create_agen_table', '7');
INSERT INTO `migrations` VALUES ('11', '2019_12_24_153855_create_keranjang_table', '7');
INSERT INTO `migrations` VALUES ('12', '2019_12_24_154409_create_transaksi_table', '7');
INSERT INTO `migrations` VALUES ('13', '2019_12_24_154923_create_transaksi_detail_table', '7');
INSERT INTO `migrations` VALUES ('14', '2020_06_26_064631_create_pelanggan_table', '8');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('PRIA','WANITA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_aktif` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES ('taufik', '$2y$10$IvobanBTBOqZ6M1bX4LCNOQ3L903M9eoK6zsTnfEckyXDcscuZxE6', 'Taufik Hidayat', 'PRIA', 'Sidoarjo', '1', '2019-12-17 15:35:58', '2019-12-26 15:57:56');

-- ----------------------------
-- Table structure for pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('PRIA','WANITA') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no_hp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES ('suherbing septian', '08412242424', 'PRIA', '2020-06-26 09:31:54', '2020-06-26 09:31:54');

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `kd_produk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kd_kategori` int(10) unsigned NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_produk`),
  KEY `produk_kd_kategori_foreign` (`kd_kategori`),
  CONSTRAINT `produk_kd_kategori_foreign` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori` (`kd_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES ('10', '7', 'Im3 Freedom Internet', '100000', 'produk/20200626083427.jpeg', '0', '2020-06-26 08:34:27', '2020-06-26 08:34:27');
INSERT INTO `produk` VALUES ('11', '7', 'Im3 Freedom Combo', '150000', 'produk/20200626083458.png', '0', '2020-06-26 08:34:58', '2020-06-26 08:34:58');
INSERT INTO `produk` VALUES ('12', '8', 'Paket Internet Simpati', '150000', 'produk/20200626083519.jpg', '0', '2020-06-26 08:35:19', '2020-06-26 08:35:19');
INSERT INTO `produk` VALUES ('13', '8', 'Paket Internet Kartu As', '100000', 'produk/20200626083545.jpg', '0', '2020-06-26 08:35:45', '2020-06-26 08:35:45');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `kd_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('2', 'CV. JAYA ABADI', 'SIDOARJO', '2019-12-22 15:37:56', '2019-12-22 15:37:56');
INSERT INTO `supplier` VALUES ('3', 'CV MAJU JAYA', 'SURABAYA', '2019-12-22 15:38:09', '2019-12-22 15:38:09');

-- ----------------------------
-- Table structure for transaksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi` (
  `kd_transaksi` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `kd_agen` int(10) unsigned NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_transaksi`),
  KEY `transaksi_kd_agen_foreign` (`kd_agen`),
  KEY `transaksi_username_foreign` (`username`),
  KEY `transaksi_no_faktur_index` (`no_faktur`),
  CONSTRAINT `transaksi_kd_agen_foreign` FOREIGN KEY (`kd_agen`) REFERENCES `agen` (`kd_agen`),
  CONSTRAINT `transaksi_username_foreign` FOREIGN KEY (`username`) REFERENCES `pegawai` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transaksi
-- ----------------------------

-- ----------------------------
-- Table structure for transaksi_detail
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_detail`;
CREATE TABLE `transaksi_detail` (
  `kd_transaksi_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd_produk` int(10) unsigned NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_transaksi_detail`),
  KEY `transaksi_detail_no_faktur_foreign` (`no_faktur`),
  KEY `transaksi_detail_kd_produk_foreign` (`kd_produk`),
  CONSTRAINT `transaksi_detail_kd_produk_foreign` FOREIGN KEY (`kd_produk`) REFERENCES `produk` (`kd_produk`),
  CONSTRAINT `transaksi_detail_no_faktur_foreign` FOREIGN KEY (`no_faktur`) REFERENCES `transaksi` (`no_faktur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transaksi_detail
-- ----------------------------

-- ----------------------------
-- Table structure for transaksi_masuk
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_masuk`;
CREATE TABLE `transaksi_masuk` (
  `kd_transaksi_masuk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kd_produk` int(10) unsigned NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `no_hp` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`kd_transaksi_masuk`),
  KEY `transaksi_masuk_kd_produk_foreign` (`kd_produk`),
  CONSTRAINT `transaksi_masuk_kd_produk_foreign` FOREIGN KEY (`kd_produk`) REFERENCES `produk` (`kd_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transaksi_masuk
-- ----------------------------
INSERT INTO `transaksi_masuk` VALUES ('26', '10', '2020-06-26', '081234512225', '100000', '2020-06-26 09:15:30', '2020-06-26 09:15:30');
INSERT INTO `transaksi_masuk` VALUES ('27', '10', '2020-06-26', '08412242424', '100000', '2020-06-26 09:24:24', '2020-06-26 09:24:24');
INSERT INTO `transaksi_masuk` VALUES ('28', '10', '2020-06-26', '08412242424', '100000', '2020-06-26 09:27:21', '2020-06-26 09:27:21');
INSERT INTO `transaksi_masuk` VALUES ('29', '10', '2020-06-16', '08412242424', '100000', '2020-06-26 09:28:28', '2020-06-26 09:28:28');
INSERT INTO `transaksi_masuk` VALUES ('30', '10', '2020-06-16', '08412242424', '100000', '2020-06-26 09:29:51', '2020-06-26 09:29:51');
INSERT INTO `transaksi_masuk` VALUES ('31', '10', '2020-06-16', '08412242424', '100000', '2020-06-26 09:31:54', '2020-06-26 09:31:54');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('staff','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'Aris Samsudin', 'administrator@mail.com', null, '$2y$10$XZ2gI5kqIcQyRwoiwJOWoehdnAfLX5akLCjF26wHMDoU/Gad7eNZO', null, '2019-12-14 14:47:34', '2019-12-14 14:47:34');
INSERT INTO `users` VALUES ('3', 'dita', 'staff', 'Dita Susanti', 'dita@mail.com', null, '$2y$10$caoDoPoBxcxX.VicpU5u7eJoaQjahmyymaec1Jg8iXLCQ1a8KObfW', null, '2019-12-14 17:39:19', '2019-12-29 08:35:02');
INSERT INTO `users` VALUES ('4', 'dika', 'staff', 'Dika Cahyani', 'dika@mail.com', null, '$2y$10$ESI4jFqP0lHLl9werlDKcOaZBO6pYD9cTPtdDRNqsdB0DwQ7x/Oti', null, '2019-12-14 17:39:19', '2019-12-14 17:39:19');
INSERT INTO `users` VALUES ('5', 'riko', 'staff', 'Riko', 'riko@mail.com', null, '$2y$10$h4yZMzF/vmPDxM9T9VB8/eo4NGY6IyEsoSlWZXTu6aC50ovoRZGJu', null, '2019-12-14 18:37:23', '2019-12-14 18:37:23');
SET FOREIGN_KEY_CHECKS=1;
