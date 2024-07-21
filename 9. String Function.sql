-- String Function

Select Length('skyfall');

select first_name, Length(first_name)
from employee_demographics
order by 2;

select Upper('sky');
select Lower('SKY');

select first_name, Upper(first_name)
from employee_demographics
;

#removes white spaces, there's left and right trim(LTrim, RTrim)
Select Trim('        sky             ');

Select first_name, 
Left(first_name, 4),
Right(first_name, 4),
SUBSTRING(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics
;

Select first_name, Replace(first_name, 'a', 'z')
from employee_demographics
;

Select Locate('x','Alexander');

Select first_name, Locate('An',first_name)
from employee_demographics
;

Select first_name, last_name,
Concat(first_name, ' ', last_name) as full_name
from employee_demographics
;
