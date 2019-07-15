-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-07-15 05:19:15
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shangcheng`
--
CREATE DATABASE IF NOT EXISTS `shangcheng` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shangcheng`;

-- --------------------------------------------------------

--
-- 表的结构 `sc_cart`
--

DROP TABLE IF EXISTS `sc_cart`;
CREATE TABLE `sc_cart` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_cart`
--

INSERT INTO `sc_cart` VALUES
(1, 'p1.jpg', 1, '100.00', 1),
(2, 'p2.jpg', 1, '101.00', 2),
(3, 'p3.jpg', 1, '10.00', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sc_index_carousel`
--

DROP TABLE IF EXISTS `sc_index_carousel`;
CREATE TABLE `sc_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_index_carousel`
--

INSERT INTO `sc_index_carousel` VALUES
(1, 'sc_index_carousel/index_carousel1.jpg', '轮播广告商品1', 'product_details.html?lid=28'),
(2, 'sc_index_carousel/index_carousel2.jpg', '轮播广告商品2', '127.0.0.1:3000'),
(3, 'sc_index_carousel/index_carousel3.jpg', '轮播广告商品3', '127.0.0.1:3000'),
(4, 'sc_index_carousel/index_carousel4.jpg', '轮播广告商品4', '127.0.0.1:3000'),
(5, 'sc_index_carousel/index_carousel5.jpg', '轮播广告商品5', '127.0.0.1:3000'),
(6, 'sc_index_carousel/index_carousel6.jpg', '轮播广告商品6', '127.0.0.1:3000'),
(7, 'sc_index_carousel/index_carousel7.jpg', '轮播广告商品7', '127.0.0.1:3000'),
(8, 'sc_index_carousel/index_carousel8.jpg', '轮播广告商品8', '127.0.0.1:3000'),
(9, 'sc_index_carousel/index_carousel9.jpg', '轮播广告商品9', '127.0.0.1:3000'),
(10, 'sc_index_carousel/index_carousel10.jpg', '轮播广告商品10', '127.0.0.1:3000'),
(11, 'sc_index_carousel/index_carousel11.jpg', '轮播广告商品11', '127.0.0.1:3000'),
(12, 'sc_index_carousel/index_carousel12.jpg', '轮播广告商品12', '127.0.0.1:3000');

-- --------------------------------------------------------

--
-- 表的结构 `sc_index_product`
--

DROP TABLE IF EXISTS `sc_index_product`;
CREATE TABLE `sc_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_index_product`
--

INSERT INTO `sc_index_product` VALUES
(1, '风信子', '风信子:是多年草本球根类植物，鳞茎卵形', 'sc_laptop_pic/fengxinzi/fengxinzi1.jpg', '488.00', 1, 1, 1),
(2, '紫罗兰', '紫罗兰是十字花科、紫罗兰属二年生或多年生草本', 'sc_laptop_pic/ziluolan/ziluolan1.jpg', '3488.00', 2, 2, 2),
(3, '茉莉花', '茉莉花，别名：茉莉，木犀科、素馨属直立或攀援灌木', 'sc_laptop_pic/molihua/molihua1.jpg', '5399.00', 3, 3, 3),
(4, '栀子花', '栀子花，又名栀子、黄栀子。属双子叶植物纲、茜草科、栀子属常绿灌木', 'sc_laptop_pic/zhizihua/zhizihua1.jpg', '4966.00', 4, 4, 4),
(5, '桔梗花', '桔梗花，属植物桔梗的开花，桔梗，别名为铃铛花、僧冠帽、苦根菜、梗草、包袱花、六角荷、白药', 'sc_laptop_pic/jiegenghua/jiegenghua1.jpg', '6299.00', 5, 5, 5),
(6, '康乃馨', '康乃馨，原名：香石竹，又名：狮头石竹、麝香石竹、大花石竹', 'sc_laptop_pic/kangnaixin/kangnaixin1.jpg', '5199.00', 6, 6, 6),
(7, '虎刺梅', '虎刺梅:别称铁海棠，是蔓生灌木植物。茎多分枝', 'sc_laptop_pic/hucimei/hucimei1.jpg', '5799.00', 0, 0, 7);

-- --------------------------------------------------------

--
-- 表的结构 `sc_laptop`
--

DROP TABLE IF EXISTS `sc_laptop`;
CREATE TABLE `sc_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `subtitle` varchar(256) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_laptop`
--

INSERT INTO `sc_laptop` VALUES
(1, 1, '风信子', '是多年草本生球根类植物，鳞茎球形或扁球形，有膜质外皮，外被皮膜呈紫蓝色或白色等，皮膜颜色与花色成正相关。未开花时形如大蒜。叶4-9枚，狭披针形，肉质，基生，肥厚，带状披针形，具浅纵沟，绿色有光。花茎肉质，花葶高15-45厘米，中空，端着生总状花序；小花10-20朵密生上部，多横向生长，少有下垂，漏斗形，花被筒形，上部四裂，花冠漏斗状，基部花筒较长，裂片5枚。向外侧下方反卷。根据其花色，大致分为蓝色、粉红色、白色、鹅黄、紫色、黄色、绯红色、红色等八个品系。原种为浅紫色，具芳香。蒴果', '488.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '风信子', 'Hyacinthus orientalis L.', '', '', '', '风信子习性喜阳、耐寒，适合生长在凉爽湿润的环境和疏松、肥沃的砂质土中，忌积水。 喜冬季温暖湿润、夏季凉爽稍干燥、阳光充足或半阴的环境。喜肥，宜肥沃、排水良好的沙壤土。地植\r\n、盆栽、水养均可。\r\n秋季生根，早春新芽出土，3月开花，5月下旬果熟，6月上旬地上部分枯萎而进入休眠。在休眠期进行花芽分化，分化适温25℃左右，分化过程1个月左右。花芽分化后至伸长生长之前要有二个月左右的低温阶段，气温不能超过13℃。\r\n风信子在生长过程中，鳞茎在2-6℃低温时根系生长最好。芽萌动适温为5-10℃，叶片生长适温为5-12℃，现蕾开花期以15-18℃最有利。鳞茎的贮藏温度为20-28℃，最适为25℃，对花芽分化最为理想。可耐受短时霜冻。', 150123456789, 0, 1),
(2, 2, '紫罗兰', '（学名：Matthiola incana (L.) R. Br.）是十字花科、紫罗兰属二年生或多年生草本。\r\n全株密被灰白色具柄的分枝柔毛。茎直立，多分枝，基部稍木质化。叶片长圆形至倒披针形或匙形。\r\n原产地中海沿岸。中国南部地区广泛栽培，欧洲名花之一。中国大城市中常有物种，可以栽于庭园或温室中，供观赏。此花与三色堇相似，易混淆。', '368.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '紫罗兰', 'Matthiola incana (L.) R. Br.', '', '', '', '喜冷凉的气候，忌燥热。喜通风良好的环境，冬季喜温和气候，但也能耐短暂的-5\r\n℃的低温。生长适温白天15-18℃，夜间10℃左右，对土壤要求不严，但在排水良好、中性偏碱的土壤中生长较好，忌酸性土壤。\r\n紫罗兰耐寒不耐阴，怕渍水，它适生于位置较高，在霉雨天气炎热而通风不良时则易受病虫危害，施肥不宜过多，否则对开花不利；光照和通风如果不充分，易患病虫害', 150223456789, 1922, 0),
(3, 3, '茉莉花', '，别名：茉莉，拉丁文名：Jasminum sambac (L.) Ait，木犀科、素馨属直立或攀援灌木，高达3米。小枝圆柱形或稍压扁状，有时中空，疏被柔毛。叶对生，单叶，叶片纸质，圆形、椭圆形、卵状椭圆形或倒卵形，两端圆或钝，基部有时微心形，在上面稍凹入或凹起，下面凸起，细脉在两面常明显，微凸起，除下面脉腋间常具簇毛外，其余无毛；裂片长圆形至近圆形，先端圆或钝。果球形，呈紫黑色。花期5-8月，果期7-9月。茉莉的花极香，为著名的花茶原料及重要的香精原料；花、叶药用治目赤肿痛，并有止咳化痰之效', '7488.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', 'Jasminum sambac (L.) Ait.', 'MoLiH', '', '', '', '茉莉性喜温暖湿润，在通风良好、半阴的环境生长最好。土壤以含有大量腐殖质的微\r\n茉莉花图册\r\n茉莉花图册(40张)\r\n 酸性砂质土壤为最适合。 [4] \r\n大多数品种畏寒、畏旱，不耐霜冻、湿涝和碱土。冬季气温低于3℃时，枝叶易遭受冻害，如持续时间长就会死亡。而落叶藤本类就是很耐寒耐旱的了', 150323456789, 733, 0),
(4, 4, '栀子花', '栀子花（学名：Gardenia jasminoides），又名栀子、黄栀子。属双子叶植物纲、茜草科、栀子属常绿灌木，枝叶繁茂，叶色四季常绿，花芳香，是重要的庭院观赏植物。单叶对生或三叶轮生，叶片倒卵形，革质，翠绿有光泽。浆果卵形，黄色或橙色。除观赏外，其花、果实、叶和根可入药，有泻火除烦，清热利尿，凉血解毒之功效。花可做茶之香料，果实可消炎祛热。是优良的芳香花卉。栀子花喜光照充足且通风良好的环境，但忌强光曝晒。宜用疏松肥沃、排水良好的酸性土壤种植。可用扦插、压条、分株或播种繁殖。', '788.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '通常说的栀子花指观赏用重瓣的变种大花栀子。革质呈长椭圆形，有光泽。花腋生，有短梗，肉质', 'Gardenia jasminoides Ellis', 'Gardenia jasminoides ', '其它', '栀子属', '栀子花 [1]  又名栀子，原产中国。喜温暖湿润和阳光充足环境，较耐寒，耐半阴，怕积水，要求疏松、肥沃和酸性的沙壤土。\r\n栀子花叶色四季常绿，花芳香素雅，绿叶白花，格外清丽可爱。它适用于阶前、池畔和路旁配置，也可有作篱和盆栽观赏，花还可做插花和佩带装饰。\r\n叶\r\n灌木，高0.3-3米；嫩枝常被短毛，枝圆柱形，灰色。叶对生，革质，稀为纸质，少为3枚轮生，叶形多样，通常为长圆状披针形、倒卵状长圆形、倒卵形或椭圆形，长3-25厘米，宽1.5-8厘米，顶端渐尖、骤然长渐尖或短尖而钝，基部楔形或短尖，两面常无毛，上面亮绿，下面色较暗；侧脉8-15对，在下面凸起，在上面平。叶柄长0.2-1厘米，托叶膜质。栀子\r\n花芳香，通常单朵生于枝顶，花梗长3-5毫米；萼管倒圆锥形或卵形，长8-25毫米，有纵棱，萼檐管形，膨大，顶部5-8裂，通常6裂，裂片披针形或线状披针形，长10-30毫米，宽1-4毫米，结果时增长，宿存；花冠白色或乳黄色，高脚碟状，喉部有疏柔毛，冠管狭圆筒形，长3-5厘米，宽4-6毫米，顶部5至8裂，通常6裂，裂片广展，倒卵形或倒卵状长圆形，长1.5-4厘米，宽0.6-2.8厘米。', 150323456789, 105, 0),
(5, 5, '桔梗花', '桔梗花，属植物桔梗的开花，桔梗，别名为铃铛花、僧冠帽、苦根菜、梗草、包袱花、六角荷、白药，拉丁文名为Platycodon gradiflorus。属桔梗科、桔梗属多年生草本植物。茎高20-120厘米，通常无毛，偶密被短毛，不分枝，极少上部分枝。李时珍在《本草纲目》中释其名曰：“此草之根结实而梗直，故名桔梗”。桔梗根药用，含桔梗皂甙，有止咳、祛痰、消炎（治肋膜炎）等效。', '588.00', 'Platycodon grandiflorus (Jacq.) A. DC.', NULL, 'Jiegeng', NULL, NULL, '桔梗科', '茎高20-120厘米，通常无毛，偶密被短毛，不分枝，极少上部分枝。叶全部轮生，\r\n桔梗花\r\n桔梗花(2张)\r\n 部分轮生至全部互生，无柄或有极短的柄，叶片卵形，卵状椭圆形至披针形，长2-7厘米，宽0.5-3.5厘米，基部宽楔形至圆钝，顶端急尖，上面无毛而绿色，下面常无毛而有白粉，有时脉上有短毛或瘤突状毛，边缘具细锯齿。花单朵顶生，或数朵集成假总状花序，或有花序分枝而集成圆锥花序；花萼筒部半圆球状或圆球状倒锥形，被白粉，裂片三角形，或狭三角形，有时齿状；花冠大，长1.5-4.0厘米，蓝色或紫色。蒴果球状，或球状倒圆锥形，或倒卵状，长1-2.5厘米，直径约1厘米。花期7-9月。\r\n桔梗为深根性植物，多年生草本宿根花卉，多野生于山坡草丛之中，其根肥大肉质，呈圆柱形，不分枝或少分枝。当年主根可长达15厘米以上。茎直立，高0.5～1米，全株有白色乳汁，通常不分枝或上部稍分枝。叶对生或轮生，叶片卵状披针形，边缘有不整齐的锐锯齿。花期较晚，7～9月在茎顶端生1朵或数朵蓝色或蓝紫色的花，现蕾时，膨胀呈气球形。花冠钟形，先端五裂，现已开发作切花，花药并用，很有发展前景。 用作切花栽培的，应深翻土壤，施足基肥，开花前施追肥2～3次，促使花茎高生长 和花蕾形成。切花剪下后，保护好基部余下的茎叶，并施磷、钾肥1次，以利地下根的生长。秋后可采集供药用或留作翌年萌发新株。少有病虫害，较易管理。\r\n桔梗花\r\n桔梗花\r\n桔梗高40～80厘米，叶3～5枚，互生、轮生或对生；花大单一，顶生或数花成疏 总状花序；萼片5，花冠钟形5裂，雄蕊5，子房5室，柱头5裂；蒴果卵圆状球形。根肉质，粗壮，淡黄色。茎直立，具乳汁。根肥大多肉，呈人参形，皮淡黄白色。叶互生或3枚轮生。花常单生，偶尔数朵聚生茎顶；花冠宽钟状，稍倾斜，通常蓝色，也有白色和浅雪青色、淡粉色，花期6～9月。园林中多用于布置花坛、宿根花境，点缀岩石园，有时也用作切花或盆栽；根可入药。有重瓣品种，花深蓝色。', NULL, NULL, 1),
(6, 6, '康乃馨', '原名：香石竹，拉丁文名：Dianthus caryophyllus.又名：狮头石竹、麝香石竹、大花石竹，', '368.00', 'Dianthus caryophyllus', '狮头石竹、麝香石竹、大花石竹，', 'KangNX', NULL, NULL, NULL, '多年生草本，高40~70厘米，全株无毛，粉绿色。茎丛生，直立，基部木质化，上部稀疏\r\n康乃馨\r\n康乃馨(10张)\r\n 分枝。叶片线状披针形，长4~14厘米，宽2~4毫米，顶端长渐尖，基部稍成短鞘，中脉明显，上面下凹，下面稍凸起。花常单生枝端，有时2或3朵，有香气，粉红、紫红或白色；花梗短于花萼；苞片4（~6），宽卵形，顶端短凸尖，长达花萼1/4；花萼圆筒形，长2.5~3厘米，萼齿披针形，边缘膜质；瓣片倒卵形，顶缘具不整齐齿；雄蕊长达喉部；花柱伸出花外。蒴果卵球形，稍短于宿存萼。花期5~8月，果期8~9月', NULL, NULL, NULL),
(7, 7, '虎刺梅', '虎刺梅（学名：Euphorbia milii Ch. des Moulins）：别称铁海棠，是蔓生灌木植物。茎多分枝，长60-100厘米，直径5-10毫米，具纵棱，密生硬而尖的锥状刺，刺长1-1.5厘米，直径0.5-1.0 毫米，常呈3-5列排列于棱脊上，呈旋转。叶互生，通常集中于嫩枝上，倒卵形或长圆状匙形，全缘。花序2或8个组成二歧状复花序，生于枝上部叶腋；柄基部具1枚膜质苞片，苞叶2枚，肾圆形，总苞钟状，边缘5裂，黄红色。雄花数枚，雌花1枚，常包于总苞内。蒴果三棱状卵形', '424.00', 'Euphorbia milii  Ch. des Moulins', NULL, 'Ch. des Moulins, 1826', NULL, NULL, NULL, '虎刺梅是蔓生灌木植物。茎多分枝，长60-100厘米，直径5-10毫米，具纵棱，密生硬而尖的锥状刺，刺长1-1.5 (2.0)厘米，直径0.5-1.0 毫米，常呈3-5列排列于棱脊上，呈旋转。 [2] \r\n叶互生，通常集中于嫩枝上，倒卵形或长圆状匙形，长1.5-5.0 厘米，宽0.8-1.8厘米，先端圆，具小尖头，基部渐狭，全缘；无柄或近无柄；托叶钻形，长3-4毫米，极细，早落。 [2] \r\n花序2. 4或8个组成二歧状复花序，生于枝上部叶腋；复序具柄，长4-7厘米；每个花序基部具6-10毫米长的柄，柄基部具1枚膜质苞片，长1-3毫米，宽1-2毫米，上部近平截，边缘具微小的红色尖头；苞叶2枚，肾圆形，长8-10毫米，宽12-14毫米，先端圆且具小尖头，其部渐狭，无柄，上面鲜红色，\r\n虎刺梅\r\n虎刺梅(5张)\r\n 下面淡红色，紧贴花序；总苞钟状，高3-4毫米，直径3.5-4.0 毫米，边缘5裂，裂片琴形，上部具流苏状长毛，且内弯；腺体5枚，肾圆形，长约1毫米，宽约2毫米，黄红色。雄花数枚；苞片丝状，先端具柔毛；雌花1枚，常不伸出总苞外；子房光滑无毛，常包于总苞内；花柱3，中部以下合生；柱头2裂。 [2] \r\n蒴果三棱状卵形，长约3. 5毫米，直径约4毫米，平滑无毛，成熟时分裂为3个分果爿。种子卵柱状，长约2.5毫米，直径约2毫米，灰褐色，具微小的疣点；无种阜。花果期全年', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sc_laptop_family`
--

DROP TABLE IF EXISTS `sc_laptop_family`;
CREATE TABLE `sc_laptop_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_laptop_family`
--

INSERT INTO `sc_laptop_family` VALUES
(1, '风信子'),
(2, '紫罗兰'),
(3, '茉莉花'),
(4, '栀子花'),
(5, '桔梗花'),
(6, '康乃馨'),
(7, '虎刺梅'),
(8, '梅花'),
(9, '曼陀罗'),
(10, '白莲');

-- --------------------------------------------------------

--
-- 表的结构 `sc_laptop_pic`
--

DROP TABLE IF EXISTS `sc_laptop_pic`;
CREATE TABLE `sc_laptop_pic` (
  `pid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_laptop_pic`
--

INSERT INTO `sc_laptop_pic` VALUES
(1, 1, 'sc_laptop_pic/fengxinzi/fengxinzi1.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi1.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi1.jpg'),
(2, 1, 'sc_laptop_pic/fengxinzi/fengxinzi2.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi2.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi2.jpg'),
(3, 1, 'sc_laptop_pic/fengxinzi/fengxinzi3.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi3.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi3.jpg'),
(4, 2, 'sc_laptop_pic/ziluolan/ziluolan1.jpg', 'sc_laptop_pic/ziluolan/ziluolan1.jpg', 'sc_laptop_pic/ziluolan/ziluolan1.jpg'),
(5, 2, 'sc_laptop_pic/ziluolan/ziluolan2.jpg', 'sc_laptop_pic/ziluolan/ziluolan2.jpg', 'sc_laptop_pic/ziluolan/ziluolan2.jpg'),
(6, 2, 'sc_laptop_pic/ziluolan/ziluolan3.jpg', 'sc_laptop_pic/ziluolan/ziluolan3.jpg', 'sc_laptop_pic/ziluolan/ziluolan3.jpg'),
(7, 3, 'sc_laptop_pic/molihua/molihua1.jpg', 'sc_laptop_pic/molihua/molihua1.jpg', 'sc_laptop_pic/molihua/molihua1.jpg'),
(8, 3, 'sc_laptop_pic/molihua/molihua2.jpg', 'sc_laptop_pic/molihua/molihua2.jpg', 'sc_laptop_pic/molihua/molihua2.jpg'),
(9, 3, 'sc_laptop_pic/molihua/molihua3.jpg', 'sc_laptop_pic/molihua/molihua3.jpg', 'sc_laptop_pic/molihua/molihua3.jpg'),
(10, 4, 'sc_laptop_pic/zhizihua/zhizihua1.jpg', 'sc_laptop_pic/zhizihua/zhizihua1.jpg', 'sc_laptop_pic/zhizihua/zhizihua1.jpg'),
(11, 4, 'sc_laptop_pic/zhizihua/zhizihua2.jpg', 'sc_laptop_pic/zhizihua/zhizihua2.jpg', 'sc_laptop_pic/zhizihua/zhizihua2.jpg'),
(12, 4, 'sc_laptop_pic/zhizihua/zhizihua3.jpg', 'sc_laptop_pic/zhizihua/zhizihua3.jpg', 'sc_laptop_pic/zhizihua/zhizihua3.jpg'),
(13, 5, 'sc_laptop_pic/jiegenghua/jiegenghua1.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua1.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua1.jpg'),
(14, 5, 'sc_laptop_pic/jiegenghua/jiegenghua2.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua2.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua2.jpg'),
(15, 5, 'sc_laptop_pic/jiegenghua/jiegenghua3.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua3.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua3.jpg'),
(16, 5, 'sc_laptop_pic/jiegenghua/jiegenghua4.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua4.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua4.jpg'),
(17, 5, 'sc_laptop_pic/jiegenghua/jiegenghua5.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua5.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua5.jpg'),
(18, 5, 'sc_laptop_pic/jiegenghua/jiegenghua6.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua6.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua6.jpg'),
(19, 5, 'sc_laptop_pic/jiegenghua/jiegenghua7.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua7.jpg', 'sc_laptop_pic/jiegenghua/jiegenghua7.jpg'),
(20, 6, 'sc_laptop_pic/kangnaixin/kangnaixin1.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin1.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin1.jpg'),
(21, 6, 'sc_laptop_pic/kangnaixin/kangnaixin2.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin2.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin2.jpg'),
(22, 6, 'sc_laptop_pic/kangnaixin/kangnaixin3.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin3.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin3.jpg'),
(23, 6, 'sc_laptop_pic/kangnaixin/kangnaixin4.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin4.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin4.jpg'),
(24, 6, 'sc_laptop_pic/kangnaixin/kangnaixin5.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin5.jpg', 'sc_laptop_pic/kangnaixin/kangnaixin5.jpg'),
(25, 1, 'sc_laptop_pic/fengxinzi/fengxinzi4.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi4.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi4.jpg'),
(26, 1, 'sc_laptop_pic/fengxinzi/fengxinzi5.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi5.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi5.jpg'),
(27, 1, 'sc_laptop_pic/fengxinzi/fengxinzi6.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi6.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi6.jpg'),
(28, 1, 'sc_laptop_pic/fengxinzi/fengxinzi7.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi7.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi7.jpg'),
(29, 1, 'sc_laptop_pic/fengxinzi/fengxinzi8.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi8.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi8.jpg'),
(30, 1, 'sc_laptop_pic/fengxinzi/fengxinzi9.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi9.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi9.jpg'),
(31, 1, 'sc_laptop_pic/fengxinzi/fengxinzi10.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi10.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi10.jpg'),
(32, 7, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(33, 1, 'sc_laptop_pic/fengxinzi/fengxinzi11.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi11.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi11.jpg'),
(34, 8, 'img/product/sm/57e3b072N661cd00d.jpg', 'img/product/md/57e3b072N661cd00d.jpg', 'img/product/lg/57e3b072N661cd00d.jpg'),
(35, 8, 'img/product/sm/57e1ff09Nf610fea3.jpg', 'img/product/md/57e1ff09Nf610fea3.jpg', 'img/product/lg/57e1ff09Nf610fea3.jpg'),
(36, 8, 'img/product/sm/57e1ff17N286390a9.jpg', 'img/product/md/57e1ff17N286390a9.jpg', 'img/product/lg/57e1ff17N286390a9.jpg'),
(37, 8, 'img/product/sm/57e1ff2fN8a36d0fe.jpg', 'img/product/md/57e1ff2fN8a36d0fe.jpg', 'img/product/lg/57e1ff2fN8a36d0fe.jpg'),
(38, 8, 'img/product/sm/57e52dffNa4d8ce2c.jpg', 'img/product/md/57e52dffNa4d8ce2c.jpg', 'img/product/lg/57e52dffNa4d8ce2c.jpg'),
(39, 8, 'img/product/sm/57e52e03N4ec367dd.jpg', 'img/product/md/57e52e03N4ec367dd.jpg', 'img/product/lg/57e52e03N4ec367dd.jpg'),
(40, 8, 'img/product/sm/57e52e06N116974f7.jpg', 'img/product/md/57e52e06N116974f7.jpg', 'img/product/lg/57e52e06N116974f7.jpg'),
(41, 9, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(42, 9, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(43, 9, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(44, 9, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(45, 9, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(46, 9, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(47, 9, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(48, 9, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(49, 10, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(50, 10, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(51, 10, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(52, 10, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(53, 10, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(54, 10, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(55, 10, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(56, 10, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(57, 11, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(58, 11, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(59, 11, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(60, 11, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(61, 11, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(62, 11, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(63, 11, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(64, 11, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(65, 12, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(66, 12, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(67, 12, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(68, 12, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(69, 12, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(70, 12, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(71, 12, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(72, 12, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(73, 13, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(74, 13, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(75, 13, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(76, 13, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(77, 13, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(78, 13, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(79, 14, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(80, 14, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(81, 14, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(82, 14, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(83, 14, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(84, 14, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(85, 15, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(86, 15, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(87, 15, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(88, 15, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(89, 15, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(90, 15, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(91, 16, 'img/product/sm/590a98f9N8039f132.jpg', 'img/product/md/590a98f9N8039f132.jpg', 'img/product/lg/590a98f9N8039f132.jpg'),
(92, 16, 'img/product/sm/58f46de7N0dafbae3.jpg', 'img/product/md/58f46de7N0dafbae3.jpg', 'img/product/lg/58f46de7N0dafbae3.jpg'),
(93, 16, 'img/product/sm/58e5c226N4836a223.jpg', 'img/product/md/58e5c226N4836a223.jpg', 'img/product/lg/58e5c226N4836a223.jpg'),
(94, 16, 'img/product/sm/58dc76d5N8a0947a3.jpg', 'img/product/md/58dc76d5N8a0947a3.jpg', 'img/product/lg/58dc76d5N8a0947a3.jpg'),
(95, 16, 'img/product/sm/58fd9c54Nec723d68.jpg', 'img/product/md/58fd9c54Nec723d68.jpg', 'img/product/lg/58fd9c54Nec723d68.jpg'),
(96, 16, 'img/product/sm/58bfc2afNd44b4135.jpg', 'img/product/md/58bfc2afNd44b4135.jpg', 'img/product/lg/58bfc2afNd44b4135.jpg'),
(97, 17, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(98, 17, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(99, 17, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(100, 17, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(101, 17, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(102, 17, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(103, 17, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(104, 18, 'img/product/sm/587f476aNcfbf7869.jpg', 'img/product/md/587f476aNcfbf7869.jpg', 'img/product/lg/587f476aNcfbf7869.jpg'),
(105, 18, 'img/product/sm/57871083Nefe2d3d6.jpg', 'img/product/md/57871083Nefe2d3d6.jpg', 'img/product/lg/57871083Nefe2d3d6.jpg'),
(106, 18, 'img/product/sm/57871086N86c8f0ab.jpg', 'img/product/md/57871086N86c8f0ab.jpg', 'img/product/lg/57871086N86c8f0ab.jpg'),
(107, 18, 'img/product/sm/5787107bN73d05ad5.jpg', 'img/product/md/5787107bN73d05ad5.jpg', 'img/product/lg/5787107bN73d05ad5.jpg'),
(108, 18, 'img/product/sm/5787109cNaf26e3b0.jpg', 'img/product/md/5787109cNaf26e3b0.jpg', 'img/product/lg/5787109cNaf26e3b0.jpg'),
(109, 18, 'img/product/sm/578710a0N07795fe5.jpg', 'img/product/md/578710a0N07795fe5.jpg', 'img/product/lg/578710a0N07795fe5.jpg'),
(110, 18, 'img/product/sm/578710a3Nc498e3ea.jpg', 'img/product/md/578710a3Nc498e3ea.jpg', 'img/product/lg/578710a3Nc498e3ea.jpg'),
(111, 19, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(112, 19, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(113, 19, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(114, 19, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(115, 19, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(116, 19, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(117, 19, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(118, 20, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(119, 20, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(120, 20, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(121, 20, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(122, 20, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(123, 20, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(124, 20, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(125, 21, 'img/product/sm/57bbc38eN9def8042.jpg', 'img/product/md/57bbc38eN9def8042.jpg', 'img/product/lg/57bbc38eN9def8042.jpg'),
(126, 21, 'img/product/sm/57ba6a27Nbb8d2dcf.jpg', 'img/product/md/57ba6a27Nbb8d2dcf.jpg', 'img/product/lg/57ba6a27Nbb8d2dcf.jpg'),
(127, 21, 'img/product/sm/57ba6a38N4f4670bd.jpg', 'img/product/md/57ba6a38N4f4670bd.jpg', 'img/product/lg/57ba6a38N4f4670bd.jpg'),
(128, 21, 'img/product/sm/57ba6a3dN54779e6a.jpg', 'img/product/md/57ba6a3dN54779e6a.jpg', 'img/product/lg/57ba6a3dN54779e6a.jpg'),
(129, 21, 'img/product/sm/57ba6a47N19af9c97.jpg', 'img/product/md/57ba6a47N19af9c97.jpg', 'img/product/lg/57ba6a47N19af9c97.jpg'),
(130, 21, 'img/product/sm/57ba6a4cNb83e292a.jpg', 'img/product/md/57ba6a4cNb83e292a.jpg', 'img/product/lg/57ba6a4cNb83e292a.jpg'),
(131, 21, 'img/product/sm/57ba6a56N1e3e3d63.jpg', 'img/product/md/57ba6a56N1e3e3d63.jpg', 'img/product/lg/57ba6a56N1e3e3d63.jpg'),
(132, 22, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(133, 22, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(134, 22, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(135, 22, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(136, 22, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(137, 22, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(138, 22, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(139, 23, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(140, 23, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(141, 23, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(142, 23, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(143, 23, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(144, 23, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(145, 23, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(146, 24, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(147, 24, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(148, 24, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(149, 24, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(150, 24, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(151, 24, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(152, 24, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(153, 25, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(154, 25, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(155, 25, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(156, 25, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(157, 25, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(158, 25, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(159, 25, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(160, 26, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(161, 26, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(162, 26, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(163, 26, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(164, 26, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(165, 26, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(166, 26, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(167, 27, 'img/product/sm/5913f8ffN49fa143c.jpg', 'img/product/md/5913f8ffN49fa143c.jpg', 'img/product/lg/5913f8ffN49fa143c.jpg'),
(168, 27, 'img/product/sm/5913f903Nbffaa4fd.jpg', 'img/product/md/5913f903Nbffaa4fd.jpg', 'img/product/lg/5913f903Nbffaa4fd.jpg'),
(169, 27, 'img/product/sm/5913f907Ncbc65469.jpg', 'img/product/md/5913f907Ncbc65469.jpg', 'img/product/lg/5913f907Ncbc65469.jpg'),
(170, 27, 'img/product/sm/5913f90bN1b563f42.jpg', 'img/product/md/5913f90bN1b563f42.jpg', 'img/product/lg/5913f90bN1b563f42.jpg'),
(171, 27, 'img/product/sm/5913f90fN99370675.jpg', 'img/product/md/5913f90fN99370675.jpg', 'img/product/lg/5913f90fN99370675.jpg'),
(172, 27, 'img/product/sm/5913f93bNe4d2b3e5.jpg', 'img/product/md/5913f93bNe4d2b3e5.jpg', 'img/product/lg/5913f93bNe4d2b3e5.jpg'),
(173, 27, 'img/product/sm/5913f93fNfd79b4fc.jpg', 'img/product/md/5913f93fNfd79b4fc.jpg', 'img/product/lg/5913f93fNfd79b4fc.jpg'),
(174, 28, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(175, 28, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(176, 28, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(177, 28, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(178, 28, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(179, 28, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(180, 28, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(181, 28, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(182, 29, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(183, 29, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(184, 29, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(185, 29, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(186, 29, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(187, 29, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(188, 29, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(189, 29, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(190, 30, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(191, 30, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(192, 30, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(193, 30, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(194, 30, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(195, 30, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(196, 30, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(197, 30, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(198, 31, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(199, 31, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(200, 31, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(201, 31, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(202, 31, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(203, 31, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(204, 31, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(205, 31, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(206, 32, 'img/product/sm/584b5678Nbc9f1e70.jpg', 'img/product/md/584b5678Nbc9f1e70.jpg', 'img/product/lg/584b5678Nbc9f1e70.jpg'),
(207, 32, 'img/product/sm/584b567dNd9c58341.jpg', 'img/product/md/584b567dNd9c58341.jpg', 'img/product/lg/584b567dNd9c58341.jpg'),
(208, 32, 'img/product/sm/5819a0ebNefd901bc.jpg', 'img/product/md/5819a0ebNefd901bc.jpg', 'img/product/lg/5819a0ebNefd901bc.jpg'),
(209, 32, 'img/product/sm/5819a106Necf0abb8.jpg', 'img/product/md/5819a106Necf0abb8.jpg', 'img/product/lg/5819a106Necf0abb8.jpg'),
(210, 32, 'img/product/sm/5819a10bN2ea5c8e0.jpg', 'img/product/md/5819a10bN2ea5c8e0.jpg', 'img/product/lg/5819a10bN2ea5c8e0.jpg'),
(211, 32, 'img/product/sm/5819a10fNd0f96a03.jpg', 'img/product/md/5819a10fNd0f96a03.jpg', 'img/product/lg/5819a10fNd0f96a03.jpg'),
(212, 32, 'img/product/sm/5819a114Ne0cd75db.jpg', 'img/product/md/5819a114Ne0cd75db.jpg', 'img/product/lg/5819a114Ne0cd75db.jpg'),
(213, 32, 'img/product/sm/5819a133N03021b26.jpg', 'img/product/md/5819a133N03021b26.jpg', 'img/product/lg/5819a133N03021b26.jpg'),
(214, 33, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(215, 33, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(216, 33, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(217, 33, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(218, 33, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(219, 33, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(220, 33, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(221, 34, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(222, 34, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(223, 34, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(224, 34, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(225, 34, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(226, 34, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(227, 34, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(228, 35, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(229, 35, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(230, 35, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(231, 35, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(232, 35, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(233, 35, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(234, 35, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(235, 36, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(236, 36, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(237, 36, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(238, 36, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(239, 36, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(240, 36, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(241, 36, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(242, 37, 'img/product/sm/58985861N615a3581.jpg', 'img/product/md/58985861N615a3581.jpg', 'img/product/lg/58985861N615a3581.jpg'),
(243, 37, 'img/product/sm/58985867Nf8909d49.jpg', 'img/product/md/58985867Nf8909d49.jpg', 'img/product/lg/58985867Nf8909d49.jpg'),
(244, 37, 'img/product/sm/5898586cNe235284b.jpg', 'img/product/md/5898586cNe235284b.jpg', 'img/product/lg/5898586cNe235284b.jpg'),
(245, 37, 'img/product/sm/58985881N0a78dea2.jpg', 'img/product/md/58985881N0a78dea2.jpg', 'img/product/lg/58985881N0a78dea2.jpg'),
(246, 37, 'img/product/sm/58985883Nd4aec745.jpg', 'img/product/md/58985883Nd4aec745.jpg', 'img/product/lg/58985883Nd4aec745.jpg'),
(247, 37, 'img/product/sm/5836b979N85c3852b.jpg', 'img/product/md/5836b979N85c3852b.jpg', 'img/product/lg/5836b979N85c3852b.jpg'),
(248, 37, 'img/product/sm/5836b981Nd60fd02a.jpg', 'img/product/md/5836b981Nd60fd02a.jpg', 'img/product/lg/5836b981Nd60fd02a.jpg'),
(249, 38, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(250, 38, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(251, 38, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(252, 38, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(253, 38, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(254, 38, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(255, 38, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(256, 38, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(257, 39, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(258, 39, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(259, 39, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(260, 39, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(261, 39, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(262, 39, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(263, 39, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(264, 39, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(265, 40, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(266, 40, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(267, 40, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(268, 40, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(269, 40, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(270, 40, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(271, 40, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(272, 40, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(273, 41, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(274, 41, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(275, 41, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(276, 41, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(277, 41, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(278, 41, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(279, 41, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(280, 41, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(281, 42, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(282, 42, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(283, 42, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(284, 42, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(285, 42, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(286, 42, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(287, 42, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(288, 42, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(289, 43, 'img/product/sm/58a2c667Ne2b5cb73.jpg', 'img/product/md/58a2c667Ne2b5cb73.jpg', 'img/product/lg/58a2c667Ne2b5cb73.jpg'),
(290, 43, 'img/product/sm/58a2c668N800be261.jpg', 'img/product/md/58a2c668N800be261.jpg', 'img/product/lg/58a2c668N800be261.jpg'),
(291, 43, 'img/product/sm/58a2c668N0159a26f.jpg', 'img/product/md/58a2c668N0159a26f.jpg', 'img/product/lg/58a2c668N0159a26f.jpg'),
(292, 43, 'img/product/sm/58a2c669Nf884ac31.jpg', 'img/product/md/58a2c669Nf884ac31.jpg', 'img/product/lg/58a2c669Nf884ac31.jpg'),
(293, 43, 'img/product/sm/58a2c668N7293a0d1.jpg', 'img/product/md/58a2c668N7293a0d1.jpg', 'img/product/lg/58a2c668N7293a0d1.jpg'),
(294, 43, 'img/product/sm/58a2c669N4f92f8cb.jpg', 'img/product/md/58a2c669N4f92f8cb.jpg', 'img/product/lg/58a2c669N4f92f8cb.jpg'),
(295, 43, 'img/product/sm/58a2c668N0be41fb0.jpg', 'img/product/md/58a2c668N0be41fb0.jpg', 'img/product/lg/58a2c668N0be41fb0.jpg'),
(296, 43, 'img/product/sm/58a2c66aNcd10ee32.jpg', 'img/product/md/58a2c66aNcd10ee32.jpg', 'img/product/lg/58a2c66aNcd10ee32.jpg'),
(297, 1, 'sc_laptop_pic/fengxinzi/fengxinzi5.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi5.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi5.jpg'),
(298, 6, 'sc_laptop_pic/fengxinzi/fengxinzi6.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi6.jpg', 'sc_laptop_pic/fengxinzi/fengxinzi6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `sc_order`
--

DROP TABLE IF EXISTS `sc_order`;
CREATE TABLE `sc_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sc_order_detail`
--

DROP TABLE IF EXISTS `sc_order_detail`;
CREATE TABLE `sc_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sc_receiver_address`
--

DROP TABLE IF EXISTS `sc_receiver_address`;
CREATE TABLE `sc_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sc_shoppingcart_item`
--

DROP TABLE IF EXISTS `sc_shoppingcart_item`;
CREATE TABLE `sc_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_shoppingcart_item`
--

INSERT INTO `sc_shoppingcart_item` VALUES
(3, 3, 2, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sc_user`
--

DROP TABLE IF EXISTS `sc_user`;
CREATE TABLE `sc_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sc_user`
--

INSERT INTO `sc_user` VALUES
(1, 'douding', '1234567', 'douding@qq.com', '13501234569', 'sc_user/user1.png', '豆丁啊', 0),
(2, 'haha', '123456', 'dou@qq.com', '13501234569', 'sc_user/user1.png', '哈哈', 1),
(3, 'ding', '1234567', 'douding@qq.com', '13501234569', 'sc_user/user1.png', '豆丁', 0),
(4, 'kety', '123456', 'dou@qq.com', '13501234569', 'sc_user/user1.png', '凯特', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sc_cart`
--
ALTER TABLE `sc_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sc_index_carousel`
--
ALTER TABLE `sc_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `sc_index_product`
--
ALTER TABLE `sc_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sc_laptop`
--
ALTER TABLE `sc_laptop`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `sc_laptop_family`
--
ALTER TABLE `sc_laptop_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `sc_laptop_pic`
--
ALTER TABLE `sc_laptop_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sc_order`
--
ALTER TABLE `sc_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `sc_order_detail`
--
ALTER TABLE `sc_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `sc_receiver_address`
--
ALTER TABLE `sc_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `sc_shoppingcart_item`
--
ALTER TABLE `sc_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `sc_user`
--
ALTER TABLE `sc_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `sc_cart`
--
ALTER TABLE `sc_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sc_index_carousel`
--
ALTER TABLE `sc_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `sc_index_product`
--
ALTER TABLE `sc_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sc_laptop`
--
ALTER TABLE `sc_laptop`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sc_laptop_family`
--
ALTER TABLE `sc_laptop_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `sc_laptop_pic`
--
ALTER TABLE `sc_laptop_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- 使用表AUTO_INCREMENT `sc_order`
--
ALTER TABLE `sc_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sc_order_detail`
--
ALTER TABLE `sc_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sc_receiver_address`
--
ALTER TABLE `sc_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sc_shoppingcart_item`
--
ALTER TABLE `sc_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sc_user`
--
ALTER TABLE `sc_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
