#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
int i = 3;
int main(void)
{
    pid_t idf;
    printf(" Avant fork : i = %d \n", i);
    idf = fork();
    if (idf == 0)
    {
        printf("\t Dans le FILS : i = %d \n", i);
        i++;
        printf("\t Dans le FILS après la MODIF : i = %d \n", i);
    }
    else
    {
        printf(" Dans le PERE : i = %d \n", i);
        i--;
        printf(" Dans le PERE après la MODIF : i = %d \n", i);
    }
    return (0);
}