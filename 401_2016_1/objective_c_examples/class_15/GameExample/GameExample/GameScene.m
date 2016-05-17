//
//  GameScene.m
//  GameExample
//
//  Created by CICCC1 on 2016-05-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

- (void)gameStart
{
    NSLog(@"=============== Game did start! ===============");
    
    // gameDidStart is required
    if (self.delegate)
    {
        [self.delegate gameDidStart];
    }
}

- (void)gameUpdate
{
    if (self.delegate)
    {
        [self.delegate gameDidUpdate];
    }
}

- (void)gameStop
{
    NSLog(@"=============== Game did end! ===============");
    
    // gameDidEnd is optional
    if (self.delegate && [self.delegate respondsToSelector:@selector(gameDidEnd)])
    {
        [self.delegate gameDidEnd];
    }
}

@end
