# Database Management Systems (DBMS) - SQL Laboratory & Projects

Welcome to the **DBMS-SQL** repository! This workspace is a curated collection of SQL scripts, laboratory assignments, normalization projects, and practice sheets focusing on Database Management System concepts. All exercises are designed and verified for compatibility with SQL dialects such as **MySQL**.

---

## 📂 Repository Structure

The repository is organized logically into laboratory assignments, practice directories, core projects, and transaction problem sets:

```
DBMS-SQL/
├── 📁 LABS/               # Weekly laboratory assignments (Labs 1–9)
├── 📁 Practice/           # Class practice queries, bank, hospital, & employee schemas
├── 📄 project1.sql        # Database Normalization (1NF) Project
├── 📄 Question10.sql      # Database Transactions (TCL) Problem Set
└── 📄 README.md           # Repository documentation (this file)
```

---

## 🛠️ Detailed File Directory & Topics

### 1. Core Projects & Problem Sets

*   **Database Normalization (1NF) Project**
    *   [project1.sql](file:///c:/GitHub/DBMS-SQL/project1.sql) – Demonstrates standard normalization techniques. It begins with an unnormalized single-table college student database containing duplicate data, multivalued attributes, repeating groups, and various anomalies (insertion, deletion, and update anomalies), and walks through converting the design into **First Normal Form (1NF)**.
*   **Database Transactions (TCL)**
    *   [Question10.sql](file:///c:/GitHub/DBMS-SQL/Question10.sql) – Features transaction design assignments focusing on `COMMIT`, `ROLLBACK`, and error handling for:
        1.  *Bank Transactions* (Balance transfers between accounts)
        2.  *College Fee Payment System* (Updating status and logging payments)
        3.  *Railway Ticket Booking* (Conditional booking with available seat checks)
        4.  *ATM Cash Withdrawal* (Ensuring sufficient funds before deducting balances)

### 2. Laboratory Assignments (`LABS/`)

This directory contains progressive weekly labs covering basic to advanced SQL concepts:

| File | Primary SQL Concepts Covered | Schema / Tables Involved |
| :--- | :--- | :--- |
| 📄 [Lab1.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab1.sql) | DDL basics, table creation, primary keys, structural inspection (`DESC`). | `ACCOUNT` |
| 📄 [Lab2.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab2.sql) | DML (inserts, selection), basic wildcards (`LIKE`), aggregate functions (`MAX`, `AVG`), table copying, truncating. | `Employee`, `Emp_Copy` |
| 📄 [Lab3.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab3.sql) | Table schema modification (`ALTER TABLE ADD/DROP COLUMN`), conditional filtering. | `Employee` |
| 📄 [Lab4.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab4.sql) | Multiple tables setup, primary keys, basic querying. | `employee`, `branch` |
| 📄 [Lab5.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab5.sql) | Multi-table updates, math expressions in queries, sorting, grouping, counting, limiting query outputs, conditional deletions. | `cars`, `branch`, `account` |
| 📄 [LAB6.sql](file:///c:/GitHub/DBMS-SQL/LABS/LAB6.sql) | Table relations using `INNER JOIN` and `LEFT JOIN`, set operations (`UNION`), set membership (`IN`), grouping & ordering. | `EMPLOYEE`, `DEPARTMENT` |
| 📄 [Lab7.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab7.sql) | Advanced pattern matching, wildcard queries, character length constraints, and multiple prefix selection. | `HOSPITAL` |
| 📄 [Lab8A.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab8A.sql) | Complex relational schema mapping (primary keys, foreign keys), DDL & DML operations on a hospital management database. | `patient`, `medicine`, `bill`, `doctor`, `appointment` |
| 📄 [Lab8B.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab8B.sql) | Multilateral table updates, joins, aggregate sums, and subqueries. | `patient`, `doctor`, `appointment`, `bill` |
| 📄 [Lab8C.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab8C.sql) | Advanced analytical queries, `GROUP BY`, `ORDER BY DESC LIMIT`, range checks (`BETWEEN`), counting metrics. | `patient`, `doctor`, `appointment`, `bill` |
| 📄 [Lab9.sql](file:///c:/GitHub/DBMS-SQL/LABS/Lab9.sql) | Complete Library Management System. Covers complex schema with relational integrity (cascading actions on deletes/updates), comprehensive joins, and subqueries. | `authors`, `books`, `members`, `staff`, `rentals` |

### 3. Practice Sheets (`Practice/`)

Standalone practice scripts containing standard relational database exercises:

*   📄 [Class1.sql](file:///c:/GitHub/DBMS-SQL/Practice/Class1.sql) & [Class2.sql](file:///c:/GitHub/DBMS-SQL/Practice/Class2.sql) – Practice scripts for department-employee-project relationships, including foreign keys, joins, and multi-table queries.
*   📄 [bank.sql](file:///c:/GitHub/DBMS-SQL/Practice/bank.sql) – Simple bank account schema practice.
*   📄 [employee.sql](file:///c:/GitHub/DBMS-SQL/Practice/employee.sql) & [employee2.sql](file:///c:/GitHub/DBMS-SQL/Practice/employee2.sql) – Basic employee registers and branch details.
*   📄 [hospital.sql](file:///c:/GitHub/DBMS-SQL/Practice/hospital.sql) – Medical and billing operations testing queries.

---

## 🚀 How to Run These Scripts

1.  **Start Your MySQL Server**: Ensure you have MySQL Server installed and running locally.
2.  **Open an SQL Client**: Use the command-line client or an interface like **MySQL Workbench** or **DBeaver**.
3.  **Execute the Script**:
    *   *Option A (Command Line)*:
        ```bash
        mysql -u your_username -p < LABS/Lab1.sql
        ```
    *   *Option B (Interactive Client)*: Copy the contents of the desired script, paste it into an active query editor tab, and run all commands.
4.  **Observe Results**: Check the terminal output or output pane for execution messages and tabular outputs (many scripts include the expected output in comments at the end of the query).

---

## 📈 Key SQL Competencies Covered

*   **DDL (Data Definition Language)**: `CREATE DATABASE`, `CREATE TABLE`, `ALTER TABLE`, `DROP COLUMN`, `TRUNCATE TABLE`.
*   **DML (Data Manipulation Language)**: `INSERT INTO`, `SELECT`, `UPDATE`, `DELETE`.
*   **TCL (Transaction Control Language)**: `START TRANSACTION`, `COMMIT`, `ROLLBACK`.
*   **Advanced Querying**: `GROUP BY`, `HAVING`, `UNION`, `INNER JOIN`, `LEFT JOIN`, subqueries, aggregate functions (`AVG`, `SUM`, `COUNT`, `MAX`, `MIN`), string wildcards (`LIKE`, `_`, `%`).
*   **Database Normalization Theory**: Identifying redundancies, removing multivalued dependencies, and enforcing 1NF.