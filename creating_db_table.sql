create table employee(
	employee_id int primary key,
	employee_name varchar(100) not null,
	position varchar(50),
	department varchar(50),
	hire_date date,
	salary numeric(10,3)
);
select * from employee;