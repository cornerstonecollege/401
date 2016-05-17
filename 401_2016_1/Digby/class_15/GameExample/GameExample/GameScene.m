//
//  GameScene.m
//  GameExample
//
//  Created by Digby Andrews on 2016-05-17.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

- (void)gameStart
{
    NSLog(@"===============Game did start!===================");
    
    if (self.delegate)
    {
        [self.delegate gameDidStart];
    }
}

-(void)gameUpdate
{
    if (self.delegate)
    {
        [self.delegate gameDidUpdate];
    }
}



- (void)gameStop
{
     NSLog(@"===============Game did End!===================");
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(gameDidEnd)])
    {
        [self.delegate gameDidEnd];
    }
}

@end
