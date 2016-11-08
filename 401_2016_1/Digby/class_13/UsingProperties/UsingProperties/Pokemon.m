//
//  Pokemon.m
//  UsingProperties
//
//  Created by Digby Andrews on 2016-05-12.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import "Pokemon.h"

@implementation Pokemon

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _type = TP_GROUND;
    }
    
    return self;
}

- (instancetype)initWithName:(NSString *)name andType:(TYPE_POKEMON)type
{
    self = [super init];
    if (self) {
        _name = name;
        _type = type;
    }
    return self;
}

- (NSString *)getTypeToString
{
    switch (self.type) {
            
        case TP_WATER:
        {
            return @"Water";
        }
            
        case TP_NORMAL:
        {
            return @"Normal";
        }
            
        case TP_FLYING:
        {
            return @"Flying";
        }
            
        case TP_GROUND:
        {
            return @"Ground";
        }
            
        case TP_ELECTRIC:
        {
            return @"Electric";
        }
            
        default:
        {
            return nil;
            break;
        }
    }
}

@end
