//
//  main.c
//  ex8
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int num1=0, num2=1, nxt = 0, n;
    
    printf("Enter a number: ");
    scanf("%d",&n);
    
    printf("Fibonacci numbers are: %d, %d, ", num1, num2);
    
    nxt = num1+num2;
    
    while(nxt < n)
    {
        printf("%d,",nxt);
        num1 = num2;
        num2 = nxt;
        nxt = num1+num2;
    }
    
    return 0;
}
