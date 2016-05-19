//
//  HandleItem.m
//  class_15
//
//  Created by Dennis Pham on 2016-05-18.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "HandleItem.h"

@implementation HandleItem




- (void)gameDidStart
{
    NSLog(@"===Handle item Start===");
}

-(void)gameDidUpdate
{
    NSLog(@"===Spawn item===");
}


-(void) gameDidEnd
{
    NSLog(@"===Handle item Stop===");
}
@end


