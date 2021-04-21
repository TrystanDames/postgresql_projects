Page 45
Chap1

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
Chap1

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
Chap2

CREATE TABLE char_data_types (
varchar_column varchar(10),
char_column char(10),
text_column text
);

INSERT INTO char_data_types
VALUES ('abc', 'abc', 'abc'),
('defghi', 'defghi', 'defghi');

COPY char_data_types TO 'C:\Users\User\Desktop\SQL\My Queries\Classwork\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

Page 72
Chap3
numeric(4,1)
This is so you can store numbers as big as 999,9 with one digit after the decimal point

varchar(50)
This is to allow the drivers first and last name to be stored as a string.

This will give us an error as we cant change a string into an integer.

Page 89
Chap4

#1
CREATE TABLE actors (
    id integer,
    movie text,
    actor text
);

INSERT INTO actors (id, movie, actor)
VALUES (50, 'Mission Impossible', 'Tom Cruise')

COPY actors
FROM 'C:\Users\User\Desktop\SQL\My Queries\Classwork\movies.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|')

#2
CREATE TABLE us_counties_2010 (
geo_name varchar(90),
state_us_abbreviation varchar(2),
summary_level varchar(3),
region smallint,
division smallint,
state_fips varchar(2),
county_fips varchar(3),
area_land bigint,
area_water bigint,
population_count_100_percent integer,
housing_unit_count_100_percent integer,
internal_point_lat numeric(10,7),
internal_point_lon numeric(10,7),
	
 p0010001 integer,   -- Total population
    p0010002 integer,   -- Population of one race:
    p0010003 integer,       -- White Alone
    p0010004 integer,       -- Black or African American alone
    p0010005 integer,       -- American Indian and Alaska Native alone
    p0010006 integer,       -- Asian alone
    p0010007 integer,       -- Native Hawaiian and Other Pacific Islander alone
    p0010008 integer,       -- Some Other Race alone
    p0010009 integer,   -- Population of two or more races
    p0010010 integer,   -- Population of two races:
    p0010011 integer,       -- White; Black or African American
    p0010012 integer,       -- White; American Indian and Alaska Native
    p0010013 integer,       -- White; Asian
    p0010014 integer,       -- White; Native Hawaiian and Other Pacific Islander
    p0010015 integer,       -- White; Some Other Race
    p0010016 integer,       -- Black or African American; American Indian and Alaska Native
    p0010017 integer,       -- Black or African American; Asian
    p0010018 integer,       -- Black or African American; Native Hawaiian and Other Pacific Islander
    p0010019 integer,       -- Black or African American; Some Other Race
    p0010020 integer,       -- American Indian and Alaska Native; Asian
    p0010021 integer,       -- American Indian and Alaska Native; Native Hawaiian and Other Pacific Islander
    p0010022 integer,       -- American Indian and Alaska Native; Some Other Race
    p0010023 integer,       -- Asian; Native Hawaiian and Other Pacific Islander
    p0010024 integer,       -- Asian; Some Other Race
    p0010025 integer,       -- Native Hawaiian and Other Pacific Islander; Some Other Race
    p0010026 integer,   -- Population of three races
    p0010047 integer,   -- Population of four races
    p0010063 integer,   -- Population of five races
    p0010070 integer,   -- Population of six races

    -- This section is referred to as P2. HISPANIC OR LATINO, AND NOT HISPANIC OR LATINO BY RACE
    p0020001 integer,   -- Total
    p0020002 integer,   -- Hispanic or Latino
    p0020003 integer,   -- Not Hispanic or Latino:
    p0020004 integer,   -- Population of one race:
    p0020005 integer,       -- White Alone
    p0020006 integer,       -- Black or African American alone
    p0020007 integer,       -- American Indian and Alaska Native alone
    p0020008 integer,       -- Asian alone
    p0020009 integer,       -- Native Hawaiian and Other Pacific Islander alone
    p0020010 integer,       -- Some Other Race alone
    p0020011 integer,   -- Two or More Races
    p0020012 integer,   -- Population of two races
    p0020028 integer,   -- Population of three races
    p0020049 integer,   -- Population of four races
    p0020065 integer,   -- Population of five races
    p0020072 integer,   -- Population of six races

    -- This section is referred to as P3. RACE FOR THE POPULATION 18 YEARS AND OVER
    p0030001 integer,   -- Total
    p0030002 integer,   -- Population of one race:
    p0030003 integer,       -- White alone
    p0030004 integer,       -- Black or African American alone
    p0030005 integer,       -- American Indian and Alaska Native alone
    p0030006 integer,       -- Asian alone
    p0030007 integer,       -- Native Hawaiian and Other Pacific Islander alone
    p0030008 integer,       -- Some Other Race alone
    p0030009 integer,   -- Two or More Races
    p0030010 integer,   -- Population of two races
    p0030026 integer,   -- Population of three races
    p0030047 integer,   -- Population of four races
    p0030063 integer,   -- Population of five races
    p0030070 integer,   -- Population of six races

    -- This section is referred to as P4. HISPANIC OR LATINO, AND NOT HISPANIC OR LATINO BY RACE
    -- FOR THE POPULATION 18 YEARS AND OVER
    p0040001 integer,   -- Total
    p0040002 integer,   -- Hispanic or Latino
    p0040003 integer,   -- Not Hispanic or Latino:
    p0040004 integer,   -- Population of one race:
    p0040005 integer,   -- White alone
    p0040006 integer,   -- Black or African American alone
    p0040007 integer,   -- American Indian and Alaska Native alone
    p0040008 integer,   -- Asian alone
    p0040009 integer,   -- Native Hawaiian and Other Pacific Islander alone
    p0040010 integer,   -- Some Other Race alone
    p0040011 integer,   -- Two or More Races
    p0040012 integer,   -- Population of two races
    p0040028 integer,   -- Population of three races
    p0040049 integer,   -- Population of four races
    p0040065 integer,   -- Population of five races
    p0040072 integer,   -- Population of six races

    -- This section is referred to as H1. OCCUPANCY STATUS
    h0010001 integer,   -- Total housing units
    h0010002 integer,   -- Occupied
    h0010003 integer    -- Vacant
);

COPY us_counties_2010
FROM 'C:\Users\User\Desktop\SQL\practical-sql-master\Chapter_04\us_counties_2010.csv'
WITH (FORMAT CSV, HEADER);

COPY (
    SELECT geo_name, state_us_abbreviation, housing_unit_count_100_percent
    FROM us_counties_2010 
	ORDER BY housing_unit_count_100_percent DESC LIMIT 20
     )
TO 'C:\Users\User\Desktop\SQL\My Queries\Classwork\us_counties_housing_export.txt'
WITH (FORMAT CSV, HEADER);

#3
It will not due to the fact its only allowed up to 3 numbers before the decimal and 8 afterwards where we have 5 numbers before the decimal and 3 afterwards

Page 106
Chap5

#1
Area_Circle = PIE * R^2
Area_Circle = 3.14 * 5^2
Area_Circle = |/(3.14 * 5^2)
SELECT
|/(3.14*(5^2));
You do not need parentheses as exponents are used.

#2
SELECT geo_name,
state_us_abbreviation AS "st",
(CAST (p0030005 AS numeric(8,1)) / p0010001) * 100 AS "pct_Indian and Natives"
FROM us_counties_2010
ORDER BY "pct_Indian and Natives" DESC;

#3
SELECT percentile_cont(.5)
WITHIN GROUP (ORDER BY p0010001)
FROM us_counties_2010
WHERE state_us_abbreviation = 'CA';

SELECT percentile_cont(.5)
WITHIN GROUP (ORDER BY p0010001)
FROM us_counties_2010
WHERE state_us_abbreviation = 'NY';

California has the higher median between the two.

Page126
Chap6

#1
CREATE TABLE us_counties_2000 (
geo_name varchar(90),
state_us_abbreviation varchar(2),
state_fips varchar(2),
county_fips varchar(3),
p0010001 integer,
p0010002 integer,
p0010003 integer,
p0010004 integer,
p0010005 integer,
p0010006 integer,
p0010007 integer,
p0010008 integer,
p0010009 integer,
p0010010 integer,
p0020002 integer,
p0020003 integer
);

COPY us_counties_2000
FROM 'C:\Users\User\Desktop\SQL\practical-sql-master\Chapter_06\us_counties_2000.csv'
WITH (FORMAT CSV, HEADER);

SELECT c2010.geo_name,
c2010.state_us_abbreviation,
c2000.geo_name
FROM us_counties_2010 c2010 LEFT JOIN us_counties_2000 c2000
ON c2010.state_fips = c2000.state_fips AND c2010.county_fips = c2000.county_fips
WHERE c2000.geo_name IS NULL;

#2
SELECT percentile_cont(.5)
WITHIN GROUP (ORDER BY round( (CAST(c2010.p0010001 AS numeric(8,1)) - c2000.p0010001)
/ c2000.p0010001 * 100, 1 )) AS percentile_50th
FROM us_counties_2010 c2010 INNER JOIN us_counties_2000 c2000
ON c2010.state_fips = c2000.state_fips
AND c2010.county_fips = c2000.county_fips;
   
#3
SELECT c2010.geo_name,
c2010.state_us_abbreviation,
c2010.p0010001 AS pop_2010,
c2000.p0010001 AS pop_2000,
c2010.p0010001 - c2000.p0010001 AS raw_change,
round( (CAST(c2010.p0010001 AS DECIMAL(8,1)) - c2000.p0010001)
/ c2000.p0010001 * 100, 1 ) AS pct_change
FROM us_counties_2010 c2010 INNER JOIN us_counties_2000 c2000
ON c2010.state_fips = c2000.state_fips
   AND c2010.county_fips = c2000.county_fips
ORDER BY pct_change ASC;

Page 147
Chap7
CREATE TABLE albums (
    album_id bigserial,
    album_catalog_code varchar(100),
    album_title text,
    album_artist text,
    album_time interval,
    album_release_date date,
    album_genre varchar(40),
    album_description text
);

CREATE TABLE songs (
    song_id bigserial,
    song_title text,
    song_artist text,
    album_id bigint
);

#1
CREATE TABLE albums (
    album_id bigserial,
    album_catalog_code varchar(100) NOT NULL,
    album_title text NOT NULL,
    album_artist text NOT NULL,
    album_release_date date,
    album_genre varchar(40),
    album_description text,
    CONSTRAINT album_id_key PRIMARY KEY (album_id),
    CONSTRAINT release_date_check CHECK (album_release_date > '1/1/1925')
);

SELECT * FROM albums

CREATE TABLE songs (
song_id bigserial,
song_title text NOT NULL,
song_artist text NOT NULL,
album_id bigint REFERENCES albums (album_id),
CONSTRAINT song_id_key PRIMARY KEY (song_id)
);

Both of the tables get a primary key in their tables. Then there is also the songs table that has a foreign key constraint,
and both tables can not be emptied.

#2
Yes. We would have to know if other companies would like to sell the albums as well.

#3
To speed up the queries artisits and titles of the album will be good columns candidates for the indexes.

