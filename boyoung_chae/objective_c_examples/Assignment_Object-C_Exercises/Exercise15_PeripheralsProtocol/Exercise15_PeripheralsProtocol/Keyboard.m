//
//  Keyboard.m
//  Exercise15_PeripheralsProtocol
//
//  Created by Boyoung on 2016-09-19.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Keyboard.h"
#import "Computer.h"

@implementation Keyboard

// For protocol
- (void) siganl
{
    [self.computer performClick];
}

@end
