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


#ifndef multi_h
#define multi_h 1

#include <pthread.h>
#include <unistd.h>

/* De sorte qu'ensuite thread_fn_t soit le type de fonction attendu par 
 * pthread_create*/
typedef void *(*thread_fn_t)(void *);

pid_t proc_start (void *(*fn) (int), int id) ;
int proc_join (pid_t id) ;

pthread_t thread_start (void *(*fn) (int), int id) ;
int thread_join(pthread_t id) ;

/* Allocation de mémoire partagée en lecture et écriture */
void *memoire_partagee(size_t taille);
#endif
