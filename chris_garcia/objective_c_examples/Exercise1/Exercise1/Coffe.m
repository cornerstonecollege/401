//
//  Coffe.m
//  Exercise1
//
//  Created by Christian on 2016-09-07.
//  Copyright © 2016 Christian. All rights reserved.
//

#import "Coffe.h"

@implementation Coffe


-(instancetype) initWithFlavor:(NSString *)flavor andNumberScoops:(NSInteger)nScoops andSize:(NSString *)size;
{
    self = [super init];
    if (self) {
        self.flavor = flavor;
        self.nScoops = nScoops;
        self.size = size;
    }
    
    return self;
}


-(NSString *) description
{
    return [NSString stringWithFormat:@"Flavor:%@ Scoops:%lu Size:%@", self.flavor, self.nScoops, self.size];
}

@end
