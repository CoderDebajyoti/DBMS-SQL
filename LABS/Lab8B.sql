-- Select the hospital database to work with 
use hospital1;

-- Get total bill amount
SELECT SUM(amount) AS total_bill_amount FROM bill;

/*
Output:
+-------------------+
| total_bill_amount |
+-------------------+
|           3200.00 |
+-------------------+
*/

-- Get average bill amount
SELECT AVG(amount) AS avg_bill_amount FROM bill;

/*
Output:
+-----------------+
| avg_bill_amount |
+-----------------+
|      457.142857 |
+-----------------+
*/

-- Add a new column 'salary' to doctor table
ALTER TABLE doctor ADD salary DECIMAL(10,2);

/*
Output:
Query OK, 0 rows affected
*/

-- Update salary for each doctor
UPDATE doctor SET salary = 85000 WHERE doctor_id = 301;
UPDATE doctor SET salary = 78000 WHERE doctor_id = 302;
UPDATE doctor SET salary = 92000 WHERE doctor_id = 303;
UPDATE doctor SET salary = 87000 WHERE doctor_id = 304;
UPDATE doctor SET salary = 80000 WHERE doctor_id = 305;
UPDATE doctor SET salary = 75000 WHERE doctor_id = 306;
UPDATE doctor SET salary = 72000 WHERE doctor_id = 307;

/*
Output:
Query OK, 1 row affected (each)
*/

-- Find highest doctor salary
SELECT MAX(salary) AS max_doctor_salary FROM doctor;

/*
Output:
+-------------------+
| max_doctor_salary |
+-------------------+
|          92000.00 |
+-------------------+
*/

-- Show patient, doctor, date and time of appointments
SELECT patient.patient_name, doctor.doctor_name, appointment.date, appointment.time
FROM appointment
JOIN patient ON appointment.patient_id = patient.patient_id
JOIN doctor ON appointment.doctor_id = doctor.doctor_id;

/*
Output:
+--------------+-----------------+------------+----------+
| patient_name | doctor_name     | date       | time     |
+--------------+-----------------+------------+----------+
| Rahul Sharma | Dr. Raj Mehta   | 2026-03-10 | 10:00:00 |
| Anita Das    | Dr. Neha Kapoor | 2026-03-11 | 11:00:00 |
| Ramesh Gupta | Dr. Raj Mehta   | 2026-03-12 | 12:00:00 |
| Sita Roy     | Dr. Vivek Shah  | 2026-03-13 | 09:30:00 |
| Mohan Singh  | Dr. Pooja Nair  | 2026-03-14 | 01:00:00 |
| Priya Sen    | Dr. Aman Verma  | 2026-03-15 | 02:00:00 |
| Amit Kumar   | Dr. Sunil Roy   | 2026-03-16 | 03:30:00 |
+--------------+-----------------+------------+----------+
*/