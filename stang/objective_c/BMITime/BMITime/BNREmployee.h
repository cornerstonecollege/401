//
//  BNREmployee.h
//  BMITime
//
//  Created by SG on 2016-09-12.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double) yearsOfEmployment;


- (void) setHireDate:(NSDate *)d;
- (NSDate *) hireDate;

@end
