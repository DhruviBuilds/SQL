SELECT * FROM sales_transactions;
--SELECT * FROM sales_transactions WHERE customer_name like '%h_';

/*Task 1 — Sales Transaction Summary
Generate a business summary of the sales_transactions table showing:

Total number of transactions
Total quantity sold
Total sales value based on quantity × unit_price
Average unit price
Highest unit price
Lowest unit price*/


SELECT 
COUNT(*),
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price,
MAX(unit_price) AS Max_unit_price,
MIN(unit_price) AS Min_unit_price
FROM 
sales_transactions;

/*Task 2 — Category Performance Analysis
Management wants to compare product categories.

For each category, display:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Arrange the categories from highest total sales value to lowest.*/
SELECT 
category,
COUNT(*) AS Total_record,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price,
MAX(unit_price) AS Max_unit_price,
MIN(unit_price) AS Min_unit_price
FROM 
sales_transactions
GROUP BY category
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 3 — Salesperson Performance Report
Calculate the performance of each salesperson.

Display:

Salesperson
Number of transactions handled
Total quantity sold
Total sales value
Average unit price
Arrange the result from highest total sales value to lowest.*/

SELECT 
salesperson,
COUNT(*) AS Transaction_handled,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY salesperson
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 4 — City-Wise Sales Analysis
Analyze sales performance across cities.

For each city, display:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Display the cities in descending order of total sales value.*/

SELECT 
city,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY city
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 5 — Customer Type Analysis
Analyze purchasing behavior based on customer type.

For each customer type, calculate:

Number of transactions
Total quantity purchased
Total sales value
Average unit price
Arrange the result by total sales value from highest to lowest.*/

SELECT 
customer_type,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY customer_type
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 6 — Payment Mode Analysis
Management wants to understand which payment methods generate the most business.

For each payment mode, calculate:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Arrange the result by total sales value in descending order.*/
SELECT 
payment_mode,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY payment_mode
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 7 — High-Performing Categories
Identify categories that generated more than 300000 in total sales value.

Display:

Category
Total quantity sold
Total sales value
Average unit price
Only categories meeting the required sales threshold should appear.*/

SELECT 
category,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY category
HAVING SUM(quantity*unit_price) > 300000;

/*Task 8 — High-Performing Salespersons
Identify salespersons whose total sales value is greater than 500000.

Display:

Salesperson
Number of transactions
Total quantity sold
Total sales value
Arrange the result from highest to lowest total sales value.*/
SELECT 
salesperson,
COUNT(*) AS No_Of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY salesperson
HAVING SUM(quantity*unit_price) > 500000 
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 9 — High-Volume Products
Identify products where the total quantity sold is greater than 5.

Display:

Product name
Total quantity sold
Total sales value
Average unit price
Arrange the result by total quantity sold from highest to lowest.*/
SELECT 
product_name,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY product_name
HAVING SUM(quantity) > 5 
ORDER BY SUM(quantity) DESC;

/*Task 10 — Premium Customer Analysis
Analyze only transactions made by Premium customers.

For each category, calculate:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only categories where the total sales value is greater than 200000.*/

SELECT 
category,
COUNT(*) AS Total_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
WHERE (customer_type = 'Premium')
GROUP BY category
HAVING SUM(quantity*unit_price) > 200000;

/*Task 11 — VIP Customer Analysis
Analyze transactions made by VIP customers.

For each salesperson, calculate:

Number of transactions
Total quantity sold
Total sales value
Display only salespersons who generated more than 300000 in VIP sales.*/
SELECT 
salesperson,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales
FROM 
sales_transactions
WHERE (customer_type = 'VIP')
GROUP BY salesperson
HAVING SUM(quantity*unit_price) > 300000;

/*Task 12 — City and Payment Analysis
Consider transactions where the payment mode is either Online or Card.

For each city, calculate:

Number of transactions
Total quantity sold
Total sales value
Display only cities where total sales value is greater than 300000.*/
SELECT 
city,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales
FROM 
sales_transactions
WHERE (payment_mode = 'Online' OR payment_mode = 'Card')
GROUP BY city
HAVING SUM(quantity*unit_price) > 300000;

/*Task 13 — Discount Performance Analysis
Analyze the effect of discounts.

For each discount percentage, calculate:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only discount percentages that occur in at least 2 transactions.*/
SELECT 
discount_percent,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
GROUP BY discount_percent
HAVING COUNT(*) >= 2;

/*Task 14 — Electronics Business Analysis
Consider only Electronics transactions.

For each salesperson, calculate:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Highest unit price
Display only salespersons whose Electronics sales value exceeds 250000.*/
SELECT 
salesperson,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price,
MAX(unit_price) AS Highest_unit_price
FROM 
sales_transactions
WHERE (category = 'Electronics')
GROUP BY salesperson
HAVING SUM(quantity*unit_price) > 250000;

/*Task 15 — Furniture Business Analysis
Consider only Furniture transactions where the quantity is greater than 2.

For each city, calculate:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only cities where the resulting total sales value is greater than 50000.*/
SELECT 
city,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
WHERE (category = 'Furniture' AND quantity > 2)
GROUP BY city
HAVING SUM(quantity*unit_price) > 50000;

/*Task 16 — Appliance Sales Analysis
Consider only Appliances transactions where:

Payment mode is not Cash
Discount percentage is less than 20
Group the transactions by salesperson and display:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Display only salespersons with total sales value above 100000.*/
SELECT 
salesperson,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price
FROM 
sales_transactions
WHERE (category = 'Appliances' AND payment_mode <> 'Cash' AND discount_percent < 20)
GROUP BY salesperson
HAVING SUM(quantity*unit_price) > 100000;

/*Task 17 — Premium vs VIP Performance
Analyze only Premium and VIP customers.

For each customer type, calculate:

Number of transactions
Total quantity sold
Total sales value
Average unit price
Maximum unit price
Arrange the result by total sales value from highest to lowest.*/
SELECT 
customer_type,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price,
MAX(unit_price) AS Highest_unit_price
FROM 
sales_transactions
WHERE (customer_type = 'VIP' OR customer_type = 'Premium')
GROUP BY customer_type
ORDER BY SUM(quantity*unit_price) DESC;

/*Task 18 — Salesperson Discount Analysis
Management wants to identify salespersons handling high-discount transactions.

Consider only transactions where the discount percentage is greater than 15.

For each salesperson, calculate:

Number of transactions
Total quantity sold
Total sales value
Average discount percentage
Display only salespersons who have at least 2 such transactions.*/
SELECT 
salesperson,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(discount_percent) AS Avg_disc_per
FROM 
sales_transactions
WHERE (discount_percent > 15)
GROUP BY salesperson
HAVING COUNT(*) >=2;

/*Task 19 — Insert and Verify New Transaction
A new customer transaction has been received with the following information:

Field	Value
Transaction ID	1031
Customer Name	Raj Mehta
Product Name	MacBook Pro
Category	Electronics
Quantity	2
Unit Price	125000
Discount	10
City	Mumbai
Payment Mode	Online
Salesperson	Rahul
Customer Type	Premium
Insert this transaction into the table.

After inserting the record, generate a query to verify that the transaction has been successfully added.*/

INSERT INTO sales_transactions
VALUES
(1031,'Raj Mehta','MacBook Pro','Electronics',2,125000,10,'Mumbai','Online','Rahul','Premium');

SELECT *
FROM 
sales_transactions
WHERE transaction_id = 1031;

/*Task 20 — Final Business Intelligence Challenge
Management wants a consolidated performance report.

Consider transactions where:

Customer type is either Premium or VIP
Payment mode is not Cash
Quantity is greater than 1
Discount percentage is less than 20
Group the qualifying transactions by salesperson and category.

The report must contain:

Salesperson
Category
Number of transactions
Total quantity sold
Total sales value
Average unit price
Minimum unit price
Maximum unit price
Average discount percentage
Display only salesperson-category combinations where the total sales value is greater than 200000.

Arrange the final report from highest total sales value to lowest.*/

SELECT 
salesperson,
category,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity*unit_price) AS Total_sales,
AVG(unit_price) AS Avg_unit_price,
MAX(unit_price) AS Max_unit_price,
MIN(unit_price) AS Min_unit_price,
AVG(discount_percent) AS Avg_disc_per
FROM 
sales_transactions
WHERE ((customer_type = 'VIP' OR customer_type = 'Premium') AND payment_mode <> 'Cash' AND discount_percent < 20 AND quantity > 1)
GROUP BY salesperson,category
HAVING SUM(quantity*unit_price) > 200000
ORDER BY SUM(quantity*unit_price) DESC;

/*Update

Choose the transaction with transaction_id = 1031 and update its discount percentage from 10 to 12.

Delete

Delete the transaction with transaction_id = 1031.

Then verify that the transaction has been removed.*/

SELECT * FROM sales_transactions;

UPDATE sales_transactions
SET discount_percent = 12
WHERE transaction_id = 1031;

DELETE FROM sales_transactions
WHERE transaction_id = 1031;

--Extrass
/* Task 1 — Category Profitability Pattern

For each category, calculate:

Number of transactions
Total quantity
Total sales
Average unit price
Minimum unit price
Maximum unit price

Show only categories where:

Total quantity sold > 10
Total sales > 500,000

Sort by total sales descending.

Logic challenge: You need two aggregate conditions in HAVING.*/
SELECT 
category,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity * unit_price) AS Total_Sales,
AVG(unit_price) As Avg_unit_price,
MIN(unit_price) AS Min_Unit_Price,
MAX(unit_price) AS Max_Unit_Price
FROM 
sales_transactions
GROUP BY category
HAVING (SUM(quantity) > 10) AND (SUM(quantity * unit_price)> 500000)
ORDER BY SUM(quantity * unit_price) DESC;

/*Task 5 — Online Premium Customers

Consider only:

Customer Type = Premium
Payment Mode = Online

Group by category.

Display:

Number of transactions
Total quantity
Total sales
Average unit price

Only show categories where total sales > 150,000.

Think carefully: Which conditions belong in WHERE and which belong in HAVING?*/
SELECT 
category,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity * unit_price) AS Total_Sales,
AVG(unit_price) As Avg_unit_price
FROM 
sales_transactions
WHERE (customer_type = 'Premium' AND payment_mode = 'Online')
GROUP BY category
HAVING (SUM(quantity * unit_price) > 150000);

/* Task 9 — Salesperson + Category

Group by:

salesperson, category

Display:

Number of transactions
Total quantity
Total sales
Average unit price

Show only combinations where total sales > 200,000.

Sort by salesperson and then total sales descending.*/
SELECT 
salesperson,category,
COUNT(*) AS No_of_transactions,
SUM(quantity) AS Total_qty_sold,
SUM(quantity * unit_price) AS Total_Sales,
AVG(unit_price) As Avg_unit_price
FROM 
sales_transactions
WHERE (customer_type = 'Premium' AND payment_mode = 'Online')
GROUP BY salesperson,category
HAVING (SUM(quantity * unit_price) > 200000)
ORDER BY SUM(quantity * unit_price);
