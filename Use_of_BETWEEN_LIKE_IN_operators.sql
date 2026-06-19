CREATE TABLE employee3(
	employee_id	INT	PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),	
	department VARCHAR(20),	
	salary NUMERIC(10,2),	
	joining_date DATE,	
	age INT	
);
select * from employee3;

-- use of Between & LIKE operator
--Q1: Retrieve all the employee first name and last name whose salaery in between 40k to 60k
SELECT first_name ,  last_name , salary
FROM employee3
where salary BETWEEN 40000 AND 60000;

--Q2: Retrieve all the gmail end with @gmail.com 
SELECT first_name ,  last_name , email
FROM employee3
where email LIKE '%@gmail.com'

--q3: Retrieve all the employees who belongs to finanace or marketing ;
SELECT first_name ,  last_name, department
FROM employee3
where department IN ('Finance' , 'Marketing');
