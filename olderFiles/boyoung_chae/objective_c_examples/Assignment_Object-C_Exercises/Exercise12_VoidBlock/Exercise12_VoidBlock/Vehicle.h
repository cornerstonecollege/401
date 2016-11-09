//
//  Vehicle.h
//  Exercise12_VoidBlock
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

@property (nonatomic) NSString *color;
@property (nonatomic) NSString *model;
@property (nonatomic, readonly) NSInteger nWheels;

- (instancetype) initWithColor:(NSString *)color Wheels:(NSInteger) nWheels andModel:(NSString *)model;
- (void) move;
- (void) moveWithBlock:(void (^)(void))block;

@end
