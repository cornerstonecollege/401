//
//  main.c
//  FunctionsWithReference
//
/****
make main

clang main.c

./main ssssss 1 2 3 4


p num1
p*num1
*/
//  Created by jjuri2 on 2016-08-26.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#include <stdio.h>


void add(int num1,int num2); //function prototype
void addWithReference (int *num1, int *num2);


int main(int argc, const char * argv[]) {
    
    int x =5;
    int y=2;
    
    int a=6;
    int b=3;

    
    add(x, y);
    addWithReference(&a, &b);
    
printf("x is equal to %i \n",x);
printf("y is equal to %i \n",y);
printf("a is equal to %i \n",a);
printf("b is equal to %i \n",b);
    
    
    printf("Hello, World!\n");
    return 0;
}

void add (int num1, int num2)
{
    num1= 10;
    num2= 20;

}

void addWithReference(int *num1, int *num2)
{
    
    *num1=1000;
    *num2=2000;


}