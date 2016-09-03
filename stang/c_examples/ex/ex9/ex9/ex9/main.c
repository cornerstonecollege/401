//
//  main.c
//  ex9
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>
int main()
{
    int n, i;
    unsigned long long f = 1;
    
    printf("Enter a number: ");
    scanf("%d",&n);
    
    for(i=1; i<=n; ++i)
        {
            f *= i;
        }
    
        printf("Factorial of %d is %llu \n", n, f);
    
    
    return 0;
}