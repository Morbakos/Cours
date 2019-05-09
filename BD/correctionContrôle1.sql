1) Cela signifie que la valeur du champ email ne peut pas être null et doit être
	unique dans la base. Cette contrainte est nécessaire car l email sert d identifiant de connexion

2) Cela signifie que si le billet est supprimé, les commentaires associés le sont aussi. Elle permet
	d eviter de stocker des commentaires qui ne seront associés à rien.

3) Cela signifie que si l utilisateur est supprimé, alors les commentaires n auront pas d auteur.
	Cela permet de ne pas référencer un utilisateur inexistant.	 

4) Il sert à référencer le commentaire auquel on a répondu

5) SELECT id_billet, auteur, date_trunc('day', horodatage), titre FROM billet;

6) SELECT COUNT(*) AS "Nombre billets" FROM billet;

7) SELECT id_billet, titre, COUNT(*) AS "nombre de visite" 
	FROM billet 
	JOIN visite 
		ON id_billet = billet 
	GROUP BY id_billet, titre;

8) SELECT id_utilisateur, prenom || ' ' || nom AS "Prénom et nom", COUNT(*) AS "Nombres visites"
	FROM visite 
	JOIN billet 
		ON billet = id_billet
	JOIN utilisateur
		ON auteur = id_utilisateur
	GROUP BY id_utilisateur,prenom || ' ' || nom;

9) SELECT id_utilisateur, prenom || ' ' || nom AS "Prénom et nom", COUNT(*) AS "Nombres de billets"
	FROM billet 
	JOIN utilisateur
		ON auteur = id_utilisateur
	GROUP BY id_utilisateur,prenom || ' ' || nom;

10) CREATE FUNCTION nombrevisite (id_auteur INTEGER) RETURNS BIGINT AS $BODY$
		SELECT COUNT(*) FROM visite JOIN billet ON billet = id_billet
		WHERE auteur = id_auteur;
	$BODY$
	LANGUAGE SQL;

11) CREATE FUNCTION nombre_billet (id_auteur INTEGER) RETURNS BIGINT AS $BODY$
		SELECT COUNT(*) FROM billet WHERE auteur = id_auteur;
	$BODY$ LANGUAGE SQL;

12) CREATE FUNCTION meilleur_auteurs() RETURNS TABLE(id_utilisateur INTEGER, nom VARCHAR, prenom VARCHAR, nb_moyen DOUBLE) AS $BODY$
		SELECT id_utilisateur, nom, prenom, nombrevisite(id_utilisateur)/nombre_billet(id_utilisateur)
		FROM utilisateur
		ORDER BY nombrevisite(id_utilisateur)/nombre_billet(id_utilisateur) DESC;
	$BODY$ LANGUAGE SQL;
	$BODY$