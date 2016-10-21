//
//  Pikachu.m
//  UsingProperties
//
//  Created by CICCC1 on 2016-05-12.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Pikachu.h"

@implementation Pikachu

#define TYPE TP_ELETRIC

- (instancetype)init
{
    self = [super initWithName:@"Pikachu" andType:TYPE];
    return self;
}

- (instancetype)initWithName:(NSString *)name
{
    self = [super initWithName:name andType:TYPE];
    return self;
}

- (instancetype)initWithName:(NSString *)name andType:(TYPE_POKEMON)type
{
    [NSException raise:@"Wrong Type" format:@"You can't set type of your new Pikachu. Use [[Pikachu alloc]init] instead"];
    return nil;
}

@end
