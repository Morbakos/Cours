/*
 * This file is part of outilsPourM4102C.
 *
 * Copyright (C) 2015-2019 Franck BUTELLE
 *
 * outilsPourM4102C is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option)
 * any later version.

 * outilsPourM4102C is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License along
 * with outilsPourM4102C.  If not, see <http://www.gnu.org/licenses/>
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "matrices.h"

#define A_COMPLETER        printf("Vous n'avez pas programmé %s !\n", __FUNCTION__ ),exit(EXIT_FAILURE)


void sommeMatrices(matrice_t A, matrice_t B, matrice_t *C) {
	// On vérifie que les matrices ont les mêmes dimensions
	if (A.dim1 != B.dim1 || A.dim2 != B.dim2) {
		fprintf(stderr,"Pb: dimensions dans sommeMatrice: A:(%d,%d) B(%d,%d)\n",
				A.dim1, A.dim2, B.dim1, B.dim2);
	}
	C->dim1=A.dim1;
	C->dim2=A.dim2;

	/* Attention penser à utiliser la macro MAT(A,i,j) etc*/
	// A_COMPLETER;
	int i,j;
	for (i = 0; i < C->dim1; i++) {
		for (j = 0; j < C->dim1; j++) {
			MAT(*C,i,j) = MAT(A,i,j) + MAT(B,i,j);
		}
	}
}

void produitMatrices(matrice_t A, matrice_t B, matrice_t *C) {
	// On vérifie que les matrices ont les mêmes dimensions
	if (A.dim1 != B.dim2) {
		fprintf(stderr,"Pb: dimensions dans sommeMatrice: A:(%d,%d) B(%d,%d)\n",
				A.dim1, A.dim2, B.dim1, B.dim2);
	}
	C->dim1=A.dim1;
	C->dim2=B.dim2;

	int i,j,k;
	for (i = 0; i < C->dim1; i++) {
		for (j = 0; j < C->dim1; j++) {
			MAT(*C,i,j) = 0;
			for (k = 0; k < A.dim1; k++) {
				MAT(*C,i,j) += MAT(A,i,k)*MAT(B,k,j);
			}
		}
	}
}

/* Allocation mémoire et initialisation des dimensions dans la structure  */
int initMatrice(int n, int m, matrice_t *mat) {
	if (mat == NULL) {
		fprintf(stderr,"Attention, la structure doit exister avant l'appel de initMatrice\n");
		exit(EXIT_FAILURE);
	}

	mat->dim1 = n;
	mat->dim2 = m;
	mat->val = malloc(sizeof(double)*n*m);
	if (mat->val == NULL) {
		perror("Allocation matrice2\n");
		exit(EXIT_FAILURE);
	}
	return(OK);
}

/* Libération mémoire */
void freeMatrice(matrice_t *mat) {
	if (mat==NULL || mat->val ==NULL) {
		fprintf(stderr,"Erreur freeMatrice");
		exit(EXIT_FAILURE);
	}
	free(mat->val);
	free(mat);
}

/* Suppose la matrice déjà allouée, retourne un entier: code d'erreur */
int aleaMatrice(double min, double max, matrice_t *mat) {
	int i,j;

	if (mat==NULL || mat->val==NULL || max <= min )
		return (ERRINIT);
	for (i=0; i< mat->dim1; i++)
		for (j=0; j< mat->dim2; j++)
			MAT(*mat,i,j) = ((double)rand()/RAND_MAX)*(max-min)+min ;
	return(OK);
}

/*Exemple de Format d'une matrice 2x3
 * 2
 * 3
 * 11 12 13
 * 21 22 23
 */
int lectureMatrice(char *nomfic, matrice_t *mat) {
	FILE *f;
	int i,j,dim1,dim2;

	f=fopen(nomfic,"r");
	if (f==NULL) {
		perror("Ouverture fichier");
		exit(EXIT_FAILURE);
	}

	fscanf (f,"%d\n",&dim1);
	fscanf (f,"%d\n",&dim2);
	printf("Lecture de %s:matrice (%d,%d)\n",nomfic,dim1,dim2);

	initMatrice(dim1,dim2,mat) ;

	for (i=0; i<dim1; i++){
		for (j=0; j<dim2; j++) {
			fscanf(f,"%lf", &(MAT(*mat,i,j)));
		}
		fscanf(f,"\n");
	}
	return(OK);
}

void afficheMatrice(matrice_t mat) {
	int i,j;

	if (mat.dim1==0 || mat.dim2==0) {
		fprintf(stderr,"Erreur afficheMatrice: dim1=%d,dim2=%d\n",mat.dim1,mat.dim2);
		exit(EXIT_FAILURE);
	}

	for (i=0 ; i<mat.dim1 ; i++){
		for (j=0 ; j<mat.dim2 ; j++) {
			printf("%7.3lf ",MAT(mat,i,j));
		}
		printf("\n");
	}
}

void afficheTemps(struct timeval *debut, struct timeval *fin) {
	double dureeMicroSec = (fin->tv_sec - debut->tv_sec)*1.0e6 +fin->tv_usec-debut->tv_usec;
	printf ("#temps en microsec.: %ld\n",(unsigned long int)dureeMicroSec);
}
