-- ETAPE 1

SELECT * FROM plat ORDER BY prix DESC;

-- ETAPE 2

-- Hitestena an'ilay categorie sans plat
INSERT INTO categorie (label) VALUES ('gouter');

SELECT c.label, COALESCE(COUNT(p.id), 0) as nombre FROM categorie c
LEFT JOIN plat p
ON c.id = p.id_categorie
GROUP BY p.id_categorie, c.label;