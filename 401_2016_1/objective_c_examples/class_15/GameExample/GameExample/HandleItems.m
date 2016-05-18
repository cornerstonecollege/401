//
//  HandleItems.m
//  GameExample
//
//  Created by CICCC1 on 2016-05-18.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "HandleItems.h"

@implementation HandleItems

- (void)gameDidStart
{
    NSLog(@">>> Handle Items Start <<<");
}

- (void)gameDidUpdate
{
    NSLog(@">>> Spawn Items <<<");
}

- (void)gameDidEnd
{
    NSLog(@">>> Handle Items Stop <<<");
}

@end
