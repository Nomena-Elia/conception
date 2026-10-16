# SCHEMA RELATIONNEL

CATEGORIE(**id**, label) [nouveau]

PLAT(**id**, nom, prix, #id_categorie) [modifie]

COMMANDE(**id**, daty) [nouveau]

LIGNE_COMMANDE(**id_commande**, **id_plat**, quantite) [nouveau]