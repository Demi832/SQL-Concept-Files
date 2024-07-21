-- CTE Common Table Expression
With CTE_Example (gender, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) as
(
Select gender,
AVG(salary) as avg_sal, 
MAX(salary) as max_sal, 
MIN(salary) as min_sal, 
COUNT(salary) as count_sal
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
Group by gender
)
Select *
From CTE_Example
;

-- Subquery Example
Select AVG(avg_sal)
From (Select gender,
AVG(salary) as avg_sal, 
MAX(age) as max_age, 
MIN(age) as min_age, 
COUNT(age) as count_age
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id
Group by gender
) example_subquery
;

With CTE_Example as
(
Select employee_id, gender, birth_date
from employee_demographics dem
Where birth_date >'1985-01-01'
),
CTE_Example2 as
(
Select employee_id, salary
From employee_salary
where salary > 50000
)
Select *
From CTE_Example
join CTE_Example2
on CTE_Example.employee_id = CTE_Example2.employee_id
;
