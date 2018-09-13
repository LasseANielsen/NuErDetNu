# Opgave 4
SELECT *
FROM `customers`
WHERE `country` = 'France';
# Opgave 5
SELECT firstName, lastName
FROM `employees`
WHERE `jobTitle` = 'Sales Rep';
# Opgave 6
SELECT *
FROM `products`
WHERE `productLine` = 'Motorcycles'
AND `buyPrice` >= '50.0'
AND `buyPrice` <= '100.0';
# Opgave 7
SELECT `customerNumber`
FROM `orders`
WHERE `status` = 'Cancelled';
# Opgave 8
SELECT `productLine`, `productVendor`
FROM `products`
WHERE `productScale` = '1:18';