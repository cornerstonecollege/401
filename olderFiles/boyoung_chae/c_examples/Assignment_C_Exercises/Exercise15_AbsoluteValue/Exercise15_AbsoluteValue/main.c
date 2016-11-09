//
//  main.c
//  Exercise15_AbsoluteValue
//
//  Created by Boyoung on 2016-09-01.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    int number;
    
    printf("===== Exercise 15 =====\n");
    printf("The Absolute Value of a Signed Integer!\n");
    
    printf("Enter a signed integer.: ");
    scanf("%i", &number);
    
    printf("--> The Absolute Value of %d is %d\n", number, abs(number));

    return 0;
}
