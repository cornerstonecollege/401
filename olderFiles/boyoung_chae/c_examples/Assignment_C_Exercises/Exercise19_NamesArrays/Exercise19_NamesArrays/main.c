//
//  main.c
//  Exercise19_NamesArrays
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[])
{
    char names[5][20] = {0};
    char theStr[100] = {0};
    
    printf("===== Exercise 19 =====\n");
    printf("1. Stores 5 names up to 20 characteres each in an arrays of names.\n");
    printf("2. Returns each value inside the matrix as a number.\n");
    
    printf("Enter a name in each line without spaces.\n");
    
    for (int i = 0 ; i < 5 ; i++)
    {
        printf("(%i)", i+1);
        scanf("%s", &*names[i]);
    }
    
    for (int i = 0 ; i < 5 ; i++)
    {
        strcat(theStr, names[i]);
    }
    
    printf("--> RESULT MATRIX(1): with Names \n");
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 20 ; j++)
        {
            if (!names[i][j])
            {
                printf("%c", '0');
            }
            
            printf("%c ", names[i][j]);
        }
        
        printf("\n");
    }
    
    printf("\n");
    
    printf("--> RESULT MATRIX(2): with Numbers \n");
    for (int i = 0 ; i < 5 ; i++)
    {
        for (int j = 0 ; j < 20 ; j++)
        {
//            if (!names[i][j])
//            {
//                printf("%c", '0');
//            }
            
            printf("%d", names[i][j]);
        }
        
        printf("\n");
    }
    
    return 0;
}
