1.1) On peut avoir un prof dans plusieurs cours et donc dans plusieurs salles.
On ne peut avoir qu un seul prof par matière


1.2) Les opérations "insert" seront perdues.

1.3) insert into ems1
select distinct nom,prenom from ems;
insert into ems2
select nom,matiere,salle from ems;

1.4) drop table ems;
create view ems as
select e2.nom ,prenom,matiere,salle,e2.ctid
from ems1 e1,ems2 e2
where e1.nom=e2.nom;

1.5) CREATE RULE ins_ems2
AS ON insert TO ems
WHERE NOT EXISTS (SELECT * FROM ems2 WHERE NEW.nom=nom
and NEW.matiere=matiere)
DO INSTEAD
INSERT INTO ems2 values(NEW.Nom, NEW.matiere, NEW.Salle);
CREATE RULE no_ins_ems2
AS ON insert TO ems
DO INSTEAD
NOTHING;
CREATE RULE ins_ems1
AS ON insert TO ems
WHERE NOT EXISTS (SELECT * FROM ems1 WHERE NEW.nom=nom)
DO INSTEAD
INSERT INTO ems1 values(NEW.Nom, NEW.Prenom);
CREATE RULE no_ins_ems1
AS ON insert TO ems
DO INSTEAD
NOTHING;

1.6) alter table ems2
drop constraint ems2_nom_fkey;
alter table ems2
ADD FOREIGN KEY(nom) REFERENCES EMS1(nom)
ON DELETE CASCADE
DEFERRABLE INITIALLY DEFERRED;

CREATE or replace RULE del_ems1
AS ON delete TO ems
WHERE (SELECT count(*)=1 FROM ems2 WHERE OLD.nom=nom)
DO INSTEAD
delete from ems1 where nom=OLD.nom;
CREATE or replace RULE del_ems2
AS ON delete TO ems
DO INSTEAD
delete from ems2 where nom=OLD.nomSGBD : BASES DE DONNÉES AVANCÉES [M3106C]
and matiere=old.matiere;

1.7) CREATE or replace RULE upd_ems
AS ON update TO ems
WHERE NEW.nom=OLD.nom
and NEW.matiere=OLD.matiere
DO INSTEAD
(
UPDATE ems1 set prenom=NEW.prenom
WHERE nom=OLD.Nom;
UPDATE ems2 set salle=NEW.salle
WHERE nom=OLD.Nom and matiere=OLD.matiere;
);
-- insert avant delete
CREATE or replace RULE updr_ems
AS ON update TO ems
DO INSTEAD
(
INSERT INTO ems (nom,prenom,matiere,salle)
values(NEW.nom,NEW.prenom,NEW.matiere,NEW.salle);
DELETE FROM ems
WHERE nom=OLD.nom and matiere=OLD.matiere;
);

1.9) grant select on ems to public;
alter function ems_ins(varchar,varchar,varchar,varchar) SECURITY DEFINER;
alter function ems_del(tid) SECURITY DEFINER;
alter function ems_upd(varchar,varchar,varchar,varchar,tid) SECURITY DEFINER;
grant execute on function ems_ins(varchar,varchar,varchar,varchar) to public;
grant execute on function ems_del(tid) to public;
grant execute on function ems_upd(varchar,varchar,varchar,varchar,tid) to pub;
