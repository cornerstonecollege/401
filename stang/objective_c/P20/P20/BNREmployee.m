//
//  BNREmployee.m
//  P20
//
//  Created by SG on 2016-09-12.
//  Copyright © 2016 SG. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double) yearsOfEmployment
{
    if (self.hireDate){
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate: self.hireDate];
        return secs / 31557600.0;
    }
    else{
        return 0;
    
    }
    

}



@end
