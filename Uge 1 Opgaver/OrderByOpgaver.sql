# Opgave 9
SELECT *
FROM `products`
WHERE `productLine` = 'Motorcycles'
ORDER BY `productName`;
# Opgave 10
SELECT *
FROM `products`
WHERE `quantityInStock` < '1000'
ORDER BY `quantityInStock` DESC;
# Opgave 11
SELECT `customerName`, `contactFirstName`, `contactLastName`
FROM `customers`
WHERE `country` = 'Norway'
ORDER BY `contactFirstName`;