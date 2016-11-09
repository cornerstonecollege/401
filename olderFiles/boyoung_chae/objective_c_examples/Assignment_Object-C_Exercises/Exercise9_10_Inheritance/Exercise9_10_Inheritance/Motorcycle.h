//
//  Motorcycle.h
//  Exercise9_10_Inheritance
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Vehicle.h"

@interface Motorcycle : Vehicle

- (instancetype) initWithColor:(NSString *)color andModel:(NSString *)model;
- (void) move;

@end
