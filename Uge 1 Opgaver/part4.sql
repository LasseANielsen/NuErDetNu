# Opgave 1
SELECT `cname` AS `Customer_Name`
FROM `customers`;
# Opgave 2
SELECT `pname` AS `Product_Name`
FROM `parts`
WHERE `qoh` >= 150;
# Opgave 3
SELECT `cname` AS `Customer_Name`, `zip`
FROM `customers`
WHERE RIGHT(`phone`, 2) = '55';
# Opgave 4
SELECT *
FROM `parts`
WHERE `price` < '18.00';
# Opgave 5
SELECT `cname` AS `Customer_Name`, `city`
FROM `customers` JOIN `zipcodes` ON (`customers`.`zip` = `zipcodes`.`zip`);
# Opgave 6
SELECT `ono` AS `Order_Number`
FROM `orders` JOIN `employees` ON (`orders`.`eno` = `employees`.`eno`)
WHERE `ename` = 'Jones';
# Opgave 7
SELECT `cname` AS `Customer_Name`, `ono` AS `Order_Number`
FROM `orders` JOIN `customers` ON (`orders`.`cno` = `customers`.`cno`)
WHERE LEFT(`street`, 1) = '1';
# Opgave 8
SELECT *
FROM `employees` RIGHT JOIN `zipcodes` ON (`employees`.`zip` = `zipcodes`.`zip`);
# Opgave 9
SELECT `cname` AS `Customer_Name`, `ono` AS `Order_Number`
FROM `orders` JOIN `customers` ON (`orders`.`cno` = `customers`.`cno`) JOIN `zipcodes` ON (`zipcodes`.`zip` = `customers`.`zip`)
WHERE `city` = 'Los Angeles';
# Opgave 10
SELECT *
FROM `customers` JOIN `orders` ON (`customers`.`cno` = `orders`.`cno`) JOIN `odetails` ON (`orders`.`ono` = `odetails`.`ono`)
WHERE `orders`.`ono` = '1020';
# Opgave 11
SELECT SUM(`price` * `qty`) AS `order_sum`
FROM `orders` LEFT JOIN `odetails` ON (`orders`.`ono` = `odetails`.`ono`) 
LEFT JOIN `parts` ON (`odetails`.`pno` = `parts`.`pno`);
# Opgave 12
SELECT *
FROM `orders`
WHERE `recieved` > DATE(NOW());
# Opgave 13
SELECT `ono`, `cname`, `street`, `customers`.`zip`, `city`
FROM `orders` JOIN `customers` ON (`orders`.`cno` = `customers`.`cno`) 
JOIN `zipcodes` ON (`zipcodes`.`zip` = `customers`.`zip`);
# Opgave 14
SELECT *
FROM `customers` JOIN `orders` ON (`customers`.`cno` = `orders`.`cno`) 
JOIN `employees` ON (`orders`.`eno` = `employees`.`eno`) 
JOIN `zipcodes` ON (`employees`.`zip` = `zipcodes`.`zip`)
WHERE `zipcodes`.`city` = 'Los Angeles';
# Opgave 15
SELECT `orders`.`ono`, SUM(`price` * `qty`) AS `totalPrice`
FROM `orders` JOIN `odetails` ON (`orders`.`ono` = `odetails`.`ono`) 
JOIN `parts` ON (`odetails`.`pno` = `parts`.`pno`)
GROUP BY `orders`.`ono`;