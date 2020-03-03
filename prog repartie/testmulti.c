/*
 * This file is part of outilsPourM4102C.  
 *
 * Copyright (C) 2019 Franck BUTELLE
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

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stddef.h>
#include <string.h>
#include <sys/types.h>
#include <syscall.h>

#include "multi.h"

#define DEFAULTNBTACHES    4
#define MAXNBTACHES    	32

/* pour un exemple de calcul */
#define TAILLE      4

/* Variable globale ! */
int nbTaches;

void usage() {
    fprintf(stderr,"Utilisation: testmulti nbre_ps ps\n");
    fprintf(stderr,"         ou  testmulti nbre_threads th\n");
    exit(EXIT_FAILURE);
}

void calculMultiprocessus(void *(fn)(int)) {
    int i;
	pid_t pid[MAXNBTACHES];

	printf("*1* Création de %d processus\n",nbTaches);
	fflush(stdout);
    for (i=0; i<nbTaches; i++)
        pid[i]=proc_start(fn, i);

	printf("*2* Attente de la fin des processus créés\n");
    for (i=0;i<nbTaches;i++)
        proc_join(pid[i]);
}

void calculMultithreads(void *(fn)(int)) {
    int i;
    pthread_t tid[MAXNBTACHES];

	printf("*1* Création de %d threads\n",nbTaches);
    for (i=0; i <nbTaches; i++)
        tid[i]=thread_start(fn,i);
		
	printf("*2* Attente de la fin des threads créés\n");
    for (i=0; i<nbTaches; i++)
        thread_join(tid[i]);
}

/* la fonction appelée en multiprocessus ou multithreads, elle devrait
 * calculer quelque chose. id est le numéro de tâche. */
void *mafonc(int id) {
	int s=0;

	printf("Début de %d\n",id);
	 /* ici un calcul qui peut être fonction de id,
	  * ici exemple de calcul d'une série par morceaux de taille TAILLE */
	for (int i=TAILLE*id ; i< TAILLE*(id+1) ; i++)
		s = s*100+i;
	printf("Fin de %d (s=%d)\n",id,s);
	return(NULL);
}

int main(int argc, char *argv[]) {
	if (argc !=3) {
		printf("argc=%d\n",argc);
		usage();
	}

	nbTaches = (int) strtol(argv[1],NULL,10); /* idem atoi sauf que atoi ne fait pas de vérif.*/
	if (nbTaches==0 || nbTaches> MAXNBTACHES) {
		fprintf(stderr,"Nbre de taches incorrect, fixé à %d\n",DEFAULTNBTACHES);
		nbTaches=DEFAULTNBTACHES;
	}
	
	if (strcmp(argv[2],"ps")==0) {
		calculMultiprocessus(mafonc);
	} else if (strcmp(argv[2],"th")==0) {
		calculMultithreads(mafonc);
	} else 
		usage();
	return (EXIT_SUCCESS);
}
