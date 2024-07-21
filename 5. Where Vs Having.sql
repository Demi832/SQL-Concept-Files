-- Having vs Where
Select gender, AVG(age)
From employee_demographics
Group By gender
Having AVG(age) > 40
;

Select occupation, AVG(salary)
From employee_salary
Where occupation like '%manager%'
group by Occupation
Having AVG(salary) > 75000
;
#Having for filtering on Aggregated functions