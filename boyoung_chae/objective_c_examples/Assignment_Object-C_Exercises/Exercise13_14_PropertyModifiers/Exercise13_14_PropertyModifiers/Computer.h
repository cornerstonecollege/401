//
//  Computer.h
//  Exercise13_14_PropertyModifiers
//
//  Created by Boyoung on 2016-09-16.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Keyboard;
@class Mouse;

@interface Computer : NSObject

@property (nonatomic, weak) Keyboard *keyboard;
@property (nonatomic, weak) Mouse *mouse;

- (instancetype) initWithKeyboard: (Keyboard *)keyboard AndMouse: (Mouse *)mouse;
- (void) performClick;
- (void) performType;

@end
