create table employee2(
	employee_id int primary key,
	employee_name varchar(100) not null,
	position varchar(50),
	department varchar(50),
	hire_date date,
	salary numeric(10,3)
);

insert into employee2 (employee_id,employee_name,position,department,hire_date,salary)
values (101,'Nitin Mishra','SDE','IT','10/06/2026',46000.000),
    (102,'Kritika Mishra','SDE','IT','10/06/2026',46000.000),
	(104,'Abhay Mishra','SDE','IT','10/06/2026',46000.000),
	(107,'Aman Mishra','SDE','IT','10/06/2026',46000.000);

select * from employee2;

delete from employee2 
where employee_name = 'Abhay Mishra';

alter table employee2
drop column salary;
