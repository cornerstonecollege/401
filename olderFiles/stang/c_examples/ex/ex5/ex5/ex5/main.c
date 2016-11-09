//
//  main.c
//  ex5
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int num1,num2,num3;
    int highscore;
    
    printf("Enter 3 numbers: ");
    scanf("%d%d%d",&num1,&num2,&num3);
    
    
    if(num1>num2 && num1>num3)
        
        highscore = num1;
    
    else if(num2>num3)
        
        highscore = num2;
    
    else
        
        highscore = num3;
    
    printf("Highest number is: %d",highscore);
    
    
    return 0;

}
