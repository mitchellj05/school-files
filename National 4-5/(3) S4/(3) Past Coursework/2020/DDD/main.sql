.read setup.sql

.print
.print Question 1c (i)
.print

UPDATE FlowerOrder
SET flowerType = 'tulip'
WHERE orderID = 'CHQ3848';

SELECT orderID, flowerType 
FROM flowerOrder
WHERE orderID = 'CHQ3848';

.print
.print Question 1c (ii)
.print

INSERT INTO Customer VALUES(2986, 'Richard', 'Glass', '', '07654029336');

SELECT *
FROM Customer
WHERE customerID = 2986;

.print
.print Question 1d
.print

SELECT forename, surname
FROM Customer, FlowerOrder
WHERE size = "Smallest"
AND Customer.customerID = FlowerOrder.customerID;