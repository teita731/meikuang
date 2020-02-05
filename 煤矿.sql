-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器OS:                        Win32
-- HeidiSQL 版本:                  10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for meikuang
DROP DATABASE IF EXISTS `meikuang`;
CREATE DATABASE IF NOT EXISTS `meikuang` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `meikuang`;

-- Dumping structure for table meikuang.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员表';

-- Dumping data for table meikuang.admin: ~2 rows (大约)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `loginfailure`, `logintime`, `createtime`, `updatetime`, `token`, `status`) VALUES
	(1, 'admin', 'Admin', '075eaec83636846f51c152f29b98a2fd', 's4f3', '/assets/img/avatar.png', 'admin@fastadmin.net', 0, 1575365643, 1492186163, 1575365643, '01a32a8d-fce9-4132-abb0-f9d94264a285', 'normal'),
	(2, 'fast', '小小黑', 'aea1e8ff300dd8881578bf7359ac897c', 'h2dMpK', '/assets/img/avatar.png', '1132515857@qq.com', 0, NULL, 1567501749, 1567501749, '', 'normal');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table meikuang.admin_log
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE IF NOT EXISTS `admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员日志表';

-- Dumping data for table meikuang.admin_log: ~174 rows (大约)
DELETE FROM `admin_log`;
/*!40000 ALTER TABLE `admin_log` DISABLE KEYS */;
INSERT INTO `admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
	(1, 1, 'admin', '/admin/product/index', '产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494335),
	(2, 1, 'admin', '/admin/product/index', '产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494337),
	(3, 1, 'admin', '/admin/product/index', '产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494342),
	(4, 1, 'admin', '/admin/product/index', '产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494344),
	(5, 1, 'admin', '/admin/newtest/add?dialog=1', '测试管理 添加', '{"dialog":"1","row":{"name":"\\u6d4b\\u8bd55","weigh":"0","product_id":"1","status":"1"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494358),
	(6, 1, 'admin', '/admin/ajax/weigh', '', '{"ids":"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,85,94","changeid":"85","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule","pk":"id"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494437),
	(7, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494437),
	(8, 1, 'admin', '/admin/ajax/weigh', '', '{"ids":"1,2,6,7,8,3,5,9,10,11,12,4,66,67,73,79,85,94,86,87,88,89,90,91,92,93","changeid":"94","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule","pk":"id"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494453),
	(9, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494454),
	(10, 1, 'admin', '/admin/auth/rule/multi/ids/86', '', '{"action":"","ids":"86","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494542),
	(11, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494542),
	(12, 1, 'admin', '/admin/auth/rule/multi/ids/88', '', '{"action":"","ids":"88","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494570),
	(13, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494571),
	(14, 1, 'admin', '/admin/auth/rule/multi/ids/87', '', '{"action":"","ids":"87","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494589),
	(15, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494589),
	(16, 1, 'admin', '/admin/product/index', '产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567494901),
	(17, 1, 'admin', '/admin/tests/product/index', 'tests 产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567495548),
	(18, 1, 'admin', '/admin/tests/product/index', 'tests 产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567495549),
	(19, 1, 'admin', '/admin/tests/product/index', 'tests 产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567495550),
	(20, 1, 'admin', '/admin/tests/product/index', 'tests 产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567495570),
	(21, 1, 'admin', '/admin/tests/product/index', 'tests 产品管理 查看', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567495715),
	(22, 1, 'admin', '/admin/auth/rule/multi/ids/16', '', '{"action":"","ids":"16","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500146),
	(23, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500146),
	(24, 1, 'admin', '/admin/auth/rule/multi/ids/13', '', '{"action":"","ids":"13","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500163),
	(25, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500163),
	(26, 1, 'admin', '/admin/auth/rule/multi/ids/14', '', '{"action":"","ids":"14","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500166),
	(27, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500167),
	(28, 1, 'admin', '/admin/auth/rule/multi/ids/13', '', '{"action":"","ids":"13","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500190),
	(29, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500190),
	(30, 1, 'admin', '/admin/auth/rule/multi/ids/14', '', '{"action":"","ids":"14","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500198),
	(31, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500198),
	(32, 1, 'admin', '/admin/auth/rule/multi/ids/16', '', '{"action":"","ids":"16","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500200),
	(33, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567500200),
	(34, 1, 'admin', '/admin/auth/group/roletree', '', '{"id":"2","pid":"1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501491),
	(35, 1, 'admin', '/admin/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"8,13,29,30,31,32,33,34,2,1","pid":"1","name":"\\u8fd0\\u8f93\\u7ba1\\u7406\\u7ec4","status":"normal"},"ids":"2"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501565),
	(36, 1, 'admin', '/admin/auth/group/roletree', '', '{"id":"3","pid":"2"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501571),
	(37, 1, 'admin', '/admin/auth/rule/multi/ids/1', '', '{"action":"","ids":"1","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501579),
	(38, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501579),
	(39, 1, 'admin', '/admin/auth/rule/multi/ids/1', '', '{"action":"","ids":"1","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501583),
	(40, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501583),
	(41, 1, 'admin', '/admin/auth/rule/multi/ids/1', '', '{"action":"","ids":"1","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501584),
	(42, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501585),
	(43, 1, 'admin', '/admin/auth/rule/multi/ids/1', '', '{"action":"","ids":"1","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501586),
	(44, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501586),
	(45, 1, 'admin', '/admin/auth/group/roletree', '', '{"id":"2","pid":"1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501624),
	(46, 1, 'admin', '/admin/auth/admin/add?dialog=1', '权限管理 管理员管理 添加', '{"dialog":"1","group":["2"],"row":{"username":"fast","email":"1132515857@qq.com","nickname":"\\u5c0f\\u5c0f\\u9ed1","password":"123456","status":"normal"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567501749),
	(47, 1, 'admin', '/admin/auth/rule/del/ids/85', '权限管理 菜单规则 删除', '{"action":"del","ids":"85","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567502305),
	(48, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567502305),
	(49, 1, 'admin', '/admin/auth/group/roletree', '', '{"id":"4","pid":"1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567502364),
	(50, 1, 'admin', '/admin/auth/group/roletree', '', '{"id":"2","pid":"1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567502367),
	(51, 1, 'admin', '/admin/category/del/ids/13', '分类管理 删除', '{"action":"del","ids":"13","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567502408),
	(52, 1, 'admin', '/admin/category/del/ids/12', '分类管理 删除', '{"action":"del","ids":"12","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567502410),
	(53, 0, 'Unknown', '/admin/index/login.html', '', '{"__token__":"d2085c89f1ed667ef91a61165bf67628","username":"admin","captcha":"3m5o"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567558882),
	(54, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"0a7a4bf3198057293f7297402829703b","username":"admin","captcha":"qquw"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567558888),
	(55, 1, 'admin', '/admin/auth/rule/edit/ids/79?dialog=1', '权限管理 菜单规则 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"66","name":"user\\/rule","title":"\\u4f1a\\u5458\\u89c4\\u5219","icon":"fa fa-list-alt","weigh":"0","condition":"","remark":"","status":"normal"},"ids":"79"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567559767),
	(56, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1567559768),
	(57, 1, 'admin', '/admin/user/rule/multi/ids/11', '会员管理 会员规则 批量更新', '{"action":"","ids":"11","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568012502),
	(58, 1, 'admin', '/admin/user/rule/multi/ids/11', '会员管理 会员规则 批量更新', '{"action":"","ids":"11","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568012514),
	(59, 1, 'admin', '/admin/user/rule/multi/ids/3', '会员管理 会员规则 批量更新', '{"action":"","ids":"3","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568012533),
	(60, 1, 'admin', '/admin/user/rule/multi/ids/1', '会员管理 会员规则 批量更新', '{"action":"","ids":"1","params":"ismenu=0"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568012537),
	(61, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"33b1a01847641e2bd69fad709787db7d","username":"admin","captcha":"hbhr"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568078264),
	(62, 1, 'admin', '/admin/user/rule/multi/ids/11', '会员管理 会员规则 批量更新', '{"action":"","ids":"11","params":"ismenu=1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568078343),
	(63, 0, 'Unknown', '/admin/index/login.html', '', '{"__token__":"6250dafd9cb989e1a4f1b95b2c8e903a","username":"admin","captcha":"yhkq"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887432),
	(64, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"31e6e5809bdaa0e859db07e62beed3c4","username":"admin","captcha":"vcpr"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887438),
	(65, 1, 'admin', '/admin/ajax/upload', '', '{"name":"\\u9996\\u9875_9.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887785),
	(66, 1, 'admin', '/admin/ajax/upload', '', '{"name":"\\u9996\\u9875_6.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887788),
	(67, 1, 'admin', '/admin/ajax/upload', '', '{"name":"\\u9996\\u9875_9.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887822),
	(68, 1, 'admin', '/admin/ajax/upload', '', '{"name":"\\u9996\\u9875_10.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887825),
	(69, 1, 'admin', '/admin/newtest/add?dialog=1', '测试管理 添加', '{"dialog":"1","row":{"name":"0","images":"\\/uploads\\/20190919\\/e007da2e5e986760bdcdbebf9b47e5e2.jpg,\\/uploads\\/20190919\\/00f2b2a71f90d1e6acbe33866a348eea.jpg","weigh":"0","status":"0"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887827),
	(70, 1, 'admin', '/admin/ajax/upload', '', '{"name":"\\u9996\\u9875_10.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887841),
	(71, 1, 'admin', '/admin/ajax/upload', '', '{"name":"\\u9996\\u9875_7.jpg"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887844),
	(72, 1, 'admin', '/admin/newtest/add?dialog=1', '测试管理 添加', '{"dialog":"1","row":{"name":"0","images":"\\/uploads\\/20190919\\/00f2b2a71f90d1e6acbe33866a348eea.jpg,\\/uploads\\/20190919\\/1e4042119dc3c0cfec0506526fc29d70.jpg","weigh":"0","status":"0"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887845),
	(73, 1, 'admin', '/admin/newtest/del/ids/7', '测试管理 删除', '{"action":"del","ids":"7","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887868),
	(74, 1, 'admin', '/admin/newtest/add?dialog=1', '测试管理 添加', '{"dialog":"1","row":{"name":"0","images":"\\/uploads\\/20190912\\/6ce7e673cc4301bbf8e1e4d5e0b3494f.jpg,\\/uploads\\/20190912\\/f1ec2f464e4670accdabd48e93af6e61.jpg","weigh":"0","status":"0"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36', 1568887883),
	(75, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"6b09c8dc1112484636573eb9ea74003a","username":"admin","captcha":"yuuf"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569463476),
	(76, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"ea293cb47b3ba3f5477afeb8c8eea513","username":"admin","captcha":"w5hu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569809568),
	(77, 1, 'admin', '/admin/addon/install', '插件管理 安装', '{"name":"command","force":"0","uid":"0","token":"","version":"1.0.5","faversion":"1.0.0.20190705_beta"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569809603),
	(78, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569809604),
	(79, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569809613),
	(80, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569810000),
	(81, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569810116),
	(82, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"new_test"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569810131),
	(83, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"1","force":"0","table":"new_test","controller":"","model":"","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569810152),
	(84, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812134),
	(85, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812137),
	(86, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812141),
	(87, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812143),
	(88, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812145),
	(89, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812149),
	(90, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812158),
	(91, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812161),
	(92, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812170),
	(93, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812171),
	(94, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"new_test"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812185),
	(95, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"0","local":"0","delete":"0","force":"0","table":"new_test","controller":"","model":"NewTest","setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812231),
	(96, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812252),
	(97, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812256),
	(98, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812259),
	(99, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812261),
	(100, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812263),
	(101, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812264),
	(102, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"NewTest.php","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812268),
	(103, 1, 'admin', '/admin/auth/rule/del/ids/85', '权限管理 菜单规则 删除', '{"action":"del","ids":"85","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812317),
	(104, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812318),
	(105, 1, 'admin', '/admin/command/del/ids/3', '在线命令管理 删除', '{"action":"del","ids":"3","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812356),
	(106, 1, 'admin', '/admin/command/del/ids/2', '在线命令管理 删除', '{"action":"del","ids":"2","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812358),
	(107, 1, 'admin', '/admin/command/del/ids/1', '在线命令管理 删除', '{"action":"del","ids":"1","params":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812361),
	(108, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812448),
	(109, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"1","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812452),
	(110, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812454),
	(111, 1, 'admin', '/admin/command/get_controller_list', '', '{"q_word":[""],"pageNumber":"2","pageSize":"10","andOr":"AND","orderBy":[["name","ASC"]],"searchTable":"tbl","showField":"name","keyField":"id","searchField":["name"],"name":""}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812456),
	(112, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"menu","allcontroller":"0","delete":"0","force":"1","controllerfile_text":"","controllerfile":"NewTest.php","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812460),
	(113, 1, 'admin', '/admin/ajax/weigh', '', '{"ids":"9,8,3,6,4,5","changeid":"3","pid":"","field":"weigh","orderway":"desc","table":"new_test","pk":"id"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812510),
	(114, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812540),
	(115, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"new_test"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812736),
	(116, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812772),
	(117, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812773),
	(118, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812773),
	(119, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812773),
	(120, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"1","local":"0","delete":"0","force":"0","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","status"],"relation":{"2":{"relation":"admin","relationmode":"belongsto","relationforeignkey":"yyyy_id","relationprimarykey":"id"}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812800),
	(121, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"1","local":"0","delete":"0","force":"1","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","status"],"relation":{"2":{"relation":"admin","relationmode":"belongsto","relationforeignkey":"yyyy_id","relationprimarykey":"id"}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812854),
	(122, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569812998),
	(123, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"yyyy"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813013),
	(124, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"0","local":"1","delete":"0","force":"0","table":"yyyy","controller":"","model":"","fields":["id","name","status"],"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813027),
	(125, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813149),
	(126, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"yyyy"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813156),
	(127, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"new_test"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813160),
	(128, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813184),
	(129, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813184),
	(130, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813184),
	(131, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813184),
	(132, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"yyyy"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813187),
	(133, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"yyyy"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813187),
	(134, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"1","local":"1","delete":"0","force":"0","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","weigh","status"],"relation":{"2":{"relation":"yyyy","relationmode":"belongsto","relationforeignkey":"id","relationprimarykey":"id","relationfields":["name"]}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813201),
	(135, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"1","local":"0","delete":"0","force":"1","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","weigh","status"],"relation":{"2":{"relation":"yyyy","relationmode":"belongsto","relationforeignkey":"id","relationprimarykey":"id","relationfields":["name"]}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813207),
	(136, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813472),
	(137, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"new_test"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813479),
	(138, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813491),
	(139, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813491),
	(140, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813492),
	(141, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813492),
	(142, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"yyyy"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813495),
	(143, 1, 'admin', '/admin/command/get_field_list', '', '{"table":"yyyy"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813495),
	(144, 1, 'admin', '/admin/command/command/action/execute', '', '{"commandtype":"crud","isrelation":"1","local":"0","delete":"0","force":"1","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","status"],"relation":{"2":{"relation":"yyyy","relationmode":"belongsto","relationforeignkey":"yyyy_id","relationprimarykey":"id","relationfields":["name"]}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"execute"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813506),
	(145, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813507),
	(146, 1, 'admin', '/admin/command/command/action/command', '', '{"commandtype":"crud","isrelation":"1","local":"0","delete":"0","force":"1","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","status"],"relation":{"2":{"relation":"yyyy","relationmode":"belongsto","relationforeignkey":"yyyy_id","relationprimarykey":"id","relationfields":["name"]}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"command"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813512),
	(147, 1, 'admin', '/admin/command/command/action/execute', '', '{"commandtype":"crud","isrelation":"1","local":"0","delete":"0","force":"1","table":"new_test","controller":"","model":"NewTest","fields":["id","name","images","status"],"relation":{"2":{"relation":"yyyy","relationmode":"belongsto","relationforeignkey":"yyyy_id","relationprimarykey":"id","relationfields":["name"]}},"setcheckboxsuffix":"","enumradiosuffix":"","imagefield":"","filefield":"","intdatesuffix":"","switchsuffix":"","citysuffix":"","selectpagesuffix":"","selectpagessuffix":"","ignorefields":"","sortfield":"","editorsuffix":"","headingfilterfield":"","action":"execute"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813514),
	(148, 1, 'admin', '/admin/index/index', '', '{"action":"refreshmenu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1569813515),
	(149, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"ad00c47d09e226f627d6692adf8bca25","username":"admin","captcha":"lrew"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 1570515349),
	(150, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"fd5e7ee16ba99c442167b5efcd077d4c","username":"admin","captcha":"magu"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1571823326),
	(151, 1, 'admin', '/admin/index/login.html', '登录', '{"__token__":"239b25af3647122b3ad9446b85b8ebae","username":"admin","captcha":"pwrf"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1574818368),
	(152, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"c3cce4c7241d80c27ce531c7c07f2eef","username":"3324","captcha":"aecj"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575355048),
	(153, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"9c91340ff59f0af263e16ef998c7794e","username":"3324","captcha":"aecj"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575355056),
	(154, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"62cf477e90cba600be7dfc117a7ee71f","username":"3324","captcha":"jhj1"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575355066),
	(155, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"e382ee01b64407d7dd5180d7335a0342","username":"3324","captcha":"tuk2"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575355073),
	(156, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"5b4f30cd4bcc99ce4f2c4b0a0e0a9965","username":"admin","captcha":"r3l2"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575355086),
	(157, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"b8cbb0ecd07e38688f2af6e7a1339998","username":"admin","captcha":"grya"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575355157),
	(158, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Findex%2Findex', '登录', '{"url":"\\/admin\\/index\\/index","__token__":"69fc921040e628e6e50a4c62a5b49f71","username":"admin","captcha":"txnv"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575356154),
	(159, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"4a0174279d38f2c107b01ad65cfd3d33","username":"admin","captcha":"anxa"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575356678),
	(160, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"4a0174279d38f2c107b01ad65cfd3d33","username":"admin","captcha":"anxa"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575356683),
	(161, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"42f0bd99085eb4bcf961831084ec1736","username":"admin","captcha":"7hak"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575356692),
	(162, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"44c8628e005f63193e59e1be7048dc2b","username":"admin","captcha":"k7fn"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575356991),
	(163, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"23c8870dd59da23e1ba4e851ea13bf54","username":"admin","captcha":"mcw8"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357163),
	(164, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"2cdea13efdcf3f9856d1216418ea471c","username":"admin","captcha":"zkh8"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357429),
	(165, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"555adc0b78a3ad7c79eb72b46fd6450e","username":"admin","captcha":"qeyw"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357434),
	(166, 1, 'admin', '/admin/index/login', '', '{"__token__":"555adc0b78a3ad7c79eb72b46fd6450e","username":"admin","captcha":"3ygx"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357464),
	(167, 1, 'admin', '/admin/index/login', '', '{"__token__":"555adc0b78a3ad7c79eb72b46fd6450e","username":"admin","captcha":"3ygx"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357467),
	(168, 1, 'admin', '/admin/index/login', '', '{"__token__":"555adc0b78a3ad7c79eb72b46fd6450e","username":"admin","captcha":"3ygx"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357468),
	(169, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"642fb5742863adb2772196a06a5c75d7","username":"admin","captcha":"qhja"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357531),
	(170, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"329e71cf80711ce2b0d322b22dde5e54","username":"admin","captcha":"qhja","keeplogin":"1"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357562),
	(171, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"5d7d74f5c0d8d6f2c6c6002047f54290","username":"admin","captcha":"h534"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357582),
	(172, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"a2616d6dd34d7e53c3e72bf8c8232354","username":"admin","captcha":"u2fc"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357615),
	(173, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"18a7e59c6597a8ef10922ee1d3c91183","username":"admin","captcha":"avfa","keeplogin":"1"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575357632),
	(174, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"ae3937583745770ba78e2a7f3f9e0f6f","username":"admin","captcha":"vqk8"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575358799),
	(175, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Fauth%2Fgroup%3Fref%3Daddtabs', '登录', '{"url":"\\/admin\\/auth\\/group?ref=addtabs","__token__":"1d769db678ba70f64a483a0cfae0ee19","username":"admin","captcha":"suxn"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575359262),
	(176, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Fgeneral%2Fconfig%3Fref%3Daddtabs', '登录', '{"url":"\\/admin\\/general\\/config?ref=addtabs","__token__":"dbaad56f85e0ca87ed4bf20174a0f3a5","username":"admin","captcha":"xpx5"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575359433),
	(177, 0, 'Unknown', '/admin/index/login?url=%2Fadmin%2Findex%2Flogout', '', '{"url":"\\/admin\\/index\\/logout","__token__":"17b5f977dacb4ec3190e773bcf4194bb","username":"admin","captcha":"tbql"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361139),
	(178, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Findex%2Flogout', '登录', '{"url":"\\/admin\\/index\\/logout","__token__":"50238d90bfde8e0b41381ffe901e6a7b","username":"admin","captcha":"kaf4"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361143),
	(179, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"56a4cb5feb36e8107a086f1fa3356b29","username":"admin","captcha":"5vje"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361166),
	(180, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"c0a64e6b2f880c376424a9ea40749c62","username":"admin","captcha":"hcwa"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361186),
	(181, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"b822225f92e0c9e1da20e30e92d5f4f5","username":"admn","captcha":"ab2h"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361202),
	(182, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"90e71dfcd9d017d2b73839774d216294","username":"admin","captcha":"burt"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361211),
	(183, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"90e71dfcd9d017d2b73839774d216294","username":"admin","captcha":"burt"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361225),
	(184, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"90e71dfcd9d017d2b73839774d216294","username":"admin","captcha":"burt"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361264),
	(185, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"2ef5d9a3cb452b3508a2011b186c491c","username":"admin","captcha":"5x2c"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361269),
	(186, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"da81f0fbd0b9a0e220066c26728cac35","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361292),
	(187, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"9026cdaec2715e382f7156006529dd2a","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361294),
	(188, 0, 'Unknown', '/admin/index/login', '登录', '{"__token__":"12c874eb7a96abea155a56d0d7db8878","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361295),
	(189, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"6f7d9838c01504f5ea323b0971e83005","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361295),
	(190, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"6f7d9838c01504f5ea323b0971e83005","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361321),
	(191, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"6f7d9838c01504f5ea323b0971e83005","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361324),
	(192, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"6f7d9838c01504f5ea323b0971e83005","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361898),
	(193, 0, 'Unknown', '/admin/index/login', '', '{"__token__":"6f7d9838c01504f5ea323b0971e83005","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361914),
	(194, 1, 'admin', '/admin/index/login', '登录', '{"__token__":"5e5e393d58a3a0c8b2b6be90ea30d54e","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575361919),
	(195, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Fcommand%3Faddtabs%3D1', '登录', '{"url":"\\/admin\\/command?addtabs=1","__token__":"e34ac4d44a9478f105e3a17daf5fc4ae","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575362591),
	(196, 1, 'admin', '/admin/index/login?url=%2Fadmin%2Fauth%2Frule%3Faddtabs%3D1', '登录', '{"url":"\\/admin\\/auth\\/rule?addtabs=1","__token__":"440142112f1770656dc956d5557ad3e0","username":"admin"}', '192.168.0.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 1575365643);
/*!40000 ALTER TABLE `admin_log` ENABLE KEYS */;

-- Dumping structure for table meikuang.attachment
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE IF NOT EXISTS `attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='附件表';

-- Dumping data for table meikuang.attachment: ~5 rows (大约)
DELETE FROM `attachment`;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` (`id`, `admin_id`, `user_id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
	(1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6'),
	(2, 1, 0, '/uploads/20190919/e007da2e5e986760bdcdbebf9b47e5e2.jpg', '567', '477', 'jpg', 0, 23725, 'image/jpeg', '{"name":"\\u9996\\u9875_9.jpg"}', 1568887784, 1568887784, 1568887784, 'local', '6530cd579a6957746b451a8be6c4a8030b1f9ba7'),
	(3, 1, 0, '/uploads/20190919/0541d71374de96b8b70cdd5982b3ed17.jpg', '1920', '880', 'jpg', 0, 44521, 'image/jpeg', '{"name":"\\u9996\\u9875_6.jpg"}', 1568887788, 1568887788, 1568887788, 'local', 'ed46ec276982091abfe70ebc5884f5fe99284be0'),
	(4, 1, 0, '/uploads/20190919/00f2b2a71f90d1e6acbe33866a348eea.jpg', '1920', '350', 'jpg', 0, 53468, 'image/jpeg', '{"name":"\\u9996\\u9875_10.jpg"}', 1568887825, 1568887825, 1568887825, 'local', '753eba198c42832c695c3c96957c8e1e619b61ac'),
	(5, 1, 0, '/uploads/20190919/1e4042119dc3c0cfec0506526fc29d70.jpg', '820', '418', 'jpg', 0, 56198, 'image/jpeg', '{"name":"\\u9996\\u9875_7.jpg"}', 1568887844, 1568887844, 1568887844, 'local', '556814df0b25c179a311feccd7b2bbed7299c30a');
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;

-- Dumping structure for table meikuang.auth_group
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分组表';

-- Dumping data for table meikuang.auth_group: ~5 rows (大约)
DELETE FROM `auth_group`;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
	(1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal'),
	(2, 1, '运输管理组', '8,13,29,30,31,32,33,34,2,1', 1490883540, 1567501565, 'normal'),
	(3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal'),
	(4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal'),
	(5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table meikuang.auth_group_access
DROP TABLE IF EXISTS `auth_group_access`;
CREATE TABLE IF NOT EXISTS `auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限分组表';

-- Dumping data for table meikuang.auth_group_access: ~2 rows (大约)
DELETE FROM `auth_group_access`;
/*!40000 ALTER TABLE `auth_group_access` DISABLE KEYS */;
INSERT INTO `auth_group_access` (`uid`, `group_id`) VALUES
	(1, 1),
	(2, 2);
/*!40000 ALTER TABLE `auth_group_access` ENABLE KEYS */;

-- Dumping structure for table meikuang.auth_rule
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE IF NOT EXISTS `auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点表';

-- Dumping data for table meikuang.auth_rule: ~106 rows (大约)
DELETE FROM `auth_rule`;
/*!40000 ALTER TABLE `auth_rule` DISABLE KEYS */;
INSERT INTO `auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
	(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1567501586, 143, 'normal'),
	(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal'),
	(3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal'),
	(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal'),
	(5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal'),
	(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal'),
	(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal'),
	(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal'),
	(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal'),
	(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal'),
	(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal'),
	(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal'),
	(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1567500190, 136, 'normal'),
	(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1567500197, 135, 'normal'),
	(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal'),
	(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1567500200, 134, 'normal'),
	(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal'),
	(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal'),
	(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal'),
	(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal'),
	(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal'),
	(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal'),
	(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal'),
	(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal'),
	(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal'),
	(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal'),
	(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal'),
	(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal'),
	(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal'),
	(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal'),
	(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal'),
	(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal'),
	(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal'),
	(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal'),
	(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal'),
	(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal'),
	(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal'),
	(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal'),
	(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal'),
	(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal'),
	(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal'),
	(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal'),
	(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal'),
	(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal'),
	(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal'),
	(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal'),
	(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal'),
	(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal'),
	(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal'),
	(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal'),
	(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal'),
	(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal'),
	(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal'),
	(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal'),
	(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal'),
	(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal'),
	(66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 1, 1516374729, 1516374729, 0, 'normal'),
	(67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal'),
	(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal'),
	(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(79, 'file', 66, 'user/rule', '会员规则', 'fa fa-list-alt', '', '', 1, 1516374729, 1567559767, 0, 'normal'),
	(80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal'),
	(94, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', 1, 1569809603, 1569809603, 0, 'normal'),
	(95, 'file', 94, 'command/index', '查看', 'fa fa-circle-o', '', '', 0, 1569809603, 1569809603, 0, 'normal'),
	(96, 'file', 94, 'command/add', '添加', 'fa fa-circle-o', '', '', 0, 1569809603, 1569809603, 0, 'normal'),
	(97, 'file', 94, 'command/detail', '详情', 'fa fa-circle-o', '', '', 0, 1569809603, 1569809603, 0, 'normal'),
	(98, 'file', 94, 'command/execute', '运行', 'fa fa-circle-o', '', '', 0, 1569809603, 1569809603, 0, 'normal'),
	(99, 'file', 94, 'command/del', '删除', 'fa fa-circle-o', '', '', 0, 1569809603, 1569809603, 0, 'normal'),
	(100, 'file', 94, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1569809603, 1569809603, 0, 'normal'),
	(101, 'file', 0, 'new_test', '测试管理', 'fa fa-circle-o\r', '', '', 1, 1569812274, 1569812274, 0, 'normal'),
	(102, 'file', 101, 'new_test/index', '查看', 'fa fa-circle-o', '', '', 0, 1569812274, 1569812467, 0, 'normal'),
	(103, 'file', 101, 'new_test/recyclebin', '回收站', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(104, 'file', 101, 'new_test/add', '添加', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(105, 'file', 101, 'new_test/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(106, 'file', 101, 'new_test/del', '删除', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(107, 'file', 101, 'new_test/destroy', '真实删除', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(108, 'file', 101, 'new_test/restore', '还原', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(109, 'file', 101, 'new_test/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1569812275, 1569812467, 0, 'normal'),
	(110, 'file', 0, 'yyyy', 'Yyyy', 'fa fa-circle-o\r', '', '', 1, 1569813048, 1569813048, 0, 'normal'),
	(111, 'file', 110, 'yyyy/index', '查看', 'fa fa-circle-o', '', '', 0, 1569813048, 1569813048, 0, 'normal'),
	(112, 'file', 110, 'yyyy/add', '添加', 'fa fa-circle-o', '', '', 0, 1569813049, 1569813049, 0, 'normal'),
	(113, 'file', 110, 'yyyy/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1569813049, 1569813049, 0, 'normal'),
	(114, 'file', 110, 'yyyy/del', '删除', 'fa fa-circle-o', '', '', 0, 1569813049, 1569813049, 0, 'normal'),
	(115, 'file', 110, 'yyyy/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1569813049, 1569813049, 0, 'normal'),
	(116, 'file', 0, 'cms', 'CMS管理', 'fa fa-list', '', '', 1, 1575365726, 1575365726, 0, 'normal'),
	(117, 'file', 116, 'cms/archives', '内容管理', 'fa fa-file-text-o', '', '', 1, 1575365726, 1575365726, 0, 'normal'),
	(118, 'file', 117, 'cms/archives/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(119, 'file', 117, 'cms/archives/content', '副表管理', 'fa fa-circle-o', '', '用于管理模型副表的数据列表,不建议在此进行删除操作', 0, 1575365726, 1575365726, 0, 'normal'),
	(120, 'file', 117, 'cms/archives/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(121, 'file', 117, 'cms/archives/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(122, 'file', 117, 'cms/archives/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(123, 'file', 117, 'cms/archives/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(124, 'file', 116, 'cms/channel', '栏目管理', 'fa fa-list', '', '用于管理网站的分类，可进行无限级分类，注意只有类型为列表的才可以添加文章', 1, 1575365726, 1575365726, 0, 'normal'),
	(125, 'file', 124, 'cms/channel/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(126, 'file', 124, 'cms/channel/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(127, 'file', 124, 'cms/channel/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(128, 'file', 124, 'cms/channel/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(129, 'file', 124, 'cms/channel/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(130, 'file', 124, 'cms/channel/admin', '栏目授权', 'fa fa-circle-o', '', '分配管理员可管理的栏目数据，此功能需要先开启插件管理CMS配置的栏目授权开关', 0, 1575365726, 1575365726, 0, 'normal'),
	(131, 'file', 116, 'cms/modelx', '模型管理', 'fa fa-th', '', '在线添加修改删除模型，管理模型字段和相关模型数据', 1, 1575365726, 1575365726, 0, 'normal'),
	(132, 'file', 131, 'cms/modelx/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(133, 'file', 131, 'cms/modelx/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(134, 'file', 131, 'cms/modelx/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(135, 'file', 131, 'cms/modelx/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365726, 1575365726, 0, 'normal'),
	(136, 'file', 131, 'cms/modelx/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(137, 'file', 131, 'cms/fields', '字段管理', 'fa fa-fields', '', '用于管理模型或表单的字段，进行相关的增删改操作，灰色为主表字段无法修改', 0, 1575365727, 1575365727, 0, 'normal'),
	(138, 'file', 137, 'cms/fields/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(139, 'file', 137, 'cms/fields/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(140, 'file', 137, 'cms/fields/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(141, 'file', 137, 'cms/fields/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(142, 'file', 137, 'cms/fields/duplicate', '复制', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(143, 'file', 137, 'cms/fields/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(144, 'file', 116, 'cms/tags', '标签管理', 'fa fa-tags', '', '用于管理文章关联的标签,标签的添加在添加文章时自动维护,无需手动添加标签', 1, 1575365727, 1575365727, 0, 'normal'),
	(145, 'file', 144, 'cms/tags/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(146, 'file', 144, 'cms/tags/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(147, 'file', 144, 'cms/tags/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(148, 'file', 144, 'cms/tags/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(149, 'file', 144, 'cms/tags/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(150, 'file', 116, 'cms/block', '区块管理', 'fa fa-th-large', '', '用于管理站点的自定义区块内容,常用于广告、JS脚本、焦点图、片段代码等', 1, 1575365727, 1575365727, 0, 'normal'),
	(151, 'file', 150, 'cms/block/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(152, 'file', 150, 'cms/block/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(153, 'file', 150, 'cms/block/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(154, 'file', 150, 'cms/block/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(155, 'file', 150, 'cms/block/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(156, 'file', 116, 'cms/page', '单页管理', 'fa fa-file', '', '用于管理网站的单页面，可任意创建修改删除单页面', 1, 1575365727, 1575365727, 0, 'normal'),
	(157, 'file', 156, 'cms/page/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(158, 'file', 156, 'cms/page/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(159, 'file', 156, 'cms/page/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(160, 'file', 156, 'cms/page/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(161, 'file', 156, 'cms/page/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(162, 'file', 116, 'cms/comment', '评论管理', 'fa fa-comment', '', '用于管理用户在网站上发表的评论，可任意修改或隐藏评论', 1, 1575365727, 1575365727, 0, 'normal'),
	(163, 'file', 162, 'cms/comment/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(164, 'file', 162, 'cms/comment/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(165, 'file', 162, 'cms/comment/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(166, 'file', 162, 'cms/comment/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365727, 1575365727, 0, 'normal'),
	(167, 'file', 162, 'cms/comment/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(168, 'file', 116, 'cms/diyform', '自定义表单管理', 'fa fa-list', '', '可在线创建自定义表单，管理表单字段和数据列表', 1, 1575365728, 1575365728, 0, 'normal'),
	(169, 'file', 168, 'cms/diyform/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(170, 'file', 168, 'cms/diyform/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(171, 'file', 168, 'cms/diyform/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(172, 'file', 168, 'cms/diyform/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(173, 'file', 168, 'cms/diyform/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(174, 'file', 116, 'cms/diydata', '自定义表单数据管理', 'fa fa-list', '', '可在线管理自定义表单的数据列表', 0, 1575365728, 1575365728, 0, 'normal'),
	(175, 'file', 174, 'cms/diydata/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(176, 'file', 174, 'cms/diydata/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(177, 'file', 174, 'cms/diydata/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(178, 'file', 174, 'cms/diydata/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(179, 'file', 174, 'cms/diydata/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(180, 'file', 174, 'cms/diydata/import', '导入', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(181, 'file', 116, 'cms/order', '订单管理', 'fa fa-cny', '', '可在线管理付费查看所产生的订单', 1, 1575365728, 1575365728, 0, 'normal'),
	(182, 'file', 181, 'cms/order/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(183, 'file', 181, 'cms/order/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(184, 'file', 181, 'cms/order/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(185, 'file', 181, 'cms/order/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(186, 'file', 181, 'cms/order/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(187, 'file', 116, 'cms/special', '专题管理', 'fa fa-newspaper-o', '', '可在线管理专题列表', 1, 1575365728, 1575365728, 0, 'normal'),
	(188, 'file', 187, 'cms/special/index', '查看', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(189, 'file', 187, 'cms/special/add', '添加', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(190, 'file', 187, 'cms/special/edit', '修改', 'fa fa-circle-o', '', '', 0, 1575365728, 1575365728, 0, 'normal'),
	(191, 'file', 187, 'cms/special/del', '删除', 'fa fa-circle-o', '', '', 0, 1575365729, 1575365729, 0, 'normal'),
	(192, 'file', 187, 'cms/special/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1575365729, 1575365729, 0, 'normal');
/*!40000 ALTER TABLE `auth_rule` ENABLE KEYS */;

-- Dumping structure for table meikuang.category
DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类表';

-- Dumping data for table meikuang.category: ~11 rows (大约)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
	(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal'),
	(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal'),
	(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal'),
	(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal'),
	(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal'),
	(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal'),
	(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal'),
	(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal'),
	(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal'),
	(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal'),
	(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table meikuang.command
DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) NOT NULL DEFAULT '' COMMENT '命令',
  `content` text COMMENT '返回结果',
  `executetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` enum('successed','failured') NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='在线命令表';

-- Dumping data for table meikuang.command: ~2 rows (大约)
DELETE FROM `command`;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
INSERT INTO `command` (`id`, `type`, `params`, `command`, `content`, `executetime`, `createtime`, `updatetime`, `status`) VALUES
	(4, 'crud', '["--force=1","--table=new_test","--model=NewTest","--fields=id,name,images,status","--local=0","--relation=yyyy","--relationmode=belongsto","--relationforeignkey=yyyy_id","--relationprimarykey=id","--relationfields=name"]', 'php think crud --force=1 --table=new_test --model=NewTest --fields=id,name,images,status --local=0 --relation=yyyy --relationmode=belongsto --relationforeignkey=yyyy_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1569813506, 1569813506, 1569813506, 'successed'),
	(5, 'crud', '["--force=1","--table=new_test","--model=NewTest","--fields=id,name,images,status","--local=0","--relation=yyyy","--relationmode=belongsto","--relationforeignkey=yyyy_id","--relationprimarykey=id","--relationfields=name"]', 'php think crud --force=1 --table=new_test --model=NewTest --fields=id,name,images,status --local=0 --relation=yyyy --relationmode=belongsto --relationforeignkey=yyyy_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1569813514, 1569813514, 1569813514, 'successed');
/*!40000 ALTER TABLE `command` ENABLE KEYS */;

-- Dumping structure for table meikuang.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统配置';

-- Dumping data for table meikuang.config: ~17 rows (大约)
DELETE FROM `config`;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `name`, `group`, `title`, `tip`, `type`, `value`, `content`, `rule`, `extend`) VALUES
	(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', ''),
	(2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', ''),
	(3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', ''),
	(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', ''),
	(5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', ''),
	(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', ''),
	(7, 'languages', 'basic', 'Languages', '', 'array', '{"backend":"zh-cn","frontend":"zh-cn"}', '', 'required', ''),
	(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', ''),
	(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{"default":"Default","page":"Page","article":"Article","test":"Test"}', '', '', ''),
	(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}', '', '', ''),
	(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '["Please select","SMTP","Mail"]', '', ''),
	(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', ''),
	(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', ''),
	(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', ''),
	(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', ''),
	(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '["None","TLS","SSL"]', '', ''),
	(17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table meikuang.ems
DROP TABLE IF EXISTS `ems`;
CREATE TABLE IF NOT EXISTS `ems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱验证码表';

-- Dumping data for table meikuang.ems: ~0 rows (大约)
DELETE FROM `ems`;
/*!40000 ALTER TABLE `ems` DISABLE KEYS */;
/*!40000 ALTER TABLE `ems` ENABLE KEYS */;

-- Dumping structure for table meikuang.login_diary
DROP TABLE IF EXISTS `login_diary`;
CREATE TABLE IF NOT EXISTS `login_diary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '输入用户',
  `status` enum('1','0') NOT NULL COMMENT '密码是否正确:1=正确,0=错误',
  `createtime` int(10) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='登录日记';

-- Dumping data for table meikuang.login_diary: 3 rows
DELETE FROM `login_diary`;
/*!40000 ALTER TABLE `login_diary` DISABLE KEYS */;
INSERT INTO `login_diary` (`id`, `ip`, `name`, `status`, `createtime`) VALUES
	(1, '192168', '3324', '0', 1575355048),
	(2, '192168', '3324', '0', 1575355073),
	(3, '192168', 'admin', '1', 1575355086),
	(4, '192.168.0.151', 'admin', '1', 1575355157),
	(5, '192.168.0.151', 'admin', '1', 1575356154),
	(6, '192.168.0.151', 'admin', '1', 1575356678),
	(7, '192.168.0.151', 'admin', '1', 1575356692),
	(8, '192.168.0.151', 'admin', '1', 1575356991),
	(9, '192.168.0.151', 'admin', '1', 1575357163),
	(10, '192.168.0.151', 'admin', '1', 1575357434),
	(11, '192.168.0.151', 'admin', '1', 1575358799),
	(12, '192.168.0.151', 'admin', '1', 1575359262),
	(13, '192.168.0.151', 'admin', '1', 1575359433),
	(14, '192.168.0.151', 'admin', '1', 1575361143),
	(15, '192.168.0.151', 'admin', '1', 1575361166),
	(16, '192.168.0.151', 'admin', '1', 1575361186),
	(24, '192.168.0.151', 'admin', '1', 1575365643),
	(23, '192.168.0.151', 'admin', '1', 1575362591),
	(22, '192.168.0.151', 'admin', '1', 1575361919);
/*!40000 ALTER TABLE `login_diary` ENABLE KEYS */;

-- Dumping structure for table meikuang.sms
DROP TABLE IF EXISTS `sms`;
CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='短信验证码表';

-- Dumping data for table meikuang.sms: ~0 rows (大约)
DELETE FROM `sms`;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;

-- Dumping structure for table meikuang.test
DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='测试表';

-- Dumping data for table meikuang.test: ~1 rows (大约)
DELETE FROM `test`;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` (`id`, `admin_id`, `category_id`, `category_ids`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `json`, `price`, `views`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `deletetime`, `weigh`, `switch`, `status`, `state`) VALUES
	(1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{"a":"1","b":"2"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', 1499682285, 1499682526, 1499682526, NULL, 0, 1, 'normal', '1');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- Dumping structure for table meikuang.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员表';

-- Dumping data for table meikuang.user: ~1 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `group_id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `money`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
	(1, 1, 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', 0, 0, '2017-04-15', '', 155555.00, 0, 1, 1, 1516171614, 1567503698, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1567503698, '', 'normal', '');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table meikuang.user_group
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE IF NOT EXISTS `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员组表';

-- Dumping data for table meikuang.user_group: ~1 rows (大约)
DELETE FROM `user_group`;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
	(1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;

-- Dumping structure for table meikuang.user_money_log
DROP TABLE IF EXISTS `user_money_log`;
CREATE TABLE IF NOT EXISTS `user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员余额变动表';

-- Dumping data for table meikuang.user_money_log: ~0 rows (大约)
DELETE FROM `user_money_log`;
/*!40000 ALTER TABLE `user_money_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_money_log` ENABLE KEYS */;

-- Dumping structure for table meikuang.user_rule
DROP TABLE IF EXISTS `user_rule`;
CREATE TABLE IF NOT EXISTS `user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员规则表';

-- Dumping data for table meikuang.user_rule: ~12 rows (大约)
DELETE FROM `user_rule`;
/*!40000 ALTER TABLE `user_rule` DISABLE KEYS */;
INSERT INTO `user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
	(1, 0, 'index', '前台', '', 0, 1516168079, 1568012536, 1, 'normal'),
	(2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal'),
	(3, 1, 'user', '会员模块', '', 0, 1515386221, 1568012533, 12, 'normal'),
	(4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal'),
	(5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal'),
	(6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal'),
	(7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal'),
	(8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal'),
	(9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal'),
	(10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal'),
	(11, 4, 'api/user/index', '会员中心', '', 1, 1516015012, 1568078343, 10, 'normal'),
	(12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');
/*!40000 ALTER TABLE `user_rule` ENABLE KEYS */;

-- Dumping structure for table meikuang.user_score_log
DROP TABLE IF EXISTS `user_score_log`;
CREATE TABLE IF NOT EXISTS `user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员积分变动表';

-- Dumping data for table meikuang.user_score_log: ~0 rows (大约)
DELETE FROM `user_score_log`;
/*!40000 ALTER TABLE `user_score_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_score_log` ENABLE KEYS */;

-- Dumping structure for table meikuang.user_token
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE IF NOT EXISTS `user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员Token表';

-- Dumping data for table meikuang.user_token: ~0 rows (大约)
DELETE FROM `user_token`;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;

-- Dumping structure for table meikuang.version
DROP TABLE IF EXISTS `version`;
CREATE TABLE IF NOT EXISTS `version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='版本表';

-- Dumping data for table meikuang.version: ~1 rows (大约)
DELETE FROM `version`;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` (`id`, `oldversion`, `newversion`, `packagesize`, `content`, `downloadurl`, `enforce`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
	(1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');
/*!40000 ALTER TABLE `version` ENABLE KEYS */;

-- Dumping structure for table meikuang.visit
DROP TABLE IF EXISTS `visit`;
CREATE TABLE IF NOT EXISTS `visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL COMMENT '访问位置',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `updatetime` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问表';

-- Dumping data for table meikuang.visit: 0 rows
DELETE FROM `visit`;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
