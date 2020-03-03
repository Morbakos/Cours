/*
 * This file is part of outilsPourM4102C.  
 *
 * Copyright (C) 2015-2019 Franck BUTELLE
 *
 * outilsPourM4102C is free software: you can redistribute it and/or modify it 
 * under the terms of the GNU General Public License as published by the Free 
 * Software Foundation, either version 3 of the License, or (at your option) 
 * any later version.
 *
 * outilsPourM4102C is distributed in the hope that it will be useful, but 
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  
 * See the GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License along 
 * with outilsPourM4102C.  If not, see <http://www.gnu.org/licenses/>
 */

#include <stdbool.h>
#include <sys/types.h>
#include <string.h>

#include "multimat.h"

#define min(m,n)    ( m <= n ? m : n)

#define DEFAUTNBTACHES   3

matrice_t A,B,C,D;
int chunk, nbTaches;
bool addition=true;

void usage() {
	fprintf(stderr,"Utilisation: multimat [-qh] [-d dim] [-p nbTâches] op [matriceA matriceB]\n");
	fprintf(stderr,"\t -h: cette aide\n");
	fprintf(stderr,"\t -q: pas d'affichage des matrices\n");
	fprintf(stderr,"\t -d dim :demande de matrices carrées aléatoires de taille dim x dim\n");
	fprintf(stderr,"\t -p nbTaches : demande l'utilisation de ce nbre de ps puis threads\n");
	fprintf(stderr,"\t op : opérateur : add (somme) ou mult (produit)\n");
	fprintf(stderr,"\t les matrices A et B ne sont pas demandée si l'option -d est utilisée.\n");
	exit(0);
}

/* retourne vrai si l'affichage des matrices est demandé,
 * fait aussi la lecture/génération des matrices en var. globales */
bool analyseParams(int argc, char *argv[]) {
	bool afficheMatrices=true;
	int opt;
	int tailleMat=0,nb;
	
	nbTaches=DEFAUTNBTACHES;
	while ((opt = getopt(argc, argv, "hqd:p:")) != -1) {
		switch (opt) {
			case 'p' : nb=strtol(optarg,NULL,10);
				break;
			case 'd' : tailleMat = strtol(optarg,NULL,10);
				if (tailleMat> 25)
					afficheMatrices=false; /* par sécurité */
				break;
			case 'q' : afficheMatrices=false;
				break;
			case 'h' :
			default: usage();
		}
	}

	/* optind (créé par getopt) doit maintenant pointer sur le param. d'après
	 * mais il faut encore les params: op et éventuellement les matrices*/
	if (optind >= argc) {
        fprintf(stderr, "Il manque au moins l'opérateur !\n");
        usage();
        exit(EXIT_FAILURE);
    }

	/* optind doit être sur le param d'après les options, addition variable globale */
    if (strcmp(argv[optind],"mult") ==0 || strcmp(argv[optind],"prod")==0) {
        addition=false;
    }
    optind++;

	if (tailleMat>2) { /* on demande des matrices carrées aléatoires */
		printf("Génération de A matrice carrée aléatoire de taille %dx%d\n",tailleMat,tailleMat);
		initMatrice(tailleMat,tailleMat,&A);
		aleaMatrice(-2, 2,&A);
		printf("Génération de B matrice carrée aléatoire de taille %dx%d\n",tailleMat,tailleMat);
        initMatrice(tailleMat,tailleMat,&B);
        aleaMatrice(-2, 2,&B);
	 } else if (tailleMat<2 && optind>= argc-1) {
        usage();
        exit(EXIT_FAILURE);
    } else {
        lectureMatrice(argv[optind],&A);
		tailleMat=A.dim1;
        lectureMatrice(argv[optind+1],&B);
    }
	if (nb<1 || nb>MAXNBTACHES || nb>tailleMat) {
		nbTaches=min(DEFAUTNBTACHES,tailleMat);
		fprintf(stderr,"nbTaches incorrect (%d), fixé à %d\n",nb,nbTaches);
	} else {
		nbTaches=nb;
	}

	chunk = A.dim1/nbTaches;
	printf("Nbre de lignes par tâche :%d\n",chunk);
	return(afficheMatrices);
}

int main (int argc, char *argv[]) {

	bool afficheMatrices=analyseParams(argc,argv);

	if (afficheMatrices) {
		printf("A:\n");
        afficheMatrice(A);
        printf("\nB:\n");
        afficheMatrice(B);
        printf("\n");
	} else {
        printf("Affichage matrices désactivé\n");
    }

	if (addition) {
        printf("------- Somme multi-processus:\n");
        calculMultiprocessus(sommeChunk); /* résultat dans C */
        if (afficheMatrices) afficheMatrice(C);
        printf("------- Somme multi-threads:\n");
        calculMultithreads(sommeChunk); /* idem */
        if (afficheMatrices) afficheMatrice(C);
    } else {
        printf("------- Produit multi-processus:\n");
        calculMultiprocessus(produitChunk);
        if (afficheMatrices) afficheMatrice(C);
        printf("------- Produit multi-threads:\n");
        calculMultithreads(produitChunk);
        if (afficheMatrices) afficheMatrice(C);
    }
	free(A.val);free(B.val);free(C.val);

	return(EXIT_SUCCESS);
}
