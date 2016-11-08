//
//  main.c
//  Malloc
//
//  Created by Boyoung on 2016-08-29.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
//#define new_string() (string)malloc(bytes)

typedef char* string;

string new_string(int bytes);

int main(int argc, const char * argv[])
{
    string myString = new_string(20);
    printf("Type a name:");
    scanf("%s", myString);
    printf("My string is %s.\n", myString);
    free(myString);
    
    return 0;
}

string new_string(int bytes)
{
    return (string)malloc(bytes);
}