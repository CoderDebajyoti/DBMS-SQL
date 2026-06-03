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

/*
Output:
Query OK, 0 rows affected
*/

-- 2. Create DEPARTMENT Table
CREATE TABLE DEPARTMENT (
    d_no INT PRIMARY KEY,
    d_name VARCHAR(30),
    e_id INT,
    FOREIGN KEY (e_id) REFERENCES EMPLOYEE(e_id)
);

/*
Output:
Query OK, 0 rows affected
*/

-- 3. Insert Values into EMPLOYEE
INSERT INTO EMPLOYEE VALUES
(1, 'Rahul', 'Sharma', 23, 'Kolkata', 30000),
(2, 'Sneha', 'Das', 21, 'Delhi', 25000),
(3, 'Amit', 'Roy', 25, 'Kolkata', 40000),
(4, 'Priya', 'Sen', 28, 'Mumbai', 50000),
(5, 'Ravi', 'Kumar', 22, 'Delhi', 28000);

/*
Output:
Query OK, 5 rows affected
*/

-- 4. Insert Values into DEPARTMENT
INSERT INTO DEPARTMENT VALUES
(101, 'HR', 1),
(102, 'IT', 3),
(103, 'Finance', 4);

/*
Output:
Query OK, 3 rows affected
*/

-- 5. Display EMPLOYEE Table
SELECT * FROM EMPLOYEE;

/*
Output:
+------+----------+----------+-------+---------+----------+
| e_id | e_f_name | e_l_name | e_age | e_city  | salary   |
+------+----------+----------+-------+---------+----------+
|    1 | Rahul    | Sharma   |    23 | Kolkata | 30000.00 |
|    2 | Sneha    | Das      |    21 | Delhi   | 25000.00 |
|    3 | Amit     | Roy      |    25 | Kolkata | 40000.00 |
|    4 | Priya    | Sen      |    28 | Mumbai  | 50000.00 |
|    5 | Ravi     | Kumar    |    22 | Delhi   | 28000.00 |
+------+----------+----------+-------+---------+----------+
*/

-- 6. Display DEPARTMENT Table
SELECT * FROM DEPARTMENT;

/*
Output:
+------+--------+------+
| d_no | d_name | e_id |
+------+--------+------+
|  101 | HR     |    1 |
|  102 | IT     |    3 |
|  103 | Finance|    4 |
+------+--------+------+
*/

-- 7. UNION Operation
SELECT e_id FROM EMPLOYEE
UNION
SELECT e_id FROM DEPARTMENT;

/*
Output:
+------+
| e_id |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
+------+
*/

-- 8. Insert New Values into DEPARTMENT
INSERT INTO DEPARTMENT VALUES
(104, 'Marketing', 2),
(105, 'Admin', 5);

/*
Output:
Query OK, 2 rows affected
*/

-- Display Updated DEPARTMENT Table
SELECT * FROM DEPARTMENT;

/*
Output:
+------+-----------+------+
| d_no | d_name    | e_id |
+------+-----------+------+
|  101 | HR        |    1 |
|  102 | IT        |    3 |
|  103 | Finance   |    4 |
|  104 | Marketing |    2 |
|  105 | Admin     |    5 |
+------+-----------+------+
*/

-- 10. UNION Again (Updated)
SELECT e_id FROM EMPLOYEE
UNION
SELECT e_id FROM DEPARTMENT;

/*
Output:
+------+
| e_id |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
+------+
*/

---------------------------------------------------------------
-- LAB 6B
-- 1. Show First Name and Last Name Only
SELECT e_f_name, e_l_name 
FROM employee;

/*
Output:
+----------+----------+
| e_f_name | e_l_name |
+----------+----------+
| Rahul    | Sharma   |
| Sneha    | Das      |
| Amit     | Roy      |
| Priya    | Sen      |
| Ravi     | Kumar    |
+----------+----------+
*/

-- 2. Show Employees from Kolkata
SELECT * 
FROM employee 
WHERE e_city='Kolkata';

/*
Output:
+------+----------+----------+-------+---------+----------+
| e_id | e_f_name | e_l_name | e_age | e_city  | salary   |
+------+----------+----------+-------+---------+----------+
|    1 | Rahul    | Sharma   |    23 | Kolkata | 30000.00 |
|    3 | Amit     | Roy      |    25 | Kolkata | 40000.00 |
+------+----------+----------+-------+---------+----------+
*/

-- 3. Show Employees with Age > 22
SELECT * 
FROM employee 
WHERE e_age > 22;

/*
Output:
+------+----------+----------+-------+---------+----------+
| e_id | e_f_name | e_l_name | e_age | e_city  | salary   |
+------+----------+----------+-------+---------+----------+
|    1 | Rahul    | Sharma   |    23 | Kolkata | 30000.00 |
|    3 | Amit     | Roy      |    25 | Kolkata | 40000.00 |
|    4 | Priya    | Sen      |    28 | Mumbai  | 50000.00 |
+------+----------+----------+-------+---------+----------+
*/

-- 4. Sort Employees by Age (Ascending)
SELECT * 
FROM employee 
WHERE e_age IS NOT NULL
ORDER BY e_age ASC;

/*
Output:
+------+----------+----------+-------+---------+----------+
| e_id | e_f_name | e_l_name | e_age | e_city  | salary   |
+------+----------+----------+-------+---------+----------+
|    2 | Sneha    | Das      |    21 | Delhi   | 25000.00 |
|    5 | Ravi     | Kumar    |    22 | Delhi   | 28000.00 |
|    1 | Rahul    | Sharma   |    23 | Kolkata | 30000.00 |
|    3 | Amit     | Roy      |    25 | Kolkata | 40000.00 |
|    4 | Priya    | Sen      |    28 | Mumbai  | 50000.00 |
+------+----------+----------+-------+---------+----------+
*/

-- 5. Count Total Employees
SELECT COUNT(*) AS total_employee 
FROM employee;

/*
Output:
+----------------+
| total_employee |
+----------------+
|              5 |
+----------------+
*/

-- 6. Calculate Average Salary
SELECT AVG(salary) AS avg_salary 
FROM employee;

/*
Output:
+------------+
| avg_salary |
+------------+
|   34600.00 |
+------------+
*/

-- 7. Find Maximum Salary
SELECT MAX(salary) AS max_salary 
FROM employee;

/*
Output:
+------------+
| max_salary |
+------------+
|   50000.00 |
+------------+
*/

-- 8. Show City-wise Employee Count
SELECT e_city, COUNT(*) AS total_employee
FROM employee
GROUP BY e_city;

/*
Output:
+---------+----------------+
| e_city  | total_employee |
+---------+----------------+
| Kolkata |              2 |
| Delhi   |              2 |
| Mumbai  |              1 |
+---------+----------------+
*/

-- 9. INNER JOIN (Employee + Department)
SELECT e.e_id, e.e_f_name, d.d_name
FROM employee e
INNER JOIN department d
ON e.e_id = d.e_id;

/*
Output:
+------+----------+-----------+
| e_id | e_f_name | d_name    |
+------+----------+-----------+
|    1 | Rahul    | HR        |
|    2 | Sneha    | Marketing |
|    3 | Amit     | IT        |
|    4 | Priya    | Finance   |
|    5 | Ravi     | Admin     |
+------+----------+-----------+
*/

-- 10. LEFT JOIN (All Employees + Department if exists)
SELECT e.e_id, e.e_f_name, d.d_name
FROM employee e
LEFT JOIN department d
ON e.e_id = d.e_id;

/*
Output:
+------+----------+-----------+
| e_id | e_f_name | d_name    |
+------+----------+-----------+
|    1 | Rahul    | HR        |
|    2 | Sneha    | Marketing |
|    3 | Amit     | IT        |
|    4 | Priya    | Finance   |
|    5 | Ravi     | Admin     |
+------+----------+-----------+
*/

-- 11. Set Operation (IN)
SELECT e_id FROM employee
WHERE e_id IN (SELECT e_id FROM department);

/*
Output:
+------+
| e_id |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
+------+
*/
