//
//  MyPoint.h
//  Exercise5_Description
//
//  Created by Boyoung on 2016-09-15.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPoint : NSObject

@property (nonatomic) NSNumber *X;
@property (nonatomic) NSNumber *Y;

- (void) setThePointX: (NSNumber *)X Y:(NSNumber *)Y;

@end
