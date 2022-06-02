--Customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20)
);

--Movie table

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	name VARCHAR(20)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	amount INTEGER,
	FOREIGN key(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions(
	snack_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	amount INTEGER
);

--Adding customers
INSERT INTO customer(
	first_name,
	last_name
) VALUES (
	'Firstie',
	'Lastie'
), (
	'One',
	'Two'
);

SELECT *
FROM customer;

INSERT INTO movies(
	name) VALUES (
	'The Tale of Tobias'),
	('Coding in the Cold');
	
SELECT *
FROM movies;

INSERT INTO concessions(name, amount) VALUES ('jerky', 5)

SELECT *
FROM concessions;

INSERT INTO concessions(name, amount) VALUES ('beet', 2)

SELECT *
FROM concessions;

INSERT INTO tickets(amount) VALUES (10);
--The foreign key error bites me again.