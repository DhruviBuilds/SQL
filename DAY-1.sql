create database SchoolDB;
use database SchoolDB;
create table Students(
StudentId int primary key,
StudentName varchar(50),
Age int,
Course varchar(50),
Marks int
);
EXEC sp_help 'Students';
INSERT INTO Students (StudentID, StudentName, Age, Course, Marks)
VALUES
(1, 'Rahul', 18, 'Data Analytics', 85),
(2, 'Rohit', 19, 'Cyber Security', 75),
(3, 'Pooja', 20, 'Data Science', 65),
(4, 'Jay', 22, 'Baking', 84),
(5, 'Sujal', 24, 'Data Engineer', 95);

drop table Students;
SELECT * FROM Students WHERE Age > 20;

UPDATE Students 
SET StudentName = 'Vijay'
WHERE StudentID = 4; 

SELECT * FROM Students;

CREATE TABLE Products(
ProductID int primary key,
Pname varchar(50),
Pprice numeric(5,2)
);

INSERT INTO Products(ProductID,Pname,Pprice)
VALUES
(101,'Shirt',450.45),
(102,'T-Shirt',350.45),
(103,'Jeans',850.45),
(104,'Trouser',550.45),
(105,'Shoes',999.45);

SELECT * FROM Products;

UPDATE Products
SET Pprice = 950.45
WHERE ProductID = 103;

DELETE FROM Products WHERE ProductID = 105;

SELECT Pname,Pprice FROM Products;
SELECT *  FROM Products WHERE Pprice > 500;
SELECT * FROM Products WHERE ProductID != 101;
SELECT * FROM Products WHERE ProductID <> 101;
SELECT * FROM Products WHERE Pname IN('Shirt','Jeans');