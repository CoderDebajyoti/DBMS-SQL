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

/*
Output:
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| id            | int           | NO   | PRI | NULL    |       |
| name          | varchar(100)  | YES  |     | NULL    |       |
| city          | varchar(100)  | YES  |     | NULL    |       |
| salary        | decimal(10,2) | YES  |     | NULL    |       |
| qualification | varchar(100)  | YES  |     | NULL    |       |
| gender        | varchar(50)   | YES  |     | NULL    |       |
| department    | varchar(100)  | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
*/

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

/*
Output:
Query OK, 10 rows affected
*/

-- Question 4: Display All Records
SELECT * FROM Employee;

/*
Output:
+----+--------------+------------+----------+---------------+--------+------------+
| id | name         | city       | salary   | qualification | gender | department |
+----+--------------+------------+----------+---------------+--------+------------+
|  1 | Sumit Sharma | Delhi      |  5000.00 | MBA           | Female | HR         |
|  2 | Anita Das    | Kolkata    | 15000.00 | BCA           | Female | IT         |
|  3 | Rahul Roy    | Mumbai     | 25000.00 | B.Tech        | Male   | IT         |
|  4 | Priya Sen    | Kolkata    | 35000.00 | MBA           | Female | HR         |
|  5 | Amit Ghosh   | Delhi      | 45000.00 | M.Tech        | Male   | Finance    |
|  6 | Rina Das     | Chennai    | 55000.00 | B.Sc          | Female | Marketing  |
|  7 | Arjun Pal    | Kolkata    | 65000.00 | B.Tech        | Male   | IT         |
|  8 | Sneha Roy    | Mumbai     | 75000.00 | MBA           | Female | HR         |
|  9 | Rohit Das    | Delhi      | 85000.00 | MCA           | Male   | Finance    |
| 10 | Pinky Pal    | Chandigarh | 63000.00 | B.Tech        | Female | IT         |
+----+--------------+------------+----------+---------------+--------+------------+
*/

-- Question 5: Display Employees from Kolkata
SELECT *
FROM Employee
WHERE city = 'Kolkata';

/*
Output:
+----+-----------+---------+----------+---------------+--------+------------+
| id | name      | city    | salary   | qualification | gender | department |
+----+-----------+---------+----------+---------------+--------+------------+
|  2 | Anita Das | Kolkata | 15000.00 | BCA           | Female | IT         |
|  4 | Priya Sen | Kolkata | 35000.00 | MBA           | Female | HR         |
|  7 | Arjun Pal | Kolkata | 65000.00 | B.Tech        | Male   | IT         |
+----+-----------+---------+----------+---------------+--------+------------+
*/

-- Question 6: Display Employees Having Salary Greater Than or Equal to 70000
SELECT *
FROM Employee
WHERE salary >= 70000;

/*
Output:
+----+-----------+--------+----------+---------------+--------+------------+
| id | name      | city   | salary   | qualification | gender | department |
+----+-----------+--------+----------+---------------+--------+------------+
|  8 | Sneha Roy | Mumbai | 75000.00 | MBA           | Female | HR         |
|  9 | Rohit Das | Delhi  | 85000.00 | MCA           | Male   | Finance    |
+----+-----------+--------+----------+---------------+--------+------------+
*/

-- Question 7: Drop Qualification Column
ALTER TABLE Employee
DROP COLUMN qualification;

/*
Output:
Query OK, 0 rows affected
*/

-- Question 8: Add Email_ID Column
ALTER TABLE Employee
ADD COLUMN email_id VARCHAR(120);

/*
Output:
Query OK, 0 rows affected
*/