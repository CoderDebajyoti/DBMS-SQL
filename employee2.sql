-- LAB4
-- Create a table Employee with account number as primary key and balance as 10 digit number insert and display in the record inserted more than 5;
show databases;
create database clg;
use clg;

create table employee(
acc_no int primary key,
balance bigint
);

desc employee;

insert into employee (acc_no, balance) values
(1,2000000),
(2,2500000),
(3,3000000),
(4,3500000),
(5,4000000),
(6,4500000);

-- Create table
create table branch(
b_name varchar(20),
city varchar(20),
asset bigint
);

-- Insert multiple records in one query
insert into branch values
('sbi','bangalore',1000000),
('icici','bangalore',2000000),
('hdfc','kolkata',3000000),
('sbi','mysore',4000000),
('icici','mysore',5000000),
('hdfc','kolkata',6000000);

-- Display the record inserted in the both table
select * from employee;
select * from branch;


-- LAB5
-- Create a table cars with company name, company, model, and color
create table cars(
company_name varchar(20),
company varchar(20),
model varchar(20),
color varchar(20)
);

-- Insert 5 values
insert into cars values
('company1','company1','model1','color1'),
('company2','company2','model2','color2'),
('company3','company3','model3','color1'),
('company4','company4','model4','color4'),
('company5','company5','model5','color1');

-- Display the table
select * from cars;

-- Count the number of Gray color Find average asset of Kolkata branch
select count(*) from cars where color='color1';
select avg(asset) from branch where city='kolkata';

-- Find the maximum balance in bank account
select max(balance) from employee;

-- Find the newest car model
select model from cars order by model desc limit 1;

-- Find the oldest car model
select model from cars order by model asc limit 1;

-- Find the asset in Kolkata branch
select b_name, asset from branch where city='kolkata';