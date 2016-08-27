//
//  main.c
//  Pointers
//
//  Created by younseolocal on 2016-08-26.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#include <stdio.h>



void swap(int *a, int *b);

int main(int argc, const char * argv[])
{
//    int x = 100;
//    
//    int *ptr = &x;
//    
//    *ptr = 3;
//    
//    printf("value : %i  address : %p\n",x,&x);
//    printf("value : %p address : %p\n", ptr, &ptr);
    
    
    int a,b;
    
    printf("Enter a number\n");
    scanf("%i",&a);
    printf("Enter a number\n");
    scanf("%i",&b);
    
    printf("=====================================================\n");
    printf("Before swapping the numbers [a] is %i, [b] is %i\n", a, b);
    printf("=====================================================\n");
    
    swap(&a, &b);
    
    
    return 0;
}

void swap(int *a, int *b)
{

    int temp = *a;
    *a = *b;
    *b = temp;
    
    printf("After swapping the numbers[a] is %i, [b] is %i\n", *a, *b);
    printf("=====================================================\n");
}
