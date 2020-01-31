#define _XOPEN_SOURCE
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int
main()
{
	char ch1;
	char ch2;
	char ch3;
	char chaine[4];
	char mdp[] = "$1$rXGhjmGD$qtuklX26hky6/TDbGxjCo." ;
	chaine[3] = 0;
	for(ch1 = 'a' ; ch1 <= 'z' ; ch1++)
	{
		for(ch2 = 'a' ; ch2 <= 'z' ; ch2++)
		{
			for(ch3 = 'a' ; ch3 <= 'z' ; ch3++)
			{
				chaine[0] = ch1;
				chaine[1] = ch2;
				chaine[2] = ch3;
				printf("mot de passe : %s\t  resultat : %s\n ",crypt(chaine, "$1$rXGhjmGD$"),chaine);
				if( strcmp(crypt(chaine, "$1$rXGhjmGD$"),mdp) == 0)
				{
					printf("Le mot de passe est:%s\n",chaine);
					return 0;
				}
				
			}
		}
	}
	 return 0;
}


