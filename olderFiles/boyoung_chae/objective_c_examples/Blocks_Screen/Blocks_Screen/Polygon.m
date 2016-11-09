//
//  Polygon.m
//  Blocks_Screen
//
//  Created by Boyoung on 2016-09-13.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import "Polygon.h"

@implementation MyPolygon

- (NSString *) description
{
    return [NSString stringWithFormat:@"The original position is (x = %lu, y = %lu).", self.x, self.y];
}

@end
