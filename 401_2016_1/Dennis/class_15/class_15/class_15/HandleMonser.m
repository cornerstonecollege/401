//
//  HandleMonser.m
//  class_15
//
//  Created by Dennis Pham on 2016-05-17.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "HandleMonser.h"


@interface HandleMonser ()

@property (nonatomic) NSInteger counter;

@end

@implementation HandleMonser

- (void)gameDidStart
{
    NSLog(@"===Handle Monsters Start===");
}

-(void)gameDidUpdate
{
    NSLog(@"===%ld - Spawn Monsters===", ++self.counter);
}


-(void) gameDidEnd
{
    NSLog(@"===Handle Monsters Stop===");
}
@end
