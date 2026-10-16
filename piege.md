# REPONSES AU QUESTIONS PIEGES

## ETAPE 1
J'ai choisi le type INTEGER pour le prix. Et j'ai utilise id pour l'identifiant parce que si on avait utilise le nom, c'est vrai que le nom est unique mais il peut changer.

## ETAPE 2
On n'ajoute pas tout simplement une colonne categorie VARCHAR(50) dans la table des plats parce que cela ne garantit pas l'uniformite des donnees.

Exemple de probleme concret:
| id  | nom      | prix | categorie     |
| --- | -------- | ---- | ------------- |
| 1   | Romazava | 7000 | Plat malagasy |
| 2   | Akoho    | 7000 | Plat malgache |

## ETAPE 3
On pose la quantite dans la table ligne_commande car la quantite est liee a chaque plat commande.

## ETAPE 4
Non, la cle etrangere n'est pas NOT NULL. Pour recuperer toutes les commandes, il faut utiliser LEFT JOIN ou RIGHT JOIN selon l'ordre dans la requete.