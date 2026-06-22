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

--Using ORDER BY Operatoor find out the 5 employee who has maximum salary (Use of ORDER BY , LIMIT Operators)
SELECT first_name ,  last_name, salary
FROM employee3
ORDER BY salary ASC 
LIMIT 5;

--Return the number of disticnt department in the table (Use of DISTINCT OPERATOR)
SELECT COUNT (DISTINCT department)
from employee3;
