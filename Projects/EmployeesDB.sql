CREATE TABLE Employees (
	emp_id bigserial,
	first_name varchar(50) NOT NULL,
	surname varchar(50) NOT NULL,
	gender varchar(7) NOT NULL,
	address varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	depart_id bigserial REFERENCES Department (depart_id),
	role_id bigserial REFERENCES Roles (roles_id),
	salary_id bigserial REFERENCES Salaries (salary_id),
	overtime_id bigserial REFERENCES Overtime (overtime_id),
	CONSTRAINT Employees_key PRIMARY KEY (emp_id)
);

SELECT * FROM Employees;

CREATE TABLE Department (
	depart_id bigserial,
	depart_name varchar(50),
	depart_city varchar(50),
	CONSTRAINT Department_key PRIMARY KEY (depart_id)
);

SELECT * FROM Department;

CREATE TABLE Roles (
	roles_id bigserial,
	roles varchar(40),
	CONSTRAINT Roles_key PRIMARY KEY (roles_id)
);

SELECT * FROM Roles;

CREATE TABLE Salaries(
	salary_id bigserial,
	salary_pa numeric(8,2),
	CONSTRAINT Salaries_key PRIMARY KEY (salary_id)
);

SELECT * FROM Salaries;

CREATE TABLE Overtime (
	overtime_id bigserial,
	overtime_hours bigint,
	CONSTRAINT Overtime_key PRIMARY KEY (overtime_id)
);

27

INSERT INTO Department (depart_name, depart_city)
VALUES ('Programming', 'Sunninghill'),
('Film', 'New York'),
('Curriculum specialists', 'Giyani'),
('Finance', 'Cape Town'),
('Teller', 'Mokopane'),
('Model', 'Nelspruit'),
('Analyst', 'Port Elizabeth'),
('Labor', 'Hambanathi Heights');

INSERT INTO Roles (roles)
VALUES ('Web Developer'),
('Cinematographer'),
('Instructional coordinator'),
('Financial manager'),
('Casino cage worker'),
('Modeler'),
('Software quality assurance analyst'),
('Laborer'),
('Game Developer'),
('Treasurer'),
('Insurance Manager'),
('Film Producer'),
('Director'),
('Actor'),
('Photographer');

INSERT INTO Salaries(salary_pa)
VALUES(39482),
(27445),
(34036),
(47268),
(42466),
(14010);

INSERT INTO Overtime(overtime_hours)
VALUES(6),
(3),
(2),
(5),
(4),
(1);

INSERT INTO Employees (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
Values ('Trystan', 'Dames', 'Male', '70 Atlantic Drive', 'trystandames08@gmail.com',49, 69, 4, 27),
('Pedro', 'Hughes', 'Male', '1270 Michael Street', 'pedroAHughes@teleworm.us',50, 62, 3, 28),
('Abigail', 'Kavanaugh', 'Female', '682 Stanza Bopape St', 'abigailkavanaugh@rhyta.com',51, 63, 2, 30),
('Romme', 'Gündüz', 'Male', '1436 Robertson Ave', 'rommegunduz@jourrapide.com',55, 67, 6, 26),
('Melissa', 'Sousa', 'Female', '2002 Dorp St', 'melissarodriguessousa@rhyta.com',52, 64, 5, 25),
('George', 'Howell', 'Male', '2491 Oost St', 'georgehowell@teleworm.us',52, 71, 1, 29),
('Denise', 'Despins', 'Female', '632 Protea St', 'denisespins@gmail.com',49, 61, 5, 25),
('Dennis', 'Eberhardt', 'Male', '2189 Main Rd', 'denniseberhardt@teleworm.us',56, 68, 6, 26),
('Leah', 'Hoover', 'Female', '331 Daffodil Dr', 'leahhoover@rhyta.com',53, 65, 4, 27),
('Amalie', 'Tobiassen', 'Female', '1247 Marconi St', 'amalietobiassen@jourrapide.com',50, 72, 2, 30),
('David', 'Knudsen', 'Male', '809 Derby Ave', 'davidknudsen@rhyta.com',54, 66, 3, 28),
('Layton', 'Reid', 'Male', '345 Plane St', 'laytonrEshaneid@armyspy.com',50, 73, 5, 25),
('Eshan', 'King', 'Male', '1304 Sandown Rd', 'eshanking@dayrep.com',54, 75, 4, 27),
('Jasmin', 'Nyman', 'Female', '246 Bhoola Rd', 'jasminnyman@dayrep.com',50, 74, 6, 26),
('Sofía', 'Bermúdez', 'Female', '1875 Burger St', 'sofiabatistabermudez@teleworm.us',52, 70, 1, 29);

SELECT emp.first_name, emp.surname, emp.gender, emp.address, emp.email,
dept.depart_name, dept.depart_city,
rol.roles, sal.salary_pa, ovr.overtime_hours
FROM Employees AS emp LEFT JOIN Department AS dept
ON emp.depart_id = dept.depart_id
LEFT JOIN Roles AS rol
ON emp.role_id = rol.roles_id
LEFT JOIN Salaries AS sal
ON emp.salary_id = sal.salary_id
LEFT JOIN Overtime AS ovr
ON emp.overtime_id = ovr.overtime_id;