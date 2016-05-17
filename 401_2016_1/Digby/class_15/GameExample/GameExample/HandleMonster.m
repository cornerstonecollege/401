//
//  HandleMonster.m
//  GameExample
//
//  Created by Digby Andrews on 2016-05-17.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "HandleMonster.h"

@interface HandleMonster ()

@property (nonatomic)NSInteger counter;

@end

@implementation HandleMonster

- (void) gameDidStart
{
    NSLog(@">>>Handle Monsters Start<<<");
}

- (void) gameDidUpdate
{
    NSLog(@">>> %ld - Spawn Monsters<<<", ++self.counter);
}

- (void)gameDidEnd
{
    NSLog(@">>>Handle Monsters End<<<");
}

@end
