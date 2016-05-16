//
//  Pokemon.h
//  UsingProperties
//
//  Created by Digby Andrews on 2016-05-12.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, TYPE_POKEMON)
{
    TP_GROUND = 1,
    TP_FLYING = 2,
    TP_WATER = 3,
    TP_NORMAL = 4,
    TP_ELECTRIC = 5
};

@interface Pokemon : NSObject

@property (nonatomic, getter=getPokemonName, setter=setPokemonName:) NSString *name;
@property (nonatomic, readonly) TYPE_POKEMON type;

- (instancetype) initWithName:(NSString *)name andType:(TYPE_POKEMON)type;

- (NSString *) getTypeToString;

@end
