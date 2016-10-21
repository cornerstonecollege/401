//
//  Computer.h
//  ex13and14
//
//  Created by SG on 2016-09-20.
//  Copyright © 2016 SG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Computer : NSObject
@property (nonatomic, strong) NSString *keyboard;
@property (nonatomic, strong) NSString *mouse;

- (id) initWithkeyboard: (NSString *)keyboard andMouse: (NSString *)mouse;

- (NSString *)describtion;

@end
