//
//  main.m
//  prop
//
//  Created by SG on 2016-09-08.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "wE.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        
        wE *mikey = [[wE alloc]init];
        mikey.weightInKilos = 80;
        mikey.heightInMeters = 1.9;
        
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
    }
    return 0;
}
