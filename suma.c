#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<string.h>
int s=0;
int main(int argc, char** argv)
{
        int n = atoi(argv[1]);
        int s = 0 ;
        for(int i = 0 ; i < n ; i = i + 2)
        s = s + i;
        int pid = fork();
        if(pid == 0)
        {
          for(int i = 1; i < n; i = i + 2)
            s = s + i;
          printf("sum is %d" ,s);
          exit(0);
        }
        else
        {
        wait(0);
        }
        return 0;
}
