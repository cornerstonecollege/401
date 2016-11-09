//
//  main.c
//  Exercise14_Concatenation
//
//  Created by Boyoung on 2016-08-31.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[])
{
    char name1[256], name2[256], name3[256], result[256];
    
    printf("===== Exercise 14 =====\n");
    printf("Concatenate & Return Backwards!\n");
    
    printf("Enter 3 names in one line. (Ex. AAA BBB CCC): \n");
    scanf("%s %s %s", name1, name2, name3);
    
    strcat(name2, name3);
    strcat(name1, name2);   // Final destination is name1.
    
    int length = 0;
    
    for (int i = 0 ; name1[i] != '\0' ; i++)
    {
        length++;
    }
    
    for (int j = 0, k = length-1 ; j < length ; j++, k--)
    {
        result[j] = name1[k];
    }
    
    printf("--> Concatenated word: %s\n", name1);
    printf("--> Backwards word: %s\n", result);
//    printf("--> Length of name1: %i\n", length);
    
    return 0;
}