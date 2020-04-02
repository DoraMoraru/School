#include<sys/types.h>
#include<sys/wait.h>
#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
void f(int n){
        if(n > 0){
        printf("new kid");
        n--;
        fork();
        }
        else{
        exit(0);
        }
}
int main(int argc, char** agrv)
{       int n =2;
        if(getpid() % 2 == 0)
        {
         printf("%d",getpid());
         f(n);
        }
        wait(0);
        return 0;
 }
        
