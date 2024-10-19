-- CTEs



with CTE_Example(Gender, AVG_salary, MAX_salary, MIN_salary, COUNT_salary) as
(
SELECT gender, AVG(salary) as avg_salary, MAX(salary) as max_salary, MIN(salary) as min_salary, COUNT(salary) as count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
select *
FROM CTE_Example
;

select avg(avg_salary)
from (
SELECT gender, AVG(salary) as avg_salary, MAX(salary) as max_salary, MIN(salary) as min_salary, COUNT(salary) as count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery
;

WITH CTE_Example as
(SELECT employee_id, gender, birth_date
FROM employee_demographics
where birth_date > '1985-01-01'
),
CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;
    
