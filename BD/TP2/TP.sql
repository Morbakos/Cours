1) INSERT INTO exemple SELECT id_exemple || 'b',libelle,lemma,termlemma FROM exemple;

2) CREATE OR REPLACE FUNCTION nettoyer_exemple() RETURNS VOID AS $BODY$
		DELETE FROM exemple WHERE id_exemple NOT IN (SELECT DISTINCT id_exemple FROM instance)
	$BODY$ LANGUAGE SQL;

3) CREATE OR replace function nombre_exemples(habitat term.id_term%TYPE) returns bigint as $BODY$
		SELECT count(distinct id_exemple) from instance WHERE id_term=habitat;
	$BODY$ LANGUAGE SQL;

4) SELECT DISTINCT id_term,nombre_exemples(id_term) AS "nombre" FROM instance;

5) CREATE OR REPLACE FUNCTION effacer_exemple(nombre INTEGER) RETURNS VOID AS $BODY$
		DELETE FROM instance WHERE nombre_exemples(id_term) <= nombre;
		SELECT nettoyer_exemple();
	$BODY$ LANGUAGE SQL;

6) SELECT effacer_exemple(2);

7) CREATE OR REPLACE FUNCTION nombre_enfants(id VARCHAR) RETURNS bigint AS $BODY$
		SELECT count(distinct id_term)
		FROM term
		WHERE pere = id;
	$BODY$ LANGUAGE SQL;

8) CREATE OR REPLACE FUNCTION habitat(IN id_term VARCHAR, OUT habitat VARCHAR, OUT pere VARCHAR, OUT nb_enfants BIGINT, OUT nombre_exemples) AS $BODY$
		
