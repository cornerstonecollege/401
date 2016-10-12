//
//  vehicle.m
//  ex8
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import "vehicle.h"

@implementation vehicle
-(void)move{
    NSLog(@"Method has been not implemented");
}

@synthesize color;

-(void)changeColor{
     color = @"black";
    NSLog(@"Current color is: %@", color);
}


@end
