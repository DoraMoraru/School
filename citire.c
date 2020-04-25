#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
int main (int argc, char** argv)
{
        if(fork() == 0){
                execvp(argv[1], argv+1);
                exit(0);
                }
         return 0;
}
