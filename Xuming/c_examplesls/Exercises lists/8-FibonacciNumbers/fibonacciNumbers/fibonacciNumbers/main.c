//
//  main.c
//  fibonacciNumbers
//
//  Created by Nicholas on 2016-09-01.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include<stdio.h>

int main()
{
    int n, first = 0, second = 1, next, c;
    
    printf("Enter the number of terms\n");
    scanf("%d",&n);
    
    printf("First %d terms of Fibonacci series are :-\n",n);
    
    for ( c = 0 ; c < n ; c++ )
    {
        if ( c <= 1 )
            next = c;
        else
        {
            next = first + second;
            first = second;
            second = next;
        }
        printf("%d\n",next);
    }
    
    return 0;
}