//
//  Screen.h
//  Blocks_Screen
//
//  Created by Boyoung on 2016-09-13.
//  Copyright © 2016 Boyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Polygon.h"

typedef void(^BlockPositon)(int, int);

@interface Screen : NSObject

@property (nonatomic) MyPolygon *circle;
@property (nonatomic) MyPolygon *triangle;

- (instancetype) initWithCircle: (MyPolygon *)cirlce AndTriangle: (MyPolygon *)triangle;
- (void) moveRandomWithBlock:(int)x Y:(int)y andBlock:(BlockPositon)block;
- (void) moveCircleToX:(int)x Y:(int)y andBlock:(BlockPositon)block;
- (void) moveTriangleToX:(int)x Y:(int)y andBlock:(BlockPositon)block;

@end
