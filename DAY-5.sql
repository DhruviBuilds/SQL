CREATE TABLE Customer3
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);


-- INSERT CUSTOMERS3

INSERT INTO Customer3
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

-- CREATE ORDERS TABLE

CREATE TABLE Orders3
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);


-- INSERT ORDERS

INSERT INTO Orders3
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);


-- VIEW TABLES

SELECT * FROM Customer3;
SELECT * FROM Orders3;

/*# Task 1 — Customer Order Details
Write a query to display:
- Customer ID
- Customer Name
- City
- Order ID
- Product Name
- Amount
Use an `INNER JOIN`.*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_id,c.customer_name,c.city,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
INNER JOIN Orders3 o 
ON c.customer_id = o.customer_id;

/*# Task 2 — Customers With Orders
Display all customers who have placed an order.
Show:
- Customer Name
- City
- Product Name
- Order Amount
Use `INNER JOIN`.*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_name,c.city,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
INNER JOIN Orders3 o 
ON c.customer_id = o.customer_id;

/*# Task 3 — All Customers
Display **all customers**, including customers who have not placed any orders.
Show:
- Customer ID
- Customer Name
- Order ID
- Product Name
- Amount
Use `LEFT JOIN`.*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_id,c.customer_name,c.city,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
LEFT JOIN Orders3 o 
ON c.customer_id = o.customer_id;

/*# Task 4 — Customers Without Orders
Find all customers who have **not placed any order**.
Display:
- Customer ID
- Customer Name
- City
Use `LEFT JOIN`.*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_id,c.customer_name,c.city,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
LEFT JOIN Orders3 o 
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

/*# Task 5 — All Orders
Display **all orders**, including orders whose customer does not exist in the `Customers` table.
Show:
- Order ID
- Customer ID
- Customer Name
- Product Name
- Amount
Use `RIGHT JOIN`.*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
RIGHT JOIN Orders3 o 
ON c.customer_id = o.customer_id;

/* Task 6 — Orders Without Customers
Find all orders that do not have a matching customer.
Display:
- Order ID
- Customer ID
- Product Name
- Amount
Use `RIGHT JOIN`.*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
RIGHT JOIN Orders3 o 
ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

/*# Task 7 — Full Customer and Order Analysis

Use `FULL OUTER JOIN` to display **all customers and all orders**, 
whether they have a match or not.

Display:

- Customer ID
- Customer Name
- Order ID
- Product Name
- Amount*/
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
FULL JOIN Orders3 o 
ON c.customer_id = o.customer_id;

/*# Task 8 — Orders Above ₹10,000
Find customers whose order amount is greater than `10000`.
Display:
- Customer Name
- Order ID
- Product Name
- Amount
Use:
- `INNER JOIN`
- `WHERE`*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT c.customer_id,c.customer_name,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
INNER JOIN Orders3 o 
ON c.customer_id = o.customer_id
WHERE o.amount > 10000;

/*# Task 9 — Customers From Delhi
Find all orders placed by customers from **Delhi**.
Display:
- Customer Name
- City
- Order ID
- Product Name
- Amount
Use `INNER JOIN`.*/
SELECT c.customer_name,c.city,o.order_id,o.product_name,o.amount
FROM 
Customer3 As c
INNER JOIN Orders3 o 
ON c.customer_id = o.customer_id
WHERE city = 'Delhi';

/*# Task 10 — Orders With Quantity Greater Than 2
Find all customers who ordered a quantity greater than `2`.
Display:
- Customer Name
- Product Name
- Quantity
- Amount
Sort the result by quantity in descending order.*/
SELECT c.customer_name,o.product_name,o.amount,o.quantity
FROM 
Customer3 As c
RIGHT JOIN Orders3 o 
ON c.customer_id = o.customer_id
WHERE quantity > 2
ORDER BY quantity DESC;

/*# Task 11 — Total Amount Spent by Each Customer
Calculate the total amount spent by every customer.
Display:
- Customer ID
- Customer Name
- Total Amount
Customers who have not placed any orders should also appear.
Use:
- `LEFT JOIN`
- `GROUP BY`
- `SUM()`*/


SELECT 
c.customer_name,
c.customer_id,
SUM(amount) AS Total_Amt_Spend
FROM 
Customer3 c
LEFT JOIN
Orders3 o
ON c.customer_id = o.customer_id
GROUP by customer_name,c.customer_id;


/*Task 12 — Number of Orders Per Customer
Find the total number of orders placed by each customer.
Display:
Customer ID
Customer Name
Total Orders
Customers with no orders should also appear.
Use:
LEFT JOIN
GROUP BY
COUNT()*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT 
c.customer_name,
c.customer_id,
COUNT(order_id) AS Total_Orders
FROM 
Customer3 c
LEFT JOIN
Orders3 o
ON c.customer_id = o.customer_id
GROUP by customer_name,c.customer_id;

/*Task 13 — Average Order Amount
Calculate the average order amount for each customer.
Display:
Customer Name
Average Order Amount
Only display customers who have placed at least one order.
Use:
INNER JOIN
GROUP BY
AVG()*/
SELECT * FROM Customer3;
SELECT * FROM Orders3;
SELECT 
c.customer_name,
AVG(amount) AS Avg_Order_Amt
FROM 
Customer3 c
INNER JOIN
Orders3 o
ON c.customer_id = o.customer_id 
GROUP by customer_name
HAVING COUNT(order_id) >= 1;

/*Task 14 — Highest Order Amount
Find the customer who placed the order with the highest amount.
Display:
Customer Name
Order ID
Product Name
Amount*/
-- top1 with ties
SELECT 
c.customer_name,
o.order_id,
o.product_name,
o.amount
FROM 
Customer3 c
INNER JOIN
Orders3 o
ON c.customer_id = o.customer_id
WHERE o.amount = (SELECT MAX(amount) AS Highest_Amt_Order FROM Orders3);

/*Task 15 — Lowest Order Amount
Find the customer who placed the order with the lowest amount.
Display:
Customer Name
Order ID
Product Name
Amount*/
SELECT 
c.customer_name,
o.order_id,
o.product_name,
o.amount
FROM 
Customer3 c
INNER JOIN
Orders3 o
ON c.customer_id = o.customer_id
WHERE o.amount = (SELECT MIN(amount) AS Lowest_Amt_Order FROM Orders3);

/*Task 16 — Customer Order Summary
Create a customer-wise summary containing:
Customer ID
Customer Name
Number of Orders
Total Quantity
Total Amount
Include customers who have no orders.
Use:
LEFT JOIN
GROUP BY
COUNT()
SUM()*/
SELECT 
c.customer_id,
c.customer_name,
COUNT(o.order_id) AS Total_Orders,
SUM(o.quantity) AS Total_Quantity,
SUM(o.amount) AS Total_Amount
FROM 
Customer3 c
LEFT JOIN
Orders3 o
ON c.customer_id = o.customer_id
GROUP by c.customer_id,customer_name;

/*Task 17 — Customers With Total Spending Greater Than ₹20,000
Calculate the total amount spent by each customer.
Display only customers whose total spending is greater than ₹20,000.
Use:
LEFT JOIN
GROUP BY
SUM()
HAVING*/
SELECT 
c.customer_name,
SUM(o.amount) AS Total_Amount
FROM 
Customer3 c
LEFT JOIN
Orders3 o
ON c.customer_id = o.customer_id 
GROUP by customer_name
HAVING SUM(o.amount)> 20000;

/*Task 18 — Customers With More Than One Order
Find customers who have placed more than one order.
Display:
Customer ID
Customer Name
Number of Orders
Use:
JOIN
GROUP BY
COUNT()
HAVING*/
SELECT 
c.customer_id,
c.customer_name,
COUNT(o.order_id) AS Total_Orders
FROM 
Customer3 c
INNER JOIN
Orders3 o
ON c.customer_id = o.customer_id 
GROUP by c.customer_id,customer_name
HAVING COUNT(o.order_id) > 1;

/*Task 19 — Compare Matching and Unmatched Records
Using FULL OUTER JOIN, identify:
Customers who have orders
Customers who do not have orders
Orders whose customers do not exist
Display the appropriate customer and order information.*/
SELECT 
    c.customer_id AS customer_table_id,
    c.customer_name,
    o.order_id,
    o.amount
    /*CASE 
        WHEN c.customer_id IS NOT NULL AND o.order_id IS NOT NULL 
            THEN 'Customer with Order'
        WHEN c.customer_id IS NOT NULL AND o.order_id IS NULL 
            THEN 'Customer without Order'
        WHEN c.customer_id IS NULL AND o.order_id IS NOT NULL 
            THEN 'No Customer'
    END AS Status*/
FROM Customer3 AS c
FULL OUTER JOIN Orders3 AS o 
    ON c.customer_id = o.customer_id;

/*Task 20 — Business Order Report
Create a complete order report using INNER JOIN.
The report should contain:
Customer ID
Customer Name
City
Order ID
Product Name
Quantity
Amount
Total Value
Calculate:
Total Value = Quantity × Amount*/

SELECT 
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.product_name,
    o.quantity,
    o.amount,
    (o.quantity*o.amount) AS Total_Value
FROM Customer3 AS c
INNER JOIN Orders3 AS o 
    ON c.customer_id = o.customer_id;







