 SELECT 
    orderNumber,
    orderLineNumber,
    quantityOrdered * priceEach AS subtotal
FROM    orderdetails
ORDER BY subtotal DESC;

SELECT distinct postalCode 
FROM customers;

SELECT 
contactLastname AS lastName,
contactFirstname As FirstName
FROM customers;

SELECT * FROM employees AS e;
SELECT * FROM employees  e;

SELECT
 e.firstName,
 e.lastName
 FROM employees e
 ORDER BY e.firstName;
 
 SELECT     firstName, lastName, reportsTo
FROM    employees
ORDER BY reportsTo desc;

SELECT     firstName, lastName, reportsTo
FROM    employees
ORDER BY reportsTo asc;

 
 INSERT into customers VALUES
(497, 'Jenny','Jenny','Jones','917-433-2828','12 Mockingbird Lane', NULL,'Omaha','NE','54550','USA',1056,2000.00);

commit;

select * from customers;

INSERT into payments (customerNumber, checkNumber, paymentDate, amount)
VALUES 
(112, 'XL55793', '2017-12-13', 1258.16), 
(128, 'QQ27862', '2017-12-13', 3426.26);

select * from payments
 WHERE customerNumber  ;

 SELECT orderNumber, SUM(quantityOrdered) as Qty,
    IF(MOD(SUM(quantityOrdered),2),'Odd', 'Even') as oddOrEven
FROM    orderdetails
GROUP BY    orderNumber
ORDER BY    orderNumber;  

SELECT TRUNCATE(1.555,2);

select * from orderDetails;



SELECT productCode, 
ROUND(AVG(quantityOrdered * priceEach)) as avg_order_item_value
FROM     orderDetails
GROUP BY     productCode;

SELECT   TRUNCATE(1.999,1),  ROUND(1.999,1);

select * from products;

UPDATE products 
SET productDescription = REPLACE(productDescription,'abuot','about');

select DATEDIFF('2023-02-22','2022-02-22');
select DATEDIFF('2022-03-21', '2022-01-21');

select * from orders;

SELECT orderNumber, DATEDIFF(requiredDate, shippedDate) as  daysLeft
FROM     orders
ORDER BY  daysLeft DESC;

SELECT orderNumber, DATEDIFF(requiredDate, shippedDate) as  daysLeft
FROM     orders
ORDER BY  daysLeft ASC;

SELECT orderNumber, DATEDIFF(requiredDate, orderDate) as remaining_days
FROM    orders
WHERE    status = 'In Process'
ORDER BY remaining_days;




