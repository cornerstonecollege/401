//
//  Vehicle.h
//  Exercise9_10_Inheritance
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic) NSString *color;
@property (nonatomic) NSString *model;
@property (nonatomic, readonly) NSInteger nWheels;

- (instancetype) initWithColor:(NSString *)color Wheels:(NSInteger) nWheels andModel:(NSString *)model;
- (void) move;

@end
