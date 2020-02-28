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

#ifndef multimat_h
#define multimat_h 1


#include "multi.h"
#include "matrices.h"


#define MAXNBTACHES     32


/* somme partielle de matrices que doit faire la tache i */
void *sommeChunk(int i) ;

/* Produit partiel de matrices que doit faire la tache i */
void *produitChunk(int i) ;

/* Création du bloc de données de la matrice en mémoire partagée 
 * et affectation des dimensions */
void initMatricePartagee(int dim1,int dim2, matrice_t *M);

/* Lance un calcul multiproc sur la fonction passée en param,
 * la fonction être déclarée dans le même fichier */
void calculMultiprocessus(void *(fn)(int));

/* idem multithreads */
void calculMultithreads(void *(fn)(int));


/* variables globales à définir dans le main*/
extern matrice_t A,B,C;
extern int chunk,nbProcs;

#endif
