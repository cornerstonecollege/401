//
//  main.c
//  evenorodd
//
//  Created by Nicholas on 2016-09-01.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>
int main()
{
    int number;
    
    printf("Enter an integer: ");
    scanf("%d",&number);
    
    // True if the number is perfectly divisible by 2
    if(number%2 == 0)
        printf("%d is even.", number);
    else
        printf("%d is odd.", number);
    
    return 0;
}