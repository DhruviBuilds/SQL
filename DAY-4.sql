CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR(20),
  marks INT
);

INSERT INTO students VALUES
(1, 'Aman', 'BCA', 75),
(2, 'Neha', 'MCA', 90),
(3, 'Karan', 'BCA', 65),
(4, 'Riya', 'BBA', 80),
(5, 'Meena', 'MCA', 88);

SELECT * 
FROM 
students;

-- Avg marks per course
SELECT course , 
AVG(marks) AS avg_marks
FROM 
students
GROUP BY course;

--Having avg marks > 70
--1 
SELECT course , 
AVG(marks) AS avg_marks
FROM 
students
GROUP BY course
HAVING AVG(marks) > 70;
-- 2
SELECT 
COUNT(*) AS Total_records,
SUM(marks) AS Total_marks,
AVG(marks) AS Avg_marks,
MIN(marks) AS Min_marks,
MAX(marks) AS Max_marks
FROM 
students;

-- 3 Show total marks obtained by students in each course
SELECT 
course,
SUM(marks) AS Total_marks
FROM 
students
GROUP BY course;

-- 4 Display the average marks per course using GROUP BY.
SELECT course , 
AVG(marks) AS avg_marks
FROM 
students
GROUP BY course;
-- 5 Show only those courses whose average marks exceed 80 using HAVING
SELECT course , 
AVG(marks) AS avg_marks
FROM 
students
GROUP BY course
HAVING AVG(marks) > 80;

-- 6 Display the top 2 scoring students using ORDER BY and LIMIT.
SELECT TOP 2
* 
FROM 
students
ORDER BY marks DESC;

-- 7 Show all students whose marks are between 60 and 90.
SELECT 
* 
FROM 
students
WHERE marks BETWEEN 60 AND 90;

-- 8 Display all students enrolled in BCA or MCA using IN.
SELECT 
* 
FROM 
students
WHERE course IN('BCA','MCA');

-- 9 Find the total number of unique courses (COUNT(DISTINCT course)).
SELECT 
COUNT(DISTINCT(course)) 
FROM 
students;

-- 10 Display names of students whose names start with ‘N’ using LIKE
SELECT 
	* 
FROM 
	students 
WHERE
	name like 'N%';

