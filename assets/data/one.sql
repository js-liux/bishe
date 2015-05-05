-- MySQL dump 10.13  Distrib 5.6.22, for Win64 (x86_64)
--
-- Host: localhost    Database: nb
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `all_product`
--

DROP TABLE IF EXISTS `all_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_product` (
  `name` varchar(100) DEFAULT NULL,
  `imgUrl` varchar(200) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `praise` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `detailUrl` varchar(50) DEFAULT NULL,
  `buyUrl` varchar(50) DEFAULT NULL,
  `content` longtext,
  `owner` int(11) DEFAULT NULL,
  `ownerCategory` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_product`
--

LOCK TABLES `all_product` WRITE;
/*!40000 ALTER TABLE `all_product` DISABLE KEYS */;
INSERT INTO `all_product` VALUES ('“小怪兽”来袭，萌翻你的贴身相机Flex Cam PIC','wear1.jpg','“小怪兽”来袭，萌翻你的贴身相机Flex Cam PIC',1000,100,'http://www.hitnology.com/video-366.html','','今天要为大家介绍“小怪兽”来袭，萌翻你的贴身相机Flex Cam PIC 。PIC最大的亮点就是它灵活的佩戴方式和萌萌的外表，让人一看到就联想起《怪兽电力公司》里的那些小怪兽们。颜值这么高怎能不心动~~\r\n\r\n长条形的机身采用特殊的柔软树脂制成，用户可以将它绑在任何你想的到地方,然后固定好摄像头的位置就可以开始使用了。手臂，裤腿，自行车，甚至是呼啦圈上统统都没有问题。偶尔还可以将它绑在家中宠物的身上，体验一下狗狗的第一视角。\r\n\r\nPIC具备一个124度广角镜头，可拍摄500万像素照片，支持720p30帧每秒的视频拍摄，满电下可持续使用1小时左右，内置16G存储空间，水下一米内均可直接拍摄。\r\n\r\nPIC仅有一个摁扭位于长条机身的尾部，用户可通过不同的点摁方式进行拍照或者摄像。也可通过蓝牙连接手机app操控。支持iOS和安卓系统的使用。目前该产品已众筹成功，预计零售价格89美元起，2015年9月出货。\r\n',1,3,1,NULL,NULL),('MINI增强现实行驶眼镜Augmented Vision','wear2.jpg','MINI增强现实行驶眼镜Augmented Vision',1000,100,'http://www.hitnology.com/video-347.html',NULL,'今天要为大家介绍的是由宝马设计的MINI 增强现实行驶眼镜Augmented Vision。\r\n\r\nAugmented Vision外观类似飞行眼镜，最主要的功能就是可以在用户开车时更快捷的为用户提供需要的信息。\r\n\r\n特有的“透视”功能可以让用户看到被车身遮挡住的物体，避免危险的发生。在停车时，也能清楚看到前，后，测面的距离。安全停靠。\r\n\r\n通过眼镜进行智能导航时，它会自动检测地点名称，并给出合理的有效路线，指引用户到达目的地。如需步行，眼镜会按步骤进行分步提示。\r\n\r\nAugmented还具备显示车速、限速等的平视显示器功能。还可根据导航自动查找空车位、停车场等信息。\r\n\r\n目前该产品已在2015上海车展展出，具体上市信息暂未公布。',1,3,2,NULL,NULL),('Jins Meme智能眼镜上市在即功能大解密','wear3.jpg','wear2.jpg',1000,100,'http://www.hitnology.com/video-339.html',NULL,'还记得可检测眼部活动的Jins Meme智能眼镜么？ 上市在即，近日Jins Meme为大家更新了更多有关此产品的详细功能。\r\n\r\n此款智能眼镜中间配有三点式眼电图鼻夹和镜架上的眉间传感器，可检测人体眼动状态，实时检测8个方向的眼部活动，统计用户的深层数据，包括步数，行走公里数，卡路里的燃烧等信息。\r\n\r\n镜腿的尾部配有加速度和角速度传感器，用来感应用户的眼动情况。通过眨眼的频率和力度分析出使用者目前的疲劳状态。佩戴时需要让传感器接触到肌肤已达到数据的稳定。\r\n\r\nJins Meme通过以头部为中心的数据检测，准确的测量身体各处的状态，判断使用者的平衡机能。例如走路是否倾斜，姿势不正确等。Jins Meme支持蓝牙连接手机app，在应用中查看眼部以及身体的所有数据。为了开拓它的无限可能，API也将全面开放，方便开发者们开发更多的适用程序。\r\n\r\nJins Meme可支持16个小时的使用时间，连接镜架尾部进行充电。目前该产品已召开发布会，售价和上市信息暂不确定。\r\n还记得可检测眼部活动的Jins Meme智能眼镜么？ 上市在即，近日Jins Meme为大家更新了更多有关此产品的详细功能。\r\n\r\n此款智能眼镜中间配有三点式眼电图鼻夹和镜架上的眉间传感器，可检测人体眼动状态，实时检测8个方向的眼部活动，统计用户的深层数据，包括步数，行走公里数，卡路里的燃烧等信息。\r\n\r\n镜腿的尾部配有加速度和角速度传感器，用来感应用户的眼动情况。通过眨眼的频率和力度分析出使用者目前的疲劳状态。佩戴时需要让传感器接触到肌肤已达到数据的稳定。\r\n\r\nJins Meme通过以头部为中心的数据检测，准确的测量身体各处的状态，判断使用者的平衡机能。例如走路是否倾斜，姿势不正确等。Jins Meme支持蓝牙连接手机app，在应用中查看眼部以及身体的所有数据。为了开拓它的无限可能，API也将全面开放，方便开发者们开发更多的适用程序。\r\n\r\nJins Meme可支持16个小时的使用时间，连接镜架尾部进行充电。目前该产品已召开发布会，售价和上市信息暂不确定。\r\n',1,3,3,NULL,NULL),('Swatch排球专用智能腕表Touch Zero One','wear4.jpg','Swatch排球专用智能腕表Touch Zero One',1000,1000,'http://www.hitnology.com/video-249.html',NULL,'今天要为大家介绍Swatch排球专用智能腕表Touch Zero One。\r\n\r\n全新的Touch Zero One，结合了清爽的设计和智能的功能，是一款专为沙滩排球运动设计的智能腕表。它能够测量出击球的数量、力度以及击球的方式等数据，更可爱的是，它可以为你记录fans们的掌声数。是不是信心大增呢~\r\n\r\n当然，最基本的功能，如：测量步数，行走公里数，卡路里的燃烧量这些都是不在话下的。Touch Zero One具备防水功能，使用swatch标准纽扣电池，无需充电，支持iOS和安卓系统的智能设备。通过蓝牙连接，在配套的app中可以查看用户的历史记录。\r\n\r\n目前该产品的上市信息暂未公布，预计售价160美金。',1,3,4,NULL,NULL),('Pebble全新彩屏智能腕表Time','wear5.jpg','Pebble全新彩屏智能腕表Time',1000,1000,'http://www.hitnology.com/video-208.html',NULL,'今天要为大家介绍的是Pebble全新智能腕表Time。Time外观时尚，相比上一代，采用全新的彩屏设计，有多达1000多种显示界面可供用户选择，不锈钢材质制成。表身也比上代轻薄约20%，佩戴起来更加舒适，贴合。\r\n\r\nTime具备防水功能。可同时兼顾iOS和安卓智能手机的使用。内置麦克风，可进行语音回复或备忘功能。电池续航时间长达7天。除了硬件上的强化，Time 还采用了全新的 Timeline 操作界面。通过手表，直接将所有通知、新闻、待办事项，都按照时间先后排列在同一条时间轴上。\r\n\r\n用户不必每次退回主屏幕去打开新应用，而是可以通过时间轴滚动寻找。所有的操作都是通过右侧的三个按键进行的。例如：“过去”按键可以呈现应用里昨天晚上的比赛结果，“现在”按键包括天气、交通和股价应用的实时更新等，而“未来”按键显示的是接下来的日程安排等。\r\n\r\n该产品目前在Kickstarter上以接近800万美金的总额众筹成功，售价159美金起，预计2015年5月出货。',1,3,5,NULL,NULL),('可穿戴在脚上的无敌风火轮RocketSkates','wear6.jpg','可穿戴在脚上的无敌风火轮RocketSkates',1000,1000,'http://www.hitnology.com/video-196.html',NULL,'\r\n今天要为大家介绍的是一款可穿戴在脚上的无敌风火轮，RocketSkates。\r\n\r\n鞋子由三个轮子组成，和老旧的旱冰鞋不同的是，它依靠内置的两个马达进行驱动，不需要借助太多的人力。RocketSkates 通过绷带固定在用户的鞋子上，通过脚部动作完成启动、加速、刹车等功能。\r\n\r\n 如果用户在上楼梯或者不需要滑轮的情况下，只需抬起脚跟用前脚掌着地就可以行走了。避免了穿脱的麻烦。\r\n\r\nRocketSkates 通过蓝牙连接手机app对鞋子进行控制。可完成追踪路线，查看电池状况等功能。并自带游戏，快邀请朋友们来一场追逐战吧。\r\n\r\nRocketSkates 有三种规格和颜色可选，均安装充电锂电池，不同的规格在满电下可持续行进6到10英里左右。最高速度可达每小时19km。单次充电时间为1.5小时左右。\r\n\r\n目前该产品已正式上市。售价499美金起。',1,3,6,NULL,NULL),('监测心率的无线智能耳机，捷波朗Sport Pulse监测心率的无线智能耳机，捷波朗Sport Pulse','wear7.jpg','监测心率的无线智能耳机，捷波朗Sport Pulse',1000,1000,'http://www.hitnology.com/video-176.html',NULL,'今天要为大家介绍的是一款可以测试心率的无线智能耳机，捷波朗Jabra Sport Pulse Wireless。\r\n\r\nJabra Sport Pulse最大的亮点就是通过耳塞内置的心率监测仪实时获得用户的心跳值和运动状态，提供数据分析。使你的运动计划变得更加合理有效。\r\n\r\nJabra Sport Pulse不仅可以播放音乐、接听电话，并且还能在运动的过程中获得语音指导。像不像一个贴身的私人教练呢。它还提供三项体能测试功能，分别是耐力测试，过度训练测试和静息心率测试。根据测试结果提供给用户最合理的运动建议。\r\n\r\n通过蓝牙连接手机app，用户可以在应用界面中看到当前的运动时间，距离，消耗热量等信息。并制定适合自己的运动计划。Jabra Sport Pulse通过usb接口对耳机进行充电，满电下可持续接听电话或者听音乐5小时左右的时间。\r\n\r\n目前该产品已正式上市，售价为199美金。',1,3,7,NULL,NULL),('可以用眼睛控制的智能滑雪护目镜RideOn AR Goggles','wear8.jpg','可以用眼睛控制的智能滑雪护目镜RideOn AR Goggles',1000,1000,'http://www.hitnology.com/video-171.html',NULL,'今天要为大家介绍的是一款可以用眼睛控制的滑雪护目镜，RideOn AR Goggles。\r\n\r\nRideOn AR Goggles最大的亮点就是它的镜片具有平视显示器功能。简单来说就是它能够将可选的功能项展现在眼镜视野范围内，大约15英尺远的正前方。并无需手动操作，只需通过眼睛进行选择。\r\n\r\nRideOn AR Goggles可以做很多事情和朋友们进行互动，查看小伙伴们的所在位置，发送简讯、语音或者来一场雪球大战吧~不仅如此RideOn AR Goggles还具备查看滑雪场地图功能，根据你想去的地方进行导航。前方有缆车时，它可以为用户自动计算出当前的排队时间。\r\n\r\nRideOn AR Goggles自带简单小游戏，例如这个穿越虚拟障碍物的小游戏，是不是特别有意思~~RideOn AR Goggles支持安卓系统使用，内置1G内存空间，通过蓝牙连接移动设备，并自带摄像头，随时记录你沿途风景和朋友们分享。\r\n\r\n充电电池满电下可工作大约7小时，通过usb接口进行充电。该产品目前正在众筹中，众筹价格为499每金起。',1,3,8,NULL,NULL),('实时监测眼球活动的智能眼镜Jins Meme','wear9.jpg','实时监测眼球活动的智能眼镜Jins Meme',1000,1000,'http://www.hitnology.com/video-169.html',NULL,'今天要为大家介绍的是一款实时监测身体状况的智能眼镜，Jins meme。Jins meme最大的亮点是它内置智能传感器，能够实时监测眼球活动，通过检测眼球的每个动作，每个眨眼的力量，判断出使用者目前是精神状况。\r\n\r\n通过蓝牙连接手机 App， 推送身体状况信息，如果累了就休息一下~疲惫的精神状态不仅降低工作效率，对身体也是有害的哦~不仅如此，Jins meme还可以用来监测步数，消耗的卡路里，姿势等，而这些信息可以帮助你避免长时间疲劳对身体带来的伤害。\r\n\r\nJins meme 非常轻巧，有多钟款式可选，满电后可持续工作长达16个小时。支持ios和安卓系统的智能设备。该产品上市日期暂不确定，售价约800美金。\r\n',1,3,9,NULL,NULL),('让爱迪生都拍手叫绝的磁悬浮灯泡Flyte','home1.jpg','让爱迪生都拍手叫绝的磁悬浮灯泡Flyte',1000,1000,'http://www.hitnology.com/video-376.html',NULL,'今天要为大家介绍的是让爱迪生都拍手叫绝的磁悬浮灯泡Flyte。\r\n\r\nFlyte由底座和LED灯泡组成，底座内置磁铁和电感线圈，通过磁铁使灯泡呈现悬浮效果，而电感线圈则可为灯泡在空中进行无线供电。虽然原理简单，但是一切看起来就是这么炫酷。\r\n\r\n使用方法简单，用户只需将灯泡垂直放在底座的上方，便可悬浮自动亮起，并一直不停旋转。\r\n\r\n轻触一下底座表面，便可控制开关。\r\n\r\n就算不需要用到灯泡时，用户也可以直接将手机放在底座上进行无线充电。\r\n\r\n虽然Flyte只是一个简单的磁悬浮灯，但相信我们未来的生活会有更多磁悬浮产品加入进来。\r\n\r\n目前该产品已众筹成功，众筹价格249美元起。预计2015年10月出货。\r\n\r\n触动力官方app已在苹果商店正式上架，一定要去下载哦~\r\n\r\n了解更多未知的新产品，关注触动力hitnology.com。',1,3,10,NULL,NULL),('水龙头安全套','product1.jpg','水龙头安全套',1000,1000,NULL,NULL,'水龙头安全套',1,3,11,NULL,NULL),('混合式洁身仪','product2.jpg','混合式洁身仪',1000,1000,NULL,NULL,'混合式洁身仪',1,2,12,NULL,NULL),('美的智能风扇','product3.jpg','美的智能风扇',1000,1000,NULL,NULL,'美的智能风扇',1,3,13,NULL,NULL),('智能LED吸顶灯','product4.jpg','智能LED吸顶灯',1000,1000,NULL,NULL,'智能LED吸顶灯',1,2,14,NULL,NULL),('bong续航25天的智能手表','product5.jpg','bong续航25天的智能手表',1000,1000,NULL,NULL,'bong续航25天的智能手表',1,2,15,NULL,NULL),('KT02实时监测身边的空气质量','product6.jpg','KT02实时监测身边的空气质量',1000,1000,NULL,NULL,'KT02实时监测身边的空气质量',1,2,16,NULL,NULL),('weis桌上的腔调器物','product7.jpg','weis桌上的腔调器物',1000,1000,NULL,NULL,'weis桌上的腔调器物',1,2,17,NULL,NULL),('变色的雨季童话','product8.jpg','变色的雨季童话',1000,1000,NULL,NULL,'变色的雨季童话',1,2,18,NULL,NULL),('复仇者联盟扫地机器人','product9.jpg','复仇者联盟扫地机器人',1000,1000,NULL,NULL,'复仇者联盟扫地机器人',1,2,19,NULL,NULL),('高端除螨仪','slider4.jpg','高端除螨仪',1000,1000,NULL,NULL,'高端除螨仪',1,1,20,NULL,NULL),('bong 30米防水恰到好处','slider5.jpg','bong 30米防水恰到好处',1000,1000,NULL,NULL,'bong 30米防水恰到好处',1,1,21,NULL,NULL),('找他就智能定位定位仪','slider6.jpg','找他就智能定位定位仪',1000,1000,NULL,NULL,'找他就智能定位定位仪',1,1,22,NULL,NULL);
/*!40000 ALTER TABLE `all_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `content` longtext,
  `owner` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('answer1',1,1,NULL,NULL),('answer2',1,2,NULL,NULL),('answer3',1,3,NULL,NULL),('answer4',1,4,NULL,NULL),('answer5',2,5,NULL,NULL),('answer6',2,6,NULL,NULL),('answer7',2,7,NULL,NULL);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `name` varchar(24) DEFAULT NULL,
  `praise` int(11) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `content` longtext,
  `state` tinyint(1) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES ('aaaa',3,'ww','sddddddddddddddddddddddddddddddddddddddddddddddddddddd',0,1,1,NULL,NULL),('bbbbbbb',3,NULL,'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',1,1,2,NULL,NULL);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `name` varchar(24) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('slider',1,NULL,NULL),('main',2,NULL,NULL),('wear',3,NULL,NULL),('home',4,NULL,NULL),('sport',5,NULL,NULL),('tour',6,NULL,NULL),('entertainment',7,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `name` varchar(24) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `praise` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `buy` varchar(50) DEFAULT NULL,
  `content` longtext,
  `owner` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `title` longtext,
  `owner` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES ('question1',1,NULL,1,NULL,NULL),('question',1,NULL,2,NULL,NULL);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text COLLATE utf8_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('-tQ_ifKjIOX79ucR6_czu9jtiMewgaCU',1430909787,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('3BH1JsXV0-g3Q3SamVKWmtmOPAAIxfOV',1430923108,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"name\":\"xjs\",\"email\":\"bbb\",\"telephone\":1111111,\"sex\":null,\"abstract\":\"ssssss\",\"weiboAddress\":\"aaaa\",\"qqNum\":222222,\"img\":\"xjs.jpg\",\"password\":\"123456\",\"age\":1,\"id\":1,\"createdAt\":\"2015-05-03T11:11:53.000Z\",\"updatedAt\":\"2015-05-03T11:11:53.000Z\"},\"authenticated\":true}'),('Avrym-MUGZpg_80V5B2ZEbdm1SZEOFAf',1430933296,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"name\":\"xjs\",\"email\":\"bbb\",\"telephone\":1111111,\"sex\":null,\"abstract\":\"ssssss\",\"weiboAddress\":\"aaaa\",\"qqNum\":222222,\"img\":\"xjs.jpg\",\"password\":\"123456\",\"age\":1,\"id\":1,\"createdAt\":\"2015-05-03T11:11:53.000Z\",\"updatedAt\":\"2015-05-03T11:11:53.000Z\"},\"authenticated\":true}'),('CF2N-kLOCYhAuAsona8OefrkpCoNM74a',1430861555,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"name\":\"xjs\",\"email\":\"bbb\",\"telephone\":1111111,\"sex\":null,\"abstract\":\"ssssss\",\"weiboAddress\":\"aaaa\",\"qqNum\":222222,\"img\":\"xjs.jpg\",\"password\":\"123456\",\"age\":1,\"id\":1,\"createdAt\":\"2015-05-03T11:11:53.000Z\",\"updatedAt\":\"2015-05-03T11:11:53.000Z\"},\"authenticated\":true}'),('Ei7kEZyFz21slvzLfWxhH3Z2NSzOPSWD',1430915786,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"name\":\"xjs\",\"email\":\"bbb\",\"telephone\":1111111,\"sex\":null,\"abstract\":\"ssssss\",\"weiboAddress\":\"aaaa\",\"qqNum\":222222,\"img\":\"xjs.jpg\",\"password\":\"123456\",\"age\":1,\"id\":1,\"createdAt\":\"2015-05-03T11:11:53.000Z\",\"updatedAt\":\"2015-05-03T11:11:53.000Z\"},\"authenticated\":true}'),('Qpf-EzSZ3MWvIkvFi3gPL1kpukTaTm0R',1430913721,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('VRKmg8a0m7qVKsjrjroaIXWa5Xw1iWGV',1430921411,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('lb8KtDmlgXhr9T9z9Rzjz77uBRK6oMAn',1430894114,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"name\":\"xjs\",\"email\":\"bbb\",\"telephone\":1111111,\"sex\":null,\"abstract\":\"ssssss\",\"weiboAddress\":\"aaaa\",\"qqNum\":222222,\"img\":\"xjs.jpg\",\"password\":\"123456\",\"age\":1,\"id\":1,\"createdAt\":\"2015-05-03T11:11:53.000Z\",\"updatedAt\":\"2015-05-03T11:11:53.000Z\"},\"authenticated\":true}'),('qE-VEnDCLzkZxc2aZp1MLI_F6klRvzxT',1430916355,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"}}'),('zWCKIw0knJ_fJKUaevlzoSfUrZwFwTOh',1430850637,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"name\":\"xjs\",\"img\":\"xjs.jpg\",\"password\":\"123456\",\"age\":null,\"id\":1,\"createdAt\":\"2015-05-03T11:11:53.000Z\",\"updatedAt\":\"2015-05-03T11:11:53.000Z\"},\"authenticated\":true}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(24) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `abstract` varchar(1000) DEFAULT NULL,
  `weiboAddress` varchar(50) DEFAULT NULL,
  `qqNum` int(11) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('xjs','bbb',1111111,NULL,'ssssss','aaaa',222222,'xjs.jpg','123456',1,1,'2015-05-03 19:11:53','2015-05-03 19:11:53'),('liux','aaaaa',NULL,NULL,NULL,NULL,NULL,NULL,'123456',NULL,2,'2015-05-04 23:15:44','2015-05-04 23:15:44');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `name` varchar(50) DEFAULT NULL,
  `imgUrl` varchar(50) DEFAULT NULL,
  `content` longtext,
  `owner` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES ('又快又持久的电动自行车Wave ebike','video1.jpg',NULL,1,1,NULL,NULL),('“一个萝卜一个坑”多功能智能办公桌LIFT PRO','video2.jpg',NULL,1,2,NULL,NULL),('让爱迪生都拍手叫绝的磁悬浮灯泡Flyte','video3.jpg',NULL,1,3,NULL,NULL),('雪佛兰科幻座驾FNR无人驾驶概念车','video4.jpg',NULL,1,4,NULL,NULL),('不再为吃什么而发愁的智能砧板','video9.jpg',NULL,1,5,NULL,NULL),('同时为iPhone和Apple Watch充电的智能台灯NuDock','video10.jpg',NULL,1,6,NULL,NULL),('家庭私人健身教练，智能脚踏车Peloton','video11.jpg',NULL,1,7,NULL,NULL),('将电池完美融入的电动滑板Bolt','video12.jpg',NULL,1,8,NULL,NULL),('“一带即挺”的坐姿矫正带BetterBack','video13.jpg',NULL,1,9,NULL,NULL),('轻松变身音乐高手的吉他Jamstik','video14.jpg',NULL,1,10,NULL,NULL),('专为孩子准备的超萌机器人BOCCO','video15.jpg',NULL,1,11,NULL,NULL),('可监控空气质量的智能摄像头Withings Home','video16.jpg',NULL,1,12,NULL,NULL),('捕获你心跳的智能自行车头盔LifeBEAM','video5.jpg',NULL,1,13,NULL,NULL),('无需车链的可折叠智能自行车Jivr Bike','video6.jpg',NULL,1,14,NULL,NULL),('“小怪兽”来袭，萌翻你的贴身相机Flex Cam PIC','video7.jpg',NULL,1,15,NULL,NULL),('让孩子爱上编程的智能机器人Codie','video8.jpg',NULL,1,16,NULL,NULL);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-06  1:39:59
