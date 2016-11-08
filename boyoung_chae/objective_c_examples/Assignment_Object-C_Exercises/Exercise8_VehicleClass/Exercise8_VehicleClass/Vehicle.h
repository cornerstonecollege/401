//
//  Vehicle.h
//  Exercise8_VehicleClass
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic, readonly) NSString *color;
@property (nonatomic, readonly) NSString *model;
@property (nonatomic, readonly) NSInteger nWheels;

- (instancetype) initWithColor:(NSString *)color nWheels:(NSInteger) nWheels andModel:(NSString *) model;
- (void) changeColor:(NSString *)color;
- (void) move;

@end
