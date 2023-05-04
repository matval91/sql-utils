/*Create a test_db from scratch and fill it with some tables and some rows*/
CREATE DATABASE test_db;
USE test_db;

/*Create two tables with two fields*/
DROP TABLE IF EXISTS cities;
CREATE TABLE cities(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	city_name VARCHAR(20)
);
DROP TABLE IF EXISTS postal_codes;
CREATE TABLE postal_codes(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	postal_code INT
);

/*Insert some random values*/
INSERT INTO cities (city_name) VALUES('Renens');
INSERT INTO cities (city_name) VALUES('Ouchy');
INSERT INTO cities (city_name) VALUES('Ecublens');

/*Insert some random values*/
INSERT INTO postal_codes (postal_code) VALUES(1020);
INSERT INTO postal_codes (postal_code) VALUES(1005);

/*See tables*/
SELECT * from postal_codes;
SELECT * from cities;

