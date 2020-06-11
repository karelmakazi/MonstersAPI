CREATE TABLE monsters(
  id serial,
  name character varying(50),
  personality character varying(50)
);

CREATE TABLE habitats(
  id serial,
  name character varying(50),
  climate character varying(50),
  temperature int
);

CREATE TABLE lives(
  monster character varying(50),
  habitat character varying(50),
);

INSERT INTO monsters(name, personality)
VALUES
('Fluffy','aggressive'),
('Noodles','impatient'),
('Rusty','passionate');

INSERT INTO habitats(name, climate, temperature)
VALUES
('desert', 'dry', 40),
('forrest', 'tranquil', 22),
('mountain', 'craggy', 10);

INSERT INTO lives(monster, habitat)
VALUES
('Rusty', 'desert'),
('Noodles', 'forrest'),
('Fluffy', 'mountain');