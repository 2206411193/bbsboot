
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `up` int(11) DEFAULT '0',
  `title` varchar(300) NOT NULL,
  `create_time` datetime NOT NULL,
  `text` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
  );
CREATE TABLE IF NOT EXISTS `draft` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,springmvc2@localhost
  `up` int(11) DEFAULT '0',
  `title` varchar(300) NOT NULL,
  `create_time` datetime NOT NULL,
  `text` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
  );

CREATE TABLE IF NOT EXISTS `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `msg` varchar(5000) NOT NULL,
  `up` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
  ) ;


CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `sname` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
  ) ;
