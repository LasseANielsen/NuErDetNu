CREATE DATABASE /*!32312 IF NOT EXISTS*/`exceriseFour` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `exceriseFour`;

DROP TABLE IF EXISTS `odetails`;
DROP TABLE IF EXISTS `orders`;
DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `employees`;
DROP TABLE IF EXISTS `parts`;
DROP TABLE IF EXISTS `zipcodes`;

CREATE TABLE `zipcodes` (
	`zip` INT(11) NOT NULL,
    `city` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`zip`)
);  

CREATE TABLE `parts` (
	`pno` INT(11) NOT NULL,
    `pname` VARCHAR(45) NOT NULL,
    `qoh` INT(11) NOT NULL,
    `price` INT(11) NOT NULL,
    `olevel` INT(11) NOT NULL,
    PRIMARY KEY (`pno`)
);  

CREATE TABLE `employees` (
	`eno` INT(11) NOT NULL,
    `ename` VARCHAR(45) NOT NULL,
    `zip` INT(11) NOT NULL,
    `hdate` DATETIME NOT NULL,
    PRIMARY KEY (`eno`),
    CONSTRAINT `employee_zip` FOREIGN KEY (`zip`) REFERENCES `zipcodes` (`zip`)
);  

CREATE TABLE `customers` (
	`cno` INT(11) NOT NULL,
    `cname` VARCHAR(45) NOT NULL,
    `street` VARCHAR(200) NOT NULL,
    `zip` INT(11) NOT NULL,
    `phone` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`cno`),
    CONSTRAINT `customers_zip` FOREIGN KEY (`zip`) REFERENCES `zipcodes` (`zip`)
); 

CREATE TABLE `orders` (
	`ono` INT(11) NOT NULL,
    `cno` INT(11) NOT NULL,
    `eno` INT(11) NOT NULL,
    `recieved` DATETIME NOT NULL,
    `shipped` DATETIME NOT NULL,
    PRIMARY KEY (`ono`),
    CONSTRAINT `orders_customers` FOREIGN KEY (`cno`) REFERENCES `customers` (`cno`),
    CONSTRAINT `orders_employees` FOREIGN KEY (`eno`) REFERENCES `employees` (`eno`)
); 

CREATE TABLE `odetails` (
	`ono` INT(11) NOT NULL,
    `pno` INT(11) NOT NULL,
    `qty` INT(11) NOT NULL,
    CONSTRAINT `odetails_order` FOREIGN KEY (`ono`) REFERENCES `orders` (`ono`),
    CONSTRAINT `odetails_parts` FOREIGN KEY (`pno`) REFERENCES `parts` (`pno`)
); 