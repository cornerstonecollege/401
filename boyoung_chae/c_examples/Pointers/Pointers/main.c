//
//  main.c
//  Pointers
//
//  Created by Boyoung on 2016-08-26.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

void swap(int *a, int *b);

int x;
int y;

int *ptrX = &x;
int *ptrY = &y;

int main(int argc, const char * argv[])
{
//    int x = 100;
//    int *ptr = &x;
//    
//    printf("x value: %i address: %p\n", x, &x);
//    printf("ptr value: %p address: %p\n", ptr, &ptr);
    
    printf("Enter two numbers for swap: ");
    scanf("%i %i", &x, &y);
    
    swap(ptrX, ptrY);
    
    return 0;
}

void swap(int *a, int *b)
{
    int temp = *ptrX;
    
    *a = *ptrY;
    *b = temp;
    
    printf("The result of swap: %i, %i\n", *a, *b);
}
