# Opgave 31
SELECT *
FROM `products`;

SELECT *
FROM `productlines`;

INSERT INTO `productlines` (`productLine`, `textDescription`, `htmlDescription`, `image`)
VALUES ('Bike', 'Ride your bike ffs!', NULL, NULL);

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) 
VALUES ('S8 1337', '2018 Swagger', 'Bike', '1:8', 'Smoked Pigeon', 'Bike with swag to the maximum!', '1337', '347.01', '499.95');
# Opgave 32
SELECT *
FROM `offices`;

INSERT INTO `offices` (`officeCode`, `city`, `phone`, `addressLine1`, `addressLine2`, `state`, `country`, `postalCode`, `territory`)
VALUES ('8', 'Copenhagen', '+45 1337 0360', 'Købmagergade 27', '2TV', NULL, 'Denmark', '1150', 'DK');
# Opgave 33
SELECT *
FROM `products`;

INSERT INTO `products` (`productCode`, `productName`, `productLine`, `productScale`, `productVendor`, `productDescription`, `quantityInStock`, `buyPrice`, `MSRP`) 
VALUES ('S8 1338', '2018 Mountainbike ', 'Bike', '1:8', 'Smoked Pigeon', 'Mountainbike with swag to the maximum!', '1337', '247.01', '399.95'),
('S8 1339', '2018 Triathlonbike', 'Bike', '1:8', 'Smoked Pigeon', 'Triathlonbike with swag to the maximum!', '1337', '147.01', '299.95');