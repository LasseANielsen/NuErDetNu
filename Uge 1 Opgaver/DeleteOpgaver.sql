# Opgave 34
SELECT *
FROM `payments`;

DELETE FROM `payments` WHERE DATEDIFF(CURDATE(), `paymentDate`) > DATEDIFF(CURDATE(), DATE('2003-06-18'));
# Opgave 35
SELECT *
FROM `customers`;

SELECT *
FROM `orders`;

SELECT *
FROM `orderdetails`;
       
SELECT *
FROM `customers` LEFT JOIN (`orders`, `orderdetails`) 
ON (`orders`.`customerNumber` = `customers`.`customerNumber` AND `orderdetails`.`orderNumber` = `orders`.`orderNumber`)
WHERE `customers`.`customerNumber` < '150';
       
DELETE `customers`, `orders`, `orderdetails` FROM `customers` LEFT JOIN (`orders`, `orderdetails`) 
ON (`orders`.`customerNumber` = `customers`.`customerNumber` AND `orderdetails`.`orderNumber` = `orders`.`orderNumber`)
WHERE `customers`.`customerNumber` < '150';

DELETE FROM `orderdetails` WHERE `orderNumber` = `order`.`orderNumber` ;
DELETE FROM `orders` WHERE `customerNumber` < '150';
DELETE FROM `customers` WHERE `customerNumber` < '150';