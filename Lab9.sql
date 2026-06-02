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

SELECT * FROM books;

SELECT * FROM members;

SELECT * FROM staff;

SELECT * FROM rentals;