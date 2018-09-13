-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema articleBasen_Forward
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema articleBasen_Forward
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `articleBasen_Forward` DEFAULT CHARACTER SET latin1 ;
USE `articleBasen_Forward` ;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Photographer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Photographer` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Image` (
  `id` INT NOT NULL,
  `image_name` VARCHAR(45) NULL,
  `image_url` VARCHAR(45) NULL,
  `added` DATETIME NULL,
  `caption` VARCHAR(200) NULL,
  `image_col` VARCHAR(45) NULL,
  `modified` DATETIME NULL,
  `photographer_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `Image_Photographer_id_idx` (`photographer_id` ASC),
  CONSTRAINT `Image_Photographer_id`
    FOREIGN KEY (`photographer_id`)
    REFERENCES `articleBasen_Forward`.`Photographer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Tag` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Image_Has_Tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Image_Has_Tag` (
  `image_id` INT NOT NULL,
  `tag_id` INT NOT NULL,
  INDEX `ImageTag_image_idx` (`image_id` ASC),
  INDEX `ImageTag_tag_idx` (`tag_id` ASC),
  CONSTRAINT `ImageTag_image`
    FOREIGN KEY (`image_id`)
    REFERENCES `articleBasen_Forward`.`Image` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ImageTag_tag`
    FOREIGN KEY (`tag_id`)
    REFERENCES `articleBasen_Forward`.`Tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Author` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `gender` ENUM('F', 'M') NULL,
  `b_year` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Article` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `caption` VARCHAR(200) NULL,
  `text` TEXT NULL,
  `article_col` VARCHAR(45) NULL,
  `author_id` INT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `ArticleAuthor_id`
    FOREIGN KEY (`id`)
    REFERENCES `articleBasen_Forward`.`Author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Image_Has_Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Image_Has_Article` (
  `image_id` INT NOT NULL,
  `article_id` INT NOT NULL,
  INDEX `ImageArticle_image_idx` (`image_id` ASC),
  INDEX `ImageArticle_article_idx` (`article_id` ASC),
  CONSTRAINT `ImageArticle_image`
    FOREIGN KEY (`image_id`)
    REFERENCES `articleBasen_Forward`.`Image` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ImageArticle_article`
    FOREIGN KEY (`article_id`)
    REFERENCES `articleBasen_Forward`.`Article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `articleBasen_Forward`.`Tag_Has_Article`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `articleBasen_Forward`.`Tag_Has_Article` (
  `tag_id` INT NOT NULL,
  `article_id` INT NOT NULL,
  INDEX `TagArticle_tag_idx` (`tag_id` ASC),
  INDEX `TagArticle_article_idx` (`article_id` ASC),
  CONSTRAINT `TagArticle_tag`
    FOREIGN KEY (`tag_id`)
    REFERENCES `articleBasen_Forward`.`Tag` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `TagArticle_article`
    FOREIGN KEY (`article_id`)
    REFERENCES `articleBasen_Forward`.`Article` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
