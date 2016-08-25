//
//  main.c
//  Functions
//
//  Created by younseolocal on 2016-08-24.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#include <stdio.h>

void calculation(int number1, int number2);
int number1, number2;
int op;
int sum;

int main(void)
{
    
    // insert code here...
    printf("What number do you want to calculate?\nPlease enter two numbers.\n");
    
    scanf("%i\n ", &number1);
    scanf("%i", &number2);
    
    printf("Choose an operator.\n[ADD] is 1, [MINUS] is 2, [MULTIFLY] is 3, [DIVIDE] is 4.\n");
    scanf("%i", &op);
    calculation(number1, number2);
    printf("The result is %i\n", sum);
    
    return 0;
}

void calculation(int number1, int number2)
{

    if (op == 1)
    {
        sum = (number1 + number2);
    }
    if (op == 2)
    {
         sum= (number1 - number2);
    }
    if (op == 3)
    {
         sum= (number1 * number2);
    }
    if (op == 4)
    {
         sum= (number1 / number2);
    }
    
}

