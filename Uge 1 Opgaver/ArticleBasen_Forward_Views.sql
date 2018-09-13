USE `articleBasen_Forward` ;

DROP VIEW IF EXISTS `Authors_And_Articles`;
CREATE VIEW `Authors_And_Articles` AS
SELECT *
FROM `Author`;