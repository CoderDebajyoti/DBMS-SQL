-- Lab 4
Create database bank;

use bank;

-- (i) Create a table Employee (with Account Number as Primary Key and Balance)
CREATE TABLE employee (
    acc_no INT PRIMARY KEY,
    balance BIGINT
);

-- Insert Values
INSERT INTO employee (acc_no, balance) VALUES
(1, 200000),
(2, 250000),
(3, 300000),
(4, 360000),
(5, 400000);

-- Display Employee Table
SELECT * FROM employee;

/*
Output:
+--------+---------+
| acc_no | balance |
+--------+---------+
|      1 |  200000 |
|      2 |  250000 |
|      3 |  300000 |
|      4 |  360000 |
|      5 |  400000 |
+--------+---------+
*/

-- (ii) Create another table Branch (with Branch Name, City, Asset) and Insert Values
CREATE TABLE branch (
    b_name VARCHAR(20),
    city VARCHAR(20),
    asset BIGINT
);

-- Insert Values
INSERT INTO branch (b_name, city, asset) VALUES
('SBI', 'Bangalore', 10000000),
('ICICI', 'Kolkata', 20000000),
('HDFC', 'Mysore', 10000000),
('SBI', 'Kolkata', 20000000);

-- Display Branch Table
SELECT * FROM branch;

/*
Output:
+--------+-----------+----------+
| b_name | city      | asset    |
+--------+-----------+----------+
| SBI    | Bangalore | 10000000 |
| ICICI  | Kolkata   | 20000000 |
| HDFC   | Mysore    | 10000000 |
| SBI    | Kolkata   | 20000000 |
+--------+-----------+----------+
*/

-- (iii) Display Both Tables
SELECT * FROM employee;
SELECT * FROM branch;

/*
Output – Employee:
+--------+---------+
| acc_no | balance |
+--------+---------+
|      1 |  200000 |
|      2 |  250000 |
|      3 |  300000 |
|      4 |  360000 |
|      5 |  400000 |
+--------+---------+

Output – Branch:
+--------+-----------+----------+
| b_name | city      | asset    |
+--------+-----------+----------+
| SBI    | Bangalore | 10000000 |
| ICICI  | Kolkata   | 20000000 |
| HDFC   | Mysore    | 10000000 |
| SBI    | Kolkata   | 20000000 |
+--------+-----------+----------+
*/
