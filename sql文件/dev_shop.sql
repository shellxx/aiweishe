/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : dev_shop

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 26/05/2020 22:55:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `addressID` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `uid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`addressID`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('93b76c79b89f4df7a509b41b8f63b16c', 'd5a03ac651be41f3aadd7d08ae130d3c', '', '', '');
INSERT INTO `address` VALUES ('bb3f58d6fe804175858786e179e1c96b', 'e515d077a2ff4d5ea9ccef9bfb9db52c', '11', 'zhangsan', '11');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `cus_id` int(10) NOT NULL,
  `cus_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cus_passw` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`cus_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `oitem_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account` int(10) DEFAULT NULL,
  `subTotal` decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (`oitem_id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `order_id`(`order_id`) USING BTREE,
  CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (11, '42ec4362c1f7456bb59ab765b323dd2d', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (12, '42ec4362c1f7456bb59ab765b323dd2d', '9', 1, 899.00);
INSERT INTO `order_item` VALUES (13, '2c1056e0be8341b8b454ba0dd5f67d45', '9', 1, 899.00);
INSERT INTO `order_item` VALUES (14, '0a5e9aa2923940e5bd45af69d7520f34', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (15, '0a5e9aa2923940e5bd45af69d7520f34', '9', 1, 899.00);
INSERT INTO `order_item` VALUES (16, 'f5b783264d2b48c3875612dc9ca2ba73', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (17, 'f5b783264d2b48c3875612dc9ca2ba73', '9', 1, 899.00);
INSERT INTO `order_item` VALUES (18, '79a0c82ac373484fafbaf45ce4950f81', '2', 1, 99.00);
INSERT INTO `order_item` VALUES (19, '1cdcd4bc0c874901b9ee0070f7b2603f', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (20, '1cdcd4bc0c874901b9ee0070f7b2603f', '9', 1, 899.00);
INSERT INTO `order_item` VALUES (21, '206c1aa002ae4c8999b21371a218ba6c', '8', 1, 229.00);
INSERT INTO `order_item` VALUES (22, '206c1aa002ae4c8999b21371a218ba6c', '9', 2, 899.00);
INSERT INTO `order_item` VALUES (23, '2c63bbf82bf44505b08850065dccd073', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (24, '4cfc0003a62b44978fdb11a1e851a4c2', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (25, '7d168e84d1a2438e956952a8b108ef69', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (26, '616e5fd052364d02aaa6a714a48c6a75', '9', 3, 899.00);
INSERT INTO `order_item` VALUES (27, '300ac45c22af43019daf6a9c4a88125d', '9', 1, 899.00);
INSERT INTO `order_item` VALUES (28, 'bb3f58d6fe804175858786e179e1c96b', '2', 2, 198.00);
INSERT INTO `order_item` VALUES (29, 'bb3f58d6fe804175858786e179e1c96b', '3', 1, 258.00);
INSERT INTO `order_item` VALUES (30, '206c682c83314297b88a07e336fd9fd1', '8', 1, 229.00);
INSERT INTO `order_item` VALUES (31, '2f31009a9c514d87bec8c2b4b28178bc', '1', 1, 179.00);
INSERT INTO `order_item` VALUES (32, '2f31009a9c514d87bec8c2b4b28178bc', '6', 1, 199.00);
INSERT INTO `order_item` VALUES (33, '93b76c79b89f4df7a509b41b8f63b16c', '3', 1, 258.00);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `uid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_total` decimal(10, 2) DEFAULT NULL,
  `order_atotal` decimal(10, 2) DEFAULT NULL,
  `commit_time` datetime(0) DEFAULT NULL,
  `finish_time` datetime(0) DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cus_id` int(10) DEFAULT NULL,
  `addressID` int(10) DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `cus_id`(`cus_id`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('0a5e9aa2923940e5bd45af69d7520f34', '6936fd0520184507876eb0c1418919f1', 1078.00, NULL, '2020-05-25 14:02:42', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('1cdcd4bc0c874901b9ee0070f7b2603f', '6936fd0520184507876eb0c1418919f1', 1078.00, NULL, '2020-05-25 14:23:07', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('206c1aa002ae4c8999b21371a218ba6c', '6936fd0520184507876eb0c1418919f1', 2027.00, NULL, '2020-05-25 14:23:46', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('206c682c83314297b88a07e336fd9fd1', 'd5a03ac651be41f3aadd7d08ae130d3c', 229.00, NULL, '2020-05-26 13:09:53', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('2c1056e0be8341b8b454ba0dd5f67d45', '6936fd0520184507876eb0c1418919f1', 899.00, NULL, '2020-05-25 14:00:39', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('2c63bbf82bf44505b08850065dccd073', '6936fd0520184507876eb0c1418919f1', 179.00, NULL, '2020-05-25 14:27:24', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('2f31009a9c514d87bec8c2b4b28178bc', 'd5a03ac651be41f3aadd7d08ae130d3c', 378.00, NULL, '2020-05-26 13:14:33', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('300ac45c22af43019daf6a9c4a88125d', '6936fd0520184507876eb0c1418919f1', 899.00, NULL, '2020-05-26 07:36:55', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('42ec4362c1f7456bb59ab765b323dd2d', '6936fd0520184507876eb0c1418919f1', 1078.00, NULL, '2020-05-25 13:58:25', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('4cfc0003a62b44978fdb11a1e851a4c2', '6936fd0520184507876eb0c1418919f1', 179.00, NULL, '2020-05-25 14:32:43', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('616e5fd052364d02aaa6a714a48c6a75', '6936fd0520184507876eb0c1418919f1', 2697.00, NULL, '2020-05-26 07:34:42', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('7472562242f0442bad6db89f1e53bf8b', '6936fd0520184507876eb0c1418919f1', 222.00, NULL, '2020-05-25 13:56:16', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('79a0c82ac373484fafbaf45ce4950f81', '6936fd0520184507876eb0c1418919f1', 99.00, NULL, '2020-05-25 14:12:25', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('7d168e84d1a2438e956952a8b108ef69', '6936fd0520184507876eb0c1418919f1', 179.00, NULL, '2020-05-25 14:35:39', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('93b76c79b89f4df7a509b41b8f63b16c', 'd5a03ac651be41f3aadd7d08ae130d3c', 258.00, NULL, '2020-05-26 13:15:59', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('bb3f58d6fe804175858786e179e1c96b', 'e515d077a2ff4d5ea9ccef9bfb9db52c', 456.00, NULL, '2020-05-26 07:56:46', NULL, '0', NULL, NULL);
INSERT INTO `orders` VALUES ('f5b783264d2b48c3875612dc9ca2ba73', '6936fd0520184507876eb0c1418919f1', 1078.00, NULL, '2020-05-25 14:11:10', NULL, '0', NULL, NULL);

-- ----------------------------
-- Table structure for pimg
-- ----------------------------
DROP TABLE IF EXISTS `pimg`;
CREATE TABLE `pimg`  (
  `pimg_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_t1` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_t2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_t3` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_t4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_recommed` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`pimg_id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `pimg_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pimg
-- ----------------------------
INSERT INTO `pimg` VALUES ('1', '1', 'resources/img/products/机械键盘-雷柏MT710--t01.jpg', 'resources/img/products/机械键盘-雷柏MT710--03.jpg', 'resources/img/products/机械键盘-雷柏MT710--04.jpg', 'resources/img/products/机械键盘-雷柏MT710--02.png', NULL, '雷柏MT710机械键盘标配了一套PC+ABS双色注塑透光键帽，区别于平时的ABS双色注塑键帽，触感明显粘滞，同时比较涩，但对于指尖的防滑，效果倒是出奇的好。据悉，这套键帽还具备更为耐磨、耐打油特性，使用寿命更长。', '雷柏MT710机械键盘预设单色白光，四挡亮度可调，只有常亮模式，充当简单的照明效果而已。键盘白色上盖缘故，灯光看起来会比较舒服，不刺眼。除此之外，键盘还支持全键无冲。');
INSERT INTO `pimg` VALUES ('10', '10', 'resources/img/products/鼠标垫-赛锐QcKHeavy-t01.jpg', 'resources/img/products/鼠标垫-赛锐QcKHeavy--01.jpg', 'resources/img/products/鼠标垫-赛锐QcKHeavy-02.jpg', 'resources/img/products/鼠标垫-赛锐QcKHeavy-03.jpg', NULL, 'QcK Prism Cloth本身无物理按键设计，灯效切换、自定义操作都必须通过SteelSeries Engine 3软件实现。采取双区RGB设计，灯带被划分成上下两部分，支持单独自定义，混合灯效。相比传统单区RGB灯带，色彩表现更丰富，效果自然更华丽。不过由于RGB软垫发光结构设计差异，其并不能实现与RGB硬垫一样的RGB流光效果。', 'QcK Prism Cloth M和QcK Prism Cloth XL均是柔性高密度编织纤维材料布垫，编织细密，阻尼小，属于顺滑型操控。鼠标在上面移动，各个方向阻力均衡，平顺性优秀，且兼各种不同材质脚贴使用。');
INSERT INTO `pimg` VALUES ('11', '11', 'resources/img/products/键盘-kemove-t01.jpg', 'resources/img/products/键盘-kemove-01.jpg', 'resources/img/products/键盘-kemove-02.jpg', 'resources/img/products/键盘-kemove-03.jpg', NULL, '键盘在顶部设有两个独立开关。滑块式操作，盲操友好，也不会出现误按情况。相比底座按键，也更为便捷。其中，具备WIN、MAC双系统支持。只不过，美中不足的是原厂并没额外附赠MAC键位的键帽。', '　键盘接口位于左上角，主流Type-C规格接口。其中，接口稍微凹进去一点，对非原配线材兼容性不太友好，倒是换来相对稳定的接线效果，不易出现脱落。另外，线材L型插头，利于走线。');
INSERT INTO `pimg` VALUES ('12', '12', 'resources/img/products/键盘-毛茸茸-t01.jpg', 'resources/img/products/键盘-毛茸茸-01.jpg', 'resources/img/products/键盘-毛茸茸-02.jpg', 'resources/img/products/键盘-毛茸茸-03.jpg', NULL, '白色盘身，热升华的卡通喷涂工艺，设计师将卡通形象发挥到了极致，将卡通形象融入其中。ESC、方向键、小键盘指示灯位置都进行了卡通形象的设计，整体暖萌的形象氛围营造的非常到位。', '键帽方面，PBT五面热升华的卡通键帽，成本比较高，耐磨度高于ABS键帽，对汗手特别友好，长期使用不会产生油腻感。键帽字符也经过精心设计，ESC、wasd、左右shift、win、backspace、enter、上下左右键，都进行了五面热升华卡通喷涂，将软萌的形象贯穿到各个地方。');
INSERT INTO `pimg` VALUES ('13', '13', 'resources/img/products/键盘-雷神kg5104-t01.jpg', 'resources/img/products/键盘-雷神kg5104-01.jpg', 'resources/img/products/键盘-雷神kg5104-02.jpg', 'resources/img/products/键盘-雷神kg5104-03.jpg', NULL, 'KG5104合金版的上壳采用枪灰色铝合金材质，整体触感冰凉，CNC冲压拉丝铝工艺显得质感强烈，看上去档次更高。按键部分，KG5104采用标准三段式104键配列，键帽为黑色。键盘整体尺寸为尺寸为444×151.1×44.6mm，重量约为980g', 'KG5104的按键采用悬浮式按键配置，这种设计对于灯光效果会呈现更好，还容易搭理清洁，但对于安置的稳定性要求较高。从实际工艺来看，KG5104的制造工艺还是不错的，按键没有摇晃感，键帽和轴体之间的契合度很高。');
INSERT INTO `pimg` VALUES ('2', '2', 'resources/img/products/键帽-zomo猫爪-t01.jpg', 'resources/img/products/键帽-zomo猫爪-02.jpg', 'resources/img/products/键帽-zomo猫爪-03.jpg', 'resources/img/products/键帽-zomo猫爪-01.jpg', 'resources/img/slider/键帽-zomo猫爪-recommed.png', '相比金属版，ZOMO「猫爪」ABS材质版本还多增加了一个「猫脸」轮廓独立收纳盒。当中，粉白款更是全透明外壳，并且带夜光效果，有点意思。其余配色则都是非透明壳，收纳盒可作为个性键帽展示盒使用。配色暂时没有金属版本丰富，目前只有粉白、粉黑、黑色、灰白以及英短配色。', '基于ZOMO「猫爪」铝合金材质键帽设计，底座给换上了传统ABS材质，但仍然具有金属版本同款硅胶软垫（肉垫）加持，Q弹手感依旧，同时价格大幅下探，能花更少的钱，凑齐各种配色「猫爪」，铺满方向键、F区。');
INSERT INTO `pimg` VALUES ('3', '3', 'resources/img/products/键帽-zomo海贼王-01.jpg', 'resources/img/products/键帽-zomo海贼王-04gif.gif', 'resources/img/products/键帽-zomo海贼王-06.jpg', 'resources/img/products/键帽-zomo海贼王-02.jpg', NULL, NULL, NULL);
INSERT INTO `pimg` VALUES ('4', '4', 'resources/img/products/鼠标-摩豹dn1-t01.jpg', 'resources/img/products/鼠标-摩豹dn1-02.jpg', 'resources/img/products/鼠标-摩豹dn1-03.jpg', 'resources/img/products/鼠标-摩豹dn1-04.jpg', 'resources/img/slider/鼠标-摩豹dn1-recommed.png', 'Darmoshark N1-羽游戏鼠标采用右手人体工学设计，机身尺寸约128mmx66mmx39mm。通过对上盖、底座、侧裙挖孔，净重降低至约65g，算是比较优秀的轻量化水平。区别于大多数类EC鼠型的右手人体工学打孔鼠标，Darmoshark N1-羽更为修长，腰身曲线有那么点Rival 300的感觉，但尾部并没那么宽大饱满。', 'Darmoshark N1-羽游戏鼠标挖孔非常狠，遍布全身，以达到一个比较优秀的轻量化水平。为此，保证壳子强度，也就没有再做薄壳结构。而该款鼠标模具做工实属不错，任意角度用力捏起来没有咯吱咯吱的异响。');
INSERT INTO `pimg` VALUES ('5', '5', 'resources/img/products/鼠标-黑爵AJ390-t01.jpg', 'resources/img/products/鼠标-黑爵AJ390-03.jpg', 'resources/img/products/鼠标-黑爵AJ390-01.jpg', 'resources/img/products/鼠标-黑爵AJ390-04.jpg', NULL, NULL, NULL);
INSERT INTO `pimg` VALUES ('6', '6', 'resources/img/products/鼠标-西伯利亚XT100-t01.jpg', 'resources/img/products/鼠标-西伯利亚XT100-01.jpg', 'resources/img/products/鼠标-西伯利亚XT100-03.jpg', 'resources/img/products/鼠标-西伯利亚XT100-t01.jpg', NULL, NULL, NULL);
INSERT INTO `pimg` VALUES ('7', '7', 'resources/img/products/鼠标-赛睿seisen10-t01.jpg', 'resources/img/products/鼠标-赛睿seisen10-02.jpg', 'resources/img/products/鼠标-赛睿seisen10-04.jpg', 'resources/img/products/鼠标-赛睿seisen10-01.jpg', 'resources/img/slider/鼠标-赛睿seisen10-recommed.png', NULL, NULL);
INSERT INTO `pimg` VALUES ('8', '8', 'resources/img/products/鼠标-罗技g304-t01.jpg', 'resources/img/products/鼠标-罗技g304-02.jpg', 'resources/img/products/鼠标-罗技g304-03.jpg', 'resources/img/products/鼠标-罗技g304-04.jpg', NULL, '延迟和连接不稳定一直是玩家对无线游戏鼠标和键盘的固有看法。罗技G304搭载了LIGHTSPEED™无线传输技术，采用点对点无线优化，大幅提升无线性能，实现真正的1毫秒报告率，不仅解决了延迟、稳定性和连接性的根本问题，更是实现了比众多有线游戏鼠标更快的速度，毫厘之间精锐操控夺取游戏胜利。', '罗技G两大核心无线科技提供出色的能效，只需一节 AA 电池就能让玩家畅玩约 250 小时，更换一次电池预计保持约 9 个月的出色性能表现（* 实际使用时间取决于具体使用方式）。罗技G304 配有电量指示灯，在剩余 15% 电量时即会提醒用户更换电池。无线与持久续航相结合，从此摆脱频繁更换电池的烦恼。');
INSERT INTO `pimg` VALUES ('9', '9', 'resources/img/products/耳机-rogStrixFusion-t01.jpg', 'resources/img/products/耳机-rogStrixFusion-01.jpg', 'resources/img/products/耳机-rogStrixFusion-02.jpg', 'resources/img/products/耳机-rogStrixFusion-02.jpg', 'resources/img/slider/耳机-rogStrixFusion-recommed.png', NULL, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `pname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `t_id` int(10) DEFAULT NULL,
  `old_price` decimal(10, 2) DEFAULT NULL,
  `new_price` decimal(10, 2) DEFAULT NULL,
  `pnumber` int(10) DEFAULT NULL,
  `pinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '商品描述',
  `pdate` date DEFAULT NULL COMMENT '上架日期',
  `psize` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '规格',
  `is_hot` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `pflag` int(10) UNSIGNED ZEROFILL DEFAULT 0000000000 COMMENT '是否下架  1下架 0没有',
  `brand` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `discount` decimal(3, 2) UNSIGNED ZEROFILL DEFAULT 0.00,
  `recommend` int(1) DEFAULT 0 COMMENT '是否是推荐，1为首页轮播推荐 ，2为轮播图下的两个推荐，0为不推荐',
  `recommendInfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `recomm_date3` date DEFAULT NULL,
  `sales` int(10) UNSIGNED ZEROFILL DEFAULT 0000000000 COMMENT '销量',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `type` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '雷柏MT710', 1002, 189.00, 179.00, 200, '简约窄边设计的机械键盘也能玩出不一样的颜值表现。雷柏MT办公系列新品，MT710机械键盘，通体亮白配色，加上圆滑的机身线条，简约中透露着一股小清新的气息。同时，键盘支持WIN、MAC OS双系统，素白的外观，觉得还是十分适合搭配苹果电脑使用，气质相符。区别于以往游戏类产品，雷柏MT710化繁为简，没有任何花里胡哨的功能和噱头。', '2020-02-12', '红轴白色', 0000000000, 0000000000, '雷柏', 0.00, 0, NULL, NULL, 0000000016);
INSERT INTO `product` VALUES ('10', '赛睿QcK Heavy鼠标垫', 1006, 89.00, 89.00, 200, 'QcK Prism Cloth继承了QcK Prism的Prism RGB照明灯效，同时采用柔性高密度编织纤维材料设计。相较QcK Prism硬质鼠标垫，QcK Prism Cloth不仅拥有更为亲民售价，还具备传统布垫一样的折叠收纳特性，便携更友好。', '2020-05-14', '黑色', 0000000001, 0000000000, '赛睿', 0.00, 0, NULL, NULL, 0000000003);
INSERT INTO `product` VALUES ('11', 'KEMOVE DK61无线机械键盘', 1002, 499.00, 458.00, 200, 'KEMOVE DK61小尺寸机械键盘正式登陆国内市场。一把键盘可以同时满足你对插拔换轴、RGB背光、PBT键帽、双层编程功能以及蓝牙双模的全部追求！', '2020-04-23', '白色红轴-白色茶轴-白色青轴', 0000000001, 0000000000, 'KEMOVE', 0.00, 0, NULL, NULL, 0000000008);
INSERT INTO `product` VALUES ('12', '黑爵毛绒绒机械键盘', 1002, 699.00, 699.00, 200, '　黑爵旗下第三款国人设计师联名作品「毛茸茸软绵绵」机械键盘发布。相比前两款主题（巧克力、蜻蜓点水），充满萌萌哒的画风，是否能够撩起你的少女心？键盘整体模具没有变化，经典窄边框造型，纯白上盖和底座。其中，上盖表面增加萌物图案元素，以及拥有相当丰富个性键。键帽PBT材质，热升华工艺印制，就连字母区也是有经过重新设计，融合了一些动物元素，非常可爱。', '2020-05-08', '青轴-茶轴-红轴', 0000000001, 0000000000, '黑爵', 0.00, 0, NULL, NULL, 0000000011);
INSERT INTO `product` VALUES ('13', '雷神KG5104机械键盘', 1002, 339.00, 339.00, 200, 'KG5104经典版采用黑色塑料壳体，合金版则是枪灰色铝合金上盖。材质的差异让两款键盘在质感和触感上都有一些差异，但在外形和功能方面，两者是一样的。棱角分明的外形设计，让KG5104看上去机械感十足，这是雷神一贯的风格，符合电竞的审美观。', '2020-05-13', '青轴-黑轴-红轴', 0000000001, 0000000000, '雷神', 0.00, 0, NULL, NULL, 0000000006);
INSERT INTO `product` VALUES ('2', '「猫爪」键帽', 1005, 99.00, 99.00, 200, '基于ZOMO「猫爪」铝合金材质键帽设计，底座给换上了传统ABS材质，但仍然具有金属版本同款硅胶软垫（肉垫）加持，Q弹手感依旧。', '2017-12-07', '粉红色', 0000000001, 0000000000, 'ZOMO PLUS', 0.00, 1, '价格更亲民的「猫爪」键帽现已登场。\r\n                        键帽猫掌形底座设计，ABS材质打造，虽然质感比不上金属版，但其整体观感基本与之相当。\r\n                        最重要的是肉垫部分材质完全相同，手感一致。这也就是「猫爪」键帽精髓所在。\r\n                        底座与肉垫部分结合采用了超声波粘合技术将三层复合材料组合而成，使得肉垫更为稳固。', NULL, 0000000007);
INSERT INTO `product` VALUES ('3', 'ZOMO海贼王可旋转键帽', 1005, 268.00, 258.00, 200, '作为ZOMO海贼王系列的第一款3D可动键帽，路飞&乔巴帽子键帽已经曝光了许久，最早透露的是造型，之后透光实物图刷爆了一波微博，近日又透露了旋转机构，在底座轴承的加持下可以保持长时间旋转，可谓是ZOMO新一代桌面解压神器。', '2020-05-13', '路飞帽子', 0000000000, 0000000000, 'ZOMO PLUS', 0.00, 0, NULL, NULL, 0000000003);
INSERT INTO `product` VALUES ('4', '摩豹Darmoshark N1轻量化鼠标', 1001, 499.00, 469.00, 200, '采用时下最为流行的镂空设计，鼠标超轻量化设计语言，重量仅为65g，追求极致手感的同时，绝佳的身材比例，必然会给FPS游戏玩家带来绝佳的舒适度。', '2020-02-13', '黑红', 0000000000, 0000000000, '摩豹', 0.00, 2, '65g 轻量鼠', NULL, 0000000001);
INSERT INTO `product` VALUES ('5', '黑爵AJ390游戏鼠标', 1001, 219.00, 199.00, 200, '采用轻量化设计，重量只有69克，采用对称式人体工学设计，可适应各种不同握持姿态，鼠标盖采用细腻的表面处理工艺，手感舒适。', '2019-12-05', '黑色-白色', 0000000000, 0000000000, '黑爵', 0.00, 0, NULL, NULL, 0000000001);
INSERT INTO `product` VALUES ('6', '西伯利亚XT100游戏鼠标', 1001, 199.00, 199.00, 200, '中端定位，搭载一颗PAW3327光学传感器，拥有原生6200DPI以及220IPS追踪速度。', '2020-02-13', '黑色', 0000000000, 0000000000, '西伯利亚', 0.00, 0, NULL, NULL, 0000000005);
INSERT INTO `product` VALUES ('7', '赛睿Sensei Ten游戏鼠标', 1001, 499.00, 439.00, 200, '赛睿Sensei Ten游戏鼠标直接保留了Sensei经典的外观设计，外壳亦都是类肤涂层，整体手感一脉相承。鼠标机身尺寸约126mmx68mmx39mm，重量92g，并没去迎合如今轻量化趋势做减重。如果是Sensei系列老用户，完全可以做到上手即用，还是那道熟悉的握感。', '2020-04-17', '黑色-白色', 0000000001, 0000000000, '赛睿', 0.85, 2, '十年经典！', NULL, 0000000002);
INSERT INTO `product` VALUES ('8', '罗技G304无线鼠标', 1001, 229.00, 229.00, 200, '罗技G304无线游戏鼠标同样能在吃鸡游戏下让一击爆头和快速拾取都变得轻而易举，HERO传感器带来极速反应和精确度的双重保证，有效提高游戏快感。反馈敏捷，化身玩家的吃鸡利器！', '2018-06-20', '黑色-白色', 0000000001, 0000000000, '罗技', 0.90, 3, NULL, '2020-05-31', 0000000005);
INSERT INTO `product` VALUES ('9', '聚变无线游戏耳机', 1003, 1099.00, 899.00, 200, 'ROG Strix Fusion Wireless 聚变电竞耳麦专为PC和PlayStation® 4 而打造，具备低延迟 2.4GHz 无线连接、长达15小时以上的电池续航力、50mm ASUS Essence 驱动器及触控功能。', '2019-07-26', '黑色', 0000000001, 0000000000, 'ROG 玩家国度', 0.00, 1, 'ROG STRIX FUSION WIRELESS是\r\n                        FUSION家族里面唯一一款采用2.4G无线方案的游戏耳机，凭借稳定、出色的无线连接，\r\n                        可以让你放心地使用无线模式进行游戏体验，真正抛开线材束缚。', NULL, 0000000010);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `t_id` int(10) NOT NULL,
  `t_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1001, '鼠标');
INSERT INTO `type` VALUES (1002, '键盘');
INSERT INTO `type` VALUES (1003, '耳机');
INSERT INTO `type` VALUES (1004, '音响');
INSERT INTO `type` VALUES (1005, '键帽');
INSERT INTO `type` VALUES (1006, '鼠标垫');
INSERT INTO `type` VALUES (1007, '其他配件');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `u_username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `u_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `u_email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `u_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `u_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `u_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6936fd0520184507876eb0c1418919f1', '222', '222', '123@qq.com', NULL, NULL, NULL);
INSERT INTO `user` VALUES ('d5a03ac651be41f3aadd7d08ae130d3c', '111', '111', '123@qq.com', NULL, NULL, NULL);
INSERT INTO `user` VALUES ('e515d077a2ff4d5ea9ccef9bfb9db52c', 'zhangsan', '123', '153937793@qq.com', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `wish_id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`wish_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES (28, '6936fd0520184507876eb0c1418919f1', '1');
INSERT INTO `wishlist` VALUES (29, '6936fd0520184507876eb0c1418919f1', '9');
INSERT INTO `wishlist` VALUES (30, '6936fd0520184507876eb0c1418919f1', '13');
INSERT INTO `wishlist` VALUES (31, 'e515d077a2ff4d5ea9ccef9bfb9db52c', '3');
INSERT INTO `wishlist` VALUES (32, 'e515d077a2ff4d5ea9ccef9bfb9db52c', '13');

SET FOREIGN_KEY_CHECKS = 1;
