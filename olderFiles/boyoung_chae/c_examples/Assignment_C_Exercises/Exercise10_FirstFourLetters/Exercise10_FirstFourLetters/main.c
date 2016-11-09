//
//  main.c
//  Exercise10_FirstFourLetters
//
//  Created by Boyoung on 2016-08-30.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    char name[256];
    char fourLetters[5];
    
    printf("===== Exercise 10 =====\n");
    printf("FIRST FOUR LETTERS!\n");

    printf("Enter the your name. : ");
    scanf("%s", name);
    
    for (int i = 0 ; i < 4 ; i++)
    {
        fourLetters[i] = name[i];
    };
    
    printf("--> (for loop) First 4 letters are %s.\n", fourLetters);
    printf("--> (.4s) First 4 letters are %.4s.\n", name);
    
    return 0;
}
