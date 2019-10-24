
drop table etudiant cascade;
drop table resultat cascade;
CREATE TABLE etudiant
                (etudiant_id   CHAR(4) primary key,
                 etu_Nom_Prenom VARCHAR(60)
                );


CREATE TABLE resultat
                (res_etudiant    CHAR(4) ,
                 res_ue   char check(res_ue>'0' and res_ue<'4'),
                 res_note DECIMAL(4,2),
		 primary key(res_etudiant, res_ue )
                );

