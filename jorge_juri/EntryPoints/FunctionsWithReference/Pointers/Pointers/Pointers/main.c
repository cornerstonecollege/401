//
//  main.c
//  Pointers
//
//  Created by jjuri2 on 2016-08-26.
//  Copyright © 2016 jjuri2. All rights reserved.
//

#include <stdio.h>

void swap(int *a,int *b);


void main() {

    int x =100;
    int *ptr=&x;
    *ptr=3;
    
    printf ("x value: %i adresss: %p \n",x,&x);
    printf("ptr value: %p address: %p \n",ptr,&ptr);
    
     printf ("1-----------------------------\n");
    
    int a =1;
    int b =2;
    

    swap(&a,&b);
    
    
    printf ("valor de a: %i\n",a);
    printf ("valor de b: %i\n",b);
    
         printf ("2-----------------------------\n");
    
    
    
    int a = 99;
    int b =19;
    int tmp ;
    
    
    
    
    
}

void swap(int *a,int *b) {
    
    *a=100;
    *b=200;
    
}

