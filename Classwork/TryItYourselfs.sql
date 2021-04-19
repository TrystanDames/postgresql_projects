Page 45
CREATE TABLE animals (
id bigserial,
animal_kind varchar(50)
);

CREATE TABLE animal_specifics (
id bigserial,
animal_kind varchar(50),
animal_name varchar(50),
arrival_date date,
age numeric
);

INSERT INTO animals (animal_kind)
VALUES ('Lion'),
('Monkey'),
('Penguin'),
('Bear'),
('Hippo'),
('Tiger');

SELECT * FROM animals

INSERT INTO animal_specifics (animal_kind, animal_name, arrival_date, age)
VALUES ('Lion', 'Simba', '1994-05-07', 27),
('Monkey', 'Kong', '2005-12-14',16),
('Penguin', 'Lovelace', '2006-11-16', 15),
('Bear', 'Yogi', '2010-02-28', 11),
('Hippo', 'Jaden', '2001-09-03', 20),
('Tiger', 'Bengal', '1999-10-18', 22);

SELECT * FROM animal_specifics

Page 57

CREATE TABLE teachers (
 id bigserial,
 first_name varchar(25),
 last_name varchar(50),
 school varchar(50),
 hire_date date,
 salary numeric
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500),
('Beryl', 'Dames', 'Bryanston High School', '2007-06-14', 23500),
('Hannah', 'Sawers', 'Bugsworld Pre-School', '2020-11-5', 15000),
('Kevin', 'Stipple', 'Parktown Boys High School', '2008-04-23', 45000);

SELECT * FROM teachers;

SELECT * FROM teachers
ORDER BY school ASC, last_name ASC;

SELECT * FROM teachers
WHERE first_name LIKE 'S%' and  salary >= 40000;

SELECT * FROM teachers
WHERE hire_date >= '2010-01-01'
ORDER BY salary DESC;

Page 60
CREATE TABLE char_data_types (
varchar_column varchar(10),
char_column char(10),
text_column text
);

INSERT INTO char_data_types
VALUES ('abc', 'abc', 'abc'),
('defghi', 'defghi', 'defghi');

COPY char_data_types TO 'C:\Users\User\Desktop\SQL\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');