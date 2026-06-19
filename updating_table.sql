select * from employee2;

--updating the table
update employee2
set position = 'tester', employee_name = 'Kritika Nitin Mishra'
where employee_id = 102;

-- sorting the table data
select * from employee2 ORDER BY employee_id ASC;