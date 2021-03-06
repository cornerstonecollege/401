//
//  Pokemon.h
//  class 13
//
//  Created by Dennis Pham on 2016-05-12.
//  Copyright © 2016 Dennis Pham. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, TYPE_POKEMON)
{
    TP_GROUND = 1,
    TP_FLYING = 2,
    TP_WATER = 3,
    TP_ELECTRIC = 4
    
    
};

@interface Pokemon : NSObject

@property (nonatomic, getter=getPokemonName, setter=setPokemonName:) NSString *name;
@property (nonatomic, readonly) TYPE_POKEMON type;

-(instancetype) initWithName:(NSString *)name andType:(TYPE_POKEMON)type;
-(NSString *) getTypeToString;

@end
