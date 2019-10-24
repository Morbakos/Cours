#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#define  NMAX   10


int main ( int argc, char** argv )  {
	int 	p[2] ;
	int v1, v2;
	if (argc !=3) {
		printf("Specifier 2 nombres à sommer");
		exit(0);
	}
	
	if ( pipe ( p ) == -1 ) {
		fprintf ( stderr, "Erreur : tube \n" ) ;
		exit(1) ;
	}
	
	pid_t pid = fork();
	
	if (  pid  ==  -1  )  {
		fprintf ( stderr, "Erreur : fork\n");
		exit(2);
	}

	if ( pid > 0 ) {						/* père */
		v1=atoi(argv[1]);
		v2=atoi(argv[2]);
		
		close( p[0] ) ;
		
		write(p[1], &v1, sizeof(int));
		write(p[1], &v2, sizeof(int));
		close ( p[1] ) ; 
		fprintf(stderr,"Pere: somme %d et %d?\n", v1, v2);
		
		wait ( 0 ) ;
	} else  { 						/* fils */
		int vals[2];
		int i=0;
		while(i<2) {
			read ( p[0], &vals[i], sizeof(int));
			i++;
		}
		close ( p[0] ) ;
		int somme=vals[0]+vals[1];
		printf("Fils: somme = %d\n",somme); 
		}
	
	return 0;
}
