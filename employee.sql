show databases;

create database clg;

use clg;

create table employee(
e_id int primary key,
name varchar(20),
address varchar(20),
salary int,
dob date
);

desc employee;

insert into employee value(1,'DEBAJYOTI','NISCHINTAPUR',20000,'2005-07-04');
insert into employee value(2,'RAHUL','KOLKATA',25000,'2004-05-12');
insert into employee value(3,'AMIT','BARASAT',22000,'2003-11-20');
insert into employee value(4,'SOURAV','DUMDUM',24000,'2002-09-15');
insert into employee value(5,'ANIK','KANCHRAPARA',23000,'2004-02-28');

select * from employee;

-- Display details from the employee table whose location is Kolkata
select * from employee where address='KOLKATA';

-- Display employee details where the salary is more than 22,000
select * from employee where salary > 22000;+

-- Add a new email into the table
alter table employee add email varchar(30);

-- Update the email for employee with e_id 1
update employee set email='deba@gmail.com' where e_id=1;

-- Delete the record of employee with e_id 5
delete from employee where e_id=5;
