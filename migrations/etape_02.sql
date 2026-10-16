CREATE TABLE categorie (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    label VARCHAR(50) NOT NULL
);

ALTER TABLE plat ADD id_categorie INT;
ALTER TABLE plat ADD CONSTRAINT fk_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id);

INSERT INTO categorie (label) VALUES 
('plats malagasy'),
('plats chinois'),
('soupes'),
('desserts'),
('boissons');

UPDATE plat SET id_categorie = 1 WHERE id = 1;
UPDATE plat SET id_categorie = 1 WHERE id = 2;
UPDATE plat SET id_categorie = 1 WHERE id = 3;
UPDATE plat SET id_categorie = 2 WHERE id = 4;
UPDATE plat SET id_categorie = 3 WHERE id = 5;
UPDATE plat SET id_categorie = 4 WHERE id = 6;
UPDATE plat SET id_categorie = 5 WHERE id = 7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;