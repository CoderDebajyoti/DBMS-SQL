-- Use Database
create database employee2;
USE employee2;

-- Create Department Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT NULL,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Create Project Table
CREATE TABLE Project (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(50),
    dept_id INT,
    budget INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Create Works_On Table
CREATE TABLE Works_On (
    emp_id INT,
    proj_id INT,
    hours INT,
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
    FOREIGN KEY (proj_id) REFERENCES Project(proj_id)
);

--------------------------------------------------
-- Insert into Department
INSERT INTO Department VALUES
(1, 'Engineering', 'Bangalore'),
(2, 'HR', 'Kolkata'),
(3, 'Finance', 'Mumbai'),
(4, 'Sales', 'Delhi'),
(5, 'Support', 'Hyderabad');

--------------------------------------------------
-- Insert into Employee
INSERT INTO Employee VALUES
(101, 'Amit', 60000, 1, NULL),
(102, 'Riya', 45000, 2, 101),
(103, 'Karan', 50000, 1, 101),
(104, 'Neha', 40000, 3, 103),
(105, 'Arjun', 70000, 4, 101),
(106, 'Pooja', 38000, 5, 102),
(107, 'Rahul', 52000, 1, 103),
(108, 'Sneha', 48000, 4, 105),
(109, 'Vikas', 42000, 3, 103),
(110, 'Anita', 46000, 2, 102);

--------------------------------------------------
-- Insert into Project
INSERT INTO Project VALUES
(1, 'AI System', 1, 500000),
(2, 'HR Portal', 2, 150000),
(3, 'Finance Tracker', 3, 200000),
(4, 'Sales CRM', 4, 300000),
(5, 'Support Tool', 5, 120000);

--------------------------------------------------
-- Insert into Works_On
INSERT INTO Works_On VALUES
(101, 1, 40),
(103, 1, 35),
(102, 2, 30),
(110, 2, 20),
(104, 3, 25),
(109, 3, 30),
(105, 4, 45),
(108, 4, 38),
(106, 5, 28),
(107, 1, 20);

--------------------------------------------------
-- Print Tables
SELECT * FROM Department;
SELECT * FROM Employee;
SELECT * FROM Project;
SELECT * FROM Works_On;
----------------------------------------

-- Employee name starts with A, find working hours
SELECT Employee.name, Works_On.hours
FROM Employee, Works_On
WHERE Employee.emp_id = Works_On.emp_id
AND Employee.name LIKE 'A%';

-- Find total salary of employees working on AI System
SELECT SUM(Employee.salary) AS total_salary
FROM Employee, Works_On, Project
WHERE Employee.emp_id = Works_On.emp_id
AND Works_On.proj_id = Project.proj_id
AND Project.proj_name = 'AI System';

-- Find total working hours for Engineering department
SELECT SUM(Works_On.hours) AS total_hours
FROM Department, Project, Works_On
WHERE Department.dept_id = Project.dept_id
AND Project.proj_id = Works_On.proj_id
AND Department.dept_name = 'Engineering';

-- Find department wise average salary
SELECT Department.dept_name, AVG(Employee.salary) AS avg_salary
FROM Department, Employee
WHERE Department.dept_id = Employee.dept_id
GROUP BY Department.dept_name;

-- Find emp_id who works in Hyderabad
SELECT Employee.emp_id
FROM Employee, Department
WHERE Employee.dept_id = Department.dept_id
AND Department.location = 'Hyderabad';

-- Find location and project id of employees whose manager is 101
SELECT Department.location, Works_On.proj_id
FROM Employee, Department, Works_On
WHERE Employee.dept_id = Department.dept_id
AND Employee.emp_id = Works_On.emp_id
AND Employee.manager_id = 101;