//
//  main.c
//  Functions
//
//  Created by Luiz on 2016-08-24.
//  Copyright © 2016 Luiz. All rights reserved.
//

#include <stdio.h>
#define true 1
#define false 0
#define new(v) v
#define character char
#define main main(void)
#define string1 char*

typedef char* string2;
typedef character boolean;

void add(int x, int y);
int summation(int x, int y);

int main
{
    string1 name1 = new("Luiz1");
    string2 name2 = new("Luiz2");
    
    boolean isOff = true;
    
    printf("The names are %s and %s it is %i\n", name1, name2, isOff);
    
    add(2, 3);
    int mySum = summation(2, 3);
    printf("%i\n", mySum);
    return 0;
}

void add(int x, int y)
{
    printf("%i\n", (x+y));
}

int summation(int x, int y)
{
    return x + y;
}




