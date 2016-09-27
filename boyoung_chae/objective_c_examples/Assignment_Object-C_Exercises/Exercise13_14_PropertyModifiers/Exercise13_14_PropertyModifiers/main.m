//
//  main.m
//  Exercise13_14_PropertyModifiers
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Computer.h"
#import "Keyboard.h"
#import "Mouse.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"=== Exercise 13 / 14 ===");
        NSLog(@"Create three classes with 'strong/weak' properties!");
        
        Keyboard *keyboard = [[Keyboard alloc] init];
        Mouse *mouse = [[Mouse alloc] init];
        
        Computer *computer = [[Computer alloc] initWithKeyboard:keyboard AndMouse:mouse];
        
        [computer performClick];
        [computer performType];
    }
    return 0;
}
