//
//  Computer.m
//  ex13and14
//
//  Created by SG on 2016-09-20.
//  Copyright © 2016 SG. All rights reserved.
//

#import "Computer.h"

@implementation Computer
- (id) initWithkeyboard:(NSString *)keyboard andMouse:(NSString *)mouse{
    self = [super init];
    self.keyboard = keyboard;
    self.mouse = mouse;
    
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@,%@",_keyboard,_mouse];
}
@end
