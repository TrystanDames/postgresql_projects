CREATE TABLE my contacts (
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
VALUES ('Rowing'),
('Gaming'),
('Singing'),
('Reading'),
('Camping'),
('Fishing'),
('Hiking'),
('Partying'),
('Running'),
('Shopping'),
('Coding'),
('Painting'),
('Cruising'),
('Cooking'),
('Gardening');

INSERT INTO seeking (seeking)
VALUES ('Relationship'),
('One Night Stand'),
('Friendship');