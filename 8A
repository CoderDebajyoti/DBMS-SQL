-- Create a new database named hospital
CREATE DATABASE hospital1;

-- Select the hospital database to work with
USE hospital1;

-- Create a table to store patient details
CREATE TABLE patient (
    patient_id INT PRIMARY KEY,      -- Unique ID for each patient
    patient_name VARCHAR(50),        -- Name of the patient
    age INT,                         -- Age of the patient
    gender VARCHAR(10),              -- Gender of the patient
    disease VARCHAR(50),             -- Disease the patient has
    contact_no VARCHAR(15)           -- Contact number
);

-- Create a table to store medicine details
CREATE TABLE medicine (
    med_id INT PRIMARY KEY,          -- Unique medicine ID
    med_name VARCHAR(50),            -- Name of the medicine
    price DECIMAL(8,2)               -- Price of the medicine
);

-- Create a table to store billing details
CREATE TABLE bill (
    bill_id INT PRIMARY KEY,         -- Unique bill ID
    patient_id INT,                  -- Patient ID (foreign key)
    amount DECIMAL(10,2),            -- Total bill amount
    date DATETIME,                   -- Date and time of bill
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

-- Create a table to store doctor details
CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY,       -- Unique doctor ID
    doctor_name VARCHAR(50),         -- Doctor's name
    specialization VARCHAR(50),      -- Doctor's specialization
    phone VARCHAR(15)                -- Contact number
);

-- Create a table to store appointments
CREATE TABLE appointment (
    appointment_id INT PRIMARY KEY,  -- Unique appointment ID
    patient_id INT,                  -- Patient ID (foreign key)
    doctor_id INT,                   -- Doctor ID (foreign key)
    date DATE,                       -- Appointment date
    time TIME,                       -- Appointment time
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
);

-- Insert sample data into patient table
INSERT INTO patient VALUES
(1, 'Rahul Sharma', 60, 'Male', 'Diabetes', '9876543210'),
(2, 'Anita Das', 45, 'Female', 'Fever', '9876543211'),
(3, 'Ramesh Gupta', 55, 'Male', 'Heart Disease', '9876543212'),
(4, 'Sita Roy', 30, 'Female', 'Cold', '9876543213'),
(5, 'Mohan Singh', 65, 'Male', 'Blood Pressure', '9876543214'),
(6, 'Priya Sen', 52, 'Female', 'Asthma', '9876543215'),
(7, 'Amit Kumar', 40, 'Male', 'Flu', '9876543216');

-- Insert sample data into medicine table
INSERT INTO medicine VALUES
(101, 'Paracetamol', 20.00),
(102, 'Insulin', 350.00),
(103, 'Aspirin', 15.00),
(104, 'Amoxicillin', 120.00),
(105, 'Cough Syrup', 90.00),
(106, 'Vitamin C', 50.00),
(107, 'Metformin', 200.00);

-- Insert sample data into bill table
INSERT INTO bill VALUES
(201, 1, 500.00, '2026-03-01 10:30:00'),
(202, 2, 200.00, '2026-03-02 11:00:00'),
(203, 3, 800.00, '2026-03-03 12:15:00'),
(204, 4, 150.00, '2026-03-04 09:45:00'),
(205, 5, 900.00, '2026-03-05 02:20:00'),
(206, 6, 400.00, '2026-03-06 04:10:00'),
(207, 7, 250.00, '2026-03-07 03:00:00');

-- Insert sample data into doctor table
INSERT INTO doctor VALUES
(301, 'Dr. Raj Mehta', 'Cardiology', '9001111111'),
(302, 'Dr. Neha Kapoor', 'Dermatology', '9002222222'),
(303, 'Dr. Vivek Shah', 'Neurology', '9003333333'),
(304, 'Dr. Pooja Nair', 'Cardiology', '9004444444'),
(305, 'Dr. Aman Verma', 'Orthopedics', '9005555555'),
(306, 'Dr. Kiran Patel', 'Pediatrics', '9006666666'),
(307, 'Dr. Sunil Roy', 'ENT', '9007777777');

-- Insert sample data into appointment table
INSERT INTO appointment VALUES
(401, 1, 301, '2026-03-10', '10:00:00'),
(402, 2, 302, '2026-03-11', '11:00:00'),
(403, 3, 301, '2026-03-12', '12:00:00'),
(404, 4, 303, '2026-03-13', '09:30:00'),
(405, 5, 304, '2026-03-14', '01:00:00'),
(406, 6, 305, '2026-03-15', '02:00:00'),
(407, 7, 307, '2026-03-16', '03:30:00');

-- Get all patients older than 50
SELECT * FROM patient WHERE age > 50;

-- Get all doctors who specialize in Cardiology
SELECT * FROM doctor WHERE specialization = 'Cardiology';

-- Show patient names with their respective doctor names
SELECT patient.patient_name, doctor.doctor_name
FROM appointment
JOIN patient ON appointment.patient_id = patient.patient_id
JOIN doctor ON appointment.doctor_id = doctor.doctor_id;

-- Count total number of patients
SELECT COUNT(*) AS total_patients FROM patient;
