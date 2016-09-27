//
//  main.c
//  3numbers
//
//  Created by Nicholas on 2016-09-01.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>
int main()
{
    double n1, n2, n3;
    
    printf("Enter three numbers: ");
    scanf("%lf %lf %lf", &n1, &n2, &n3);
    
    if( n1>=n2 && n1>=n3 )
        printf("%.2f is the largest number.", n1);
    
    if( n2>=n1 && n2>=n3 )
        printf("%.2f is the largest number.", n2);
    
    if( n3>=n1 && n3>=n2 )
        printf("%.2f is the largest number.", n3);
    
    return 0;
}
