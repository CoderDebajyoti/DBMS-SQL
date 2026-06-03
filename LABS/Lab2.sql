create database employee_2 ;
use employee_2 ;

-- Question 1: Create an Employee Table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    salary DECIMAL(10,2),
    department VARCHAR(100)
);

-- Question 2: Insert Records into Employee Table
INSERT INTO Employee VALUES
(1,'Sumit Jana','Delhi',5000,'IT'),
(2,'Riya Das','Kolkata',12000,'HR'),
(3,'Amit Roy','Chennai',25000,'Finance'),
(4,'Priya Sen','Bangalore',45000,'Sales'),
(5,'Ram Sharma','Mumbai',84000,'Marketing');

-- Question 3: Display All Employee Records
SELECT * FROM Employee;

/*
Output:
+----+------------+-----------+----------+------------+
| id | name       | city      | salary   | department |
+----+------------+-----------+----------+------------+
|  1 | Sumit Jana | Delhi     |  5000.00 | IT         |
|  2 | Riya Das   | Kolkata   | 12000.00 | HR         |
|  3 | Amit Roy   | Chennai   | 25000.00 | Finance    |
|  4 | Priya Sen  | Bangalore | 45000.00 | Sales      |
|  5 | Ram Sharma | Mumbai    | 84000.00 | Marketing  |
+----+------------+-----------+----------+------------+
*/

-- Question 4: Display Employees Whose Name Starts with 'S'
SELECT * FROM Employee
WHERE name LIKE 'S%';

/*
Output:
+----+------------+-------+---------+------------+
| id | name       | city  | salary  | department |
+----+------------+-------+---------+------------+
|  1 | Sumit Jana | Delhi | 5000.00 | IT         |
+----+------------+-------+---------+------------+
*/

-- Question 5: Display Employees Whose Name Ends with 'a'
SELECT * FROM Employee
WHERE name LIKE '%a';

/*
Output:
+----+------------+--------+----------+------------+
| id | name       | city   | salary   | department |
+----+------------+--------+----------+------------+
|  1 | Sumit Jana | Delhi  |  5000.00 | IT         |
|  5 | Ram Sharma | Mumbai | 84000.00 | Marketing  |
+----+------------+--------+----------+------------+
*/

-- Question 6: Find Employee(s) Having Maximum Salary
SELECT name
FROM Employee
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employee
);

/*
Output:
+------------+
| name       |
+------------+
| Ram Sharma |
+------------+
*/

-- Question 7: Find Employee(s) Having Average Salary
SELECT name, salary
FROM Employee
WHERE salary =
(
    SELECT AVG(salary)
    FROM Employee
);

/*
Output:
Empty set (Average salary is 34200.00, no employee matches exactly)
*/

-- Question 8: Display Employees Having 'm' in Their Name
SELECT *
FROM Employee
WHERE name LIKE '%m%';

/*
Output:
+----+------------+---------+----------+------------+
| id | name       | city    | salary   | department |
+----+------------+---------+----------+------------+
|  1 | Sumit Jana | Delhi   |  5000.00 | IT         |
|  3 | Amit Roy   | Chennai | 25000.00 | Finance    |
|  5 | Ram Sharma | Mumbai  | 84000.00 | Marketing  |
+----+------------+---------+----------+------------+
*/

-- Question 9: Create a Copy of Employee Table
CREATE TABLE Emp_Copy AS
SELECT * FROM Employee;

/*
Output:
Query OK, 5 rows affected
*/

-- Question 10: Delete All Records from Emp_Copy
TRUNCATE TABLE Emp_Copy;

/*
Output:
Query OK, 0 rows affected
*/

-- Question 11: Display Records of Emp_Copy
SELECT * FROM Emp_Copy;

/*
Output:
Empty set
*/