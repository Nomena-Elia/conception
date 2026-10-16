CREATE TABLE plat (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(100),
    prix INT
);

INSERT INTO plat (nom, prix) VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi Sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy (les 4)', 1000),
('Ranon''ampango', 500);