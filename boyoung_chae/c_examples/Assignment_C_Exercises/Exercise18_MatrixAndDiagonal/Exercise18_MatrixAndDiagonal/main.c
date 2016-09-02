//
//  main.c
//  Exercise18_MatrixAndDiagonal
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int firstMatrix[5][5];
    
    printf("===== Exercise 18 =====\n");
    printf("Matrix of 5 row and 5 columns / Get its main diagonal!\n");
    
    printf("Enter each 25 numbers.: \n");
    
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 5 ; j++)
        {
            scanf("%i", &firstMatrix[i][j]);
        }
    }
    
    printf("--> FIRST MATRIX\n");
    
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 5 ; j++)
        {
            printf("%i ", firstMatrix[i][j]);
        }
        
        printf("\n");
    }
    
    printf("--> RESULT MATRIX (MAIN DIAGONAM)\n");
    
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 5 ; j++)
        {
            if (i == j)
            {
                printf("%d ", firstMatrix[i][j]);
            }
            
            else
            {
                printf("%s ", " ");
            }
        }
        printf("\n");
    }
    
    return 0;
}
