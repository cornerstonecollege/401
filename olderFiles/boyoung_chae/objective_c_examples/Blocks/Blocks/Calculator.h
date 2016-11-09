//
//  Calculator.h
//  Blocks
//
//  Created by Boyoung on 2016-09-13.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int(^BlockCalcType)(int, int);

@interface Calculator : NSObject

//+ (int) doCalcWithX: (int)x Y:(int)y andBlock:(int(^)(int, int))block;
+ (int) doCalcWithX: (int)x Y:(int)y andBlock:(BlockCalcType)block;

@end
