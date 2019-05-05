1) CREATE OR REPLACE FUNCTION racine() RETURNS term.id_term%TYPE AS $body$
BEGIN
  RETURN (SELECT id_term FROM term WHERE pere IS NULL);
END ;
$body$
language 'plpgsql';

2) CREATE OR REPLACE FUNCTION idhabitat(habitat term.vedette%TYPE) RETURNS term.id_term%TYPE AS $body$
DECLARE
  resultat term.id_term%TYPE;
BEGIN
  SELECT id_term INTO resultat FROM term WHERE term.vedette = habitat;
  RETURN resultat ;
END ;
$body$
language 'plpgsql';

3) CREATE OR REPLACE FUNCTION nombre_exemple(id term.id_term%TYPE) RETURNS integer AS $body$
DECLARE
  resultat integer;
BEGIN
  select count(distinct id_exemple) into resultat from instance where id_term = id;
  return resultat;
END
$body$
language 'plpgsql';

4) CREATE FUNCTION enfants(term.id_term%TYPE) RETURNS SETOF term.id_term%TYPE AS $body$
BEGIN
	RETURN QUERY SELECT id_term FROM term WHERE term.pere = habitat;
END;
$body$
language 'plpgsql';

5) CREATE FUNCTION ascendants(habitat term.id_term%TYPE) RETURNS SETOF terl.id_term%TYPE as $body$
DECLARE
	ascendant term.id_term%TYPE
BEGIN
	ascendant := habitat;
	LOOP
		SELECT pere INTO ascendant FROM term WHERE term.id_term = ascendant;
		EXIT WHEN ascendant IS NULL;
		RETURN NEXT ascendant;
	END LOOP;
END;
$body
language 'plpgsql';

6) CREATE FUNCTION profondeur(habitat term.id_term%TYPE) RETURNS integer AS $body$
DECLARE
	prof integer
BEGIN
	SELECT COUNT(*) INTO prof FROM ascendants(habitat)
	RETURN prof;
END;
$body
language 'plpgsql';