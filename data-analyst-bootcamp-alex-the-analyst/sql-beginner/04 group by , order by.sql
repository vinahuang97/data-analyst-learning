-- group by

select *
from employee_demographics
;

select gender, AVG(age)
from employee_demographics
group by gender
;

select gender, AVG(age), MAX(age), MIN(age), COUNT(age)
from employee_demographics
group by gender
;

select occupation, salary
from employee_salary
group by occupation,salary
;

-- order by
select *
from employee_demographics
order by first_name asc
;

select *
from employee_demographics
order by first_name desc
;

select *
from employee_demographics
order by gender, age desc
;

select *
from employee_demographics
order by 5, 4 
;
;

