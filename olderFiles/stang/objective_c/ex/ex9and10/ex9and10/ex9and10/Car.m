//
//  Car.m
//  ex9and10
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)move{
    NSLog(@"The car has moved");
}

@synthesize nWheels;
-(void)setNumOfW{
    *nWheels = 4;
    NSLog(@"this car has %i wheels", *nWheels);

}
@end
