//
//  Mouse.m
//  Exercise15_PeripheralsProtocol
//
//  Created by Boyoung on 2016-09-19.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Mouse.h"
#import "Computer.h"

@implementation Mouse

// For protocol
- (void) siganl
{
    [self.computer performClick];
}

@end
