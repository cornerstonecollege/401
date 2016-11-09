//
//  Calculator.h
//  Blocks
//
//  Created by Luiz on 2016-09-13.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int(^BlockCalcType)(int, int);

@interface Calculator : NSObject

+ (int) doCalcWithX:(int)x Y:(int)y andBlock:(BlockCalcType)block;

@end
