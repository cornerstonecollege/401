//
//  main.c
//  Mark from a student
//
//  Created by Nicholas on 2016-09-02.
//  Copyright © 2016 Nicholas. All rights reserved.
//

#include <stdio.h>
int main(void){
    int num;
    printf("Enter your mark ");
    scanf("%d",&num);
    printf(" You entered %d", num); // printing outputs
    
    if(num >= 18){
        printf(" You got A grade"); // printing outputs
    }
    else if ( num >=14){ // Note the space between else & if
        printf(" You got B grade");
    }
    else if ( num >=10){
        printf(" You got C grade");
    }
    
    else if ( num <=7){
        printf(" You Failed in this exam");
    }
    return 0;
}

