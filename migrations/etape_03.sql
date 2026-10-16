CREATE TABLE commande (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    daty DATE NOT NULL
);

CREATE TABLE ligne_commande (
    id_commande INT NOT NULL,
    id_plat INT NOT NULL,
    quantite INT NOT NULL,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_plat) REFERENCES plat(id),
    PRIMARY KEY(id_commande, id_plat)
);

INSERT INTO commande (daty) VALUES 
('2026-10-15'),
('2026-10-16'),
('2026-10-16');

INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES
(1, 2, 2), 
(1, 5, 1), 

(2, 1, 3), 
(2, 3, 2), 
(2, 7, 1), 

(3, 4, 1), 
(3, 6, 4); 

