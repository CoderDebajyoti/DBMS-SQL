-- LAB 6
-- Display all accounts have been greater than 0 balance and so total number of accounts , first create the database table is named as with the columns account number balance
create database bank;
use bank;
CREATE TABLE accounts (
    account_number INT PRIMARY KEY,
    balance DECIMAL(10, 2)
);

SELECT * FROM accounts WHERE balance > 0;
SELECT COUNT(*) FROM accounts WHERE balance > 0;

-- Display the balance between 30K to 90K and count them
SELECT * FROM accounts WHERE balance BETWEEN 30000 AND 90000;
SELECT COUNT(*) FROM accounts WHERE balance BETWEEN 30000 AND 90000;

-- Increase balance by 10% for all accounts
UPDATE accounts SET balance = balance * 1.1 WHERE balance > 0;

-- Find the total bank balance
SELECT SUM(balance) AS total_bank_balance FROM accounts;

-- Display the account sorted by balance in descending order
SELECT * FROM accounts ORDER BY balance DESC;

-- Find the accounts where the balance is above average balance
SELECT * FROM accounts WHERE balance > (SELECT AVG(balance) FROM accounts);

-- Delete accounts having balance less than 20,000
DELETE FROM accounts WHERE balance < 20000;

-- Show top three highest bank accounts
SELECT * FROM accounts ORDER BY balance DESC LIMIT 3;


