//
//  main.c
//  Exercise12_AscendingOrder
//
//  Created by Boyoung on 2016-08-31.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int number;
    
    printf("===== Exercise 12 =====\n");
    printf("Ascending Order!\n");
    printf("Enter the number of the integer array: ");
    scanf("%i", &number);
    
    int array[number];
    
    for (int i = 0 ; i < number ; i++)
    {
        printf("Enter number%i: ", i+1);
        scanf("%i", &array[i]);
    }

    printf("--> Ascending Order:\n");

    for (int j = 0 ; j < number ; j++)
    {
        for (int k = j+1 ; k < number ; k++)
        {
            if (array[j] > array[k])
            {
                int temp = array[j];
                array[j] = array[k];
                array[k] = temp;
            }
        }
        
        printf("%i \n", array[j]);
    }

    return 0;
}