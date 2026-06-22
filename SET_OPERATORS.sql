									--SET OPERATORS(UNION,UNION ALL,INTERSECTION)



DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

SELECT * FROM students_2023;


DROP TABLE IF EXISTS students_2024;
CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),   -- Same as students_2023
(4, 'Ananya Desai', 'Civil Engineering'), -- Same as students_2023
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');


SELECT * FROM students_2024;

--UNION it dose not include the duplicates
select student_name , course 
from students_2023
UNION 
select student_name, course
from students_2024

--UNION ALL it include the duplicates too
select student_name , course 
from students_2023
UNION ALL
select student_name, course
from students_2024

--intersection (It returns the comman data)

select student_name , course 
from students_2023
INTERSECT
select student_name, course
from students_2024

--EXCEPT (Returns data from the first table but not in the second table)
select student_name , course 
from students_2023
EXCEPT 
select student_name, course
from students_2024