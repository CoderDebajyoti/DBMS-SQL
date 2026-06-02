/* Question 1: Create ACCOUNT table */

CREATE TABLE ACCOUNT (
    Acc_No INT PRIMARY KEY,
    Cus_name VARCHAR(100),
    Cus_DOB DATE,
    Cus_address VARCHAR(120),
    Cus_Ph DOUBLE,
    Cus_email VARCHAR(120)
);

DESC ACCOUNT;

/*
------------------- OUTPUT -------------------

+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| Acc_No      | int          | NO   | PRI | NULL    |       |
| Cus_name    | varchar(100) | YES  |     | NULL    |       |
| Cus_DOB     | date         | YES  |     | NULL    |       |
| Cus_address | varchar(120) | YES  |     | NULL    |       |
| Cus_Ph      | double       | YES  |     | NULL    |       |
| Cus_email   | varchar(120) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

6 rows in set

------------------------------------------------
*/