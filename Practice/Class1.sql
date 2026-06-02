-------------------------- Given ----------------------------------
create database employee;
show databases;

use employee;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

DESC Department;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

DESC Employee;

INSERT INTO Department (dept_id, dept_name, location) VALUES
(1, 'HR', 'Kolkata'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Delhi'),
(5, 'Sales', 'Chennai'),
(6, 'Support', 'Hyderabad'),
(7, 'Admin', 'Pune'),
(8, 'R&D', 'Noida'),
(9, 'Logistics', 'Kolkata'),
(10, 'Legal', 'Delhi');

INSERT INTO Employee (emp_id, name, salary, dept_id) VALUES
(101, 'Aman', 30000, 1),
(102, 'Riya', 40000, 2),
(103, 'Rahul', 35000, 3),
(104, 'Sneha', 45000, 4),
(105, 'Arjun', 50000, 5),
(106, 'Priya', 32000, 6),
(107, 'Karan', 38000, 7),
(108, 'Neha', 42000, 8),
(109, 'Vikas', 37000, 9),
(110, 'Pooja', 46000, 10);

SELECT * FROM Department;
SELECT * FROM Employee;

-------------------------- CW ------------------------------
-- Find employee 
select name from employee where dept_id in (select dept_id from department where location ="Delhi");

-- Find department name where employee name starts with 'A'
SELECT Employee.name, Department.dept_name FROM Department, Employee WHERE Department.dept_id = Employee.dept_id AND Employee.name LIKE 'A%';

-- Salary and Employee ID of employees who work in Kolkata
SELECT Employee.salary, Employee.emp_id
FROM Employee, Department
WHERE Department.dept_id = Employee.dept_id
AND Department.location = 'Kolkata';

-- Name of the employee who gets the highest salary
SELECT name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);

-- Employee with 2nd highest salary using DESC
SELECT name, salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- -- Employee with 2nd lowest salary 
SELECT Employee.name, Department.location, Employee.salary
FROM Employee, Department
WHERE Department.dept_id = Employee.dept_id
ORDER BY salary asc
LIMIT 1 OFFSET 1;

-- 2nd way
select employee.name, department.location 
from department, employee  
where department.dept_id=employee.dept_id 
and salary =(select min(salary) from employee where salary>(select min(salary) from employee));

-- Cross prduct
select * from department, employee;
select * from employee, department;
