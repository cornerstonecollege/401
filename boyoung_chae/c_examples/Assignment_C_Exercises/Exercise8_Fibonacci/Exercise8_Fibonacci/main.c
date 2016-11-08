//
//  main.c
//  Exercise8_Fibonacci
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int number;
    printf("===== Exercise 8 =====\n");
    printf("FIBONACCI NUMBERS!\n");
    
    printf("Enter the first number. : ");
    scanf("%i", &number);
    
    printf("How many numbers will be shown?: ");
    int TheNumberOfNumber;
    scanf("%i", &TheNumberOfNumber);

    int fibonacci[TheNumberOfNumber];
    fibonacci[0] = number;
    fibonacci[1] = number;
    
    for (int i = 2 ; i < TheNumberOfNumber ; i++)
    {
        fibonacci[i] = fibonacci[i-2] + fibonacci[i-1];
    }
    
    printf("--> %i First Fibonacci Numbers\n", number);
    for (int j = 0 ; j < TheNumberOfNumber ; j++)
    {
        printf("%i\n", fibonacci[j]);
    }
    
    return 0;
}
