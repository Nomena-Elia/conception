CREATE TABLE client(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

ALTER TABLE commande ADD id_client INT;

ALTER TABLE commande ADD CONSTRAINT fk_client FOREIGN KEY (id_client) REFERENCES client(id);

INSERT INTO client (nom) VALUES 
('Kevin'),
('Faniry');

UPDATE commande SET id_client = 1 WHERE id = 1;
UPDATE commande SET id_client = 2 WHERE id = 3;