-- Unions

select first_name, last_name
from employee_demographics
union select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union distinct 
select first_name, last_name
from employee_salary
;

select first_name, last_name
from employee_demographics
union all 
select first_name, last_name
from employee_salary
;

select first_name, last_name, 'Old' as Label
from employee_demographics
where age > 50
UNION
select first_name, last_name, 'HIghly Paid Employee' as Label
from employee_salary
where salary > 70000
;

select first_name, last_name, 'Old Man' as Label
from employee_demographics
where age > 40 and gender = 'Male'
UNION
select first_name, last_name, 'Old Lady' as Label
from employee_demographics
where age > 40 and gender = 'Female'
UNION
select first_name, last_name, 'HIghly Paid Employee' as Label
from employee_salary
where salary > 70000
order by first_name, last_name
;