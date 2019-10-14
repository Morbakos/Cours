drop table if exists Commande cascade;
drop table if exists  Piece  cascade;
drop table if exists Fournisseur  cascade;

CREATE TABLE FOURNISSEUR
                (FO_Numero   CHAR(2) primary key,
                 FO_NOM VARCHAR(20),
                 FO_CATEGORIE INTEGER,
                 FO_VILLE VARCHAR(20));


CREATE TABLE PIECE
                (PI_NUMERO   CHAR(2) primary key ,
                 PI_NOM VARCHAR(20) ,
                 PI_POIDS DECIMAL(4,2),
                 PI_COULEUR  VARCHAR(20) );
        


CREATE TABLE COMMANDE
                (co_fournisseur   CHAR(2)  constraint commande_co_fournisseur_fk
                                  references fournisseur(fo_numero),
                 co_piece  CHAR(2) constraint commande_co_piece_fk
                                    references piece(pi_numero),
                 co_QUANTITE   INTEGER ,
                 primary key(co_fournisseur,co_piece) ) ;
