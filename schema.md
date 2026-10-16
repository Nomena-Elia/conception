# SCHEMA RELATIONNEL

CATEGORIE(**id**, label) [nouveau]

PLAT(**id**, nom, prix, #id_categorie) [modifie]

COMMANDE(**id**, daty, #id_client?, #id_serveur, #id_table?) [modifie]

LIGNE_COMMANDE(**#id_commande**, **#id_plat**, quantite) [nouveau]

CLIENT(**id**, nom) [nouveau]

TABLE_SALLE(**id**, label) [nouveau]

SERVEUR(**id**, nom) [nouveau]