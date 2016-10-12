//
//  vehicle.h
//  ex8
//
//  Created by SG on 2016-09-21.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface vehicle : NSObject



@property (nonatomic) NSString *color;
@property (nonatomic) NSString *model;
@property (nonatomic) int *nWheels;

-(void)move;
-(void)changeColor;

@end
