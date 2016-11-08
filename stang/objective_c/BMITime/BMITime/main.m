//
//  main.m
//  BMITime
//
//  Created by SG on 2016-09-07.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BNREmployee *mikey = [[BNREmployee alloc] init];
        mikey.WeightInKilos = 96;
        mikey.HeightInMeters = 1.8;
        mikey.employeeID = 12;
        mikey.hireDate = [NSDate dateWithNaturalLanguageString:@"Aug 2nd, 2010"];
        
        
        NSLog (@"mikey has a weight of %d", mikey.weightInKilos);
        NSLog (@"mikey gas a height of %f", mikey.heightInMeters);
        NSLog (@"Employee %lu hired on %@", mikey.employeeID, mikey.hireDate);
        
        float height = [mikey heightInMeters];
        int weight = [mikey weightInKilos];
        NSLog(@"Mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        
        float bmi = [mikey bodyMassIndex];
        //NSLog(@"mikey has a bmi of %f", bmi);
        double years = [mikey yearsOfEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
    
    }
    return 0;
}
