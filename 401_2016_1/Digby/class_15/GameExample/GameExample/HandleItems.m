//
//  HandleItems.m
//  GameExample
//
//  Created by Digby Andrews on 2016-05-18.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "HandleItems.h"

@implementation HandleItems

- (void) gameDidStart
{
    NSLog(@">>>Handle Items Start<<<");
}

- (void) gameDidUpdate
{
    NSLog(@">>> Spawn Items<<<");
}

- (void)gameDidEnd
{
    NSLog(@">>>Handle Items End<<<");
}

@end
