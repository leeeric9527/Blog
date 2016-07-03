/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50707
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50707
File Encoding         : 65001

Date: 2016-07-03 22:40:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `title` varchar(125) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `author` int(10) DEFAULT NULL,
  `comment` text,
  `hits` int(10) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `inputtime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('中国战机曾对日机做“攻击动作”？日高官否认', '1', '中国战机曾对日机做“攻击动作”？日高官否认', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"mbArticleSharePic     hover\" style=\"width: 640px;\"><img alt=\"中国战机曾对日机做“攻击动作”？日高官否认\" src=\"http://img1.gtimg.com/news/pics/hv1/105/68/2091/135984720.jpg\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">资料图：日本航空自卫队举行阅兵式庆祝自卫队</p>\r\n\r\n<p><strong>原标题：中国战机曾对日机做&ldquo;攻击动作&rdquo;？日高官否认：并无此事</strong></p>\r\n\r\n<p>【环 球网报道 记者 初晓慧】此前有日媒报道，日本前航空自卫队中将织田邦男6月28日在新闻网站上发文，称中国军方战机曾在东海上空对航空自卫队的战机&ldquo;做出类似攻击的动 作，航空自卫队战机飞离&rdquo;。据日本共同社6月29日报道，日本官房副长官萩生田光一29日在记者会上针对这一消息予以否认，称&ldquo;并无此事&rdquo;。</p>\r\n\r\n<p>萩生田还批评道：&ldquo;我个人对该网文内容感到遗憾。如果是曾置身于自卫队的人，所说的是否属实会给国际社会造成极大影响。&rdquo;</p>\r\n\r\n<p>织田在文中提及中国海军舰艇本月驶入钓鱼岛附近毗连区和鹿儿岛县口永良部岛附近&ldquo;日本领海&rdquo;等问题，声称&ldquo;中国军机已开始配合海上的动作，采取极具挑衅性的行为&rdquo;。</p>\r\n\r\n<p>此前的报道还提及网文中具体谈道，由于中国军机对紧急升空的自卫队飞机&ldquo;做出了类似攻击的动作&rdquo;，自卫队飞机&ldquo;一边使用自我防御装置，在避免中国军机导弹攻击的同时飞离了战域&rdquo;。</p>\r\n\r\n<p>萩生田表示，自卫队战机针对中国飞机的紧急升空次数&ldquo;呈增加趋势&rdquo;，重申将继续做好日本附近海空域的警戒监视。</p>\r\n\r\n<p>中国国防部曾就中国军舰6月9日进入钓鱼岛附近海域一事做出回应强调，钓鱼岛及其附属岛屿是中国固有领土。中国军舰在本国管辖海域航行合理合法，他国无权 说三道四。针对日方所称中国军舰进入&ldquo;日本领海&rdquo;一事，国防部也曾做出回应强调，吐噶喇海峡是用于国际航行的领海海峡，中国军舰通过该海峡符合《<a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/WorldFoodProgramme#pref=qqcom.keyword\" rel=\"WorldFoodProgramme\" target=\"_blank\">联合国</a>海洋法公约》规定的航行自由原则。日本防卫省也承认，中国海军情报搜集舰在鹿儿岛县口永良部岛屿附近的&ldquo;日本领海&rdquo;内航行，并没有对日本的安全产生影响，中国海军的行为没有违反国际海洋法相关条约。<a href=\"http://www.qq.com/?pref=article\" id=\"backqqcom\" style=\"white-space: nowrap;\" target=\"_blank\" title=\"点击进入腾讯首页\"><img src=\"http://www.qq.com/favicon.ico\" style=\"height:16px; width:16px\" /><span style=\"font-size:14px\">返回腾讯网首页&gt;&gt;</span></a></p>\r\n', '1', null, null, 'http://img1.gtimg.com/news/pics/hv1/105/68/2091/135984720.jpg', '1467212726');
INSERT INTO `blog` VALUES ('蔡英文出访巴拿马自称“台湾总统” 外交部回应', '2', ' 港澳台新闻澎湃新闻2016-06-28 18:59 我要分享 234 ', '<p>外交部网站消息，6月28日，外交部发言人洪磊主持例行记者会。针对日本外务省事务次官杉山晋辅就南海问题发声，洪磊回应称，日方言论反映其炒作、渲染南海紧张局势的不良居心，希望日方不要续写在南海问题上不光彩记录。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"mbArticleSharePic \" style=\"width: 500px;\"><img alt=\"蔡英文出访巴拿马自称“台湾总统” 外交部回应\" src=\"http://img1.gtimg.com/news/pics/hv1/168/221/2090/135958773.jpg\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>【记者会实录】</strong></p>\r\n\r\n<p><strong>问：据报道，日本外务省事务次官杉山晋辅昨天（6月27日）说，日方正密切关注南海仲裁案，认为单独或同G7国家、东盟国家就此发声是合适的。中方对日方言论有何回应？</strong></p>\r\n\r\n<p><strong>答：</strong>从日本有关官员的话中可以看出，日本一些人不断炒作南海问题，渲染局势紧张，挑动地区国家对立，唯恐天下不乱。</p>\r\n\r\n<p>日本在南海问题上有着不光彩的历史记录，希望它不要续写这样不光彩的记录。希望地区国家对日本的意图保持高度警惕。</p>\r\n\r\n<p><strong>问：据报道，俄罗斯总统发言人昨天（6月27日）说，俄罗斯总统普京收到土耳其总统埃尔多安亲笔信，埃对去年击落俄战机致歉，表示愿采取一切措施重塑两国传统友谊。中方对此有何评论？</strong></p>\r\n\r\n<p><strong>答：</strong>中方注意到相关报道，愿意看到俄土改善和发展关系。</p>\r\n\r\n<p><strong>问：据媒体报道，中国政府已经提交了<a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/WorldFoodProgramme#pref=qqcom.keyword\" rel=\"WorldFoodProgramme\" target=\"_blank\">联合国</a>安理会第2270号决议执行报告。请证实。联合国有关委员会是否会公开报告？</strong></p>\r\n\r\n<p><strong>答：</strong>中方一贯认真履行国际义务，执行安理会决议。中方已根据安理会第2270号决议要求提交了执行情况报告，联合国方面会公开中方的报告。</p>\r\n\r\n<p><strong>问：台湾当局领导人在参观巴拿马运河时，在留言簿上署名自称&ldquo;President of TAIWAN（ROC）&rdquo;，意为&ldquo;台湾（中华民国）总统&rdquo;。你对此有何评论？</strong></p>\r\n\r\n<p><strong>答：</strong>坚持一个中国原则、反对&ldquo;台独&rdquo;、反对&ldquo;两个中国&rdquo;和&ldquo;一中一台&rdquo;，是我们处理台湾对外交往问题的一贯立场。</p>\r\n\r\n<p>会后，<strong>有记者问及：一、据报道，印度总理莫迪接受采访称，中印之间存在一些问题，中方一直与印方合作寻求解决之道，印方将继续与中方通过对话解决有关问题。中方对此有何回应？</strong></p>\r\n\r\n<p>洪磊表示，我们注意到有关报道。中印关系总体是好的，两国共同利益远远大于分歧。中方愿与印方把握两国关系发展的大方向，不断深化各领域合作。对于两国关系中存在的一些问题，中方愿同印方保持沟通和对话，寻求公平合理、双方都能接受的解决办法。</p>\r\n\r\n<p><strong>二、印度加入导弹及其技术控制制度，中方对此有何评论？中方对加入MTCR持何立场？</strong></p>\r\n\r\n<p>洪磊表示，我们注意到，有的多边出口控制机制出现这样或那样的变化。中方正在结合上述情况，评估MTCR对维护国际防扩散体系的有效性。</p>\r\n\r\n<p>(澎湃国际)</p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', '2', null, null, 'http://img1.gtimg.com/news/pics/hv1/168/221/2090/135958773.jpg', '1467248503336');
INSERT INTO `blog` VALUES ('中国战机曾对日机做“攻击动作”？日高官否认', '3', '中国战机曾对日机做“攻击动作”？日高官否认', '<p><img alt=\"中国战机曾对日机做“攻击动作”？日高官否认\" src=\"http://img1.gtimg.com/news/pics/hv1/105/68/2091/135984720.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">资料图：日本航空自卫队举行阅兵式庆祝自卫队</p>\r\n\r\n<p><strong>原标题：中国战机曾对日机做&ldquo;攻击动作&rdquo;？日高官否认：并无此事</strong></p>\r\n\r\n<p>【环 球网报道 记者 初晓慧】此前有日媒报道，日本前航空自卫队中将织田邦男6月28日在新闻网站上发文，称中国军方战机曾在东海上空对航空自卫队的战机&ldquo;做出类似攻击的动 作，航空自卫队战机飞离&rdquo;。据日本共同社6月29日报道，日本官房副长官萩生田光一29日在记者会上针对这一消息予以否认，称&ldquo;并无此事&rdquo;。</p>\r\n\r\n<p>萩生田还批评道：&ldquo;我个人对该网文内容感到遗憾。如果是曾置身于自卫队的人，所说的是否属实会给国际社会造成极大影响。&rdquo;</p>\r\n\r\n<p>织田在文中提及中国海军舰艇本月驶入钓鱼岛附近毗连区和鹿儿岛县口永良部岛附近&ldquo;日本领海&rdquo;等问题，声称&ldquo;中国军机已开始配合海上的动作，采取极具挑衅性的行为&rdquo;。</p>\r\n\r\n<p>此前的报道还提及网文中具体谈道，由于中国军机对紧急升空的自卫队飞机&ldquo;做出了类似攻击的动作&rdquo;，自卫队飞机&ldquo;一边使用自我防御装置，在避免中国军机导弹攻击的同时飞离了战域&rdquo;。</p>\r\n\r\n<p>萩生田表示，自卫队战机针对中国飞机的紧急升空次数&ldquo;呈增加趋势&rdquo;，重申将继续做好日本附近海空域的警戒监视。</p>\r\n\r\n<p>中国国防部曾就中国军舰6月9日进入钓鱼岛附近海域一事做出回应强调，钓鱼岛及其附属岛屿是中国固有领土。中国军舰在本国管辖海域航行合理合法，他国无权 说三道四。针对日方所称中国军舰进入&ldquo;日本领海&rdquo;一事，国防部也曾做出回应强调，吐噶喇海峡是用于国际航行的领海海峡，中国军舰通过该海峡符合《<a class=\"a-tips-Article-QQ\" href=\"http://t.qq.com/WorldFoodProgramme#pref=qqcom.keyword\" rel=\"WorldFoodProgramme\" target=\"_blank\">联合国</a>海洋法公约》规定的航行自由原则。日本防卫省也承认，中国海军情报搜集舰在鹿儿岛县口永良部岛屿附近的&ldquo;日本领海&rdquo;内航行，并没有对日本的安全产生影响，中国海军的行为没有违反国际海洋法相关条约。<a href=\"http://www.qq.com/?pref=article\" id=\"backqqcom\" style=\"white-space: nowrap;\" target=\"_blank\" title=\"点击进入腾讯首页\"><img src=\"http://www.qq.com/favicon.ico\" style=\"height:16px; width:16px\" /><span style=\"font-size:14px\">返回腾讯网首页&gt;&gt;</span></a></p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>&quot;&gt;</p>\r\n', '2', null, null, 'http://img1.gtimg.com/news/pics/hv1/105/68/2091/135984720.jpg', '1467216589952');
INSERT INTO `blog` VALUES ('阿里云：安全的未来是SaaS化', '4', '从2009年蹒跚起步，到现在阿里云已经提供了计算、存储、网络、安全、数据等五个层面的服务，并且在不断地打磨完善各个核心能力。', '<p>例如，在2016年早些时候，阿里云推出了数加平台，旨在打通数据生产全链条，而6月29日的云栖大会&middot;成都峰会，安全则成为了主角。在这次峰会上，阿里云首席安全研究员吴翰清介绍了阿里云的安全技术与策略。</p>\r\n\r\n<p>阿 里云资深总监肖力在会上表示，阿里云已经在金融、制造、娱乐、气象、健康、水利、交通、能源等行业发挥作用，赋能产业升级。效能、创新、安全是云计算的三 大优势，高危漏洞利用、数据泄露等一些困扰传统企业的问题，已经被阿里云不断破解，例如目前阿里云每天可以化解2000万次Web应用攻击、1000次 DDoS攻击。</p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160629180742873\" title=\"\" /></p>\r\n\r\n<p>阿里云正在将内部安全能力服务化，帮助企业解决四大安全痛点：</p>\r\n\r\n<ol>\r\n	<li>面对网络攻击无法保障业务可用性</li>\r\n	<li>被黑客入侵导致数据泄露</li>\r\n	<li>因为垃圾注册、撞库、恶意秒杀导致业务损失</li>\r\n	<li>因为文字、图片、视频违规导致监管风险</li>\r\n</ol>\r\n\r\n<p>吴翰清具体介绍了阿里云的安全理念：阿里云客户的实践表明，云计算实际上比传统IDC更加安全，但安全不仅仅是云计算服务商的事情，还需要用户来共同做好安全的工作。阿里云提出了责任共担模型：阿里云负责保障云平台安全，用户负责云上系统的安全管理责任。</p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160629181541099\" title=\"\" /></p>\r\n\r\n<p>在用户安全部分，阿里云通过旗下的安全品牌网盾来提供完整的安全解决方案。吴翰清介绍，云盾产品家族的全线产品已经达到11款，针对网络、服务器、数据、业务和移动等不同层次的安全需求。</p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160629180758280\" title=\"\" /></p>\r\n\r\n<p>在这些产品背后的核心，是阿里云基于云计算、大数据的威胁情报。阿里云认为，通过阿里云上收集到的各种异常行为数据和，以及大规模机器学习的技术，不断训练出涵盖最新攻击方式的预测模型，阿里云安全产品可以在不同的场景下更好地感知威胁，主动保障用户安全。</p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160629182457349\" title=\"\" /></p>\r\n\r\n<p>除 了发布移动安全、安全管家两款新产品，阿里云还发布了与绿盟科技、安恒信息、青藤云安全、网藤风险感知、安华金和（数据安全）等公司的合作，这意味着第三 方安全技术的SaaS化已经逐步落地，阿里云安全的未来重点工作之一将是生态的构建。同时阿里云也认为安全已经不是一家公司的事情了。</p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160629183502326\" title=\"\" /></p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160629183515982\" title=\"\" /></p>\r\n\r\n<p>吴 翰清表示，以往通过硬件来提供安全的方式，将会变成SaaS化的模式，这是因为云计算技术架构和业务模式（降低获客成本、延展业务边界）带来的双重优势， 云计算已经在替代传统IDC。传统安全方案商的问题，是虽然被逼着云化，但仍不熟悉SaaS的玩法，而阿里云可以为他们提供SaaS化的支持，开放给合作 伙伴的，包括运营工具的支持。</p>\r\n\r\n<p>当然，另一方面，基于当前混合云的客观存在，阿里云也提供了面向混合云的解决方案。</p>\r\n\r\n<p>对于SaaS化，吴翰清强调，要实现云平台上原生的、一键购买的一致体验（他认为这是阿里云和Azure、AWS的重大区别），为此他提出了账号、界面、售卖、售后四个统一，据他介绍目前的SaaS合作伙伴已经实现账号、界面的统一。</p>\r\n\r\n<p>此外，阿里云还发布了一份《数据安全白皮书》，在白皮书中公开了阿里云在保障230万用户数据安全方面建立的流程、机制以及具体实践办法。</p>\r\n\r\n<p>白皮书介绍，所有开发、维护、客服以及其他可能接触到阿里云内部系统的人员，他们的每次登陆都有严密的身份识别，确保帐号与生产设备&ldquo;不会误用&rdquo;、&ldquo;不被盗用&rdquo;、&ldquo;不能乱用&rdquo;的三不原则。</p>\r\n', '3', null, null, 'http://img.blog.csdn.net/20160629180742873', '1467217210');
INSERT INTO `blog` VALUES ('庆祝中国共产党成立95周年音乐会在京举行', '7', '（原标题：庆祝中国共产党成立95周年音乐会《信念永恒》在京举行）', '<p><img alt=\"庆祝中国共产党成立95周年音乐会《信念永恒》在北京举行\" src=\"http://cms-bucket.nosdn.127.net/catchpic/F/F3/F3FA65A2B24E39EAC71988CF77A53100.jpg\" /><br />\r\n国家领导人与首都各界3000多人共同观看音乐会</p>\r\n\r\n<p>新华社北京6月29日电 旗帜飞扬，歌声嘹亮。庆祝中国共产党成立95周年音乐会《信念永恒》29日晚在京举行。习近平、李克强、张德江、俞正声、刘云山、王岐山、张高丽等党和国家领导人，与首都各界3000多人观看音乐会，共同欢度这个光辉的节日。</p>\r\n\r\n<p>今晚，人民大会堂华灯璀璨，气氛喜庆。二楼眺台悬挂着醒目的横幅：&ldquo;紧密团结在以习近平同志为总书记的党中央周围，锐意进取、开拓创新，全面推进党的建设新的伟大工程，为实现&lsquo;两个一百年&rsquo;奋斗目标、实现中华民族伟大复兴的中国梦而努力奋斗！&rdquo;舞台正中，&ldquo;信念永恒&rdquo;四个大字熠熠生辉。舞台两侧，坚实的城墙托起鲜红的党旗，镰刀与锤头组成的党徽高悬其上，&ldquo;1921－2016&rdquo;字样金光闪耀。</p>\r\n\r\n<p>19时55分，在欢快的乐曲声中，习近平等党和国家领导人来到音乐会现场，全场响起热烈的掌声。</p>\r\n\r\n<p>95载风雨兼程，95载艰苦奋斗。在《红旗颂》辽阔悠远的旋律中，诗朗诵《信念永恒》拉开音乐会的帷幕。演出包括《历史选择》《浴血荣光》《青春誓言》《激情岁月》《人民向往》《信念永恒》六部分，文艺工作者用动情的歌声、精湛的演奏，抒发对党和国家的无限热爱、对民族复兴的美好憧憬。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"no\" height=\"250\" scrolling=\"no\" src=\"http://g.163.com/r?site=netease&amp;affiliate=news&amp;cat=article&amp;type=logo300x250&amp;location=12\" width=\"300\"></iframe></p>\r\n\r\n<p>一曲《南湖的船党的摇篮》将人们的思绪带回中国共产党宣告诞生的历史时刻，《七律&middot;长征》《延安颂》《保卫黄河》《山丹丹开花红艳艳》《绣红旗》《天下乡亲》《没有共产党就没有新中国》等脍炙人口的歌曲唤起人们对峥嵘岁月的深情回忆，激发后辈对革命先烈的真挚缅怀。伴着清脆的童声，一曲《召唤》唱出了共产党人为人民奉献牺牲的使命担当。《我们走在大路上》《咱们工人有力量》《唱支山歌给党听》《北京喜讯到边寨》《我爱你，中国》又道出了人民在党的领导下建设美丽家园的壮志豪情。《春天的故事》《在希望的田野上》《走在小康路上》《为了谁》《老阿姨》《推开这扇门》，一首首时代之歌，优美动听，展现亿万人民走在中国特色社会主义大道上的磅礴力量，观众心潮澎湃，掌声如潮。《党啊，亲爱的妈妈》《我们是共产主义接班人》《光荣与梦想》激昂唱响，全场气氛达到高潮，人们为全面建成小康社会的崭新图景而振奋，为中华民族伟大复兴的中国梦而自豪。在《没有共产党就没有新中国》的恢弘乐声中，音乐会落下帷幕。</p>\r\n\r\n<p>中共中央、全国人大常委会、国务院、最高人民法院、最高人民检察院、全国政协、中央军委领导同志观看音乐会。</p>\r\n\r\n<p>出席观看音乐会的还有：中央党政军群各部门及北京市主要负责同志，各民主党派中央、全国工商联负责人和无党派人士代表，老党员、老干部代表，受表彰的全国优秀共产党员、优秀党务工作者、先进基层党组织代表，在华工作的外国专家代表，首都基层党员和各界群众代表，解放军、武警部队官兵代表。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://news.163.com/\"><img alt=\"刘丹\" src=\"http://img1.cache.netease.com/cnews/css13/img/end_news.png\" style=\"height:12px; width:13px\" /></a>&nbsp;本文来源：新华网责任编辑：刘丹_BJS276</p>\r\n', '3', null, null, 'http://cms-bucket.nosdn.127.net/catchpic/F/F3/F3FA65A2B24E39EAC71988CF77A53100.jpg', '1467278286');
INSERT INTO `blog` VALUES ('英国脱欧后机构竞相“逃出”伦敦金融城', '10', '　汇通网6月30日讯——根据英国《金融时报》报道，英国公投脱欧的结果揭晓后', '<p><img alt=\"\" src=\"http://n.sinaimg.cn/default/transform/20160630/UZxj-fxtsatm1092447.jpg\" /></p>\r\n\r\n<p>　　汇通网6月30日讯&mdash;&mdash;根据英国《金融时报》报道，英国公投脱欧的结果揭晓后，不少位于伦敦的大型金融机构已经开始着手把相关业务迁出英国，并有可能将员工被调往巴黎、都柏林和法兰克福等地。</p>\r\n\r\n<p>　　在英国举行全民公投前，不少市场人士和机构都发出警告，强调英国一旦脱欧会导致金融机构纷纷外迁，金融中心的地位将受到严重打击。而事实上，自从上周五（6月24日）脱欧的投票结果尘埃落定后，全球三大信用评级机构标准普尔（Standard &amp; Poor&lsquo;s）、穆迪（Moody&rsquo;s）以及惠誉（Fitch Ratings）在本周内都先后把英国的主权评级从最高级别下调，并将评级展望列为负面，意味着往后英国的主权评级有可能继续被调降。考虑到相关的政策前景严重不明朗，各大金融机构也不得不未雨绸缪，开始启动将业务陆续迁离伦敦的&ldquo;逃亡&rdquo;预案。</p>\r\n\r\n<p>　　<a href=\"http://stock.finance.sina.com.cn/usstock/quotes/GS.html\" target=\"_blank\">高盛</a>(147.93,&nbsp;2.43,&nbsp;1.67%)（GoldmanSachs）、<a href=\"http://stock.finance.sina.com.cn/usstock/quotes/MS.html\" target=\"_blank\">摩根士丹利</a>(25.84,&nbsp;0.61,&nbsp;2.42%)（Morgan Stanley）、美林美银（BofA Merrill Lynch）、花旗集团（Citi Group）以及<a href=\"http://stock.finance.sina.com.cn/usstock/quotes/JPM.html\" target=\"_blank\">摩根大通</a>(61.68,&nbsp;0.48,0.78%)（JPMorgan Chase）等美国大型银行在英国设有机构办公室并雇佣大量员工。惠誉方面在周二的报告里就指出，英国公投脱欧后美国的跨国银行将实施部分战略性应急计划，而非等待英国与欧盟就贸易和服务安排达成一致。其中摩根士丹利正考虑从英国迁走1000名员工，高盛方面也预期要迁出部分办公室及员工到欧洲大陆。花旗集团为了保留所谓的&ldquo;护照权利&rdquo;将不得不调整其在欧盟区域的业务，而摩根大通也可能要将其1.6万名英国员工当中的1/4转移至欧盟内的其他国家。</p>\r\n\r\n<p>　　除此之外，作为英国本土最大金融机构的汇丰集团虽然仍将总部留在英国，但会将其投资银行部门至少1000名雇员迁至巴黎。同时欧洲银行业管理局也会把总部以及其中约150名员工从伦敦迁出。</p>\r\n\r\n<p>　　总部位于伦敦的智库新金融（New Financial）表示，为了确保业务的连续性，银行和资产管理公司将尽可能多地迁出他们认为必要的员工，也许很快就有数万人。而最终因为英国脱欧而丢失的工作岗位可能超过十万个。</p>\r\n\r\n<p>　　这不仅仅是一个员工从伦敦转移到另一个金融中心的问题，新的工作机会也不太可能会出现在伦敦了。按照路透社说法，<a href=\"http://stock.finance.sina.com.cn/usstock/quotes/PUK.html\" target=\"_blank\">英国保诚</a>(33.74,&nbsp;-0.04,&nbsp;-0.12%)保险公司的资金支持方M&amp;G投资，正考虑扩大其在都柏林的业务。至于伦敦证券交易所和德意志交易所合并后将新公司的总部设在伦敦的计划，现在看起来也变得不靠谱了。因为德国金融监管机构已经表示，英国脱欧后伦敦将不再是以<a href=\"http://finance.sina.com.cn/money/forex/hq/EURUSD.shtml\" target=\"_blank\">欧元</a>计价贸易的中心。</p>\r\n\r\n<p>　　英国金融机构有可能在该国正式脱离欧盟之后失去允许它们在欧盟各国开展经营的金融护照。如果没有上述护照，英国金融机构将无法为欧盟内规模庞大的并购案提供咨询服务，也无法出售以欧元计价的金融产品，包括各种金融衍生品。这些都将会对伦敦的金融中心地位及英国经济的构成沉重打击。</p>\r\n\r\n<p>　　尽管金融机构及其配套业务迁离伦敦是个缓慢而渐进的过程，但随着英国脱欧公投成为定局，这一过程已经无可避免地开始了。或许数年之后，伦敦金融城今日的风光只能成为历史的追忆。</p>\r\n', '3', null, null, 'http://n.sinaimg.cn/default/transform/20160630/UZxj-fxtsatm1092447.jpg', '1467302651');
INSERT INTO `blog` VALUES ('解放军首次曝光空中突击部队 港媒:震慑\"台独\"', '12', '（原标题：解放军首次曝光陆军空中突击部队 港媒：震慑\"台独\"）', '<p><img alt=\"资料图：解放军军事演习\" src=\"http://img5.cache.netease.com/cnews/2016/6/30/201606300149526c705.jpg\" /><br />\r\n资料图：解放军军事演习</p>\r\n\r\n<p>参考消息网6月30日报道 港媒称，解放军首次曝光陆军&ldquo;空骑快速反应部队&rdquo;，军方媒体日前披露，东部战区第一集团军某摩托化步兵旅已向&ldquo;空骑快反新型作战力量&rdquo;成功转型，将可飞越海峡天堑，&ldquo;成为一支维护祖国统一的快速反应力量&rdquo;。</p>\r\n\r\n<p>香港《东方日报》网站6月29日报道称，由于该集团军属于东部战区，因此被指震慑&ldquo;台独&rdquo;意味浓厚。</p>\r\n\r\n<p>报道称，6月中旬，第一集团军某摩步旅以全新面貌亮相演兵场，近年来，针对&ldquo;陆军由区域防卫型向全域作战型转变&rdquo;的新要求，该步兵旅主动向空骑快反新型作战力量转型，并将快反突击作战能力融入日常战备，该旅曾成功组织一个营共600多官兵，乘坐直升机突袭夺取海岛的演习。报道指，第一集团军陆航旅拥有32架武装直升机、80架运输直升机，运输直升机一次可以突击运送1600人实施作战。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"no\" height=\"250\" scrolling=\"no\" src=\"http://g.163.com/r?site=netease&amp;affiliate=news&amp;cat=article&amp;type=logo300x250&amp;location=12\" width=\"300\"></iframe></p>\r\n\r\n<p>据台湾中时电子报6月19日报道，事实上，解放军发展空骑旅已超过10年。2005年中共中央军委命令南京军区的第一集团军某摩托化步兵旅进行空骑快反机降力量的转型任务；到现在，解放军已有3支空中突击部队，包含空骑快反突击旅（隶属东部战区第1集团军）、空中突击师（隶属西部战区第13集团军），与机降突击师（隶属空降第15军）。</p>\r\n\r\n<p>报道称，早期大陆空中突击旅并未进行编制改革，只和第一集团军的陆军航空兵联训；2012年8月，大陆的首支空骑快反突击旅才首次整建制参加三军联合演习，标志大陆诞生第一支真正的空中骑兵旅；2013年8月，陆军航空兵集结7个单位，出动118架各型直升机组成空中突击集群，进行两栖跨海登陆作战演习。</p>\r\n', '3', null, null, 'http://img5.cache.netease.com/cnews/2016/6/30/201606300149526c705.jpg', '1467302917');
INSERT INTO `blog` VALUES ('博客标题', '16', '博客描述', '<p><img alt=\"普京签署命令责成政府逐步取消对土耳其制裁措施\" src=\"http://cms-bucket.nosdn.127.net/catchpic/3/35/35C36CCA8C7547CB223C10678F0211FF.jpg\" /></p>\r\n\r\n<p>博客内容</p>\r\n', '3', null, null, 'http://cms-bucket.nosdn.127.net/catchpic/3/35/35C36CCA8C7547CB223C10678F0211FF.jpg', '1467338639');
INSERT INTO `blog` VALUES ('容器的性能监控和日志管理', '17', '容器的性能监控和日志管理', '<h3>容器日志管理：Fluentd一枝独秀</h3>\r\n\r\n<p>传统的日志汇总收集方案主要有商业软件Splunk、开源软件栈ELK和Facebook开源的Scribe等，其中以ELK最为广泛使用。ELK是ElasticSearch、Logstash和Kibana三个工具的简称，经典的ELK架构如图1所示。在每一个节点部署一个Logstash服务，称为Shipper，然后收集的日志经过一个Redis缓存，在Redis后面再用另一个Logstash服务去做索引，称为Indexer，之所以有这样一个架构一方面是因为Logstash在做数据索引时会消耗较多内存和CPU，不适合在每个节点分别运算，另一方面则是集中运算方便对运算规则进行修改，而在两级数据之间若不加缓存则可能会由于Indexer处理不及时而丢失部分日志数据。</p>\r\n\r\n<p><img alt=\"图片描述\" src=\"http://img.blog.csdn.net/20160701084743520\" title=\"\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>图1 典型的ELK部署结构</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>然而即使在各个节点上的Logstash Shipper仅仅完成日志采集的工作，依然会带来不可忽略的额外性能消耗，这主要是由于Logstash基于JRuby语言开发，因此在运行效率上和内存使用上存在一定瓶颈。之后Logstash所属的公司Elastic推出了基于Go语言的数据采集服务Beats，其中用于做日志文件收集的Filebeat将替代Logstash Shipper的主要功能，为以示区别，这套开源方案被称为EFK。</p>\r\n\r\n<p>除了Filebeat，还有许多来自社区的Logstash替代方案，使用比较广泛的是Apache基金会旗下的Flume和2011年底才刚刚诞生的Fluentd，它们可以同时取代Shipper和Indexer的两级日志汇聚，这两种方案同样需要配合ElasticSearch和Kibana作为日志数据的存储和展示工具，因此都被称作是社区方案中的EFK。其中Fluentd在诞生后不久就由于其易用性、扩展性和高效的数据处理能力受到许多企业的青睐，亚马逊将它称为是最好的集群日志收集工具[1]。</p>\r\n\r\n<p>Fluentd并非是专用于日志文件收集的，而是一个通用的信息收集、整理、转发的流式数据处理工具，日志收集只是它十分典型的一个运用场景。重要的是，Fluentd的日志收集功能对容器支持十分完备，远远胜于Logstash等传统日志收集工具。一方面得益于Fluentd社区开发了几种专用于Docker日志文件的收集插件，这些插件能够在Fluentd收集完Docker日志以后自动为它加上容器相关的信息，比较推荐其中的fluent-plugin-docker-metadata-filter这一款插件，它提供的信息颇为齐全。Logstash对于这方面依然比较空缺，GitHub上唯一能够找到的一款社区插件[2]也已经在一年前就停止开发。另一方面，当前Docker官方支持的日志驱动除了默认的使用本地目录，还可以直接发送到远程的日志存储或日志采集服务，而其中日志采集服务目前仅仅支持Splunk和Fluentd，同样没有Logstash等老一辈开源日志工具的踪影。</p>\r\n\r\n<p>通过采集本地文件日志和使用Docker的日志驱动的方式各有优劣。默认情况下Docker会将所有容器输出到系统控制台的内容重定向到以容器ID命名的一个本地目录中，只需要定期采集所有这些目录的内容就能一字不漏的将容器的输出捕获出来，这种方式的侵入性很小，但由于是周期性的收集，日志在汇聚端（例如Kibana）的展示会有一定的延时，延时长度与日志收集的周期相关。相反的，如果使用Docker的日志驱动（启动docker后台服务时指定参数&ndash;log-driver=fluentd）将获得实时性很好的汇聚端日志展示，但由于日志直接发送到了远端的Fluentd服务，会使得在本地主机上的docker logs命令失效。两种方式的共性在于：不论通过哪一种方式，收集到的日志都能够以容器名称、镜像、标签等对容器使用十分友好的维度进行检索。</p>\r\n\r\n<h3>总结</h3>\r\n\r\n<p>新技术的大规模流行往往会带来两面性的变革，云技术如此、大数据如此、容器技术也属此列。作为一项正在被越来越多企业所接受的软件打包、分发和部署标准，容器式服务的运维正在成为传统运维团队面对的新挑战。</p>\r\n\r\n<p>容器作为DevOps的催化剂，正在为这场欣欣向荣的运动推波助澜。大浪淘沙，Influxdb、Prometheus、Fluentd&hellip;这些诞生不过几年的新生事物，借着容器化的百丈浪花，撼动着曾经扎根深厚的运维设施基石。技术的更迭方式可以是潜移默化的和平演变，亦或是轰轰烈烈的武装革命，容器技术应该归属于后者。可以预见在更高效和轻量化的运维实践之后，容器还将为整个IT领域注入更多新鲜和活力，让我们拭目以待。</p>\r\n\r\n<p>[1]&nbsp;<a href=\"https://dzone.com/articles/amazon-recommends-fluentd-best\" target=\"_blank\">https://dzone.com/articles/amazon-recommends-fluentd-best</a>&nbsp;<br />\r\n[2]&nbsp;<a href=\"https://github.com/itzg/logstash-filter-docker_container\" target=\"_blank\">https://github.com/itzg/logstash-filter-docker_container</a></p>\r\n', '12', null, null, 'http://img.blog.csdn.net/20160701084743520', '1467481501');
INSERT INTO `blog` VALUES ('3213123', '18', '123123', '<p>123123</p>\r\n', '14', null, null, '', '1467523392');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `content` text,
  `inputtime` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `blogid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '213123', '1467273686200', 'admin', '4');
INSERT INTO `comment` VALUES ('2', '213123', '1467273708094', 'admin', '4');
INSERT INTO `comment` VALUES ('3', '豆哥', '1467273849527', 'admin', '4');
INSERT INTO `comment` VALUES ('4', '你好！', '1467273865815', 'admin', '4');
INSERT INTO `comment` VALUES ('5', '文章评论。。。。。文章评论。。。。。。。', '1467273909996', 'admin', '4');
INSERT INTO `comment` VALUES ('6', '你好！', '1467273971525', 'admin', '4');
INSERT INTO `comment` VALUES ('7', '蔡英文', '1467274015676', 'admin', '2');
INSERT INTO `comment` VALUES ('8', '豆哥评论！！！！！', '1467276077456', '豆哥', '1');
INSERT INTO `comment` VALUES ('9', '英国脱欧', '1467302675351', '严德美', '10');
INSERT INTO `comment` VALUES ('10', '李晓豆你好！', '1467333531299', '严德美', '13');
INSERT INTO `comment` VALUES ('11', '这条新闻好给力啊！', '1467333543722', '严德美', '13');
INSERT INTO `comment` VALUES ('12', '哈哈哈哈哈哈哈。。。。。。。。。。。。。。。。我们的博客平台终于好了。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。', '1467333572622', '严德美', '13');
INSERT INTO `comment` VALUES ('13', '博客评论。。。。。。。。。。。', '1467334887217', '李晓豆', '12');
INSERT INTO `comment` VALUES ('14', '博客评论。。。。。。。。。。。', '1467334932866', '李晓豆', '12');
INSERT INTO `comment` VALUES ('15', '博客平台', '1467338675582', 'admin', '16');
INSERT INTO `comment` VALUES ('16', '回答了多喝水啦', '1467481970779', '严德美', '17');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '豆哥', 'dou1234', '1356830058@qq.com', '男', '上网，打游戏', '中国：兰州');
INSERT INTO `user` VALUES ('2', 'test', '1234', '1312480794@qq.com', '女', '打球', '中国：南京');
INSERT INTO `user` VALUES ('4', '45646', '3123123123', '13124809@qq.com', '男', '编程', '中国：南京');
INSERT INTO `user` VALUES ('5', '2313', '123', '312', '男', '3123', '中国：123');
INSERT INTO `user` VALUES ('6', '李晓豆', 'y123', '1312480794@qq.com', '男', '打撸', '中国：兰州');
INSERT INTO `user` VALUES ('7', '132', '789', '789', '男', '798', '中国：789');
INSERT INTO `user` VALUES ('8', 'admin', '123456', '1312480794@qq.com', '男', '实验', '中国：南京');
INSERT INTO `user` VALUES ('11', '112', '3123', '312', '男', '123', '中国：123');
INSERT INTO `user` VALUES ('12', '严德美', '123456', '1312480794@qq.com', '男', '上网', '中国：南京');
INSERT INTO `user` VALUES ('13', '张三', '123', '1312480794@qq.com', '男', '哈哈哈哈哈', '中国：南京');
INSERT INTO `user` VALUES ('14', '123', '123', '123', '男', '123', '中国：123');
INSERT INTO `user` VALUES ('15', 'test1', '1', '1', '男', '1', '中国：1');
