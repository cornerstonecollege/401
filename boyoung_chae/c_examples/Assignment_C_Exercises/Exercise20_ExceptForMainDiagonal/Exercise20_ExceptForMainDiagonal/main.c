//
//  main.c
//  Exercise20_ExceptForMainDiagonal
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int matrix[5][5];
    
    printf("===== Exercise 20 =====\n");
    printf("Gets the all elements EXCEPT FOR the ones in the main diagonal!\n");
    
    printf("Enter 25 integer numbers for the matrix in one line.\n");
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 5 ; j++)
        {
            scanf("%i", &matrix[i][j]);
        }
    }
    
    printf("--> FIRST MATRIX \n");
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 5 ; j++)
        {
            printf("%i ", matrix[i][j]);
        }
        
        printf("\n");
    }
    
    printf("\n");
    
    printf("--> RESULT MATRIX without main diagonal \n");
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 5 ; j++)
        {
            if (i == j)
            {
                printf("%c", ' ');
            }
            
            printf("%i ", matrix[i][j]);
        }
        
        printf("\n");
    }

    return 0;
}
