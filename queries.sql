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

SELECT name, full_name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE full_name = 'Melody Pond';

SELECT animals.name, species.name FROM animals INNER JOIN species ON animals.species_id = species.id WHERE species.id = 1;

SELECT animals.name, owners.full_name FROM animals RIGHT JOIN owners ON animals.owner_id = owners.id; 

SELECT species.name, COUNT(*) FROM animals INNER JOIN species ON animals.species_id = species.id GROUP BY species.name;

SELECT animals.name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.id = 2;

SELECT animals.name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.id = 5 AND escape_attempts = 0;

SELECT owners.full_name, COUNT(*) AS total FROM animals INNER JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY total DESC LIMIT 1;

-- Performance optimization

SELECT COUNT(*) FROM visits where animal_id = 4;
EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;

SELECT * FROM visits where vet_id = 2;
EXPLAIN ANALYZE SELECT * FROM visits where vet_id = 2;

SELECT * FROM owners where email = 'owner_18327@mail.com';
EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';

