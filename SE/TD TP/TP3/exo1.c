#include <sys/types.h>
#include <signal.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

static int i = 0;

void handler(int sig){
    i++;
    fprintf(stderr, "Signal [type: %d] was catch %d time(s)\n", sig, i);
}

void main () {

    signal(SIGHUP, handler);
    printf("Processus %d en attente de signaux...\n", getpid());
    while (1) {
   	 sleep(5);
    }
    exit(0);
}
