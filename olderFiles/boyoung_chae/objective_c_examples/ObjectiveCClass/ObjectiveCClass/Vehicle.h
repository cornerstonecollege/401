//
//  Vehicle.h
//  ObjectiveCClass
//
//  Created by Boyoung on 2016-09-07.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property NSString *color;
@property NSInteger nWheels;

- (instancetype) initWithColor:(NSString *)color andNumberWheels:(NSInteger)nWheels;

@end
