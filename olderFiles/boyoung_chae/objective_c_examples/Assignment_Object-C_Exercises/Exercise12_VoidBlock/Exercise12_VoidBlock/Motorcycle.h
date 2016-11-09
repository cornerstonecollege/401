//
//  Motorcycle.h
//  Exercise12_VoidBlock
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Vehicle.h"

@interface Motorcycle : Vehicle

- (instancetype) initWithColor:(NSString *)color andModel:(NSString *)model;
- (void) move;

@end
