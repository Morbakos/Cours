-- Question 1
UPDATE etudiant SET etudiant_id =
    CASE WHEN ((SELECT res_note FROM resultat WHERE res_etudiant = etudiant_id AND res_ue = '1') >= 10 ) then '1'
    else
        CASE WHEN ((SELECT res_note FROM resultat WHERE res_etudiant = etudiant_id AND res_ue = '1') < 8 ) then '3'
    else
        '2'
    END END || etudiant_id;

-- Question 2
BEGIN ;

UPDATE etudiant SET etudiant_id =
    CASE WHEN ((SELECT res_note FROM resultat WHERE res_etudiant = etudiant_id AND res_ue = '1') >= 10 ) then '1'
    else
        CASE WHEN ((SELECT res_note FROM resultat WHERE res_etudiant = etudiant_id AND res_ue = '1') < 8 ) then '3'
    else
        '2'
    END END || etudiant_id;

SELECT * FROM etudiant;

ROLLBACK;

-- Question 3
alter table resultat 
add constraint resultat_fk FOREIGN KEY (res_etudiant)
references etudiant(etudiant_id);

-- Question 4
-- Elle met en oeuvre cette contrainte avec quatre triggers

-- Question 5
-- La requête viole la contrainte

-- Question 6
alter table resultat 
add constraint resultat_fk FOREIGN KEY (res_etudiant)
references etudiant(etudiant_id) ON UPDATE CASCADE;

-- Question 7
-- Non vu en cours

-- Question 8
create function insert_res() returns triggers as '
DECLARE
    tuple record;
BEGIN
    if NEW.res_etudiant ISNULL THEN
        RETURN NEW;
    END IF;
    SELECT INTO tuple * FROM etudiant WHERE etudiant_id = new.res_etudiant;
    IF OT FOUND THEN 
        RETURN NULL;
    ENDIF;
    RETURN NEW;
END
' language 'plpgsql';
CREATE TRIGGER insert_result BEFORE INSERT ON resultat FOR EACH ROW EXECUTE PROCEDURE insert_res();

create function update_res() returns triggers as '
DECLARE
    tuple record;
BEGIN
    if NEW.res_etudiant ISNULL THEN
        RETURN NEW;
    END IF;
    SELECT INTO tuple * FROM etudiant WHERE etudiant_id = new.res_etudiant;
    IF OT FOUND THEN 
        RETURN NULL;
    ENDIF;
    RETURN NEW;
END
' language 'plpgsql';
CREATE TRIGGER insert_result BEFORE INSERT ON resultat FOR EACH ROW EXECUTE PROCEDURE update_res();