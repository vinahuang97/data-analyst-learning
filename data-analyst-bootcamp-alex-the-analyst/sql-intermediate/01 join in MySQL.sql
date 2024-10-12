-- joins

select *
from employee_demographics
;

select *
from employee_salary
;

-- inner join

select dem.employee_id, age, occupation
from employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- outer join

select *
from employee_demographics as dem
LEFT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

select *
from employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- self join

select emp1.employee_id as emp_santa,
	emp1.first_name as first_name_santa,
    emp1.last_name as last_name_santa,
    emp2.employee_id as emp_name,
	emp2.first_name as first_name_name,
    emp2.last_name as last_name_name
from employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id +1 = emp2.employee_id
;

-- joining multiple tables together

select *
from employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	on sal.dept_id = pd.department_id
;

select *
from parks_departments
;

