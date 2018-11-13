DROP TABLE adoptions;
DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE animals
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255),
  breed VARCHAR(255),
  adoptable VARCHAR(255),
  admission_date VARCHAR(255)
);

CREATE TABLE owners
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  wanting VARCHAR(255)
);

CREATE TABLE adoptions
(
  id SERIAL8 PRIMARY KEY,
  animal_id INT8 REFERENCES animals(id),
  owner_id INT8 REFERENCES owners(id)
);
