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

#ifndef matrices_h 
#define matrices_h 1

#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

/* Attention la matrice 2D est stockée sous forme 
 * d'un seul bloc mémoire linéaire, il ne faut donc pas utiliser
 * M.val[i][j] mais plutôt la macro MAT(M,i,j) */
/* MAT(M, ligne, colonne) */
#define MAT(mat,l,c)  (mat).val[l*(mat).dim2 +c]

typedef struct {
	int dim1,dim2;
	double *val;
} matrice_t;

#define OK  	   	0
/* si pas OK alors négatif */
#define	PASTROUVE 	-1 
#define	MEMINSUFF 	-2
#define	ERRINIT 	-3

int initMatrice(int dim1, int dim2, matrice_t *mat);
int aleaMatrice(double min, double max, matrice_t *mat);

/* allocation mémoire et lecture du fichier */
int lectureMatrice(char *fichier, matrice_t *mat);

void afficheMatrice(matrice_t m);

/* pour afficher le temps de calcul enter debut et fin 
	debut et fin sont obtenus par gettimeofday(&debut,NULL); */
 
void afficheTemps(struct timeval *debut, struct timeval *fin);

void produitMatrices(matrice_t A, matrice_t B, matrice_t *C);
void sommeMatrices(matrice_t A, matrice_t B, matrice_t *C);

#endif //#ifndef matrices_h
