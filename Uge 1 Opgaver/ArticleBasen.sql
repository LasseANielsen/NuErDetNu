CREATE DATABASE /*!32312 IF NOT EXISTS*/`articleBasen` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `articleBasen`;

DROP TABLE IF EXISTS `image_has_article`;
DROP TABLE IF EXISTS `tag_has_article`;
DROP TABLE IF EXISTS `image_has_tag`;
DROP TABLE IF EXISTS `tag`;
DROP TABLE IF EXISTS `article`;
DROP TABLE IF EXISTS `author`;
DROP TABLE IF EXISTS `image`;
DROP TABLE IF EXISTS `photographer`;

CREATE TABLE `photographer` ( 
  `id` int(11) NOT NULL,
  `name` varchar(45),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `image` ( 
  `id` int(11) NOT NULL,
  `imageName` varchar(45),
  `imageUrl` varchar(45),
  `added` DATETIME,
  `caption` varchar(200),
  `imageCol` varchar(45),
  `modified` DATETIME,
  `photographer_id` int(11),
  PRIMARY KEY (`id`),
  CONSTRAINT `image_photograper_id` FOREIGN KEY (`photographer_id`) REFERENCES `photographer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `author` ( 
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` ENUM('F', 'M'),
  `b_year` INT(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `article` ( 
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `caption` varchar(200),
  `text` TEXT,
  `article_col` varchar(45),
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `article_author_id` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tag` ( 
  `id` int(11) NOT NULL,
  `name` varchar(45),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `image_has_tag` ( 
  `image_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  CONSTRAINT `binder_image_tag_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `binder_tag_image_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tag_has_article` ( 
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  CONSTRAINT `binder_tag_article_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `binder_article_tag_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `image_has_article` ( 
  `image_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  CONSTRAINT `binder_image_article_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`),
  CONSTRAINT `binder_article_image_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;