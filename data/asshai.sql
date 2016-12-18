-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-18 06:48:36
-- 服务器版本： 5.7.16
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asshai`
--

-- --------------------------------------------------------

--
-- 表的结构 `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add Token', 7, 'add_token'),
(20, 'Can change Token', 7, 'change_token'),
(21, 'Can delete Token', 7, 'delete_token'),
(22, 'Can add location', 8, 'add_location'),
(23, 'Can change location', 8, 'change_location'),
(24, 'Can delete location', 8, 'delete_location'),
(25, 'Can add group', 9, 'add_group'),
(26, 'Can change group', 9, 'change_group'),
(27, 'Can delete group', 9, 'delete_group'),
(28, 'Can add topic', 10, 'add_topic'),
(29, 'Can change topic', 10, 'change_topic'),
(30, 'Can delete topic', 10, 'delete_topic');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$dkUhoelZeaI2$MyPYSyxB+xOCruz6nrmDKWx9RtQ2YFWHhVbw1ee8yhQ=', '2016-12-16 17:20:03.603205', 1, 'linwei', '', '', 'linwei@douban.com', 1, 1, '2016-12-16 17:20:00.445725');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-12-16 17:25:44.475309', '328200', '北京朝阳酒仙桥望京二手房租房', 1, '[{\"added\": {}}]', 9, 1),
(2, '2016-12-16 17:31:37.830983', 'beijingzufang', '北京租房', 1, '[{\"added\": {}}]', 9, 1),
(3, '2016-12-16 17:32:19.654088', 'zhufang', '北京无中介租房（寻天使投资）', 1, '[{\"added\": {}}]', 9, 1),
(4, '2016-12-16 17:37:08.892129', '262626', '北京无中介租房（寻天使投资）', 2, '[{\"changed\": {\"fields\": [\"douban_id\"]}}]', 9, 1),
(5, '2016-12-16 17:37:22.883758', 'zhufang', '北京无中介租房（寻天使投资）', 3, '', 9, 1),
(6, '2016-12-16 17:38:31.018539', '131104', '北京租房', 2, '[{\"changed\": {\"fields\": [\"douban_id\"]}}]', 9, 1),
(7, '2016-12-16 17:38:36.623877', 'beijingzufang', '北京租房', 3, '', 9, 1),
(8, '2016-12-16 17:42:46.376334', '1', '芳园里', 1, '[{\"added\": {}}]', 8, 1),
(9, '2016-12-16 17:45:49.454935', '2', '电子城小区', 1, '[{\"added\": {}}]', 8, 1),
(10, '2016-12-16 17:47:54.310529', '3', '梵谷水郡', 1, '[{\"added\": {}}]', 8, 1),
(11, '2016-12-16 17:49:12.043139', '4', '驼房营', 1, '[{\"added\": {}}]', 8, 1),
(12, '2016-12-16 18:02:47.034166', '5', '高家园', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(7, 'authtoken', 'token'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'topic', 'group'),
(8, 'topic', 'location'),
(10, 'topic', 'topic');

-- --------------------------------------------------------

--
-- 表的结构 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-12-16 17:11:04.169303'),
(2, 'auth', '0001_initial', '2016-12-16 17:11:04.504086'),
(3, 'admin', '0001_initial', '2016-12-16 17:11:04.571561'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-12-16 17:11:04.609320'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-12-16 17:11:04.683174'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-12-16 17:11:04.713770'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-12-16 17:11:04.747193'),
(8, 'auth', '0004_alter_user_username_opts', '2016-12-16 17:11:04.760139'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-12-16 17:11:04.792433'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-12-16 17:11:04.794148'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-12-16 17:11:04.808606'),
(12, 'auth', '0008_alter_user_username_max_length', '2016-12-16 17:11:04.839444'),
(13, 'authtoken', '0001_initial', '2016-12-16 17:11:04.885180'),
(14, 'authtoken', '0002_auto_20160226_1747', '2016-12-16 17:11:04.993426'),
(15, 'sessions', '0001_initial', '2016-12-16 17:11:05.026984'),
(16, 'topic', '0001_initial', '2016-12-16 17:15:55.722513'),
(17, 'topic', '0002_group_crawl_count', '2016-12-16 17:23:28.584563');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gwae39rl1a0fuaug3gy8fxdwanoxp521', 'NWEyMjIyYmQ1MzU2MzAyNWU0MTY0NDEyYTQxOWM2NzliOTBjNWMyODp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3NjMzZDFmZWRmNDdjZDc1YTNjNDkzMjBkMjQyOGY3NTU5MGVmNDMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-12-30 17:20:03.606600');

-- --------------------------------------------------------

--
-- 表的结构 `topic_group`
--

CREATE TABLE `topic_group` (
  `douban_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `crawl_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `topic_group`
--

INSERT INTO `topic_group` (`douban_id`, `name`, `crawl_count`) VALUES
('131104', '北京租房', 60),
('262626', '北京无中介租房（寻天使投资）', 30),
('328200', '北京朝阳酒仙桥望京二手房租房', 30);

-- --------------------------------------------------------

--
-- 表的结构 `topic_location`
--

CREATE TABLE `topic_location` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `topics_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `topic_location`
--

INSERT INTO `topic_location` (`id`, `name`, `latitude`, `longitude`, `topics_count`) VALUES
(1, '芳园里', 39.9746707, 116.4888381, 0),
(2, '电子城小区', 39.971076, 116.50799, 0),
(3, '梵谷水郡', 39.966244, 116.513986, 0),
(4, '驼房营', 39.972876, 116.510223, 0),
(5, '高家园', 39.981656, 116.491456, 0);

-- --------------------------------------------------------

--
-- 表的结构 `topic_topic`
--

CREATE TABLE `topic_topic` (
  `douban_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `author_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `photos` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `topic_topic`
--

INSERT INTO `topic_topic` (`douban_id`, `group_id`, `title`, `url`, `create_time`, `update_time`, `content`, `author_name`, `author_avatar`, `author_url`, `location_id`, `photos`) VALUES
('74225412', '131104', '【招聘】APP设计师，15万/年起', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/74225412', '2015-04-15 11:35:27.000000', '2016-12-18 02:46:35.000000', '前沿互联网创业公司 「107间」 http://107room.com，核心团队85后，来自北大、港大、Cambridge，获顶级VC支持。 \r\n\r\n【工作职责】 \r\n-	负责手机端APP产品（Android&iOS）的视觉设计、交互设计 \r\n-	配合产品经理进行界面与体验优化 \r\n-	跟踪和分析国内外APP设计趋势 \r\n\r\n【要求】 \r\n-	有APP设计经验，或软件界面设计、平面设计、网页设计经验，能独立完成产品设计 \r\n-	有想象力、逻辑能力、整体风格把控力、重视细节、理解UE重要性 \r\n-	擅长动态设计，对于动画效果理解深刻 \r\n-	独立思考的能力，团队合作的精神，积极学习的态度 \r\n-	有互联网公司工作经历、主导过项目的优先 \r\n-	可尽快到岗 \r\n\r\n【待遇】 \r\n-	年薪15万+五险一金+餐饮补助 \r\n-	核心成员享有期权 \r\n\r\n【联系方式】 \r\n简历邮件至“weiwei@107room.com”。值得展示的作品可附上。', 'Creative Ones', 'https://img3.doubanio.com/icon/u102308388-1.jpg', 'https://www.douban.com/people/102308388/', NULL, ''),
('74225493', '131104', '招Android工程师，年薪【30万起】', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/74225493', '2015-04-15 11:37:34.000000', '2016-12-18 02:49:25.000000', '前沿互联网创业公司「107间」http://107room.com，核心团队85后来自北大、港大、Cambridge，获顶级VC支持，地点在北京中关村。\r\n\r\n【职责及要求】 \r\n-	2年以上Android开发经验，能够独立完成APP开发\r\n-	精通Java\r\n-	学习能力强，认真负责\r\n-	能够尽快入职\r\n\r\n【待遇】 \r\n-	高于行业标准的薪水\r\n-	广阔成长空间（CTO为ACM金牌、前北大ICPC校队）\r\n-	有机会成为核心成员并配发期权\r\n-	五险一金+绩效奖金+餐饮补助\r\n\r\n【联系方式】\r\n请将简历发邮件至【weiwei@107room.com】，先到先得。', 'Creative Ones', 'https://img3.doubanio.com/icon/u102308388-1.jpg', 'https://www.douban.com/people/102308388/', NULL, ''),
('74225613', '131104', '招iOS工程师，年薪【30万起】', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/74225613', '2015-04-15 11:40:06.000000', '2016-12-18 02:49:23.000000', '前沿互联网创业公司「107间」http://107room.com，核心团队85后来自北大、港大、Cambridge，获顶级VC支持，地点在北京中关村。\r\n\r\n【职责及要求】 \r\n-	2年以上iOS开发经验，能够独立完成APP开发\r\n-	精通Objective C/Swift语言\r\n-	学习能力强，认真负责\r\n-	能够尽快入职\r\n\r\n【待遇】 \r\n-	高于行业标准的薪水\r\n-	广阔成长空间（CTO为ACM金牌、前北大ICPC校队）\r\n-	有机会成为核心成员并配发期权\r\n-	五险一金+绩效奖金+餐饮补助\r\n\r\n【联系方式】\r\n请将简历发邮件至【weiwei@107room.com】，先到先得。', 'Creative Ones', 'https://img3.doubanio.com/icon/u102308388-1.jpg', 'https://www.douban.com/people/102308388/', NULL, ''),
('76660214', '328200', '望京 找合租室友一起合租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/76660214', '2015-06-22 01:10:02.000000', '2016-12-17 21:47:58.000000', '日本东大艺术学硕士毕业， 之前一直画油画，参加各种展览比赛，因为个性原因，回国后转型UI设计师。身高180 体重150，平时最喜欢健身。羽毛球国家二级运动员，平时周末喜欢打比赛，游泳也是四种泳姿都擅长，可以一起游泳。冬天就喜欢单板滑雪！每周都去！所以想跟我一起游泳，羽毛球。滑雪的免费教你哦~ （此处是福利） \r\n因为在北京也是一年多了，对屋子的要求很高，精装修，对了 你一定要爱干净 。 \r\n而且——我很喜欢做饭。如果你爱吃，我可以给你做日料哎，其他什么排骨啊 也都木有问题！ \r\n对喽，如果你喜欢画画，那自然更好，没事可以一起写生搭个伴啊！\r\n还等什么。快来吧。\r\n具体问题 可以豆油我！<图片25><图片28><图片31><图片43><图片46><图片47><图片48><图片49><图片50>', 'Modigliani', 'https://img3.doubanio.com/icon/u66058302-20.jpg', 'https://www.douban.com/people/66058302/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p37045167.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p37045189.jpg?imageView2/2/q/60/w/500/h/630/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p41098701.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p41521361.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p44531047.jpg?imageView2/2/q/60/w/500/h/740/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63068315.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63068313.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63068311.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63068312.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('79596124', '131104', '更新：坐标雍和宫，科技媒体招活动策划/执行的小伙伴了（全职和实习生各一名，再次开启）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/79596124', '2015-09-14 16:13:27.000000', '2016-12-18 01:19:45.000000', '动点科技TechNode，中国最具国际影响力的科技新媒体，也是中国首家用中英双语面向全球推荐中国科技创业企业的创新孵化平台。动点科技举办的ChinaBang Awards年度创新盛典，旨在发掘和激励中国创新初创企业，是中国互联网创新力量的摇篮；作为国际顶尖科技媒体品牌TechCrunch的中国独家合作伙伴，动点科技已经将TechCrunch中国创新峰会打造成为中国最顶尖、最国际化的互联网盛会。动点科技旗下品牌还包括TNT品牌创业沙龙、十分之约VC见面会、XFounder创始人俱乐部、nodespace加速器等。动点科技已经成为链接中国创业生态和国际创业生态最有公信力的平台之一。\r\nTechNode, the leading tech media has the most international influence in China. It is also the first bilingually innovative - accelerating platform in China, which brings Chinese startups to the whole world. The ChinaBang Awards is an annually ceremony created by TechNode since 2011. The Awards contributes to concentrating and to digging China’s potential startups. TechNode is the officially exclusive operator of TechCrunch which is the top-level international tech media all over the world. TechNode has successfully organized TechCrunch international city event, it  becomes the most international and top-level internet conference in China. TechNode also runs several sub-brands such as TNT(TechNode Touch), VC Meetup, XFounder Club and NodeSpace Accelerator. Nowadays TechNode has become one of the most credible platforms in China to bridge the Chinese entrepreneurial ecosystems with the oversea’s.\r\n\r\n如果你是一个想创业，想了解互联网行业的人加入我们，这个地方绝对值得推荐你来加入：\r\n我需要你的需求： \r\n1、不看重你的学历，因为这个只是一个门槛，我不希望你一只脚还没落地就挂掉了，但是你必须是个肯学习的人，重点是必须要会英文，有一定的沟通能力（我们常常和一些老外沟通，有些ABC也需要我们交流，不知道为什么他们回国后就不会说中文了）我也理解面试的感觉，我也会给你这个机会，只是我给你这个机会的同时希望你也珍惜面试的机会，能力有多少，聊聊就知道！ \r\n2、目前我们更多的偏向实习生，我们希望给在校生一点这样的机会，如果你希望是全职，只要够优秀，我也会要的，毕竟来了也是要配合的，所以给我一个了解你的机会。\r\n3、在这里除了你的能力，其它的都不在乎，直的或弯的都不会怎么样，找好自己的定位很重要。也许你刚毕业，不知道你想要的是什么，如果你工作了一段时间之后，我希望你能找到你对自己的定位，告诉我你想要的是什么，什么都不想要（以为自己是圣人？）什么都想要（当自己是人民币？）\r\n4、每个月我们都可能会出差，希望你也能合理安排你的时间，并不一定每个城市都会安排给你，但是你有你的想法那当然最后，我希望你能独立完成一项任务，如果还是实习期和试用期，暂时不会安排你到处飞，不想浪费这样的时间和费用。\r\n5、如果你是个善于聊天，有本事面试的时候让我闭嘴听你来介绍，那我现场直接拍板，不要我说的唾沫横飞你就嗯嗯啊啊的，这是一份需要沟通才有效率的工作。\r\n6、别那么多心机，办公室的环境不需要心机婊，如果你的颜值够厉害，绝对也是加薪的一条捷径，不过能力还是需要的啊。\r\n\r\n福利： \r\n1、不定期我们会有团建，年底会有年会，全国各地任你选。 \r\n2、这个就是最现实的环节了，实习阶段100/天，我可以给你安排3-6个月实习机会，你够牛X，我可以提前给你安排200-250/天的机会，反正工资是公司开，给你开多少，就看你有没有这个能力消化。如果你是全职，每年年底一次涨薪，这个是雷打不动的，涨多少就要看年底我怎么给你写报告了。 \r\n3、办公室可以养猫养狗，想怎么玩就怎么玩。 \r\n4、工作熟悉后你可以不坐班，平时10点上班6点下班，时间不是重点。\r\n5、如果你是国安的球迷，想要到国安的门票或者见到队员，我不认为这是件事。 \r\n\r\n工作内容： \r\n1、每个月定期举办一场主题沙龙活动（主题策划，邀请嘉宾，现场执行，前期沟通） \r\n2、配合公司完成每年的3场大活动。 \r\n3、能够接受出差，我们面对的是全国的互联网公司，所以什么地方都有可能去，国外也是经常有的，所以…… \r\n4、了解互联网创业公司状况，挖掘新创业公司及最新资讯。 \r\n5、机械活是谁都能干的，我希望你能独立的做一件事，至少你办和活动要会写个策划吧！\r\n\r\nBtw，不要随便给我发豆油问全职的待遇多高，你的能力我都不知道我难道给你说个天价和白菜价？直接过来大家沟通沟通，希望你是个直来直去的，什么都好说！大家时间都宝贵，相互尊重一下。\r\n\r\n如果你觉得你很符合，欢迎发邮件xiaoming@technode.com给我，或者你有足够的勇气可以直接找我，机会是自己创造的，没什么不好意思的，不就是一份工作嘛（北京市东城区雍和宫青龙胡同35号和咖啡二层 小明） \r\n工作一开始不就是为了挣钱和梦想嘛，能力多大挣多少钱，反正工资是公司开，我当然希望你能更牛，你拿的越高，说不定我可以沾沾你的光。 btw，麻烦发邮件的时候告知你在下面留言的ID，如果英文不行，目前对于我这个部门来说还不是很需要。谢谢。 \r\n\r\nLet me know if you have any question.\r\nEmail:xiaoming@technode.com. \r\nAddress: He coffee,No.35 Qinglong Hutong,Dongcheng District, Beijing', '小明', 'https://img3.doubanio.com/icon/u72259437-2.jpg', 'https://www.douban.com/people/72259437/', NULL, ''),
('80416882', '131104', '爱音乐，想学声乐和吉他的小伙伴们看过来！！', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/80416882', '2015-10-13 16:28:45.000000', '2016-12-18 00:07:14.000000', '本人有认识一个特别靠谱又有趣的声乐兼吉他老师。。。而且心态极其年轻，和90毫无障碍交流…… \n\n至于他的教学功力，毫无问题，连卤煮介种中气不足，五音不全的天生公鸭破嗓区区几节课下来都被调教的开始唱歌可以听了啊（至少不跑调了），毕竟伦家是四川音乐学院毕业的啊。。。四川音乐学院简直是明星院校啊，各种这几年当红的选秀大咖都出自那里啊，春哥啊，何洁啊，魏晨啊，陈翔啊……数不胜数有木有！！ \n\n由于他不混豆瓣，所以拜托我发帖帮他招生！！ \n对了，差点忘了，他的教学工作室--坐标 \n朝阳大悦城附近 \n常营天街附近', 'sasar', 'https://img3.doubanio.com/icon/u63926205-1.jpg', 'https://www.douban.com/people/63926205/', NULL, ''),
('80921432', '131104', '爱音乐，想学声乐和吉他的小伙伴们看过来！！', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/80921432', '2015-10-30 17:04:02.000000', '2016-12-18 00:05:46.000000', '本人有认识一个特别靠谱又有趣的声乐兼吉他老师。。。而且心态极其年轻，和90毫无障碍交流…… \n\n至于他的教学功力，毫无问题，连卤煮介种中气不足，五音不全的天生公鸭破嗓区区几节课下来都被调教的开始唱歌可以听了啊（至少不跑调了），毕竟伦家是四川音乐学院毕业的啊。。。四川音乐学院简直是明星院校啊，各种这几年当红的选秀大咖都出自那里啊，春哥啊，何洁啊，魏晨啊，陈翔啊……数不胜数有木有！！ \n\n由于他不混豆瓣，所以拜托我发帖帮他招生！！ \n对了，差点忘了，他的教学工作室--坐标 \n朝阳大悦城附近 \n常营天街附近', 'sasar', 'https://img3.doubanio.com/icon/u63926205-1.jpg', 'https://www.douban.com/people/63926205/', NULL, ''),
('81141858', '328200', '爱音乐，想学声乐和吉他的小伙伴们看过来！！', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/81141858', '2015-11-07 10:48:53.000000', '2016-12-18 00:05:35.000000', '本人有认识一个特别靠谱又有趣的声乐兼吉他老师。。。而且心态极其年轻，和90毫无障碍交流…… \n\n至于他的教学功力，毫无问题，连卤煮介种中气不足，五音不全的天生公鸭破嗓区区几节课下来都被调教的开始唱歌可以听了啊（至少不跑调了），毕竟伦家是四川音乐学院毕业的啊。。。四川音乐学院简直是明星院校啊，各种这几年当红的选秀大咖都出自那里啊，春哥啊，何洁啊，魏晨啊，陈翔啊……数不胜数有木有！！ \n\n由于他不混豆瓣，所以拜托我发帖帮他招生！！ \n对了，差点忘了，他的教学工作室--坐标 \n朝阳大悦城附近 \n常营天街附近', 'sasar', 'https://img3.doubanio.com/icon/u63926205-1.jpg', 'https://www.douban.com/people/63926205/', NULL, ''),
('84959781', '131104', '高薪招聘红娘', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/84959781', '2016-03-30 15:38:44.000000', '2016-12-17 23:51:35.000000', '招聘红娘 北京单身俱乐部开第五家分店人员补充\r\n\r\n一、岗位职责：通过网络，微信等平台推广本公司产品，添加会员\r\n\r\n二、任职资格：1、要求非京籍女士22-35岁之间，有亲和力，普通话标准，，高中中专以上学历，熟悉各种聊天软件程序，善于沟通，表达能力强，有较强的逻辑叙述能力就可以；\r\n\r\n\r\n二、工作时间：非加班日周一至周五12:30-17:30，加班日12:30-21:30，中途休息一个小时，两组轮换，隔一天值一次晚班，晚班到21:30。周六日有一天休息，另外一天上班时间16:30-21:30\r\n\r\n三、工作地点：1、朝阳国贸店（地铁1/10号线），2、东城东直门（地铁2/13号线），3、海淀魏公村（地铁4号线），4、公主坟就近安排上班，在相亲活动现场办公，环境氛围好极了，现已举办十三年啦\r\n\r\n联系人：张娜18810562137（当然如果你不喜欢这个工作想找个对象也可以加我手机号微信关注每晚活动安排的）\r\n\r\n无责任底薪2000+20～30%的提成+饭补+短信补助+业绩提升奖，一般都是5K-3W\r\n', 'vvf vvf', 'https://img3.doubanio.com/icon/u4820131-13.jpg', 'https://www.douban.com/people/4820131/', NULL, ''),
('85269079', '131104', '网拍模特', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/85269079', '2016-04-09 20:38:12.000000', '2016-12-18 01:26:17.000000', '<图片1>', '水煮鱼皇后一号', 'https://img3.doubanio.com/icon/u51636453-31.jpg', 'https://www.douban.com/people/51636453/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p54409120.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\"]'),
('85323051', '131104', '全职晚班招聘：东城区摩洛哥餐吧CUJU蹴鞠', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/85323051', '2016-04-11 16:46:29.000000', '2016-12-17 23:11:46.000000', '以下内容请仔细看哟~说明过的就不一一回复了~ \r\n\r\n餐厅的名字叫 –CUJU蹴鞠\r\n工作地点：东四北大街细管胡同28号（北京） \r\n工作时间：晚班（17:30-23:00看生意情况）每周一到周日 \r\n全职工资要和老板面谈 \r\n\r\n个人简历请发：cujubeijing@gmail.com（邮件名称请按 CUJU全职-姓名-联系方式 的格式发送，谢谢，如果没有按照这个格式的是不会打开看的~） \r\n\r\n餐吧位于东城区东四细管胡同，摩洛哥风味菜肴与自酿朗姆是其特色。蹴鞠有几百种朗姆酒，老板也经常自酿朗姆。蹴鞠建立的初衷是老板希望能有一个大家一起看球赛的地方。\r\n\r\n本店70%客人为外国人，要求英语口语良好。\r\n\r\n在这里要求你认真负责！！！没经验没关系，老板会手把手教你，但绝对要靠谱！！！\r\n\r\n会调酒最好，不会老板可以教。\r\n\r\n老板是摩洛哥人，老板人非常好，很健谈，朋友也很多，同事们也都很欢乐~但是有一点，不懂的问题要及时问，不要不懂装懂，不然犯了错误老板可能会很生气的~老板是很友好的一个人，如果你是因为不知道也不问擅自主张犯了错误，老板会很不很不喜欢的……所以，不懂的问题不用不好意思哦~大胆问出来~不懂要问！不懂要问！不懂一定要问出来！！-重要的事情说三遍-\r\n', 'Snow', 'https://img3.doubanio.com/icon/u38956054-5.jpg', 'https://www.douban.com/people/38956054/', NULL, ''),
('86498720', '262626', '青年汇主卧 青年汇租房  无隔断 朝阳大悦城主卧', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/86498720', '2016-05-17 23:59:07.000000', '2016-12-18 00:37:24.000000', '[2016.12.14更新]\n本人有一套青年汇两居室 无隔断 主卧独卫\n房子介绍：\n此房主卧是双人床 宜家大衣柜 卫生间干净 客厅宽敞大气明亮 家电齐全 \n我很少做饭厨房随便用 \n邻居要求：\n我从事动漫行业 如果你从事影视、教育或动漫相关行业 优先考虑 价格优惠\n\n我自己介绍：\n北京人 无不良嗜好 创业中有时候回来较晚\n交通吃住：\n小区交通很方便 走路10分钟到地铁6号线 挨着朝阳大悦城 吃饭购物看电影都ok\n去机场t3开车20分钟 进市区两条高速 通惠河与京通快速路。\n微信：mqbazhaoyu\n加微信注明：租房<图片10><图片14><图片13><图片11><图片4><图片5><图片6><图片7><图片8><图片9>', 'momo', 'https://img1.doubanio.com/icon/u4116194-7.jpg', 'https://www.douban.com/people/4116194/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p58845719.jpg?imageView2/2/q/60/w/500/h/165/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63680302.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63680294.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63680301.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p47456010.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p47456014.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p47456016.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p47456011.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p47456012.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p47456013.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\"]'),
('88405657', '262626', '(新帖)望京~精英家园，精装修3居2卫2厅(无隔断)，限女生', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/88405657', '2016-07-12 11:12:23.000000', '2016-12-18 00:58:39.000000', '望京~精英家园，精装修3居2卫2厅(无隔断)，限女生(只招爱干净的朋友)\n423630028微信\n精装修110㎡，家电齐全 ，随时入住。一间卧室空着，面西，客厅特别宽敞，阳台落地窗很大，光线好。\n①精英家园，西门子大厦附近。有很多公交站，还有14号线地铁阜通站，7-11、物美超市、购物中心、宜家、望京医院，悠乐汇。\n我经常出差在外，希望入住的小伙伴可以保持房间的洁净。\n②电热水器，空调，洗衣机，电冰箱，新备的55寸液晶智能电视，20兆光纤，厨房可做饭。没有蟑螂蚊虫。客厅连着阳台落地窗，明亮宽敞。\n欢迎爱干净不吸烟作息正常的小伙伴或者欢乐的小逗比们来入住。也希望住在这里的小伙伴彼此像亲友一样相互关照，能有家一样的感觉。\n③考虑到生活细节，想强调几点，希望是干净整洁的人，用完厨房拜托恢复原貌，保持房子的卫生整洁。\n④房租2500，交三押一，水电气网均摊(自取暖小区，壁挂炉费用摊在每个月电费里)，洗手间您和另一个女孩共用，所以只招女生。\n现在一间是一个女孩，另一间是我(我会偶尔在自己屋里画油画弹吉他但是绝不扰民)。特别希望招来一位同样有\"老友记\"情怀的室友，非常希望您是有素质又有生活情趣的欢乐小伙伴。\\(^o^)/。有意者请微信423630028\n可以视频看房。\n为此写了首歌送给未来入住的小伙伴，回头微信发。\n有意者请加微信423630028<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9><图片10><图片11><图片12>', '半老徐郎', 'https://img3.doubanio.com/icon/u148138880-4.jpg', 'https://www.douban.com/people/148138880/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p51258377.jpg?imageView2/2/q/60/w/500/h/891/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258364.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258365.jpg?imageView2/2/q/60/w/500/h/280/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258366.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258370.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258373.jpg?imageView2/2/q/60/w/500/h/891/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258375.jpg?imageView2/2/q/60/w/500/h/891/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258374.jpg?imageView2/2/q/60/w/500/h/280/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258378.jpg?imageView2/2/q/60/w/500/h/280/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258368.jpg?imageView2/2/q/60/w/500/h/607/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258367.jpg?imageView2/2/q/60/w/500/h/599/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51258369.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('88408899', '328200', '(新帖)望京~精英家园，精装修3居2卫2厅(无隔断)，限女生', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/88408899', '2016-07-12 12:43:54.000000', '2016-12-18 01:00:44.000000', '望京~精英家园，精装修3居2卫2厅(无隔断)，限女生(只招爱干净的朋友)\n423630028微信\n精装修110㎡，家电齐全 ，随时入住。一间卧室空着，面西，客厅特别宽敞，阳台落地窗很大，光线好。\n①精英家园，西门子大厦附近。有很多公交站，还有14号线地铁阜通站，7-11、物美超市、购物中心、宜家、望京医院，悠乐汇。\n我经常出差在外，希望入住的小伙伴可以保持房间的洁净。\n②电热水器，空调，洗衣机，电冰箱，新备的55寸液晶智能电视，20兆光纤，厨房可做饭。没有蟑螂蚊虫。客厅连着阳台落地窗，明亮宽敞。\n欢迎爱干净不吸烟作息正常的小伙伴或者欢乐的小逗比们来入住。也希望住在这里的小伙伴彼此像亲友一样相互关照，能有家一样的感觉。\n③考虑到生活细节，想强调几点，希望是干净整洁的人，用完厨房拜托恢复原貌，保持房子的卫生整洁。\n④房租2500，交三押一，水电气网均摊(自取暖小区，壁挂炉费用摊在每个月电费里)，洗手间您和另一个女孩共用，所以只招女生。\n现在一间是一个女孩，另一间是我(我会偶尔在自己屋里画油画弹吉他但是绝不扰民)。特别希望招来一位同样有\"老友记\"情怀的室友，非常希望您是有素质又有生活情趣的欢乐小伙伴。\\(^o^)/。有意者请微信423630028\n可以视频看房。\n为此写了首歌送给未来入住的小伙伴，回头微信发。\n有意者请加微信423630028<图片13><图片2><图片3><图片4><图片8><图片9><图片10><图片11><图片12>', '半老徐郎', 'https://img3.doubanio.com/icon/u148138880-4.jpg', 'https://www.douban.com/people/148138880/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p56083287.jpg?imageView2/2/q/60/w/500/h/891/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264713.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264714.jpg?imageView2/2/q/60/w/500/h/280/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264715.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264725.jpg?imageView2/2/q/60/w/500/h/280/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264726.jpg?imageView2/2/q/60/w/500/h/280/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264717.jpg?imageView2/2/q/60/w/500/h/607/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264716.jpg?imageView2/2/q/60/w/500/h/599/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p51264719.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('88450113', '131104', '修改简历，让它们变得更有范儿', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/88450113', '2016-07-13 14:00:00.000000', '2016-12-17 23:03:21.000000', '刚毕业那会的求职经历给我留下了很深刻的印象，投了大量的简历，收到的反馈却非常少，那时我只想要个面试机会，却迟迟得不到，心理上受到了巨大的挫败感；简历出了问题，我这块敲门砖还不够硬，敲不开企业的大门。 \r\n\r\n所以我想根据我这些年做HR的经验，帮助求职者打造一块份量十足的敲门砖，我身上所发生的事，希望能在别人身上尽量少的发生。 \r\n\r\n<图片1>\r\n<图片2>\r\n\r\n因为每天的修改精力有限，所以设定申请规则： \r\n1.每天只修改3份简历，根据申请时间先后进行修改，实时更新修改进度 \r\n2.关注我，回复此贴，然后豆油我即可~~', '多巴安', 'https://img3.doubanio.com/icon/u131986087-4.jpg', 'https://www.douban.com/people/131986087/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p54235885.jpg?imageView2/2/q/60/w/500/h/392/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54235896.jpg?imageView2/2/q/60/w/500/h/390/format/jpg\"]'),
('90094956', '328200', '望京北马泉营香江北岸通透大开间出租，拎包入住', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/90094956', '2016-08-25 13:25:46.000000', '2016-12-17 11:55:54.000000', '您知道吗！我们这里停车免费的！您知道吗！我们这里是民用水电！是的您没看错就是我们这个小区，望京北马泉营香江北岸通透大开间南向40平米开间出租，拎包入住，还有比这个更实惠的吗！采光好，双地铁，联系电：13716019059同微信<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8>', '18519525601', 'https://img3.doubanio.com/icon/u149933988-2.jpg', 'https://www.douban.com/people/149933988/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p54679930.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679931.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679920.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679929.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679928.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679932.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679919.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p54679921.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('90251121', '131104', '坐标雍和宫，科技媒体招活动策划执行相关的小伙伴了（全职、实习生）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/90251121', '2016-08-29 16:41:16.000000', '2016-12-18 00:11:27.000000', '2016/12/15 \r\n再次更新了，年底跳槽季，招聘季，欢迎简历各种砸过来，不过还是请先看一下下面的细节啊，不然你给我发个简历，我都不想回过去，浪费时间！\r\n\r\n\r\n－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－\r\n\r\n动点科技TechNode，中国最具国际影响力的科技新媒体，也是中国首家用中英双语面向全球推荐中国科技创业企业的创新孵化平台。动点科技举办的ChinaBang Awards年度创新盛典，旨在发掘和激励中国创新初创企业，是中国互联网创新力量的摇篮；作为国际顶尖科技媒体品牌TechCrunch的中国独家合作伙伴，动点科技已经将TechCrunch中国创新峰会打造成为中国最顶尖、最国际化的互联网盛会。动点科技旗下品牌还包括TNT品牌创业沙龙、十分之约、XFounder创始人俱乐部、NodeSpace加速器等。动点科技已经成为链接中国创业生态和国际创业生态最有公信力的平台之一。 \r\nTechNode, the leading tech media has the most international influence in China. It is also the first bilingually innovative - accelerating platform in China, which brings Chinese startups to the whole world. The ChinaBang Awards is an annually ceremony created by TechNode since 2011. The Awards contributes to concentrating and to digging China’s potential startups. TechNode is the officially exclusive operator of TechCrunch which is the top-level international tech media all over the world. TechNode has successfully organized TechCrunch international city event, it becomes the most international and top-level internet conference in China. TechNode also runs several sub-brands such as TNT(TechNode Touch), VC Meetup, XFounder Club and NodeSpace Accelerator. Nowadays TechNode has become one of the most credible platforms in China to bridge the Chinese entrepreneurial ecosystems with the oversea’s. \r\n\r\n--------------------------------------------------------------------------------------------------------------------------------------- \r\n好了，以上都是让你了解我们是什么公司的一个介绍，看完可以当作废话了，不管你是弯的还是直的，把事情做好就行，公司有最低下限的同事为你护航，也有海龟同事为你背书，更有老外同事很你聊聊海外那些事，下面的重点也麻烦你认真阅读一下，谢谢：\r\n\r\n如果你是一个想创业，想了解互联网行业的人加入我们，这个地方绝对值得推荐你来加入：\r\n我需要你的需求： \r\n1、不看重你的学历，因为这个只是一个门槛，我不希望你一只脚还没落地就挂掉了，但是你必须是个肯学习的人，重点是必须要会英文，有一定的沟通能力（我们常常和一些老外沟通，有些ABC也需要我们交流，不知道为什么他们回国后就不会说中文了）我也理解面试的感觉，我也会给你这个机会，只是我给你这个机会的同时希望你也珍惜面试的机会，能力有多少，聊聊就知道！ \r\n2、目前我们更多的偏向实习生，我们希望给在校生一点这样的机会，如果你希望是全职，只要够优秀，我也会要的，毕竟来了也是要配合的，所以给我一个了解你的机会。 \r\n3、在这里除了你的能力，其它的都不在乎，直的或弯的都不会怎么样，找好自己的定位很重要。也许你刚毕业，不知道你想要的是什么，如果你工作了一段时间之后，我希望你能找到你对自己的定位，告诉我你想要的是什么，什么都不想要（以为自己是圣人？）什么都想要（当自己是人民币？） \r\n4、每个月我们都可能会出差，希望你也能合理安排你的时间，并不一定每个城市都会安排给你，但是你有你的想法那当然最后，我希望你能独立完成一项任务，如果还是实习期和试用期，暂时不会安排你到处飞，不想浪费这样的时间和费用。 \r\n5、如果你是个善于聊天，有本事面试的时候让我闭嘴听你来介绍，那我现场直接拍板，不要我说的唾沫横飞你就嗯嗯啊啊的，这是一份需要沟通才有效率的工作。 \r\n6、别那么多心机，办公室的环境不需要心机婊，如果你的颜值够厉害，绝对也是加薪的一条捷径，不过能力还是需要的啊。 \r\n\r\n福利： \r\n1、不定期我们会有团建，年底会有年会，全国各地任你选。 \r\n2、这个就是最现实的环节了，实习阶段100/天，我可以给你安排3-6个月实习机会，你够牛X，我可以提前给你安排200-250/天的机会，反正工资是公司开，给你开多少，就看你有没有这个能力消化。如果你是全职，每年年底一次涨薪，这个是雷打不动的，涨多少就要看年底我怎么给你写报告了。 \r\n3、办公室可以养猫养狗，想怎么玩就怎么玩。 \r\n4、工作熟悉后你可以不坐班，平时10点上班6点下班，时间不是重点。 \r\n5、如果你是国安的球迷，想要到国安的门票或者见到队员，我不认为这是件事。 \r\n\r\n工作内容： \r\n1、每个月定期举办一场主题沙龙活动（主题策划，邀请嘉宾，现场执行，前期沟通） \r\n2、配合公司完成每年的3场大活动。 \r\n3、能够接受出差，我们面对的是全国的互联网公司，所以什么地方都有可能去，国外也是经常有的，所以…… \r\n4、了解互联网创业公司状况，挖掘新创业公司及最新资讯。 \r\n5、机械活是谁都能干的，我希望你能独立的做一件事，至少你办和活动要会写个策划吧！ \r\n\r\nBtw，不要随便给我发豆油问全职的待遇多高，你的能力我都不知道我难道给你说个天价和白菜价？直接过来大家沟通沟通，希望你是个直来直去的，什么都好说！大家时间都宝贵，相互尊重一下。 \r\n\r\n如果你觉得你很符合，欢迎发邮件xiaoming@technode.com给我，或者你有足够的勇气可以直接找我，机会是自己创造的，没什么不好意思的，不就是一份工作嘛（北京市东城区雍和宫青龙胡同35号和咖啡二层 小明） \r\n工作一开始不就是为了挣钱和梦想嘛，能力多大挣多少钱，反正工资是公司开，我当然希望你能更牛，你拿的越高，说不定我可以沾沾你的光。 btw，麻烦发邮件的时候告知你在下面留言的ID。谢谢。 \r\n\r\nLet me know if you have any question. \r\nEmail:xiaoming@technode.com. \r\nAddress: He coffee,No.35 Qinglong Hutong,Dongcheng District, Beijing', '小明', 'https://img3.doubanio.com/icon/u72259437-2.jpg', 'https://www.douban.com/people/72259437/', NULL, ''),
('92477380', '131104', '我们在缅甸等你~招储备干部', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92477380', '2016-10-29 14:22:35.000000', '2016-12-18 00:56:30.000000', '职位要求：(此岗位为手机事业部直招） \r\n1、2016届毕业生，本科及以上学历，市场销售等相关市场类专业，英语听说读写流利； \r\n2、性格开朗，有强烈进取心，团队意识强，身心健康无不良嗜好； \r\n3、有优秀独立思考及解决问题能力，执行力强； \r\n4、有优秀组织管理能力，能吃苦耐劳； \r\n5、协助市场部/销售部经理进行公司销售、推广等业务开展； \r\n6、主动学习、积累并掌握海外市场的人文条件、行业情况以及公司业务情况，迅速成长。 \r\n7、工作地点：缅甸。 \r\n\r\n工作内容： \r\n1、主动学习、积累并掌握海外市场的人文条件、行业情况以及公司业务情况，迅速成长； \r\n2、协助市场部/销售部经理进行公司销售、推广等业务开展。 \r\n\r\n待遇： \r\n1、根据个人成长情况，提供海外管理岗位发展机会； \r\n2、出国工作期间，每年2次假期，每次10天带薪回国休假。 \r\n3、薪资4-6K \r\n简历投递：1577185085@qq.com \r\n\r\n关于我们：http://www.kenbomobile.com/ \r\n雷华贸易有限公司成立于2000年，公司致力于国内自主知识产权的机动摩托车、商用汽车、手机出口贸易、石斛种植及深加工。 \r\n雷华贸易凭借强劲的综合实力进军缅甸手机业务，并成功使用缅甸当地已颇具影响力的品牌“KENBO”。KENBO与中国深圳领先的手机研发制造商共同进行研发制造，将凭借卓越的产品的创新设计和良好的服务体系做强细分市场手机业务。 \r\n\r\n\r\n写给你： \r\n在最美的年纪去最奋斗。 \r\n年轻，本来就需要释放自己，充满激情，努力奔跑。 \r\n蓦然回首，不是每一个机会都来得这么容易。 \r\n然而，我们等你~<图片1>', 'aaronxiaoyi', 'https://img3.doubanio.com/icon/u62415011-2.jpg', 'https://www.douban.com/people/62415011/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p59580203.jpg?imageView2/2/q/60/w/500/h/299/format/jpg\"]'),
('92512499', '262626', '10号线双井房东直租次卧限女生2600', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92512499', '2016-10-30 11:17:13.000000', '2016-12-18 02:33:36.000000', '看房加微信号： robbit001 主卧3200元带独立卫生间，，站内私信很少看哦~本人在国贸上班只需步行30分钟，走到地铁站也只需10分钟，交通便利，有300特8特3....楼下即是便宜新鲜的农贸市场，周末可以一起腐败一下，周围生活设施一应俱全，家里想得到的生活必备品齐全，只要收拾好自己的行装即可入住，(^__^)嘻嘻……只要你是正经滴~喜爱美食妹子就快点加入吧，可随时看房入住，出租的是正规次卧20多平左右，绝非隔断 谢绝男生打扰 谢绝情侣 谢绝两个妹子咨询打扰~可以随时微信咨询 。看房白天确定时间。房间是正规次卧~家居齐全 宜家桌子等 宜家 床是1.5大床房间~2600元~网费免费，只需均摊燃气水电，每个房间都是一个女孩子 ~套内2个卫生间~早上不会慌忙挤厕所~绝对高端大气上档次~哈哈 期望单身的你我在告别单身前共享冰箱电视沙发畅谈无阻。合租要求：绝不准带男生回家做客，安静，作息正常的妹子。《两人合租 情侣 中介勿扰》<图片1><图片2><图片3><图片4><图片5>', '陈大猫1987', 'https://img3.doubanio.com/icon/u83394215-5.jpg', 'https://www.douban.com/people/chenyishanmm/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p59648830.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59648855.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59648869.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59648883.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59648893.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('92513150', '328200', '10号线双井房东直租次卧限女生2600', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92513150', '2016-10-30 11:34:32.000000', '2016-12-18 01:54:01.000000', '看房加微信号：robbit001 主卧3200元带独立卫生间，站内私信很少看哦~本人在国贸上班只需步行30分钟，走到地铁站也只需10分钟，交通便利，有300特8特3....楼下即是便宜新鲜的农贸市场，周末可以一起腐败一下，周围生活设施一应俱全，家里想得到的生活必备品齐全，只要收拾好自己的行装即可入住，(^__^)嘻嘻……只要你是正经滴~喜爱美食妹子就快点加入吧，可随时看房入住，出租的是正规次卧20多平左右，绝非隔断 谢绝男生打扰 谢绝情侣 谢绝两个妹子咨询打扰~可以随时微信咨询 。看房白天确定时间。房间是正规次卧~家居齐全 宜家桌子等 宜家 床是1.5大床房间~2600一个月~网费免费，只需均摊燃气水电，每个房间都是一个女孩子 ~套内2个卫生间~早上不会慌忙挤厕所~绝对高端大气上档次~哈哈 期望单身的你我在告别单身前共享冰箱电视沙发畅谈无阻。合租要求：绝不准带男生回家做客，安静，作息正常的妹子。《两人合租 情侣 中介勿扰》<图片1><图片2><图片3><图片4><图片5>', '陈大猫1987', 'https://img3.doubanio.com/icon/u83394215-5.jpg', 'https://www.douban.com/people/chenyishanmm/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p59650003.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59650018.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59650028.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59650042.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59650051.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('92519434', '262626', '【北三环10号线安贞】（独卫,阳台）找一个善良聪明的妹子share主卧', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92519434', '2016-10-30 15:08:19.000000', '2016-12-18 01:02:03.000000', '地理位置特别特别好！详见下面的地理位置介绍～\n\n希望豆油我的妹子可以好好审题！是一间主卧，不是一人一间，希望来个聪明机灵点的妹子。\r不要有攻击性的那种，不要不爱收拾的那种，更不要私生活乱的。\n我现在有一个室友，11月初住进来的，但是刚住不久就换了工作，如果在公司附近租房会有住房补贴，所以现室友要搬到公司附近去，我需要找个新室友。【最短租期3个月】\r\n\r\n先介绍一下房屋情况： \r\n朝南，独卫带阳台，房屋很干净（可以往下看图）；房租4600RMB/月，每人2300/月，月付无押金，随时可入住。在阳台晒太阳真的非常舒服！！！阳台上有一个花架，一个置物架，一张小桌子，几盆植物（绿萝3盆，吊兰1盆，沙漠玫瑰1盆，粉色英菲尼迪1盆，心之水滴1盆，绣球1盆，生长中的薄荷1盆）。\r\n\r\n地理位置： \r\n北三环10号线安贞门，离地铁300米，地处东城、朝阳交界，只要是在城里（不去南边）的话，真的是到哪儿都近！！！国贸、三里屯、五道口、望京、东城区那一溜的景点都很近！！！ \r\n离环球贸易中心（UME电影院、BHG超市）500米； \r\n离奥体中心2.5km，如果热爱跑步的话可以选择跑来回； \r\n下楼就是元大都城垣遗址公园； \r\n1km内有3家三甲医院（安贞、中日友好、北京中医药大学第三附属医院）。 \r\n\r\n我： \r\n狮子座，没有男朋友，不带异性回家，有固定工作，会顾及别人的感受（不自私）； \r\n钢琴、吉他（入门而已）、烘焙、烹饪、 种花养草、手工（狮子座是不会有如此安静的人的，所以这只是我在家的日常哈哈哈哈哈哈哈哈）； \r\n如果你善良干净好相处，我会对你非常非常非常好； \r\n如果你自私邋遢难相处，咕~~(╯﹏╰)b没有如果，那我们可能也不会深入接触。 \r\n\r\n接下来介绍房子以及房间反映出的我的日常生活： \r\n<图片1><图片3><图片4><图片5><图片6><图片7><图片8><图片9>', 'bless', 'https://img1.doubanio.com/icon/u80081926-8.jpg', 'https://www.douban.com/people/80081926/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p59665336.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665360.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665381.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665398.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665431.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665445.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665448.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59665478.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\"]'),
('92551158', '328200', '个人出租【酒仙桥】电子城小区主卧带阳台2800', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92551158', '2016-10-31 10:27:10.000000', '2016-12-16 19:44:29.000000', '个人转租：酒仙桥电子城小区西区，主卧带阳台，2800元/月，合同到明年8月，到期合适可续租。希望你爱干净感兴趣的小伙伴私信联系吧！<图片1><图片2><图片4>', '=。=', 'https://img3.doubanio.com/icon/u45872062-14.jpg', 'https://www.douban.com/people/45872062/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p59727624.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59727642.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59727671.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('92618650', '328200', '个人转租 望京 精装修 超美的两居次卧 3500 公交地铁都近喔', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92618650', '2016-11-01 21:37:47.000000', '2016-12-17 16:57:25.000000', '超级好的精装修，标准2室无隔断，有大客厅喔。 房子从房东姐姐手里整租下来的（今年7月初刚续签了），现在次卧女生由于工作原因要离开北京了，所以把次卧转出来。\r\n\r\n小区是金隅丽港城，物管非常好。离SOHO，凯德mall都很近。楼下就有公交站，以及一个很棒的生活超市，蔬菜水果都很新鲜。\r\n\r\n现在随时可以入住，3500一个月 （这个小区的普通两居基本都是8000左右，但装修都赶不上我们这套， 妥妥的性价比）希望你是一个爱干净有稳定工作好相处的女生。\r\n\r\n联系我吧手机号：13681435982 ~\r\n\r\n房子是真正的居家装修，有客厅！有带沙发的客厅！吃完饭窝沙发上一块儿看看剧吃吃零食很舒服 ：） 不像普通出租房都没有正经客厅大家各回各房间。 冰箱,微波炉,电饭煲,都是我们自己买的新哒！ 房子刚请阿姨做过保洁，一直都很干净。\r\n\r\n望京这么棒的房子真的是少见了喔，快来做我的室友吧！<图片1><图片2><图片3>', '妞巴克和猴巴克', 'https://img3.doubanio.com/icon/u69759149-2.jpg', 'https://www.douban.com/people/69759149/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p59858450.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59858466.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p59858475.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('92815933', '131104', '【西餐厨师学徒】FIKAFIKA北欧生活咖啡馆，朝阳区龙湖长楹天街', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92815933', '2016-11-06 22:13:30.000000', '2016-12-17 23:53:20.000000', 'FIKAFIKA（飞咖）咖啡店是由几个在北欧留学、生活和工作过的青年合伙创立的，全国第一家连锁的北欧咖啡和时尚生活集合店，总部位于北京。目前北京龙湖长楹天街新店已于2016年11月1日开业。现邀请有梦想、爱北欧、专注追求卓越的年轻伙伴加入进来。 \r\n\r\n北欧地区位于欧洲北部，是瑞典、丹麦、挪威、芬兰和冰岛五国的统称，是世界上最富裕、最平等、生活品质最为优越的地区，是中产阶级生活方式的典范。FIKAFIKA的愿景正是为中国日益扩大的中产阶级群体提供高品质、个性化和有设计感的北欧品牌产品，在享受一杯咖啡的悠闲时光中，感受地道的北欧美食、用品和生活方式。 \r\n\r\n对于西餐厨师岗位，我们需要您： \r\nl、真正的热爱美食，以为食客呈现最完美的食物为己任； \r\n2、热爱学习，紧跟美食潮流，同时注重口味和摆盘颜值；  \r\n3、客户服务意识强，专注、认真、效率，有良好的职业素质； \r\n6、责任心强，具团队合作精神。 \r\n\r\n我们能提供： \r\n1、一个全北京最北欧的发展平台\r\n2、北欧美食的培训机会和施展舞台 \r\n2、有竞争力的薪酬体系 \r\n3、包吃住 \r\n4、商品内购优惠 \r\n\r\n工作地点：朝阳区龙湖长楹天街\r\n工作时间：一周6天，每天8-9小时\r\n有意者请来电联系，18612121277，王小姐<图片1><图片2><图片3><图片4>', 'maskoff', 'https://img3.doubanio.com/icon/u153475479-1.jpg', 'https://www.douban.com/people/FIKAFIKA/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p60279980.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60280122.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60280138.jpg?imageView2/2/q/60/w/500/h/749/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60280144.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\"]'),
('92910307', '131104', '高端瑜伽馆招聘！！ 北京四环内8家店就近分配~~', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/92910307', '2016-11-09 11:59:44.000000', '2016-12-17 23:49:32.000000', '<图片6>\r\n\r\n【卡莫瑜伽】 简介 \r\n\r\n      北京卡莫健身服务有限公司，成立于2013年，公司是集瑜伽、咖啡、花艺、生活优品于一身领先型健康理念服务公司，通过短短三年多的努力与发展，在各大商圈的高档商场内，设有高端瑜伽馆九家，拥有超过5000平方的习练中心，多间经过特别设计的专业瑜伽教室。高质量的教学、高品质的习练环境及无微不至贴心的服务，是我们遵循的原则。\r\n     卡莫瑜伽的老师团队与国际瑜伽教学水平同步，强大严谨的师资团队不仅拥有国际瑜伽认证证书，更有专业的印度瑜伽老师教授最传统正规的瑜伽课程，让你在最正统的瑜伽习练中平衡呼吸，放松身心，不知不觉塑造优美体型。\r\n      希望通过创造一个更接近瑜伽内涵的空间环境，即简单素朴，返璞归真，利用平实天然的材质，建立起与自然连接的通道，让我们从红尘繁华出离，感受自然的气息和能量，回归到自然的平静。卡莫瑜伽将是引领和打造我们未来生活方式的瑜伽馆。\r\n\r\n<图片1>\r\n\r\n<图片2>\r\n\r\n瑜伽顾问\r\n      如果你想成为我们的瑜伽顾问，我们对你的最大要求就是贫，好的沟通能力是顾问必备技能，你沟通能力棒，业绩突出，晋升空间自然一路飙升，只要你敢来，我们就敢给你足够的平台。\r\n\r\n \r\n <图片3>\r\n\r\n瑜伽前台\r\n     这个岗位是我们的窗口，除了形象气质佳，品貌端正外，我们更想要你有服务意识，有处理事物的能力，有良好的表达能力，当然御姐、萌妹子跟“瑜伽”更佩哦~\r\n \r\n<图片4>\r\n\r\n瑜伽教练\r\n    我希望你拥有一颗热爱瑜伽和生活的心。如果你对瑜伽的教学有自己独特的风格，并且愿意跟我们一起分享和学习瑜伽，那我们诚心的欢迎你的加入。\r\n \r\n\r\n\r\n如果你喜欢瑜伽行业，那我给你的建议就是请直接豆油或投递简历到我的邮箱316887163@qq.com 谢谢~\r\n\r\n关注我们！\r\n<图片5>\r\n', 'YES.lily', 'https://img3.doubanio.com/icon/u53317658-63.jpg', 'https://www.douban.com/people/53317658/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p60487073.jpg?imageView2/2/q/60/w/302/h/235/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60476638.jpg?imageView2/2/q/60/w/500/h/654/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60486746.jpg?imageView2/2/q/60/w/500/h/332/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60486796.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60486845.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60486962.jpg?imageView2/2/q/60/w/211/h/211/format/jpg\"]'),
('93095082', '131104', '【北京】【成都】【厉害了我的公司】无责任底薪＋高提成 招聘高端猎头顾问 每日更新', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93095082', '2016-11-14 18:56:22.000000', '2016-12-17 23:32:15.000000', '【招全职】【智邦】【猎头顾问】【13号线 柳芳】【无责任底薪+高提成】\n\n2016.12.16 我又来更新啦，最近我们又出去团建啦～滑雪⛷➕温泉♨➕杀人游戏 嗨到爆！快来加入我们吧～持续招聘中，一直到明年都会有招聘需求！什么时候看到都不晚哦～～<图片21><图片22><图片23><图片24><图片25>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n1205 成都成功入职一个小伙伴，好开心！！！！希望他出多多的offer 赚多多的钱\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~今天offer了一个小伙伴，期待她在我司的绽放！\n今天老大说，优秀的实习生我们也需要！！！\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n【招聘】我们是认真的\n先上官方版： \n智邦是国内领先的PS模式猎头公司，足够细分专注，目前成功布局北京，上海，广州，深圳，杭州，成都，青岛，硅谷。总部设立在北京。2015年成功帮助身价总计1亿5千万的候选人寻找到了更合适的工作机会。在智邦，我们推崇简单、务实的工作方式，在激情、欢乐的工作环境中积累和分享。在这里不仅是工作，我们投入时间和热情，让招聘变得更有价值，期待人才推动世界。 \n(猎头岗)我们希望你 \n1、想成功：有强烈的自我驱动力，知道自己想要获得什么，愿意承担什么 \n2、善思考：独立思考的能力和好奇心，探索未知，发现美好 \n3、有行动：思辨的执行力，结果导向，对目标足够忠诚 \n4、懂得爱：对人对世界的爱，懂得欣赏 \n加分项：有销售经验。 \nWhy智邦 \n1、一群无数次被挖但不愿意离开的精英伙伴，基情很重要：） \n2、从新人到百万顾问，正规军训练营，不断学习贯穿始终，成长很重要 \n3、10%-60%不等的诱惑提成，回报很重要 \n4、1年多次团队游，看看世界很重要 \n5、收获一帮才华与逗逼兼备的伙伴，朋友很重要 \nIf not you，who？ If not now，when？ \n\n\n接下来：我们说说自己的心里话\n我们是一猎头公司，是一家做PS模式的猎头公司，是互联网领域规模最大的猎头公司、是单一行业业绩最高的猎头公司。\n公司\n我们的模式：我们目前只做互联网行业，细分领域。 \n每一个职位，会有一名专职的顾问。这名顾问会熟悉这一个领域内最牛逼的人。 \n\n我们的业绩： 16年，垂直在一个领域的猎头公司，我敢说，业绩超过1000万的，全北京不超过10家。但是，我们公司，有两个业绩千万的团队！\n\n我们的文化：人才驱动世界 希望你简单、直接、高效。我们拒绝办公室政治，我们提倡团队协作、分享共赢。\n\n我们的过往：\n我们在14年nice只有16个人的时候就与其合作，第一个高端岗位就是我们提供的，最核心的技术团队我们搭建的，5个月从a轮一路飙到c轮，成为当时圈内的神话，一直陪伴到现在拟上市的规模，目前业内独树一帜； \n在去哪儿C轮还未上市时就开始合作，为去哪最核心的机票和酒店事业部提供了50名高端人才，获得最佳猎头服务商称号，直到现在上市继续合作 \n陪伴滴滴从天使轮到现在，当时它们的ceo程维，coo吴瑞亲自来我司洽谈职位，某核心事业部总经理也是经由我们推荐 \n。。。。。。 \n我们的工作状态\n我们会拜访每一家公司的创始人，增长见识和阅历，听听他们的传奇故事，你也可以观摩各式各样的不同风格的互联网公司。 \n我们会跟每一个候选人见面，了解他们的心路历程，帮他么提供更专业的职业规划，为他们推荐更多机会\n（顾问的上班的时间比较自由～自己合理安排好自己的时间） \n一家公司的发展，成败，也许都是你一手促成的\n试问还有什么，能比做这样的一件事更有成就感？ \n\n所以我们的水平，在业内目前不夸张的说，位列第一，竞争之大，我们一路饱受争议，听过各种声音说我司不好，加班多，压力大。 \n我就呵呵了。 \n要走不寻常路，就得有不寻常的毅力以及勇气。如果你要做一番与众不同的事业，本来就要付出比常人很多倍的艰辛。 \n\n我们的福利 \n1.小吃零食？呵呵 \n看到隔壁帖子的福利，什么零食小吃无限量提供等等，呵呵，不要这么小气好吗。 我们老大动不动就奖励带薪假，动不动一个礼拜只上3 4天班，这是每个月都有的福利，有的同事动不动拿到5天的带薪假，妈个鸡，羡慕的婊婊的。够意思了没! \n年会我们足足举行了三天，在蓝调庄园，玩了三天。并且是在周一周二，没有所谓的调休。然后紧接着我们又放了15天的假回家过年了。 \n我们公司是最爱放假的猎头公司，没有之一。 \n据说今年的年会在杭州呢~~超期待\n\n2.激励机制，不是仅仅奖一些苹果产品就没了 \n每几个月就会比赛奖iPad ，现金。。。各种。。。\nPS：10月，公司进行CCM&新增职位大赛\n前三名的同事人手一部iPhone7！！！！\n想要么？来拿吧\n我们人力部门是一位非常贴心的大美女，她每次选的礼物，都会根据每个人的喜好来挑。比如挑的香奈儿香水，凌美的钢笔，膳魔师的水杯，施华洛世奇水晶，拍立得，位置绝佳的演唱会门票等等 \n我们就是一个不管做什么，都能让你感觉到在用心的团队。 \n\n3.关于团建:海边？K歌？呵呵！ \n还看到隔壁贴团建去海边去K歌，我们也会，但会不会太俗套了一些？ \n我们一般是出境游，\n3月份我们踏足韩国，一周。\n4月份我们启程马来西亚，一周。\n第二季度我们启航日本，新疆～ 一周（PS：两个小伙伴，7月只工作了两周）\n第三季度，狮城新加坡，一周\n第四季度，我们大手笔，欧洲游哦~~~\n后面有二维码，可以看看哦～也许下一次就有你\n我们每年都有很多次出境游。当然前提是你够优秀。 \n如果是北京市内的话，我们上次是包的别墅轰趴馆，滑雪，还有温泉，户外BBQ ，农家乐CS什么的，山庄度假。。。太多啦。。。 \n一个好的制度是什么？ \n肯定你的努力成果，但不鼓励你加班 \n允许帮助同事，可绝对的权责分明 \n奖励优秀团队，淡化个人英雄主义 \n懂得放权，奖惩分明，乐于分享 \n智邦，是我呆过最不想走的公司。 \n当然，压力大也是事实 \n（压力大我好像强调了好多遍，确实是这样的。通往牛逼的路上，一般风景都不会很美丽。） \n“ 不怕别人优秀，就怕比你优秀的人还努力” \n这个压力，我想强调一下，不是来源于leader，相反，我们leader从来都不施压，是从来都不！nice到爆！这个压力，是来源于自己对自己的高要求，来源于身边的小伙伴的优秀，而且每天基本上都是我们leader催着赶我们走，这是实话。如果你身边都是一群自驱力极强的小伙伴，你根本无心闲下来。 \nPS：说到加班， 我们从不做低效率的事，我们非常讲究时间管理，不会让你感觉每天都是在虚度！！！\n跟一群优秀的人做事，不要猜疑，你走的每一步都是通往成功的路。 \n你是应届生？你没做过猎头？你没有资源？\n统统都没关系！我们会帮你！\n你想要的，时间和智邦都会给你！\nSO，简历发送至：elena.dai@iu-talents.com\n电话&微信：18500254939<图片20><图片10><图片11><图片12><图片13><图片14><图片15><图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9><图片18><图片17><图片16>', '娟娟的小幸运', 'https://img3.doubanio.com/icon/u142223149-2.jpg', 'https://www.douban.com/people/142223149/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63627221.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627216.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627222.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627219.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627217.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60902293.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894463.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894470.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894475.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894502.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894509.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894465.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894526.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894468.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894467.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894477.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894472.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894481.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894493.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894515.jpg?imageView2/2/q/60/w/500/h/750/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894518.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894495.jpg?imageView2/2/q/60/w/144/h/144/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894476.jpg?imageView2/2/q/60/w/149/h/148/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p60894471.jpg?imageView2/2/q/60/w/137/h/145/format/jpg\"]'),
('93214188', '131104', '【北京】【成都】【厉害了我的公司】【无责任底薪】招聘高端猎头顾问 每日更新', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93214188', '2016-11-17 18:18:06.000000', '2016-12-17 22:58:31.000000', '【招全职】【智邦】【猎头顾问】【13号线 柳芳】【无责任底薪+高提成】\n\n\n2016.12.14 我又来更新啦，最近我们又出去团建啦～滑雪⛷➕温泉♨➕杀人游戏 嗨到爆！快来加入我们吧～持续招聘中，一直到明年都会有招聘需求！什么时候看到都不晚哦～～～<图片30><图片31><图片32><图片33><图片34>~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n1205 成都成功入职一个小伙伴，好开心！！！！希望他出多多的offer 赚多多的钱\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n昨天我们团队突破了一千万的业绩！\n也许你不知道一千万是什么概念\n也许你觉得，一千万就牛了么？\n但是，可以告诉你的是，\n北京互联网的猎头，我们是第一个突破千万得团队！<图片29><图片26><图片27><图片28><图片25>盗了几张图，是智邦的小伙伴的有感而发！\n…………………………………………………………………\n【招聘】我们是认真的\n先上官方版： \n智邦是国内领先的PS模式猎头公司，足够细分专注，目前成功布局北京，上海，广州，深圳，杭州，成都，青岛，硅谷。总部设立在北京。2015年成功帮助身价总计1亿5千万的候选人寻找到了更合适的工作机会。在智邦，我们推崇简单、务实的工作方式，在激情、欢乐的工作环境中积累和分享。在这里不仅是工作，我们投入时间和热情，让招聘变得更有价值，期待人才推动世界。 \n(猎头岗)我们希望你 \n1、想成功：有强烈的自我驱动力，知道自己想要获得什么，愿意承担什么 \n2、善思考：独立思考的能力和好奇心，探索未知，发现美好 \n3、有行动：思辨的执行力，结果导向，对目标足够忠诚 \n4、懂得爱：对人对世界的爱，懂得欣赏 \n加分项：有销售经验。 \n\nWhy智邦 \n1、一群无数次被挖但不愿意离开的精英伙伴，基情很重要：） \n2、从新人到百万顾问，正规军训练营，不断学习贯穿始终，成长很重要 \n3、10%-60%不等的诱惑提成，回报很重要 \n4、1年多次团队游，看看世界很重要 \n5、收获一帮才华与逗逼兼备的伙伴，朋友很重要 \nIf not you，who？ If not now，when？ \n\n\n接下来：我们说说自己的心里话\n我们是一猎头公司，是一家做PS模式的猎头公司，是互联网领域规模最大的猎头公司、是单一行业业绩最高的猎头公司。\n\n公司\n我们的模式：我们目前只做互联网行业，细分领域。 \n每一个职位，会有一名专职的顾问。这名顾问会熟悉这一个领域内最牛逼的人。 \n我们的业绩： 16年，垂直在一个领域的猎头公司，我敢说，业绩超过1000万的，全北京不超过10家。但是，我们公司，有两个业绩千万的团队！\n\n我们的文化：人才驱动世界 希望你简单、直接、高效。我们拒绝办公室政治，我们提倡团队协作、分享共赢。\n\n我们的过往：\n我们在14年nice只有16个人的时候就与其合作，第一个高端岗位就是我们提供的，最核心的技术团队我们搭建的，5个月从a轮一路飙到c轮，成为当时圈内的神话，一直陪伴到现在拟上市的规模，目前业内独树一帜； \n在去哪儿C轮还未上市时就开始合作，为去哪最核心的机票和酒店事业部提供了50名高端人才，获得最佳猎头服务商称号，直到现在上市继续合作 \n陪伴滴滴从天使轮到现在，当时它们的ceo程维，coo吴瑞亲自来我司洽谈职位，某核心事业部总经理也是经由我们推荐 \n。。。。。。 \n\n我们的工作状态\n我们会拜访每一家公司的创始人，增长见识和阅历，听听他们的传奇故事，你也可以观摩各式各样的不同风格的互联网公司。 \n我们会跟每一个候选人见面，了解他们的心路历程，帮他么提供更专业的职业规划，为他们推荐更多机会\n（顾问的上班的时间比较自由～自己合理安排好自己的时间） \n一家公司的发展，成败，也许都是你一手促成的\n试问还有什么，能比做这样的一件事更有成就感？ \n所以我们的水平，在业内目前不夸张的说，位列第一，竞争之大，我们一路饱受争议，听过各种声音说我司不好，加班多，压力大。 \n我就呵呵了。 \n要走不寻常路，就得有不寻常的毅力以及勇气。如果你要做一番与众不同的事业，本来就要付出比常人很多倍的艰辛。 \n\n我们的福利 \n1.小吃零食？呵呵 \n看到隔壁帖子的福利，什么零食小吃无限量提供等等，呵呵，不要这么小气好吗。 我们老大动不动就奖励带薪假，动不动一个礼拜只上3 4天班，这是每个月都有的福利，有的同事动不动拿到5天的带薪假，妈个鸡，羡慕的婊婊的。够意思了没! \n年会我们足足举行了三天，在蓝调庄园，玩了三天。并且是在周一周二，没有所谓的调休。然后紧接着我们又放了15天的假回家过年了。 \n我们公司是最爱放假的猎头公司，没有之一。 \n据说今年的年会在杭州呢~~超期待\n\n2.激励机制，不是仅仅奖一些苹果产品就没了 \n每几个月就会比赛奖iPad ，现金。。。各种。。。\nPS：10月，公司进行CCM&新增职位大赛\n前三名的同事人手一部iPhone7！！！！\n想要么？来拿吧\n我们人力部门是一位非常贴心的大美女，她每次选的礼物，都会根据每个人的喜好来挑。比如挑的香奈儿香水，凌美的钢笔，膳魔师的水杯，施华洛世奇水晶，拍立得，位置绝佳的演唱会门票等等 \n我们就是一个不管做什么，都能让你感觉到在用心的团队。 \n\n\n3.关于团建:海边？K歌？呵呵！ \n还看到隔壁贴团建去海边去K歌，我们也会，但会不会太俗套了一些？ \n我们一般是出境游，\n3月份我们踏足韩国，一周。\n4月份我们启程马来西亚，一周。\n第二季度我们启航日本，新疆～ 一周（PS：两个小伙伴，7月只工作了两周）\n第三季度，狮城新加坡，一周\n第四季度，我们大手笔，欧洲游哦~~~\n\n后面有二维码，可以看看哦～也许下一次就有你\n我们每年都有很多次出境游。当然前提是你够优秀。 \n如果是北京市内的话，我们上次是包的别墅轰趴馆，滑雪，还有温泉，户外BBQ ，农家乐CS什么的，山庄度假。。。太多啦。。。 \n一个好的制度是什么？ \n肯定你的努力成果，但不鼓励你加班 \n允许帮助同事，可绝对的权责分明 \n奖励优秀团队，淡化个人英雄主义 \n懂得放权，奖惩分明，乐于分享 \n智邦，是我呆过最不想走的公司。 \n当然，压力大也是事实 \n（压力大我好像强调了好多遍，确实是这样的。通往牛逼的路上，一般风景都不会很美丽。） \n\n“ 不怕别人优秀，就怕比你优秀的人还努力” \n这个压力，我想强调一下，不是来源于leader，相反，我们leader从来都不施压，是从来都不！nice到爆！这个压力，是来源于自己对自己的高要求，来源于身边的小伙伴的优秀，而且每天基本上都是我们leader催着赶我们走，这是实话。如果你身边都是一群自驱力极强的小伙伴，你根本无心闲下来。 \nPS：说到加班， 我们从不做低效率的事，我们非常讲究时间管理，不会让你感觉每天都是在虚度！！！\n\n跟一群优秀的人做事，不要猜疑，你走的每一步都是通往成功的路。 \n你是应届生？你没做过猎头？你没有资源？\n统统都没关系！我们会帮你！\n你想要的，时间和智邦都会给你！\nSO，简历发送至：elena.dai@iu-talents.com\n电话&微信：18500254939<图片13><图片14><图片15><图片16><图片17><图片18><图片19><图片20><图片21><图片10><图片11><图片12><图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9><图片22><图片23><图片24>', '娟娟的小幸运', 'https://img3.doubanio.com/icon/u142223149-2.jpg', 'https://www.douban.com/people/142223149/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63627030.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627034.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627033.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627031.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63627028.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61678328.jpg?imageView2/2/q/60/w/500/h/610/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61678345.jpg?imageView2/2/q/60/w/500/h/650/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61678343.jpg?imageView2/2/q/60/w/500/h/610/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61678333.jpg?imageView2/2/q/60/w/500/h/689/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61678332.jpg?imageView2/2/q/60/w/500/h/810/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150619.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150659.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150680.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150687.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150709.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150579.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150558.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150611.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150665.jpg?imageView2/2/q/60/w/500/h/750/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150547.jpg?imageView2/2/q/60/w/500/h/403/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150584.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150609.jpg?imageView2/2/q/60/w/500/h/1381/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150599.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150649.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150622.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150668.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150676.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150684.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150706.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150693.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150707.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150677.jpg?imageView2/2/q/60/w/137/h/145/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150682.jpg?imageView2/2/q/60/w/149/h/148/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61150694.jpg?imageView2/2/q/60/w/144/h/144/format/jpg\"]'),
('93289745', '328200', '酒仙桥滨河一号小区出租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93289745', '2016-11-19 15:24:14.000000', '2016-12-16 19:45:41.000000', '滨河一号临近798艺术区，中关村电子科技园旁，因换新的办公地址，现次卧对外转租，费用可以谈。房间收拾下会非常漂亮，可以做饭，有洗衣机。<图片1><图片2><图片3><图片4>', '小满丶', 'https://img3.doubanio.com/icon/u75205719-1.jpg', 'https://www.douban.com/people/75205719/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p61309637.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61309638.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61309635.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61309636.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('93365479', '131104', '有没有业余想搞点副业的', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93365479', '2016-11-21 13:56:15.000000', '2016-12-18 01:15:23.000000', '觉得本职工作不太能当饭吃，整天琢磨搞点副业。然后就跟一个富二代朋友合作，从工厂内部搞到一些货源。全部是专柜品牌（ZARA,ONLY,拉夏,UGG,MOCO,LILY等。。。还有很多）原厂生产正品保证。一手货源。想找人一起合作。认真做的话起码可以等于工资。感兴趣的小伙伴可以留言、豆油、微信聊都欢迎。。', 'Pinkiie', 'https://img1.doubanio.com/icon/u94087662-8.jpg', 'https://www.douban.com/people/94087662/', NULL, '');
INSERT INTO `topic_topic` (`douban_id`, `group_id`, `title`, `url`, `create_time`, `update_time`, `content`, `author_name`, `author_avatar`, `author_url`, `location_id`, `photos`) VALUES
('93378527', '328200', '【个人转租，2300/月】-望京-花家地西里-两居的次卧（无隔断，临地铁10号线，限女生）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93378527', '2016-11-21 18:37:56.000000', '2016-12-17 20:40:46.000000', '因工作原因现转租望京花家地西里两居室中的次卧，主卧住着一个菇凉。\r\n\r\n居住环境：花家地西里一两居室；共用客厅，厨房，卫生间；家电包括冰箱，洗衣机，空调，微波炉，热水器等（基本保证你生活舒适，哈哈）；转租的是次卧，但是空间还是足够的之前还两个人一起住了两个月呢，空间可参考图片。\r\n\r\n地理位置：花家地西里小区，离太阳宫和酒仙桥都挺近的，小区门口（5分钟以内）分别有南湖西里，望京桥北，花家地西里等公交站，交通便利；5分钟路程有京客隆超市，10分钟路程有家乐福四元桥店（当然以上时间限制都是基于步行啦，哈哈）。\r\n\r\n租户限制：为了生活方便，限妹子一枚。\r\n\r\n租金：2300/每月，押一付三，（房子是主卧的妹子整租的，租期到明年7月，到时候还想租的话可以和房东协商）\r\n\r\n其他：有意租房请速联系我，（房租真心算是良心价啦），希望能尽快入住，最好本月底前\r\n\r\n联系方式：微信：warrior_zh, 也可扫图片中二维码 <图片1><图片2><图片3><图片4><图片5><图片6>', 'warrior_zhang', 'https://img3.doubanio.com/icon/u94070194-2.jpg', 'https://www.douban.com/people/94070194/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p61500178.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61500186.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61500189.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61500191.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61500209.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61500218.jpg?imageView2/2/q/60/w/430/h/430/format/jpg\"]'),
('93521554', '131104', '【市场专员】开招啦！！！', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93521554', '2016-11-24 16:39:18.000000', '2016-12-18 02:03:49.000000', '没有太多的工作内容，却有着丰厚的薪资待遇，走过路过千万不要错过。 \r\n市场小伙伴们需要多几个兄弟来壮大自己的队伍，而你就是拯救我的恩人。 \r\n你的工作任务： \r\n1、负责宣传品（手册、单页、海报等）思路框架设计及排版设计； \r\n2、配合组织市场推广活动； \r\n3、宣传软文及产品介绍文稿拟写； \r\n4、宣传资料（图片、视频）编辑； \r\n5、收集市场同行业相关信息，整理企业内部销售及市场数据并制作统计图表； \r\n6、领导交办的其他工作。 \r\n我们对你的要求： \r\n1、专科以上学历，熟练使用办公软件及常用的图片、视频编辑软件，有一定英语能力者优先考虑； \r\n2、思维活跃，具备较好的创新能力； \r\n3、沟通能力强，责任心及执行力强，工作态度积极主动； \r\n4、品行端正，愿意学习，有进取心。 \r\n我们独有优势： \r\n1、在完成自己工作的同时，可以接触自己感兴趣的岗位工作，寻找自己认可的职业方向； \r\n2、高频度的海外实践机会：业绩优秀的同事将享受公司付费的海外项目实践机会，项目开展所到国家均可成为海外实践目的地（每半年一次选拔，达标者均可获得实践机会）； \r\n3、人性化的工作氛围：和谐的同事关系、合理的工作时间安排、以人为本的管理理念，在这里，我们让工作成为一件快乐的事。\r\n有意向的小伙伴可以将简历发送至3195876181@qq.com,也可以豆油咨询我。\r\n感觉用简历砸我吧！！！！！！！！！！！！！！！！！！', '虚小虚', 'https://img3.doubanio.com/icon/u147389332-1.jpg', 'https://www.douban.com/people/147389332/', NULL, ''),
('93558927', '262626', '6号线褡裢坡地铁站 房东直租 正规次卧 1700 押一付一 水电网全包', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93558927', '2016-11-25 14:25:52.000000', '2016-12-18 02:53:24.000000', '中介勿扰，谢谢合作。\n============= 分割线 =============\n工作原因要换房子，帮房东发一个帖子。\n基本情况\n位置：英郡小区，11楼，电梯，北向。\n交通：距离地铁褡裢坡站600m，楼下就是白家楼桥东公交站，地铁一站地，还有小三轮。\n房价：1700（水电网全包）\n付款方式：押一付一\n签约对象：房东本人\n周边：附近超市饭馆学校都有。\n其他：目前算上我，房子里总共有6人，主卧两人有卫生间，另外4人共用一个卫生间，不用担心会有冲突，集中供暖。\n入住时间：随时可搬。\n要求：有正规工作，爱干净，不吵闹。\n============= 结束线 =============\r\n房东电话是：一三三八一三六三六六三\r\n我的电话是：一三六一二一八七九五四 <图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9>谢谢。\r\n============= 结束线 =============', '我的小号', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/154273475/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p61851593.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851617.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851548.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851574.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851591.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851628.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851558.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851575.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p61851579.jpg?imageView2/2/q/60/w/500/h/324/format/jpg\"]'),
('93673445', '328200', '望京西园一区正规一室一厅70平米降价了5000就租了', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93673445', '2016-11-27 11:01:42.000000', '2016-12-16 19:26:57.000000', '24小时看房电话18611550490\r\n\r\n地铁：15号线 望京东;15号线 望京;\r\n\r\n公交：望京花园东区||470; 471; 536||望京东园||470; 471; 536||望京西园三区北门||467; 470; 471||宏昌路||420; 421; 467; 614; 852; 944支; 975后沙峪; 991||望京花园||361; 420; 467; 614; 623; 852; 944支; 991||\r\n\r\n学校：北京中医药大学、北京经济干部管理学院、北京青年政治学院\r\n\r\n医院：凌和医院、惠兰医院、望京医院\r\n\r\n银行：招商银行、北京银行、工商银行、北京银行望京科技园支行、邮政储蓄银行东区支行\r\n\r\n超市：京客隆超市、沃尔玛超市、华润超市、乐天玛特超市、家乐福超市<图片1><图片2><图片3><图片4><图片5><图片6><图片7>电话18611550490', '人到中年', 'https://img3.doubanio.com/icon/u149931902-1.jpg', 'https://www.douban.com/people/149931902/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62049851.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62049876.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62049889.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62049900.jpg?imageView2/2/q/60/w/500/h/374/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62049904.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62049918.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62049933.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('93678832', '328200', '望京附近艺术区里的单身公寓，14、15两条地铁线【1480】', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93678832', '2016-11-27 12:52:51.000000', '2016-12-17 12:31:54.000000', '14号线善各庄，15号线马泉营。去望京很方便，南站14号线直达，离机场近。 \r\n个人不合租，找了很久才找到便宜的单身公寓。（当然1米5的大床可以住两个人） \r\n租金是1480，之间租的早，现在再租的话要贵200了。 \r\n20平方米左右，在何各庄村西口，紫雀家园，房东去年盖的新房子，很干净。 \r\n基本上不用买什么东西，有油烟机和热水器等家电（没洗衣机冰箱），家具床沙发写字台俱全，我住了一年半，该买的东西都买齐了。有需要的我可以帮你留下。 \r\n对面是汉语学校的楼，是我们这栋楼少有的视野好的房间。 \r\n\r\n附近有红砖美术馆，当时就看到红砖才决定在这里租房的，西餐很好吃，非常精致的私园，还有很多艺术区，大山子、草场地、中央美院都在周围，周末可以尽情看展，氛围挺好的。有超市两个，菜市场都有。 \r\n\r\n暖气费3个月945，水费一个月5块，电费1.5元一度，网费60，卫生费20，这些都要单独交，不包括1480里面。 \r\n因个人原因离开北京三个月左右的时间，所以想短租出去，长租可以商量。有意者与我联系。\r\n\r\n\r\n\r\n<图片1>', '橘色', 'https://img3.doubanio.com/icon/u1033816-33.jpg', 'https://www.douban.com/people/juse/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62061115.jpg?imageView2/2/q/60/w/500/h/402/format/jpg\"]'),
('93882982', '131104', '提供住宿，免费整形，文案、设计、视频小伙伴快到碗里来', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93882982', '2016-12-01 16:01:35.000000', '2016-12-18 01:59:27.000000', '【招聘】\r\n1.上班不自由，心里不爽的，请联系我。\r\n2.付出多回报少，心里憋屈的，请联系我。\r\n3.求发展，需要更大平台的，请联系我。\r\n4.想换新工作，增加些收入的，请联系我。\r\n5.想主宰自己命运，有大格局的请联系我。\r\n6.身边有这样的朋友也请你告诉他或她联系我，\r\n诚聘：\r\n1.文案策划若干\r\n2.设计师若干\r\n3.视频剪辑若干\r\n坐标：北京\r\n北京圣嘉新医疗美容医院～\r\n现在北京已开一家分院，总部在北京海淀区。\r\n正在筹划第二家分院。\r\n未来还会上市。\r\n\r\n来到这里你可以享受：\r\n早8:30晚5:30的上班时间\r\n五险，没有一金\r\n周末双休\r\n不定时聚餐旅游\r\n公司业绩分红\r\n员工免费整形\r\n每天见美女帅哥，还有机会见明星\r\n免费赴外培训\r\n公司上市即全员持股\r\n等等等等等等\r\n可百度一下，可同行打听\r\n整形绝对朝阳行业～\r\n有兴趣的小伙伴可豆邮我看公司及办公环境～\r\n欢迎自荐和推荐\r\n投简历邮箱：785423812@qq.com\r\n工资看能力，能力越高，收入越高，上不封顶！！！ <图片1>', '小昭的姐姐', 'https://img3.doubanio.com/icon/u146171355-5.jpg', 'https://www.douban.com/people/146171355/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62449886.jpg?imageView2/2/q/60/w/500/h/218/format/jpg\"]'),
('93887511', '262626', '通州北苑地铁旁 M5朗峰精装复式楼（限一位）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93887511', '2016-12-01 17:42:29.000000', '2016-12-18 00:32:35.000000', '<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9><图片10>\r\n\r\n距地铁漫步不到5分钟，周边有万达多个大商场。 \r\n房子情况：高档小区（似别墅风格），正规二居（无隔）二卫，四米多落地高客厅（复式楼）楼下面积58平（开放式厨房，餐厅，客厅，卫生间，储物间，阳台），楼上（二间卧室，卫生间）加上近110平。品牌整套家具（色调是白色） 住的人少也安静，爱干净生活方面也讲究，我（80后女）平时也会做饭。生活中爱交朋友，事少（不爱八卦，也不爱计较），相处起来自认为不难（嘿嘿）。 \r\n\r\n价格 2650/月（付六压一），2750/月（付三压一）能接受价格也符合你要求，符合住房要求的姑娘来看房。\n手机号：18701636652', '文森特', 'https://img3.doubanio.com/icon/u103981483-4.jpg', 'https://www.douban.com/people/103981483/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62458484.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458501.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458513.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458519.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458525.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458542.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458580.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458593.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458598.jpg?imageView2/2/q/60/w/500/h/372/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62458604.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('93894646', '328200', '望京-京旺家园-次卧2200可短租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93894646', '2016-12-01 21:15:02.000000', '2016-12-17 18:10:31.000000', '距离望京、大山子、酒仙桥及京密路都非常近，门口多条公交路线572、854直达地铁望京西站，418、688直达东直门，专116直达崔各庄地铁站15号线，另有946、359、641等线路多重选择。\n\n正规两居，出租次卧，主卧住1女，望京上班，性格好，易相处，要求：单身女性，朝九晚五，早晚作息正常规律,无不良嗜好，不养宠物，可随时入住。水电燃气网费均摊\n\n13699216671 <图片1>', '凤凤', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/153874817/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62474025.jpg?imageView2/2/q/60/w/500/h/675/format/jpg\"]'),
('93950076', '262626', '[求租]中关村清华北大周边求租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93950076', '2016-12-03 04:14:59.000000', '2016-12-18 00:35:38.000000', '本人男，在明年春节附近将要去中关村附近的中科院科研院所上班，现求租一个带独立卫生间的居室，或者有几个卧室共用一个厨房和卫生间的也可以，也就是和室友共用厨房和卫生间。我自己一个人住。希望有做地铁方便的房源，或者距离中关村不太远的（小于等于5km，可以骑车上下班），比如五道口六道口清华北大人大魏公村等等。预算大概2500元左右吧，计划春节前几天入住。如果有要出租或转租的可以豆邮我。\r\n\r\n谢谢。 ', '亨利二世', 'https://img3.doubanio.com/icon/u2541181-1.jpg', 'https://www.douban.com/people/2541181/', NULL, ''),
('93980306', '262626', '个人出租十里堡华堂旁边次卧一间距离国贸步行15分，绝对最低价', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/93980306', '2016-12-03 20:59:45.000000', '2016-12-18 03:05:38.000000', '房子在爱这城二期 4室1厅2卫 1/11层 次卧室出租价格1600/月 （价格最低了）\r\n集中供暖的，包物业/取暖。 \r\n水电燃气网费均摊，没有其他费用了 \r\n这是我整租下来的一套四居室 \r\n其中有一个朋友回家了，闲置一间。阳光充足 \r\n距离地铁八通线四惠站走路大约15分钟， \r\n距离朝阳路公交车站十里堡站走路大约5分钟。\r\n距离国贸步行15分,公交步行，骑车都很方便。 \r\n小区附近有华堂商场，生活很便利。 \r\n这里住的朋友都是正常上班族，基本都女孩，非常安全，没有乱七八糟的人。 \r\n下面有房子图片 \r\n我的电话：156-5263-4376 \r\n<图片1><图片2><图片3><图片4>', '阑珊', 'https://img1.doubanio.com/icon/u143831815-7.jpg', 'https://www.douban.com/people/143831815/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62647465.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62647469.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62647472.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62647473.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94121761', '328200', '东辛店村个人房屋转租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94121761', '2016-12-06 19:24:41.000000', '2016-12-15 20:04:03.000000', '因为工作变动，需要搬去海淀区，所以现在住的房子需要转租，租房合同什么的都有。房子是一人间，房租1200每月，水是20元每月，卫生费20、电费1.5一度...暖气费已经全交了...大约就这些。有需要的私聊', '流年', 'https://img3.doubanio.com/icon/u115787503-2.jpg', 'https://www.douban.com/people/115787503/', NULL, ''),
('94132644', '262626', '【关键词】朝阳大悦城，六号线，三居复式，主卧次卧，女生。感兴趣的点进来仔细看！', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94132644', '2016-12-06 22:57:01.000000', '2016-12-18 01:01:44.000000', '图在最后，看完文字才能看到图（微笑）\r\n因为合租的女孩有的买房了有的要嫁人，所以要重新招室友啦。房东一家常居国外，租住三年关系良好。\r\n\r\n【地址】朝阳大悦城旁青年路小区雅成一里，从房间直接可以看到大悦城\r\n【周边】朝阳大悦城购物方便就不用说了，大悦城北边小街有小吃，不做饭也不会饿到，大悦城楼下711和全时24小时营业，另外大悦城南边菜市场，便宜又新鲜，总而言之，你想买的基本上，步行十分钟，都能买到\r\n【交通】地铁六号线青年路站B口出，公交楼下126、450等青年路小区站，正门911,675,499等黄衫木店站，正好我们这栋有小门出去，所以身高一米六的我步行六七分钟能到地铁站。\r\n【房间状况】三居复式，楼下主卧（带阳台）+次卧+客厅+厨房+卫生间+露台。楼上卧室+平台+卫生间+露台。\r\n【人员】楼下次卧住着两个传媒行业女生，90年前后，东北人，基本早上九点出门晚上8点回家，不抽烟不喝酒不养宠物，偶尔做饭，但是……堪比案发现场……\r\n\r\n【待租房间及希望你】\r\n【楼下主卧】双人床，带阳台，阳面房间，需要和次卧的我们两个女生公用卫生间，所以希望是一个或者两个女生都可以。如果是一个人住的话床想换也可以商量。一人价2500元/月，二人价2800元/月，押一付三。\r\n\r\n【楼上卧室】上单下双的三人床，独立卫生间，阳面房间，带露台，希望是两个或者三个女生都可以。如果两个女生住的话想换床也是可以商量的。一人价3000元/月，二人价3200元/月，三人价3400元/月，押一付三。\r\n\r\n另外公费50元/月，包括卫生纸、洗衣粉。\r\n家里是燃气自供暖，所以大家大概要按人头凑人均800-1000元/年，还有水费、桶装水、电费，按实际均摊。\r\n价格随缘可小刀，如果你是一个安静的宅女，当然也可以，但是如果你是活泼的妹子，就更好啦，我们可以在客厅一起看剧一起做饭，希望能像老友记一样我们不仅住在一起还能成为挚友。\r\n当你们真正住进来的时候房间布置会变好很多，因为我们会深度清洁并且重新收拾下房间。\r\n\r\n入住时间12月25日，房租起算1月1日。看房时间近期随时。\r\n\r\n看房请加微信：13718970130 金\r\n\r\n<图片1><图片2><图片3><图片4><图片5>', '猪六六', 'https://img3.doubanio.com/icon/u50528444-2.jpg', 'https://www.douban.com/people/50528444/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p62943362.jpg?imageView2/2/q/60/w/500/h/750/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62943418.jpg?imageView2/2/q/60/w/500/h/1497/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62943518.jpg?imageView2/2/q/60/w/500/h/2220/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62943561.jpg?imageView2/2/q/60/w/497/h/677/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p62943629.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94163695', '131104', '【主播】招聘兼职签约主播（多平台）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94163695', '2016-12-07 14:19:49.000000', '2016-12-17 23:15:03.000000', '千帆直播、乐淘直播、奇秀直播、我秀直播招聘【签约兼职主播】 \n\n【薪资】1000-3000/月底薪+礼物提成。直播平台不同待遇不同，试播通过后即可获得底薪。虽然不多但零花钱什么的应该是妥妥的～（全职或者出类拔萃者可以详谈薪资咯） \n\n【详情】工作地点不限，主题不限（ 不要总想着卖肉- -）平均每天需播满2个小时即可（播的时长越长待遇自然越多），我们也会也简单培训，不需要你是女神，也不需要你是超级达人！！ \n\nbut \n会聊天加分! \n有气质加分! \n颜值高加分! \n有才艺加分! \n\n【联系方式】 \n手机/微信：13147111476（方便的话最好直接加微信联系） \n。 \n。 \n。 \n。 \n。 \n。 \n。 \n。 \n。 \n。 \n最后，如果你在一定是骗子。 \n我特么能把你拐买了不成？？？ \n自己是做经纪人的，刚起步，就这样咯！！！\n', 'Trinl', 'https://img3.doubanio.com/icon/u90682013-10.jpg', 'https://www.douban.com/people/90682013/', NULL, ''),
('94174527', '131104', '【北京招全职】’时尚娱乐内容创意公司', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94174527', '2016-12-07 17:37:06.000000', '2016-12-17 22:57:55.000000', '<图片1>', '贤一', 'https://img3.doubanio.com/icon/u136282395-2.jpg', 'https://www.douban.com/people/136282395/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63017999.jpg?imageView2/2/q/60/w/480/h/5000/format/jpg\"]'),
('94276932', '328200', '【急！转租无中介费】将台七棵树酒仙桥东坝小伙伴哟1500', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94276932', '2016-12-09 11:53:36.000000', '2016-12-15 17:22:26.000000', '地址；首开常青藤一期小区（东坝附近的）\r\n\r\n酒仙桥七棵树将台东坝的童鞋请优先考虑一下，绝对挥泪转！\r\n楼主换了实习。所以想转租。\r\n\r\n房子是签到明年七八月份。月租1500\r\n\r\n没有中介费！\r\n卫生费一年，我付了！中介费是一个月房租，我付了！网费一年，我付了!\r\n转租费500（泪目：这个咱两分摊一下250元好不好)\r\n没有取暖费！但水电燃气房子的人均摊\r\n\r\n春夏天的时候，落地窗外的绿叶子树随风摇的时候简直美爆了（请原谅我走资派的文艺心）\r\n\r\n电梯空调洗衣机冰箱厨房燃气一应俱全。楼下密码锁，很安全。\r\n\r\n房间有两米大床，小衣柜，桌椅和长沙发\r\n\r\n超低价，十五六平的阳隔，月租才1500，向阳处，阳光正好。地暖也很暖和。\r\n\r\n我买了一年的网费，剩下的都给你。\r\n\r\n宿舍用的小电热锅留给你（京东花了49买的）还有一些生活小件搬走麻烦的\r\n\r\n房子是主卧次卧单间阳隔暗隔。我住的是大阳隔。现在加我住了四家。水电燃气费都是屋子里的人均摊\r\n\r\n入住时间：下周末，当然着急的话可以再商量。\r\n\r\n交通状况：公交总站就在这儿，所以一堆公交车，而且基本有座。有431路 595路 特16 114路 571路 533路……\r\n\r\n有抄近小路，也可以买个自行车，骑车上班。\r\n\r\n大家都很好哟，也很礼貌。周末凑一起做个大餐看电影再美好不过了。\r\n\r\n有意加微信18842652501\r\n晚上拍的，白天阳光会照进来暖洋洋的\r\n<图片1><图片2><图片3><图片4>', '弓长', 'https://img3.doubanio.com/icon/u147711288-1.jpg', 'https://www.douban.com/people/147711288/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63326691.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63326692.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63326693.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63326694.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94304136', '262626', '一人800/月，两人1600/月', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94304136', '2016-12-09 22:18:05.000000', '2016-12-18 00:45:27.000000', '寻一人或者两人租。地点：丰台～科技园区～新村二里。无隔断，两居室主卧。<图片1><图片2><图片3><图片4><图片5>', 'lanyingyu', 'https://img3.doubanio.com/icon/u137498112-14.jpg', 'https://www.douban.com/people/137498112/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63252513.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63252516.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63252514.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63252515.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63252519.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94304870', '328200', '将台地铁站酒仙桥颐堤港798晶都国际主卧独卫可短租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94304870', '2016-12-09 22:34:12.000000', '2016-12-16 00:45:46.000000', 'part 1 小区\n晶都国际是酒仙桥区域的高档小区！20层的高楼电梯房，进出小区和单元门都必须要刷卡，很安全~\n小区人口密度少，设施齐全！！！便利店，水果店，洗衣店，口腔医院，中西医院，整形医院，还有颐堤港，久隆百货等大型商场～～～\n小区出门右转就公交站：401、402、408、418、420、621、656、659、677、688、701、909、946、955、973、976、988...好累，怎么这么多~\n公交站旁边就是14号将台地铁站~\n798，恒通，望京都近滴很~\n\nPart 2 房子\n房子是大三居，160平，没有隔断！！空间大，装修华丽，高大上的不要不要的，\n精装修、木地板，家电齐全！\n主卧大约有40平，还有私人储物间哦～\n拎包现在就可以入住！\n\nPart 3 关于money\n每月4900，押2付3~\n没有中介费，也没有取暖、物业、水电、燃气、网费……除了房租神马都没有！\n\nPart 4 关于你\n必须要爱干净！！爱干净！！爱干净！！欢迎有洁癖者！\n房子必须要求是光着脚走路~走哪儿坐哪儿^^\n绝对要干净~~~干净~~~拜托~~~\n\nPart 5 微信联系\n微信Wechat：17343074607<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9>', '金健1123', 'https://img3.doubanio.com/icon/u154844478-1.jpg', 'https://www.douban.com/people/154844478/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63253842.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253844.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253837.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253838.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253841.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253843.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253836.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253839.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63253840.jpg?imageView2/2/q/60/w/500/h/333/format/jpg\"]'),
('94311974', '131104', '星星团队承接北京各种临时活动', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94311974', '2016-12-10 01:00:55.000000', '2016-12-18 01:16:36.000000', '星星团队承接北京各种临时活动\n一：礼仪、模特、\n二：（会议、展会、路演、发布会等大小活动主持人）、\n三：活动协助、\n四：派单宣传、\n五：英语翻译\n六：人气暖场\n以上人员均可提供！\n微信:P016800\n期待与您的合作！', '欲语与雨', 'https://img1.doubanio.com/icon/u140208024-8.jpg', 'https://www.douban.com/people/140208024/', NULL, ''),
('94339377', '262626', '个人转租六号精装修独立单间 带大落地窗独立厨卫', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94339377', '2016-12-10 16:21:41.000000', '2016-12-18 00:53:25.000000', '6号线草房地铁站旁边，下楼之后5分钟之内就能走到，旁边有711便利店及各种小吃店铺，离长楹天街就一站路，吃完饭散步过去随意逛逛... \n\n小窝很舒服，最喜欢那个大大的落地窗，天气好的时候把窗帘拉开，能感受到阳光的温度.. \n\n房间布局和装修详见图片，都很新，很好用..宽带、空调、暖气、冰箱、衣柜书桌、热水器、油烟机、电磁炉、1.5M大床全部都有（床下面是设计的储物柜，能塞很多东西），拎包即可入住~ \n\n小窝是由一个Loft改的，不是合租，希望拥有私人空间的朋友不容错过，我当时自己也是挑了近大半个月才选中这里的，离地铁站特别近交通方便，附近的小吃呀超市什么的也一应俱全，关键是有独立的空间，不用迁就他人的生活习惯，房间的大小比较像一个主卧，适合一个人或者一对情侣居住... \n\n房间在11楼，在落地窗旁看风景的感觉如图（白天和夜晚），房东姐姐人特别好，不用中介费，直租的，到时候签约可以给你看房产证之类的.. \n\n嗯，介绍得差不多了，静待有缘人了... \n\n对了，是押二付二，2400元/月，房东姐姐说今年房租涨价了，2400一个月，能接受这个价格的，然后有意向的朋友可以加我微信songmanmanmm约聊或者私信我 这个回复太多看不到<图片10><图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8><图片9>', '本萌从不吃醋', 'https://img3.doubanio.com/icon/u125837094-4.jpg', 'https://www.douban.com/people/125837094/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63320232.jpg?imageView2/2/q/60/w/500/h/888/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320215.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320219.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320206.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320209.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320212.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320221.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320205.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320208.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63320213.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94355834', '328200', '【求租】大山子北窑地798艺术区', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94355834', '2016-12-10 23:07:45.000000', '2016-12-15 21:09:14.000000', '本人狮子女一枚，阳光，正义有点二，工作稳定，爱收拾屋子，心情好的时候会来点儿小情小调。\n现求租大山子北窑地798附近脚程不超过20分钟的房子。希望未来的室友你是个爱干净的妹纸，热爱生活，我们一起鲜活！\n价格2500左右，和房东直签。入住时间为1月中旬。<图片1>', '狮子小姐', 'https://img3.doubanio.com/icon/u40074071-3.jpg', 'https://www.douban.com/people/40074071/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63355213.jpg?imageView2/2/q/60/w/500/h/526/format/jpg\"]'),
('94372404', '328200', '酒仙桥 高家园 高质量次卧出租啦~', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94372404', '2016-12-11 10:05:25.000000', '2016-12-17 13:35:15.000000', '酒仙桥 高家园 高质量次卧出租啦~\n\n目前租的房在黄金位置的高家园小区！两居室的次卧2700一月， 无中介费无服务费，各种家具齐全，中上等装修，水电网燃气平摊，拧包入住啦~~主卧姐姐在这儿长租~人很好，工作规律，可以互相照顾~适合作息规律，享受生活的妹子~~~\n\n对面丽都饭店、皇冠假日、诺金等等一片高档酒店温柔环绕着这个依然充满活力的传统小区~因此在这里！以下：\n（1）美食！！！\n二十分钟以内既能轻松找到日料、西餐、潮汕牛肉锅、各国美食、有格调的小酒吧，也能非常非常便捷买菜做饭（小区里面有菜市场、每天早上门口还有一条新鲜蔬菜大早市）、下楼打包老边饺子、大盘鸡炒面、地道灌汤包！！！\n你萌知道吗……我第一次遇到一个小区里面就有三个地道日料店的啊！！！然鹅我现在也是能淡定地从停放豪华大奔的日料店门前走到旁边的新疆美食买拉条子的从容少女了（少女？？）\n（2）交通！！！\n公交：三分钟，走到小区门口就是公交站，平均3分钟一趟的各路大公交四通八达，办个公交卡简直不要太实惠啊！！！\n地铁：十分钟，步行可达14号线望京南站~高家园自己的地铁站也马上要开通惹~~坐上847或者多走两步随便一趟公交 两三站就能到三元桥地铁站 10号线、机场线分分钟就实现逃离北上广的小冲动小叛逆哦！\n（3）购物！！！\n对于广大妹妹来说 逛街是城市生活解压休闲的必备生活需求啦~步行二十五分钟、公交5分钟可到高大上的颐堤港购物中心！公交十五分钟比如世界运动工厂店不要太实惠！！公交二十分钟到四元桥宜家！家乐福！迪卡侬！凤凰汇！！！公交半小时朝阳大悦城！！！爱琴海！！！蓝色港湾！！！数不过来了……吃吃喝喝，逛逛买买，看看电影……有精力的妹子尽情发掘吧~~\n（4）精神食粮！！！\n读书：步行7分钟社科院单向街，高质量沙龙讲座随便蹭蹭蹭啊！！！\n看展：798尤伦斯二十分钟以内即可到达，时下最热展览最前沿思潮随时把握啊！！\n运动：对不起为了方便把它归为这类了……步行十分钟有个带泳池的健身会所年卡不到一千五！十五分钟步行至四得公园亲近大自然！！！带塑胶跑道，1公里一圈儿，乒乓球、羽毛球、篮球、足球想玩啥玩啥！！！\n\n欢迎妹子们豆油啦~', '公 文 文', 'https://img1.doubanio.com/icon/u44374363-7.jpg', 'https://www.douban.com/people/44374363/', NULL, ''),
('94375619', '262626', '潘家园松榆里小区转租主卧。也可整租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94375619', '2016-12-11 11:20:15.000000', '2016-12-18 02:08:04.000000', '转租 主卧、或者整租。 12月～2月、东三环潘家园松榆里小区、两室一厅一厨一卫、南侧主卧、高层有电梯、采光好、视野好、主卧25平米带阳台、有家具、有超大储物空间、直接可以入住、临近地铁14号线北工大西门站（步行10分钟）和地铁10号线潘家园地铁站（步行十几分钟）、交通便利、临近首都图书馆、首航超市、京客隆超市、九宫格火锅店、由于室友出国时间提前、急转、主卧（2300/月）限女生。 。整租（4300/月）男女不限。  注意⚠️：房子二月底到期 、到期可以续租。  有意者可扫我微信二维码。 或电话联系：18611930751<图片1><图片2><图片3><图片4><图片5><图片6><图片7>', 'one 蓉', 'https://img3.doubanio.com/icon/u154609421-1.jpg', 'https://www.douban.com/people/154609421/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63387811.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63387815.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63387797.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63387800.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63387808.jpg?imageView2/2/q/60/w/500/h/505/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63387813.jpg?imageView2/2/q/60/w/500/h/625/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63387789.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94375784', '328200', '望京新城转租卧室，没有中介费', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94375784', '2016-12-11 11:24:00.000000', '2016-12-16 23:19:18.000000', '房子在望京新城（望京西园四区），是四居室 主卧室有自己的卫生间，公用大客厅和餐厅，水电燃气费大家平摊 ，也没有其他费用！ \n租金2600每月 25号以后可以入住！\n看房的话可以提前打我电话13011041555或者加我微信（同步） 租期一年！<图片1><图片2><图片3><图片4>', 'C.', 'https://img3.doubanio.com/icon/u154903203-1.jpg', 'https://www.douban.com/people/154903203/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63388208.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63388215.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63388177.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63388201.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94394417', '262626', '急转【海淀黄庄】4&10号线-带阳台小次卧', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94394417', '2016-12-11 18:20:19.000000', '2016-12-18 01:29:41.000000', '海淀黄庄-知春里小区-小三居室-带阳台小次卧 \r\n\r\n房子是楼主整租的，楼主住大次卧，已经在这住了三年多。小次卧室友要去外地工作，着急转，随时可入住。小次卧比较小，所以只住得下一个人哦。主卧室友是在备考GRE，平时很安静但脑洞大超级好玩的一个男生，楼主做互联网运营，所以如果新室友也是这行业那是极好的（男性优先，程序员优先）。 \r\n\r\nPS:楼主超级喜欢做饭，厨具齐全，高压锅电饭锅豆浆机料理机面包机烤箱电饼铛苏打水机蒸锅炒锅炖锅砂锅塔吉锅铸铁锅珐琅锅平底锅啥都有，厨艺还算过得去，只要你洗碗，非常欢迎蹭饭。 \r\n\r\n楼主有一只汪星人，之前在马路边捡的流浪狗，养了大半年，现在快一岁了，准备一直养下去。性格亲人，只在草丛里解决生理问题。能看家，跟他住一起超级有安全感哇。但是怕狗狗的朋友就算啦。 \r\n\r\n电话：17090131039 中介就省点电话费吧 \r\n（平时晚上可以打电话，工作时间请短信，谢谢）\r\n\r\n\r\n*************************************************************************************** \r\n\r\n12.16更新，注明一下！！！这几天咨询的人太多了！！！\r\n第一，一直在顶贴说明房子还没找到合适的人！！！！\r\n第二，为什么没有放照片？？因为室友还没搬走，东西比较乱！！！\r\n第三，为什么没有价格？？好吧我承认这是故意的，这样可以有很多人询价顶贴！！！\r\n第四，楼主是妹纸，介意跟妹纸合租的就算了！！！\r\n第五，不接受年前的短租，我不是职业二房东，没有精力天天招租！！！\r\n第六，房价肯定是比同地段同装修的低，但是拿新小区和其他地段来对比我不同意！！！\r\n第七，没有收到豆油价格和照片的催我一下！！！再次不好意思一下楼主太忙了，经常顾不上！！！\r\n第八，最好还是非工作时间打电话或者豆油，上面留的电话关联的微信不常用，不要加！！！\r\n第九，押一付三！！！北京租房都是这样啊！！！不要讨价还价，我也是交给房东的啊！！！\r\n\r\n<图片1><图片2><图片3>', 'theodore', 'https://img3.doubanio.com/icon/u79074052-2.jpg', 'https://www.douban.com/people/79074052/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63425052.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63425270.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63425468.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94399690', '262626', '转租，劲松地铁口一居，3800亏本转租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94399690', '2016-12-11 20:38:58.000000', '2016-12-18 01:46:23.000000', '\r\n与室友撕逼，不想待下去！故便宜转租，还有7个月的租期，押一付三，押金我自掏腰包付800，只求急租！就走地铁口，到国贸亲测10min。欢迎豆油<图片4><图片5><图片6><图片7><图片8>', 'ks by ks', 'https://img1.doubanio.com/icon/u51263472-7.jpg', 'https://www.douban.com/people/chuchuni/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63926808.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63926812.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63926807.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63926809.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63926806.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94432066', '262626', '【无中介费急转】海淀学清路城华园·个人转租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94432066', '2016-12-12 15:49:06.000000', '2016-12-18 01:05:51.000000', '1，房屋信息：城花园小区，高楼层带电梯，朝南一居室大开间，独立阳台卫生间和厨房，60平米；\n2，租金：4900/月，押一付三；\n3，小区周边：学清路，楼下就是学知园公车站，通往五道口、西直门、清河等方便；一站公交车是15号线六道口地铁站；步行3分钟至圣熙八号，大型超市、电影院、药店、饭店齐全；\n4，室内设施：厨卫设施齐全，电视、空调、衣柜、书桌、沙发、茶几等齐全；\n5，转租情况：合同是到2017年7月18号，本人因为工作原因12月份要离开北京，所以欲转合同，因为是转租，无需中介费，搬进时间可商议；到期后可以直接续租\n6，电话：看房联系130-3113-5022；<图片1><图片2><图片7><图片3><图片4><图片5><图片8>', '金子', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/154932739/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63769668.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63769851.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64042239.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64042224.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64042235.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64042240.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64042557.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94432258', '262626', '【无中介费急转】海淀学清路城华园·个人转租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94432258', '2016-12-12 15:53:45.000000', '2016-12-18 01:02:01.000000', '1，房屋信息：城花园小区，高楼层带电梯，朝南一居室大开间，独立阳台卫生间和厨房，60平米；\n2，租金：4900/月，押一付三；\n3，小区周边：学清路，楼下就是学知园公车站，通往五道口、西直门、清河等方便；一站公交车是15号线六道口地铁站；步行3分钟至圣熙八号，大型超市、电影院、药店、饭店齐全；\n4，室内设施：厨卫设施齐全，电视、空调、衣柜、书桌、沙发、茶几等齐全；\n5，转租情况：合同是到2017年7月18号，本人因为工作原因12月份要离开北京，所以欲转合同，因为是转租，无需中介费，搬进时间可商议；到期可以直接续租\n6，电话：看房联系130-3113-5022；<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8>', '金子', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/154932739/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63498983.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045873.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045841.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045857.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045856.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045858.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045837.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64045846.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94445222', '328200', '望京南湖东园二区次卧2200可短租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94445222', '2016-12-12 21:29:08.000000', '2016-12-17 23:57:29.000000', '都说豆瓣上的小伙伴注重精神世界的感受，对自己住房的需求一定也是很高的，那这个房子一定可以满足你的需求啦！\n\n房子位于望京地铁站旁边，交通十分便利，出行十分方便，5分钟即到地铁站，周边公交站也有很多，附近有凯德茂，福码大厦，中福百货，家乐福，配套设施齐全，周围好吃的也特别多，你可以慢慢发现。\n\n下面来说说房子吧，里面有一张单人床，可以随意翻滚~还有一个写字台，可以用来办公或者学习，也可以是你的化妆台~还有一个大衣柜。卫生间特别干净和舒适，干湿分离。\n\n爱做饭的小伙伴，这里有一个干净温馨的厨房，可以在工作之余增添生活新色彩。\n\n房子是我直租的，押一付一，月房租2140元，无任何其他费用，房子靠谱有保障。现在是因为自己的原因要离开爱巢了，希望替它找到下一个爱主~\n\n如果还有其他想要了解和关注的，可以联系我，我的微信是:xiaoyi_ben<图片1><图片2><图片3><图片4>', '甩不掉的小清新', 'https://img3.doubanio.com/icon/u89910235-1.jpg', 'https://www.douban.com/people/89910235/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63525934.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63525947.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63525935.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63525944.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94463290', '262626', '1号线木樨地地铁站精装主卧便宜出租了，1750/月  可月付', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94463290', '2016-12-13 09:35:45.000000', '2016-12-18 01:23:32.000000', '<图片1><图片2><图片3>联系电话-微信13621163561', '^o^', 'https://img3.doubanio.com/icon/u145079392-13.jpg', 'https://www.douban.com/people/145079392/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63554384.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63554381.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63554385.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94496815', '262626', '【大兴旧宫】超赞一居室急租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94496815', '2016-12-13 21:55:24.000000', '2016-12-18 00:22:39.000000', '因为工作原因，我和男票不得不搬离现在的房子，房子是一居室，还带个小院子，超级温馨～房子家具和家电超级全～房子是跟房东直接租的，租期到明年六月，你可以只租到6月，也可以续租～房租每月3500，还带个小院子～房东人超好，很好说话～有兴趣的赶紧联系我呀～\n小区地点：大兴旧宫润龙家园～小区离地铁不远，旁边还有一个大的永辉，走几分钟就是一整条满是饭馆的街，超适合吃货～\n如果有兴趣的，随时与我们联系～电话17051011218，微信caixingmin<图片4><图片5><图片6><图片7><图片8><图片9><图片10><图片11><图片12><图片1><图片2><图片3>', '知北游', 'https://img3.doubanio.com/icon/u1717638-4.jpg', 'https://www.douban.com/people/1717638/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63622021.jpg?imageView2/2/q/60/w/500/h/228/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622013.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622028.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622030.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622033.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622038.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63621998.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622004.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622022.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622035.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63621999.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63622003.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94501222', '328200', '望京南湖东园二区精装次卧押一付一', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94501222', '2016-12-13 23:28:24.000000', '2016-12-17 23:57:12.000000', '都说豆瓣上的小伙伴注重精神世界的感受，对自己住房的需求一定也是很高的，那这个房子一定可以满足你的需求啦！\n\n房子位于望京地铁站旁边，交通十分便利，出行十分方便，5分钟即到地铁站，周边公交站也有很多，附近有凯德茂，福码大厦，中福百货，家乐福，配套设施齐全，周围好吃的也特别多，你可以慢慢发现。\n\n下面来说说房子吧，里面有一张大大的双人床，可以随意翻滚~还有一个双层写字台，可以用来办公或者学习，也可以是你的化妆台~还有一个大衣柜，空调也是新新哒，冬天制热，夏天制冷。卫生间特别干净和舒适，干湿分离，不会因为早上抢厕所而有冲突。\n\n爱做饭的小伙伴，这里有一个干净温馨的厨房，可以在工作之余增添生活新色彩。\n\n房子是蛋壳公寓直租的，押一付一，月房租3090元，无任何其他费用，房子靠谱有保障。现在是因为自己的原因要离开爱巢了，希望替它找到下一个爱主~\n\n如果还有其他想要了解和关注的，可以联系我，我的微信是:xiaoyi_ben<图片1><图片2><图片3><图片4><图片5><图片6><图片7>', '甩不掉的小清新', 'https://img3.doubanio.com/icon/u89910235-1.jpg', 'https://www.douban.com/people/89910235/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63629733.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63629728.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63629666.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63629648.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63629669.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63629698.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63629632.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94522236', '328200', '酒仙桥，大山子个人出租朝南主卧带阳台，两家住', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94522236', '2016-12-14 12:17:43.000000', '2016-12-15 22:07:18.000000', '驼房营南里8号楼(亮马嘉园对面)，朝南带阳台主卧，两家合租，无隔断。\r\n个人整租的两居室，已经在这住了四年了。\n房租为2500押一付三。100兆宽带50元/月，电费0.48元/度，水费5元/吨。\r\n我自己住次卧，2017年1月1日入住。\n因为自己不做饭，所以厨房是你们的。\n附近401/413/427/445公交车始发站，还有408/991/973等多辆公交车。东直门，三元桥，亮马桥，酒仙桥，望京都可直达\n租户要求：有稳定工作，社会关系简单。\n联系方式：132 617 八八五八八，电话，微信，短信，豆邮均可。', '越野   越跑', 'https://img3.doubanio.com/icon/u68280748-12.jpg', 'https://www.douban.com/people/68280748/', NULL, ''),
('94540811', '328200', '求租酒仙桥主卧或者一居室，或者求拼租两居室', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94540811', '2016-12-14 18:18:20.000000', '2016-12-17 17:04:45.000000', '酒仙桥地区求租主卧室或者一居室，希望装修好点，我是2个人，1月20日左右入住。\r\n时间和价格可以商量。\r\n或者如果有人也在找,愿意拼租一个两居室的话,也可以哈~\r\n我是正常上班族,希望一起租房子的人爱干净~\r\n联系方式 18701335088 微信', 'sqcky', 'https://img1.doubanio.com/icon/u48494206-8.jpg', 'https://www.douban.com/people/48494206/', NULL, ''),
('94549242', '262626', '距国贸地铁站500米 朝东阳光次卧一间', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94549242', '2016-12-14 21:28:19.000000', '2016-12-18 00:51:53.000000', '房子在国贸地铁站附近，大北宾馆旁边，距国贸站步行距离500米，大望路站850米。\r\n即日起可以看房，预计12月底就可以入住啦。\r\n房子是个小两居，卧室大，客厅小。\r\n两个卧室均朝东，阳光充足，窗外是北京电视台。\r\n主卧住着两个女孩，人都很好很nice，还爱打扫卫生。\r\n现在次卧找一个女生，希望你也爱干净，尽量不带陌生人回家过夜。\r\n房间我现在住着，图片如下，最后我搬走的时候房子会回复到最后一张图的状态。\r\n价格3000，押一付三，晚上及周末可以看房，可加微信563871184。\r\n\r\n这是房间现在的样子，大部分家具是我的\r\n<图片1><图片2><图片3><图片4><图片5>\r\n这是客厅、厨房、卫生间等公共区域\r\n<图片6><图片7><图片8><图片9><图片10>\r\n次卧最后可以还原回这个样子\r\n<图片11>', '小白', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/56389529/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63720658.jpg?imageView2/2/q/60/w/500/h/370/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63720690.jpg?imageView2/2/q/60/w/500/h/370/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63720731.jpg?imageView2/2/q/60/w/500/h/674/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63720808.jpg?imageView2/2/q/60/w/500/h/370/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63720843.jpg?imageView2/2/q/60/w/500/h/370/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63720996.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63721057.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63721109.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63721124.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63721156.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63721331.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94556021', '262626', '7号、14号线九龙山地铁站欧式小区地铁站5分钟房租1700', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94556021', '2016-12-14 23:43:58.000000', '2016-12-18 01:37:25.000000', '珠江帝景是欧式小区，距离地铁站5分钟的距离，小区很安全很干净，保安24小时值守，进出刷卡。\n其他房间是三个女孩，人都很好，爱干净，经常一起分享美食。分别做投资做媒体做演出的。\n房租每月1700，另生活费100，含水电网杂物生活费等。每月会请阿姨进行一次大扫除，也含在生活费里啦，再无其他费用，可以看合同哒<图片1><图片2><图片3><图片4><图片6><图片7>\n本人已经和房东定了一年，因工作地址变动，所以要搬走。\n你可以随时入住，我房间的桌子和衣架，自己买的一共400多，如果你需要的话可以商量着留给你哈\n电话&微信：15901042903', '松松松小儿', 'https://img3.doubanio.com/icon/u132783792-1.jpg', 'https://www.douban.com/people/132783792/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63733448.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63733464.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63733441.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63733442.jpg?imageView2/2/q/60/w/450/h/800/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63733476.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63733436.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94573819', '328200', '［无中介费］望京西园一区，一居室，全南向，大阳台，5300，拎包住', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94573819', '2016-12-15 11:15:26.000000', '2016-12-17 16:47:03.000000', '地铁口，望京站，西园一区，\n一居室，全南向带大阳台。\n房屋精装修，大双人床，液晶电视，拎包入住，真实照片附上，随时看房。\n无中介费，微信电话:15010062114，非诚勿扰，添加请备注西园一区租房\n\n<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8>', '刘杨', 'https://img3.doubanio.com/icon/u84848258-11.jpg', 'https://www.douban.com/people/84848258/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63763466.jpg?imageView2/2/q/60/w/500/h/889/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763458.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763464.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763465.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763455.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763460.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763459.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63763457.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94574387', '328200', '地铁14号线望京花园西区精装次卧18平米2000/月随时看房', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94574387', '2016-12-15 11:24:59.000000', '2016-12-15 18:15:00.000000', '【望京花园西区】 1、房子面积有18平米，挺大的，朝南向，白天一天都有阳光，房子在中高层，很安静，采光也好。 2、房子可以短租，也可以签一年，你也可以签两年。而且这房子装修还不错，性价比很高。 3、出门就有公交。地铁有东湖渠站。都特别方便，离SOHO、绿地中心、爱立信也不远，在望京工作的都可以选择这里。周边配套也都挺齐全的：电影院、超市、商场等等等等。 4、不限男女，一个人，情侣和夫妻也可以。 5、价格2000/月，要是你半年付，年付可以便宜。 6.房子适合望京内上班的人，因为出门有公交，离地铁站都特别近。家具家电都有，微波炉，冰箱，空调，衣柜，电脑桌，双人床，等等等等。可以看下面图片，都是真实图片，有意向租房的朋友联系我吧电话：13522339159或微信18611550490<图片1><图片2><图片3><图片4><图片5><图片6>', '靠谱一族', 'https://img3.doubanio.com/icon/u154577761-2.jpg', 'https://www.douban.com/people/154577761/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63764557.jpg?imageView2/2/q/60/w/500/h/888/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63764638.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63764645.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63764662.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63764668.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63764681.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94582180', '328200', '驼房营南里温馨次卧转租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94582180', '2016-12-15 14:05:23.000000', '2016-12-17 10:19:47.000000', '房子在驼房营南里小区4楼，是一个两室一厅的房子。\n总共住两户，主卧是一家人，次卧我一个人住，现在我要离开北京转租次卧。\n房子是从房东那租来的，房子设备条件很齐全，室友关系就像一家人，打扫也特别干净。完全没有出租房的感觉。\n次卧是2400一个月，水电煤均摊，大客厅共享。次卧大小应该在16平吧。押一付三。\n我下周晚些就会离开北京，理论上下周周末就可以入住。\n入住要求肯定是一个人，女孩子优先考虑。<图片1>\n', '瑞文', 'https://img3.doubanio.com/icon/u142193166-1.jpg', 'https://www.douban.com/people/142193166/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63779873.jpg?imageView2/2/q/60/w/500/h/889/format/jpg\"]'),
('94587533', '328200', '朝阳大悦城。欢迎大家进群', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94587533', '2016-12-15 15:46:33.000000', '2016-12-17 18:36:32.000000', '欢迎大家进我的微信群。妹子找妹子合租主卧每人1550。（可短租3个月）15330262731 青年路地铁3分钟。楼层有保洁打扫卫生 朝阳大悦城 高端小区。 也可以自己一个人租主卧3100<图片1><图片2>', '山山', 'https://img3.doubanio.com/icon/u153871756-1.jpg', 'https://www.douban.com/people/153871756/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63790107.jpg?imageView2/2/q/60/w/500/h/888/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63790105.jpg?imageView2/2/q/60/w/500/h/888/format/jpg\"]'),
('94590623', '262626', '六道口单间1600元非中介', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94590623', '2016-12-15 16:51:36.000000', '2016-12-18 00:30:59.000000', '小次卧房间如下图，八平米左右。整套一主卧一次卧一小次卧，现小次卧招租，近期可入住。\n地址：学院路14号院\n可做饭，小区内基本是老人家，日常较安静。距离六道口地铁站200米，北边有圣熙八号购物中心，西边林大，东边农大，楼下就是静淑苑公交站。\n房租：1600每月，押一付二\n下图是我入住前真实的样子，现已经布置得较为温馨完善。门后还有一小储物间。\n有意者请私信。<图片1>', '超', 'https://img3.doubanio.com/icon/u102974596-1.jpg', 'https://www.douban.com/people/102974596/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63796256.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94628621', '131104', '迷你考拉仓——我们需要你！', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94628621', '2016-12-16 11:21:05.000000', '2016-12-18 00:31:11.000000', '迷你考拉仓（北京）仓储服务有限公司始创于2011年11月，是全国首家智能私人物品存储公司，目前已在北京、上海、深圳、香港、杭州开设分公司，覆盖人群超过70万。\n\n公司创始人Sean为哈佛研究生毕业，曾就职于世界顶尖咨询公司麦肯锡，成立迷你考拉仓旨在帮助都市人群在繁拥的生活环境中拥有一个除家之外的私人存储空间，解决释放、存储、珍藏、出行寄存等需求。\n\n北京总部位于朝阳区霞光里8号承冀诚大厦（三元桥地铁站附近），目前正在招聘视频客服（不涉及销售）、城市助理以及招聘专员，无论是否有经验都可以自荐，部分岗位也接受实习生。\n\n待遇:\n1.客服分早晚班，早班8:30-17:30，晚班12:30-21:30，双休，部门内可协调；\n助理和招聘专员上班时间9:00-18:00，周末双休；\n2.试用期开始缴纳五险一金；\n3.试用期薪资不打折；\n4.带薪年假10天起。\n\n欢迎大家主动咨询，可回复留言或私信给我，或者直接投递简历至huanhuan.wang@koalaministorage.com。', '果冻布丁', 'https://img3.doubanio.com/icon/u150334306-5.jpg', 'https://www.douban.com/people/150334306/', NULL, ''),
('94630833', '262626', '10、14号线 次卧 限女生', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94630833', '2016-12-16 12:06:01.000000', '2016-12-18 02:07:15.000000', '因为闺蜜要回老家，不在北京发展。所以急将次卧出租（仅限女生，我们都是女孩子）。房子是三室一厅，现在三个女孩住，居住环境非常棒，并且我们也很好相处。周围有两家大型商超，还有一个物美价廉的菜市场，家里所有的家用电器应有尽有（洗衣机、微波炉、电烤箱、火锅炉、冰箱、空调···）对于吃货的女孩子很是方便。另外，我们还养了两只猫，非常可爱，所以也希望你喜欢小动物。对了，距离首都图书馆只需要步行15分钟哈，周末没事可以去那里借书看。闲的时候，大家也可以一起做饭，喝酒聊天。距离潘家园地铁15分钟路程，十里河地铁10分钟路程。···\n出租要求：\n1.房租：房租交三押一，2500元/月（含网费），每季度末的28号交付\n2.杂费：水电费及燃气费按人头平摊\n3.作息正常的上班族或自由职业者\n4.爱干净且活泼开朗、脾气好、不斤斤计较、不事儿妈、不玻璃心\n小诺，18612702025<图片1><图片2><图片3><图片4><图片5><图片6><图片7><图片8>', 'Saro', 'https://img3.doubanio.com/icon/u155056708-1.jpg', 'https://www.douban.com/people/155056708/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63867236.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867260.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867151.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867220.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867226.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867287.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867199.jpg?imageView2/2/q/60/w/500/h/500/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63867219.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94630933', '328200', '❤️望京soho，阳光大2居，地铁14/15/13号线, 拎包入住❤️', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94630933', '2016-12-16 12:07:57.000000', '2016-12-17 08:00:17.000000', '1）中介勿扰；能满足房租、租户要求的，再加微信联系。 \r\n2）微信：GotoMars2020, 请注明：豆瓣。 \r\n3）无中介费，整租，7800/月。 \r\n4）望京中心位置 -- 望京新城，正规精装大2居，近100平，极其干净整洁，无隔断，格局方正，大客厅大阳台，极宽敞明亮；家具家电齐全，市政供暖，管道热水，拎包入住。 \r\n5）出行非常便利 -- 小区紧邻广顺北大街，出门就是地铁 14号线阜通站/15号线望京站、地铁13号线也不远；公交车有运通101、运通104、运通107、运通110、404路、420路、421路、467路、470路、471路、130路、131路、132路、538路、567路、621路、629路、682路、707路、852路、975路、976路、991路等；交通线路众多，四通八达，近机场高速、京承高速等。 \r\n6）工作生活非常便利 -- 距望京Soho、利星行广场、戴姆勒大厦、卡特彼勒大厦步行1km；合生麒麟社、方恒国际中心、望京国际商业中心、国际竹藤大厦、绿地、浦项、摩托罗拉大厦、西门子大厦、望京大厦、798等都在步行范围内。生活配套完善，应有尽有，满足一切生活需求，距沃尔玛、家乐福、凯德MALL步行500m；望京菜市场、物美超市、乐天玛特、欧尚、世界百货、华联商场、宜家等都在周边；餐厅、超市、银行、医院、学校、娱乐场所、日常所需就在身边，步行可直达，既锻炼身体又保护环境。 \r\n7）小区内有北京市朝阳区重点 -- 望京幼儿园、白家庄小学分校、直升首都师范大学附属实验中学、派位的中学有陈经伦分校，九十四中，八十中 \r\n8）租户要求 -- 爱惜房子，尊重爱护他人物品，遵守契约，有稳定工作/收入，有教养素质高，守信诚实自律，懂礼讲理有担当，遵纪守法，性格温和，健康卫生干净整洁，有良好习惯，能遵守“用后即恢复原状”原则，无不良嗜好，不在家抽烟喝酒及party等 \r\n9）租户无宠物 \r\n10）房主直租，长租优先！', 'Bird', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/148040511/', NULL, ''),
('94642393', '328200', '【酒仙桥 出租】泰华滨河苑2居室', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94642393', '2016-12-16 15:54:38.000000', '2016-12-16 15:54:38.000000', '113平米，2室2厅1卫1厨房。\r\n\r\n目前房间已彻底腾空并清洁，适合家庭/公司职员租住。如需家具电器可以提出要求，业主给配。\r\n\r\n有意请私信，非诚勿扰。谢谢！', 'Fade to black', 'https://img3.doubanio.com/icon/u1982540-45.jpg', 'https://www.douban.com/people/Mythfields/', NULL, '');
INSERT INTO `topic_topic` (`douban_id`, `group_id`, `title`, `url`, `create_time`, `update_time`, `content`, `author_name`, `author_avatar`, `author_url`, `location_id`, `photos`) VALUES
('94642891', '328200', '寻求颐堤港购物广场附近的租房', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94642891', '2016-12-16 16:04:38.000000', '2016-12-17 14:22:27.000000', '男生，在读研究生，预计1月16日开始在戴姆勒实习，工作位置在颐堤港购物广场，不在戴姆勒大厦。\r\n1.可接受单间1500内，求合租\r\n2.每周住5天，其余时间回校。\r\n3. 租期从明年1月到明年6月末', '寿阳小生', 'https://img3.doubanio.com/icon/u68550118-1.jpg', 'https://www.douban.com/people/68550118/', NULL, ''),
('94646679', '131104', '【招兼职】招聘数名 淘客微信群管理员 学生优先', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94646679', '2016-12-16 17:38:08.000000', '2016-12-18 01:02:30.000000', '我们是做淘客的 \r\n需要多名微信群管理员 \r\n工作时间自由 自己安排 \r\n不影响上课 陪对象等 \r\n\r\n工作内容为 微信群的日常维护 \r\n主要是保持群员数量 有空刷微信时帮忙解答一些问题 \r\n\r\n底薪不高 每月一千 \r\n暂无提成 \r\n奖金300-1000 (看表现) \r\n\r\n有意向的请联系 \r\n陈生 18672897245(微信同电话) \r\n\r\nps：部分不幸罹患被害妄想症的同学请不要联系我 \r\n我这儿滔滔不绝的解释工作内容 你那边一言不发把我拉黑 \r\n你真的明白我说的啥吗你就拉黑我 你打声招呼再拉啊拜托 \r\n并不是什么能发财的好工作 只是一份需要费点小神儿的生活费来源 \r\n别搞得我跟吃了苍蝇似的难受好吗 醉了\r\n\r\n另外我再强调一下\r\n没！\r\n有！\r\n什！\r\n么！\r\n什！\r\n么！\r\n鬼！\r\n会！\r\n费！！！！\r\n\r\n不收费 不收费 不收 ！！！！！', '情懆桑.', 'https://img5.doubanio.com/icon/u53464398-66.jpg', 'https://www.douban.com/people/Sean_368/', NULL, ''),
('94650929', '262626', '地铁大望路平房主卧，水电暖网齐全', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94650929', '2016-12-16 19:47:21.000000', '2016-12-18 02:22:00.000000', '平房主卧水电暖宽带齐全，大望路地铁附近\r\n1、平房，主卧，明窗，朝南，房间内有床、衣柜，沙发，桌椅，宽带，水电暖等，基础设施齐全，拎包入住即可\r\n2、平房小院，房东亲和，邻里友爱，希望新的入住者有正规合法工作，朝九晚五，爱干净，无烟瘾嗜酒等不良嗜好\r\n3、室内水电暖宽带齐全，无厨房不能做饭，室内无厕所，院内公厕 \r\n4、交通方便，出门步行五分钟即到八王坟车站、红庙车站、大望路地铁站1号线14号线，步行十五分钟有地铁6号线10号线 \r\n5、步行十分钟有新光天地、新世界百货、万达影院、沃尔玛超市、家乐福超市、万惠商场、京客隆超市、京隆堂药店、999药店、同仁堂大药房等 。\r\n步行十分钟可到SOHO现代城、华贸中心，蓝堡中心，阳光100，万达广场等\r\n6、房租押一付三，1350元/月，优惠4000元/仨月，全包水电暖宽带 \r\n7、限男生1人居住，拖家带口勿扰，有呼朋唤友饮酒聚会习惯者勿扰！\r\n8、中介勿扰！短租勿扰！非诚勿扰！没看清上述描述者勿扰！\r\n9联系13126567340马老师', '我的地儿我做主', 'https://img1.doubanio.com/icon/u49060548-7.jpg', 'https://www.douban.com/people/49060548/', NULL, ''),
('94657050', '262626', '南三环内 个人出租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94657050', '2016-12-16 22:12:19.000000', '2016-12-18 01:21:45.000000', '\n房子位于南三环内 开阳里八区，距离北京南站仅700米，两居➕阳隔，精装，家电齐全，集体供暖，现租阳隔。\n\n房子原本是房东一家自己住，后来换房出租，所以干净干净干净！(真心觉得房子干净好重要好重要好重要！）\n\n阳隔朝南，早上的太阳真美好啊啊啊\n\n屋里现在住的都是女生，所以希望你也是女生哈哈哈哈哈哈哈，然后爱干净讲卫生，有良好的个人习惯呀呀呀呀呀呀呀\n\n喜欢的妹子们可以私信或者联系电话18911977600\n<图片1><图片2><图片3><图片4><图片5>', '豆瓣酱11', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/155096529/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63921180.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63921182.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63921181.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63921183.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63921184.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94690494', '131104', '【高薪诚聘】销售行政', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94690494', '2016-12-17 13:15:56.000000', '2016-12-17 23:45:41.000000', '海淀（清河附近）招销售行政一名。\n\n主要负责订单处理、付款核算、处理报价、合同管理、票据对接等日常商务工作。\n\n早九晚六，周末双休。\n带薪年假，缴纳社保。\n年底双薪，月薪5K起。\n\n*不用外出跑客户、不用电话推销*\n\n要求有会计、出纳、商务、或销售等相关工作经验～～\n大专以上学历～～\n计算机基本操作～～\n\n公司成立于2003年。是国内首家专业从事HP、Oracle IBM、DELL服务器及存储平台的供货商。同时也是集整机、配件销售与维修于一体的高科技公司。经过多年艰苦创业，现以成为覆盖全国且具有一定规模的IT服务经济实体。\n\n简历接收邮箱：583234585@qq.com', '晗大喵不困', 'https://img3.doubanio.com/icon/u4224097-15.jpg', 'https://www.douban.com/people/qupid/', NULL, ''),
('94695379', '328200', '望京南湖中园二区正规次卧找女室友', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94695379', '2016-12-17 14:35:21.000000', '2016-12-17 14:35:21.000000', '\n地址在南湖中园二区，找女孩子合租次卧，正规两居室，在三层，无隔断，都是上班族，而且无不良嗜好，家具家电齐全，网100兆，无暖气费，周边京客隆超市，中福，旺角都在这边，多路公交车就在小区门口，房子现在直接可以拎包入住的！价钱1500一个月，付款方式为押一付三，我们是跟业主直接租的，没有中介费，是长租，有意向长期租住的同志请加微信13522494311<图片1><图片2><图片3><图片4><图片5><图片6><图片7>', '小洋人', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/154833846/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p63984597.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63984622.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63984577.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63984581.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63984590.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63984608.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p63984576.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94696954', '131104', '礼仪兼职要交押金吗？', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94696954', '2016-12-17 15:01:37.000000', '2016-12-18 00:04:54.000000', '今天去朝阳国际首城C座541面试礼仪兼职，让我交200押金，说是礼仪服装费，谁去过，靠谱吗？', 'First', 'https://img3.doubanio.com/icon/u154725399-1.jpg', 'https://www.douban.com/people/154725399/', NULL, ''),
('94718540', '262626', '丰台南路地铁口300精装两居中的一居出租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94718540', '2016-12-17 21:39:49.000000', '2016-12-18 00:30:11.000000', '主卧带阳台，20平，2100,微信号13366032796', 'zzz', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/154785478/', NULL, ''),
('94720509', '131104', 'App刷热度，时薪3O～4O之间，豆', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94720509', '2016-12-17 22:11:37.000000', '2016-12-17 23:27:33.000000', 'App刷热度，招 募 中，\n时薪30～40之间，\n自己做自己提现，完全自主的模式，\n有意者，豆✌️', '艾薇儿', 'https://img1.doubanio.com/icon/u8887766-57.jpg', 'https://www.douban.com/people/hixiu/', NULL, ''),
('94721436', '262626', '6号线黄渠 / 近地铁 / 温馨房间个人转租 近朝阳大悦城 免中介费', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94721436', '2016-12-17 22:26:19.000000', '2016-12-18 02:28:19.000000', '概况*\n个人工作原因转租，苹果派小区，距地铁最近的一栋，步行四分钟亲测，6号线更是开得嗷嗷快，去哪里上班都很方便\n房间*\n三居两卫，次卧，暖气好，住起来很舒服，家具美腻灯光温油适合拍美照；\n2300/月，押一付三，当时付了中介费转租就不要了，北京租房价格一直在涨，这个价格相比房间舒适程度已经很合适了\n室友*\n人都超好，不事儿，很好相处，和他们同居一年多要搬走了真挺舍不得的，希望你也是个好相处的盆友～ \n上图，1月15日前后可入住，可豆油，也可加微信看房，随时约起：15840040784<图片1><图片2><图片3><图片4><图片5><图片6>', '梦萦', 'https://img3.doubanio.com/icon/u151639796-1.jpg', 'https://www.douban.com/people/151639796/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p64031223.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031235.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031220.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031229.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031237.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031226.jpg?imageView2/2/q/60/w/500/h/375/format/jpg\"]'),
('94721893', '262626', '回龙观 紫金新干线四区 转租次卧1500', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94721893', '2016-12-17 22:32:44.000000', '2016-12-18 00:23:46.000000', '房间情况；三家合住 主卧和另外一个次卧住的是女生 她们当时一起租的房子都是今年刚毕业参加工作的，很热情好相处，屋内设施很齐全，双人床、木衣柜、电脑桌加书架、台灯、壁画、垃圾桶、冰箱、洗衣机、空调都有，我住的时候都是新的！房间面积15m，南向，很温馨！我剩下租期到明年6月5号，我已搬走，随时入住！\r\n 小区交通：门口就有公交车和摆渡车、班车接送到地铁，楼下也有摩拜单车，走路到地铁的话，本人平常都是20分钟内！ \r\n供暖方式：集体供暖，不用掏取暖费，屋内很热乎！ \r\n有意的朋友可以可以联系我看房 \r\n本人微信：ljy823381476 <图片1><图片2><图片3><图片4>', '小四川', 'https://img3.doubanio.com/icon/u155163143-1.jpg', 'https://www.douban.com/people/155163143/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p64031842.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031866.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031883.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64031897.jpg?imageView2/2/q/60/w/500/h/666/format/jpg\"]'),
('94728549', '131104', '招3个做咖啡的【好人】（全职/兼职咖啡馆服务员/储备咖啡师）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94728549', '2016-12-18 00:06:07.000000', '2016-12-18 00:06:07.000000', '聘【好人】-咖啡馆兼职', '蜗牛公益', 'https://img3.doubanio.com/icon/u70815423-4.jpg', 'https://www.douban.com/people/70815423/', NULL, ''),
('94729375', '262626', '[求租]求租两居室或者有三居室想找两个室友的也可以找我', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94729375', '2016-12-18 00:17:07.000000', '2016-12-18 01:25:53.000000', '我和朋友两个互联网工作的妹纸求租一个两居室，或者有人有三居室想找两个室友合租的也可以找我们。\n1、综合考虑以及实地考察后我们希望房子位置距离地铁步行不超过15分钟，芍药居、惠新西街北口、惠新西街南口、大屯里东路地铁站附近\n2、对房子要求是要干净干净（有电梯当然更好），必备家电家具齐全，房子长期出租（避免随时被房东收房的情况），和房东签合同\n3、预算:两居预算在5000-5400，三居合租的话租住其中两间房间的预算参照两居预算\n4、如果是合租三居室的话，我们俩住一起快两年了，很好相处\n\n联系方式QQ:3227585731，备注豆瓣租房\n', 'sola', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/46518005/', NULL, ''),
('94730818', '262626', '天通苑 西三区 小次卧转租', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94730818', '2016-12-18 00:39:18.000000', '2016-12-18 00:39:18.000000', '<图片1><图片2><图片3> 天通苑西三区 小次卧转租 距离天通苑地铁站步行五分钟 附近交通生活便利 还有半年租期 押一付三\n18811510994   微信 yrxguitar', 'starlight', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/154445681/', NULL, '[\"https://qnmob.doubanio.com/view/group_topic/large/public/p64044010.jpg?imageView2/2/q/60/w/500/h/889/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64044009.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\", \"https://qnmob.doubanio.com/view/group_topic/large/public/p64044008.jpg?imageView2/2/q/60/w/500/h/281/format/jpg\"]'),
('94735028', '262626', '求租磁器口，崇文门，大望路附近的一室户', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94735028', '2016-12-18 01:52:40.000000', '2016-12-18 01:52:40.000000', '求租磁器口，崇文门，大望路附近的一室户，小区新一点的，装修好一点的。', 'sunxyz', 'https://img1.doubanio.com/icon/user_normal.jpg', 'https://www.douban.com/people/65292722/', NULL, ''),
('94735243', '131104', '分享给发招聘信息和找工作的朋友们（无广告）', 'https://www.douban.com/doubanapp/dispatch?uri=/group/topic/94735243', '2016-12-18 01:57:17.000000', '2016-12-18 01:57:17.000000', '近期自己也在发一些招聘帖在招人，首先声明，自己不是老板，也不是HR，只是想更直接的了解到之后来我部门的同事是什么样子的。\r\n\r\n放心全文没有任何广告。\r\n\r\n再招聘需求期间会经常关注自己发的帖子，同时也会关注其它博主发的帖子，我相信所有帖子都会有人在下面留言，比如：\r\n－－－－请问招全职吗？或者招实习生吗？\r\n我只想说，你在找工作看到别人写了一大堆的信息的时候，能不能多花几分钟好好的看清楚里面的招聘信息，都已经写了很清楚，要招什么样的人，你还要再问一遍，你是有多无聊。基本上主动找工作的，都是一些新人，因为做为有社会经验的工作者，我不认为在后期还需要在平台或者贴吧来找工作了，不对猎头挖就是已经谈好了下家，唯一我会认为还需要自己投简历的，也许就是夸行业了。在同行业，想换工作去投简历的方法是一个很愚蠢的方法，每个人工作态度和处事的方法不一样，这些仅个人观点。\r\n\r\n－－－－请问公司是做什么的啊？这个工作需要做什么啊？\r\n送给各种楼主： 除部分楼主没有标明公司名称的以外，全文没有任何透露公司信息的，我想说你是有毛病吗？Top500也没觉得一个公司信息这么不值得见人啊，我作为一个求职者，不仅要了解工作职责是什么，我还想了解这是一家什么公司啊。弄的这个神秘，当自己开的是福尔摩斯啊。\r\n送给求职者：（除没有标明公司信息以外）你找个工作，是不是先去维基百科或者百度一下这个公司的信息吧，你要找个工作，还想让对方给你回复一下这些没有营养的问题，别人闲的再无聊还不如花这个时间出去抽根烟，补个妆。自己想找工作，简历都是海投，一点问题都没有，作为过来人，我当初也这样做过，但是当你问别人问题的时候，是不是先应该了解一下对方的基本信息呢，不要问一些问题让对方都想把白眼翻到后脑勺了，知己知彼你才有更多的谈资啊。\r\n\r\n－－－－很有兴趣，但是一时半会不在本地，会在某某某个时间来本地，或者在某个时间我才会去离职，不知道那个时候还需不需要人。\r\n你不是说废话吗？当公司是自己开的呢？你想什么时候去就什么去啊，还要到等你处理好你自己的事，让别人把职位给你保留不成。每次看到这样的回复，内心真是呵呵一下，我真是觉得如果你的能力真牛X，不要担心找不到你喜欢的工作，如果你的能力都不行，还想吃到碗里看到锅里，当这些HR或者招聘的人没见过人才啊！\r\n\r\n多的例子也不举了，就想简单的和大家聊聊而已。\r\n\r\n我自己也是一个打工者，也知道这些资本家在剥削大家的剩余价值和劳动力，但是中国最不缺的就是人和钱，缺的只是人才，在你还没有成为人才之前，任何企业都会花到同样的待遇或者更低的待遇找到一个和你一样能力的人或者能力更强的人。在贴吧是不可能找到国企和央企这样铁饭碗的工作，我所指的不是编制内的工作，所以企业都是希望招到的这个人能做N件事，直到最后独当一面，能够带团队来做更多的事情。只要进入到企业，从那一天起，你手上捧到不是金饭碗就是破饭碗，你想你的生活质量变好的，就让它变成金饭碗，反之。。。。。。我们不希望我们手上捧的是个便当。\r\n大半夜也是睡不着，找个地方用文字来发泄一下，不喜忽喷，所有观点仅代表个人看法，和任何人或者任何事无关。因为自己也是从一个求职者过来的，也看到社会上的这一切，任何人都是一个个体，在初期，不要想着对方要给你多少钱你才干，先找一个喜欢的事去干，干好了再找老板要钱，不给的话，只要你有能力，还怕找不到你想要的待遇吗？人都是有所求的，给你开任何待遇你都会觉得少，那是现在这个社会让我们慢慢的不安于现状，也慢慢的不满足于现状，特别是对一个刚刚毕业的大学生，看到身边这么多毕业的大学生，工作的伙伴，大家都是从懵懂无知到最后大家眼中的有经验的人，说的不好听的就是老油条。想当年我毕业的时候在面试的时候也遇到了很多挫折，因为很多事情都是需要经历过才知道，今天我所说的问题，是不需要经历你就应该要知道的，这些都是一些无脑的问题。好了，我也无聊的敲了这么半天的键盘了，大家晚安。\r\n', '小明', 'https://img3.doubanio.com/icon/u72259437-2.jpg', 'https://www.douban.com/people/72259437/', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `topic_group`
--
ALTER TABLE `topic_group`
  ADD PRIMARY KEY (`douban_id`);

--
-- Indexes for table `topic_location`
--
ALTER TABLE `topic_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_topic`
--
ALTER TABLE `topic_topic`
  ADD PRIMARY KEY (`douban_id`),
  ADD KEY `topic_topic_location_id_c3e1a85c_fk_topic_location_id` (`location_id`),
  ADD KEY `topic_topic_d5d3db17` (`title`),
  ADD KEY `topic_topic_572d4e42` (`url`),
  ADD KEY `topic_topic_b16a6265` (`create_time`),
  ADD KEY `topic_topic_e0df5a99` (`update_time`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `topic_location`
--
ALTER TABLE `topic_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 限制导出的表
--

--
-- 限制表 `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 限制表 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 限制表 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 限制表 `topic_topic`
--
ALTER TABLE `topic_topic`
  ADD CONSTRAINT `topic_topic_location_id_c3e1a85c_fk_topic_location_id` FOREIGN KEY (`location_id`) REFERENCES `topic_location` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
