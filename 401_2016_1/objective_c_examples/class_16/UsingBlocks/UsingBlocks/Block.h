//
//  Block.h
//  UsingBlocks
//
//  Created by CICCC1 on 2016-05-18.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double (^CalcBlock)(double, double);

@interface Block : NSObject

+ (double) doCalcWithA:(double)a B:(double)b usingBlock:(CalcBlock)block;

@end
