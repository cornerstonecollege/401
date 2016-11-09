//
//  main.c
//  Malloc
//
//  Created by younseolocal on 2016-08-29.
//  Copyright © 2016 younseolocal. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef char* string;
// #define new_string() (string)malloc(20)


int main(int argc, const char * argv[])
{
    // insert code here...
    //string myString = new string();
    string myString = (string)malloc(20);
    //string myString = new_string();
    printf("Enter your name : ");
    scanf("%s", myString);
    printf("My string is %s.\n", myString);
    
    return 0;
}
