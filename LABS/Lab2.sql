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

-- Question 4: Display Employees Whose Name Starts with 'S'

SELECT * FROM Employee
WHERE name LIKE 'S%';

-- Question 5: Display Employees Whose Name Ends with 'a'

SELECT * FROM Employee
WHERE name LIKE '%a';

-- Question 6: Find Employee(s) Having Maximum Salary
SELECT name
FROM Employee
WHERE salary =
(
    SELECT MAX(salary)
    FROM Employee
);

-- Question 7: Find Employee(s) Having Average Salary
SELECT name, salary
FROM Employee
WHERE salary =
(
    SELECT AVG(salary)
    FROM Employee
);

-- Question 8: Display Employees Having 'm' in Their Name
SELECT *
FROM Employee
WHERE name LIKE '%m%';

-- Question 9: Create a Copy of Employee Table
CREATE TABLE Emp_Copy AS
SELECT * FROM Employee;

-- Question 10: Delete All Records from Emp_Copy
TRUNCATE TABLE Emp_Copy;

-- Question 11: Display Records of Emp_Copy
SELECT * FROM Emp_Copy;