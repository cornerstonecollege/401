//
//  wE.m
//  prop
//
//  Created by SG on 2016-09-08.
//  Copyright © 2016 SG. All rights reserved.
//

#import "wE.h"

@implementation wE

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
