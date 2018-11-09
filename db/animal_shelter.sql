DROP TABLE adoptions;
DROP TABLE animals;
DROP TABLE owners;

CREATE TABLE animals
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE owners
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  animal_id INT8 references animals(id)
);

CREATE TABLE adoptions
(
  id SERIAL8 PRIMARY KEY,
  animal_id INT8 references animals(id),
  owner_id INT8 references owners(id)
);
