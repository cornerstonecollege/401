//
//  main.c
//  ex13
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include<stdio.h>
#include<string.h>

int main() {
    char string[100];
    
    printf("Enter String : ");
    gets(string);
    
    strupr(string);
    printf("String after strupr : %s", string);
    
    return (0);

}