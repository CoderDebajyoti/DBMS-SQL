-- A college wanted to maintain database management system to manage student academic and hostel records The administration store all details in a single table , however the table contain duplicate data ,multivalued attributes and data redundancy which causes insertion deletion and update anamalis  the existing table structure given below
-- The college authority faces issue 
-- A  single student may have multiple courses but all course ID's and names are stored in one column, 
-- A student may multiple phone number stored together in a single field 

-- Library books issued to student are stored as multi valued data 

-- Department and faculty member are repeated for many student causing redundancy
-- Updating faculty and all departments required modified rows

-- Deleting a student record may accidentally remove department or information ( deletion anomalies)
-- Identify problem in the given table 

-- 1. Multi valued attributes 
-- 2. Duplicate data
-- 3. Repeating group 
-- 4. Data redundancy 
-- 5. Possible anamalis 

-- 2.Convert the given table in first normal form 

-- Remove multi valued attributes 
-- Convert non atomic into atomic value
-- Create a proper primary key 
-- Write a mysql queries and create table and insert data
create database college;
use college;

create table STUDENT_RECORD (
    student_id VARCHAR(100),
    student_name VARCHAR(100),
    department VARCHAR(100),
    faculty_Name VARCHAR(100),
    course_id VARCHAR(100),
    course_name VARCHAR(100),
    ph_no VARCHAR(100),
    library_book VARCHAR(100),
    hostel_room VARCHAR(100),
    city VARCHAR(100)
);

INSERT INTO STUDENT_RECORD (student_id, student_name, department, faculty_Name, course_id, course_name, ph_no, library_book, hostel_room, city) 
VALUES 
('S101', 'Amit Das', 'CSE', 'Dr. Roy', 'C101, C102', 'DBMS, OS', '9876543210, 8765432109', 'DBMS Book, Java Book', 'H101', 'Kolkata'),
('S102', 'Priya Sen', 'ECE', 'Dr. Saha', 'E201, E202', 'Signals, Networks', '9876543201', 'Communication Book', 'H102', 'Durgapur'),
('S103', 'Rahul Paul', 'CSE', 'Dr. Roy', 'C101, C103', 'DBMS, Java', '9123456780, 9234567890', 'DBMS Book, C Programming', 'H103', 'Kolkata'),
('S104', 'Sneha Ghosh', 'EE', 'Dr. Dutta', 'EE301, EE302', 'Circuit, Machines', '9345678901', 'Electrical Machine Book', 'H104', 'Asansol'),
('S105', 'Arjun Das', 'CSE', 'Dr. Roy', 'C102, C104', 'OS, Python', '9456789012, 9567890123', 'Python Book, OS Book', 'H105', 'Siliguri'),
('S106', 'Sourav Ray', 'CSE', 'Dr. Roy', 'C101, C105', 'DBMS, Networking', '9830012345', 'Networking Basics', 'H106', 'Kolkata'),
('S107', 'Anita Raj', 'ECE', 'Dr. Saha', 'E201, E203', 'Signals, VLSI', '9831122334, 9831122335', 'VLSI Design, Signal Processing', 'H107', 'Durgapur'),
('S108', 'Rohan Mehra', 'IT', 'Dr. Gupta', 'IT401', 'Web Tech', '9007011223', 'HTML/CSS Guide', 'H108', 'Mumbai'),
('S109', 'Ishani Kar', 'EE', 'Dr. Dutta', 'EE301, EE303', 'Circuit, Power Sys', '9163012345, 9163012346', 'Power Systems Vol 1', 'H109', 'Kolkata'),
('S110', 'Zico Roy', 'CSE', 'Dr. Roy', 'C101, C102', 'DBMS, OS', '9830055667', 'Database Internals', 'H110', 'Howrah'),
('S111', 'Tania Bose', 'ECE', 'Dr. Saha', 'E202', 'Networks', '9876500112', 'Computer Networks', 'H111', 'Siliguri'),
('S112', 'Vikram Singh', 'IT', 'Dr. Gupta', 'IT401, IT402', 'Web Tech, AI', '8899001122, 8899001123', 'AI: A Modern Approach', 'H112', 'Delhi'),
('S113', 'Sona Das', 'CSE', 'Dr. Roy', 'C104', 'Python', '9748011223', 'Fluent Python', 'H113', 'Asansol'),
('S114', 'Rupam Kar', 'EE', 'Dr. Dutta', 'EE302', 'Machines', '9123004455', 'AC Machines', 'H114', 'Kolkata'),
('S115', 'Nisha Jha', 'IT', 'Dr. Gupta', 'IT403', 'Cyber Security', '9830088990, 9830088991', 'Security+ Guide', 'H115', 'Patna'),
('S116', 'Abhi Seal', 'CSE', 'Dr. Roy', 'C105', 'Networking', '9163001122', 'TCP/IP Illustrated', 'H116', 'Kolkata'),
('S117', 'Mona Sen', 'ECE', 'Dr. Saha', 'E203', 'VLSI', '9433011223', 'Digital VLSI', 'H117', 'Durgapur'),
('S118', 'Rajdeep De', 'EE', 'Dr. Dutta', 'EE303', 'Power Sys', '9330011224', 'Electric Power', 'H118', 'Asansol'),
('S119', 'Piyali Som', 'IT', 'Dr. Gupta', 'IT402', 'AI', '9831100445', 'Machine Learning', 'H119', 'Siliguri'),
('S120', 'Joy Dev', 'CSE', 'Dr. Roy', 'C101, C103', 'DBMS, Java', '9456001122', 'Java Complete Reference', 'H120', 'Kolkata');

select * from STUDENT_RECORD;


CREATE DATABASE COLLEGE_1NF;
USE COLLEGE_1NF;

CREATE TABLE STUDENT_RECORD_1NF (
    student_id VARCHAR(100),
    student_name VARCHAR(100),
    department VARCHAR(100),
    faculty_Name VARCHAR(100),
    course_id VARCHAR(100),
    course_name VARCHAR(100),
    ph_no VARCHAR(100),
    library_book VARCHAR(100),
    hostel_room VARCHAR(100),
    city VARCHAR(100),
    PRIMARY KEY (student_id, course_id, ph_no, library_book)
);

INSERT INTO STUDENT_RECORD_1NF VALUES 
('S101', 'Amit Das', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '9876543210', 'DBMS Book', 'H101', 'Kolkata'),
('S101', 'Amit Das', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '8765432109', 'Java Book', 'H101', 'Kolkata'),
('S101', 'Amit Das', 'CSE', 'Dr. Roy', 'C102', 'OS', '9876543210', 'DBMS Book', 'H101', 'Kolkata'),
('S101', 'Amit Das', 'CSE', 'Dr. Roy', 'C102', 'OS', '8765432109', 'Java Book', 'H101', 'Kolkata'),
('S102', 'Priya Sen', 'ECE', 'Dr. Saha', 'E201', 'Signals', '9876543201', 'Communication Book', 'H102', 'Durgapur'),
('S102', 'Priya Sen', 'ECE', 'Dr. Saha', 'E202', 'Networks', '9876543201', 'Communication Book', 'H102', 'Durgapur'),
('S103', 'Rahul Paul', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '9123456780', 'DBMS Book', 'H103', 'Kolkata'),
('S103', 'Rahul Paul', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '9234567890', 'C Programming', 'H103', 'Kolkata'),
('S103', 'Rahul Paul', 'CSE', 'Dr. Roy', 'C103', 'Java', '9123456780', 'DBMS Book', 'H103', 'Kolkata'),
('S103', 'Rahul Paul', 'CSE', 'Dr. Roy', 'C103', 'Java', '9234567890', 'C Programming', 'H103', 'Kolkata'),
('S104', 'Sneha Ghosh', 'EE', 'Dr. Dutta', 'EE301', 'Circuit', '9345678901', 'Electrical Machine Book', 'H104', 'Asansol'),
('S104', 'Sneha Ghosh', 'EE', 'Dr. Dutta', 'EE302', 'Machines', '9345678901', 'Electrical Machine Book', 'H104', 'Asansol'),
('S105', 'Arjun Das', 'CSE', 'Dr. Roy', 'C102', 'OS', '9456789012', 'Python Book', 'H105', 'Siliguri'),
('S105', 'Arjun Das', 'CSE', 'Dr. Roy', 'C102', 'OS', '9567890123', 'OS Book', 'H105', 'Siliguri'),
('S105', 'Arjun Das', 'CSE', 'Dr. Roy', 'C104', 'Python', '9456789012', 'Python Book', 'H105', 'Siliguri'),
('S105', 'Arjun Das', 'CSE', 'Dr. Roy', 'C104', 'Python', '9567890123', 'OS Book', 'H105', 'Siliguri'),
('S106', 'Sourav Ray', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '9830012345', 'Networking Basics', 'H106', 'Kolkata'),
('S106', 'Sourav Ray', 'CSE', 'Dr. Roy', 'C105', 'Networking', '9830012345', 'Networking Basics', 'H106', 'Kolkata'),
('S107', 'Anita Raj', 'ECE', 'Dr. Saha', 'E201', 'Signals', '9831122334', 'VLSI Design', 'H107', 'Durgapur'),
('S107', 'Anita Raj', 'ECE', 'Dr. Saha', 'E201', 'Signals', '9831122335', 'Signal Processing', 'H107', 'Durgapur'),
('S107', 'Anita Raj', 'ECE', 'Dr. Saha', 'E203', 'VLSI', '9831122334', 'VLSI Design', 'H107', 'Durgapur'),
('S107', 'Anita Raj', 'ECE', 'Dr. Saha', 'E203', 'VLSI', '9831122335', 'Signal Processing', 'H107', 'Durgapur'),
('S108', 'Rohan Mehra', 'IT', 'Dr. Gupta', 'IT401', 'Web Tech', '9007011223', 'HTML/CSS Guide', 'H108', 'Mumbai'),
('S109', 'Ishani Kar', 'EE', 'Dr. Dutta', 'EE301', 'Circuit', '9163012345', 'Power Systems Vol 1', 'H109', 'Kolkata'),
('S109', 'Ishani Kar', 'EE', 'Dr. Dutta', 'EE301', 'Circuit', '9163012346', 'Power Systems Vol 1', 'H109', 'Kolkata'),
('S109', 'Ishani Kar', 'EE', 'Dr. Dutta', 'EE303', 'Power Sys', '9163012345', 'Power Systems Vol 1', 'H109', 'Kolkata'),
('S109', 'Ishani Kar', 'EE', 'Dr. Dutta', 'EE303', 'Power Sys', '9163012346', 'Power Systems Vol 1', 'H109', 'Kolkata'),
('S110', 'Zico Roy', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '9830055667', 'Database Internals', 'H110', 'Howrah'),
('S110', 'Zico Roy', 'CSE', 'Dr. Roy', 'C102', 'OS', '9830055667', 'Database Internals', 'H110', 'Howrah'),
('S111', 'Tania Bose', 'ECE', 'Dr. Saha', 'E202', 'Networks', '9876500112', 'Computer Networks', 'H111', 'Siliguri'),
('S112', 'Vikram Singh', 'IT', 'Dr. Gupta', 'IT401', 'Web Tech', '8899001122', 'AI: A Modern Approach', 'H112', 'Delhi'),
('S112', 'Vikram Singh', 'IT', 'Dr. Gupta', 'IT401', 'Web Tech', '8899001123', 'AI: A Modern Approach', 'H112', 'Delhi'),
('S112', 'Vikram Singh', 'IT', 'Dr. Gupta', 'IT402', 'AI', '8899001122', 'AI: A Modern Approach', 'H112', 'Delhi'),
('S112', 'Vikram Singh', 'IT', 'Dr. Gupta', 'IT402', 'AI', '8899001123', 'AI: A Modern Approach', 'H112', 'Delhi'),
('S113', 'Sona Das', 'CSE', 'Dr. Roy', 'C104', 'Python', '9748011223', 'Fluent Python', 'H113', 'Asansol'),
('S114', 'Rupam Kar', 'EE', 'Dr. Dutta', 'EE302', 'Machines', '9123004455', 'AC Machines', 'H114', 'Kolkata'),
('S115', 'Nisha Jha', 'IT', 'Dr. Gupta', 'IT403', 'Cyber Security', '9830088990', 'Security+ Guide', 'H115', 'Patna'),
('S115', 'Nisha Jha', 'IT', 'Dr. Gupta', 'IT403', 'Cyber Security', '9830088991', 'Security+ Guide', 'H115', 'Patna'),
('S116', 'Abhi Seal', 'CSE', 'Dr. Roy', 'C105', 'Networking', '9163001122', 'TCP/IP Illustrated', 'H116', 'Kolkata'),
('S117', 'Mona Sen', 'ECE', 'Dr. Saha', 'E203', 'VLSI', '9433011223', 'Digital VLSI', 'H117', 'Durgapur'),
('S118', 'Rajdeep De', 'EE', 'Dr. Dutta', 'EE303', 'Power Sys', '9330011224', 'Electric Power', 'H118', 'Asansol'),
('S119', 'Piyali Som', 'IT', 'Dr. Gupta', 'IT402', 'AI', '9831100445', 'Machine Learning', 'H119', 'Siliguri'),
('S120', 'Joy Dev', 'CSE', 'Dr. Roy', 'C101', 'DBMS', '9456001122', 'Java Complete Reference', 'H120', 'Kolkata'),
('S120', 'Joy Dev', 'CSE', 'Dr. Roy', 'C103', 'Java', '9456001122', 'Java Complete Reference', 'H120', 'Kolkata');

SELECT * FROM STUDENT_RECORD_1NF;