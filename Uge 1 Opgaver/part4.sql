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

# Opgave 9
SELECT `cname` AS `Customer_Name`, `ono` AS `Order_Number`
FROM `orders` JOIN `customers` ON (`orders`.`cno` = `customers`.`cno`) JOIN `zipcodes` ON (`zipcodes`.`zip` = `customers`.`zip`)
WHERE `city` = 'Los Angeles';
# Opgave 10

# Opgave 11

# Opgave 12

# Opgave 13

# Opgave 14

# Opgave 15
