-- Lab 5
use bank;
-- (i) Create a table cars with company name, model and colour
CREATE TABLE cars (
    c_name VARCHAR(20),
    model VARCHAR(20),
    colour VARCHAR(20)
);

-- (ii) Insert 5 values and display
INSERT INTO cars (c_name, model, colour) VALUES
('C1', 'M1', 'Gray'),
('C2', 'M2', 'Red'),
('C3', 'M3', 'Green'),
('C4', 'M4', 'Gray'),
('C5', 'M5', 'Green');

SELECT * FROM cars;

-- (iii) Count the number of Gray colour cars and find the average asset of Kolkata branch
-- Count Gray Cars
SELECT COUNT(*)
FROM cars
WHERE colour = 'Gray';

-- Average Asset of Kolkata Branch
SELECT AVG(asset)
FROM branch
WHERE city = 'Kolkata';

-- (iv) Find the maximum balance in bank account
SELECT MAX(balance)
FROM bank_accounts;

-- (v) Find the newest car model
SELECT model
FROM cars
ORDER BY model DESC
LIMIT 1;

-- (vi) Find the maximum balance in bank account
SELECT MAX(balance)
FROM bank_accounts;

-- (vii) Find sum of assets in Kolkata branch
SELECT SUM(asset)
FROM branch
WHERE city = 'Kolkata';


-- 5B

-- (i) Increase balance by 10% for all accounts
UPDATE account
SET balance = balance + (balance * 0.10);

-- (ii) Display accounts sorted by balance in descending order
SELECT *
FROM account
ORDER BY balance DESC;

-- (iii) Find the total bank balance
SELECT SUM(balance) AS total_bank_balance
FROM account;

-- (iv) Display accounts whose balance is above average
SELECT *
FROM account
WHERE balance >
(
    SELECT AVG(balance)
    FROM account
);

-- (v) Show top 3 highest balance accounts
SELECT *
FROM account
ORDER BY balance DESC
LIMIT 3;

-- (vi) Count number of branches city-wise
SELECT city,
       COUNT(*) AS branch_count
FROM branch
GROUP BY city;

-- (vii) Find average assets city-wise
SELECT city,
       AVG(asset) AS avg_assets
FROM branch
GROUP BY city;

-- (viii) Delete branches having assets less than 15000000
DELETE FROM branch
WHERE asset < 15000000;

-- (ix) Display distinct cities where branches exist
SELECT DISTINCT city
FROM branch;
