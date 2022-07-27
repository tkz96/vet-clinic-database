/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg NUMERIC
);

ALTER TABLE
    animals
ADD
    species VARCHAR(50);

CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INT 
);

CREATE TABLE species (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100)
);

ALTER TABLE animals
DROP
    COLUMN species,
ADD
    COLUMN species_id BIGINT REFERENCES species (id),
ADD
    COLUMN owner_id BIGINT REFERENCES owners (id);


CREATE INDEX animal_id_index on visits(animal_id ASC);
CREATE INDEX vet_id_index on visits(vet_id ASC);
CREATE INDEX owner_email_index on owners(email ASC);