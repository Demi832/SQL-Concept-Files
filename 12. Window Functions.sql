-- Windown Functions

Select dem.first_name, dem.last_name, gender, AVG(salary) as avg_salary
From employee_demographics as dem
Join employee_salary as sal
where dem.employee_id = sal.employee_id
group by dem.first_name, dem.last_name, gender
;


Select dem.first_name, dem.last_name, AVG(salary)  OVER(partition by gender)
From employee_demographics as dem
Join employee_salary as sal
where dem.employee_id = sal.employee_id
;

-- All males make 402k Females make 215k
Select  dem.first_name, dem.last_name, salary,
SUM(salary)  OVER(partition by gender Order By dem.employee_id) as Rolling_Total
From employee_demographics as dem
Join employee_salary as sal
where dem.employee_id = sal.employee_id
;

-- Order By Highest Salary and give it a row number based on what you're partitioning by or ordering by
Select dem.employee_id, dem.first_name, dem.last_name, gender, salary,
Row_Number() Over (Partition by gender Order By Salary DESC) as Row_Num,
rank() Over (Partition by gender Order By Salary DESC) as Rank_Num,
dense_rank() Over (Partition by gender Order By Salary DESC) as Dense_Rank_Num
From employee_demographics as dem
Join employee_salary as sal
where dem.employee_id = sal.employee_id
;