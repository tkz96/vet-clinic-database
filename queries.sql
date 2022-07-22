/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';

SELECT name FROM animals WHERE neutered AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg > '10.5';

SELECT name FROM animals WHERE neutered;

SELECT name FROM animals WHERE NOT name = 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth >= '2022-01-01';
SAVEPOINT save_point;
UPDATE animals SET weight_kg = weight_kg * -1;
ROLLBACK TO save_point;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT * FROM animals WHERE escape_attempts = (SELECT MAX(escape_attempts) FROM animals);
SELECT MAX(weight_kg), MIN(weight_kg) FROM animals;
SELECT AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
