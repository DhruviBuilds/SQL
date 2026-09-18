SELECT *
FROM ECommerceTransactions;

--Numeric Function Exercises

--Task 1
--Display the absolute value of the profit column.

SELECT 
    ABS(profit)
FROM 
ECommerceTransactions;

--Task 2
--Display product prices rounded to 2 decimal places.

SELECT 
    ROUND(ABS(profit),2)
FROM 
ECommerceTransactions;

--Task 3
--Display the ceiling value of every product price.
SELECT 
    ROUND(ABS(profit),2),
    CEILING(profit)
FROM 
ECommerceTransactions;

--Task 4
--Display the floor value of every product price.
SELECT 
    ROUND(profit,2) AS Round_value,
    CEILING(profit) AS Ceil_value,
    FLOOR(profit) AS Floor_value
FROM 
ECommerceTransactions;

--Task 5
--Calculate the square of every quantity.

SELECT 
  quantity,
  SQUARE(quantity) 
FROM 
ECommerceTransactions;

--Task 6
--Calculate the square root of a numeric column.
SELECT
  transaction_id,
  SQRT(price)
FROM 
ECommerceTransactions;

--Task 7
--Calculate a total order value using:
--quantity × price
--and round the result to 2 decimal places.

SELECT
  transaction_id,
  ROUND(quantity*price,2) AS Total_Order_value
FROM 
ECommerceTransactions;

--Task 8
--Display whether each transaction has a positive, negative, or zero profit using SIGN().
SELECT 
*,
CASE WHEN profitsss = 1 THEN 'POSITIVE'
 WHEN profitsss = -1 THEN 'NEGATIVE'
 WHEN profitsss = 0 THEN 'NO PROFIT'
END profit_group
FROM(
SELECT
  transaction_id,
  SIGN(profit) AS profitsss
FROM 
ECommerceTransactions
)t

--Task 9
--Generate a random number between 1 and 100.

SELECT 
    FLOOR(RAND()*100) AS RANDOM_NUMBER

--Task 10
--Calculate the area of a circle with radius stored in a column.
SELECT
    radius,
    PI()*radius*radius AS Area_of_circle
FROM ECommerceTransactions;

--Date & Time Exercises

--Task 11
--Display the current date and time.
SELECT SYSDATETIME()
SELECT GETDATE()

--Task 12
--Display today's date without the time portion.
SELECT CAST(SYSDATETIME() AS DATE)

--Task 13
--Display the year from every order date.

SELECT
  order_date,
  YEAR(order_date) AS order_year
FROM ECommerceTransactions;

--Task 14
--Display the month number from every order date.

SELECT
  order_date,
  MONTH(order_date) AS order_month
FROM ECommerceTransactions;

--Task 15
--Display the name of the month from every order date.

SELECT
  order_date,
  DATENAME(MONTH,order_date) AS order_month_name
FROM ECommerceTransactions;

--Task 16
--Display the weekday name for every order.

SELECT
  order_date,
    DATENAME(WEEKDAY,order_date) AS order_month_name
FROM ECommerceTransactions;

--Task 17
--Calculate the number of days between order date and delivery date.

SELECT
  order_date,
  delivery_date,
  DATEDIFF(DAY, order_date,COALESCE(delivery_date,CAST(GETDATE() AS DATE)))
FROM ECommerceTransactions;

--Task 18
--Calculate an expected delivery date by adding 7 days to the order date.

SELECT
  order_date,
  DATEADD(DAY,7,order_date) AS Expected_Delivery_Date
FROM ECommerceTransactions;

--Task 19
--Display the last day of the month for every order date.

SELECT
  order_date,
 EOMONTH(order_date) AS Eo_Month
FROM ECommerceTransactions;

--Task 20
--Display orders placed in each year and month.
SELECT
     COUNT(*) AS Total_Orders,
     MONTH(order_date) Order_Month,
     YEAR(order_date) Order_Year
FROM ECommerceTransactions
GROUP BY  MONTH(order_date),YEAR(order_date)
ORDER BY Order_Year,
         Order_Month;

--NULL Handling Exercises

--Find all customers whose phone number is NULL.
SELECT
  customer_name
FROM ECommerceTransactions
WHERE mobile IS NULL;

--Task 22
--Find all customers whose phone number is NOT NULL.
SELECT
  customer_name
FROM ECommerceTransactions
WHERE mobile IS NOT NULL;

--Display Not Available instead of NULL phone numbers.
SELECT
  customer_name,
  ISNULL(mobile,'NA')
FROM ECommerceTransactions;

--Task 24
--Display 0 instead of NULL discount values.
SELECT
  ISNULL(discount,0)
FROM ECommerceTransactions;

--Task 25
--For every customer, return the first available value among:
--mobile
--office_phone
--home_phone
--If all are NULL, display:
--No Contact
SELECT
  customer_name,
  mobile,
  office_phone,
  home_phone,
  COALESCE(mobile,office_phone,home_phone,'NO-CONTACT')
FROM ECommerceTransactions;

--Task 26
--Find the number of rows in a table using COUNT(*).
SELECT
COUNT(*) AS Total_Rows
FROM ECommerceTransactions;

--Task 27
--Find the number of non-NULL values in a specific column.
SELECT
COUNT(mobile) Total_Mobile_Number
FROM ECommerceTransactions;

--Task 28
--Calculate an average while handling NULL values.
SELECT
AVG(discount) AS  Average_disc1,
AVG(ISNULL(discount,0)) AS Average_disc2
FROM ECommerceTransactions;

--Task 29
--Calculate a percentage without causing a divide-by-zero error.
--Use NULLIF().

SELECT
sales/NULLIF(quantity,0) AS Price
FROM ECommerceTransactions;

--Task 30
--Find orders where the delivery date is NULL and 
--calculate how many days have passed since the order date.
SELECT
transaction_id,
DATEDIFF(DAY,order_date,GETDATE())
FROM ECommerceTransactions
WHERE delivery_date IS NULL;

--Scenario 1 — E-Commerce Delivery Analysis
--An e-commerce company wants to identify how long each order took to deliver.
--Display:
--Order ID
--Order Date
--Delivery Date
--Delivery Days
--If the delivery date is NULL, calculate the number of days from the order date until today.
--Required concepts:
--DATEDIFF()
--ISNULL()
--GETDATE()
SELECT
transaction_id,
order_date,
delivery_date,
DATEDIFF(DAY,order_date,ISNULL(delivery_date,GETDATE())) AS Delivery_Days
FROM ECommerceTransactions;

--Scenario 2 — Monthly Sales Report
--Management wants a monthly sales report.
--Display:
--Order Year
--Order Month
--Month Name
--Total Sales
--Required concepts:
--YEAR()
--MONTH()
--DATENAME()
--SUM()
SELECT
YEAR(order_date) AS Order_Year,
MONTH(order_date) AS Order_Month,
DATENAME(MONTH,order_date) AS Month_Name,
SUM(quantity*price) AS Total_sales
FROM ECommerceTransactions
GROUP BY YEAR(order_date),MONTH(order_date),DATENAME(MONTH,order_date)
ORDER BY YEAR(order_date), MONTH(order_date);

--Scenario 3 — Customer Contact Report
--The company wants one contact number for each customer.
--Priority:
--Mobile
--↓
--Office Phone
--↓
--Home Phone
--↓
--No Contact
--Required function:
--COALESCE()
SELECT
customer_name,
COALESCE(mobile,office_phone,home_phone,'NO Contact') AS Phone_number
FROM ECommerceTransactions;

--Scenario 4 — Financial Profit Report
--Create a report showing:
--Product
--Sales
--Cost
--Profit
--Profit Percentage
--Round the percentage to 2 decimal places.
--Avoid division-by-zero errors.
--Required concepts:
--ROUND()
--NULLIF()
SELECT 
product,
sales,
cost,
profit,
ROUND(profit/NULLIF(sales,0),2) AS Profit_percent 
FROM ECommerceTransactions;

--Scenario 6 — Month-End Business Report
--Management wants to know the month-end date for every transaction.
--Display:
--Transaction ID
--Transaction Date
--Month Name
--Month End Date
--Required concepts:
--DATENAME()
--EOMONTH()
SELECT 
transaction_id,
order_date,
DATENAME(MONTH,order_date) AS Month_Name,
EOMONTH(order_date) AS Month_End_Date
FROM ECommerceTransactions;