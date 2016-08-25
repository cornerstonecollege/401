//
//  main.c
//  Functions
//
//  Created by Boyoung on 2016-08-24.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <ctype.h>

#define define_string char*
//#define calculation() caculate_again

typedef char* typedef_string;

void addition(int x, int y);
void subtraction(int x, int y);
void multiplication(int x, int y);
void divistion(int x, int y);
void calculation();

int number1, number2;
char operation[1], mark[1];

int main(void)
{
    // define and typedef
    // define: the value is swiched. It doesn't exist any more.
    // typedef: It is a new type like new class in java and exists always.
    
    define_string apple = "define_APPLE";
    typedef_string orange = "typedef_ORNAGE";
    
    printf("%s %s\n\n", apple, orange);
    
    
    // Funtions
    // Order is important!
    
    calculation();
    
    printf("Do you want to calculate one more? Y or N ==> ");
    scanf("%s", mark);
    
    if (tolower(mark[0]) == 'y')
    {
        calculation();
//        caculate_again
    }
    
    return 0;
}

void calculation()
{
    printf("Write two numbers for calculation.\n");
    scanf("%i %i", &number1, &number2);
    
    printf("Choose the operation (A:Addtion, S:Subtraction, M: Multiplication, D: Devision):\n");
    scanf("%s", operation);
    
    if (tolower(operation[0]) == 'a')
    {
        addition(number1, number2);
    }
    
    else if (tolower(operation[0]) == 's')
    {
        subtraction(number1, number2);
    }
    
    else if (tolower(operation[0]) == 'm')
    {
        multiplication(number1, number2);
    }
    
    else if (tolower(operation[0]) == 'd')
    {
        divistion(number1, number2);
    }
}

void addition(int x, int y)
{
    printf("%i\n", (x+y));
}

void subtraction(int x, int y)
{
    printf("%i\n", (x-y));
}

void multiplication(int x, int y)
{
    printf("%i\n", (x*y));
}

void divistion(int x, int y)
{
    printf("%i\n", (x/y));
}