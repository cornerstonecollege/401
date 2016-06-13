//
//  Block.h
//  UsingBlocks
//
//  Created by Digby Andrews on 2016-05-18.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double (^CalcBlock)(double, double);

@interface Block : NSObject


+ (double) doCalcWithA:(double)a B:(double)b usingBlock:(CalcBlock)block;



@end
