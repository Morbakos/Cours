#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#define  NMAX   10


int main ( void )  {
	int 	p[2] ;
	
	if ( pipe ( p ) == -1 ) {
		fprintf ( stderr, "Erreur : tube \n" ) ;
		exit(1) ;
	}
	
	pid_t pid = fork();
	
	if (  pid  ==  -1  )  {
		fprintf ( stderr, "Erreur : fork\n");
		exit(2);
	}

	if ( pid > 0 ) {						/* pere */
		close( p[0] ) ;
		int i=0;
		char c='a';
		while(i < NMAX) {
			write(p[1], &c, 1);
			i++;
			fprintf(stderr, "Transmis %d chars\n",i);
		}
		close ( p[1] ) ; 
		wait ( 0 ) ;
	} else  { 						/* fils */
		char chaine[NMAX+1];
		int  i = 0 ; 
		close ( p[1] ) ;
		while (i < NMAX) {
			read ( p[0], &chaine[i], 1);
			i++;
		}
		//close ( p[0] ) ;
		chaine[i] = '\0';
		printf(" Chaine recue = %s \n",chaine); 
		}
	
	return 0;
}