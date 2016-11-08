//
//  main.c
//  Exercise6_TheGreatestNumber2
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int number;
    printf("===== Exercise 6 =====\n");
    printf("The Greatest Number!\n");
    
    printf("The number of numbers you'll enter. : ");
    scanf("%i", &number);
    float numbers[number];
    
    printf("Enter all numbers(Write one number and Enter).:\n");
    
    for (int i = 0 ; i < number ; i++)
    {
        scanf("%f", &numbers[i]);
    }
    
//    printf("** All numbers ** \n");
//    for (int j = 0 ; j < number ; j++)
//    {
//        printf("Number[%i] = %f.\n", j+1, numbers[j]);
//    }
    
    float greastest = numbers[0];
    
    for (int k = 0 ; k < number ; k++)
    {
        if (greastest <= numbers[k+1])
        {
            greastest = numbers[k+1];
        }
    }
    
    printf("--> The greasted number is %f.\n", greastest);
    
    return 0;
}
