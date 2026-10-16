-- ETAPE 1

SELECT * FROM plat ORDER BY prix DESC;

-- ETAPE 2

-- Hitestena an'ilay categorie sans plat
INSERT INTO categorie (label) VALUES ('gouter');

SELECT c.label, COALESCE(COUNT(p.id), 0) as nombre FROM categorie c
LEFT JOIN plat p
ON c.id = p.id_categorie
GROUP BY p.id_categorie, c.label;

-- ETAPE 3
SELECT 'Commande ' || c.id || ' du ' || c.daty as label, SUM(lc.quantite * p.prix) as total 
FROM commande c
JOIN ligne_commande lc
    ON c.id = lc.id_commande
JOIN plat p 
    ON lc.id_plat = p.id
GROUP BY lc.id_commande, c.daty, c.id;

-- ETAPE 4
SELECT 
    c.id,
    c.daty,
    CASE WHEN c.id_client IS NULL THEN 'client de passage'
    ELSE cl.nom
    END AS nom_client
FROM commande c
LEFT JOIN client cl
    ON c.id_client = cl.id; 