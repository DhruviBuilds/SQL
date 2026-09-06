CREATE DATABASE SalesAnalyticsDB;
USE SalesAnalyticsDB;
CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

INSERT INTO customers 
VALUES 
(1,'Rohit',30,'India',150000),
(2,'Rahul',29,'China',200000),
(3,'Pooja',28,'USA',15000),
(4,'Aeron',24,'India',300000),
(5,'Japs',27,'Australia',170000),
(6,'Mihir',21,'Japan',180000),
(7,'Urvee',20,'India',190000),
(8,'Mohit',19,'USA',200000),
(9,'Dhruvi',20,'UK',300000),
(10,'Ayushi',18,'India',140000);

SELECT * FROM customers;

SELECT user_name,age,country FROM customers;

SELECT user_name,country,amount_spend FROM customers;

SELECT * FROM customers
WHERE amount_spend > 200000;

SELECT * FROM customers
WHERE age < 25;

SELECT * FROM customers
WHERE country = 'India';

SELECT * FROM customers
WHERE amount_spend < 200000;

SELECT * FROM customers
WHERE amount_spend > 150000 AND age < 30;

SELECT * FROM customers
WHERE amount_spend > 200000 AND country = 'India';

SELECT * FROM customers
WHERE (country = 'India' OR  country = 'USA') AND (amount_spend > 100000);

SELECT * FROM customers
WHERE country <> 'India';

SELECT * FROM customers
ORDER BY  amount_spend ASC;

SELECT * FROM customers
ORDER BY  amount_spend DESC;

SELECT user_name,age,country,amount_spend FROM customers ORDER BY age;

--Amount spent is greater than 30,000
-- Country is either India or USA
-- Sort the result by spending from:

-- Highest → Lowest

SELECT * FROM customers WHERE (amount_spend > 100000) AND (country = 'India' OR country = 'USA') AND (age BETWEEN 25 AND 40) ORDER BY amount_spend DESC;

--Age is greater than or equal to 30
--Amount spent is greater than 40,000
--Customer is not from India
--Sort the results by amount spent from highest to lowest

SELECT * FROM customers WHERE (amount_spend > 100000) AND (country != 'India') AND (age >= 25) ORDER BY amount_spend DESC;

SELECT TOP 2 * FROM customers
ORDER BY  amount_spend DESC;