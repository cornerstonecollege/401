//
//  main.m
//  Exercise15_PeripheralsProtocol
//
//  Created by Boyoung on 2016-09-19.
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
        NSLog(@"=== Exercise 15 ===");
        NSLog(@"Show the signal of the mouse or the keyboard!");
        
        Keyboard *keyboard = [[Keyboard alloc] init];
        Mouse *mouse = [[Mouse alloc] init];
        
        Computer *computer = [[Computer alloc] initWithKeyboard:keyboard AndMouse:mouse];
        
        mouse.computer = computer;
        keyboard.computer = computer;
        
        [keyboard siganl];
        [mouse siganl];
    }

    return 0;
}
