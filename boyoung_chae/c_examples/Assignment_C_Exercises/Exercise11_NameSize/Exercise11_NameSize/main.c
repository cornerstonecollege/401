//
//  main.c
//  Exercise11_NameSize
//
//  Created by Boyoung on 2016-08-31.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    char name1[256];
    char name2[256];
    int nameLength1 = 0, nameLength2 = 0;
    
    printf("===== Exercise 11 =====\n");
    printf("Get the size of each two names!\n");
    printf("*You cannot have spaces.\n");
    
    printf("Enter the Name1.: ");
    scanf("%s", name1);
    
    for (int i = 0 ; name1[i] != '\0' ; i++)
    {
        nameLength1++;
    }
    
    printf("Enter the Name2.: ");
    scanf("%s", name2);

    for (int j = 0 ; name2[j] != '\0' ; j++)
    {
        nameLength2++;
    }

    printf("--> The size of Name1 is %i.\n", nameLength1);
    printf("--> The size of Name2 is %i.\n", nameLength2);

    return 0;
}
