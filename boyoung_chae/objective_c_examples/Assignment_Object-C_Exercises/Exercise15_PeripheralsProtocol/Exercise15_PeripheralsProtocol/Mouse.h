//
//  Mouse.h
//  Exercise15_PeripheralsProtocol
//
//  Created by Boyoung on 2016-09-19.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PeripheralsProtocol.h"
@class Computer;

@interface Mouse : NSObject <PeripheralsProtocol>

@property (nonatomic, weak) Computer *computer;

@end
