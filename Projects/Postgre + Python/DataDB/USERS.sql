CREATE TABLE users(
	first_name TEXT,
	surname TEXT
);

SELECT * FROM users;

INSERT INTO users (first_name, surname)
VALUES ('Rolf', 'Smith'),
('John', 'Smith'),
('Anne', 'Pun'),
('CHarlie', 'Graham'),
('Robert', 'Baratheon');

SELECT * FROM users
WHERE surname = 'Smith';

SELECT * FROM users
WHERE surname != 'Smith';