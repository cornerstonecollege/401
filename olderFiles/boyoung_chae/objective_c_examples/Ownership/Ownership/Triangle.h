//
//  Triangle.h
//  Ownership
//
//  Created by Boyoung on 2016-09-09.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Triangle : NSObject

@property (nonatomic) NSInteger x;
@property (nonatomic) NSInteger y;

- (void) setX: (NSInteger)x andY:(NSInteger)y;

@end
