DROP TABLE cinema CASCADE;
DROP TABLE film CASCADE;
DROP TABLE projection CASCADE;
DROP TABLE jouer CASCADE;
DROP TABLE personne CASCADE;

CREATE TABLE personne(
 id_personne INTEGER PRIMARY KEY,
 nom VARCHAR,
 prénom VARCHAR);
	
CREATE TABLE film(
 id_film INTEGER PRIMARY KEY,
 id_realisateur INTEGER REFERENCES personne (id_personne),
 titre VARCHAR,
 genre VARCHAR,
 année INTEGER );
	
CREATE TABLE jouer(
 id_acteur INTEGER REFERENCES personne (id_personne),
 id_film INTEGER REFERENCES film (id_film),
 role VARCHAR);
	
CREATE TABLE cinema(
 id_cinema INTEGER PRIMARY KEY,
 nom VARCHAR,
 adresse VARCHAR );
	
CREATE TABLE projection(
 id_cinema INTEGER REFERENCES cinema (id_cinema),
 id_film INTEGER REFERENCES film (id_film),
 jour DATE );
 
INSERT INTO cinema
 VALUES (1, 'Le Fontenelle', '78160 Marly-Le-Roi');
 
INSERT INTO cinema
 VALUES (2, 'Le Renoir', '13100 Aix-En-Provence');
 
INSERT INTO cinema
 VALUES (3, 'Gaumon Willson' , '31000 Toulouse');
 
INSERT INTO cinema
 VALUES (4, 'Espace Ciné' , '93800 Epinay-sur-Seine');


\copy personne FROM /iutv/Mes_Montages/11709412/tp/BD/TP_1_SQL/Scripts/personne.txt

\copy film FROM /iutv/Mes_Montages/11709412/tp/BD/TP_1_SQL/Scripts/film.txt

\copy jouer FROM /iutv/Mes_Montages/11709412/tp/BD/TP_1_SQL/Scripts/jouer.txt

\copy projection FROM /iutv/Mes_Montages/11709412/tp/BD/TP_1_SQL/Scripts/projection.txt
