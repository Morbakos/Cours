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
#include <string.h>
#include <unistd.h>
#include "matrices.h"

void usage() {
  fprintf(stderr,"Utilisation: testmatrices [-d dim] [-q] [-h] op [fichmatA fichmatB]\n");
  fprintf(stderr,"\t-d : utilisation de matrices carrées aléatoires de dimension dimxdim\n");
  fprintf(stderr,"\top : opérateur : add (somme) ou mult (produit)\n");
  fprintf(stderr,"\t-q : (quiet) pas d'affichage de matrices,\n\t-h : l'aide\n");
}

int main (int argc, char *argv[]) {
	int dim=0,opt;
	matrice_t A,B,C;
	struct timeval debut, fin;
	bool afficheMat=true;
	bool addition=true;

	A.val=NULL;
	B.val=NULL;

	/* getopt permet une gestion facilitée des param en ligne */
	while ((opt = getopt(argc, argv, "hqd:")) != -1) {
		switch (opt) {
			case 'q' : afficheMat=false;
				   break;
			case 'd' : dim=atoi(optarg);
					   if (dim>25) /* par sécurité */
						   afficheMat=false;
				   break;
			case 'h':
			default:
				usage();
				exit(EXIT_FAILURE);
		}
	}

	if (optind >= argc) {
		fprintf(stderr, "Il manque au moins l'opérateur !\n");
		usage();
		exit(EXIT_FAILURE);
	}

	/* optind doit être sur le param d'après les options */
	if (strcmp(argv[optind],"mult") ==0 || strcmp(argv[optind],"prod")==0) {
		addition=false;
	}
	optind++;

	if (dim>2) { /* on demande des matrices carrées aléatoires */
		printf("A matrice carrée aléatoire de taille %dx%d\n",dim,dim);
		initMatrice(dim,dim,&A);
		aleaMatrice(-2, 2,&A);
		printf("B matrice carrée aléatoire de taille %dx%d\n",dim,dim);
		initMatrice(dim,dim,&B);
		aleaMatrice(-2, 2,&B);
	} else if (dim<2 && optind>= argc-1) {
		usage();
		exit(EXIT_FAILURE);
	} else { 
		lectureMatrice(argv[optind],&A);
		lectureMatrice(argv[optind+1],&B);
	}
	
	if (afficheMat) {
		printf("A:\n");
		afficheMatrice(A);
		printf("\nB:\n");
		afficheMatrice(B);
		printf("\n");
	} else {
		printf("Affichage matrices désactivé\n");
	}

	/* Réserve la place mémoire nécessaire au résultat */
	initMatrice(A.dim1,B.dim2,&C);

	gettimeofday(&debut,NULL);
	if (addition) {
		sommeMatrices(A,B,&C);
		gettimeofday(&fin,NULL);
		printf("#somme Matrices:\n");
	} else {
		produitMatrices(A,B,&C);
		gettimeofday(&fin,NULL);
		printf("#produit Matrices:\n");
	}
	afficheTemps(&debut,&fin);
	if (afficheMat) afficheMatrice(C);
	free(A.val);free(B.val);free(C.val);
	return(EXIT_SUCCESS);
}
