-- Stored Procedures

Select *
From employee_salary
Where salary >= 50000;


Create procedure large_salaries()
Select *
From employee_salary
Where salary >= 50000
;
Delimiter $$
Create procedure large_salaries2()
Begin
	Select *
	From employee_salary
	Where salary >= 50000;
	Select *
	From employee_salary
	Where salary >= 10000
	;
End $$
Delimiter ;

Delimiter $$
Create procedure large_salaries3()
Begin
	Select *
	From employee_salary
	Where salary >= 50000;
	Select *
	From employee_salary
	Where salary >= 10000
	;
End $$
Delimiter ;

call large_salaries3();

Delimiter $$
Create procedure large_salaries4(emp_id INT)
Begin
	Select salary
	From employee_salary
    Where employee_id = emp_id
	;
End $$
Delimiter ;

call large_salaries4(1)