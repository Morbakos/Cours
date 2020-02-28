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

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
/* pour mmap */
#include <sys/mman.h>

#include "multi.h"


#define A_COMPLETER        printf("Vous n'avez pas programmé %s !\n", __FUNCTION__ )

/*--------------------------- multiproc -------------------------------*/

/* exemple de prototype de fonction qui peut être appelée par proc_start:
 * void *mafonc(int i);
 */

pid_t
proc_start (void *(*fn) (int), int id) {
    pid_t pid;

	A_COMPLETER;
    return pid;
}

/* attend la fin d'un processus */
int
proc_join (pid_t id) {
	A_COMPLETER;
    return EXIT_SUCCESS;
}

/*--------------------------- multithreads -------------------------------*/

/* permet l'appel d'une fonction de prototype
 * void *mafonc(int i)
 */
pthread_t
thread_start (void *(*fn) (int), int id) {
    pthread_t thread_id;
	int rc;

	A_COMPLETER;
    /* intptr_t est là pour éviter un warning de conversion de type 
	 * car on considère ici un entier comme un pteur */
	//....  (thread_fn_t)fn, (void *) (intptr_t) id);


    return thread_id;
}

/* attend la fin d'un thread */
int
thread_join(pthread_t id) {
	int ret=0;
	A_COMPLETER;
	
	return ret;
}

/*  Très utile : Création de mémoire partagée, à faire avant le lancement des ps
 *  taille est en octets. */
void *
memoire_partagee(size_t taille) {
	void *ptr;
	/* On laisse le noyau choisir l'emplacement (premier param=NULL)
	 * MAP_ANONYMOUS précise que l'on ne veut pas de fichier associé
	 * du coup les 2 derniers param. sont ignorés.
	 */

	ptr = mmap(NULL, taille, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS,0,0);
	if (ptr == MAP_FAILED) {
		perror("Pb allocation mémoire partagée\n");
		exit(EXIT_FAILURE);
	}
	return(ptr);
}
