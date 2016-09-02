//
//  main.c
//  Exercise13_CapitalLetters
//
//  Created by Boyoung on 2016-08-31.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <ctype.h>

int main(int argc, const char * argv[])
{
    int i = 0;
    char name[256];
    
    printf("===== Exercise 13 =====\n");
    printf("Capital Letters!\n");
    printf("Enter name for returning capital letters: \n");
    scanf("%s", name);
    
    while(name[i])
    {
        putchar (toupper(name[i]));
        i++;
    }
    
    printf("\n");
    
    return 0;
}