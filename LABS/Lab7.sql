create database Lab7;
use lab7;

-- 1. Create HOSPITAL Table
CREATE TABLE HOSPITAL (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    doctor_name VARCHAR(50),
    disease VARCHAR(50),
    wardno INT,
    contact_no VARCHAR(15)
);

/*
Output:
Query OK, 0 rows affected
*/

-- 2. Insert Values into HOSPITAL
INSERT INTO HOSPITAL VALUES
(1,'Anamya Roy','Dr. Sen','Flu',101,'9876543210'),
(2,'Arjun Das','Dr. Paul','Malaria',102,'9876543211'),
(3,'Rohit Roy','Dr. Khan','Dengue',103,'9876543212'),
(4,'Sayan Dey','Dr. Sen','Covid',104,'9876543213'),
(5,'Amit Roy','Dr. Paul','Cold',105,'9876543214'),
(6,'Ritika Pal','Dr. Khan','Fever',106,'9876543215'),
(7,'Sneha Roy','Dr. Sen','Asthma',107,'9876543216');

/*
Output:
Query OK, 7 rows affected
*/

-- 3. Patients whose name starts with 'A'
SELECT * FROM hospital 
WHERE patient_name LIKE 'A%';

/*
Output:
+------------+--------------+-------------+---------+--------+------------+
| patient_id | patient_name | doctor_name | disease | wardno | contact_no |
+------------+--------------+-------------+---------+--------+------------+
|          1 | Anamya Roy   | Dr. Sen     | Flu     |    101 | 9876543210 |
|          2 | Arjun Das    | Dr. Paul    | Malaria |    102 | 9876543211 |
|          5 | Amit Roy     | Dr. Paul    | Cold    |    105 | 9876543214 |
+------------+--------------+-------------+---------+--------+------------+
*/

-- 4. Patients whose name ends with 's'
SELECT * FROM hospital 
WHERE patient_name LIKE '%s';

/*
Output:
+------------+--------------+-------------+---------+--------+------------+
| patient_id | patient_name | doctor_name | disease | wardno | contact_no |
+------------+--------------+-------------+---------+--------+------------+
|          2 | Arjun Das    | Dr. Paul    | Malaria |    102 | 9876543211 |
+------------+--------------+-------------+---------+--------+------------+
*/

-- 5. Patients whose name contains 'Roy'
SELECT * FROM hospital 
WHERE patient_name LIKE '%Roy%';

/*
Output:
+------------+--------------+-------------+---------+--------+------------+
| patient_id | patient_name | doctor_name | disease | wardno | contact_no |
+------------+--------------+-------------+---------+--------+------------+
|          1 | Anamya Roy   | Dr. Sen     | Flu     |    101 | 9876543210 |
|          3 | Rohit Roy    | Dr. Khan    | Dengue  |    103 | 9876543212 |
|          5 | Amit Roy     | Dr. Paul    | Cold    |    105 | 9876543214 |
|          7 | Sneha Roy    | Dr. Sen     | Asthma  |    107 | 9876543216 |
+------------+--------------+-------------+---------+--------+------------+
*/

-- 6. Patients with exactly 9 characters in name
SELECT * FROM hospital 
WHERE LENGTH(patient_name)=9;

/*
Output:
+------------+--------------+-------------+---------+--------+------------+
| patient_id | patient_name | doctor_name | disease | wardno | contact_no |
+------------+--------------+-------------+---------+--------+------------+
|          2 | Arjun Das    | Dr. Paul    | Malaria |    102 | 9876543211 |
|          3 | Rohit Roy    | Dr. Khan    | Dengue  |    103 | 9876543212 |
|          4 | Sayan Dey    | Dr. Sen     | Covid   |    104 | 9876543213 |
|          7 | Sneha Roy    | Dr. Sen     | Asthma  |    107 | 9876543216 |
+------------+--------------+-------------+---------+--------+------------+
*/

-- 7. Patients whose name starts with A, R, or S
SELECT * FROM hospital 
WHERE patient_name LIKE 'A%' 
   OR patient_name LIKE 'R%' 
   OR patient_name LIKE 'S%';

/*
Output:
+------------+--------------+-------------+---------+--------+------------+
| patient_id | patient_name | doctor_name | disease | wardno | contact_no |
+------------+--------------+-------------+---------+--------+------------+
|          1 | Anamya Roy   | Dr. Sen     | Flu     |    101 | 9876543210 |
|          2 | Arjun Das    | Dr. Paul    | Malaria |    102 | 9876543211 |
|          3 | Rohit Roy    | Dr. Khan    | Dengue  |    103 | 9876543212 |
|          4 | Sayan Dey    | Dr. Sen     | Covid   |    104 | 9876543213 |
|          5 | Amit Roy     | Dr. Paul    | Cold    |    105 | 9876543214 |
|          6 | Ritika Pal   | Dr. Khan    | Fever   |    106 | 9876543215 |
|          7 | Sneha Roy    | Dr. Sen     | Asthma  |    107 | 9876543216 |
+------------+--------------+-------------+---------+--------+------------+
*/