-- Group By
Select *
From employee_demographics
;


Select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
From employee_demographics
Group By gender
;

-- Order By
Select *
From employee_demographics
order by gender, age
;

Select *
From employee_demographics
order by 5, 4 #column 5 is gender and 4 is age(not recommended)
;