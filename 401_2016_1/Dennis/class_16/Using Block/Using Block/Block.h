//
//  Block.h
//  Using Block
//
//  Created by Dennis Pham on 2016-05-18.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double (^CalcBlock)(double, double);

@interface Block : NSObject

+ (double) doCalWithA:(double)a B:(double)b usingBlock:(CalcBlock)block;

@end
