-- Select the hospital database to work with
use hospital1;

-- Add city column to patient and doctor tables
ALTER TABLE patient ADD city VARCHAR(50);
ALTER TABLE doctor ADD city VARCHAR(50);

/*
Output:
Query OK, 0 rows affected
*/

-- Update city for patients
UPDATE patient SET city='Kolkata' WHERE patient_id=1;
UPDATE patient SET city='Delhi' WHERE patient_id=2;
UPDATE patient SET city='Mumbai' WHERE patient_id=3;
UPDATE patient SET city='Kolkata' WHERE patient_id=4;
UPDATE patient SET city='Chennai' WHERE patient_id=5;
UPDATE patient SET city='Delhi' WHERE patient_id=6;
UPDATE patient SET city='Bangalore' WHERE patient_id=7;

/*
Output:
Query OK, 1 row affected (each)
*/

-- Update city for doctors
UPDATE doctor SET city='Kolkata' WHERE doctor_id=301;
UPDATE doctor SET city='Delhi' WHERE doctor_id=302;
UPDATE doctor SET city='Mumbai' WHERE doctor_id=303;
UPDATE doctor SET city='Chennai' WHERE doctor_id=304;
UPDATE doctor SET city='Bangalore' WHERE doctor_id=305;
UPDATE doctor SET city='Delhi' WHERE doctor_id=306;
UPDATE doctor SET city='Kolkata' WHERE doctor_id=307;

/*
Output:
Query OK, 1 row affected (each)
*/

-- Count patients in each city
SELECT city, COUNT(*) AS total_patients
FROM patient
GROUP BY city;

/*
Output:
+-----------+----------------+
| city      | total_patients |
+-----------+----------------+
| Kolkata   |              2 |
| Delhi     |              2 |
| Mumbai    |              1 |
| Chennai   |              1 |
| Bangalore |              1 |
+-----------+----------------+
*/

-- Find doctors who have no appointments
SELECT doctor_name
FROM doctor
WHERE doctor_id NOT IN
(SELECT doctor_id FROM appointment);

/*
Output:
+-----------------+
| doctor_name     |
+-----------------+
| Dr. Kiran Patel |
+-----------------+
*/

-- Get latest appointment date
SELECT MAX(date) AS latest_appointment FROM appointment;

/*
Output:
+--------------------+
| latest_appointment |
+--------------------+
| 2026-03-16         |
+--------------------+
*/

-- Find city with highest number of patients
SELECT city, COUNT(*) AS total_patients
FROM patient
GROUP BY city
ORDER BY total_patients DESC
LIMIT 1;

/*
Output:
+---------+----------------+
| city    | total_patients |
+---------+----------------+
| Kolkata |              2 |
+---------+----------------+
*/

-- Get doctors with salary between 70000 and 90000
SELECT doctor_name, salary
FROM doctor
WHERE salary BETWEEN 70000 AND 90000;

/*
Output:
+-----------------+----------+
| doctor_name     | salary   |
+-----------------+----------+
| Dr. Raj Mehta   | 85000.00 |
| Dr. Neha Kapoor | 78000.00 |
| Dr. Pooja Nair  | 87000.00 |
| Dr. Aman Verma  | 80000.00 |
| Dr. Kiran Patel | 75000.00 |
| Dr. Sunil Roy   | 72000.00 |
+-----------------+----------+
*/

-- Count number of doctors in each specialization
SELECT specialization, COUNT(*) AS doctors
FROM doctor
GROUP BY specialization;

/*
Output:
+----------------+---------+
| specialization | doctors |
+----------------+---------+
| Cardiology     |       2 |
| Dermatology    |       1 |
| Neurology      |       1 |
| Orthopedics    |       1 |
| Pediatrics     |       1 |
| ENT            |       1 |
+----------------+---------+
*/

-- Get total bill amount for each patient
SELECT p.patient_name, SUM(b.amount) AS total_bill
FROM patient p
JOIN bill b ON p.patient_id = b.patient_id
GROUP BY p.patient_name;

/*
Output:
+--------------+------------+
| patient_name | total_bill |
+--------------+------------+
| Rahul Sharma |     500.00 |
| Anita Das    |     200.00 |
| Ramesh Gupta |     800.00 |
| Sita Roy     |     150.00 |
| Mohan Singh  |     900.00 |
| Priya Sen    |     400.00 |
| Amit Kumar   |     250.00 |
+--------------+------------+
*/