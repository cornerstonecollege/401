//
//  Snake.h
//  HorizontalInheritance_SnakeAndRock
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ShakeProtocol

@required
- (void) shake;

@optional
- (void) react;

@end

@interface Snake : NSObject <ShakeProtocol>

@end
