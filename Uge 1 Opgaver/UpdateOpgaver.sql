# Opgave 26
SELECT *
FROM `employees`
WHERE `firstName` = 'Leslie';

UPDATE `employees`
SET `lastName` = 'Smith'
WHERE `employeeNumber` = '1165';
# Opgave 27
SELECT *
FROM `customers`
WHERE `contactLastName` = 'Keitel';

UPDATE `customers`
SET `contactFirstName` = 'Dr. Roland'
WHERE `customerNumber` = '128';
# Opgave 28
SELECT * 
FROM `employees`
WHERE `firstName` = 'Martin';

UPDATE `customers`
SET `salesRepEmployeeNumber` = '1702'
WHERE `country` = 'Spain';

SELECT *
FROM `customers`
WHERE `country` = 'Spain';
# Opgave 29
UPDATE `products`
SET `MSRP` = `MSRP` + ((`MSRP`/100)*10)
WHERE `productLine` = 'Motorcycles';

SELECT *
FROM `products`
WHERE `productLine` = 'Motorcycles';
# Opgave 30
SELECT *
FROM `customers`
WHERE `addressLine2` IS NULL;

UPDATE `customers`
SET `addressLine2` = ''
WHERE `addressLine2` IS NULL;

SELECT *
FROM `customers`
WHERE `addressLine2` = '';