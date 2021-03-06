//
//  Pikachu.m
//  class 13
//
//  Created by Dennis Pham on 2016-05-12.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import "Pikachu.h"

@implementation Pikachu

- (instancetype)init
{
    self = [super initWithName:@"Pikachu" andType:TP_ELECTRIC];
    
    return self;
    
}

- (instancetype)initWithName:(NSString *)name
{
    self = [super initWithName:name andType:TP_ELECTRIC];
    return self;
}

- (instancetype)initWithName:(NSString *)name andType:(TYPE_POKEMON)type
{
    [NSException raise:@"Wrong Type" format:@"You can't set type of your new Pikachu, use[[Pikachu alloc]init]instead"];
    return nil;
}

@end
