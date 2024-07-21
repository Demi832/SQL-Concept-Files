-- Limit & Aliasing

Select *
From employee_demographics
Order By age Desc
Limit 2, 1 #start at 2 and take the 1 after 
;

-- Aliasing

Select gender, AVG(age) As avg_age
From employee_demographics
Group by gender
Having avg_age > 40
;