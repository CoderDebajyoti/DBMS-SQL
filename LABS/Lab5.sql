-- Lab 5
use bank;

-- (i) Create a table cars with company name, model and colour
CREATE TABLE cars (
    c_name VARCHAR(20),
    model VARCHAR(20),
    colour VARCHAR(20)
);

/*
Output:
Query OK, 0 rows affected
*/

-- (ii) Insert 5 values and display
INSERT INTO cars (c_name, model, colour) VALUES
('C1', 'M1', 'Gray'),
('C2', 'M2', 'Red'),
('C3', 'M3', 'Green'),
('C4', 'M4', 'Gray'),
('C5', 'M5', 'Green');

/*
Output:
Query OK, 5 rows affected
*/

SELECT * FROM cars;

/*
Output:
+--------+-------+--------+
| c_name | model | colour |
+--------+-------+--------+
| C1     | M1    | Gray   |
| C2     | M2    | Red    |
| C3     | M3    | Green  |
| C4     | M4    | Gray   |
| C5     | M5    | Green  |
+--------+-------+--------+
*/

-- (iii) Count the number of Gray colour cars and find the average asset of Kolkata branch
-- Count Gray Cars
SELECT COUNT(*)
FROM cars
WHERE colour = 'Gray';

/*
Output:
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
*/

-- Average Asset of Kolkata Branch
SELECT AVG(asset)
FROM branch
WHERE city = 'Kolkata';

/*
Output:
+-------------+
| AVG(asset)  |
+-------------+
| 20000000.00 |
+-------------+
*/

-- (iv) Find the maximum balance in bank account
SELECT MAX(balance)
FROM bank_accounts;

/*
Output:
+--------------+
| MAX(balance) |
+--------------+
|       400000 |
+--------------+
*/

-- (v) Find the newest car model
SELECT model
FROM cars
ORDER BY model DESC
LIMIT 1;

/*
Output:
+-------+
| model |
+-------+
| M5    |
+-------+
*/

-- (vi) Find the maximum balance in bank account
SELECT MAX(balance)
FROM bank_accounts;

/*
Output:
+--------------+
| MAX(balance) |
+--------------+
|       400000 |
+--------------+
*/

-- (vii) Find sum of assets in Kolkata branch
SELECT SUM(asset)
FROM branch
WHERE city = 'Kolkata';

/*
Output:
+------------+
| SUM(asset) |
+------------+
|   40000000 |
+------------+
*/


-- 5B

-- (i) Increase balance by 10% for all accounts
UPDATE account
SET balance = balance + (balance * 0.10);

/*
Output:
Query OK, 5 rows affected
*/

-- (ii) Display accounts sorted by balance in descending order
SELECT *
FROM account
ORDER BY balance DESC;

/*
Output:
+--------+---------+
| acc_no | balance |
+--------+---------+
|      5 |  440000 |
|      4 |  396000 |
|      3 |  330000 |
|      2 |  275000 |
|      1 |  220000 |
+--------+---------+
*/

-- (iii) Find the total bank balance
SELECT SUM(balance) AS total_bank_balance
FROM account;

/*
Output:
+--------------------+
| total_bank_balance |
+--------------------+
|            1661000 |
+--------------------+
*/

-- (iv) Display accounts whose balance is above average
SELECT *
FROM account
WHERE balance >
(
    SELECT AVG(balance)
    FROM account
);

/*
Output:
+--------+---------+
| acc_no | balance |
+--------+---------+
|      4 |  396000 |
|      5 |  440000 |
+--------+---------+
*/

-- (v) Show top 3 highest balance accounts
SELECT *
FROM account
ORDER BY balance DESC
LIMIT 3;

/*
Output:
+--------+---------+
| acc_no | balance |
+--------+---------+
|      5 |  440000 |
|      4 |  396000 |
|      3 |  330000 |
+--------+---------+
*/

-- (vi) Count number of branches city-wise
SELECT city,
       COUNT(*) AS branch_count
FROM branch
GROUP BY city;

/*
Output:
+-----------+--------------+
| city      | branch_count |
+-----------+--------------+
| Bangalore |            1 |
| Kolkata   |            2 |
| Mysore    |            1 |
+-----------+--------------+
*/

-- (vii) Find average assets city-wise
SELECT city,
       AVG(asset) AS avg_assets
FROM branch
GROUP BY city;

/*
Output:
+-----------+-------------+
| city      | avg_assets  |
+-----------+-------------+
| Bangalore | 10000000.00 |
| Kolkata   | 20000000.00 |
| Mysore    | 10000000.00 |
+-----------+-------------+
*/

-- (viii) Delete branches having assets less than 15000000
DELETE FROM branch
WHERE asset < 15000000;

/*
Output:
Query OK, 2 rows affected
*/

-- (ix) Display distinct cities where branches exist
SELECT DISTINCT city
FROM branch;

/*
Output:
+---------+
| city    |
+---------+
| Kolkata |
+---------+
*/
