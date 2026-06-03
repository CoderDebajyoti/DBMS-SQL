-- =========================
-- Assignment - 9
-- Library Management System
-- =========================

-- Create Database
CREATE DATABASE LibraryDB;

USE LibraryDB;

-- =========================
-- 1. AUTHORS TABLE
-- =========================

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100),
    country VARCHAR(50)
);

-- =========================
-- 2. BOOKS TABLE
-- =========================

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    generation VARCHAR(50),
    price DECIMAL(8,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- =========================
-- 3. MEMBERS TABLE
-- =========================

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    membership_type VARCHAR(20),
    join_date DATE
);

-- =========================
-- 4. STAFF TABLE
-- =========================

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);

-- =========================
-- 5. RENTALS TABLE
-- =========================

CREATE TABLE rentals (
    rental_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    staff_id INT,
    rental_date DATE,
    return_date DATE,
    fine DECIMAL(8,2),

    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- =========================
-- INSERT INTO AUTHORS
-- =========================

INSERT INTO authors VALUES
(1, 'Rabindranath Tagore', 'India'),
(2, 'J.K. Rowling', 'United Kingdom'),
(3, 'Mark Twain', 'USA'),
(4, 'Paulo Coelho', 'Brazil'),
(5, 'Stephen Hawking', 'United Kingdom');

-- =========================
-- INSERT INTO BOOKS
-- =========================

INSERT INTO books VALUES
(101, 'Gitanjali', 'Literature', 350.00, 1),
(102, 'Harry Potter', 'Fantasy', 500.00, 2),
(103, 'Tom Sawyer', 'Comic', 300.00, 3),
(104, 'The Alchemist', 'Science', 450.00, 4),
(105, 'Brief History of Time', 'Science', 600.00, 5),
(106, 'Fantastic Beasts', 'Fantasy', 400.00, 2),
(107, 'Adventures Abroad', 'Commerce', 280.00, 3),
(108, 'Physics of Universe', 'Science', 700.00, 5);

-- =========================
-- INSERT INTO MEMBERS
-- =========================

INSERT INTO members VALUES
(1, 'Amit Das', 'amit@gmail.com', 'Premium', '2025-01-10'),
(2, 'Riya Sen', 'riya@gmail.com', 'Regular', '2025-02-12'),
(3, 'Sourav Roy', 'sourav@gmail.com', 'Premium', '2025-03-05'),
(4, 'Ananya Paul', 'ananya@gmail.com', 'Regular', '2025-03-15'),
(5, 'Rahul Dey', 'rahul@gmail.com', 'Premium', '2025-04-01');

-- =========================
-- INSERT INTO STAFF
-- =========================

INSERT INTO staff VALUES
(1, 'Arup Ghosh', 25000),
(2, 'Mina Roy', 30000),
(3, 'Sanjay Das', 28000);

-- =========================
-- INSERT INTO RENTALS
-- =========================

INSERT INTO rentals VALUES
(1001, 1, 101, 1, '2025-05-01', '2025-05-10', 0.00),

(1002, 2, 102, 2, '2025-05-03', NULL, 50.00),

(1003, 3, 103, 1, '2025-05-05', '2025-05-12', 0.00),

(1004, 4, 104, 3, '2025-05-06', NULL, 20.00),

(1005, 5, 105, 2, '2025-05-08', '2025-05-15', 0.00),

(1006, 1, 106, 3, '2025-05-09', NULL, 30.00),

(1007, 2, 107, 1, '2025-05-11', '2025-05-18', 0.00),

(1008, 3, 108, 2, '2025-05-12', NULL, 40.00);

-- =========================
-- DISPLAY TABLES
-- =========================

SELECT * FROM authors;

/*
Output:
+-----------+---------------------+----------------+
| author_id | author_name         | country        |
+-----------+---------------------+----------------+
|         1 | Rabindranath Tagore | India          |
|         2 | J.K. Rowling        | United Kingdom |
|         3 | Mark Twain          | USA            |
|         4 | Paulo Coelho        | Brazil         |
|         5 | Stephen Hawking     | United Kingdom |
+-----------+---------------------+----------------+
*/

SELECT * FROM books;

/*
Output:
+---------+-----------------------+------------+--------+-----------+
| book_id | title                 | generation | price  | author_id |
+---------+-----------------------+------------+--------+-----------+
|     101 | Gitanjali             | Literature | 350.00 |         1 |
|     102 | Harry Potter          | Fantasy    | 500.00 |         2 |
|     103 | Tom Sawyer            | Comic      | 300.00 |         3 |
|     104 | The Alchemist         | Science    | 450.00 |         4 |
|     105 | Brief History of Time | Science    | 600.00 |         5 |
|     106 | Fantastic Beasts      | Fantasy    | 400.00 |         2 |
|     107 | Adventures Abroad     | Commerce   | 280.00 |         3 |
|     108 | Physics of Universe   | Science    | 700.00 |         5 |
+---------+-----------------------+------------+--------+-----------+
*/

SELECT * FROM members;

/*
Output:
+-----------+-------------+------------------+-----------------+------------+
| member_id | name        | email            | membership_type | join_date  |
+-----------+-------------+------------------+-----------------+------------+
|         1 | Amit Das    | amit@gmail.com   | Premium         | 2025-01-10 |
|         2 | Riya Sen    | riya@gmail.com   | Regular         | 2025-02-12 |
|         3 | Sourav Roy  | sourav@gmail.com | Premium         | 2025-03-05 |
|         4 | Ananya Paul | ananya@gmail.com | Regular         | 2025-03-15 |
|         5 | Rahul Dey   | rahul@gmail.com  | Premium         | 2025-04-01 |
+-----------+-------------+------------------+-----------------+------------+
*/

SELECT * FROM staff;

/*
Output:
+----------+------------+----------+
| staff_id | name       | salary   |
+----------+------------+----------+
|        1 | Arup Ghosh | 25000.00 |
|        2 | Mina Roy   | 30000.00 |
|        3 | Sanjay Das | 28000.00 |
+----------+------------+----------+
*/

SELECT * FROM rentals;

/*
Output:
+----------+-----------+---------+----------+-------------+-------------+-------+
| rental_id| member_id | book_id | staff_id | rental_date | return_date | fine  |
+----------+-----------+---------+----------+-------------+-------------+-------+
|     1001 |         1 |     101 |        1 | 2025-05-01  | 2025-05-10  |  0.00 |
|     1002 |         2 |     102 |        2 | 2025-05-03  | NULL        | 50.00 |
|     1003 |         3 |     103 |        1 | 2025-05-05  | 2025-05-12  |  0.00 |
|     1004 |         4 |     104 |        3 | 2025-05-06  | NULL        | 20.00 |
|     1005 |         5 |     105 |        2 | 2025-05-08  | 2025-05-15  |  0.00 |
|     1006 |         1 |     106 |        3 | 2025-05-09  | NULL        | 30.00 |
|     1007 |         2 |     107 |        1 | 2025-05-11  | 2025-05-18  |  0.00 |
|     1008 |         3 |     108 |        2 | 2025-05-12  | NULL        | 40.00 |
+----------+-----------+---------+----------+-------------+-------------+-------+
*/

-- ===============================================================
-- LAST 4 QUESTIONS
-- ===============================================================

-- Question 6: Update staff salary to 32000 where staff_id = 1
UPDATE staff
SET salary = 32000.00
WHERE staff_id = 1;

/*
Output:
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
*/

-- Question 7: Delete rental record where rental_id = 1008
DELETE FROM rentals
WHERE rental_id = 1008;

/*
Output:
Query OK, 1 row affected (0.01 sec)
*/

-- Question 8: Display Book Title along with Author Name
SELECT b.title, a.author_name
FROM books b
INNER JOIN authors a ON b.author_id = a.author_id;

/*
Output:
+-----------------------+---------------------+
| title                 | author_name         |
+-----------------------+---------------------+
| Gitanjali             | Rabindranath Tagore |
| Harry Potter          | J.K. Rowling        |
| Tom Sawyer            | Mark Twain          |
| The Alchemist         | Paulo Coelho        |
| Brief History of Time | Stephen Hawking     |
| Fantastic Beasts      | J.K. Rowling        |
| Adventures Abroad     | Mark Twain          |
| Physics of Universe   | Stephen Hawking     |
+-----------------------+---------------------+
*/

-- Question 9: Display Member Name, Book Title and Rental Date for all rentals
SELECT m.name, b.title, r.rental_date
FROM rentals r
INNER JOIN members m ON r.member_id = m.member_id
INNER JOIN books b ON r.book_id = b.book_id;

/*
Output (after deleting rental_id = 1008):
+-------------+-----------------------+-------------+
| name        | title                 | rental_date |
+-------------+-----------------------+-------------+
| Amit Das    | Gitanjali             | 2025-05-01  |
| Riya Sen    | Harry Potter          | 2025-05-03  |
| Sourav Roy  | Tom Sawyer            | 2025-05-05  |
| Ananya Paul | The Alchemist         | 2025-05-06  |
| Rahul Dey   | Brief History of Time | 2025-05-08  |
| Amit Das    | Fantastic Beasts      | 2025-05-09  |
| Riya Sen    | Adventures Abroad     | 2025-05-11  |
+-------------+-----------------------+-------------+
*/