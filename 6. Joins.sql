-- Join 
Select *
from employee_demographics
;

Select * 
from employee_salary
;

Select dem.employee_id, age, occupation
From employee_demographics as dem
Inner Join employee_salary as sal
On dem.employee_id = sal.employee_id
;

Select *
From employee_demographics as dem
right Join employee_salary as sal
On dem.employee_id = sal.employee_id
;

-- Self Join
Select emp1.employee_id as emp_santa, 
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name, 
emp2.first_name as first_name,
emp2.last_name as last_name
From employee_salary as emp1
Join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id
;

-- Joining Multiple Tables Together
Select *
From employee_demographics as dem
Inner Join employee_salary as sal
On dem.employee_id = sal.employee_id
Inner Join parks_departments as pd
On sal.dept_id = pd.department_id
;

Select * 
from parks_departments
;