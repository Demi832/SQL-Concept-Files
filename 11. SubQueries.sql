-- Subqueries
Select *
from employee_demographics
Where employee_id In 
					(Select employee_id
						From employee_salary
                        Where dept_id = 1)
;

Select first_name, salary, 
(Select AVG(salary)
From employee_salary)
From employee_salary;

Select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
from employee_demographics
Group by gender
;

Select AVG(max_age)
from 
(Select AVG(age) as avg_age, 
MAX(age) as max_age, 
MIN(age) as min_age, 
COUNT(age) as count_age
from employee_demographics
Group by gender) as Agg_table 
;