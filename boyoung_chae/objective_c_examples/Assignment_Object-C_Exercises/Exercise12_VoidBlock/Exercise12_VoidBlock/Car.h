//
//  Car.h
//  Exercise12_VoidBlock
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Vehicle.h"

@protocol TurbochargerProtocol

@required
- (void) moveWithTurbo1;

@optional
- (void) moveWithTurbo2;

@end

@interface Car : Vehicle <TurbochargerProtocol>

- (instancetype) initWithColor:(NSString *)color andModel:(NSString *)model;
- (void) move;

@end
