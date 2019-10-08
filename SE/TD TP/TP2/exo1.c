#include <unistd.h>
#include <sys/types.h>
#define SP 3 /*changer pour 1, 2, 3 .... */
int main(void)
{
    char mes[] = "ABCDEFGHIJ";
    char *ptr;
    pid_t n;
    pid_t n2;
    ptr = mes;
    n = fork();
    if(n != 0)
        n2 = fork();
    while (*ptr != '\0')
    {
        /*on parcourt mes[] caractère par caractère*/
        write(STDOUT_FILENO, ptr, 1);
        ptr++;
        int pid = getpid();
        printf("\n %i \n",pid);
        if (n == 0)
            sleep(1);
        else if ( n2 == 0 )
            sleep(2);
        else
            sleep(SP);
    }
    return 0;
}