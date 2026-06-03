create database employee_3 ;
use employee_3;

-- Question 1: Create Employee Table
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    salary DECIMAL(10,2),
    qualification VARCHAR(100),
    gender VARCHAR(50),
    department VARCHAR(100)
);

-- Question 2: Describe Employee Table
DESC Employee;

-- Question 3: Insert Records into Employee Table
INSERT INTO Employee VALUES
(1,'Sumit Sharma','Delhi',5000,'MBA','Female','HR'),
(2,'Anita Das','Kolkata',15000,'BCA','Female','IT'),
(3,'Rahul Roy','Mumbai',25000,'B.Tech','Male','IT'),
(4,'Priya Sen','Kolkata',35000,'MBA','Female','HR'),
(5,'Amit Ghosh','Delhi',45000,'M.Tech','Male','Finance'),
(6,'Rina Das','Chennai',55000,'B.Sc','Female','Marketing'),
(7,'Arjun Pal','Kolkata',65000,'B.Tech','Male','IT'),
(8,'Sneha Roy','Mumbai',75000,'MBA','Female','HR'),
(9,'Rohit Das','Delhi',85000,'MCA','Male','Finance'),
(10,'Pinky Pal','Chandigarh',63000,'B.Tech','Female','IT');

-- Question 4: Display All Records
SELECT * FROM Employee;

-- Question 5: Display Employees from Kolkata
SELECT *
FROM Employee
WHERE city = 'Kolkata';

-- Question 6: Display Employees Having Salary Greater Than or Equal to 70000
SELECT *
FROM Employee
WHERE salary >= 70000;

-- Question 7: Drop Qualification Column
ALTER TABLE Employee
DROP COLUMN qualification;

-- Question 8: Add Email_ID Column
ALTER TABLE Employee
ADD COLUMN email_id VARCHAR(120);