//
//  main.c
//  BMIkalk
//
//  Created by SG on 2016-08-30.
//  Copyright © 2016 SG. All rights reserved.
//

#include <stdio.h>


struct Person {
    float heightInMeters;
    int weightInKilos;

};

typedef struct {
    float heightInMeters;
    int weightInKilos;
}nPerson;




int main(int argc, const char * argv[]) {

    
    struct Person stan;
    stan.heightInMeters = 1.8;
    stan.weightInKilos = 85;
    
    struct Person peter;
    peter.heightInMeters = 1.7;
    peter.weightInKilos = 90;
    
    nPerson joey;
    joey.heightInMeters = 1.9;
    joey.weightInKilos = 100;
 
    
    
    printf("stan's height is %.2f \n", stan.heightInMeters);
    printf("peter's height is %.2f \n", peter.heightInMeters);
    
    printf("stan's weight is %d \n", stan.weightInKilos);
    printf("peter's weight is %d \n", peter.weightInKilos);
    
    
    float nBmi = joey.weightInKilos / (joey.heightInMeters * joey.heightInMeters);
    printf("jeoy's height is %.2f \n", joey.heightInMeters);
    printf("joey's weight is %d \n and his bmi is %f.1 \n", joey.weightInKilos, nBmi);
    
    
    
    
    return 0;
}
