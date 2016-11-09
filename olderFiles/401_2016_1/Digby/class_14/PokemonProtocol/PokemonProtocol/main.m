//
//  main.m
//  PokemonProtocol
//
//  Created by Digby Andrews on 2016-05-16.
//  Copyright © 2016 Digby Andrews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bulbasaur.h"
#import "Ekans.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        Bulbasaur *bulbasaur = [[Bulbasaur alloc] initWithNickname:@"Bobasaar" level:10 HP:200 attack:24 andDefense:20];
        Ekans *ekans = [[Ekans alloc] initWithNickname:@"BackwardsSnake" level:10 HP:220 attack:17 andDefense:22];
        
        while (bulbasaur.HP > 0 && ekans.HP >0)
        {
            int bulbasaurOrEkans = arc4random_uniform(2);
            int nAttack = arc4random_uniform(3);
            if (bulbasaurOrEkans == 0)
            {
                switch (nAttack)
                {
                    case 0:
                        NSLog(@"Vinewhip");
                        [bulbasaur vineWhipWithPokemon:ekans];
                        break;
                    case 1:
                        NSLog(@"Toxic");
                        [bulbasaur toxicWithPokemon:ekans];
                        break;
                    case 2:
                        NSLog(@"Vinewhip");
                        [bulbasaur solarBeamWithPokemon:ekans];
                        break;
                        
                    default:
                        break;
                }
            }
            else
            {
                switch (nAttack)
                {
                    case 0:
                        NSLog(@"Poison Sting");
                        [ekans poisonStingWithPokemon:bulbasaur];
                        break;
                    case 1:
                        NSLog(@"Toxic");
                        [ekans toxicWithPokemon:bulbasaur];
                        break;
                    case 2:
                        NSLog(@"Acid");
                        [ekans acidWithPokemon:bulbasaur];
                        break;
                        
                    default:
                        break;
                }
            }
        
        }
    }
    return 0;
}
