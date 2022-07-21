/* Populate database with sample data. */
INSERT INTO
    animals (name)
VALUES
    ('Luna');

INSERT INTO
    animals (name)
VALUES
    ('Daisy');

INSERT INTO
    animals (name)
VALUES
    ('Charlie');

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    (
        'Agumon',
        DATE '2020-02-03',
        '0',
        'true',
        '10.23'
    );

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    (
        'Gabumon',
        DATE '2018-11-15',
        '2',
        'true',
        '8'
    );

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    (
        'Pikachu',
        DATE '2021-07-01',
        '1',
        'false',
        '10.23'
    );

INSERT INTO
    animals (
        name,
        date_of_birth,
        escape_attempts,
        neutered,
        weight_kg
    )
VALUES
    (
        'Devimon',
        DATE '2017-05-12',
        '0',
        'true',
        '11'
    );