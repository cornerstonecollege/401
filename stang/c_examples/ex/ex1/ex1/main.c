//
//  main.c
//  ex1
//
//  Created by SG on 2016-09-02.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int wiek, year;
    printf("Enter Your Age \n");
    scanf("%d", &year );
    wiek=(year*365);
    printf("Your Age in Days is %d \n", wiek);
    return 0;
}
