//
//  HandleMonsters.m
//  GameExample
//
//  Created by CICCC1 on 2016-05-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "HandleMonsters.h"

@interface HandleMonsters ()

@property (nonatomic) NSInteger counter;

@end

@implementation HandleMonsters

- (void)gameDidStart
{
    NSLog(@">>> Handle Monsters Start <<<");
}

- (void)gameDidUpdate
{
    NSLog(@">>> %ld - Spawn Monsters <<<", ++self.counter);
}

- (void)gameDidEnd
{
    NSLog(@">>> Handle Monsters Stop <<<");
}

@end
