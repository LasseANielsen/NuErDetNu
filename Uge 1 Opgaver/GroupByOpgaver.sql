# Opgave 18
SELECT `productLine`, AVG(`buyPrice`) AS `average_price`
FROM `products`
GROUP BY `productLine`;
# Opgave 19
SELECT `productVendor`, COUNT(*) AS `product_amount`
FROM `products`
GROUP BY `productVendor`;
# Opgave 20
SELECT `productScale`, ABS(`MSRP` - `buyPrice`) AS `profit`, (ABS(`MSRP` - `buyPrice`)/`buyPrice`)*100 AS `percentage`
FROM `products`
GROUP BY `productScale`;
# Opgave 21
SELECT `status`, COUNT(*) AS `count`
FROM `orders`
GROUP BY `status`;
# Opgave 22
SELECT `customerName`, COUNT(*) AS `order_count`
FROM `orders`, `customers`
WHERE `orders`.`customerNumber` = `customers`.`customerNumber`
GROUP BY `orders`.`customerNumber`;