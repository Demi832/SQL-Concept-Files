-- Temporary Tables
 
 Create temporary table temp_table
 (first_name varchar(50),
 last_name varchar(50),
 favourite_movie varchar(100)
 );
 
 Select * 
 from temp_table
 ;
 
 Insert into temp_table 
 Values('Demi', 'Ajayi', 'Spiderman-Across the spiderverse')
 ;
 
 
 Select *
 from employee_salary
 ;
 
 Create temporary table salary_over_50k
 Select * 
 From employee_salary
 Where salary >= 50000
 ;
 
 Select * 
 From salary_over_50k
 ;