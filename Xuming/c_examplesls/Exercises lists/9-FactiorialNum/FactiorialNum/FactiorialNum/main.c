//
//  main.c
//  FactiorialNum
//
//  Created by Nicholas on 2016-09-01.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>
long int multiplyNumbers(int n);

int main()
{
    int n;
    printf("Enter a positive integer: ");
    scanf("%d", &n);
    printf("Factorial of %d = %ld", n, multiplyNumbers(n));
    return 0;
}
long int multiplyNumbers(int n)
{
    if (n >= 1)
        return n*multiplyNumbers(n-1);
    else
        return 1;
}