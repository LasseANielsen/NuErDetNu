# Opgave 23
SELECT `customerName`, `salesRepEmployeeNumber`, `firstName`, `lastName`, `employeeNumber`
FROM `customers` JOIN `employees` ON (`salesRepEmployeeNumber` = `employeeNumber`);
# Opgave 24
SELECT `customerName`, `salesRepEmployeeNumber`, `firstName`, `lastName`, `employeeNumber`
FROM `customers` JOIN `employees` ON (`salesRepEmployeeNumber` = `employeeNumber`)
WHERE `country` = 'italy';
# Opgave 24a
SELECT `customerName`, `salesRepEmployeeNumber`, `firstName`, `lastName`, `employeeNumber`
FROM (SELECT * FROM `customers` WHERE `country` = 'italy') AS `Italy` JOIN `employees` ON (`salesRepEmployeeNumber` = `employeeNumber`);
# Opgave 25
SELECT `country`, `salesRepEmployeeNumber`, `firstName`, `lastName`, `employeeNumber`
FROM `customers` JOIN `employees` ON (`salesRepEmployeeNumber` = `employeeNumber`)
GROUP BY `country`;