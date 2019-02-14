/*
 Navicat MySQL Data Transfer

 Source Server         : 云数据库
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : rm-m5e1b10a4hym7ek40bo.mysql.rds.aliyuncs.com:3306
 Source Schema         : basedemo

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 12/02/2019 14:49:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`access_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
BEGIN;
INSERT INTO `oauth_access_tokens` VALUES ('00b19ed146d0938f189a72eed7b5642f60a333a2', 'testclient', '191', '2019-01-13 13:07:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('00e0ff18cb5651751baa6ff0628938afb57936ed', 'testclient', '191', '2019-01-16 15:22:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('011182fbee9b6edcecb29f5fa555b9d962297954', 'testclient', '191', '2019-01-17 10:53:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('01cd61622ddd613457345abfc36c96eed271040f', 'testclient', '191', '2019-01-15 16:39:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('01d30064b95d3f46bf02da1575e2919f6c440f14', 'testclient', '180', '2019-01-11 12:38:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('025d32b5b08423dbd5ed2e33863c7cf365ecaeab', 'testclient', '191', '2019-01-14 22:42:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('02c597085c77684cadb9ce343afd867bf2b5668d', 'testclient', '191', '2019-01-16 02:47:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('03c3c64bc57b5a4c69b7bb4545a14fb4576f0e48', 'testclient', '191', '2019-01-16 16:03:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('03ea826d449a46e50d3a42ee8313154410460607', 'testclient', '191', '2019-01-16 17:24:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0528efbc8c4480176f6224321a3c2df3483c2395', 'testclient', '191', '2019-01-13 11:55:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0567f064d905bd2483cb9c9204ad318f0d555781', 'testclient', '191', '2019-01-13 18:54:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0613361f840323d6266648db5e0f3cd6bbd033eb', 'testclient', '191', '2019-01-13 15:01:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0632ebfd18a69dba80c39091ddf595758a5a12f8', 'testclient', '191', '2019-01-12 23:38:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0658b79ed3f0c659bba872f9fef4bc2b0073981f', 'testclient', '191', '2019-01-27 18:03:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('06fd7f70bf620e8018eb0994d80361f2d5c9eed1', 'testclient', '180', '2019-01-12 09:57:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0750685c55c9934c271774d13a037e0880f2768d', 'testclient', '191', '2019-01-26 13:44:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('094599004f448e01b7eec1d60b9f121914866d14', 'testclient', '191', '2019-01-28 14:02:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('09787aee14f0a93cfc6df18648823e6e8e543ed7', 'testclient', '180', '2019-01-11 18:45:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('09d2e4e35af1bf45f232afc07e4fbb137e604c0f', 'testclient', '180', '2019-01-10 01:48:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('09e05d2715aef800554658ab6a12d63eeb63686e', 'testclient', '180', '2019-01-10 21:26:55', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0afc60bdd77c1a53c790eaae866721a11c9355e7', 'testclient', '191', '2019-01-17 12:27:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0b1b09b878d89ceb9c8b3ad9d952428de43b9c24', 'testclient', '191', '2019-01-24 01:23:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0b84bae5f7de51d00ba51f3984c0371254951bc2', 'testclient', '180', '2019-01-11 14:42:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0ccd9f11511e46df7a2b2417eeffd9f092ade525', 'testclient', '180', '2018-12-27 11:11:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0cee8178df2e4aa2f520aed9796d87427d40f9ec', 'testclient', '191', '2019-01-29 19:43:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d2925d14e46666224dcca1e770d34bd17e1744a', 'testclient', '180', '2019-01-10 22:42:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d35e242d3982705699afd107297464f58714f27', 'testclient', '180', '2019-01-12 10:09:11', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d3b0237c576470d7ef0dca46f1bfbaa48bb3e81', 'testclient', '191', '2019-01-12 18:42:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d5fc081cabe5cd957035c7f62cd7cf3a8d44fe8', 'testclient', '191', '2019-01-15 15:14:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d71e45feb02718b9c16ba21a24c9de010f85bfa', 'testclient', '191', '2019-01-29 18:04:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d738326014a2a916a208894e37b408748c5d3dd', 'testclient', '180', '2019-01-11 15:29:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0d76696fb5b43f51675bf217a3afbf948fd41e6b', 'testclient', '180', '2019-01-11 15:45:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0de3508b75700873a5c2dc03cd3cc3ccf22f3485', 'testclient', '180', '2019-01-12 00:57:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0e6e04ffe75077c1c13b69e0b833904b851f41c9', 'testclient', '191', '2019-01-29 19:00:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0e70654324489cc1a2c56b5d8d7defd84396fa10', 'testclient', '191', '2019-01-14 22:42:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0e89a274913e29c7ba416c5e66b73af0fdf2d863', 'testclient', '191', '2019-01-16 17:34:27', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0f5aee81e81503f5923360978515b9a8f140818b', 'testclient', '180', '2019-01-07 11:24:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0f5e9dbca8edef382eb170073f2801ad98448901', 'shopclient', '1', '2019-01-30 22:27:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0fc812b87e742090e3023cc78a1429a0c27eb011', 'testclient', '180', '2019-01-09 10:39:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('0fe900163a359c62808944b00766b6797e3200fb', 'testclient', '191', '2019-01-28 02:42:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('100263c39b72049ba9c58923808523e0bba22f69', 'testclient', '180', '2019-01-07 11:21:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('10cdf3f36aae6c493f5fcfeb580a49b369eff7a6', 'testclient', '180', '2019-01-10 00:25:30', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1158424f58864f52c6c0e5d6c0867af75f74e45c', 'testclient', '191', '2019-01-17 12:48:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1193fc74e6039bf6b41473264ccf1e16eba10b1a', 'testclient', '180', '2019-01-11 17:00:51', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('11b583f3c459f6cb219926dfa27bdad2fc0834a2', 'testclient', '180', '2019-01-11 14:14:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('12bcaa6b1b88e6a81f99040305d8edc2e6b46ed6', 'testclient', '191', '2019-01-14 22:41:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('139561e81ea05e71bdc5f9eb5070aeca73ee359e', 'testclient', '191', '2019-01-25 11:48:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1412eced864ba5eae0060ea698a36b35584ab9ac', 'testclient', '180', '2019-01-11 10:51:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('145abfecc876c5adcacf03394454d416f4367b77', 'testclient', '191', '2019-01-17 15:25:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('14cefed6ebad08e8f15936b30167c0efd75a198a', 'testclient', '191', '2019-01-16 16:18:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('15321e772efcc39f2dd2128bdd65b51305e411e8', 'testclient', '191', '2019-01-29 21:15:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('159edf2209b2c0d88fa2b1af7f5793a3ec73ab50', 'testclient', '191', '2019-02-12 10:23:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('161c77eea06349ea2e331ce3edb1e3b0eebc0fbc', 'testclient', '180', '2019-01-11 16:57:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1637d7f64ab3ddc323ad8b7f90addab4ba499be4', 'testclient', '180', '2019-01-11 12:17:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('166a9f61636a91f8ce08afa80833048fd301d7fe', 'testclient', '191', '2019-01-17 16:27:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('166d8e7a16a7d5e7f87065ba31152b30b150e414', 'testclient', '191', '2019-01-14 18:42:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('184db7e31c946112fd86f54f9566d74531041ccd', 'testclient', '180', '2019-01-08 19:07:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1886b9bf3d4a73033419939e9ecdd1d56389e0d4', 'testclient', '191', '2019-01-20 21:04:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('18ba5a38b09a42c612d7d8dfe1353199fe863096', 'testclient', '180', '2019-01-07 13:19:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('19d22a3e8d3eca75f1f33b68a0e5a6f37abd3454', 'testclient', '191', '2019-01-16 11:30:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1a892c8e74974bb3863f0b7afd971d6aa087a3be', 'testclient', '180', '2019-01-11 16:02:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1bf32662f1104a6feac045963064814056b39e1b', 'testclient', '180', '2019-01-11 15:14:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1bfb992aad243d69fa6bc9b62ca3c5df919df7ab', 'testclient', '180', '2019-01-09 10:58:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1c237b5b1cb78c2a2e741155d58727d793dd31f9', 'testclient', '191', '2019-01-17 16:33:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1e00b26c9446c544c4127a1bbb9bca588c4df0c3', 'testclient', '191', '2019-01-25 17:09:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1e33d8056cb645c2e6f8adb05cb7845a87d722b5', 'testclient', '180', '2019-01-09 12:22:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('1f9f3f500d3d36fc5c7da0f074d5318e3042166a', 'testclient', '191', '2019-01-16 18:27:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('203b24ace6d900876925cfb2ab35c842ddc91a6e', 'testclient', '180', '2019-01-11 20:52:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2064997921cb0884a2a869dee34e9b1ac02b7352', 'testclient', '191', '2019-01-16 16:23:46', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('20eb1c3ff880fe2e400f5798f83f4427e395179f', 'testclient', '191', '2019-01-16 15:46:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('210d5839c15f3e97e8e10741fbb0adf2ddc57efe', 'testclient', '191', '2019-01-12 14:03:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2177614fd2b129fd2a1e86208f8d8afd4b27c68f', 'testclient', '191', '2019-01-17 10:37:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2193fd1f2422784c4e025bf309d0bb878557f331', 'testclient', '191', '2019-01-25 18:19:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('21c0d0b81982e90844fb48d7f8dd1d2f70d04b1d', 'testclient', '191', '2019-01-20 19:20:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('223d7478450d2cb10895c8904946c81dcbd5d97d', 'testclient', '191', '2019-01-15 14:00:56', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('224fb646ed6ce206cf0c78736a8ecbecadf6f827', 'testclient', '180', '2019-01-10 01:29:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('22791905f4ec1e2a901eed6335c3b9020189a984', 'testclient', '180', '2019-01-07 21:48:27', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('22d165af9c15a193c71d4d6a36d0acdb3a6699b7', 'testclient', '180', '2019-01-11 12:03:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('22ea045811ec9bb46d4bc854dee4427533624d53', 'testclient', '191', '2019-01-28 02:43:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('23851567df00939af7cdf208954ecf907fb9b352', 'testclient', '180', '2019-01-11 18:49:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('23b02dc2999b7a53da629a7b862918f75d3988be', 'testclient', '191', '2019-01-26 16:01:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('243536fe0a5ea33178143b00ee2196cff216366a', 'testclient', '180', '2019-01-11 15:20:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('24706503390b921270fcd1f42a1b353eab893953', 'testclient', '180', '2019-01-12 10:33:30', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('24a9e773446da861617a686241b876ae289f27df', 'testclient', '191', '2019-01-18 19:01:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2547b00c022f66495913e01b3d2ff110c24473e1', 'testclient', '180', '2019-01-11 10:39:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('25f6c870d858c8c83d96e8673a3516fedb90fa05', 'testclient', '180', '2019-01-12 10:23:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('27aa3e578103b3c20423f3d53270e1cc02f21988', 'testclient', '191', '2019-01-15 10:37:24', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('282e857b892efd16aa20a91620372c0430a80e7c', 'testclient', '180', '2019-01-12 12:00:46', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('289aff3a76f68cb23958c6c1528d1540be51560a', 'testclient', '180', '2019-01-07 11:16:46', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('28df9d5d559c51e5ac66f586a82821906b97a889', 'testclient', '191', '2019-01-15 18:36:11', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2943bf3e0d979ee7c8bc8fb2059373de9d419aa4', 'testclient', '191', '2019-01-17 16:33:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('29c65a2a2d34b31311ca69576ed9641c672e675c', 'testclient', '180', '2019-01-11 13:39:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2a7ebe098fd63e1830534ea79301c2563d640387', 'testclient', '180', '2019-01-11 16:53:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2aa7ef2136f86033dca00689d5106dfae771f21a', 'testclient', '191', '2019-01-23 16:02:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2aaf8d647326b7559e3e790a038246c6ae883506', 'testclient', '180', '2019-01-11 15:45:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2b57ee85c908604271a124768d3a48cd2061cad2', 'testclient', '180', '2019-01-10 20:31:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2bb270c5068162f163a90abe15d705aee558be4d', 'testclient', '180', '2019-01-10 22:31:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2bcc1711b19d980c7f3a23d3f570670046e2ea5a', 'testclient', '180', '2019-01-11 16:56:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2d7b30e64429bfee05280fde1adc201b478d024c', 'testclient', '191', '2019-01-22 23:00:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2e414380725b0d26b22d68f94dc0d4cde0d7de54', 'testclient', '180', '2019-01-09 11:48:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2e51481ecdddf1551172e7cb630b97ebc8d77fc4', 'testclient', '180', '2019-01-11 14:11:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('2fb4de8869d825232dfe0b057bed07f8cf5f7d33', 'testclient', '191', '2019-01-17 16:31:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('30802d35d9833eee271f7ea9af993c097a733104', 'testclient', '191', '2019-01-17 10:31:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('30b27066fa902e04915a3c607e7512c1e8d1ea5b', 'testclient', '191', '2019-01-12 14:02:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('319d23c472a6c6790d6338a4c0bf474536fcea03', 'testclient', '180', '2019-01-11 14:06:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('32bc2d8fa73c8e1de42d2892a2828431107153c9', 'testclient', '191', '2019-01-15 23:29:51', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('33ab75aaa6737dd1c439e1c4ff7413068917d3be', 'testclient', '180', '2019-01-11 17:04:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('33b08b92d3c4743d4458cd53e18fca591174da7b', 'testclient', '180', '2019-01-11 15:09:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3426688822c53c1a9164b64a4edb3f20c787bc7c', 'testclient', '191', '2019-01-27 13:25:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('34d2f2d982aa9cfecbb0f011f5468e10bd55a201', 'testclient', '191', '2019-01-12 15:09:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('34e15f07db3b6800f410cef9af2138c781882ba9', 'testclient', '191', '2019-01-17 10:31:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('36180587c060b90251441d28f686e1c0ad30c236', 'testclient', '180', '2019-01-11 10:57:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('366818a25fbff63b348e7d55063ab951ca261ba1', 'testclient', '191', '2019-01-16 16:12:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('36d8c462d1d7af919c950d72f635cfa69909adea', 'testclient', '191', '2019-01-17 10:29:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('372f30bcdbdbb0516608b4920fa4619ec689faaf', 'testclient', '191', '2019-01-17 14:07:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3757d0124f78307a1651140c45da40596d1c68ad', 'testclient', '180', '2019-01-11 18:26:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('37ce1457052383d98d8abbdb9d0378541f5d9f70', 'testclient', '191', '2019-01-26 10:33:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('39a4b45fae0a2066b288809ce41434cbfad9e2ff', 'testclient', '191', '2019-01-22 13:00:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3a790a4582e519cc0715a1807819264a1430162e', 'testclient', '191', '2019-01-16 03:52:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3b3cd314d0089a496921e0cd34eca6f8f8aa3856', 'testclient', '191', '2019-01-14 22:42:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3c0c9d9be25d9e79f0b97a303ba7cc4ec3b56fcf', 'testclient', '180', '2019-01-11 16:57:11', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3c1a63783b9f0422185c50163f4d22ebaba443d1', 'testclient', '191', '2019-01-17 10:54:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3c6cd797c571e7bfcb785711a89920fb0c25f990', 'testclient', '191', '2019-01-12 16:21:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3c73b173b81c70f34fd377a131fcea035d7ef3f3', 'testclient', '191', '2019-01-18 17:08:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3c87d9311b76b5a891171dc302359f0276dcc2f9', 'testclient', '191', '2019-01-23 10:20:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3cae9da5a07a99510c468e5be036835a3d781901', 'testclient', '180', '2019-01-10 00:36:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3d4e01ad21b2934b2e6d72d77deab92ec0fcbfb0', 'testclient', '180', '2019-01-07 11:17:30', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3dbce97c690d0f16d523624473a4cf7086d7c65e', 'testclient', '191', '2019-01-14 22:42:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3e25d26ee57f6b07a36067e069316ef6b0a84342', 'testclient', '180', '2018-12-27 11:10:51', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('3f0261a10a0017ae52c363d12bf9a4a095e58c78', 'testclient', '191', '2019-01-15 21:39:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('40c2437aa4a416de84632380de187effd71067da', 'testclient', '180', '2019-01-11 16:04:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('40edb6a341a815eb3a9ed2124ba83c3deb07f350', 'testclient', '191', '2019-01-17 10:07:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('424989df37429afb38e1d62c80e840987dc3b8cf', 'testclient', '191', '2019-01-17 14:58:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('42a0ca5735fbce984bb0b835d83c62dcda5abe1c', 'testclient', '180', '2019-01-11 14:07:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('42a5297ce4c8313f1e63f5258cad177a80ef8225', 'testclient', '191', '2019-01-28 14:33:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('42b85c40545e4f5de15e45dc9e0261d33e34526d', 'testclient', '180', '2019-01-11 17:50:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('43105351b1ed0de634fbdf98ec7a054d7343b616', 'testclient', '180', '2019-01-12 11:12:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4330f2f9afc04f524bf2c6a298f08558b5367135', 'testclient', '191', '2019-01-29 20:13:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('44a5911ba48ca6aed5cf9cb5ec94209150b59025', 'testclient', '191', '2019-01-16 16:08:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4553d0cb413897802eac8840afbd3d93361e20b7', 'testclient', '180', '2019-01-10 22:43:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('45abcf738dddf1e96732339d92a644c7976ddcfb', 'testclient', '180', '2019-01-08 22:51:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('45bb29bd56b1a109a5ec46e5dd79e9595a8b3578', 'testclient', '191', '2019-01-23 12:47:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4605bf8e6fc8ed4794ee504aa919f1827301f7e8', 'testclient', '180', '2019-01-11 17:06:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('46a4692bd76007777665d77696ab360f72a126a4', 'testclient', '191', '2019-01-31 10:52:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('46d36c92c6297085f647c4c0085ff1d7d8ddb330', 'testclient', '191', '2019-01-12 12:46:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('46f1b3bdffbe577ef72d7ef3f31921ede7e63393', 'testclient', '180', '2019-01-09 12:05:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('471c46e8dd801f18e06c1f8880ebed8c013a7c74', 'testclient', '191', '2019-01-14 12:55:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('47f5f1791f81ef3a05b414b0588c0303cf1f8357', 'testclient', '191', '2019-01-12 21:32:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4826037527710c7496fa976e57afae7397734d50', 'testclient', '191', '2019-01-28 00:34:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('487f902ca24d4379ecb040c8c9ef6212fa4b584d', 'testclient', '191', '2019-01-26 23:25:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4959e9698664a810d8b310ab137f2722cf8390e8', 'testclient', '191', '2019-01-21 10:25:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('496219e9aa134cde0e502db875258aec1d375660', 'testclient', '191', '2019-01-29 18:01:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('49dbe0e5cecf5f14e160b20e1b0d191b3214813f', 'testclient', '191', '2019-01-12 13:56:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4a919e011e320f727377d3957f09028944586d70', 'testclient', '191', '2019-01-17 21:14:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4abb4e76f82963b1b54f4f96aa3bfe5acd821ff4', 'testclient', '191', '2019-01-30 19:08:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4ac054ad3ce1493b1f9521962b81a59a5dd2ea2c', 'testclient', '191', '2019-01-28 00:22:46', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4ad3ddef636d3b56a6c2c5227ef94f9828076620', 'testclient', '191', '2019-01-17 12:50:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4b536744951c9c7a4df2c498a4d389acdabd970a', 'testclient', '191', '2019-01-17 10:20:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4b91db2704996a362f4ec023f3705dd35c9782d0', 'testclient', '180', '2019-01-08 23:15:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4c057c96f24c9bc76a077e92eeea7cdc772d70e1', 'testclient', '191', '2019-01-15 23:41:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4c7577a6bc6376b2400001ef34205a5a24e1efc6', 'testclient', '191', '2019-01-26 11:13:38', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4c94d9573d56a88d704b3500ca4e6958d8c476fe', 'testclient', '180', '2019-01-11 16:01:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4cdadbe793f6945ea4b28ffc48530e4a1043dff6', 'testclient', '191', '2019-01-12 23:05:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4ce3796d94a18dd4ddb99434a74eb51eaeb3f81c', 'testclient', '191', '2019-01-12 15:37:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4d6f697de41ed5259c5a80ba248db189d77e8edc', 'testclient', '180', '2019-01-12 12:34:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4da5c3a6a5789ad6fa63f129a9c6ccdac515b8aa', 'testclient', '180', '2019-01-11 17:05:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4e6970cb1431d1710039ef5b341ff3675685efab', 'testclient', '191', '2019-01-16 18:27:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4f0fed1f142e0181587cfeb9c44667b3d62ade18', 'testclient', '191', '2019-01-28 11:40:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4f28bda75868e536e91aa057aff1e4e6e0f05b8e', 'testclient', '180', '2019-01-10 20:34:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4faaf7dce08d8c9ffceaa08c7785e7621feafcc4', 'testclient', '191', '2019-01-29 20:15:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4fcb76e3cd6602bd87e3079654a52ecc49c4d225', 'testclient', '191', '2019-01-28 14:33:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('4feae4bb58ede43e9399057bd4eb1b99ca3c70df', 'testclient', '180', '2019-01-10 00:46:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('500e387902e3806534725b45fbd368768fa4c6c3', 'testclient', '191', '2019-01-13 23:05:24', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('50197a37950e54180fc2b130fdf033de44d0801b', 'testclient', '180', '2019-01-11 13:58:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('503af8f65045c2d45d32e7cf127cc676030ed20a', 'testclient', '191', '2019-01-23 11:10:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('504a7f5afbb7a32a59de559106d68d9a5171bb21', 'testclient', '191', '2019-01-29 17:06:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('50ec48be8506da5588c6cda73b97f9257a99dacb', 'testclient', '191', '2019-01-14 12:33:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('514c360f7f1ab38de143cf48e4c9d977e93d2939', 'testclient', '191', '2019-01-29 22:15:27', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5154483d11fb256b6646a7e5e16f3c55e43b1555', 'testclient', '180', '2019-01-10 21:44:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('51a07f18bccf0562043c37e72783c2ca3089376c', 'testclient', '191', '2019-01-25 15:07:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('51bf7fcaeb1f3ed7a1f50773cba380cb8e2121d2', 'testclient', '191', '2019-01-13 18:56:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('52431aac7e389815d6797e3764228e37150293b9', 'testclient', '191', '2019-01-17 10:20:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5281ca15fdd253519334e879c37761f364e63004', 'testclient', '191', '2019-01-14 23:10:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('529af1c924e3c4f5fcb680985308931843b75f43', 'testclient', '191', '2019-01-15 17:32:10', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('52fd146535e6eca03e34b87e77fa90f18fd1ab9d', 'testclient', '191', '2019-01-18 11:58:24', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('530f2de4eb87cb30031cf4c53aa42c8e2c728c24', 'testclient', '191', '2019-01-15 21:11:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('53a2caa9bce85fb9c8f391a4474447a4b0c4a8fd', 'testclient', '180', '2019-01-11 16:33:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('54457708a4117dc1423c06ca60c43ce9621a3834', 'testclient', '191', '2019-01-12 16:54:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('545c46d22999a650a3b72a225d54cac74a90f912', 'testclient', '191', '2019-01-17 10:36:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('54c359db7afd482781db6c04710648e2cb126df3', 'testclient', '191', '2019-01-19 01:32:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5506f3fcfdd7d19f1824eb55907baa086a07b870', 'testclient', '180', '2019-01-11 13:10:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5610d10bbb20589c4f7bc634444a1b08b640cae9', 'testclient', '191', '2019-01-17 10:38:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5663d7d409b072d63a50269f7db6fee89849b05f', 'testclient', '191', '2019-01-17 11:27:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('567ce6ae3bc33e3bba0aca197ec6aeb8a98d6535', 'testclient', '180', '2019-01-11 15:21:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('57baec5a8c340434d7573f6806b62acd91718312', 'testclient', '180', '2019-01-11 17:07:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('57c0dcc062c60f4d26e120fbfe13df7e64e7449d', 'testclient', '191', '2019-01-27 14:40:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('58147889d4ed3cc8dde801421fda4a4d9a581925', 'testclient', '191', '2019-01-28 13:15:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5861ee67675d0c0bf14a5e0163da2fea6454fc83', 'testclient', '191', '2019-01-15 16:48:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('58a784ed916135705ad25d50d33f9b1e2ee36df1', 'testclient', '180', '2019-01-10 23:07:17', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('58cd70504b914e0cd5a4c5e15a3e68aef5120d4e', 'testclient', '191', '2019-01-29 19:50:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('58fff7a7f809d94730dff4b9c8de3779cfe8967c', 'testclient', '180', '2019-01-11 15:33:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('59452c35d93102df624b6e3b8dd1fe0bae28d4b5', 'testclient', '180', '2019-01-11 19:07:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('59cdb05d2d6092cfb0a107154428125d61bca645', 'testclient', '180', '2019-01-11 14:31:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5b2898bf4a100d92f0a0bc3dab419b8cfe10f07e', 'testclient', '180', '2019-01-10 01:39:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5b9c2ca3a30522e3bc9a8a471d05dc57fd7515bf', 'testclient', '191', '2019-01-27 19:11:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5ba205adabeb421c38758600c968495da168c168', 'testclient', '191', '2019-01-29 19:55:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5c131f27fff9fdd19ec02ad8d4889c6492e6da2c', 'testclient', '180', '2019-01-11 23:52:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5d502921da367a4d5413f2bed9bd3d877c717456', 'testclient', '191', '2019-01-30 21:49:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5e122fc10042be0133381ba0d015a4e0f7ae2985', 'testclient', '191', '2019-01-21 00:04:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5e41d6597f5d04c6e6501c1ca1014311dfce909b', 'testclient', '180', '2019-01-11 17:23:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5f2f3c06a6450d1e6a6a95f6f34410f647cd822c', 'testclient', '180', '2019-01-11 23:35:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('5fca411112449e63f6e618bdb8dd0b8d7c48b223', 'testclient', '180', '2019-01-11 22:45:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('60c8db4e831441523631a13e7c3645f6b8f53e0b', 'testclient', '180', '2019-01-12 10:30:17', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('60e97bbe211800135c5ce909a15ca1e6d690283a', 'testclient', '180', '2019-01-11 12:13:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('611877790aba191254ed9039b4cc656ed8c95cfd', 'testclient', '191', '2019-01-18 15:45:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('61d3c5cbe31c9091a326951dcd232a1f020c0c80', 'testclient', '191', '2019-01-17 12:55:10', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('61f2e4a48f2302b73880ac51a4a8aa2048896ccc', 'testclient', '180', '2019-01-11 19:04:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6200fbc3a2eecd9cc2164f799b4c1ecd134848d0', 'testclient', '191', '2019-01-20 18:17:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6224c34bf2552c8850ad675249a769c71bd329be', 'shopclient', '1', '2019-01-31 10:52:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('62c5a4f1aefb60c8f9a9eafebdcf82262d12e445', 'testclient', '180', '2019-01-10 01:23:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6386a7c17b7a8d7163110d6105276711b1102f91', 'testclient', '191', '2019-01-25 16:08:56', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('63e0725d2e213b36dc8e73d5fcf2519438b63188', 'testclient', '180', '2019-01-11 16:22:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6542b4f3694e3bf7779d2761eaa3e00ad38e0ba1', 'testclient', '191', '2019-01-15 16:39:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('662a6e6ce6face95035ae0cb3df857a66941b919', 'testclient', '191', '2019-01-29 19:47:56', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('666b14f10b2a01fba9aa2155fa2a683eab06ba43', 'testclient', '191', '2019-01-14 18:06:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('667c3cea6f217c2f52a543f0adf7901712bea32e', 'testclient', '191', '2019-01-18 23:12:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6737c204390bead7396adbc28f9f3d72aa726d01', 'testclient', '191', '2019-01-22 12:38:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('684518ca15686c5e6fb3ed52be46f2a52e74ecba', 'testclient', '180', '2019-01-08 19:03:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('685cd9adee23efd9a2f6989c1651e22fd9aed3c3', 'testclient', '191', '2019-01-15 22:17:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('68eb8fbd59d47f457f3c162d117e76c51a2e7694', 'testclient', '191', '2019-01-17 16:33:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('693145e1cb23c0d1b6c30b86cad3adea7c02c185', 'testclient', '191', '2019-01-18 10:56:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6974ac7ba25d29fcb63c9a74e5f63e67212f674c', 'testclient', '180', '2019-01-11 14:30:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('69af7127a1fed1f38556b9059fb8f01f13bd91fc', 'testclient', '180', '2019-01-07 12:55:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('69b001e7856a529407cea9614b5aa9a749433083', 'testclient', '191', '2019-01-17 16:13:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6a169cdd365caf293ebdab9aabe1d57da86d7ec5', 'testclient', '191', '2019-01-24 10:28:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6a70f53980901aea0c59251e7ab5a1a93b5975f2', 'shopclient', '1', '2019-01-31 12:02:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6b62fb5ba71175d42a30aec528439435bb7b155f', 'testclient', '180', '2019-01-07 11:19:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6bcd919968be4ebaf80620c570cf5153dd9b81dd', 'testclient', '191', '2019-01-24 13:49:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6cc6fe207b6e9fb3f13773bf1662bceb055b8b27', 'testclient', '191', '2019-01-14 16:28:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6d03c0810f688b5c591ab70660cabfaa7079431d', 'testclient', '191', '2019-01-15 12:53:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6d0a07188ec5276b6abf9cc7be66585012453ee1', 'testclient', '180', '2019-01-10 22:28:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6d28b2254c44e98cc903e9f39b614084f1f4696e', 'testclient', '191', '2019-01-14 17:29:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6e332042dc503f9c09e82469d30cec4b531b2454', 'testclient', '191', '2019-01-17 12:25:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6e96178e2850876295e8c8ed23f96004699dbbb5', 'testclient', '180', '2019-01-10 01:07:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6f6cc6776f398b4755003449461767173b03d44e', 'testclient', '180', '2019-01-11 18:28:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('6ff435c3f2ba0ead2cbcca9fdceb9c2ccd90124f', 'testclient', '191', '2019-01-28 11:13:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('70c1df3d4771e535fc2f39f3acf821d7e78b2922', 'testclient', '191', '2019-01-20 15:47:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('71a7fa8f8905560d7be1e8a2b5a4af2f30141b7c', 'testclient', '191', '2019-01-17 10:39:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('71c0e30a74d692b111918b6947eec31989a85d29', 'testclient', '191', '2019-01-16 16:54:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('71d3a46f032dd0ee61c5d12ea77be7debe20a63f', 'testclient', '180', '2019-01-11 11:56:55', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('71f8d7491e1ba418ec9b11976c269e053c479726', 'testclient', '191', '2019-01-16 21:05:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('72316d1e588dc8c2e92f8abb7eba56d2ea50da65', 'testclient', '180', '2018-12-27 11:02:56', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('72e12191734e6f8810e4245dd81ac5f0ed2fbcb0', 'testclient', '191', '2019-01-28 13:45:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('730ff1357af778668e3422d8824f1a09bb629d32', 'testclient', '191', '2019-01-30 12:08:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('738c60d6465ba1f0dcf81315f0e8eddf336d2abe', 'testclient', '180', '2019-01-11 11:48:11', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('746008a13190e474b345e9fdb98d6720b4b4c134', 'testclient', '191', '2019-01-27 22:27:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7493494eb1c45a2718206fa2776c7e9692669855', 'testclient', '180', '2019-01-11 22:32:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('74a74c26109fcd8bd57ed311d9bf03171173cf52', 'testclient', '180', '2019-01-11 17:07:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('75a565fca7ab2be9c5c19fdaa2f9457eb686925a', 'shopclient', '1', '2019-01-30 22:28:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('75aadf3c9d1eee908daa3d0e33d8a15e9fa78f06', 'testclient', '191', '2019-01-28 12:06:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('75caff55261fd8a66a3a94078070736e5273b414', 'testclient', '191', '2019-01-28 12:38:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('776efd4e3c389580fd8be8804ec5318a5aa65fe3', 'testclient', '191', '2019-01-14 22:42:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('78ad65736d35fc64a7df5c66896767ea2d1c6f30', 'testclient', '191', '2019-01-21 13:13:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('790e4b9c67c097d750c8f6f9444b09718c908ff7', 'testclient', '191', '2019-01-17 11:17:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('79418ea2331071d32c9f093a76bd5c1c84f703ec', 'testclient', '191', '2019-01-14 22:41:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7977ea6dd6000dfa72579d0a9eb458ba7b454118', 'testclient', '191', '2019-01-15 14:03:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('79a0915ef7283a49ac60e6db481654bde8d4df63', 'testclient', '191', '2019-01-17 14:05:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7a1831c16b1e7a636437ee3f798786b81bc945d9', 'testclient', '180', '2019-01-11 15:30:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7a614e7582e0505bc3181e89151d288d04a5ae9c', 'testclient', '191', '2019-01-14 15:27:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7a73836964bcbaa84644f1fc0b5eb4aa1c296b47', 'testclient', '191', '2019-01-17 10:13:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7abe92755a893e5b1a18cc40ea3d365efbbd6263', 'testclient', '191', '2019-01-16 16:45:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7b3c17864fdca76e8eafac29105756aadde523bd', 'testclient', '191', '2019-01-17 10:16:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7c2b3c8105ff7b5300c043943de7b83272a4bbb8', 'testclient', '191', '2019-01-23 22:28:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7c56ffb78970d408c1ead0b2ded13ad4bf69a7a0', 'testclient', '191', '2019-01-27 17:00:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7ca9fb8883f990adbb25874b7465c7e34a7e2875', 'testclient', '180', '2019-01-11 12:36:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('7df1cfced47472a361d79f53bec3eb3aa14cafb5', 'testclient', '191', '2019-01-26 18:43:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('80053fd95642529f8bcb40c11858d48d220f72a4', 'testclient', '180', '2019-01-11 14:48:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('814ca2bee409f2b132fa2995a92b5ff11c8ee56b', 'testclient', '180', '2019-01-11 22:06:25', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8270dd478f84c5739931e6272a398bcbde0e3506', 'testclient', '180', '2019-01-11 17:00:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('82822032f0ec6180c41b42ce691a62980d68adf4', 'testclient', '180', '2019-01-09 10:39:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('828337ed72ba3d83c3baef1988fb77df19bd0de0', 'testclient', '191', '2019-01-17 10:35:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('82d997816b228cf6f8a91f0460e32a07ca5f37c7', 'testclient', '191', '2019-01-18 18:37:24', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('82ff8c04a4de48048e22c090302b093db02412e3', 'testclient', '191', '2019-01-17 10:32:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('83f9d20335cf9a663f0147295d6aebf6b885b7e2', 'testclient', '191', '2019-01-17 10:53:25', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8434868d18338ff0ee8e75c20257a0ff19a2642d', 'testclient', '191', '2019-01-16 16:04:38', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('84391466c72df8d65b99dce22fdca8c061d0ab16', 'testclient', '191', '2019-01-25 14:06:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('844059527206abd2c7e51d2f50b1e8731593363f', 'testclient', '180', '2019-01-07 12:45:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('844d1236d3353abefa5a55a2509a7cb02d42eabd', 'testclient', '180', '2019-01-09 12:49:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8456a2fec9f6966679ab4e241b9705f0b203f2f0', 'testclient', '191', '2019-01-17 12:51:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('845e33e4de48eb46c69f3a2a86057d671ce24a95', 'testclient', '180', '2019-01-11 18:48:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('846cc3b405ea300a942da00cfcbe77a3111ff6e7', 'testclient', '180', '2019-01-11 18:35:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('84ce06f1fb7fcac945339a813d32ddc85a018927', 'testclient', '191', '2019-01-25 22:04:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('850c27720a09829a82d08d6e9167878183e3c3ec', 'testclient', '180', '2019-01-12 01:01:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8582c87966f5435801e9c4b817f46b1e8c4ad1d8', 'testclient', '180', '2019-01-11 15:46:24', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8592f9fd2b7dea2be9936f2c846bb81de0b0942f', 'testclient', '191', '2019-01-15 11:51:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('870de61ed9feff0a557eb3e094e4910de9f2fa5c', 'testclient', '191', '2019-01-25 23:08:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('873c975c6cfa827665c95750b95a6ee3862ae00f', 'testclient', '191', '2019-01-25 11:00:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8765e0dc7508993a9cf41e05e85f6c7dacc868a8', 'testclient', '191', '2019-01-18 22:32:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('87839a07a864f16a3d1e1c25686f9a701a3a3313', 'testclient', '191', '2019-01-14 22:42:30', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('878ff6a77334910a3349174478ab331ceed40c4b', 'testclient', '180', '2019-01-11 15:22:10', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('885df08339ffdea4cb10cd6f528cf81d1ffbc8b5', 'testclient', '180', '2019-01-11 18:22:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8868c77e44cf20710957b1b88c782bc4a1d62931', 'testclient', '191', '2019-01-16 21:19:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8961dc0b9f693fb79d0c0f06c2f49c16c28ad42e', 'testclient', '191', '2019-01-16 18:27:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('899124f03526d250c0356e7f8c46e1c7c870b7e6', 'testclient', '191', '2019-01-18 21:27:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('89e430ac6ba634a0176092bd43a7d3ce2d8cdf34', 'testclient', '180', '2019-01-11 15:45:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8ce73d96655dab1f52821b69629e5cf16acd4ae6', 'testclient', '180', '2019-01-11 19:08:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8d3531fdf425cd4103aa40a56b8ca0e3abae6c60', 'testclient', '191', '2019-01-18 19:49:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8d3f2f27e53c88396d805163b24f31332a2c9a7d', 'testclient', '191', '2019-01-31 12:07:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8d92da6f175710b7221010dca96cd88b171ec506', 'testclient', '191', '2019-01-22 10:33:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8dfe09990581cc8ab19cb375591268ba1126b53d', 'testclient', '191', '2019-01-23 12:24:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8f5e4a1a14f5311d68d789ff5f21184ee22327ad', 'testclient', '191', '2019-01-12 12:58:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8f7e5c245ac54e9b1dc7022fd0bfd8d3c2fb9d76', 'testclient', '180', '2019-01-10 23:02:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('8f90ccb26ba1a35fcea7735c242885a1629d0d38', 'testclient', '180', '2019-01-11 12:30:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('90631f6d1a46e7cb428a828e9823a4df87e42f7c', 'testclient', '180', '2019-01-11 17:04:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('90768333b3d89c04dc93dde426ed0034aa9aac1d', 'testclient', '180', '2019-01-12 12:21:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('917967257925da7ee6e7ed78b559fdff621c8799', 'testclient', '191', '2019-01-16 12:50:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('92be097b96e6ebd066605c8f71e58c9b61f17391', 'testclient', '180', '2019-01-11 16:22:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('95a0baba8ae0e27dfae65430d8f29edf845bb8d6', 'testclient', '191', '2019-01-17 15:18:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('95ead89b7394e14496cb3f270b588c6c0316ca65', 'shopclient', '1', '2019-01-31 11:26:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9a30db47b4c99f15f75d01dcd728c1012d5d0cea', 'testclient', '191', '2019-01-17 13:03:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9ab41c0f0d50ad70fb8f9f9bd14e7b6c21b132dc', 'testclient', '180', '2019-01-08 22:50:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9af3910bc54486465ae143f617ff439654b145f0', 'testclient', '180', '2019-01-09 00:54:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9b24a758471079f27e94866a7f83b1d7de5cbc89', 'testclient', '191', '2019-01-28 01:30:38', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9bcd869a7df16784f6bbee9121a0f17d045228e3', 'testclient', '180', '2019-01-12 00:36:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9c5ec1d88fc290a4b37ff7426fae9f4417ffe995', 'testclient', '180', '2019-01-11 15:23:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9d17717c654f899ba62d98ced26b2b712bc561fd', 'testclient', '191', '2019-02-12 10:22:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9d20e59cdfde8864915010f900975261e953061c', 'testclient', '191', '2019-01-27 23:30:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9d540f3283a7ff78cfd6dc5955ddb67575e1caf7', 'testclient', '191', '2019-01-17 10:28:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9ea91f255d9c8c761b968670eda4127a304725c8', 'testclient', '191', '2019-01-16 10:09:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9f415fdc8f0b416b6728f39e1a4efad0477fc6dd', 'testclient', '191', '2019-01-18 14:45:30', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9fc6b8c4d3997a8e5596b2bb3e7fa17a6d76faa9', 'testclient', '191', '2019-01-17 12:52:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9fedc3d1d90a0a8c391bc8c364a001ca8d84e0a0', 'testclient', '191', '2019-01-12 18:02:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('9ffad4a3bf80b21e6d2d0e659f23bd50b5c4fb14', 'testclient', '180', '2019-01-10 21:11:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a017bafcc16ebe44d9cdc456c8442eeebeb8613a', 'testclient', '191', '2019-01-16 16:24:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a01ffb7fa3fd40eef1e57e6a24c38d595d464ab3', 'testclient', '180', '2019-01-11 11:59:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a03e73793f70c979683696fc6afd6cdea45f33e7', 'testclient', '180', '2019-01-10 20:52:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a045e332b3dee5f2ca340bfceaa393ddb078570c', 'testclient', '180', '2019-01-11 17:14:10', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a089ff70bda3412ecddd940a4d62338253843f1d', 'testclient', '180', '2019-01-07 11:18:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a1405f1ca716ba54ab72cf5862a59d1a55df5772', 'testclient', '180', '2019-01-11 17:05:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a14e54bb1293a7617dda667011faf5ab7d6e6806', 'testclient', '191', '2019-01-16 18:27:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a1e94db612a88747fbff6442c614128bce09a383', 'testclient', '180', '2019-01-09 10:36:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a331ab1e25d1b70e6a039fdb2f0e2759bc4c0a24', 'testclient', '180', '2019-01-10 00:34:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a400ff61e9bd9610b279fb81b34f6d5fe7532680', 'testclient', '191', '2019-01-16 18:27:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a5e7fe5fb75adcb98e0f367e02776460d3b88b80', 'testclient', '191', '2019-01-16 18:39:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a6c5bcc799b0bd8db2d89e7496644b0ee9eec90b', 'testclient', '180', '2019-01-11 16:30:38', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a6cbf00f16e900f2bdc1fe076e845f64d9ce3a61', 'testclient', '191', '2019-01-20 17:02:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a76db3c6182ee6fcb58fb354c634d2a914d9ce8b', 'testclient', '191', '2019-01-18 13:56:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a7a5587f26d3b7b70ed3fd5359d2fb1e767dacd6', 'testclient', '191', '2019-01-21 14:45:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a894e64946cf4981266ad86c438697fa7d70d872', 'testclient', '180', '2019-01-11 19:08:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('a9921ea2b285a8e73cc9c6c27844aa2e9b3db06c', 'testclient', '191', '2019-01-21 16:55:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('aa61109ecf06804ffe3ef3d17bb81551a25c80bb', 'testclient', '191', '2019-01-17 12:17:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('aaa2317d1905caa7590a3f97fcae08fef08fe260', 'testclient', '191', '2019-01-17 12:11:55', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('abf9a29609ac89f7d8375bb58f1745774ff7cbd4', 'testclient', '180', '2019-01-11 18:17:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ac346f61854849eb1092cd40060c3c2c075bc90a', 'testclient', '180', '2019-01-09 00:02:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ac8932dae3d08118a88b7f20e2c11db0080584de', 'testclient', '180', '2019-01-07 11:20:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('aca0ca211aa53d6befa4dec51c5da7df236c1531', 'testclient', '191', '2019-01-12 12:44:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('acaa5fdcd7150d9997f82f7a774922fbb50eaa7c', 'testclient', '180', '2019-01-08 22:30:25', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ad07c020f71cd14ae3115b0e4c214f445b72d4bc', 'testclient', '191', '2019-01-22 13:55:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ad85841610f57e3a1d5a686bff9c25e3bdeb4e21', 'testclient', '180', '2019-01-11 13:36:26', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ad9c7100742ad9b839496ecd87b12a0f3bb602e3', 'testclient', '191', '2019-01-15 13:53:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('adfb3e7fed7d1ec90794244622ec0ecfdbf470f8', 'testclient', '191', '2019-01-16 04:54:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ae5d305263431d1b708f56449b57a58ab2eba070', 'testclient', '180', '2019-01-10 21:04:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ae725f7dde6d990772df7d4960185ec977002fe7', 'testclient', '180', '2019-01-11 16:04:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ae7d276515f89d95a9b2ed55c2420436ad77516b', 'testclient', '180', '2019-01-08 22:54:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('aea1a06f0505876b6042a36888ced7ef82aadfc9', 'testclient', '191', '2019-01-12 12:50:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('aecf1484c58df21e2200e9d33e1126b81b685a06', 'testclient', '191', '2019-01-22 21:57:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('af3a8bac9347f12cfaea23c27a8d4b651516f9fc', 'testclient', '180', '2019-01-11 11:10:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('af97c0acc047ba5a1613b20128e43fd1c44ee42a', 'testclient', '180', '2019-01-11 14:40:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b003793877bed1f3c5e719d3cc965ea8297c0867', 'testclient', '191', '2019-01-17 10:37:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b11e247850848d7ffbbfe04cdf90bfe82602fdae', 'testclient', '180', '2019-01-11 16:20:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b1a5e6dfd91af358e93621d40c9a4e603dfd9da9', 'testclient', '191', '2019-01-14 11:31:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b1d1e57dd23bbf6628d32406d9fc2f5c4b19692f', 'testclient', '180', '2019-01-11 17:37:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b2132d3a58142d82b369a7de57e36eeb100a0581', 'testclient', '191', '2019-01-16 21:18:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b2d846ea59f1c9e2edbc51401aa19c02d411e5b5', 'testclient', '180', '2019-01-10 22:36:56', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b36d3103c6f542083b1a562bda23d2525f5e66ea', 'testclient', '180', '2019-01-11 20:36:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b419cc0499b45ba9c1f310fc49a2a45c64871ac9', 'testclient', '191', '2019-01-23 22:28:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b41ac6e8abd5102e9c7845cdd8073b6a53055148', 'testclient', '191', '2019-01-12 21:54:26', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b456a7ba8a65cb2a7229c76cc8d788da9d57f948', 'testclient', '180', '2019-01-11 11:51:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b50026c34b4506d733a1220fda5b1c28de4c92b7', 'testclient', '191', '2019-01-28 00:34:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b5decc1ebf2fae2564050fbeb01cf96a969fe426', 'testclient', '180', '2019-01-11 21:04:26', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b674db1aca01a871df3ebea6384a9ed5f1c66c81', 'testclient', '180', '2019-01-11 19:08:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b6a2f2a87153fcf26d6c24bd74a40d8ed86e1370', 'testclient', '191', '2019-01-17 23:20:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('b75e6ac2b1c4167fc9c89b33da11ec7fb3537d9b', 'testclient', '191', '2019-01-16 15:46:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ba9f6df36bb9a0031df848a66b1511c39d2d82d6', 'testclient', '180', '2019-01-11 15:23:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bab9e6aff5c4514cbe4bcf68ae4d873516cb6926', 'testclient', '180', '2019-01-10 01:04:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bad989a0e54a73240d4c207ac439e911e689347e', 'testclient', '180', '2019-01-11 10:27:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bb4050c5728ba438fb32c4329632931f6b4455b5', 'testclient', '180', '2019-01-11 16:00:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bb4623757575b912a1ecb596a21038c74675f6aa', 'testclient', '191', '2019-01-29 19:52:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bb49c1efcc781d892a212ab999b997a9cae07fc0', 'testclient', '191', '2019-01-19 11:04:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bdaadf035a17eabc42bcfce38a4db23c6b8fbef0', 'testclient', '191', '2019-01-31 10:53:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bdd0a52a4a5baf8f2e95c6d23727b49448b9f167', 'testclient', '191', '2019-01-17 22:14:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('be470920beae54ef2f8e2b8989a94cbc2517f327', 'testclient', '191', '2019-01-14 15:40:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('be9acad9bcc4c0cc2704cefbd0f74313a0e3dcbb', 'testclient', '191', '2019-01-21 16:16:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('beb5f20e635df7c27ab92dacfbf46f07e27deb1f', 'testclient', '191', '2019-01-17 12:25:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('bfdff178d29c07295911ad61582c01adc4c47cf6', 'testclient', '191', '2019-01-12 19:39:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c011f6ad0fc4a6b3b689acaea23d695e7c1f6a95', 'testclient', '180', '2019-01-11 14:33:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c049b8572bee3a346b6134f8befb6bbb4dd3db06', 'testclient', '191', '2019-01-16 18:26:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c07b1d64b59c1c13e88a8d328814b878935276e7', 'testclient', '191', '2019-01-30 20:10:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c0913996081d2e8a1fc139658ca0d4852c248d3a', 'testclient', '191', '2019-01-29 19:42:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c0ccb1430a365a3d7a0038163618b7150cfe583f', 'testclient', '180', '2019-01-11 16:58:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c0cebdb558a1c9e808bfb46e7b9ab1e22cf88a08', 'testclient', '180', '2019-01-11 13:14:36', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c0fedfc0c283354eba0016ed2e9e45014baf3cf0', 'testclient', '191', '2019-01-27 11:56:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c14b7c27ece6c08eafd145fca8b7779966d2371c', 'testclient', '191', '2019-01-29 19:41:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c171cd67cd4654bde2f4f5e7a5d9ab06b3f0f8bc', 'testclient', '191', '2019-01-14 10:32:55', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c3154e7bfc30dfde8174aad730fd3b6c3a377a2b', 'testclient', '191', '2019-01-18 14:41:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c321a69ede624d51435ea9093efeac4b2978e4a9', 'testclient', '191', '2019-01-17 16:11:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c56e811b076788fd66a5eee2307f74cf4af027a0', 'testclient', '180', '2019-01-11 18:49:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c5a1f324c59fe1d5edcccf292534f1d70094c46a', 'testclient', '180', '2019-01-11 23:00:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c65bb05a645ee2bf203aabfab21493b707ca9a36', 'testclient', '180', '2019-01-11 20:44:26', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c665010684312514aeed21a817bf92fe3fd64d49', 'testclient', '180', '2019-01-12 11:12:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c7a066e5ebf8cae3fe0518acb30b5fbad1de7ba4', 'testclient', '191', '2019-01-16 14:44:52', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c7e00a20d965703ee57b70b05e02d0cc8270bb64', 'testclient', '191', '2019-01-29 14:12:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c8580b7539a9e4c6e5d0d296e72a39f6ed0c52a7', 'testclient', '191', '2019-01-28 13:15:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c860919191dd8ecbad08ab4e387796415a02cd6f', 'testclient', '180', '2019-01-11 19:00:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c896ece625eb77d1aced2604bd4b9742b7b8764f', 'testclient', '180', '2019-01-12 12:18:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c917c58fdcfe93330b16dc467d587f6932c23269', 'testclient', '180', '2019-01-10 01:19:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('c95c3509711d489dfc925ea175d817b5e49e2127', 'testclient', '180', '2019-01-11 11:28:04', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('caff7099822e5aab6a1520cb3598f5d0007479c7', 'testclient', '191', '2019-01-16 13:44:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cb45307ab8e59c7d154cff076abc8dd8255de272', 'testclient', '191', '2019-01-16 00:32:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cb99cbf0d2d57c38ee4b55fe8389f6d6da44b415', 'testclient', '180', '2019-01-11 22:11:25', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cbb1b9f7faf51683ecf67d90c0bd3dd3a7f55eda', 'testclient', '191', '2019-01-15 15:39:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cbb7bcd5facde892ae6d73ad72285b78919f425d', 'testclient', '191', '2019-01-22 18:38:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cc203db79ef55e88275978145016599b8578e7de', 'testclient', '191', '2019-01-15 11:36:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ccb09b0cb41a191167d2f5f0261aa4c2a6dc27b9', 'testclient', '180', '2019-01-09 10:42:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cd0d34c94f326a027ce8fc237e5bef9f7f0d28c7', 'testclient', '191', '2019-01-19 13:46:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cd12ad4f6f409b1190014c1ecb4bc700fa09c439', 'testclient', '180', '2019-01-11 19:08:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('cee42c02fd1ac203a25cdf93f95e47a55cce83ec', 'testclient', '180', '2019-01-07 11:08:19', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d011bddaff7c0a6a0570a9a1c161f5712b0c8e55', 'testclient', '180', '2019-01-11 15:45:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d05cb93d17c9cdd9e5231f51ea4a82a1200e29fd', 'testclient', '180', '2019-01-11 15:35:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d0626ee0d3e9f0029c1b908bb80c3da12b759e10', 'testclient', '191', '2019-01-16 17:25:16', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d0914f0d8940c849f0cd99ed8c353c9e3a30718c', 'testclient', '180', '2019-01-07 11:19:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d0e6ebffa58217da0c766e0bc084ddb88643fbca', 'testclient', '180', '2019-01-11 19:08:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d0f50aec71aedb1e362bf391a02fe9390b97c1b1', 'testclient', '191', '2019-01-26 17:25:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d150181db105507df8a45dad3acfd27ece913000', 'testclient', '191', '2019-01-13 12:24:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d18fa50f2d6cb3042e55de17cd6510796d2544f3', 'testclient', '191', '2019-01-12 14:03:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d1b933b63eeebddaaf2e67693c67802a9d96d857', 'testclient', '191', '2019-01-30 11:04:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d1df337911a3f3af7c9d31b27d46017b7b36736c', 'testclient', '180', '2019-01-11 17:54:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d21bac165241133577500185532ea1ce7c184f10', 'testclient', '191', '2019-01-16 18:26:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d2749397e6ac802c8db1cd7203ae91dfe3c2a474', 'testclient', '180', '2019-01-10 23:21:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d37edc528b35299933a48a05d3e3c3ba0cafdb8c', 'testclient', '191', '2019-01-16 18:27:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d3a55c9f516d248ae0eff86c6631ac49d266b4dd', 'testclient', '191', '2019-01-16 18:35:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d3ca8430cc958f9a51b39613c5049697ee28d6fd', 'testclient', '180', '2019-01-10 22:39:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d4ecbe35fd58f9f2574c5466855fba37a7b418eb', 'testclient', '191', '2019-02-12 14:32:27', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d704475b62668e5bd2f9825efd2e2a4eb1c5fcf7', 'testclient', '180', '2019-01-11 14:44:58', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d746b6a863d07c80f194cee1a6544e2a48233dde', 'testclient', '180', '2019-01-11 17:39:17', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d75b1d01c45ceda38a9c01be7d99d0bc4678402e', 'testclient', '191', '2019-01-21 10:47:34', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d796024e446643d7bf0c95ab2255eec4ef69364f', 'testclient', '191', '2019-01-16 17:39:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d81ed30f0aa0f2b459fd44fcf10f8e308abe24fb', 'testclient', '180', '2019-01-11 16:48:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('d8a634273bfe220972351ba8b055758729a02a36', 'testclient', '191', '2019-01-27 10:25:38', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('da02ae68a5ad54a2658acb30ee6d860c4e5de77d', 'testclient', '191', '2019-01-12 20:02:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('da2f397f3cf743fea59cda58f72f43833fa8b0b1', 'testclient', '191', '2019-01-15 22:40:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dac525105a2c2827f1a00292d366eaf1b31fc125', 'testclient', '180', '2019-01-11 17:20:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('db3f27009967807f633c7e8eed304f75f1e4fa06', 'testclient', '180', '2019-01-11 14:25:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('db7b6290253d6a6022c9f0b1b9ca845fd74e7372', 'testclient', '180', '2019-01-10 23:13:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dbb272ee3d069bd0f11bfffa85b05f8579d4f62d', 'testclient', '180', '2019-01-12 10:22:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dcf99af6904d2ae96814dfa7787c8213aadbe670', 'testclient', '191', '2019-01-15 12:07:29', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dd16f86f3eb9214c54708bcbe4913afa9c35f6ca', 'testclient', '180', '2019-01-07 12:45:22', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dd6efac2121c5951ab4e3d3dcfd20971d8c3562c', 'testclient', '180', '2019-01-11 15:53:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dd89114aa4255652d566a2b123eca37e84376809', 'testclient', '191', '2019-01-27 15:48:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ddd54c3744e05d8149785191642157db30d5768a', 'testclient', '191', '2019-01-13 09:52:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dde7325392a41d5a3435ec59610fb62be7272d6d', 'testclient', '180', '2019-01-11 13:27:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('de4446f3564fc7205c377f1142c5b22251ba34e1', 'testclient', '191', '2019-01-14 22:42:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('de8794b27e17941220e2cd597c6bba1e12a5f9f9', 'testclient', '191', '2019-01-17 10:29:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('df08ac8ea29d74e3cbb54fb8c088e6550b3e980f', 'testclient', '191', '2019-01-27 19:11:55', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('df0c9634cbfbdec482d023fbc8d284498cb1c502', 'testclient', '180', '2019-01-11 15:45:33', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('df4273d6b859b6846115a900b8a1eb658a84a0e5', 'testclient', '191', '2019-01-19 00:17:47', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('df65bf88e204ab5cba2d5dba181f95a79cad16e0', 'testclient', '191', '2019-01-15 10:46:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dfcdc3781f3ac2900f768f6860768b30550d0e60', 'testclient', '191', '2019-01-17 17:28:45', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('dfcffd499ceaaf2d725eb1e18a142d479c1e73d6', 'testclient', '180', '2019-01-11 12:25:42', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e028b6cfa3425b9069e1c3303553efd29ac477e9', 'testclient', '191', '2019-01-16 17:26:09', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e0a4d4340566137de37229a0a632e82dff2faefc', 'testclient', '180', '2019-01-11 16:03:21', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e14c3680db16424d5ea2a4cba9341c8f8172f6f9', 'testclient', '180', '2019-01-07 12:47:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e16c62bacacc5717efaef851098dc5532a6efc09', 'testclient', '180', '2019-01-12 12:18:53', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e1a60d5641b359ac78638cbc0cc907bad915bdd5', 'testclient', '180', '2019-01-11 15:24:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e1d01f6c8f1904c251d33b2c0473f75290e876f8', 'testclient', '180', '2019-01-08 23:01:56', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e1e0fae66d66a8f2707541f4549249a208e7a4a3', 'testclient', '191', '2019-01-14 23:37:20', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e213626a02a18b014348cb68bac16cc0b0681f70', 'testclient', '191', '2019-01-31 11:27:23', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e230d68e428a64b54fda575f6d0236c15b08a0fc', 'testclient', '191', '2019-01-24 13:48:06', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e34d806d5073612625a3aa9021453077dfb864c4', 'testclient', '180', '2019-01-11 16:57:03', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e395253382aa4d90bc8d4ea5a3ead30b31d8d842', 'testclient', '180', '2019-01-11 19:07:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e4a3d25aa476ec04deb989de0858c46fd7b17061', 'testclient', '191', '2019-01-16 18:31:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e59b352cdfc57b3aab5b05017daef70cfb6fe4df', 'testclient', '180', '2019-01-11 17:14:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e62803fdee38559233276adf4e2820c09afd934f', 'testclient', '180', '2019-01-11 15:44:57', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e62e44c2caec0c18776f2ab9766ebcc66fa2b881', 'testclient', '191', '2019-01-26 22:21:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e6888c339d50fe71acb848720c8895492d798d2e', 'testclient', '191', '2019-01-28 02:35:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e69f7aa99990bf61f59b367d9bb60d56f1549041', 'testclient', '191', '2019-01-28 14:41:54', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e746bcdf565473e2df91c27174020b5d48e9f6d7', 'testclient', '180', '2019-01-11 17:14:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e7c0356e0e1a980c72e92da54901bf3b211075ee', 'testclient', '180', '2019-01-11 17:40:11', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e8212063c96fbb3952a577ec16a056a46448947a', 'testclient', '191', '2019-01-16 18:39:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e8273175ef7729a47c6713f91fa7393a005c92ef', 'testclient', '191', '2019-01-20 22:05:32', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e86decfc577c6727605aba6d3aebe1d63222bb61', 'testclient', '180', '2019-01-11 12:11:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('e95d51489ff5dd0f34d4212f3580a0612da22eab', 'testclient', '180', '2019-01-11 16:36:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ea15eeb14f261391e83730f19f2614fe1f8dd531', 'testclient', '191', '2019-02-12 15:47:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ea2cdb3e4ecae7775fef16ab3cc73105a4a46d74', 'testclient', '191', '2019-01-14 22:42:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ea45cacae08e9c32e99b659517fb81d0aa507a8c', 'testclient', '180', '2019-01-11 18:43:43', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ed1d43a91e25796b107b73daf058380a3bf071f6', 'testclient', '191', '2019-01-18 13:03:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ed309caa65a2452531fe3ace0a7c13668cc4f495', 'testclient', '191', '2019-01-16 01:33:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ee8402ee95560ee035187f9173813b89c4744ac3', 'testclient', '191', '2019-01-17 12:43:28', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('eeaffb80d61fca2205969dd617f45fa470867e28', 'testclient', '191', '2019-01-18 00:30:24', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('eeca8c649d27e97bc7b6c67fa65a9b7ca11e48fd', 'testclient', '191', '2019-01-22 17:23:51', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ef124999d960780d4b9aa8000c3600433f1ce61b', 'testclient', '180', '2019-01-09 11:36:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f0e319162fbc81bd4ba4b983b1d00684bb9aff96', 'testclient', '191', '2019-01-18 22:59:17', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f0e6f2d4704b54de08445e871e9e59dd5e09cc6e', 'testclient', '180', '2019-01-11 18:37:39', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f177479dd2a6a405277c5225f20df4e080061d2e', 'testclient', '191', '2019-01-14 18:25:37', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f18f1cd7eda36e3842884b5937eaf1d79258aaa2', 'testclient', '180', '2019-01-10 00:20:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f193991b5ccf61dee39085bbbc8fa8db2e0f6dcb', 'testclient', '191', '2019-01-22 23:38:26', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f1ed6c1075396523734a1d573a853652726d13cf', 'testclient', '191', '2019-01-29 18:01:44', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f29c2b8cc96712a79c35d44f896464f3743d8b0b', 'testclient', '180', '2019-01-10 20:56:27', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f3572b3f43cd4316e89dcbd60bff083592e753df', 'testclient', '180', '2019-01-11 11:55:15', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f37458c256c6caa39b848f033e3de1255f6f1eae', 'testclient', '191', '2019-01-14 10:31:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f3cd749863e740eedaf53dcc071a52c7c68e18f1', 'testclient', '191', '2019-01-12 17:37:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f4b1c1b9d996d5d06442c46ae6389e0e5496c1da', 'testclient', '191', '2019-01-17 10:08:55', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f4f04a1283bf11702e7dc912abe473ea81981748', 'testclient', '180', '2019-01-09 10:39:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f529797ee837749e854682dcbe2dcc8f67f5c3c2', 'testclient', '191', '2019-01-29 19:51:40', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f5a0a24a5e2b0aa66a046ef867db08eb3131bba7', 'testclient', '180', '2019-01-10 22:55:12', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f614bdcf4bb8c1029dd1f081e81e371d7c66bec9', 'testclient', '180', '2019-01-11 16:57:49', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f64e6b2cb729c7ed7d43d80eeae727eb521dfa86', 'testclient', '191', '2019-01-14 22:42:18', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f6b5d4a7d8f4bbda02f5048a2c7837f9c44efee3', 'testclient', '191', '2019-01-17 10:46:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f6ebba94ed362a41f80aeac53cdeff7e2bf4f900', 'testclient', '191', '2019-01-16 14:18:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f76f61f9dab0dd808678679bd7cc04abd50e25d9', 'testclient', '191', '2019-01-17 10:40:05', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f896e0821a67178a1607473ba95931ba80cf843f', 'testclient', '191', '2019-01-18 22:47:59', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f973d1aa1fb132e2835075de46ee3e6710c13d25', 'testclient', '191', '2019-01-14 14:26:48', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('f9bd60cfa7afb1d76bbaeb217aed124e116c914d', 'testclient', '191', '2019-01-29 15:13:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fa7a2e29369627899c75fbfac00595a32ce20733', 'testclient', '191', '2019-01-12 20:50:41', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('faf8a50a43ab374a8847b968826b04467a555a9b', 'testclient', '191', '2019-01-26 17:42:35', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fb5ed92807df1b11b2036acdce6cd1a21bb89000', 'testclient', '191', '2019-01-14 18:30:01', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fc5928c53e8a42941b508110213de6770efb9af7', 'testclient', '191', '2019-01-17 12:49:02', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fd86efecbd46f1b07045d1e354bcc5d30aae1fee', 'testclient', '191', '2019-02-12 10:26:31', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fe19531a8883aefb7fb46729ba06f15df9ceaf30', 'testclient', '180', '2019-01-11 17:05:00', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fe6057b597b45285b0a3f5ef450bfe1cc2174875', 'testclient', '191', '2019-01-13 10:54:07', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('fed8f04b0707c0f79c81c3932b7ee73ccedb70bc', 'testclient', '180', '2019-01-11 15:23:50', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ffa77edbb95b2b819b39730b108a7c56a9f446e6', 'testclient', '191', '2019-01-26 14:46:14', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ffaaeeee12685e4d380e31999ba01b4e0620ca24', 'testclient', '191', '2019-01-16 17:29:13', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ffcb7a5337906fc9368c96353e2d8f5dbe5544b0', 'testclient', '191', '2019-01-28 02:44:08', 'basic');
INSERT INTO `oauth_access_tokens` VALUES ('ffeb68235f0aa6d96621fd03d501f01ee2253983', 'testclient', '180', '2019-01-11 11:32:38', 'basic');
COMMIT;

-- ----------------------------
-- Table structure for oauth_authorization_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_authorization_codes`;
CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`authorization_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_authorization_codes
-- ----------------------------
BEGIN;
INSERT INTO `oauth_authorization_codes` VALUES ('7c1e1e8a484b51e7cf130eddee41b9cbb1dc37e4', 'testclient2', '2', NULL, '2018-12-22 14:16:56', NULL, NULL);
INSERT INTO `oauth_authorization_codes` VALUES ('bf1eff57fc88066a8652ce4fdb03e24d63c4e501', 'testclient', '1', NULL, '2018-12-22 13:37:46', NULL, NULL);
INSERT INTO `oauth_authorization_codes` VALUES ('bfc3a4542bd6309ed5c404dae34a52e38fa20515', 'testclient', '1', NULL, '2018-12-22 13:36:50', NULL, NULL);
INSERT INTO `oauth_authorization_codes` VALUES ('db363df303b250b641586d0dc40844e9059a8975', 'testclient', '1', NULL, '2018-12-22 13:35:05', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(32) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `oauth_client_details` VALUES ('shopclient', NULL, 'shop', 'code', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `oauth_client_details` VALUES ('testclient', NULL, 'qwert', 'code', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
BEGIN;
INSERT INTO `oauth_clients` VALUES ('shopclient', 'shop', 'http://basedemo.weidong100.com/oauth2/Index/getUrl', 'password', 'code');
INSERT INTO `oauth_clients` VALUES ('testclient', 'qwert', 'http://basedemo.weidong100.com/oauth2/Index/getUrl', 'password', 'code');
COMMIT;

-- ----------------------------
-- Table structure for oauth_jwt
-- ----------------------------
DROP TABLE IF EXISTS `oauth_jwt`;
CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_jwt
-- ----------------------------
BEGIN;
INSERT INTO `oauth_jwt` VALUES ('testclient', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`refresh_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
BEGIN;
INSERT INTO `oauth_refresh_tokens` VALUES ('', 'testclient', NULL, '2018-12-22 13:11:57', NULL);
INSERT INTO `oauth_refresh_tokens` VALUES ('0177d981b7d838c4ec7422fa1bc2b9d43d2f65da', 'testclient', '191', '2019-02-05 20:57:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('01ae8a089dfefd15a1944d3cd16340128595f29b', 'testclient', '180', '2019-01-25 14:22:10', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('01dad6585b56e974f70a9e412a35330f384346dc', 'testclient', '180', '2019-01-22 18:03:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('026c3fcc10d12316cd426bab8615f38626410309', 'testclient', '180', '2019-01-25 19:44:26', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('02b90c85570ec7168dbd50b1dbc5fa4105fe19a2', 'testclient', '191', '2019-02-05 16:23:51', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('041ac016aa4c02373b8c0586b0e189ca4aa8a878', 'testclient', '180', '2019-01-25 14:14:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('04d6e80b85440660126815c31310ac588357ae56', 'testclient', '191', '2019-02-26 14:47:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('05523028b81768318364b5f83db617c8f0af0fd0', 'testclient', '191', '2019-01-31 23:30:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('071cfd70882dca29dc154beb379e6b1b12ea7084', 'testclient', '191', '2019-02-04 09:25:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0766d70560f4446d41fc4155a0bfad5e772489df', 'testclient', '191', '2019-01-30 17:27:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0783c8cfda1780f6eb4ff7f829ae2a549160dc9a', 'testclient', '191', '2019-01-31 15:13:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('078becf993494e9aca34381aceb07e1f6f56c2f9', 'testclient', '180', '2019-01-25 10:51:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0873bfc329ea7e04dafa6babed2fc79d21414dfd', 'testclient', '191', '2019-02-09 09:33:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('08857b59566e921567f22d4aeecd36ea4a9b3c2a', 'testclient', '191', '2019-02-03 21:05:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0a6b298ca036033efdadcf9b93ff57dd923ac951', 'testclient', '180', '2019-01-25 20:04:26', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0a9ac74568a62235185a4d66ab58fb0a5ee6200f', 'testclient', '191', '2019-02-09 17:43:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0ad4cfdda5d958d199872bef815c6014d9864ae1', 'testclient', '191', '2019-02-11 12:15:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0b02c54e94b0e17ce00ed1075af1d1ed653771a6', 'testclient', '180', '2019-01-25 14:23:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0b5e1b7558a53a7cb4741225f22f3d3f1877fe85', 'testclient', '191', '2019-01-30 16:25:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0b7a7f8c5b1f00e7bd2613284718f6c80447329a', 'testclient', '191', '2019-01-28 10:31:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0cf565e6696aa27c7377133b72939d7f79fd7798', 'testclient', '191', '2019-01-31 09:28:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0e27e56fcf7e20b0a588a51eebd1b129a33bc468', 'shopclient', '1', '2019-02-13 21:28:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0e7f3f76890fba28018dd6a5c88bda70dbb73316', 'testclient', '180', '2019-01-25 11:25:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0f1c274278b7695bcd132f26a095c246a4fc771b', 'testclient', '191', '2019-01-30 16:26:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0f3cb53c1afe20aeb1832d4156375d71f9fb15fb', 'testclient', '191', '2019-01-30 03:54:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0f6233e0f65914df4705eb5d5622421b14b5cd5c', 'testclient', '191', '2019-01-28 21:41:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('0f87dde9ed12b26092699f0d02457670e6e68a2b', 'testclient', '191', '2019-02-26 09:23:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('10a2801a48f113e82f6a65659028800c0c47d547', 'testclient', '191', '2019-01-28 21:42:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('10aeefd4e2e7549b10e8601b97d0779910dc7d76', 'testclient', '191', '2019-02-10 18:11:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('116ea38bc38f7fc1d2256645c25c1f9371b186c3', 'testclient', '191', '2019-01-26 22:38:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('11913a3c50c4b126150aafd1bf2d389d70de310f', 'testclient', '180', '2019-01-22 21:30:25', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1203569d3c8ba2bb8c8720da249f37961430d8c2', 'shopclient', '1', '2019-02-13 21:27:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1226a97a977f11405f0a618021656e41a3e71575', 'testclient', '180', '2019-01-25 19:52:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('12f900bac6b2edcb7b13d47e034230e34ae89ac2', 'testclient', '191', '2019-02-05 11:38:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('144ca6ea9675055449f16ef431fc9c9b6adbb149', 'testclient', '180', '2019-01-25 17:45:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('146d54d0cff6352cea0f1c46d61ef3ff6a90a262', 'testclient', '191', '2019-02-11 11:06:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('14a5f9af6f5165c01322007651b312ac3110d883', 'testclient', '180', '2019-01-25 16:14:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1517b7063007f66f803060470362ebd79c904e5d', 'testclient', '180', '2019-01-25 18:07:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1567a0f972fe8aadd955460a1d6efeec349c3fb5', 'testclient', '191', '2019-01-30 17:27:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('15c91e94a02a69c01d3af88ed0be59f60d37a711', 'testclient', '180', '2019-01-24 19:31:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('165d6959697236ffa25a8adfab4e2d3b27fa0fd3', 'testclient', '191', '2019-02-10 13:40:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('169e2c2007b1a2169ad9b6140f5ebf17a2a36dc7', 'testclient', '191', '2019-02-01 18:01:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('16bcb11285061bae87a5ab3247e486a2572d80a4', 'testclient', '191', '2019-01-26 17:02:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('16dfab1336e3d7c146f23aae64a86e35404edf90', 'testclient', '180', '2019-01-25 16:05:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('178d135432b3a15c0c3494d59455f030f02fadcf', 'testclient', '180', '2019-01-25 23:36:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('17a5a376dfbdda907390f020cbecd0255f0c090c', 'testclient', '180', '2019-01-23 10:48:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('17febd79bf0b5a0d5445b775d641bdf4237b1771', 'testclient', '191', '2019-01-31 21:14:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1842c68fb72d24b4cf73249c7b7c4e464807e24d', 'testclient', '191', '2019-02-11 01:42:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1915af654e2039ef0b0644671de86ec0d7dc2d27', 'testclient', '180', '2019-01-24 22:21:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('19de9b508f6f10ecca519e170129ed4657202c2e', 'testclient', '191', '2019-02-12 13:12:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('19e760f8158ddadf1281fe78fb58a718c456e0c1', 'testclient', '191', '2019-02-11 11:38:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1a30153a385b1436ba944864ffad4c13e8e73396', 'testclient', '180', '2019-01-23 11:22:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1aa73865fd2cde835cbd07c3b96e2a506936fa5b', 'testclient', '191', '2019-01-30 12:44:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1b7363e3b0a12f54643b025d254c777c6215fc11', 'testclient', '180', '2019-01-24 19:52:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1b8954cb0424041c8ea5fcde340a5e36d301afc2', 'testclient', '191', '2019-02-09 16:42:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1b8d91a00594a2c9e3b9920ef8e3891d5e4e8beb', 'testclient', '180', '2019-01-26 11:00:46', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1bbbf3a8539acda0fbaad50fd46c221dda1757b5', 'testclient', '180', '2019-01-23 09:39:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1bf02d756579f606818a84399aa91fa55f4a367b', 'testclient', '191', '2019-02-10 18:11:55', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1c11065953df902422c045e7f90674312dc8d0ca', 'testclient', '191', '2019-01-26 19:02:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1d4798b8bb67de365e9d604eda791fba18095ab2', 'testclient', '180', '2019-01-25 15:20:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e23da348ffcd45b004768284740c2d362a04e48', 'testclient', '191', '2019-01-30 17:27:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e2aebc83bb35fa2eef3509806473759c9e9bcaa', 'testclient', '180', '2019-01-25 13:40:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e4b95266e4aa3932e0005240faf03c4ee8044b0', 'testclient', '180', '2019-01-25 13:31:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1e70a03e0aa6275db6b66282bd0be6d726634433', 'testclient', '191', '2019-02-11 10:13:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('1eac227ebaa305d436bed99d3b0c6637f365867b', 'testclient', '191', '2019-01-27 10:55:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('20030f88619d041a66b083824dcad1cb13ea3eee', 'testclient', '180', '2019-01-26 11:18:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('20094f36b50b884d304098bff9866c3cb791914e', 'testclient', '180', '2019-01-24 00:48:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('20950a6817f57e370eeafb8decea448499972e5a', 'testclient', '191', '2019-01-28 21:42:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('20d6c669f2d9b888b2514551923566c2d7b9690e', 'testclient', '180', '2019-01-26 09:23:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('20e9ea1a79b1612b0ce0e788fded88a347e3df6b', 'testclient', '191', '2019-02-13 10:04:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('21158e91d6a61558c7aa69e2cfcd4df18da8d948', 'testclient', '180', '2019-01-25 14:35:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('21ac97043a839f8b743ae1ec25084876257a0954', 'testclient', '191', '2019-02-01 12:56:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('23116fb667deead38aea5239b42af0e05bd0a796', 'testclient', '191', '2019-01-29 22:41:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('23179fbb705d3cf148b140ce8349b657f2ee795e', 'testclient', '180', '2019-01-25 15:04:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('234ad1944a394e1b763ad1ff3be04348ea2b160c', 'testclient', '191', '2019-02-26 09:26:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2367e8db2ec5293408b05dbe4859c132acb4530a', 'testclient', '180', '2019-01-25 13:30:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2398b604fc9ccbe3490060dd34f9db0315299490', 'testclient', '180', '2019-01-25 18:08:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('23d0b0399ccdbc96e9ec384abc34e50acf962d38', 'testclient', '180', '2019-01-25 10:55:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('244efc8646d6e8dc62bff20f4bc8e1ad9ef7cc61', 'testclient', '191', '2019-02-01 20:27:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('24896e30a2d126f610ac98c71a16bf3c33818286', 'testclient', '180', '2019-01-24 21:43:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('24cb7a804ab2b9c262b95884fd25a1badb3b5221', 'testclient', '191', '2019-02-01 10:58:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('25ee3101a8bca283d8326a938412ab3495d129e6', 'testclient', '191', '2019-01-31 11:11:55', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('261fec6bb4103284d7f29da1623919cb0e86f385', 'testclient', '191', '2019-01-30 13:18:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('266e9735659d9433c1d87572fb211936641a276a', 'testclient', '191', '2019-01-31 13:07:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('267335d1ab590b7cb9177468213af56af2ae2531', 'testclient', '191', '2019-01-26 14:37:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('26b43411cf031dcd0b476f7e85051e62839a2235', 'testclient', '180', '2019-01-25 14:29:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('26ec72161cdade0ce36dcc5bba37cc77b8d29232', 'testclient', '180', '2019-01-26 10:12:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('26f3e1a1ecf949873864cbb3b6518f6fba1d8ffd', 'testclient', '180', '2019-01-25 17:35:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('275c205126ec8b8bb51b25bef23a72c6a18ad6ab', 'testclient', '191', '2019-02-07 12:49:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('27ff88f691ba2ef552ef32b4ad60b54e24c645f9', 'testclient', '180', '2019-01-21 10:08:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('28dedb368b097bd5f339872bfad7c1211a045cc6', 'testclient', '191', '2019-01-29 17:36:11', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('294c1bab8b930e8018705f568ddfaa0aa40930d4', 'testclient', '180', '2019-01-25 09:39:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2a1ff980e7372643fbbfc57b7b6505ecf347dc47', 'testclient', '191', '2019-01-31 11:17:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2a3c32062a56c7c78c0c85c51b99c073bb5a2df1', 'testclient', '191', '2019-02-12 18:52:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2a3c5ebe8dfac7d40161e08b71fb7b024ab4995c', 'testclient', '191', '2019-02-09 10:13:38', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2a5741770cbd548826426e6065efc60c5d603a28', 'testclient', '191', '2019-02-10 14:48:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2ab7812fb31050f53bc12fc1f3f4e5717339dd68', 'testclient', '191', '2019-02-09 12:44:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2b96ca449b1f4af26c1fa06b9fc8a4e6338d8205', 'testclient', '180', '2019-01-26 09:22:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2bd10e7a33661160233e6bd1ceaf7a5d820bba90', 'testclient', '180', '2019-01-25 16:00:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2bd57fcdeb339ce3b2c3a419e1368b2ac9eaa623', 'testclient', '180', '2019-01-22 21:51:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2c6e915f60e2a5eda2c27bc224299ddec6085351', 'testclient', '180', '2019-01-21 10:16:46', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2d0f164baa39c6dafc31dee7481621da17f24741', 'testclient', '180', '2019-01-25 10:56:55', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2d888dd35b2d1c43a8d55132250fea521f4ac881', 'testclient', '191', '2019-01-28 21:41:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2dbb1f5f6e149756729463433539bb497bb9df38', 'testclient', '180', '2019-01-25 10:48:11', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2dd9811550160bc6609bb7dd36ccdb58c54265bd', 'testclient', '191', '2019-01-29 14:39:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2e4b8195531d0bc7241b3ee575a04fee9b47d742', 'testclient', '191', '2019-02-12 18:42:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2e57c7466db05e30316973dcdd37ec8e8b11c7a7', 'testclient', '180', '2019-01-25 13:14:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2ea3436b2050412c6a87e0703b530a2e2ca2605a', 'testclient', '180', '2019-01-24 22:02:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('2f5feb6a16a8d00e5364ab8337463fdd46dad66f', 'testclient', '180', '2019-01-24 00:04:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('31174ccfcd9efccdb5c883cab924dc18a40ec023', 'testclient', '191', '2019-02-12 17:04:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('31a1828b5d7ebb55321f9e71c865fede2a5d5821', 'testclient', '191', '2019-02-12 14:13:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('31d48afb9c8844991119dd50c03e736fd8af80be', 'testclient', '180', '2019-01-25 10:10:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('33706ec55b02bc3b1f7ef74cea456f95cf59846b', 'testclient', '180', '2019-01-24 21:31:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('351936c4bfa8abbb1acca7fb9ccf7cf36fb000a9', 'testclient', '191', '2019-02-11 10:40:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3548eeb2b6c085068a630a3010445b3b20877805', 'testclient', '180', '2019-01-10 10:11:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3550f15b310c3807150989132dc7571b5abeef9d', 'testclient', '180', '2019-01-21 11:47:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('356448921b62e2ec52ba18f126f31d3b843d84ec', 'testclient', '191', '2019-02-01 09:56:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('36cb4458fed736c136c35512419c0ab108cf29a9', 'testclient', '191', '2019-01-26 17:42:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('37b0f03b3e71196a3bf2f6eb810ed05194af3ef7', 'testclient', '180', '2019-01-25 11:03:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('381ed3ad5aed642c4238f22e84aa209f8b9ff0cb', 'testclient', '191', '2019-02-03 23:04:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('382d0e4db2b9ef03374093c16fa40d6dc36e7b69', 'testclient', '180', '2019-01-25 17:48:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('38551cc6676b705b5411c623177e2e1f3c8596ce', 'testclient', '191', '2019-01-31 13:05:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('386ce49fe03b58f80448dc751acc75baff95fcd3', 'testclient', '191', '2019-02-07 00:23:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('39915fadb57e74673ddded35f11043a327001712', 'testclient', '180', '2019-01-24 19:56:27', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3abff8bc5805e4e3e72a57d2cecd0d764a6c45b5', 'testclient', '191', '2019-02-09 15:01:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3cecff6d8d7c6a4949558e54e6448112a5af52c1', 'testclient', '191', '2019-02-11 01:44:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3d298869346e4ea71e2c79adfa93b052d65c0f65', 'testclient', '191', '2019-02-06 21:28:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3dacf9bcef4d2aef108c1c7b282222e9083bf32b', 'testclient', '191', '2019-02-12 18:00:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3e388e21a3d5b57bc841c790e5a4081a51766807', 'testclient', '180', '2019-01-25 22:35:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('3f8f81439a2c92f80ea9621746a65bd388bb2750', 'testclient', '191', '2019-01-31 15:31:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('414bf36c71ee3abc762180c72130c421dbc5b504', 'testclient', '180', '2019-01-21 10:24:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('41d33149112255e0b739b01fd7309b82dbbd742b', 'testclient', '191', '2019-01-28 21:42:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('42947e703fde919b3796dfe75b4ecac8a1540ec5', 'testclient', '180', '2019-01-25 18:07:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('42a1c53d08680048e370155a96484bb860a486ab', 'testclient', '191', '2019-01-31 09:37:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('42adcee1093dbaee02686cce8875d0d477fb6d16', 'testclient', '191', '2019-02-08 10:00:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('42bf2b87ffd9fa4e00d15e5252b8f12001f446ff', 'testclient', '180', '2019-01-26 11:18:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('43a4d7e2f884ed9c34f12a31d4d3dfe0d1dd45e0', 'testclient', '180', '2019-01-25 14:09:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('446a02035b5bbaa0317bb551a75f7ca437b9cc85', 'shopclient', '1', '2019-02-14 11:02:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('44d1dd6a0f6436dc3b57f0bda7865650c34d7db7', 'testclient', '180', '2019-01-21 10:19:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4544c2ffe5da530184b7178477159f35863eddb6', 'testclient', '180', '2019-01-25 14:53:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('456a7b177b2f1d5b0957460963d023697c6a74f0', 'testclient', '180', '2019-01-25 11:36:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4593e2d385fad72ecd94e08a255c43526e2d9547', 'testclient', '180', '2019-01-25 14:45:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('45a6992d5126328cf15292493d5cd9f0f59bd73f', 'testclient', '180', '2019-01-10 10:02:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('46b38e83857515c010f0bdf43ac1decca734871d', 'testclient', '191', '2019-01-27 14:01:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('46e347ee34e4ca1e2d88b034d2e8ee7b313950d8', 'testclient', '180', '2019-01-23 09:36:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4711be385e5d5388e6ca2039249c991249918d9c', 'testclient', '180', '2019-01-25 13:33:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('473058d845d70cf82053460d79fbfd191cf3c990', 'testclient', '191', '2019-01-29 10:51:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4774fc45e4d57a5da44f3d0774f0402357cbfe29', 'testclient', '180', '2019-01-25 10:59:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('47b4db1ed2c2d0a69f985e9958c4ef445edd4307', 'testclient', '191', '2019-02-12 19:13:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4875bbbdc72255972acc4ffb3de91cfe13f84e2c', 'testclient', '191', '2019-01-26 18:39:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('48ddd1d63636fa81add4fdcde364704abca0ddd1', 'testclient', '180', '2019-01-25 22:00:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4975d615a2aec7656f1c2e264bccf4e090347de2', 'testclient', '191', '2019-02-11 13:41:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4a516734ccc0c4551deb59496e042fa1a861ac74', 'testclient', '191', '2019-01-31 09:39:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4a9a4dbde3dc2082f96a30fd616f8ee977aa920b', 'testclient', '191', '2019-01-29 11:53:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4af181a82a7e9b6a592f36f975278ae456d09f74', 'testclient', '191', '2019-02-03 14:47:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b38ac2c01fc80ae35f68addc1dcd7db8a3a01f3', 'testclient', '180', '2019-01-25 11:30:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b6d39a436b32a1abb0bea2b00326447c854bad6', 'testclient', '180', '2019-01-25 13:48:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b7fc26c6fe31045925b541b3459ca7a7a03738b', 'testclient', '180', '2019-01-25 16:14:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4b9a758bba4f53e0697283c6d88688b1f3ad3f71', 'testclient', '191', '2019-01-31 09:31:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4d3d08bd31fffcfb24397fd6e5b0619938ed01c9', 'testclient', '191', '2019-01-26 20:32:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4d6b44ecf319c0fbbf05f50b1618511812c30a74', 'testclient', '191', '2019-01-28 09:31:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4de8013a97efcd0e62b6fec890ea0044d4179e3c', 'testclient', '191', '2019-01-29 13:00:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4e2c3b0530a31399766b9c5c13faad5e55dd9921', 'testclient', '191', '2019-01-30 15:03:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4e7c2c810dd515b89580dc474784381318a19662', 'testclient', '180', '2019-01-21 20:48:27', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4ee0fd65c9e1c0c93ff24468b542d4d7db2dcfda', 'testclient', '191', '2019-01-26 22:05:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4f2da35cb6735b631cd5ea6b0811e46895f13e20', 'testclient', '180', '2019-01-25 17:26:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4f4a80042ca0af5e9edcf2cd1641a28f0b0d63e0', 'testclient', '180', '2019-01-23 23:36:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4f7032addee6284619a536cb598f997fe8ff01eb', 'testclient', '191', '2019-02-13 18:08:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4f75a8aa164e15fca645c43176ba6c0ecbed3098', 'testclient', '180', '2019-01-25 13:07:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('4fa6f7470598d0d7dc72063cccee52ff3e897b04', 'testclient', '180', '2019-01-25 15:02:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('50205f8583b0a9ee9f796461b00c239ee060de73', 'testclient', '191', '2019-01-31 15:27:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('50491ffe6c141bb2c2bc6f0a072a069613fa4d0b', 'testclient', '191', '2019-02-12 16:06:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('50864bdeeb6f9298f805111b9e648413a1613037', 'testclient', '191', '2019-01-30 17:27:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('508a881efe9a1d546c8dd49a744370ff015d6361', 'testclient', '191', '2019-02-05 22:38:26', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('50981ba6b8563277a9ea6cb466935a9a3718d30a', 'testclient', '191', '2019-02-05 12:00:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('51094dcae58647040bbbb1cd6678472045a29e0b', 'testclient', '191', '2019-01-29 12:53:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5125302020aa84d715bc28bd807daae54a475f97', 'testclient', '191', '2019-01-30 15:04:38', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('51345363ff5ce85f41b204fb4b763ac20f30b3b5', 'testclient', '180', '2019-01-25 17:28:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('514efb0be4cc1a7d355975d6731fa590fc477321', 'testclient', '191', '2019-02-04 15:16:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('51b18c3f7ff1b515cdb71b25acb87b401c7f3f3a', 'testclient', '180', '2019-01-26 09:33:30', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('51cbf66fdfaec0aebdc0335af458e60c23a2224d', 'testclient', '191', '2019-01-31 09:20:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('51f06ec5f574ed9d8a71f2231d1d15db12f5ef57', 'testclient', '180', '2019-01-25 15:53:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('52b8a486c1c637577a0ca9ccf048312df7e2b1ec', 'testclient', '180', '2019-01-23 09:42:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('52d7f773d48f4673946139397979031da1bb05a3', 'testclient', '191', '2019-01-26 13:02:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('545fd92cf9043f1c7c438be13e57bd5a4e58ad73', 'testclient', '180', '2019-01-25 17:49:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5479bb5670d4e6af735820fc71067fff576b09f6', 'testclient', '191', '2019-02-09 22:25:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('553b824ddef08eccde2ecafbcf15a7256ac06775', 'shopclient', '1', '2019-02-14 10:26:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('55c459e3ec1d5c0c9705f0c7cccc282b4e75c252', 'testclient', '180', '2019-01-23 10:36:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('560a64e5dd1a27351ad05f68bb6a0aa37944b35b', 'testclient', '191', '2019-01-30 17:35:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('566a3deff6fd8fc0926faad6aea5d6337c38c147', 'testclient', '191', '2019-01-31 09:07:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('56fe24f8ca82cec7acacd5f1d0c23a426a439b8a', 'testclient', '180', '2019-01-25 18:00:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('578be0c6351aae385c7546e86412d073ab1590dc', 'testclient', '180', '2019-01-22 21:50:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('57ef1db1914a19cbc7d05d0f5d0269d6c343631a', 'testclient', '180', '2019-01-25 11:11:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('584a1ad1a5877c7fc9ab7f51544265e5104e29d2', 'testclient', '191', '2019-01-30 17:39:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('58ab58d13eba7bef96eddea5e2619283d7adc206', 'testclient', '191', '2019-01-31 09:37:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('59308aaa48f4ec3961734b677dae46601fc6995c', 'testclient', '191', '2019-01-28 15:28:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('595dcead28a1334d5a4e09d0318f48e675c47979', 'testclient', '191', '2019-02-01 17:37:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('59667c2a9105b88f4481c56a6bbd491942f5054c', 'testclient', '191', '2019-02-14 10:27:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5a3191474f898523b1848116b9dcc805acfa6097', 'testclient', '191', '2019-01-31 11:55:10', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5a881ad8af0ba3e4298ec03db2ad0203a85a2d30', 'testclient', '191', '2019-01-27 17:56:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5afe258e6d30878af019a2f97728dbbc20ee6ea0', 'testclient', '191', '2019-02-01 22:12:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5b852d000afd01ce2724f4cc4555c20655e230ec', 'testclient', '191', '2019-02-09 13:46:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5bcba42fceb110a316b1ebe526641ce575ba65b9', 'testclient', '191', '2019-01-29 23:32:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5c73ec1b0d8e4583d65edca5e2a5fc1bee6f494c', 'testclient', '180', '2019-01-25 16:05:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5c924b28109eb6196b012f12fe4c0096aeeb2fd1', 'testclient', '191', '2019-01-31 20:14:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5e804291f513d928c0ae9fc810b7f50c19a51b22', 'testclient', '191', '2019-01-28 21:42:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5ebb277f8e8af8897ca7c8fcfa6f1428d0846974', 'testclient', '191', '2019-02-12 18:55:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5ee611ea3e95c4f67b8705e7f89e06d825c26223', 'testclient', '191', '2019-01-31 14:25:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('5eebc2b2e25e68bfea9c53043b17ffb291b4a169', 'testclient', '191', '2019-02-11 01:35:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('609fff0ef5d2c8b98fe65b7f5fa2b0d470dd7b06', 'testclient', '191', '2019-01-30 16:29:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('60ddab74484e9d24c8563cac65ced1a86cf4a86f', 'testclient', '180', '2019-01-23 23:25:30', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6119ba42af74c931a50d80724884c863e30fb78d', 'testclient', '191', '2019-01-29 10:36:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('611ca064af5a14ff957ac578dfe59930f906475a', 'testclient', '180', '2019-01-10 10:10:51', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('620c240586c2ee7b1c9e0cd751bc4c62c0bc1c77', 'testclient', '180', '2019-01-25 10:28:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('622cb6c8b1c3d82a2a715ee52c9274b96e7656c0', 'testclient', '191', '2019-01-27 17:54:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('623c82b930dbfe71935156a801191e0b8acb6639', 'testclient', '191', '2019-01-31 09:53:25', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('624a882376555a010e56934e65886ba3555f0af6', 'testclient', '191', '2019-01-26 13:03:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('62638eba92689c4352490b5cf0d4d834a9b9b46c', 'testclient', '180', '2019-01-25 15:57:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('62cd4a30aab46a462349eab76f37a0a0cf7774fd', 'testclient', '191', '2019-01-27 11:24:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('633e8de4ee46c9698fd6cb5ea0275a5d9e12b769', 'testclient', '191', '2019-02-10 21:27:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6359f69ded9e1091099ed8eb179c14fdb86bbdd5', 'testclient', '191', '2019-01-31 15:11:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('63b25f2412642f0359f9b4a2956b7d920398b368', 'testclient', '191', '2019-01-31 09:54:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6476f66278c4dac744db2ee68c60f6f9972ffd49', 'testclient', '180', '2019-01-24 00:19:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6495fd1d66b54410274acec23e8ff98c5146ce63', 'testclient', '191', '2019-02-10 23:22:46', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('64d04e39c34dadca2717768963e38a4a4313d287', 'testclient', '180', '2019-01-25 15:30:38', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('652d31b9d724f2e8bca99b4239eed81874e5b129', 'testclient', '191', '2019-02-06 15:02:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6604ebdeb72bad0ced540684ebbf4b8250a6a6b1', 'testclient', '180', '2019-01-25 19:36:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('662320bac58b265ca3ee928901b3ab40347e86d8', 'testclient', '191', '2019-01-28 17:06:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6662d72703311c1f07fa16915e6d3a269bd01bdc', 'testclient', '191', '2019-02-12 18:43:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('66a25584a6fa7423394fadb1c79daf8089c3722b', 'testclient', '191', '2019-02-11 12:15:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('66bd9a1e8fb67868945d758d83409c94e46f6567', 'testclient', '191', '2019-01-28 13:26:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('689545dd9c40298e8522f2f8d88ba62c6498b3be', 'testclient', '191', '2019-01-30 20:19:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('69764501136d117fc177aa7a14e4bf7bb1b7ecdc', 'testclient', '180', '2019-01-25 21:45:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('69b0834846285c6852179b9d2be170e035fd8f9f', 'testclient', '191', '2019-02-12 20:15:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6a427d956b180fcd09965ffda7e488719f325227', 'testclient', '191', '2019-01-26 11:58:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6a5da2d8cbd7a950b8668cec8d16fac2a5a5b095', 'testclient', '180', '2019-01-25 17:43:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6a609a07d70356744ff9dcb6cc41dcbac90f2ceb', 'testclient', '191', '2019-02-26 13:32:27', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6aa434e2a4f044348990f60b75dfcd6f661bf550', 'testclient', '191', '2019-01-31 09:35:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6b6e48de941d761aba9335ca99879a2c3615fd99', 'testclient', '191', '2019-02-08 16:09:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6bba68a1255f2b7b829193273ff5fa55582465d9', 'testclient', '191', '2019-02-05 22:00:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6c75b03acf029f5104b6db74d585f98826e057d6', 'testclient', '191', '2019-01-29 21:40:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6d09a9f58f2f13bf511b22d71817aa8389379a42', 'testclient', '180', '2019-01-25 17:22:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6d1850389d7ad6427cc3a46ba1fb7ee52c960a75', 'testclient', '180', '2019-01-25 18:08:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6d70ec5f5c1cb7f9619ecb542f3f593937666e6e', 'testclient', '191', '2019-02-03 20:04:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6ed19530c5db557d71573a1b96d11765ee710b36', 'testclient', '191', '2019-02-12 18:51:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6f2adcb06da6a640dbc9651dd051005e56049a83', 'testclient', '180', '2019-01-25 09:51:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('6f95e0fd29f37e631f8006c5557ced3f325b2a07', 'testclient', '191', '2019-01-29 20:11:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('702ecaf6962ddbdc376f61e8ba4d58f5b3b367d4', 'testclient', '191', '2019-02-02 10:04:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('702ff9c88b83b7b6db1fe77337a11a6f516ea585', 'testclient', '191', '2019-01-28 17:42:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('70677e1fc8f1cb1777cf5bb0f05bb46cf8fb98c0', 'testclient', '180', '2019-01-25 14:46:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('70d1d29970b8687071d8a31a1b3a4cac4600e0db', 'testclient', '191', '2019-01-28 21:42:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('713c351608a2808a2549ecdc7a4fd7fd84e6d35a', 'testclient', '191', '2019-02-08 14:07:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('725ae3d6d8ed0d626ba491b1ece43de905543422', 'testclient', '191', '2019-01-30 14:46:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('72d8da937ef90901ca411bb7e82bca7f66fdca8c', 'testclient', '191', '2019-01-31 11:27:40', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7351aedea73f0a2be5881b663bcc428a7b6e5a1e', 'testclient', '191', '2019-02-10 12:25:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('739fcafce0253821ce5f9e3bbdf5528d8458b71e', 'testclient', '191', '2019-01-31 11:25:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('73e61094825d8276edf5c3d13b9af3845ec266e9', 'testclient', '180', '2019-01-25 18:08:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('74a5b5f19f444c19801f775c1595c6474794fcb5', 'testclient', '191', '2019-02-08 15:08:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('74db37476a68b2032aaf231feb729ea737971751', 'testclient', '191', '2019-01-31 09:31:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('75025342cedee8e3cd0a1b422ca62087a4487fe4', 'testclient', '180', '2019-01-25 14:24:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('753f10dc25a29148c5029883c7432403ec93a9db', 'testclient', '180', '2019-01-25 16:07:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7586c21395fdd5b2fedeadff47e696dc679a2304', 'testclient', '191', '2019-01-28 21:42:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('758b930c054c6e84a3000dffec641d92608c650d', 'testclient', '191', '2019-02-11 13:33:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('75d434421bcd3d67965522a152b3e040829f2274', 'testclient', '180', '2019-01-23 09:39:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7690afb2b81dba2c78b04cd1404e03654f5d7ce8', 'testclient', '191', '2019-01-28 16:29:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('76ab7ed8dbb63f449ef3168e91db67ec766c8434', 'testclient', '180', '2019-01-25 16:06:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('76d95fd333ec1f7e7ecf6e9ff0a2e44b7fbea01d', 'testclient', '180', '2019-01-25 16:54:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('770ba00666cde982b089189eda1e53f5dc3a81f3', 'testclient', '191', '2019-01-28 21:42:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('78d9ecc49e4cb6f46b55203143007f790fdd9c60', 'testclient', '191', '2019-02-01 21:32:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7929e71ed5c6c740e1402859ace65e62829ea5e7', 'testclient', '191', '2019-02-04 15:55:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7a607ea8e5318bfaccad3181a67bcae81d134779', 'testclient', '191', '2019-02-10 09:25:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7a67154806c569ce230a061d2e5e67d6486e9b72', 'testclient', '191', '2019-01-31 15:33:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7b2d9deb5fc444ba19120428b25b102c813e14e1', 'testclient', '191', '2019-01-29 11:07:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7bd40f1a092e66c1a9074a8d0186dabe03ae31d1', 'testclient', '180', '2019-01-24 00:07:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7bee1bb5abcf143a0bd8dc450f6b2224535ffd57', 'testclient', '191', '2019-01-29 21:17:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7c033879544f0f1bdfbef20abcae02574f0b4022', 'testclient', '191', '2019-01-28 17:25:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7c4821eabb41481af09db0f43b6393e73144ba10', 'testclient', '191', '2019-01-31 09:29:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7c8c7a57bb0b140e2a85054519daa33258653bb5', 'testclient', '180', '2019-01-21 11:55:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7ccbb76fc9a8f4efbb230db72d39672f8e24c746', 'testclient', '180', '2019-01-25 15:58:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7cf941a86bc49a604ddd074a9bd302cc4b75b08c', 'testclient', '180', '2019-01-25 16:14:10', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7d30c35323a643c6765c64284e90df176df67dad', 'testclient', '191', '2019-01-29 22:29:51', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7d341bf0fd6c85604872c4eee1445237a7aca60b', 'testclient', '191', '2019-01-28 21:42:30', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7f7f006fd24ff1d2b78c24d2f87440ca07a0c0ea', 'testclient', '180', '2019-01-25 14:33:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('7fc7a113b6e17932d0042b6922a4e09be102dd10', 'testclient', '180', '2019-01-21 10:19:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8026add487f5c70dfb3c1b0bae9e8f68ef9c2a75', 'testclient', '180', '2019-01-21 10:21:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8027a04a64945947f5da2d89835658953871df05', 'testclient', '191', '2019-01-30 16:34:27', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('818125bebd932099c32854056d5b29132597e072', 'testclient', '191', '2019-01-30 15:24:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('820a341467be65e734f5c497c472f286cf69123a', 'testclient', '180', '2019-01-25 11:17:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('822f0a0883532fefe31079c8bc330f6838166792', 'testclient', '191', '2019-01-31 09:16:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('82ec827d41f40f96303b47c79e264292c6362c41', 'testclient', '180', '2019-01-25 15:57:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('838f88c62a430598e17c2881174eee87fe0180b5', 'testclient', '191', '2019-01-30 17:26:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('83e553e353879264be2facde03a82ae0bf206639', 'testclient', '180', '2019-01-25 14:21:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('855dc70aa18b8042655fb46ccf4a523026438c30', 'testclient', '180', '2019-01-25 15:22:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('85cf36097b83db48486f9322464f6e68217db2f1', 'shopclient', '1', '2019-02-14 09:52:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8660104435a9a1f49afb3b6657b2fd64b2bc6c10', 'testclient', '191', '2019-01-31 09:46:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('86e8ddb6247a28588528d3832f72ca221dbeda26', 'testclient', '191', '2019-01-29 15:39:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('876cfa2cac08cda12530ed31f4d3709994a3c71f', 'testclient', '191', '2019-01-29 09:46:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('88f6f7c038521189f7b008e9f6d97d2e93a4057e', 'testclient', '191', '2019-01-28 21:42:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('897309d16d1bc3cf513cf085dd454aa0a7147dff', 'testclient', '180', '2019-01-24 00:29:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8a76c7c03c53e75bafadd45012a93e64de17b49c', 'testclient', '191', '2019-02-02 00:32:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8aa2d6509b0f9140f55cf571ca424f0fda640a3e', 'testclient', '180', '2019-01-25 18:08:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8aa31505477ab48ba0c3c119d22ea2941d900a5a', 'testclient', '180', '2019-01-24 22:07:17', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8aaf6bac78dbb4f244e9d1a8418d4efb281762ba', 'testclient', '191', '2019-01-30 02:52:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8ab5756b3edec10acf4bc68ff77d7a9ae2645bc1', 'testclient', '180', '2019-01-26 10:12:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8b0a770174a0d102cf04464f4bde8643a04c11a3', 'testclient', '180', '2019-01-26 11:34:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8b36675819ac0e1e763e19db1734f8ed68838ad7', 'testclient', '180', '2019-01-23 11:05:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8d658f967e778581b731db6896d75f9c4212149c', 'testclient', '191', '2019-01-26 11:46:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8d98daa60f9b78311c75d2a264476ebb29cc02ec', 'testclient', '180', '2019-01-24 21:55:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8dbd6bf601194c2608f90bac6414992112273e80', 'testclient', '180', '2019-01-25 12:39:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8dfeca1dcb4547ed3e7f72ee73b33ff03431c6bb', 'testclient', '191', '2019-01-31 11:25:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8e154a8ab8e2ce6d9dd2ab38434b66526cbeb1a2', 'testclient', '180', '2019-01-25 14:45:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('8ec809dbc9516cec8992f72b3e409abbe233954b', 'testclient', '191', '2019-02-08 17:19:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('904f045f74727b798e07455d2c71c5281bd3ea61', 'testclient', '191', '2019-01-26 14:09:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('90904ed8b36c4b1060f7be1d9ac5e686c3f73bb0', 'testclient', '191', '2019-02-13 11:08:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9105143d729b332c783c533f8a5a1a310037d77e', 'testclient', '191', '2019-01-31 14:18:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('91d653822d98a4e98729ca73bc1a13601340f2ca', 'testclient', '191', '2019-01-26 15:54:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9205b4e6323022df4d04257ff380ffd5683864ef', 'testclient', '180', '2019-01-25 16:23:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('925b29601edc40a451cc866b50265867cca19682', 'testclient', '191', '2019-01-29 15:39:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('925be5955edce2d7735f914bdcfe39ff9e6cfd43', 'testclient', '191', '2019-01-26 11:50:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9284dfe567ee91f2e27200d7661368cca75bc199', 'testclient', '180', '2019-01-25 13:25:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('932d4f3908e586a514db1f0009d725781c1a2562', 'testclient', '180', '2019-01-25 12:58:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('93477d94d32504209f777066f8ec1d65eeaf83f6', 'testclient', '191', '2019-02-11 12:45:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9353566a8a4f5654cec626abfad7d5e4f4a5100c', 'testclient', '191', '2019-01-31 09:38:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('93702671d5671c8b078ade9778c0150e39b339f1', 'testclient', '180', '2019-01-21 11:45:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9374e640fd9269347760bc4d11d01c59ba108b66', 'testclient', '191', '2019-01-30 20:18:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('937afde9309fa63a72df1eb3067bfb87786475b6', 'testclient', '191', '2019-01-26 16:37:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('939534b3009c975eb4066514e0c3f628d580f470', 'testclient', '191', '2019-01-28 09:32:55', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('93dcd2ce060d6573a72e17389e743fca5be7901b', 'testclient', '191', '2019-02-09 21:21:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('94aa128c4f704280d879b451acba5a29591721c0', 'testclient', '191', '2019-02-05 17:38:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('952a0237eda905cc58461dfe165eb31774bf5fe7', 'testclient', '191', '2019-01-27 22:05:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('954a0509490fb8b74535df631b6e239b9444096f', 'testclient', '191', '2019-02-12 19:15:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('95a35c1aea53098095de33e7ee7e3d697fa9c782', 'testclient', '191', '2019-02-12 18:47:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('95b8a610fae15f4203b226281a81a64bf2273ad9', 'testclient', '191', '2019-01-31 10:27:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('95f82540f040fc85276a5f564639361f118c3dac', 'testclient', '191', '2019-01-29 16:32:10', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('96931686e17392622716302aa046c3cd1c938a06', 'testclient', '191', '2019-01-30 15:45:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('981605a7ad6cecf86b351def840befaa582dd0f5', 'testclient', '191', '2019-02-08 13:06:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('985b2c7516868be9001c5e4825a122dd61a011b8', 'testclient', '180', '2019-01-22 18:07:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9887d07a3f41fcd55bec393ce3f566e1208c56fd', 'testclient', '180', '2019-01-25 18:08:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9897a62d30eb0661cf6c6c387d8c1935ff5ef20e', 'testclient', '191', '2019-01-28 22:10:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('98bd5067b9fffee72935f58b42a4a47b5bf62ab8', 'testclient', '180', '2019-01-25 21:32:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('98cb715b56199de8f55b52813181166c4b46754d', 'testclient', '191', '2019-01-30 11:50:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9b2a02a24491e3aecb294df5e51169d6c21d2090', 'testclient', '191', '2019-01-31 11:50:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9b43c10cb218753d51e9f9a59ea338f76e4a31fd', 'testclient', '180', '2019-01-24 20:04:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9b5b4829f24a41b9ca746b83eb645ba05c99a449', 'testclient', '191', '2019-01-30 15:18:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9b7c3f0d241322365cf51a0d58ee1a4bae07d5f3', 'testclient', '180', '2019-01-22 22:15:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9bdd3ebfdf14f8f88b24b1874877a65da1d57392', 'testclient', '180', '2019-01-25 12:36:26', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9c9686890d754b39559709f39542afcfcdfae0cb', 'testclient', '180', '2019-01-25 15:03:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('9cddb7f903f88f9d99268c97aec862fe747f3fee', 'testclient', '191', '2019-01-31 11:51:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a02ccdda3714ef402e864f767a7b94bd95c7a0f2', 'testclient', '180', '2019-01-25 16:40:11', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a10c1a83c18a0f5ce2bc85ea285265466d3484cf', 'testclient', '191', '2019-02-14 09:52:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a163d49d8ee0aab600237a00c45e006357bfed1e', 'testclient', '180', '2019-01-21 11:45:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a38a7b61aaa6b709c41e75f8f8b230742d281d1d', 'testclient', '191', '2019-02-06 21:28:53', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a411698e324705fa0e276b6e202d6e7158f28596', 'testclient', '191', '2019-01-31 13:58:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a4417f483d684d07585298ce7a2959da3d491bba', 'testclient', '191', '2019-01-31 09:40:05', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a45c591ffdd746c6945537c091a3cff9246fdca3', 'testclient', '180', '2019-01-25 16:05:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a470a90de96ffe8ba7a5a1202f05e73283c00331', 'testclient', '191', '2019-01-26 11:44:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a57f6526c55686161ecebd7eda678cce94bcdb70', 'testclient', '191', '2019-01-31 15:33:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a5a0f85bb721847eac5aeaa89a24bfd4b3ccd9df', 'testclient', '180', '2019-01-25 16:50:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a6ceebbef18d8c89a59f49ff9351e09c4116cbdd', 'testclient', '180', '2019-01-25 15:00:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a70ae8e7072983ee6edfb7b214293cd670a8593c', 'testclient', '180', '2019-01-24 21:39:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a78402264448dd71efbf3a1b898181d8ad110ddb', 'testclient', '191', '2019-01-30 14:22:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a80269b226a60878a2db927e2dbf722edb72fa1d', 'testclient', '191', '2019-02-12 18:50:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a810e58d1cb1824d521f7e52e240dc73f653928d', 'testclient', '191', '2019-02-03 16:02:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a8bd5a87b3bc33c53e99821617633419d004bbda', 'testclient', '191', '2019-01-30 09:09:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('a9e6c4af9c43dde893d5e8c63edaab8d488c4896', 'testclient', '180', '2019-01-25 16:39:17', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('aac793f106db484d22aec427a4bf7d57f2b262db', 'testclient', '191', '2019-02-08 21:04:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('aae1a3766fb00629030e1ffd7136295bacf665dc', 'testclient', '191', '2019-02-01 12:03:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ab1ee9f28946920264d5e8bd49aa98c293d44cf4', 'testclient', '180', '2019-01-23 23:34:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('acfb45d2e4c12df4d89342b4d5774a17fe8db516', 'testclient', '191', '2019-01-30 15:08:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ad621710ed380347d9735ebd9d3495e2a695ae22', 'testclient', '180', '2019-01-25 21:06:25', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('afe2ef48e849f4f72674e3b6d2b11f3ceaa97cf4', 'testclient', '191', '2019-02-04 13:45:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b075b64728bdc9a34a48f213b26e37417069d3e2', 'testclient', '180', '2019-01-25 13:06:35', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b0ffb7e1d128ba858ea9f863ae4877c93f1b5da4', 'testclient', '180', '2019-01-25 15:04:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b125d14ef750167dba2d7f3e8ba3c33cc41c292a', 'testclient', '180', '2019-01-25 16:04:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b350aad423e3963561a45dd55b60c419ee6d774a', 'testclient', '191', '2019-01-30 16:39:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b37f7f2959b9ea77aa7ae1d3d7629368cbd95f77', 'testclient', '180', '2019-01-21 10:18:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b3a53d91f92f6168eb97246a6b8a058ebd4deef5', 'testclient', '180', '2019-01-25 21:11:25', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b4152d893fb1f7fb71e4890424fcac0f2ad32148', 'testclient', '191', '2019-02-06 11:24:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b457d2d4756f6d05c409ada939438c2eb2f56370', 'testclient', '191', '2019-02-06 09:20:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b59eeb94f5098e01d6a6d2bf51028aa1e564b6f1', 'testclient', '191', '2019-01-30 20:05:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b5c349ffce09255e07c5887311dc0e93a9e2e2c9', 'testclient', '191', '2019-01-30 15:12:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b5f0752c5e50e624117b08d96c5bcce157134e25', 'testclient', '191', '2019-01-30 15:23:46', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b637e456df1a6616a8ab802b28cdc2dd85cfa753', 'testclient', '180', '2019-01-25 15:57:11', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b6fc91ee54d10979ebfeac58b161c415c1fb3abb', 'testclient', '191', '2019-01-28 11:55:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b8142dcc6c1bec6d00b097ef4d49c17a57f574b2', 'testclient', '180', '2019-01-25 13:42:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b86280f1196c27268f6f66d7ef7b9df1bd2ddde9', 'testclient', '191', '2019-01-31 09:36:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b890eb040e73cf580cb16dd8bbe6b536a1b1ba56', 'testclient', '180', '2019-01-24 20:11:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b896269a7468ae1bfcb32d52e896750c8f2c1b7e', 'testclient', '180', '2019-01-21 12:19:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b8e4d95ac546f53b4a0bd14b71792cddde5a803d', 'testclient', '191', '2019-01-30 17:27:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b8fcbc580034c209a73be8e566cb4280bbe4f247', 'testclient', '191', '2019-02-01 16:08:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b939ff7592d4c85e14cb01ff5df114b87966061c', 'testclient', '180', '2019-01-23 23:46:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b95ebbee3f4cf9e2b8db6c7bf2f5e61bc91f844a', 'testclient', '180', '2019-01-23 11:49:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('b9ea5892799afa3123d77928a15debbca7e49001', 'testclient', '191', '2019-01-27 08:52:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ba960b7c80d32564ab48fbdf0c4d7923366e0c65', 'testclient', '180', '2019-01-21 10:20:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bad1e95f9d8f12a17db3863f32a5e657e7601935', 'testclient', '191', '2019-01-28 17:30:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bad8286cbfe8ce3961f354592dd7d03337616f17', 'testclient', '191', '2019-02-01 14:45:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bae74ef84456333fc03c966b389865c6b3515b69', 'testclient', '191', '2019-01-30 16:24:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bb4a8311a4d5a2139425a95f6b5ac696716f8933', 'testclient', '191', '2019-02-04 09:47:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bb912f4918ed91e4bace6ed9a22bdfe7975469c6', 'testclient', '180', '2019-01-25 15:36:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bc26cddac3407a200c449443a02bcfe40801fa5f', 'testclient', '180', '2019-01-26 09:09:11', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bdaff5c3536baa93909bf632e84e4ce9a87af790', 'testclient', '191', '2019-02-04 12:13:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bdb66380cd23c4271243818f93e63e28925d2f90', 'testclient', '191', '2019-02-01 13:45:30', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bde05b52688b66020eea6b4e6b6ee011ef826d7f', 'testclient', '180', '2019-01-25 13:44:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('be04d0d62fb3b91ea3a1946a3149f6151ec0f723', 'testclient', '180', '2019-01-25 15:33:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('be75871d346f1db25281a161ad83d73496863212', 'testclient', '191', '2019-02-10 23:34:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('beb38521ea0cb7e2aa583cc42cfc289093ffaf38', 'testclient', '191', '2019-01-31 09:20:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('becbf3eee3e8974ac086df8c79a938120f9422f0', 'testclient', '191', '2019-02-12 18:41:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('bfc404118ceef15b162396bd1a45705507bf40dc', 'testclient', '191', '2019-02-11 00:30:38', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c06822ca90081b1c4b61f61ad41c17e8b7a1374a', 'testclient', '191', '2019-01-26 19:50:41', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c0892363ce5050c5086df3146d2a5918810c2b81', 'testclient', '191', '2019-02-12 17:01:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c1e19e7903a890db3305718096372e83f49c0e4a', 'testclient', '191', '2019-02-14 09:53:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c214fe9769674b69fbaa1f457539d8920cd4f5a8', 'testclient', '191', '2019-01-31 10:17:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c23a5bbc68e1fd39721cd29c735b0bb4851e4565', 'testclient', '191', '2019-02-06 11:47:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c265be2abb9b6706e781e57defcaa951f89f8b9f', 'testclient', '191', '2019-02-10 17:03:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c2c2d5e9629497a2fc76a615e3fe31ef1631b2bd', 'testclient', '191', '2019-02-26 09:22:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c332415c7910a8bf2e6baa559b3ef6c778471008', 'testclient', '180', '2019-01-23 09:58:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c3b0c3ba7980d20a3f3ccae991071c561ffef3b9', 'testclient', '191', '2019-01-29 14:14:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c3e91bbff683b74d0be3b7813d2017909f5564f2', 'testclient', '191', '2019-01-26 15:21:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c522892cd5402b08e7ff1d7d6b358c77c7ab8457', 'testclient', '191', '2019-01-30 15:54:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c5a6f5ed1d263c52d9e82c07c39e222bd2da2dc0', 'testclient', '180', '2019-01-25 16:00:51', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c5dcbf638b4908f6ea2519f7e2d8b0ba04e594bb', 'testclient', '180', '2019-01-25 17:49:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c65e8802f9c308404195fb78e64d5b240de5f834', 'testclient', '191', '2019-02-08 22:08:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c743e0fe483d231d43e7296bdfe580b618833147', 'testclient', '180', '2019-01-25 23:57:37', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c8c11e14f5be5c857c7b8b8afe159603273a6038', 'testclient', '191', '2019-02-01 21:47:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c90fe96f97b5a44001349cd303b8ce29bca1b143', 'testclient', '191', '2019-02-02 12:46:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c966cdf5b4a6cddd31fa939303cf42007cb8ab40', 'testclient', '191', '2019-01-31 09:32:16', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c981887d0caa9f34bf815e0f39160140125b4e4a', 'testclient', '191', '2019-02-07 09:28:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c9a907783c8b08dc8cdad075e2d5e3fae387487e', 'testclient', '191', '2019-02-09 16:25:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('c9c7a3491f6835cedaa397598a482fcccb3eca0d', 'testclient', '180', '2019-01-25 15:01:32', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ca336de994ac5ac00e6056938954d8267c1debde', 'testclient', '191', '2019-01-31 11:49:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ca4b9f42423302dd700816cef20ee21057025fd2', 'testclient', '191', '2019-02-10 23:34:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ca693fe913454f0d4b177a8f178aa75981e7ee1a', 'testclient', '180', '2019-01-25 14:44:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cad461755d17374f9e8c15f4456cee0d8051c4d2', 'testclient', '180', '2019-01-25 16:20:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cb7a7359864314448125e873ae4945b4ba24f428', 'testclient', '191', '2019-01-31 12:03:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd2c10bcf7920c21a98d92618f41693674af1750', 'testclient', '180', '2019-01-25 16:04:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd5b68868e7363bac76279a4e110bb06f716e624', 'testclient', '180', '2019-01-25 14:45:21', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd7cdefa9d70c8e06fef81b19bf3a459ca315a49', 'testclient', '180', '2019-01-24 21:42:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cd8f39dc6fd0d07f1499b44a425e72948c0536c0', 'testclient', '191', '2019-02-01 23:17:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ce48e74f28837d679bef2e503c5e986cf395099f', 'testclient', '191', '2019-01-26 12:56:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ce80baa4f74ba9c233e1a528c6764353477b18bd', 'testclient', '191', '2019-02-14 11:07:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('cfadf579b0e191214e1c916ca434cd92c50609d3', 'testclient', '191', '2019-02-10 22:30:19', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d01ad1c42028fe098117028b6fb4d84a6dd2f453', 'testclient', '191', '2019-02-11 13:33:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d0756c2e871a375a1f1661f960c8918fedd85f64', 'testclient', '180', '2019-01-25 12:27:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d1278741e53123d36bb322badb53178f9844bc99', 'testclient', '180', '2019-01-24 20:44:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d14c73b5b7dfb217c07aa876eebf221257443c53', 'testclient', '191', '2019-02-05 12:55:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d1991a033a87620a7f6b0b624d00961186fe44e3', 'testclient', '191', '2019-01-31 11:52:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d32454b1d1009f77ad45e8b7e8bd30789e429231', 'testclient', '191', '2019-02-13 19:10:04', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d3c84c87d15dfb2b88de8b67990f947c7aec69bd', 'testclient', '180', '2019-01-25 16:07:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d410245ec881ec400d8cdf3e5d9de9cbcdf91164', 'testclient', '180', '2019-01-26 11:21:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d4242c08dbc4adb8ec37d597e82921e20788f11c', 'testclient', '191', '2019-01-28 22:37:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d4876e22eff2bf7d8f37fbf5cbccb7ee6aba7422', 'testclient', '180', '2019-01-26 00:01:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d58675fc3ab020f9d79e22121909b74de0032d8b', 'testclient', '191', '2019-02-07 12:48:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d5d0417c3e185a42c902c9d929d98e8a64ee4151', 'testclient', '191', '2019-01-30 13:44:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d62ba1782eac573fe39ad94acfedf27f1be49550', 'testclient', '180', '2019-01-24 19:34:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d675b24a8eb9b2419c75058327183da3e521396a', 'testclient', '180', '2019-01-25 22:52:06', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d6f2916436de82d0df34169bc33605ddf5d1f67e', 'testclient', '180', '2019-01-25 12:10:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d789767d3be70b49999440af994d4e369eba7d0e', 'testclient', '180', '2019-01-25 09:27:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d8114afe8ed0639e0600d52a37f634c5b7802906', 'testclient', '191', '2019-01-30 17:27:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d82f428e63eea17c11e000dd28a4848be5de3de6', 'testclient', '191', '2019-01-30 01:47:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d855fd23f6ad71cb67abe8e59319af4aa95da433', 'testclient', '191', '2019-01-31 09:29:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d8e90ff929038a111a85de26809dd14768e7172f', 'testclient', '180', '2019-01-24 21:36:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d99c8419871fdb8b04392ed631cdef72306adca6', 'testclient', '180', '2019-01-24 22:13:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('d9e5c1378dccd935349f4158f1d6d5ee7d87dc22', 'testclient', '180', '2019-01-22 21:54:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('da313bc67879bbb905c4fa5899cdd24548cce770', 'testclient', '191', '2019-02-10 10:56:01', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('dafb8e3808deb88ffebdbf1fced54b5e4ef3316b', 'testclient', '191', '2019-02-12 17:01:44', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('db60dd6ca4007c04f1f521d65cdbbd8679426f8e', 'testclient', '191', '2019-02-03 17:17:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('db94d414e2cdc03e2936061fdcd5e5710467274a', 'testclient', '180', '2019-01-25 11:38:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('dbdb5375ae2b1274cbe35a7ca670466ca8ed1ea2', 'testclient', '191', '2019-01-31 22:20:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('dbde76c3249c2c2cce4306593039626e919f8436', 'testclient', '180', '2019-01-25 14:23:57', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('dc651686de3df613bed4ba8bf2d1e75e7338610b', 'testclient', '191', '2019-01-29 13:03:09', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ddc8607d8a8c0103b61e978f2845e5e77575ada9', 'testclient', '191', '2019-02-11 01:43:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('deb25e176f12597dfa97d368692e770c8088dc90', 'testclient', '191', '2019-01-28 14:27:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('deeda62ee228c434a9c48db84e4af4885f88e82a', 'testclient', '180', '2019-01-25 15:56:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('df841f52ea55491d5dc63c57d47a03a908a7bef3', 'testclient', '191', '2019-01-31 16:28:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e01ed5627aa731b03fd4c7b3d5081546c9fedd09', 'testclient', '191', '2019-01-30 17:39:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e02a1ba5c91144a38206c71149d4a05d64a6cb31', 'testclient', '180', '2019-01-25 15:48:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e076c2ef5979b6952ec0269281915101871a4d86', 'testclient', '191', '2019-01-30 10:30:42', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e17a81d393549acd134032fa25f40669cd4a9da6', 'testclient', '191', '2019-02-12 21:15:27', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e1b2f7d6d88407c3c445f0f9c01fe8e70041e3d4', 'testclient', '180', '2019-01-25 15:22:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e29e8b3c7351133a9c12c390690162bd5aab4cbd', 'testclient', '191', '2019-01-29 20:39:49', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2db1a30e86bd5f3a38e1893b9089d57e55017f1', 'testclient', '180', '2019-01-22 23:02:08', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e2ed518a602ce92790348b9ffd5e79244149ba68', 'testclient', '191', '2019-01-30 17:31:02', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e3051d021f915f54bfd2aa24bbfd892fc73f6661', 'testclient', '191', '2019-02-01 13:41:22', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e3601ebad898d1c3842f8dbad277101284c5c4fb', 'testclient', '191', '2019-01-30 14:46:13', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e3aebced4a4c4b7ab34b155768037eba5e5be843', 'testclient', '191', '2019-02-11 13:02:11', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e4dd46b2304310716a4c520d43801f65f734242b', 'testclient', '180', '2019-01-25 09:57:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e52cb8dd7f97142ff2d4485364960d2f7f857c2b', 'testclient', '180', '2019-01-24 00:39:52', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e61e198cdc1f6d906ee8140b7b3fb304dc28c4fe', 'testclient', '180', '2019-01-24 20:26:55', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e62300a102bf3802318fba245fca3c42f658ddf5', 'testclient', '180', '2019-01-26 08:57:34', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e6319423ac3dc0b4f18d46b6528fd6c6628876aa', 'testclient', '191', '2019-01-27 09:54:07', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e64249ba8b49b7c257c0eb594ed28bd3f3ccb77a', 'testclient', '180', '2019-01-25 18:04:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e64633d830c7c06526859072c4568276daa85a37', 'testclient', '180', '2019-01-25 16:37:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e64b31c642638b9d79a2a4bf090e55271a06c9d3', 'testclient', '180', '2019-01-25 17:37:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e6ecd6cfb9c905715a7d41599821b26965bc35cc', 'testclient', '191', '2019-01-31 09:08:55', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e8143caef3884d932bc0f7eddbab51e93dc1cb46', 'testclient', '180', '2019-01-25 13:11:47', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e8359f61cf0d6edb0fcc89fc68fd6be253bfa769', 'testclient', '180', '2019-01-24 21:28:12', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e95a8557d94501c60d5ccb62a6edd20b05425561', 'testclient', '191', '2019-01-29 09:37:24', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('e9d43bbee97b889ba5417578b874d2847f827cc5', 'testclient', '191', '2019-01-31 15:33:54', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('eaa495ecf32673832856a1e02cacb011ce888645', 'testclient', '191', '2019-02-01 21:59:17', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('eb4bf38b7b9425cbee092c72949914dbe916323a', 'testclient', '191', '2019-02-08 10:48:39', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('eb6d0e1513c51daadfcd8bdd4500439f235b0318', 'testclient', '180', '2019-01-21 10:17:30', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ec553f4cc3054f2267a9d47feee4c84636dc4728', 'testclient', '191', '2019-01-29 15:48:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ec616c20a477d657e9be1d40cac192d81603efd9', 'testclient', '180', '2019-01-25 14:23:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ed7fb8540a5a501600ea10fe6d224d2d71f0af48', 'testclient', '191', '2019-01-30 00:33:14', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ef596de384c563061c72b87539265aae25aeeb3c', 'testclient', '191', '2019-02-06 10:10:20', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f00e5ff8a64086b34d042a8ce3e7d23bda27104f', 'testclient', '191', '2019-01-28 14:40:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f14dfd22d67d7eb064f7c814405a569de5963e0d', 'testclient', '191', '2019-01-31 11:43:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f187f48ed8da3a3c25089dede68d6852aeda7699', 'testclient', '191', '2019-01-31 11:48:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f1d258eaae80959e75ea807940157e910c4c0bdf', 'testclient', '180', '2019-01-24 00:23:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f31c833422940b7bcf3eb4cab3eaf1ec0fb81f5b', 'testclient', '180', '2019-01-25 14:30:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f33533be8674756e4e8a7d17f8b3d479274cd386', 'testclient', '191', '2019-01-31 09:13:28', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f3545d7cba9d77ae9136b448f2ee5851a8176ab5', 'testclient', '180', '2019-01-25 17:17:15', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f3eced8fb1ac43a16237c78e7bf5aeedfc42133e', 'testclient', '180', '2019-01-25 10:32:38', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f48048a8e070f204ba88cea8be4fa185243249d9', 'testclient', '180', '2019-01-22 22:01:56', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f54220c1e7092aa1b60a07ac7e612304bea32592', 'testclient', '191', '2019-02-10 16:00:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f599981b2cb00d7b94978f3dbd04d3c1f68cd27c', 'testclient', '180', '2019-01-25 12:14:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f685d3b019d2f7aac4dce35bea54c11a6783f341', 'testclient', '180', '2019-01-25 14:20:48', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f72b262c07ebdcd641c432c872f6a362e0e82012', 'testclient', '180', '2019-01-25 15:57:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f74d7d07f551c5dabec3a92b67f26b12da8aba2c', 'testclient', '191', '2019-01-30 17:26:58', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f86004c40f12f0028310eb9389a70b57b8c470b8', 'testclient', '191', '2019-02-13 20:49:45', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f87b43a6dc22535bab859733e185b80317e8c1c1', 'testclient', '180', '2019-01-25 11:13:36', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f8a74846b678f8e4a779e8eb3141312d5b149f3e', 'testclient', '180', '2019-01-26 09:30:17', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f90f1bc8e44f7038460b6080d4ead2c7a8e4af4f', 'testclient', '191', '2019-02-03 18:20:29', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f957bcf9a3234ee0c9b3f6ffaa0bf64259870a19', 'testclient', '191', '2019-02-05 09:33:18', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9c845e3501bdecfef5e132adeb7301abab90bae', 'testclient', '180', '2019-01-25 14:45:59', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('f9da3efacac4f41534778d7ba2bd7e947cbb2514', 'testclient', '191', '2019-01-27 12:07:23', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fa7178463df5f830b54a461cd59f933d53fb76e7', 'testclient', '191', '2019-01-28 11:33:00', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fad6971cd28b364605a7fbc947c6213420bc4af7', 'testclient', '180', '2019-01-23 09:39:43', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fc708b71d6bd297c2927d2e5cea2f1623d24e73a', 'testclient', '180', '2019-01-25 14:45:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fdc5e42853fafe9a361086017915598bc5ce6095', 'testclient', '191', '2019-02-01 18:49:03', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fde528c0399cdd30f45a8dcb9c1e7eb9ef5c40f4', 'testclient', '180', '2019-01-23 23:20:50', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fde9f1abef409bf5f91273eaf1c3e5c444edb908', 'testclient', '180', '2019-01-22 23:54:33', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('fe1868b71b0eea42aa42ee6290ed96cf729f9e99', 'testclient', '191', '2019-01-31 09:53:31', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('feb8c2921f302b3a12969bbdc44e559dd1f63334', 'testclient', '191', '2019-01-26 20:54:26', 'basic');
INSERT INTO `oauth_refresh_tokens` VALUES ('ff68a5a20772d602068bb3b86d93ba53bf411cb8', 'testclient', '191', '2019-01-26 13:03:15', 'basic');
COMMIT;

-- ----------------------------
-- Table structure for oauth_scopes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_scopes
-- ----------------------------
BEGIN;
INSERT INTO `oauth_scopes` VALUES ('basic', 1);
COMMIT;

-- ----------------------------
-- Table structure for oauth_users
-- ----------------------------
DROP TABLE IF EXISTS `oauth_users`;
CREATE TABLE `oauth_users` (
  `username` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wd_shop
-- ----------------------------
DROP TABLE IF EXISTS `wd_shop`;
CREATE TABLE `wd_shop` (
  `user_id` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '账户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_shop
-- ----------------------------
BEGIN;
INSERT INTO `wd_shop` VALUES (1, 'test', 'test123');
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_dept`;
CREATE TABLE `wd_sys_dept` (
  `dept_id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门管理';

-- ----------------------------
-- Records of wd_sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_dept` VALUES (82, '后勤部', 2, '2018-12-11 11:32:12', '2019-01-14 16:14:04', '0', 0);
INSERT INTO `wd_sys_dept` VALUES (83, '人事部', 2, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (84, '进修部', 3, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (86, '图书馆', 5, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (87, '信息中心', 6, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (88, '干教部', 7, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (89, '继续教育部', 8, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (90, '办公室', 9, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (91, '招投标', 10, '2018-12-11 14:06:23', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (93, ' 教研部', 12, '2018-12-11 14:16:43', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (94, '市委党', 13, '2018-12-11 14:16:43', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (95, '教务部', 14, '2018-12-11 14:16:43', NULL, '0', 0);
INSERT INTO `wd_sys_dept` VALUES (99, '测试部', 12, '2018-12-13 17:23:58', '2019-01-14 16:32:18', '0', 1);
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_dept_relation`;
CREATE TABLE `wd_sys_dept_relation` (
  `ancestor` int(11) NOT NULL COMMENT '祖先节点',
  `descendant` int(11) NOT NULL COMMENT '后代节点',
  PRIMARY KEY (`ancestor`,`descendant`),
  KEY `idx1` (`ancestor`),
  KEY `idx2` (`descendant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for wd_sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_dict`;
CREATE TABLE `wd_sys_dict` (
  `id` int(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='数据字典表';

-- ----------------------------
-- Records of wd_sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_dict` VALUES (172, 'werew', 'werwer', 'i', 'werew', 2, '2019-01-14 15:01:55', '2019-01-14 15:01:55', 'rrrr', '0');
INSERT INTO `wd_sys_dict` VALUES (175, '121', 'we', 'int', 'werew23', 77, '2019-01-14 15:02:24', '2019-01-14 15:04:44', 'rrrr', '');
INSERT INTO `wd_sys_dict` VALUES (177, '121', 'werwer45', 'intasd', 'werew23', 77, '2019-01-14 15:02:26', '2019-01-14 15:27:03', 'rrrrawdas', '');
INSERT INTO `wd_sys_dict` VALUES (180, '121', 'werwer45', 'int', 'werew23', 77, '2019-01-14 15:02:26', '2019-01-14 15:02:26', 'rrrr', '0');
INSERT INTO `wd_sys_dict` VALUES (184, '121344', 'werwer45', 'int', 'werew23344', 44, '2019-01-14 15:02:37', '2019-01-14 15:02:37', 'rrrr', '0');
INSERT INTO `wd_sys_dict` VALUES (185, '18', 'werwer45', 'int', 'werew23344', 44, '2019-01-14 15:02:41', '2019-01-14 15:02:41', 'rrrr', '0');
INSERT INTO `wd_sys_dict` VALUES (186, '45', 'we56', 'int', 'wer45', 44, '2019-01-14 15:02:47', '2019-01-14 15:02:47', 'rrrr', '0');
INSERT INTO `wd_sys_dict` VALUES (187, '12', '这是大多数', 'int', '这是大多数', 3, '2019-01-14 15:25:58', '2019-01-14 15:25:58', 'ww', '0');
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_log`;
CREATE TABLE `wd_sys_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `service_id` varchar(32) DEFAULT NULL COMMENT '服务ID',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(1000) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(10) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `time` mediumtext COMMENT '执行时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统日志表';

-- ----------------------------
-- Records of wd_sys_log
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_log` VALUES (345, '1', '', '1', '', '2019-01-08 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_menu`;
CREATE TABLE `wd_sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `title` varchar(32) NOT NULL COMMENT '菜单名称',
  `permission` varchar(32) DEFAULT NULL COMMENT '菜单权限标识',
  `path` varchar(128) DEFAULT NULL COMMENT '前端URL',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单ID',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `component` varchar(64) DEFAULT NULL COMMENT 'VUE页面',
  `sort` int(11) DEFAULT '1' COMMENT '排序值',
  `type` char(1) DEFAULT NULL COMMENT '菜单类型 （0菜单 1按钮）',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(1) DEFAULT '0' COMMENT '0--正常 1--删除',
  `name` varchar(255) DEFAULT NULL COMMENT '前台标识',
  `cate` varchar(255) DEFAULT NULL COMMENT '是否外链',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单权限表';

-- ----------------------------
-- Records of wd_sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_menu` VALUES (1, '系统管理', NULL, '/admin', 0, 'md-settings', '', 1, '0', '2017-11-07 20:56:00', '2019-01-11 21:44:00', '0', 'admin', NULL);
INSERT INTO `wd_sys_menu` VALUES (3, '菜单管理', NULL, 'menu', 1, 'md-reorder', 'view/admin/sys_menu/index', 4, '0', '2017-11-08 09:57:27', '2019-01-30 18:46:27', NULL, 'menu', NULL);
INSERT INTO `wd_sys_menu` VALUES (4, '角色管理', NULL, 'role', 1, 'ios-person', 'view/admin/sys_role/index', 2, '0', '2017-11-08 10:13:37', '2019-01-30 18:31:38', NULL, 'role', NULL);
INSERT INTO `wd_sys_menu` VALUES (9, '代码生成', NULL, 'gen', 1, 'md-code', 'view/admin/gen/index', 6, '0', '2018-01-20 13:17:19', '2019-01-30 18:46:57', NULL, 'gen', NULL);
INSERT INTO `wd_sys_menu` VALUES (32, '菜单新增', 'sys_menu_add', NULL, 3, NULL, NULL, NULL, '1', '2017-11-08 10:15:53', '2018-01-20 14:37:50', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (33, '菜单修改', 'sys_menu_edit', NULL, 3, NULL, NULL, NULL, '1', '2017-11-08 10:16:23', '2018-01-20 14:37:56', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (34, '菜单删除', 'sys_menu_del', NULL, 3, NULL, NULL, NULL, '1', '2017-11-08 10:16:43', '2018-01-20 14:38:03', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (42, '角色新增', NULL, NULL, 4, NULL, NULL, NULL, '1', '2017-11-08 10:14:18', '2019-01-29 19:51:43', NULL, NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (43, '角色修改', 'sys_role_edit', NULL, 4, NULL, NULL, NULL, '1', '2017-11-08 10:14:41', '2018-04-20 07:21:50', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (44, '角色删除', 'sys_role_del', NULL, 4, NULL, NULL, NULL, '1', '2017-11-08 10:14:59', '2018-04-20 07:22:00', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (45, '分配权限', 'sys_role_perm', NULL, 4, NULL, NULL, NULL, '1', '2018-04-20 07:22:55', '2018-04-20 07:24:40', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (62, '字典删除', 'sys_dict_del', NULL, 94, NULL, NULL, NULL, '1', '2017-11-29 11:30:11', '2019-01-25 10:15:31', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (63, '字典新增', 'sys_dict_add', NULL, 94, NULL, NULL, NULL, '1', '2018-05-11 22:34:55', '2019-01-25 10:15:35', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (64, '字典修改', 'sys_dict_edit', NULL, 94, NULL, NULL, NULL, '1', '2018-05-11 22:36:03', '2019-01-25 10:16:09', '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (90, '控制器模型', NULL, 'cmcode', 9, 'md-timer', 'view/admin/gen/cmcode', 1, '0', '2019-01-18 12:49:46', '2019-01-30 18:49:48', NULL, 'cmcode', NULL);
INSERT INTO `wd_sys_menu` VALUES (91, '前台界面', NULL, 'vuecode', 9, 'md-color-palette', 'view/admin/gen/vcode', 2, '0', '2019-01-18 12:52:08', '2019-01-30 18:49:32', NULL, 'vuecode', NULL);
INSERT INTO `wd_sys_menu` VALUES (92, '目录检查', NULL, 'dirbase', 9, 'ios-folder-open', 'view/admin/gen/dirbase', 3, '0', '2019-01-21 12:15:31', '2019-01-30 18:49:57', NULL, 'dirbase', NULL);
INSERT INTO `wd_sys_menu` VALUES (94, '字典管理', NULL, 'sys_dict', 1, 'md-bookmarks', 'view/admin/sys_dict/index', 5, '0', '2019-01-23 10:28:44', '2019-01-30 18:46:50', NULL, 'sys_dict', NULL);
INSERT INTO `wd_sys_menu` VALUES (123, '添加', 'sys_log_button_add', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (124, 'test1', 'sys_log_button_index5', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (125, '导出', 'sys_log_button_export', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (126, 'test2', 'sys_log_button_index6', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (127, '编辑', 'sys_log_button_edit', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (128, '删除', 'sys_log_button_delete', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (129, 'test3', 'sys_log_button_index7', NULL, 122, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (132, '添加', 'sys_log_button_add', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (133, '测试', 'sys_log_button_index6', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (134, '导出', 'sys_log_button_export', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (135, '测试2', 'sys_log_button_index5', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (136, '编辑', 'sys_log_button_edit', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (137, '删除', 'sys_log_button_delete', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (138, '测试3', 'sys_log_button_index7', NULL, 131, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (141, '添加', 'sys_log_button_add', NULL, 140, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (142, '导出', 'sys_log_button_export', NULL, 140, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (143, '编辑', 'sys_log_button_edit', NULL, 140, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (144, '删除', 'sys_log_button_delete', NULL, 140, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (147, '添加', 'sys_log_button_add', NULL, 146, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (148, '导出', 'sys_log_button_export', NULL, 146, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (149, '编辑', 'sys_log_button_edit', NULL, 146, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (150, '删除', 'sys_log_button_delete', NULL, 146, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (153, '添加', 'sys_log_button_add', NULL, 152, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (154, '导出', 'sys_log_button_export', NULL, 152, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (155, '编辑', 'sys_log_button_edit', NULL, 152, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (156, '删除', 'sys_log_button_delete', NULL, 152, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (159, '添加', 'sys_log_button_add', NULL, 158, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (160, '导出', 'sys_log_button_export', NULL, 158, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (161, '编辑', 'sys_log_button_edit', NULL, 158, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (162, '删除', 'sys_log_button_delete', NULL, 158, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (163, '部门管理', NULL, 'sys_dept', 1, 'ios-contacts', 'view/admin/sys_dept/index', 3, '0', '2019-01-29 13:57:56', '2019-01-30 18:31:52', NULL, 'sys_dept', NULL);
INSERT INTO `wd_sys_menu` VALUES (169, '用户管理', NULL, 'sys_user', 1, 'md-people', 'view/admin/sys_user/index', 1, '0', '2019-01-29 20:11:14', '2019-01-30 18:31:18', NULL, 'sys_user', NULL);
INSERT INTO `wd_sys_menu` VALUES (170, '添加', 'sys_user_button_add', NULL, 169, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (171, '导出', 'sys_user_button_export', NULL, 169, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (172, '编辑', 'sys_user_button_edit', NULL, 169, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
INSERT INTO `wd_sys_menu` VALUES (173, '删除', 'sys_user_button_delete', NULL, 169, NULL, NULL, 1, '1', '0000-00-00 00:00:00', NULL, '0', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_role`;
CREATE TABLE `wd_sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_code` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `role_desc` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标识（0-正常,1-删除）',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_idx1_role_code` (`role_code`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='用户角色表';

-- ----------------------------
-- Records of wd_sys_role
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_role` VALUES (49, '普通用户', 'ptyh', '做点什么好呢', '2018-12-11 21:20:45', '2018-12-14 13:14:40', '0');
INSERT INTO `wd_sys_role` VALUES (51, '管理员', 'gly', '管理一些普通的功能', '2018-12-14 11:03:39', NULL, '0');
INSERT INTO `wd_sys_role` VALUES (54, '超管', 'cjgly', '无所不能', '2018-12-14 11:21:54', '2018-12-14 13:22:47', '0');
INSERT INTO `wd_sys_role` VALUES (57, '测试员认2', 'cs2', '测试用的2', '2018-12-14 15:10:15', NULL, '0');
INSERT INTO `wd_sys_role` VALUES (58, '测试2222', 'cs22222', '测试2222222222', '2018-12-14 15:18:54', '2019-01-14 22:12:35', '0');
INSERT INTO `wd_sys_role` VALUES (59, '测试333', 'cs23333', '测试233333', '2018-12-14 15:19:10', NULL, '0');
INSERT INTO `wd_sys_role` VALUES (60, '测试34444444', 'cs2344', '测试24444444', '2018-12-14 15:20:04', '2019-01-14 22:12:43', '0');
INSERT INTO `wd_sys_role` VALUES (61, 'eee', 'eee444', 'eeeee444444', '2018-12-14 15:20:19', NULL, '0');
INSERT INTO `wd_sys_role` VALUES (108, '超级管理员', 'super_admin', '超级管理员', '2019-01-25 09:35:22', '2019-01-25 09:35:37', '0');
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_role_dept`;
CREATE TABLE `wd_sys_role_dept` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` int(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色部门对应表';

-- ----------------------------
-- Records of wd_sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_role_dept` VALUES (79, 54, 89);
INSERT INTO `wd_sys_role_dept` VALUES (80, 55, 88);
INSERT INTO `wd_sys_role_dept` VALUES (81, 56, 88);
INSERT INTO `wd_sys_role_dept` VALUES (82, 57, 88);
INSERT INTO `wd_sys_role_dept` VALUES (83, 58, 82);
INSERT INTO `wd_sys_role_dept` VALUES (84, 59, 83);
INSERT INTO `wd_sys_role_dept` VALUES (85, 60, 90);
INSERT INTO `wd_sys_role_dept` VALUES (86, 61, 87);
INSERT INTO `wd_sys_role_dept` VALUES (87, 62, 83);
INSERT INTO `wd_sys_role_dept` VALUES (88, 63, 88);
INSERT INTO `wd_sys_role_dept` VALUES (89, 64, 83);
INSERT INTO `wd_sys_role_dept` VALUES (90, 65, 83);
INSERT INTO `wd_sys_role_dept` VALUES (91, 66, 88);
INSERT INTO `wd_sys_role_dept` VALUES (92, 67, 88);
INSERT INTO `wd_sys_role_dept` VALUES (93, 68, 83);
INSERT INTO `wd_sys_role_dept` VALUES (94, 69, 88);
INSERT INTO `wd_sys_role_dept` VALUES (95, 70, 83);
INSERT INTO `wd_sys_role_dept` VALUES (96, 71, 88);
INSERT INTO `wd_sys_role_dept` VALUES (97, 74, 88);
INSERT INTO `wd_sys_role_dept` VALUES (98, 79, 88);
INSERT INTO `wd_sys_role_dept` VALUES (99, 80, 83);
INSERT INTO `wd_sys_role_dept` VALUES (100, 81, 83);
INSERT INTO `wd_sys_role_dept` VALUES (101, 82, 88);
INSERT INTO `wd_sys_role_dept` VALUES (102, 83, 83);
INSERT INTO `wd_sys_role_dept` VALUES (103, 84, 83);
INSERT INTO `wd_sys_role_dept` VALUES (104, 85, 83);
INSERT INTO `wd_sys_role_dept` VALUES (105, 86, 88);
INSERT INTO `wd_sys_role_dept` VALUES (106, 87, 87);
INSERT INTO `wd_sys_role_dept` VALUES (107, 88, 86);
INSERT INTO `wd_sys_role_dept` VALUES (108, 89, 91);
INSERT INTO `wd_sys_role_dept` VALUES (109, 90, 84);
INSERT INTO `wd_sys_role_dept` VALUES (110, 91, 86);
INSERT INTO `wd_sys_role_dept` VALUES (111, 92, 88);
INSERT INTO `wd_sys_role_dept` VALUES (112, 93, 84);
INSERT INTO `wd_sys_role_dept` VALUES (113, 94, 92);
INSERT INTO `wd_sys_role_dept` VALUES (114, 95, 89);
INSERT INTO `wd_sys_role_dept` VALUES (115, 96, 88);
INSERT INTO `wd_sys_role_dept` VALUES (116, 97, 84);
INSERT INTO `wd_sys_role_dept` VALUES (117, 98, 84);
INSERT INTO `wd_sys_role_dept` VALUES (118, 99, 88);
INSERT INTO `wd_sys_role_dept` VALUES (119, 100, 89);
INSERT INTO `wd_sys_role_dept` VALUES (120, 101, 88);
INSERT INTO `wd_sys_role_dept` VALUES (121, 102, 89);
INSERT INTO `wd_sys_role_dept` VALUES (122, 103, 88);
INSERT INTO `wd_sys_role_dept` VALUES (123, 104, 88);
INSERT INTO `wd_sys_role_dept` VALUES (124, 105, 92);
INSERT INTO `wd_sys_role_dept` VALUES (125, 106, 92);
INSERT INTO `wd_sys_role_dept` VALUES (126, 107, 90);
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_role_menu`;
CREATE TABLE `wd_sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色菜单对应表';

-- ----------------------------
-- Records of wd_sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_role_menu` VALUES (49, 1);
INSERT INTO `wd_sys_role_menu` VALUES (49, 3);
INSERT INTO `wd_sys_role_menu` VALUES (49, 4);
INSERT INTO `wd_sys_role_menu` VALUES (49, 9);
INSERT INTO `wd_sys_role_menu` VALUES (49, 32);
INSERT INTO `wd_sys_role_menu` VALUES (49, 33);
INSERT INTO `wd_sys_role_menu` VALUES (49, 34);
INSERT INTO `wd_sys_role_menu` VALUES (49, 42);
INSERT INTO `wd_sys_role_menu` VALUES (49, 43);
INSERT INTO `wd_sys_role_menu` VALUES (49, 44);
INSERT INTO `wd_sys_role_menu` VALUES (49, 45);
INSERT INTO `wd_sys_role_menu` VALUES (49, 90);
INSERT INTO `wd_sys_role_menu` VALUES (49, 91);
INSERT INTO `wd_sys_role_menu` VALUES (49, 92);
INSERT INTO `wd_sys_role_menu` VALUES (49, 94);
INSERT INTO `wd_sys_role_menu` VALUES (49, 163);
INSERT INTO `wd_sys_role_menu` VALUES (49, 169);
INSERT INTO `wd_sys_role_menu` VALUES (49, 170);
INSERT INTO `wd_sys_role_menu` VALUES (49, 171);
INSERT INTO `wd_sys_role_menu` VALUES (49, 172);
INSERT INTO `wd_sys_role_menu` VALUES (49, 173);
INSERT INTO `wd_sys_role_menu` VALUES (51, 1);
INSERT INTO `wd_sys_role_menu` VALUES (51, 3);
INSERT INTO `wd_sys_role_menu` VALUES (51, 4);
INSERT INTO `wd_sys_role_menu` VALUES (51, 9);
INSERT INTO `wd_sys_role_menu` VALUES (51, 32);
INSERT INTO `wd_sys_role_menu` VALUES (51, 33);
INSERT INTO `wd_sys_role_menu` VALUES (51, 34);
INSERT INTO `wd_sys_role_menu` VALUES (51, 42);
INSERT INTO `wd_sys_role_menu` VALUES (51, 43);
INSERT INTO `wd_sys_role_menu` VALUES (51, 44);
INSERT INTO `wd_sys_role_menu` VALUES (51, 45);
INSERT INTO `wd_sys_role_menu` VALUES (51, 62);
INSERT INTO `wd_sys_role_menu` VALUES (51, 63);
INSERT INTO `wd_sys_role_menu` VALUES (51, 64);
INSERT INTO `wd_sys_role_menu` VALUES (51, 90);
INSERT INTO `wd_sys_role_menu` VALUES (51, 91);
INSERT INTO `wd_sys_role_menu` VALUES (51, 92);
INSERT INTO `wd_sys_role_menu` VALUES (51, 94);
INSERT INTO `wd_sys_role_menu` VALUES (51, 163);
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_social_details
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_social_details`;
CREATE TABLE `wd_sys_social_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主鍵',
  `type` varchar(16) NOT NULL COMMENT '类型',
  `remark` varchar(64) DEFAULT NULL COMMENT '描述',
  `app_id` varchar(64) NOT NULL COMMENT 'appid',
  `app_secret` varchar(64) NOT NULL COMMENT 'app_secret',
  `redirect_url` varchar(128) DEFAULT NULL COMMENT '回调地址',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` char(50) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统社交登录账号表';

-- ----------------------------
-- Table structure for wd_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_user`;
CREATE TABLE `wd_sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '随机盐',
  `phone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '简介',
  `avator` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0-正常，1-删除',
  `wx_openid` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信openid',
  `qq_openid` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'QQ openid',
  `scope` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '授权范围',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_idx1_username` (`username`),
  KEY `user_wx_openid` (`wx_openid`),
  KEY `user_qq_openid` (`qq_openid`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='系统用户表';

-- ----------------------------
-- Records of wd_sys_user
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_user` VALUES (178, '测试修改', '123456e', NULL, NULL, NULL, 11, '2018-12-13 14:39:34', '2018-12-13 17:56:53', '1', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (179, '测试修改r', '12se', NULL, NULL, NULL, 11, '2018-12-13 14:40:23', '2018-12-13 17:58:28', '1', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (187, '测试用户', '12333', NULL, '111111111', NULL, 87, '2018-12-14 15:38:41', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (188, '测试用户2', '123332', NULL, '1111112111', NULL, 87, '2018-12-14 15:40:33', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (189, '测试用户e', '123332', NULL, '1111112111', NULL, 87, '2018-12-14 15:40:39', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (190, '测试用户3', '123332', NULL, '1111112111', NULL, 88, '2018-12-14 15:40:46', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (191, 'test1', '123456', NULL, '15634213422', NULL, 88, '2019-01-12 11:32:01', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (193, 'test2', '123456', NULL, '15634213456', NULL, 88, '2019-01-12 11:36:08', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (194, 'test3', '123456', NULL, '15634211256', NULL, 88, '2019-01-12 11:36:18', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (195, 'test4', '123456', NULL, '15634216756', NULL, 88, '2019-01-12 11:36:33', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (196, 'test5', '123456', NULL, '15634216757', NULL, 88, '2019-01-12 11:36:50', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (197, 'test6', '123456', NULL, '15634216765', NULL, 87, '2019-01-12 11:36:59', '2019-01-14 17:35:12', NULL, NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (198, 'test78', '123456', NULL, '15634216455', NULL, 88, '2019-01-12 11:37:10', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (199, 'te3478', '123456', NULL, '15634216905', NULL, 88, '2019-01-12 11:37:22', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (200, 'te3474', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:38:09', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (201, 'te3412', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:38:22', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (202, '测试123', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:38:42', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (203, '测试456463', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:38:49', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (204, '测试63', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:38:56', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (205, '测试test', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:39:05', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (206, '测试test1', '123456', NULL, '15634216955', NULL, 88, '2019-01-12 11:39:18', NULL, '0', NULL, NULL, NULL);
INSERT INTO `wd_sys_user` VALUES (208, 'qwqw', 'qweqwe', NULL, NULL, NULL, 87, '2019-01-14 18:00:45', NULL, '0', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wd_sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `wd_sys_user_role`;
CREATE TABLE `wd_sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户角色对应表';

-- ----------------------------
-- Records of wd_sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `wd_sys_user_role` VALUES (12, 1);
INSERT INTO `wd_sys_user_role` VALUES (174, 0);
INSERT INTO `wd_sys_user_role` VALUES (177, 2);
INSERT INTO `wd_sys_user_role` VALUES (177, 49);
INSERT INTO `wd_sys_user_role` VALUES (178, 49);
INSERT INTO `wd_sys_user_role` VALUES (179, 49);
INSERT INTO `wd_sys_user_role` VALUES (180, 49);
INSERT INTO `wd_sys_user_role` VALUES (180, 57);
INSERT INTO `wd_sys_user_role` VALUES (181, 2);
INSERT INTO `wd_sys_user_role` VALUES (182, 2);
INSERT INTO `wd_sys_user_role` VALUES (183, 2);
INSERT INTO `wd_sys_user_role` VALUES (184, 2);
INSERT INTO `wd_sys_user_role` VALUES (185, 2);
INSERT INTO `wd_sys_user_role` VALUES (186, 2);
INSERT INTO `wd_sys_user_role` VALUES (187, 54);
INSERT INTO `wd_sys_user_role` VALUES (188, 54);
INSERT INTO `wd_sys_user_role` VALUES (189, 54);
INSERT INTO `wd_sys_user_role` VALUES (190, 54);
INSERT INTO `wd_sys_user_role` VALUES (191, 49);
INSERT INTO `wd_sys_user_role` VALUES (191, 108);
INSERT INTO `wd_sys_user_role` VALUES (192, 49);
INSERT INTO `wd_sys_user_role` VALUES (192, 51);
INSERT INTO `wd_sys_user_role` VALUES (193, 49);
INSERT INTO `wd_sys_user_role` VALUES (194, 49);
INSERT INTO `wd_sys_user_role` VALUES (195, 49);
INSERT INTO `wd_sys_user_role` VALUES (196, 49);
INSERT INTO `wd_sys_user_role` VALUES (197, 57);
INSERT INTO `wd_sys_user_role` VALUES (198, 54);
INSERT INTO `wd_sys_user_role` VALUES (199, 51);
INSERT INTO `wd_sys_user_role` VALUES (200, 51);
INSERT INTO `wd_sys_user_role` VALUES (201, 49);
INSERT INTO `wd_sys_user_role` VALUES (202, 49);
INSERT INTO `wd_sys_user_role` VALUES (203, 49);
INSERT INTO `wd_sys_user_role` VALUES (204, 49);
INSERT INTO `wd_sys_user_role` VALUES (205, 49);
INSERT INTO `wd_sys_user_role` VALUES (206, 49);
INSERT INTO `wd_sys_user_role` VALUES (208, 57);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
