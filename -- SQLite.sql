-- SQLite
CREATE TABLE agence_location (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nom VARCHAR (50),
adresse VARCHAR (50)
);

CREATE TABLE vehicule (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nom VARCHAR (50),
marque VARCHAR (50),
immatriculation VARCHAR (50),
cout_location INTEGER (3),
is_electric BOOLEAN,
etat_entrée VARCHAR (5),
etat_sortie VARCHAR (5),
-- FK essence
-- FK electric
-- FK agence_location
-- FK conducteur
);

CREATE TABLE vehicule_essence (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
carburant_entrée INTEGER (3),
carburant_sortie INTEGER (3),
etat_moteur_entrée VARCHAR(5),
etat_moteur_sortie VARCHAR(5)
);

CREATE TABLE vehicule_electric (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
batterie_entrée INTEGER (3),
batterie_sortie INTEGER (3),
etat_moteur_entrée VARCHAR(5),
etat_moteur_sortie VARCHAR(5)
);

CREATE TABLE conducteur (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
nom VARCHAR(50),
prénom VARCHAR (50),
téléphone VARCHAR(10),
id_permis VARCHAR(12),
trajet VARCHAR(50)
-- FK agence_location
);

CREATE TABLE facture (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
date VARCHAR (10),
montant_location INTEGER(3),
montant_réparation INTEGER (5)
-- FK agence_location
);


