//
//  main.c
//  ex11
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>
int main()
{
    
    char input;
    char input2;
    
    printf("Enter 1st variable to check size \n");
    scanf("%c", &input);
    printf("Enter 2nd variable to check size \n");

    scanf("%c", &input2);

    printf("Size of your variable is %ld byte\n", sizeof(input));
    printf("Size of your variable is %ld byte\n", sizeof(input2));

    
    return 0;
}