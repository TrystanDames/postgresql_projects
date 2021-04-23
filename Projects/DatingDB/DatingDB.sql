CREATE TABLE my_contacts (
	contact_id bigserial,
	last_name varchar(25),
	first_name varchar(25),
	phone varchar(10),
	email varchar(100),
	gender varchar(1),
	birthday date,
	prof_id bigserial REFERENCES profession (prof_id),
	zip_code bigserial REFERENCES zip_code (zip_code),
	status_id bigserial REFERENCES status (status_id),
	CONSTRAINT email_unique UNIQUE (email),
	CONSTRAINT my_contacts PRIMARY KEY (contact_id) 
);

CREATE TABLE profession (
	prof_id bigserial,
	profession varchar(50),
	CONSTRAINT profession_unique UNIQUE (profession),
	CONSTRAINT profession_key PRIMARY KEY (prof_id)
);

CREATE TABLE zip_code (
	zip_code bigint CHECK (LENGTH (CAST(zip_code AS varchar(4))) = 4),
	city varchar(25),
	province varchar(25),
	CONSTRAINT city_unique UNIQUE (city),
	CONSTRAINT province_unique UNIQUE (province),
	CONSTRAINT zip_code_key PRIMARY KEY (zip_code)
);

CREATE TABLE status(
	status_id bigserial,
	status varchar(10),
	CONSTRAINT status PRIMARY KEY (status_id)
);

CREATE TABLE interests (
	interest_id bigserial,
	interest varchar(25),
	CONSTRAINT interests PRIMARY KEY (interest_id)
);

CREATE TABLE contact_interest (
	contact_id bigserial REFERENCES my_contacts (contact_id),
	interest_id bigserial REFERENCES interests (interest_id)
);

CREATE TABLE seeking (
	seeking_id bigserial,
	seeking varchar(25),
	CONSTRAINT seeking PRIMARY KEY (seeking_id)
);

CREATE TABLE contact_seeking (
	contact_id bigserial REFERENCES my_contacts (contact_id),
	seeking_id bigserial REFERENCES seeking (seeking_id)
);

INSERT INTO profession (profession)
VALUES ('Industrial Engineer'),
('Financial manager'),
('Aviator'),
('Chartered Accountant'),
('Software Engineer'),
('Sales Consulter');

INSERT INTO zip_code (city, province)
VALUES ('Port Elizabeth', 'Eastern Cape'),
('Bhisho', 'Eastern Cape'),
('Bloemfontein', 'Free State'),
('Welkom', 'Free State'),
('Johannesburg', 'Gauteng'),
('Pretoria', 'Gauteng'),
('Polokwane', 'Limpopo'),
('Mokopane', 'Limpopo'),
('Cape Town', 'Western Cape'),
('Mossel Bay', 'Western Cape'),
('Upington', 'Northern Cape'),
('Kimberley', 'Northern Cape'),
('Mahikeng', 'North West'),
('Klerksdorp', 'North West'),
('Mbombela', 'Mpumalanga'),
('Hazyview', 'Mpumalanga'),
('Durban', 'Kwazulu-Natal'),
('Richards Bay', 'Kwazulu-Natal');

INSERT INTO status (status)
VALUES ('Single'),
('Taken'),
('Widowed'),
('Married'),
('Engaged'),
('Its complicated');

INSERT INTO interests (interest)
VALUES ('Rowing', 'Gaming'),
('Gaming', 'Coding'),
('Singing', 'Fishing'),
('Reading', 'Gardening'),
('Camping', 'Partying'),
('Fishing', 'Camping'),
('Hiking', 'Shopping'),
('Partying','Singing'),
('Running', 'Rowing'),
('Shopping', 'Painting'),
('Coding', 'Cruising'),
('Painting', 'Running'),
('Cruising', 'Hiking'),
('Cooking', 'Reading'),
('Gardening','Cooking');

INSERT INTO seeking (seeking)
VALUES ('Relationship'),
('One Night Stand'),
('Friendship');

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
VALUES ('Cole', 'Nicole', '084 485 3729', 'nicolecole@gmail.com', 'F', '2001-05-05', 2, 5, 1),
('Reed', 'Charlie', '083 571 8872', 'charliereed@gmail.com', 'M', '1999-09-17', 3, 1, 5),
('Spencer', 'Emma', '086 632 5786', 'emmaspencer@gmail.com', 'F', '2000-01-30', 6, 9, 2),
('Pollard', 'Ellis', '085 910 0084', 'ellispollard@gmail.com', 'M', '1995-03-13', 4, 3, 1),
('Frost', 'Libby', '084 299 9670', 'libbyfrost@gmail.com', 'F', '1998-04-16', 1, 7, 6),
('Blackburn', 'Josh', '083 563 6030', 'joshblackburn@gmail.com', 'M', '1990-12-16', 5, 2, 1),
('Barnett', 'Scott', '083 971 4819', 'scottbarnett@gmail.com', 'M', '1987-05-05', 6, 4, 4),
('Curtis', 'Bethany', '083 430 7963', 'bethanycurtis@gmail.com', 'F', '1993-07-18', 1, 6, 4),
('Fox', 'Lilly', '082 513 8355', 'lillyfox@gmail.com', 'F', '1992-09-10', 4, 8, 3),
('Nicholson', 'Adam', '082 118 5849', 'adamnicholson@gmail.com', 'M', '2000-04-29', 3, 14, 2),
('Horton', 'Kiera', '083 883 9728', 'kierahorton@gmail.com', 'F', '1997-01-08', 5, 17, 1),
('Thomas', 'Louis', '082 826 6837', 'louisthomas@gmail.com', 'M', '1994-02-08', 2, 12, 6),
('Naylor', 'Jay', '084 608 7530', 'jaynaylor@gmail.com', 'M', '1997-04-04', 1, 11, 1),
('Knight', 'Ben', '082 555 8574', 'benknight@gmail.com', 'M', '1991-11-22', 4, 13, 6),
('Bevan', 'Lydia', '083 235 8342', 'lydiabevan@gmail.com', 'F', '2001-07-03', 6, 15, 1);

INSERT INTO contact_interrest (contact_id, interest_id)
VALUES (1, 7),
(2, 1),
(3, 10),
(4, 15),
(5, 3),
(6, 13),
(7, 5),
(8, 8),
(9, 12),
(10, 2),
(11, 6),
(12, 14),
(13, 4),
(14, 9),
(15, 11);

INSERT INTO contact_seeking (contact_id, seeking_id)
VALUES (1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 2),
(6, 1),
(7, 3),
(8, 2),
(9, 2),
(10, 3),
(11, 1),
(12, 2),
(13, 1),
(14, 3),
(15, 1);
