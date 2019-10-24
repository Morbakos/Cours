#include <sys/types.h>
#include <signal.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

void main () {
    printf("Processus %d en attente de signaux...\n", getpid());
    while (1) {
   	 sleep(5);
    }
    exit(0);
}
