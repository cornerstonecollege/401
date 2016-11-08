//
//  Computer.m
//  Exercise13_14_PropertyModifiers
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Computer.h"
#import "Keyboard.h"
#import "Mouse.h"

@implementation Computer

- (instancetype) initWithKeyboard: (Keyboard *)keyboard AndMouse: (Mouse *)mouse
{
    self = [super init];
    
    if (self)
    {
        self.keyboard = keyboard;
        self.mouse = mouse;
    }
    return self;
}

- (void) performClick
{
    NSLog(@"The mouse was just clicked.");
}

- (void) performType
{
    NSLog(@"The keyboard was just typed.");
}

@end
