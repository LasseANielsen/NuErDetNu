# Opgave 36
SELECT `customerName`, `orderDate`, `orderNumber`
FROM `customers` NATURAL JOIN `orders`;
# Opgave 37
SELECT `customerName`
FROM `customers`
WHERE `customerNumber` NOT IN (SELECT `customerNumber` FROM `orders`);