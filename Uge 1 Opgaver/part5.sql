DROP VIEW IF EXISTS `EmployeesZip`;
DROP VIEW IF EXISTS `EmployeesSpec`;
DROP VIEW IF EXISTS `EmployeesOrders`;
# Opgave 1
CREATE VIEW `EmployeesZip`
AS  
SELECT *
FROM `employees`
WHERE `zip` > 60000;
# Opgave 2
CREATE VIEW `EmployeesSpec`
AS  
SELECT `eno`, `ename`
FROM `employees`;
# Opgave 3
CREATE VIEW `EmployeesOrders`
AS  
SELECT `employees`.`eno`, `ename`, COUNT(`ono`) AS `orderCount`
FROM `employees` JOIN `orders` ON (`employees`.`eno` = `orders`.`eno`)
GROUP BY `orders`.`eno`;