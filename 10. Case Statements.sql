-- Case Statements

Select first_name,
last_name,
age,
Case
	When age <= 30 Then 'Young'
    When age Between 31 and 50 Then 'Old'
    When age >= 50 Then "On Death's Door"
End as Age_Bracket
From employee_demographics
;


-- Pay Increase and Bonus
-- < 50000 =  5% 
-- > 50000 = 7%
-- Finance Dept = 10% bonus

Select first_name, last_name, salary,
Case
	When salary < 50000 Then salary * 1.05
    When salary > 50000 Then salary * 1.07
End as New_Salary,
Case
	When dept_id = 6 Then Salary * 0.1
End as Bonus
From employee_salary
;

-- Needed another case statement cause he already earned over 50,000 so the condition was met and exited

Select *
from employee_salary
;


Select *
from parks_departments
;
