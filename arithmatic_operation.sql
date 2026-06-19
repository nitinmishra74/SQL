

CREATE TABLE employee2(
	employee_id	INT	PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),	
	department VARCHAR(20),	
	salary NUMERIC(10,2),	
	joining_date DATE,	
	age INT	
);
select * from employee2;

--retriveing the first_name last_name and salary with 10& as a bonus
select first_name , last_name , salary,(salary*0.10) as BONUS from employee2;

--retriving theanual salary and the salary with 5^ increament
select first_name, last_name, salary,
(salary*12) as monthly_salary,
(salary*0.05) as increment
from employee2;