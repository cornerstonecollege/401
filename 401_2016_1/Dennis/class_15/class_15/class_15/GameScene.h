//
//  GameScene.h
//  class_15
//
//  Created by Dennis Pham on 2016-05-17.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GameSceneDelegate <NSObject>

@required
-(void) gameDidStart;
-(void) gameDidUpdate;

@optional
-(void) gameDidEnd;

@end

@interface GameScene : NSObject

@property(nonatomic, weak) id<GameSceneDelegate> delegate;

-(void) gameStart;
-(void) gameUpdate;
-(void) gameStop;


@end

