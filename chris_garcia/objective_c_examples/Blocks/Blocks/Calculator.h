//
//  Calculator.h
//  Blocks
//
//  Created by Christian on 2016-09-14.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int(^BlockCalcType)(int, int);

@interface Calculator : NSObject

+ (int) doCalcWithX:(int)x Y:(int)y andBlock:(BlockCalcType)block;

@end