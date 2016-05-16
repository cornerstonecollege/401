//
//  main.m
//  UsingProperties
//
//  Created by Digby Andrews on 2016-05-12.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pokemon.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Pokemon *pokemon = [[Pokemon alloc] init];
        [pokemon setPokemonName: @"Digglet"];
        
        Pokemon *pokemonRatata = [[Pokemon alloc] initWithName:@"Ratata" andType:TP_NORMAL];
        
        Pokemon 
        
        NSLog(@"The pokemon's name is: %@ and the type is %@", [pokemon getPokemonName], [pokemon getTypeToString]);
        
        NSLog(@"The pokemon's name is: %@ and the type is %@", pokemonRatata.name, [pokemonRatata getTypeToString]);
    
        NSLog(@)
        
    }
    return 0;
}
