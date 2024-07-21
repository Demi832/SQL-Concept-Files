-- Where Clause
Select *
From employee_salary
Where first_name = 'Leslie';

Select *
From employee_salary
Where salary >= 50000;

Select * 
From employee_demographics
where birth_date > '1985-01-01'
and gender = 'Male'
;

-- Like Statement
Select *
From employee_demographics
#Where first_name Like 'a___%'
Where birth_date Like '1989%'
;