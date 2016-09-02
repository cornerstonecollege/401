//
//  main.c
//  Exercise3_3PositiveNumbers
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <math.h>

double calculate(int a, int b, int c);
double d;

int main(int argc, const char * argv[])
{
    int a, b, c;
    
    printf("===== Exercise 3 =====\n");
    printf("Enter three positive integer numbers to the result by specific formula.\n");
    printf("* FORMULA: D=(R+S)/2 where R=(A+B)*(A+b), S=(B+C)*(B+C)\n");
    printf("* Three numbers(A B C): ");
    
    scanf("%i %i %i", &a, &b, &c);
    calculate(a, b, c);
    
    printf("--> The result is %lf.\n", d);
    
    return 0;
}

double calculate(int a, int b, int c)
{
    double r = a + b;
    double s = b + c;
    d = (pow(r, 2) + pow(s, 2)) / 2;
    
    return d;
}
