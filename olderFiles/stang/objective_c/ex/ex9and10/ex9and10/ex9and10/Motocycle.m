//
//  Motocycle.m
//  ex9and10
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import "Motocycle.h"

@implementation Motocycle
-(void)move{
    NSLog(@"The motocycle has moved");
}
@synthesize nWheels;
-(void)setNumOfW{
    *nWheels = 2;
    NSLog(@"this moto has %i wheels", *nWheels);
}
@end


