//
//  Animal.h
//  VerticalInheritance
//
//  Created by Boyoung on 2016-09-12.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property (nonatomic) NSString *colorEyes;
@property (nonatomic) NSString *colors;

- (void) move;

@end
