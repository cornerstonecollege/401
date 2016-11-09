//
//  main.c
//  Exercise9_Factorial
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int number;
    printf("===== Exercise 9 =====\n");
    printf("N FACTORIAL!\n");
    
    printf("Enter the number. : ");
    scanf("%i", &number);

    int numbers[number];
    
    for (int i = 0 ; i < number ; i++)
    {
        numbers[i] = number - i;
        printf("%i ", numbers[i]);
    }
    
    printf("\n");
    
    int factorial = 1;
    for (int j = 0 ; j < number ; j++)
    {
        factorial = factorial * numbers[j];
    }
    
    printf("--> %i Factorial is %i.\n", number, factorial);

    return 0;
}
