SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
age+10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT distinct first_name, 
last_name,
salary,
salary+2000
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.parks_departments;
