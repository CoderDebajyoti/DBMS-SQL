use db1;
select * from hospital;

create table  med(
med_id int primary key,
med_name varchar(50),
price bigint);

INSERT INTO med (med_id, med_name, price) VALUES
(8, 'Dolo 650', 55),
(9, 'Azithromycin', 150),
(10, 'Metformin', 95),
(11, 'Cetirizine', 30),
(12, 'Loperamide', 45),
(13, 'ORS Powder', 25),
(14, 'Insulin', 500);

select * from med;

CREATE TABLE bill (
	bill_id int primary key,
    p_id varchar(6),
    amount BIGINT,
    billdate DATE,
    billtime TIME,
    FOREIGN KEY (p_id) REFERENCES hospital(p_id)
);

INSERT INTO bill (bill_id, p_id, amount, billdate, billtime) VALUES
(8, 'P001', 600, '2026-03-18', '08:45:00'),
(9, 'P002', 1300, '2026-03-19', '10:20:00'),
(10, 'P003', 2000, '2026-03-20', '12:10:00'),
(11, 'P004', 750, '2026-03-21', '14:00:00'),
(12, 'P005', 900, '2026-03-22', '16:30:00'),
(13, 'P001', 400, '2026-03-23', '18:15:00'),
(14, 'P003', 1800, '2026-03-24', '20:05:00');

select * from bill;


create table apoint(
a_id varchar(6) primary key,
p_id varchar(6),
d_id varchar(6),
apoint_date date,
apoint_time time
);