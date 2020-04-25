#include<stdlib.h>
#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<unistd.h>
#include<string.h>
int main(int argc, char** argv)
{       int status;
        int n=atoi(argv[1]);
        for(int i = 0 ; i < n ; i ++)
        {
        if(fork() == 0)
        {
        if( i < 2)
        {exit(0);}
        else
        if(i==2)
        {
        printf("prim %d",i);
        exit(0);
        }
        else
        if(i%2==0)
        exit(0);
        else
        {
        for(int j = 3; j*j<=i; j = j + 2)
          if(i%j==0)
            exit(0);
        printf("prim %d",i);
        exit(0);
         }
      wait(&status);
   }
   return WEXITSTATUS(status);
}
  
         
        
        
        
