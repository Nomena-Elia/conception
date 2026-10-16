CREATE TABLE serveur (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR (100) NOT NULL
); 

CREATE TABLE table_salle (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    label VARCHAR(100) NOT NULL
);

ALTER TABLE commande ADD id_serveur INT;
ALTER TABLE commande ADD id_table INT;

ALTER TABLE commande ADD CONSTRAINT fk_serveur FOREIGN KEY (id_serveur) REFERENCES serveur(id);
ALTER TABLE commande ADD CONSTRAINT fk_table FOREIGN KEY (id_table) REFERENCES table_salle(id);

INSERT INTO serveur (nom, prenom) VALUES
('RAKOTO', 'Njaka'),
('RASOA', 'Lalao');

INSERT INTO table_salle (label) VALUES
('Table 1'),
('Table 2'),
('Table 3'),
('Table 4'),
('Table 5'),
('Table 6'),
('Table 7'),
('Table 8');

UPDATE commande SET id_serveur = 1 WHERE id = 1;
UPDATE commande SET id_serveur = 1 WHERE id = 2;
UPDATE commande SET id_serveur = 2 WHERE id = 3;

ALTER TABLE commande ALTER COLUMN id_serveur SET NOT NULL;