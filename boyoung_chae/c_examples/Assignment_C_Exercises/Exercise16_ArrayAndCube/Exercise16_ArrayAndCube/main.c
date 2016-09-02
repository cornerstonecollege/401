//
//  main.c
//  Exercise16_ArrayAndCube
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    int numberArray[5];
    
    printf("===== Exercise 16 =====\n");
    printf("Read 5 numbers and get the cube value!\n");
    
    printf("Enter 5 numbers:\n");
    
    for (int i = 0 ; i < 5 ; i++)
    {
        scanf("%i", &numberArray[i]);
    }

    printf("--> The cube values:\n");
    
    for (int j = 0 ; j < 5 ; j++)
    {
        printf("%d ^ 3 = %lf\n", numberArray[j], pow(numberArray[j],3));
    }
    
    return 0;
}