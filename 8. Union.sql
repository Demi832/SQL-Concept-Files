-- Unions

Select first_name, last_name
from employee_demographics
union all
Select first_name, last_name
from employee_salary
;

Select first_name, last_name, 'Old Man' as Label
from employee_demographics
where age > 40 And gender = 'Male'
union
Select first_name, last_name, 'Old Lady' as Label
from employee_demographics
where age > 40 And gender = 'Female'
union
Select first_name, last_name, 'Highly Paid Employee' as Label
from employee_salary
where salary > 70000
Order By first_name, last_name
;