CREATE TABLE teachers (
 id bigserial,
 first_name varchar(25),
 last_name varchar(50),
 school varchar(50),
 hire_date date,
 salary numeric
);

SELECT first_name, last_name FROM teachers;

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

SELECT * FROM teachers;

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Beryl', 'Dames', 'Bryanston High School', '2007-06-14', 23500),
('Hannah', 'Sawers', 'Bugsworld Pre-School', '2020-11-5', 15000),
('Kevin', 'Stipple', 'Parktown Boys High School', '2008-04-23', 45000);

SELECT last_name, first_name, salary FROM teachers;

SELECT DISTINCT school FROM teachers;

SELECT first_name, last_name, salary FROM teachers
ORDER BY salary DESC;

SELECT last_name, school, hire_date FROM teachers
ORDER BY school ASC, hire_date DESC;

SELECT last_name, school, hire_date FROM teachers
WHERE school = 'Myers Middle School';

SELECT * FROM teachers
WHERE first_name = 'Hannah'

SELECT * FROM teachers
WHERE salary >= 40000 AND salary <= 70000

SELECT last_name FROM teachers
WHERE last_name LIKE '_ames'

SELECT last_name FROM teachers
WHERE last_name LIKE 'S%'

COPY teachers TO 'C:\Users\User\Desktop\SQL\teacherstest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');