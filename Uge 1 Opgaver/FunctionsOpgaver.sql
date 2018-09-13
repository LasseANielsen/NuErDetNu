 # Opgave 12
 SELECT COUNT(*) AS `Germany_Count`
 FROM `customers`
 WHERE `country` = 'Germany';
 # Opgave 13
 SELECT AVG(buyPrice) AS `Average_Price`
 FROM `products`
 WHERE `productLine` = 'Classic Cars';
 # Opgave 14
 SELECT `buyPrice`
 FROM `products`
 WHERE `productVendor` = 'Autoart Studio Design'
 ORDER BY `buyPrice` DESC
 LIMIT 1;
 # Opgave 15
 SELECT COUNT(DISTINCT `country`) AS `country_count`
 FROM `customers`;
 # Opgave 16
 SELECT SUM(`quantityInStock`) AS `quantity_sum` 
 FROM `products`
 WHERE `productScale` = '1:12';
 # Opgave 17
 SELECT ABS(`MSRP` - `buyPrice`) AS `best_profit`
 FROM `products`
 ORDER BY `best_profit` DESC
 LIMIT 1;