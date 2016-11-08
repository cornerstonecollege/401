//
//  main.c
//  Exercise5_TheGreatestNumber
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

void getTheGreastestNumber(double a, double b, double c);
double greastest;

int main(int argc, const char * argv[])
{
    double a, b, c;
    
    printf("===== Exercise 5 =====\n");
    printf("Read 3 numbers and get the greastest number.\n");
    printf("* Three numbers(A B C): ");
    
    scanf("%lf %lf %lf", &a, &b, &c);
    getTheGreastestNumber(a, b, c);
    
    printf("--> The greasted number is %f.\n", greastest);

    return 0;
}

void getTheGreastestNumber(double a, double b, double c)
{
    if (a > b)
    {
        if (a >= c)
        {
            greastest = a;
        }
        
        else
        {
            greastest = c;
        }
    }
    
    else if (a == b)
    {
        if (a >= c)
        {
            greastest = a;
        }
        
        else
        {
            greastest =  c;
        }
    }
    
    else
    {
        if (b >= c)
        {
            greastest = b;
        }
        
        else
        {
            greastest = c;
        }
    }
}
