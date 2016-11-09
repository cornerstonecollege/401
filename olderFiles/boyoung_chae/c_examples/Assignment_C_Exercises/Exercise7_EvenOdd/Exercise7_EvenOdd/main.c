//
//  main.c
//  Exercise7_EvenOdd
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int number;
    printf("===== Exercise 7 =====\n");
    printf("Even or Odd / Positive or Negative\n");
    
    printf("The number of numbers you'll enter. : ");
    scanf("%i", &number);
    int numbers[number];
    
    printf("Enter all integer numbers(Write one number and Enter).:\n");
    
    for (int i = 0 ; i < number ; i++)
    {
        scanf("%i", &numbers[i]);
    }
    
    //    printf("** All numbers ** \n");
    //    for (int j = 0 ; j < number ; j++)
    //    {
    //        printf("Number[%i] = %f.\n", j+1, numbers[j]);
    //    }
    
    
    for (int k = 0 ; k < number ; k++)
    {
        if (numbers[k] == 0)
        {
            printf("--> %i is 0.\n", numbers[k]);
        }
        
        else if (numbers[k] % 2 == 0)
        {
            if (numbers[k] > 0)
            {
                printf("--> %i is EVEN and POSITIVE.\n", numbers[k]);
            }
            else
            {
                printf("--> %i is EVEN and NEGATIVE.\n", numbers[k]);
            }
        }
        
        else
        {
            if (numbers[k] > 0)
            {
                printf("--> %i is ODD and POSITIVE.\n", numbers[k]);
            }
            else
            {
                printf("--> %i is ODD and NEGATIVE.\n", numbers[k]);
            }
        }
    }
    
    return 0;
}