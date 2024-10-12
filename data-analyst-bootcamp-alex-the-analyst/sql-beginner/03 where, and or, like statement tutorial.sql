-- where clause

select *
from parks_and_recreation.employee_salary
where first_name = 'Leslie'
;

select *
from parks_and_recreation.employee_salary
where salary > 50000
;

select *
from parks_and_recreation.employee_salary
where salary >= 50000
;

select *
from parks_and_recreation.employee_salary
where salary < 50000
;

select *
from parks_and_recreation.employee_salary
where salary <= 50000
;

select *
from parks_and_recreation.employee_demographics
where gender = 'Female'
;

select *
from parks_and_recreation.employee_demographics
where gender != 'Female'
;

select *
from parks_and_recreation.employee_demographics
where birth_date > '1985-01-01'
;

-- and or not -- logical operator
select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'
;

select *
from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;

select *
from employee_demographics
where (first_name = 'Leslie' and age = 44) or age > 55
;

-- like statement
-- and _

select *
from employee_demographics
where first_name like 'Jer%'
;

select *
from employee_demographics
where first_name like '%er%'
;

select *
from employee_demographics
where first_name like 'a%'
;

select *
from employee_demographics
where first_name like 'a__'
;

select *
from employee_demographics
where first_name like 'a___'
;

select *
from employee_demographics
where first_name like 'a___%'
;

select *
from employee_demographics
where birth_date like '1989%'
;