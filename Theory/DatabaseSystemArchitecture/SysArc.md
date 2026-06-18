# DBMS Unit: Database System Architecture

# Important 15 Marks Questions with Answers

## Q1. Explain the Three-Level Architecture of DBMS with Data Abstraction.

### Introduction
Database System Architecture is used to separate user applications from physical database storage. It provides data abstraction and data independence.

## Three Levels of Architecture

### 1. External Level (View Level)

- Highest level of abstraction.
- Describes only a part of the database required by a user.
- Different users can have different views.

#### Example

Student View:

| Roll | Name |
|--------|--------|
| 101 | Rahul |

Teacher View:

| Roll | Name | Marks |
|--------|--------|--------|
| 101 | Rahul | 90 |

### Advantages

- Security
- Simplicity
- Customized views

---

### 2. Conceptual Level (Logical Level)

- Describes the entire database structure.
- Contains information about entities, attributes, relationships, constraints.

#### Example

Student(Roll, Name, Dept)

Course(CourseID, CourseName)

### Responsibilities

- Logical structure of database
- Relationship management
- Constraint management

---

### 3. Internal Level (Physical Level)

- Lowest level.
- Describes how data is physically stored.

#### Example

- File organization
- Indexing
- Hashing
- Storage blocks

### Responsibilities

- Data storage
- Access methods
- Performance optimization

---

## Diagram

```
Users
  ↓
External Level
  ↓
Conceptual Level
  ↓
Internal Level
  ↓
Physical Storage
```

---

## Data Abstraction

Data abstraction hides unnecessary details from users.

### Levels of Data Abstraction

#### Physical Level

Describes how data is stored.

Example:

```
Student record stored in disk blocks
```

#### Logical Level

Describes what data is stored.

Example:

```
Student(Roll, Name, Dept)
```

#### View Level

Describes what data users can see.

Example:

```
Student can view marks only.
```

---

## Advantages

- Security
- Data Independence
- Easy Maintenance
- Reduced Complexity

---

## Q2. Explain Data Independence in DBMS.

### Definition

Data Independence is the ability to modify schema at one level without affecting higher levels.

It is one of the most important features of DBMS.

---

### Types of Data Independence

## 1. Physical Data Independence

Ability to change physical storage without affecting conceptual schema.

### Examples

- Changing file organization
- Adding indexes
- Changing storage devices

Before:

```
Sequential File
```

After:

```
Indexed File
```

Application programs remain unchanged.

### Advantages

- Improved performance
- Easy storage optimization

---

## 2. Logical Data Independence

Ability to change conceptual schema without affecting external views.

### Examples

Before:

```
Student(Roll, Name)
```

After:

```
Student(Roll, Name, Email)
```

Existing applications continue working.

### Advantages

- Easier database modification
- Reduced maintenance

---

## Difference Between Physical and Logical Data Independence

| Physical Data Independence | Logical Data Independence |
|---------------------------|---------------------------|
| Changes internal schema | Changes conceptual schema |
| Easier to achieve | Difficult to achieve |
| No effect on logical structure | No effect on user views |
| Storage related changes | Structure related changes |

---

## Benefits

- Flexibility
- Scalability
- Easy maintenance
- Reduced development cost

---

## Q3. Explain DDL and DML with Examples.

### Data Definition Language (DDL)

DDL is used to define and modify database structure.

### Common DDL Commands

#### CREATE

Creates database objects.

```sql
CREATE TABLE Student(
Roll INT,
Name VARCHAR(30)
);
```

---

#### ALTER

Modifies table structure.

```sql
ALTER TABLE Student
ADD Email VARCHAR(50);
```

---

#### DROP

Deletes a table.

```sql
DROP TABLE Student;
```

---

#### TRUNCATE

Removes all records.

```sql
TRUNCATE TABLE Student;
```

---

### Characteristics of DDL

- Defines schema
- Auto commit
- Changes database structure

---

## Data Manipulation Language (DML)

DML is used to manipulate data stored in tables.

### Common DML Commands

#### INSERT

```sql
INSERT INTO Student
VALUES(101,'Rahul');
```

---

#### UPDATE

```sql
UPDATE Student
SET Name='Rohit'
WHERE Roll=101;
```

---

#### DELETE

```sql
DELETE FROM Student
WHERE Roll=101;
```

---

#### SELECT

```sql
SELECT * FROM Student;
```

---

### Characteristics of DML

- Manipulates data
- Can rollback
- Used frequently

---

## Difference Between DDL and DML

| DDL | DML |
|------|------|
| Defines structure | Manipulates data |
| CREATE, ALTER | INSERT, UPDATE |
| Auto commit | Requires commit |
| Schema level | Record level |

---

# Important 5 Marks Questions with Answers

## 1. What is Database Architecture?

Database architecture is the structure of a DBMS that defines how data is stored, managed, and accessed.

---

## 2. What is Data Abstraction?

Data abstraction hides storage details and shows only necessary information to users.

---

## 3. What are the Levels of Data Abstraction?

1. Physical Level
2. Logical Level
3. View Level

---

## 4. What is External Schema?

The user-specific view of a database.

---

## 5. What is Conceptual Schema?

The complete logical structure of the database.

---

## 6. What is Internal Schema?

Physical storage representation of data.

---

## 7. Define Data Independence.

Ability to modify one schema level without affecting higher levels.

---

## 8. What is Physical Data Independence?

Changing storage details without affecting logical schema.

---

## 9. What is Logical Data Independence?

Changing logical schema without affecting user views.

---

## 10. What is DDL?

Data Definition Language used to define database structures.

---

## 11. Give Examples of DDL Commands.

- CREATE
- ALTER
- DROP
- TRUNCATE

---

## 12. What is DML?

Data Manipulation Language used to manipulate table data.

---

## 13. Give Examples of DML Commands.

- INSERT
- UPDATE
- DELETE
- SELECT

---

## 14. Difference Between DDL and DML.

| DDL | DML |
|------|------|
| Structure | Data |
| CREATE | INSERT |
| ALTER | UPDATE |
| DROP | DELETE |

---

## 15. Advantages of Data Independence.

- Flexibility
- Easy Maintenance
- Better Security
- Scalability

---

# Important 1 Mark Questions with Answers

### 1. What is DBMS Architecture?
Structure of a database system.

### 2. What is Data Abstraction?
Hiding unnecessary details.

### 3. How many levels of abstraction exist?
Three.

### 4. Name the three levels of abstraction.
Physical, Logical, View.

### 5. Which is the highest level?
View Level.

### 6. Which is the lowest level?
Physical Level.

### 7. What is External Schema?
User view of database.

### 8. What is Conceptual Schema?
Logical structure of database.

### 9. What is Internal Schema?
Physical storage description.

### 10. Define Data Independence.
Ability to modify schema without affecting higher levels.

### 11. Types of Data Independence?
Physical and Logical.

### 12. Which is easier to achieve?
Physical Data Independence.

### 13. Which is harder to achieve?
Logical Data Independence.

### 14. Expand DDL.
Data Definition Language.

### 15. Expand DML.
Data Manipulation Language.

### 16. Which command creates a table?
CREATE.

### 17. Which command modifies a table?
ALTER.

### 18. Which command removes a table?
DROP.

### 19. Which command inserts records?
INSERT.

### 20. Which command updates records?
UPDATE.

### 21. Which command deletes records?
DELETE.

### 22. Which command retrieves records?
SELECT.

### 23. Is SELECT a DML command?
Yes.

### 24. Which language defines schema?
DDL.

### 25. Which language manipulates data?
DML.

---

# Exam Focus (Most Important for MAKAUT)

## 15 Marks
1. Three-Level Architecture of DBMS
2. Data Abstraction
3. Data Independence
4. DDL vs DML

## 5 Marks
1. Physical Data Independence
2. Logical Data Independence
3. Levels of Abstraction
4. DDL Commands
5. DML Commands

## 1 Marks
1. DDL
2. DML
3. Data Abstraction
4. Physical Schema
5. Conceptual Schema
6. External Schema
7. Data Independence
8. CREATE
9. ALTER
10. SELECT