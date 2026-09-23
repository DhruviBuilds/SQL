CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

INSERT INTO Employee
(emp_id, emp_name, department, city, salary, joining_date)
VALUES
(101, 'Aarav Sharma', 'IT', 'Ahmedabad', 72000, '2021-01-15'),
(102, 'Priya Patel', 'IT', 'Mumbai', 85000, '2020-06-10'),
(103, 'Rahul Mehta', 'IT', 'Ahmedabad', 78000, '2022-03-20'),
(104, 'Neha Shah', 'HR', 'Pune', 65000, '2021-08-12'),
(105, 'Vikram Singh', 'HR', 'Delhi', 72000, '2019-04-18'),
(106, 'Ananya Desai', 'HR', 'Mumbai', 68000, '2022-01-25'),
(107, 'Rohan Gupta', 'Sales', 'Delhi', 55000, '2023-02-14'),
(108, 'Sneha Joshi', 'Sales', 'Ahmedabad', 62000, '2021-11-05'),
(109, 'Karan Shah', 'Sales', 'Mumbai', 58000, '2022-07-19'),
(110, 'Meera Patel', 'Finance', 'Pune', 82000, '2020-09-21'),
(111, 'Arjun Mehta', 'Finance', 'Delhi', 90000, '2018-05-16'),
(112, 'Kavya Shah', 'Finance', 'Ahmedabad', 85000, '2021-12-01'),
(113, 'Dev Kumar', 'IT', 'Bangalore', 78000, '2023-06-11'),
(114, 'Isha Patel', 'IT', 'Mumbai', 92000, '2019-10-28'),
(115, 'Manav Joshi', 'Sales', 'Pune', 61000, '2020-02-17'),
(116, 'Pooja Mehta', 'HR', 'Ahmedabad', 75000, '2018-11-30'),
(117, 'Aditya Shah', 'Finance', 'Mumbai', 88000, '2022-04-09'),
(118, 'Nisha Gupta', 'Sales', 'Delhi', 59000, '2023-09-13'),
(119, 'Harsh Patel', 'IT', 'Pune', 88000, '2021-03-22'),
(120, 'Riya Singh', 'Finance', 'Ahmedabad', 76000, '2023-01-18');

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    employee_id INT,
    sale_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    amount DECIMAL(12,2),

    FOREIGN KEY (employee_id)
    REFERENCES Employee(emp_id)
);

INSERT INTO Sales
(sale_id, employee_id, sale_date, product, category, quantity, amount)
VALUES
(1,101,'2025-01-03','Laptop','Electronics',2,140000),
(2,102,'2025-01-04','Monitor','Electronics',3,75000),
(3,103,'2025-01-05','Keyboard','Accessories',5,25000),
(4,107,'2025-01-06','Laptop','Electronics',1,70000),
(5,108,'2025-01-07','Mouse','Accessories',10,15000),
(6,110,'2025-01-08','Printer','Electronics',2,50000),
(7,111,'2025-01-09','Laptop','Electronics',2,145000),
(8,102,'2025-01-10','Keyboard','Accessories',8,40000),
(9,109,'2025-01-11','Monitor','Electronics',2,52000),
(10,112,'2025-01-12','Printer','Electronics',3,72000),
(11,101,'2025-01-13','Mouse','Accessories',15,22500),
(12,103,'2025-01-14','Laptop','Electronics',1,72000),
(13,114,'2025-01-15','Monitor','Electronics',4,108000),
(14,115,'2025-01-16','Keyboard','Accessories',12,60000),
(15,108,'2025-01-17','Laptop','Electronics',2,150000),
(16,116,'2025-01-18','Printer','Electronics',1,26000),
(17,117,'2025-01-19','Monitor','Electronics',3,81000),
(18,118,'2025-01-20','Mouse','Accessories',20,30000),
(19,119,'2025-01-21','Laptop','Electronics',3,225000),
(20,120,'2025-01-22','Keyboard','Accessories',10,50000),
(21,101,'2025-01-23','Monitor','Electronics',2,54000),
(22,102,'2025-01-24','Laptop','Electronics',1,76000),
(23,103,'2025-01-25','Mouse','Accessories',12,18000),
(24,107,'2025-01-26','Printer','Electronics',2,52000),
(25,108,'2025-01-27','Monitor','Electronics',2,50000),
(26,110,'2025-01-28','Laptop','Electronics',1,73000),
(27,111,'2025-01-29','Keyboard','Accessories',15,75000),
(28,112,'2025-01-30','Mouse','Accessories',25,37500),
(29,114,'2025-02-01','Laptop','Electronics',2,155000),
(30,115,'2025-02-02','Monitor','Electronics',3,78000),
(31,116,'2025-02-03','Keyboard','Accessories',10,50000),
(32,117,'2025-02-04','Laptop','Electronics',1,74000),
(33,118,'2025-02-05','Printer','Electronics',2,51000),
(34,119,'2025-02-06','Monitor','Electronics',4,104000),
(35,120,'2025-02-07','Mouse','Accessories',18,27000),
(36,101,'2025-02-08','Laptop','Electronics',2,148000),
(37,102,'2025-02-09','Printer','Electronics',1,25000),
(38,103,'2025-02-10','Monitor','Electronics',3,79000),
(39,107,'2025-02-11','Mouse','Accessories',20,30000),
(40,108,'2025-02-12','Keyboard','Accessories',14,70000),
(41,109,'2025-02-13','Laptop','Electronics',2,152000),
(42,110,'2025-02-14','Monitor','Electronics',2,53000),
(43,111,'2025-02-15','Printer','Electronics',3,78000),
(44,112,'2025-02-16','Laptop','Electronics',2,146000),
(45,114,'2025-02-17','Keyboard','Accessories',10,50000),
(46,115,'2025-02-18','Mouse','Accessories',15,22500),
(47,116,'2025-02-19','Laptop','Electronics',1,71000),
(48,117,'2025-02-20','Monitor','Electronics',3,81000),
(49,118,'2025-02-21','Keyboard','Accessories',12,60000),
(50,119,'2025-02-22','Laptop','Electronics',2,149000),
(51,120,'2025-02-23','Printer','Electronics',2,50000),
(52,101,'2025-02-24','Mouse','Accessories',22,33000),
(53,102,'2025-02-25','Monitor','Electronics',2,51000),
(54,103,'2025-02-26','Laptop','Electronics',1,75000),
(55,107,'2025-02-27','Keyboard','Accessories',16,80000),
(56,108,'2025-02-28','Printer','Electronics',2,49000),
(57,109,'2025-03-01','Mouse','Accessories',25,37500),
(58,110,'2025-03-02','Laptop','Electronics',2,150000),
(59,111,'2025-03-03','Monitor','Electronics',4,106000),
(60,112,'2025-03-04','Keyboard','Accessories',18,90000);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(12,2),
    status VARCHAR(30)
);

INSERT INTO Orders
(order_id, customer_id, order_date, product, category, amount, status)
VALUES
(1001,201,'2025-01-02','Laptop','Electronics',70000,'Delivered'),
(1002,202,'2025-01-03','Mouse','Accessories',1500,'Delivered'),
(1003,201,'2025-01-08','Monitor','Electronics',25000,'Delivered'),
(1004,203,'2025-01-10','Keyboard','Accessories',3000,'Delivered'),
(1005,202,'2025-01-12','Laptop','Electronics',72000,'Delivered'),
(1006,204,'2025-01-15','Printer','Electronics',26000,'Cancelled'),
(1007,201,'2025-01-18','Keyboard','Accessories',3500,'Delivered'),
(1008,205,'2025-01-20','Laptop','Electronics',75000,'Delivered'),
(1009,203,'2025-01-23','Mouse','Accessories',1800,'Delivered'),
(1010,202,'2025-01-25','Monitor','Electronics',27000,'Delivered'),
(1011,206,'2025-01-27','Laptop','Electronics',68000,'Delivered'),
(1012,204,'2025-01-29','Keyboard','Accessories',3200,'Delivered'),
(1013,205,'2025-02-01','Printer','Electronics',25500,'Delivered'),
(1014,201,'2025-02-03','Mouse','Accessories',2000,'Delivered'),
(1015,203,'2025-02-05','Laptop','Electronics',73000,'Delivered'),
(1016,202,'2025-02-07','Keyboard','Accessories',3500,'Delivered'),
(1017,206,'2025-02-10','Monitor','Electronics',28000,'Delivered'),
(1018,204,'2025-02-12','Laptop','Electronics',71000,'Delivered'),
(1019,205,'2025-02-15','Mouse','Accessories',2200,'Delivered'),
(1020,201,'2025-02-18','Printer','Electronics',25000,'Delivered'),
(1021,203,'2025-02-20','Monitor','Electronics',26000,'Delivered'),
(1022,202,'2025-02-22','Laptop','Electronics',76000,'Delivered'),
(1023,206,'2025-02-24','Keyboard','Accessories',3800,'Delivered'),
(1024,204,'2025-02-26','Mouse','Accessories',1900,'Delivered'),
(1025,205,'2025-02-28','Laptop','Electronics',78000,'Delivered'),
(1026,201,'2025-03-02','Monitor','Electronics',29000,'Delivered'),
(1027,203,'2025-03-04','Printer','Electronics',27000,'Delivered'),
(1028,202,'2025-03-06','Mouse','Accessories',2100,'Delivered'),
(1029,206,'2025-03-08','Laptop','Electronics',74000,'Delivered'),
(1030,204,'2025-03-10','Keyboard','Accessories',3600,'Delivered'),
(1031,205,'2025-03-12','Monitor','Electronics',30000,'Delivered'),
(1032,201,'2025-03-15','Laptop','Electronics',80000,'Delivered'),
(1033,203,'2025-03-17','Mouse','Accessories',2300,'Delivered'),
(1034,202,'2025-03-19','Printer','Electronics',28000,'Delivered'),
(1035,206,'2025-03-21','Monitor','Electronics',31000,'Delivered');

SELECT *
FROM Employee;

SELECT * 
FROM Sales;

SELECT COUNT(*) AS Orders_Count
FROM Orders;

-- Task 1 — Rank Employees by Salary
-- Display employee name, department, salary, and their rank based 
-- on salary from highest to lowest.
-- Hint: RANK() OVER (...)

SELECT 
emp_name,
department,
salary,
RANK() OVER(ORDER BY salary DESC) AS Ranking
FROM 
Employee;

--Task 2 — Dense Rank Employees
--Display all employees with their salary and dense rank within the company.
--Hint: DENSE_RANK()

SELECT 
emp_name,
salary,
DENSE_RANK() OVER(ORDER BY salary)
FROM 
Employee;

--Task 3 — Row Number for Employees
--Assign a unique row number to every employee based on salary from highest to lowest.
--Hint: ROW_NUMBER()
SELECT 
emp_name,
ROW_NUMBER() OVER(ORDER BY salary DESC)
FROM 
Employee;

--Task 4 — Rank Employees Within Department
--Rank employees based on salary separately within each department.
--Hint: PARTITION BY department

SELECT 
emp_name,
department,
salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS Ranking
FROM 
Employee;

--Task 5 — Top 3 Employees in Each Department
--Find the top 3 highest-paid employees from every department.
--Hint: Use ROW_NUMBER() or DENSE_RANK() with PARTITION BY.
SELECT 
*
FROM
(
SELECT 
emp_name,
department,
salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS Ranking
FROM 
Employee)t
WHERE Ranking IN(1,2,3);

--Task 6 — Department Average Salary
--Display:
--Employee name
--Department
--Salary
--Average salary of their department
--Hint: AVG() OVER(PARTITION BY ...)
SELECT 
emp_name,
department,
salary,
AVG(salary) OVER(PARTITION BY department) AS Avg_Salary_By_Dept
FROM 
Employee;

--Task 7 — Difference from Department Average
--Display each employee's salary and the difference between 
--their salary and their department's average salary.
--Hint: Salary − AVG() OVER(...)
SELECT 
emp_name,
department,
salary,
AVG(salary) OVER(PARTITION BY department) AS Avg_Salary_By_Dept,
salary - AVG(salary) OVER(PARTITION BY department) AS Diff
FROM 
Employee;

--Task 8 — Department Total Salary
--Display every employee along with the total salary paid to their department.
--Hint: SUM() OVER(PARTITION BY department)
SELECT 
emp_name,
department,
salary,
SUM(salary) OVER(PARTITION BY department) AS Salary_By_Dept
FROM 
Employee;

--Task 9 — Employee Salary Percentage
--Calculate each employee's percentage contribution to their department's total salary.
--Hint: salary / SUM(salary) OVER(...)
SELECT 
emp_name,
department,
salary,
salary/SUM(salary) OVER(PARTITION BY department)*100 AS Per_Contri
FROM 
Employee;

--Task 10 — Department Employee Count
--Display every employee along with the total number of 
--employees working in their department.
--Hint: COUNT(*) OVER(PARTITION BY department)
SELECT 
DISTINCT department,
COUNT(*) OVER(PARTITION BY department) AS Emp_By_Dept
FROM 
Employee;

--Task 11 — Running Sales Total
--Display each sale along with the cumulative sales amount over time.
--Hint: SUM(amount) OVER(ORDER BY sale_date)
SELECT 
sale_id,
amount,
sale_date,
SUM(amount) OVER(ORDER BY sale_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Running_Sales
FROM 
Sales;

--Task 12 — Running Sales by Employee
--Calculate the cumulative sales amount for each employee.
--Hint: PARTITION BY employee_id ORDER BY sale_date
SELECT 
employee_id,
sale_id,
amount,
sale_date,
SUM(amount) OVER(PARTITION BY employee_id ORDER BY sale_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Running_Sales
FROM 
Sales;

--Task 13 — Running Quantity Sold
--Calculate the running total of quantity sold based on sale date.
--Hint: SUM(quantity) OVER(...)

SELECT 
*,
SUM(quantity) OVER(ORDER BY sale_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Running_Qty
FROM 
Sales;

--Task 14 — Average Sales Per Employee
--Display each sale along with the average sale amount generated by that employee.
--Hint: AVG(amount) OVER(PARTITION BY employee_id)
SELECT 
employee_id,
amount,
AVG(amount) OVER(PARTITION BY employee_id) AS Avg_sale_By_Emp
FROM
Sales;

--Task 15 — Maximum Sale by Employee
--Display each sale along with the highest sale amount made by that employee.
--Hint: MAX(amount) OVER(...)
SELECT 
employee_id,
amount,
MAX(amount) OVER(PARTITION BY employee_id) AS Max_sale_By_Emp
FROM
Sales;

--Task 16 — Previous Sale Amount
--For every sale, display the previous sale amount made by the same employee.
--Hint: LAG(amount)
SELECT 
employee_id,
amount,
sale_date,
LAG(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS Prev_sale_By_Emp
FROM
Sales;

--Task 17 — Next Sale Amount
--For every sale, display the next sale amount made by the same employee.
--Hint: LEAD(amount)
SELECT 
employee_id,
amount,
sale_date,
LEAD(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS Next_sale_By_Emp
FROM
Sales;

--Task 18 — Compare Current Sale with Previous Sale
--Display:
--Sale date
--Employee
--Current amount
--Previous amount
--Difference
--Hint: Use LAG() and subtraction.
SELECT 
employee_id,
sale_date,
amount AS Current_Sale,
LAG(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS Prev_sale_By_Emp,
amount - LAG(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS Difference_Of_sale
FROM
Sales;

--Task 19 — Sales Growth Percentage
--Calculate the percentage change between the current sale and previous sale.
--Hint: (Current - Previous) / Previous * 100
SELECT 
sale_date,
amount AS Current_Sale,
LAG(amount) OVER( ORDER BY sale_date) AS Prev_sale,
(amount-LAG(amount) OVER( ORDER BY sale_date))/LAG(amount) OVER( ORDER BY sale_date)*100 AS Sale_growth
FROM
Sales;

--Task 20 — Previous Order Date
--For each customer, display their current order date and their previous order date.
--Hint: LAG(order_date) OVER(PARTITION BY customer_id ...)
SELECT 
customer_id,
order_date AS Current_Order_Date,
LAG(order_date) OVER( PARTITION BY customer_id ORDER BY order_date) AS Prev_Order_Date
FROM
Orders;

--Task 21 — Running Average of Sales
--Calculate the running average of sales based on sale date.
--Hint: AVG() OVER(ORDER BY sale_date)

SELECT 
Sale_date,
amount,
AVG(amount) OVER(ORDER BY sale_date ) AS Avg_Sale,
AVG(amount) OVER(ORDER BY sale_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Running_Avg_sale
FROM
Sales;

--Task 22 — Previous 3 Sales Average
--For every sale, calculate the average amount of the current sale and the previous 2 sales.
--Hint: Use ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
SELECT 
Sale_date,
amount,
AVG(amount) OVER(ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Prev3_Avg_Sale
FROM
Sales;


--Task 23 — Moving Total of 3 Sales
--Calculate a moving total using the current sale and previous 2 sales.
--Hint: SUM() OVER(... ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
SELECT 
Sale_date,
amount,
SUM(amount) OVER(ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS Prev3_Sale
FROM
Sales;

--Task 24 — Department Salary Running Total
--Within every department, calculate the cumulative salary based on employee joining date.
--Hint: PARTITION BY department ORDER BY joining_date
SELECT 
emp_name,
department,
salary,
SUM(salary) OVER(PARTITION BY department ORDER BY joining_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Running_Salary_By_Dept
FROM 
Employee;

--Task 25 — Highest Salary So Far
--For each employee, display the highest salary encountered so far based on joining date.
--Hint: MAX(salary) OVER(...)
SELECT 
emp_name,
salary,
MAX(salary) OVER() AS Highest_Salary
FROM 
Employee;

--Task 26 — Customer Order Ranking
--Rank each customer's orders from highest order amount to lowest.
--Hint: RANK() OVER(PARTITION BY customer_id ORDER BY amount DESC)
SELECT 
customer_id,
amount,
RANK() OVER( PARTITION BY customer_id ORDER BY amount DESC) AS Cust_Order_Rank
FROM
Orders;

--Task 27 — Highest Order for Each Customer
--Find the highest-value order made by every customer.
--Hint: Use ROW_NUMBER() or RANK() with PARTITION BY customer_id.
SELECT 
*
FROM(
SELECT 
customer_id,
amount,
RANK() OVER( PARTITION BY customer_id ORDER BY amount DESC) AS Cust_Order_Rank
FROM
Orders)t
WHERE Cust_Order_Rank = 1;

--Task 28 — First and Last Order
--For every customer, identify their first order and last order.
--Hint: Think about ROW_NUMBER(), FIRST_VALUE() or LAST_VALUE().

SELECT 
customer_id,
order_date,
FIRST_VALUE(order_date) OVER(PARTITION BY customer_id ORDER BY order_date ) AS First_Order,
LAST_VALUE(order_date) OVER(PARTITION BY customer_id ORDER BY order_date  ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Last_Order
FROM
Orders

--Task 29 — Compare Current and Previous Order
--For every customer, display:
--Customer ID
--Order date
--Current order amount
--Previous order amount
--Difference between orders
--Hint: LAG() + PARTITION BY customer_id
SELECT 
customer_id,
order_date,
amount AS Current_Order,
LAG(amount) OVER(PARTITION BY customer_id ORDER BY order_date ) AS Prev_Order_Amount,
amount - LAG(amount) OVER(PARTITION BY customer_id ORDER BY order_date ) AS Diff_btn_Orders
FROM
Orders;

--Task 30 — Employee Sales Leaderboard
--Create a sales leaderboard showing:
--Employee ID
--Total sales
--Rank
--Dense Rank
--Percentage contribution to total company sales
--Sort the result from highest total sales to lowest.
--Hint: First calculate employee-level totals, then apply window functions to those totals.
WITH EmployeeSale AS 
(SELECT 
employee_id,
SUM(amount) AS Total_Sales
FROM
Sales
GROUP BY employee_id
) 
SELECT 
employee_id,
Total_Sales,
RANK() OVER(ORDER BY Total_Sales DESC) AS Ranking,
DENSE_RANK() OVER(ORDER BY Total_Sales DESC) AS DenseRanking,
Total_Sales*100/SUM(Total_Sales) OVER() AS Per_Contri_Sales
FROM EmployeeSale
ORDER BY Total_Sales DESC;

--Bonus Challenge Tasks
--Challenge 1
--Find the 2nd highest salary in each department.
--Hint: Ranking functions.

SELECT 
*
FROM
(
SELECT 
emp_name,
department,
salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS Ranking
FROM 
Employee
)t 
WHERE Ranking = 2;

--Challenge 2
--Find employees whose salary is above their department average.
--Hint: Department-level AVG().

SELECT 
emp_name,
salary,
Avg_salary
FROM
(
SELECT 
emp_name,
department,
salary,
AVG(salary) OVER(PARTITION BY department) AS Avg_salary
FROM 
Employee
)t 
WHERE salary > Avg_salary;

--Challenge 3
--Find the top-selling product in each category.
--Hint: Aggregate sales first, then rank products within category.

SELECT 
*
FROM
(
SELECT 
category,
product,
SUM(quantity) AS Total_Qty_Sold,
RANK() OVER(PARTITION BY category ORDER BY SUM(quantity)) AS Ranking
FROM 
Sales
GROUP BY category,product
)t
WHERE Ranking = 1;

--Challenge 4
--Find customers whose latest order amount is greater than their previous order.
--Hint: LAG() and customer partitioning.
SELECT 
*
FROM
(
SELECT 
customer_id,
order_date,
amount AS Current_Order_Value,
LAG(amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS Prev_Order_Value
FROM 
Orders
)t
WHERE Current_Order_Value > Prev_Order_Value;

--Challenge 5
--Find the employee with the highest cumulative sales.
--Hint: Running SUM().
SELECT 
MAX(Cummilative_Sales) AS Highest_Cummilative_sales
FROM
(
SELECT 
employee_id,
amount,
SUM(amount) OVER(PARTITION BY employee_id ORDER BY sale_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Cummilative_Sales
FROM
Sales
)t

--Challenge 6
--Calculate a 7-day moving average of sales.
--Hint: Window frame + date ordering.

SELECT 
order_date,
amount,
AVG(amount) OVER(ORDER BY order_date ROWS BETWEEN CURRENT ROW AND 6 FOLLOWING) AS Seven_Day_Mov_Avg
FROM 
Orders;

--Challenge 7
--Identify consecutive orders where a customer's order amount increased.
--Hint: LAG().
SELECT 
*
FROM
(
SELECT 
customer_id,
amount AS Current_Order,
order_date,
LAG(amount) OVER(PARTITION BY customer_id ORDER BY order_date) AS Prev_Orders
FROM
Orders)t
WHERE Current_Order > Prev_Orders;

--Challenge 8
--Find the first sale and latest sale of every employee.
--Hint: FIRST_VALUE() / LAST_VALUE() or ranking functions.

SELECT 
employee_id,
amount,
sale_date,
FIRST_VALUE(amount) OVER(PARTITION BY employee_id ORDER BY sale_date) AS First_Value,
LAST_VALUE(amount) OVER(PARTITION BY employee_id ORDER BY sale_date ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) AS Last_Value
FROM
Sales;

--Challenge 9
--Calculate each product's percentage contribution to category sales.
--Hint: SUM() OVER(PARTITION BY category).
SELECT 
DISTINCT product,
SUM(amount) OVER(partition by product) AS Total_Sales,
(SUM(amount) over(partition by product) / (SUM(amount) over()) * 100) AS Per_Contri
FROM 
Sales;

--Challenge 10
--Calculate month-over-month sales growth.
--Hint: Aggregate by month first, then use LAG().
SELECT 
*,
Total_sales-Prev_Month_Sale AS MOM,
(Total_sales-Prev_Month_Sale)/Prev_Month_Sale*100 AS MOM_Per
FROM
(
SELECT 
MONTH(sale_date) AS Sale_Month,
SUM(amount) Total_sales,
LAG(SUM(amount)) OVER(ORDER BY MONTH(sale_date)) AS Prev_Month_Sale
FROM 
Sales 
GROUP BY MONTH(sale_date))t