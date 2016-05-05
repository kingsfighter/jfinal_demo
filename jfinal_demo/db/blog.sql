CREATE DATABASE jfinal_demo;

USE jfinal_demo;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `blog` VALUES ('1', 'JFinal Demo Title here', 'JFinal Demo Content here');
INSERT INTO `blog` VALUES ('2', 'test 1', 'test 1');
INSERT INTO `blog` VALUES ('3', 'test 2', 'test 2');
INSERT INTO `blog` VALUES ('4', 'test 3', 'test 3');
INSERT INTO `blog` VALUES ('5', 'test 4', 'test 4');

drop table user;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `userName` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` varchar(2) NOT NULL, -- 0:male,1:female
  `email` varchar(200) NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `user` VALUES ('1', 'admin', 'admin','管理员','男','admin@test.com','我是管理员');
commit;

/*tan kuang shen qing dan */
CREATE TABLE `tksqd` (
  /*xin li*/
  `id` int(11) NOT NULL auto_increment,
  `xmmc` varchar(100) NULL,
  `sqr` varchar(50) NULL,
  `kcdw` varchar(100) NULL,
  `kczgzh` varchar(100) NULL,
  `kcdwdz` varchar(200) NULL,
  `sqsj` varchar(30) NULL,
  `kckz` varchar(50) NULL,
  `xmxz` varchar(50) NULL,
  `zmj` varchar(20) NULL,
  `zj` varchar(20) NULL,
  `fddbr` varchar(50) NULL,
  `dh` varchar(20) NULL,
  `gzrwjzymd` varchar(2000) NULL,
  /*bian geng*/
  `bgsj` varchar(30) NULL,
  /*zhu xiao*/
  `zxlx` varchar(20) NULL,
  `yxq` varchar(30) NULL,
  `kcsyfljjn` varchar(20) NULL,
  `zxly` varchar(500) NULL,
  `djjgglyj` varchar(1000) NULL,
  `zxsj` varchar(30) NULL,
  /*zhuan rang*/
  `zrsqr` varchar(50) NULL,
  `zrsqrdz` varchar(200) NULL,
  `zrsqrdh` varchar(20) NULL,
  `zrsqrkhyh` varchar(1000) NULL,
  `zh` varchar(20) NULL,
  `kcgzzyjzqk` varchar(1000) NULL,
  `srr` varchar(50) NULL,
  `srrdz` varchar(200) NULL,
  `srrdh` varchar(20) NULL,
  `srrkhyh` varchar(50) NULL,
  `srmd` varchar(500) NULL,
  `sjzgbmyj` varchar(1000) NULL,
  /*di diao*/
  `dcmj` varchar(50) NULL,
  `dlwz` varchar(200) NULL,
  `sqnx` varchar(20) NULL,
  `ddgzrwjzymd` varchar(1000) NULL,
  `zyswgzl` varchar(50) NULL,
  `zjly` varchar(200) NULL,
  `ddkcdw` varchar(100) NULL,
  /*nian jian*/
  `njkckz` varchar(50) NULL,
  `kcmj` varchar(20) NULL,
  `gtzydcf` varchar(20) NULL,
  `kczyjcf` varchar(20) NULL,
  `gnqytr` varchar(20) NULL,
  `zyczbt` varchar(20) NULL,
  `ks` varchar(20) NULL,
  `cs` varchar(20) NULL,
  `qj` varchar(20) NULL,
  
  PRIMARY KEY  (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;





