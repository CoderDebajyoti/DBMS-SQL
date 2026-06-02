-- Select the hospital database to work with 
use hospital1;

-- Get total bill amount
SELECT SUM(amount) AS total_bill_amount FROM bill;

-- Get average bill amount
SELECT AVG(amount) AS avg_bill_amount FROM bill;

-- Add a new column 'salary' to doctor table
ALTER TABLE doctor ADD salary DECIMAL(10,2);

-- Update salary for each doctor
UPDATE doctor SET salary = 85000 WHERE doctor_id = 301;
UPDATE doctor SET salary = 78000 WHERE doctor_id = 302;
UPDATE doctor SET salary = 92000 WHERE doctor_id = 303;
UPDATE doctor SET salary = 87000 WHERE doctor_id = 304;
UPDATE doctor SET salary = 80000 WHERE doctor_id = 305;
UPDATE doctor SET salary = 75000 WHERE doctor_id = 306;
UPDATE doctor SET salary = 72000 WHERE doctor_id = 307;

-- Find highest doctor salary
SELECT MAX(salary) AS max_doctor_salary FROM doctor;

-- Show patient, doctor, date and time of appointments
SELECT patient.patient_name, doctor.doctor_name, appointment.date, appointment.time
FROM appointment
JOIN patient ON appointment.patient_id = patient.patient_id
JOIN doctor ON appointment.doctor_id = doctor.doctor_id;