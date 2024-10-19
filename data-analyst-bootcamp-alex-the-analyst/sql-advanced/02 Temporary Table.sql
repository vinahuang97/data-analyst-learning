-- Temporary Tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);

select *
from temp_table;

INSERT INTO temp_table
VALUES('Alex','Freberg','Lord of the Rings: The Twin Towers');

select *
from temp_table;

select *
from employee_salary;

create temporary table salary_over_50k
select *
from employee_salary
where salary >= 50000;

select *
from salary_over_50k;
