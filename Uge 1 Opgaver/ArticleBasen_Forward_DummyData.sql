USE `articleBasen_Forward` ;

INSERT INTO `Photographer`(`id`, `name`) VALUES
('1', 'Michael Due'),
('2', 'Christian Ryge'),
('3', 'Lasse Nielsen'),
('4', 'Jesper Petersen');

INSERT INTO `Image`(`id`,`image_name`,`image_url`,`added`,`caption`,`image_col`,`modified`,`photographer_id`) VALUES
('1','Image1', 'URL1','2018-09-12','Caption1','Image_col1','2018-09-12','1'),
('2','Image2', 'URL2','2018-09-12','Caption2','Image_col2','2018-09-12','2'),
('3','Image3', 'URL3','2018-09-12','Caption3','Image_col3','2018-09-12','3'),
('4','Image4', 'URL4','2018-09-12','Caption4','Image_col4','2018-09-12','4');

INSERT INTO `Author`(`id`,`name`,`gender`,`b_year`) VALUES
('1','Michael Due', 'M','1997'),
('2','Christian Ryge', 'M','1989'),
('3','Lasse Nielsen', 'F','1994'),
('4','Jesper Petersen', 'F','1992');

INSERT INTO `Article`(`id`,`name`, `caption`, `text`,`article_col`, `author_id`) VALUES
('1','Article1','Caption1','Text1','Article_Col1', '1'),
('2','Article2','Caption2','Text2','Article_Col2', '2'),
('3','Article3','Caption3','Text3','Article_Col3', '3'),
('4','Article4','Caption4','Text4','Article_Col4', '4');

INSERT INTO `Tag`(`id`, `name`) VALUES
('1', 'Tag1'),
('2', 'Tag2'),
('3', 'Tag3'),
('4', 'Tag4');

INSERT INTO `Tag_Has_Article`(`tag_id`,`article_id`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4');

INSERT INTO `Image_Has_Tag`(`image_id`,`tag_id`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4');

INSERT INTO `Image_Has_Article`(`image_id`,`article_id`) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4');