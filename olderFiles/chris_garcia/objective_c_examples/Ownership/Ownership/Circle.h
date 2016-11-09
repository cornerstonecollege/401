//
//  Circle.h
//  Ownership
//
//  Created by Christian on 2016-09-09.
//  Copyright © 2016 Christian. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Triangle.h"

@interface Circle : NSObject

@property (nonatomic, weak) Triangle *triangle;
@property (nonatomic, readonly) NSInteger x;
@property (nonatomic, readonly) NSInteger y;

- (void) setX:(NSInteger)x andY:(NSInteger)y;


@end
