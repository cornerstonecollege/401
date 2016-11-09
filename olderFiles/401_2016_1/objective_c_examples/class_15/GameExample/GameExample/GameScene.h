//
//  GameScene.h
//  GameExample
//
//  Created by CICCC1 on 2016-05-17.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GameSceneDelegate <NSObject>

@required
- (void) gameDidStart;
- (void) gameDidUpdate;

@optional
- (void) gameDidEnd;

@end

@interface GameScene : NSObject

@property (nonatomic, copy) NSArray<id<GameSceneDelegate>> *arrDelegate;

- (void) gameStart;
- (void) gameUpdate;
- (void) gameStop;

@end
