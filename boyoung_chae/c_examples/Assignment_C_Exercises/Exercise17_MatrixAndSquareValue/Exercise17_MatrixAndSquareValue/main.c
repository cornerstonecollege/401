//
//  main.c
//  Exercise17_MatrixAndSquareValue
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int firstMatrix[3][3];
    
    printf("===== Exercise 17 =====\n");
    printf("Matrix of 3 row and 3 columns / Get the square of each value!\n");
    
    printf("Enter each 9 numbers.: \n");
    
    for (int i = 0 ; i < 3 ; i++)
    {
        for (int j = 0 ; j < 3 ; j++)
        {
            scanf("%i", &firstMatrix[i][j]);
        }
    }
    
    printf("--> FIRST MATRIX\n");
    
    for (int i = 0 ; i < 3 ; i++)
    {
        for (int j = 0 ; j < 3 ; j++)
        {
            printf("%i ", firstMatrix[i][j]);
        }
        
        printf("\n");
    }

    printf("--> RESULT MATRIX (SQUARE VALUES)\n");
    
    for (int i = 0 ; i < 3 ; i++)
    {
        for (int j = 0 ; j < 3 ; j++)
        {
            printf("%d ", firstMatrix[i][j]*firstMatrix[i][j]);
        }
        
        printf("\n");
    }
    
    return 0;
}