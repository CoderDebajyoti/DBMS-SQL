-- lab 6A
create database 6A;
USE 6A;
-- 1. Create EMPLOYEE Table
CREATE TABLE EMPLOYEE (
    e_id INT PRIMARY KEY,
    e_f_name VARCHAR(20),
    e_l_name VARCHAR(20),
    e_age INT,
    e_city VARCHAR(20),
    salary DECIMAL(10,2)
);

-- 2. Create DEPARTMENT Table
CREATE TABLE DEPARTMENT (
    d_no INT PRIMARY KEY,
    d_name VARCHAR(30),
    e_id INT,
    FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);

-- 3. Insert Values into EMPLOYEE
INSERT INTO EMPLOYEE VALUES
(1, 'Rahul', 'Sharma', 23, 'Kolkata', 30000),
(2, 'Sneha', 'Das', 21, 'Delhi', 25000),
(3, 'Amit', 'Roy', 25, 'Kolkata', 40000),
(4, 'Priya', 'Sen', 28, 'Mumbai', 50000),
(5, 'Ravi', 'Kumar', 22, 'Delhi', 28000);

-- 4. Insert Values into DEPARTMENT
INSERT INTO DEPARTMENT VALUES
(101, 'HR', 1),
(102, 'IT', 3),
(103, 'Finance', 4);

-- 5. Display EMPLOYEE Table
SELECT * FROM EMPLOYEE;

-- 6. Display DEPARTMENT Table
SELECT * FROM DEPARTMENT;

-- 7. UNION Operation
SELECT e_id FROM EMPLOYEE
UNION
SELECT e_id FROM DEPARTMENT;

-- 8. Insert New Values into DEPARTMENT
INSERT INTO DEPARTMENT VALUES
(104, 'Marketing', 2),
(105, 'Admin', 5);

-- Display Updated DEPARTMENT Table
SELECT * FROM DEPARTMENT;

-- 10. UNION Again (Updated)
SELECT e_id FROM EMPLOYEE
UNION
SELECT e_id FROM DEPARTMENT;

---------------------------------------------------------------
-- LAB 6B
-- 1. Show First Name and Last Name Only
SELECT e_f_name, e_l_name 
FROM employee;

-- 2. Show Employees from Kolkata
SELECT * 
FROM employee 
WHERE e_city='Kolkata';

-- 3. Show Employees with Age > 22
SELECT * 
FROM employee 
WHERE e_age > 22;

-- 4. Sort Employees by Age (Ascending)
SELECT * 
FROM employee 
ORDER BY e_age ASC;

-- 5. Count Total Employees
SELECT COUNT(*) AS total_employee 
FROM employee;

-- 6. Calculate Average Salary
SELECT AVG(salary) AS avg_salary 
FROM employee;

-- 7. Find Maximum Salary
SELECT MAX(salary) AS max_salary 
FROM employee;

-- 8. Show City-wise Employee Count
SELECT e_city, COUNT(*) AS total_employee
FROM employee
GROUP BY e_city;

-- 9. INNER JOIN (Employee + Department)
SELECT e.e_id, e.e_f_name, d.d_name
FROM employee e
INNER JOIN department d
ON e.e_id = d.e_id;

-- 10. LEFT JOIN (All Employees + Department if exists)
SELECT e.e_id, e.e_f_name, d.d_name
FROM employee e
LEFT JOIN department d
ON e.e_id = d.e_id;

-- 11. Set Operation (IN)
SELECT e_id FROM employee
WHERE e_id IN (SELECT e_id FROM department);
