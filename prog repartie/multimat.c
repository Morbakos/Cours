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

/* pour syscall() */
#include <sys/syscall.h>

#include "multimat.h"

/* les variables globales sont définies dans testmultimat.c, ici elles
 * doivent être déclarées extern  */
extern int chunk, nbTaches;
extern matrice_t A,B,C,D;


#define MAXNBTACHES 	32

#define A_COMPLETER     printf("Vous n'avez pas programmé %s !\n", __FUNCTION__ ),exit(EXIT_FAILURE)


/* somme partielle de matrices que doit faire la tache i */
void *sommeChunk(int i) {
	int  prem, der;

    if (A.dim1 != B.dim1 || A.dim2 != B.dim2) { /* vérif pour addition */
        fprintf(stderr, "Erreur dimmmensions  pour tache %d !", i);
        return (NULL);
    }

	/*ici calcul du numéro de la première ligne : prem, et der pour le numéro
	 * de la dernière ligne en fonction de i */

	/* affichage d'infos système */
	printf ("#PID:%d, threadSelf:%ld, tid:%ld, i:%d, exécute lignes de %d à %d\n",
            getpid(),(long int)pthread_self(), syscall(SYS_gettid), i,prem,der-1);

 // A_COMPLETER
	for (size_t j = 0; j < A.dim1; j++) {
		for (size_t k = 0; k < B.dim1; k++) {
			/* code */
		}
	};

	return(NULL);
}

/* Produit partiel de matrices que doit faire la tache i */
void *produitChunk(int i) {
    int prem,der;

	if (A.dim1 != B.dim2) { /* vérif pour mult*/
        fprintf(stderr, "Erreur dimmmensions  pour tache %d !", i);
        return (NULL);
    }

	 /*ici calcul du numéro de la première ligne : prem, et der pour le numéro
     * de la dernière ligne en fonction de i */

	/* affichage d'infos système */
    printf ("#PID:%d, threadSelf:%ld, tid:%ld, i:%d, exécute lignes de %d à %d\n",
            getpid(),(long int)pthread_self(), syscall(SYS_gettid), i,prem,der-1);

	A_COMPLETER;

    return(NULL);
}

void initMatricePartagee(int dim1,int dim2, matrice_t *M) {
    M->dim1=dim1;
    M->dim2=dim2;
    M->val= memoire_partagee(dim1 * dim2*sizeof(double));
}


void calculMultiprocessus(void *(fn)(int)) {
	struct timeval debut,fin;
	int i,pid[MAXNBTACHES];

	initMatricePartagee(A.dim1,B.dim2,&C);
	gettimeofday(&debut,NULL);
	for (i=0; i<nbTaches; i++)
		pid[i]=proc_start(fn, i);
	for (i=0;i<nbTaches;i++)
		proc_join(pid[i]);
	gettimeofday(&fin,NULL);
	afficheTemps(&debut,&fin);
}

void calculMultithreads(void *(fn)(int)) {
	struct timeval debut,fin;
	int i;
	pthread_t id[MAXNBTACHES];

	/* pas besoin de memoire partagée car tout est partagé en multithread ! */
    initMatrice(A.dim1,B.dim2,&C);
	gettimeofday(&debut,NULL);
	for (i=0; i <nbTaches; i++)
		id[i]=thread_start(fn,i);
	for (i=0; i<nbTaches; i++)
		thread_join(id[i]);
	gettimeofday(&fin,NULL);
	afficheTemps(&debut,&fin);
}
